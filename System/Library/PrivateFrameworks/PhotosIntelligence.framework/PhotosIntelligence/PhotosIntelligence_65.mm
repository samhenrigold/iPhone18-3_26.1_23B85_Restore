void sub_1C743D4B4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >= *v31)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v78;
      }

      v35 = v8[2];
      v34 = v8[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_1C6FB17EC(v34 > 1, v35 + 1, 1, v8);
        v8 = v79;
      }

      v8[2] = v36;
      v37 = v8 + 4;
      v38 = &v8[2 * v35 + 4];
      *v38 = v7;
      v38[1] = v9;
      v83 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v8[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v8[4];
            v43 = v8[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_56:
            if (v45)
            {
              goto LABEL_96;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_99;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_104;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v36 < 2)
          {
            goto LABEL_98;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_71:
          if (v60)
          {
            goto LABEL_101;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_103;
          }

          if (v67 < v59)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v39 - 1 >= v36)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v71 = &v37[2 * v39 - 2];
          v72 = *v71;
          v73 = &v37[2 * v39];
          v74 = v73[1];
          sub_1C7262924((*a3 + 16 * *v71), (*a3 + 16 * *v73), (*a3 + 16 * v74), v83);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v74 < v72)
          {
            goto LABEL_91;
          }

          v75 = v8;
          v76 = v8[2];
          if (v39 > v76)
          {
            goto LABEL_92;
          }

          *v71 = v72;
          v71[1] = v74;
          if (v39 >= v76)
          {
            goto LABEL_93;
          }

          v36 = v76 - 1;
          memmove(&v37[2 * v39], v73 + 2, 16 * (v76 - 1 - v39));
          v75[2] = v76 - 1;
          v77 = v76 > 2;
          v8 = v75;
          v5 = 0;
          if (!v77)
          {
            goto LABEL_85;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_94;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_95;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_97;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_100;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_105;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C7262650(&v85, *result, a3);
LABEL_89:
}

uint64_t sub_1C743D994(uint64_t a1, uint64_t a2)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  (*(*(TokenCategoryType - 8) + 32))(a2, a1, TokenCategoryType);
  return a2;
}

uint64_t sub_1C743D9F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C743DA50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1C743DAB0(uint64_t *a1)
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
  sub_1C7442A70(v6);
  return sub_1C755193C();
}

uint64_t MusicKeywordsGeneratorEmbedded.__allocating_init(usingCache:embeddingType:with:maxKeywords:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_48_28();
  swift_allocObject();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  v3 = OUTLINED_FUNCTION_63_24();

  return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v3, v4, v5, v6);
}

uint64_t sub_1C743DBD4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07E08);
  __swift_project_value_buffer(v0, qword_1EDD07E08);
  return sub_1C754FEFC();
}

uint64_t MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 72) = *a2;
  return OUTLINED_FUNCTION_7_77(sub_1C743DC98, 0);
}

uint64_t sub_1C743DC98()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_defaultActor_initialize();
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 120) = v3;
  *(v2 + 128) = v5;
  *(v2 + 112) = v4;
  *(v2 + 144) = v1;
  *(v2 + 136) = [objc_allocWithZone(PNTextEmbeddingService) init];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1C743DD78;
  v7 = *(v0 + 16);

  return sub_1C743DFD4(v7);
}

uint64_t sub_1C743DD78()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 56) = v0;

  sub_1C743E848();
  if (v0)
  {
    swift_getObjectType();
    v6 = sub_1C7550C8C();
    v8 = v7;
    v9 = sub_1C743DF70;
  }

  else
  {

    swift_getObjectType();
    v6 = sub_1C7550C8C();
    v8 = v10;
    *(v4 + 64) = v3;
    v9 = sub_1C743DEEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1C743DEEC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];

  *(v2 + 128) = v1;

  OUTLINED_FUNCTION_116();
  v5 = v0[5];

  return v4(v5);
}

uint64_t sub_1C743DF70()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C743DFD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_7_77(sub_1C743DFF0, v1);
}

uint64_t sub_1C743DFF0()
{
  v53 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = qword_1EDD07E00;
    v3 = v1;
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_184(&qword_1EDD07E00);
    }

    v4 = sub_1C754FF1C();
    __swift_project_value_buffer(v4, qword_1EDD07E08);
    v5 = sub_1C754FEEC();
    v6 = sub_1C755118C();
    if (OUTLINED_FUNCTION_128(v6))
    {
      v7 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v7);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_37();
    }

    v13 = v0[3];

    v52[0] = *(v13 + 144);
    v15 = StoryMusicCache.read(cacheType:)(v52, v14);
    if (*(v15 + 16))
    {
      v16 = sub_1C754FEEC();
      v17 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v17))
      {
        v18 = OUTLINED_FUNCTION_127();
        *v18 = 0;
        _os_log_impl(&dword_1C6F5C000, v16, v17, "(Maestro embeddings cache) Using the cached embeddings", v18, 2u);
        OUTLINED_FUNCTION_109();
      }

      v19 = v0[3];

      v20 = sub_1C7443320(v15, v19);

      OUTLINED_FUNCTION_116();

      return v21(v20);
    }
  }

  if (qword_1EDD07E00 != -1)
  {
    OUTLINED_FUNCTION_0_184(&qword_1EDD07E00);
  }

  v23 = sub_1C754FF1C();
  v0[4] = __swift_project_value_buffer(v23, qword_1EDD07E08);
  v24 = sub_1C754FEEC();
  v25 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v25))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v31 = v0[3];

  if (!*(v31 + 144))
  {
    v33 = type metadata accessor for MaestroKeywordResolver();
    v41 = static MaestroKeywordResolver.allMaestroKeywordsAndAliases()(v33, v34, v35, v36, v37, v38, v39, v40, v51);
LABEL_22:
    v32 = v41;
    goto LABEL_23;
  }

  if (*(v31 + 144) != 1)
  {
    v42 = type metadata accessor for MaestroKeywordResolver();
    v41 = static MaestroKeywordResolver.allMusicSearchKeyword()(v42, v43, v44, v45, v46, v47, v48, v49, v51);
    goto LABEL_22;
  }

  v32 = *(v0[3] + 112);
  sub_1C75504FC();
LABEL_23:
  v0[5] = v32;
  sub_1C75504FC();
  v50 = swift_task_alloc();
  v0[6] = v50;
  *v50 = v0;
  OUTLINED_FUNCTION_52_3(v50);

  return PNTextEmbeddingService.encode(_:)(v32);
}

uint64_t sub_1C743E3EC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[7] = v7;
  v3[8] = v0;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1C743E544, v10, 0);
  }
}

void sub_1C743E544()
{
  v45 = v0;
  v1 = 0;
  v2 = *(v0 + 40);
  v43 = *(v2 + 16);
  v41 = *(v0 + 56);
  v3._rawValue = MEMORY[0x1E69E7CC8];
  v42 = v2;
  for (i = (v2 + 40); ; i += 2)
  {
    if (v43 == v1)
    {
      v22 = v40;
      v23 = *(v40 + 16);

      if (v23)
      {
        v24 = *(v40 + 16);
        v25 = sub_1C754FEEC();
        v26 = sub_1C755117C();
        if (OUTLINED_FUNCTION_128(v26))
        {
          *OUTLINED_FUNCTION_127() = 0;
          OUTLINED_FUNCTION_127_0();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_23_3();
        }

        v22 = v40;
        v32 = *(v40 + 24);

        LOBYTE(rawValue) = *(v32 + 144);
        StoryMusicCache.write(cacheType:using:)(&rawValue, v3);

        if (v33)
        {

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_94_1();

          __asm { BRAA            X1, X16 }
        }
      }

      v37 = *(v22 + 24);

      sub_1C7443320(v3._rawValue, v37);

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_94_1();

      __asm { BRAA            X2, X16 }
    }

    if (v1 >= *(v42 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v1 >= *(v41 + 16))
    {
      goto LABEL_28;
    }

    v6 = *(i - 1);
    v5 = *i;
    v7 = *(v41 + 32 + 8 * v1);
    sub_1C75504FC();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    rawValue = v3._rawValue;
    v8 = OUTLINED_FUNCTION_180();
    sub_1C6F78124(v8, v9);
    OUTLINED_FUNCTION_3_114();
    if (v12)
    {
      goto LABEL_29;
    }

    v13 = v10;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F90, &unk_1C7571480);
    v3._rawValue = rawValue;
    if (sub_1C7551A2C())
    {
      break;
    }

LABEL_9:
    if (v14)
    {
      *(rawValue[7] + 8 * v13) = v7;
    }

    else
    {
      OUTLINED_FUNCTION_45_37();
      OUTLINED_FUNCTION_1_3(v19);
      v20 = (rawValue[6] + 16 * v13);
      *v20 = v6;
      v20[1] = v5;
      *(*(v3._rawValue + 7) + 8 * v13) = v7;
      OUTLINED_FUNCTION_54_3();
      if (v12)
      {
        goto LABEL_30;
      }

      *(v3._rawValue + 2) = v21;
    }

    ++v1;
  }

  v15 = OUTLINED_FUNCTION_180();
  v17 = sub_1C6F78124(v15, v16);
  if ((v14 & 1) == (v18 & 1))
  {
    v13 = v17;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_94_1();

  sub_1C7551E4C();
}

unint64_t sub_1C743E848()
{
  result = qword_1EDD07DF8;
  if (!qword_1EDD07DF8)
  {
    v3 = type metadata accessor for MusicKeywordsGeneratorEmbedded();
    result = swift_getWitnessTable(protocol conformance descriptor for MusicKeywordsGeneratorEmbedded, v3, v0, v1);
    atomic_store(result, &qword_1EDD07DF8);
  }

  return result;
}

uint64_t sub_1C743E8C0()
{
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);

  return sub_1C743E970();
}

uint64_t sub_1C743E970()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  *(v1 + 344) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 80) = v6;
  *(v1 + 120) = *v0;
  v7 = sub_1C754F38C();
  *(v1 + 128) = v7;
  *(v1 + 136) = *(v7 - 8);
  *(v1 + 144) = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C743EA5C()
{
  if (qword_1EDD07E00 != -1)
  {
    OUTLINED_FUNCTION_0_184(&qword_1EDD07E00);
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD07E08);
  *(v0 + 152) = v3;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v5))
  {
    v6 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_92_0(v6);
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Keywords generation using text embedding started for query", v1, 2u);
    OUTLINED_FUNCTION_37();
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 96);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1C754F1CC();
  if (!*(*(v7 + 112) + 16))
  {
    v13 = sub_1C754FEEC();
    v14 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v14))
    {
      v15 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v15);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_37();
    }

    v21 = *(v0 + 96);
    v12 = *(v0 + 104);

    sub_1C7443750();
    swift_allocError();
    v23 = 2;
    goto LABEL_15;
  }

  if (sub_1C75507FC() < 1)
  {
    v24 = sub_1C754FEEC();
    v25 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v25))
    {
      v26 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v26);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_37();
    }

    v21 = *(v0 + 96);
    v12 = *(v0 + 104);

    sub_1C7443750();
    swift_allocError();
    v23 = 1;
LABEL_15:
    *v22 = v23;
    swift_willThrow();
    OUTLINED_FUNCTION_87_1(v21, v8[3]);
    sub_1C754F1AC();
    v32 = OUTLINED_FUNCTION_98_1();
    v33(v32);
LABEL_16:
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v34 + 8))(v12);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_64_21();
  sub_1C754F2CC();
  *(v0 + 160) = v3;
  if (v3)
  {
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1(*(v0 + 96), v8[3]);
    sub_1C754F1AC();
    (*(v10 + 8))(v9, v11);
    goto LABEL_16;
  }

  if (*(v0 + 344) == 1)
  {
    if (qword_1EDD09538 != -1)
    {
      swift_once();
    }

    *(v0 + 168) = qword_1EDD09540;
    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DFA0](v37, v38, v39);
  }

  else
  {
    v41 = swift_task_alloc();
    *(v0 + 320) = v41;
    *v41 = v0;
    v41[1] = sub_1C7440AE0;
    OUTLINED_FUNCTION_44();

    return sub_1C7441F28(v42, v43);
  }
}

uint64_t sub_1C743EE6C()
{
  OUTLINED_FUNCTION_42();
  v0[22] = sub_1C74415B0(v0[10], v0[11], v0[21]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C743F548()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7440038()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 304) = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7440158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_20_20();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_27_2();
  a26 = v28;
  v31 = v28;
  v32 = v28[36];
  sub_1C75504FC();
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755118C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v28[38];
    v36 = v31;
    OUTLINED_FUNCTION_23_1();
    a16 = OUTLINED_FUNCTION_60_11();
    *v32 = 136315394;
    v37 = OUTLINED_FUNCTION_282();
    v40 = sub_1C6F765A4(v37, v38, v39);

    *(v32 + 4) = v40;
    v31 = v36;
    v41 = OUTLINED_FUNCTION_30_45();
    v42 = MEMORY[0x1CCA5D090](v35, v41);
    v44 = sub_1C6F765A4(v42, v43, &a16);

    *(v32 + 14) = v44;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = v31[38];
  v51 = isUniquelyReferenced_nonNull_native >> 62;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_89:
    v52 = sub_1C75516BC();
  }

  else
  {
    v52 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v31[34];
  v54 = v53 >> 62;
  if (v53 >> 62)
  {
    v55 = sub_1C75516BC();
  }

  else
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v55 + v52;
  if (__OFADD__(v55, v52))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v54)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v54)
  {
LABEL_15:
    sub_1C75516BC();
    goto LABEL_16;
  }

  v57 = v53 & 0xFFFFFFFFFFFFFF8;
  v58 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v58 >= v56)
  {
    v59 = v31[34];
    goto LABEL_17;
  }

LABEL_16:
  v59 = sub_1C75518CC();
  v57 = v59 & 0xFFFFFFFFFFFFFF8;
  v58 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
  v60 = *(v57 + 16);
  v61 = v58 - v60;
  v62 = v57 + 8 * v60;
  v153 = v59;
  if (!v51)
  {
    isUniquelyReferenced_nonNull_native &= 0xFFFFFFFFFFFFFF8uLL;
    v51 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v51)
    {
      if (v61 < v51)
      {
        goto LABEL_93;
      }

      type metadata accessor for MusicKeywordCompletion();
      swift_arrayInitWithCopy();
      goto LABEL_30;
    }

LABEL_34:

    if (v52 <= 0)
    {
      goto LABEL_35;
    }

    goto LABEL_92;
  }

  if (isUniquelyReferenced_nonNull_native < 0)
  {
    isUniquelyReferenced_nonNull_native = v31[38];
  }

  else
  {
    isUniquelyReferenced_nonNull_native &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v63 = sub_1C75516BC();
  if (!v63)
  {
    goto LABEL_34;
  }

  v64 = v63;
  v65 = sub_1C75516BC();
  if (v61 < v65)
  {
    goto LABEL_93;
  }

  if (v64 < 1)
  {
LABEL_97:
    __break(1u);
    return;
  }

  a12 = v65;
  a14 = v57;
  v154 = v52;
  v66 = v62 + 32;
  OUTLINED_FUNCTION_0_181();
  sub_1C7099594(v67, &qword_1EC2155F0, &unk_1C756AF00, v68);
  for (i = 0; i != v64; ++i)
  {
    v70 = v31[38];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
    isUniquelyReferenced_nonNull_native = sub_1C6FDD0FC((v31 + 6), i, v70);
    v72 = *v71;

    (isUniquelyReferenced_nonNull_native)(v31 + 6, 0);
    *(v66 + 8 * i) = v72;
  }

  v57 = a14;
  v52 = v154;
  v51 = a12;
LABEL_30:

  if (v51 < v52)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v51 > 0)
  {
    v73 = *(v57 + 16);
    v74 = __OFADD__(v73, v51);
    v75 = v73 + v51;
    if (v74)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    *(v57 + 16) = v75;
  }

LABEL_35:
  v76 = v31[39];
  v77 = v31[32];
  v78 = v31[33] + 1;
  v31[33] = v78;
  v31[34] = v59;
  v79 = v31[22];
  if (v78 == v77)
  {
    v152 = v76;

    v155 = sub_1C6FB6304();
    if (!v155)
    {
LABEL_71:
      v119 = sub_1C75504FC();
      sub_1C71CDA10(v119);
      v120 = sub_1C75504FC();
      sub_1C71CC894(v120);
      OUTLINED_FUNCTION_62_25();
      sub_1C70CCDF0(v121);
      if (v152)
      {

        OUTLINED_FUNCTION_20_4();
      }

      else
      {
        v123 = v31[11];

        sub_1C75504FC();
        v124 = sub_1C754FEEC();
        v125 = sub_1C75511BC();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = v31[11];
          OUTLINED_FUNCTION_23_1();
          a16 = OUTLINED_FUNCTION_60_11();
          *v123 = 136643075;
          v127 = OUTLINED_FUNCTION_46_36();
          *(v123 + 4) = sub_1C6F765A4(v127, v126, v128);
          v129 = OUTLINED_FUNCTION_30_45();

          MEMORY[0x1CCA5D090](v130, v129);

          v131 = OUTLINED_FUNCTION_65_27();
          v134 = sub_1C6F765A4(v131, v132, v133);

          *(v123 + 14) = v134;
          OUTLINED_FUNCTION_127_0();
          _os_log_impl(v135, v136, v137, v138, v139, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_23_3();
        }

        sub_1C754F2EC();
        v140 = v31[12];

        OUTLINED_FUNCTION_87_1(v140, v140[3]);
        sub_1C754F1AC();
        v142 = OUTLINED_FUNCTION_6_107();
        v143(v142);

        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_20_4();

        v146(v144, v145, v146, v147, v148, v149, v150, v151, a9, 0, a11, a12, v153, a14, v155, a16, a17, a18, a19, a20);
      }

      return;
    }

    a9 = v31;
    a14 = v59 & 0xC000000000000001;
    a12 = v59 & 0xFFFFFFFFFFFFFF8;
    sub_1C75504FC();
    v31 = 0;
    v80 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (a14)
      {
        v81 = OUTLINED_FUNCTION_98_1();
        v57 = MEMORY[0x1CCA5DDD0](v81);
      }

      else
      {
        OUTLINED_FUNCTION_41_43();
        if (v82)
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_72_23();
      }

      v83 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v80[2] && (v84 = *(v57 + 16), isUniquelyReferenced_nonNull_native = *(v57 + 24), sub_1C75504FC(), sub_1C6F78124(v84, isUniquelyReferenced_nonNull_native), v51 = v85, , (v51 & 1) != 0))
      {
        OUTLINED_FUNCTION_24_44();
        if (v87)
        {
          isUniquelyReferenced_nonNull_native = *(v57 + 16);
          v88 = *(v57 + 24);
          a11 = v86;

          swift_isUniquelyReferenced_nonNull_native();
          a16 = v80;
          v89 = OUTLINED_FUNCTION_58();
          sub_1C6F78124(v89, v90);
          OUTLINED_FUNCTION_9_88();
          if (v74)
          {
            goto LABEL_88;
          }

          v51 = v91;
          v93 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8, &qword_1C758B530);
          OUTLINED_FUNCTION_29_41();
          v94 = sub_1C7551A2C();
          v80 = a16;
          if (v94)
          {
            v95 = OUTLINED_FUNCTION_58();
            sub_1C6F78124(v95, v96);
            OUTLINED_FUNCTION_5_1();
            if (!v98)
            {
              goto LABEL_78;
            }

            v51 = v97;
            if ((v93 & 1) == 0)
            {
LABEL_52:
              OUTLINED_FUNCTION_59_27();
              OUTLINED_FUNCTION_1_3(v99);
              v100 = (v80[6] + 16 * v51);
              *v100 = isUniquelyReferenced_nonNull_native;
              v100[1] = v88;
              *(v80[7] + 8 * v51) = v57;
              sub_1C75504FC();

              OUTLINED_FUNCTION_60_25();
              if (v74)
              {
                goto LABEL_94;
              }

              v80[2] = v101;
              goto LABEL_65;
            }
          }

          else if ((v93 & 1) == 0)
          {
            goto LABEL_52;
          }

          *(v80[7] + 8 * v51) = v57;
        }
      }

      else
      {
        v102 = *(v57 + 16);
        v103 = *(v57 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a16 = v80;
        OUTLINED_FUNCTION_36_36();
        OUTLINED_FUNCTION_9_88();
        if (v74)
        {
          goto LABEL_85;
        }

        v51 = v104;
        v106 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8, &qword_1C758B530);
        OUTLINED_FUNCTION_29_41();
        v107 = sub_1C7551A2C();
        v80 = a16;
        if (v107)
        {
          OUTLINED_FUNCTION_36_36();
          OUTLINED_FUNCTION_5_1();
          if (!v98)
          {
LABEL_78:
            OUTLINED_FUNCTION_20_4();

            sub_1C7551E4C();
            return;
          }

          v51 = v108;
        }

        if (v106)
        {
          *(v80[7] + 8 * v51) = v57;
        }

        else
        {
          OUTLINED_FUNCTION_59_27();
          OUTLINED_FUNCTION_1_3(v109);
          v110 = (v80[6] + 16 * v51);
          *v110 = v102;
          v110[1] = v103;
          *(v80[7] + 8 * v51) = v57;
          OUTLINED_FUNCTION_60_25();
          if (v74)
          {
            goto LABEL_87;
          }

          v80[2] = v111;
          sub_1C75504FC();
        }
      }

LABEL_65:

      v31 = (v31 + 1);
      if (v83 == v155)
      {

        v31 = a9;
        goto LABEL_71;
      }
    }
  }

  if (v78 >= *(v79 + 16))
  {
    goto LABEL_95;
  }

  v112 = v79 + 16 * v78;
  v31[35] = *(v112 + 32);
  v31[36] = *(v112 + 40);
  sub_1C75504FC();
  v113 = swift_task_alloc();
  v31[37] = v113;
  *v113 = v31;
  OUTLINED_FUNCTION_1_136();
  *(v114 + 8) = v115;
  OUTLINED_FUNCTION_20_4();

  sub_1C7441F28(v116, v117);
}

uint64_t sub_1C7440AE0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 336) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C7440BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v22 = v20[41];
  v23 = v20[42];
  v101 = sub_1C6FB6304();
  if (v101)
  {
    a9 = v22;
    a10 = v20;
    a14 = v23 & 0xC000000000000001;
    a12 = v23 & 0xFFFFFFFFFFFFFF8;
    sub_1C75504FC();
    v24 = 0;
    v25 = MEMORY[0x1E69E7CC8];
    a13 = v23;
    while (1)
    {
      if (a14)
      {
        v26 = OUTLINED_FUNCTION_282();
        v21 = MEMORY[0x1CCA5DDD0](v26);
      }

      else
      {
        OUTLINED_FUNCTION_41_43();
        if (v27)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_72_23();
      }

      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return;
      }

      if (!v25[2])
      {
        break;
      }

      v29 = *(v21 + 16);
      v30 = *(v21 + 24);
      sub_1C75504FC();
      v31 = sub_1C6F78124(v29, v30);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        break;
      }

      if (*(*(v25[7] + 8 * v31) + 32) >= *(v21 + 32))
      {
        goto LABEL_27;
      }

      a11 = v24 + 1;
      v35 = *(v21 + 16);
      v34 = *(v21 + 24);

      swift_isUniquelyReferenced_nonNull_native();
      a16 = v25;
      v36 = OUTLINED_FUNCTION_58();
      sub_1C6F78124(v36, v37);
      OUTLINED_FUNCTION_3_114();
      if (v40)
      {
        goto LABEL_54;
      }

      v41 = v38;
      v42 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8, &qword_1C758B530);
      OUTLINED_FUNCTION_29_41();
      if (sub_1C7551A2C())
      {
        v43 = OUTLINED_FUNCTION_58();
        sub_1C6F78124(v43, v44);
        OUTLINED_FUNCTION_5_1();
        if (!v46)
        {
          goto LABEL_44;
        }

        v41 = v45;
      }

      if (v42)
      {
        *(v25[7] + 8 * v41) = v21;
      }

      else
      {
        OUTLINED_FUNCTION_45_37();
        OUTLINED_FUNCTION_1_3(v61);
        v62 = (v25[6] + 16 * v41);
        *v62 = v35;
        v62[1] = v34;
        *(v25[7] + 8 * v41) = v21;
        sub_1C75504FC();

        OUTLINED_FUNCTION_54_3();
        if (v40)
        {
          goto LABEL_55;
        }

        v25[2] = v63;
      }

      v28 = v24 + 1;
LABEL_28:
      ++v24;
      if (v28 == v101)
      {

        v22 = a9;
        v20 = a10;
        goto LABEL_34;
      }
    }

    v47 = *(v21 + 16);
    v48 = *(v21 + 24);

    swift_isUniquelyReferenced_nonNull_native();
    a16 = v25;
    v49 = OUTLINED_FUNCTION_65_27();
    sub_1C6F78124(v49, v50);
    OUTLINED_FUNCTION_3_114();
    if (v40)
    {
      goto LABEL_51;
    }

    v53 = v51;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8, &qword_1C758B530);
    OUTLINED_FUNCTION_29_41();
    if (sub_1C7551A2C())
    {
      v55 = OUTLINED_FUNCTION_65_27();
      sub_1C6F78124(v55, v56);
      OUTLINED_FUNCTION_5_1();
      if (!v46)
      {
LABEL_44:
        OUTLINED_FUNCTION_20_4();

        sub_1C7551E4C();
        return;
      }

      v53 = v57;
    }

    if (v54)
    {
      OUTLINED_FUNCTION_54_31();
    }

    else
    {
      OUTLINED_FUNCTION_45_37();
      OUTLINED_FUNCTION_1_3(v58);
      v59 = (v25[6] + 16 * v53);
      *v59 = v47;
      v59[1] = v48;
      *(v25[7] + 8 * v53) = v21;
      OUTLINED_FUNCTION_54_3();
      if (v40)
      {
        goto LABEL_53;
      }

      v25[2] = v60;
      sub_1C75504FC();
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_34:
  v64 = sub_1C75504FC();
  sub_1C71CDA10(v64);
  v65 = sub_1C75504FC();
  sub_1C71CC894(v65);
  OUTLINED_FUNCTION_62_25();
  sub_1C70CCDF0(v66);
  if (v22)
  {

    OUTLINED_FUNCTION_20_4();
  }

  else
  {

    sub_1C75504FC();
    v68 = sub_1C754FEEC();
    v69 = sub_1C75511BC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = v20[11];
      v71 = OUTLINED_FUNCTION_23_1();
      a16 = swift_slowAlloc();
      *v71 = 136643075;
      v72 = OUTLINED_FUNCTION_46_36();
      *(v71 + 4) = sub_1C6F765A4(v72, v70, v73);
      *(v71 + 12) = 2080;
      v74 = type metadata accessor for MusicKeywordCompletion();

      MEMORY[0x1CCA5D090](v75, v74);

      v76 = OUTLINED_FUNCTION_98_1();
      v79 = sub_1C6F765A4(v76, v77, v78);

      *(v71 + 14) = v79;
      _os_log_impl(&dword_1C6F5C000, v68, v69, "Final keyword results: %{sensitive}s -> %s", v71, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_64_21();
    sub_1C754F2EC();

    if (v69)
    {

      OUTLINED_FUNCTION_38_1();
      sub_1C754F1AC();
      v80 = OUTLINED_FUNCTION_180();
      v81(v80);

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_20_4();

      v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, v101, a16, a17, a18, a19, a20);
    }

    else
    {
      OUTLINED_FUNCTION_38_1();
      sub_1C754F1AC();
      v91 = OUTLINED_FUNCTION_180();
      v92(v91);

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_20_4();

      v95(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, v101, a16, a17, a18, a19, a20);
    }
  }
}

uint64_t sub_1C7441190()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_10_79();
  v1 = OUTLINED_FUNCTION_39_1();
  v2(v1);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7441244()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_10_79();
  v1 = OUTLINED_FUNCTION_39_1();
  v2(v1);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C74412F8()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_10_79();
  v1 = OUTLINED_FUNCTION_39_1();
  v2(v1);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);

  OUTLINED_FUNCTION_43();

  return v4();
}

void static MusicKeywordsGeneratorEmbedded.createNGrams(from:n:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = *(result + 16);
    v9 = v8 - a2;
    if (v8 >= a2)
    {
      if ((v8 - a2) >= 0)
      {
        v26 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v9 + 1, 0, a4, a5, a6, a7);
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v25 = v8;
        while (v10 <= v9)
        {
          if (v12)
          {
            goto LABEL_27;
          }

          v13 = v11 + v7;
          if (__OFADD__(v11, v7))
          {
            goto LABEL_21;
          }

          if (v13 < v11)
          {
            goto LABEL_22;
          }

          if (v8 < v11)
          {
            goto LABEL_23;
          }

          if (v11 < 0)
          {
            goto LABEL_24;
          }

          if (v8 < v13)
          {
            goto LABEL_25;
          }

          v14 = v7;
          sub_1C75504FC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C80, &unk_1C7575C20);
          sub_1C7099594(&qword_1EDD06878, &unk_1EC218C80, &unk_1C7575C20, MEMORY[0x1E69E6958]);
          v15 = sub_1C75505FC();
          v17 = v16;

          v23 = *(v26 + 16);
          v22 = *(v26 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1C6F7ED9C(v22 > 1, v23 + 1, 1, v18, v19, v20, v21);
          }

          ++v10;
          *(v26 + 16) = v23 + 1;
          v24 = v26 + 16 * v23;
          *(v24 + 32) = v15;
          *(v24 + 40) = v17;
          v12 = v11 == v9;
          if (v11 == v9)
          {
            v11 = 0;
          }

          else
          {
            ++v11;
          }

          v7 = v14;
          v8 = v25;
          if (v9 + 1 == v10)
          {
            return;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }
  }
}

uint64_t sub_1C74415B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1C754D84C();
  v7 = *(v6 - 8);
  v106 = v6;
  v107 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v104 = &v98 - v10;
  sub_1C707DA44();
  v102 = v11;
  v99 = a1;
  v100 = a2;
  OUTLINED_FUNCTION_58();
  v12 = sub_1C75506FC();
  v14 = v13;
  v115 = v12;
  v116 = v13;
  v15 = swift_allocObject();
  v101 = v15;
  *(v15 + 16) = MEMORY[0x1E69E7CD0];
  v103 = (v15 + 16);
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = (a3 + 40);
    v18 = v104;
    do
    {
      v19 = *v17;
      v108 = *(v17 - 1);
      v20 = sub_1C75506FC();
      v111 = v115;
      v112 = v116;
      v109 = v20;
      v110 = v21;
      v22 = sub_1C754E15C();
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);
      sub_1C6FB5E8C();
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_41();
      sub_1C755157C();
      v24 = v23;
      sub_1C6FB5FC8(v18, &qword_1EC214DF8, &qword_1C755BFD0);

      if (v24)
      {
      }

      else
      {
        sub_1C70F082C(&v111, v108, v19);

        sub_1C755073C();
      }

      v17 += 2;
      --v16;
    }

    while (v16);
    v12 = v115;
    v14 = v116;
  }

  v111 = v12;
  v112 = v14;
  v109 = 0x5D7D507B705C5BLL;
  v110 = 0xE700000000000000;
  v113 = 32;
  v114 = 0xE100000000000000;
  v97 = sub_1C6FB5E8C();
  v25 = sub_1C755155C();
  v27 = v26;

  v111 = v25;
  v112 = v27;
  v28 = v105;
  sub_1C754D7FC();
  v108 = v97;
  v29 = sub_1C755151C();
  v30 = *(v107 + 8);
  v107 += 8;
  v30(v28, v106);

  v35 = *(v29 + 16);
  if (v35)
  {
    v109 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v35, 0, v31, v32, v33, v34);
    v36 = v109;
    v104 = v29;
    v37 = (v29 + 40);
    do
    {
      v38 = *v37;
      v111 = *(v37 - 1);
      v112 = v38;
      sub_1C75504FC();
      v39 = v105;
      sub_1C754D7FC();
      v40 = sub_1C755154C();
      v42 = v41;
      v30(v39, v106);

      v109 = v36;
      v48 = *(v36 + 16);
      v47 = *(v36 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1C6F7ED9C(v47 > 1, v48 + 1, 1, v43, v44, v45, v46);
        v36 = v109;
      }

      *(v36 + 16) = v48 + 1;
      v49 = v36 + 16 * v48;
      *(v49 + 32) = v40;
      *(v49 + 40) = v42;
      v37 += 2;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v50 = 0;
  v51 = *(v36 + 16);
  v107 = v36 + 32;
  v108 = v51;
  v52 = v102;
  v53 = v102 + 56;
  v54 = MEMORY[0x1E69E7CC0];
LABEL_16:
  while (v50 != v108)
  {
    if (v50 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v55 = (v107 + 16 * v50);
    v57 = *v55;
    v56 = v55[1];
    ++v50;
    v58 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v58 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      if (*(v52 + 16))
      {
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v59 = sub_1C7551FAC();
        v60 = ~(-1 << *(v52 + 32));
        while (1)
        {
          v35 = v59 & v60;
          if (((*(v53 + (((v59 & v60) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v59 & v60)) & 1) == 0)
          {
            break;
          }

          v61 = (*(v52 + 48) + 16 * v35);
          if (*v61 != v57 || v61[1] != v56)
          {
            v63 = sub_1C7551DBC();
            v59 = v35 + 1;
            if ((v63 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_1C75504FC();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v54 + 16) + 1, 1, v65, v66, v67, v68);
        v54 = v109;
      }

      v70 = *(v54 + 16);
      v69 = *(v54 + 24);
      v35 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_1C6F7ED9C(v69 > 1, v70 + 1, 1, v65, v66, v67, v68);
        v54 = v109;
      }

      *(v54 + 16) = v35;
      v71 = v54 + 16 * v70;
      *(v71 + 32) = v57;
      *(v71 + 40) = v56;
      v52 = v102;
    }
  }

  v72 = v103;
  sub_1C70739AC();
  *v72 = v73;
  v54 = v99;
  v35 = v100;
  if (qword_1EDD07E00 == -1)
  {
    goto LABEL_37;
  }

LABEL_41:
  OUTLINED_FUNCTION_0_184(&qword_1EDD07E00);
LABEL_37:
  v74 = sub_1C754FF1C();
  __swift_project_value_buffer(v74, qword_1EDD07E08);
  OUTLINED_FUNCTION_30();
  v75 = swift_allocObject();
  *(v75 + 16) = v54;
  *(v75 + 24) = v35;
  OUTLINED_FUNCTION_30();
  v76 = swift_allocObject();
  v77 = v101;
  *(v76 + 16) = sub_1C734A668;
  *(v76 + 24) = v77;
  sub_1C75504FC();
  v108 = sub_1C754FEEC();
  v78 = sub_1C755117C();
  v79 = OUTLINED_FUNCTION_71_18(&unk_1F46C7DD8);
  *(v79 + 16) = 37;
  v80 = OUTLINED_FUNCTION_71_18(&unk_1F46C7E00);
  *(v80 + 16) = 8;
  OUTLINED_FUNCTION_30();
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1C734A5D0;
  *(v81 + 24) = v75;
  OUTLINED_FUNCTION_30();
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1C734A5F4;
  *(v82 + 24) = v81;
  v83 = OUTLINED_FUNCTION_71_18(&unk_1F46C7E78);
  *(v83 + 16) = 37;
  v84 = OUTLINED_FUNCTION_71_18(&unk_1F46C7EA0);
  *(v84 + 16) = 8;
  OUTLINED_FUNCTION_30();
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1C7443C54;
  *(v85 + 24) = v76;
  OUTLINED_FUNCTION_30();
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1C734A780;
  *(v86 + 24) = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60, &unk_1C758B6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755D200;
  *(inited + 32) = sub_1C734A5EC;
  *(inited + 40) = v79;
  *(inited + 48) = sub_1C734A788;
  *(inited + 56) = v80;
  *(inited + 64) = sub_1C734A5FC;
  *(inited + 72) = v82;
  *(inited + 80) = sub_1C734A788;
  *(inited + 88) = v83;
  *(inited + 96) = sub_1C734A788;
  *(inited + 104) = v84;
  v88 = v108;
  *(inited + 112) = sub_1C734A77C;
  *(inited + 120) = v86;
  swift_setDeallocating();

  sub_1C6FDE6C8();
  if (os_log_type_enabled(v88, v78))
  {
    v89 = OUTLINED_FUNCTION_23_1();
    v111 = swift_slowAlloc();
    *v89 = 136643075;
    *(v89 + 4) = sub_1C6F765A4(v99, v100, &v111);
    *(v89 + 12) = 2085;
    swift_beginAccess();
    sub_1C75504FC();
    v90 = sub_1C7550F9C();
    v92 = v91;

    v93 = sub_1C6F765A4(v90, v92, &v111);

    *(v89 + 14) = v93;
    _os_log_impl(&dword_1C6F5C000, v88, v78, "Tokenized Keywords: %{sensitive}s -> %{sensitive}s", v89, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_109();
  }

  swift_beginAccess();
  v94 = sub_1C75504FC();
  v95 = sub_1C71CD85C(v94);

  return v95;
}

uint64_t sub_1C7441F28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_77(sub_1C7441F48, v2);
}

uint64_t sub_1C7441F48()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD07E00 != -1)
  {
    OUTLINED_FUNCTION_0_184(&qword_1EDD07E00);
  }

  v1 = sub_1C754FF1C();
  v0[5] = __swift_project_value_buffer(v1, qword_1EDD07E08);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v3))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v9 = v0[3];
  v10 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v11 = swift_allocObject();
  v0[6] = v11;
  *(v11 + 16) = xmmword_1C755BAB0;
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  sub_1C75504FC();
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_52_3(v12);

  return PNTextEmbeddingService.encode(_:)(v11);
}

uint64_t sub_1C74420B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[8] = v5;
  v3[9] = v0;

  if (v0)
  {
    v6 = v3[4];
    v7 = sub_1C7442810;
  }

  else
  {
    v8 = v3[4];

    v7 = sub_1C74421C8;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_1C74421C8()
{
  v67 = v0;
  v1 = v0[8];
  if (!*(v1 + 16))
  {

    sub_1C75504FC();
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[2];
      v33 = v0[3];
      v34 = OUTLINED_FUNCTION_41_0();
      v35 = swift_slowAlloc();
      v66[0] = v35;
      *v34 = 136642819;
      *(v34 + 4) = sub_1C6F765A4(v32, v33, v66);
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Encoder produced no embeddings for query (%{sensitive}s)", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_37();
    }

    sub_1C7443750();
    v36 = swift_allocError();
    *v37 = 3;
    swift_willThrow();
    v38 = v36;
    v39 = sub_1C754FEEC();
    v40 = sub_1C755119C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_41_0();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v36;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Embedding generation failed. Delete the cache to be safe.  Error: %@", v41, 0xCu);
      sub_1C6FB5FC8(v42, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_109();
    }

    swift_willThrow();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_25_7();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[4];
  v3 = *(v1 + 32);
  sub_1C75504FC();

  v4 = *(v2 + 128);
  v5 = *(v4 + 16);
  if (v5)
  {
    v64 = v3;
    v60 = v0;
    v66[0] = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    v6 = v66;
    sub_1C755195C();
    v7 = sub_1C70D4544();
    v9 = v8;
    v10 = v4 + 64;
    v63 = v4;
    sub_1C7179E9C();
    v11 = 0;
    v62 = v9;
    v61 = v4 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      v3 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_49;
      }

      if (*(v4 + 36) != v9)
      {
        goto LABEL_50;
      }

      v65 = v11;
      v12 = (*(v4 + 48) + 16 * v7);
      v14 = *v12;
      v13 = v12[1];
      sub_1C75504FC();
      v15 = sub_1C75504FC();
      v16 = static PNTextEmbeddingService.score(from:relativeTo:)(v15, v64);
      type metadata accessor for MusicKeywordCompletion();
      swift_allocObject();
      v17 = v14;
      v4 = v63;
      v1 = MusicKeywordCompletion.init(keyword:score:)(v17, v13, v16);

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v6 = (1 << *(v63 + 32));
      if (v7 >= v6)
      {
        goto LABEL_51;
      }

      v18 = *(v10 + 8 * v3);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_52;
      }

      if (*(v63 + 36) != v9)
      {
        goto LABEL_53;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v6 = (__clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v20 = v3 << 6;
        v21 = (v61 + 8 * v3);
        v22 = v3 + 1;
        while (v22 < (v6 + 63) >> 6)
        {
          v23 = *v21++;
          v1 = v23;
          v20 += 64;
          ++v22;
          if (v23)
          {
            v24 = OUTLINED_FUNCTION_180();
            sub_1C6F9ED50(v24, v25, v26);
            v6 = (__clz(__rbit64(v1)) + v20);
            goto LABEL_18;
          }
        }

        v27 = OUTLINED_FUNCTION_180();
        sub_1C6F9ED50(v27, v28, v29);
      }

LABEL_18:
      v11 = v65 + 1;
      v7 = v6;
      v9 = v62;
      if (v65 + 1 == v5)
      {

        v6 = v66[0];
        v0 = v60;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v3 = *(v0[4] + 120);
  if (v3)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v47 = v0[9];
    v48 = sub_1C6FB6304();
    v49 = sub_1C75504FC();
    v66[0] = sub_1C71CC894(v49);
    sub_1C743DAB0(v66);
    if (!v47)
    {

      if (v48 >= v3)
      {
        v50 = v3;
      }

      else
      {
        v50 = v48;
      }

      v6 = sub_1C70340A0(v50, v66[0]);
      v1 = v51;
      v4 = v52;
      v3 = v53;
      if ((v53 & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v55 = swift_dynamicCastClass();
      if (!v55)
      {
        swift_unknownObjectRelease();
        v55 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v55 + 16);

      if (__OFSUB__(v3 >> 1, v4))
      {
        goto LABEL_55;
      }

      if (v56 != (v3 >> 1) - v4)
      {
LABEL_56:
        swift_unknownObjectRelease();
LABEL_35:
        sub_1C739C81C(v6, v1, v4, v3);
        swift_unknownObjectRelease();
        goto LABEL_45;
      }

      v57 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v57)
      {
        swift_unknownObjectRelease();
      }

LABEL_45:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_25_7();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    v47 = v0[9];
    v54 = sub_1C75504FC();
    v66[0] = sub_1C71CC894(v54);
    sub_1C743DAB0(v66);
    if (!v47)
    {

      goto LABEL_45;
    }
  }

  OUTLINED_FUNCTION_25_7();
}

uint64_t sub_1C7442810()
{
  OUTLINED_FUNCTION_123();

  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_41_0();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1C6FB5FC8(v6, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v14();
}

uint64_t MusicKeywordsGeneratorEmbedded.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MusicKeywordsGeneratorEmbedded.__deallocating_deinit()
{
  MusicKeywordsGeneratorEmbedded.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C74429C8()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_50_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_282();

  return sub_1C743E970();
}

void sub_1C7442A70(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C7442BB4(v8, v9, a1, v5);
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
    sub_1C7442B50(0, v3, 1, a1);
  }
}

uint64_t sub_1C7442B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*(*v9 + 32) >= *(v7 + 32))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7442BB4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v8) + 32);
        v10 = *(*(*a3 + 8 * v6) + 32);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*(*a3 + 8 * v11++) + 32));
          v12 = *(*(*a3 + 8 * v13) + 32);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 32) >= *(v24 + 32))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v73;
      }

      v30 = v7[2];
      v29 = v7[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1C6FB17EC(v29 > 1, v30 + 1, 1, v7);
        v7 = v74;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v6;
      v33[1] = v8;
      v78 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_56:
            if (v40)
            {
              goto LABEL_96;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_99;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_104;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v31 < 2)
          {
            goto LABEL_98;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_71:
          if (v55)
          {
            goto LABEL_101;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_103;
          }

          if (v62 < v54)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v66 = &v32[2 * v34 - 2];
          v67 = *v66;
          v68 = &v32[2 * v34];
          v69 = *(v68 + 1);
          sub_1C74431A0((*a3 + 8 * *v66), (*a3 + 8 * *v68), (*a3 + 8 * v69), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v69 < v67)
          {
            goto LABEL_91;
          }

          v70 = v7;
          v71 = v7[2];
          if (v34 > v71)
          {
            goto LABEL_92;
          }

          *v66 = v67;
          v66[1] = v69;
          if (v34 >= v71)
          {
            goto LABEL_93;
          }

          v31 = v71 - 1;
          sub_1C7423CF4(v68 + 16, v71 - 1 - v34, &v32[2 * v34]);
          v70[2] = v71 - 1;
          v72 = v71 > 2;
          v7 = v70;
          if (!v72)
          {
            goto LABEL_85;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_94;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_95;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_97;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_100;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C7443074(&v80, *result, a3);
LABEL_89:
}

uint64_t sub_1C7443074(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
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
    sub_1C74431A0((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_1C74431A0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*(*v4 + 32) >= *(*v6 + 32))
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_65_27();
  sub_1C7423CF8(v14, v15, v4);
  v10 = &v4[8 * v9];
LABEL_15:
  v16 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v18 = *(v10 - 1);
    if (*(*v16 + 32) < *(v18 + 32))
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v18;
    }

    v10 -= 8;
  }

LABEL_28:
  v19 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

uint64_t sub_1C7443320(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a1[32];
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v5 = sub_1C74436B0(v13, v8, v5, a2);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  v10 = v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v8, v10);

  v11 = sub_1C74434E4(v10, v8, v5);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v5 = v11;
  }

LABEL_6:

  return v5;
}

uint64_t sub_1C74434E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v19 = 0;
  v3 = 0;
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
    MEMORY[0x1EEE9AC00](result);
    sub_1C75504FC();
    sub_1C75504FC();
    v13 = sub_1C70735F4();

    if (v13)
    {
      *(v18 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484F80(v18, a2, v19, a3);
        v16 = v15;

        return v16;
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
      goto LABEL_15;
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

void *sub_1C74436B0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v7 = sub_1C74434E4(v6, a2, a3);

    return v7;
  }

  return result;
}

unint64_t sub_1C7443750()
{
  result = qword_1EC21BEA0;
  if (!qword_1EC21BEA0)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for MusicKeywordsGeneratorEmbedded.Error, v0, v1);
    atomic_store(result, &qword_1EC21BEA0);
  }

  return result;
}

uint64_t dispatch thunk of MusicKeywordsGeneratorEmbedded.__allocating_init(usingCache:embeddingType:with:maxKeywords:)()
{
  OUTLINED_FUNCTION_75_1();
  v5 = (OUTLINED_FUNCTION_48_28() + 152);
  v6 = (*v5 + **v5);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  v3 = OUTLINED_FUNCTION_63_24();

  return v6(v3);
}

uint64_t dispatch thunk of MusicKeywordsGeneratorEmbedded.generateMusicKeywords(using:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v11 = (*(*v0 + 176) + **(*v0 + 176));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_52_3(v8);

  return v11(v6, v4, v2);
}

uint64_t dispatch thunk of MusicKeywordsGeneratorEmbedded.generateMusicKeywords(using:eventRecorder:progressReporter:shouldTokenizeInput:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_50_32();
  v6 = (*(*v0 + 184) + **(*v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_52_3(v2);
  v4 = OUTLINED_FUNCTION_282();

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for MusicKeywordsGeneratorEmbedded.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7443C00()
{
  result = qword_1EC21BEB0;
  if (!qword_1EC21BEB0)
  {
    result = swift_getWitnessTable(asc_1C758B640, &type metadata for MusicKeywordsGeneratorEmbedded.Error, v0, v1);
    atomic_store(result, &qword_1EC21BEB0);
  }

  return result;
}

double OUTLINED_FUNCTION_54_31()
{
  *(*(v0 + 56) + 8 * v1) = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_56_29(uint64_t result)
{
  *(v1 + 280) = *(result + 32);
  *(v1 + 288) = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_25(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *v15 = a1;

  return sub_1C6F765A4(v17, v16, va);
}

uint64_t StoryDiversityController.__allocating_init(photoLibrary:storyAssetsFetcher:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  StoryDiversityController.init(photoLibrary:storyAssetsFetcher:)(a1, a2);
  return v4;
}

uint64_t StoryDiversityController.init(photoLibrary:storyAssetsFetcher:)(void *a1, void *a2)
{
  v3 = v2;
  sub_1C6FB5E28(a2, v8);
  type metadata accessor for FinalTokenGenerator(0);
  swift_allocObject();
  v6 = FinalTokenGenerator.init(photoLibrary:storyAssetsFetcher:)(a1, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  *(v3 + 16) = v6;
  return v3;
}

uint64_t StoryDiversityController.diversify(_:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[82] = v5;
  v6[81] = a5;
  v6[80] = a4;
  v6[79] = a3;
  v6[78] = a2;
  v6[77] = a1;
  v7 = sub_1C754F38C();
  v6[83] = v7;
  v6[84] = *(v7 - 8);
  v6[85] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7443ED8()
{
  v1 = *(v0 + 616);
  __swift_project_boxed_opaque_existential_1(*(v0 + 632), *(*(v0 + 632) + 24));
  sub_1C754F1CC();

  return MEMORY[0x1EEE6DFA0](sub_1C7443F80, v1, 0);
}

uint64_t sub_1C7443F80()
{
  v1 = *(v0 + 616);
  swift_beginAccess();
  *(v0 + 688) = *(v1 + 120);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C7444008()
{
  v26 = v0;
  v1 = v0[86];
  if ((v1 >> 61) < 3)
  {
    v2 = v0[85];
    v3 = v0[84];
    v4 = v0[83];
    v5 = v0[80];
    v6 = v0[79];
    sub_1C7195E04();
    swift_allocError();
    *v7 = v1;
    *(v7 + 8) = 1;
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1C754F1AC();
    (*(v3 + 8))(v2, v4);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(v5);

    OUTLINED_FUNCTION_43();
LABEL_12:

    return v9();
  }

  if (v1 >> 61 == 4)
  {
    v10 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
    if (v10 >> 61 != 3)
    {
      v17 = v0[80];

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v18 + 8))(v17);
      goto LABEL_11;
    }

    v11 = v10 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  memcpy(v0 + 2, (v11 + 16), 0x60uLL);
  v13 = v0[12];
  v12 = v0[13];
  v0[87] = v12;
  sub_1C717E390((v0 + 2), (v0 + 14), &qword_1EC219008, &qword_1C75763E0);

  if (v12 >> 61 != 2)
  {
    v15 = v0[80];

    sub_1C7027A58((v0 + 2));
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v16 + 8))(v15);
LABEL_11:
    OUTLINED_FUNCTION_3_115();
    OUTLINED_FUNCTION_11_50(v0[79]);
    v19 = OUTLINED_FUNCTION_94();
    v20(v19);

    OUTLINED_FUNCTION_43();
    goto LABEL_12;
  }

  memcpy(v0 + 26, ((v12 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x58uLL);
  sub_1C717E390((v0 + 26), (v0 + 37), &qword_1EC219010, &qword_1C75763F0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D10, &unk_1C755BE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy(__dst, v0 + 2, sizeof(__dst));
  ExtendedTokenCollection.assetScopingTokens.getter();
  v23 = v22;
  sub_1C7027A58((v0 + 2));
  *(inited + 32) = v23;
  __dst[0] = v13;
  sub_1C6FD42CC(inited);
  v0[88] = __dst[0];
  memcpy(v0 + 58, v0 + 26, 0x50uLL);
  v24 = swift_task_alloc();
  v0[89] = v24;
  *v24 = v0;
  v24[1] = sub_1C7444488;

  return FinalTokenGenerator.generate(from:previousAssetScopingTokens:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)();
}

uint64_t sub_1C7444488()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1C7027A58(v2 + 208);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C74445A8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[77];
  v4 = swift_allocObject();
  v0[91] = v4;
  memcpy((v4 + 16), v0 + 48, 0x50uLL);
  *(v4 + 96) = v1;
  *(v4 + 104) = v2;
  v0[76] = v4 | 0x6000000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1C7444660, v3, 0);
}

uint64_t sub_1C7444660()
{
  v1 = *(v0 + 720);
  sub_1C71937C4();
  *(v0 + 736) = v1;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C74446EC()
{

  OUTLINED_FUNCTION_3_115();
  OUTLINED_FUNCTION_11_50(*(v0 + 632));
  v1 = OUTLINED_FUNCTION_94();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7444790()
{
  OUTLINED_FUNCTION_3_115();
  v1 = *(v0 + 632);

  sub_1C7027A58(v0 + 208);
  OUTLINED_FUNCTION_11_50(v1);
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7444838()
{
  OUTLINED_FUNCTION_3_115();
  v1 = *(v0 + 632);

  OUTLINED_FUNCTION_11_50(v1);
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t StoryDiversityController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1C74449F0()
{
  switch(*v0)
  {
    case 1:
      v5 = objc_opt_self();
      sub_1C735B400(v5);
      OUTLINED_FUNCTION_3_1();
      break;
    case 2:
      v2 = objc_opt_self();
      sub_1C735B3F4(v2);
      OUTLINED_FUNCTION_3_1();
      break;
    case 3:
      v3 = objc_opt_self();
      sub_1C735B3E8(v3);
      if (!v4)
      {
        [v3 useGlobalTraitsV3];
        OUTLINED_FUNCTION_3_1();
      }

      break;
    case 4:
      return;
    default:
      v1 = objc_opt_self();
      sub_1C744A320(v1);
      OUTLINED_FUNCTION_3_1();
      break;
  }
}

unsigned __int8 *static AjaxLLMModel.model(from:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 5)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

PhotosIntelligence::AjaxLLMModel_optional __swiftcall AjaxLLMModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AjaxLLMModel.rawValue.getter()
{
  result = 0x62303365736162;
  switch(*v0)
  {
    case 1:
      result = 0x6C657479726F7473;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x72546C61626F6C67;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C7444CA0@<X0>(unint64_t *a1@<X8>)
{
  result = AjaxLLMModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall AjaxLLMOptions.init(n:top_p:temperature:max_tokens:length_penalty:frequency_penalty:random_seed:)(PhotosIntelligence::AjaxLLMOptions *__return_ptr retstr, Swift::Int_optional n, Swift::Double_optional top_p, Swift::Double_optional temperature, Swift::Int_optional max_tokens, Swift::Double_optional length_penalty, Swift::Double_optional frequency_penalty, Swift::Int_optional random_seed)
{
  retstr->n.value = n.value;
  retstr->n.is_nil = n.is_nil;
  *(&retstr->top_p.value + 7) = *&top_p.is_nil;
  BYTE6(retstr->temperature.value) = temperature.is_nil;
  *(&retstr->max_tokens.value + 5) = max_tokens.value;
  BYTE4(retstr->length_penalty.value) = max_tokens.is_nil;
  *(&retstr->frequency_penalty.value + 3) = *&length_penalty.is_nil;
  BYTE2(retstr->random_seed.value) = frequency_penalty.is_nil;
  *(&retstr[1].n.value + 1) = random_seed.value;
  LOBYTE(retstr[1].top_p.value) = random_seed.is_nil;
  *&retstr[1].top_p.is_nil = v8;
  HIBYTE(retstr[1].temperature.value) = v9 & 1;
  *(&retstr[1].max_tokens.value + 6) = v10;
  BYTE5(retstr[1].length_penalty.value) = v11 & 1;
}

void AjaxLLMOptions.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEB8, &qword_1C758B750);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C7444F84();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  sub_1C7551CAC();
  if (!v0)
  {
    OUTLINED_FUNCTION_3_116();
    sub_1C7551C9C();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551C9C();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551C9C();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551CAC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7444F84()
{
  result = qword_1EC21BEC0;
  if (!qword_1EC21BEC0)
  {
    result = swift_getWitnessTable(aQ_23, &type metadata for AjaxLLMOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BEC0);
  }

  return result;
}

uint64_t sub_1C7444FD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 110 && a2 == 0xE100000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x705F706F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656B6F745F78616DLL && a2 == 0xEA0000000000736ELL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x705F6874676E656CLL && a2 == 0xEE0079746C616E65;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001C75B0BB0 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x735F6D6F646E6172 && a2 == 0xEB00000000646565)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C7445218(char a1)
{
  result = 110;
  switch(a1)
  {
    case 1:
      result = 0x705F706F74;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x656B6F745F78616DLL;
      break;
    case 4:
      result = 0x705F6874676E656CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x735F6D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7445300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7444FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7445328(uint64_t a1)
{
  v2 = sub_1C7444F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7445364(uint64_t a1)
{
  v2 = sub_1C7444F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AjaxLLMOptions.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_32_40();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEC8, &qword_1C758B758);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C7444F84();
  sub_1C7551FFC();
  if (!v1)
  {
    OUTLINED_FUNCTION_5_39();
    v10 = sub_1C7551B9C();
    v41 = v11 & 1;
    OUTLINED_FUNCTION_5_39();
    v12 = sub_1C7551B8C();
    v40 = v13 & 1;
    OUTLINED_FUNCTION_5_39();
    v34 = sub_1C7551B8C();
    v39 = v14 & 1;
    OUTLINED_FUNCTION_5_39();
    v33 = sub_1C7551B9C();
    v38 = v15 & 1;
    OUTLINED_FUNCTION_5_39();
    v32 = sub_1C7551B8C();
    v37 = v16 & 1;
    OUTLINED_FUNCTION_5_39();
    v31 = sub_1C7551B8C();
    v36 = v17 & 1;
    OUTLINED_FUNCTION_5_39();
    v18 = sub_1C7551B9C();
    v20 = v19;
    v21 = *(v6 + 8);
    v30 = v18;
    v21(v9, v4);
    v35 = v20 & 1;
    v22 = v40;
    v23 = v39;
    v24 = v38;
    v25 = v37;
    v26 = v36;
    *v3 = v10;
    *(v3 + 8) = v41;
    *(v3 + 16) = v12;
    *(v3 + 24) = v22;
    v27 = v33;
    *(v3 + 32) = v34;
    *(v3 + 40) = v23;
    *(v3 + 48) = v27;
    *(v3 + 56) = v24;
    v28 = v31;
    *(v3 + 64) = v32;
    *(v3 + 72) = v25;
    *(v3 + 80) = v28;
    *(v3 + 88) = v26;
    *(v3 + 96) = v30;
    *(v3 + 104) = v20 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7445638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7445740(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x736E6F6974706FLL;
  }

  return 0x74706D6F7270;
}

void sub_1C7445790()
{
  OUTLINED_FUNCTION_124();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFD8, &qword_1C758BD88);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v5, v5[3]);
  sub_1C744A7C8();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  LOBYTE(v10[0]) = 0;
  sub_1C7551CCC();
  if (!v1)
  {
    memcpy(v10, (v3 + 16), 0x69uLL);
    sub_1C744A81C();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    LOBYTE(v10[0]) = 2;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7445924(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567617375 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974656C706D6F63 && a2 == 0xEB00000000736E6FLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C7445ABC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C65646F6DLL;
      break;
    case 2:
      result = 0x6567617375;
      break;
    case 3:
      result = 0x6974656C706D6F63;
      break;
    case 4:
      result = 0x61746C6564;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C7445B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_32_40();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF90, &qword_1C758BD70);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_70(v10, v10[3]);
  sub_1C744A5C4();
  sub_1C7551FFC();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_33_39();
    v33 = v16;
    LOBYTE(v35) = 1;
    v17 = OUTLINED_FUNCTION_33_39();
    v32 = v18;
    v31 = v17;
    LOBYTE(v34[0]) = 2;
    sub_1C744A618();
    sub_1C7551C1C();
    v29 = v35;
    v28 = v36;
    v30 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFA8, &qword_1C758BD78);
    LOBYTE(v34[0]) = 3;
    v19 = sub_1C744A6C0(&qword_1EC21BFB0, &qword_1EC21BFA8, &qword_1C758BD78, sub_1C744A66C);
    OUTLINED_FUNCTION_27_50(v19, v34, v20, v21, v19);
    v27 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFC0, &qword_1C758BD80);
    v44 = 4;
    v22 = sub_1C744A6C0(&qword_1EC21BFC8, &qword_1EC21BFC0, &qword_1C758BD80, sub_1C744A73C);
    OUTLINED_FUNCTION_27_50(v22, &v44, v23, v24, v22);
    v25 = OUTLINED_FUNCTION_163();
    v26(v25);
    v34[0] = v15;
    v34[1] = v33;
    v34[2] = v31;
    v34[3] = v32;
    v34[4] = v29;
    v34[5] = v28;
    v34[6] = v30;
    v34[7] = v27;
    v34[8] = a10;
    sub_1C744A790(v34, &v35);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v35 = v15;
    v36 = v33;
    v37 = v31;
    v38 = v32;
    v39 = v29;
    v40 = v28;
    v41 = v30;
    v42 = v27;
    v43 = a10;
    sub_1C744A26C(&v35);
    memcpy(v13, v34, 0x48uLL);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7445F04(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C7445F7C()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_3_0();
  v11 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_6();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  sub_1C7551FFC();
  if (!v0)
  {
    sub_1C7551BBC();
    (*(v11 + 8))(v1, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C74460BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745F74706D6F7270 && a2 == 0xED0000736E656B6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C75B0C10 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F745F6C61746F74 && a2 == 0xEC000000736E656BLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C74461E0(char a1)
{
  if (!a1)
  {
    return 0x745F74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6F745F6C61746F74;
}

uint64_t sub_1C7446250()
{
  OUTLINED_FUNCTION_32_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C050, &qword_1C758C1A0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  v2 = sub_1C744AD08();
  OUTLINED_FUNCTION_26_45(&type metadata for AjaxLLMUsage.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  OUTLINED_FUNCTION_12_77();
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  OUTLINED_FUNCTION_11_72();
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  v5 = OUTLINED_FUNCTION_0_17();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v0);
  return OUTLINED_FUNCTION_24_45();
}

uint64_t sub_1C74463A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C75B0BF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C74464C0(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x7475706E69;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C7446514(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFF0, &qword_1C758BD90);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C744A870();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  sub_1C7551CCC();
  if (!v1)
  {
    sub_1C7551CCC();
    sub_1C7551CDC();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1C7446680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C000, &qword_1C758BD98);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_70(v25, v25[3]);
  sub_1C744A870();
  sub_1C7551FFC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v29 = sub_1C7551BBC();
    v37 = v30;
    OUTLINED_FUNCTION_12_77();
    v35 = sub_1C7551BBC();
    v36 = v31;
    OUTLINED_FUNCTION_11_72();
    v32 = sub_1C7551BCC();
    v33 = OUTLINED_FUNCTION_401();
    v34(v33);
    __swift_destroy_boxed_opaque_existential_1(v25);
    *v27 = v29;
    *(v27 + 8) = v37;
    *(v27 + 16) = v35;
    *(v27 + 24) = v36;
    *(v27 + 32) = v32 & 1;
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7446870(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E656B6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7446988(char a1)
{
  if (!a1)
  {
    return 0x6874676E656CLL;
  }

  if (a1 == 1)
  {
    return 0x736E656B6F74;
  }

  return 0x64695F6E656B6F74;
}

void sub_1C74469DC()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF48, &qword_1C758BAC0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C7449EB4();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_97();
  sub_1C7551D0C();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_30_1();
    sub_1C7449F64(v8);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650, &qword_1C7564ED0);
    OUTLINED_FUNCTION_30_1();
    sub_1C7449F08(v9);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7446BB4()
{
  OUTLINED_FUNCTION_32_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF30, &qword_1C758BAB8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  v2 = sub_1C7449EB4();
  OUTLINED_FUNCTION_26_45(&type metadata for AjaxLLMTokensResult.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_12_0();
  v5 = sub_1C7449F64(v4);
  OUTLINED_FUNCTION_42_1(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650, &qword_1C7564ED0);
  OUTLINED_FUNCTION_12_0();
  v8 = sub_1C7449F08(v7);
  OUTLINED_FUNCTION_42_1(v8);
  v9 = OUTLINED_FUNCTION_0_17();
  v10(v9);
  __swift_destroy_boxed_opaque_existential_1(v0);
  return OUTLINED_FUNCTION_24_45();
}

uint64_t sub_1C7446DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7445638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7446DE4(uint64_t a1)
{
  v2 = sub_1C744A7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7446E20(uint64_t a1)
{
  v2 = sub_1C744A7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7446E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7445924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7446EA4(uint64_t a1)
{
  v2 = sub_1C744A5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7446EE0(uint64_t a1)
{
  v2 = sub_1C744A5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C7446F1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1C7445B48(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x48uLL);
  }
}

uint64_t sub_1C7446F6C(uint64_t a1)
{
  v2 = sub_1C744AD5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7446FA8(uint64_t a1)
{
  v2 = sub_1C744AD5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7447028(uint64_t a1)
{
  v2 = sub_1C744ADB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7447064(uint64_t a1)
{
  v2 = sub_1C744ADB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C74470E4(void *a1@<X8>)
{
  sub_1C7445F7C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C7447128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74460BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7447150(uint64_t a1)
{
  v2 = sub_1C744AD08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C744718C(uint64_t a1)
{
  v2 = sub_1C744AD08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74471C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C7446250();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

uint64_t sub_1C7447200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74463A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7447228(uint64_t a1)
{
  v2 = sub_1C744A870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7447264(uint64_t a1)
{
  v2 = sub_1C744A870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7447308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7446870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7447330(uint64_t a1)
{
  v2 = sub_1C7449EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C744736C(uint64_t a1)
{
  v2 = sub_1C7449EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74473A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C7446BB4();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

uint64_t AjaxLLM.__allocating_init(model:)(char *a1)
{
  v2 = swift_allocObject();
  AjaxLLM.init(model:)(a1);
  return v2;
}

uint64_t AjaxLLM.init(model:)(char *a1)
{
  v2 = *a1;
  sub_1C754FEFC();
  v3 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_session;
  v4 = [objc_opt_self() defaultSessionConfiguration];
  [v4 setTimeoutIntervalForRequest_];
  v5 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + v3) = v5;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model) = v2;
  return v1;
}

uint64_t sub_1C7447538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v82 = a1;
  v90 = a4;
  v89 = sub_1C754D70C();
  v86 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v73 - v10;
  v12 = sub_1C754DD2C();
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  v102 = *a3;
  v18 = *(a3 + 2);
  v101 = *(a3 + 24);
  v100[0] = *(a3 + 25);
  *(v100 + 3) = *(a3 + 7);
  v19 = *(a3 + 4);
  v99 = *(a3 + 40);
  v98[0] = *(a3 + 41);
  *(v98 + 3) = *(a3 + 11);
  v20 = *(a3 + 6);
  v97 = *(a3 + 56);
  v21 = *(a3 + 73);
  v94 = *(a3 + 57);
  v95 = v21;
  v22 = *(a3 + 89);
  v85 = v5;
  v23 = *(v5 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model);
  v96 = v22;
  v83 = v19;
  v87 = v18;
  v24 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model;
  if ((v23 - 1) >= 3)
  {
    v27 = v23 == 0;
    if (v23)
    {
      v26 = 0xD00000000000003CLL;
    }

    else
    {
      v26 = 0xD000000000000022;
    }

    if (v27)
    {
      v25 = "ce-storytelling/api/v1/";
    }

    else
    {
      v25 = "__ajaxEndPromptToken";
    }
  }

  else
  {
    v25 = "lmqu-memory-creation/api/v1/";
    v26 = 0xD000000000000047;
  }

  *&v93[0] = v26;
  *(&v93[0] + 1) = v25 | 0x8000000000000000;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x6974656C706D6F63, 0xEB00000000736E6FLL);

  v28 = v93[0];
  sub_1C754DCFC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_1C6FB5FC8(v11, &qword_1EC215BD8, &unk_1C7564890);
    v30 = v89;
    v29 = v90;
    v31 = 1;
  }

  else
  {
    v77 = v28;
    v32 = v17;
    v81 = v20;
    v33 = v88;
    (*(v88 + 32))(v32, v11, v12);
    v34 = *(v33 + 16);
    v79 = v32;
    v34(v14, v32, v12);
    v80 = v12;
    v78 = a2;
    v35 = v84;
    sub_1C754D6CC();
    sub_1C754D6FC();
    v92[0] = 0x3D6B63616361;
    v92[1] = 0xE600000000000000;
    v36 = [objc_opt_self() ajaxDawToken];
    v37 = sub_1C755068C();
    v39 = v38;

    MEMORY[0x1CCA5CD70](v37, v39);

    sub_1C754D6DC();

    sub_1C754D6AC();
    sub_1C754D6BC();
    v40 = v85;
    v41 = v24;
    LOBYTE(v92[0]) = *(v85 + v24);
    sub_1C74449F0();
    v93[1] = v102;
    *(&v93[2] + 9) = v100[0];
    HIDWORD(v93[2]) = *(v100 + 3);
    *(&v93[3] + 9) = v98[0];
    HIDWORD(v93[3]) = *(v98 + 3);
    *&v93[0] = v42;
    *(&v93[0] + 1) = v43;
    *&v93[2] = v87;
    BYTE8(v93[2]) = v101;
    *&v93[3] = v83;
    BYTE8(v93[3]) = v99;
    *&v93[4] = v81;
    BYTE8(v93[4]) = v97;
    *(&v93[6] + 9) = v96;
    *(&v93[5] + 9) = v95;
    *(&v93[4] + 9) = v94;
    *&v93[8] = v82;
    *(&v93[8] + 1) = v78;
    sub_1C754D7AC();
    swift_allocObject();
    sub_1C75504FC();
    sub_1C754D79C();
    memcpy(v92, v93, sizeof(v92));
    sub_1C744A29C();
    v44 = sub_1C754D78C();
    v78 = v45;
    v82 = v44;
    v46 = v81;
    v47 = v79;

    sub_1C744A2F0(v93);
    sub_1C75504FC();

    v48 = sub_1C754FEEC();
    v49 = sub_1C755117C();

    if (os_log_type_enabled(v48, v49))
    {
      v75 = v49;
      v76 = v28;
      v50 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v92[0] = v74;
      *v50 = 136316162;
      v51 = sub_1C6F765A4(v77, *(&v28 + 1), v92);

      *(v50 + 4) = v51;
      *(v50 + 12) = 2080;
      LOBYTE(v91) = *(v40 + v41);
      sub_1C74449F0();
      v54 = sub_1C6F765A4(v52, v53, v92);

      *(v50 + 14) = v54;
      *(v50 + 22) = 2080;
      if (v99)
      {
        v55 = 0xE300000000000000;
        v56 = 7104878;
      }

      else
      {
        v56 = sub_1C7550F4C();
        v55 = v58;
      }

      v59 = sub_1C6F765A4(v56, v55, v92);

      *(v50 + 24) = v59;
      *(v50 + 32) = 2080;
      if (v101)
      {
        v60 = 0xE300000000000000;
        v61 = 7104878;
      }

      else
      {
        v61 = sub_1C7550F4C();
        v60 = v62;
      }

      v57 = v88;
      v63 = sub_1C6F765A4(v61, v60, v92);

      *(v50 + 34) = v63;
      *(v50 + 42) = 2080;
      if (v97)
      {
        v64 = 0xE300000000000000;
        v65 = 7104878;
      }

      else
      {
        v91 = v46;
        sub_1C7025C9C();
        v65 = sub_1C75515BC();
        v64 = v66;
      }

      v67 = sub_1C6F765A4(v65, v64, v92);

      *(v50 + 44) = v67;
      v68 = v76;
      _os_log_impl(&dword_1C6F5C000, v76, v75, "buildCompletionRequest for modelUrl: %s model: %s and options: (T:%s, topP: %s, maxTokens: %s)", v50, 0x34u);
      v69 = v74;
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v69, -1, -1);
      MEMORY[0x1CCA5F8E0](v50, -1, -1);
    }

    else
    {

      v57 = v88;
    }

    sub_1C754D6EC();
    (*(v57 + 8))(v47, v80);
    v71 = v89;
    v70 = v90;
    (*(v86 + 32))(v90, v35, v89);
    v29 = v70;
    v31 = 0;
    v30 = v71;
  }

  return __swift_storeEnumTagSinglePayload(v29, v31, 1, v30);
}

uint64_t sub_1C7447DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v59 = a3;
  v55 = a1;
  v56 = a2;
  v61 = a4;
  v6 = sub_1C754D70C();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v51 - v10;
  v12 = sub_1C754DD2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v51 - v17;
  v19 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model);
  v60 = v6;
  v58 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model;
  if ((v19 - 1) >= 3)
  {
    v22 = v19 == 0;
    if (v19)
    {
      v21 = 0xD00000000000003CLL;
    }

    else
    {
      v21 = 0xD000000000000022;
    }

    if (v22)
    {
      v20 = "ce-storytelling/api/v1/";
    }

    else
    {
      v20 = "__ajaxEndPromptToken";
    }
  }

  else
  {
    v20 = "lmqu-memory-creation/api/v1/";
    v21 = 0xD000000000000047;
  }

  v63 = v21;
  v64 = v20 | 0x8000000000000000;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x736E656B6F74, 0xE600000000000000);

  v23 = v63;
  v24 = v64;
  sub_1C754DCFC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_1C6FB5FC8(v11, &qword_1EC215BD8, &unk_1C7564890);
    v25 = 1;
    v27 = v60;
    v26 = v61;
  }

  else
  {
    v52 = v23;
    v28 = v13;
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    sub_1C754D6CC();
    sub_1C754D6FC();
    v63 = 0x3D6B63616361;
    v64 = 0xE600000000000000;
    v29 = [objc_opt_self() ajaxDawToken];
    v30 = sub_1C755068C();
    v32 = v31;

    MEMORY[0x1CCA5CD70](v30, v32);

    sub_1C754D6DC();

    sub_1C754D6AC();
    sub_1C754D6BC();
    v53 = v18;
    v54 = v12;
    LOBYTE(v63) = *(v5 + v58);
    sub_1C74449F0();
    v34 = v33;
    v36 = v35;
    sub_1C754D7AC();
    swift_allocObject();
    v37 = v56;
    sub_1C75504FC();
    sub_1C754D79C();
    v63 = v34;
    v64 = v36;
    v65 = v55;
    v66 = v37;
    v67 = v59 & 1;
    sub_1C744A384();
    v38 = sub_1C754D78C();
    v51[0] = v39;
    v51[1] = v38;
    v40 = v53;
    v55 = v28;

    sub_1C75504FC();

    v41 = sub_1C754FEEC();
    v42 = sub_1C755117C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v5;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v63 = v45;
      *v44 = 136315650;
      v46 = sub_1C6F765A4(v52, v24, &v63);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      v62 = *(v43 + v58);
      sub_1C74449F0();
      v49 = sub_1C6F765A4(v47, v48, &v63);

      *(v44 + 14) = v49;
      *(v44 + 22) = 1024;
      *(v44 + 24) = v59 & 1;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "buildTokensRequest for modelUrl: %s model: %s exclude_prompt_format: %{BOOL}d", v44, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v45, -1, -1);
      MEMORY[0x1CCA5F8E0](v44, -1, -1);
    }

    else
    {
    }

    sub_1C754D6EC();
    (*(v55 + 8))(v40, v54);
    v27 = v60;
    v26 = v61;
    (*(v57 + 32))(v61, v8, v60);
    v25 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v26, v25, 1, v27);
}

uint64_t AjaxLLM.countTokens(prompt:ignoreFormatting:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 136) = v3;
  *(v1 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEE0, &qword_1C758B768);
  *(v1 + 64) = swift_task_alloc();
  v5 = sub_1C754D70C();
  *(v1 + 72) = v5;
  *(v1 + 80) = *(v5 - 8);
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7448574, 0, 0);
}

uint64_t sub_1C7448574()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1C7447DD0(*(v0 + 40), *(v0 + 48), *(v0 + 136), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C6FB5FC8(*(v0 + 64), &qword_1EC21BEE0, &qword_1C758B768);
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v4();
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_1C744870C;
    v7 = *(v0 + 88);

    return MEMORY[0x1EEDC6260](v7, 0);
  }
}

uint64_t sub_1C744870C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  v2[13] = v3;
  v2[14] = v4;
  v2[15] = v5;
  v2[16] = v0;

  if (v0)
  {
    v6 = sub_1C7448B18;
  }

  else
  {
    v6 = sub_1C7448820;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C7448820()
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_126();
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_17_76(v11, 2);
    sub_1C6FC1640(v2, v0);

LABEL_13:
    (*(v6 + 8))(v3, v4);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 statusCode];
  switch(v9)
  {
    case 302:
      goto LABEL_5;
    case 429:
      OUTLINED_FUNCTION_2_126();
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v12 = 1;
      *(v12 + 8) = 1;
      goto LABEL_12;
    case 401:
LABEL_5:
      OUTLINED_FUNCTION_2_126();
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 1;
LABEL_12:
      swift_willThrow();

      sub_1C6FC1640(v2, v0);
      goto LABEL_13;
  }

  if (v9 >= 300)
  {
    OUTLINED_FUNCTION_2_126();
    v19 = [v8 statusCode];
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = 0;
    goto LABEL_12;
  }

  v13 = v1[16];
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C7448BEC();
  OUTLINED_FUNCTION_25_45(&type metadata for AjaxLLMTokensResult);
  v14 = v1[14];
  v15 = v1[15];
  v16 = v1[13];
  v17 = v1[10];
  v18 = v1[9];
  if (v13)
  {
    (*(v17 + 8))(v1[11], v18);

    sub_1C6FC1640(v16, v14);

LABEL_14:

    OUTLINED_FUNCTION_43();

    return v21();
  }

  (*(v17 + 8))(v1[11], v18);

  sub_1C6FC1640(v16, v14);

  v23 = v1[2];

  v24 = v1[1];

  return v24(v23);
}

uint64_t sub_1C7448B18()
{
  OUTLINED_FUNCTION_42();
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_43();

  return v1();
}

unint64_t sub_1C7448B98()
{
  result = qword_1EC21BEE8;
  if (!qword_1EC21BEE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMError, &type metadata for LLMError, v0, v1);
    atomic_store(result, &qword_1EC21BEE8);
  }

  return result;
}

unint64_t sub_1C7448BEC()
{
  result = qword_1EC21BEF0;
  if (!qword_1EC21BEF0)
  {
    result = swift_getWitnessTable(aIr, &type metadata for AjaxLLMTokensResult, v0, v1);
    atomic_store(result, &qword_1EC21BEF0);
  }

  return result;
}

void AjaxLLM.complete(prompt:samplingParameters:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v40 = v4;
  v41 = v5;
  v39 = v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEF8, &qword_1C758B770);
  OUTLINED_FUNCTION_3_0();
  v36 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEE0, &qword_1C758B768);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1C754D70C();
  OUTLINED_FUNCTION_3_0();
  v35 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[4];
  v19 = *(v3 + 40);
  v20 = *(v3 + 24);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v3[2];
  }

  if (v3[7])
  {
    v22 = v0;
    v23 = *v3;
    v24 = *(v3 + 8);
  }

  else
  {
    v34 = v1;
    v22 = v0;
    v25 = sub_1C754FEEC();
    v26 = sub_1C755117C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "Temperature = 0.0 and topP = 1.0 for Pegasus determinism.", v27, 2u);
      MEMORY[0x1CCA5F8E0](v27, -1, -1);
    }

    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0x3FF0000000000000;
  }

  v59 = v24;
  v58 = v19;
  v57 = 1;
  v56 = 1;
  v55 = 1;
  *&v42 = 0;
  BYTE8(v42) = 1;
  v43 = v21;
  v44 = v20 & 1;
  v45 = v23;
  v46 = v24;
  v47 = v18;
  v48 = v19;
  v49 = 0;
  v50 = 1;
  v51 = 0;
  v52 = 1;
  v53 = 0;
  v54 = 1;
  v28 = v22;
  sub_1C7447538(v40, v41, &v42, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C6FB5FC8(v12, &qword_1EC21BEE0, &qword_1C758B768);
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v29 = 2;
    *(v29 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v30 = v35;
    v31 = (*(v35 + 32))(v17, v12, v13);
    v32 = MEMORY[0x1EEE9AC00](v31);
    *(&v34 - 2) = v28;
    *(&v34 - 1) = v17;
    (*(v36 + 104))(v38, *MEMORY[0x1E69E8790], v37, v32);
    type metadata accessor for LLMResponse(0);
    v33 = v39;
    sub_1C7550F0C();
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    (*(v30 + 8))(v17, v13);
  }

  OUTLINED_FUNCTION_125();
}

double sub_1C7449054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  v23 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = sub_1C754D70C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_session);
  (*(v9 + 16))(v11, v24, v8);
  (*(v5 + 16))(v7, v25, v4);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v16;
  (*(v9 + 32))(&v19[v17], v11, v8);
  (*(v5 + 32))(&v19[v18], v7, v23);
  v20 = v16;
  sub_1C6FEB80C(0, 0, v14, &unk_1C758BAE0, v19);

  return result;
}

uint64_t sub_1C7449304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF58, &unk_1C758E210);
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[28] = v9;
  *v9 = v6;
  v9[1] = sub_1C7449414;

  return MEMORY[0x1EEDC6260](a5, 0);
}

uint64_t sub_1C7449414()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  v2[29] = v3;
  v2[30] = v4;
  v2[31] = v5;
  v2[32] = v0;

  if (v0)
  {
    v6 = sub_1C7449900;
  }

  else
  {
    v6 = sub_1C7449528;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C7449528()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[31];
  if (!v1)
  {
    v8 = v0[29];
    v6 = v0[30];
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_17_76(v11, 2);
LABEL_7:

LABEL_10:
    v13 = v8;
    v14 = v6;
LABEL_11:
    sub_1C6FC1640(v13, v14);
    v0[22] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
    sub_1C7550EBC();
    goto LABEL_12;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v3 statusCode];
  switch(v5)
  {
    case 302:
      goto LABEL_5;
    case 429:
      v6 = v0[30];
      v7 = v0[31];
      v8 = v0[29];
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      v9 = swift_allocError();
      *v12 = 1;
      *(v12 + 8) = 1;
      goto LABEL_9;
    case 401:
LABEL_5:
      v6 = v0[30];
      v7 = v0[31];
      v8 = v0[29];
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      v9 = swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 1;
LABEL_9:
      swift_willThrow();

      goto LABEL_10;
  }

  if (v5 >= 300)
  {
    v6 = v0[30];
    v2 = v0[31];
    v8 = v0[29];
    v20 = [v3 statusCode];
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    *v21 = v20;
    *(v21 + 8) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v16 = v0[32];
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C744A218();
  OUTLINED_FUNCTION_25_45(&type metadata for AjaxLLMCompletionAnswer);
  if (v16)
  {
    v9 = v16;
    v17 = v0[30];
    v18 = v0[31];
    v19 = v0[29];

    v13 = v19;
    v14 = v17;
    goto LABEL_11;
  }

  memcpy(v0 + 11, v0 + 2, 0x48uLL);
  v22 = v0[18];
  if (!v22 || !*(v22 + 16))
  {
    v30 = v0[30];
    v29 = v0[31];
    v31 = v0[29];
    sub_1C744A26C((v0 + 11));
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_17_76(v32, 3);

    v13 = v31;
    v14 = v30;
    goto LABEL_11;
  }

  v23 = v0[31];
  sub_1C75504FC();

  if (!*(v22 + 16))
  {
    __break(1u);
    return;
  }

  v24 = v0[26];
  sub_1C75504FC();
  sub_1C744A26C((v0 + 11));

  while (1)
  {
    v25 = sub_1C755088C();
    if (!v26)
    {
      break;
    }

    v27 = v0[27];
    v28 = v0[25];
    v0[20] = v25;
    v0[21] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
    sub_1C7550EAC();
    (*(v24 + 8))(v27, v28);
  }

  v33 = v0[30];
  v34 = v0[31];
  v35 = v0[29];

  v0[23] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  sub_1C7550EBC();
  sub_1C6FC1640(v35, v33);

LABEL_12:

  OUTLINED_FUNCTION_43();

  v15();
}

uint64_t sub_1C7449900()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 176) = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t AjaxLLM.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t AjaxLLM.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t sub_1C7449A90()
{
  result = qword_1EC21BF00;
  if (!qword_1EC21BF00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AjaxLLMModel, &type metadata for AjaxLLMModel, v0, v1);
    atomic_store(result, &qword_1EC21BF00);
  }

  return result;
}

uint64_t sub_1C7449AFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7449B1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

uint64_t type metadata accessor for AjaxLLM(uint64_t a1)
{
  result = qword_1EC21BF08;
  if (!qword_1EC21BF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7449BC8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AjaxLLMOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7449DB0()
{
  result = qword_1EC21BF18;
  if (!qword_1EC21BF18)
  {
    result = swift_getWitnessTable(aY_10, &type metadata for AjaxLLMOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF18);
  }

  return result;
}

unint64_t sub_1C7449E08()
{
  result = qword_1EC21BF20;
  if (!qword_1EC21BF20)
  {
    result = swift_getWitnessTable(byte_1C758B960, &type metadata for AjaxLLMOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF20);
  }

  return result;
}

unint64_t sub_1C7449E60()
{
  result = qword_1EC21BF28;
  if (!qword_1EC21BF28)
  {
    result = swift_getWitnessTable(byte_1C758B988, &type metadata for AjaxLLMOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF28);
  }

  return result;
}

unint64_t sub_1C7449EB4()
{
  result = qword_1EC21BF38;
  if (!qword_1EC21BF38)
  {
    result = swift_getWitnessTable(byte_1C758BD20, &type metadata for AjaxLLMTokensResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF38);
  }

  return result;
}

uint64_t sub_1C7449F08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216650, &qword_1C7564ED0);
    result = OUTLINED_FUNCTION_109_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7449F64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    result = OUTLINED_FUNCTION_109_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7449FC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1C754D70C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1C744A12C;

  return sub_1C7449304(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1C744A12C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

unint64_t sub_1C744A218()
{
  result = qword_1EC21BF60;
  if (!qword_1EC21BF60)
  {
    result = swift_getWitnessTable(byte_1C758BCF8, &type metadata for AjaxLLMCompletionAnswer, v0, v1);
    atomic_store(result, &qword_1EC21BF60);
  }

  return result;
}

unint64_t sub_1C744A29C()
{
  result = qword_1EC21BF68;
  if (!qword_1EC21BF68)
  {
    result = swift_getWitnessTable(byte_1C758BCD0, &type metadata for AjaxLLMCompletionRequest, v0, v1);
    atomic_store(result, &qword_1EC21BF68);
  }

  return result;
}

uint64_t sub_1C744A320(void *a1)
{
  v1 = [a1 fallbackBase30bModelName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C744A384()
{
  result = qword_1EC21BF70;
  if (!qword_1EC21BF70)
  {
    result = swift_getWitnessTable(byte_1C758BCA8, &type metadata for AjaxLLMTokensRequest, v0, v1);
    atomic_store(result, &qword_1EC21BF70);
  }

  return result;
}

uint64_t sub_1C744A3E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1C744A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C744A4C0()
{
  result = qword_1EC21BF78;
  if (!qword_1EC21BF78)
  {
    result = swift_getWitnessTable(byte_1C758BC58, &type metadata for AjaxLLMTokensResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF78);
  }

  return result;
}

unint64_t sub_1C744A518()
{
  result = qword_1EC21BF80;
  if (!qword_1EC21BF80)
  {
    result = swift_getWitnessTable(asc_1C758BBC8, &type metadata for AjaxLLMTokensResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF80);
  }

  return result;
}

unint64_t sub_1C744A570()
{
  result = qword_1EC21BF88;
  if (!qword_1EC21BF88)
  {
    result = swift_getWitnessTable(aA_19, &type metadata for AjaxLLMTokensResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF88);
  }

  return result;
}

unint64_t sub_1C744A5C4()
{
  result = qword_1EC21BF98;
  if (!qword_1EC21BF98)
  {
    result = swift_getWitnessTable(aI_20, &type metadata for AjaxLLMCompletionAnswer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BF98);
  }

  return result;
}

unint64_t sub_1C744A618()
{
  result = qword_1EC21BFA0;
  if (!qword_1EC21BFA0)
  {
    result = swift_getWitnessTable(aAi, &type metadata for AjaxLLMUsage, v0, v1);
    atomic_store(result, &qword_1EC21BFA0);
  }

  return result;
}

unint64_t sub_1C744A66C()
{
  result = qword_1EC21BFB8;
  if (!qword_1EC21BFB8)
  {
    result = swift_getWitnessTable(byte_1C758C100, &type metadata for AjaxLLMCompletion, v0, v1);
    atomic_store(result, &qword_1EC21BFB8);
  }

  return result;
}

uint64_t sub_1C744A6C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C744A73C()
{
  result = qword_1EC21BFD0;
  if (!qword_1EC21BFD0)
  {
    result = swift_getWitnessTable(byte_1C758C0D8, &type metadata for AjaxLLMDelta, v0, v1);
    atomic_store(result, &qword_1EC21BFD0);
  }

  return result;
}

unint64_t sub_1C744A7C8()
{
  result = qword_1EC21BFE0;
  if (!qword_1EC21BFE0)
  {
    result = swift_getWitnessTable(a1_4, &type metadata for AjaxLLMCompletionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BFE0);
  }

  return result;
}

unint64_t sub_1C744A81C()
{
  result = qword_1EC21BFE8;
  if (!qword_1EC21BFE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AjaxLLMOptions, &type metadata for AjaxLLMOptions, v0, v1);
    atomic_store(result, &qword_1EC21BFE8);
  }

  return result;
}

unint64_t sub_1C744A870()
{
  result = qword_1EC21BFF8;
  if (!qword_1EC21BFF8)
  {
    result = swift_getWitnessTable(byte_1C758C038, &type metadata for AjaxLLMTokensRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BFF8);
  }

  return result;
}

_BYTE *sub_1C744A8E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C744A9F4()
{
  result = qword_1EC21C008;
  if (!qword_1EC21C008)
  {
    result = swift_getWitnessTable(byte_1C758BEA0, &type metadata for AjaxLLMCompletionAnswer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C008);
  }

  return result;
}

unint64_t sub_1C744AA4C()
{
  result = qword_1EC21C010;
  if (!qword_1EC21C010)
  {
    result = swift_getWitnessTable(byte_1C758BF58, &type metadata for AjaxLLMCompletionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C010);
  }

  return result;
}

unint64_t sub_1C744AAA4()
{
  result = qword_1EC21C018;
  if (!qword_1EC21C018)
  {
    result = swift_getWitnessTable(a9i, &type metadata for AjaxLLMTokensRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C018);
  }

  return result;
}

unint64_t sub_1C744AAFC()
{
  result = qword_1EC21C020;
  if (!qword_1EC21C020)
  {
    result = swift_getWitnessTable(aQ_24, &type metadata for AjaxLLMTokensRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C020);
  }

  return result;
}

unint64_t sub_1C744AB54()
{
  result = qword_1EC21C028;
  if (!qword_1EC21C028)
  {
    result = swift_getWitnessTable(byte_1C758BFA8, &type metadata for AjaxLLMTokensRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C028);
  }

  return result;
}

unint64_t sub_1C744ABAC()
{
  result = qword_1EC21C030;
  if (!qword_1EC21C030)
  {
    result = swift_getWitnessTable(")ܐ'", &type metadata for AjaxLLMCompletionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C030);
  }

  return result;
}

unint64_t sub_1C744AC04()
{
  result = qword_1EC21C038;
  if (!qword_1EC21C038)
  {
    result = swift_getWitnessTable(aA_20, &type metadata for AjaxLLMCompletionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C038);
  }

  return result;
}

unint64_t sub_1C744AC5C()
{
  result = qword_1EC21C040;
  if (!qword_1EC21C040)
  {
    result = swift_getWitnessTable(byte_1C758BE10, &type metadata for AjaxLLMCompletionAnswer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C040);
  }

  return result;
}

unint64_t sub_1C744ACB4()
{
  result = qword_1EC21C048;
  if (!qword_1EC21C048)
  {
    result = swift_getWitnessTable(byte_1C758BE38, &type metadata for AjaxLLMCompletionAnswer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C048);
  }

  return result;
}

unint64_t sub_1C744AD08()
{
  result = qword_1EC21C058;
  if (!qword_1EC21C058)
  {
    result = swift_getWitnessTable(a9_7, &type metadata for AjaxLLMUsage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C058);
  }

  return result;
}

unint64_t sub_1C744AD5C()
{
  result = qword_1EC21C068;
  if (!qword_1EC21C068)
  {
    result = swift_getWitnessTable(byte_1C758C430, &type metadata for AjaxLLMCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C068);
  }

  return result;
}

unint64_t sub_1C744ADB0()
{
  result = qword_1EC21C078;
  if (!qword_1EC21C078)
  {
    result = swift_getWitnessTable(byte_1C758C3E0, &type metadata for AjaxLLMDelta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C078);
  }

  return result;
}

_BYTE *sub_1C744AE14(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C744AEC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C744AFA0()
{
  result = qword_1EC21C080;
  if (!qword_1EC21C080)
  {
    result = swift_getWitnessTable(byte_1C758C248, &type metadata for AjaxLLMUsage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C080);
  }

  return result;
}

unint64_t sub_1C744AFF8()
{
  result = qword_1EC21C088;
  if (!qword_1EC21C088)
  {
    result = swift_getWitnessTable(aI_21, &type metadata for AjaxLLMCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C088);
  }

  return result;
}

unint64_t sub_1C744B050()
{
  result = qword_1EC21C090;
  if (!qword_1EC21C090)
  {
    result = swift_getWitnessTable(byte_1C758C3B8, &type metadata for AjaxLLMDelta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C090);
  }

  return result;
}

unint64_t sub_1C744B0A8()
{
  result = qword_1EC21C098;
  if (!qword_1EC21C098)
  {
    result = swift_getWitnessTable(byte_1C758C328, &type metadata for AjaxLLMDelta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C098);
  }

  return result;
}

unint64_t sub_1C744B100()
{
  result = qword_1EC21C0A0;
  if (!qword_1EC21C0A0)
  {
    result = swift_getWitnessTable(byte_1C758C350, &type metadata for AjaxLLMDelta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C0A0);
  }

  return result;
}

unint64_t sub_1C744B158()
{
  result = qword_1EC21C0A8;
  if (!qword_1EC21C0A8)
  {
    result = swift_getWitnessTable(byte_1C758C270, &type metadata for AjaxLLMCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C0A8);
  }

  return result;
}

unint64_t sub_1C744B1B0()
{
  result = qword_1EC21C0B0;
  if (!qword_1EC21C0B0)
  {
    result = swift_getWitnessTable(byte_1C758C298, &type metadata for AjaxLLMCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C0B0);
  }

  return result;
}

unint64_t sub_1C744B208()
{
  result = qword_1EC21C0B8;
  if (!qword_1EC21C0B8)
  {
    result = swift_getWitnessTable(a9i_0, &type metadata for AjaxLLMUsage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C0B8);
  }

  return result;
}

unint64_t sub_1C744B260()
{
  result = qword_1EC21C0C0;
  if (!qword_1EC21C0C0)
  {
    result = swift_getWitnessTable(aQr_0, &type metadata for AjaxLLMUsage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C0C0);
  }

  return result;
}

uint64_t static StoryGenerationUtilities.dateComponents(from:with:)()
{
  if (qword_1EC214168 != -1)
  {
    OUTLINED_FUNCTION_17_0(&qword_1EC214168);
  }

  v0 = sub_1C754E24C();
  __swift_project_value_buffer(v0, qword_1EC21C0C8);
  OUTLINED_FUNCTION_66_2();
  return sub_1C754E1BC();
}

id static StoryGenerationUtilities.dateFormatter.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C754E31C();
  v5 = sub_1C754E35C();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    v6 = sub_1C754E32C();
    OUTLINED_FUNCTION_62_2();
    (*(v7 + 8))(v3, v5);
  }

  [v4 setTimeZone_];

  sub_1C7069CE4(0x64644D4D5959, 0xE600000000000000, v4);
  return v4;
}

void static StoryGenerationUtilities.previousDayDateComponents(of:)()
{
  OUTLINED_FUNCTION_33();
  v106 = v0;
  v107 = v1;
  v105 = v2;
  v3 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v100 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v94 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v12);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  v16 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v99 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v19);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620, &qword_1C756AEC0);
  OUTLINED_FUNCTION_76(v22);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v102 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v94 - v28;
  v103 = sub_1C754DA4C();
  if ((v29 & 1) == 0)
  {
    v98 = sub_1C754DA6C();
    if ((v30 & 1) == 0)
    {
      v31 = sub_1C754DA1C();
      if ((v32 & 1) == 0)
      {
        v38 = v31;
        if (v31 >= 2)
        {
          sub_1C754E24C();
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
          sub_1C754E35C();
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
          OUTLINED_FUNCTION_2_127();
          v98 = 0;
          LOBYTE(v97) = 1;
          OUTLINED_FUNCTION_12_78();
          v94 = v47;
          OUTLINED_FUNCTION_14_68();
          OUTLINED_FUNCTION_6_108();
LABEL_16:
          sub_1C754DAAC();
          v59 = v102;
LABEL_17:
          v60 = sub_1C754DA4C();
          if ((v61 & 1) == 0)
          {
            v62 = v60;
            v63 = sub_1C754DA6C();
            if ((v64 & 1) == 0)
            {
              v65 = v63;
              v66 = sub_1C754DA1C();
              if ((v67 & 1) == 0 && v62 >= 1)
              {
                if (v62 != 1 || v65 >= 1 && (v65 == 1 ? (v68 = v66 <= 0) : (v68 = 0), !v68))
                {
                  (*(v59 + 32))(v105, v38, v24);
                  v69 = OUTLINED_FUNCTION_12_5();
LABEL_30:
                  __swift_storeEnumTagSinglePayload(v69, v70, 1, v24);
                  OUTLINED_FUNCTION_25_0();
                  return;
                }
              }
            }
          }

          (*(v59 + 8))(v38, v24);
LABEL_29:
          v69 = v105;
          v70 = 1;
          goto LABEL_30;
        }

        sub_1C754E24C();
        v38 = 1;
        OUTLINED_FUNCTION_84();
        v97 = v48;
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
        sub_1C754E35C();
        OUTLINED_FUNCTION_84();
        v96 = v52;
        __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
        if (v98 < 2)
        {
          if (!__OFSUB__(v103, 1))
          {
            OUTLINED_FUNCTION_8_88();
            OUTLINED_FUNCTION_12_78();
            OUTLINED_FUNCTION_14_68();
            OUTLINED_FUNCTION_11_73();
            goto LABEL_16;
          }

          __break(1u);
        }

        else
        {
          OUTLINED_FUNCTION_0_185();
          LOBYTE(v95) = 0;
          v94 = 1;
          OUTLINED_FUNCTION_11_73();
          v95 = v56;
          sub_1C754DAAC();
          if (qword_1EC214168 != -1)
          {
            OUTLINED_FUNCTION_17_0(&qword_1EC214168);
          }

          v98 = __swift_project_value_buffer(v97, qword_1EC21C0C8);
          sub_1C754E1EC();
          if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
          {
            v57 = OUTLINED_FUNCTION_58();
            v58(v57);
            sub_1C6FF52C0(v15, &unk_1EC219230, &unk_1C7563720);
            goto LABEL_29;
          }

          v71 = OUTLINED_FUNCTION_94_3();
          v72(v71);
          v73 = *(v100 + 104);
          v73(v11, *MEMORY[0x1E6969A48], v3);
          v73(v8, *MEMORY[0x1E6969A78], v3);
          sub_1C754E20C();
          v98 = v74;
          v76 = v75;
          v77 = *(v100 + 8);
          v78 = OUTLINED_FUNCTION_2_56();
          v77(v78);
          (v77)(v11, v3);
          if (v76)
          {
            v79 = OUTLINED_FUNCTION_23_52();
            v80(v79);
            v81 = OUTLINED_FUNCTION_58();
            v82(v81);
            goto LABEL_29;
          }

          v83 = v98 - 1;
          if (!__OFSUB__(v98, 1))
          {
            v38 = 1;
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v84, v85, v86, v97);
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v87, v88, v89, v96);
            OUTLINED_FUNCTION_0_185();
            LOBYTE(v107) = 0;
            v106 = v83;
            OUTLINED_FUNCTION_14_68();
            OUTLINED_FUNCTION_6_108();
            sub_1C754DAAC();
            v90 = OUTLINED_FUNCTION_23_52();
            v91(v90);
            v59 = v102;
            v92 = OUTLINED_FUNCTION_58();
            v93(v92);
            goto LABEL_17;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_25_0();

  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
}

void static StoryGenerationUtilities.nextDayDateComponents(of:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v111 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v14);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15_79();
  v116 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v112 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v114 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v20);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620, &qword_1C756AEC0);
  OUTLINED_FUNCTION_76(v22);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v113 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  v110 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v102 - v30;
  v115 = sub_1C754DA4C();
  if ((v31 & 1) == 0)
  {
    v109 = sub_1C754DA6C();
    if ((v32 & 1) == 0)
    {
      v33 = sub_1C754DA1C();
      if ((v34 & 1) == 0)
      {
        v107 = v33;
        v108 = v24;
        v104 = v2;
        v40 = sub_1C754E24C();
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
        sub_1C754E35C();
        OUTLINED_FUNCTION_84();
        v105 = v44;
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
        OUTLINED_FUNCTION_0_185();
        LOBYTE(v103) = 0;
        v102 = 1;
        v48 = v117;
        OUTLINED_FUNCTION_2_56();
        OUTLINED_FUNCTION_6_108();
        sub_1C754DAAC();
        if (qword_1EC214168 != -1)
        {
          OUTLINED_FUNCTION_17_0(&qword_1EC214168);
        }

        v106 = v40;
        __swift_project_value_buffer(v40, qword_1EC21C0C8);
        sub_1C754E1EC();
        if (__swift_getEnumTagSinglePayload(v0, 1, v116) == 1)
        {
          v49 = v108;
          (*(v113 + 8))(v48, v108);
          sub_1C6FF52C0(v0, &unk_1EC219230, &unk_1C7563720);
LABEL_13:
          OUTLINED_FUNCTION_84();
          v62 = v49;
LABEL_30:
          __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
          OUTLINED_FUNCTION_25_0();
          return;
        }

        v103 = v4;
        v50 = OUTLINED_FUNCTION_58();
        v51(v50);
        v52 = v111;
        v53 = *(v111 + 104);
        v53(v13, *MEMORY[0x1E6969A48], v5);
        v53(v10, *MEMORY[0x1E6969A78], v5);
        sub_1C754E20C();
        v55 = v54;
        v57 = v56;
        v58 = *(v52 + 8);
        v58(v10, v5);
        v58(v13, v5);
        if (v57)
        {
          (*(v112 + 8))(v114, v116);
          v49 = v108;
          (*(v113 + 8))(v117, v108);
          goto LABEL_13;
        }

        v63 = v117;
        v64 = v108;
        if (__OFSUB__(v55, 1))
        {
          __break(1u);
        }

        else
        {
          v65 = v112;
          v66 = v114;
          if (v107 < v55 - 1)
          {
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v71, v72, v73, v105);
            OUTLINED_FUNCTION_2_127();
            OUTLINED_FUNCTION_12_78();
            v74 = v110;
LABEL_19:
            OUTLINED_FUNCTION_2_56();
            OUTLINED_FUNCTION_6_108();
            goto LABEL_22;
          }

          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v79, v80, v81, v105);
          if (v109 <= 11)
          {
            OUTLINED_FUNCTION_2_127();
            OUTLINED_FUNCTION_12_78();
            v74 = v110;
            goto LABEL_19;
          }

          if (!__OFADD__(v115, 1))
          {
            OUTLINED_FUNCTION_8_88();
            v106 = 0;
            LOBYTE(v105) = v82;
            OUTLINED_FUNCTION_12_78();
            v102 = v83;
            v74 = v110;
            OUTLINED_FUNCTION_2_56();
            OUTLINED_FUNCTION_11_73();
LABEL_22:
            sub_1C754DAAC();
            v84 = v74;
            v85 = sub_1C754DA4C();
            v86 = v104;
            v87 = v113;
            v88 = v116;
            if (v89)
            {
              v90 = OUTLINED_FUNCTION_21_60();
              (v74)(v90);
              (*(v65 + 8))(v66, v88);
            }

            else
            {
              v91 = v85;
              v84 = v74;
              v92 = sub_1C754DA6C();
              if ((v93 & 1) == 0)
              {
                v95 = v92;
                v96 = sub_1C754DA1C();
                v97 = v65;
                v99 = v98;
                (*(v97 + 8))(v114, v88);
                v100 = *(v87 + 8);
                v100(v63, v64);
                if ((v99 & 1) == 0)
                {
                  if (v91 > 4001 || v91 == 4001 && (v95 > 1 || (v95 == 1 ? (v101 = v96 < 1) : (v101 = 1), !v101)))
                  {
                    v100(v110, v64);
                    v59 = v103;
                    v60 = 1;
                    goto LABEL_29;
                  }

                  (*(v113 + 32))(v103, v110, v64);
LABEL_28:
                  v59 = OUTLINED_FUNCTION_12_5();
LABEL_29:
                  v61 = 1;
                  v62 = v64;
                  goto LABEL_30;
                }

                v100(v74, v64);
                v87 = v113;
LABEL_27:
                (*(v87 + 16))(v103, v86, v64);
                goto LABEL_28;
              }

              v94 = OUTLINED_FUNCTION_21_60();
              (v74)(v94);
              (*(v65 + 8))(v114, v88);
            }

            v84(v63, v64);
            goto LABEL_27;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_25_0();

  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

void sub_1C744C2B4()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620, &qword_1C756AEC0);
  OUTLINED_FUNCTION_76(v2);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C754DA4C();
  if (v4 & 1) != 0 || (sub_1C754DA6C(), (v5) || (sub_1C754DA1C(), (v6))
  {
    sub_1C754DABC();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_25_0();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_1C754E24C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    sub_1C754E35C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_11_73();
    sub_1C754DAAC();
    sub_1C754DA5C();
    sub_1C754DA7C();
    sub_1C754DA2C();
    sub_1C754DA3C();
    sub_1C754DA8C();
    sub_1C754DA9C();
    sub_1C754DABC();
    v20 = OUTLINED_FUNCTION_12_5();
    __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C744C4A4()
{
  v0 = sub_1C754E16C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = sub_1C754E24C();
  __swift_allocate_value_buffer(v7, qword_1EC21C0C8);
  __swift_project_value_buffer(v7, qword_1EC21C0C8);
  (*(v2 + 104))(v6, *MEMORY[0x1E6969868], v0);
  sub_1C754E17C();
  v8 = OUTLINED_FUNCTION_66_2();
  return v9(v8);
}

uint64_t static StoryGenerationUtilities.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC214168 != -1)
  {
    OUTLINED_FUNCTION_17_0(&qword_1EC214168);
  }

  v2 = sub_1C754E24C();
  __swift_project_value_buffer(v2, qword_1EC21C0C8);
  OUTLINED_FUNCTION_62_2();
  v4 = *(v3 + 16);

  return v4(a1);
}

void static StoryGenerationUtilities.nextDay(from:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v10);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_79();
  v12 = sub_1C754E24C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  sub_1C754E21C();
  (*(v5 + 104))(v9, *MEMORY[0x1E6969A48], v3);
  sub_1C754E1FC();
  (*(v5 + 8))(v9, v3);
  (*(v14 + 8))(v18, v12);
  v19 = sub_1C754DF6C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v19) == 1)
  {
    sub_1C6FF52C0(v0, &unk_1EC219230, &unk_1C7563720);
    v20 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_62_2();
    (*(v21 + 32))(v2, v0, v19);
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v20, 1, v19);
  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.dedupedDateComponents(startDateComponents:endDateComponents:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v57 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v18 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78();
  v56 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  static StoryGenerationUtilities.dateComponentsWithOnlyYMD(from:)();
  OUTLINED_FUNCTION_48_1(v17);
  if (v31)
  {
    v14 = v17;
LABEL_11:
    sub_1C6FF52C0(v14, &qword_1EC218C50, &qword_1C75606A0);
    v37 = OUTLINED_FUNCTION_24_46();
    v38(v37);
    sub_1C7026190(v1, v5);
    goto LABEL_12;
  }

  v54 = v3;
  v55 = v5;
  v30 = *(v20 + 32);
  v30(v29, v17, v18);
  sub_1C7026190(v1, v14);
  OUTLINED_FUNCTION_48_1(v14);
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_94_2();
    v33(v32);
LABEL_10:
    v5 = v55;
    goto LABEL_11;
  }

  v30(v26, v14, v18);
  static StoryGenerationUtilities.dateComponentsWithOnlyYMD(from:)();
  OUTLINED_FUNCTION_48_1(v11);
  if (v34)
  {
    v35 = *(v20 + 8);
    v35(v26, v18);
    v36 = OUTLINED_FUNCTION_94_2();
    (v35)(v36);
    v14 = v11;
    goto LABEL_10;
  }

  v39 = v56;
  v30(v56, v11, v18);
  if (MEMORY[0x1CCA59F10](v29, v39))
  {
    if (qword_1EDD0DBE0 != -1)
    {
      swift_once();
    }

    v40 = sub_1C754FF1C();
    __swift_project_value_buffer(v40, qword_1EDD28D28);
    v41 = sub_1C754FEEC();
    v42 = sub_1C75511BC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "Deduped start date components and end date components since they are the same", v43, 2u);
      MEMORY[0x1CCA5F8E0](v43, -1, -1);
    }

    v44 = *(v20 + 8);
    v45 = OUTLINED_FUNCTION_94_3();
    v44(v45);
    (v44)(v26, v18);
    v46 = OUTLINED_FUNCTION_94_2();
    v44(v46);
    v47 = OUTLINED_FUNCTION_24_46();
    v48(v47);
    v49 = v55;
    v50 = 1;
  }

  else
  {
    v51 = *(v20 + 8);
    v52 = OUTLINED_FUNCTION_94_3();
    v51(v52);
    v53 = OUTLINED_FUNCTION_94_2();
    v51(v53);
    (*(v20 + 16))(v57, v54, v18);
    v30(v55, v26, v18);
    v49 = OUTLINED_FUNCTION_12_5();
  }

  __swift_storeEnumTagSinglePayload(v49, v50, 1, v18);
LABEL_12:
  OUTLINED_FUNCTION_25_0();
}

uint64_t static StoryGenerationUtilities.dateComponentsWithOnlyYMD(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15_79();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620, &qword_1C756AEC0);
  OUTLINED_FUNCTION_76(v2);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C754DA4C();
  if (v4 & 1) != 0 || (sub_1C754DA6C(), (v5) || (sub_1C754DA1C(), (v6))
  {
    sub_1C754DABC();
    OUTLINED_FUNCTION_84();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_1C754E24C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    sub_1C754E35C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_12_78();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_11_73();
    sub_1C754DAAC();
    sub_1C754DABC();
    v20 = OUTLINED_FUNCTION_12_5();
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  }
}

id sub_1C744CE9C()
{
  result = sub_1C744CF24(0x797979204D4D4D4DLL, 0xE900000000000079);
  qword_1EC21C0E0 = result;
  return result;
}

id sub_1C744CEF8()
{
  result = sub_1C744CF24(2038004089, 0xE400000000000000);
  qword_1EDD095A0 = result;
  return result;
}

id sub_1C744CF24(uint64_t a1, uint64_t a2)
{
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = objc_opt_self();
  v7 = sub_1C755065C();
  sub_1C754E11C();
  v8 = sub_1C754E09C();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_66_2();
  v9(v10);
  v11 = [v6 dateFormatFromTemplate:v7 options:0 locale:v8];

  [v5 setDateFormat_];
  sub_1C754E11C();
  v12 = sub_1C754E09C();
  v13 = OUTLINED_FUNCTION_66_2();
  v9(v13);
  [v5 setLocale_];

  return v5;
}

id sub_1C744D0CC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_1C744D140()
{
  type metadata accessor for ParallaxSpatialPhotoCache();
  swift_allocObject();
  result = sub_1C744DE6C();
  qword_1EDD09338 = result;
  return result;
}

uint64_t static ParallaxSpatialPhotoCache.shared.getter()
{
  if (qword_1EDD09330 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C744D1D8()
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 112) = 1;
  sub_1C754F85C();
  v7 = sub_1C754FEEC();
  v8 = sub_1C755117C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "ParallaxSpatialPhotoCache enableInMemoryCache()", v9, 2u);
    OUTLINED_FUNCTION_109();
  }

  return (*(v3 + 8))(v6, v1);
}

double sub_1C744D304(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  *&result = MEMORY[0x1EEE9AC00](v7 - 8).n128_u64[0];
  v10 = &v13 - v9;
  if (qword_1EC214178 != -1)
  {
    OUTLINED_FUNCTION_0_186(&qword_1EC214178);
  }

  if ((byte_1EC21C0E8 & 1) == 0)
  {
    v11 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v3;
    v12[5] = a1;
    v12[6] = a2;
    v12[7] = a3;

    sub_1C744E6B4(a2, a3);
    sub_1C6FEB80C(0, 0, v10, &unk_1C758C500, v12);
  }

  return result;
}

uint64_t sub_1C744D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = swift_task_alloc();
  *(v14 + 16) = v18;
  *v18 = v14;
  v18[1] = sub_1C72CCAE8;

  return sub_1C744DF08(a5, a6, a7, 1);
}

uint64_t sub_1C744D4F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  if (qword_1EC214178 != -1)
  {
    OUTLINED_FUNCTION_0_186(&qword_1EC214178);
  }

  if (byte_1EC21C0E8)
  {
    return 0;
  }

  v16 = sub_1C755065C();
  v17 = [v2[17] objectForKey_];
  if (!v17)
  {
    if ([v2[15] objectForKey_] || objc_msgSend(v2[16], sel_objectForKey_, v16))
    {
      v64 = v3;
      v19 = sub_1C754F83C();
      v21 = v20;
      sub_1C754F84C();
      swift_allocObject();
      sub_1C6FEB1B0(v19, v21);
      v22 = sub_1C754F7DC();
      v23 = v21;
      v31 = v22;
      v63 = v23;
      sub_1C754F85C();
      v46 = v16;

      v47 = sub_1C754FEEC();
      v48 = sub_1C755117C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v60 = v48;
        v50 = v49;
        v51 = OUTLINED_FUNCTION_102();
        v61 = swift_slowAlloc();
        v65[0] = v61;
        *v50 = 138543874;
        *(v50 + 4) = v46;
        *v51 = v16;
        *(v50 + 12) = 2080;
        v62 = v46;
        v59 = v47;
        v52 = sub_1C754F76C();
        v54 = sub_1C6F765A4(v52, v53, v65);

        *(v50 + 14) = v54;
        *(v50 + 22) = 2080;
        v55 = sub_1C754F76C();
        v57 = sub_1C6F765A4(v55, v56, v65);

        *(v50 + 24) = v57;
        v58 = v59;
        _os_log_impl(&dword_1C6F5C000, v59, v60, "ParallaxSpatialPhotoCache[%{public}@] returning existing scene:%s copied to:%s", v50, 0x20u);
        sub_1C6FC15D8(v51);
        OUTLINED_FUNCTION_109();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        sub_1C6FC1640(v19, v63);
      }

      else
      {
        sub_1C6FC1640(v19, v63);
      }

      v44 = *(v5 + 8);
      v45 = v12;
      goto LABEL_22;
    }

    sub_1C754F85C();
    v24 = v16;
    v25 = sub_1C754FEEC();
    v26 = sub_1C755117C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_102();
      *v27 = 138543362;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "ParallaxSpatialPhotoCache[%{public}@] no cached scene available", v27, 0xCu);
      sub_1C6FC15D8(v28);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v29 = v25;
      v25 = v24;
    }

    (*(v5 + 8))(v9, v3);
    return 0;
  }

  v18 = v17;
  sub_1C754DDEC();

  sub_1C754F84C();
  swift_allocObject();
  v31 = sub_1C754F7DC();
  sub_1C754F85C();
  v32 = v16;

  v33 = sub_1C754FEEC();
  v34 = sub_1C755117C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_102();
    v37 = swift_slowAlloc();
    v64 = v3;
    v65[0] = v37;
    v38 = v37;
    *v35 = 138543618;
    *(v35 + 4) = v32;
    *v36 = v32;
    *(v35 + 12) = 2082;
    v39 = v32;
    v62 = v33;
    v63 = v39;
    v40 = sub_1C754F76C();
    v42 = sub_1C6F765A4(v40, v41, v65);

    *(v35 + 14) = v42;
    v43 = v62;
    _os_log_impl(&dword_1C6F5C000, v62, v34, "ParallaxSpatialPhotoCache[%{public}@] returning scene created from cached data:%{public}s", v35, 0x16u);
    sub_1C6FC15D8(v36);
    OUTLINED_FUNCTION_109();
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    v44 = *(v5 + 8);
    v45 = v15;
LABEL_22:
    v44(v45, v64);
    return v31;
  }

  (*(v5 + 8))(v15, v3);
  return v31;
}

uint64_t sub_1C744DCA0()
{
  result = sub_1C744DCC4();
  byte_1EC21C0E8 = result & 1;
  return result;
}

id sub_1C744DCC4()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1C755065C();
  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    sub_1C754F85C();
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "ParallaxSpatialPhotoCache disabling cache, PU_DISABLE_SPATIAL_SCENE_CACHE default is true", v9, 2u);
      MEMORY[0x1CCA5F8E0](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v6;
}

uint64_t sub_1C744DE6C()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = [objc_opt_self() strongToWeakObjectsMapTable];
  v1 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  [v1 setCountLimit_];
  *(v0 + 128) = v1;
  *(v0 + 136) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  return v0;
}

uint64_t sub_1C744DF08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 120) = a4;
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_1C754FF1C();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_1C754F80C();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C744E038, v4, 0);
}

uint64_t sub_1C744E038()
{
  v61 = v0;
  if (qword_1EC214178 != -1)
  {
    OUTLINED_FUNCTION_0_186(&qword_1EC214178);
  }

  if ((byte_1EC21C0E8 & 1) == 0)
  {
    v2 = *(v0 + 104);
    v1 = *(v0 + 112);
    v3 = *(v0 + 96);
    sub_1C754F81C();
    sub_1C754F7FC();
    v5 = v4;
    (*(v2 + 8))(v1, v3);
    if (v5)
    {
      v6 = *(v0 + 56);
      v7 = sub_1C755065C();

      v8 = *(v6 + 120);
      v9 = v7;
      v10 = [v8 objectForKey_];
      if (v10)
      {
        v11 = v10;
        v12 = *(v0 + 32);

        v13 = v11 == v12;
      }

      else
      {
        v13 = 0;
      }

      v21 = *(v0 + 56);
      v22 = *(v0 + 32);
      v23 = *(v6 + 120);
      v24 = &selRef_mergedPersonIdentifiers;
      [v23 setObject:v22 forKey:v9];

      if (*(v21 + 112) != 1)
      {
LABEL_18:

        goto LABEL_25;
      }

      v25 = *(v0 + 48);
      [*(*(v0 + 56) + 128) setObject:*(v0 + 32) forKey:v9];
      if (v25 >> 60 == 15)
      {
        v26 = [*(*(v0 + 56) + 136) objectForKey_];
        if (!v26)
        {
          goto LABEL_16;
        }

        v27 = v26;
        if (!v13)
        {

LABEL_16:
          if (*(v0 + 120) == 1)
          {
            v28 = *(v0 + 32);
            v29 = type metadata accessor for PXParallaxSpatialPhotoScene();
            v30 = objc_allocWithZone(v29);
            *&v30[OBJC_IVAR____TtC18PhotosIntelligence27PXParallaxSpatialPhotoScene_scene] = v28;
            *(v0 + 16) = v30;
            *(v0 + 24) = v29;

            v31 = objc_msgSendSuper2((v0 + 16), sel_init);
            v32 = sub_1C6FF4730();
            v34 = v33;

            v27 = sub_1C754DDCC();
            sub_1C6FC1640(v32, v34);
            v35 = 1;
LABEL_21:
            sub_1C754F85C();
            v38 = v27;
            v39 = v9;

            v40 = v38;
            v41 = sub_1C754FEEC();
            v42 = sub_1C755117C();

            v43 = os_log_type_enabled(v41, v42);
            v44 = *(v0 + 88);
            v45 = *(v0 + 72);
            v59 = *(v0 + 64);
            if (v43)
            {
              v58 = *(v0 + 88);
              v46 = swift_slowAlloc();
              v56 = v35;
              v47 = OUTLINED_FUNCTION_102();
              v57 = swift_slowAlloc();
              v60 = v57;
              *v46 = 138544130;
              *(v46 + 4) = v39;
              *v47 = v7;
              *(v46 + 12) = 2082;
              v48 = v39;
              v49 = sub_1C754F76C();
              v51 = sub_1C6F765A4(v49, v50, &v60);

              *(v46 + 14) = v51;
              *(v46 + 22) = 2050;
              v52 = [v40 length];

              *(v46 + 24) = v52 / 0x100000;
              *(v46 + 32) = 1024;
              *(v46 + 34) = v56;
              _os_log_impl(&dword_1C6F5C000, v41, v42, "ParallaxSpatialPhotoCache[%{public}@] caching scene %{public}s %{public}ld MB didSerialize:%{BOOL}d", v46, 0x26u);
              sub_1C6FC15D8(v47);
              OUTLINED_FUNCTION_109();
              __swift_destroy_boxed_opaque_existential_1(v57);
              OUTLINED_FUNCTION_109();
              v24 = &selRef_mergedPersonIdentifiers;
              OUTLINED_FUNCTION_109();

              (*(v45 + 8))(v58, v59);
            }

            else
            {

              (*(v45 + 8))(v44, v59);
            }

            v53 = *(*(v0 + 56) + 136);
            [v53 v24[300]];

            goto LABEL_25;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v37 = *(v0 + 40);
        v36 = *(v0 + 48);
        sub_1C6FEB1B0(v37, v36);
        v27 = sub_1C754DDCC();
        sub_1C70B5C10(v37, v36);
      }

      v35 = 0;
      goto LABEL_21;
    }

    sub_1C754F85C();
    v14 = sub_1C754FEEC();
    v15 = sub_1C755117C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "ParallaxSpatialPhotoCache unable to register scene, missing cacheKey", v20, 2u);
      OUTLINED_FUNCTION_109();
    }

    (*(v18 + 8))(v17, v19);
  }

LABEL_25:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t ParallaxSpatialPhotoCache.__deallocating_deinit()
{
  ParallaxSpatialPhotoCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C744E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  v20 = v14[5];
  v22 = v14[6];
  v21 = v14[7];
  v24 = swift_task_alloc();
  *(v15 + 16) = v24;
  *v24 = v15;
  v24[1] = sub_1C72CCAE8;

  return sub_1C744D440(a1, v17, v18, v19, v20, v22, v21, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C744E6B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6FEB1B0(a1, a2);
  }

  return a1;
}

uint64_t static MessagesBackdrop.Utilities.sanitizeConversationID(conversationID:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C75507FC();
  sub_1C75504FC();
  if (v4 < 5)
  {
    return a1;
  }

  v5 = sub_1C7033D84(2, a1, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = sub_1C75507FC();
  if (!__OFSUB__(result, 2))
  {
    v13 = sub_1C755094C();
    v15 = sub_1C744ECC8(v5, v7, v9, v11, v13, v14);

    sub_1C75504FC();
    sub_1C744E8B4(2uLL, a1, a2);
    sub_1C70D3F24();
    sub_1C75504FC();
    sub_1C755083C();

    return v15;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C744E8B4(unint64_t result, uint64_t a2, unint64_t a3)
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

    result = sub_1C755082C();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_1C755098C();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C744E98C(uint64_t result, uint64_t a2)
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
      result = 0;
    }

    if (v2 >= result)
    {
      v4 = sub_1C74B833C();

      return v4;
    }
  }

  __break(1u);
  return result;
}

void sub_1C744EA24(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_1C6FB1814();
    v3 = v4;
  }

  *v1 = v3;
}

void *static MessagesBackdrop.Utilities.suggestionsByConversationID(for:)(void *a1)
{
  v1 = [a1 count];
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v2 = v1;
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v6 = [a1 objectAtIndexedSubscript_];
    v7 = sub_1C744F4AC(v6);
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v7;
    v10 = v8;
    sub_1C6F6E5B4(v3, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1C6F78124(v9, v10);
    if (__OFADD__(v5[2], (v12 & 1) == 0))
    {
      break;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C0F0, &qword_1C758C598);
    if (sub_1C7551A2C())
    {
      v15 = sub_1C6F78124(v9, v10);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_23;
      }

      v13 = v15;
    }

    if (v14)
    {
    }

    else
    {
      v5[(v13 >> 6) + 8] |= 1 << v13;
      v17 = (v5[6] + 16 * v13);
      *v17 = v9;
      v17[1] = v10;
      *(v5[7] + 8 * v13) = MEMORY[0x1E69E7CC0];
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v5[2] = v20;
    }

    v21 = (v5[7] + 8 * v13);
    v22 = v6;
    MEMORY[0x1CCA5D040]();
    if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    v3 = sub_1C6F86C50;
LABEL_16:
    ++v4;

    if (v2 == v4)
    {
      sub_1C6F6E5B4(v3, 0);
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C744ECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1C75507FC();
  v7 = sub_1C75514DC();
  v8 = __OFADD__(v6, v7);
  result = v6 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1CCA5CC70](result);
    sub_1C70D3F24();
    sub_1C755083C();
    sub_1C755083C();
    return 0;
  }

  return result;
}

uint64_t sub_1C744EDAC(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_1C6FB1814();
    v5 = v2;
    v3 = sub_1C75504FC();
    sub_1C6FD3B8C(v3);
    v4 = sub_1C75504FC();
    sub_1C6FD2568(v4);
    return v5;
  }

  return result;
}

id static MessagesBackdrop.Utilities.validResourcesExist(in:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C755068C();
  sub_1C754DC9C();

  v8 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1C754DCEC();
  v9 = sub_1C755065C();

  v10 = [v8 fileExistsAtPath_];

  (*(v4 + 8))(v7, v2);
  return v10;
}

uint64_t static MessagesBackdrop.Utilities.messagesBackdropSubtype(for:)(void *a1)
{
  if ([a1 isSystemPhotoLibrary])
  {
    return 1502;
  }

  else
  {
    return 1501;
  }
}

id static MessagesBackdrop.Utilities.posterDescriptor(for:assetUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 photoLibrary];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = result;
  v15 = [result photoLibraryURL];

  sub_1C754DCCC();
  v16 = sub_1C754DCEC();
  v18 = v17;
  (*(v8 + 8))(v12, v6);
  result = sub_1C70CAC04(a1);
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v21 = v19;
  v22 = [a1 subtype];
  objc_allocWithZone(MEMORY[0x1E69C0818]);
  sub_1C75504FC();
  v23 = sub_1C744F370(a2, a3, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C7565670;
  *(v24 + 32) = v23;
  objc_allocWithZone(MEMORY[0x1E69C07F0]);
  v25 = v23;
  sub_1C75504FC();
  v26 = sub_1C744F400(1, v24, v16, v18);
  v27 = [v26 descriptorType];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C755BAB0;
  result = sub_1C70CAC04(a1);
  if (!v29)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = v29;

  v32 = objc_opt_self();
  *(v28 + 32) = v30;
  *(v28 + 40) = v31;
  v33 = sub_1C7550B3C();

  v34 = [v32 descriptorIdentifierForDescriptorType:v27 uuids:v33];

  if (!v34)
  {
    sub_1C755068C();
    v34 = sub_1C755065C();
  }

  [v26 setIdentifier_];

  return v26;
}

uint64_t static MessagesBackdrop.Utilities.posterDescriptorIdentifier(for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755BAB0;
  result = sub_1C70CAC04(a1);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    *(v2 + 32) = v5;
    *(v2 + 40) = v6;
    v8 = sub_1C7550B3C();

    v9 = [v7 descriptorIdentifierForDescriptorType:1 uuids:v8];

    v10 = sub_1C755068C();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C744F370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v7 = sub_1C755065C();

  v8 = sub_1C755065C();

  v9 = [v5 initWithAssetUUID:v7 suggestionUUID:v8 suggestionSubtype:a5];

  return v9;
}

id sub_1C744F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C744F5BC();
  v7 = sub_1C7550B3C();

  if (a4)
  {
    v8 = sub_1C755065C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDescriptorType:a1 media:v7 photoLibraryPath:v8];

  return v9;
}

uint64_t sub_1C744F4AC(void *a1)
{
  v1 = [a1 context];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

_BYTE *_s9UtilitiesVwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C744F5BC()
{
  result = qword_1EC21C0F8;
  if (!qword_1EC21C0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC21C0F8);
  }

  return result;
}

void sub_1C744F600(uint64_t a1)
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C108, &qword_1C758C638);
  sub_1C7450888();
  v2 = sub_1C754DBAC();
  if (v1)
  {
    swift_getErrorValue();
    v4 = sub_1C7551EAC();
    v6 = v5;
    sub_1C744FAAC();
    swift_allocError();
    *v7 = v4;
    v7[1] = v6;
    swift_willThrow();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    sub_1C7161C08();
    sub_1C6FC1640(v8, v9);
  }
}

void sub_1C744F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, const char *a8)
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1C7141478(a7, a5, a6, a8);
  v13 = sub_1C754DBAC();
  if (v8)
  {
    swift_getErrorValue();
    v15 = sub_1C7551EAC();
    v17 = v16;
    sub_1C744FAAC();
    swift_allocError();
    *v18 = v15;
    v18[1] = v17;
    swift_willThrow();
  }

  else
  {
    v19 = v13;
    v20 = v14;
    OUTLINED_FUNCTION_0_187();
    sub_1C7161C08();
    sub_1C6FC1640(v19, v20);
  }
}

double static AssetStateDiagnosticsGenerator.save<A>(dataToEncode:as:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  v7 = sub_1C754DBAC();
  if (v6)
  {
    swift_getErrorValue();
    v9 = sub_1C7551EAC();
    v11 = v10;
    sub_1C744FAAC();
    swift_allocError();
    *v12 = v9;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v14 = v7;
    v15 = v8;
    OUTLINED_FUNCTION_0_187();
    sub_1C7161C08();
    sub_1C6FC1640(v14, v15);
  }

  return result;
}

unint64_t sub_1C744FAAC()
{
  result = qword_1EC21C100;
  if (!qword_1EC21C100)
  {
    result = swift_getWitnessTable(byte_1C758C5F8, &type metadata for AssetStateDiagnosticsGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21C100);
  }

  return result;
}

uint64_t static AssetStateDiagnosticsGenerator.save(assetState:to:storyAssetManager:)(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a2;
  v6 = *a1;
  result = PFOSVariantHasInternalDiagnostics();
  if (result)
  {
    v18[0] = v6;
    result = sub_1C7450028(v18);
    if (!v4)
    {
      v8 = 0;
      v16 = a3;
      v17 = *(result + 16);
      for (i = (result + 72); ; i += 6)
      {
        if (v17 == v8)
        {
        }

        if (v8 >= *(result + 16))
        {
          break;
        }

        v10 = result;
        v11 = *(i - 2);
        v12 = *(i - 1);
        v13 = *i;
        v14 = *(i - 5);
        v15 = *(i - 4);
        v18[0] = *(i - 3);
        v18[1] = v11;
        v18[2] = v12;
        v18[3] = v13;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();

        static AssetStateDiagnosticsGenerator.save(_:as:to:storyAssetManager:)(v18, v14, v15, v19, v16);

        ++v8;
        result = v10;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C744FC48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656661537369 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646E657478457369 && a2 == 0xEA00000000006465)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C744FD5C(char a1)
{
  if (!a1)
  {
    return 1684632949;
  }

  if (a1 == 1)
  {
    return 0x656661537369;
  }

  return 0x646E657478457369;
}

uint64_t sub_1C744FDAC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C128, &qword_1C758C6A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7450A04();
  sub_1C755200C();
  v15 = 0;
  sub_1C7551CCC();
  if (!v4)
  {
    v14 = 1;
    sub_1C7551CDC();
    v13 = 2;
    sub_1C7551CDC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C744FF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C744FC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C744FF7C(uint64_t a1)
{
  v2 = sub_1C7450A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C744FFB8(uint64_t a1)
{
  v2 = sub_1C7450A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C744FFF4(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1C744FDAC(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

uint64_t sub_1C7450028(unint64_t *a1)
{
  v1 = *a1;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v12 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v15 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C120, &qword_1C758C640);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C755BAB0;
      *(v9 + 32) = 0xD000000000000012;
      *(v9 + 40) = 0x80000001C75B0DD0;
      *(v9 + 48) = v12;
      *(v9 + 56) = v13;
      *(v9 + 64) = v14;
      *(v9 + 72) = v15;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      goto LABEL_6;
    case 2uLL:
      v10 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C120, &qword_1C758C640);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C755BAB0;
      *(v9 + 32) = 0xD000000000000016;
      *(v9 + 40) = 0x80000001C75B0DB0;
      StoryAsset.Manager.collection(with:)(v10, (v9 + 48));
      break;
    case 3uLL:
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B0D90);
      sub_1C73E6C1C(v1);
      v9 = 0xE000000000000000;
      sub_1C744FAAC();
      swift_allocError();
      *v11 = 0;
      v11[1] = 0xE000000000000000;
      swift_willThrow();
      break;
    default:
      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      v5 = *(v1 + 32);
      v4 = *(v1 + 40);
      v7 = *(v1 + 48);
      v6 = *(v1 + 56);
      v8 = *(v1 + 64);
      v17 = *(v1 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C120, &qword_1C758C640);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C75604F0;
      *(v9 + 32) = 0xD000000000000013;
      *(v9 + 40) = 0x80000001C75B0DF0;
      *(v9 + 48) = v3;
      *(v9 + 56) = v2;
      *(v9 + 64) = v5;
      *(v9 + 72) = v4;
      *(v9 + 80) = 0xD00000000000001BLL;
      *(v9 + 88) = 0x80000001C75B0E10;
      *(v9 + 96) = v7;
      *(v9 + 104) = v6;
      *(v9 + 112) = v8;
      *(v9 + 120) = v17;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
LABEL_6:

      break;
  }

  return v9;
}

uint64_t static AssetStateDiagnosticsGenerator.save(_:as:to:storyAssetManager:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v142 = *a1;
  v117 = v142;
  v143 = v7;
  v144 = v9;
  v145 = v8;
  swift_bridgeObjectRetain_n();
  v10 = sub_1C71CDAC0(v7);
  v11 = sub_1C754F41C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
  v140 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v141 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(&v138);
  MEMORY[0x1CCA5B6D0]();
  v146 = a5;
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v142, v10, &v138, v14, v15, v16, v17, v18, v81, v89, a4, v99, v105, v111, v117, a2, a3, v11, v138, v139);
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1(&v138);
  }

  else
  {
    v112 = v19;

    __swift_destroy_boxed_opaque_existential_1(&v138);
    v142 = v118;
    v143 = v7;
    v144 = v9;
    v145 = v8;
    sub_1C75504FC();
    sub_1C7074668(&unk_1F46A85F0, v7, v20, v21, v22, v23, v24, v25, v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v90, v95, v100, v106, v112, v118, v124, v129, v133);
    v27 = sub_1C71CDAC0(v26);
    v140 = v12;
    v141 = OpaqueTypeConformance2;
    __swift_allocate_boxed_opaque_existential_0(&v138);
    MEMORY[0x1CCA5B6D0]();
    StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v142, v27, &v138, v28, v29, v30, v31, v32, v83, v91, v96, v101, v107, v113, v119, v125, v130, v134, v138, v139);
    v34 = v33;

    __swift_destroy_boxed_opaque_existential_1(&v138);
    v142 = v120;
    v143 = v7;
    v144 = v9;
    v145 = v8;
    sub_1C7074668(&unk_1F46A8618, v7, v35, v36, v37, v38, v39, v40, v84, v86, v87, v88, v92, v97, v102, v108, v114, v120, v126, v131, v135);
    v42 = sub_1C71CDAC0(v41);
    v140 = v12;
    v141 = OpaqueTypeConformance2;
    __swift_allocate_boxed_opaque_existential_0(&v138);
    MEMORY[0x1CCA5B6D0]();
    StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v142, v42, &v138, v43, v44, v45, v46, v47, v85, v93, v98, v103, v109, v115, v121, v127, v132, v136, v138, v139);
    v50 = v48;

    __swift_destroy_boxed_opaque_existential_1(&v138);
    sub_1C703FD7C();
    v52 = v51;

    v53 = *(v52 + 16);
    if (v53)
    {
      v142 = MEMORY[0x1E69E7CC0];
      sub_1C716E768(0, v53, 0);
      v54 = 0;
      v110 = v52 + 32;
      v55 = v142;
      v56 = v34 + 56;
      v146 = v50 + 56;
      v116 = v53;
      v122 = v50;
      v104 = v34 + 56;
      do
      {
        v137 = v55;
        v57 = (v110 + 16 * v54);
        v58 = *v57;
        v59 = v57[1];
        if (*(v34 + 16))
        {
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v60 = sub_1C7551FAC();
          v61 = ~(-1 << *(v34 + 32));
          do
          {
            v62 = v60 & v61;
            v63 = (1 << (v60 & v61)) & *(v56 + (((v60 & v61) >> 3) & 0xFFFFFFFFFFFFFF8));
            v64 = v63 != 0;
            if (!v63)
            {
              break;
            }

            v65 = (*(v34 + 48) + 16 * v62);
            if (*v65 == v58 && v65[1] == v59)
            {
              break;
            }

            v67 = sub_1C7551DBC();
            v60 = v62 + 1;
          }

          while ((v67 & 1) == 0);
        }

        else
        {
          sub_1C75504FC();
          v64 = 0;
        }

        if (*(v50 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          v68 = sub_1C7551FAC();
          v69 = ~(-1 << *(v50 + 32));
          do
          {
            v70 = v68 & v69;
            v71 = (1 << (v68 & v69)) & *(v146 + (((v68 & v69) >> 3) & 0xFFFFFFFFFFFFFF8));
            v72 = v71 != 0;
            if (!v71)
            {
              break;
            }

            v73 = (*(v50 + 48) + 16 * v70);
            if (*v73 == v58 && v73[1] == v59)
            {
              break;
            }

            v75 = sub_1C7551DBC();
            v68 = v70 + 1;
          }

          while ((v75 & 1) == 0);
        }

        else
        {
          v72 = 0;
        }

        v76 = v34;
        v55 = v137;
        v142 = v137;
        v78 = *(v137 + 16);
        v77 = *(v137 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1C716E768(v77 > 1, v78 + 1, 1);
          v55 = v142;
        }

        ++v54;
        *(v55 + 16) = v78 + 1;
        v79 = v55 + 24 * v78;
        *(v79 + 32) = v58;
        *(v79 + 40) = v59;
        *(v79 + 48) = v64;
        *(v79 + 49) = v72;
        v34 = v76;
        v50 = v122;
        v56 = v104;
      }

      while (v54 != v116);
      v80 = v55;
    }

    else
    {

      v80 = MEMORY[0x1E69E7CC0];
    }

    sub_1C744F600(v80);
  }
}

_BYTE *storeEnumTagSinglePayload for AssetStateDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7450888()
{
  result = qword_1EC21C110;
  if (!qword_1EC21C110)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21C108, &qword_1C758C638);
    v4[0] = sub_1C745090C();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC21C110);
  }

  return result;
}

unint64_t sub_1C745090C()
{
  result = qword_1EC21C118;
  if (!qword_1EC21C118)
  {
    result = swift_getWitnessTable(byte_1C758C678, &type metadata for AssetStateDiagnosticsGenerator.AnnotatedAsset, v0, v1);
    atomic_store(result, &qword_1EC21C118);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C7450974(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1C74509B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C7450A04()
{
  result = qword_1EC21C130;
  if (!qword_1EC21C130)
  {
    result = swift_getWitnessTable(aMd, &type metadata for AssetStateDiagnosticsGenerator.AnnotatedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C130);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetStateDiagnosticsGenerator.AnnotatedAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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