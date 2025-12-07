uint64_t sub_1C70D8934(char a1)
{
  if (a1)
  {
    return 0x656D6568546F6ELL;
  }

  else
  {
    return 0x73656D656874;
  }
}

uint64_t sub_1C70D8970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70D8870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70D8998(uint64_t a1)
{
  v2 = sub_1C70DA814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70D89D4(uint64_t a1)
{
  v2 = sub_1C70DA814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70D8A10(uint64_t a1)
{
  v2 = sub_1C70DA868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70D8A4C(uint64_t a1)
{
  v2 = sub_1C70DA868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70D8A88(uint64_t a1)
{
  v2 = sub_1C70DA8BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70D8AC4(uint64_t a1)
{
  v2 = sub_1C70DA8BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LibraryUnderstandingGenerator.ThemeResult.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v28 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217458, &qword_1C7569D08);
  OUTLINED_FUNCTION_3_0();
  v24 = v5;
  v25 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217460, &qword_1C7569D10);
  OUTLINED_FUNCTION_3_0();
  v26 = v9;
  v27 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217468, &qword_1C7569D18);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  v19 = *v0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C70DA814();
  sub_1C755200C();
  if (v19)
  {
    sub_1C70DA8BC();
    OUTLINED_FUNCTION_352();
    sub_1C7551C6C();
    v29 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    v20 = v27;
    sub_1C7551D2C();
    (*(v26 + 8))(v12, v20);
  }

  else
  {
    sub_1C70DA868();
    v21 = v23;
    OUTLINED_FUNCTION_352();
    sub_1C7551C6C();
    (*(v24 + 8))(v21, v25);
  }

  (*(v15 + 8))(v18, v13);
  OUTLINED_FUNCTION_125();
}

void LibraryUnderstandingGenerator.ThemeResult.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v47 = v1;
  v48 = v0;
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217488, &qword_1C7569D20);
  OUTLINED_FUNCTION_3_0();
  v43 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217490, &qword_1C7569D28);
  OUTLINED_FUNCTION_3_0();
  v44 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217498, &unk_1C7569D30);
  OUTLINED_FUNCTION_3_0();
  v46 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C70DA814();
  v18 = v48;
  sub_1C7551FFC();
  if (v18)
  {
    goto LABEL_9;
  }

  v41 = v7;
  v42 = v12;
  v48 = v3;
  v40 = v8;
  v19 = v47;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  v23 = v13;
  if (v21 == v22 >> 1)
  {
LABEL_8:
    v32 = sub_1C75518EC();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v34 = &type metadata for LibraryUnderstandingGenerator.ThemeResult;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v17, v23);
    v3 = v48;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v21 < (v22 >> 1))
  {
    v50 = *(v20 + v21);
    sub_1C6FD80C8();
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v45;
    if (v25 == v27 >> 1)
    {
      v29 = v13;
      if (v50)
      {
        sub_1C70DA868();
        v30 = v41;
        OUTLINED_FUNCTION_352();
        sub_1C7551B4C();
        v31 = v46;
        swift_unknownObjectRelease();
        (*(v43 + 8))(v30, v28);
        (*(v31 + 8))(v17, v29);
        v35 = 0;
      }

      else
      {
        sub_1C70DA8BC();
        OUTLINED_FUNCTION_352();
        sub_1C7551B4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
        sub_1C7551C1C();
        swift_unknownObjectRelease();
        v36 = OUTLINED_FUNCTION_118_0();
        v37(v36);
        v38 = OUTLINED_FUNCTION_4_28();
        v39(v38);
        v35 = v49;
      }

      *v19 = v35;
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_10;
    }

    v23 = v13;
    goto LABEL_8;
  }

  __break(1u);
}

void __swiftcall LibraryUnderstandingGenerator.init(setGMSBackgroundTaskPriority:)(PhotosIntelligence::LibraryUnderstandingGenerator *__return_ptr retstr, Swift::Bool setGMSBackgroundTaskPriority)
{
  v3 = objc_opt_self();
  v24 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisCollectionThemeResultsKey);
  v5 = v4;
  v6 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisResultAttributesKey);
  v8 = v7;
  v9 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisResultCollectionThemeAttributeKey);
  v11 = v10;
  v12 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisResultCollectionThemeVersionAttributeKey);
  v14 = v13;
  v15 = [v3 currentUnifiedEmbeddingVersion];
  if (!v15)
  {
    v15 = sub_1C755104C();
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x80000001C759DB00;
  }

  if (v14)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0xD000000000000016;
  }

  v26 = v17;
  v27 = v16;
  v18 = 0xEF656D6568546E6FLL;
  if (v11)
  {
    v18 = v11;
  }

  v25 = v18;
  if (!v11)
  {
    v9 = 0x697463656C6C6F63;
  }

  if (v8)
  {
    v19 = v6;
  }

  else
  {
    v8 = 0xEA00000000007365;
    v19 = 0x7475626972747461;
  }

  if (v5)
  {
    v20 = v24;
  }

  else
  {
    v5 = 0x80000001C759DAE0;
    v20 = 0xD000000000000016;
  }

  v21 = sub_1C755103C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x80000001C759DB20;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = setGMSBackgroundTaskPriority;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v23 = sub_1C75504DC();
  retstr->maxAssetEmbeddings = 60;
  retstr->collectionThemeResultsKey._countAndFlagsBits = v20;
  retstr->collectionThemeResultsKey._object = v5;
  retstr->resultAttributesKey._countAndFlagsBits = v19;
  retstr->resultAttributesKey._object = v8;
  retstr->collectionThemeAttributeKey._countAndFlagsBits = v9;
  retstr->collectionThemeAttributeKey._object = v25;
  retstr->collectionThemeVersionAttributeKey._countAndFlagsBits = v26;
  retstr->collectionThemeVersionAttributeKey._object = v27;
  retstr->uemVersion = v21;
  retstr->setGMSBackgroundTaskPriorityOptions._rawValue = v23;
}

uint64_t LibraryUnderstandingGenerator.generateThemes(for:)()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v3;
  memcpy(v1 + 2, v0, 0x58uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C70D961C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8[14];
  if (v9 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = a1)
  {
    v11 = i - 1;
    if (i < 1)
    {
      v26 = v8[13];
      goto LABEL_22;
    }

    v12 = v8[2];
    if (v12 >= i)
    {
      v29 = 0;
      v14 = v9 & 0xC000000000000001;
      v49 = v8[14] + 32;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v14)
        {
          v30 = MEMORY[0x1CCA5DDD0](v29, v8[14]);
        }

        else
        {
          v30 = *(v49 + 8 * v29);
        }

        v31 = v30;
        v32 = [v30 localIdentifier];

        v33 = sub_1C755068C();
        v35 = v34;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_9_26();
          v9 = v38;
        }

        v36 = *(v9 + 16);
        if (v36 >= *(v9 + 24) >> 1)
        {
          sub_1C6FB1814();
          v9 = v39;
        }

        ++v29;
        *(v9 + 16) = v36 + 1;
        v37 = v9 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v35;
      }

      while (i != v29);
LABEL_37:
      v8[15] = v9;
      sub_1C6FB6330();
      v40 = v8[14];
      if (v14)
      {
        sub_1C75504FC();
        v42 = MEMORY[0x1CCA5DDD0](0, v40);
      }

      else
      {
        v41 = *(v40 + 32);
        sub_1C75504FC();
        v42 = v41;
      }

      v43 = v42;
      v44 = [v42 photoLibrary];
      v8[16] = v44;

      if (v44)
      {

        v45 = swift_task_alloc();
        v8[17] = v45;
        v45[2] = v9;
        v45[3] = v44;
        v45[4] = v8 + 2;
        v46 = swift_task_alloc();
        v8[18] = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2174A0, &qword_1C7569D48);
        *v46 = v8;
        v46[1] = sub_1C70D9A7C;
        OUTLINED_FUNCTION_41();
        a4 = 0xD000000000000021;
        a7 = v45;

        return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
      }

LABEL_51:
      __break(1u);
      return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if (v12 < 0)
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (!v12)
    {
      break;
    }

    if (v12 == 1)
    {
      goto LABEL_50;
    }

    v13 = 0;
    v14 = v9 & 0xC000000000000001;
    v47 = v8[14] + 32;
    v48 = v9 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x1E69E7CC0];
    while ((v13 * v11) >> 64 == (v13 * v11) >> 63)
    {
      v15 = v13 * v11 / (v12 - 1);
      if (v14)
      {
        v16 = MEMORY[0x1CCA5DDD0](v15, v8[14]);
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v15 >= *(v48 + 16))
        {
          goto LABEL_46;
        }

        v16 = *(v47 + 8 * v15);
      }

      v17 = v16;
      v18 = [v16 localIdentifier];

      v19 = sub_1C755068C();
      v21 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_9_26();
        v9 = v24;
      }

      v22 = *(v9 + 16);
      if (v22 >= *(v9 + 24) >> 1)
      {
        sub_1C6FB1814();
        v9 = v25;
      }

      ++v13;
      *(v9 + 16) = v22 + 1;
      v23 = v9 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      if (v12 == v13)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    a1 = sub_1C75516BC();
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    v14 = v9 & 0xC000000000000001;
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_37;
  }

  v26 = v8[13];

LABEL_22:
  v26[1] = 0;
  v26[2] = 0;
  *v26 = 1;
  OUTLINED_FUNCTION_43();

  return v27();
}

uint64_t sub_1C70D9A7C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    v9 = *(v2 + 128);

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C70D9BC8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t LibraryUnderstandingGenerator.generateThemes(for:photoLibrary:)()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v3;
  v1[13] = v4;
  memcpy(v1 + 2, v0, 0x58uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C70D9CA8()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = *(v0 + 112);
  *(v1 + 32) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2174A0, &qword_1C7569D48);
  *v2 = v0;
  v2[1] = sub_1C70D9DB4;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DE38](v3, v4, v5, 0xD000000000000021, v6, v7, v1, v8);
}

uint64_t sub_1C70D9DB4()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v2 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v9();
  }
}

uint64_t sub_1C70D9EDC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

void sub_1C70D9F38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217500, &unk_1C756A300);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();
  v20 = sub_1C7550B3C();
  v21 = [a3 photoLibraryURL];
  sub_1C754DCCC();

  v22 = sub_1C754DC8C();
  (*(v16 + 8))(v19, v14);
  v23 = a4[10];
  (*(v8 + 16))(v13, v27, v6);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, v13, v6);
  memcpy((v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)), a4, 0x58uLL);
  aBlock[4] = sub_1C70DB164;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C70DA678;
  aBlock[3] = &block_descriptor_6;
  v26 = _Block_copy(aBlock);
  sub_1C70DB21C(a4, v29);

  sub_1C70DA91C(v20, v22, v23, 0, v26, v28);
  _Block_release(v26);
}

uint64_t sub_1C70DA208(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1C70DB254();
      v5 = swift_allocError();
      *v15 = 0;
    }

    v26 = v5;
    goto LABEL_24;
  }

  if (a2)
  {
    v26 = a2;
LABEL_24:
    v16 = a2;
LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217500, &unk_1C756A300);
    return sub_1C7550C9C();
  }

  sub_1C6FE3750();
  if (!v29)
  {
    v17 = &qword_1EC216D30;
    v18 = &unk_1C7583DB0;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750, &qword_1C756A310);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  if (v24[2])
  {
    sub_1C6F774EC((v24 + 4), &v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1C6FE3750();

    if (v29)
    {
      if (swift_dynamicCast())
      {
        sub_1C6FE3750();
        if (v29)
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_34:

            goto LABEL_35;
          }

          sub_1C6FE3750();

          if (v29)
          {
            if (swift_dynamicCast())
            {
              v26 = v24;
              v27 = v25;
              sub_1C6FB5E8C();
              sub_1C755152C();

              sub_1C706D154();
              v26 = sub_1C71CD85C(v8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
              sub_1C703328C();
              v9 = sub_1C75505FC();
              v11 = v10;

              if (sub_1C75506FC() == 0x656D656874206F6ELL && v12 == 0xE800000000000000)
              {
              }

              else
              {
                v14 = sub_1C7551DBC();

                if ((v14 & 1) == 0)
                {
                  v26 = v9;
                  v27 = v11;
                  v22 = sub_1C755152C();

                  goto LABEL_39;
                }
              }

              v22 = 0;
LABEL_39:
              v23 = *(a4 + 72);
              v26 = v22;
              v27 = v24;
              v28 = v23;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217500, &unk_1C756A300);
              return sub_1C7550CAC();
            }

            goto LABEL_34;
          }
        }

        sub_1C6FB5FC8(&v26, &qword_1EC219770, &unk_1C755C740);
LABEL_35:
        sub_1C70DB254();
        v19 = swift_allocError();
        v21 = 2;
        goto LABEL_28;
      }

LABEL_27:
      sub_1C70DB254();
      v19 = swift_allocError();
      v21 = 1;
LABEL_28:
      *v20 = v21;
      v26 = v19;
      goto LABEL_29;
    }

    v17 = &qword_1EC219770;
    v18 = &unk_1C755C740;
LABEL_26:
    sub_1C6FB5FC8(&v26, v17, v18);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C70DA678(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    v4 = sub_1C75504AC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t LibraryUnderstandingGenerator.noTheme(adapterVersion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 72);
  if (sub_1C75506FC() == 0x656D656874206F6ELL && v6 == 0xE800000000000000)
  {

    goto LABEL_8;
  }

  v8 = sub_1C7551DBC();

  if (v8)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  sub_1C6FB5E8C();
  result = sub_1C755152C();
LABEL_9:
  *a2 = result;
  a2[1] = a1;
  a2[2] = v5;
  return result;
}

unint64_t sub_1C70DA814()
{
  result = qword_1EC217470;
  if (!qword_1EC217470)
  {
    result = swift_getWitnessTable(asc_1C756A25C, &type metadata for LibraryUnderstandingGenerator.ThemeResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217470);
  }

  return result;
}

unint64_t sub_1C70DA868()
{
  result = qword_1EC217478;
  if (!qword_1EC217478)
  {
    result = swift_getWitnessTable(byte_1C756A20C, &type metadata for LibraryUnderstandingGenerator.ThemeResult.NoThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217478);
  }

  return result;
}

unint64_t sub_1C70DA8BC()
{
  result = qword_1EC217480;
  if (!qword_1EC217480)
  {
    result = swift_getWitnessTable(byte_1C756A1BC, &type metadata for LibraryUnderstandingGenerator.ThemeResult.ThemesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217480);
  }

  return result;
}

id sub_1C70DA91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v11 = sub_1C755048C();
  v12 = [a6 requestCollectionThemeForAssetLocalIdentifiers:a1 fromPhotoLibraryWithURL:a2 withOptions:v11 progressHandler:a4 andCompletionHandler:a5];

  return v12;
}

uint64_t sub_1C70DA9D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C70DAA10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C70DAA70(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C70DAAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C70DAB24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C70DAB74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1C70DABC8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryUnderstandingGenerator.ThemeResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LibraryUnderstandingGenerator.ThemeResult.ThemesCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C70DADA0()
{
  result = qword_1EC2174A8;
  if (!qword_1EC2174A8)
  {
    result = swift_getWitnessTable(aU_34, &type metadata for LibraryUnderstandingGenerator.Result.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174A8);
  }

  return result;
}

unint64_t sub_1C70DADF8()
{
  result = qword_1EC2174B0;
  if (!qword_1EC2174B0)
  {
    result = swift_getWitnessTable(aM_27, &type metadata for LibraryUnderstandingGenerator.ThemeResult.ThemesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174B0);
  }

  return result;
}

unint64_t sub_1C70DAE50()
{
  result = qword_1EC2174B8;
  if (!qword_1EC2174B8)
  {
    result = swift_getWitnessTable(byte_1C756A194, &type metadata for LibraryUnderstandingGenerator.ThemeResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174B8);
  }

  return result;
}

unint64_t sub_1C70DAEA8()
{
  result = qword_1EC2174C0;
  if (!qword_1EC2174C0)
  {
    result = swift_getWitnessTable(byte_1C756A04C, &type metadata for LibraryUnderstandingGenerator.ThemeResult.ThemesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174C0);
  }

  return result;
}

unint64_t sub_1C70DAF00()
{
  result = qword_1EC2174C8;
  if (!qword_1EC2174C8)
  {
    result = swift_getWitnessTable(byte_1C756A074, &type metadata for LibraryUnderstandingGenerator.ThemeResult.ThemesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174C8);
  }

  return result;
}

unint64_t sub_1C70DAF58()
{
  result = qword_1EC2174D0;
  if (!qword_1EC2174D0)
  {
    result = swift_getWitnessTable(byte_1C7569FFC, &type metadata for LibraryUnderstandingGenerator.ThemeResult.NoThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174D0);
  }

  return result;
}

unint64_t sub_1C70DAFB0()
{
  result = qword_1EC2174D8;
  if (!qword_1EC2174D8)
  {
    result = swift_getWitnessTable(asc_1C756A024, &type metadata for LibraryUnderstandingGenerator.ThemeResult.NoThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174D8);
  }

  return result;
}

unint64_t sub_1C70DB008()
{
  result = qword_1EC2174E0;
  if (!qword_1EC2174E0)
  {
    result = swift_getWitnessTable(byte_1C756A104, &type metadata for LibraryUnderstandingGenerator.ThemeResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174E0);
  }

  return result;
}

unint64_t sub_1C70DB060()
{
  result = qword_1EC2174E8;
  if (!qword_1EC2174E8)
  {
    result = swift_getWitnessTable(byte_1C756A12C, &type metadata for LibraryUnderstandingGenerator.ThemeResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174E8);
  }

  return result;
}

unint64_t sub_1C70DB0B8()
{
  result = qword_1EC2174F0;
  if (!qword_1EC2174F0)
  {
    result = swift_getWitnessTable(byte_1C7569F44, &type metadata for LibraryUnderstandingGenerator.Result.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174F0);
  }

  return result;
}

unint64_t sub_1C70DB110()
{
  result = qword_1EC2174F8;
  if (!qword_1EC2174F8)
  {
    result = swift_getWitnessTable(byte_1C7569F6C, &type metadata for LibraryUnderstandingGenerator.Result.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2174F8);
  }

  return result;
}

uint64_t sub_1C70DB164(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217500, &unk_1C756A300) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1C70DA208(a1, a2, v2 + v6, v7);
}

unint64_t sub_1C70DB254()
{
  result = qword_1EC217508;
  if (!qword_1EC217508)
  {
    result = swift_getWitnessTable(aE_30, &unk_1F46B4440, v0, v1);
    atomic_store(result, &qword_1EC217508);
  }

  return result;
}

_BYTE *sub_1C70DB2A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70DB384()
{
  result = qword_1EC217510;
  if (!qword_1EC217510)
  {
    result = swift_getWitnessTable(byte_1C756A364, &unk_1F46B4440, v0, v1);
    atomic_store(result, &qword_1EC217510);
  }

  return result;
}

uint64_t sub_1C70DB3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C70DB408, 0, 0);
}

uint64_t sub_1C70DB408()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v1[2];
  v4 = MEMORY[0x1E69E7CC0];
  v0[10] = 0;
  v0[11] = v4;
  v0[9] = v3;
  if (v3)
  {
    v5 = v1[5];
    v0[12] = v5;
    v0[2] = v1[4];
    v0[3] = v5;
    sub_1C75504FC();
    v10 = (v2 + *v2);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_8_21(v6);

    return (v10)(v0 + 4, v0 + 2);
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1C70DB55C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70DB65C()
{
  v1 = v0[4];
  v2 = v0[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0[11];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C6FB1814();
    v4 = v15;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_1C6FB1814();
    v4 = v16;
  }

  *(v4 + 16) = v5 + 1;
  v6 = v4 + 16 * v5;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  v7 = v0[9];
  v8 = v0[10] + 1;
  v0[10] = v8;
  v0[11] = v4;
  if (v8 == v7)
  {
    v9 = v0[1];

    return v9(v4);
  }

  else
  {
    v11 = v0[6];
    v12 = v0[8] + 16 * v8;
    v13 = *(v12 + 40);
    v0[12] = v13;
    v0[2] = *(v12 + 32);
    v0[3] = v13;
    sub_1C75504FC();
    v17 = (v11 + *v11);
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_8_21(v14);

    return (v17)(v0 + 4, v0 + 2);
  }
}

uint64_t sub_1C70DB844()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

void __swiftcall AssetCurationOutlierDetector.Request.init(assetUUIDs:keyAssetUUID:userPrompt:traits:traitsSelectedByStoryteller:storyTitle:assetCurationOutlierPromptMaximumTokenCount:)(PhotosIntelligence::AssetCurationOutlierDetector::Request *__return_ptr retstr, Swift::OpaquePointer assetUUIDs, Swift::String keyAssetUUID, Swift::String userPrompt, Swift::OpaquePointer traits, Swift::OpaquePointer traitsSelectedByStoryteller, Swift::String storyTitle, Swift::Int_optional assetCurationOutlierPromptMaximumTokenCount)
{
  countAndFlagsBits = storyTitle._countAndFlagsBits;
  object = userPrompt._object;
  v12 = userPrompt._countAndFlagsBits;
  v13 = keyAssetUUID._object;
  v14 = keyAssetUUID._countAndFlagsBits;
  if (assetCurationOutlierPromptMaximumTokenCount.is_nil)
  {
    if (qword_1EDD0A988 != -1)
    {
      swift_once();
    }

    value = 4096;
    if (byte_1EC218F88 == 1)
    {
      value = 2048;
    }
  }

  else
  {
    value = assetCurationOutlierPromptMaximumTokenCount.value;
  }

  retstr->assetUUIDs = assetUUIDs;
  retstr->keyAssetUUID._countAndFlagsBits = v14;
  retstr->keyAssetUUID._object = v13;
  retstr->userPrompt._countAndFlagsBits = v12;
  retstr->userPrompt._object = object;
  retstr->traits = traits;
  retstr->traitsSelectedByStoryteller = traitsSelectedByStoryteller;
  retstr->storyTitle._countAndFlagsBits = countAndFlagsBits;
  retstr->storyTitle._object = storyTitle._object;
  retstr->assetCurationOutlierPromptMaximumTokenCount = value;
}

uint64_t AssetCurationOutlierDetector.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C70DBB1C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B660);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t AssetCurationOutlierDetector.init(storyPhotoLibraryContext:aiEventReporting:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = a1[2];
  if (qword_1EC213DB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  v9 = __swift_project_value_buffer(v8, qword_1EC25B660);
  (*(*(v8 - 8) + 16))(a3, v9, v8);
  v10 = type metadata accessor for AssetCurationOutlierDetector(0);
  v11 = a3 + v10[5];
  *v11 = v5;
  *(v11 + 8) = v6;
  *(v11 + 16) = v7;
  type metadata accessor for LLMAssetCache();
  swift_allocObject();
  *(a3 + v10[6]) = LLMAssetCache.init()();
  v12 = a3 + v10[7];

  return sub_1C6F699F8(a2, v12);
}

uint64_t AssetCurationOutlierDetector.assetOutliers(with:chapter:eventRecorder:progressReporter:diagnosticContext:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  *(v1 + 1536) = v0;
  *(v1 + 1528) = v6;
  *(v1 + 1520) = v7;
  *(v1 + 1512) = v8;
  *(v1 + 1544) = type metadata accessor for AssetRichDescriptionsGenerator(0);
  *(v1 + 1552) = swift_task_alloc();
  v9 = sub_1C754F2FC();
  *(v1 + 1560) = v9;
  *(v1 + 1568) = *(v9 - 8);
  *(v1 + 1576) = swift_task_alloc();
  *(v1 + 1584) = swift_task_alloc();
  *(v1 + 1592) = swift_task_alloc();
  *(v1 + 1600) = swift_task_alloc();
  *(v1 + 1608) = swift_task_alloc();
  *(v1 + 1616) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v1 + 1624) = v10;
  *(v1 + 1632) = *(v10 - 8);
  *(v1 + 1640) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v1 + 1664) = *(v5 + 8);
  v12 = *(v5 + 48);
  *(v1 + 1688) = *(v5 + 32);
  *(v1 + 1648) = v11;
  *(v1 + 1656) = *v5;
  *(v1 + 1680) = *(v5 + 24);
  *(v1 + 1704) = v12;
  v13 = *(v5 + 72);
  *(v1 + 1720) = *(v5 + 64);
  *(v1 + 1728) = v13;
  memcpy((v1 + 16), v3, 0x68uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C70DBEAC()
{
  v36 = v0;
  v1 = *(v0 + 1512);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  OUTLINED_FUNCTION_70(*(v0 + 1512), v1[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C75504FC();
  sub_1C706D154();
  LOWORD(v34[0]) = 1;
  BYTE2(v34[0]) = 1;
  v34[1] = 0x3FA999999999999ALL;
  v35 = 1;
  static TraitSelectionStrategy.sortedSelectedTraitTitles(from:traits:traitsSelectedByStoryteller:keyAssetUUID:options:)();
  v3 = v2;
  *(v0 + 1736) = v2;

  sub_1C75504FC();
  swift_bridgeObjectRetain_n();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1696);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34[0] = v9;
    *v8 = 134218499;
    *(v8 + 4) = *(v3 + 16);

    *(v8 + 12) = 2085;
    v10 = MEMORY[0x1CCA5D090](v3, MEMORY[0x1E69E6158]);
    v12 = sub_1C6F765A4(v10, v11, v34);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    v13 = *(v7 + 16);

    *(v8 + 24) = v13;

    _os_log_impl(&dword_1C6F5C000, v4, v5, "Selected %ld traits (%{sensitive}s out of %ld total traits", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v32 = *(v0 + 1592);
  v33 = *(v0 + 1616);
  v14 = *(v0 + 1568);
  v15 = *(v0 + 1552);
  v30 = *(v0 + 1544);
  v31 = *(v0 + 1560);
  v16 = *(v0 + 1536);
  v17 = type metadata accessor for AssetCurationOutlierDetector(0);
  *(v0 + 1744) = v17;
  v18 = v16 + *(v17 + 20);
  v19 = *v18;
  v29 = *(v18 + 8);
  v20 = *(v18 + 16);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v21 = v19;

  sub_1C754FEFC();
  v22 = v15 + *(v30 + 20);
  *v22 = v21;
  *(v22 + 8) = v29;
  *(v22 + 16) = v20;
  memcpy((v0 + 120), (v0 + 16), 0x68uLL);
  *(v0 + 1912) = 16843009;
  *(v0 + 1916) = 257;
  v23 = *(v14 + 32);
  *(v0 + 1752) = v23;
  *(v0 + 1760) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v32, v33, v31);
  v24 = swift_task_alloc();
  *(v0 + 1768) = v24;
  *v24 = v0;
  v24[1] = sub_1C70DC424;
  v25 = *(v0 + 1656);
  v26 = *(v0 + 1592);
  v27 = *(v0 + 1528);

  return AssetRichDescriptionsGenerator.assetRichDescriptionByAssetUUID(for:chapter:assetRichDescriptionOptions:eventRecorder:progressReporter:diagnosticContext:)(v25, (v0 + 120), (v0 + 1912), v0 + 1456, v26, v27);
}

uint64_t sub_1C70DC424()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1776) = v5;
  *(v3 + 1784) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C70DC998(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_6_4();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14();
  *v10 = v9;
  v7[226] = v2;

  if (v2)
  {
  }

  else
  {
    v7[227] = a2;
    v7[228] = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C70DCCB4()
{
  v1 = v0[226];
  v2 = v0[224];
  v3 = v0[198];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC80A4();
  v0[229] = v2;
  v4 = v3;
  sub_1C754F2EC();
  if (v1)
  {
    v5 = v0[205];
    v6 = v0[204];
    v7 = v0[203];

    OUTLINED_FUNCTION_70(v0 + 182, v0[185]);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v42 = *(v6 + 8);
    v42(v5, v7);
    OUTLINED_FUNCTION_24_18();
    if (v4)
    {
      *(v0 + 39) = OUTLINED_FUNCTION_4_29();
      OUTLINED_FUNCTION_7_24(v8);

      OUTLINED_FUNCTION_25_13(v0 + 39);
    }

    OUTLINED_FUNCTION_3_36();
    v9 = v0[206];
    OUTLINED_FUNCTION_18_16();
    v37 = v10;
    v11 = v0[196];
    v12 = v0[195];
    v39 = v0[190];
    v41 = v13;
    v14 = v0[189];
    v15 = __swift_destroy_boxed_opaque_existential_1(v0 + 182);
    OUTLINED_FUNCTION_2_36(v15, v16, v17, v18, v19, v20, v21, v22, v36);
    v23 = *(v11 + 8);
    v23(v37, v12);
    v24 = OUTLINED_FUNCTION_0_22(v14, v14[3]);
    OUTLINED_FUNCTION_30_15(v24);
    v42(v9, v41);
    v23(v39, v12);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_0_50();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X1, X16 }
  }

  v27 = v0[205];
  v28 = v0[204];
  v29 = v0[203];
  v38 = v0[200];
  v40 = v0[219];
  v30 = v0[197];
  v31 = v0[195];
  OUTLINED_FUNCTION_70(v0 + 182, v0[185]);
  OUTLINED_FUNCTION_30_15(v27);
  v32 = *(v28 + 8);
  v0[230] = v32;
  v0[231] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v29);
  v40(v30, v38, v31);

  v33 = swift_task_alloc();
  v0[232] = v33;
  *v33 = v0;
  v33[1] = sub_1C70DD00C;
  OUTLINED_FUNCTION_128_0();

  return static AssetCurationOutlierDetector.generateOutlierCompletionsGMS(with:eventRecorder:progressReporter:diagnosticContext:aiEventReporting:)();
}

uint64_t sub_1C70DD00C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v2 + 1864) = v6;
  *(v2 + 1872) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C70DD144()
{
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1864);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v51 = v5;
    *v4 = 136642819;
    v6 = MEMORY[0x1CCA5D090](v3, MEMORY[0x1E69E6158]);
    v8 = sub_1C6F765A4(v6, v7, &v51);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "Asset curation outlier completion = %{sensitive}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v9 = *(v0 + 1872);
  v10 = *(v0 + 1864);
  sub_1C75504FC();
  sub_1C754F2DC();
  if (v9)
  {
    v11 = *(v0 + 1552);
    v12 = *(v0 + 1528);

    sub_1C70DE7EC(v11);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_12_25();
      v14 = *(v0 + 1528);
      *(v0 + 488) = v13;
      *(v0 + 504) = v15;
      *(v0 + 512) = v16;
      *(v0 + 520) = v17;
      *(v0 + 528) = v18;
      *(v0 + 536) = v19;
      *(v0 + 544) = v10;
      *(v0 + 552) = 0u;
      *(v0 + 568) = v20;

      sub_1C70DE300((v0 + 488), v14, (v0 + 1456));
    }

    v50 = *(v0 + 1840);
    v21 = *(v0 + 1832);
    v46 = v10;
    v22 = *(v0 + 1776);
    v23 = *(v0 + 1736);
    v24 = *(v0 + 1720);
    v25 = *(v0 + 1712);
    OUTLINED_FUNCTION_13_24();
    v26 = *(v0 + 1656);
    v27 = *(v0 + 1648);
    v28 = *(v0 + 1568);
    v49 = *(v0 + 1560);
    v47 = *(v0 + 1624);
    v48 = *(v0 + 1520);
    v29 = *(v0 + 1512);
    *(v0 + 1104) = OUTLINED_FUNCTION_10_28(v30, v31, v32, v33, v34, v35, v36, v37, v45);
    *(v0 + 1120) = v23;
    *(v0 + 1128) = v25;
    *(v0 + 1136) = v24;
    *(v0 + 1144) = v21;
    *(v0 + 1152) = v22;
    *(v0 + 1160) = v46;
    *(v0 + 1168) = 0u;
    *(v0 + 1184) = v26;
    sub_1C70DE848(v0 + 1104);
    OUTLINED_FUNCTION_70(v29, v29[3]);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v50(v27, v47);
    (*(v28 + 8))(v48, v49);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_0_50();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X1, X16 }
  }

  v40 = *(v0 + 1536);
  v41 = swift_task_alloc();
  *(v0 + 1880) = v41;
  *(v41 + 16) = v40;
  v42 = swift_task_alloc();
  *(v0 + 1888) = v42;
  *v42 = v0;
  v42[1] = sub_1C70DD4EC;
  OUTLINED_FUNCTION_128_0();

  __asm { BR              X3 }
}

uint64_t sub_1C70DD4EC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v2 + 1896) = v6;
  *(v2 + 1904) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C70DD654()
{
  v87 = v0 + 1496;
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1776);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 1776) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 1904);
  v86 = *(v0 + 1776);
  sub_1C75504FC();
  v82 = v1;
  sub_1C75504FC();
  v11 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  v83 = v4;
  v85 = v0;
LABEL_4:
  v12 = v11;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v11 = v12;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (v11 << 10) | (16 * v13);
    v15 = (*(v86 + 48) + v14);
    v16 = v15[1];
    v17 = (*(v86 + 56) + v14);
    v19 = *v17;
    v18 = v17[1];
    *(v0 + 1496) = *v15;
    *(v0 + 1504) = v16;
    *(swift_task_alloc() + 16) = v87;
    sub_1C75504FC();
    sub_1C75504FC();
    v20 = sub_1C70735F4();

    if (v20)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = v81;
      }

      else
      {
        sub_1C6FB1814();
        v21 = v24;
      }

      v22 = *(v21 + 16);
      if (v22 >= *(v21 + 24) >> 1)
      {
        sub_1C6FB1814();
        v21 = v25;
      }

      *(v21 + 16) = v22 + 1;
      v81 = v21;
      v23 = v21 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      v4 = v83;
      v0 = v85;
      goto LABEL_4;
    }

    v12 = v11;
    v4 = v83;
    v0 = v85;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v26 = *(v0 + 1520);

  sub_1C754F2EC();
  if (v10)
  {
    v27 = *(v0 + 1528);
    sub_1C70DE7EC(*(v0 + 1552));

    if (v27)
    {
      v28 = OUTLINED_FUNCTION_1_42();
      v29 = *(v0 + 1528);
      *(v0 + 664) = v28;
      *(v0 + 680) = v30;
      *(v0 + 688) = v31;
      *(v0 + 696) = v32;
      *(v0 + 704) = v33;
      *(v0 + 712) = v34;
      *(v0 + 720) = v35;
      *(v0 + 728) = v82;
      *(v0 + 736) = v81;
      *(v0 + 744) = v36;

      sub_1C70DE300((v0 + 664), v29, (v0 + 1456));
    }

    v79 = *(v0 + 1864);
    v84 = *(v0 + 1840);
    v37 = *(v0 + 1832);
    v38 = *(v0 + 1776);
    v39 = *(v0 + 1736);
    v40 = *(v0 + 1720);
    v41 = *(v0 + 1712);
    v78 = *(v0 + 1680);
    v42 = *(v0 + 1656);
    v43 = *(v0 + 1648);
    v80 = *(v0 + 1624);
    v44 = *(v0 + 1512);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1456));
    *(v0 + 1280) = v78;
    *(v0 + 1296) = v39;
    *(v0 + 1304) = v41;
    *(v0 + 1312) = v40;
    *(v0 + 1320) = v37;
    *(v0 + 1328) = v38;
    *(v0 + 1336) = v79;
    *(v0 + 1344) = v82;
    *(v0 + 1352) = v81;
    *(v0 + 1360) = v42;
    sub_1C70DE848(v0 + 1280);
    OUTLINED_FUNCTION_70(v44, v44[3]);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v84(v43, v80);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_0_50();

    OUTLINED_FUNCTION_43();

    v45();
  }

  else
  {
    OUTLINED_FUNCTION_24_18();
    if (v26)
    {
      v46 = OUTLINED_FUNCTION_1_42();
      v47 = *(v0 + 1528);
      *(v0 + 752) = v46;
      *(v0 + 768) = v48;
      *(v0 + 776) = v49;
      *(v0 + 784) = v50;
      *(v0 + 792) = v51;
      *(v0 + 800) = v52;
      *(v0 + 808) = v53;
      *(v0 + 816) = v82;
      *(v0 + 824) = v81;
      *(v0 + 832) = v54;

      sub_1C70DE300((v0 + 752), v47, (v0 + 1456));
    }

    v77 = *(v0 + 1840);
    v74 = *(v0 + 1832);
    v75 = *(v0 + 1864);
    v73 = *(v0 + 1776);
    v55 = *(v0 + 1736);
    v56 = *(v0 + 1720);
    v57 = *(v0 + 1712);
    OUTLINED_FUNCTION_13_24();
    v58 = *(v0 + 1656);
    v59 = *(v0 + 1648);
    v76 = *(v0 + 1624);
    *(v0 + 1368) = OUTLINED_FUNCTION_10_28(v60, v61, v62, v63, v64, v65, v66, v67, v72);
    *(v0 + 1384) = v55;
    *(v0 + 1392) = v57;
    *(v0 + 1400) = v56;
    *(v0 + 1408) = v74;
    *(v0 + 1416) = v73;
    *(v0 + 1424) = v75;
    *(v0 + 1432) = v82;
    *(v0 + 1440) = v81;
    *(v0 + 1448) = v58;
    sub_1C70DE848(v0 + 1368);
    v68 = OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_70(v68, v69);
    sub_1C754F1AC();
    v77(v59, v76);

    v70 = *(v0 + 8);
    v71 = *(v0 + 1896);

    v70(v71);
  }
}

uint64_t sub_1C70DDC00(uint64_t a1)
{
  OUTLINED_FUNCTION_24_18();
  if (v1)
  {
    v3 = *(v2 + 1736);
    v4 = *(v2 + 1720);
    v5 = *(v2 + 1712);
    v6 = *(v2 + 1656);
    *(v2 + 224) = *(v2 + 1680);
    *(v2 + 240) = v3;
    *(v2 + 248) = v5;
    *(v2 + 256) = v4;
    *(v2 + 264) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 296) = 0;
    *(v2 + 304) = v6;

    OUTLINED_FUNCTION_25_13((v2 + 224));
  }

  v7 = *(v2 + 1736);
  v8 = *(v2 + 1720);
  v9 = *(v2 + 1712);
  OUTLINED_FUNCTION_13_24();
  v10 = *(v2 + 1656);
  v11 = *(v2 + 1632);
  v28 = *(v2 + 1608);
  v29 = *(v2 + 1648);
  v27 = *(v2 + 1600);
  v12 = *(v2 + 1568);
  v13 = *(v2 + 1560);
  v30 = *(v2 + 1520);
  v31 = *(v2 + 1624);
  v14 = *(v2 + 1512);
  *(v2 + 840) = OUTLINED_FUNCTION_10_28(v15, v16, v17, v18, v19, v20, v21, v22, v26);
  *(v2 + 856) = v7;
  *(v2 + 864) = v9;
  *(v2 + 872) = v8;
  *(v2 + 880) = 0u;
  *(v2 + 896) = 0u;
  *(v2 + 912) = 0;
  *(v2 + 920) = v10;
  sub_1C70DE848(v2 + 840);
  v23 = *(v12 + 8);
  v23(v27, v13);
  v23(v28, v13);
  OUTLINED_FUNCTION_70(v14, v14[3]);
  sub_1C754F1AC();
  (*(v11 + 8))(v29, v31);
  v23(v30, v13);
  OUTLINED_FUNCTION_0_50();

  OUTLINED_FUNCTION_43();

  return v24();
}

uint64_t sub_1C70DE18C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C70DE1B4, 0, 0);
}

uint64_t sub_1C70DE1B4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for AssetCurationOutlierDetector(0) + 24));
  *(v0 + 48) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C70DE224, v2, 0);
}

uint64_t sub_1C70DE224()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C70CE6D4(v0[4], v0[5]);
  v0[7] = v2;
  v0[8] = v1;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C70DE2D0()
{
  v1 = v0[7];
  v2 = v0[2];
  *v2 = v0[8];
  v2[1] = v1;
  OUTLINED_FUNCTION_43();
  return v3();
}

void sub_1C70DE300(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1C754F38C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1CC();
  v48 = a1[8];
  v43 = v48;
  if (!v48)
  {
    goto LABEL_18;
  }

  v10 = a1[6];
  v47 = v10;
  if (!v10)
  {
    goto LABEL_18;
  }

  v40 = v10;
  v41 = v9;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1C755180C();

  v45 = 0xD000000000000013;
  v46 = 0x80000001C759DC70;
  v11 = v43;
  v44 = *(v43 + 16);
  v12 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v12);

  MEMORY[0x1CCA5CD70](0x7265696C74756F20, 0xE900000000000073);
  sub_1C7161CDC(v45, v46);

  v13 = a1[10];
  if (!v13)
  {
LABEL_17:
    sub_1C70DEBE0(&v47, &v45, &qword_1EC217530, &unk_1C756A550);
    sub_1C70DEBE0(&v48, &v45, &qword_1EC217538, &qword_1C7586ED0);
    sub_1C7161780(a2, v32);
    v9 = v41;
LABEL_18:
    if (PFOSVariantHasInternalDiagnostics())
    {
      sub_1C70DEB84(a1, &v45);
      sub_1C71632A4(v33);
    }

    OUTLINED_FUNCTION_70(a3, a3[3]);
    sub_1C754F1AC();
    (*(v7 + 8))(v9, v6);
    return;
  }

  v36 = a1;
  v37 = a3;
  v38 = v7;
  v39 = v6;

  v15 = 0;
  v16 = *(v13 + 16);
  v17 = v13 + 40;
  v42 = MEMORY[0x1E69E7CC0];
  v35 = v13 + 40;
LABEL_5:
  for (i = (v17 + 16 * v15); ; i += 2)
  {
    if (v16 == v15)
    {
      v31 = sub_1C7164AD8(v42, 0xD000000000000021, 0x80000001C759DCD0, 0, 0);

      v7 = v38;
      v6 = v39;
      a3 = v37;
      a1 = v36;
      goto LABEL_17;
    }

    if (v15 >= v16)
    {
      break;
    }

    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_22;
    }

    v20 = a2;
    v22 = *(i - 1);
    v21 = *i;
    v45 = v22;
    v46 = v21;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    *(&v34 - 2) = &v45;
    sub_1C75504FC();
    if (!sub_1C70735F4())
    {
      v23 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v23 + 16) + 1, 1, v24, v25, v26, v27);
        v23 = v44;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v29 + 1, 1, v24, v25, v26, v27);
        v23 = v44;
      }

      *(v23 + 16) = v29 + 1;
      v42 = v23;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v22;
      *(v30 + 40) = v21;
      v15 = v19;
      a2 = v20;
      v17 = v35;
      goto LABEL_5;
    }

    ++v15;
    a2 = v20;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t type metadata accessor for AssetCurationOutlierDetector(uint64_t a1)
{
  result = qword_1EC217520;
  if (!qword_1EC217520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C70DE7EC(uint64_t a1)
{
  v2 = type metadata accessor for AssetRichDescriptionsGenerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70DE89C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C6F738F4;

  return sub_1C70DE18C(v5, v3, v6);
}

unint64_t sub_1C70DE94C()
{
  result = qword_1EC217518;
  if (!qword_1EC217518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetCurationOutlierDetector.Error, &type metadata for AssetCurationOutlierDetector.Error, v0, v1);
    atomic_store(result, &qword_1EC217518);
  }

  return result;
}

uint64_t sub_1C70DE9C8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LLMAssetCache();
    if (v3 <= 0x3F)
    {
      result = sub_1C70DEA6C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C70DEA6C()
{
  result = qword_1EDD0CA28[0];
  if (!qword_1EDD0CA28[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDD0CA28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetCurationOutlierDetector.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C70DEBE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_18()
{
  v2 = *(v0 + 1552);

  return sub_1C70DE7EC(v2);
}

uint64_t QueryAssetsRetrievalProcessor.performQueryAssetsRetrieval(for:retrievalType:scopedAssetUUIDs:eventRecorder:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 200) = a5;
  *(v6 + 208) = v5;
  *(v6 + 184) = a2;
  *(v6 + 192) = a4;
  *(v6 + 176) = a1;
  *(v6 + 145) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1C70DEC8C, 0, 0);
}

uint64_t sub_1C70DEC8C()
{
  *(v0 + 56) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 64) = &off_1F46ACFD0;
  v1 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 145);
  v5 = v2 == 0;
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  *(v0 + 32) = 4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  *(v0 + 24) = 1;
  *(v0 + 88) = 1;
  *(v0 + 96) = v7;
  *(v0 + 104) = xmmword_1C756A560;
  *(v0 + 120) = 1;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 72) = 4000;
  *(v0 + 80) = 0;
  sub_1C70DF0F4();
  sub_1C75504FC();
  sub_1C75504FC();
  v8 = sub_1C7073450();
  *(v0 + 216) = v8;
  v9 = v6[6];
  v10 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v9);
  v14 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  *v11 = v0;
  v11[1] = sub_1C70DEEC0;
  v12 = *(v0 + 200);

  return v14(v0 + 152, v8, v0 + 16, v12, v9, v10);
}

uint64_t sub_1C70DEEC0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1C70DF088;
  }

  else
  {
    v2 = sub_1C70DEFD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C70DEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7[27];
  v9 = v7[20];
  FreeformStoryFetching.Result.uuids.getter(a1, a2, a3, a4, a5, a6, a7);
  sub_1C706D154();
  v11 = v10;

  swift_unknownObjectRelease();
  sub_1C70DF138((v7 + 2));
  v12 = v7[1];

  return v12(v11);
}

uint64_t sub_1C70DF088()
{
  sub_1C70DF138(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C70DF0F4()
{
  result = qword_1EDD0CE30;
  if (!qword_1EDD0CE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CE30);
  }

  return result;
}

uint64_t FreeformGenerationInfo.generatedMemoryIdentifiers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1C70DF1E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746172656E6567 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C759DE10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C70DF2B8(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x69746172656E6567;
  }
}

uint64_t sub_1C70DF308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70DF1E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70DF330(uint64_t a1)
{
  v2 = sub_1C70DF55C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70DF36C(uint64_t a1)
{
  v2 = sub_1C70DF55C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FreeformGenerationInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217540, &unk_1C756A580);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70DF55C();
  sub_1C755200C();
  v14 = 0;
  sub_1C7551CEC();
  if (!v2)
  {
    v13 = v10;
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C70DF55C()
{
  result = qword_1EDD09D40;
  if (!qword_1EDD09D40)
  {
    result = swift_getWitnessTable(byte_1C756A7EC, &type metadata for FreeformGenerationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09D40);
  }

  return result;
}

uint64_t FreeformGenerationInfo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217548, &unk_1C756A590);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_389();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70DF55C();
  sub_1C7551FFC();
  if (!v2)
  {
    sub_1C7551BDC();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C7551C1C();
    (*(v8 + 8))(v3, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C70DF7C8()
{
  result = sub_1C755068C();
  qword_1EDD0D288 = result;
  unk_1EDD0D290 = v1;
  return result;
}

uint64_t static FreeformStoryDiagnosticsGenerator.indexFileName.getter()
{
  if (qword_1EDD0D280 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDD0D288;
  sub_1C75504FC();
  return v0;
}

uint64_t FreeformStoryDiagnosticsGenerator.__allocating_init(storyGenerationDiagnosticContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FreeformStoryDiagnosticsGenerator.save(_:)(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2 || (sub_1C70DFA58(*(a1 + 88), v2), !v1))
  {
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    type metadata accessor for FreeformStory(0);
    sub_1C70E0B28(&qword_1EDD0C2F0, protocol conformance descriptor for FreeformStory);
    v3 = sub_1C754DBAC();
    if (v1)
    {

      sub_1C70DFA04();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    else
    {
      v6 = v3;
      v7 = v4;
      OUTLINED_FUNCTION_0_51();
      sub_1C7161C08();
      sub_1C6FC1640(v6, v7);
    }
  }

  return OUTLINED_FUNCTION_0_51();
}

unint64_t sub_1C70DFA04()
{
  result = qword_1EC217550;
  if (!qword_1EC217550)
  {
    result = swift_getWitnessTable(asc_1C756A7AC, &type metadata for FreeformStoryDiagnosticsGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC217550);
  }

  return result;
}

void sub_1C70DFA58(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v72 = a1;
  v77[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1C754DF6C();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C754DC1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C754DD2C();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v66 - v17;
  v19 = *(v2 + 16);
  v20 = *(v19 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary);
  v77[0] = 0;
  v21 = [v20 urlForApplicationDataFolderIdentifier:11 error:{v77, v16}];
  v22 = v77[0];
  if (v21)
  {
    v23 = v21;
    sub_1C754DCCC();
    v24 = v22;

    if (qword_1EDD0D280 != -1)
    {
      swift_once();
    }

    v77[0] = qword_1EDD0D288;
    v77[1] = unk_1EDD0D290;
    (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v5);
    sub_1C6FB5E8C();
    sub_1C75504FC();
    sub_1C754DD1C();
    (*(v6 + 8))(v8, v5);

    v25 = v75;
    v26 = v76;
    (*(v75 + 16))(v11, v14, v76);
    type metadata accessor for FileLock(0);
    swift_allocObject();
    sub_1C743A9AC(v11, v27);
    v28 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    if (sub_1C743A73C(1))
    {
      v68 = v18;
      sub_1C754DCEC();
      v29 = v28;
      v30 = sub_1C755065C();

      v67 = v29;
      v31 = [v29 fileExistsAtPath_];

      if (v31)
      {
        sub_1C754D73C();
        swift_allocObject();
        sub_1C754D72C();
        v32 = v73;
        v33 = sub_1C754DD6C();
        if (v32)
        {

          sub_1C743AAC4();

          v38 = v76;
          v39 = *(v75 + 8);
          v39(v14, v76);
          v39(v68, v38);
          return;
        }

        v35 = v33;
        v36 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217588, &unk_1C756A840);
        sub_1C70E1284(&qword_1EDD06C60, sub_1C70E1308, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
        sub_1C754D71C();
        v37 = 0;
        sub_1C6FC1640(v35, v36);

        v63 = v77[0];
      }

      else
      {
        v63 = MEMORY[0x1E69E7CC8];
        v37 = v73;
      }

      v43 = sub_1C7165264();
      v45 = v63[2];
      v73 = v43;
      if (v45 && (v46 = sub_1C6F78124(v43, v44), (v47 & 1) != 0))
      {
        v48 = *(v63[7] + 16 * v46 + 8);
        sub_1C75504FC();
      }

      else
      {
        v49 = v69;
        v50 = v70;
        v51 = v71;
        (*(v70 + 16))(v69, v19 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationDate, v71);
        sub_1C754DE3C();
        (*(v50 + 8))(v49, v51);
        v48 = MEMORY[0x1E69E7CC0];
      }

      v52 = v68;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v48 = v64;
      }

      v53 = *(v48 + 16);
      if (v53 >= *(v48 + 24) >> 1)
      {
        sub_1C6FB1814();
        v48 = v65;
      }

      *(v48 + 16) = v53 + 1;
      v54 = v48 + 16 * v53;
      v55 = v74;
      *(v54 + 32) = v72;
      *(v54 + 40) = v55;
      swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v63;
      sub_1C6FC8A54();

      v56 = v77[0];
      sub_1C754D7AC();
      swift_allocObject();
      sub_1C754D79C();
      v77[0] = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217588, &unk_1C756A840);
      sub_1C70E1284(&qword_1EDD06C68, sub_1C70E1230, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
      v57 = sub_1C754D78C();
      if (v37)
      {
      }

      else
      {
        v59 = v57;
        v60 = v58;

        sub_1C754DE1C();
        sub_1C6FC1640(v59, v60);
      }

      sub_1C743AAC4();

      v61 = v76;
      v62 = *(v75 + 8);
      v62(v14, v76);
      v62(v52, v61);
    }

    else
    {
      sub_1C70DFA04();
      swift_allocError();
      *v41 = 1;
      swift_willThrow();

      v42 = *(v25 + 8);
      v42(v14, v26);
      v42(v18, v26);
    }
  }

  else
  {
    v40 = v77[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

uint64_t FreeformStoryDiagnosticsGenerator.save(_:associatedDiagnosticFileName:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x41uLL);
  result = PFOSVariantHasInternalDiagnostics();
  if (result)
  {
    sub_1C6FB5E8C();
    if (sub_1C75515AC())
    {
      sub_1C75504FC();
    }

    else
    {
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
    }

    OUTLINED_FUNCTION_4_30();
    v8 = v6;
    v9 = v7;
    MEMORY[0x1CCA5CD70](a2, a3);

    sub_1C70E03B4(__dst, v8, v9);
  }

  return result;
}

void sub_1C70E03B4(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  sub_1C70E11DC();
  v4 = sub_1C754DBAC();
  if (v3)
  {

    sub_1C70DFA04();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_1C7161C08();
    sub_1C6FC1640(v7, v8);
  }
}

void sub_1C70E04F4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  sub_1C70E1188();
  v4 = sub_1C754DBAC();
  if (v3)
  {

    sub_1C70DFA04();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_1C7161C08();
    sub_1C6FC1640(v7, v8);
  }
}

double FreeformStoryDiagnosticsGenerator.saveDiagnosticData<A>(data:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  v7 = sub_1C754DBAC();
  if (v6)
  {

    sub_1C70DFA04();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v8;
    sub_1C7161C08();
    sub_1C6FC1640(v11, v12);
  }

  return result;
}

uint64_t FreeformStoryDiagnosticsGenerator.save(_:uniqueIdentifier:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x41uLL);
  result = PFOSVariantHasInternalDiagnostics();
  if (result)
  {
    sub_1C7165140();
    v7 = v6;
    OUTLINED_FUNCTION_4_30();
    v11 = v9;
    v12 = v10;
    if (a3)
    {
      sub_1C75504FC();

      v7 = a3;
    }

    else
    {
      a2 = v8;
    }

    MEMORY[0x1CCA5CD70](a2, v7);

    MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
    sub_1C70E03B4(__dst, v11, v12);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FreeformStoryDiagnosticsGenerator.save(storyCompletion:)(PhotosIntelligence::FreeformStoryCompletionSync *storyCompletion)
{
  subtitle = storyCompletion->subtitle;
  v3[0] = storyCompletion->title;
  v3[1] = subtitle;
  v2 = *&storyCompletion->traits._rawValue;
  v3[2] = storyCompletion->keyAssetQuery;
  v3[3] = v2;
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C70E04F4(v3, 0xD00000000000001BLL, 0x80000001C759DD90);
  }
}

void static FreeformStoryDiagnosticsGenerator.makeStory(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_389();
  v7 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_31();
  v9 = OUTLINED_FUNCTION_0_51();
  sub_1C73C6860(v9, v10, v3);
  if (!v2)
  {
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
    {
      sub_1C7044B24(v3);
      v11 = type metadata accessor for FreeformStory(0);
      v12 = a2;
      v13 = 1;
LABEL_4:
      __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
      return;
    }

    v14 = OUTLINED_FUNCTION_6_36();
    v15(v14);
    v16 = [a1 photoLibrary];
    if (v16)
    {
      v17 = v16;
      static FreeformStoryDecoder.propertyListDecoder(for:)();

      sub_1C754DD6C();
      v18 = type metadata accessor for FreeformStory(0);
      sub_1C70E0B28(&qword_1EC217558, protocol conformance descriptor for FreeformStory);
      OUTLINED_FUNCTION_7_25();
      sub_1C754DB5C();
      v19 = OUTLINED_FUNCTION_55_3();
      v20(v19);
      OUTLINED_FUNCTION_9_27();

      v12 = a2;
      v13 = 0;
      v11 = v18;
      goto LABEL_4;
    }

    __break(1u);
  }
}

uint64_t sub_1C70E0B28(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for FreeformStory(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void static FreeformStoryDiagnosticsGenerator.makePrompt(from:)(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_389();
  v5 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_31();
  sub_1C73C6860(0xD000000000000015, 0x80000001C759DDB0, v2);
  if (!v1)
  {
    if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
    {
      sub_1C7044B24(v2);
      *a1 = 0u;
      a1[1] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *(a1 + 64) = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_6_36();
      v8(v7);
      sub_1C754DB8C();
      swift_allocObject();
      sub_1C754DB7C();
      sub_1C754DD6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217560, &qword_1C756A5A0);
      sub_1C70E0DAC();
      OUTLINED_FUNCTION_7_25();
      sub_1C754DB5C();
      v9 = OUTLINED_FUNCTION_55_3();
      v10(v9);
      OUTLINED_FUNCTION_9_27();

      memcpy(a1, __src, 0x41uLL);
    }
  }
}

unint64_t sub_1C70E0DAC()
{
  result = qword_1EC217568;
  if (!qword_1EC217568)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217560, &qword_1C756A5A0);
    v4[0] = sub_1C70E0E30();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v3, v4);
    atomic_store(result, &qword_1EC217568);
  }

  return result;
}

unint64_t sub_1C70E0E30()
{
  result = qword_1EC217570;
  if (!qword_1EC217570)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMStoryRequest, &type metadata for LLMStoryRequest, v0, v1);
    atomic_store(result, &qword_1EC217570);
  }

  return result;
}

uint64_t FreeformStoryDiagnosticsGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_BYTE *sub_1C70E0F4C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70E102C()
{
  result = qword_1EC217578;
  if (!qword_1EC217578)
  {
    result = swift_getWitnessTable(asc_1C756A71C, &type metadata for FreeformGenerationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217578);
  }

  return result;
}

unint64_t sub_1C70E1084()
{
  result = qword_1EC217580;
  if (!qword_1EC217580)
  {
    result = swift_getWitnessTable(byte_1C756A784, &type metadata for FreeformStoryDiagnosticsGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC217580);
  }

  return result;
}

unint64_t sub_1C70E10DC()
{
  result = qword_1EDD09D30;
  if (!qword_1EDD09D30)
  {
    result = swift_getWitnessTable(aE_31, &type metadata for FreeformGenerationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09D30);
  }

  return result;
}

unint64_t sub_1C70E1134()
{
  result = qword_1EDD09D38;
  if (!qword_1EDD09D38)
  {
    result = swift_getWitnessTable(asc_1C756A6B4, &type metadata for FreeformGenerationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09D38);
  }

  return result;
}

unint64_t sub_1C70E1188()
{
  result = qword_1EDD08D20;
  if (!qword_1EDD08D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCompletionSync, &type metadata for FreeformStoryCompletionSync, v0, v1);
    atomic_store(result, &qword_1EDD08D20);
  }

  return result;
}

unint64_t sub_1C70E11DC()
{
  result = qword_1EDD0BCA0;
  if (!qword_1EDD0BCA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMStoryRequest, &type metadata for LLMStoryRequest, v0, v1);
    atomic_store(result, &qword_1EDD0BCA0);
  }

  return result;
}

unint64_t sub_1C70E1230()
{
  result = qword_1EDD09D28;
  if (!qword_1EDD09D28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformGenerationInfo, &type metadata for FreeformGenerationInfo, v0, v1);
    atomic_store(result, &qword_1EDD09D28);
  }

  return result;
}

uint64_t sub_1C70E1284(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217588, &unk_1C756A840);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70E1308()
{
  result = qword_1EDD09D20;
  if (!qword_1EDD09D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformGenerationInfo, &type metadata for FreeformGenerationInfo, v0, v1);
    atomic_store(result, &qword_1EDD09D20);
  }

  return result;
}

uint64_t Spatial3DCuration.Pregating.FailureCode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1C7551B2C();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t Spatial3DCuration.Pregating.FailureCode.rawValue.getter()
{
  result = 0x4973497465737361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x726F6353706F7263;
      break;
    case 3:
      result = 0x6E756F4365636166;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C70E14CC@<X0>(unint64_t *a1@<X8>)
{
  result = Spatial3DCuration.Pregating.FailureCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unsigned __int8 *static AssetGating.EligibilityChecker<>.buildSpatial3DEligibilityChecker(for:suggestionContext:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *result;
  if ((v9 >> 6) - 1 >= 2)
  {
    if (!(v9 >> 6))
    {
      OUTLINED_FUNCTION_3_37(result, a2, a3, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_8_22();
      if (v11)
      {
        v20 = OUTLINED_FUNCTION_15(v15);
        OUTLINED_FUNCTION_4_31(v20, v6);
        v4 = v21;
      }

      v29 = &type metadata for CropScore;
      v30 = sub_1C70E1FA8();
      *(v4 + 16) = v6;
      OUTLINED_FUNCTION_6_7(v4 + 40 * v7, v26, v28);
      v16 = v7 + 2;
      if (v16 > *(v4 + 24) >> 1)
      {
        OUTLINED_FUNCTION_0_52();
        v4 = v22;
      }

      v29 = &type metadata for SafeForDisplay;
      v30 = sub_1C70E1F54();
      *(v4 + 16) = v16;
      OUTLINED_FUNCTION_6_7(v4 + 40 * v6, v27, v28);
      sub_1C70E1FFC(a2, &v28);
      sub_1C70E1774(0, &v28);
      OUTLINED_FUNCTION_5_32();
      if (v11)
      {
        OUTLINED_FUNCTION_0_52();
        v4 = v23;
      }

      v29 = &type metadata for FaceCount;
      sub_1C70E206C();
      OUTLINED_FUNCTION_2_37();
      goto LABEL_14;
    }

    if (v9 == 192)
    {
      v4 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3_37(result, a2, a3, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_7_26();
    if (v11)
    {
      v24 = OUTLINED_FUNCTION_15(v17);
      OUTLINED_FUNCTION_4_31(v24, v5);
      v4 = v25;
    }

    v29 = &type metadata for Spatial3DWidgetResourceExists;
    v12 = sub_1C70E20C0();
  }

  else
  {
    OUTLINED_FUNCTION_3_37(result, a2, a3, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_7_26();
    if (v11)
    {
      v18 = OUTLINED_FUNCTION_15(v10);
      OUTLINED_FUNCTION_4_31(v18, v5);
      v4 = v19;
    }

    v29 = &type metadata for SafeForDisplay;
    v12 = sub_1C70E1F54();
  }

  v30 = v12;
  *(v4 + 16) = v5;
  v13 = v4 + 40 * v6;
LABEL_14:
  result = OUTLINED_FUNCTION_6_7(v13, v26, v28);
LABEL_15:
  *a4 = v9;
  *(a4 + 8) = v4;
  return result;
}

uint64_t sub_1C70E1774(char a1, uint64_t a2)
{
  sub_1C70E1FFC(a2, v7);
  v4 = v8;
  if (v8)
  {
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 16))(v4, v5);
    sub_1C70E2628(a2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1C70E2628(a2);
    sub_1C70E2628(v7);
  }

  return a1 & 1;
}

uint64_t static AssetGating.EligibilityChecker<>.buildSpatial3DEligibilityCheckerForWallpaperSuggestions(curationStage:suggestionContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  OUTLINED_FUNCTION_3_37(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_8_22();
  if (v11)
  {
    v15 = OUTLINED_FUNCTION_15(v10);
    OUTLINED_FUNCTION_4_31(v15, v5);
    v4 = v16;
  }

  v23 = &type metadata for CropScore;
  v24 = sub_1C70E1FA8();
  *(v4 + 16) = v5;
  OUTLINED_FUNCTION_6_7(v4 + 40 * v6, v19, v22);
  v12 = v6 + 2;
  if (v12 > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_52();
    v4 = v17;
  }

  v23 = &type metadata for SafeForDisplay;
  v24 = sub_1C70E1F54();
  *(v4 + 16) = v12;
  OUTLINED_FUNCTION_6_7(v4 + 40 * v5, v20, v22);
  sub_1C70E1FFC(a2, &v22);
  sub_1C70E1774(1, &v22);
  OUTLINED_FUNCTION_5_32();
  if (v11)
  {
    OUTLINED_FUNCTION_0_52();
    v4 = v18;
  }

  v23 = &type metadata for FaceCount;
  sub_1C70E206C();
  OUTLINED_FUNCTION_2_37();
  result = OUTLINED_FUNCTION_6_7(v13, v21, v22);
  *a4 = v9;
  *(a4 + 8) = v4;
  return result;
}

uint64_t sub_1C70E1948(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  v8 = MEMORY[0x1E69E7CD0];
  v6 = 0;
  v2 = [a1 mediaAnalysisProperties];
  v3 = [v2 faceCount];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 5;
  }

  [objc_opt_self() bestWallpaperCropForAsset:a1 classification:v4 outputCropScore:&v7 outputLayoutAcceptable:&v6];
  if ((v6 & 1) == 0)
  {
    sub_1C70F4960(v9, 1, 0xD000000000000018, 0x80000001C759DE60);
  }

  if (v7 < 0.4)
  {
    sub_1C70F4960(v9, 2, 0xD00000000000001ALL, 0x80000001C759DE80);
  }

  return v8;
}

uint64_t sub_1C70E1A9C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CD0];
  v4 = MEMORY[0x1E69E7CD0];
  if (([objc_opt_self() assetIsSafeForWidgetDisplay_] & 1) == 0)
  {
    sub_1C70F4960(&v3, 4, 0xD000000000000021, 0x80000001C759DE30);

    return v4;
  }

  return v1;
}

uint64_t sub_1C70E1E94(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CD0];
  type metadata accessor for Spatial3DAssetResourceUtils();
  v2 = static Spatial3DAssetResourceUtils.spatial3DAssetResource(for:resourceType:)(a1, 0x75);
  v3 = static Spatial3DAssetResourceUtils.spatial3DAssetResource(for:resourceType:)(a1, 0x76);
  if (v2)
  {
  }

  else
  {
    if (!v3)
    {
      sub_1C70F4960(&v5, 5, 0xD00000000000003BLL, 0x80000001C759DEF0);

      return v6;
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1C70E1F54()
{
  result = qword_1EDD0BF88;
  if (!qword_1EDD0BF88)
  {
    result = swift_getWitnessTable(byte_1C756AA78, &type metadata for SafeForDisplay, v0, v1);
    atomic_store(result, &qword_1EDD0BF88);
  }

  return result;
}

unint64_t sub_1C70E1FA8()
{
  result = qword_1EDD06CE0;
  if (!qword_1EDD06CE0)
  {
    result = swift_getWitnessTable(byte_1C756AA5C, &type metadata for CropScore, v0, v1);
    atomic_store(result, &qword_1EDD06CE0);
  }

  return result;
}

uint64_t sub_1C70E1FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219240, &qword_1C756A850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C70E206C()
{
  result = qword_1EDD06CD8;
  if (!qword_1EDD06CD8)
  {
    result = swift_getWitnessTable(byte_1C756AA40, &type metadata for FaceCount, v0, v1);
    atomic_store(result, &qword_1EDD06CD8);
  }

  return result;
}

unint64_t sub_1C70E20C0()
{
  result = qword_1EC217590;
  if (!qword_1EC217590)
  {
    result = swift_getWitnessTable(byte_1C756AA24, &type metadata for Spatial3DWidgetResourceExists, v0, v1);
    atomic_store(result, &qword_1EC217590);
  }

  return result;
}

unint64_t sub_1C70E2118()
{
  result = qword_1EDD0A9D8;
  if (!qword_1EDD0A9D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.Pregating.FailureCode, &type metadata for Spatial3DCuration.Pregating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EDD0A9D8);
  }

  return result;
}

unint64_t sub_1C70E216C(void *a1)
{
  a1[1] = sub_1C70E21AC();
  a1[2] = sub_1C70E2200();
  a1[3] = sub_1C70E2254();
  result = sub_1C70E22A8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C70E21AC()
{
  result = qword_1EDD0A9C8;
  if (!qword_1EDD0A9C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.Pregating.FailureCode, &type metadata for Spatial3DCuration.Pregating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EDD0A9C8);
  }

  return result;
}

unint64_t sub_1C70E2200()
{
  result = qword_1EDD0A9E8;
  if (!qword_1EDD0A9E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.Pregating.FailureCode, &type metadata for Spatial3DCuration.Pregating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EDD0A9E8);
  }

  return result;
}

unint64_t sub_1C70E2254()
{
  result = qword_1EDD0A9E0;
  if (!qword_1EDD0A9E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.Pregating.FailureCode, &type metadata for Spatial3DCuration.Pregating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EDD0A9E0);
  }

  return result;
}

unint64_t sub_1C70E22A8()
{
  result = qword_1EDD0A9D0;
  if (!qword_1EDD0A9D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.Pregating.FailureCode, &type metadata for Spatial3DCuration.Pregating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EDD0A9D0);
  }

  return result;
}

_BYTE *_s9PregatingOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s9PregatingO11FailureCodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C70E24BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1C70E2510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C70E2590()
{
  result = qword_1EC217598;
  if (!qword_1EC217598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.Pregating.FailureCode, &type metadata for Spatial3DCuration.Pregating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EC217598);
  }

  return result;
}

unint64_t sub_1C70E25E4()
{
  result = qword_1EDD0FAD0;
  if (!qword_1EDD0FAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FAD0);
  }

  return result;
}

uint64_t sub_1C70E2628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219240, &qword_1C756A850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Dendrogram.LinkageMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

double sub_1C70E2760(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(a1 + 32) = v1;
  }

  *(v1 + 16) = a1;

  return result;
}

double sub_1C70E280C(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(a1 + 32) = v1;
  }

  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_1C70E28B0()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
}

double sub_1C70E28E4(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

float sub_1C70E296C()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_1C70E299C(float a1)
{
  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1C70E2A48()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return sub_1C75504FC();
}

uint64_t sub_1C70E2A7C(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_1C70E2B04()
{
  OUTLINED_FUNCTION_3_38();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;

  sub_1C70E2760(v5);
  sub_1C70E280C(v2);

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 32) = v0;

  return v1;
}

uint64_t Dendrogram.LinkageNode.deinit()
{

  return v0;
}

uint64_t Dendrogram.LinkageNode.__deallocating_deinit()
{
  Dendrogram.LinkageNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t Dendrogram.distanceBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_distanceBlock);

  return v1;
}

uint64_t sub_1C70E2CBC()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return sub_1C75504FC();
}

uint64_t sub_1C70E2D08(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id Dendrogram.__allocating_init(distanceBlock:linkageMethod:)()
{
  OUTLINED_FUNCTION_3_38();
  v1 = objc_allocWithZone(v0);
  return Dendrogram.init(distanceBlock:linkageMethod:)();
}

id Dendrogram.init(distanceBlock:linkageMethod:)()
{
  OUTLINED_FUNCTION_3_38();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_labels] = 0;
  v5 = *v0;
  v6 = &v1[OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_distanceBlock];
  *v6 = v3;
  v6[1] = v2;
  v1[OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_linkageMethod] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_rootNodes] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_leafNodes] = v7;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

BOOL Dendrogram.isFitted.getter()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_leafNodes;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_1C75516BC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Dendrogram.fit(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2 >= 2)
  {
    v5 = v1;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    for (i = 0; i != v2; ++i)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08, &qword_1C7564EC0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C755BAB0;
      *(v7 + 32) = i;
      type metadata accessor for Dendrogram.LinkageNode();
      swift_allocObject();
      sub_1C70E2B04();
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    v8 = OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_leafNodes;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *&v5[v8] = v37;

    v9 = *&v5[v8];
    v10 = OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_rootNodes;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *&v5[v10] = v9;
    sub_1C75504FC();

    v11 = sub_1C71CD888(0, v2);
    v31 = OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_labels;
    *&v5[OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_labels] = v11;

    v33 = v2;
    v34 = v5;
    v32 = v10;
    while (2)
    {
      v12 = v5;
      sub_1C75504FC();
      v13 = sub_1C75504FC();
      v14 = sub_1C70E33E8(v13, v12, v12, a1._rawValue);
      v16 = v15;

      swift_beginAccess();
      if (v14 >= v16)
      {
        v18 = OUTLINED_FUNCTION_6_37();
        sub_1C70E391C(v18);

        sub_1C70E391C(v16);
      }

      else
      {
        sub_1C70E391C(v16);

        v17 = OUTLINED_FUNCTION_6_37();
        sub_1C70E391C(v17);
      }

      swift_endAccess();

      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      sub_1C75504FC();
      v19 = sub_1C75504FC();
      sub_1C6FD2FA8(v19);
      swift_allocObject();
      sub_1C70E2B04();
      swift_beginAccess();

      MEMORY[0x1CCA5D040](v20);
      OUTLINED_FUNCTION_6_37();
      sub_1C6FB6328();
      OUTLINED_FUNCTION_6_37();
      sub_1C7550BEC();
      swift_endAccess();
      v36 = sub_1C71CD888(0, v2);
      v21 = *&v5[v10];
      v22 = sub_1C6FB6304();
      sub_1C75504FC();
      v23 = 0;
LABEL_10:
      for (j = v23; v22 != j; ++j)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1CCA5DDD0](j, v21);
        }

        else
        {
          if (j >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v25 = *(v21 + 8 * j + 32);
        }

        v23 = j + 1;
        if (__OFADD__(j, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_0_53();
        swift_beginAccess();
        v26 = *(v25 + 48);
        v27 = *(v26 + 16);
        if (v27)
        {
          sub_1C75504FC();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v28 = v36;
          }

          else
          {
            sub_1C70E3DDC(v36);
          }

          v29 = 32;
          while (1)
          {
            v30 = *(v26 + v29);
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_31;
            }

            if (v30 >= *(v28 + 16))
            {
              goto LABEL_32;
            }

            *(v28 + 32 + 8 * v30) = j;
            v29 += 8;
            if (!--v27)
            {
              v36 = v28;

              goto LABEL_10;
            }
          }
        }
      }

      v5 = v34;
      *&v34[v31] = v36;

      v10 = v32;
      v2 = v33;
      if (sub_1C6FB6304() > 1)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v3 = sub_1C70E3DF0();
    OUTLINED_FUNCTION_166_0(&type metadata for Dendrogram.Error, v3);
    *v4 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1C70E33E8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (result - 1 < 0)
  {
    goto LABEL_70;
  }

  if (result == 1)
  {
    v37 = -1;
    goto LABEL_56;
  }

  v42 = result - 1;
  v8 = a3 + OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_distanceBlock;
  v48 = v6 & 0xC000000000000001;
  v44 = v6;
  v45 = result;
  v39 = OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_linkageMethod;
  v40 = v6 + 32;
  v9 = a4 + 32;
  v38 = a3;
  v46 = a3;
  result = sub_1C75504FC();
  v10 = v45;
  v11 = 0;
  v12 = 3.4028e38;
  v50 = -1;
  v51 = -1;
  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      result = sub_1C75516BC();
      goto LABEL_3;
    }

    if (v10 < v13)
    {
      goto LABEL_67;
    }

    v43 = v11 + 1;
    if (v13 != v10)
    {
      break;
    }

LABEL_10:
    v11 = v43;
    if (v43 == v42)
    {
      goto LABEL_61;
    }
  }

  if (v13 >= v10)
  {
    goto LABEL_71;
  }

  v49 = v11;
  sub_1C6FB6330();
  sub_1C6FB6330();
  sub_1C6FB6330();
  result = v49;
  v47 = *(a2 + v39);
  v53 = v13;
  while (1)
  {
    if (v48)
    {
      v52 = MEMORY[0x1CCA5DDD0](result, v44);
      v60 = MEMORY[0x1CCA5DDD0](v53, v44);
    }

    else
    {
      v14 = *(v40 + 8 * v53);
      v52 = *(v40 + 8 * result);

      v60 = v14;
    }

    if (v47)
    {
      swift_beginAccess();
      a3 = *(v52 + 48);
      v56 = a3[2];
      if (v56)
      {
        v54 = a3 + 4;
        v15 = v46;
        sub_1C75504FC();
        sub_1C75504FC();
        swift_beginAccess();
        v6 = 0;
        v16 = 0.0;
        v58 = a3;
        while (1)
        {
          if (v6 >= a3[2])
          {
            __break(1u);
            goto LABEL_63;
          }

          v17 = *(v60 + 48);
          v18 = *(v17 + 16);
          if (v18)
          {
            break;
          }

LABEL_30:
          if (++v6 == v56)
          {
            goto LABEL_45;
          }
        }

        v19 = v54[v6];
        sub_1C75504FC();
        if (v19 < 0)
        {
          goto LABEL_65;
        }

        v20 = 32;
        while (1)
        {
          v21 = *(a4 + 16);
          if (v19 >= v21)
          {
            goto LABEL_58;
          }

          v22 = *(v17 + v20);
          v23 = *v8;
          v62 = *(v9 + 8 * v19);
          if (v22 >= v21)
          {
            goto LABEL_59;
          }

          v61 = *(v9 + 8 * v22);
          sub_1C75504FC();
          sub_1C75504FC();
          v24 = v23(&v62, &v61);

          if (v16 < v24)
          {
            v16 = v24;
          }

          v20 += 8;
          if (!--v18)
          {

            a3 = v58;
            goto LABEL_30;
          }
        }
      }

      v16 = 0.0;
      goto LABEL_48;
    }

    swift_beginAccess();
    a3 = *(v52 + 48);
    v57 = a3[2];
    if (v57)
    {
      break;
    }

    v16 = 3.4028e38;
LABEL_48:
    v6 = v53;
    a3 = (v53 + 1);

    v34 = v16 < v12;
    if (v16 >= v12)
    {
      v35 = v51;
    }

    else
    {
      v12 = v16;
      v35 = v53;
    }

    result = v49;
    v36 = v50;
    if (v34)
    {
      v36 = v49;
    }

    v50 = v36;
    v51 = v35;
    ++v53;
    v10 = v45;
    if (a3 == v45)
    {
      goto LABEL_10;
    }
  }

  v55 = a3 + 4;
  v25 = v46;
  sub_1C75504FC();
  sub_1C75504FC();
  swift_beginAccess();
  v6 = 0;
  v16 = 3.4028e38;
  v59 = a3;
  while (2)
  {
    if (v6 >= a3[2])
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v26 = *(v60 + 48);
    v27 = *(v26 + 16);
    if (!v27)
    {
LABEL_44:
      if (++v6 == v57)
      {
LABEL_45:

        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  v28 = v55[v6];
  sub_1C75504FC();
  if (v28 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v29 = 32;
  while (1)
  {
    v30 = *(a4 + 16);
    if (v28 >= v30)
    {
      break;
    }

    v31 = *(v26 + v29);
    v32 = *v8;
    v62 = *(v9 + 8 * v28);
    if (v31 >= v30)
    {
      goto LABEL_60;
    }

    v61 = *(v9 + 8 * v31);
    sub_1C75504FC();
    sub_1C75504FC();
    v33 = v32(&v62, &v61);

    if (v33 < v16)
    {
      v16 = v33;
    }

    v29 += 8;
    if (!--v27)
    {

      a3 = v59;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:

  a3 = v38;
  v37 = v50;
LABEL_56:

  return v37;
}

unint64_t sub_1C70E391C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C70E4320(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_1C7423CF8((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t Dendrogram.predict()()
{
  if (Dendrogram.isFitted.getter() && *(v0 + OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_labels))
  {
    return sub_1C75504FC();
  }

  v2 = sub_1C70E3DF0();
  v3 = OUTLINED_FUNCTION_166_0(&type metadata for Dendrogram.Error, v2);
  return OUTLINED_FUNCTION_7_27(v3, v4);
}

PhotosIntelligence::FloatVector __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Dendrogram.heightScores()()
{
  v2 = v0;
  if (Dendrogram.isFitted.getter())
  {
    v3 = OBJC_IVAR____TtC18PhotosIntelligence10Dendrogram_leafNodes;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = sub_1C6FB6304();
    result.elements._rawValue = sub_1C75504FC();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v5 == v7)
      {

        *v2 = v8;
        return result;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        result.elements._rawValue = MEMORY[0x1CCA5DDD0](v7, v4);
        rawValue = result.elements._rawValue;
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        rawValue = *(v4 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v10 = rawValue[4];
      if (!v10)
      {

        v18 = sub_1C70E3DF0();
        OUTLINED_FUNCTION_166_0(&type metadata for Dendrogram.Error, v18);
        *v19 = 2;
        swift_willThrow();
      }

      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v11 = *(v10 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1B5C();
        v8 = v13;
      }

      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1C6FB1B5C();
        v8 = v14;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 4 * v12 + 32) = v11;
      ++v7;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v15 = sub_1C70E3DF0();
    v16 = OUTLINED_FUNCTION_166_0(&type metadata for Dendrogram.Error, v15);
    return OUTLINED_FUNCTION_7_27(v16, v17);
  }

  return result;
}

id Dendrogram.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Dendrogram.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C70E3DF0()
{
  result = qword_1EC2175D0;
  if (!qword_1EC2175D0)
  {
    result = swift_getWitnessTable(byte_1C756AC10, &type metadata for Dendrogram.Error, v0, v1);
    atomic_store(result, &qword_1EC2175D0);
  }

  return result;
}

unint64_t sub_1C70E3E48()
{
  result = qword_1EC2175D8;
  if (!qword_1EC2175D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Dendrogram.LinkageMethod, &type metadata for Dendrogram.LinkageMethod, v0, v1);
    atomic_store(result, &qword_1EC2175D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Dendrogram.LinkageMethod(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Dendrogram.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70E426C()
{
  result = qword_1EC2175E0;
  if (!qword_1EC2175E0)
  {
    result = swift_getWitnessTable(aA_25, &type metadata for Dendrogram.Error, v0, v1);
    atomic_store(result, &qword_1EC2175E0);
  }

  return result;
}

uint64_t sub_1C70E4320(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C75516BC();
  }

  return sub_1C75518CC();
}

uint64_t static FeatureSurveySliderAnswer.smileyString(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0x8FB8EF8981E2;
  switch(v1)
  {
    case 1:
      result = 2694356976;
      break;
    case 2:
      result = 2174328816;
      break;
    case 3:
      result = 2425921520;
      break;
    case 4:
      result = 2191106032;
      break;
    case 5:
      result = 2846138352;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t static FeatureSurveySliderAnswer.string(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0x726577736E616E55;
  switch(v1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6565726761736944;
      break;
    case 3:
      result = 0x6C61727475654ELL;
      break;
    case 4:
      result = 0x6565726741;
      break;
    case 5:
      result = 0x796C676E6F727453;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::FeatureSurveySliderAnswer_optional __swiftcall FeatureSurveySliderAnswer.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if ((rawValue + 1) < 6)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C70E454C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureSurveySliderAnswer.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C70E45A8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_34(a1);
  v2 = *(v1 + 89);
  if (((v2 - 1) & 0xFB) != 0)
  {
    return 0;
  }

  if (v2 < 3)
  {
    v4 = 48;
LABEL_7:
    v3 = *(v1 + v4);
    sub_1C75504FC();
    return v3;
  }

  if (v2 != 3)
  {
    v4 = 32;
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1C70E4658()
{
  v0 = sub_1C6FA7014();
  OUTLINED_FUNCTION_0_34(v0);
  return sub_1C75513CC();
}

uint64_t FeatureSurveySmileyQuestion.__deallocating_deinit()
{
  FeatureSurveyQuestion.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C70E46D4()
{
  result = qword_1EC2175E8;
  if (!qword_1EC2175E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureSurveySliderAnswer, &type metadata for FeatureSurveySliderAnswer, v0, v1);
    atomic_store(result, &qword_1EC2175E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureSurveySliderAnswer(_BYTE *result, unsigned int a2, unsigned int a3)
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

id MessagesBackdrop.Fetcher.fetchPickerFeaturedSuggestions(maxNumberOfSuggestions:)(uint64_t a1)
{
  v5 = *v1;
  if (qword_1EC213DC8 != -1)
  {
    OUTLINED_FUNCTION_1_43();
    swift_once();
  }

  v6 = qword_1EDD0B148;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v7 = v6;
  PerformanceMeasure.init(name:log:)();
  v8 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  if (a1 >= 50)
  {
    v9 = 50;
  }

  else
  {
    v9 = a1;
  }

  *&v61 = v5;
  v10 = sub_1C70E4ED8(0x321u, v9);
  v11 = [v10 fetchedObjectIDs];

  if (v11)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
    OUTLINED_FUNCTION_63();
    v8 = sub_1C7550B5C();
  }

  sub_1C6FD3044(v8);
  if (sub_1C6FB6304() < a1)
  {
    v12 = sub_1C6FB6304();
    if (__OFSUB__(a1, v12))
    {
      __break(1u);
LABEL_37:
      OUTLINED_FUNCTION_0_54();
      swift_once();
      goto LABEL_20;
    }

    if (a1 - v12 >= 25)
    {
      v13 = 25;
    }

    else
    {
      v13 = a1 - v12;
    }

    *&v61 = v5;
    v14 = sub_1C70E4ED8(0x322u, v13);
    v15 = [v14 fetchedObjectIDs];

    if (v15)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
      OUTLINED_FUNCTION_63();
      v16 = sub_1C7550B5C();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6FD3044(v16);
  }

  v3 = &unk_1EDD0B000;
  v2 = "QueryTokenCategoryTypeString";
  if (sub_1C6FB6304() >= a1 || ![objc_opt_self() includeRelatedMessagesBackdropSuggestions])
  {
    goto LABEL_30;
  }

  if (qword_1EDD0B140 != -1)
  {
    goto LABEL_37;
  }

LABEL_20:
  v17 = sub_1C754FF1C();
  __swift_project_value_buffer(v17, qword_1EC2175F0);
  v18 = sub_1C754FEEC();
  sub_1C755117C();
  v19 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_11_3();
    v21 = swift_slowAlloc();
    *v21 = *(v2 + 335);
    *(v21 + 4) = sub_1C6FB6304();
    *(v21 + 12) = 2048;
    *(v21 + 14) = a1;
    OUTLINED_FUNCTION_6_38();
    _os_log_impl(v22, v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  result = sub_1C6FB6304();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    return result;
  }

  if (a1 - result >= 25)
  {
    v29 = 25;
  }

  else
  {
    v29 = a1 - result;
  }

  v64 = v5;
  v61 = xmmword_1C756AD70;
  v30 = sub_1C70E5238(&v61, v29);
  v31 = [v30 fetchedObjectIDs];

  if (v31)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
    OUTLINED_FUNCTION_63();
    v32 = sub_1C7550B5C();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  sub_1C6FD3044(v32);
  swift_endAccess();
LABEL_30:
  if (v3[40] != -1)
  {
    OUTLINED_FUNCTION_0_54();
    swift_once();
  }

  v33 = sub_1C754FF1C();
  __swift_project_value_buffer(v33, qword_1EC2175F0);
  sub_1C75504FC();
  v34 = sub_1C754FEEC();
  sub_1C755117C();
  v35 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_11_3();
    v37 = swift_slowAlloc();
    *v37 = *(v2 + 335);
    *(v37 + 4) = sub_1C6FB6304();

    *(v37 + 12) = 2048;
    *(v37 + 14) = a1;
    OUTLINED_FUNCTION_6_38();
    _os_log_impl(v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v44 = sub_1C75504FC();
  sub_1C71BA844(v44, v52, v53, v45, v46, v47, v48, v49, v50, v51, v61, *(&v61 + 1), v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);

  v54 = sub_1C755068C();
  v56 = v55;
  objc_allocWithZone(MEMORY[0x1E69788E0]);
  v57 = v5;
  v58 = OUTLINED_FUNCTION_63();
  v60 = sub_1C70E7DFC(v58, v59, v54, v56, 0, 0, 0, 0);

  sub_1C6F85170();

  return v60;
}

uint64_t sub_1C70E4DD0()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD0B148 = result;
  return result;
}

uint64_t sub_1C70E4E4C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2175F0);
  __swift_project_value_buffer(v0, qword_1EC2175F0);
  if (qword_1EC213DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD0B148;
  return sub_1C754FF2C();
}

id sub_1C70E4ED8(unsigned __int16 a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDD0B140 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC2175F0);
  v7 = sub_1C754FEEC();
  v8 = sub_1C755117C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v34 = v5;
    v10 = a2;
    v11 = swift_slowAlloc();
    v35 = v11;
    *v9 = 136315138;
    v12 = PHSuggestionStringWithSubtype();
    v13 = a1;
    v14 = sub_1C755068C();
    v16 = v15;

    v17 = v14;
    a1 = v13;
    v18 = sub_1C6F765A4(v17, v16, &v35);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Fetching %s suggestions", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v19 = v11;
    a2 = v10;
    v5 = v34;
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  v35 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217610, &qword_1C756ADE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = a1;
  v21 = sub_1C70E5870(8, inited, 0);
  swift_setDeallocating();
  v22 = [objc_opt_self() randomizedSuggestionsFromSuggestions:v21 limit:a2];
  v23 = v21;
  v24 = sub_1C754FEEC();
  v25 = sub_1C755117C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 134218498;
    *(v26 + 4) = [v22 count];

    *(v26 + 12) = 2048;
    *(v26 + 14) = [v23 count];

    *(v26 + 22) = 2080;
    v28 = PHSuggestionStringWithSubtype();
    v29 = sub_1C755068C();
    v31 = v30;

    v32 = sub_1C6F765A4(v29, v31, &v35);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_1C6F5C000, v24, v25, "Randomly selected %ld/%ld %s suggestions", v26, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1CCA5F8E0](v27, -1, -1);
    MEMORY[0x1CCA5F8E0](v26, -1, -1);
  }

  else
  {
  }

  return v22;
}

id sub_1C70E5238(__int128 *a1, uint64_t a2)
{
  v14 = *v2;
  v13 = *a1;
  v4 = MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v13);
  v5 = [objc_opt_self() randomizedSuggestionsFromSuggestions:v4 limit:a2];
  if (qword_1EDD0B140 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC2175F0);
  v7 = v5;
  v8 = v4;
  v9 = sub_1C754FEEC();
  v10 = sub_1C755117C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = [v7 count];

    *(v11 + 12) = 2048;
    *(v11 + 14) = [v8 count];

    _os_log_impl(&dword_1C6F5C000, v9, v10, "Randomly selected %ld/%ld suggestions.", v11, 0x16u);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  return v7;
}

uint64_t MessagesBackdrop.Fetcher.fetchPosterSuggestions(conversationID:)(uint64_t a1, unint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  *&v40 = *v2;
  v7 = sub_1C70E4ED8(0x321u, 8);
  v8 = [v7 fetchedObjects];

  if (v8)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    OUTLINED_FUNCTION_63();
    v6 = sub_1C7550B5C();
  }

  sub_1C6FD3084(v6);
  *&v40 = v5;
  v9 = sub_1C70E4ED8(0x322u, 4);
  v10 = [v9 fetchedObjects];

  if (v10)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    OUTLINED_FUNCTION_63();
    v11 = sub_1C7550B5C();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6FD3084(v11);
  v12 = static MessagesBackdrop.Utilities.sanitizeConversationID(conversationID:)(a1, a2);
  v14 = v13;
  *&v40 = 0;
  v15 = [objc_opt_self() openPhotoLibraryWithWellKnownIdentifier:3 error:&v40];
  v16 = &unk_1EDD0B000;
  if (v15)
  {
    v17 = v15;
    v18 = qword_1EDD0B140;
    v19 = v40;
    if (v18 != -1)
    {
      OUTLINED_FUNCTION_0_54();
      swift_once();
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, qword_1EC2175F0);
    sub_1C75504FC();
    v21 = sub_1C754FEEC();
    v22 = sub_1C755117C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v40 = v24;
      *v23 = 136315138;
      v25 = sub_1C6F765A4(v12, v14, &v40);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Fetching suggestions for conversation: %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v16 = &unk_1EDD0B000;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C755BAB0;
    *(v28 + 32) = a1;
    *(v28 + 40) = a2;
    *&v40 = 0;
    *(&v40 + 1) = v28;
    sub_1C75504FC();
    v29 = sub_1C70E5238(&v40, 4);
    sub_1C70E7F30(v40);
    v30 = [v29 fetchedObjects];

    if (v30)
    {
      sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
      v31 = sub_1C7550B5C();
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6FD3084(v31);
  }

  else
  {
    v26 = v40;

    v27 = sub_1C754DBEC();

    swift_willThrow();
  }

  if (v16[40] != -1)
  {
    OUTLINED_FUNCTION_0_54();
    swift_once();
  }

  v32 = sub_1C754FF1C();
  __swift_project_value_buffer(v32, qword_1EC2175F0);
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755117C();
  v35 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v33, v34, "Returning total %ld suggestions.", v37, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v39;
}

id sub_1C70E5870(__int16 a1, uint64_t a2, void *a3)
{
  v4 = [*v3 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C7564A90;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v5 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v5 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
  sub_1C71F8834(v5, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C756AD80;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C755F060;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C6F6D524();
  *(v9 + 64) = v11;
  *(v9 + 32) = 0x6574617473;
  *(v9 + 40) = 0xE500000000000000;
  v12 = MEMORY[0x1E69E75F8];
  v13 = MEMORY[0x1E69E7660];
  *(v9 + 96) = MEMORY[0x1E69E75F8];
  *(v9 + 104) = v13;
  *(v9 + 72) = 2;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = 0x6574617473;
  *(v9 + 120) = 0xE500000000000000;
  *(v9 + 176) = v12;
  *(v9 + 184) = v13;
  *(v9 + 152) = 4;
  *(v8 + 32) = sub_1C755112C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C75604F0;
  *(v14 + 56) = v10;
  *(v14 + 64) = v11;
  *(v14 + 32) = 1701869940;
  *(v14 + 40) = 0xE400000000000000;
  *(v14 + 96) = v12;
  *(v14 + 104) = v13;
  *(v14 + 72) = a1;
  *(v8 + 40) = sub_1C755112C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C75604F0;
  *(v15 + 56) = v10;
  *(v15 + 64) = v11;
  *(v15 + 32) = 0x65707974627573;
  *(v15 + 40) = 0xE700000000000000;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v34 = v4;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C716DDD4(0, v16, 0);
    v17 = v38;
    v18 = (a2 + 32);
    v19 = *(v38 + 16);
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = *(v38 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1C716DDD4(v22 > 1, v19 + 1, 1);
      }

      *(v38 + 16) = v19 + 1;
      *(v38 + 2 * v19++ + 32) = v20;
      --v16;
    }

    while (v16);
    v4 = v34;
  }

  *(v15 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
  *(v15 + 104) = sub_1C70E8188(&qword_1EDD0CF08, &qword_1EC219300, &unk_1C7577770);
  *(v15 + 72) = v17;
  *(v8 + 48) = sub_1C755112C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C755BAB0;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = v11;
  *(v23 + 32) = 0xD000000000000011;
  *(v23 + 40) = 0x80000001C759E260;
  *(v8 + 56) = sub_1C755112C();
  if (a3)
  {
    v24 = a3;
    MEMORY[0x1CCA5D040]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  v25 = sub_1C6F6E5C4(v8);
  [v4 setPredicate_];

  v26 = [objc_opt_self() fetchSuggestionsWithOptions_];
  v27 = [objc_opt_self() filterSuggestions:v26 includingSingleFeature:16];
  if (qword_1EDD0B140 != -1)
  {
    swift_once();
  }

  v28 = sub_1C754FF1C();
  __swift_project_value_buffer(v28, qword_1EC2175F0);
  v29 = v27;
  v30 = sub_1C754FEEC();
  v31 = sub_1C755117C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = [v29 count];

    _os_log_impl(&dword_1C6F5C000, v30, v31, "Found %ld suggestions", v32, 0xCu);
    MEMORY[0x1CCA5F8E0](v32, -1, -1);
  }

  else
  {

    v26 = v4;
    v4 = v29;
  }

  return v29;
}

id MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 < 0)
  {
    if (*a1 == 1)
    {
      v4 = 0;
      v5 = &unk_1F46A7868;
LABEL_9:
      v6 = 14;
LABEL_15:
      v7 = sub_1C70E5870(v6, v5, v4);

      return v7;
    }

    if (*a1 == 2)
    {
      v4 = 0;
      v5 = &unk_1F46A7890;
      goto LABEL_14;
    }
  }

  else
  {
    if (v1)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1C75604F0;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1C6F6D524();
      *(v3 + 32) = 0x747865746E6F63;
      *(v3 + 40) = 0xE700000000000000;
      *(v3 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      *(v3 + 104) = sub_1C70E8188(&qword_1EDD0FAF0, &unk_1EC217A00, &qword_1C755BD70);
      *(v3 + 72) = v1;
      sub_1C75504FC();
      v4 = sub_1C755112C();
    }

    else
    {
      v4 = 0;
    }

    if (!v2)
    {
      v5 = &unk_1F46A7818;
      goto LABEL_9;
    }

    if (v2 == 2)
    {
      v5 = &unk_1F46A7840;
LABEL_14:
      v6 = 8;
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_3_39(v9, v10, &type metadata for MessagesBackdrop.CurationContext, v11, v12);
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_3_39(v13, v14, &type metadata for MessagesBackdrop.PresentationTarget, v15, v16);
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

id MessagesBackdrop.Fetcher.fetchCandidateAssets(for:since:)(void *a1, uint64_t a2)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = static MessagesBackdrop.Fetcher.baseFetchOptions(for:)(result);

    v7 = static CurationPredicateBuilder.internalPredicateForMessagesBackdropAssets(lastUpdatedDate:)(a2);
    [v6 setInternalPredicate_];

    v8 = [objc_opt_self() fetchAssetsInAssetCollection:a1 options:v6];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static MessagesBackdrop.Fetcher.baseFetchOptions(for:)(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  [v1 setIncludeGuestAssets_];
  if (qword_1EC213FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C7550B3C();
  [v1 setFetchPropertySets_];

  [v1 setCacheSizeForFetch_];
  [v1 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C755BAA0;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = sub_1C6F6AF98(0xD000000000000026, 0x80000001C759E130, 0);
  v6 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v8 = sub_1C6F6AF98(0x7461446465646461, 0xE900000000000065, 0);
  *(v3 + 88) = v6;
  *(v3 + 64) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  *(v3 + 120) = v6;
  *(v3 + 96) = v10;
  sub_1C70E7F40(v3, v1);
  return v1;
}

char *MessagesBackdrop.Fetcher.fetchAssetsGroupedByConversationID(guestAssets:)(uint64_t a1)
{
  v3 = v2;
  v5 = *v1;
  if (qword_1EC213DC8 != -1)
  {
LABEL_74:
    OUTLINED_FUNCTION_1_43();
    swift_once();
  }

  v6 = qword_1EDD0B148;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v7 = v6;
  v8 = PerformanceMeasure.init(name:log:)();
  v9 = &unk_1EDD0B000;
  if ([a1 count] < 1)
  {
    if (qword_1EDD0B140 != -1)
    {
      OUTLINED_FUNCTION_0_54();
      swift_once();
    }

    v27 = sub_1C754FF1C();
    v28 = __swift_project_value_buffer(v27, qword_1EC2175F0);
    v29 = sub_1C754FEEC();
    sub_1C755117C();
    v30 = OUTLINED_FUNCTION_23();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_96_0();
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "No guest assets found. Return";
    goto LABEL_18;
  }

  v10 = objc_opt_self();
  v11 = [v5 librarySpecificFetchOptions];
  v12 = [v10 fetchMomentUUIDByAssetUUIDForAssets:a1 options:v11];

  if (!v12)
  {
LABEL_14:
    if (qword_1EDD0B140 != -1)
    {
      OUTLINED_FUNCTION_0_54();
      swift_once();
    }

    v34 = sub_1C754FF1C();
    v28 = __swift_project_value_buffer(v34, qword_1EC2175F0);
    v29 = sub_1C754FEEC();
    sub_1C755117C();
    v35 = OUTLINED_FUNCTION_23();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_96_0();
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Found empty momentUUIDByAssetUUID. Return";
LABEL_18:
    _os_log_impl(&dword_1C6F5C000, v29, v28, v33, v32, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150, &qword_1C756AD90);
    v9 = sub_1C75504DC();
    v37 = 0;
    goto LABEL_20;
  }

  v13 = sub_1C75504AC();

  if (!*(v13 + 16))
  {

    goto LABEL_14;
  }

  if (qword_1EDD0B140 != -1)
  {
    OUTLINED_FUNCTION_0_54();
    swift_once();
  }

  v14 = sub_1C754FF1C();
  v15 = __swift_project_value_buffer(v14, qword_1EC2175F0);
  sub_1C75504FC();
  v16 = a1;
  v91 = v15;
  v17 = sub_1C754FEEC();
  sub_1C755117C();
  v18 = OUTLINED_FUNCTION_72();
  v20 = "QueryTokenCategoryTypeString";
  v95 = v16;
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_11_3();
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(v13 + 16);

    *(v9 + 6) = 2048;
    *(v9 + 14) = [v16 count];

    OUTLINED_FUNCTION_6_38();
    _os_log_impl(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    v17 = v16;
  }

  v98 = MEMORY[0x1E69E7CD0];
  v97 = v5;
  v39 = sub_1C75504FC();
  v5 = sub_1C71CDA3C(v39);
  v40 = sub_1C70E6DD0(v5);
  if (v3)
  {

    sub_1C6F85170();

    return v9;
  }

  v94 = v40;

  v41 = v16;
  v96 = [v16 count];
  if ((v96 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v88 = 0;
  v42 = 0;
  v90 = MEMORY[0x1E69E7CC8];
  a1 = MEMORY[0x1E69E7CD0];
  v92 = v8;
  v93 = v13;
LABEL_27:
  v3 = a1 + 56;
LABEL_28:
  v43 = v42;
  while (v43 != v96)
  {
    if (v43 >= v96)
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_73;
    }

    v44 = [v41 objectAtIndexedSubscript_];
    v45 = sub_1C6FCA214(v44);
    if (!v46)
    {
      goto LABEL_76;
    }

    v5 = v46;
    if (!*(v13 + 16))
    {

      goto LABEL_28;
    }

    v47 = sub_1C6F78124(v45, v46);
    v49 = v48;

    if (v49)
    {
      v50 = *(v13 + 56) + 16 * v47;
      v5 = *v50;
      v51 = *(v50 + 8);
      if (*(a1 + 16))
      {
        v52 = v8;
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v53 = sub_1C7551FAC();
        v54 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v55 = v53 & v54;
          if (((*(v3 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
          {
            break;
          }

          v56 = (*(a1 + 48) + 16 * v55);
          if (*v56 != v5 || v56[1] != v51)
          {
            v58 = sub_1C7551DBC();
            v53 = v55 + 1;
            if ((v58 & 1) == 0)
            {
              continue;
            }
          }

          v43 = v42;
          v8 = v52;
          v13 = v93;
          goto LABEL_46;
        }

        v8 = v52;
        v13 = v93;
      }

      else
      {
        sub_1C75504FC();
      }

      if (!v94[2])
      {

        goto LABEL_45;
      }

      sub_1C6F78124(v5, v51);
      if (v59)
      {
        sub_1C75504FC();
        v60 = sub_1C70E7FB0([v44 curationProperties]);
        v41 = v95;
        if (v61)
        {
          v62 = v60;
          v63 = v61;
          sub_1C6FC0A8C(v88, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v97 = v90;
          v85 = v62;
          v89 = v63;
          sub_1C6F78124(v62, v63);
          v86 = v64;
          v8 = v92;
          if (__OFADD__(*(v90 + 16), (v64 & 1) == 0))
          {
            goto LABEL_77;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151B0, &qword_1C755C758);
          v65 = sub_1C7551A2C();
          v90 = v97;
          if (v65)
          {
            sub_1C6F78124(v85, v63);
            v67 = v86;
            if ((v86 & 1) != (v66 & 1))
            {
              goto LABEL_79;
            }
          }

          else
          {
            v67 = v86;
          }

          if ((v67 & 1) == 0)
          {
            sub_1C6FCABE4();
            sub_1C75504FC();
          }

          v68 = sub_1C75504FC();
          sub_1C6FD242C(v68);
          v87 = v44;
          sub_1C75504FC();
          sub_1C75504FC();
          v69 = sub_1C754FEEC();
          v70 = sub_1C755117C();

          v83 = v70;
          log = v69;
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            *v71 = 134218498;
            v72 = sub_1C6FB6304();

            *(v71 + 4) = v72;

            *(v71 + 12) = 2080;
            v73 = sub_1C6F765A4(v85, v89, &v97);

            *(v71 + 14) = v73;
            *(v71 + 22) = 2080;
            v74 = sub_1C70CAC04(v87);
            v76 = v75;

            if (!v76)
            {
              goto LABEL_78;
            }

            v77 = sub_1C6F765A4(v74, v76, &v97);

            *(v71 + 24) = v77;
            _os_log_impl(&dword_1C6F5C000, log, v83, "Found %ld candidateAssets for conversation %s through guest asset %s", v71, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          sub_1C70F082C(&v97, v5, v51);

          v88 = sub_1C6FC0A88;
          a1 = v98;
          v20 = "QueryTokenCategoryTypeString";
          v41 = v95;
          goto LABEL_27;
        }

        v43 = v42;
        v20 = "QueryTokenCategoryTypeString";
        v8 = v92;
      }

      else
      {

        v43 = v42;
        v20 = "QueryTokenCategoryTypeString";
        v41 = v95;
        v8 = v92;
      }
    }

    else
    {

LABEL_45:
      v43 = v42;
LABEL_46:
      v20 = "QueryTokenCategoryTypeString";
      v41 = v95;
    }
  }

  v78 = v41;
  v79 = sub_1C754FEEC();
  sub_1C755117C();
  v80 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v80, v81))
  {
    OUTLINED_FUNCTION_11_3();
    v82 = swift_slowAlloc();
    *v82 = *(v20 + 335);
    v9 = v90;
    *(v82 + 4) = *(v90 + 16);
    *(v82 + 12) = 2048;
    *(v82 + 14) = [v78 count];

    _os_log_impl(&dword_1C6F5C000, v79, v91, "Found %ld conversations connected to %ld guest assets", v82, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    v79 = v78;
    v9 = v90;
  }

  v37 = v88;
LABEL_20:
  sub_1C6F85170();

  sub_1C6FC0A8C(v37, 0);
  return v9;
}

void *sub_1C70E6DD0(void *a1)
{
  v4 = *v1;
  if (qword_1EC213DC8 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v5 = qword_1EDD0B148;
    type metadata accessor for PerformanceMeasure(0);
    swift_allocObject();
    v6 = v5;
    PerformanceMeasure.init(name:log:)();
    if (!a1[2])
    {
      if (qword_1EDD0B140 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_23;
    }

    v7 = static MessagesBackdrop.Fetcher.baseFetchOptions(for:)(v4);
    v9 = static CurationPredicateBuilder.internalPredicateForMessagesBackdropRelatedAssets(in:)(a1, v8);
    [v7 setInternalPredicate_];

    v10 = [objc_opt_self() fetchAssetsWithOptions_];
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v4 librarySpecificFetchOptions];
    v4 = [v11 fetchMomentUUIDByAssetUUIDForAssets:v12 options:v13];

    if (!v4)
    {
      break;
    }

    v54 = v7;
    v14 = sub_1C75504AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150, &qword_1C756AD90);
    v2 = sub_1C75504DC();
    v55 = [v12 count];
    if ((v55 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_44:
      swift_once();
LABEL_23:
      v37 = sub_1C754FF1C();
      __swift_project_value_buffer(v37, qword_1EC2175F0);
      v38 = sub_1C754FEEC();
      v39 = sub_1C755119C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C6F5C000, v38, v39, "Empty momentUUIDs. Return", v40, 2u);
        MEMORY[0x1CCA5F8E0](v40, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150, &qword_1C756AD90);
      v2 = sub_1C75504DC();
      i = 0;
LABEL_28:
      sub_1C6F85170();

      sub_1C6FC0A8C(i, 0);
      return v2;
    }

    a1 = 0;
    for (i = 0; ; i = sub_1C6FC0A88)
    {
      if (v55 == a1)
      {

        goto LABEL_28;
      }

      if (__OFADD__(a1, 1))
      {
        break;
      }

      v16 = [v12 objectAtIndexedSubscript_];
      v17 = sub_1C6FCA214(v16);
      if (!v18)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        result = sub_1C7551E4C();
        __break(1u);
        return result;
      }

      v4 = v18;
      if (!*(v14 + 16))
      {

LABEL_30:

        v42 = v54;
        if (qword_1EDD0B140 != -1)
        {
          swift_once();
        }

        v43 = sub_1C754FF1C();
        __swift_project_value_buffer(v43, qword_1EC2175F0);
        v44 = v16;
        v45 = sub_1C754FEEC();
        v46 = sub_1C755117C();
        if (!os_log_type_enabled(v45, v46))
        {

          goto LABEL_36;
        }

        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v57 = v48;
        *v47 = 136315138;
        v49 = sub_1C70CAC04(v44);
        v51 = v50;

        if (v51)
        {
          v2 = sub_1C6F765A4(v49, v51, &v57);

          *(v47 + 4) = v2;
          _os_log_impl(&dword_1C6F5C000, v45, v46, "Cant find moment for asset %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x1CCA5F8E0](v48, -1, -1);
          MEMORY[0x1CCA5F8E0](v47, -1, -1);

          v42 = v54;
LABEL_36:
          sub_1C70E8134();
          swift_allocError();
          *v52 = 0;
          swift_willThrow();

          v7 = v12;
          goto LABEL_37;
        }

        goto LABEL_46;
      }

      v19 = sub_1C6F78124(v17, v18);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        goto LABEL_30;
      }

      v56 = a1;
      a1 = v12;
      v22 = (*(v14 + 56) + 16 * v19);
      v23 = *v22;
      v24 = v22[1];
      sub_1C75504FC();
      sub_1C6FC0A8C(i, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v57 = v2;
      v25 = sub_1C6F78124(v23, v24);
      v27 = v2[2];
      v28 = (v26 & 1) == 0;
      v2 = (v27 + v28);
      if (__OFADD__(v27, v28))
      {
        goto LABEL_40;
      }

      v29 = v25;
      v4 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151B0, &qword_1C755C758);
      v2 = v57;
      if (sub_1C7551A2C())
      {
        v30 = sub_1C6F78124(v23, v24);
        if ((v4 & 1) != (v31 & 1))
        {
          goto LABEL_47;
        }

        v29 = v30;
      }

      if (v4)
      {
      }

      else
      {
        v57[(v29 >> 6) + 8] |= 1 << v29;
        v32 = (v2[6] + 16 * v29);
        *v32 = v23;
        v32[1] = v24;
        *(v2[7] + 8 * v29) = MEMORY[0x1E69E7CC0];
        v33 = v2[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_41;
        }

        v2[2] = v35;
      }

      v36 = (v2[7] + 8 * v29);
      v4 = v16;
      MEMORY[0x1CCA5D040]();
      v12 = a1;
      if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();

      a1 = (v56 + 1);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  sub_1C70E8134();
  swift_allocError();
  *v41 = 1;
  swift_willThrow();
  i = 0;
  v42 = v12;
LABEL_37:

  sub_1C6F85170();

  sub_1C6FC0A8C(i, 0);
  return v2;
}

id MessagesBackdrop.Fetcher.fetchGuestAssets(latestUpdatedDate:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - v10;
  v11 = *v1;
  if (qword_1EC213DC8 != -1)
  {
    OUTLINED_FUNCTION_1_43();
    swift_once();
  }

  v12 = qword_1EDD0B148;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v13 = v12;
  v45 = PerformanceMeasure.init(name:log:)();
  v14 = [v11 librarySpecificFetchOptions];
  [v14 setIncludeGuestAssets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C755BAB0;
  *(v15 + 32) = sub_1C755068C();
  *(v15 + 40) = v16;
  sub_1C6FCA0EC(v15, v14);
  [v14 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
  v17 = swift_allocObject();
  v42 = xmmword_1C75604F0;
  *(v17 + 16) = xmmword_1C75604F0;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1C6F6AF98(0x7461446465646461, 0xE900000000000065, 0);
  v20 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
  *(v17 + 56) = v20;
  *(v17 + 32) = v19;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
  *(v17 + 88) = v20;
  *(v17 + 64) = v22;
  sub_1C70E7F40(v17, v14);
  sub_1C7033844(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C70D7CB8(v5);
  }

  else
  {
    v23 = v44;
    (*(v7 + 32))(v44, v5, v6);
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v24 = swift_allocObject();
    *(v24 + 16) = v42;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1C6F6D524();
    *(v24 + 32) = 0x7461446465646461;
    *(v24 + 40) = 0xE900000000000065;
    v25 = sub_1C754DECC();
    *(v24 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28, 0x1E695DF00);
    *(v24 + 104) = sub_1C706700C();
    *(v24 + 72) = v25;
    *&v42 = sub_1C755112C();
    if (qword_1EDD0B140 != -1)
    {
      OUTLINED_FUNCTION_0_54();
      swift_once();
    }

    v26 = sub_1C754FF1C();
    __swift_project_value_buffer(v26, qword_1EC2175F0);
    v27 = v43;
    (*(v7 + 16))(v43, v23, v6);
    v28 = sub_1C754FEEC();
    v29 = sub_1C755117C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v30 = 136315138;
      sub_1C70E8020();
      v31 = sub_1C7551D8C();
      v33 = v32;
      v34 = OUTLINED_FUNCTION_8_23();
      (v27)(v34);
      v35 = sub_1C6F765A4(v31, v33, &v46);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1C6F5C000, v28, v29, "Fetching new guest assets since %s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v23 = v44;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      v36 = OUTLINED_FUNCTION_8_23();
      (v27)(v36);
    }

    v37 = v42;
    [v14 setInternalPredicate_];

    (v27)(v23, v6);
  }

  v38 = [objc_opt_self() fetchGuestAssetsWithOptions_];
  if (!v38)
  {
    v38 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  sub_1C6F85170();

  return v38;
}

uint64_t MessagesBackdrop.Fetcher.fetchKeyAssetBySuggestionUUID(for:)(void *a1)
{
  if ([a1 count] < 1)
  {
    if (qword_1EDD0B140 != -1)
    {
      OUTLINED_FUNCTION_0_54();
      swift_once();
    }

    v8 = sub_1C754FF1C();
    v9 = __swift_project_value_buffer(v8, qword_1EC2175F0);
    v10 = sub_1C754FEEC();
    sub_1C755117C();
    v11 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_96_0();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C6F5C000, v10, v9, "No input suggestions for fetching keyAssetBySuggestionUUID. Return", v13, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);

    return sub_1C75504DC();
  }

  else
  {
    v2 = [a1 photoLibrary];
    v3 = static MessagesBackdrop.Fetcher.baseFetchOptions(for:)(v2);
    v4 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:a1 options:v3];
    if (v4)
    {
      v5 = v4;
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v6 = sub_1C75504AC();

      return v6;
    }

    else
    {
      if (qword_1EDD0B140 != -1)
      {
        OUTLINED_FUNCTION_0_54();
        swift_once();
      }

      v14 = sub_1C754FF1C();
      __swift_project_value_buffer(v14, qword_1EC2175F0);
      v15 = sub_1C754FEEC();
      v16 = sub_1C755117C();
      v17 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v17, v18))
      {
        OUTLINED_FUNCTION_96_0();
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1C6F5C000, v15, v16, "Empty result for fetchKeyAssetBySuggestionUUID. Return", v19, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v20 = sub_1C75504DC();

      return v20;
    }
  }
}

id sub_1C70E7DFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = sub_1C7550B3C();

  if (a4)
  {
    v15 = sub_1C755065C();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v15 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = sub_1C7550F7C();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v17 = sub_1C755065C();

LABEL_8:
  v18 = [v8 initWithOids:v14 photoLibrary:a2 fetchType:v15 fetchPropertySets:v16 identifier:v17 registerIfNeeded:a8 & 1];

  return v18;
}

uint64_t sub_1C70E7F30(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

void sub_1C70E7F40(uint64_t a1, void *a2)
{
  v3 = sub_1C7550B3C();

  [a2 setInternalSortDescriptors_];
}

uint64_t sub_1C70E7FB0(void *a1)
{
  v2 = [a1 conversationID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C70E8020()
{
  result = qword_1EDD0F9D8;
  if (!qword_1EDD0F9D8)
  {
    v3 = sub_1C754DF6C();
    result = swift_getWitnessTable(MEMORY[0x1E6969570], v3, v0, v1);
    atomic_store(result, &qword_1EDD0F9D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesBackdropFetcher(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C70E8134()
{
  result = qword_1EC217608;
  if (!qword_1EC217608)
  {
    result = swift_getWitnessTable(aY_21, &_s7FetcherV5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC217608);
  }

  return result;
}

uint64_t sub_1C70E8188(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E6969E28], v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s7FetcherV5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70E82BC()
{
  result = qword_1EC217618;
  if (!qword_1EC217618)
  {
    result = swift_getWitnessTable(byte_1C756AE30, &_s7FetcherV5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC217618);
  }

  return result;
}

uint64_t dispatch thunk of MusicKeywordsGenerator.generateMusicKeywords(using:eventRecorder:progressReporter:shouldTokenizeInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1C70E8468;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1C70E8468(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C70E8564(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  OUTLINED_FUNCTION_76(v4);
  v3[5] = swift_task_alloc();
  v5 = sub_1C754DF6C();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = sub_1C754DABC();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70E86D0, 0, 0);
}

uint64_t sub_1C70E86D0()
{
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_41_0();
    v69 = swift_slowAlloc();
    *(v3 + 4) = OUTLINED_FUNCTION_20_21(4.9654e-34);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v4, v5, "Started grounding the date string %{sensitive}s using QueryAnnotatorV2");
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v6 = static QueryAnnotatorV2.extractDateComponents(from:)(*(v0 + 16), *(v0 + 24));
  if (*(v6 + 16))
  {
    goto LABEL_20;
  }

  sub_1C75504FC();
  v7 = sub_1C754FEEC();
  v8 = sub_1C755117C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_41_0();
    v70 = swift_slowAlloc();
    *(v9 + 4) = OUTLINED_FUNCTION_20_21(4.9654e-34);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v10, v11, "Fallback to grounding the date string %{sensitive}s using Spotlight QP");
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v12 = objc_opt_self();
  v13 = sub_1C755065C();
  v14 = [v12 groundDatesFromDateString_];

  v15 = sub_1C7550B5C();
  if (*(v15 + 16) == 2)
  {
    v16 = *(v0 + 56);
    v65 = v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v66 = *(v16 + 16);
    (v66)(*(v0 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216510, &qword_1C75647D8);
    v17 = sub_1C754E22C();
    OUTLINED_FUNCTION_3_0();
    v19 = v18;
    v21 = *(v20 + 72);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C755BAA0;
    v63 = v22;
    v24 = v23 + v22;
    v25 = *(v19 + 104);
    v62 = *MEMORY[0x1E6969A68];
    v25(v24);
    v61 = *MEMORY[0x1E6969A78];
    v25(v24 + v21);
    v64 = v21;
    v60 = *MEMORY[0x1E6969A48];
    v25(v24 + 2 * v21);
    sub_1C7080ED8();
    if (qword_1EC214168 != -1)
    {
      OUTLINED_FUNCTION_17_0(&qword_1EC214168);
    }

    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v67 = *(v0 + 48);
    v28 = sub_1C754E24C();
    OUTLINED_FUNCTION_23_2(v28, qword_1EC21C0C8);
    sub_1C754E1BC();

    v59 = *(v27 + 8);
    result = v59(v26, v67);
    if (*(v15 + 16) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v57 = *(v0 + 96);
    v30 = *(v0 + 64);
    v58 = *(v0 + 72);
    v31 = *(v0 + 48);
    v32 = *(v0 + 40);
    v66(v30, v65 + *(*(v0 + 56) + 72), v31);

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C755BAA0;
    v34 = v33 + v63;
    (v25)(v33 + v63, v62, v17);
    (v25)(v34 + v64, v61, v17);
    (v25)(v34 + 2 * v64, v60, v17);
    sub_1C7080ED8();
    sub_1C754E1BC();

    v59(v30, v31);
    static StoryGenerationUtilities.previousDayDateComponents(of:)();
    if (__swift_getEnumTagSinglePayload(v32, 1, v58) != 1)
    {
      v47 = *(v0 + 104);
      v68 = *(v0 + 96);
      v49 = *(v0 + 80);
      v48 = *(v0 + 88);
      v50 = *(v0 + 72);
      v51 = *(v49 + 32);
      v51(v48, *(v0 + 40), v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217330, &qword_1C75698A8);
      v52 = *(v49 + 72);
      v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C75604F0;
      v54 = v6 + v53;
      (*(v49 + 16))(v54, v47, v50);
      v51(v54 + v52, v48, v50);
      v55 = *(v49 + 8);
      v55(v68, v50);
      v55(v47, v50);
      goto LABEL_20;
    }

    sub_1C70EA928(*(v0 + 40));
    v35 = sub_1C754FEEC();
    v36 = sub_1C755119C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v37);
      _os_log_impl(&dword_1C6F5C000, v35, v36, "Unable to compute previous day for end date components. Returning empty result.", v57, 2u);
      OUTLINED_FUNCTION_109();
    }

    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v40 = *(v0 + 72);
    v41 = *(v0 + 80);

    v42 = *(v41 + 8);
    v42(v39, v40);
    v42(v38, v40);
  }

  else
  {
    sub_1C75504FC();
    v43 = sub_1C754FEEC();
    v44 = sub_1C755119C();
    if (OUTLINED_FUNCTION_66(v44))
    {
      v45 = OUTLINED_FUNCTION_41_0();
      *v45 = 134217984;
      v46 = *(v15 + 16);

      *(v45 + 4) = v46;

      _os_log_impl(&dword_1C6F5C000, v43, v14, "Spotlight QP returned %ld dates, expected 2. Returning empty result.", v45, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v56 = *(v0 + 8);

  return v56(v6);
}

uint64_t static QueryAnnotatorV2.extractDateComponents(from:)(uint8_t *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v119 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620, &qword_1C756AEC0);
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v119 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v119 - v17;
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v125 = v20;
  v126 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v23 = (v22 - v21);
  v24 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_130();
  v121 = v30;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_130();
  v122 = v32;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_130();
  v124 = v34;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  v123 = v36;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v37);
  v127 = &v119 - v38;
  v39 = sub_1C70E9BF0(a1, a2, 0xD00000000000002DLL, 0x80000001C759E2A0);
  if (*(v39 + 16) == 2)
  {
    if (qword_1EDD0B040 != -1)
    {
      OUTLINED_FUNCTION_0_55(&qword_1EDD0B040);
    }

    v121 = v26;
    v40 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v40, qword_1EDD28C58);
    v41 = sub_1C754FEEC();
    v42 = sub_1C755117C();
    if (os_log_type_enabled(v41, v42))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_10_30(&dword_1C6F5C000, v43, v42, "Matched: yearless range 'from 0000-MM-DD to 0000-MM-DD'");
      OUTLINED_FUNCTION_109();
    }

    v44 = v24;

    if (qword_1EC214168 != -1)
    {
      OUTLINED_FUNCTION_17_0(&qword_1EC214168);
    }

    v45 = sub_1C754E24C();
    v46 = __swift_project_value_buffer(v45, qword_1EC21C0C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216510, &qword_1C75647D8);
    v47 = sub_1C754E22C();
    OUTLINED_FUNCTION_3_0();
    v49 = v48;
    v51 = *(v50 + 72);
    v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1C755BAA0;
    v54 = v53 + v52;
    v56 = *(v49 + 104);
    v55 = v49 + 104;
    v56(v54, *MEMORY[0x1E6969A68], v47);
    v56(v54 + v51, *MEMORY[0x1E6969A78], v47);
    v56(v54 + 2 * v51, *MEMORY[0x1E6969A48], v47);
    sub_1C7080ED8();
    sub_1C754DF5C();
    LOBYTE(v15) = v46;
    sub_1C754E1BC();

    v125[1](v23, v126);
    if (*(v39 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v57 = v121;
      v58 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v125 = *(v121 + 80);
      v126 = v58;
      v15 = (v39 + v58);
      v59 = *(v121 + 72);
      v60 = *(v121 + 16);
      v61 = v39 + v58 + v59;
      v55 = v39;
      v62 = v124;
      v60(v124, v61, v44);
      v63 = v123;
      static QueryAnnotatorV2.updateToMostRecentYear(for:dateLimitComponents:)(v62, v123);
      v65 = *(v57 + 8);
      v23 = (v57 + 8);
      v64 = v65;
      v65(v62, v44);
      if (*(v55 + 16))
      {
        v66 = v15;
        v67 = v59;
        v68 = v122;
        v60(v122, v66, v44);

        v69 = v63;
        static QueryAnnotatorV2.updateToMostRecentYear(for:dateLimitComponents:)(v68, v62);
        v64(v68, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217330, &qword_1C75698A8);
        v70 = v126;
        v71 = v67;
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1C75604F0;
        v73 = v72 + v70;
        v60(v73, v62, v44);
        v74 = (v73 + v71);
        v75 = v69;
        v55 = v72;
        v60(v74, v75, v44);
        v64(v62, v44);
        v64(v75, v44);
        v64(v127, v44);
        return v55;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v76 = a2;
  v55 = sub_1C70E9BF0(a1, a2, 0xD000000000000012, 0x80000001C759E2D0);
  OUTLINED_FUNCTION_17_24();
  if (v77)
  {
    if (qword_1EDD0B040 == -1)
    {
LABEL_14:
      v78 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v78, qword_1EDD28C58);
      v79 = sub_1C754FEEC();
      v80 = sub_1C755117C();
      if (!OUTLINED_FUNCTION_7_0(v80))
      {
LABEL_36:

        return v55;
      }

      v81 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v81);
      v82 = "Matched: single yearless date '0000-MM-DD'";
LABEL_35:
      _os_log_impl(&dword_1C6F5C000, v79, v15, v82, v23, 2u);
      OUTLINED_FUNCTION_109();
      goto LABEL_36;
    }

LABEL_55:
    OUTLINED_FUNCTION_0_55(&qword_1EDD0B040);
    goto LABEL_14;
  }

  v23 = a1;

  v83 = sub_1C70E9BF0(a1, v76, 0xD00000000000002FLL, 0x80000001C759E2F0);
  v55 = v83;
  if (*(v83 + 16) == 2)
  {
    if (qword_1EDD0B040 != -1)
    {
      OUTLINED_FUNCTION_0_55(&qword_1EDD0B040);
    }

    v84 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v84, qword_1EDD28C58);
    v79 = sub_1C754FEEC();
    v85 = sub_1C755117C();
    if (!OUTLINED_FUNCTION_7_0(v85))
    {
      goto LABEL_36;
    }

    v86 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v86);
    v82 = "Matched: full date range 'from YYYY-MM-DD to YYYY-MM-DD'";
    goto LABEL_35;
  }

  v87 = sub_1C70E9BF0(a1, v76, 0xD00000000000001ALL, 0x80000001C759E320);
  OUTLINED_FUNCTION_17_24();
  if (v77)
  {
    v88 = v76;
    v123 = *(v26 + 80);
    v89 = *(v26 + 16);
    v124 = ((v123 + 32) & ~v123);
    v90 = v127;
    v89(v127, &v124[v87], v24);

    static StoryGenerationUtilities.previousDayDateComponents(of:)();
    (*(v26 + 8))(v90, v24);
    if (__swift_getEnumTagSinglePayload(v18, 1, v24) != 1)
    {
      v125 = v11;
      v126 = v7;
      v103 = *(v26 + 32);
      v103(v121, v18, v24);
      if (qword_1EDD0B040 != -1)
      {
        OUTLINED_FUNCTION_0_55(&qword_1EDD0B040);
      }

      v104 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v104, qword_1EDD28C58);
      v105 = sub_1C754FEEC();
      v106 = sub_1C755117C();
      if (OUTLINED_FUNCTION_66(v106))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_10_30(&dword_1C6F5C000, v107, v87, "Matched: 'before YYYY-MM-DD'");
        OUTLINED_FUNCTION_109();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217330, &qword_1C75698A8);
      v108 = *(v26 + 72);
      v109 = v124;
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1C75604F0;
      v110 = sub_1C754E24C();
      v111 = OUTLINED_FUNCTION_11_24(v110);
      __swift_storeEnumTagSinglePayload(v126, 1, 1, v111);
      OUTLINED_FUNCTION_2_39();
      OUTLINED_FUNCTION_6_39();
      OUTLINED_FUNCTION_13_26();
      sub_1C754DAAC();
      v103(&v109[v55 + v108], v121, v24);
      return v55;
    }

    sub_1C70EA928(v18);
    v76 = v88;
  }

  else
  {
  }

  v23 = sub_1C70E9BF0(a1, v76, 0xD000000000000019, 0x80000001C759E340);
  OUTLINED_FUNCTION_17_24();
  if (v77)
  {
    v125 = v11;
    v126 = v7;
    v91 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v92 = v127;
    v124 = *(v26 + 16);
    (v124)(v127, &v23[v91], v24);

    static StoryGenerationUtilities.nextDayDateComponents(of:)();
    v23 = v26;
    v127 = *(v26 + 8);
    (v127)(v92, v24);
    if (__swift_getEnumTagSinglePayload(v15, 1, v24) != 1)
    {
      v121 = v26;
      v112 = v120;
      (*(v26 + 32))(v120, v15, v24);
      if (qword_1EDD0B040 != -1)
      {
        OUTLINED_FUNCTION_0_55(&qword_1EDD0B040);
      }

      v113 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v113, qword_1EDD28C58);
      v114 = sub_1C754FEEC();
      v115 = sub_1C755117C();
      if (OUTLINED_FUNCTION_66(v115))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_10_30(&dword_1C6F5C000, v116, v26, "Matched: 'after YYYY-MM-DD'");
        OUTLINED_FUNCTION_109();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217330, &qword_1C75698A8);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1C75604F0;
      (v124)(v55 + v91, v112, v24);
      v117 = sub_1C754E24C();
      v118 = OUTLINED_FUNCTION_11_24(v117);
      __swift_storeEnumTagSinglePayload(v126, 1, 1, v118);
      OUTLINED_FUNCTION_2_39();
      OUTLINED_FUNCTION_6_39();
      OUTLINED_FUNCTION_13_26();
      sub_1C754DAAC();
      (v127)(v112, v24);
      return v55;
    }

    sub_1C70EA928(v15);
  }

  else
  {
  }

  v93 = a1;
  v55 = sub_1C70E9BF0(a1, v76, 0xD000000000000013, 0x80000001C759E360);
  OUTLINED_FUNCTION_17_24();
  if (v77)
  {
    if (qword_1EDD0B040 != -1)
    {
      OUTLINED_FUNCTION_0_55(&qword_1EDD0B040);
    }

    v94 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v94, qword_1EDD28C58);
    v79 = sub_1C754FEEC();
    v95 = sub_1C755117C();
    if (!OUTLINED_FUNCTION_7_0(v95))
    {
      goto LABEL_36;
    }

    v96 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v96);
    v82 = "Matched: single full date 'YYYY-MM-DD'";
    goto LABEL_35;
  }

  if (qword_1EDD0B040 != -1)
  {
    OUTLINED_FUNCTION_0_55(&qword_1EDD0B040);
  }

  v98 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v98, qword_1EDD28C58);
  sub_1C75504FC();
  v99 = sub_1C754FEEC();
  v100 = sub_1C755117C();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = OUTLINED_FUNCTION_41_0();
    v102 = swift_slowAlloc();
    v128 = v102;
    *v101 = 136642819;
    *(v101 + 4) = sub_1C6F765A4(v93, v76, &v128);
    _os_log_impl(&dword_1C6F5C000, v99, v100, "No matching date pattern found for %{sensitive}s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C70E9BF0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620, &qword_1C756AEC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = v89 - v11;
  v12 = sub_1C754DABC();
  v102 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v89 - v16;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1;
  }

  v19 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v19 = 11;
  }

  v109 = 15;
  v110 = v19 | (v18 << 16);
  v107 = a1;
  v108 = a2;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217628, &qword_1C756AEC8);
  sub_1C70EA990();
  sub_1C6FB5E8C();
  v20 = sub_1C755143C();
  v22 = v21;
  objc_allocWithZone(MEMORY[0x1E696AE70]);
  sub_1C75504FC();
  v23 = sub_1C71C8B80(a3, a4, 0);
  v25 = v23;
  v95 = v17;
  v96 = v14;
  v105 = a2;
  v106 = a1;
  v97 = v12;
  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = sub_1C755065C();
  v27 = [v25 firstMatchInString:v26 options:0 range:{v20, v22}];

  if (!v27)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [v27 numberOfRanges];
  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = result;
      v92 = (v102 + 16);
      v91 = v102 + 8;
      v90 = v102 + 32;
      v94 = MEMORY[0x1E69E7CC0];
      v30 = &off_1E82A3000;
      *&v28 = 136315138;
      v98 = v28;
      v31 = 1;
      v103 = v27;
      v104 = result;
      while (1)
      {
        [v27 v30[230]];
        sub_1C75510EC();
        if ((v32 & 1) == 0)
        {
          break;
        }

LABEL_43:
        if (v29 == ++v31)
        {

          return v94;
        }
      }

      v33 = sub_1C755098C();
      v34 = MEMORY[0x1CCA5CC40](v33);
      v36 = v35;

      v109 = 45;
      v110 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v37);
      v87 = &v109;
      sub_1C75504FC();
      v38 = sub_1C71ABD80(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C70551E4, &v85, v34, v36);
      v39 = v38;
      if (v38[2] != 3)
      {

        if (qword_1EDD0B040 != -1)
        {
          swift_once();
        }

        v45 = sub_1C754FF1C();
        __swift_project_value_buffer(v45, qword_1EDD28C58);
        sub_1C75504FC();
        v46 = sub_1C754FEEC();
        v47 = sub_1C755119C();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v109 = v49;
          *v48 = v98;
          v50 = sub_1C6F765A4(v34, v36, &v109);

          *(v48 + 4) = v50;
          v51 = v47;
          v52 = v46;
          v53 = "The date string %s is invalid, unable to parse it correctly";
LABEL_39:
          _os_log_impl(&dword_1C6F5C000, v52, v51, v53, v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x1CCA5F8E0](v49, -1, -1);
          MEMORY[0x1CCA5F8E0](v48, -1, -1);
LABEL_41:

LABEL_42:
          v27 = v103;
          v29 = v104;
          v30 = &off_1E82A3000;
          goto LABEL_43;
        }

LABEL_40:

        goto LABEL_41;
      }

      v40 = v38[4];
      v41 = v38[5];
      if (!((v41 ^ v40) >> 14))
      {
        goto LABEL_34;
      }

      v43 = v38[6];
      v42 = v38[7];
      result = sub_1C70D3AF8(v38[4], v38[5], v43, v42, 10);
      if ((v44 & 0x100) != 0)
      {
        sub_1C75504FC();
        v99 = sub_1C70D0138(v40, v41, v43, v42, 10);
        v55 = v54;

        if (v55)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v99 = result;
        if (v44)
        {
          goto LABEL_34;
        }
      }

      if (v39[2] < 2uLL)
      {
        __break(1u);
        goto LABEL_53;
      }

      v56 = v39[8];
      v57 = v39[9];
      if (!((v57 ^ v56) >> 14))
      {
        goto LABEL_34;
      }

      v59 = v39[10];
      v58 = v39[11];
      result = sub_1C70D3AF8(v39[8], v39[9], v59, v58, 10);
      if ((v60 & 0x100) != 0)
      {
        sub_1C75504FC();
        v93 = sub_1C70D0138(v56, v57, v59, v58, 10);
        v68 = v67;

        if (v68)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v93 = result;
        if (v60)
        {
          goto LABEL_34;
        }
      }

      if (v39[2] < 3uLL)
      {
        goto LABEL_54;
      }

      v62 = v39[12];
      v61 = v39[13];
      v64 = v39[14];
      v63 = v39[15];
      sub_1C75504FC();

      if ((v61 ^ v62) >> 14)
      {
        sub_1C70D3AF8(v62, v61, v64, v63, 10);
        if ((v65 & 0x100) != 0)
        {
          sub_1C70D0138(v62, v61, v64, v63, 10);
          v73 = v72;

          if (v73)
          {
LABEL_35:
            if (qword_1EDD0B040 != -1)
            {
              swift_once();
            }

            v69 = sub_1C754FF1C();
            __swift_project_value_buffer(v69, qword_1EDD28C58);
            sub_1C75504FC();
            v46 = sub_1C754FEEC();
            v70 = sub_1C755119C();

            if (os_log_type_enabled(v46, v70))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v109 = v49;
              *v48 = v98;
              v71 = sub_1C6F765A4(v34, v36, &v109);

              *(v48 + 4) = v71;
              v51 = v70;
              v52 = v46;
              v53 = "Invalid numeric values in date string: %s";
              goto LABEL_39;
            }

            goto LABEL_40;
          }
        }

        else
        {
          v66 = v65;

          if (v66)
          {
            goto LABEL_35;
          }
        }

        v89[3] = v99 == 0;
        v74 = sub_1C754E24C();
        __swift_storeEnumTagSinglePayload(v100, 1, 1, v74);
        v75 = sub_1C754E35C();
        __swift_storeEnumTagSinglePayload(v101, 1, 1, v75);
        v88 = 1;
        v87 = 0;
        v86 = 1;
        v85 = 0;
        v76 = v95;
        sub_1C754DAAC();
        (*v92)(v96, v76, v97);
        v77 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2450(0, *(v77 + 16) + 1, 1, v77);
          v77 = v83;
        }

        v79 = *(v77 + 16);
        v78 = *(v77 + 24);
        v94 = v77;
        v80 = v97;
        if (v79 >= v78 >> 1)
        {
          sub_1C6FB2450(v78 > 1, v79 + 1, 1, v94);
          v80 = v97;
          v94 = v84;
        }

        v81 = v102;
        (*(v102 + 8))(v76, v80);
        v82 = v94;
        *(v94 + 16) = v79 + 1;
        (*(v81 + 32))(v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v79, v96, v80);
        goto LABEL_42;
      }

LABEL_34:

      goto LABEL_35;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t static QueryAnnotatorV2.updateToMostRecentYear(for:dateLimitComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v47 = v5;
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v45 = v10;
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = sub_1C754E16C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v20 = v19 - v18;
  v44 = sub_1C754E24C();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v27 = sub_1C754DABC();
  (*(*(v27 - 8) + 16))(a2, a1, v27);
  v28 = sub_1C754DA4C();
  if (v29)
  {
    (*(v16 + 104))(v20, *MEMORY[0x1E6969868], v14);
    sub_1C754E17C();
    (*(v16 + 8))(v20, v14);
    (*(v45 + 104))(v13, *MEMORY[0x1E6969A68], v46);
    sub_1C754DF5C();
    v30 = sub_1C754E23C();
    (*(v47 + 8))(v8, v48);
    (*(v45 + 8))(v13, v46);
    (*(v22 + 8))(v26, v44);
  }

  else
  {
    v30 = v28;
  }

  sub_1C754DA5C();
  v31 = sub_1C754DA6C();
  if (v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = v31;
  }

  v34 = sub_1C754DA1C();
  if (v35)
  {
    v36 = 1;
  }

  else
  {
    v36 = v34;
  }

  v37 = sub_1C754DA6C();
  if (v38)
  {
    v39 = 1;
  }

  else
  {
    v39 = v37;
  }

  result = sub_1C754DA1C();
  if (v41)
  {
    if (v39 < v33 || (v33 == v39 ? (v42 = v36 <= 1) : (v42 = 1), !v42))
    {
LABEL_27:
      result = v30 - 1;
      if (__OFSUB__(v30, 1))
      {
        __break(1u);
      }

      else
      {
        return sub_1C754DA5C();
      }
    }
  }

  else
  {
    if (v39 < v33)
    {
      goto LABEL_27;
    }

    if (v33 == v39 && result < v36)
    {
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_1C70EA928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C70EA990()
{
  result = qword_1EC217630;
  if (!qword_1EC217630)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217628, &qword_1C756AEC8);
    result = swift_getWitnessTable(MEMORY[0x1E69E66D8], v3, v0, v1);
    atomic_store(result, &qword_1EC217630);
  }

  return result;
}

id StoryMusicCuration.flexMusicStoryRecipeKeySong()()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_2_40(v1);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v2 = PFStoryColorGradeCategoryFromValenceArousal();
    objc_opt_self();
    v3 = sub_1C755065C();

    v12 = OUTLINED_FUNCTION_8_24(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24, v25, v26);

    return v12;
  }

  else
  {
    if (qword_1EDD0A758 != -1)
    {
      OUTLINED_FUNCTION_4_32(&qword_1EDD0A758);
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EDD0A760);
    v15 = sub_1C754FEEC();
    v16 = sub_1C755119C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v18, v19, "No Flex Music songs to use for the recipe");
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    sub_1C70EB0F0();
    swift_allocError();
    *v20 = 10;
    return swift_willThrow();
  }
}

id StoryMusicCuration.appleMusicStoryRecipeKeySong()()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_2_40(v1);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v2 = PFStoryColorGradeCategoryFromValenceArousal();
    objc_opt_self();
    v3 = sub_1C755065C();

    v12 = OUTLINED_FUNCTION_8_24(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24, v25, v26);

    return v12;
  }

  else
  {
    if (qword_1EDD0A758 != -1)
    {
      OUTLINED_FUNCTION_4_32(&qword_1EDD0A758);
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EDD0A760);
    v15 = sub_1C754FEEC();
    v16 = sub_1C755117C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v18, v19, "[Warning-Music] No Apple Music songs to use for the recipe");
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    sub_1C70EB0F0();
    swift_allocError();
    *v20 = 9;
    return swift_willThrow();
  }
}

unint64_t StoryMusicCuration.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638, &qword_1C756AEE0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v5 = type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v21 = 0xD000000000000014;
  v22 = 0x80000001C759E380;
  MEMORY[0x1CCA5CD70](0x656C707041202D0ALL, 0xED0000636973754DLL);
  v10 = v0[4];
  if (*(v10 + 16))
  {
    MEMORY[0x1CCA5CD70](0xD00000000000009BLL, 0x80000001C759E450);
    sub_1C70EC524(v10);
  }

  else
  {
    MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C759E3A0);
  }

  MEMORY[0x1CCA5CD70](0x4D78656C46202D0ALL, 0xEC00000063697375);
  v11 = v0[5];
  if (*(v11 + 16))
  {
    MEMORY[0x1CCA5CD70](0xD00000000000004ELL, 0x80000001C759E400);
    sub_1C70EC524(v11);
  }

  else
  {
    MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C759E3C0);
  }

  v12 = type metadata accessor for StoryMusicCuration(0);
  sub_1C70ECE9C(v0 + *(v12 + 40), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C70ECF0C(v4);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1C755180C();

    v19 = 0xD000000000000013;
    v20 = 0x80000001C759E3E0;
    v13 = v0[3];
    v14 = type metadata accessor for MusicKeywordCompletion();
    v15 = MEMORY[0x1CCA5D090](v13, v14);
    MEMORY[0x1CCA5CD70](v15);

    MEMORY[0x1CCA5CD70](v19, v20);

    v19 = 0x3A74706D6F72500ALL;
    v20 = 0xE900000000000020;
    MEMORY[0x1CCA5CD70](*v1, v1[1]);
    MEMORY[0x1CCA5CD70](v19, v20);
  }

  else
  {
    sub_1C70ECF74(v4, v9);
    v19 = 10;
    v20 = 0xE100000000000000;
    v16 = StoryMusicCurationDiagnostics.description.getter();
    MEMORY[0x1CCA5CD70](v16);

    MEMORY[0x1CCA5CD70](v19, v20);

    sub_1C70ED274(v9, type metadata accessor for StoryMusicCurationDiagnostics);
  }

  return v21;
}

uint64_t sub_1C70EB070()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0A760);
  __swift_project_value_buffer(v0, qword_1EDD0A760);
  return sub_1C754FEFC();
}

unint64_t sub_1C70EB0F0()
{
  result = qword_1EDD097F0;
  if (!qword_1EDD097F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationError, &type metadata for StoryMusicCurationError, v0, v1);
    atomic_store(result, &qword_1EDD097F0);
  }

  return result;
}

uint64_t StoryMusicCuration.prompt.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t StoryMusicCuration.diagnostics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoryMusicCuration(0) + 40);

  return sub_1C70ECE9C(v3, a1);
}

uint64_t StoryMusicCuration.init()@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v3 = [v2 UUIDString];

  v4 = sub_1C755068C();
  v6 = v5;

  a1[6] = v4;
  a1[7] = v6;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  type metadata accessor for StoryMusicCuration(0);
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  v8 = OUTLINED_FUNCTION_19_19();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t StoryMusicCuration.init(prompt:recommendedKeywords:resolvedRecommendedKeywords:appleMusicSongs:flexMusicSongs:diagnostics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v16 = [v15 UUIDString];

  v17 = sub_1C755068C();
  v19 = v18;

  a8[6] = v17;
  a8[7] = v19;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v20 = a8 + *(type metadata accessor for StoryMusicCuration(0) + 40);

  return sub_1C70ECFD8(a7, v20);
}

uint64_t static StoryMusicCuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

unint64_t sub_1C70EB3A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551B2C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C70EB3F0(unsigned __int8 a1)
{
  result = 0x6E6F697461727563;
  if (a1 >= 2u)
  {
    return 0xD000000000000013;
  }

  return result;
}

unint64_t sub_1C70EB458(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551B2C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C70EB4A4(char a1)
{
  if (!a1)
  {
    return 0x74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_1C70EB4FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551B2C();

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

uint64_t sub_1C70EB550(char a1)
{
  if (a1)
  {
    return 0x6973754D78656C66;
  }

  else
  {
    return 0x73754D656C707061;
  }
}

unint64_t sub_1C70EB5C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C70EB3A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C70EB5F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C70EB3F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C70EB62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70EB3A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70EB654(uint64_t a1)
{
  v2 = sub_1C70ED048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EB690(uint64_t a1)
{
  v2 = sub_1C70ED048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C70EB6F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C70EB458(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C70EB720@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C70EB4A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C70EB754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70EB458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70EB77C(uint64_t a1)
{
  v2 = sub_1C70ED09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EB7B8(uint64_t a1)
{
  v2 = sub_1C70ED09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70EB818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C70EB4FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C70EB848@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C70EB550(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C70EB87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70EB4FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70EB8B0(uint64_t a1)
{
  v2 = sub_1C70ED0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EB8EC(uint64_t a1)
{
  v2 = sub_1C70ED0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryMusicCuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217640, &qword_1C756AEE8);
  OUTLINED_FUNCTION_3_0();
  v46 = v4;
  v47 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_22(v6, v40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217648, &qword_1C756AEF0);
  OUTLINED_FUNCTION_3_0();
  v49 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v40 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217650, &qword_1C756AEF8);
  OUTLINED_FUNCTION_3_0();
  v48 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for StoryMusicCuration(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = (v16 - v15);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v19 = [v18 UUIDString];

  v20 = sub_1C755068C();
  v22 = v21;

  v17[6] = v20;
  v17[7] = v22;
  v51 = v22;
  v23 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1C70ED048();
  v24 = v52;
  sub_1C7551FFC();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    v44 = v13;
    v52 = v7;
    LOBYTE(v55) = 0;
    sub_1C70ED09C();
    sub_1C7551B4C();
    LOBYTE(v55) = 0;
    *v17 = sub_1C7551BBC();
    v17[1] = v25;
    v42 = v25;
    v43 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
    OUTLINED_FUNCTION_23_16();
    sub_1C70ED2CC(&qword_1EC217658, &qword_1EC217660, protocol conformance descriptor for MusicKeywordCompletion, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_17_25();
    v41 = v26;
    sub_1C7551C1C();
    v43[2] = v55;
    v54 = 2;
    OUTLINED_FUNCTION_17_25();
    v41 = 0;
    sub_1C7551C1C();
    v27 = v43;
    v43[3] = v55;
    LOBYTE(v55) = 1;
    sub_1C70ED0F0();
    sub_1C7551B4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216820, &qword_1C758FDF0);
    v54 = 0;
    sub_1C70ED144(&qword_1EC217668, sub_1C70ED1BC, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_17_25();
    v40 = v28;
    sub_1C7551C1C();
    *(v27 + 32) = v55;
    OUTLINED_FUNCTION_23_16();
    OUTLINED_FUNCTION_17_25();
    sub_1C7551C1C();
    v29 = OUTLINED_FUNCTION_5_34();
    v30(v29);
    v31 = OUTLINED_FUNCTION_11_25();
    v32(v31, v52);
    v33 = OUTLINED_FUNCTION_1_44();
    v34(v33);
    *(v27 + 40) = v55;
    type metadata accessor for StoryMusicCurationDiagnostics(0);
    v35 = OUTLINED_FUNCTION_19_19();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    sub_1C70ED210(v27, v45);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_1C70ED274(v27, type metadata accessor for StoryMusicCuration);
  }
}

uint64_t StoryMusicCuration.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217678, &qword_1C756AF10);
  OUTLINED_FUNCTION_3_0();
  v40 = v4;
  v41 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_22(v7, v36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217680, &qword_1C756AF18);
  OUTLINED_FUNCTION_3_0();
  v42 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217688, &qword_1C756AF20);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70ED048();
  sub_1C755200C();
  LOBYTE(v45) = 0;
  sub_1C70ED09C();
  sub_1C7551C6C();
  LOBYTE(v45) = 0;
  v19 = v43;
  sub_1C7551CCC();
  if (v19)
  {
    (*(v42 + 8))(v12, v8);
    return (*(v15 + 8))(v18, v13);
  }

  else
  {
    v38 = v15;
    v39 = v18;
    v21 = v42;
    v43 = v13;
    v45 = v2[2];
    OUTLINED_FUNCTION_23_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
    sub_1C70ED2CC(&qword_1EDD06B50, &qword_1EDD09B18, protocol conformance descriptor for MusicKeywordCompletion, MEMORY[0x1E69E6300]);
    v22 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_3_40(v22, v23, v8);
    v45 = v2[3];
    v44 = 2;
    v24 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_3_40(v24, v25, v8);
    v26 = v21;
    v36 = v12;
    v37 = v8;
    LOBYTE(v45) = 1;
    sub_1C70ED0F0();
    sub_1C7551C6C();
    v45 = v2[4];
    v44 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216820, &qword_1C758FDF0);
    sub_1C70ED144(&qword_1EDD06B40, sub_1C70ED368, MEMORY[0x1E69E6300]);
    v27 = OUTLINED_FUNCTION_20_5();
    v28 = v40;
    OUTLINED_FUNCTION_3_40(v27, v29, v40);
    v45 = v2[5];
    OUTLINED_FUNCTION_23_16();
    v30 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_3_40(v30, v31, v28);
    type metadata accessor for StoryMusicCuration(0);
    LOBYTE(v45) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638, &qword_1C756AEE0);
    sub_1C70ED3BC();
    v32 = v43;
    v33 = v39;
    sub_1C7551D2C();
    v34 = OUTLINED_FUNCTION_216();
    v35(v34);
    (*(v26 + 8))(v36, v37);
    return (*(v38 + 8))(v33, v32);
  }
}

uint64_t sub_1C70EC524(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 32); v1; --v1)
  {
    memcpy(__dst, i, sizeof(__dst));
    v6 = 2128906;
    v7 = 0xE300000000000000;
    memcpy(v5, i, sizeof(v5));
    sub_1C7080654(__dst, &v4);
    v3 = StoryMusicCurationSong.description.getter();
    MEMORY[0x1CCA5CD70](v3);

    MEMORY[0x1CCA5CD70](v6, v7);

    result = sub_1C70806B0(__dst);
    i += 192;
  }

  return result;
}

Swift::String __swiftcall StoryMusicCuration.keySongInfo()()
{
  v1 = v0;
  v2 = StoryMusicCuration.appleMusicStoryRecipeKeySong()();
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();

  v3 = [v2 songID];
  if (v3)
  {
    v4 = v3;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_15_25();

  OUTLINED_FUNCTION_10_31();
  v5 = [v2 title];
  if (v5)
  {
    v6 = v5;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_15_25();

  OUTLINED_FUNCTION_10_31();
  v7 = [v2 subtitle];
  if (v7)
  {
    v8 = v7;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_15_25();

  MEMORY[0x1CCA5CD70](0x203D204D4120, 0xE600000000000000);
  swift_unknownObjectRelease();

  v9 = StoryMusicCuration.flexMusicStoryRecipeKeySong()();
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();

  v10 = [v9 songID];
  if (v10)
  {
    v11 = v10;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_14_23();

  OUTLINED_FUNCTION_10_31();
  v12 = [v9 title];
  if (v12)
  {
    v13 = v12;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_14_23();

  OUTLINED_FUNCTION_10_31();
  v14 = [v9 subtitle];
  if (v14)
  {
    v15 = v14;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_14_23();

  MEMORY[0x1CCA5CD70](0x2078656C46207C20, 0xEA0000000000203DLL);
  swift_unknownObjectRelease();

  v16 = *(v1 + 24);
  if (sub_1C6FB6304() >= 1)
  {
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();

    v17 = type metadata accessor for MusicKeywordCompletion();
    v18 = MEMORY[0x1CCA5D090](v16, v17);
    MEMORY[0x1CCA5CD70](v18);

    MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C759E510);
  }

  v19 = 0x73676E6F5379654BLL;
  v20 = 0xE90000000000003ALL;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t StoryMusicCuration.jsonDescription.getter()
{
  v0 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_14_0();
  v1 = sub_1C754D76C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14_0();
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C754D74C();
  sub_1C754D77C();
  type metadata accessor for StoryMusicCuration(0);
  sub_1C70ED470(&unk_1EDD0A748, type metadata accessor for StoryMusicCuration, protocol conformance descriptor for StoryMusicCuration);
  sub_1C754D78C();
  sub_1C75506CC();
  OUTLINED_FUNCTION_216();
  v2 = sub_1C75506AC();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_216();
  sub_1C6FC1640(v5, v6);

  if (!v4)
  {
    return 0xD000000000000026;
  }

  return v2;
}

uint64_t StoryMusicCuration.appleMusicCurationAsDictionary()()
{
  sub_1C70EB0F0();
  swift_allocError();
  *v0 = 7;
  return swift_willThrow();
}

uint64_t StoryMusicCuration.dictionaryForSavingToPHMemory()()
{
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v6;
  v11 = *(*(v0 + 32) + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v11, 0, v7, v8, v9, v10);
    v12 = v30;
    do
    {
      OUTLINED_FUNCTION_16_20();
      if (v2 >= v3 >> 1)
      {
        sub_1C6F7ED9C(v3 > 1, v1, 1, v13, v14, v15, v16);
        v12 = v30;
      }

      OUTLINED_FUNCTION_21_20();
      --v11;
    }

    while (v11);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  *(inited + 72) = v17;
  *(inited + 48) = v12;
  *(inited + 80) = sub_1C755068C();
  *(inited + 88) = v18;
  v23 = *(*(v4 + 40) + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v23, 0, v19, v20, v21, v22);
    v24 = v31;
    do
    {
      OUTLINED_FUNCTION_16_20();
      if (v2 >= v3 >> 1)
      {
        sub_1C6F7ED9C(v3 > 1, v1, 1, v25, v26, v27, v28);
        v24 = v31;
      }

      OUTLINED_FUNCTION_21_20();
      --v23;
    }

    while (v23);
  }

  *(inited + 120) = v17;
  *(inited + 96) = v24;
  return sub_1C75504DC();
}

id sub_1C70ECD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = sub_1C755065C();

  v15 = sub_1C755065C();

  v16 = [a10 createAssetWithCategory:a1 subcategory:a2 catalog:a3 songID:a4 title:v14 subtitle:v15 colorGradeCategory:a9];

  return v16;
}

uint64_t type metadata accessor for StoryMusicCuration(uint64_t a1)
{
  result = qword_1EDD0A738;
  if (!qword_1EDD0A738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C70ECE9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638, &qword_1C756AEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70ECF0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638, &qword_1C756AEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70ECF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicCurationDiagnostics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70ECFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638, &qword_1C756AEE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C70ED048()
{
  result = qword_1EDD0A788;
  if (!qword_1EDD0A788)
  {
    result = swift_getWitnessTable(byte_1C756B3B4, &type metadata for StoryMusicCuration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0A788);
  }

  return result;
}

unint64_t sub_1C70ED09C()
{
  result = qword_1EDD0A7B8;
  if (!qword_1EDD0A7B8)
  {
    result = swift_getWitnessTable(aU_35, &type metadata for StoryMusicCuration.CurationInputKey, v0, v1);
    atomic_store(result, &qword_1EDD0A7B8);
  }

  return result;
}

unint64_t sub_1C70ED0F0()
{
  result = qword_1EDD0A7A0;
  if (!qword_1EDD0A7A0)
  {
    result = swift_getWitnessTable(byte_1C756B314, &type metadata for StoryMusicCuration.CurationResultKey, v0, v1);
    atomic_store(result, &qword_1EDD0A7A0);
  }

  return result;
}

uint64_t sub_1C70ED144(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216820, &qword_1C758FDF0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70ED1BC()
{
  result = qword_1EC217670;
  if (!qword_1EC217670)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationSong, &type metadata for StoryMusicCurationSong, v0, v1);
    atomic_store(result, &qword_1EC217670);
  }

  return result;
}

uint64_t sub_1C70ED210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicCuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70ED274(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C70ED2CC(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2155F0, &unk_1C756AF00);
    v10 = sub_1C70ED470(a2, type metadata accessor for MusicKeywordCompletion, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}