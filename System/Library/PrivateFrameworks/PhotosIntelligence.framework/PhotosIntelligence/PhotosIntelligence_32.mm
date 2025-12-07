uint64_t sub_1C71BB090(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_105();
    sub_1C716E708(v4, v5, v6);
    v2 = v21;
    v7 = a1 + 48;
    do
    {
      sub_1C75504FC();
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218180, &unk_1C7570F30);
      v8 = OUTLINED_FUNCTION_15_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      swift_dynamicCast();
      v10 = v20;
      v11 = *(v21 + 16);
      if (v11 >= *(v21 + 24) >> 1)
      {
        OUTLINED_FUNCTION_89_5();
        v18 = v13;
        sub_1C716E708(v14, v15, v16);
        v10 = v18;
      }

      *(v21 + 16) = v11 + 1;
      v12 = v21 + 24 * v11;
      *(v12 + 32) = v19;
      *(v12 + 40) = v10;
      v7 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C71BB1D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1C716DF64(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {
      sub_1C75504FC();
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DD0, &qword_1C755BEA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218180, &unk_1C7570F30);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C716DF64(v6 > 1, v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v5;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C71BB320()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_71_8();
  v2 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_5();
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_11_37();
    sub_1C716D6A4(v7, v8, v9);
    v10 = v20;
    v11 = *(v4 + 16);
    OUTLINED_FUNCTION_191();
    v13 = v1 + v12;
    v14 = *(v4 + 72);
    do
    {
      v11(v0, v13, v2);
      OUTLINED_FUNCTION_100_7();
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      if (v15 >= *(v10 + 24) >> 1)
      {
        OUTLINED_FUNCTION_186();
        sub_1C716D6A4(v16, v17, v18);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_1C6F905E8(&v19, (v10 + 32 * v15 + 32));
      v13 += v14;
      --v6;
    }

    while (v6);
  }

  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C71BB47C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_8_41();
    sub_1C716D6A4(v6, v7, v8);
    v5 = v23;
    v9 = (v1 + 32);
    do
    {
      v10 = v9[1];
      v22[0] = *v9;
      v22[1] = v10;
      v11 = v9[3];
      v13 = *v9;
      v12 = v9[1];
      v22[2] = v9[2];
      v22[3] = v11;
      v21[0] = v13;
      v21[1] = v12;
      v14 = v9[3];
      v21[2] = v9[2];
      v21[3] = v14;
      sub_1C70802EC(v22, v20);
      OUTLINED_FUNCTION_113_6(v20, v21);
      v23 = v5;
      OUTLINED_FUNCTION_54_17();
      if (v15)
      {
        OUTLINED_FUNCTION_32_19();
        sub_1C716D6A4(v16, v17, v18);
        v5 = v23;
      }

      *(v5 + 16) = v2;
      sub_1C6F905E8(v20, (v5 + 32 * v3 + 32));
      v9 += 4;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void sub_1C71BB580()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_71_8();
  type metadata accessor for MagicSlotSuggestionPersisterRecipe(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_5();
  if (*(v0 + 16))
  {
    v3 = OUTLINED_FUNCTION_11_37();
    sub_1C716EA50(v3, v4, v5);
    OUTLINED_FUNCTION_10_45();
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C71CD17C();
      OUTLINED_FUNCTION_18_24();
      if (v6)
      {
        OUTLINED_FUNCTION_29_21();
        sub_1C716EA50(v9, v10, v11);
      }

      v7 = sub_1C71CD2B8(&qword_1EDD07438, type metadata accessor for MagicSlotSuggestionPersisterRecipe);
      OUTLINED_FUNCTION_122_4(v7);
      OUTLINED_FUNCTION_121_5();
      OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_76_10();
      OUTLINED_FUNCTION_107_5();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C71BB6E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_105();
    sub_1C716ECAC(v4, v5, v6);
    v2 = v14;
    v7 = a1 + 64;
    do
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218CF0, &qword_1C7570E60);
      swift_dynamicCast();
      v14 = v2;
      v8 = *(v2 + 16);
      if (v8 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_186();
        sub_1C716ECAC(v9, v10, v11);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      sub_1C6F79794(v13, (v2 + 40 * v8 + 32));
      v7 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C71BB824(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_8_41();
    sub_1C716D6A4(v4, v5, v6);
    v3 = v24;
    v7 = v1 + 40;
    do
    {
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 32);
      v18[0] = *(v7 - 8);
      v19 = v9;
      v20 = v8;
      v21 = *(v7 + 16);
      v22 = v10;
      v11 = v21;
      sub_1C75504FC();
      v12 = v9;
      sub_1C75504FC();
      OUTLINED_FUNCTION_113_6(v23, v18);
      v24 = v3;
      OUTLINED_FUNCTION_54_17();
      if (v13)
      {
        OUTLINED_FUNCTION_32_19();
        sub_1C716D6A4(v14, v15, v16);
        v3 = v24;
      }

      v7 += 48;
      *(v3 + 16) = v11;
      sub_1C6F905E8(v23, (v3 + 32 * v9 + 32));
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1C71BB91C()
{
  OUTLINED_FUNCTION_14_9();
  if (*(v0 + 16))
  {
    v1 = OUTLINED_FUNCTION_105();
    sub_1C716EE84(v1, v2, v3);
    do
    {
      OUTLINED_FUNCTION_136_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218D08, &qword_1C7575F48);
      v4 = OUTLINED_FUNCTION_15_1();
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_50_16(v6, v7);
      OUTLINED_FUNCTION_31_23();
      if (v8)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C716EE84(v10, v11, v12);
      }

      OUTLINED_FUNCTION_81_10();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_13_5();
}

void sub_1C71BB9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12)
{
  OUTLINED_FUNCTION_14_9();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13;
    v31 = MEMORY[0x1E69E7CC0];
    v16 = OUTLINED_FUNCTION_105();
    sub_1C716EEC8(v16, v17, v18);
    v19 = v15 + 40;
    v20 = v31;
    do
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218CF8, &qword_1C7575F38);
      v22 = OUTLINED_FUNCTION_15_1();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      OUTLINED_FUNCTION_50_16(v24, v25);
      OUTLINED_FUNCTION_31_23();
      if (v26)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C716EEC8(v28, v29, v30);
        v20 = v31;
      }

      v19 += 16;
      *(v20 + 16) = v21;
      v27 = v20 + 16 * v15;
      *(v27 + 32) = a12;
      *(v27 + 40) = v12;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_13_5();
}

void sub_1C71BBAD4()
{
  OUTLINED_FUNCTION_14_9();
  if (*(v0 + 16))
  {
    v1 = OUTLINED_FUNCTION_105();
    sub_1C716EF0C(v1, v2, v3);
    do
    {
      OUTLINED_FUNCTION_136_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218D18, &qword_1C7575F58);
      v4 = OUTLINED_FUNCTION_15_1();
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_50_16(v6, v7);
      OUTLINED_FUNCTION_31_23();
      if (v8)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C716EF0C(v10, v11, v12);
      }

      OUTLINED_FUNCTION_81_10();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C71BBCC4()
{
  OUTLINED_FUNCTION_57_15();
  OUTLINED_FUNCTION_148_4(v2);
  v3 = v1 + 32;
  if (!v0)
  {
    return v27;
  }

  while (1)
  {
    sub_1C6F774EC(v3, v26);
    OUTLINED_FUNCTION_100_7();
    v7 = sub_1C6F65BE8(v4, v5, v6);
    if ((OUTLINED_FUNCTION_112_4(v7, v8, v9, v10, v11, v12, v13, v14, v24, v26[0]) & 1) == 0)
    {
      break;
    }

    v15 = sub_1C755192C();
    OUTLINED_FUNCTION_149_2(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26[0], v26[1], v26[2], v26[3], v27);
    OUTLINED_FUNCTION_282();
    sub_1C755197C();
    sub_1C755193C();
    v3 += 32;
    if (!--v0)
    {
      return v27;
    }
  }

  return 0;
}

void sub_1C71BBD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_121_1();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v32 = *(v30 + 16);
  a16 = MEMORY[0x1E69E7CC0];
  v33 = OUTLINED_FUNCTION_105();
  sub_1C6F7ED9C(v33, v34, v35, v36, v37, v38, v39);
  v40 = a16;
  v41 = v31 + 32;
  if (v32)
  {
    while (1)
    {
      sub_1C6F774EC(v41, &a12);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      a16 = v40;
      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C6F7ED9C(v46 > 1, v47 + 1, 1, v42, v43, v44, v45);
        v40 = a16;
      }

      *(v40 + 16) = v47 + 1;
      v48 = v40 + 16 * v47;
      *(v48 + 32) = a10;
      *(v48 + 40) = a11;
      v41 += 32;
      if (!--v32)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_120_0();
}

void sub_1C71BBEF0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v34 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_48_16();
  v12 = v4(v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v18 = (v16 - v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v35 = &v32 - v21;
  v22 = *(v6 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v32 = v2;
  (v2)(0, v22, 0, v20);
  v23 = v38;
  v24 = v6 + 32;
  v36 = v14;
  v25 = (v14 + 32);
  if (v22)
  {
    while (1)
    {
      sub_1C6F774EC(v24, &v37);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      __swift_storeEnumTagSinglePayload(v0, 0, 1, v12);
      v26 = *v25;
      v27 = v35;
      (*v25)(v35, v0, v12);
      v26(v18, v27, v12);
      v38 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        v32(v28 > 1, v29 + 1, 1);
        v23 = v38;
      }

      *(v23 + 16) = v29 + 1;
      OUTLINED_FUNCTION_191();
      v26((v23 + v30 + *(v31 + 72) * v29), v18, v12);
      v24 += 32;
      if (!--v22)
      {
        goto LABEL_8;
      }
    }

    __swift_storeEnumTagSinglePayload(v0, 1, 1, v12);
    sub_1C6FD7FC8(v0, v33, v34);
  }

LABEL_8:
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C71BC154(uint64_t a1)
{
  v2 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_105();
  sub_1C716E7F8();
  v3 = v21;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1C6F774EC(v4, v20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v14 = v18;
      v15 = v19;
      v12 = v16;
      v13 = v17;
      v21 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_89_8();
        sub_1C716E7F8();
        v3 = v21;
      }

      v10 = v14;
      v11 = v15;
      v6 = v12;
      v9 = v13;
      *(v3 + 16) = v5 + 1;
      v7 = (v3 + (v5 << 6));
      v7[4] = v10;
      v7[5] = v11;
      v7[2] = v6;
      v7[3] = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    sub_1C6FD7FC8(&v12, &qword_1EC218D30, &unk_1C7575F70);
    return 0;
  }

  return v3;
}

uint64_t sub_1C71BC2F4()
{
  OUTLINED_FUNCTION_57_15();
  OUTLINED_FUNCTION_148_4(v2);
  v3 = v1 + 32;
  if (!v0)
  {
    return v26;
  }

  while (1)
  {
    sub_1C6F774EC(v3, v25);
    v4 = OUTLINED_FUNCTION_0_11();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    if ((OUTLINED_FUNCTION_112_4(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25[0]) & 1) == 0)
    {
      break;
    }

    v14 = sub_1C755192C();
    OUTLINED_FUNCTION_149_2(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25[0], v25[1], v25[2], v25[3], v26);
    OUTLINED_FUNCTION_282();
    sub_1C755197C();
    sub_1C755193C();
    v3 += 32;
    if (!--v0)
    {
      return v26;
    }
  }

  return 0;
}

void static StoryGenerationUtilities.intersection<A>(of:)()
{
  OUTLINED_FUNCTION_33();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_24_2();
  if (sub_1C755106C() >= 1)
  {
    v1 = OUTLINED_FUNCTION_145_2();
    __swift_project_boxed_opaque_existential_1(v1, v2);
    swift_getAssociatedTypeWitness();
    v3 = sub_1C755045C();
    MEMORY[0x1EEE9AC00](v3);
    sub_1C755101C();
    OUTLINED_FUNCTION_61_9();
    swift_getTupleTypeMetadata2();
    sub_1C75509EC();
  }

  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.union<A>(of:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if (sub_1C755106C() >= 1)
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    swift_getAssociatedTypeWitness();
    v2 = sub_1C755045C();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C755101C();
    sub_1C75509EC();
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t static StoryGenerationUtilities.personFaceAgeTypeString(_:)(unsigned __int16 a1)
{
  v1 = a1 - 1;
  result = 2036490562;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x646C696843;
      break;
    case 2:
      result = OUTLINED_FUNCTION_120_5();
      break;
    case 3:
      result = 0x726F696E6553;
      break;
    case 4:
      result = 0x746C756441;
      break;
    default:
      result = 0x746553746F4ELL;
      break;
  }

  return result;
}

uint64_t (*static StoryGenerationUtilities.queryTokens(ofCategory:in:)(uint64_t a1, uint64_t a2))(_BYTE *)
{
  sub_1C75504FC();
  v3 = OUTLINED_FUNCTION_108_6();
  return sub_1C706CC1C(v3, v4, a2);
}

id static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(void *a1, unsigned __int16 a2, char a3)
{
  v5 = [a1 librarySpecificFetchOptions];
  [v5 setSharingFilter_];
  [v5 setWantsIncrementalChangeDetails_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  OUTLINED_FUNCTION_99_0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755BAB0;
  *(v6 + 32) = sub_1C755068C();
  *(v6 + 40) = v7;
  sub_1C6FCA0EC(v6, v5);
  return v5;
}

BOOL static StoryGenerationUtilities.isHomeOrWorkQueryToken(_:)(void *a1)
{
  v1 = a1[8];
  if (v1 && *(v1 + 16))
  {
    sub_1C75504FC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    OUTLINED_FUNCTION_99_0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C755BAB0;
    *(v2 + 32) = sub_1C75506FC();
    *(v2 + 40) = v3;
  }

  if (qword_1EDD09980 != -1)
  {
    OUTLINED_FUNCTION_53_18(&qword_1EDD09980);
  }

  OUTLINED_FUNCTION_55_15(&qword_1EDD09988);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_35();
  OUTLINED_FUNCTION_144_2();
  if (sub_1C70735F4())
  {

    return 1;
  }

  else
  {
    if (qword_1EDD09968 != -1)
    {
      OUTLINED_FUNCTION_52_16(&qword_1EDD09968);
    }

    OUTLINED_FUNCTION_55_15(&qword_1EDD09970);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_20_35();
    OUTLINED_FUNCTION_144_2();
    v5 = sub_1C70735F4();
  }

  return v5;
}

uint64_t static StoryGenerationUtilities.sample<A>(from:size:)()
{
  OUTLINED_FUNCTION_57_15();
  v2 = sub_1C7550C3C();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v2);
  if (sub_1C75510BC())
  {
    return sub_1C7550BAC();
  }

  if (sub_1C7550BFC() <= v0)
  {
    sub_1C75504FC();
    return v1;
  }

  swift_getWitnessTable(MEMORY[0x1E69E6328], v2);
  sub_1C7550A2C();
  OUTLINED_FUNCTION_64();
  sub_1C75510AC();
  v4 = sub_1C75515DC();
  swift_getWitnessTable(MEMORY[0x1E69E6968], v4, v1);
  return sub_1C7550C4C();
}

void sub_1C71BCBCC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_71;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1C71CBAA8(result, a2, 10);
LABEL_71:

    return;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) == 0)
    {
      sub_1C75518FC();
    }

    OUTLINED_FUNCTION_128_4();
    if (v7)
    {
      if (v5 >= 1)
      {
        if (v5 != 1 && v4)
        {
          OUTLINED_FUNCTION_127_4();
          do
          {
            OUTLINED_FUNCTION_1_9();
            if (!v7 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_19_32();
            if (!v7)
            {
              break;
            }

            if (__OFADD__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_10_23();
          }

          while (!v7);
        }

        goto LABEL_71;
      }

      goto LABEL_75;
    }

    if (v6 != 45)
    {
      if (v5)
      {
        v17 = 0;
        if (v4)
        {
          v18 = 10;
          do
          {
            v19 = *v4 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v17;
            if ((v17 * v18) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            v4 = OUTLINED_FUNCTION_124_5(v4);
          }

          while (!v7);
        }
      }

      goto LABEL_71;
    }

    if (v5 >= 1)
    {
      if (v5 != 1 && v4)
      {
        OUTLINED_FUNCTION_127_4();
        do
        {
          OUTLINED_FUNCTION_1_9();
          if (!v7 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_19_32();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v10, v9))
          {
            break;
          }

          OUTLINED_FUNCTION_10_23();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        do
        {
          OUTLINED_FUNCTION_1_9();
          if (!v7 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_19_32();
          if (!v7)
          {
            break;
          }

          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_10_23();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        OUTLINED_FUNCTION_125_4();
        do
        {
          OUTLINED_FUNCTION_1_9();
          if (!v7 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_19_32();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v12, v11))
          {
            break;
          }

          OUTLINED_FUNCTION_10_23();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    goto LABEL_74;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      OUTLINED_FUNCTION_125_4();
      do
      {
        OUTLINED_FUNCTION_1_9();
        if (!v7 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_19_32();
        if (!v7)
        {
          break;
        }

        if (__OFADD__(v16, v15))
        {
          break;
        }

        OUTLINED_FUNCTION_10_23();
      }

      while (!v7);
    }

    goto LABEL_71;
  }

LABEL_76:
  __break(1u);
}

void __swiftcall StoryGenerationUtilities.RepresentativeMomentConfiguration.init()(PhotosIntelligence::StoryGenerationUtilities::RepresentativeMomentConfiguration *__return_ptr retstr)
{
  v2 = objc_opt_self();
  v3 = [v2 useNormalDistributionForMoments];
  [v2 minimumCumulativeDistributionOfMomentFrequency];
  *&retstr->minimumRatioOfAssetOverlapForRelevantMoment = xmmword_1C7575BD0;
  retstr->minimumNumberOfAssetOverlapForRelevantBigMoment = 4;
  retstr->useNormalDistributionForMoments = v3;
  retstr->minimumCumulativeDistributionOfMomentFrequency = v4;
  retstr->computeOverlapWithExtendedCuratedAssets = 0;
}

BOOL static StoryGenerationUtilities.isSupportedPublicEventForEventDisambiguation(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217890, &qword_1C756C600);
  v0 = sub_1C754F14C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C75604F0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E69C17C0], v0);
  v8(v7 + v4, *MEMORY[0x1E69C17B0], v0);
  v9 = OUTLINED_FUNCTION_108_6();
  v11 = sub_1C70734EC(v9, v10, v6);
  swift_setDeallocating();
  sub_1C6FDC924();
  return v11;
}

void static StoryGenerationUtilities.queryTokenWhatsStrings(from:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_101_7();
  v15 = *(v1 + 16);
  if (v15)
  {
    v3 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v4 = (v1 + 32 + 120 * v3);
      v16 = v4[2];
      v5 = v4[3];
      v6 = v4[10];
      v18 = v3 + 1;
      v7 = *(v6 + 16);
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      for (i = 0; ; ++i)
      {
        if (v7 == i)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_14;
        }

        if (i >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
        OUTLINED_FUNCTION_18(TokenSuggestion);
        OUTLINED_FUNCTION_1_73();
        sub_1C71CD17C();
        OUTLINED_FUNCTION_66_2();
        if (swift_getEnumCaseMultiPayload() == 14)
        {
          break;
        }

        OUTLINED_FUNCTION_0_97();
        sub_1C71CD1D4();
      }

      OUTLINED_FUNCTION_0_97();
      sub_1C71CD1D4();
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v17 = v13;
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        sub_1C6FB1814();
        v17 = v14;
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = v16;
      *(v12 + 40) = v5;

LABEL_14:
      v3 = v18;
      if (v18 != v15)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.querySortOrder(in:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_5();
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v2 + 32;
    while (2)
    {
      v9 = *(v8 + 120 * v7++ + 80);
      v10 = *(v9 + 16);
      sub_1C75504FC();
      for (i = 0; v10 != i; ++i)
      {
        if (i >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
        OUTLINED_FUNCTION_18(TokenSuggestion);
        OUTLINED_FUNCTION_1_73();
        sub_1C71CD17C();
        if (swift_getEnumCaseMultiPayload() == 13)
        {

          v13 = *v0;
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_0_97();
        sub_1C71CD1D4();
      }

      if (v7 != v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:
  *v4 = v13;
  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.shouldUseHighPrecisionEmbeddingSearchThreshold(_:)()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  OUTLINED_FUNCTION_76(v4);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_49_13();
  v6 = sub_1C754F14C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C30, &unk_1C7575BE8);
  OUTLINED_FUNCTION_76(v15);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v19 = sub_1C754F0FC();
  OUTLINED_FUNCTION_3_0();
  v65 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v64 = v23 - v22;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_72_10();
  memcpy(v68, v3, 0x78uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy((inited + 32), v68, 0x78uLL);
  v66 = v0;
  sub_1C6FCA6E4(v68, v67);
  v26 = sub_1C707351C();
  swift_setDeallocating();
  sub_1C6FDC98C();
  OUTLINED_FUNCTION_0_97();
  sub_1C71CD1D4();
  if (!v26)
  {
    goto LABEL_16;
  }

  v60 = v12;
  v61 = v1;
  v27 = v68[8];
  if (!v68[8])
  {
LABEL_15:
    sub_1C706E6DC();
    v49 = v48;
    v50 = sub_1C754F0EC();
    sub_1C72B9384(v50, v49);
    OUTLINED_FUNCTION_99_1();

    v51 = *(v49 + 16);

    v12 = v60;
    v1 = v61;
    if (v51)
    {
LABEL_19:
      OUTLINED_FUNCTION_25_0();
      return;
    }

LABEL_16:
    memcpy(v67, v68, 0x78uLL);
    QueryToken.publicEvent()();
    OUTLINED_FUNCTION_78_1(v1);
    if (v52)
    {
      sub_1C6FD7FC8(v1, &qword_1EC216328, &qword_1C7575BE0);
    }

    else
    {
      v53 = v62;
      (*(v8 + 32))(v62, v1, v6);
      (*(v8 + 104))(v12, *MEMORY[0x1E69C17B8], v6);
      sub_1C6FA3964(v53, v12);
      v54 = *(v8 + 8);
      v54(v12, v6);
      v55 = OUTLINED_FUNCTION_35_0();
      (v54)(v55);
    }

    goto LABEL_19;
  }

  v57 = v8;
  v58 = v6;
  v28 = 0;
  v29 = *(v68[8] + 16);
  v59 = (v65 + 32);
  v30 = v68[8] + 40;
  v63 = MEMORY[0x1E69E7CC0];
  v56 = v68[8] + 40;
LABEL_4:
  for (i = v30 + 16 * v28; ; i += 16)
  {
    if (v29 == v28)
    {
      v8 = v57;
      v6 = v58;
      goto LABEL_15;
    }

    if (v28 >= *(v27 + 16))
    {
      break;
    }

    sub_1C75504FC();
    sub_1C754F0DC();

    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      v32 = *v59;
      (*v59)(v64, v18, v19);
      v33 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB376C(v40, v41, v42, v33);
        v33 = v43;
      }

      v34 = v33;
      v35 = *(v33 + 16);
      v63 = v34;
      v36 = *(v34 + 24);
      if (v35 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_15(v36);
        OUTLINED_FUNCTION_89_5();
        sub_1C6FB376C(v44, v45, v46, v63);
        v63 = v47;
      }

      ++v28;
      *(v63 + 16) = v35 + 1;
      OUTLINED_FUNCTION_191();
      v32(v38 + v37 + *(v39 + 72) * v35);
      v30 = v56;
      goto LABEL_4;
    }

    sub_1C6FD7FC8(v18, &unk_1EC218C30, &unk_1C7575BE8);
    ++v28;
  }

  __break(1u);
}

uint64_t static StoryGenerationUtilities.memoriesDedupedAssetUUIDs(from:in:eligibleAssetUUIDs:requiredAssetUUIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  OUTLINED_FUNCTION_76(v5);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71BDCF0, 0, 0);
}

uint64_t sub_1C71BDCF0()
{
  v1 = [*(v0 + 24) photoAnalysisClient];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = static StoryGenerationUtilities.dedupingDejunkingOptions(eligibleAssetUUIDs:requiredAssetUUIDs:)();
    *(v0 + 64) = v3;
    v4 = objc_allocWithZone(MEMORY[0x1E69BE630]);
    v5 = v2;
    v6 = [v4 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 48);
    v8 = sub_1C754FF1C();
    __swift_project_value_buffer(v8, qword_1EC219F58);
    OUTLINED_FUNCTION_62_2();
    (*(v9 + 16))(v7);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
    v11 = (v7 + *(v10 + 28));
    v12 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v13 = [v12 processName];

    v14 = sub_1C755068C();
    v16 = v15;

    *v11 = v14;
    v11[1] = v16;
    *(v7 + *(v10 + 32)) = v6;
    v17 = swift_task_alloc();
    *(v0 + 72) = v17;
    *v17 = v0;
    v17[1] = sub_1C71BDF8C;
    v18 = *(v0 + 16);

    return PhotoAnalysisPhotoLibraryService.extendedCuratedAssets(from:options:)(v18, v3);
  }

  else
  {
    sub_1C7196EF4();
    swift_allocError();
    *v20 = 5;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1C71BDF8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1C71BE14C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1C71BE0D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C71BE0D8()
{
  OUTLINED_FUNCTION_47_16();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1C71BE14C()
{
  OUTLINED_FUNCTION_47_16();

  v1 = *(v0 + 8);

  return v1();
}

id static StoryGenerationUtilities.personAttributedQueryString(with:localizedText:)()
{
  OUTLINED_FUNCTION_87_11();
  v1 = *(v0 + 16);
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_135_5();
  sub_1C75504FC();
  OUTLINED_FUNCTION_66_2();
  result = sub_1C7073450();
  v3 = result;
  if (v1)
  {
    [result length];
    sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
    OUTLINED_FUNCTION_99_1();
    sub_1C75504FC();
    v4 = sub_1C71C3DE4();
    objc_opt_self();
    OUTLINED_FUNCTION_30_24();
    v7 = [v5 v6];

    return v7;
  }

  return result;
}

void static StoryGenerationUtilities.dateAttributedQueryString(with:localizedText:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_15();
  v1 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_102_4();
  if (*(v0 + 16) == 2)
  {
    v9 = *(v3 + 16);
    OUTLINED_FUNCTION_191();
    v11 = v0 + v10;
    v12 = *(v3 + 72);
    v13 = OUTLINED_FUNCTION_117_0();
    v9(v13);
    (v9)(v7, v11 + v12, v1);
    v14 = objc_allocWithZone(MEMORY[0x1E6978A98]);
    v15 = OUTLINED_FUNCTION_35_0();
    v17 = sub_1C71C8C5C(v15, v16);
    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    OUTLINED_FUNCTION_24_2();
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_11();
    v18 = sub_1C7073450();
    [v18 length];
    v19 = objc_opt_self();
    OUTLINED_FUNCTION_114_6(v19, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
  }

  else
  {
    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    OUTLINED_FUNCTION_24_2();
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_11();
    sub_1C7073450();
  }

  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.dateComponentsAttributedQueryStringWithAdjustedRange(withStartDateComponents:endDateComponents:localizedText:)()
{
  OUTLINED_FUNCTION_33();
  v28[1] = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v14 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_78();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_102_4();
  static StoryGenerationUtilities.startOfDayDateComponents(of:)(v4);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v22 = OUTLINED_FUNCTION_249();
    v23(v22);
    OUTLINED_FUNCTION_78_1(v13);
    if (!v24)
    {
      sub_1C6FD7FC8(v13, &qword_1EC218C50, &qword_1C75606A0);
    }
  }

  else
  {
    (*(v16 + 32))(v1, v13, v14);
  }

  sub_1C6FD7F70();
  OUTLINED_FUNCTION_78_1(v9);
  if (v24)
  {
    sub_1C6FD7FC8(v9, &qword_1EC218C50, &qword_1C75606A0);
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v14);
  }

  else
  {
    (*(v16 + 32))(v20, v9, v14);
    static StoryGenerationUtilities.endOfDayDateComponents(of:)(v20);
    (*(v16 + 8))(v20, v14);
  }

  OUTLINED_FUNCTION_100_7();
  static StoryGenerationUtilities.dateComponentsAttributedQueryString(withStartDateComponents:endDateComponents:localizedText:)(v25);
  sub_1C6FD7FC8(v0, &qword_1EC218C50, &qword_1C75606A0);
  v26 = OUTLINED_FUNCTION_35_0();
  v27(v26);
  OUTLINED_FUNCTION_25_0();
}

id sub_1C71BE738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_141();
  sub_1C75504FC();
  OUTLINED_FUNCTION_66_2();
  v5 = sub_1C7073450();
  [v5 length];
  sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
  a4();
  v6 = sub_1C71C4004();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    OUTLINED_FUNCTION_30_24();
    v10 = [v8 v9];
  }

  else
  {

    return 0;
  }

  return v10;
}

id static StoryGenerationUtilities.seasonAttributedQueryString(with:localizedText:)()
{
  OUTLINED_FUNCTION_87_11();
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_135_5();
  sub_1C75504FC();
  OUTLINED_FUNCTION_66_2();
  v0 = sub_1C7073450();
  [v0 length];
  sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
  sub_1C754F5CC();
  v1 = sub_1C71C4004();
  objc_opt_self();
  OUTLINED_FUNCTION_30_24();
  v4 = [v2 v3];

  return v4;
}

void static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_5();
  v4 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v2 + 32;
    while (2)
    {
      v8 = *(v7 + 120 * v6++ + 80);
      v9 = *(v8 + 16);
      sub_1C75504FC();
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          goto LABEL_10;
        }

        if (i >= *(v8 + 16))
        {
          __break(1u);
          return;
        }

        TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
        OUTLINED_FUNCTION_18(TokenSuggestion);
        OUTLINED_FUNCTION_1_73();
        sub_1C71CD17C();
        OUTLINED_FUNCTION_0_11();
        if (!swift_getEnumCaseMultiPayload())
        {
          break;
        }

        OUTLINED_FUNCTION_0_97();
        sub_1C71CD1D4();
      }

      sub_1C73978C4(*v0);
LABEL_10:
      if (v6 != v5)
      {
        continue;
      }

      break;
    }

    v4 = v16;
  }

  v12 = *(v4 + 16);
  if (!v12)
  {
    goto LABEL_15;
  }

  sub_1C70CE988(*(v4 + 16), 0);
  sub_1C70D065C();
  v14 = v13;
  sub_1C6F61E88(v15);
  if (v14 != v12)
  {
    __break(1u);
LABEL_15:
  }

  OUTLINED_FUNCTION_25_0();
}

id static StoryGenerationUtilities.locationAttributedString(with:localizedText:)()
{
  OUTLINED_FUNCTION_38_2();
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_99_1();
  sub_1C75504FC();
  OUTLINED_FUNCTION_58();
  v0 = sub_1C7073450();
  [v0 length];
  v1 = objc_allocWithZone(MEMORY[0x1E6978A98]);
  OUTLINED_FUNCTION_99_1();
  sub_1C75504FC();
  sub_1C75504FC();
  v2 = sub_1C71C8E10();
  objc_opt_self();
  OUTLINED_FUNCTION_30_24();
  v5 = [v3 v4];

  return v5;
}

uint64_t static StoryGenerationUtilities.businessItemAttributedString(with:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69BE460]);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v3 = OUTLINED_FUNCTION_0_11();
  v5 = sub_1C71C8EB8(v3, v4, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C7565670;
  *(v6 + 32) = v5;
  v7 = v5;
  static StoryGenerationUtilities.genericEntityAttributedString(with:allowedIndexCategories:localizedText:)();
  v9 = v8;

  return v9;
}

uint64_t static StoryGenerationUtilities.landmarkAttributedString(with:lookupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C755195C();
  v7 = objc_allocWithZone(MEMORY[0x1E69BE460]);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  sub_1C75504FC();
  v8 = OUTLINED_FUNCTION_0_11();
  sub_1C71C8EB8(v8, v9, a3, a4);
  sub_1C755192C();
  sub_1C755196C();
  OUTLINED_FUNCTION_282();
  sub_1C755197C();
  sub_1C755193C();
  v10 = objc_allocWithZone(MEMORY[0x1E69BE460]);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  sub_1C75504FC();
  v11 = OUTLINED_FUNCTION_0_11();
  sub_1C71C8EB8(v11, v12, a3, a4);
  sub_1C755192C();
  sub_1C755196C();
  OUTLINED_FUNCTION_103();
  sub_1C755197C();
  sub_1C755193C();
  OUTLINED_FUNCTION_133_5();
  static StoryGenerationUtilities.genericEntityAttributedString(with:allowedIndexCategories:localizedText:)();
  OUTLINED_FUNCTION_98_5();

  return a2;
}

void static StoryGenerationUtilities.approximateTokenCount@Sendable (for:)(uint64_t a1, uint64_t a2)
{
  if (a1 || a2 != 0xE000000000000000)
  {
    OUTLINED_FUNCTION_103();
    if ((sub_1C7551DBC() & 1) == 0)
    {
      v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v6 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
      if (v2)
      {
      }

      else
      {
        v7 = v6;
        if (v6)
        {
          v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
          v9 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
          v11 = v9;
          if (v9)
          {
            sub_1C6FB5E8C();
            v20 = *(sub_1C755152C() + 16);

            OUTLINED_FUNCTION_103();
            sub_1C75507FC();
            OUTLINED_FUNCTION_103();
            v12 = sub_1C755065C();
            OUTLINED_FUNCTION_61_9();
            v15 = [v13 v14];

            OUTLINED_FUNCTION_103();
            v16 = sub_1C755065C();
            OUTLINED_FUNCTION_61_9();
            v19 = [v17 v18];

            if (!__OFADD__(v20, v15))
            {
              if (!__OFADD__(&v15[v20], v19))
              {
                return;
              }

              __break(1u);
            }

            __break(1u);
            return;
          }
        }
      }

      sub_1C7196EF4();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 2;
      swift_willThrow();
    }
  }
}

void static StoryGenerationUtilities.needsEventDisambiguation(for:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v3 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v4);
  memcpy(v18, v1, sizeof(v18));
  v5 = 0;
  v6 = v1[10];
  v7 = *(v6 + 16);
  while (1)
  {
    if (v7 == v5)
    {
      goto LABEL_8;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_4_50();
    sub_1C71CD17C();
    if (qword_1EDD0E0A0 != -1)
    {
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
    OUTLINED_FUNCTION_63();
    static QueryTokenCategoryType.~= infix(_:_:)();
    v10 = v9;
    OUTLINED_FUNCTION_3_64();
    sub_1C71CD1D4();
    ++v5;
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_119_7();
      OUTLINED_FUNCTION_118_5(v11);
      if (!v12)
      {
LABEL_8:
        v13 = 0;
        while (v7 != v13)
        {
          if (v13 >= *(v6 + 16))
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_191();
          OUTLINED_FUNCTION_4_50();
          sub_1C71CD17C();
          if (qword_1EDD0E0C8 != -1)
          {
            swift_once();
          }

          v14 = type metadata accessor for QueryTokenCategoryType(0);
          __swift_project_value_buffer(v14, qword_1EDD0E0D0);
          static QueryTokenCategoryType.~= infix(_:_:)();
          v16 = v15;
          OUTLINED_FUNCTION_3_64();
          sub_1C71CD1D4();
          ++v13;
          if (v16)
          {
            v17 = OUTLINED_FUNCTION_119_7();
            OUTLINED_FUNCTION_118_5(v17);
            break;
          }
        }
      }

      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void static StoryGenerationUtilities.needsDateDisambiguation(for:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v3 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_101_7();
  memcpy(v10, v1, sizeof(v10));
  v4 = 0;
  v5 = v1[10];
  v6 = *(v5 + 16);
  while (1)
  {
    if (v6 == v4)
    {
      goto LABEL_8;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_4_50();
    sub_1C71CD17C();
    if (qword_1EDD0E078 != -1)
    {
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E080);
    OUTLINED_FUNCTION_63();
    static QueryTokenCategoryType.~= infix(_:_:)();
    v9 = v8;
    OUTLINED_FUNCTION_3_64();
    sub_1C71CD1D4();
    ++v4;
    if (v9)
    {
      OUTLINED_FUNCTION_119_7();
      sub_1C72D36F8();
LABEL_8:
      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

  __break(1u);
}

uint64_t static StoryGenerationUtilities.assetUUIDs(forMomentUUIDs:customizedAssetFetchOptions:storyPhotoLibraryContext:)()
{
  OUTLINED_FUNCTION_115();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_autoreleasePoolPush();
  v4 = OUTLINED_FUNCTION_66_2();
  sub_1C71C8640(v4, v5, v1, v2, v6);
  objc_autoreleasePoolPop(v3);
  return v8;
}

uint64_t sub_1C71BF45C()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD28D40 = result;
  return result;
}

uint64_t sub_1C71BF4D8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28D28);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v3 = qword_1EDD28D40;
  return sub_1C754FF2C();
}

PhotosIntelligence::StoryGenerationUtilities::AdapterType_optional __swiftcall StoryGenerationUtilities.AdapterType.init(rawValue:)(Swift::String rawValue)
{
  v3 = v1;
  sub_1C7551B2C();
  OUTLINED_FUNCTION_141();

  v5 = 5;
  if (v2 < 5)
  {
    v5 = v2;
  }

  *v3 = v5;
  return result;
}

unint64_t StoryGenerationUtilities.AdapterType.rawValue.getter()
{
  result = 0x74206C61626F6C67;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C657479726F7473;
      break;
    case 3:
      result = 0x7563207465737361;
      break;
    case 4:
      result = 0x636973756DLL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_1C71BF694@<X0>(unint64_t *a1@<X8>)
{
  result = StoryGenerationUtilities.AdapterType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C71BF6FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218340, &qword_1C7571248);
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C755D200;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (qword_1EDD09A08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(TokenCategoryType, qword_1EDD09A10);
  sub_1C71CD17C();
  if (qword_1EDD099C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(TokenCategoryType, qword_1EDD099C8);
  sub_1C71CD17C();
  result = swift_storeEnumTagMultiPayload();
  qword_1EDD28B60 = v1;
  return result;
}

uint64_t sub_1C71BF9F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000002BLL && 0x80000001C75A35D0 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000002ELL && 0x80000001C75A3600 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000002FLL && 0x80000001C75A3630 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001C75A3660 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000002ELL && 0x80000001C75A3680 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000027 && 0x80000001C75A36B0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C71BFBD8(char a1)
{
  result = 0xD00000000000002BLL;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C71BFC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71BF9F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71BFCAC(uint64_t a1)
{
  v2 = sub_1C71CCB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71BFCE8(uint64_t a1)
{
  v2 = sub_1C71CCB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryGenerationUtilities.RepresentativeMomentConfiguration.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C58, &qword_1C7575C08);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C71CCB78();
  sub_1C755200C();
  OUTLINED_FUNCTION_97();
  sub_1C7551CEC();
  if (!v1)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551CEC();
    OUTLINED_FUNCTION_97();
    sub_1C7551D0C();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CEC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
  }

  v4 = OUTLINED_FUNCTION_295();
  return v5(v4);
}

uint64_t StoryGenerationUtilities.RepresentativeMomentConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C68, &unk_1C7575C10);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_72_10();
  v6 = objc_opt_self();
  [v6 useNormalDistributionForMoments];
  [v6 minimumCumulativeDistributionOfMomentFrequency];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C71CCB78();
  sub_1C7551FFC();
  if (!v2)
  {
    OUTLINED_FUNCTION_23_25();
    sub_1C7551BDC();
    v8 = v7;
    OUTLINED_FUNCTION_23_25();
    sub_1C7551BDC();
    v10 = v9;
    OUTLINED_FUNCTION_23_25();
    v11 = sub_1C7551BFC();
    OUTLINED_FUNCTION_23_25();
    v12 = sub_1C7551BCC();
    OUTLINED_FUNCTION_23_25();
    sub_1C7551BDC();
    v15 = v14;
    OUTLINED_FUNCTION_23_25();
    v16 = sub_1C7551BCC();
    v17 = OUTLINED_FUNCTION_35_0();
    v18(v17);
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12 & 1;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static StoryGenerationUtilities.creationDate(for:dateFormatter:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1C755065C();
  v5 = OUTLINED_FUNCTION_133_5();
  v7 = [v5 v6];

  if (v7)
  {
    sub_1C754DF2C();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1C754DF6C();

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v9);
}

void static StoryGenerationUtilities.timeOfDayString(for:timeZone:dateFormatter:)()
{
  OUTLINED_FUNCTION_33();
  v67 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_48_16();
  v5 = sub_1C754E35C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_72_10();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v7);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146_3();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v14 = v13 - v12;
  v16 = v15;
  sub_1C6FD7F70();
  if (__swift_getEnumTagSinglePayload(v1, 1, v16) == 1)
  {
    sub_1C6FD7FC8(v1, &unk_1EC219230, &unk_1C7563720);
LABEL_88:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  (*(v10 + 32))(v14, v1, v16);
  sub_1C6FD7F70();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_1C6FD7FC8(v0, &unk_1EC218C70, &qword_1C75653A0);
    v17 = *v67;
    [*v67 setTimeZone_];
  }

  else
  {
    v18 = OUTLINED_FUNCTION_117_0();
    v19(v18);
    v17 = *v67;
    v20 = sub_1C754E32C();
    v21 = OUTLINED_FUNCTION_104_6();
    [v21 v22];

    v23 = OUTLINED_FUNCTION_35_0();
    v24(v23);
  }

  sub_1C7069CE4(18504, 0xE200000000000000, v17);
  v25 = sub_1C754DECC();
  v26 = OUTLINED_FUNCTION_104_6();
  v28 = [v26 v27];

  v29 = sub_1C755068C();
  v31 = v30;

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_83;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v63 = OUTLINED_FUNCTION_294();
    sub_1C71CBAA8(v63, v64, 10);
    v38 = v65;
    v54 = v66;
    goto LABEL_79;
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    if ((v29 & 0x1000000000000000) == 0)
    {
      OUTLINED_FUNCTION_294();
      sub_1C75518FC();
    }

    OUTLINED_FUNCTION_128_4();
    if (v37)
    {
      if (v35 >= 1)
      {
        if (v35 != 1)
        {
          v38 = 0;
          if (v34)
          {
            OUTLINED_FUNCTION_127_4();
            while (1)
            {
              OUTLINED_FUNCTION_1_9();
              if (!v37 & v39)
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_21_30();
              if (!v37)
              {
                goto LABEL_77;
              }

              v38 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_10_23();
              if (v37)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_68;
        }

        goto LABEL_77;
      }

      goto LABEL_92;
    }

    if (v36 != 45)
    {
      if (v35)
      {
        v38 = 0;
        if (v34)
        {
          v49 = 10;
          while (1)
          {
            v50 = *v34 - 48;
            if (v50 > 9)
            {
              goto LABEL_77;
            }

            v51 = 10 * v38;
            if ((v38 * v49) >> 64 != (10 * v38) >> 63)
            {
              goto LABEL_77;
            }

            v38 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              goto LABEL_77;
            }

            v34 = OUTLINED_FUNCTION_124_5(v34);
            if (v37)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_77:
      v38 = 0;
      v42 = 1;
      goto LABEL_78;
    }

    if (v35 >= 1)
    {
      if (v35 != 1)
      {
        v38 = 0;
        if (v34)
        {
          OUTLINED_FUNCTION_127_4();
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v37 & v39)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_21_30();
            if (!v37)
            {
              goto LABEL_77;
            }

            v38 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_10_23();
            if (v37)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_68:
        v42 = 0;
LABEL_78:
        v54 = v42;
LABEL_79:

        if ((v54 & 1) == 0 && v38 <= 0x17)
        {
          v55 = OUTLINED_FUNCTION_17_38();
          v56(v55);
          goto LABEL_88;
        }

LABEL_83:
        if (qword_1EDD0DBE0 != -1)
        {
          OUTLINED_FUNCTION_2();
          swift_once();
        }

        v57 = sub_1C754FF1C();
        __swift_project_value_buffer(v57, qword_1EDD28D28);
        v58 = sub_1C754FEEC();
        v59 = sub_1C755119C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1C6F5C000, v58, v59, "Unable to get hour of the day from date", v60, 2u);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v61 = OUTLINED_FUNCTION_17_38();
        v62(v61);
        goto LABEL_88;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v29 != 43)
  {
    if (v29 != 45)
    {
      if (v32)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v37 & v39)
          {
            break;
          }

          OUTLINED_FUNCTION_21_30();
          if (!v37)
          {
            break;
          }

          v38 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            break;
          }

          OUTLINED_FUNCTION_10_23();
          if (v37)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v32)
    {
      if (v32 != 1)
      {
        OUTLINED_FUNCTION_125_4();
        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v37 & v39)
          {
            break;
          }

          OUTLINED_FUNCTION_21_30();
          if (!v37)
          {
            break;
          }

          v38 = v44 - v43;
          if (__OFSUB__(v44, v43))
          {
            break;
          }

          OUTLINED_FUNCTION_10_23();
          if (v37)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_91;
  }

  if (v32)
  {
    if (v32 != 1)
    {
      OUTLINED_FUNCTION_125_4();
      while (1)
      {
        OUTLINED_FUNCTION_1_9();
        if (!v37 & v39)
        {
          break;
        }

        OUTLINED_FUNCTION_21_30();
        if (!v37)
        {
          break;
        }

        v38 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          break;
        }

        OUTLINED_FUNCTION_10_23();
        if (v37)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_77;
  }

LABEL_93:
  __break(1u);
}

void static StoryGenerationUtilities.creationDateString(for:timeZone:dateFormatter:)()
{
  OUTLINED_FUNCTION_33();
  v28 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v4);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_48_16();
  sub_1C754E35C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_72_10();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v7);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_146_3();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_5();
  sub_1C6FD7F70();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_1C6FD7FC8(v2, &unk_1EC219230, &unk_1C7563720);
  }

  else
  {
    (*(v11 + 32))(v0, v2, v9);
    sub_1C6FD7F70();
    OUTLINED_FUNCTION_78_1(v1);
    if (v13)
    {
      sub_1C6FD7FC8(v1, &unk_1EC218C70, &qword_1C75653A0);
      v16 = *v28;
      [*v28 setTimeZone_];
    }

    else
    {
      v14 = OUTLINED_FUNCTION_117_0();
      v15(v14);
      v16 = *v28;
      v17 = sub_1C754E32C();
      v18 = OUTLINED_FUNCTION_104_6();
      [v18 v19];

      v20 = OUTLINED_FUNCTION_35_0();
      v21(v20);
    }

    sub_1C7069CE4(0x202C64204D4D4D4DLL, 0xEC00000079797979, v16);
    v22 = sub_1C754DECC();
    v23 = OUTLINED_FUNCTION_104_6();
    v25 = [v23 v24];

    sub_1C755068C();
    v26 = OUTLINED_FUNCTION_0_11();
    v27(v26);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 <= 2)
    {

      v9 = OUTLINED_FUNCTION_90();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      sub_1C705575C(&qword_1EDD0CF58, &unk_1EC217A00, &qword_1C755BD70);
      return sub_1C75505FC();
    }

    else
    {
      sub_1C75504FC();
      sub_1C71C0EC0(1, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C80, &unk_1C7575C20);
      sub_1C705575C(&qword_1EDD06878, &unk_1EC218C80, &unk_1C7575C20);
      v5 = sub_1C75505FC();
      swift_unknownObjectRelease();
      sub_1C75504FC();
      v6 = OUTLINED_FUNCTION_0_11();
      MEMORY[0x1CCA5CD70](v6);

      sub_1C75504FC();
      sub_1C75504FC();
      v7 = OUTLINED_FUNCTION_64();
      MEMORY[0x1CCA5CD70](v7);

      return v5;
    }
  }

  else
  {
    v8 = a3;
    sub_1C75504FC();
  }

  return v8;
}

uint64_t sub_1C71C0EC0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1C74A3698();
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = sub_1C74B833C();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.representativeMomentUUIDs(for:storyPhotoLibraryContext:sortDescriptors:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_51_14(a1, a2, a3, a4);
  v22 = OUTLINED_FUNCTION_75_8(v7, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v43, v45, v46, v47, v48, v49);
  if (!v5)
  {
    v27 = v22;
    v28 = *(v22 + 16);
    if (v28)
    {
      v44 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v28, 0, v23, v24, v25, v26);
      v4 = v44;
      v29 = (v27 + 40);
      do
      {
        v31 = *(v29 - 1);
        v30 = *v29;
        v33 = *(v44 + 16);
        v32 = *(v44 + 24);
        sub_1C75504FC();
        if (v33 >= v32 >> 1)
        {
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C(v35, v36, v37, v38, v39, v40, v41);
        }

        *(v44 + 16) = v33 + 1;
        v34 = v44 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v30;
        v29 += 3;
        --v28;
      }

      while (v28);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v4;
}

uint64_t static StoryGenerationUtilities.representativeMomentUUIDsAndAssetUUIDs(for:storyPhotoLibraryContext:sortDescriptors:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *(a4 + 16);
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v7 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v8 = v7;
  PerformanceMeasure.init(name:log:)();
  if (!*(a1 + 16))
  {
    sub_1C6F85170();

    return MEMORY[0x1E69E7CC0];
  }

  if ((BYTE8(v28) & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = OUTLINED_FUNCTION_45_17();
    sub_1C71C12A4(v18, v19, v20, v21, v22, v23, v24, v25);
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_9:
    objc_autoreleasePoolPop(v7);
    sub_1C6F85170();

    return a3;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = OUTLINED_FUNCTION_45_17();
  sub_1C71C1A1C(v10, v11, v12, v13, v14, v15, v16);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  objc_autoreleasePoolPop(v7);
  a3 = v27;
  sub_1C6F85170();

  return a3;
}

uint64_t static StoryGenerationUtilities.representativeAssetUUIDsByMomentUUID(for:storyPhotoLibraryContext:sortDescriptors:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_51_14(a1, a2, a3, a4);
  result = OUTLINED_FUNCTION_75_8(v6, v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28);
  if (!v4)
  {
    v22 = sub_1C71BB090(result);

    return sub_1C71C1210(v22);
  }

  return result;
}

uint64_t sub_1C71C1210(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218DB8, &unk_1C7575FA0);
    OUTLINED_FUNCTION_63();
    v3 = sub_1C7551B0C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C71CB1E8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1C71C12A4(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v58 = a8;
    sub_1C75504FC();
    sub_1C706D154();
    v69 = a2;
    LOWORD(v70) = a3;
    v71 = a4;
    v15 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v14, &v69);

    v72 = MEMORY[0x1E69E7CC8];
    v16 = (a1 + 40);
    do
    {
      v17 = *v16;
      v69 = *(v16 - 1);
      v70 = v17;
      sub_1C75504FC();
      sub_1C71C2670(&v72, &v69, v15);
      if (v8)
      {

        __break(1u);
        return;
      }

      v16 += 2;
      --v9;
    }

    while (v9);
    v61 = v72;
    v18 = sub_1C71CDA3C(v15);
    v19 = [a2 librarySpecificFetchOptions];
    v20 = a3;
    v21 = v19;
    v65 = v20;
    [v19 setSharingFilter_];
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C75604F0;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C6F6D524();
    *(v22 + 32) = 1684632949;
    *(v22 + 40) = 0xE400000000000000;
    *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *(v22 + 104) = sub_1C705575C(&qword_1EDD0FAF0, &unk_1EC217A00, &qword_1C755BD70);
    *(v22 + 72) = v18;
    sub_1C75504FC();
    v23 = sub_1C755112C();
    [v21 setInternalPredicate_];

    if (sub_1C6FB6304() > 0)
    {
      sub_1C71CCA40(a5, v21);
    }

    sub_1C6F65BE8(0, &qword_1EDD0CCF0, 0x1E6978928);
    v60 = v21;
    v67 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
    if (*(a6 + 40))
    {
      v24 = objc_autoreleasePoolPush();
      sub_1C71C2A1C(a2, v65, a4, v18, &v72, &v69);
      objc_autoreleasePoolPop(v24);

      v26 = v69;
      *(swift_allocObject() + 16) = v26;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C706D154();
      v28 = v27;
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v26;
      v64 = sub_1C71CD35C;
      v30 = sub_1C71CD358;
    }

    else
    {

      *(swift_allocObject() + 16) = v61;
      sub_1C75504FC();
      v64 = sub_1C71CD300;
      v30 = sub_1C71CD35C;
    }

    v63 = v30;
    v31 = a6;
    v66 = [v67 count];
    if ((v66 & 0x8000000000000000) != 0)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      swift_once();
    }

    else
    {
      v32 = 0;
      a5 = MEMORY[0x1E69E7CC0];
      while (v66 != v32)
      {
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        v33 = objc_autoreleasePoolPush();
        v34 = [v67 objectAtIndexedSubscript_];
        v35 = sub_1C6FCA214(v34);
        if (!v36)
        {
          v55 = 3;
LABEL_38:

          sub_1C7196EF4();
          v56 = swift_allocError();
          *v57 = v55;
          *(v57 + 8) = 2;
          swift_willThrow();

          objc_autoreleasePoolPop(v33);

          *a7 = v56;
          return;
        }

        v37 = v35;
        v38 = v36;
        v39 = v64(v34);
        if (v39 < 1)
        {

          v55 = 4;
          goto LABEL_38;
        }

        v40 = v39;
        v41 = v63(v34);
        v42 = v41 / v40;
        if (*v31 <= v42 || v41 >= *(v31 + 16) && *(v31 + 8) <= v42)
        {
          if (*(v61 + 16) && (v43 = sub_1C6F78124(v37, v38), (v44 & 1) != 0))
          {
            v45 = *(*(v61 + 56) + 8 * v43);
            sub_1C75504FC();
          }

          else
          {
            v45 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB3A68();
            a5 = v48;
          }

          v46 = *(a5 + 16);
          if (v46 >= *(a5 + 24) >> 1)
          {
            sub_1C6FB3A68();
            a5 = v49;
          }

          *(a5 + 16) = v46 + 1;
          v47 = (a5 + 24 * v46);
          v47[4] = v37;
          v47[5] = v38;
          v47[6] = v45;
          v31 = a6;
        }

        else
        {
        }

        objc_autoreleasePoolPop(v33);
        ++v32;
      }

      if (qword_1EDD0DBE0 != -1)
      {
        goto LABEL_41;
      }
    }

    v50 = sub_1C754FF1C();
    __swift_project_value_buffer(v50, qword_1EDD28D28);
    v51 = sub_1C754FEEC();
    v52 = sub_1C75511BC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = *(a5 + 16);
      _os_log_impl(&dword_1C6F5C000, v51, v52, "representativeMomentUUIDsAndAssetUUIDs OVERLAP count : %ld", v53, 0xCu);
      MEMORY[0x1CCA5F8E0](v53, -1, -1);
    }

    v54 = sub_1C75504FC();
    v25 = sub_1C71BB1D0(v54);
    swift_bridgeObjectRelease_n();

    a8 = v58;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  *a8 = v25;
}

void sub_1C71C1A1C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  isUniquelyReferenced_nonNull_native = v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    *a7 = MEMORY[0x1E69E7CC0];
    return;
  }

  v11 = a3;
  sub_1C75504FC();
  sub_1C706D154();
  v108 = a2;
  LOWORD(v109) = v11;
  v104 = a4;
  v110 = a4;
  v15 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v14, &v108);

  v111 = MEMORY[0x1E69E7CC8];
  v16 = (a1 + 40);
  do
  {
    v17 = *v16;
    v108 = *(v16 - 1);
    v109 = v17;
    sub_1C75504FC();
    sub_1C71C2670(&v111, &v108, v15);
    if (v7)
    {

      __break(1u);
LABEL_67:
      sub_1C7551E4C();
      __break(1u);

      __break(1u);
      return;
    }

    v16 += 2;
    --v9;
  }

  while (v9);
  v101 = v111;
  v18 = sub_1C75504FC();
  v19 = sub_1C71CDA3C(v18);
  v20 = [a2 librarySpecificFetchOptions];
  [v20 setSharingFilter_];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C75604F0;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1C6F6D524();
  *(v21 + 32) = 1684632949;
  *(v21 + 40) = 0xE400000000000000;
  *(v21 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v22 = v20;
  *(v21 + 104) = sub_1C705575C(&qword_1EDD0FAF0, &unk_1EC217A00, &qword_1C755BD70);
  *(v21 + 72) = v19;
  sub_1C75504FC();
  v23 = sub_1C755112C();
  [v20 setInternalPredicate_];

  if (sub_1C6FB6304() > 0)
  {
    sub_1C71CCA40(a5, v20);
  }

  sub_1C6F65BE8(0, &qword_1EDD0CCF0, 0x1E6978928);
  v102 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
  if (*(a6 + 40))
  {
    v24 = objc_autoreleasePoolPush();
    sub_1C71C2A1C(a2, v11, v104, v19, &v111, &v108);
    isUniquelyReferenced_nonNull_native = 0;
    objc_autoreleasePoolPop(v24);
    v25 = v108;
    *(swift_allocObject() + 16) = v25;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C706D154();
    v27 = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v25;
    v97 = sub_1C71CD07C;
    v96 = sub_1C71CD098;
  }

  else
  {
    *(swift_allocObject() + 16) = v101;
    sub_1C75504FC();
    v97 = sub_1C71CD300;
    v96 = sub_1C71CD35C;
  }

  v100 = sub_1C75504DC();
  v108 = sub_1C75504DC();
  v29 = [v102 count];
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

  v30 = v29;
  v93 = v20;
  if (!v29)
  {
LABEL_44:
    v111 = sub_1C7425AD0(v100, 0, 1, *(a6 + 32));
    sub_1C75504FC();
    sub_1C71C896C(&v111, &v108);

    v75 = v111;
    v76 = v111[2];
    if (v76)
    {
      v111 = MEMORY[0x1E69E7CC0];
      sub_1C716E708(0, v76, 0);
      v22 = v111;
      v77 = (v75 + 40);
      v78 = v101;
      do
      {
        v80 = *(v77 - 1);
        v79 = *v77;
        v81 = *(v78 + 16);
        sub_1C75504FC();
        if (v81 && (v82 = sub_1C6F78124(v80, v79), (v83 & 1) != 0))
        {
          v84 = *(*(v78 + 56) + 8 * v82);
          sub_1C75504FC();
        }

        else
        {
          v84 = MEMORY[0x1E69E7CC0];
        }

        v111 = v22;
        v86 = *(v22 + 16);
        v85 = *(v22 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_1C716E708(v85 > 1, v86 + 1, 1);
          v22 = v111;
        }

        *(v22 + 16) = v86 + 1;
        v87 = (v22 + 24 * v86);
        v87[4] = v80;
        v87[5] = v79;
        v87[6] = v84;
        v77 += 2;
        --v76;
        v78 = v101;
      }

      while (v76);
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDD0DBE0 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

  v31 = 0;
  v99 = v29;
  while (1)
  {
    v105 = objc_autoreleasePoolPush();
    v107 = [v102 objectAtIndexedSubscript_];
    v32 = sub_1C6FCA214(v107);
    if (!v33)
    {
      if (qword_1EDD0DBE0 != -1)
      {
        swift_once();
      }

      v43 = sub_1C754FF1C();
      __swift_project_value_buffer(v43, qword_1EDD28D28);
      v44 = sub_1C754FEEC();
      v45 = sub_1C755119C();
      v46 = v105;
      if (os_log_type_enabled(v44, v45))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1C6F5C000, v44, v45, "Moment missing uuid.", v47, 2u);
        v48 = v47;
        v30 = v99;
        MEMORY[0x1CCA5F8E0](v48, -1, -1);
      }

      goto LABEL_43;
    }

    v34 = v32;
    v35 = v33;
    v103 = isUniquelyReferenced_nonNull_native;
    v36 = v108;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v36;
    v22 = v34;
    v37 = sub_1C6F78124(v34, v35);
    if (__OFADD__(v36[2], (v38 & 1) == 0))
    {
      break;
    }

    v39 = v37;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
    if (sub_1C7551A2C())
    {
      v41 = sub_1C6F78124(v34, v35);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_67;
      }

      v39 = v41;
    }

    v49 = v111;
    if (v40)
    {
      *(v111[7] + 8 * v39) = v31;
    }

    else
    {
      v111[(v39 >> 6) + 8] |= 1 << v39;
      v50 = (v49[6] + 16 * v39);
      *v50 = v34;
      v50[1] = v35;
      *(v49[7] + 8 * v39) = v31;
      v51 = v49[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_62;
      }

      v49[2] = v53;
      sub_1C75504FC();
    }

    v108 = v49;
    v54 = v97(v107);
    if (v54 <= 0)
    {
      if (qword_1EDD0DBE0 != -1)
      {
        swift_once();
      }

      v62 = sub_1C754FF1C();
      __swift_project_value_buffer(v62, qword_1EDD28D28);
      sub_1C75504FC();
      v63 = sub_1C754FEEC();
      v64 = sub_1C755119C();

      isUniquelyReferenced_nonNull_native = v103;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = v31;
        v66 = v34;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v111 = v68;
        *v67 = 136315138;
        v69 = sub_1C6F765A4(v66, v35, &v111);

        *(v67 + 4) = v69;
        _os_log_impl(&dword_1C6F5C000, v63, v64, "Missing assets for moment with uuid %s.", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x1CCA5F8E0](v68, -1, -1);
        MEMORY[0x1CCA5F8E0](v67, -1, -1);

        v31 = v65;
      }

      else
      {
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v54;
      v98 = v31;
      v55 = v96(v107);
      swift_isUniquelyReferenced_nonNull_native();
      v111 = v100;
      v56 = sub_1C6F78124(v34, v35);
      if (__OFADD__(*(v100 + 16), (v57 & 1) == 0))
      {
        goto LABEL_61;
      }

      v58 = v56;
      v59 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0, &unk_1C7569730);
      if (sub_1C7551A2C())
      {
        v60 = sub_1C6F78124(v34, v35);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_67;
        }

        v58 = v60;
      }

      v70 = v55 / isUniquelyReferenced_nonNull_native;
      v71 = v111;
      v100 = v111;
      if (v59)
      {
        *(v111[7] + 8 * v58) = v70;

        isUniquelyReferenced_nonNull_native = v103;
        v31 = v98;
      }

      else
      {
        v111[(v58 >> 6) + 8] |= 1 << v58;
        v72 = (v71[6] + 16 * v58);
        *v72 = v34;
        v72[1] = v35;
        *(v71[7] + 8 * v58) = v70;
        v73 = v71[2];
        v52 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        isUniquelyReferenced_nonNull_native = v103;
        v31 = v98;
        if (v52)
        {
          goto LABEL_63;
        }

        v71[2] = v74;
      }
    }

    v30 = v99;
    v46 = v105;
LABEL_43:
    ++v31;
    objc_autoreleasePoolPop(v46);
    if (v30 == v31)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_56:
  v88 = sub_1C754FF1C();
  __swift_project_value_buffer(v88, qword_1EDD28D28);
  sub_1C75504FC();
  v89 = sub_1C754FEEC();
  v90 = sub_1C75511BC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    *(v91 + 4) = *(v22 + 16);

    _os_log_impl(&dword_1C6F5C000, v89, v90, "representativeMomentUUIDsAndAssetUUIDs NORMAL count : %ld", v91, 0xCu);
    MEMORY[0x1CCA5F8E0](v91, -1, -1);
  }

  else
  {
  }

  v92 = sub_1C71BB1D0(v22);

  *a7 = v92;
}

void sub_1C71C2670(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = sub_1C6FE0F8C(*a2, v4, a3);
  if (!v7)
  {
    if (qword_1EDD0DBE0 == -1)
    {
LABEL_9:
      v17 = sub_1C754FF1C();
      __swift_project_value_buffer(v17, qword_1EDD28D28);
      sub_1C75504FC();
      v18 = sub_1C754FEEC();
      v19 = sub_1C755119C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_41_0();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1C6F765A4(v5, v4, &v27);
        _os_log_impl(&dword_1C6F5C000, v18, v19, "Missing moment for asset with uuid %s.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_2();
    swift_once();
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;
  v26 = v5;
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *a1;
  v10 = sub_1C6F78124(v8, v9);
  if (__OFADD__(v27[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
  v14 = v27;
  if (sub_1C7551A2C())
  {
    v15 = sub_1C6F78124(v8, v9);
    if ((v13 & 1) != (v16 & 1))
    {
      sub_1C7551E4C();
      __break(1u);
      return;
    }

    v12 = v15;
  }

  *a1 = v27;
  if (v13)
  {
  }

  else
  {
    sub_1C6FCABE4();
  }

  v22 = *(v14 + 56) + 8 * v12;
  sub_1C6FB0600();
  v23 = *(*v22 + 16);
  sub_1C6FB0EFC();
  v24 = *v22;
  *(v24 + 16) = v23 + 1;
  v25 = v24 + 16 * v23;
  *(v25 + 32) = v26;
  *(v25 + 40) = v4;
}

uint64_t sub_1C71C28E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C70CAC04(a1);
  if (v6)
  {
    if (*(a3 + 16))
    {
      sub_1C6F78124(result, v6);
      v8 = v7;

      if (v8)
      {
        sub_1C75504FC();
      }
    }

    else
    {
    }

    v9 = OUTLINED_FUNCTION_66_2();
    sub_1C72B8CBC(v9, v10);
    OUTLINED_FUNCTION_98_5();

    v11 = *(a2 + 16);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C71C2994(void *a1, uint64_t a2)
{
  result = sub_1C70CAC04(a1);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_1C6F78124(result, v4);
      v6 = v5;

      if (v6)
      {
        v7 = sub_1C75504FC();
LABEL_7:
        v8 = *(v7 + 16);

        return v8;
      }
    }

    else
    {
    }

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1C71C2A1C(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v89 = a5;
  v8 = [a1 librarySpecificFetchOptions];
  v79 = a2;
  [v8 setSharingFilter_];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75604F0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C6F6D524();
  *(v9 + 64) = v11;
  *(v9 + 32) = 0x752E746E656D6F6DLL;
  *(v9 + 40) = 0xEB00000000646975;
  *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  *(v9 + 104) = sub_1C705575C(&qword_1EDD0FAF0, &unk_1EC217A00, &qword_1C755BD70);
  *(v9 + 72) = a4;
  sub_1C75504FC();
  v12 = sub_1C755112C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C755BAB0;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  *(v13 + 32) = 0xD00000000000001CLL;
  *(v13 + 40) = 0x80000001C75A2960;
  v14 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C7564A90;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = v12;
  v17 = v14;
  v18 = sub_1C6F6E5C4(v15);
  [v8 setInternalPredicate_];

  v19 = [objc_opt_self() fetchAssetsWithOptions_];
  v20 = [v19 fetchedObjects];

  if (v20)
  {
    v81 = v16;
    v82 = v17;
    v83 = v8;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v21 = sub_1C7550B5C();

    v22 = sub_1C6FB6304();
    v23 = 0;
    v89 = MEMORY[0x1E69E7CC0];
    while (v22 != v23)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1CCA5DDD0](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_40;
      }

      v26 = v24;
      v27 = [v26 uuid];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1C755068C();
        v75 = v30;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v89 = v34;
        }

        v31 = v89[2];
        if (v31 >= v89[3] >> 1)
        {
          sub_1C6FB1814();
          v89 = v35;
        }

        v32 = v89;
        v89[2] = v31 + 1;
        v33 = &v32[2 * v31];
        v33[4] = v29;
        v33[5] = v75;
        v23 = v25;
      }

      else
      {

        ++v23;
      }
    }

    sub_1C706D154();
    v86 = a1;
    v87 = v79;
    v88 = a3;
    v37 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v36, &v86);

    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v80 = v37;
    sub_1C75504FC();
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC8];
    v76 = v42;
    v78 = v38;
    while (v41)
    {
LABEL_24:
      v46 = (v43 << 10) | (16 * __clz(__rbit64(v41)));
      v47 = *(v80 + 56);
      v48 = *(v80 + 48) + v46;
      v49 = *(v48 + 8);
      v89 = *v48;
      v50 = (v47 + v46);
      v52 = *v50;
      v51 = v50[1];
      v85 = v49;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v86 = v44;
      v53 = sub_1C6F78124(v52, v51);
      if (__OFADD__(v44[2], (v54 & 1) == 0))
      {
        goto LABEL_42;
      }

      v55 = v53;
      v56 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
      v57 = sub_1C7551A2C();
      v44 = v86;
      if (v57)
      {
        v58 = sub_1C6F78124(v52, v51);
        if ((v56 & 1) != (v59 & 1))
        {
          goto LABEL_44;
        }

        v55 = v58;
      }

      if (v56)
      {
      }

      else
      {
        v44[(v55 >> 6) + 8] |= 1 << v55;
        v60 = (v44[6] + 16 * v55);
        *v60 = v52;
        v60[1] = v51;
        *(v44[7] + 8 * v55) = MEMORY[0x1E69E7CC0];
        v61 = v44[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_43;
        }

        v44[2] = v63;
      }

      v64 = v44[7];
      v65 = *(v64 + 8 * v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v64 + 8 * v55) = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6FB1814();
        v65 = v70;
        *(v64 + 8 * v55) = v70;
      }

      v67 = *(v65 + 16);
      if (v67 >= *(v65 + 24) >> 1)
      {
        sub_1C6FB1814();
        *(v64 + 8 * v55) = v71;
      }

      v41 &= v41 - 1;

      v68 = *(v64 + 8 * v55);
      *(v68 + 16) = v67 + 1;
      v69 = v68 + 16 * v67;
      *(v69 + 32) = v89;
      *(v69 + 40) = v85;
      v42 = v76;
      v38 = v78;
    }

    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v42)
      {

        *a6 = v44;
        return;
      }

      v41 = *(v38 + 8 * v45);
      ++v43;
      if (v41)
      {
        v43 = v45;
        goto LABEL_24;
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
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    sub_1C7196EF4();
    v72 = swift_allocError();
    *v73 = 6;
    *(v73 + 8) = 2;
    swift_willThrow();

    *v89 = v72;
  }
}

uint64_t static StoryGenerationUtilities.extendedCuratedAssetUUIDs(from:storyPhotoLibraryContext:chunkSizeForFetch:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  OUTLINED_FUNCTION_76(v8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  v12 = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 8);
  v15 = sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v16 + 32))(v11, a4, v15);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
  v17 = objc_autoreleasePoolPush();
  v18 = OUTLINED_FUNCTION_145_2();
  sub_1C71C32FC(v18, v19, v12, v14, v13, a1, v20, v21);
  if (v4)
  {
    objc_autoreleasePoolPop(v17);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      sub_1C6FD7FC8(v11, &unk_1EC218C90, &qword_1C7564BC0);
    }
  }

  else
  {
    objc_autoreleasePoolPop(v17);
    a1 = v23[3];
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      sub_1C6FD7FC8(v11, &unk_1EC218C90, &qword_1C7564BC0);
    }
  }

  return a1;
}

void sub_1C71C32FC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, unsigned __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v99 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v97 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  OUTLINED_FUNCTION_76(v20);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_72_10();
  v22 = sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  if (a1 < 1)
  {
    *a8 = MEMORY[0x1E69E7CD0];
    return;
  }

  v89 = v24;
  v25 = OUTLINED_FUNCTION_82();
  sub_1C705544C(v25, v26);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
  v95 = v22;
  if (__swift_getEnumTagSinglePayload(v9, 1, v22) != 1)
  {
    (*(v89 + 32))();
    sub_1C754F2CC();
    if (v8)
    {
      v27 = OUTLINED_FUNCTION_249();
      v28(v27);
      *a7 = v8;
      return;
    }

    v103 = v16;
    v83 = a8;
    v29 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a3, a4, 0);
    [v29 setChunkSizeForFetch_];
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    OUTLINED_FUNCTION_439();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C755BAB0;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C6F6D524();
    *(v30 + 32) = 0xD00000000000001CLL;
    *(v30 + 40) = 0x80000001C75A2960;
    v31 = sub_1C755112C();
    [v29 setInternalPredicate_];

    v108 = a3;
    v109 = a4;
    v110 = a5;
    v32 = a6;
    v33 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(a6, &v108);
    v34 = objc_opt_self();
    sub_1C71BA858(v33, &qword_1EDD0FAB0, 0x1E695D630, v35, v36, v37, v38, v39, v40, v81, v41, v82, v83, v85, v87, v89, v91, a7, v94, v22, a6, v97, v99, v101, v103, a1);
    OUTLINED_FUNCTION_135_5();

    v42 = sub_1C740A230(0x80000001C75A2960, v29, v34);
    if (!v42)
    {

      *v84 = v32;
      v77 = *(v90 + 8);
      sub_1C75504FC();
      v78 = OUTLINED_FUNCTION_249();
      v77(v78);
      return;
    }

    v43 = v42;
    v44 = [v42 count];
    if (v44 <= 0)
    {
      OUTLINED_FUNCTION_150_3();

      *v84 = MEMORY[0x1E69E7CD0];
      v79 = OUTLINED_FUNCTION_249();
      v80(v79);
      return;
    }

    v92 = v43;
    v45 = 0;
    v46 = v106 / v44;
    v108 = MEMORY[0x1E69E7CD0];
    v86 = v44;
    v88 = (v104 + 8);
    v47 = 0.0;
    v9 = v44;
    while (1)
    {
      a2 = (v45 + v106);
      v48 = __OFADD__(v45, v106);
      v49 = objc_autoreleasePoolPush();
      if (v48)
      {
        break;
      }

      if (v9 >= a2)
      {
        v50 = v45 + v106;
      }

      else
      {
        v50 = v9;
      }

      if (v50 < v45)
      {
        goto LABEL_38;
      }

      v102 = v45 + v106;
      v105 = v49;
      sub_1C754E26C();
      v51 = sub_1C754E28C();
      (*v88)(v98, v100);
      v52 = [v92 objectsAtIndexes_];

      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      OUTLINED_FUNCTION_63();
      v22 = sub_1C7550B5C();

      v53 = sub_1C6FB6304();
      if (v53)
      {
        v58 = v53;
        v111 = MEMORY[0x1E69E7CC0];
        a2 = &v111;
        sub_1C6F7ED9C(0, v53 & ~(v53 >> 63), 0, v54, v55, v56, v57);
        if (v58 < 0)
        {
          goto LABEL_39;
        }

        v59 = 0;
        v9 = v111;
        v60 = v58;
        while (1)
        {
          v61 = (v22 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v59, v22) : *(v22 + 8 * v59 + 32);
          a2 = v61;
          v62 = [a2 uuid];
          if (v62)
          {
            v63 = v62;
            v64 = sub_1C755068C();
            v66 = v65;
          }

          else
          {
            v64 = 0;
            v66 = 0;
          }

          if (!v66)
          {
            break;
          }

          v111 = v9;
          v68 = *(v9 + 16);
          v67 = *(v9 + 24);
          if (v68 >= v67 >> 1)
          {
            v70 = OUTLINED_FUNCTION_15(v67);
            sub_1C6F7ED9C(v70, v68 + 1, 1, v71, v72, v73, v74);
            v9 = v111;
          }

          ++v59;
          *(v9 + 16) = v68 + 1;
          v69 = v9 + 16 * v68;
          *(v69 + 32) = v64;
          *(v69 + 40) = v66;
          if (v60 == v59)
          {

            goto LABEL_32;
          }
        }

        __break(1u);
        break;
      }

      v9 = MEMORY[0x1E69E7CC0];
LABEL_32:
      sub_1C73978C4(v9);
      objc_autoreleasePoolPop(v105);
      sub_1C754F2DC();
      v47 = v46 + v47;
      v45 = v102;
      v9 = v86;
      if (v102 >= v86)
      {
        v75 = sub_1C75504FC();
        v76 = sub_1C71CB564(v75, &v108);
        sub_1C754F2EC();

        OUTLINED_FUNCTION_150_3();
        *v84 = v76;

        return;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v22) != 1)
  {
    sub_1C6FD7FC8(a2, &unk_1EC218C90, &qword_1C7564BC0);
  }

  if (__swift_getEnumTagSinglePayload(v9, 1, v95) != 1)
  {
    sub_1C6FD7FC8(v9, &unk_1EC218C90, &qword_1C7564BC0);
  }

  sub_1C7551AAC();
  __break(1u);
}

uint64_t static StoryGenerationUtilities.dedupingDejunkingOptions(eligibleAssetUUIDs:requiredAssetUUIDs:)()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v4;
  v5 = sub_1C755068C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 80) = sub_1C755068C();
  *(inited + 88) = v7;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = 1;
  *(inited + 128) = sub_1C755068C();
  *(inited + 136) = v8;
  *(inited + 168) = MEMORY[0x1E69E63B0];
  *(inited + 144) = 0x401E000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  OUTLINED_FUNCTION_64();
  v9 = sub_1C75504DC();
  if (v1)
  {
    v10 = sub_1C755068C();
    v12 = v11;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v28.n128_u64[0] = v1;
    sub_1C6F905E8(&v28, v27);
    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_90_10();
    OUTLINED_FUNCTION_143_3();
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_72_10();
    (*(v15 + 16))(v2);
    sub_1C709D024(*v2, v10, v12, isUniquelyReferenced_nonNull_native, &v26);
    __swift_destroy_boxed_opaque_existential_1(v27);

    v9 = v26;
  }

  if (v0)
  {
    v16 = sub_1C755068C();
    v18 = v17;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v28.n128_u64[0] = v0;
    sub_1C6F905E8(&v28, v27);
    sub_1C75504FC();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_90_10();
    OUTLINED_FUNCTION_143_3();
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_14_0();
    v23 = (v22 - v21);
    (*(v24 + 16))(v22 - v21);
    sub_1C709D024(*v23, v16, v18, v19, &v26);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return v26;
  }

  return v9;
}

id sub_1C71C3DE4()
{
  OUTLINED_FUNCTION_98_5();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C7550B3C();
  OUTLINED_FUNCTION_141();

  v2 = OUTLINED_FUNCTION_133_5();
  v4 = [v2 v3];

  return v4;
}

id static StoryGenerationUtilities.dateComponentsAttributedQueryString(withStartDateComponents:endDateComponents:localizedText:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_15_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_76(v5);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_13();
  sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  sub_1C6FD7F70();
  v12 = objc_allocWithZone(MEMORY[0x1E6978A98]);
  v13 = sub_1C71C8D18(v10, v1);
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  OUTLINED_FUNCTION_0_11();
  v14 = sub_1C7073450();
  [v14 length];
  v15 = objc_opt_self();
  v16 = OUTLINED_FUNCTION_114_6(v15, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

  return v16;
}

id sub_1C71C4004()
{
  OUTLINED_FUNCTION_3_38();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_58();
  v2 = sub_1C755065C();

  v3 = [v1 *v0];

  return v3;
}

void static StoryGenerationUtilities.genericEntityAttributedString(with:allowedIndexCategories:localizedText:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v27 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  OUTLINED_FUNCTION_76(v8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_13();
  v10 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_102_4();
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_99_1();
  sub_1C75504FC();
  v26 = v4;
  OUTLINED_FUNCTION_154();
  v13 = sub_1C7073450();
  v25 = [v13 length];
  sub_1C754E2EC();
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = (v6 + 32);
    while (1)
    {
      v16 = *v15++;
      if (v16 < 0)
      {
        break;
      }

      sub_1C754E2AC();
      if (!--v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v17 = OUTLINED_FUNCTION_249();
    v18(v17);
    v19 = OUTLINED_FUNCTION_282();
    v20(v19);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v10);
    v21 = objc_allocWithZone(MEMORY[0x1E6978A98]);
    OUTLINED_FUNCTION_99_1();
    sub_1C75504FC();
    sub_1C75504FC();
    v22 = sub_1C71C8F50(v26, v2, v27, v0);
    [objc_opt_self() updateQueryString:v13 withSelectedSuggestion:v22 inRange:0 additionalAttributes:{v25, 0}];

    v23 = OUTLINED_FUNCTION_145_2();
    v24(v23);
    OUTLINED_FUNCTION_25_0();
  }
}

id static StoryGenerationUtilities.meaningfulEventAttributedString(with:)()
{
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_99_1();
  sub_1C75504FC();
  OUTLINED_FUNCTION_58();
  v0 = sub_1C7073450();
  [v0 length];
  sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
  OUTLINED_FUNCTION_99_1();
  sub_1C75504FC();
  OUTLINED_FUNCTION_58();
  v1 = sub_1C71C4004();
  objc_opt_self();
  OUTLINED_FUNCTION_30_24();
  v4 = [v2 v3];

  return v4;
}

uint64_t sub_1C71C439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  swift_getAssociatedTypeWitness();
  sub_1C755101C();
  return sub_1C755100C();
}

uint64_t sub_1C71C44AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  if (*(v11 + 8) == 1)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1C7550FAC();
    v13 = result;
  }

  else
  {
    (*(v9 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3, v10);
    swift_getAssociatedTypeWitness();
    v13 = sub_1C755102C();
  }

  *a1 = v13;
  *(a1 + 8) = 1;
  return result;
}

uint64_t static StoryGenerationUtilities.queryTokensRequiringRetrieval(queryTokens:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  for (i = MEMORY[0x1E69E7CC0]; v3; --v3)
  {
    memcpy(__dst, v4, sizeof(__dst));
    memcpy(v25, v4, sizeof(v25));
    sub_1C6FCA6E4(__dst, __src);
    sub_1C71C47E8(v25);
    if (v6)
    {
      OUTLINED_FUNCTION_110_4(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D7D8(0, *(i + 16) + 1, 1);
        i = v26;
      }

      OUTLINED_FUNCTION_54_17();
      if (v16)
      {
        OUTLINED_FUNCTION_15(v15);
        OUTLINED_FUNCTION_32_19();
        sub_1C716D7D8(v17, v18, v19);
        i = v26;
      }

      *(i + 16) = v1;
      memcpy((i + 120 * v2 + 32), __src, 0x78uLL);
    }

    else
    {
      OUTLINED_FUNCTION_110_4(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22);
      sub_1C6FDD548(__src);
    }

    v4 += 120;
  }

  return i;
}

void sub_1C71C47E8(uint64_t a1)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v2 = *(TokenCategoryType - 8);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v44 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v53 = v44 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368, &unk_1C7563BB0);
  MEMORY[0x1EEE9AC00](v54);
  v20 = v44 - v19;
  v21 = type metadata accessor for QueryTokenSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v21);
  v57 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = *(a1 + 80);
  v25 = *(v24 + 16);
  v51 = v4;
  v52 = v2;
  v46 = v10;
  v47 = v7;
  v45 = v13;
  v44[0] = v24;
  v44[1] = v26;
  v50 = v25;
LABEL_2:
  if (v23 == v25)
  {
    return;
  }

  if (v23 >= *(v24 + 16))
  {
    __break(1u);
    return;
  }

  v27 = v23;
  sub_1C71CD17C();
  if (qword_1EDD09578 != -1)
  {
    swift_once();
  }

  v28 = 0;
  v48 = v27 + 1;
  v49 = v27;
  v55 = qword_1EDD28B60;
  v56 = *(qword_1EDD28B60 + 16);
  v29 = v53;
  while (v56 != v28)
  {
    v30 = v18;
    v31 = &v20[*(v54 + 48)];
    sub_1C71CD17C();
    sub_1C71CD17C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      case 2u:
        sub_1C71CD17C();
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_1C6FD7FC8(v31 + v35, &qword_1EC218C50, &qword_1C75606A0);
          sub_1C6FD7FC8(v31, &qword_1EC218C50, &qword_1C75606A0);
          sub_1C6FD7FC8(&v18[v35], &qword_1EC218C50, &qword_1C75606A0);
          v41 = v18;
          v42 = &qword_1EC218C50;
          v43 = &qword_1C75606A0;
LABEL_55:
          sub_1C6FD7FC8(v41, v42, v43);
          goto LABEL_58;
        }

        sub_1C6FD7FC8(&v18[v35], &qword_1EC218C50, &qword_1C75606A0);
        v36 = v18;
        v37 = &qword_1EC218C50;
        v38 = &qword_1C75606A0;
LABEL_48:
        sub_1C6FD7FC8(v36, v37, v38);
        goto LABEL_49;
      case 3u:
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 4u:
        sub_1C71CD17C();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v33 = sub_1C754F09C();
        v34 = *(*(v33 - 8) + 8);
        if (EnumCaseMultiPayload == 4)
        {
          goto LABEL_51;
        }

        v34(v29, v33);
        v4 = v51;
        goto LABEL_37;
      case 5u:
        v29 = v45;
        sub_1C71CD17C();
        v39 = swift_getEnumCaseMultiPayload();
        v33 = sub_1C754F5FC();
        v34 = *(*(v33 - 8) + 8);
        if (v39 == 5)
        {
LABEL_51:
          v34(v31, v33);
          v34(v29, v33);
          v4 = v51;
          goto LABEL_57;
        }

        v34(v29, v33);
        v4 = v51;
        v29 = v53;
        goto LABEL_37;
      case 6u:
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 7u:
        sub_1C71CD17C();
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          sub_1C71CD1D4();
          sub_1C71CD1D4();
          goto LABEL_57;
        }

        sub_1C71CD1D4();
        goto LABEL_37;
      case 8u:
        v40 = v47;
        sub_1C71CD17C();
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          sub_1C6FD7FC8(v31, &qword_1EC216328, &qword_1C7575BE0);
          v41 = v40;
          v42 = &qword_1EC216328;
          v43 = &qword_1C7575BE0;
          goto LABEL_55;
        }

        v36 = v40;
        v37 = &qword_1EC216328;
        v38 = &qword_1C7575BE0;
        goto LABEL_48;
      case 9u:
        sub_1C71CD17C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          sub_1C71CD1D4();
          sub_1C6FD7FC8(v31, &qword_1EC216320, &unk_1C7563B80);
          sub_1C71CD1D4();
          sub_1C6FD7FC8(v4, &qword_1EC216320, &unk_1C7563B80);
LABEL_57:
          v18 = v30;
LABEL_58:
          sub_1C71CD1D4();
          sub_1C71CD1D4();
          v24 = v44[0];
          v25 = v50;
          v23 = v48;
          goto LABEL_2;
        }

        sub_1C71CD1D4();
        sub_1C6FD7FC8(v4, &qword_1EC216320, &unk_1C7563B80);
LABEL_37:
        v18 = v30;
LABEL_49:
        sub_1C6FD7FC8(v20, &qword_1EC216368, &unk_1C7563BB0);
        ++v28;
        break;
      case 0xAu:
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 0xBu:
        if (swift_getEnumCaseMultiPayload() == 11)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      case 0xCu:
        if (swift_getEnumCaseMultiPayload() == 12)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 0xDu:
        if (swift_getEnumCaseMultiPayload() == 13)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      case 0xEu:
        if (swift_getEnumCaseMultiPayload() == 14)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      case 0xFu:
        if (swift_getEnumCaseMultiPayload() == 15)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      case 0x10u:
        if (swift_getEnumCaseMultiPayload() == 16)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      case 0x11u:
        if (swift_getEnumCaseMultiPayload() == 17)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      case 0x12u:
        if (swift_getEnumCaseMultiPayload() == 18)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      default:
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_49;
        }

LABEL_50:
        sub_1C71CD1D4();
        goto LABEL_58;
    }
  }

  sub_1C71CD1D4();
}

void static StoryGenerationUtilities.musicRelatedQueryTokens(in:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_5();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v27 = 0;
  v25 = v2 + 32;
  v24 = MEMORY[0x1E69E7CC0];
  v26 = *(v2 + 16);
  while (1)
  {
LABEL_2:
    if (v27 == v26)
    {
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v27 >= v26)
    {
      break;
    }

    v6 = v27;
    memcpy(v29, (v25 + 120 * v27++), sizeof(v29));
    if (__OFADD__(v6, 1))
    {
      goto LABEL_29;
    }

    v7 = v29[10];
    v8 = *(v29[10] + 16);
    if (v8)
    {
      OUTLINED_FUNCTION_191();
      sub_1C6FCA6E4(v29, &v28);
      sub_1C75504FC();
      v9 = 0;
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_4_50();
        sub_1C71CD17C();
        if (qword_1EDD08720 != -1)
        {
          swift_once();
        }

        ++v9;
        OUTLINED_FUNCTION_1_73();
        OUTLINED_FUNCTION_154();
        sub_1C71CD17C();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
            sub_1C6FD7FC8(v0 + *(v10 + 48), &qword_1EC218C50, &qword_1C75606A0);
            v11 = OUTLINED_FUNCTION_64();
            sub_1C6FD7FC8(v11, v12, &qword_1C75606A0);
            break;
          case 4u:
            sub_1C754F09C();
            OUTLINED_FUNCTION_12();
            (*(v13 + 8))(v0);
            break;
          case 5u:
            sub_1C754F5FC();
            OUTLINED_FUNCTION_12();
            (*(v14 + 8))(v0);
            break;
          case 7u:
            OUTLINED_FUNCTION_38_17();
            sub_1C71CD1D4();
            break;
          case 8u:
            sub_1C6FD7FC8(v0, &qword_1EC216328, &qword_1C7575BE0);
            break;
          case 9u:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
            OUTLINED_FUNCTION_39_20();
            sub_1C71CD1D4();
            sub_1C6FD7FC8(v0, &qword_1EC216320, &unk_1C7563B80);
            break;
          case 0xBu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x10u:
          case 0x11u:
          case 0x12u:
            break;
          default:
            OUTLINED_FUNCTION_0_97();
            sub_1C71CD1D4();
            break;
        }

        sub_1C7009CE0();
        v16 = v15;
        OUTLINED_FUNCTION_3_64();
        sub_1C71CD1D4();
        if (v16)
        {
          break;
        }

        if (v8 == v9)
        {
          sub_1C6FDD548(v29);

          goto LABEL_2;
        }
      }

      v17 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D7D8(0, *(v24 + 16) + 1, 1);
        v17 = v30;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_15(v19);
        OUTLINED_FUNCTION_186();
        sub_1C716D7D8(v21, v22, v23);
        v17 = v30;
      }

      *(v17 + 16) = v20 + 1;
      v24 = v17;
      memcpy((v17 + 120 * v20 + 32), v29, 0x78uLL);
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

BOOL static StoryGenerationUtilities.isHomeOrWorkQueryToken(_:)()
{
  if (qword_1EDD09980 != -1)
  {
    OUTLINED_FUNCTION_53_18(&qword_1EDD09980);
  }

  OUTLINED_FUNCTION_55_15(&qword_1EDD09988);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_35();
  OUTLINED_FUNCTION_144_2();
  if (sub_1C70735F4())
  {
    return 1;
  }

  else
  {
    if (qword_1EDD09968 != -1)
    {
      OUTLINED_FUNCTION_52_16(&qword_1EDD09968);
    }

    OUTLINED_FUNCTION_55_15(&qword_1EDD09970);
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_20_35();
    OUTLINED_FUNCTION_144_2();
    return sub_1C70735F4();
  }
}

void static StoryGenerationUtilities.queryTokenAssetUUIDs(ofCategoryType:in:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v82 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368, &unk_1C7563BB0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v25 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v68 = v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_0();
  v83 = MEMORY[0x1E69E7CD0];
  v27 = *(v2 + 16);
  if (v27)
  {
    v70 = v12;
    v71 = v0;
    v28 = 0;
    v29 = v2 + 32;
    v77 = v4;
    v78 = TokenCategoryType;
    v30 = v4;
    v69 = v15;
    v76 = v18;
    v66 = v29;
    v67 = v27;
    do
    {
      v31 = v29 + 120 * v28;
      if (*(v31 + 104))
      {
        v32 = *(*(v31 + 80) + 16);
        if (v32)
        {
          v74 = v28;
          v33 = v68;
          OUTLINED_FUNCTION_191();
          v36 = v35 + v34;
          v37 = v35;
          sub_1C75504FC();
          v73 = v37;
          sub_1C75504FC();
          v38 = *(v33 + 72);
          v79 = v38;
          while (2)
          {
            OUTLINED_FUNCTION_4_50();
            sub_1C71CD17C();
            sub_1C71CD17C();
            OUTLINED_FUNCTION_3_64();
            sub_1C71CD1D4();
            v39 = &v7[*(v30 + 48)];
            sub_1C71CD0F0();
            sub_1C71CD17C();
            OUTLINED_FUNCTION_295();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v41 = v81;
            switch(EnumCaseMultiPayload)
            {
              case 1:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  goto LABEL_43;
                }

                goto LABEL_58;
              case 2:
                OUTLINED_FUNCTION_1_73();
                sub_1C71CD17C();
                v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
                if (swift_getEnumCaseMultiPayload() == 2)
                {
                  sub_1C6FD7FC8(v39 + v50, &qword_1EC218C50, &qword_1C75606A0);
                  sub_1C6FD7FC8(v39, &qword_1EC218C50, &qword_1C75606A0);
                  sub_1C6FD7FC8(&v41[v50], &qword_1EC218C50, &qword_1C75606A0);
                  v51 = OUTLINED_FUNCTION_117_0();
                  v38 = v79;
                  sub_1C6FD7FC8(v51, v52, &qword_1C75606A0);
                  goto LABEL_48;
                }

                sub_1C6FD7FC8(&v41[v50], &qword_1EC218C50, &qword_1C75606A0);
                v64 = OUTLINED_FUNCTION_145_2();
                sub_1C6FD7FC8(v64, v65, &qword_1C75606A0);
                goto LABEL_58;
              case 3:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 3)
                {
                  goto LABEL_58;
                }

                goto LABEL_43;
              case 4:
                OUTLINED_FUNCTION_1_73();
                sub_1C71CD17C();
                OUTLINED_FUNCTION_66_2();
                v75 = swift_getEnumCaseMultiPayload();
                sub_1C754F09C();
                OUTLINED_FUNCTION_12();
                v43 = *(v42 + 8);
                if (v75 == 4)
                {
                  v44 = OUTLINED_FUNCTION_82();
                  v43(v44);
                  v45 = OUTLINED_FUNCTION_15_1();
                  v43(v45);
                  goto LABEL_35;
                }

                v60 = OUTLINED_FUNCTION_15_1();
                v43(v60);
                goto LABEL_54;
              case 5:
                OUTLINED_FUNCTION_1_73();
                sub_1C71CD17C();
                OUTLINED_FUNCTION_66_2();
                v53 = swift_getEnumCaseMultiPayload();
                v54 = sub_1C754F5FC();
                OUTLINED_FUNCTION_12();
                v56 = *(v55 + 8);
                if (v53 == 5)
                {
                  v57 = OUTLINED_FUNCTION_82();
                  v56(v57);
                  (v56)(v76, v54);
LABEL_35:
                  v30 = v77;
                  goto LABEL_47;
                }

                (v56)(v76, v54);
LABEL_54:
                v30 = v77;
                goto LABEL_57;
              case 6:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 6)
                {
                  goto LABEL_58;
                }

                goto LABEL_43;
              case 7:
                OUTLINED_FUNCTION_1_73();
                sub_1C71CD17C();
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() == 7)
                {
                  sub_1C71CD1D4();
                  sub_1C71CD1D4();
                  goto LABEL_47;
                }

                OUTLINED_FUNCTION_38_17();
                sub_1C71CD1D4();
                goto LABEL_57;
              case 8:
                OUTLINED_FUNCTION_1_73();
                v58 = v70;
                sub_1C71CD17C();
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() == 8)
                {
                  sub_1C6FD7FC8(v39, &qword_1EC216328, &qword_1C7575BE0);
                  v47 = v58;
                  v48 = &qword_1EC216328;
                  v49 = &qword_1C7575BE0;
                  goto LABEL_46;
                }

                v61 = v58;
                v62 = &qword_1EC216328;
                v63 = &qword_1C7575BE0;
                goto LABEL_56;
              case 9:
                OUTLINED_FUNCTION_1_73();
                v46 = v71;
                sub_1C71CD17C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() == 9)
                {
                  sub_1C71CD1D4();
                  sub_1C6FD7FC8(v39, &qword_1EC216320, &unk_1C7563B80);
                  sub_1C71CD1D4();
                  v47 = v46;
                  v48 = &qword_1EC216320;
                  v49 = &unk_1C7563B80;
LABEL_46:
                  sub_1C6FD7FC8(v47, v48, v49);
LABEL_47:
                  v38 = v79;
LABEL_48:
                  OUTLINED_FUNCTION_0_97();
                  sub_1C71CD1D4();
                  v59 = sub_1C75504FC();
                  sub_1C73978C4(v59);
                }

                else
                {
                  OUTLINED_FUNCTION_39_20();
                  sub_1C71CD1D4();
                  v61 = v46;
                  v62 = &qword_1EC216320;
                  v63 = &unk_1C7563B80;
LABEL_56:
                  sub_1C6FD7FC8(v61, v62, v63);
LABEL_57:
                  v38 = v79;
LABEL_58:
                  sub_1C6FD7FC8(v7, &qword_1EC216368, &unk_1C7563BB0);
                }

                v36 += v38;
                if (--v32)
                {
                  continue;
                }

                v29 = v66;
                v27 = v67;
                v28 = v74;
                break;
              case 10:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() == 10)
                {
                  goto LABEL_43;
                }

                goto LABEL_58;
              case 11:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 11)
                {
                  goto LABEL_58;
                }

                goto LABEL_48;
              case 12:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 12)
                {
                  goto LABEL_58;
                }

                goto LABEL_43;
              case 13:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 13)
                {
                  goto LABEL_58;
                }

                goto LABEL_48;
              case 14:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 14)
                {
                  goto LABEL_58;
                }

                goto LABEL_48;
              case 15:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 15)
                {
                  goto LABEL_58;
                }

                goto LABEL_48;
              case 16:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 16)
                {
                  goto LABEL_58;
                }

                goto LABEL_48;
              case 17:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 17)
                {
                  goto LABEL_58;
                }

                goto LABEL_48;
              case 18:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload() != 18)
                {
                  goto LABEL_58;
                }

                goto LABEL_48;
              default:
                OUTLINED_FUNCTION_66_2();
                if (swift_getEnumCaseMultiPayload())
                {
                  goto LABEL_58;
                }

LABEL_43:
                OUTLINED_FUNCTION_0_97();
                sub_1C71CD1D4();
                goto LABEL_48;
            }

            break;
          }
        }
      }

      ++v28;
    }

    while (v28 != v27);
  }

  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.queryTokenAssetUUIDs(ofCategoryTypeStrings:in:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_300();
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(v3);
  v5 = OUTLINED_FUNCTION_76(TokenCategoryType);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_5();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v7 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v20 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v22 = MEMORY[0x1E69E7CD0];
  v9 = *(v2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v2 + 32;
    v19 = *(v2 + 16);
    do
    {
      v12 = v11 + 120 * v10;
      if (*(v12 + 104))
      {
        v13 = *(v12 + 80);
        v14 = *(v13 + 16);
        if (v14)
        {
          OUTLINED_FUNCTION_191();
          v16 = v13 + v15;
          sub_1C75504FC();
          sub_1C75504FC();
          v17 = *(v20 + 72);
          do
          {
            OUTLINED_FUNCTION_4_50();
            sub_1C71CD17C();
            OUTLINED_FUNCTION_1_73();
            OUTLINED_FUNCTION_154();
            sub_1C71CD17C();
            OUTLINED_FUNCTION_3_64();
            sub_1C71CD1D4();
            QueryTokenCategoryType.string.getter(&v21);
            OUTLINED_FUNCTION_0_97();
            sub_1C71CD1D4();
            if (sub_1C705D134(v21, v0))
            {
              v18 = sub_1C75504FC();
              sub_1C73978C4(v18);
            }

            v16 += v17;
            --v14;
          }

          while (v14);

          v11 = v2 + 32;
          v9 = v19;
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy((inited + 32), __dst, 0x78uLL);
  sub_1C6FCA6E4(__dst, v4);
  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
  OUTLINED_FUNCTION_98_5();
  swift_setDeallocating();
  sub_1C6FDC98C();
  return v1;
}

uint64_t static StoryGenerationUtilities.personFaceAgeType(_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 2036490562 && a2 == 0xE400000000000000)
  {
    return 1;
  }

  OUTLINED_FUNCTION_115();
  if (OUTLINED_FUNCTION_6_2(2036490562, 0xE400000000000000))
  {
    return 1;
  }

  v7 = v3 == 0x646C696843 && v2 == 0xE500000000000000;
  if (v7 || (OUTLINED_FUNCTION_6_2(0x646C696843, 0xE500000000000000) & 1) != 0)
  {
    return 2;
  }

  v8 = OUTLINED_FUNCTION_120_5();
  v10 = v3 == v8 && v2 == v9;
  if (v10 || (OUTLINED_FUNCTION_6_2(v8, v9) & 1) != 0)
  {
    return 3;
  }

  v11 = v3 == 0x726F696E6553 && v2 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_6_2(0x726F696E6553, 0xE600000000000000) & 1) != 0)
  {
    return 4;
  }

  v5 = 5;
  if (v3 != 0x746C756441 || v2 != 0xE500000000000000)
  {
    if (OUTLINED_FUNCTION_6_2(0x746C756441, 0xE500000000000000))
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

unint64_t static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0x14)
  {
    v2 = 0;
  }

  else
  {
    v2 = byte_1C7576008[result];
  }

  *a2 = v2;
  return result;
}

void static StoryGenerationUtilities.queryTokens(ofCategoryTypeStrings:in:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_300();
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(v3);
  v5 = OUTLINED_FUNCTION_76(TokenCategoryType);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_101_7();
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v2 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      memcpy(v19, (v8 + 120 * v7), 0x78uLL);
      v10 = v19[10];
      ++v7;
      v11 = *(v19[10] + 16);
      sub_1C6FCA6E4(v19, v18);
      sub_1C75504FC();
      v12 = 0;
      do
      {
        if (v11 == v12)
        {

          sub_1C6FDD548(v19);
          goto LABEL_13;
        }

        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
        OUTLINED_FUNCTION_18(TokenSuggestion);
        OUTLINED_FUNCTION_1_73();
        sub_1C71CD17C();
        QueryTokenCategoryType.string.getter(v18);
        OUTLINED_FUNCTION_0_97();
        sub_1C71CD1D4();
        ++v12;
      }

      while (!sub_1C705D134(v18[0], v0));

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB3514();
        v9 = v16;
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_15(v14);
        sub_1C6FB3514();
        v9 = v17;
      }

      *(v9 + 16) = v15 + 1;
      memcpy((v9 + 120 * v15 + 32), v19, 0x78uLL);
LABEL_13:
      if (v7 != v6)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t static StoryGenerationUtilities.isPersonOrPetQueryToken(_:)()
{
  OUTLINED_FUNCTION_300();
  v2 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_101_7();
  v6 = [v0 entityCategoryTypes];
  sub_1C754E29C();

  LOBYTE(v6) = sub_1C754E2DC();
  (*(v4 + 8))(v1, v2);
  return v6 & 1;
}

void static StoryGenerationUtilities.containsQueryTokens(ofTypes:in:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_300();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v3);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_101_7();
  v12 = *(v2 + 16);
  if (v12)
  {
    v6 = 0;
    v7 = v2 + 32;
    while (2)
    {
      v8 = *(v7 + 120 * v6 + 80);
      v9 = *(v8 + 16);
      v13 = v6 + 1;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v10 = 0;
      while (v9 != v10)
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_191();
        OUTLINED_FUNCTION_4_50();
        sub_1C71CD17C();
        ++v10;
        QueryTokenCategoryType.string.getter(&v14);
        v11 = sub_1C705D134(v14, v0);
        OUTLINED_FUNCTION_3_64();
        sub_1C71CD1D4();
        if (v11)
        {

          goto LABEL_9;
        }
      }

      v6 = v13;
      v7 = v2 + 32;
      if (v13 != v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_25_0();
}

uint64_t static StoryGenerationUtilities.shouldPerformMetadataSearch(_:)(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  OUTLINED_FUNCTION_76(v2);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__dst[-v4 - 8];
  v6 = sub_1C754F14C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &__dst[-v14 - 8];
  memcpy(__dst, a1, sizeof(__dst));
  QueryToken.publicEvent()();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C6FD7FC8(v5, &qword_1EC216328, &qword_1C7575BE0);
    v16 = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_154();
    v18(v17);
    (*(v8 + 104))(v12, *MEMORY[0x1E69C17B8], v6);
    v19 = OUTLINED_FUNCTION_103();
    v16 = sub_1C6FA3964(v19, v20);
    v21 = *(v8 + 8);
    v22 = OUTLINED_FUNCTION_295();
    v21(v22);
    (v21)(v15, v6);
  }

  return v16 & 1;
}

id static StoryGenerationUtilities.personConstrainedAssetFetchPredicate(constrainedTo:includeAssetsWithNoPersons:)(unint64_t a1, char a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1C75516BC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAA0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6F6D524();
  strcpy((v5 + 32), "detectedFaces");
  *(v5 + 46) = -4864;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  strcpy((v5 + 72), "personForFace");
  *(v5 + 86) = -4864;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  v8 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCA5DDD0](v8, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v11 = [v9 objectID];

    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
  }

  while (v4 != v8);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  *(v5 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CD0, &qword_1C75702A8);
  *(v5 + 144) = sub_1C705575C(&qword_1EC217FC8, &unk_1EC218CD0, &qword_1C75702A8);
  *(v5 + 112) = v17;
  v12 = sub_1C755112C();
  if (a2)
  {
    OUTLINED_FUNCTION_439();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C755BAB0;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v7;
    strcpy((v13 + 32), "detectedFaces");
    *(v13 + 46) = -4864;
    v14 = sub_1C755112C();
    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    OUTLINED_FUNCTION_99_0();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C7564A90;
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    return sub_1C74B8340(v15);
  }

  return v12;
}

uint64_t sub_1C71C6D88(void **a1, void **a2)
{
  v4 = sub_1C754DF6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v35 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = [v18 creationDate];
  if (v20)
  {
    v21 = v20;
    v35 = v18;
    sub_1C754DF2C();

    v22 = *(v5 + 32);
    v22(v17, v13, v4);
    v36 = v19;
    v23 = [v19 creationDate];
    if (v23)
    {
      v24 = v23;
      sub_1C754DF2C();

      v22(v10, v7, v4);
      sub_1C71CD2B8(&unk_1EDD0CBB0, MEMORY[0x1E6969530]);
      if ((sub_1C755063C() & 1) == 0)
      {
        v33 = sub_1C754DF4C();
        v34 = *(v5 + 8);
        v34(v10, v4);
        v34(v17, v4);
        v32 = v33 == -1;
        return v32 & 1;
      }

      v25 = *(v5 + 8);
      v25(v10, v4);
      v25(v17, v4);
    }

    else
    {
      (*(v5 + 8))(v17, v4);
    }

    v18 = v35;
    v19 = v36;
  }

  result = sub_1C70CAC04(v18);
  if (v27)
  {
    v28 = result;
    v29 = v27;
    result = sub_1C70CAC04(v19);
    if (v30)
    {
      if (v28 == result && v29 == v30)
      {

        v32 = 0;
      }

      else
      {
        v32 = sub_1C7551DBC();
      }

      return v32 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C71C70B8(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v8 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a1, a2, 0);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C755F060;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C6F6D524();
  *(v9 + 64) = v11;
  *(v9 + 32) = 0xD000000000000028;
  *(v9 + 40) = 0x80000001C75A3700;
  v12 = MEMORY[0x1E69E7290];
  v13 = MEMORY[0x1E69E72E8];
  *(v9 + 96) = MEMORY[0x1E69E7290];
  *(v9 + 104) = v13;
  *(v9 + 72) = 1;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = 0xD000000000000028;
  *(v9 + 120) = 0x80000001C75A3700;
  *(v9 + 176) = v12;
  *(v9 + 184) = v13;
  *(v9 + 152) = -1;
  v14 = sub_1C755112C();
  [v8 setInternalPredicate_];

  v54 = a1;
  LOWORD(v55) = a2;
  v56 = a3;
  v15 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(v58, &v54);
  v16 = objc_opt_self();
  sub_1C71BA858(v15, &qword_1EDD0FAB0, 0x1E695D630, v17, v18, v19, v20, v21, v22, v45, v23, v47, v49, a5, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  OUTLINED_FUNCTION_135_5();

  v50 = v8;
  v24 = sub_1C740A230("thExtendedCuratedAssets", v8, v16);
  v48 = v24;
  if (v24 && (v25 = [v24 fetchedObjects]) != 0)
  {
    v26 = v25;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v27 = sub_1C7550B5C();
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = sub_1C6FB6304();
  v29 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v28 == v29)
    {

      sub_1C706D154();
      v44 = v43;

      *v52 = v44;
      return;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1CCA5DDD0](v29, v27);
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    v32 = v30;
    v33 = [v32 uuid];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1C755068C();
      v46 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v58 = v41;
      }

      v38 = *(v58 + 16);
      v37 = *(v58 + 24);
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_15(v37);
        sub_1C6FB1814();
        v58 = v42;
      }

      v39 = v58;
      *(v58 + 16) = v38 + 1;
      v40 = v39 + 16 * v38;
      *(v40 + 32) = v35;
      *(v40 + 40) = v46;
      v29 = v31;
    }

    else
    {

      ++v29;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void static StoryGenerationUtilities.sanitizeAttributedStringToKeepPersonAnnotations(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v30 = *MEMORY[0x1E6978F98];
  sub_1C6F65BE8(0, &qword_1EDD0CD98, 0x1E696AD40);
  v31 = v30;
  v32 = [v29 string];
  sub_1C755068C();

  OUTLINED_FUNCTION_15_1();
  v33 = sub_1C71C4004();
  v34 = [v29 length];
  OUTLINED_FUNCTION_30();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v31;
  OUTLINED_FUNCTION_30();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1C71CCBCC;
  *(v36 + 24) = v35;
  a13 = sub_1C71CCBD4;
  a14 = v36;
  a9 = MEMORY[0x1E69E9820];
  a10 = 1107296256;
  OUTLINED_FUNCTION_41_18();
  a11 = v37;
  a12 = &block_descriptor_15;
  v38 = _Block_copy(&a9);
  v39 = v31;
  v33;

  [v29 enumerateAttribute:v39 inRange:0 options:v34 usingBlock:{0, v38}];

  _Block_release(v38);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
  }
}

void sub_1C71C75F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_38_2();
  sub_1C6FD7F70();
  if (!a14)
  {
    sub_1C6FD7FC8(&a11, &qword_1EC219770, &unk_1C755C740);
    goto LABEL_14;
  }

  sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
  if (swift_dynamicCast())
  {
    v34 = [a10 suggestion];
    if (!v34)
    {
LABEL_13:

      goto LABEL_14;
    }

    v35 = v34;
    v36 = sub_1C71CCABC(v34);
    if (v36)
    {
      if (*(v36 + 16))
      {
        v37 = [v35 categoriesType];
        if (v37 == 9)
        {
          sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
          OUTLINED_FUNCTION_63();
          v38 = sub_1C71C3DE4();
          v39 = sub_1C734406C(v38, [a10 QUToken]);
          [v33 addAttribute:v31 value:v39 range:{v27, v26}];

          goto LABEL_12;
        }

        if (v37 == 7)
        {

          [v33 addAttribute:v31 value:a10 range:{v27, v26}];

          goto LABEL_14;
        }
      }
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_13_5();
}

void static StoryGenerationUtilities.extractPersonUUIDs(from:)(void *a1)
{
  v9 = MEMORY[0x1E69E7CD0];
  v2 = *MEMORY[0x1E6978F98];
  v3 = [a1 length];
  v4 = swift_allocObject();
  *(v4 + 16) = &v9;
  OUTLINED_FUNCTION_30();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C71CCBDC;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1C71CD308;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_41_18();
  aBlock[2] = v6;
  aBlock[3] = &block_descriptor_24_0;
  v7 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v2 inRange:0 options:v3 usingBlock:{0, v7}];

  _Block_release(v7);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1C71C7974()
{
  sub_1C6FD7F70();
  if (v5)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
    if (swift_dynamicCast())
    {
      v0 = [v3 suggestion];
      if (v0)
      {
        v1 = v0;
        v2 = sub_1C71CCABC(v0);
        if (v2)
        {
          if (*(v2 + 16))
          {
            sub_1C73978C4(v2);
          }

          else
          {
          }
        }
      }
    }
  }

  else
  {
    sub_1C6FD7FC8(v4, &qword_1EC219770, &unk_1C755C740);
  }
}

uint64_t static StoryGenerationUtilities.mePersonUUID(in:)(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C71C7AB8(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1C71C7AB8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 librarySpecificFetchOptions];
  v5 = [objc_opt_self() fetchMePersonWithOptions_];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v6 uuid];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1C755068C();
      v11 = v10;
    }

    else
    {

      v9 = 0;
      v11 = 0;
    }

    *a2 = v9;
    a2[1] = v11;
  }

  else
  {
    v31[0] = 0;
    v12 = [a1 suggestedMePersonIdentifierWithError_];
    v13 = v31[0];
    v14 = sub_1C755068C();
    v16 = v15;
    v17 = v13;

    if (v17)
    {

      if (qword_1EDD0DBE0 != -1)
      {
        swift_once();
      }

      v18 = sub_1C754FF1C();
      __swift_project_value_buffer(v18, qword_1EDD28D28);
      v19 = v17;
      v20 = sub_1C754FEEC();
      v21 = sub_1C755119C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v19;
        *v23 = v13;
        v24 = v19;
        _os_log_impl(&dword_1C6F5C000, v20, v21, "Error when fetching Me person using suggestedMePersonIdentifierWithError = %@", v22, 0xCu);
        sub_1C6FD7FC8(v23, &qword_1EC215190, &qword_1C755C730);
        MEMORY[0x1CCA5F8E0](v23, -1, -1);
        MEMORY[0x1CCA5F8E0](v22, -1, -1);
        v19 = v20;
        v20 = v24;
      }

      else
      {
        v24 = v19;
      }

      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = sub_1C71CCB14(v14, v16, ObjCClassFromMetadata);
      if (v26)
      {
        v27 = v26;
        v28 = sub_1C755068C();
        v30 = v29;
      }

      else
      {

        v28 = 0;
        v30 = 0;
      }

      *a2 = v28;
      a2[1] = v30;
    }
  }
}

uint64_t static StoryGenerationUtilities.personAssetUUIDs(for:scopedAssetUUIDs:storyPhotoLibraryContext:)()
{
  OUTLINED_FUNCTION_87_11();
  v3 = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  v6 = objc_autoreleasePoolPush();
  sub_1C71C7E5C(v1, v0, v3, v5, v4, &v8);
  objc_autoreleasePoolPop(v6);
  return v8;
}

void sub_1C71C7E5C(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  LODWORD(v66) = a4;
  sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_1C7082A30(a1, a2, ObjCClassFromMetadata);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v63 = a5;
    v62 = a1;
    v64 = a2;
    v65 = a6;
    v16 = [a3 librarySpecificFetchOptions];
    [v16 setSharingFilter_];
    v67 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1C755192C();
    OUTLINED_FUNCTION_130_2();
    sub_1C755196C();
    OUTLINED_FUNCTION_130_2();
    sub_1C755197C();
    sub_1C755193C();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1C755192C();
    OUTLINED_FUNCTION_130_2();
    sub_1C755196C();
    OUTLINED_FUNCTION_130_2();
    sub_1C755197C();
    sub_1C755193C();
    sub_1C7082AAC(v67, v16);
    v17 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    OUTLINED_FUNCTION_99_0();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C755BAB0;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v19 = sub_1C7550B3C();

    v20 = [v17 fetchPersonsWithLocalIdentifiers:v19 options:v16];

    v21 = [v20 firstObject];
    if (v21)
    {
      v67 = a3;
      LOWORD(v68) = v66;
      v69 = v63;
      OUTLINED_FUNCTION_61_9();
      v27 = static StoryGenerationUtilities.assetFetchOptions(storyPhotoLibraryContext:scopedAssetUUIDs:sortDescriptors:internalSortDescriptors:fetchLimit:)(v22, v23, v24, v25, v26, 1);
      v28 = [objc_opt_self() fetchAssetsThroughAssetPersonEdgesForPerson:v21 options:v27];
      if (v28)
      {
        v29 = v28;
        if ([v28 count] >= 1)
        {
          v70 = MEMORY[0x1E69E7CD0];
          v30 = [v29 count];
          if ((v30 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v31 = v30;
            if (v30)
            {
              v32 = 0;
              do
              {
                v33 = [v29 objectAtIndexedSubscript_];
                v34 = sub_1C6FCA214(v33);
                if (v35)
                {
                  sub_1C70F082C(&v67, v34, v35);
                }

                else
                {
                }

                ++v32;
              }

              while (v31 != v32);
            }

            v66 = v27;
            if (qword_1EDD0DBE0 == -1)
            {
              goto LABEL_13;
            }
          }

          OUTLINED_FUNCTION_2();
          swift_once();
LABEL_13:
          v36 = sub_1C754FF1C();
          __swift_project_value_buffer(v36, qword_1EDD28D28);
          v37 = v70;
          sub_1C75504FC();
          sub_1C75504FC();
          v38 = sub_1C754FEEC();
          v39 = sub_1C755117C();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v67 = v41;
            *v40 = 134218242;
            *(v40 + 4) = *(v37 + 16);

            *(v40 + 12) = 2080;
            *(v40 + 14) = sub_1C6F765A4(v62, v64, &v67);
            _os_log_impl(&dword_1C6F5C000, v38, v39, "There are %ld assets for person %s", v40, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v41);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          *v65 = v37;
          return;
        }
      }

      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
      }

      v56 = sub_1C754FF1C();
      __swift_project_value_buffer(v56, qword_1EDD28D28);
      sub_1C75504FC();
      v57 = sub_1C754FEEC();
      v58 = sub_1C755117C();

      if (os_log_type_enabled(v57, v58))
      {
        OUTLINED_FUNCTION_41_0();
        v59 = OUTLINED_FUNCTION_4_36();
        v67 = v59;
        *a3 = 136315138;
        *(a3 + 1) = sub_1C6F765A4(v62, v64, &v67);
        OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v60, v61, "There are no assets for person %s");
        __swift_destroy_boxed_opaque_existential_1(v59);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      *v65 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
      }

      v50 = sub_1C754FF1C();
      __swift_project_value_buffer(v50, qword_1EDD28D28);
      sub_1C75504FC();
      v51 = sub_1C754FEEC();
      v52 = sub_1C755119C();

      if (os_log_type_enabled(v51, v52))
      {
        OUTLINED_FUNCTION_41_0();
        v53 = OUTLINED_FUNCTION_4_36();
        v67 = v53;
        *a3 = 136315138;
        *(a3 + 1) = sub_1C6F765A4(v62, a2, &v67);
        OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v54, v55, "No PHPerson object for the given personUUID = %s");
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      *a6 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    if (qword_1EDD0DBE0 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v42 = sub_1C754FF1C();
    __swift_project_value_buffer(v42, qword_1EDD28D28);
    sub_1C75504FC();
    v43 = sub_1C754FEEC();
    v44 = sub_1C755119C();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_41_0();
      v45 = OUTLINED_FUNCTION_4_36();
      v46 = a1;
      v47 = v45;
      v67 = v45;
      *a3 = 136315138;
      *(a3 + 1) = sub_1C6F765A4(v46, a2, &v67);
      OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v48, v49, "No person localIdentifier for the given personUUID = %s");
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *a6 = MEMORY[0x1E69E7CD0];
  }
}

uint64_t static StoryGenerationUtilities.searchEntityCategoryTypes(for:)(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return 4;
  }

  switch(a1)
  {
    case 4:
      return 1;
    case 7:
    case 9:
      return 3;
    case 44:
      return 8;
    case 13:
      return 4;
  }

  return 0;
}

void sub_1C71C8640(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned __int16 a4@<W3>, void *a5@<X8>)
{
  if (!*(a1 + 16))
  {
    if (qword_1EDD0DBE0 == -1)
    {
LABEL_5:
      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, qword_1EDD28D28);
      v9 = sub_1C754FEEC();
      v10 = sub_1C755119C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1C6F5C000, v9, v10, "No moments to fetch assets", v11, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      goto LABEL_18;
    }

LABEL_21:
    OUTLINED_FUNCTION_2();
    swift_once();
    goto LABEL_5;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v13 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a3, a4, 0);
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C75604F0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1C6F6D524();
    *(v14 + 32) = 0x752E746E656D6F6DLL;
    *(v14 + 40) = 0xEB00000000646975;
    *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    OUTLINED_FUNCTION_36_18();
    *(v14 + 104) = sub_1C705575C(v15, v16, v17);
    *(v14 + 72) = a1;
    v7 = v13;
    sub_1C75504FC();
    v18 = sub_1C755112C();
    v19 = OUTLINED_FUNCTION_104_6();
    [v19 v20];
  }

  v21 = objc_opt_self();
  v22 = a2;
  v23 = [v21 fetchAssetsWithOptions_];

  v32 = MEMORY[0x1E69E7CD0];
  v24 = [v23 count];
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  if (!v24)
  {

LABEL_18:
    v30 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  v26 = 0;
  do
  {
    v27 = [v23 objectAtIndexedSubscript_];
    v28 = sub_1C6FCA214(v27);
    if (v29)
    {
      sub_1C70F082C(&v31, v28, v29);
    }

    else
    {
    }

    ++v26;
  }

  while (v25 != v26);

  v30 = v32;
LABEL_19:
  *a5 = v30;
}

uint64_t sub_1C71C896C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A2C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  result = sub_1C71C9054(v8, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1C71C89E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C71C9154(v6);
  return sub_1C755193C();
}

void sub_1C71C8A5C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C7550B3C();

  if (v8)
  {
    v12 = sub_1C755065C();

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_1C7550F7C();

  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = sub_1C755065C();

LABEL_8:
  [v0 initWithObjects:v11 photoLibrary:v10 fetchType:v12 fetchPropertySets:v13 identifier:v14 registerIfNeeded:v2 & 1];

  OUTLINED_FUNCTION_25_0();
}

id sub_1C71C8B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C755065C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

  return v6;
}

id sub_1C71C8C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C754DECC();
  v6 = sub_1C754DECC();
  v7 = [v3 initForDateFilterWithStartDate:v5 endDate:v6];

  v8 = sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 8);
  v10(a2, v8);
  v11 = OUTLINED_FUNCTION_294();
  (v10)(v11);
  return v7;
}

id sub_1C71C8D18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C754D9EC();
  v7 = sub_1C754DABC();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v7) != 1)
  {
    v8 = sub_1C754D9EC();
    OUTLINED_FUNCTION_62_2();
    (*(v9 + 8))(a2, v7);
  }

  v10 = [v3 initForDateFilterWithStartDateComponents:v6 endDateComponents:v8];

  OUTLINED_FUNCTION_62_2();
  (*(v11 + 8))(a1, v7);
  return v10;
}

id sub_1C71C8E10()
{
  OUTLINED_FUNCTION_38_2();
  if (!v2)
  {
    v3 = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = sub_1C7550F7C();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  OUTLINED_FUNCTION_58();
  v4 = sub_1C755065C();

LABEL_6:
  v5 = [v0 initForLocationFilterWithAssetUUIDs:v3 locationText:v4];

  return v5;
}

id sub_1C71C8EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C755065C();

  if (a4)
  {
    v6 = sub_1C755065C();
  }

  else
  {
    v6 = 0;
  }

  v7 = OUTLINED_FUNCTION_133_5();
  v9 = [v7 v8];

  return v9;
}

id sub_1C71C8F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_1C755065C();

  sub_1C6F65BE8(0, &qword_1EDD06950, 0x1E69BE460);
  v8 = sub_1C7550B3C();

  v9 = sub_1C754E2FC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v9) != 1)
  {
    v10 = sub_1C754E28C();
    OUTLINED_FUNCTION_62_2();
    v11 = OUTLINED_FUNCTION_82();
    v12(v11);
  }

  v13 = [v5 initForGenericLocationFilterWithText:v7 genericLocationTuples:v8 allowedIndexCategories:v10];

  return v13;
}

uint64_t sub_1C71C9054(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = v8 + 32;
      v9[1] = v7;
      sub_1C71C97A4(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1C71C9234(0, v4, 1, a1, a2);
  }

  return result;
}

void sub_1C71C9154(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D480(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C71C9F20(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C71C93A4(0, v3, 1, a1);
  }
}

uint64_t sub_1C71C9234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 == a2)
  {
    return result;
  }

  v26 = *a4;
  v6 = (*a4 + 16 * a3);
  v7 = result - a3;
  while (2)
  {
    v24 = v6;
    v25 = a3;
    v8 = *(v26 + 16 * a3 + 8);
    v23 = v7;
    do
    {
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = *a5;
      if (!*(*a5 + 16))
      {
        sub_1C75504FC();
        sub_1C75504FC();
LABEL_8:
        v15 = 0;
        goto LABEL_9;
      }

      v12 = *v6;
      sub_1C75504FC();
      sub_1C75504FC();
      v13 = sub_1C6F78124(v12, v8);
      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }

      v15 = *(*(v11 + 56) + 8 * v13);
LABEL_9:
      v16 = *a5;
      if (*(*a5 + 16) && (v17 = sub_1C6F78124(v10, v9), (v18 & 1) != 0))
      {
        v19 = *(*(v16 + 56) + 8 * v17);

        if (v15 >= v19)
        {
          break;
        }
      }

      else
      {

        if (v15 > 0)
        {
          break;
        }
      }

      if (!v26)
      {
        __break(1u);
        return result;
      }

      v20 = *v6;
      v8 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v8;
      *(v6 - 2) = v20;
      v6 -= 2;
    }

    while (!__CFADD__(v7++, 1));
    a3 = v25 + 1;
    v6 = v24 + 2;
    v7 = v23 - 1;
    if (v25 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_1C71C93A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v46 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v52 = (v14 + 8);
  v53 = (v14 + 32);
  v56 = v17;
  v18 = v17 + 8 * a3 - 8;
  v19 = a1 - a3;
  while (2)
  {
    v48 = v18;
    v49 = a3;
    v20 = *(v56 + 8 * a3);
    v47 = v19;
    while (1)
    {
      v21 = *v18;
      v22 = v20;
      v23 = v21;
      v24 = [v22 creationDate];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = v55;
      sub_1C754DF2C();

      v27 = v54;
      v28 = *v53;
      (*v53)(v16, v26, v54);
      v57 = v23;
      v29 = [v23 creationDate];
      if (!v29)
      {
        (*v52)(v16, v27);
        goto LABEL_9;
      }

      v30 = v29;
      sub_1C754DF2C();

      v31 = v50;
      v28();
      sub_1C71CD2B8(&unk_1EDD0CBB0, MEMORY[0x1E6969530]);
      if (sub_1C755063C())
      {
        v32 = *v52;
        (*v52)(v31, v27);
        v32(v16, v27);
LABEL_9:
        v23 = v57;
        break;
      }

      v41 = sub_1C754DF4C();
      v42 = *v52;
      (*v52)(v31, v27);
      v42(v16, v27);

      if (v41 != -1)
      {
        goto LABEL_24;
      }

LABEL_19:
      if (!v56)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      v43 = *v18;
      v20 = *(v18 + 8);
      *v18 = v20;
      *(v18 + 8) = v43;
      v18 -= 8;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_24;
      }
    }

    v33 = sub_1C70CAC04(v22);
    if (!v34)
    {
      goto LABEL_27;
    }

    v35 = v33;
    v36 = v34;
    v37 = sub_1C70CAC04(v23);
    if (!v38)
    {
      goto LABEL_28;
    }

    if (v35 != v37 || v36 != v38)
    {
      v40 = sub_1C7551DBC();

      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

LABEL_24:
    a3 = v49 + 1;
    v18 = v48 + 8;
    v19 = v47 - 1;
    if (v49 + 1 != v46)
    {
      continue;
    }

    break;
  }
}

void sub_1C71C97A4(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v5 = *result;
    if (!*result)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v112 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v112 = i)
      {
        if (!*a3)
        {
          goto LABEL_153;
        }

        v114 = &v8[16 * i];
        v115 = *v114;
        v116 = &v112[2 * i];
        v117 = *(v116 + 1);
        sub_1C71CAB64((*a3 + 16 * *v114), (*a3 + 16 * *v116), (*a3 + 16 * v117), v5, a5);
        if (v135)
        {
          break;
        }

        if (v117 < v115)
        {
          goto LABEL_141;
        }

        if (i - 2 >= *v112)
        {
          goto LABEL_142;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        v118 = *v112 - i;
        if (*v112 < i)
        {
          goto LABEL_143;
        }

        v135 = 0;
        i = *v112 - 1;
        sub_1C7423CF4(v116 + 16, v118, v116);
      }

LABEL_125:

      return;
    }

LABEL_150:
    v8 = sub_1C7420830();
    goto LABEL_117;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v9 = v7;
  v10 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_38;
  }

  v120 = v8;
  v11 = (*a3 + 16 * v10);
  v12 = *v11;
  v5 = v11[1];
  v13 = (*a3 + 16 * v7);
  v124 = 16 * v7;
  v131 = v6;
  v14 = *v13;
  v15 = v13[1];
  v16 = *a5;
  sub_1C75504FC();
  sub_1C75504FC();
  v17 = sub_1C6FE0FE8(v12, v5, v16);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v128 = v19;
  v20 = sub_1C6FE0FE8(v14, v15, *a5);
  v22 = v21;

  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = v20;
  }

  v126 = v23;
  v24 = v131;
  v25 = v9;
  v26 = v13 + 3;
  v122 = v25;
  v27 = v25 + 2;
  while (1)
  {
    v28 = v27;
    if (v10 + 1 >= v24)
    {
      break;
    }

    v29 = v26[2];
    v30 = *(v26 - 1);
    v31 = *v26;
    v32 = *a5;
    if (*(*a5 + 16))
    {
      v33 = v26[1];
      sub_1C75504FC();
      sub_1C75504FC();
      v34 = sub_1C6F78124(v33, v29);
      if (v35)
      {
        v36 = *(*(v32 + 56) + 8 * v34);
        goto LABEL_17;
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
    }

    v36 = 0;
LABEL_17:
    v37 = *a5;
    if (*(*a5 + 16) && (v38 = sub_1C6F78124(v30, v31), (v39 & 1) != 0))
    {
      v5 = *(*(v37 + 56) + 8 * v38);
    }

    else
    {
      v5 = 1;
    }

    v24 = v131;

    v26 += 2;
    ++v10;
    v27 = v28 + 1;
    if (v128 < v126 == v36 >= v5)
    {
      goto LABEL_24;
    }
  }

  v10 = v24;
LABEL_24:
  if (v128 >= v126)
  {
    v8 = v120;
    v9 = v122;
  }

  else
  {
    v9 = v122;
    if (v10 < v122)
    {
      goto LABEL_147;
    }

    if (v122 >= v10)
    {
      v8 = v120;
    }

    else
    {
      if (v24 >= v28)
      {
        v40 = v28;
      }

      else
      {
        v40 = v24;
      }

      v41 = 16 * v40;
      v42 = v10;
      v43 = v122;
      v8 = v120;
      v44 = v124;
      do
      {
        if (v43 != --v42)
        {
          v45 = *a3;
          if (!*a3)
          {
            goto LABEL_154;
          }

          v46 = (v45 + v44);
          v47 = v45 + v41;
          v48 = *v46;
          v49 = v46[1];
          *v46 = *(v47 - 16);
          *(v47 - 16) = v48;
          *(v47 - 8) = v49;
        }

        ++v43;
        v41 -= 16;
        v44 += 16;
      }

      while (v43 < v42);
    }
  }

LABEL_38:
  v50 = a3[1];
  if (v10 >= v50)
  {
    goto LABEL_63;
  }

  if (__OFSUB__(v10, v9))
  {
    goto LABEL_146;
  }

  if (v10 - v9 >= a4)
  {
    goto LABEL_63;
  }

  v51 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_148;
  }

  if (v51 >= v50)
  {
    v51 = a3[1];
  }

  if (v51 < v9)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v10 == v51)
  {
    goto LABEL_63;
  }

  v121 = v8;
  v52 = *a3;
  v53 = (*a3 + 16 * v10);
  v54 = v9 - v10;
  v125 = v51;
LABEL_47:
  v129 = v53;
  v132 = v10;
  v55 = *(v52 + 16 * v10 + 8);
  v127 = v54;
  while (1)
  {
    v56 = *(v53 - 2);
    v57 = *(v53 - 1);
    v58 = *a5;
    if (!*(*a5 + 16))
    {
      sub_1C75504FC();
      sub_1C75504FC();
LABEL_52:
      v62 = 0;
      goto LABEL_53;
    }

    v59 = *v53;
    sub_1C75504FC();
    sub_1C75504FC();
    v60 = sub_1C6F78124(v59, v55);
    if ((v61 & 1) == 0)
    {
      goto LABEL_52;
    }

    v62 = *(*(v58 + 56) + 8 * v60);
LABEL_53:
    v5 = *a5;
    if (*(*a5 + 16) && (v63 = sub_1C6F78124(v56, v57), (v64 & 1) != 0))
    {
      v5 = *(*(v5 + 56) + 8 * v63);

      if (v62 >= v5)
      {
        goto LABEL_61;
      }
    }

    else
    {

      if (v62 > 0)
      {
        goto LABEL_61;
      }
    }

    if (!v52)
    {
      break;
    }

    v65 = *v53;
    v55 = v53[1];
    *v53 = *(v53 - 1);
    *(v53 - 1) = v55;
    *(v53 - 2) = v65;
    v53 -= 2;
    if (__CFADD__(v54++, 1))
    {
LABEL_61:
      v10 = v132 + 1;
      v53 = v129 + 2;
      v54 = v127 - 1;
      if (v132 + 1 == v125)
      {
        v10 = v125;
        v8 = v121;
LABEL_63:
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        v133 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
          v8 = v110;
        }

        v68 = *(v8 + 2);
        v67 = *(v8 + 3);
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          sub_1C6FB17EC(v67 > 1, v68 + 1, 1, v8);
          v8 = v111;
        }

        *(v8 + 2) = v69;
        v70 = v8 + 32;
        v71 = &v8[16 * v68 + 32];
        *v71 = v9;
        *(v71 + 1) = v10;
        v130 = *result;
        if (!*result)
        {
          goto LABEL_155;
        }

        if (!v68)
        {
LABEL_112:
          v7 = v133;
          v6 = a3[1];
          if (v133 >= v6)
          {
            goto LABEL_115;
          }

          goto LABEL_3;
        }

        while (1)
        {
          v72 = v69 - 1;
          v73 = &v70[16 * v69 - 16];
          v74 = &v8[16 * v69];
          if (v69 >= 4)
          {
            break;
          }

          if (v69 == 3)
          {
            v75 = *(v8 + 4);
            v76 = *(v8 + 5);
            v85 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            v78 = v85;
LABEL_83:
            if (v78)
            {
              goto LABEL_132;
            }

            v90 = *v74;
            v89 = *(v74 + 1);
            v91 = __OFSUB__(v89, v90);
            v92 = v89 - v90;
            v93 = v91;
            if (v91)
            {
              goto LABEL_135;
            }

            v94 = *(v73 + 1);
            v95 = v94 - *v73;
            if (__OFSUB__(v94, *v73))
            {
              goto LABEL_138;
            }

            if (__OFADD__(v92, v95))
            {
              goto LABEL_140;
            }

            if (v92 + v95 >= v77)
            {
              if (v77 < v95)
              {
                v72 = v69 - 2;
              }

              goto LABEL_105;
            }

            goto LABEL_98;
          }

          if (v69 < 2)
          {
            goto LABEL_134;
          }

          v97 = *v74;
          v96 = *(v74 + 1);
          v85 = __OFSUB__(v96, v97);
          v92 = v96 - v97;
          v93 = v85;
LABEL_98:
          if (v93)
          {
            goto LABEL_137;
          }

          v99 = *v73;
          v98 = *(v73 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_139;
          }

          if (v100 < v92)
          {
            goto LABEL_112;
          }

LABEL_105:
          if (v72 - 1 >= v69)
          {
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
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v104 = &v70[16 * v72 - 16];
          v105 = *v104;
          v106 = &v70[16 * v72];
          v107 = *(v106 + 1);
          sub_1C71CAB64((*a3 + 16 * *v104), (*a3 + 16 * *v106), (*a3 + 16 * v107), v130, a5);
          if (v135)
          {
            goto LABEL_125;
          }

          if (v107 < v105)
          {
            goto LABEL_127;
          }

          v5 = v8;
          v108 = *(v8 + 2);
          if (v72 > v108)
          {
            goto LABEL_128;
          }

          *v104 = v105;
          *(v104 + 1) = v107;
          if (v72 >= v108)
          {
            goto LABEL_129;
          }

          v135 = 0;
          v69 = v108 - 1;
          sub_1C7423CF4(v106 + 16, v108 - 1 - v72, &v70[16 * v72]);
          *(v5 + 16) = v108 - 1;
          v109 = v108 > 2;
          v8 = v5;
          if (!v109)
          {
            goto LABEL_112;
          }
        }

        v79 = &v70[16 * v69];
        v80 = *(v79 - 8);
        v81 = *(v79 - 7);
        v85 = __OFSUB__(v81, v80);
        v82 = v81 - v80;
        if (v85)
        {
          goto LABEL_130;
        }

        v84 = *(v79 - 6);
        v83 = *(v79 - 5);
        v85 = __OFSUB__(v83, v84);
        v77 = v83 - v84;
        v78 = v85;
        if (v85)
        {
          goto LABEL_131;
        }

        v86 = *(v74 + 1);
        v87 = v86 - *v74;
        if (__OFSUB__(v86, *v74))
        {
          goto LABEL_133;
        }

        v85 = __OFADD__(v77, v87);
        v88 = v77 + v87;
        if (v85)
        {
          goto LABEL_136;
        }

        if (v88 >= v82)
        {
          v102 = *v73;
          v101 = *(v73 + 1);
          v85 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v85)
          {
            goto LABEL_144;
          }

          if (v77 < v103)
          {
            v72 = v69 - 2;
          }

          goto LABEL_105;
        }

        goto LABEL_83;
      }

      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_1C71C9F20(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v157 = a1;
  v8 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v170 = &v156 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v173 = &v156 - v13;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v159 = &v156 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v156 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v162 = &v156 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v167 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v177 = *v157;
    if (!v177)
    {
      goto LABEL_167;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_157:
      v27 = sub_1C7420830();
    }

    v148 = v27 + 16;
    v149 = *(v27 + 2);
    while (v149 >= 2)
    {
      if (!*v167)
      {
        goto LABEL_164;
      }

      v150 = v27;
      v151 = &v27[16 * v149];
      v152 = *v151;
      v153 = &v148[2 * v149];
      v154 = *(v153 + 1);
      sub_1C71CAE6C((*v167 + 8 * *v151), (*v167 + 8 * *v153), (*v167 + 8 * v154), v177);
      if (v5)
      {
        break;
      }

      if (v154 < v152)
      {
        goto LABEL_148;
      }

      if (v149 - 2 >= *v148)
      {
        goto LABEL_149;
      }

      *v151 = v152;
      *(v151 + 1) = v154;
      v155 = *v148 - v149;
      if (*v148 < v149)
      {
        goto LABEL_150;
      }

      v149 = *v148 - 1;
      sub_1C7423CF4(v153 + 16, v155, v153);
      *v148 = v149;
      v27 = v150;
    }

LABEL_131:

    return;
  }

  v161 = &v156 - v23;
  v172 = v24;
  v156 = a4;
  v26 = 0;
  v174 = (v22 + 8);
  v175 = (v22 + 32);
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v26 + 1;
    v160 = v26;
    if (v26 + 1 < v25)
    {
      break;
    }

LABEL_34:
    v68 = v167[1];
    if (v28 >= v68)
    {
      goto LABEL_66;
    }

    if (__OFSUB__(v28, v160))
    {
      goto LABEL_153;
    }

    if (v28 - v160 >= v156)
    {
LABEL_66:
      v70 = v160;
      goto LABEL_67;
    }

    v69 = v160 + v156;
    if (__OFADD__(v160, v156))
    {
      goto LABEL_155;
    }

    if (v69 >= v68)
    {
      v69 = v167[1];
    }

    if (v69 < v160)
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v70 = v160;
    if (v28 != v69)
    {
      v163 = v5;
      v164 = v69;
      v169 = v27;
      v176 = *v167;
      v71 = v176 + 8 * v28 - 8;
      v72 = v160 - v28;
LABEL_43:
      v168 = v28;
      v73 = *(v176 + 8 * v28);
      v165 = v72;
      v166 = v71;
      while (1)
      {
        v74 = *v71;
        v75 = v73;
        v76 = v74;
        v77 = [v75 creationDate];
        if (v77)
        {
          v78 = v77;
          v79 = v173;
          sub_1C754DF2C();

          v80 = *v175;
          v81 = v172;
          (*v175)(v172, v79, v8);
          v177 = v76;
          v82 = [v76 creationDate];
          if (v82)
          {
            v83 = v82;
            v84 = v171;
            sub_1C754DF2C();

            v85 = v170;
            v80(v170, v84, v8);
            sub_1C71CD2B8(&unk_1EDD0CBB0, MEMORY[0x1E6969530]);
            if ((sub_1C755063C() & 1) == 0)
            {
              v96 = sub_1C754DF4C();
              v97 = v85;
              v98 = v96;
              v99 = *v174;
              (*v174)(v97, v8);
              v99(v81, v8);

              if (v98 != -1)
              {
                goto LABEL_64;
              }

              goto LABEL_59;
            }

            v86 = v85;
            v87 = *v174;
            (*v174)(v86, v8);
            v87(v81, v8);
          }

          else
          {
            (*v174)(v81, v8);
          }

          v76 = v177;
        }

        v88 = sub_1C70CAC04(v75);
        if (!v89)
        {
          goto LABEL_160;
        }

        v90 = v88;
        v91 = v89;
        v92 = sub_1C70CAC04(v76);
        if (!v93)
        {
          goto LABEL_159;
        }

        if (v90 == v92 && v91 == v93)
        {

LABEL_64:
          v28 = v168 + 1;
          v71 = v166 + 8;
          v72 = v165 - 1;
          if (v168 + 1 == v164)
          {
            v5 = v163;
            v28 = v164;
            v27 = v169;
            goto LABEL_66;
          }

          goto LABEL_43;
        }

        v95 = sub_1C7551DBC();

        if ((v95 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_59:
        if (!v176)
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v100 = *v71;
        v73 = *(v71 + 8);
        *v71 = v73;
        *(v71 + 8) = v100;
        v71 -= 8;
        if (__CFADD__(v72++, 1))
        {
          goto LABEL_64;
        }
      }
    }

LABEL_67:
    if (v28 < v70)
    {
      goto LABEL_152;
    }

    v164 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v27 + 2) + 1, 1, v27);
      v27 = v146;
    }

    v103 = *(v27 + 2);
    v102 = *(v27 + 3);
    v104 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      sub_1C6FB17EC(v102 > 1, v103 + 1, 1, v27);
      v27 = v147;
    }

    *(v27 + 2) = v104;
    v105 = v27 + 32;
    v106 = &v27[16 * v103 + 32];
    v107 = v164;
    *v106 = v160;
    *(v106 + 1) = v107;
    v177 = *v157;
    if (!v177)
    {
      goto LABEL_166;
    }

    if (v103)
    {
      v169 = v27;
      while (1)
      {
        v108 = v104 - 1;
        v109 = &v105[16 * v104 - 16];
        v110 = &v27[16 * v104];
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v111 = *(v27 + 4);
          v112 = *(v27 + 5);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_88:
          if (v114)
          {
            goto LABEL_139;
          }

          v126 = *v110;
          v125 = *(v110 + 1);
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          v129 = v127;
          if (v127)
          {
            goto LABEL_142;
          }

          v130 = *(v109 + 1);
          v131 = v130 - *v109;
          if (__OFSUB__(v130, *v109))
          {
            goto LABEL_145;
          }

          if (__OFADD__(v128, v131))
          {
            goto LABEL_147;
          }

          if (v128 + v131 >= v113)
          {
            if (v113 < v131)
            {
              v108 = v104 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        if (v104 < 2)
        {
          goto LABEL_141;
        }

        v133 = *v110;
        v132 = *(v110 + 1);
        v121 = __OFSUB__(v132, v133);
        v128 = v132 - v133;
        v129 = v121;
LABEL_103:
        if (v129)
        {
          goto LABEL_144;
        }

        v135 = *v109;
        v134 = *(v109 + 1);
        v121 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v121)
        {
          goto LABEL_146;
        }

        if (v136 < v128)
        {
          goto LABEL_117;
        }

LABEL_110:
        if (v108 - 1 >= v104)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*v167)
        {
          goto LABEL_161;
        }

        v140 = &v105[16 * v108 - 16];
        v141 = *v140;
        v142 = v108;
        v143 = &v105[16 * v108];
        v144 = *(v143 + 1);
        sub_1C71CAE6C((*v167 + 8 * *v140), (*v167 + 8 * *v143), (*v167 + 8 * v144), v177);
        if (v5)
        {
          goto LABEL_131;
        }

        if (v144 < v141)
        {
          goto LABEL_134;
        }

        v5 = *(v169 + 2);
        if (v142 > v5)
        {
          goto LABEL_135;
        }

        *v140 = v141;
        *(v140 + 1) = v144;
        if (v142 >= v5)
        {
          goto LABEL_136;
        }

        v104 = v5 - 1;
        sub_1C7423CF4(v143 + 16, v5 - 1 - v142, v143);
        v27 = v169;
        *(v169 + 2) = v5 - 1;
        v145 = v5 > 2;
        v5 = 0;
        if (!v145)
        {
          goto LABEL_117;
        }
      }

      v115 = &v105[16 * v104];
      v116 = *(v115 - 8);
      v117 = *(v115 - 7);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_137;
      }

      v120 = *(v115 - 6);
      v119 = *(v115 - 5);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_138;
      }

      v122 = *(v110 + 1);
      v123 = v122 - *v110;
      if (__OFSUB__(v122, *v110))
      {
        goto LABEL_140;
      }

      v121 = __OFADD__(v113, v123);
      v124 = v113 + v123;
      if (v121)
      {
        goto LABEL_143;
      }

      if (v124 >= v118)
      {
        v138 = *v109;
        v137 = *(v109 + 1);
        v121 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v121)
        {
          goto LABEL_151;
        }

        if (v113 < v139)
        {
          v108 = v104 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_88;
    }

LABEL_117:
    v25 = v167[1];
    v26 = v164;
    if (v164 >= v25)
    {
      goto LABEL_121;
    }
  }

  v168 = v25;
  v29 = *v167;
  v30 = (v26 + 1);
  v179 = *(*v167 + 8 * v28);
  v178 = *(v29 + 8 * v26);
  v31 = v178;
  v32 = v179;
  v33 = v31;
  LODWORD(v176) = sub_1C71C6D88(&v179, &v178);
  if (v5)
  {

    return;
  }

  v169 = v27;

  v34 = 8 * v26;
  v35 = (v29 + 8 * v26 + 16);
  v163 = 0;
  v166 = 8 * v26;
  while (1)
  {
    v28 = v168;
    if (v30 + 1 >= v168)
    {
      goto LABEL_26;
    }

    v177 = v30;
    v36 = *(v35 - 1);
    v37 = *v35;
    v38 = v36;
    v39 = [v37 creationDate];
    if (v39)
    {
      v40 = v39;
      v41 = v162;
      sub_1C754DF2C();

      v42 = *v175;
      v43 = v161;
      (*v175)(v161, v41, v8);
      v44 = [v38 creationDate];
      if (v44)
      {
        v45 = v44;
        v46 = v159;
        sub_1C754DF2C();

        v47 = v158;
        v42(v158, v46, v8);
        sub_1C71CD2B8(&unk_1EDD0CBB0, MEMORY[0x1E6969530]);
        if ((sub_1C755063C() & 1) == 0)
        {
          v59 = sub_1C754DF4C();
          v60 = v47;
          v61 = v59;
          v62 = *v174;
          (*v174)(v60, v8);
          v62(v43, v8);

          v57 = v61 == -1;
          v5 = v163;
          v34 = v166;
          goto LABEL_23;
        }

        v48 = v47;
        v49 = *v174;
        (*v174)(v48, v8);
        v49(v43, v8);
      }

      else
      {
        (*v174)(v43, v8);
      }

      v5 = v163;
      v34 = v166;
    }

    v50 = sub_1C70CAC04(v37);
    if (!v51)
    {
      goto LABEL_162;
    }

    v52 = v50;
    v53 = v51;
    v54 = sub_1C70CAC04(v38);
    if (!v55)
    {
      break;
    }

    if (v52 == v54 && v53 == v55)
    {

      v58 = v177;
      if ((v176 & 1) == 0)
      {
        goto LABEL_24;
      }

      v28 = v177 + 1;
      v27 = v169;
LABEL_27:
      v63 = v160;
      if (v28 < v160)
      {
        goto LABEL_154;
      }

      if (v160 < v28)
      {
        v64 = 8 * v28 - 8;
        v65 = v28;
        do
        {
          if (v63 != --v65)
          {
            v66 = *v167;
            if (!*v167)
            {
              goto LABEL_165;
            }

            v67 = *(v66 + v34);
            *(v66 + v34) = *(v66 + v64);
            *(v66 + v64) = v67;
          }

          ++v63;
          v64 -= 8;
          v34 += 8;
        }

        while (v63 < v65);
      }

      goto LABEL_34;
    }

    v57 = sub_1C7551DBC();

LABEL_23:
    v58 = v177;
    if ((v176 ^ v57))
    {
      v28 = v177 + 1;
LABEL_26:
      v27 = v169;
      if (v176)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

LABEL_24:
    ++v35;
    v30 = (v58 + 1);
  }

LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
}

uint64_t sub_1C71CAB64(char *a1, char *a2, char *a3, char *a4, uint64_t *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v10 < v11)
  {
    v47 = a2;
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v12 = &v6[2 * v10];
    v50 = v7;
    while (1)
    {
      if (v6 >= v12 || v47 >= v7)
      {
        v8 = v9;
        goto LABEL_44;
      }

      v14 = v47[1];
      v15 = *v6;
      v16 = v6[1];
      v17 = *a5;
      if (!*(*a5 + 16))
      {
        break;
      }

      v18 = *v47;
      sub_1C75504FC();
      sub_1C75504FC();
      v19 = sub_1C6F78124(v18, v14);
      if ((v20 & 1) == 0)
      {
        goto LABEL_11;
      }

      v21 = *(*(v17 + 56) + 8 * v19);
LABEL_12:
      v22 = *a5;
      if (*(*a5 + 16) && (v23 = sub_1C6F78124(v15, v16), (v24 & 1) != 0))
      {
        v25 = *(*(v22 + 56) + 8 * v23);

        if (v21 < v25)
        {
          goto LABEL_15;
        }
      }

      else
      {

        if (v21 <= 0)
        {
LABEL_15:
          v26 = v47;
          v27 = v9 == v47;
          v47 += 2;
          goto LABEL_18;
        }
      }

      v26 = v6;
      v27 = v9 == v6;
      v6 += 2;
LABEL_18:
      v7 = v50;
      if (!v27)
      {
        *v9 = *v26;
      }

      v9 += 16;
    }

    sub_1C75504FC();
    sub_1C75504FC();
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v12 = &v6[2 * v11];
  v49 = a5;
  v46 = v9;
LABEL_22:
  v48 = v8 - 16;
  v28 = v7 - 16;
  while (v12 > v6 && v8 > v9)
  {
    v51 = v28;
    v30 = v12 - 2;
    v31 = *(v12 - 1);
    v32 = *(v8 - 2);
    v33 = *(v8 - 1);
    v34 = *a5;
    if (!*(*a5 + 16))
    {
      sub_1C75504FC();
      sub_1C75504FC();
LABEL_32:
      v38 = 0;
      goto LABEL_33;
    }

    v35 = *v30;
    sub_1C75504FC();
    sub_1C75504FC();
    v36 = sub_1C6F78124(v35, v31);
    if ((v37 & 1) == 0)
    {
      goto LABEL_32;
    }

    v38 = *(*(v34 + 56) + 8 * v36);
LABEL_33:
    v39 = *v49;
    if (*(*v49 + 16) && (v40 = sub_1C6F78124(v32, v33), (v41 & 1) != 0))
    {
      v42 = *(*(v39 + 56) + 8 * v40);

      if (v38 < v42)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (v38 <= 0)
      {
LABEL_41:
        v7 = v51;
        v27 = v51 + 16 == v8;
        v8 -= 16;
        a5 = v49;
        v9 = v46;
        if (!v27)
        {
          *v51 = *v48;
        }

        goto LABEL_22;
      }
    }

    a5 = v49;
    if (v12 != (v51 + 16))
    {
      *v51 = *v30;
    }

    v28 = v51 - 16;
    v12 -= 2;
    v9 = v46;
  }

LABEL_44:
  v43 = (v12 - v6) / 16;
  if (v8 != v6 || v8 >= &v6[2 * v43])
  {
    memmove(v8, v6, 16 * v43);
  }

  return 1;
}

uint64_t sub_1C71CAE6C(char *a1, char *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = (a2 - a1) / 8;
  v8 = (a3 - a2) / 8;
  if (v7 >= v8)
  {
    sub_1C7423CF8(a2, (a3 - a2) / 8, a4);
    v25 = a2;
    v11 = (v4 + 8 * v8);
    v26 = -v4;
    __src = v4;
LABEL_15:
    v27 = (v25 - 8);
    v28 = v5 - 1;
    v29 = v11 + v26;
    v49 = v25;
    while (v11 > v4 && v25 > v6)
    {
      v50 = v29;
      v31 = v28;
      v32 = v11;
      v33 = v11 - 1;
      v53 = *(v11 - 1);
      v34 = v27;
      v52 = *v27;
      v35 = v52;
      v36 = v53;
      v37 = v35;
      v38 = sub_1C71C6D88(&v53, &v52);
      if (v51)
      {

        v25 = v49;
        v46 = v50 / 8;
        v44 = __src;
        if (v49 < __src || v49 >= &__src[8 * (v50 / 8)])
        {
          memmove(v49, __src, 8 * v46);
          return 1;
        }

        if (v49 != __src)
        {
          v43 = 8 * v46;
          goto LABEL_41;
        }

        return 1;
      }

      v39 = v38;

      if (v39)
      {
        v5 = v31;
        v4 = __src;
        v25 = v34;
        v11 = v32;
        if (v31 + 1 != v49)
        {
          *v31 = *v34;
          v25 = v34;
        }

        goto LABEL_15;
      }

      v25 = v49;
      v27 = v34;
      if (v32 != v31 + 1)
      {
        *v31 = *v33;
      }

      v28 = v31 - 1;
      v29 = v50 - 8;
      v11 = v33;
      v4 = __src;
    }

LABEL_29:
    v40 = (v11 - v4) / 8;
    if (v25 < v4 || v25 >= v4 + 8 * v40)
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v25 == v4)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
  v10 = a2;
  v11 = (v4 + 8 * v7);
  while (1)
  {
    if (v4 >= v11 || v10 >= v5)
    {
      v25 = v6;
      goto LABEL_29;
    }

    v13 = v11;
    v14 = v5;
    v15 = v6;
    v16 = v10;
    v53 = *v10;
    v52 = *v4;
    v17 = v52;
    v18 = v53;
    v19 = v17;
    v20 = sub_1C71C6D88(&v53, &v52);
    if (v51)
    {
      break;
    }

    v21 = v20;
    v51 = 0;

    if (v21)
    {
      v22 = v16;
      v10 = v16 + 1;
      v23 = v15 == v16;
    }

    else
    {
      v22 = v4;
      v23 = v15 == v4;
      v4 += 8;
      v10 = v16;
    }

    v11 = v13;
    if (!v23)
    {
      *v15 = *v22;
    }

    v6 = v15 + 8;
    v5 = v14;
  }

  v40 = (v13 - v4) / 8;
  v25 = v15;
  if (v15 >= v4 && v15 < v4 + 8 * v40)
  {
    goto LABEL_39;
  }

LABEL_40:
  v43 = 8 * v40;
  v44 = v4;
LABEL_41:
  memmove(v25, v44, v43);
  return 1;
}

void *sub_1C71CB160(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C71CB888(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C71CB1E8(uint64_t a1, char a2, void *a3)
{
  v3 = a3;
  v6 = 0;
  v34 = *(a1 + 16);
  v7 = (a1 + 48);
  while (1)
  {
    if (v34 == v6)
    {
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v36 = v6;
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v35 = v7;
    v10 = *v7;
    v11 = *v3;
    sub_1C75504FC();
    sub_1C75504FC();
    v13 = sub_1C6F78124(v8, v9);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_27;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354E7C(v16, a2 & 1);
      v18 = sub_1C6F78124(v8, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_33;
      }

      v13 = v18;
    }

    v20 = *v3;
    if (v17)
    {
      v21 = *(v20[7] + 8 * v13);
      v22 = *(v10 + 16);
      v23 = *(v21 + 16);
      if (__OFADD__(v23, v22))
      {
        goto LABEL_29;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || (v24 = *(v21 + 24) >> 1, v24 < v23 + v22))
      {
        sub_1C6FB1814();
        v21 = v25;
        v24 = *(v25 + 24) >> 1;
      }

      v3 = a3;
      if (*(v10 + 16))
      {
        if (v24 - *(v21 + 16) < v22)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v26 = *(v21 + 16);
          v27 = __OFADD__(v26, v22);
          v28 = v26 + v22;
          if (v27)
          {
            goto LABEL_32;
          }

          *(v21 + 16) = v28;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_30;
        }
      }

      *(v20[7] + 8 * v13) = v21;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      v29 = (v20[6] + 16 * v13);
      *v29 = v8;
      v29[1] = v9;
      *(v20[7] + 8 * v13) = v10;
      v30 = v20[2];
      v27 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      v20[2] = v31;
    }

    v7 = v35 + 3;
    v6 = v36 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C71CB48C()
{
  sub_1C754F14C();
  sub_1C71CD2B8(&qword_1EC216378, MEMORY[0x1E69C17C8]);
  OUTLINED_FUNCTION_294();
  return sub_1C755063C() & 1;
}

uint64_t sub_1C71CB518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC() & 1;
  }
}

void *sub_1C71CB564(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v42 = a2;
  v4 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v3;
    v36 = &v35;
    MEMORY[0x1EEE9AC00](a1);
    v37 = v6;
    v40 = &v35 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v6, v40);
    v12 = 0;
    v6 = 0;
    v3 = v4 + 56;
    v13 = 1 << *(v4 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(v4 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4;
LABEL_6:
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v20 = v17 | (v6 << 6);
      v21 = *v42;
      if (*(*v42 + 16))
      {
        v43 = v15;
        v44 = v12;
        v22 = *(v4 + 48);
        v41 = v20;
        v23 = (v22 + 16 * v20);
        v7 = *v23;
        v24 = v23[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v25 = sub_1C7551FAC();
        v26 = ~(-1 << *(v21 + 32));
        do
        {
          v27 = v25 & v26;
          if (((*(v21 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
          {

            v4 = v39;
            v15 = v43;
            v12 = v44;
            goto LABEL_6;
          }

          v28 = (*(v21 + 48) + 16 * v27);
          if (*v28 == v7 && v28[1] == v24)
          {
            break;
          }

          v30 = sub_1C7551DBC();
          v25 = v27 + 1;
        }

        while ((v30 & 1) == 0);

        *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        v15 = v43;
        v12 = v44 + 1;
        v4 = v39;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_28;
        }
      }
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v16)
      {
        sub_1C71FFA70(v40, v37, v12, v4, v8, v9, v10, v11, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *v45, *&v45[8], *&v45[16], *&v45[24], *&v45[32], *&v45[40], *&v45[48], *&v45[56], *&v45[64], v46, v47, v48);
        return v31;
      }

      v19 = *(v3 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v32 = sub_1C71CB160(v34, v6, v4, v42);

  MEMORY[0x1CCA5F8E0](v34, -1, -1);
  return v32;
}

void sub_1C71CB888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = *a4;
    if (*(*a4 + 16))
    {
      v34 = v9;
      v45 = v4;
      v31 = v11 | (v5 << 6);
      v15 = (*(a3 + 48) + 16 * v31);
      v16 = *v15;
      v17 = v15[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v18 = sub_1C7551FAC();
      v19 = ~(-1 << *(v14 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v14 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v45;
          v9 = v34;
          goto LABEL_5;
        }

        v21 = (*(v14 + 48) + 16 * v20);
        if (*v21 == v16 && v21[1] == v17)
        {
          break;
        }

        v23 = sub_1C7551DBC();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      *(result + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v4 = v45 + 1;
      v9 = v34;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      sub_1C71FFA70(result, a2, v4, a3, v24, v25, v26, v27, a2, v29, result, v31, a3, a4, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      return;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C71CBAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C75504FC();
  v5 = sub_1C755097C();
  if ((v4 & 0x1000000000000000) != 0)
  {
    v46 = OUTLINED_FUNCTION_0_11();
    v5 = sub_1C71CC418(v46, v47);
    v49 = v48;

    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      OUTLINED_FUNCTION_0_11();
      sub_1C75518FC();
    }

    OUTLINED_FUNCTION_128_4();
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_70_1();
          if (v23 ^ v24 | v22)
          {
            v27 = 65;
          }

          if (!(v23 ^ v24 | v22))
          {
            v28 = 58;
          }

          if (v25)
          {
            v29 = 0;
            v30 = (v25 + 1);
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v28)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  OUTLINED_FUNCTION_66_3();
                  if (!v20 || v31 >= v33)
                  {
                    goto LABEL_137;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v34 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v34 + (v31 + v32);
                if (!__OFADD__(v34, (v31 + v32)))
                {
                  ++v30;
                  if (--v26)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_137;
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_140;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_106_4();
        if (v36 ^ v37 | v35)
        {
          v39 = v42;
        }

        if (v36 ^ v37 | v35)
        {
          v40 = 65;
        }

        if (!(v36 ^ v37 | v35))
        {
          v41 = 58;
        }

        if (v38)
        {
          v43 = 0;
          while (1)
          {
            v44 = *v38;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                if (v44 < 0x61 || v44 >= v39)
                {
                  goto LABEL_137;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if ((v43 * a3) >> 64 == (v43 * a3) >> 63 && !__OFADD__(v43 * a3, (v44 + v45)))
            {
              v38 = OUTLINED_FUNCTION_124_5(v38);
              if (!v8)
              {
                continue;
              }
            }

            goto LABEL_137;
          }
        }
      }

      goto LABEL_137;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_70_1();
        if (v9 ^ v10 | v8)
        {
          v13 = 65;
        }

        if (!(v9 ^ v10 | v8))
        {
          v14 = 58;
        }

        if (v11)
        {
          v15 = 0;
          v16 = (v11 + 1);
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v14)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                OUTLINED_FUNCTION_66_3();
                if (!v20 || v17 >= v19)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v21 = v15 * a3;
            if ((v15 * a3) >> 64 == (v15 * a3) >> 63)
            {
              v15 = v21 - (v17 + v18);
              if (!__OFSUB__(v21, (v17 + v18)))
              {
                ++v16;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_137:

      return;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_102_8();
  if (!v8)
  {
    if (v51 != 45)
    {
      if (v50)
      {
        OUTLINED_FUNCTION_20_2();
        while (1)
        {
          OUTLINED_FUNCTION_66_15();
          if (v20 && v67 < v66)
          {
            v68 = -48;
          }

          else if (v67 < 0x41 || v67 >= v65)
          {
            OUTLINED_FUNCTION_66_3();
            if (!v20 || v67 >= v69)
            {
              goto LABEL_137;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }

          if ((v64 * a3) >> 64 == (v64 * a3) >> 63 && !__OFADD__(v64 * a3, (v67 + v68)))
          {
            OUTLINED_FUNCTION_65_14();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (v50)
    {
      if (v50 != 1)
      {
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_58_15();
        while (1)
        {
          OUTLINED_FUNCTION_66_15();
          if (v20 && v55 < v54)
          {
            v56 = -48;
          }

          else if (v55 < 0x41 || v55 >= v53)
          {
            OUTLINED_FUNCTION_66_3();
            if (!v20 || v55 >= v57)
            {
              goto LABEL_137;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }

          if ((v52 * a3) >> 64 == (v52 * a3) >> 63 && !__OFSUB__(v52 * a3, (v55 + v56)))
          {
            OUTLINED_FUNCTION_65_14();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_139;
  }

  if (v50)
  {
    if (v50 != 1)
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_58_15();
      while (1)
      {
        OUTLINED_FUNCTION_66_15();
        if (v20 && v61 < v60)
        {
          v62 = -48;
        }

        else if (v61 < 0x41 || v61 >= v59)
        {
          OUTLINED_FUNCTION_66_3();
          if (!v20 || v61 >= v63)
          {
            goto LABEL_137;
          }

          v62 = -87;
        }

        else
        {
          v62 = -55;
        }

        if ((v58 * a3) >> 64 == (v58 * a3) >> 63 && !__OFADD__(v58 * a3, (v61 + v62)))
        {
          OUTLINED_FUNCTION_65_14();
          if (!v8)
          {
            continue;
          }
        }

        goto LABEL_137;
      }
    }

    goto LABEL_137;
  }

LABEL_141:
  __break(1u);
}