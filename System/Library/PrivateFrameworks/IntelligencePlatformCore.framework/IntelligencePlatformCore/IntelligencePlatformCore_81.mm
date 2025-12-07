char *sub_1C4B9AC0C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  v6 = result;
  if (result)
  {
    result = sub_1C4EF9568();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1C4EF9558();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1C4B984CC(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

id sub_1C4B9ACA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C4F01108();

  v9 = [a5 sentenceEmbeddingVectorDataForString:v8 language:a3 error:a4];

  return v9;
}

unint64_t sub_1C4B9AD24(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1C4B9ADC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1C4B9AE34(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1C4B9ADC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1C4B9AAA8(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C4B9AE34(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1C4F022F8();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t sub_1C4B9AF40(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1C4B9AD24(0xFuLL, a1, a2);
  result = sub_1C4B9AD24(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C4F01228();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1C4F022F8();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C4F01238();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1C4F022F8();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}

unint64_t sub_1C4B9B178()
{
  result = qword_1EC0C2620;
  if (!qword_1EC0C2620)
  {
    sub_1C4572308(&qword_1EC0B84F0, &unk_1C4F0CF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2620);
  }

  return result;
}

unint64_t sub_1C4B9B1DC()
{
  result = qword_1EC0C4158;
  if (!qword_1EC0C4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4158);
  }

  return result;
}

uint64_t sub_1C4B9B230(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4B9B28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B9B2FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t VectorSearchSimilarityMetric.toVectorDatabaseMetric()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C4EFC318();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  (*(v7 + 16))(v2, v3, v5);
  v9 = (*(v7 + 88))(v2, v5);
  if (v9 == *MEMORY[0x1E69DF588])
  {
    v10 = MEMORY[0x1E69DF528];
LABEL_7:
    v11 = *v10;
    sub_1C4EFC2D8();
    sub_1C43FBCE0();
    return (*(v12 + 104))(a1, v11);
  }

  if (v9 == *MEMORY[0x1E69DF590])
  {
    v10 = MEMORY[0x1E69DF518];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x1E69DF580])
  {
    v10 = MEMORY[0x1E69DF520];
    goto LABEL_7;
  }

  result = sub_1C4F02928();
  __break(1u);
  return result;
}

void *sub_1C4B9B4F8(uint64_t a1, uint64_t a2)
{
  v6 = OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_config;
  sub_1C4B9E0CC(a2, v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_config);
  *(v2 + 16) = a1;

  sub_1C4B9B6CC();
  if (v3)
  {
    sub_1C4B9E130(a2);
  }

  else
  {
    if (v10)
    {
      sub_1C441D670(&v9, v11);
      sub_1C442E860(v11, v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader);
      sub_1C4EFC248();

      sub_1C4B9E130(a2);
      sub_1C440962C(v11);
      return v2;
    }

    sub_1C4420C3C(&v9, &qword_1EC0C41F8, qword_1C4F57F98);
    sub_1C4B9B1DC();
    swift_allocError();
    *v8 = 0xD00000000000002ALL;
    *(v8 + 8) = 0x80000001C4FB4410;
    *(v8 + 16) = 1;
    swift_willThrow();

    sub_1C4B9E130(a2);
  }

  sub_1C4B9E130(v2 + v6);
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_1C4B9B6CC()
{
  sub_1C43FE96C();
  v2 = v0;
  v64 = v3;
  v4 = type metadata accessor for VectorDB.Config(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - v25;
  if (*v2 == 1)
  {
    v59 = v1;
    v27 = *(v2 + 56);
    if (!v27)
    {
      *(v64 + 32) = 0;
      *v64 = 0u;
      *(v64 + 16) = 0u;
      goto LABEL_15;
    }

    v58 = v24;
    v28 = *(v2 + 48);
    v29 = v28 == 0xD000000000000015 && 0x80000001C4FB4440 == v27;
    if (v29 || (sub_1C4403880(0xD000000000000015, 0x80000001C4FB4440) & 1) != 0)
    {
      sub_1C4B9E0CC(v2, v26);
      v30 = type metadata accessor for NLContextualEmbeddingAssetLoader(0);
      sub_1C441E43C(v30);
      v31 = v59;
      v32 = sub_1C4B97CAC();
      if (!v31)
      {
        v33 = &off_1F43FF7C0;
LABEL_12:
        v61 = v22;
        v62 = v33;
LABEL_13:
        *&v60 = v32;
        sub_1C441D670(&v60, v63);
        sub_1C441D670(v63, v64);
      }
    }

    else
    {
      v35 = v28 == 0x646465626D456C6ELL && v27 == 0xEB00000000676E69;
      if (v35 || (sub_1C4403880(0x646465626D456C6ELL, 0xEB00000000676E69) & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v22);
        v36 = type metadata accessor for NLEmbeddingAssetLoader(0);
        swift_allocObject();
        v37 = v59;
        v32 = sub_1C4B98740();
        if (v37)
        {
          goto LABEL_15;
        }

        v61 = v36;
        v62 = &off_1F43FF760;
        goto LABEL_13;
      }

      v38 = v28 == 0x64696C637565 && v27 == 0xE600000000000000;
      if (v38 || (sub_1C4403880(0x64696C637565, 0xE600000000000000) & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v19);
        v39 = type metadata accessor for EuclidEmbeddingAssetLoader(0);
        sub_1C441E43C(v39);
        v40 = v59;
        v32 = sub_1C4B98EA0(v19);
        if (v40)
        {
          goto LABEL_15;
        }

        v33 = &off_1F43FF700;
        goto LABEL_12;
      }

      v41 = v28 == 0x6173726576696E75 && v27 == 0xED0000747865546CLL;
      if (v41 || (sub_1C4403880(0x6173726576696E75, 0xED0000747865546CLL) & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v16);
        v42 = type metadata accessor for UniversalEmbeddingAssetLoader(0);
        sub_1C441E43C(v42);
        v43 = v59;
        v32 = sub_1C4B99FC0();
        if (v43)
        {
          goto LABEL_15;
        }

        v33 = &off_1F43FF6A0;
        goto LABEL_12;
      }

      v44 = v28 == 0xD000000000000010 && 0x80000001C4FB4460 == v27;
      if (v44 || (sub_1C4403880(0xD000000000000010, 0x80000001C4FB4460) & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v13);
        v45 = type metadata accessor for AddressEmbeddingAssetLoader(0);
        sub_1C441E43C(v45);
        v46 = v59;
        v32 = sub_1C4B97484(v13);
        if (v46)
        {
          goto LABEL_15;
        }

        v33 = &off_1F43FF820;
        goto LABEL_12;
      }

      v47 = v28 == 0x7974706D65 && v27 == 0xE500000000000000;
      if (v47 || (sub_1C4403880(0x7974706D65, 0xE500000000000000) & 1) != 0)
      {
        sub_1C4B9E0CC(v2, v10);
        v48 = type metadata accessor for DefaultEmptyAssetLoader(0);
        sub_1C441E43C(v48);
        v49 = v59;
        v32 = sub_1C4B96F7C(v10);
        if (v49)
        {
          goto LABEL_15;
        }

        v33 = &off_1F43FF880;
        goto LABEL_12;
      }

      if (qword_1EDDFECD0 != -1)
      {
        sub_1C4400FC0();
        swift_once();
      }

      v50 = sub_1C4F00978();
      sub_1C442B738(v50, qword_1EDE2DF70);
      v51 = sub_1C4F00968();
      v52 = sub_1C4F01CB8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1C43F8000, v51, v52, "VectorDBArtifact: DefaultEmptyAssetLoader is being used by default.", v53, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v54 = v58;
      sub_1C4B9E0CC(v2, v58);
      v55 = type metadata accessor for DefaultEmptyAssetLoader(0);
      sub_1C441E43C(v55);
      v56 = v59;
      v57 = sub_1C4B96F7C(v54);
      if (!v56)
      {
        *(v64 + 24) = v51;
        *(v64 + 32) = &off_1F43FF880;
        *v64 = v57;
      }
    }
  }

  else
  {
    sub_1C4B9E0CC(v2, v6);
    v34 = type metadata accessor for GenericEmbeddingAssetLoader(0);
    sub_1C441E43C(v34);
    v32 = sub_1C4B96558(v6);
    if (!v1)
    {
      v33 = &off_1F43FF8E0;
      goto LABEL_12;
    }
  }

LABEL_15:
  sub_1C43FBC80();
}

uint64_t sub_1C4B9BC50()
{

  sub_1C4EFC268();

  sub_1C4B9E130(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_config);
  sub_1C440962C((v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader));
  return v0;
}

uint64_t sub_1C4B9BCB4()
{
  sub_1C4B9BC50();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B9BD0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4B9BD2C, 0, 0);
}

uint64_t sub_1C4B9BD2C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader;
  v0[4] = OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_1C4409678((v1 + v2), v3);
  sub_1C43FCFC0();
  sub_1C4404280();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1C4B9BE58;

  return v8(v3, v4);
}

uint64_t sub_1C4B9BE58()
{

  if (v0)
  {
    sub_1C43FBDA0();

    return v1();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4B9BF84, 0, 0);
  }
}

uint64_t sub_1C4B9BF84()
{
  v1 = (v0[3] + v0[4]);
  v2 = v1[3];
  v3 = v1[4];
  sub_1C4409678(v1, v2);
  sub_1C43FCFC0();
  sub_1C4404280();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1C4B9C0AC;
  v6 = v0[2];

  return v8(v6, v2, v3);
}

uint64_t sub_1C4B9C0AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C4B9C1FC, 0, 0);
  }
}

uint64_t sub_1C4B9C1FC()
{
  v1 = *(v0 + 56);
  v2 = sub_1C4EFC238();

  if (!v1)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DF70);
    v5 = sub_1C4F00968();
    v13 = sub_1C4F01CC8();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = sub_1C43FD084();
      *v14 = 134217984;
      *(v14 + 4) = v2;
      sub_1C43FF718(&dword_1C43F8000, v15, v13, "VectorDBArtifact: %ld embeddings inserted.");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_10;
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DF70);
  v4 = sub_1C43FCFC0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1C43FD084();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_1C43FF718(&dword_1C43F8000, v11, v6, "VectorDBArtifact: %@");
    sub_1C4420C3C(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  sub_1C43FBDA0();

  return v16();
}

uint64_t sub_1C4B9C420(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1C4EFC308();
  v2[4] = swift_task_alloc();
  v2[5] = sub_1C4EFC2C8();
  sub_1C4404280();
  v2[6] = v3;
  v2[7] = swift_task_alloc();
  v2[8] = sub_1C4EFF0C8();
  sub_1C4404280();
  v2[9] = v4;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B9C560, 0, 0);
}

uint64_t sub_1C4B9C560()
{
  v1 = 0;
  v33 = *(v0[2] + 16);
  v30 = (v0[3] + OBJC_IVAR____TtCO24IntelligencePlatformCore8VectorDB17EmbeddingDatabase_assetLoader);
  v29 = *MEMORY[0x1E69DF560];
  v31 = v0[6];
  v32 = v0[9];
  v28 = *MEMORY[0x1E69DF5E0];
  while (v33 != v1)
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = v1;
    (*(v32 + 16))(v0[10], v0[2] + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v1, v0[8]);
    v6 = v30[3];
    v5 = v30[4];
    sub_1C4409678(v30, v6);
    (*(v5 + 16))(v6, v5);
    sub_1C456902C(&qword_1EC0C41C0, &qword_1C4F57D70);
    v7 = (sub_1C456902C(&qword_1EC0C41C8, &qword_1C4F57D78) - 8);
    v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C4F0D130;
    v10 = v9 + v8;
    v11 = v7[14];
    sub_1C4EFC2E8();
    sub_1C43FBCE0();
    (*(v12 + 104))(v10, v29);
    *(v10 + v11) = sub_1C4EFF0A8();
    v13 = sub_1C4EFC338();
    sub_1C43FBCE0();
    (*(v14 + 104))(v10 + v11, v28, v13);
    sub_1C440BAA8(v10 + v11, 0, 1, v13);
    sub_1C4EFC2B8();
    sub_1C456902C(&qword_1EC0C41D0, &qword_1C4F57D80);
    v15 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C4F0D130;
    (*(v31 + 16))(v16 + v15, v2, v3);
    v17 = sub_1C4EFC208();
    v1 = v4 + 1;
    (*(v31 + 8))(v0[7], v0[5]);

    v18 = sub_1C4430230();
    v19(v18);
    sub_1C49D3B9C(v17);
  }

  v20 = sub_1C4EFC228();

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v21 = sub_1C4F00978();
  sub_1C442B738(v21, qword_1EDE2DF70);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CC8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_1C43FD084();
    *v24 = 134217984;
    *(v24 + 4) = v20;
    sub_1C43FF718(&dword_1C43F8000, v25, v23, "VectorDBArtifact: %ld embeddings deleted.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C43FBDA0();

  return v26();
}

void sub_1C4B9CB28()
{
  sub_1C43FE96C();
  v43 = v2;
  v44 = v0;
  v4 = v3;
  v42 = v5;
  v6 = sub_1C4EFC328();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  v13 = sub_1C4EFC308();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C4B9B6CC();
  if (!v1)
  {
    v45 = v15;
    v38 = v19;
    v56 = v13;
    v46 = v8;
    if (v52)
    {
      v50 = v6;
      v40 = 0;
      sub_1C441D670(&v51, v53);
      sub_1C456902C(&qword_1EC0B9450, &unk_1C4F3E870);
      v20 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v49 = *(v45 + 72);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C4F0D130;
      v22 = v54;
      v23 = v55;
      sub_1C4409678(v53, v54);
      v24 = *(v23 + 16);
      v39 = v21;
      v48 = v20;
      v24(v22, v23);
      v25 = *(type metadata accessor for VectorDB.Config(0) + 44);
      v41 = v4;
      v26 = *(v4 + v25);
      if (v26)
      {
        v27 = *(v26 + 16);
        v28 = MEMORY[0x1E69E7CC0];
        if (v27)
        {
          *&v51 = MEMORY[0x1E69E7CC0];
          sub_1C459EF20();
          v28 = v51;
          v47 = *MEMORY[0x1E69DF5B8];
          v29 = v46 + 104;
          v30 = *(v46 + 104);
          v45 += 32;
          v46 = v30;
          v31 = v26 + 40;
          v32 = v38;
          do
          {
            *v12 = 0;
            v12[1] = 0;
            v33 = v29;
            (v46)(v12, v47, v50);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFC2F8();
            *&v51 = v28;
            v34 = *(v28 + 16);
            if (v34 >= *(v28 + 24) >> 1)
            {
              sub_1C459EF20();
              v28 = v51;
            }

            *(v28 + 16) = v34 + 1;
            (*v45)(v28 + v48 + v34 * v49, v32, v56);
            v31 += 16;
            --v27;
            v29 = v33;
          }

          while (v27);
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      *&v51 = v39;
      v36 = sub_1C49D4C44(v28);
      v37 = v51;
      MEMORY[0x1EEE9AC00](v36);
      *(&v38 - 4) = v53;
      *(&v38 - 3) = v37;
      *(&v38 - 2) = v41;
      sub_1C4C82CC8();

      sub_1C440962C(v53);
    }

    else
    {
      sub_1C4420C3C(&v51, &qword_1EC0C41F8, qword_1C4F57F98);
      sub_1C4B9B1DC();
      swift_allocError();
      *v35 = 0xD00000000000002ALL;
      *(v35 + 8) = 0x80000001C4FB4410;
      *(v35 + 16) = 1;
      swift_willThrow();
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B9CF60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C4EFC2D8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C4EF98F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFC2A8();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  (*(v8 + 16))(v10, a1, v7, v12);
  v14 = a2[3];
  v13 = a2[4];
  sub_1C4409678(a2, v14);
  (*(v13 + 88))(v14, v13);
  v15 = a2[3];
  v16 = a2[4];
  sub_1C4409678(a2, v15);
  v17 = *(v16 + 80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17(v15, v16);
  sub_1C4EFC298();
  sub_1C4EFC288();
  swift_allocObject();
  return sub_1C4EFC218();
}

uint64_t sub_1C4B9D198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F636E45657375 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x506564756C636E69 && a2 == 0xEE0064616F6C7961;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69646465626D65 && a2 == 0xEF6E6D756C6F4367;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C4F919C0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D756C6F4379656BLL && a2 == 0xEA0000000000736ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001C4FB43D0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E69646465626D65 && a2 == 0xEF6769666E6F4367;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001ALL && 0x80000001C4FB3F10 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

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

unint64_t sub_1C4B9D438(char a1)
{
  result = 0x646F636E45657375;
  switch(a1)
  {
    case 1:
      result = 0x506564756C636E69;
      break;
    case 2:
    case 6:
      result = 0x6E69646465626D65;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6D756C6F4379656BLL;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B9D544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9D198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9D56C(uint64_t a1)
{
  v2 = sub_1C4B9D918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9D5A8(uint64_t a1)
{
  v2 = sub_1C4B9D918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VectorDB.Config.encode(to:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C4170, &unk_1C4F57A60);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE61C();
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9D918();
  sub_1C4F02BF8();
  sub_1C43FBF44();
  sub_1C4F027A8();
  if (!v1)
  {
    sub_1C43FBF44();
    sub_1C4F027A8();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B9DF70(&qword_1EDDDBC60);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C4B9D96C();
    sub_1C43FBF44();
    sub_1C4F02778();
    type metadata accessor for VectorDB.Config(0);
    type metadata accessor for VectorDB.EmbeddingConfig(0);
    sub_1C441267C();
    sub_1C4B9D9E0(v8);
    sub_1C43FC428();
    sub_1C4F02778();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C43FC428();
    sub_1C4F02778();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1C4B9D918()
{
  result = qword_1EDDF08C8;
  if (!qword_1EDDF08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08C8);
  }

  return result;
}

unint64_t sub_1C4B9D96C()
{
  result = qword_1EDDDBE28;
  if (!qword_1EDDDBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBE28);
  }

  return result;
}

unint64_t sub_1C4B9D9E0(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void VectorDB.Config.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v45 = v26;
  sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - v28;
  sub_1C456902C(&qword_1EC0C4178, &qword_1C4F57A70);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v45 - v31;
  v46 = type metadata accessor for VectorDB.Config(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v36 = v35 - v34;
  v37 = v25[3];
  v48 = v25;
  sub_1C4409678(v25, v37);
  sub_1C4B9D918();
  v47 = v32;
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v48);
  }

  else
  {
    v38 = v45;
    LOBYTE(v49) = 0;
    sub_1C44178E4();
    *v36 = sub_1C4F02688() & 1;
    LOBYTE(v49) = 1;
    *(v36 + 1) = sub_1C4F02688() & 1;
    LOBYTE(v49) = 2;
    sub_1C44178E4();
    *(v36 + 8) = sub_1C4F02678();
    *(v36 + 16) = v39;
    LOBYTE(v49) = 3;
    sub_1C44178E4();
    *(v36 + 24) = sub_1C4F02678();
    *(v36 + 32) = v40;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B9DF70(&qword_1EDDFEA60);
    sub_1C440B46C();
    sub_1C4F026C8();
    *(v36 + 40) = v49;
    sub_1C4B9E008();
    sub_1C4F02658();
    v41 = v50;
    *(v36 + 48) = v49;
    *(v36 + 64) = v41;
    type metadata accessor for VectorDB.EmbeddingConfig(0);
    LOBYTE(v49) = 6;
    sub_1C441267C();
    sub_1C4B9D9E0(v42);
    sub_1C440B46C();
    sub_1C4F02658();
    sub_1C4B9E05C(v29, v36 + *(v46 + 40));
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFEA58);
    sub_1C440B46C();
    sub_1C4F02658();
    v43 = sub_1C4400FEC();
    v44(v43);
    *(v36 + *(v46 + 44)) = v49;
    sub_1C4B9E0CC(v36, v38);
    sub_1C440962C(v48);
    sub_1C4B9E130(v36);
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4B9DF70(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B9D9E0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4B9E008()
{
  result = qword_1EDDF08D0;
  if (!qword_1EDDF08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08D0);
  }

  return result;
}

uint64_t sub_1C4B9E05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B9E0CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B9E130(uint64_t a1)
{
  v2 = type metadata accessor for VectorDB.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B9E18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261506C65646F6DLL && a2 == 0xEF73726574656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4B9E264(char a1)
{
  if (a1)
  {
    return 0x7261506C65646F6DLL;
  }

  else
  {
    return 0x6E69646465626D65;
  }
}

void sub_1C4B9E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C4188, &unk_1C4F57D30);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FE61C();
  sub_1C4409678(v26, v26[3]);
  sub_1C4B9F3E8();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4B9F490(&qword_1EDDFA5E0);
    sub_1C43FC428();
    sub_1C4F02778();
  }

  (*(v29 + 8))(v24, v27);
  sub_1C43FBC80();
}

uint64_t sub_1C4B9E450(void *a1)
{
  sub_1C456902C(&qword_1EC0C41A8, &qword_1C4F57D48);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9F3E8();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4B9F490(&qword_1EDDFCEF0);
    sub_1C4F02658();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C4B9E650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69736E656D6964 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FB43F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4B9E728(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F69736E656D6964;
  }
}

uint64_t sub_1C4B9E768(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C4190, &qword_1C4F57D40);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9F43C();
  sub_1C4F02BF8();
  v11[15] = 0;
  sub_1C4F027D8();
  if (!v1)
  {
    type metadata accessor for VectorDB.EmbeddingConfig(0);
    v11[14] = 1;
    sub_1C4EFC318();
    sub_1C4413914();
    sub_1C4B9D9E0(v9);
    sub_1C4F027E8();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1C4B9E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v47 = v27;
  v49 = sub_1C4EFC318();
  sub_1C43FCDF8();
  v46 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v50 = sub_1C456902C(&qword_1EC0C41B0, &qword_1C4F57D50);
  sub_1C43FCDF8();
  v48 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v43 - v32;
  v34 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v38 = (v37 - v36);
  sub_1C4409678(v26, v26[3]);
  sub_1C4B9F43C();
  sub_1C4F02BC8();
  if (!v23)
  {
    v45 = v34;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    *v38 = sub_1C4F026B8();
    sub_1C4413914();
    sub_1C4B9D9E0(v42);
    v44 = v24;
    sub_1C4F026C8();
    (*(v39 + 8))(v33, v41);
    (*(v46 + 32))(v38 + *(v45 + 20), v44, v40);
    sub_1C4B9F4F8(v38, v47);
  }

  sub_1C440962C(v26);
  sub_1C43FBC80();
}

_BYTE *storeEnumTagSinglePayload for VectorDB(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4B9EC90(uint64_t a1)
{
  result = type metadata accessor for VectorDB.Config(319);
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

void sub_1C4B9ED38(uint64_t a1)
{
  sub_1C4B9EEB8(319, &qword_1EDDFEA68, type metadata accessor for ViewDatabaseArtifact.Property, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C4B9EE68();
    if (v2 <= 0x3F)
    {
      sub_1C4B9EEB8(319, qword_1EDDFCFC0, type metadata accessor for VectorDB.EmbeddingConfig, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C45C2BC8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B9EE68()
{
  if (!qword_1EDDFEAF8[0])
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDFEAF8);
    }
  }
}

void sub_1C4B9EEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C4B9EF44(uint64_t a1)
{
  result = sub_1C4EFC318();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorDB.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B9F0B0()
{
  result = qword_1EC0C4180;
  if (!qword_1EC0C4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4180);
  }

  return result;
}

uint64_t sub_1C4B9F124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9E18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9F14C(uint64_t a1)
{
  v2 = sub_1C4B9F3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9F188(uint64_t a1)
{
  v2 = sub_1C4B9F3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B9F1C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4B9E450(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C4B9F214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B9F268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9E650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9F290(uint64_t a1)
{
  v2 = sub_1C4B9F43C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9F2CC(uint64_t a1)
{
  v2 = sub_1C4B9F43C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4B9F33C()
{
  result = qword_1EDDF08B8;
  if (!qword_1EDDF08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08B8);
  }

  return result;
}

unint64_t sub_1C4B9F394()
{
  result = qword_1EDDF08C0;
  if (!qword_1EDDF08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08C0);
  }

  return result;
}

unint64_t sub_1C4B9F3E8()
{
  result = qword_1EDDF08E8[0];
  if (!qword_1EDDF08E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF08E8);
  }

  return result;
}

unint64_t sub_1C4B9F43C()
{
  result = qword_1EC0C4198;
  if (!qword_1EC0C4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4198);
  }

  return result;
}

unint64_t sub_1C4B9F490(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C4B9F4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1C4B9F56C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B9F64C()
{
  result = qword_1EC0C41D8;
  if (!qword_1EC0C41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41D8);
  }

  return result;
}

unint64_t sub_1C4B9F6A4()
{
  result = qword_1EC0C41E0;
  if (!qword_1EC0C41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41E0);
  }

  return result;
}

unint64_t sub_1C4B9F6FC()
{
  result = qword_1EC0C41E8;
  if (!qword_1EC0C41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41E8);
  }

  return result;
}

unint64_t sub_1C4B9F754()
{
  result = qword_1EC0C41F0;
  if (!qword_1EC0C41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C41F0);
  }

  return result;
}

unint64_t sub_1C4B9F7AC()
{
  result = qword_1EDDF08D8;
  if (!qword_1EDDF08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08D8);
  }

  return result;
}

unint64_t sub_1C4B9F804()
{
  result = qword_1EDDF08E0;
  if (!qword_1EDDF08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF08E0);
  }

  return result;
}

uint64_t sub_1C4B9F878(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C4B9F894(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C4B9F8D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FB4480 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4B9F9A8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_1C4B9F9E8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_1C456902C(&qword_1EC0C4208, &qword_1C4F58130);
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9FE34();
  sub_1C4F02BF8();
  v17 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v16 = v14 & 1;
    v15 = 1;
    sub_1C4B9FEDC();
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C4B9FB6C(void *a1)
{
  sub_1C456902C(&qword_1EC0C4200, &qword_1C4F58128);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B9FE34();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C4B9FE88();
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C4B9FD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B9F8D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B9FD68(uint64_t a1)
{
  v2 = sub_1C4B9FE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B9FDA4(uint64_t a1)
{
  v2 = sub_1C4B9FE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B9FDE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4B9FB6C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1C4B9FE34()
{
  result = qword_1EDDEAEF8[0];
  if (!qword_1EDDEAEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDEAEF8);
  }

  return result;
}

unint64_t sub_1C4B9FE88()
{
  result = qword_1EDDE8378;
  if (!qword_1EDDE8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8378);
  }

  return result;
}

unint64_t sub_1C4B9FEDC()
{
  result = qword_1EC0C4210;
  if (!qword_1EC0C4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4210);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorSearch.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4BA0020()
{
  result = qword_1EC0C4218;
  if (!qword_1EC0C4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4218);
  }

  return result;
}

unint64_t sub_1C4BA0078()
{
  result = qword_1EDDEAEE8;
  if (!qword_1EDDEAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEE8);
  }

  return result;
}

unint64_t sub_1C4BA00D0()
{
  result = qword_1EDDEAEF0;
  if (!qword_1EDDEAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEF0);
  }

  return result;
}

void sub_1C4BA0124(void *a1)
{
  v2 = *(sub_1C4F001E8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B090();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C4BA4B30(v6);
  *a1 = v3;
}

uint64_t sub_1C4BA01F4()
{
  sub_1C43FEAE0();
  if (v0)
  {
    sub_1C456902C(&qword_1EC0BAB68, &qword_1C4F58C20);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    result = sub_1C4407D24(v8, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA02EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1C43FEAE0();
  if (v4)
  {
    sub_1C456902C(v7, v8);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  v9 = a4();
  if (v5)
  {
    result = sub_1C4407D24(v9, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {

    return v11;
  }

  return result;
}

uint64_t sub_1C4BA03C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1C456902C(a2, a3);
    v6 = sub_1C4404D2C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

uint64_t sub_1C4BA044C()
{
  sub_1C43FEAE0();
  if (v0)
  {
    sub_1C456902C(&qword_1EC0BAB60, &unk_1C4F16C80);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    result = sub_1C4407D24(v8, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA056C()
{
  sub_1C43FEAE0();
  if (v0)
  {
    sub_1C456902C(&qword_1EC0BAB08, &qword_1C4F16C18);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    result = sub_1C4407D24(v8, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA0614()
{
  sub_1C43FEAE0();
  if (v0)
  {
    sub_1C456902C(&qword_1EC0BAB10, &qword_1C4F16C20);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    result = sub_1C4407D24(v8, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

uint64_t sub_1C4BA06BC()
{
  sub_1C43FEAE0();
  if (v0)
  {
    sub_1C456902C(&qword_1EC0BAB50, &unk_1C4F16C70);
    sub_1C4404D2C();
  }

  sub_1C44061B0();
  sub_1C442D4B8();
  sub_1C4BA7C88(v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    result = sub_1C4407D24(v8, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

void VersionInfo.AllInfo.fetchAll()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v140 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v121 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v139 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = *(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v116 - v27;
  v137 = sub_1C456902C(&qword_1EC0BA810, &qword_1C4F14738);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v146 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v136 = &v116 - v33;
  v34 = *(v20 + 8);
  v35 = *(v20 + 16);
  v36 = *(v20 + 24);
  v37 = *(v20 + 32);
  v38 = *(v20 + 40);
  v39 = *(v20 + 48);
  v123 = *(v20 + 56);
  v40 = *(v20 + 72);
  v119 = *(v20 + 64);
  v124 = v40;
  v41 = *(v20 + 88);
  v118 = *(v20 + 80);
  v117 = v41;
  v120 = *(v20 + 96);
  v125 = *(v20 + 112);
  v42 = MEMORY[0x1E69E7CC8];
  if (v34)
  {
    v43 = *v20;
    v150 = MEMORY[0x1E69E6158];
    v147 = v43;
    v148 = v34;
    sub_1C443548C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v152 = v42;
    sub_1C43FC964();
    sub_1C46601FC();
    v44 = v152;
    if (!v36)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v44 = MEMORY[0x1E69E7CC8];
  if (v36)
  {
LABEL_3:
    v150 = MEMORY[0x1E69E6158];
    v147 = v35;
    v148 = v36;
    sub_1C443548C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C441EFC4();
    sub_1C46601FC();
    v44 = v152;
  }

LABEL_4:
  v45 = v28;
  if (v38)
  {
    v150 = MEMORY[0x1E69E6158];
    v147 = v37;
    v148 = v38;
    sub_1C443548C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C441EFC4();
    sub_1C43FC964();
    sub_1C46601FC();
    v44 = v152;
  }

  v122 = v44;
  v46 = *(v39 + 16);
  if (v46)
  {
    v147 = MEMORY[0x1E69E7CC0];
    v47 = sub_1C440476C();
    sub_1C459DBF8(v47, v48, v49);
    v145 = v147;
    v50 = sub_1C4702074(v39);
    v51 = v39 + 64;
    v129 = 0x80000001C4F879A0;
    v128 = 0x80000001C4F87980;
    sub_1C43FBDF0();
    v127 = v52;
    sub_1C43FBDF0();
    v126 = v56;
    v131 = v53;
    v130 = v39 + 72;
    v133 = v28;
    v135 = v39;
    v132 = v46;
    v134 = v39 + 64;
    while ((v50 & 0x8000000000000000) == 0 && v50 < 1 << *(v39 + 32))
    {
      v57 = v50 >> 6;
      if ((*(v51 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
      {
        goto LABEL_53;
      }

      if (*(v39 + 36) != v53)
      {
        goto LABEL_54;
      }

      v143 = v55;
      v144 = v53;
      v141 = v54;
      v58 = v45;
      v59 = v137;
      v60 = *(v137 + 48);
      v142 = v50 & 0x3F;
      v61 = *(v39 + 56);
      v62 = v136;
      *v136 = *(*(v39 + 48) + v50);
      sub_1C446C964(v61 + *(v138 + 72) * v50, &v62[v60], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v63 = v146;
      *v146 = *v62;
      v64 = *(v59 + 48);
      sub_1C45B69E4(&v62[v60], &v63[v64]);
      v65 = 0xE600000000000000;
      v66 = 0x6C6F6F547069;
      switch(*v63)
      {
        case 1:
          v66 = 0xD000000000000018;
          v68 = &a9;
          goto LABEL_17;
        case 2:
          sub_1C44053E4();
          v66 = v70 + 5;
          v68 = &a10;
          goto LABEL_17;
        case 3:
          sub_1C44053E4();
          v66 = v69 + 3;
          v68 = &a11;
          goto LABEL_17;
        case 4:
          goto LABEL_18;
        case 5:
          v65 = 0xE300000000000000;
          v66 = 7368801;
          goto LABEL_18;
        default:
          sub_1C44053E4();
          v66 = v67 - 4;
          v68 = &v153;
LABEL_17:
          v65 = *(v68 - 32);
LABEL_18:
          sub_1C446C964(&v146[v64], v58, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v71 = sub_1C4EF9CD8();
          if (sub_1C44157D4(v58, 1, v71) == 1)
          {
            sub_1C4420C3C(v58, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v72 = 0;
            v73 = 0xE000000000000000;
          }

          else
          {
            v72 = sub_1C4EF9B18();
            v73 = v74;
            (*(*(v71 - 8) + 8))(v58, v71);
          }

          sub_1C4420C3C(v146, &qword_1EC0BA810, &qword_1C4F14738);
          v75 = v145;
          v147 = v145;
          v77 = *(v145 + 16);
          v76 = *(v145 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_1C459DBF8(v76 > 1, v77 + 1, 1);
            v75 = v147;
          }

          *(v75 + 16) = v77 + 1;
          v78 = (v75 + 32 * v77);
          v78[4] = v66;
          v78[5] = v65;
          v78[6] = v72;
          v78[7] = v73;
          v39 = v135;
          v79 = 1 << *(v135 + 32);
          if (v50 >= v79)
          {
            goto LABEL_55;
          }

          v51 = v134;
          v80 = *(v134 + 8 * v57);
          if ((v80 & (1 << v50)) == 0)
          {
            goto LABEL_56;
          }

          v145 = v75;
          if (*(v135 + 36) != v144)
          {
            goto LABEL_57;
          }

          v81 = v80 & (-2 << v142);
          if (v81)
          {
            v79 = __clz(__rbit64(v81)) | v50 & 0x7FFFFFFFFFFFFFC0;
            v45 = v133;
            goto LABEL_33;
          }

          v82 = v57 << 6;
          v83 = v57 + 1;
          v84 = (v130 + 8 * v57);
          v45 = v133;
          break;
      }

      while (v83 < (v79 + 63) >> 6)
      {
        v86 = *v84++;
        v85 = v86;
        v82 += 64;
        ++v83;
        if (v86)
        {
          sub_1C440951C(v50, v144, v141 & 1);
          v79 = __clz(__rbit64(v85)) + v82;
          goto LABEL_33;
        }
      }

      sub_1C440951C(v50, v144, v141 & 1);
LABEL_33:
      v54 = 0;
      v55 = v143 + 1;
      v50 = v79;
      v53 = v131;
      if (v143 + 1 == v132)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
LABEL_36:
    sub_1C44178F8();
    v91 = sub_1C4BA02EC(v87, v88, v89, v90);
    v150 = sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    v147 = v91;
    sub_1C443548C();
    v92 = v122;
    swift_isUniquelyReferenced_nonNull_native();
    v152 = v92;
    sub_1C44053E4();
    sub_1C46601FC();
    v93 = v152;
    v147 = 0;
    v148 = 0xE000000000000000;
    if (v123)
    {
      v94 = 1702195828;
    }

    else
    {
      v94 = 0x65736C6166;
    }

    if (v123)
    {
      v95 = 0xE400000000000000;
    }

    else
    {
      v95 = 0xE500000000000000;
    }

    MEMORY[0x1C6940010](v94, v95);

    v150 = MEMORY[0x1E69E6158];
    sub_1C443548C();
    swift_isUniquelyReferenced_nonNull_native();
    v152 = v93;
    sub_1C43FC964();
    sub_1C46601FC();
    v96 = v152;
    if (v124)
    {
      v147 = v119;
      v148 = v124;
      v149 = v118;
      v150 = v117;
      v151 = v120;
      VersionInfo.GitInfo.fetchAll()();
      v98 = v97;
      v150 = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
      v147 = v98;
      sub_1C443548C();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C441EFC4();
      sub_1C43FC964();
      sub_1C46601FC();
      v96 = v152;
    }

    v99 = v125;
    v100 = *(v125 + 16);
    v101 = MEMORY[0x1E69E7CC0];
    if (v100)
    {
      v144 = v96;
      v147 = MEMORY[0x1E69E7CC0];
      v102 = sub_1C440476C();
      sub_1C44CD9C0(v102, v103, v104);
      v101 = v147;
      v105 = *(v121 + 16);
      v106 = v99 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v145 = *(v121 + 72);
      v146 = v105;
      v107 = (v121 + 8);
      do
      {
        v108 = v139;
        v109 = v140;
        (v146)(v139, v106, v140);
        v110 = sub_1C4F001C8();
        v112 = v111;
        (*v107)(v108, v109);
        v147 = v101;
        v114 = *(v101 + 16);
        v113 = *(v101 + 24);
        if (v114 >= v113 >> 1)
        {
          sub_1C44CD9C0(v113 > 1, v114 + 1, 1);
          v101 = v147;
        }

        *(v101 + 16) = v114 + 1;
        v115 = v101 + 16 * v114;
        *(v115 + 32) = v110;
        *(v115 + 40) = v112;
        v106 += v145;
        --v100;
      }

      while (v100);
    }

    v150 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v147 = v101;
    sub_1C443548C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C441EFC4();
    sub_1C43FC964();
    sub_1C46601FC();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4BA1184(uint64_t a1, uint64_t a2)
{
  sub_1C44867F4();
  v2 = sub_1C4F01E88();
  v3 = sub_1C4F01108();
  v4 = [v2 objectForInfoDictionaryKey_];

  if (v4)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4420C3C(v9, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4BA1290@<X0>(uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1C4F01108();
  *&v17 = 0;
  v6 = [v4 attributesOfItemAtPath:v5 error:&v17];

  v7 = v17;
  if (!v6)
  {
    v14 = v17;
    v15 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_6;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1C4BA91B0(&unk_1EDDF03F0, type metadata accessor for FileAttributeKey, &unk_1C4F0C734);
  v8 = sub_1C4F00ED8();
  v9 = v7;

  if (!v8)
  {
LABEL_6:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_7;
  }

  sub_1C465CB00();

  if (!*(&v18 + 1))
  {
LABEL_7:
    sub_1C4420C3C(&v17, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v13 = sub_1C4EF9CD8();
    v12 = a3;
    v11 = 1;
    return sub_1C440BAA8(v12, v11, 1, v13);
  }

  v10 = sub_1C4EF9CD8();
  v11 = swift_dynamicCast() ^ 1;
  v12 = a3;
  v13 = v10;
  return sub_1C440BAA8(v12, v11, 1, v13);
}

IntelligencePlatformCore::VersionInfo::Component_optional __swiftcall VersionInfo.Component.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C4F025D8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VersionInfo.Component.rawValue.getter()
{
  result = 0x6C6F6F547069;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      return result;
    case 5:
      result = 7368801;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_1C4BA161C@<X0>(unint64_t *a1@<X8>)
{
  result = VersionInfo.Component.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4BA16F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4BA9108();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C4BA1748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C4BA9108();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t static VersionInfo.modificationDate(for:)@<X0>(uint64_t a2@<X8>)
{
  sub_1C4BA1290(a2);
}

void static VersionInfo.modificationDates.getter()
{
  sub_1C43FBD3C();
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v24 - v2;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4410A24();
  sub_1C4BA7F70();
  v12 = sub_1C4F00F28();
  v13 = 0;
  v30 = (v6 + 32);
  v27 = v6;
  v28 = (v6 + 16);
  v24[5] = v6 + 40;
  v25 = (v6 + 8);
  v24[3] = "encePlatformLibrary";
  v24[4] = "igencePlatformInternals";
  v24[1] = "m.app/Intelligence Platform";
  v24[2] = "/usr/local/bin/iptool";
  v24[0] = "bundleShortVersionString";
  v26 = v3;
  while (1)
  {
    v31 = byte_1F43D9C00[v13 + 32];
    sub_1C4BA1290(v3);

    if (sub_1C44157D4(v3, 1, v4) == 1)
    {
      sub_1C4420C3C(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
      goto LABEL_13;
    }

    v29 = *v30;
    v29(v0, v3, v4);
    v14 = v10;
    (*v28)(v10, v0, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v32 = v12;
    v15 = sub_1C457B5A0(v31);
    if (__OFADD__(v12[2], (v16 & 1) == 0))
    {
      break;
    }

    v17 = v15;
    v18 = v16;
    sub_1C456902C(&qword_1EC0C4220, &qword_1C4F58258);
    if (sub_1C4F02458())
    {
      v19 = sub_1C457B5A0(v31);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_17;
      }

      v17 = v19;
    }

    v12 = v32;
    if (v18)
    {
      v10 = v14;
      (*(v27 + 40))(v32[7] + *(v27 + 72) * v17, v14, v4);
    }

    else
    {
      v32[(v17 >> 6) + 8] |= 1 << v17;
      *(v12[6] + v17) = v31;
      v10 = v14;
      v29(v12[7] + *(v27 + 72) * v17, v14, v4);
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_16;
      }

      v12[2] = v23;
    }

    (*v25)(v0, v4);
    v3 = v26;
LABEL_13:
    if (++v13 == 6)
    {
      sub_1C43FE9F0();
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  sub_1C4F029F8();
  __break(1u);
}

uint64_t static VersionInfo.GitInfo.WorkingTreeStatus.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4BA1DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61656C63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974726964 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4BA1EA0(char a1)
{
  if (a1)
  {
    return 0x7974726964;
  }

  else
  {
    return 0x6E61656C63;
  }
}

uint64_t sub_1C4BA1EC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000023 && 0x80000001C4FB46F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4BA1F64(uint64_t a1)
{
  v2 = sub_1C4BA806C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA1FA0(uint64_t a1)
{
  v2 = sub_1C4BA806C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BA1FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA1DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BA200C(uint64_t a1)
{
  v2 = sub_1C4BA7FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA2048(uint64_t a1)
{
  v2 = sub_1C4BA7FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BA2088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA1EC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4BA20B4(uint64_t a1)
{
  v2 = sub_1C4BA8018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA20F0(uint64_t a1)
{
  v2 = sub_1C4BA8018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionInfo.GitInfo.WorkingTreeStatus.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v52 = v24;
  v26 = v25;
  sub_1C456902C(&qword_1EC0C4228, &qword_1C4F58260);
  sub_1C43FCDF8();
  v50 = v28;
  v51 = v27;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  sub_1C456902C(&qword_1EC0C4230, &qword_1C4F58268);
  sub_1C43FCDF8();
  v47 = v33;
  v48 = v32;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  v46 = &v45 - v35;
  v36 = sub_1C456902C(&qword_1EC0C4238, &qword_1C4F58270);
  sub_1C43FCDF8();
  v38 = v37;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v45 - v40;
  v42 = v23[1];
  v49 = *v23;
  sub_1C4409678(v26, v26[3]);
  sub_1C4BA7FC4();
  sub_1C4F02BF8();
  if (v42)
  {
    sub_1C4BA8018();
    sub_1C4F02718();
    v43 = v51;
    sub_1C4F02798();
    (*(v50 + 8))(v31, v43);
  }

  else
  {
    sub_1C4BA806C();
    v44 = v46;
    sub_1C4F02718();
    (*(v47 + 8))(v44, v48);
  }

  (*(v38 + 8))(v41, v36);
  sub_1C43FBC80();
}

void VersionInfo.GitInfo.WorkingTreeStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  a23 = v25;
  a24 = v26;
  v78 = v24;
  v28 = v27;
  v74 = v29;
  v77 = sub_1C456902C(&qword_1EC0C4258, &qword_1C4F58278);
  sub_1C43FCDF8();
  v75 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v69 - v32;
  v34 = sub_1C456902C(&qword_1EC0C4260, &qword_1C4F58280);
  sub_1C43FCDF8();
  v73 = v35;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v69 - v37;
  sub_1C456902C(&qword_1EC0C4268, &unk_1C4F58288);
  sub_1C43FCDF8();
  v76 = v39;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C4409678(v28, v28[3]);
  sub_1C4BA7FC4();
  v41 = v78;
  sub_1C4F02BC8();
  if (v41)
  {
    goto LABEL_8;
  }

  v70 = v34;
  v71 = v38;
  v78 = v33;
  v42 = v77;
  sub_1C4F026E8();
  v46 = sub_1C4570934();
  v72 = v28;
  if (v44 == v45 >> 1)
  {
LABEL_7:
    v54 = sub_1C4F022E8();
    swift_allocError();
    v56 = v55;
    sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90);
    *v56 = &type metadata for VersionInfo.GitInfo.WorkingTreeStatus;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v57 = sub_1C440E2DC();
    v58(v57);
    v28 = v72;
LABEL_8:
    v59 = v28;
LABEL_9:
    sub_1C440962C(v59);
    sub_1C43FBC80();
    return;
  }

  if (v44 < (v45 >> 1))
  {
    a10 = *(v43 + v44);
    v47 = sub_1C4570928(v44 + 1, v45 >> 1, v46, v43);
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    v52 = v75;
    if (v49 == v51 >> 1)
    {
      if (a10)
      {
        a14 = 1;
        sub_1C4BA8018();
        v53 = v78;
        sub_1C4414FB4(&type metadata for VersionInfo.GitInfo.WorkingTreeStatus.DirtyCodingKeys, &a14);
        v73 = v47;
        v63 = sub_1C4F02678();
        v65 = v64;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v53, v42);
        v66 = sub_1C440E2DC();
        v67(v66);
      }

      else
      {
        a13 = 0;
        sub_1C4BA806C();
        v60 = v71;
        sub_1C4414FB4(&type metadata for VersionInfo.GitInfo.WorkingTreeStatus.CleanCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v73 + 8))(v60, v70);
        v61 = sub_1C440E2DC();
        v62(v61);
        v63 = 0;
        v65 = 0;
      }

      v59 = v72;
      v68 = v74;
      *v74 = v63;
      v68[1] = v65;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t VersionInfo.GitInfo.workingTreeStatus.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

BOOL VersionInfo.GitInfo.isClean.getter()
{
  v1 = *(v0 + 40);

  if (!v1)
  {
  }

  return v1 == 0;
}

void VersionInfo.GitInfo.fetchAll()()
{
  sub_1C43FBD3C();
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = MEMORY[0x1E69E6158];
  if (v5)
  {
    v7 = v0[4];
    sub_1C456902C(&qword_1EC0B9260, &qword_1C4F0ED88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0x7974726964;
    *(inited + 40) = 0xE500000000000000;
    sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
    *(swift_initStackObject() + 16) = xmmword_1C4F0D130;
    sub_1C43FBDF0();
    v9[4] = 0xD000000000000023;
    v9[5] = v10;
    v9[6] = v7;
    v9[7] = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(inited + 48) = sub_1C4F00F28();
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    v11 = sub_1C4F00F28();
    v12 = sub_1C456902C(&qword_1EC0BDD98, &qword_1C4F32040);
  }

  else
  {
    v18[1] = 0xE500000000000000;
    v11 = 0x6E61656C63;
    v12 = MEMORY[0x1E69E6158];
  }

  v18[3] = v12;
  v18[0] = v11;
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1C4F0D480;
  *(v13 + 32) = 0x614874696D6D6F63;
  *(v13 + 40) = 0xEA00000000006873;
  *(v13 + 48) = v2;
  *(v13 + 56) = v1;
  *(v13 + 72) = v6;
  *(v13 + 80) = 0x68636E617262;
  *(v13 + 88) = 0xE600000000000000;
  *(v13 + 96) = v4;
  *(v13 + 104) = v3;
  sub_1C43FBDF0();
  v14[15] = v6;
  v14[16] = 0xD000000000000011;
  v14[17] = v15;
  sub_1C442B870(v18, v13 + 144);
  *(v13 + 176) = 0x6E61656C437369;
  *(v13 + 184) = 0xE700000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v5)
  {
    v16 = 0xE500000000000000;
    v17 = 0x65736C6166;
  }

  else
  {

    v16 = 0xE400000000000000;
    v17 = 1702195828;
  }

  MEMORY[0x1C6940010](v17, v16);

  *(v13 + 216) = v6;
  *(v13 + 192) = 0;
  *(v13 + 200) = 0xE000000000000000;
  sub_1C4F00F28();
  sub_1C440962C(v18);
  sub_1C43FE9F0();
}

uint64_t sub_1C4BA2C18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614874696D6D6F63 && a2 == 0xEA00000000006873;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x68636E617262 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001C4FB4720 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C4BA2D34(char a1)
{
  if (!a1)
  {
    return 0x614874696D6D6F63;
  }

  if (a1 == 1)
  {
    return 0x68636E617262;
  }

  return 0xD000000000000011;
}

uint64_t sub_1C4BA2DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA2C18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BA2DD8(uint64_t a1)
{
  v2 = sub_1C4BA80C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA2E14(uint64_t a1)
{
  v2 = sub_1C4BA80C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionInfo.GitInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v43 = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C4270, &qword_1C4F58298);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v38 - v31;
  v33 = v23[2];
  v41 = v23[3];
  v42 = v33;
  v34 = v23[4];
  v39 = v23[5];
  v40 = v34;
  sub_1C4409678(v26, v26[3]);
  sub_1C4BA80C0();
  sub_1C4F02BF8();
  LOBYTE(v44) = 0;
  v35 = v43;
  sub_1C4F02798();
  if (!v35)
  {
    v36 = v39;
    v37 = v40;
    LOBYTE(v44) = 1;
    sub_1C4F02798();
    v44 = v37;
    v45 = v36;
    sub_1C4BA8114();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F027E8();
  }

  (*(v29 + 8))(v32, v27);
  sub_1C43FBC80();
}

void VersionInfo.GitInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v27 = v26;
  sub_1C456902C(&qword_1EC0C4288, &qword_1C4F582A0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4409678(v25, v25[3]);
  sub_1C4BA80C0();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v25);
  }

  else
  {
    v29 = sub_1C4409E6C();
    v36 = v30;
    LOBYTE(v37) = 1;
    v34 = sub_1C4409E6C();
    v35 = v31;
    sub_1C4BA8168();
    sub_1C4F026C8();
    v32 = sub_1C43FBF04();
    v33(v32);
    *v27 = v29;
    v27[1] = v36;
    v27[2] = v34;
    v27[3] = v35;
    v27[4] = v37;
    v27[5] = v38;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v25);
  }

  sub_1C43FBC80();
}

void static VersionInfo.gitInfo.getter(uint64_t a2@<X8>)
{
  sub_1C4BA32C0(v7);
  v3 = *(&v7[0] + 1);
  if (*(&v7[0] + 1) == 1)
  {
    v4 = 0;
    v3 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    v5 = v7[1];
    v6 = v7[2];
    v4 = *&v7[0];
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
}

void sub_1C4BA32C0(_OWORD *a1@<X8>)
{
  v3 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4410A24();
  sub_1C44867F4();
  v11 = sub_1C4F01E88();
  v12 = sub_1C4486838(0xD000000000000014, 0x80000001C4FB4760, 0x7473696C70, 0xE500000000000000, v11);

  if (v12)
  {
    sub_1C4EF98C8();

    (*(v5 + 32))(v1, v9, v3);
    v17 = sub_1C4EF9938();
    v19 = v18;
    v20 = objc_autoreleasePoolPush();
    sub_1C4BA46D4(a1);
    objc_autoreleasePoolPop(v20);
    sub_1C4434000(v17, v19);
    (*(v5 + 8))(v1, v3);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "VersionInfo+AutoFill.plist not found!", v16, 2u);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    *a1 = xmmword_1C4F0D7C0;
    a1[1] = 0u;
    a1[2] = 0u;
  }
}

void static VersionInfo.featureFlags.getter()
{
  sub_1C43FBD3C();
  v1 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v19 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4410A24();
  v8 = sub_1C4F001B8();
  v9 = 0;
  v10 = *(v8 + 16);
  v18 = (v3 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v10 == v9)
    {

      v22 = v20;

      sub_1C4BA0124(&v22);

      sub_1C43FE9F0();
      return;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v12 = *(v3 + 72);
    (*(v3 + 16))(v0, v8 + v11 + v12 * v9, v1);
    if (sub_1C4F001D8())
    {
      v17 = *v18;
      (*v18)(v19, v0, v1);
      v13 = v20;
      v22 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C459E780();
        v13 = v22;
      }

      v14 = *(v13 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v13 + 24) >> 1)
      {
        v21 = v14 + 1;
        v16 = *(v13 + 16);
        sub_1C459E780();
        v15 = v21;
        v14 = v16;
        v13 = v22;
      }

      ++v9;
      *(v13 + 16) = v15;
      v20 = v13;
      v17(v13 + v11 + v14 * v12, v19, v1);
    }

    else
    {
      (*(v3 + 8))(v0, v1);
      ++v9;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1C4BA3844(uint64_t a1)
{
  v1 = sub_1C4F001C8();
  v3 = v2;
  if (v1 == sub_1C4F001C8() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1C4F02938();
  }

  return v6 & 1;
}

uint64_t VersionInfo.AllInfo.gitInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1C4BA81BC(v2, v3);
}

void VersionInfo.AllInfo.init()(uint64_t a1@<X8>)
{
  v2 = sub_1C441CE34();
  *a1 = sub_1C4BA1184(v2, v3);
  *(a1 + 8) = v4;
  *(a1 + 16) = sub_1C4BA1184(0xD00000000000001ALL, 0x80000001C4FA9F50);
  *(a1 + 24) = v5;
  v6 = sub_1C442BFBC();
  *(a1 + 32) = sub_1C4BA1184(v6, v7);
  *(a1 + 40) = v8;
  static VersionInfo.modificationDates.getter();
  sub_1C465DFB8(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28, v29, v30, v31, vars0, vars8);
  v18 = v17;

  *(a1 + 48) = v18;
  *(a1 + 56) = 0;
  sub_1C4BA32C0(&v24);
  v19 = v25;
  if (v25 == 1)
  {
    v20 = 0;
    v21 = 0;
    v19 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    v20 = v24;
    v22 = v26;
    v21 = v27;
  }

  *(a1 + 64) = v20;
  *(a1 + 72) = v19;
  *(a1 + 88) = v22;
  *(a1 + 104) = v21;
  static VersionInfo.featureFlags.getter();
  *(a1 + 112) = v23;
}

uint64_t sub_1C4BA3A6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C4FB44C0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x796C646E65697266 && a2 == 0xEC000000656D614ELL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C4FB44A0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x67756265447369 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F666E49746967 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

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

unint64_t sub_1C4BA3CB8(char a1)
{
  result = 0x6556656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x796C646E65697266;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x67756265447369;
      break;
    case 5:
      result = 0x6F666E49746967;
      break;
    case 6:
      result = 0x4665727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4BA3DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4BA3E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA3A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BA3E28(uint64_t a1)
{
  v2 = sub_1C4BA820C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA3E64(uint64_t a1)
{
  v2 = sub_1C4BA820C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionInfo.AllInfo.encode(to:)()
{
  sub_1C43FE96C();
  v33 = v1;
  v3 = v2;
  sub_1C456902C(&qword_1EC0C4298, &qword_1C4F582A8);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = v0[2];
  v31 = v0[3];
  v32 = v9;
  v10 = v0[4];
  v29 = v0[5];
  v30 = v10;
  v11 = v0[6];
  v12 = v0[9];
  v22 = v0[8];
  v23 = v12;
  v13 = v0[10];
  v27 = v0[11];
  v28 = v11;
  v14 = v0[13];
  v26 = v0[12];
  v24 = v13;
  v25 = v14;
  v15 = v0[14];
  v16 = v3[3];
  v17 = v3;
  v19 = v18;
  sub_1C4409678(v17, v16);
  sub_1C4BA820C();
  sub_1C4F02BF8();
  LOBYTE(v34) = 0;
  v20 = v33;
  sub_1C4F02738();
  if (!v20)
  {
    v21 = v28;
    LOBYTE(v34) = 1;
    sub_1C440FCC4();
    sub_1C4F02738();
    LOBYTE(v34) = 2;
    sub_1C440FCC4();
    sub_1C4F02738();
    v34 = v21;
    sub_1C456902C(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA8260();
    sub_1C4433878();
    sub_1C440FCC4();
    sub_1C4F027E8();
    LOBYTE(v34) = 4;
    sub_1C440FCC4();
    sub_1C4F027A8();
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v27;
    v38 = v26;
    v39 = v25;
    sub_1C4BA81BC(v22, v23);
    sub_1C4BA8378();
    sub_1C4433878();
    sub_1C440FCC4();
    sub_1C4F02778();
    sub_1C4BA83CC(v34, v35);
    v34 = v15;
    sub_1C456902C(&qword_1EC0C42C8, &qword_1C4F582B8);
    sub_1C4BA8588(&qword_1EC0C42D0, &qword_1EDDFA170, MEMORY[0x1E69A9D88]);
    sub_1C4433878();
    sub_1C440FCC4();
    sub_1C4F027E8();
  }

  (*(v5 + 8))(v8, v19);
  sub_1C43FBC80();
}

void VersionInfo.AllInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v12 = v11;
  v14 = v13;
  sub_1C456902C(&qword_1EC0C42D8, &qword_1C4F582C0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4409678(v12, v12[3]);
  sub_1C4BA820C();
  sub_1C4F02BC8();
  if (v10)
  {
    sub_1C440962C(v12);
  }

  else
  {
    sub_1C440389C();
    v27 = sub_1C4F02618();
    v31 = v16;
    sub_1C440389C();
    v17 = sub_1C4F02618();
    v30 = v18;
    LOBYTE(v36) = 2;
    sub_1C440389C();
    v26 = sub_1C4F02618();
    v28 = v19;
    sub_1C456902C(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA841C();
    sub_1C440389C();
    sub_1C4F026C8();
    v25 = v36;
    LOBYTE(v36) = 4;
    sub_1C440389C();
    v24 = sub_1C4F02688();
    LOBYTE(v35[0]) = 5;
    sub_1C4BA8534();
    sub_1C440389C();
    sub_1C4F02658();
    v22 = v36;
    v23 = v37;
    v29 = v38;
    v33 = v40;
    v34 = v39;
    v32 = v41;
    sub_1C456902C(&qword_1EC0C42C8, &qword_1C4F582B8);
    v51 = 6;
    sub_1C4BA8588(&qword_1EC0C42F8, &qword_1EDDFF9A8, MEMORY[0x1E69A9D98]);
    sub_1C440389C();
    sub_1C4F026C8();
    v20 = sub_1C4412694();
    v21(v20);
    v35[0] = v27;
    v35[1] = v31;
    v35[2] = v17;
    v35[3] = v30;
    v35[4] = v26;
    v35[5] = v28;
    v35[6] = v25;
    LOBYTE(v35[7]) = v24 & 1;
    v35[8] = v22;
    v35[9] = v23;
    v35[10] = v29;
    v35[11] = v34;
    v35[12] = v33;
    v35[13] = v32;
    v35[14] = a10;
    memcpy(v14, v35, 0x78uLL);
    sub_1C4BA8614(v35, &v36);
    sub_1C440962C(v12);
    v36 = v27;
    v37 = v31;
    v38 = v17;
    v39 = v30;
    v40 = v26;
    v41 = v28;
    v42 = v25;
    v43 = v24 & 1;
    v44 = v22;
    v45 = v23;
    v46 = v29;
    v47 = v34;
    v48 = v33;
    v49 = v32;
    v50 = a10;
    sub_1C494BFA0(&v36);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BA46D4@<X0>(_OWORD *a3@<X8>)
{
  sub_1C4EF96B8();
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C4BA915C();
  sub_1C4EF9698();
  if (v3)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    *a3 = xmmword_1C4F0D7C0;
    a3[1] = 0u;
    a3[2] = 0u;
  }

  else
  {

    *a3 = v10;
    a3[1] = v11;
    a3[2] = v12;
  }

  return result;
}

uint64_t sub_1C4BA4868(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F666E49746967 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4BA48F8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C43B8, &qword_1C4F58CB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1C4409678(a1, a1[3]);
  sub_1C4BA92BC();
  sub_1C4F02BC8();
  if (!v2)
  {
    sub_1C4BA8534();
    sub_1C4F02658();
    (*(v6 + 8))(v8, v5);
    v9 = v12[1];
    v10 = v12[2];
    *a2 = v12[0];
    a2[1] = v9;
    a2[2] = v10;
  }

  return sub_1C440962C(a1);
}

uint64_t sub_1C4BA4A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BA4868(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4BA4AA0(uint64_t a1)
{
  v2 = sub_1C4BA92BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BA4ADC(uint64_t a1)
{
  v2 = sub_1C4BA92BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4BA4B30(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C4F001E8();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4F001E8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4BA4F80(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C4BA4C60(0, v2, 1, a1);
  }
}

void sub_1C4BA4C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C4F001E8();
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v13;
    v18 = *a4;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        (v52)(v16, v24, v8, v14);
        v26(v17, v25, v8);
        v27 = sub_1C4F001C8();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_1C4F001C8() && v31 == v32)
        {
          break;
        }

        v34 = sub_1C4F02938();

        v35 = *v51;
        (*v51)(v29, v8);
        v35(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          v36(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      v39(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = &v45[v41];
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C4BA4F80(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v149 = a1;
  v8 = sub_1C4F001E8();
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v167 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v145 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v145 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v162 = &v145 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v26 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v145 - v22;
  v160 = v23;
  v161 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v172 = *v149;
    if (!v172)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v168 = v24;
  v145 = a4;
  v29 = 0;
  v172 = v23 + 16;
  v170 = (v23 + 32);
  v171 = (v23 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v164 = v8;
  v156 = v14;
  v146 = v25;
  v148 = &v145 - v22;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v151 = v29;
    if (v29 + 1 < v28)
    {
      v166 = v28;
      v147 = v30;
      v33 = v27;
      v34 = *v161;
      v35 = *(v23 + 72);
      v36 = v25;
      v159 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v23 + 16);
      v39(v33, v38, v8, v26);
      v40 = &v34[v35 * v37];
      v41 = v148;
      v158 = v39;
      (v39)(v36, v40, v8);
      LODWORD(v165) = sub_1C4BA3844(v41);
      if (v5)
      {
        v144 = *v171;
        (*v171)(v36, v8);
        (v144)(v41, v8);
LABEL_124:

        return;
      }

      v150 = 0;
      v42 = *v171;
      (*v171)(v36, v8);
      v157 = v42;
      (v42)(v41, v8);
      v43 = v151 + 2;
      v44 = &v34[v35 * (v151 + 2)];
      v32 = v159;
      v45 = v35;
      v169 = v35;
      v46 = v166;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v164;
        v5 = v158;
        (v158)(v162, v44, v164);
        v5(v163, v38, v49);
        v50 = sub_1C4F001C8();
        v52 = v51;
        if (v50 == sub_1C4F001C8() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_1C4F02938();
        }

        v56 = v164;
        v57 = v157;
        (v157)(v163, v164);
        v57(v162, v56);
        v45 = v169;
        v44 += v169;
        v38 += v169;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v166;
        if ((v165 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v165)
      {
        v31 = v151;
        if (v32 < v151)
        {
          goto LABEL_149;
        }

        v5 = v150;
        if (v151 >= v32)
        {
          v23 = v160;
          v30 = v147;
          v8 = v164;
          v14 = v156;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v58 = v47;
        }

        else
        {
          v58 = v46;
        }

        v59 = v45 * (v58 - 1);
        v60 = v45 * v58;
        v61 = v151;
        v62 = v151 * v45;
        v63 = v32;
        do
        {
          if (v61 != --v63)
          {
            v64 = *v161;
            if (!*v161)
            {
              goto LABEL_154;
            }

            v65 = v164;
            v166 = *v170;
            v166(v154, &v64[v62], v164);
            v66 = v62 < v59 || &v64[v62] >= &v64[v60];
            if (v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v166(&v64[v59], v154, v65);
            v5 = v150;
            v45 = v169;
          }

          ++v61;
          v59 -= v45;
          v60 -= v45;
          v62 += v45;
        }

        while (v61 < v63);
      }

      else
      {
        v5 = v150;
      }

      v23 = v160;
      v30 = v147;
      v8 = v164;
      v14 = v156;
      v31 = v151;
    }

LABEL_39:
    v67 = v161[1];
    if (v32 < v67)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v145)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A358();
      v30 = v134;
    }

    v90 = *(v30 + 2);
    v89 = *(v30 + 3);
    v91 = v90 + 1;
    v159 = v32;
    if (v90 >= v89 >> 1)
    {
      sub_1C458A358();
      v30 = v135;
    }

    *(v30 + 2) = v91;
    v92 = v30 + 32;
    v93 = &v30[16 * v90 + 32];
    v94 = v159;
    *v93 = v151;
    *(v93 + 1) = v94;
    v169 = *v149;
    if (!v169)
    {
      goto LABEL_155;
    }

    if (v90)
    {
      while (1)
      {
        v95 = v91 - 1;
        v96 = &v92[16 * v91 - 16];
        v97 = &v30[16 * v91];
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v98 = *(v30 + 4);
          v99 = *(v30 + 5);
          v108 = __OFSUB__(v99, v98);
          v100 = v99 - v98;
          v101 = v108;
LABEL_82:
          if (v101)
          {
            goto LABEL_132;
          }

          v113 = *v97;
          v112 = *(v97 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_135;
          }

          v117 = *(v96 + 1);
          v118 = v117 - *v96;
          if (__OFSUB__(v117, *v96))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v115, v118))
          {
            goto LABEL_140;
          }

          if (v115 + v118 >= v100)
          {
            if (v100 < v118)
            {
              v95 = v91 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v91 < 2)
        {
          goto LABEL_134;
        }

        v120 = *v97;
        v119 = *(v97 + 1);
        v108 = __OFSUB__(v119, v120);
        v115 = v119 - v120;
        v116 = v108;
LABEL_97:
        if (v116)
        {
          goto LABEL_137;
        }

        v122 = *v96;
        v121 = *(v96 + 1);
        v108 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v108)
        {
          goto LABEL_139;
        }

        if (v123 < v115)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v95 - 1 >= v91)
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
          goto LABEL_148;
        }

        if (!*v161)
        {
          goto LABEL_152;
        }

        v127 = v30;
        v128 = &v92[16 * v95 - 16];
        v129 = *v128;
        v130 = &v92[16 * v95];
        v131 = *(v130 + 1);
        sub_1C4BA5B3C(&(*v161)[*(v160 + 72) * *v128], &(*v161)[*(v160 + 72) * *v130], &(*v161)[*(v160 + 72) * v131], v169);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v131 < v129)
        {
          goto LABEL_127;
        }

        v132 = *(v127 + 2);
        if (v95 > v132)
        {
          goto LABEL_128;
        }

        *v128 = v129;
        *(v128 + 1) = v131;
        if (v95 >= v132)
        {
          goto LABEL_129;
        }

        v91 = v132 - 1;
        sub_1C461950C(v130 + 16, v132 - 1 - v95, &v92[16 * v95]);
        v30 = v127;
        *(v127 + 2) = v132 - 1;
        v133 = v132 > 2;
        v14 = v156;
        if (!v133)
        {
          goto LABEL_111;
        }
      }

      v102 = &v92[16 * v91];
      v103 = *(v102 - 8);
      v104 = *(v102 - 7);
      v108 = __OFSUB__(v104, v103);
      v105 = v104 - v103;
      if (v108)
      {
        goto LABEL_130;
      }

      v107 = *(v102 - 6);
      v106 = *(v102 - 5);
      v108 = __OFSUB__(v106, v107);
      v100 = v106 - v107;
      v101 = v108;
      if (v108)
      {
        goto LABEL_131;
      }

      v109 = *(v97 + 1);
      v110 = v109 - *v97;
      if (__OFSUB__(v109, *v97))
      {
        goto LABEL_133;
      }

      v108 = __OFADD__(v100, v110);
      v111 = v100 + v110;
      if (v108)
      {
        goto LABEL_136;
      }

      if (v111 >= v105)
      {
        v125 = *v96;
        v124 = *(v96 + 1);
        v108 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v108)
        {
          goto LABEL_144;
        }

        if (v100 < v126)
        {
          v95 = v91 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v160;
    v28 = v161[1];
    v29 = v159;
    v8 = v164;
    v25 = v146;
    v27 = v148;
    if (v159 >= v28)
    {
      goto LABEL_114;
    }
  }

  v68 = (v31 + v145);
  if (__OFADD__(v31, v145))
  {
    goto LABEL_147;
  }

  if (v68 >= v67)
  {
    v68 = v161[1];
  }

  if (v68 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_1C46194F4();
LABEL_116:
    v136 = v30 + 16;
    v137 = *(v30 + 2);
    while (v137 >= 2)
    {
      if (!*v161)
      {
        goto LABEL_153;
      }

      v138 = v30;
      v139 = &v30[16 * v137];
      v140 = *v139;
      v141 = &v136[2 * v137];
      v142 = *(v141 + 1);
      sub_1C4BA5B3C(&(*v161)[*(v160 + 72) * *v139], &(*v161)[*(v160 + 72) * *v141], &(*v161)[*(v160 + 72) * v142], v172);
      if (v5)
      {
        break;
      }

      if (v142 < v140)
      {
        goto LABEL_141;
      }

      if (v137 - 2 >= *v136)
      {
        goto LABEL_142;
      }

      *v139 = v140;
      *(v139 + 1) = v142;
      v143 = *v136 - v137;
      if (*v136 < v137)
      {
        goto LABEL_143;
      }

      v137 = *v136 - 1;
      sub_1C461950C(v141 + 16, v143, v141);
      *v136 = v137;
      v30 = v138;
    }

    goto LABEL_124;
  }

  if (v32 == v68)
  {
    goto LABEL_62;
  }

  v147 = v30;
  v150 = v5;
  v69 = *v161;
  v70 = *(v23 + 72);
  v169 = *(v23 + 16);
  v71 = &v69[v70 * (v32 - 1)];
  v165 = -v70;
  v166 = v69;
  v72 = (v31 - v32);
  v152 = v70;
  v153 = v68;
  v73 = &v69[v32 * v70];
  v74 = v168;
LABEL_48:
  v158 = v71;
  v159 = v32;
  v155 = v73;
  v157 = v72;
  while (1)
  {
    v75 = v169;
    (v169)(v74, v73, v8);
    v75(v14, v71, v8);
    v76 = v14;
    v77 = sub_1C4F001C8();
    v78 = v8;
    v80 = v79;
    if (v77 == sub_1C4F001C8() && v80 == v81)
    {

      v88 = *v171;
      (*v171)(v76, v78);
      (v88)(v74, v78);
      v8 = v78;
      v14 = v76;
      goto LABEL_60;
    }

    v83 = v74;
    v84 = sub_1C4F02938();

    v85 = *v171;
    (*v171)(v76, v78);
    (v85)(v83, v78);
    v8 = v78;
    v14 = v76;
    if ((v84 & 1) == 0)
    {
      v74 = v168;
LABEL_60:
      v32 = v159 + 1;
      v71 = &v158[v152];
      v72 = v157 - 1;
      v73 = &v155[v152];
      if ((v159 + 1) == v153)
      {
        v32 = v153;
        v5 = v150;
        v30 = v147;
        v31 = v151;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v166)
    {
      break;
    }

    v86 = *v170;
    v87 = v167;
    (*v170)(v167, v73, v78);
    swift_arrayInitWithTakeFrontToBack();
    v86(v71, v87, v78);
    v71 += v165;
    v73 += v165;
    v66 = __CFADD__(v72++, 1);
    v74 = v168;
    if (v66)
    {
      goto LABEL_60;
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

void sub_1C4BA5B3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1C4F001E8();
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v23 = (a2 - a1) / v19;
  v76 = a1;
  v75 = a4;
  v71 = (v16 + 8);
  v72 = (v16 + 16);
  v24 = v21 / v19;
  if (v23 < v21 / v19)
  {
    v67 = &v63 - v17;
    v69 = v14;
    sub_1C459CA94(a1, (a2 - a1) / v19, a4);
    v70 = (a4 + v23 * v19);
    v74 = v70;
    v25 = a4;
    v26 = v19;
    v66 = v8;
    v68 = a3;
    while (1)
    {
      if (v25 >= v70 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v28 = a1;
      v29 = *v72;
      v30 = v67;
      v31 = a2;
      (*v72)(v67, a2, v8);
      v73 = v25;
      v32 = v69;
      v29();
      v33 = sub_1C4F001C8();
      v35 = v34;
      if (v33 == sub_1C4F001C8() && v35 == v36)
      {

        v43 = *v71;
        (*v71)(v32, v8);
        v43(v30, v8);
      }

      else
      {
        v38 = sub_1C4F02938();

        v39 = *v71;
        (*v71)(v32, v8);
        v39(v30, v8);
        if (v38)
        {
          v40 = v31;
          a2 = v31 + v26;
          v41 = v28;
          if (v28 < v31 || v28 >= a2)
          {
            v8 = v66;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v68;
          }

          else
          {
            a3 = v68;
            v8 = v66;
            if (v28 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v73;
          goto LABEL_40;
        }
      }

      v25 = v73 + v26;
      v41 = v28;
      v44 = v28 < v73 || v28 >= v25;
      a2 = v31;
      if (v44)
      {
        v8 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v68;
      }

      else
      {
        a3 = v68;
        v8 = v66;
        if (v28 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = v25;
LABEL_40:
      a1 = v41 + v26;
      v76 = a1;
    }
  }

  sub_1C459CA94(a2, v21 / v19, a4);
  v73 = a4;
  v45 = a4 + v24 * v19;
  v46 = -v19;
  v47 = v45;
  v67 = -v19;
LABEL_42:
  v68 = a2;
  v66 = a2 + v46;
  v48 = a3;
  v64 = v47;
  while (1)
  {
    if (v45 <= v73)
    {
      v76 = v68;
      v74 = v47;
      goto LABEL_70;
    }

    if (v68 <= a1)
    {
      break;
    }

    v65 = v47;
    v49 = v45 + v46;
    v50 = *v72;
    (*v72)(v69, v45 + v46, v8);
    (v50)(v70, v66, v8);
    v51 = sub_1C4F001C8();
    v53 = v52;
    if (v51 == sub_1C4F001C8() && v53 == v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = sub_1C4F02938();
    }

    v57 = v48 + v67;
    v58 = *v71;
    (*v71)(v70, v8);
    v58(v69, v8);
    if (v56)
    {
      v60 = v48 < v68 || v57 >= v68;
      a3 = v57;
      if (v60)
      {
        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v65;
        v46 = v67;
      }

      else
      {
        v62 = v65;
        v61 = v66;
        v47 = v65;
        v20 = v48 == v68;
        a2 = v66;
        v46 = v67;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v61;
          v47 = v62;
        }
      }

      goto LABEL_42;
    }

    if (v48 < v45 || v57 >= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v57;
      v45 = v49;
      v47 = v49;
      v46 = v67;
    }

    else
    {
      v47 = v49;
      v20 = v45 == v48;
      v48 = v57;
      v45 = v49;
      v46 = v67;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v57;
        v45 = v49;
        v47 = v49;
      }
    }
  }

  v76 = v68;
  v74 = v64;
LABEL_70:
  sub_1C4BEB42C(&v76, &v75, &v74);
}

void sub_1C4BA6144(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v25 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *i;
    v28 = *(i - 1);
    v8 = *(i - 4);
    v7 = *(i - 3);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C4388, &unk_1C4F58BC0);
      sub_1C4F02468();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    v19 = v17[7] + 24 * v11;
    *v19 = v28;
    *(v19 + 16) = v6;
    v20 = v17[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v17[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_1C46792AC();
  v15 = sub_1C445FAA8(v8, v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA6464(uint64_t a1, char a2, void *a3)
{
  v43 = a3;
  v6 = sub_1C4EFF428();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v35 - v12;
  v40 = *(a1 + 16);
  if (!v40)
  {
LABEL_13:

    return;
  }

  v35 = v3;
  v36 = v6;
  v13 = 0;
  v39 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v10 + 48);
  v37 = v7;
  v38 = v14;
  v42 = (v7 + 32);
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v41;
    sub_1C446C964(v39 + *(v11 + 72) * v13, v41, &qword_1EC0B8FD0, &qword_1C4F0EAB0);
    v17 = *v42;
    (*v42)(v44, v16, v6);
    v18 = *(v16 + v38);
    v19 = *v43;
    sub_1C457B070();
    v22 = v21;
    v23 = v19[2];
    v24 = (v20 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v25 = v20;
    if (v19[3] < v23 + v24)
    {
      break;
    }

    if (a2)
    {
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
      sub_1C4F02468();
      if (v25)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v28 = v44;
    v29 = *v43;
    *(*v43 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v6 = v36;
    v17((v29[6] + *(v37 + 72) * v22), v28, v36);
    *(v29[7] + 8 * v22) = v18;
    v30 = v29[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_20;
    }

    ++v13;
    v29[2] = v32;
    a2 = 1;
    v11 = v15;
    if (v40 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_1C467A544();
  sub_1C457B070();
  if ((v25 & 1) != (v27 & 1))
  {
    goto LABEL_21;
  }

  v22 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v33 = swift_allocError();
  swift_willThrow();

  v47 = v33;
  v34 = v33;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v37 + 8))(v44, v36);

    return;
  }

LABEL_22:
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA68D0(uint64_t a1, char a2, void *a3)
{
  v42 = a3;
  v6 = sub_1C4EFF0C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0B8FC0, &unk_1C4F0EA98);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v35 - v12;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_13:

    return;
  }

  v35 = v3;
  v36 = v7;
  v13 = 0;
  v38 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v37 = *(v10 + 48);
  v41 = (v7 + 32);
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v14 = v11;
    v15 = v40;
    sub_1C446C964(v38 + *(v11 + 72) * v13, v40, &qword_1EC0B8FC0, &unk_1C4F0EA98);
    v16 = *v41;
    v17 = v6;
    (*v41)(v43, v15, v6);
    v18 = *(v15 + v37);
    v19 = *v42;
    sub_1C44E3664();
    v22 = v21;
    v23 = v19[2];
    v24 = (v20 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v25 = v20;
    if (v19[3] < v23 + v24)
    {
      break;
    }

    if (a2)
    {
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C24B0, &unk_1C4F58B90);
      sub_1C4F02468();
      if (v25)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v28 = v43;
    v29 = *v42;
    *(*v42 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v6 = v17;
    v16((v29[6] + *(v36 + 72) * v22), v28, v17);
    *(v29[7] + 8 * v22) = v18;
    v30 = v29[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_20;
    }

    ++v13;
    v29[2] = v32;
    a2 = 1;
    v11 = v14;
    if (v39 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_1C467A7C4();
  sub_1C44E3664();
  if ((v25 & 1) != (v27 & 1))
  {
    goto LABEL_21;
  }

  v22 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v33 = swift_allocError();
  swift_willThrow();
  v46 = v33;
  v34 = v33;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v36 + 8))(v43, v17);

    return;
  }

LABEL_22:
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA703C(uint64_t a1, char a2, void *a3)
{
  v28 = *(a1 + 16);
  if (!v28)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 80)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C446C964(i, &v35, &qword_1EC0B9090, &unk_1C4F58BD0);
    v8 = v35;
    v7 = v36;
    v33 = v35;
    v34 = v36;
    v30 = v37;
    v31 = v38;
    v32[0] = v39[0];
    *(v32 + 9) = *(v39 + 9);
    v9 = *a3;
    v11 = sub_1C445FAA8(v35, v36);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C0928, &unk_1C4F3F540);
      sub_1C4F02468();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    v19 = (v17[7] + (v11 << 6));
    v20 = v30;
    v21 = v31;
    v22 = v32[0];
    *(v19 + 41) = *(v32 + 9);
    v19[1] = v21;
    v19[2] = v22;
    *v19 = v20;
    v23 = v17[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v25;
    a2 = 1;
    if (v28 == v5)
    {

      return;
    }
  }

  sub_1C467AC18();
  v15 = sub_1C445FAA8(v8, v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();

  v40 = v26;
  v27 = v26;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C4420C3C(&v30, &qword_1EC0B9AE0, &qword_1C4F16C40);

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7380(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v34 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C445FAA8(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      sub_1C4F02468();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v24 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v7;
    v25[1] = v6;
    *(v24[7] + 8 * v17) = v8;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v24[2] = v28;
    ++v4;
    a2 = 1;
  }

  sub_1C467B328(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v31, v32, *v33, v33[4]);
  v22 = sub_1C445FAA8(v7, v6);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7654(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C446C964(i, &v30, &qword_1EC0C43A0, &qword_1C4F58C10);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_1C441D670(v32, v27);
    v9 = *a3;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C43A8, &qword_1C4F58C18);
      sub_1C4F02468();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_1C441D670(v27, v18[7] + 40 * v11);
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_1C467B488(v14, a2 & 1);
  v16 = sub_1C445FAA8(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C440962C(v27);

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7970(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C446C964(i, &v29, &qword_1EC0B9278, &unk_1C4F0EDA0);
    v8 = v29;
    v7 = v30;
    v27 = v29;
    v28 = v30;
    sub_1C44482AC(&v31, v26);
    v9 = *a3;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
      sub_1C4F02468();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    sub_1C44482AC(v26, (v17[7] + 32 * v11));
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v21;
    a2 = 1;
    if (v24 == v5)
    {

      return;
    }
  }

  sub_1C467B4B0();
  v15 = sub_1C445FAA8(v8, v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v32 = v22;
  v23 = v22;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C440962C(v26);

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4BA7C88(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v30 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v30 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C445FAA8(v9, v10);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_19;
    }

    v17 = v13;
    if (v12[3] < v15 + v16)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C456902C(a5, a6);
      sub_1C4F02468();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v21 = (v20[6] + 16 * v14);
    *v21 = v9;
    v21[1] = v10;
    *(v20[7] + 8 * v14) = v11;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v7;
    a2 = 1;
  }

  a4();
  v18 = sub_1C445FAA8(v9, v10);
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v14 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

unint64_t sub_1C4BA7F70()
{
  result = qword_1EDDF8F28;
  if (!qword_1EDDF8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F28);
  }

  return result;
}

unint64_t sub_1C4BA7FC4()
{
  result = qword_1EC0C4240;
  if (!qword_1EC0C4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4240);
  }

  return result;
}

unint64_t sub_1C4BA8018()
{
  result = qword_1EC0C4248;
  if (!qword_1EC0C4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4248);
  }

  return result;
}

unint64_t sub_1C4BA806C()
{
  result = qword_1EC0C4250;
  if (!qword_1EC0C4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4250);
  }

  return result;
}

unint64_t sub_1C4BA80C0()
{
  result = qword_1EC0C4278;
  if (!qword_1EC0C4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4278);
  }

  return result;
}

unint64_t sub_1C4BA8114()
{
  result = qword_1EC0C4280;
  if (!qword_1EC0C4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4280);
  }

  return result;
}

unint64_t sub_1C4BA8168()
{
  result = qword_1EC0C4290;
  if (!qword_1EC0C4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4290);
  }

  return result;
}

uint64_t sub_1C4BA81BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4BA820C()
{
  result = qword_1EC0C42A0;
  if (!qword_1EC0C42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42A0);
  }

  return result;
}

unint64_t sub_1C4BA8260()
{
  result = qword_1EC0C42B0;
  if (!qword_1EC0C42B0)
  {
    sub_1C4572308(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA8324();
    sub_1C448F040(&qword_1EC0BFE40, &qword_1EDDFCD80, MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42B0);
  }

  return result;
}

unint64_t sub_1C4BA8324()
{
  result = qword_1EC0C42B8;
  if (!qword_1EC0C42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42B8);
  }

  return result;
}

unint64_t sub_1C4BA8378()
{
  result = qword_1EC0C42C0;
  if (!qword_1EC0C42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42C0);
  }

  return result;
}

uint64_t sub_1C4BA83CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C4BA841C()
{
  result = qword_1EC0C42E0;
  if (!qword_1EC0C42E0)
  {
    sub_1C4572308(&qword_1EC0C42A8, &qword_1C4F582B0);
    sub_1C4BA84E0();
    sub_1C448F040(&qword_1EC0C42F0, &unk_1EDDFCD60, MEMORY[0x1E6969558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42E0);
  }

  return result;
}

unint64_t sub_1C4BA84E0()
{
  result = qword_1EC0C42E8;
  if (!qword_1EC0C42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C42E8);
  }

  return result;
}

unint64_t sub_1C4BA8534()
{
  result = qword_1EDDF8F50;
  if (!qword_1EDDF8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F50);
  }

  return result;
}

uint64_t sub_1C4BA8588(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C42C8, &qword_1C4F582B8);
    sub_1C4BA91B0(a2, MEMORY[0x1E69A9D80], a3);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4BA8650()
{
  result = qword_1EDDF8F20;
  if (!qword_1EDDF8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F20);
  }

  return result;
}

unint64_t sub_1C4BA86A8()
{
  result = qword_1EC0C4300;
  if (!qword_1EC0C4300)
  {
    sub_1C4572308(&qword_1EC0C4308, &qword_1C4F583E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4300);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VersionInfo.Component(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C4BA87FC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C4BA884C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1C4BA88A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4BA88C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4BA88DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1C4BA891C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VersionInfo.AllInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VersionInfo.GitInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VersionInfo.GitInfo.WorkingTreeStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4BA8C3C()
{
  result = qword_1EC0C4310;
  if (!qword_1EC0C4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4310);
  }

  return result;
}

unint64_t sub_1C4BA8C94()
{
  result = qword_1EC0C4318;
  if (!qword_1EC0C4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4318);
  }

  return result;
}

unint64_t sub_1C4BA8CEC()
{
  result = qword_1EC0C4320;
  if (!qword_1EC0C4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4320);
  }

  return result;
}

unint64_t sub_1C4BA8D44()
{
  result = qword_1EC0C4328;
  if (!qword_1EC0C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4328);
  }

  return result;
}

unint64_t sub_1C4BA8D9C()
{
  result = qword_1EC0C4330;
  if (!qword_1EC0C4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4330);
  }

  return result;
}

unint64_t sub_1C4BA8DF4()
{
  result = qword_1EC0C4338;
  if (!qword_1EC0C4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4338);
  }

  return result;
}

unint64_t sub_1C4BA8E4C()
{
  result = qword_1EC0C4340;
  if (!qword_1EC0C4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4340);
  }

  return result;
}

unint64_t sub_1C4BA8EA4()
{
  result = qword_1EC0C4348;
  if (!qword_1EC0C4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4348);
  }

  return result;
}

unint64_t sub_1C4BA8EFC()
{
  result = qword_1EC0C4350;
  if (!qword_1EC0C4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4350);
  }

  return result;
}

unint64_t sub_1C4BA8F54()
{
  result = qword_1EC0C4358;
  if (!qword_1EC0C4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4358);
  }

  return result;
}

unint64_t sub_1C4BA8FAC()
{
  result = qword_1EC0C4360;
  if (!qword_1EC0C4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4360);
  }

  return result;
}

unint64_t sub_1C4BA9004()
{
  result = qword_1EC0C4368;
  if (!qword_1EC0C4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4368);
  }

  return result;
}

unint64_t sub_1C4BA905C()
{
  result = qword_1EC0C4370;
  if (!qword_1EC0C4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4370);
  }

  return result;
}

unint64_t sub_1C4BA90B4()
{
  result = qword_1EC0C4378;
  if (!qword_1EC0C4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4378);
  }

  return result;
}

unint64_t sub_1C4BA9108()
{
  result = qword_1EC0C4390;
  if (!qword_1EC0C4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4390);
  }

  return result;
}

unint64_t sub_1C4BA915C()
{
  result = qword_1EDDF8F30;
  if (!qword_1EDDF8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F30);
  }

  return result;
}

uint64_t sub_1C4BA91B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4BA91F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1C4BA924C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C4BA92BC()
{
  result = qword_1EDDF8F48;
  if (!qword_1EDDF8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F48);
  }

  return result;
}

_BYTE *sub_1C4BA9310(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C4BA93C0()
{
  result = qword_1EC0C43C0;
  if (!qword_1EC0C43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C43C0);
  }

  return result;
}

unint64_t sub_1C4BA9418()
{
  result = qword_1EDDF8F38;
  if (!qword_1EDDF8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F38);
  }

  return result;
}

unint64_t sub_1C4BA9470()
{
  result = qword_1EDDF8F40;
  if (!qword_1EDDF8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F40);
  }

  return result;
}

uint64_t sub_1C4BA95AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactURL;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1C4BA9674()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactTableName);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4BA9730(uint64_t a1)
{
  result = sub_1C4EF98F8();
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

id sub_1C4BA97E0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessRequester_viewDb] = a1;
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessRequester_artifactURL;
  v7 = sub_1C4EF98F8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t sub_1C4BA99A0(uint64_t a1)
{
  result = sub_1C4EF98F8();
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

uint64_t sub_1C4BA9A54@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v23 = *(a2 - 8);
  v24 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  v21 = 1;
  if (sub_1C44157D4(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v18, v10);
    v26(v14, v8);
    (*(v11 + 8))(v14, v10);
    if (v5)
    {
      return (*(v23 + 32))(v25, v8, v24);
    }

    v21 = 0;
  }

  return sub_1C440BAA8(a5, v21, 1, v27);
}

void sub_1C4BA9CC8()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  sub_1C44344B8(v3, v1);
  v6(v3, v1, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1C43FBC80();
}

uint64_t sub_1C4BA9D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  v12 = sub_1C4F01F48();
  v17 = *(*(v12 - 8) + 32);
  (v17)((v12 - 8), a6, a1, v12);
  v14 = _s13BookmarkStateVMa(0, a4, a5, v13);
  v17(a6 + *(v14 + 36), a2, v12);
  v15 = a6 + *(v14 + 40);

  return (v17)(v15, a3, v12);
}

uint64_t sub_1C4BA9EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  v5 = sub_1C4F01F48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4BA9F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = sub_1C4F01F48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4BA9FD8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1C4F01F48();
  sub_1C43FCE64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  sub_1C43FCE64();
  v39 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v35 = (v20 - v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v38 = &v34 - v24;
  (*(a2 + 40))(a1, a2, v23);
  if (sub_1C44157D4(v17, 1, v6) == 1)
  {
    v25 = *(v9 + 8);
    v25(v17, v7);
    (*(a2 + 32))(a1, a2);
    v26 = sub_1C44157D4(v13, 1, v6);
    v25(v13, v7);
    if (v26 == 1)
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v28 = v17;
    v29 = *(v39 + 32);
    v29(v38, v28, v6);
    (*(a2 + 32))(a1, a2);
    if (sub_1C44157D4(v2, 1, v6) == 1)
    {
      (*(v39 + 8))(v38, v6);
      (*(v9 + 8))(v2, v7);
      return 2;
    }

    else
    {
      v30 = v35;
      v29(v35, v2, v6);
      swift_getAssociatedConformanceWitness();
      v31 = v38;
      v32 = sub_1C4F010B8();
      v33 = *(v39 + 8);
      v33(v30, v6);
      v33(v31, v6);
      if (v32)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_1C4BAA378()
{
  sub_1C43FE96C();
  v61 = v0;
  v3 = v2;
  v5 = v4;
  v55 = v6;
  v56 = v7;
  v57 = v8;
  v58 = v9;
  v11 = v10;
  v13 = v12;
  v54 = v14;
  swift_getAssociatedTypeWitness();
  v15 = sub_1C4F01F48();
  sub_1C43FCE64();
  v59 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v53 - v23;
  v64 = v13;
  v65 = v11;
  v60 = v5;
  v62 = v5;
  v63 = v3;
  sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C442D4C8();
  v25 = v61;
  v31 = sub_1C4BA9A54(v26, v27, v28, v29, v30);
  if (!v25)
  {
    v61 = v24;
    v53[0] = v20;
    v53[1] = v15;
    v64 = v57;
    v65 = v58;
    MEMORY[0x1EEE9AC00](v31);
    sub_1C44204D0();
    *(v32 - 16) = v33;
    *(v32 - 8) = v3;
    sub_1C442D4C8();
    v39 = sub_1C4BA9A54(v34, v35, v36, v37, v38);
    v64 = v55;
    v65 = v56;
    MEMORY[0x1EEE9AC00](v39);
    sub_1C44204D0();
    *(v40 - 16) = v41;
    *(v40 - 8) = v3;
    v42 = v53[0];
    sub_1C442D4C8();
    sub_1C4BA9A54(v43, v44, v45, v46, v47);
    v48 = v60;
    v50 = _s13BookmarkStateVMa(0, v60, v3, v49);
    v51 = v54;
    v54[3] = v50;
    v51[4] = swift_getWitnessTable();
    v52 = sub_1C4422F90(v51);
    sub_1C4BA9D8C(v61, v1, v42, v48, v3, v52);
  }

  sub_1C43FBC80();
}

void sub_1C4BAA6C4()
{
  sub_1C43FE96C();
  v8 = v1;
  v3 = *v2;
  v4 = v2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 40);
  sub_1C44344B8(v3, v4);
  v7(v3, v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v0)
  {
    *v8 = v0;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BAA7B4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1C4F01F48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4BAA848(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = ((v9 + *(v6 + 80) + ((v9 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + v9;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((a2 - v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_23;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          switch(v10)
          {
            case 2:
              LODWORD(v10) = *a1;
              break;
            case 3:
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v10) = *a1;
              break;
            default:
              LODWORD(v10) = *a1;
              break;
          }
        }

        return v8 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v7 < 2)
  {
    return 0;
  }

  v16 = sub_1C44157D4(a1, v7, AssociatedTypeWitness);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C4BAAA00(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = 0;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v12;
  }

  v13 = ((v12 + *(v9 + 80) + ((v12 + *(v9 + 80)) & ~*(v9 + 80))) & ~*(v9 + 80)) + v12;
  v14 = 8 * v13;
  if (a3 > v11)
  {
    if (v13 <= 3)
    {
      v15 = ((a3 - v11 + ~(-1 << v14)) >> v14) + 1;
      if (HIWORD(v15))
      {
        v8 = 4;
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
          v8 = v16;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v8)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          if (v10 >= 2)
          {

            sub_1C440BAA8(a1, a2 + 1, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v11 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> v14) + 1;
      if (v13)
      {
        v19 = v17 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v13 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v13] = v18;
        break;
      case 2:
        *&a1[v13] = v18;
        break;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v13] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4BAAC70(void *a1)
{
  v2 = sub_1C456902C(&qword_1EC0C44C8, &qword_1C4F59058);
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1C4409678(a1, a1[3]);
  v8 = sub_1C4BAB4E4();
  sub_1C442D4D8(&_s16ViewChangedStateV6ConfigV10CodingKeysON, v9, v8);
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C4BAAD9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001C4FB4900 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4BAAE38(void *a1, double a2)
{
  v3 = sub_1C456902C(&qword_1EC0C44C0, &qword_1C4F59050);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C4409678(a1, a1[3]);
  v9 = sub_1C4BAB490();
  sub_1C442D4D8(&_s16ViewChangedStateV8BookmarkV10CodingKeysON, v10, v9);
  sub_1C4F027B8();
  return (*(v5 + 8))(v8, v3);
}

double sub_1C4BAAF54(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C44B8, &qword_1C4F59048);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1C4409678(a1, a1[3]);
  sub_1C4BAB490();
  sub_1C4F02BC8();
  if (!v1)
  {
    v2 = sub_1C4F02698();
    (*(v6 + 8))(v9, v4);
  }

  sub_1C440962C(a1);
  return v2;
}

uint64_t sub_1C4BAB0A4(uint64_t a1)
{
  v2 = sub_1C4BAB4E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BAB0E0(uint64_t a1)
{
  v2 = sub_1C4BAB4E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BAB150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BAAD9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4BAB17C(uint64_t a1)
{
  v2 = sub_1C4BAB490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BAB1B8(uint64_t a1)
{
  v2 = sub_1C4BAB490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4BAB1F4(void *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1C4BAAF54(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_1C4BAB258()
{
  result = qword_1EDDFC1C0;
  if (!qword_1EDDFC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1C0);
  }

  return result;
}

unint64_t sub_1C4BAB2B0()
{
  result = qword_1EC0C44A8;
  if (!qword_1EC0C44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44A8);
  }

  return result;
}

unint64_t sub_1C4BAB308()
{
  result = qword_1EC0C44B0;
  if (!qword_1EC0C44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44B0);
  }

  return result;
}

unint64_t sub_1C4BAB35C(void *a1)
{
  a1[1] = sub_1C4BAB394();
  a1[2] = sub_1C4BAB3E8();
  result = sub_1C4BAB43C();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4BAB394()
{
  result = qword_1EDDFC1C8;
  if (!qword_1EDDFC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1C8);
  }

  return result;
}

unint64_t sub_1C4BAB3E8()
{
  result = qword_1EDDFC1D8[0];
  if (!qword_1EDDFC1D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFC1D8);
  }

  return result;
}

unint64_t sub_1C4BAB43C()
{
  result = qword_1EDDFC1D0;
  if (!qword_1EDDFC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1D0);
  }

  return result;
}

unint64_t sub_1C4BAB490()
{
  result = qword_1EDDF8F18;
  if (!qword_1EDDF8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F18);
  }

  return result;
}

unint64_t sub_1C4BAB4E4()
{
  result = qword_1EC0C44D0;
  if (!qword_1EC0C44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44D0);
  }

  return result;
}

_BYTE *_s16ViewChangedStateV8BookmarkV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C4BAB610()
{
  result = qword_1EC0C44D8;
  if (!qword_1EC0C44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44D8);
  }

  return result;
}

unint64_t sub_1C4BAB668()
{
  result = qword_1EC0C44E0;
  if (!qword_1EC0C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44E0);
  }

  return result;
}

unint64_t sub_1C4BAB6C0()
{
  result = qword_1EC0C44E8;
  if (!qword_1EC0C44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44E8);
  }

  return result;
}

unint64_t sub_1C4BAB718()
{
  result = qword_1EDDF8F08;
  if (!qword_1EDDF8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F08);
  }

  return result;
}

unint64_t sub_1C4BAB770()
{
  result = qword_1EDDF8F10;
  if (!qword_1EDDF8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F10);
  }

  return result;
}

uint64_t sub_1C4BAB7D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C4BAB814(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C4BAB878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v25 = *(a1 + 16);
    sub_1C459CF48(0, v1, 0);
    v5 = sub_1C486C288();
    v6 = v25;
    v7 = 0;
    v8 = a1 + 56;
    v9 = 1;
    v10 = 24;
    v11 = -2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v9 << *(a1 + 32))
      {
        v12 = v5 >> 6;
        v13 = v9 << v5;
        if ((*(v8 + 8 * (v5 >> 6)) & (v9 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v14 = *(*(a1 + 48) + v5 * v10);
        v16 = *(v26 + 16);
        v15 = *(v26 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1C459CF48(v15 > 1, v16 + 1, 1);
          sub_1C447F324();
        }

        *(v26 + 16) = v16 + 1;
        *(v26 + 8 * v16 + 32) = v14;
        if (v4)
        {
          goto LABEL_29;
        }

        v17 = v9 << *(a1 + 32);
        if (v5 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v8 + 8 * v12);
        if ((v18 & v13) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v19 = v18 & (v11 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v12 << 6;
          v21 = v12 + 1;
          v22 = (a1 + 64 + 8 * v12);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1C440951C(v5, v3, 0);
              sub_1C447F324();
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v5, v3, 0);
          sub_1C447F324();
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C4BABAA8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0A8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4BB1ECC(v6);
  *a1 = v2;
  return result;
}

void sub_1C4BABB14()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v17 = v6;
  v16 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = 0;
  v11 = *(v3 + 16);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      goto LABEL_9;
    }

    sub_1C445FFF0(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v10, v1, &qword_1EC0B89E8, &unk_1C4F3E630);
    v12 = sub_1C4408D00();
    v13 = v5(v12);
    if (v0)
    {
      sub_1C4420C3C(v1, &qword_1EC0B89E8, &unk_1C4F3E630);
      goto LABEL_10;
    }

    if (v13)
    {
      break;
    }

    sub_1C4420C3C(v1, &qword_1EC0B89E8, &unk_1C4F3E630);
    ++v10;
  }

  v15 = v17;
  sub_1C4BB2864(v1, v17);
  v14 = 0;
LABEL_9:
  sub_1C440BAA8(v15, v14, 1, v16);
LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4BABC84(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v11[0] = v8;
    v11[1] = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    v6 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1C4BABE08()
{
  sub_1C43FE96C();
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v18 = v8(0);
  sub_1C43FCDF8();
  v10 = v9;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = 0;
  v13 = *(v4 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v16 = 1;
      v17 = v19;
      goto LABEL_9;
    }

    sub_1C443BF44(v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v12, v1);
    v14 = sub_1C4408D00();
    v15 = v6(v14);
    if (v0)
    {
      sub_1C443C070(v1, v20);
      goto LABEL_10;
    }

    if (v15)
    {
      break;
    }

    sub_1C443C070(v1, v20);
    ++v12;
  }

  v17 = v19;
  sub_1C4437D00(v1, v19);
  v16 = 0;
LABEL_9:
  sub_1C440BAA8(v17, v16, 1, v18);
LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4BACAD0()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44042B0();
  v8 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v38 = v13 - v12;
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);

  if (v1)
  {
LABEL_19:
    sub_1C4403810();
    sub_1C43FBC80();
  }

  else
  {
    v42 = v0;

    v14 = v5 + 56;
    v15 = 1 << *(v5 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v5 + 56);
    v18 = (v15 + 63) >> 6;
    v40 = (v10 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    v20 = v38;
    v41 = v5;
LABEL_5:
    v21 = v19;
    if (!v17)
    {
      goto LABEL_7;
    }

    do
    {
      v19 = v21;
LABEL_10:
      v22 = *(*(v5 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v17)))));
      v23 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v24 = sub_1C44331AC(v23);
      *(v24 + 16) = xmmword_1C4F0D130;
      *(v24 + 56) = MEMORY[0x1E69E6530];
      *(v24 + 64) = MEMORY[0x1E69A0180];
      *(v24 + 32) = v22;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v25 = v20;
      (*v40)(v20, v8);
      sub_1C43FCF64();
      v27 = v26;
      sub_1C440BAA8(v28, v29, v30, v26);
      sub_1C445EA20();
      sub_1C443474C();
      sub_1C4EFB9A8();
      v17 &= v17 - 1;
      sub_1C4420C3C(v43, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v42, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v31 = v44;
      if (v44)
      {
        v39 = v43[6];
        v8 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458DF68();
          v37 = v35;
        }

        v20 = v25;
        v32 = *(v37 + 16);
        v33 = v32 + 1;
        if (v32 >= *(v37 + 24) >> 1)
        {
          sub_1C458DF68();
          v33 = v32 + 1;
          v37 = v36;
        }

        *(v37 + 16) = v33;
        v34 = (v37 + 24 * v32);
        v34[4] = v22;
        v34[5] = v39;
        v34[6] = v31;
        v5 = v41;
        goto LABEL_5;
      }

      v21 = v19;
      v5 = v41;
      v8 = v27;
      v20 = v25;
    }

    while (v17);
LABEL_7:
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= v18)
      {

        goto LABEL_19;
      }

      v17 = *(v14 + 8 * v19);
      ++v21;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1C4BACEC4()
{
  sub_1C43FE96C();
  v3 = v2;
  v42 = v5;
  v43 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  swift_unownedRetainStrong();
  v18 = sub_1C4440C6C(v3);
  if (!v0)
  {
    v19 = v18;
    v39 = v10;
    v40 = v3;

    v20 = *(v19 + 32);

    v41 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v21 = sub_1C44331AC(v41);
    v38 = xmmword_1C4F0D130;
    *(v21 + 16) = xmmword_1C4F0D130;
    v22 = MEMORY[0x1E69A0138];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = v22;
    v23 = v42;
    *(v21 + 32) = v43;
    *(v21 + 40) = v23;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFC088();
    v24 = *(v16 + 8);
    v24(v1, v14);
    sub_1C43FCF64();
    sub_1C440BAA8(v25, v26, v27, v14);
    sub_1C445EA20();
    sub_1C443474C();
    sub_1C4EFB9A8();
    v37[0] = v24;
    v37[1] = v20;
    v28 = v41;
    sub_1C4420C3C(v44, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v13, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v45)
    {
      swift_unownedRetainStrong();
      sub_1C4440C6C(v40);

      v29 = sub_1C44331AC(v28);
      *(v29 + 16) = v38;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = MEMORY[0x1E69A0138];
      v30 = v43;
      *(v29 + 32) = v43;
      *(v29 + 40) = v23;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB728();
      sub_1C4EFC088();
      (v37[0])(v1, v14);
      v31 = v39;
      sub_1C43FCF64();
      sub_1C440BAA8(v32, v33, v34, v14);
      sub_1C445EA20();
      sub_1C443474C();
      sub_1C4EFB9A8();
      sub_1C4420C3C(v44, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v31, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if ((v45 & 1) == 0)
      {

        goto LABEL_4;
      }

      sub_1C450B034();
      sub_1C441C114();
      v35 = swift_allocError();
      v36->n128_u64[0] = v30;
      v36->n128_u64[1] = v23;
      v36[1].n128_u64[0] = 0xD000000000000011;
      v36[1].n128_u64[1] = 0x80000001C4FB52E0;
      v36[2].n128_u64[0] = 0xD000000000000016;
      v36[2].n128_u64[1] = 0x80000001C4FB4F00;
      sub_1C4426EA4(v44[0], v35, v36);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

LABEL_4:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4BAD398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C456902C(&qword_1EC0B8838, "nS\t");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  sub_1C4BAFAC8(inited, a2, a3, sub_1C4BAF708);
  swift_setDeallocating();
  if (!v3)
  {
    sub_1C4A7EA34(a1);
    sub_1C4BACAD0();
    a3 = v8;
  }

  return a3;
}

uint64_t sub_1C4BAD488(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61486769666E6F63 && a2 == 0xEA00000000006873;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69746172656E6567 && a2 == 0xEE00657079546E6FLL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79546D6F74737563 && a2 == 0xEA00000000006570;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7247657461647075 && a2 == 0xEB0000000070756FLL;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x536F546574697277 && a2 == 0xED00006D61657274;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7463616669747261 && a2 == 0xEC00000065707954;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7463616669747261 && a2 == 0xEC00000068746150;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7463616669747261 && a2 == 0xED0000656C626154;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x80000001C4FB5390 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001C4FB53B0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1C4BAD8C4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x746567726174;
      break;
    case 3:
      result = 0x61486769666E6F63;
      break;
    case 4:
      result = 0x69746172656E6567;
      break;
    case 5:
      result = 0x79546D6F74737563;
      break;
    case 6:
      result = 0x7247657461647075;
      break;
    case 7:
      result = 0x536F546574697277;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x7463616669747261;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4BADA4C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4548, &qword_1C4F596C8);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4BB2BDC();
  sub_1C4F02BF8();
  LOBYTE(v14) = 0;
  sub_1C441BD40();
  sub_1C4F027D8();
  if (!v2)
  {
    sub_1C44126A4(1);
    sub_1C4F02798();
    sub_1C44126A4(2);
    sub_1C4F02738();
    sub_1C44126A4(3);
    sub_1C4F02798();
    LOBYTE(v14) = *(v3 + 56);
    v15 = 4;
    sub_1C4BB2C84();
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    LOBYTE(v14) = *(v3 + 57);
    v15 = 5;
    sub_1C4BB2CD8();
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F02778();
    sub_1C44126A4(6);
    sub_1C4F02738();
    LOBYTE(v14) = 7;
    sub_1C441BD40();
    sub_1C4F027A8();
    LOBYTE(v14) = *(v3 + 81);
    v15 = 8;
    sub_1C4BB2D2C();
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C44126A4(9);
    sub_1C4F02798();
    sub_1C44126A4(10);
    sub_1C4F02738();
    v14 = *(v3 + 120);
    v15 = 11;
    sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
    sub_1C44BB458(&qword_1EDDFA560, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    v14 = *(v3 + 128);
    v15 = 12;
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    _s16ViewConfigRecordVMa(0);
    LOBYTE(v14) = 13;
    _s10ViewConfigVMa(0);
    sub_1C442D4F8();
    sub_1C4505F5C(v11, v12, &unk_1C4F6239C);
    sub_1C441BD40();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1C4BADDC8()
{
  sub_1C43FE96C();
  v2 = v1;
  v25 = v3;
  _s10ViewConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C456902C(&qword_1EC0C4540, &unk_1C4F596B8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4422BD8();
  _s16ViewConfigRecordVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v27 = v11 - v10;
  v12 = v2[3];
  v26 = v2;
  v13 = sub_1C4409678(v2, v12);
  sub_1C4BB2BDC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C442E5F4();
    sub_1C440962C(v26);

    if (v13)
    {

      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!v12)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  *v27 = sub_1C4F026B8();
  sub_1C4417910(1);
  *(v27 + 8) = sub_1C4F02678();
  *(v27 + 16) = v14;
  sub_1C4417910(2);
  *(v27 + 24) = sub_1C4F02618();
  *(v27 + 32) = v15;
  sub_1C4417910(3);
  *(v27 + 40) = sub_1C4F02678();
  *(v27 + 48) = v16;
  sub_1C4506098();
  sub_1C440A164();
  sub_1C4F026C8();
  *(v27 + 56) = 0;
  sub_1C4508038();
  sub_1C440A164();
  sub_1C4F02658();
  *(v27 + 57) = 0;
  sub_1C4417910(6);
  *(v27 + 64) = sub_1C4F02618();
  *(v27 + 72) = v17;
  sub_1C4417910(7);
  *(v27 + 80) = sub_1C4F02688() & 1;
  sub_1C4BB2C30();
  sub_1C440A164();
  sub_1C4F026C8();
  *(v27 + 81) = 0;
  sub_1C4417910(9);
  *(v27 + 88) = sub_1C4F02678();
  *(v27 + 96) = v18;
  LOBYTE(v28) = 10;
  *(v27 + 104) = sub_1C4F02618();
  *(v27 + 112) = v19;
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C44BB458(&qword_1EDDFCEB0, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
  sub_1C442ED74();
  *(v27 + 120) = v28;
  sub_1C442ED74();
  *(v27 + 128) = v28;
  sub_1C442D4F8();
  sub_1C4505F5C(v20, v21, &unk_1C4F623C4);
  sub_1C4F026C8();
  v22 = sub_1C441CE58();
  v23(v22);
  sub_1C43FDF54();
  sub_1C4437D00(v7, v27 + v24);
  sub_1C443BF44(v27, v25);
  sub_1C440962C(v26);
  sub_1C443C070(v27, _s16ViewConfigRecordVMa);
LABEL_8:
  sub_1C4403810();
  sub_1C43FBC80();
}