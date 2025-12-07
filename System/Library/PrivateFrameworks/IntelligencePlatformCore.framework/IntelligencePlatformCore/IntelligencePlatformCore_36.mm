uint64_t sub_1C4723038()
{

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_databaseURL;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker));
  return v0;
}

uint64_t sub_1C47230A8()
{
  sub_1C4723038();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityTaggingFactsFeaturizer(uint64_t a1)
{
  result = qword_1EDDDFF58;
  if (!qword_1EDDDFF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4723154(uint64_t a1)
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

void *sub_1C47231FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v36[2] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = (8 * v9);
  v11 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v4;
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v11);
    v29 = v9;
    v31 = v28 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C4501018(0, v9, v31);
    v32 = 0;
    v12 = 0;
    v4 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v9 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v19 = v16 | (v12 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v36[0] = v33;
      v36[1] = a3;
      v34 = v22;
      v35 = v21;
      sub_1C4415EA8();
      v10 = v36;
      if (sub_1C4F02048())
      {
        *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1C4A8D90C(v31, v29, v32, a1);
          v25 = v24;
          swift_bridgeObjectRelease_n();
          return v25;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(v4 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4723628(v27, v9, a1, v33, a3);

  MEMORY[0x1C6942830](v27, -1, -1);
  swift_bridgeObjectRelease_n();
  return v25;
}

uint64_t sub_1C47234AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = result;
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_1C4415EA8();
    result = sub_1C4F02048();
    if (result)
    {
      *(v20 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1C4A8D90C(v20, a2, v21, a3);
        v18 = v17;

        return v18;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C4723628(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1C47234AC(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t sub_1C472376C()
{
  result = qword_1EDDDFF68;
  if (!qword_1EDDDFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDFF68);
  }

  return result;
}

uint64_t sub_1C47237FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89C8, &unk_1C4F23170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingFactsFeaturizer.EntityTaggingFactsFeaturizerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C472399C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C47239BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_1C47239FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4723A70()
{
  result = qword_1EC0BC030;
  if (!qword_1EC0BC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC030);
  }

  return result;
}

uint64_t sub_1C4723AC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C4723B04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C4723B88(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v21 == v5)
    {
      goto LABEL_16;
    }

    v7 = *(type metadata accessor for PHPersonStructs.EntityAliasRelationshipType(0) - 8);
    a1(&v22, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

LABEL_16:
      sub_1C44030B0();
      return;
    }

    v8 = v22;
    v9 = *(v22 + 16);
    v10 = *(v6 + 16);
    if (__OFADD__(v10, v9))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v6 + 24) >> 1)
    {
      sub_1C4401750();
      sub_1C44C9240(v11, v12, v13, v14);
      v6 = v15;
    }

    if (*(v8 + 16))
    {
      v16 = (*(v6 + 24) >> 1) - *(v6 + 16);
      type metadata accessor for EntityTriple(0);
      if (v16 < v9)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v17 = *(v6 + 16);
        v18 = __OFADD__(v17, v9);
        v19 = v17 + v9;
        if (v18)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v19;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C4723D68(void (*a1)(uint64_t *__return_ptr, int *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (a3 + 32);
  if (v4)
  {
    while (1)
    {
      v16 = *v6;
      a1(&v15, &v16, a2);
      if (v3)
      {

        return;
      }

      v7 = v15;
      v8 = *(v15 + 16);
      v9 = *(v5 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
      {
        sub_1C458B504();
        v5 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_19;
        }

        sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v5 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      ++v6;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1C4723EE0(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = (a3 + 72);
  if (v3)
  {
    while (1)
    {
      v20 = v3;
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v22[0] = v6;
      v22[1] = v7;
      v22[2] = v9;
      v22[3] = v8;
      v22[4] = v10;
      v23 = v11;
      sub_1C45D7F64(v6, v7, v9, v8, v10, v11);
      a1(&v24, v22);
      if (v21)
      {
        sub_1C45D8070(v6, v7, v9, v8, v10, v11);

        return;
      }

      sub_1C45D8070(v6, v7, v9, v8, v10, v11);
      v12 = v24;
      v13 = *(v24 + 16);
      v14 = *(v4 + 16);
      if (__OFADD__(v14, v13))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v4 + 24) >> 1)
      {
        sub_1C458B504();
        v4 = v15;
      }

      if (*(v12 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v13)
        {
          goto LABEL_19;
        }

        sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
        swift_arrayInitWithCopy();

        if (v13)
        {
          v16 = *(v4 + 16);
          v17 = __OFADD__(v16, v13);
          v18 = v16 + v13;
          if (v17)
          {
            goto LABEL_20;
          }

          *(v4 + 16) = v18;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_18;
        }
      }

      v5 += 48;
      v3 = v20 - 1;
      if (v20 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1C47240B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    while (1)
    {
      v10 = sub_1C4416050();
      v11(v10);
      if (v3)
      {

        goto LABEL_16;
      }

      sub_1C441E354();
      if (v12)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v4 > *(v9 + 24) >> 1)
      {
        sub_1C4401750();
        sub_1C458EFF4();
        v9 = v13;
      }

      if (*(v6 + 16))
      {
        sub_1C4414A30();
        if (v15 != v12)
        {
          goto LABEL_19;
        }

        v4 = v9 + 32 * v14;
        v16 = sub_1C456902C(&qword_1EC0B8B10, &qword_1C4F0EF40);
        sub_1C4426B00(v16);

        if (v5)
        {
          v17 = *(v9 + 16);
          v12 = __OFADD__(v17, v5);
          v18 = v17 + v5;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v9 + 16) = v18;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      v8 += 40;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1C44030B0();
  }
}

uint64_t sub_1C47241D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore23EntityTaggingFeaturizer____lazy_storage___calendar;
  swift_beginAccess();
  sub_1C4729CD4(v1 + v9, v8);
  v10 = sub_1C4EF9F88();
  if (sub_1C44157D4(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_1C4729D44(v8);
  v11 = objc_autoreleasePoolPush();
  sub_1C4EF9F58();
  objc_autoreleasePoolPop(v11);
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  sub_1C4401750();
  sub_1C440BAA8(v12, v13, v14, v15);
  swift_beginAccess();
  sub_1C4630E08(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1C4724390(char a1)
{
  if (a1)
  {
    return 0x6550736F746F6850;
  }

  else
  {
    return 0x6E6F73726550;
  }
}

uint64_t sub_1C47243CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

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

uint64_t sub_1C4724420(char a1)
{
  if (a1)
  {
    return 0x6550736F746F6870;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

uint64_t sub_1C4724480@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C47243CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C47244B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4724420(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C47244E4()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C4724530(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_1C4724530@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v1 = sub_1C4EF9F68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1C4EF9F88();
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v17 = *(v8 + 8);
  v42 = v8 + 8;
  v43 = v7;
  v38 = v17;
  v17(v10, v7);
  v18 = *MEMORY[0x1E6969AB0];
  v19 = *(v2 + 104);
  v19(v6, v18, v1);
  v37 = sub_1C4EF9F78();
  v20 = *(v2 + 8);
  v20(v6, v1);
  v19(v6, v18, v1);
  v21 = v39;
  v19(v39, *MEMORY[0x1E6969A10], v1);
  v22 = v21;
  v23 = sub_1C4EF9F48();
  v36 = v24;
  LOBYTE(v7) = v25;
  v20(v22, v1);
  v26 = (v20)(v6, v1);
  if (v7)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v26);
    v28 = v36;
    v29 = v37;
    *(&v35 - 4) = v16;
    *(&v35 - 3) = v29;
    *(&v35 - 2) = v13;
    sub_1C49BFC78(sub_1C4729C2C, (&v35 - 6), v23, v28, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  *v46 = v27;
  v38(v13, v43);
  return (*(v40 + 8))(v16, v41);
}

uint64_t sub_1C47248E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C4EF9F68();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  result = (*(v7 + 104))(v10, *MEMORY[0x1E6969A48], v6, v8);
  if (__OFSUB__(v11, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1C4724A18()
{
  v0 = sub_1C4EF9E48();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C4EF9D48();
  v8 = sub_1C4EF9D98();
  (*(v2 + 8))(v6, v0);
  [v7 setLocale_];

  sub_1C496C3A0(1162167621, 0xE400000000000000, v7);
  v9 = sub_1C4EF9BF8();
  v10 = [v7 stringFromDate_];

  v11 = sub_1C4F01138();
  return v11;
}

void sub_1C4724B80(void *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4409678(a1, a1[3]);
  (*(v7 + 104))(v11, *MEMORY[0x1E69A9458], v5);
  v12 = sub_1C45E1398();
  v13 = v2;
  if (v2)
  {
    (*(v7 + 8))(v11, v5);
    if (qword_1EDDFECB0 != -1)
    {
LABEL_35:
      sub_1C44064A8();
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "EntityTaggingFeaturizer: unable to query loiVisits.", v17, 2u);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    type metadata accessor for BMLocationSemanticUserSpecificPlaceType(0);
    sub_1C4729C8C(&qword_1EC0BC040, type metadata accessor for BMLocationSemanticUserSpecificPlaceType, &unk_1C4F0C7BC);
    v18 = sub_1C4F00F28();

    goto LABEL_31;
  }

  v19 = v12;
  (*(v7 + 8))(v11, v5);
  v20 = *(v19 + 16);
  if (!v20)
  {

    v18 = MEMORY[0x1E69E7CC8];
LABEL_31:
    *a2 = v18;
    return;
  }

  v44 = a2;
  v13 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  v21 = (v19 + 72);
  v45 = v19;
  v46 = *(v19 + 16);
  while (1)
  {
    if (v13 >= *(v19 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = *(v21 - 3);
    v22 = *v21 != 14 || a2 == 0;
    if (!v22 && (a2 & 0x100000000) != 0)
    {
      if (!v18[2])
      {
        break;
      }

      sub_1C457EB4C();
      if ((v24 & 1) == 0)
      {
        break;
      }
    }

LABEL_17:
    ++v13;
    v21 += 48;
    if (v20 == v13)
    {

      a2 = v44;
      goto LABEL_31;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C457EB4C();
  sub_1C4434FB8();
  if (__OFADD__(v27, v28))
  {
    goto LABEL_33;
  }

  v29 = v25;
  v30 = v26;
  sub_1C456902C(&qword_1EC0BC048, &unk_1C4F23530);
  if ((sub_1C4F02458() & 1) == 0)
  {
LABEL_25:
    if (v30)
    {
      sub_1C43FC224((v18[7] + 48 * v29));
      v34 = *(v33 + 40);
      *(v33 + 40) = 14;
      sub_1C45A23B4(v35, v36, v37, v38, v39, v34);
    }

    else
    {
      sub_1C4401D38(&v18[v29 >> 6]);
      *(v18[6] + 4 * v29) = a2;
      sub_1C43FC224((v18[7] + 48 * v29));
      *(v40 + 40) = 14;
      v41 = v18[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_34;
      }

      v18[2] = v43;
    }

    v19 = v45;
    v20 = v46;
    goto LABEL_17;
  }

  v31 = sub_1C457EB4C();
  if ((v30 & 1) == (v32 & 1))
  {
    v29 = v31;
    goto LABEL_25;
  }

  type metadata accessor for BMLocationSemanticUserSpecificPlaceType(0);
  sub_1C4F029F8();
  __break(1u);
}

uint64_t sub_1C4724FA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v7 = 0x6550736F746F6850;
  }

  else
  {
    v7 = 0x6E6F73726550;
  }

  if (a3)
  {
    v8 = 0xEC0000006E6F7372;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = 0x6E6F73726570;
  if (a3)
  {
    v9 = 0x6550736F746F6870;
  }

  v14 = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44CF75C(1, a1, a2);
  v10 = sub_1C4F01F58();
  v12 = v11;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C8190C(1uLL, a1, a2);
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01308();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x6972616C75706F50, 0xEF6E657669477974);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v7, v8);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x6972616C75706F50, 0xEF6E657669477974);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a1, a2);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F95030);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a1, a2);

  *a4 = v10;
  a4[1] = v12;
  a4[2] = v14;
  a4[3] = v8;
  a4[4] = v14;
  a4[5] = v8;
  return result;
}

void sub_1C4725204(char a1)
{
  v162 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v159 = v6 - v5;
  v185 = MEMORY[0x1E69E7CD0];
  v171 = a1;
  if (a1)
  {
    v7 = 0x6550736F746F6870;
  }

  else
  {
    v7 = 0x6E6F73726570;
  }

  if (a1)
  {
    v8 = 0xEC0000006E6F7372;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  *&v182[0] = v7;
  *(&v182[0] + 1) = v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C441EB88();
  MEMORY[0x1C6940010](v9);
  v10 = v182[0];
  *&v182[0] = v7;
  *(&v182[0] + 1) = v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F95010);

  v11 = v182[0];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  inited[1] = xmmword_1C4F0CE60;
  inited[2] = v10;
  inited[3] = v11;
  v155 = inited;
  v13 = sub_1C47244E4();
  v14 = *(v13 + 16);
  v156 = v3;
  if (v14)
  {
    v15 = sub_1C4410B88(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0(v15, v14, 0);
    v16 = *&v182[0];
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v170 = v18;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v165 = *(v17 + 56);
    v20 = (v17 - 8);
    do
    {
      v170(v159, v19, v162);
      v21 = sub_1C4724A18();
      v23 = v22;
      (*v20)(v159, v162);
      *&v182[0] = v16;
      v25 = v16[2];
      v24 = v16[3];
      if (v25 >= v24 >> 1)
      {
        v27 = sub_1C43FCFE8(v24);
        sub_1C44CD9C0(v27, v25 + 1, 1);
        v16 = *&v182[0];
      }

      v16[2] = v25 + 1;
      v26 = &v16[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v19 += v165;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v28 = 0;
  v178 = MEMORY[0x1E69E7CC0];
  v29 = v16[2];
  v30 = v16 + 5;
  while (v29 != v28)
  {
    if (v28 >= v16[2])
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      return;
    }

    ++v28;
    v32 = *(v30 - 1);
    v31 = *v30;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4724FA0(v32, v31, v171 & 1, v182);
    sub_1C440F588();
    v33 = v183;
    v34 = v184;
    v35 = swift_initStackObject();
    sub_1C4406B88(v35);
    *(v36 + 64) = v33;
    *(v36 + 72) = v34;

    sub_1C449ADBC(v35);
    v30 += 2;
  }

  v37 = 0;
  v154 = v178;
  v172 = MEMORY[0x1E69E7CC0];
  do
  {
    switch(byte_1F43D2B78[v37 + 32])
    {
      case 1:
      case 3:
        sub_1C4409C34();
        break;
      case 2:
        sub_1C44130A4();
        break;
      default:
        break;
    }

    ++v37;
    sub_1C4415EA8();
    v38 = sub_1C4F01FD8();
    v40 = v39;

    sub_1C442FCF8();
    sub_1C4724FA0(v38, v40, v41, v42);
    sub_1C440F588();
    v43 = v183;
    v44 = v184;

    v45 = swift_initStackObject();
    sub_1C4406B88(v45);
    *(v46 + 64) = v43;
    *(v46 + 72) = v44;
    sub_1C449ADBC(v46);
  }

  while (v37 != 4);
  v153 = v172;
  v47 = sub_1C47244E4();
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = sub_1C4410B88(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0(v49, v48, 0);
    v50 = *&v182[0];
    v51 = v156 + 16;
    v166 = *(v156 + 16);
    v52 = v47 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
    v157 = *(v156 + 72);
    v53 = (v51 - 8);
    do
    {
      v54 = v51;
      v166(v159, v52, v162);
      v55 = sub_1C4724A18();
      v57 = v56;
      (*v53)(v159, v162);
      *&v182[0] = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      if (v59 >= v58 >> 1)
      {
        v61 = sub_1C43FCFE8(v58);
        sub_1C44CD9C0(v61, v59 + 1, 1);
        v50 = *&v182[0];
      }

      *(v50 + 16) = v59 + 1;
      v60 = v50 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v52 += v157;
      --v48;
      v51 = v54;
    }

    while (v48);
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v62 = 0;
  v173 = MEMORY[0x1E69E7CC0];
  v160 = v50;
  v163 = *(v50 + 16);
  v158 = v50 + 32;
  v63 = v171;
  while (v62 != v163)
  {
    if (v62 >= *(v50 + 16))
    {
      goto LABEL_92;
    }

    v64 = *(v158 + 16 * v62 + 8);
    v167 = v62 + 1;
    v176 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0(0, 4, 0);
    v65 = 0;
    do
    {
      v66 = 0xE500000000000000;
      v67 = 0x746867696ELL;
      switch(byte_1F43D8AE0[v65 + 32])
      {
        case 1:
          v66 = 0xE700000000000000;
          goto LABEL_38;
        case 2:
          sub_1C44130A4();
          v66 = 0xE90000000000006ELL;
          break;
        case 3:
          v66 = 0xE700000000000000;
LABEL_38:
          sub_1C4409C34();
          break;
        default:
          break;
      }

      *&v182[0] = v67;
      *(&v182[0] + 1) = v66;
      v68 = sub_1C4F01FD8();
      v70 = v69;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v68, v70);

      sub_1C442FCF8();
      sub_1C4724FA0(v71, v64, v72, v73);
      v74 = v183;
      v75 = v184;

      v77 = *(v176 + 16);
      v76 = *(v176 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1C43FCFE8(v76);
        sub_1C440424C();
        sub_1C44CD9C0(v79, v80, v81);
      }

      ++v65;
      *(v176 + 16) = v77 + 1;
      v78 = v176 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v75;
    }

    while (v65 != 4);

    sub_1C449ADBC(v176);
    v63 = v171;
    v50 = v160;
    v62 = v167;
  }

  sub_1C440E1AC();
  sub_1C44170E0();

  v82 = 0;
  v161 = v173;
  v174 = MEMORY[0x1E69E7CC0];
  do
  {
    v83 = v82;
    v84 = sub_1C4F01FD8();
    v86 = v85;

    sub_1C4724FA0(v84, v86, v63 & 1, v182);
    v164 = v182[1];
    v168 = v182[0];
    v87 = v183;
    v88 = v184;
    sub_1C440E1AC();

    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_1C4F0C890;
    *(v89 + 32) = v168;
    *(v89 + 48) = v164;
    *(v89 + 64) = v87;
    *(v89 + 72) = v88;
    sub_1C44170E0();
    sub_1C449ADBC(v90);
    v82 = 1;
  }

  while ((v83 & 1) == 0);
  v91 = 0;
  v92 = 0;
  v93 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  do
  {
    v169 = v91;
    v94 = *(&unk_1F43D8B30 + v92 + 32);
    v175 = v93;
    sub_1C44CD9C0(0, 4, 0);
    v95 = 0;
    if (v94)
    {
      v96 = v86;
    }

    else
    {
      v96 = v88;
    }

    do
    {
      v97 = byte_1F43D8B58[v95 + 32];
      *&v182[0] = v96;
      *(&v182[0] + 1) = 0xE700000000000000;
      sub_1C4F01FD8();
      v99 = v98;

      switch(v97)
      {
        case 1:
        case 3:
          sub_1C4409C34();
          break;
        case 2:
          sub_1C44130A4();
          break;
        default:
          break;
      }

      v100 = sub_1C4F01FD8();
      v102 = v101;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v100, v102);

      sub_1C442FCF8();
      sub_1C4724FA0(v103, v99, v104, v105);
      v86 = v183;
      v88 = v184;

      v107 = *(v175 + 16);
      v106 = *(v175 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_1C43FCFE8(v106);
        sub_1C440424C();
        sub_1C44CD9C0(v109, v110, v111);
      }

      ++v95;
      *(v175 + 16) = v107 + 1;
      v108 = v175 + 16 * v107;
      *(v108 + 32) = v86;
      *(v108 + 40) = v88;
    }

    while (v95 != 4);
    sub_1C449ADBC(v175);
    sub_1C440E1AC();
    sub_1C44170E0();
  }

  while ((v169 & 1) == 0);
  v179 = v93;
  sub_1C44CD9C0(0, 9, 0);
  v112 = 0;
  v113 = v179;
  do
  {
    v114 = 0xE500000000000000;
    v115 = 0x7065656C53;
    switch(*(&unk_1F43D6B00 + v112 + 32))
    {
      case 1:
        v114 = 0xE600000000000000;
        v115 = 0x6D6F74737543;
        break;
      case 2:
        v114 = 0xE700000000000000;
        v115 = 0x746C7561666544;
        break;
      case 3:
        break;
      case 4:
        v114 = 0xE700000000000000;
        goto LABEL_64;
      case 5:
        v114 = 0xE800000000000000;
        v115 = 0x6573696372657845;
        break;
      case 6:
        v114 = 0xE400000000000000;
        v115 = 1802661719;
        break;
      case 7:
        v115 = 0x6C616E6F73726550;
        v114 = 0xEC000000656D6954;
        break;
      case 8:
        v114 = 0xE700000000000000;
LABEL_64:
        sub_1C4409C34();
        break;
      case 9:
        v114 = 0xE600000000000000;
        v115 = 0x676E696D6147;
        break;
      case 0xA:
        v115 = 0x6E6C7566646E694DLL;
        v114 = 0xEB00000000737365;
        break;
      default:
        v115 = 0x7463657078656E55;
        v114 = 0xEA00000000006465;
        break;
    }

    *&v182[0] = v115;
    *(&v182[0] + 1) = v114;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x7375636F46, 0xE500000000000000);

    v116 = v182[0];
    v118 = *(v179 + 16);
    v117 = *(v179 + 24);
    if (v118 >= v117 >> 1)
    {
      sub_1C43FCFE8(v117);
      sub_1C440424C();
      sub_1C44CD9C0(v119, v120, v121);
    }

    *(v179 + 16) = v118 + 1;
    *(v179 + 16 * v118 + 32) = v116;
    v112 += 4;
  }

  while (v112 != 36);
  v122 = 0;
  v180 = MEMORY[0x1E69E7CC0];
  v123 = v113 + 40;
  v124 = v118 + 1;
  while (v124 != v122)
  {
    if (v122 >= *(v113 + 16))
    {
      goto LABEL_93;
    }

    ++v122;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444FD38();
    sub_1C440F588();
    v125 = v183;
    v126 = v184;
    v127 = swift_initStackObject();
    sub_1C4406B88(v127);
    *(v128 + 64) = v125;
    *(v128 + 72) = v126;

    sub_1C449ADBC(v127);
    v123 += 16;
  }

  v152 = v180;
  v129 = sub_1C4410B88(MEMORY[0x1E69E7CC0]);
  sub_1C44CD9C0(v129, 2, 0);
  v130 = *&v182[0];
  sub_1C4404E64();
  v134 = 0x6C6F6F686353;
  do
  {
    v135 = v131;
    v136 = 0xE700000000000000;
    v137 = 0x6E776F6E6B6E55;
    switch(dword_1F43D8AB8[v132 + 8])
    {
      case 0:
        break;
      case 1:
        v136 = 0xE400000000000000;
        v137 = 1701670728;
        break;
      case 2:
        v136 = 0xE400000000000000;
        v137 = 1802661719;
        break;
      case 3:
        v136 = 0xE600000000000000;
        v137 = v134;
        break;
      case 4:
        v136 = 0xE300000000000000;
        v137 = 7174471;
        break;
      default:
        v137 = v133;
        v136 = 0xEA00000000006465;
        break;
    }

    *&v182[0] = v130;
    v139 = *(v130 + 16);
    v138 = *(v130 + 24);
    if (v139 >= v138 >> 1)
    {
      sub_1C43FCFE8(v138);
      sub_1C440424C();
      sub_1C44CD9C0(v141, v142, v143);
      sub_1C4404E64();
      v130 = *&v182[0];
    }

    *(v130 + 16) = v139 + 1;
    v140 = v130 + 16 * v139;
    *(v140 + 32) = v137;
    *(v140 + 40) = v136;
    v131 = 1;
    v132 = 1;
  }

  while ((v135 & 1) == 0);
  v144 = 0;
  v181 = MEMORY[0x1E69E7CC0];
  v145 = v130 + 40;
  v146 = v139 + 1;
  while (v146 != v144)
  {
    if (v144 >= *(v130 + 16))
    {
      goto LABEL_94;
    }

    ++v144;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444FD38();
    sub_1C440F588();
    v147 = v183;
    v148 = v184;
    v149 = swift_initStackObject();
    sub_1C4406B88(v149);
    *(v150 + 64) = v147;
    *(v150 + 72) = v148;

    sub_1C449ADBC(v149);
    v145 += 16;
  }

  *&v182[0] = &unk_1F43D6B70;
  sub_1C449ADBC(&unk_1F43D8A18);
  v151 = *&v182[0];
  sub_1C4D401A4(v155);
  sub_1C4D401A4(v154);
  sub_1C4D401A4(v153);
  sub_1C4D401A4(v161);
  sub_1C4D401A4(v174);
  sub_1C4D401A4(v177);
  sub_1C4D401A4(v152);
  sub_1C4D401A4(v181);
  sub_1C4D401A4(v151);
}

void *sub_1C47260CC()
{
  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
  v2 = &off_1F43D6B98;
  v3 = 3;
  while (1)
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4405B08();
    sub_1C4434FB8();
    if (__OFADD__(v8, v9))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
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
LABEL_54:
      __break(1u);
      sub_1C44064A8();
      swift_once();
      v32 = sub_1C4F00978();
      sub_1C442B738(v32, qword_1EDDFECB8);
      v33 = v0;
      v34 = sub_1C4F00968();
      v35 = sub_1C4F01CD8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v86 = v37;
        *v36 = 136315138;
        swift_getErrorValue();
        v38 = sub_1C4F02A38();
        v40 = sub_1C441D828(v38, v39, &v86);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_1C43F8000, v34, v35, "Error in fetching top interaction mechanisms:  %s", v36, 0xCu);
        sub_1C440962C(v37);
        MEMORY[0x1C6942830](v37, -1, -1);
        MEMORY[0x1C6942830](v36, -1, -1);
      }

      else
      {
      }

      return isUniquelyReferenced_nonNull_native;
    }

    v10 = v6;
    v11 = v7;
    isUniquelyReferenced_nonNull_native = sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
    if (sub_1C4F02458())
    {
      v12 = sub_1C445FAA8(v5, v4);
      if ((v11 & 1) != (v13 & 1))
      {
        goto LABEL_55;
      }

      v10 = v12;
    }

    v0 = v86;
    v84 = v2;
    if (v11)
    {
      v14 = v3;
      sub_1C441B8B0((v86[7] + 16 * v10));
    }

    else
    {
      sub_1C4401D38(&v86[v10 >> 6]);
      sub_1C441C988();
      sub_1C441B8B0(v15);
      v16 = v86[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_47;
      }

      v14 = v3;
      v86[2] = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v87 = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441C1E0();
    swift_isUniquelyReferenced_nonNull_native();
    v86 = v0;
    sub_1C445FAA8(v5, v4);
    v20 = v19;
    sub_1C4434FB8();
    if (__OFADD__(v22, v23))
    {
      goto LABEL_46;
    }

    v24 = v21;
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_14:
    v27 = v14;
    if (v20)
    {

      isUniquelyReferenced_nonNull_native = v86;
      sub_1C441B8B0((v86[7] + 16 * v24));
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v86;
      sub_1C4401D38(&v86[v24 >> 6]);
      v28 = (v86[6] + 16 * v24);
      *v28 = v5;
      v28[1] = v4;
      sub_1C441B8B0((isUniquelyReferenced_nonNull_native[7] + 16 * v24));

      v29 = isUniquelyReferenced_nonNull_native[2];
      v17 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v17)
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native[2] = v30;
    }

    v2 = v84 + 2;
    v3 = v27 - 1;
    if (!v3)
    {
      sub_1C4409678((*(v81 + 16) + 56), *(*(v81 + 16) + 80));
      v0 = 0;
      v31 = sub_1C45E110C();
      v41 = 0;
      v79 = v31;
      v80 = *(v31 + 16);
      v42 = &off_1F43D6B98;
      v43 = (v31 + 48);
      while (v80 != v41)
      {
        if (v41 >= *(v31 + 16))
        {
          goto LABEL_49;
        }

        if (v41 == 3)
        {
          goto LABEL_50;
        }

        v83 = v42;
        v85 = v41;
        v0 = *(v43 - 1);
        v44 = *v43;
        v82 = v43;
        v46 = *(v42 - 1);
        v45 = *v42;
        v86 = GDInteractionMechanism.description.getter();
        v87 = v47;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](95, 0xE100000000000000);
        MEMORY[0x1C6940010](v0, v44);
        v48 = v87;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4405B08();
        sub_1C4434FB8();
        isUniquelyReferenced_nonNull_native = (v51 + v52);
        if (__OFADD__(v51, v52))
        {
          goto LABEL_51;
        }

        v53 = v49;
        v54 = v50;
        sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
        if (sub_1C4F02458())
        {
          v55 = sub_1C445FAA8(v46, v45);
          if ((v54 & 1) != (v56 & 1))
          {
            goto LABEL_55;
          }

          v53 = v55;
        }

        v0 = v86;
        if (v54)
        {
          v57 = (v86[7] + 16 * v53);
          *v57 = v86;
          v57[1] = v48;
        }

        else
        {
          sub_1C4401D38(&v86[v53 >> 6]);
          sub_1C441C988();
          *v58 = v86;
          v58[1] = v48;
          v59 = v0[2];
          v17 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v17)
          {
            goto LABEL_53;
          }

          v0[2] = v60;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v87 = v45;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C441C1E0();

        v61 = v46;
        v62 = GDInteractionMechanism.description.getter();
        v64 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v0;
        sub_1C445FAA8(v61, v45);
        v66 = v65;
        sub_1C4434FB8();
        if (__OFADD__(v68, v69))
        {
          goto LABEL_52;
        }

        v70 = v67;
        if (sub_1C4F02458())
        {
          v71 = sub_1C445FAA8(v61, v45);
          if ((v66 & 1) != (v72 & 1))
          {
            goto LABEL_55;
          }

          v70 = v71;
        }

        isUniquelyReferenced_nonNull_native = v86;
        if (v66)
        {
          v73 = (v86[7] + 16 * v70);
          *v73 = v62;
          v73[1] = v64;
        }

        else
        {
          sub_1C4401D38(&v86[v70 >> 6]);
          v74 = (v86[6] + 16 * v70);
          *v74 = v61;
          v74[1] = v45;
          v75 = (isUniquelyReferenced_nonNull_native[7] + 16 * v70);
          *v75 = v62;
          v75[1] = v64;
          v76 = isUniquelyReferenced_nonNull_native[2];
          v17 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v17)
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native[2] = v77;
        }

        v43 = v82 + 4;
        v42 = v83 + 2;
        v41 = v85 + 1;
        v31 = v79;
      }

      return isUniquelyReferenced_nonNull_native;
    }
  }

  v25 = sub_1C445FAA8(v5, v4);
  if ((v20 & 1) == (v26 & 1))
  {
    v24 = v25;
    goto LABEL_14;
  }

LABEL_55:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C472675C(uint64_t a1)
{
  v177 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v178 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v176 = v6 - v5;
  v184 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v170 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v175 = (&v170 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v170 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v170 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v170 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v170 - v26;
  sub_1C4EF9CC8();
  v188 = MEMORY[0x1E69E7CC0];
  v185 = v1;
  v28 = *(v1 + 16);
  sub_1C4EF9CC8();
  sub_1C440D360();
  v181 = type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C441596C();
  sub_1C4601D10(8, 4, a1, v29, v30, v31, v32, v33, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, a1, v28);
  v35 = v34;

  if (v35 < 2.0)
  {
    v36 = MEMORY[0x1E69E7CC0];
    (*(v8 + 8))(v27, v184);
    return v36;
  }

  v179 = v11;
  v171 = v27;
  v37 = *(v185 + 24);
  LODWORD(v172) = v37;
  if (v37)
  {
    v38 = 0x6550736F746F6870;
  }

  else
  {
    v38 = 0x6E6F73726570;
  }

  if (v37)
  {
    v39 = 0xEC0000006E6F7372;
  }

  else
  {
    v39 = 0xE600000000000000;
  }

  v186 = v38;
  v187 = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v40 = sub_1C441EB88();
  MEMORY[0x1C6940010](v40);

  v42 = v186;
  v41 = v187;
  v186 = v38;
  v187 = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F95010);

  v174 = v186;
  v173 = v187;
  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = v42;
  *(inited + 40) = v41;
  *(inited + 48) = sub_1C45D2400();
  *(inited + 56) = v44;
  sub_1C4EF9CC8();
  sub_1C440D360();
  swift_allocObject();
  sub_1C441596C();
  sub_1C442BAAC(6, v45, v46, v47, v48, v49, v50, v51, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183);
  v53 = v52;

  v54 = objc_opt_self();
  v55 = [v54 featureValueWithDouble_];
  v56 = v174;
  *(inited + 64) = v55;
  *(inited + 72) = v56;
  *(inited + 80) = v173;
  *(inited + 88) = sub_1C45D2400();
  *(inited + 96) = v57;
  sub_1C4EF9CC8();
  sub_1C440D360();
  swift_allocObject();
  v181 = v24;
  sub_1C45D689C();
  sub_1C442BAAC(7, v58, v59, v60, v61, v62, v63, v64, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183);
  v66 = v65;

  *(inited + 104) = [v54 featureValueWithDouble_];
  sub_1C49D3A70(inited);
  type metadata accessor for EntityTaggingFeaturizer(0);
  v67 = sub_1C47244E4();
  v68 = 0;
  v69 = 0;
  v186 = MEMORY[0x1E69E7CC0];
  v70 = *(v67 + 16);
  v71 = v8 + 8;
  while (1)
  {
    if (v70 == v68)
    {

      sub_1C440BC90();
      type metadata accessor for PartOfDayBehaviorHistogram(0);
      v77 = v181;
      sub_1C4EF9CC8();
      sub_1C44321EC();
      sub_1C4615124();
      v79 = v78;
      v80 = *(v178 + 8);
      v178 += 8;
      v174 = v80;
      (v80)(v70, v177);
      v81 = *v71;
      v170 = v71 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v183 = v81;
      v81(v77, v184);
      v82 = 0;
      v186 = MEMORY[0x1E69E7CC0];
      v83 = *(v79 + 16);
      while (v83 != v82)
      {
        if (v82 >= *(v79 + 16))
        {
          goto LABEL_58;
        }

        sub_1C4400254();
        sub_1C4425AB4();
        v84(v18);
        sub_1C43FD64C();
        sub_1C4727908(v85, v86, v87, v88);
        ++v82;
        sub_1C442C8CC();
        v89();
        sub_1C442DED4();
      }

      sub_1C440BC90();
      v90 = sub_1C47244E4();
      v91 = 0;
      v186 = MEMORY[0x1E69E7CC0];
      v92 = *(v90 + 16);
      v93 = v182;
      while (v92 != v91)
      {
        if (v91 >= *(v90 + 16))
        {
          goto LABEL_59;
        }

        sub_1C4400254();
        sub_1C4433324();
        v94();
        v95 = sub_1C440309C();
        sub_1C4727DB0(v95, v96, v93, v97);
        ++v91;
        sub_1C442C8CC();
        v98();
        sub_1C442DED4();
      }

      sub_1C440BC90();
      type metadata accessor for PartOfWeekBehaviorHistogram(0);
      v99 = v181;
      sub_1C4EF9CC8();
      sub_1C44321EC();
      v100 = v99;
      v101 = sub_1C4615ED8(v99, v92);
      v102 = sub_1C440896C();
      v103(v102);
      v183(v100, v184);
      v104 = 0;
      v186 = MEMORY[0x1E69E7CC0];
      v105 = *(v101 + 16);
      while (v105 != v104)
      {
        if (v104 >= *(v101 + 16))
        {
          goto LABEL_60;
        }

        sub_1C4400254();
        sub_1C4425AB4();
        sub_1C4433324();
        v106();
        sub_1C43FD64C();
        sub_1C4728470(v107, v108, v109, v110);
        ++v104;
        sub_1C442C8CC();
        v111();
        sub_1C442DED4();
        v100 = v181;
      }

      sub_1C49D3A70(v186);
      sub_1C4EF9CC8();
      sub_1C44321EC();
      v112 = sub_1C4615ED8(v100, v104);
      v113 = sub_1C440896C();
      v114(v113);
      sub_1C442C8CC();
      v115();
      v116 = 0;
      v186 = MEMORY[0x1E69E7CC0];
      v117 = *(v112 + 16);
      v118 = v182;
      v119 = v179;
      while (v117 != v116)
      {
        if (v116 >= *(v112 + 16))
        {
          goto LABEL_61;
        }

        sub_1C4400254();
        sub_1C4425AB4();
        v120(v119);
        v121 = sub_1C440309C();
        sub_1C472886C(v121, v122, v118, v123);
        ++v116;
        sub_1C442C8CC();
        v124();
        sub_1C442DED4();
      }

      sub_1C440BC90();
      MEMORY[0x1EEE9AC00](v125);
      v126 = v171;
      v127 = v185;
      *(&v170 - 4) = v171;
      *(&v170 - 3) = v127;
      *(&v170 - 2) = v118;
      sub_1C4723D68(sub_1C4729C4C, (&v170 - 6), &unk_1F43D6B00);
      sub_1C49D3A70(v128);
      MEMORY[0x1EEE9AC00](v129);
      *(&v170 - 4) = v126;
      *(&v170 - 3) = v127;
      *(&v170 - 2) = v118;
      sub_1C4723EE0(sub_1C4729C6C, (&v170 - 6), v130);
      sub_1C49D3A70(v131);
      if (v172)
      {
        v132 = sub_1C4F02938();

        if ((v132 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      sub_1C45D2400();
      v133 = sub_1C47260CC();

      v134 = v133[2];
      if (v134)
      {
        v186 = MEMORY[0x1E69E7CC0];
        sub_1C459D810();
        v185 = v186;
        v135 = sub_1C4703354();
        v137 = v136;
        v139 = v138;
        v140 = (v133 + 8);
        v176 = sub_1C4577DBC();
        v69 = 0;
        v173 = v137;
        v172 = (v133 + 9);
        v174 = v134;
        v175 = v133 + 8;
        while ((v135 & 0x8000000000000000) == 0 && v135 < 1 << *(v133 + 32))
        {
          v141 = v135 >> 6;
          if ((*(v140 + 8 * (v135 >> 6)) & (1 << v135)) == 0)
          {
            goto LABEL_63;
          }

          if (*(v133 + 9) != v137)
          {
            goto LABEL_64;
          }

          v178 = v137;
          LODWORD(v177) = v139;
          v142 = v133[7];
          v143 = (v133[6] + 16 * v135);
          v181 = *v143;
          v144 = v133;
          v145 = v143[1];
          v146 = (v142 + 16 * v135);
          v147 = *v146;
          v148 = v146[1];
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v180 = sub_1C45D2400();
          v179 = v149;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v150 = sub_1C4594E18(v147, v148);

          v152 = v185;
          v186 = v185;
          v154 = *(v185 + 16);
          v153 = *(v185 + 24);
          if (v154 >= v153 >> 1)
          {
            sub_1C43FCFE8(v153);
            sub_1C459D810();
            v152 = v186;
          }

          *(v152 + 16) = v154 + 1;
          v155 = (v152 + 40 * v154);
          v155[4] = v181;
          v155[5] = v145;
          v156 = v179;
          v155[6] = v180;
          v155[7] = v156;
          v155[8] = v150;
          v157 = 1 << *(v144 + 32);
          if (v135 >= v157)
          {
            goto LABEL_65;
          }

          v140 = v175;
          v158 = v175[v141];
          if ((v158 & (1 << v135)) == 0)
          {
            goto LABEL_66;
          }

          v133 = v144;
          v185 = v152;
          if (*(v144 + 9) != v178)
          {
            goto LABEL_67;
          }

          v159 = v158 & (-2 << (v135 & 0x3F));
          if (v159)
          {
            v157 = __clz(__rbit64(v159)) | v135 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v160 = v141 << 6;
            v161 = v141 + 1;
            v162 = (v172 + 8 * v141);
            while (v161 < (v157 + 63) >> 6)
            {
              v164 = *v162++;
              v163 = v164;
              v160 += 64;
              ++v161;
              if (v164)
              {
                sub_1C4410284(v151, v178);
                v157 = __clz(__rbit64(v163)) + v160;
                goto LABEL_51;
              }
            }

            sub_1C4410284(v151, v178);
          }

LABEL_51:
          v139 = 0;
          ++v69;
          v135 = v157;
          v137 = v173;
          if (v69 == v174)
          {

            v165 = v185;
            goto LABEL_54;
          }
        }

        goto LABEL_62;
      }

      v165 = MEMORY[0x1E69E7CC0];
LABEL_54:
      sub_1C49D3A70(v165);
LABEL_55:
      v36 = v188;
      v183(v171, v184);
      return v36;
    }

    if (v68 >= *(v67 + 16))
    {
      break;
    }

    sub_1C4400254();
    sub_1C4433324();
    v72();
    sub_1C43FD64C();
    sub_1C4727548(v73, v74, v75, v76);
    ++v68;
    (*v71)(v21, &v188);
    sub_1C442DED4();
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
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
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);

  sub_1C442C8CC();
  v169(v167, v168);

  __break(1u);
  return result;
}

id sub_1C4727548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = a4;
  v59 = sub_1C4EF9CD8();
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EntityTaggingFeaturizer(0);
  v61 = a1;
  v10 = sub_1C4724A18();
  sub_1C4724FA0(v10, v11, *(a2 + 24), &v63);
  v13 = v63;
  v12 = v64;
  v53 = v65;
  v60 = v66;
  v55 = v68;
  v56 = v67;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0C890;
  *(v14 + 32) = v13;
  v54 = v12;
  *(v14 + 40) = v12;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v14 + 48) = sub_1C45D2400();
  *(v14 + 56) = v15;
  v16 = *(a2 + 16);
  v52 = *(v7 + 16);
  v62 = v7 + 16;
  v49 = v9;
  v17 = v59;
  v52(v9, a1, v59);
  v63 = 0;
  LOWORD(v64) = 256;
  type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(3, 0, a3, v18, v19, v20, v21, v22, v49, v16, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  v24 = v23;

  v25 = objc_opt_self();
  v51 = v25;
  v26 = [v25 featureValueWithDouble_];
  v27 = v53;
  *(v14 + 64) = v26;
  *(v14 + 72) = v27;
  *(v14 + 80) = v60;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v14 + 88) = sub_1C45D2400();
  *(v14 + 96) = v28;
  v29 = v49;
  v30 = v52;
  v52(v49, v61, v17);
  v63 = 0;
  LOWORD(v64) = 256;
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(3, 1, a3, v31, v32, v33, v34, v35, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  v37 = v36;

  *(v14 + 104) = [v25 featureValueWithDouble_];

  v38 = v55;
  *(v14 + 112) = v56;
  *(v14 + 120) = v38;
  *(v14 + 128) = sub_1C45D2400();
  *(v14 + 136) = v39;
  v40 = sub_1C45979B8(&unk_1F43D6A60);
  v30(v29, v61, v59);
  v63 = 0;
  LOWORD(v64) = 256;
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(v40, 3, a3, v41, v42, v43, v44, v45, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  v47 = v46;

  result = [v51 featureValueWithDouble_];
  *(v14 + 144) = result;
  *v57 = v14;
  return result;
}

id sub_1C4727908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v69 = a4;
  v65 = a3;
  v72 = sub_1C4EF9CD8();
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EF9F88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartOfDayBehaviorHistogram(0);
  sub_1C47241D8(v11);
  v12 = sub_1C46150A0();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v75 = v12;
  v76 = v14;
  sub_1C4415EA8();
  v15 = sub_1C4F01FD8();
  v17 = v16;

  type metadata accessor for EntityTaggingFeaturizer(0);
  sub_1C4724FA0(v15, v17, *(a2 + 24), &v75);
  v19 = v75;
  v18 = v76;
  v64 = v77;
  v71 = v78;
  v67 = v80;
  v68 = v79;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0C890;
  *(v20 + 32) = v19;
  v66 = v18;
  *(v20 + 40) = v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = v65;
  *(v20 + 48) = sub_1C45D2400();
  *(v20 + 56) = v22;
  v23 = *(a2 + 16);
  v24 = *(v74 + 16);
  v62 = a1;
  v63 = v24;
  v73 = v23;
  v74 += 16;
  v61 = v7;
  v25 = a1;
  v26 = a1;
  v27 = v72;
  v24(v7, v26, v72);
  v75 = 0;
  LOWORD(v76) = 256;
  type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(1, 0, v21, v28, v29, v30, v31, v32, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v34 = v33;

  v35 = objc_opt_self();
  v36 = [v35 featureValueWithDouble_];
  v37 = v64;
  *(v20 + 64) = v36;
  *(v20 + 72) = v37;
  *(v20 + 80) = v71;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v20 + 88) = sub_1C45D2400();
  *(v20 + 96) = v38;
  v39 = v61;
  v40 = v25;
  v41 = v63;
  v63(v61, v40, v27);
  v75 = 0;
  LOWORD(v76) = 256;
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(1, 1, v21, v42, v43, v44, v45, v46, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v48 = v47;

  *(v20 + 104) = [v35 featureValueWithDouble_];

  v49 = v67;
  *(v20 + 112) = v68;
  *(v20 + 120) = v49;
  v50 = v21;
  *(v20 + 128) = sub_1C45D2400();
  *(v20 + 136) = v51;
  v52 = sub_1C45979B8(&unk_1F43D6A88);
  v41(v39, v62, v72);
  v75 = 0;
  LOWORD(v76) = 256;
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(v52, 3, v50, v53, v54, v55, v56, v57, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v59 = v58;

  result = [v35 featureValueWithDouble_];
  *(v20 + 144) = result;
  *v69 = v20;
  return result;
}

void sub_1C4727DB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v74 = a3;
  v59 = a4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_1C4EF9CD8();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = sub_1C4EF9F88();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PartOfDayBehaviorHistogram(0);
  v76 = a2;
  sub_1C47241D8(v19);
  v86 = a1;
  v68 = v20;
  sub_1C4615124();
  v22 = v21;
  v23 = *(v17 + 8);
  v69 = v19;
  v71 = v16;
  v70 = v17 + 8;
  v67 = v23;
  v23(v19, v16);
  v24 = v22;
  sub_1C446D094(v22, v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    goto LABEL_14;
  }

  sub_1C4EF9BE8();
  v25 = v79;
  v77 = *(v79 + 8);
  v78 = v79 + 8;
  v77(v8, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348C0();
    v24 = v56;
  }

  if (!*(v24 + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v26 = v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  (*(v25 + 24))(v26, v15, v9);
  type metadata accessor for EntityTaggingFeaturizer(0);
  v66 = sub_1C4724A18();
  v28 = *(v24 + 16);
  if (v28)
  {
    v75 = v27;
    v57 = v24;
    v58 = v15;
    v86 = v9;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1C459D810();
    v29 = v93;
    v65 = objc_opt_self();
    HIDWORD(v64) = *(v76 + 24);
    v63 = *(v76 + 16);
    v62 = *(v25 + 16);
    v79 = v25 + 16;
    v61 = *(v25 + 72);
    do
    {
      v84 = v29;
      v85 = v28;
      v30 = v72;
      v31 = v62;
      v62(v72, v26, v86);
      v32 = v69;
      sub_1C47241D8(v69);
      v33 = sub_1C46150A0();
      v35 = v34;
      v67(v32, v71);
      v87 = v33;
      v88 = v35;
      sub_1C4415EA8();
      v36 = sub_1C4F01FD8();
      v38 = v37;

      v91 = v66;
      v92 = v75;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v36, v38);

      sub_1C4724FA0(v91, v92, SBYTE4(v64), &v87);
      v82 = v90;
      v83 = v89;

      v39 = v74;
      v40 = sub_1C45D2400();
      v80 = v41;
      v81 = v40;
      v42 = sub_1C45979B8(&unk_1F43D6AB0);
      v43 = v86;
      v31(v73, v30, v86);
      v87 = 0;
      LOWORD(v88) = 256;
      type metadata accessor for BehaviorContext(0);
      swift_allocObject();
      sub_1C45D689C();
      sub_1C4601D10(v42, 3, v39, v44, v45, v46, v47, v48, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
      v29 = v84;
      v50 = v49;

      v51 = [v65 featureValueWithDouble_];
      v77(v30, v43);
      v93 = v29;
      v52 = *(v29 + 16);
      if (v52 >= *(v29 + 24) >> 1)
      {
        sub_1C459D810();
        v29 = v93;
      }

      *(v29 + 16) = v52 + 1;
      v53 = (v29 + 40 * v52);
      v54 = v82;
      v53[4] = v83;
      v53[5] = v54;
      v55 = v80;
      v53[6] = v81;
      v53[7] = v55;
      v53[8] = v51;
      v26 += v61;
      v28 = v85 - 1;
    }

    while (v85 != 1);
    v77(v58, v86);
  }

  else
  {

    v77(v15, v9);

    v29 = MEMORY[0x1E69E7CC0];
  }

  *v59 = v29;
}

id sub_1C4728470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a4;
  v61 = sub_1C4EF9CD8();
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartOfWeekBehaviorHistogram(0);
  v65 = sub_1C461E714(a1);
  v66 = v9;
  sub_1C4415EA8();
  v10 = sub_1C4F01FD8();
  v12 = v11;

  type metadata accessor for EntityTaggingFeaturizer(0);
  sub_1C4724FA0(v10, v12, *(a2 + 24), &v65);
  v14 = v65;
  v13 = v66;
  v55 = v67;
  v62 = v68;
  v57 = v70;
  v58 = v69;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0C890;
  *(v15 + 32) = v14;
  v56 = v13;
  *(v15 + 40) = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v15 + 48) = sub_1C45D2400();
  *(v15 + 56) = v16;
  v17 = *(a2 + 16);
  v63 = *(v64 + 16);
  v64 += 16;
  v52 = v8;
  v18 = a1;
  v54 = a1;
  v19 = a1;
  v20 = v61;
  v63(v8, v19, v61);
  v65 = 0;
  LOWORD(v66) = 256;
  type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(4, 0, a3, v21, v22, v23, v24, v25, v51, v52, v17, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v27 = v26;

  v28 = objc_opt_self();
  v29 = [v28 featureValueWithDouble_];
  v30 = v55;
  *(v15 + 64) = v29;
  *(v15 + 72) = v30;
  *(v15 + 80) = v62;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v15 + 88) = sub_1C45D2400();
  *(v15 + 96) = v31;
  v32 = v52;
  v63(v52, v18, v20);
  v65 = 0;
  LOWORD(v66) = 256;
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(4, 1, a3, v33, v34, v35, v36, v37, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v39 = v38;

  *(v15 + 104) = [v28 featureValueWithDouble_];

  v40 = v57;
  *(v15 + 112) = v58;
  *(v15 + 120) = v40;
  *(v15 + 128) = sub_1C45D2400();
  *(v15 + 136) = v41;
  v42 = sub_1C45979B8(&unk_1F43D6AD8);
  v63(v32, v54, v61);
  v65 = 0;
  LOWORD(v66) = 256;
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(v42, 3, a3, v43, v44, v45, v46, v47, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v49 = v48;

  result = [v28 featureValueWithDouble_];
  *(v15 + 144) = result;
  *v59 = v15;
  return result;
}

void sub_1C472886C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v80 = a3;
  v64 = a4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v9 = sub_1C4EF9CD8();
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v16 = sub_1C4EF9F88();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PartOfDayBehaviorHistogram(0);
  v83 = a2;
  sub_1C47241D8(v19);
  v92 = a1;
  v74 = v20;
  sub_1C4615124();
  v22 = v21;
  v23 = *(v17 + 8);
  v75 = v19;
  v77 = v16;
  v76 = v17 + 8;
  v73 = v23;
  v23(v19, v16);
  v24 = v22;
  sub_1C446D094(v22, v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    goto LABEL_14;
  }

  sub_1C4EF9BE8();
  v25 = v86;
  v84 = *(v86 + 8);
  v85 = v86 + 8;
  v84(v8, v9);
  v26 = v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348C0();
    v24 = v60;
  }

  if (!*(v24 + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v27 = v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  (*(v25 + 24))(v27, v15, v9);
  type metadata accessor for PartOfWeekBehaviorHistogram(0);
  v93 = sub_1C461E714(v92);
  v94 = v28;
  v72 = sub_1C4415EA8();
  v71 = sub_1C4F01FD8();
  v30 = v29;

  v31 = *(v24 + 16);
  if (v31)
  {
    v81 = v30;
    v62 = v24;
    v63 = v15;
    v82 = v9;
    v99 = MEMORY[0x1E69E7CC0];
    sub_1C459D810();
    v32 = v99;
    type metadata accessor for EntityTaggingFeaturizer(0);
    v70 = objc_opt_self();
    HIDWORD(v69) = *(v83 + 24);
    v68 = *(v83 + 16);
    v67 = *(v26 + 16);
    v86 = v26 + 16;
    v66 = *(v26 + 72);
    do
    {
      v90 = v27;
      v91 = v32;
      v92 = v31;
      v33 = v78;
      v34 = v27;
      v35 = v82;
      v36 = v67;
      v67(v78, v34, v82);
      v37 = v75;
      sub_1C47241D8(v75);
      v38 = sub_1C46150A0();
      v40 = v39;
      v73(v37, v77);
      v93 = v38;
      v94 = v40;
      v41 = sub_1C4F01FD8();
      v43 = v42;

      v97 = v71;
      v98 = v81;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v41, v43);

      sub_1C4724FA0(v97, v98, SBYTE4(v69), &v93);
      v88 = v96;
      v89 = v95;

      v44 = v80;
      v45 = sub_1C45D2400();
      v87 = v46;
      v47 = sub_1C45979B8(&unk_1F43D6B48);
      v36(v79, v33, v35);
      v93 = 0;
      LOWORD(v94) = 256;
      type metadata accessor for BehaviorContext(0);
      swift_allocObject();
      sub_1C45D689C();
      sub_1C4601D10(v47, 3, v44, v48, v49, v50, v51, v52, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      v32 = v91;
      v54 = v53;

      v55 = [v70 featureValueWithDouble_];
      v84(v33, v35);
      v99 = v32;
      v56 = *(v32 + 16);
      if (v56 >= *(v32 + 24) >> 1)
      {
        sub_1C459D810();
        v32 = v99;
      }

      *(v32 + 16) = v56 + 1;
      v57 = (v32 + 40 * v56);
      v58 = v88;
      v57[4] = v89;
      v57[5] = v58;
      v59 = v87;
      v57[6] = v45;
      v57[7] = v59;
      v57[8] = v55;
      v27 = v90 + v66;
      v31 = v92 - 1;
    }

    while (v92 != 1);
    v84(v63, v82);
  }

  else
  {

    v84(v15, v9);

    v32 = MEMORY[0x1E69E7CC0];
  }

  *v64 = v32;
}

uint64_t sub_1C4728F7C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v58 = a5;
  v9 = sub_1C4EF9CD8();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = *a1;
  (*(v13 + 16))(&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v60 = 0;
  LOWORD(v61) = 256;
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v14 = (sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0D130;
  v17 = v16 + v15;
  v18 = v16 + v15 + v14[14];
  v19 = *MEMORY[0x1E69A9438];
  v20 = sub_1C4EFDAB8();
  (*(*(v20 - 8) + 104))(v17, v19, v20);
  *v18 = sub_1C463C1B4(v12);
  *(v18 + 8) = v21;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = v12 | 0x100000000;
  *(v18 + 40) = 4;
  sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
  sub_1C4729C8C(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
  sub_1C4F00F28();
  type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C45D689C();
  v23 = v22;
  type metadata accessor for EntityTaggingFeaturizer(0);
  v60 = sub_1C463C1B4(v12);
  v61 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x7375636F46, 0xE500000000000000);

  sub_1C4724FA0(v60, v61, *(a3 + 24), &v60);
  v25 = v60;
  v26 = v61;
  v27 = v63;
  v57 = v64;
  v55 = v62;
  v56 = v65;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C4F0C890;
  *(v28 + 32) = v25;
  *(v28 + 40) = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v28 + 48) = sub_1C45D2400();
  *(v28 + 56) = v29;
  sub_1C4601D10(11, 0, a4, v23, v30, v31, v32, v33, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v36 featureValueWithDouble_];
  v38 = v55;
  *(v28 + 64) = v37;
  *(v28 + 72) = v38;
  *(v28 + 80) = v27;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v28 + 88) = sub_1C45D2400();
  *(v28 + 96) = v39;
  sub_1C4601D10(11, 1, a4, v23, v40, v41, v42, v43, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  *(v28 + 104) = [v36 featureValueWithDouble_];

  v44 = v56;
  *(v28 + 112) = v57;
  *(v28 + 120) = v44;
  *(v28 + 128) = sub_1C45D2400();
  *(v28 + 136) = v45;
  v46 = sub_1C45979B8(&unk_1F43D8B80);
  sub_1C4601D10(v46, 3, a4, v23, v47, v48, v49, v50, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v52 = v51;

  *(v28 + 144) = [v36 featureValueWithDouble_];

  *v58 = v28;
  return result;
}

void sub_1C47293F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_1C4EF9CD8();
  v14 = MEMORY[0x1EEE9AC00](v11);
  if (*(a1 + 40) == 14)
  {
    v15 = *(a1 + 32);
    v74 = a3;
    v16 = *(a1 + 24);
    v71 = *(a1 + 16);
    v72 = v15;
    v19 = a1;
    v18 = *a1;
    v17 = *(v19 + 8);
    (*(v13 + 16))(&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
    v77 = 0;
    LOWORD(v78) = 256;
    sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
    v20 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    v75 = a5;
    v21 = v20 - 8;
    v22 = *(*(v20 - 8) + 80);
    v76 = v5;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C4F0D130;
    v25 = v24 + v23;
    v26 = *(v21 + 56);
    v73 = a4;
    v27 = v25 + v26;
    v28 = *MEMORY[0x1E69A9458];
    v29 = sub_1C4EFDAB8();
    (*(*(v29 - 8) + 104))(v25, v28, v29);
    *v27 = v18;
    *(v27 + 8) = v17;
    v31 = v71;
    v30 = v72;
    *(v27 + 16) = v71;
    *(v27 + 24) = v16;
    *(v27 + 32) = v30;
    *(v27 + 40) = 14;
    sub_1C45D7F78(v18, v17, v31, v16, v30, 14);
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C4729C8C(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
    sub_1C4F00F28();
    type metadata accessor for BehaviorContext(0);
    swift_allocObject();
    sub_1C45D689C();
    v33 = v32;
    type metadata accessor for EntityTaggingFeaturizer(0);
    v34 = sub_1C463C120();
    sub_1C4724FA0(v34, v35, *(v74 + 24), &v77);
    v36 = v77;
    v37 = v78;
    v38 = v80;
    v72 = v81;
    v70 = v79;
    v71 = v82;

    sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C4F0C890;
    *(v39 + 32) = v36;
    *(v39 + 40) = v37;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v40 = v73;
    *(v39 + 48) = sub_1C45D2400();
    *(v39 + 56) = v41;
    sub_1C4601D10(5, 0, v40, v33, v42, v43, v44, v45, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    v47 = v46;
    v48 = objc_opt_self();
    v49 = [v48 featureValueWithDouble_];
    v50 = v70;
    *(v39 + 64) = v49;
    *(v39 + 72) = v50;
    *(v39 + 80) = v38;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v39 + 88) = sub_1C45D2400();
    *(v39 + 96) = v51;
    sub_1C4601D10(5, 1, v40, v33, v52, v53, v54, v55, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    *(v39 + 104) = [v48 featureValueWithDouble_];

    v56 = v71;
    *(v39 + 112) = v72;
    *(v39 + 120) = v56;
    *(v39 + 128) = sub_1C45D2400();
    *(v39 + 136) = v57;
    v58 = sub_1C45979B8(&unk_1F43D8BA8);
    a5 = v75;
    sub_1C4601D10(v58, 3, v40, v33, v59, v60, v61, v62, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    v64 = v63;

    *(v39 + 144) = [v48 featureValueWithDouble_];
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v65 = sub_1C4F00978();
    sub_1C442B738(v65, qword_1EDDFECB8);
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CD8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1C43F8000, v66, v67, "EntityTaggingFeaturizer: Unable to get location.", v68, 2u);
      MEMORY[0x1C6942830](v68, -1, -1);
    }

    v39 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v39;
}

uint64_t sub_1C472994C()
{

  sub_1C440962C((v0 + 40));
  sub_1C4729D44(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23EntityTaggingFeaturizer____lazy_storage___calendar);
  return v0;
}

uint64_t sub_1C472998C()
{
  sub_1C472994C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityTaggingFeaturizer(uint64_t a1)
{
  result = qword_1EDDE24F8;
  if (!qword_1EDDE24F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4729A38(uint64_t a1)
{
  sub_1C4630784(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingFeaturizer.FeaturizedEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4729BD8()
{
  result = qword_1EC0BC038;
  if (!qword_1EC0BC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC038);
  }

  return result;
}

uint64_t sub_1C4729C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4729CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4729D44(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1C4729DAC(uint64_t a1)
{
  v5 = sub_1C4F00008();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4406BA0();
  *(v1 + 24) = a1;
  sub_1C4EFEF48();
  swift_allocObject();

  sub_1C4EFEF38();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C4EFFFF8();
    sub_1C4EFFEC8();
    sub_1C472AB3C();
    v10 = sub_1C4EFEF18();
    (*(v7 + 8))(v3, v5);

    *(v1 + 16) = v10;
  }

  return v1;
}

uint64_t sub_1C4729FCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v10 = sub_1C4EFFE98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4406BA0();
  if (a3[2])
  {
    v25 = v12;
    v13 = a3[4];
    v14 = a3[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C0C2D8(v13, v14, v21);
    if (!v6)
    {

      v21[0] = v22;
      v21[1] = v23;
      v22 = v24;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C472A290(a1, a2, a3, v21);
      swift_unknownObjectRetain();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFFE88();
      sub_1C4EFFDD8();
      (*(v25 + 8))(v5, v10);
      swift_unknownObjectRelease();

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, v17, v18, "No feature view dependencies specified. Stopping since there's nowhere to retrieve features from", v19, 2u);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    sub_1C472AABC();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 2;
    return swift_willThrow();
  }
}

NSObject *sub_1C472A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v85 = a1;
  v9 = a4[1];
  v80 = *a4;
  v79 = v9;
  v81 = a4[2];
  v10 = sub_1C4778840();
  v11 = sub_1C4428DA0(v10);
  v82 = v4;
  v86 = a2;
  if (v11)
  {
    v12 = v11;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v89 = a3;
    v13 = 0;
    v14 = __dst[0];
    do
    {
      v15 = v14;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6940F90](v13, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v16 featureName];
      v19 = sub_1C4F01138();
      v21 = v20;

      v14 = v15;
      __dst[0] = v15;
      v22 = *(v15 + 16);
      v23 = *(v14 + 24);
      if (v22 >= v23 >> 1)
      {
        sub_1C44CD9C0(v23 > 1, v22 + 1, 1);
        v14 = __dst[0];
      }

      ++v13;
      *(v14 + 16) = v22 + 1;
      v24 = v14 + 16 * v22;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v12 != v13);

    v6 = v82;
    a3 = v89;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v83 = v14;
  v26 = *(a3 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459E008(0, v26, 0);
    v28 = v83;
    v27 = __dst[0];
    v29 = (a3 + 40);
    v84 = xmmword_1C4F0D130;
    do
    {
      v30 = *v29;
      v89 = *(v29 - 1);
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v31 = swift_allocObject();
      *(v31 + 16) = v84;
      v32 = v86;
      *(v31 + 32) = v85;
      *(v31 + 40) = v32;
      __dst[0] = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v34 >= v33 >> 1)
      {
        v25 = sub_1C459E008((v33 > 1), v34 + 1, 1);
        v28 = v83;
        v27 = __dst[0];
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 40 * v34;
      *(v35 + 32) = v89;
      *(v35 + 40) = v30;
      *(v35 + 48) = v28;
      *(v35 + 56) = v31;
      *(v35 + 64) = 0;
      v29 += 2;
      --v26;
    }

    while (v26);
    v6 = v82;
  }

  MEMORY[0x1EEE9AC00](v25);
  v73[16] = 0;
  v74 = v27;
  v75 = v80;
  v76 = v79;
  v77 = v36;
  v78 = 0;
  v37 = sub_1C49A5498(sub_1C470CD1C, v73);

  v38 = 0;
  v89 = *(v37 + 16);
  v5 = MEMORY[0x1E69E7CC8];
  v39 = 32;
  *&v84 = v37;
  v81 = 32;
LABEL_19:
  for (i = v39 + 80 * v38; ; i += 80)
  {
    if (v89 == v38)
    {

      if (qword_1EDDFECB0 == -1)
      {
LABEL_39:
        v66 = sub_1C4F00978();
        sub_1C442B738(v66, qword_1EDDFECB8);
        v67 = v86;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v43 = sub_1C4F00968();
        v68 = sub_1C4F01CC8();

        if (os_log_type_enabled(v43, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          __dst[0] = v70;
          *v69 = 134218242;
          *(v69 + 4) = v5[2];

          *(v69 + 12) = 2080;
          *(v69 + 14) = sub_1C441D828(v85, v67, __dst);
          _os_log_impl(&dword_1C43F8000, v43, v68, "EntityTaggingInferenceCore: Found %ld features for Entity: %s", v69, 0x16u);
          sub_1C440962C(v70);
          MEMORY[0x1C6942830](v70, -1, -1);
          MEMORY[0x1C6942830](v69, -1, -1);
        }

        else
        {
        }

        v71 = sub_1C4EFFA78();
        if (!v6)
        {
          v43 = v71;
        }

        return v43;
      }

LABEL_49:
      swift_once();
      goto LABEL_39;
    }

    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    memcpy(__dst, (v37 + i), 0x49uLL);
    sub_1C470CD44(__dst, &v87);
    v41 = objc_autoreleasePoolPush();
    v42 = sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v43 = v42;
    v44 = sub_1C4F01D38();
    if (v6)
    {

      objc_autoreleasePoolPop(v41);
      sub_1C470CDA0(__dst);
      return v43;
    }

    v45 = v44;
    v46 = v5;
    v47 = __dst[2];
    v48 = __dst[3];
    objc_autoreleasePoolPop(v41);
    if (v45)
    {
      break;
    }

    v49 = v48;
    v5 = v46;
    v50 = sub_1C445FAA8(v47, v49);
    if (v51)
    {
      v58 = v50;
      swift_isUniquelyReferenced_nonNull_native();
      v87 = v46;
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v5 = v87;

      sub_1C4F02478();
      sub_1C470CDA0(__dst);
      v37 = v84;
      v39 = v81;
LABEL_37:
      ++v38;
      goto LABEL_19;
    }

    sub_1C470CDA0(__dst);
    ++v38;
    v37 = v84;
  }

  LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
  v87 = v46;
  v52 = sub_1C445FAA8(v47, v48);
  if (__OFADD__(v46[2], (v53 & 1) == 0))
  {
    __break(1u);
    goto LABEL_51;
  }

  v54 = v52;
  v55 = v53;
  sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
  if ((sub_1C4F02458() & 1) == 0)
  {
    v39 = v81;
LABEL_32:
    v59 = v87;
    if (v55)
    {
      v60 = v87[7];
      v61 = *(v60 + 8 * v54);
      *(v60 + 8 * v54) = v45;

      sub_1C470CDA0(__dst);
      v5 = v59;
LABEL_36:
      v37 = v84;
      goto LABEL_37;
    }

    v87[(v54 >> 6) + 8] |= 1 << v54;
    v62 = (v59[6] + 16 * v54);
    *v62 = v47;
    v62[1] = v48;
    *(v59[7] + 8 * v54) = v45;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C470CDA0(__dst);
    v63 = v59[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (!v64)
    {
      v5 = v59;
      v59[2] = v65;
      goto LABEL_36;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v56 = sub_1C445FAA8(v47, v48);
  v39 = v81;
  if ((v55 & 1) == (v57 & 1))
  {
    v54 = v56;
    goto LABEL_32;
  }

LABEL_52:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

unint64_t sub_1C472AABC()
{
  result = qword_1EC0BC050;
  if (!qword_1EC0BC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC050);
  }

  return result;
}

uint64_t sub_1C472AB10(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1C472AB3C()
{
  result = qword_1EDDEFEA0;
  if (!qword_1EDDEFEA0)
  {
    sub_1C4EFFEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFEA0);
  }

  return result;
}

uint64_t sub_1C472ABA4(void *a1)
{
  v1 = [a1 pruner];
  v4[4] = sub_1C472ACF0;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C45B7938;
  v4[3] = &unk_1F43EA740;
  v2 = _Block_copy(v4);

  [v1 deleteEventsPassingTest_];

  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C472AC94(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 eventBody];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 hasEntityIdentifier];

  return v3;
}

void sub_1C472ACF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v39 = a4;
  v40 = a5;
  v37 = a1;
  v38 = a3;
  v35 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = (v8 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v36 = a2;
  v16 = v39;
  while (v13)
  {
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v15 << 6);
    if (*(*(a2 + 56) + 8 * v19) >= a6)
    {
      v20 = (*(a2 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v23 = sub_1C472AF54(v21, v22);
      v24 = sub_1C4F019C8();
      v25 = objc_allocWithZone(MEMORY[0x1E698EC50]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v26 = v37;
      v27 = v37;
      v28 = sub_1C472B5E0(v26, v23, v24, v38, v16);
      v29 = [v40 source];
      v30 = v34;
      sub_1C4EF9CC8();
      sub_1C4EF9AD8();
      v32 = v31;
      (*v33)(v30, v35);
      [v29 sendEvent:v28 timestamp:v32];

      a2 = v36;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C472AF54(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F00FF8();
  v4 = v3;
  v5 = v2 == 0x7465736E75 && v3 == 0xE500000000000000;
  if (v5 || (v6 = v2, (sub_1C43FEC00(0x7465736E75, 0xE500000000000000) & 1) != 0))
  {

    return 1;
  }

  v8 = v6 == 0x6E776F6E6B6E75 && v4 == 0xE700000000000000;
  if (v8 || (sub_1C43FEC00(0x6E776F6E6B6E75, 0xE700000000000000) & 1) != 0)
  {
    goto LABEL_17;
  }

  v9 = v6 == 0x726568746FLL && v4 == 0xE500000000000000;
  if (v9 || (sub_1C43FEC00(0x726568746FLL, 0xE500000000000000) & 1) != 0)
  {
    goto LABEL_17;
  }

  v10 = v6 == 0x666C6573796DLL && v4 == 0xE600000000000000;
  if (v10 || (sub_1C4419490(0x666C6573796DLL) & 1) != 0)
  {

    return 2;
  }

  else
  {
    v11 = v6 == 0x796C696D6166 && v4 == 0xE600000000000000;
    if (v11 || (sub_1C4419490(0x796C696D6166) & 1) != 0)
    {

      return 3;
    }

    else
    {
      v12 = v6 == 0x746E65726170 && v4 == 0xE600000000000000;
      if (v12 || (sub_1C4419490(0x746E65726170) & 1) != 0)
      {

        return 7;
      }

      else
      {
        v13 = v6 == 0x726568746F6DLL && v4 == 0xE600000000000000;
        if (v13 || (sub_1C4419490(0x726568746F6DLL) & 1) != 0)
        {

          return 8;
        }

        else
        {
          v14 = v6 == 0x726568746166 && v4 == 0xE600000000000000;
          if (v14 || (sub_1C4419490(0x726568746166) & 1) != 0)
          {

            return 9;
          }

          else
          {
            v15 = v6 == 0x676E696C626973 && v4 == 0xE700000000000000;
            if (v15 || (sub_1C43FEC00(0x676E696C626973, 0xE700000000000000) & 1) != 0)
            {

              return 10;
            }

            else
            {
              v16 = v6 == 0x726568746F7262 && v4 == 0xE700000000000000;
              if (v16 || (sub_1C43FEC00(0x726568746F7262, 0xE700000000000000) & 1) != 0)
              {

                return 11;
              }

              else
              {
                v17 = v6 == 0x726574736973 && v4 == 0xE600000000000000;
                if (v17 || (sub_1C4419490(0x726574736973) & 1) != 0)
                {

                  return 12;
                }

                else
                {
                  v18 = v6 == 0x726150646E617267 && v4 == 0xEB00000000746E65;
                  if (v18 || (sub_1C43FEC00(0x726150646E617267, 0xEB00000000746E65) & 1) != 0)
                  {

                    return 18;
                  }

                  else
                  {
                    v19 = v6 == 0x746F6D646E617267 && v4 == 0xEB00000000726568;
                    if (v19 || (sub_1C43FEC00(0x746F6D646E617267, 0xEB00000000726568) & 1) != 0)
                    {

                      return 19;
                    }

                    else
                    {
                      v20 = v6 == 0x746166646E617267 && v4 == 0xEB00000000726568;
                      if (v20 || (sub_1C43FEC00(0x746166646E617267, 0xEB00000000726568) & 1) != 0)
                      {

                        return 20;
                      }

                      else
                      {
                        v21 = v6 == 0x646C696843796DLL && v4 == 0xE700000000000000;
                        if (v21 || (sub_1C43FEC00(0x646C696843796DLL, 0xE700000000000000) & 1) != 0 || (v6 == 0x646C696863 ? (v22 = v4 == 0xE500000000000000) : (v22 = 0), v22 || (sub_1C43FEC00(0x646C696863, 0xE500000000000000) & 1) != 0))
                        {

                          return 4;
                        }

                        else
                        {
                          v23 = v6 == 7237491 && v4 == 0xE300000000000000;
                          if (v23 || (sub_1C43FEC00(7237491, 0xE300000000000000) & 1) != 0)
                          {

                            return 6;
                          }

                          else
                          {
                            v24 = v6 == 0x7265746867756164 && v4 == 0xE800000000000000;
                            if (v24 || (sub_1C43FEC00(0x7265746867756164, 0xE800000000000000) & 1) != 0)
                            {

                              return 5;
                            }

                            else
                            {
                              v25 = v6 == 0x72656E74726170 && v4 == 0xE700000000000000;
                              if (v25 || (sub_1C43FEC00(0x72656E74726170, 0xE700000000000000) & 1) != 0)
                              {

                                return 13;
                              }

                              else
                              {
                                v26 = v6 == 1701210487 && v4 == 0xE400000000000000;
                                if (v26 || (sub_1C43FEC00(1701210487, 0xE400000000000000) & 1) != 0)
                                {

                                  return 14;
                                }

                                else
                                {
                                  v27 = v6 == 0x646E6162737568 && v4 == 0xE700000000000000;
                                  if (v27 || (sub_1C43FEC00(0x646E6162737568, 0xE700000000000000) & 1) != 0)
                                  {

                                    return 15;
                                  }

                                  else
                                  {
                                    v28 = v6 == 0x646E65697266 && v4 == 0xE600000000000000;
                                    if (v28 || (sub_1C4419490(0x646E65697266) & 1) != 0)
                                    {

                                      return 23;
                                    }

                                    else
                                    {
                                      v29 = v6 == 0xD000000000000010 && 0x80000001C4F950E0 == v4;
                                      if (v29 || (sub_1C43FEC00(0xD000000000000010, 0x80000001C4F950E0) & 1) != 0)
                                      {

                                        return 24;
                                      }

                                      else
                                      {
                                        v30 = v6 == 0x756761656C6C6F63 && v4 == 0xE900000000000065;
                                        if (!v30 && (sub_1C43FEC00(0x756761656C6C6F63, 0xE900000000000065) & 1) == 0)
                                        {
                                          v31 = v6 == 0x726F62686769656ELL && v4 == 0xE800000000000000;
                                          if (!v31 && (sub_1C43FEC00(0x726F62686769656ELL, 0xE800000000000000) & 1) == 0)
                                          {
                                            v32 = v6 == 0x74616D6573756F68 && v4 == 0xE900000000000065;
                                            if (!v32 && (sub_1C43FEC00(0x74616D6573756F68, 0xE900000000000065) & 1) == 0 && (v6 != 0x696E6D756C61 || v4 != 0xE600000000000000))
                                            {
                                              sub_1C4419490(0x696E6D756C61);
                                            }
                                          }

LABEL_17:

                                          return 0;
                                        }

                                        return 22;
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
      }
    }
  }
}

id sub_1C472B548(uint64_t a1)
{
  v1 = [BiomeLibrary() IntelligencePlatform];
  swift_unknownObjectRelease();
  v2 = [v1 EntityTagging];
  swift_unknownObjectRelease();
  v3 = [v2 PersonInference];
  swift_unknownObjectRelease();
  return v3;
}

id sub_1C472B5E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a5)
  {
    v10 = sub_1C4F01108();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithEntityIdentifier:a1 entityTagID:a2 score:a3 feedbackEventID:v10];

  return v11;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityTaggingInjectedTags.injectedTags()()
{
  v1 = sub_1C472B6C4();
  if (!v0 && v1 && !v1[2])
  {

    v1 = 0;
  }

  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1C472B6C4()
{
  v3 = type metadata accessor for Configuration(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C44098F0(v0, v6 - v5);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  sub_1C44194B0();
  KeyValueStore.init(config:domain:)(v7, v8, v9);
  if (!v1)
  {
    sub_1C442C8DC();
    v10 = sub_1C4598E14();
    v2 = v10;
    if (!v10)
    {
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C4F00978();
      sub_1C442B738(v12, qword_1EDE2DF70);
      v13 = sub_1C4F00968();
      v14 = sub_1C4F01CF8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C43F8000, v13, v14, "EntityTagging: Nil value for injected tags.", v15, 2u);
        MEMORY[0x1C6942830](v15, -1, -1);
      }
    }
  }

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityTaggingInjectedTags.clearInjectedTags()()
{
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4F00F28();
  sub_1C472B8CC();
}

void *sub_1C472B8CC()
{
  v2 = type metadata accessor for Configuration(0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C44098F0(v0, v5 - v4);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  sub_1C44194B0();
  result = KeyValueStore.init(config:domain:)(v6, v7, v8);
  if (!v1)
  {
    sub_1C442C8DC();
    sub_1C495C398();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(Swift::String mdID, Swift::String tagType, Swift::Double confidence)
{
  v35 = tagType;
  v4 = sub_1C456902C(&qword_1EC0BC058, &qword_1C4F23698);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1C4EFF488();
  sub_1C43FCDF8();
  v34 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v15 = sub_1C43FBD18(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v17, 1, v18) == 1)
  {
    sub_1C4423A0C(v17, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C472BD44();
    swift_allocError();
    sub_1C441F87C();
    *v25 = v26;
    v25[1] = 0x80000001C4F95100;
    swift_willThrow();
  }

  else
  {
    (*(v20 + 32))(v24, v17, v18);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF468();
    if (sub_1C44157D4(v7, 1, v8) == 1)
    {
      sub_1C4423A0C(v7, &qword_1EC0BC058, &qword_1C4F23698);
      sub_1C472BD44();
      swift_allocError();
      sub_1C441F87C();
      *v28 = v27 + 2;
      v28[1] = 0x80000001C4F95120;
      swift_willThrow();
    }

    else
    {
      v29 = v34;
      (*(v34 + 32))(v13, v7, v8);
      if (confidence < 0.0 || confidence > 1.0)
      {
        sub_1C472BD44();
        swift_allocError();
        sub_1C441F87C();
        *v32 = v31 + 25;
        v32[1] = 0x80000001C4F95150;
        swift_willThrow();
      }

      else
      {
        EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(confidence);
      }

      (*(v29 + 8))(v13, v8);
    }

    (*(v20 + 8))(v24, v18);
  }
}

unint64_t sub_1C472BD44()
{
  result = qword_1EC0BC060;
  if (!qword_1EC0BC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC060);
  }

  return result;
}

uint64_t EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(double a1)
{
  result = sub_1C472B6C4();
  if (!v1)
  {
    if (!result)
    {
      sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
      sub_1C4F00F28();
    }

    sub_1C4EFF048();
    v4 = sub_1C4663244();

    if (v4)
    {
      sub_1C4EFF478();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660594();

      sub_1C4EFF048();
    }

    else
    {
      sub_1C4EFF048();
      sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = sub_1C4EFF478();
      *(inited + 40) = v6;
      *(inited + 48) = a1;
      sub_1C4F00F28();
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4411BEC();
    sub_1C4661E9C();

    sub_1C472B8CC();
  }

  return result;
}

uint64_t type metadata accessor for EntityTaggingInjectedTags(uint64_t a1)
{
  result = qword_1EDDE17A8;
  if (!qword_1EDDE17A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C472BFF4(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C472C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1C4EF9D38();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a1 + 16);
  *(v7 + 16) = 3;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x80000001C4F95340;
  *(v7 + 48) = 0xD00000000000002CLL;
  *(v7 + 56) = 0x80000001C4F95360;
  *(v7 + 64) = 0xD00000000000002DLL;
  *(v7 + 72) = 0x80000001C4F95390;
  *(v7 + 80) = xmmword_1C4F23750;
  *(v7 + 96) = xmmword_1C4F23760;

  *(v7 + 112) = v18;
  *(v7 + 120) = *(a1 + 24);
  sub_1C44098F0(a2, v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_config);
  v19 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name);
  *v19 = a3;
  v19[1] = a4;
  v20 = *(v7 + 112);
  v21 = *(v7 + 120);
  v22 = *(v7 + 128);
  type metadata accessor for EntityTaggingPersonFeatureFetcher();
  v23 = swift_allocObject();
  v23[2] = &unk_1F43D8BD0;
  v23[3] = v20;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = a3;
  v23[7] = a4;
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_featureFetcher) = v23;
  v24 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_sessionID);
  *v24 = a5;
  v24[1] = a6;
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_kvStore) = a7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4EF9058();
  (*(v14 + 32))(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_collectionID, v17, v13);
  LOBYTE(v13) = [objc_opt_self() isInternalDevice];

  sub_1C4406BB8();
  sub_1C4453D40(a2, v25);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_isInternal) = v13;
  return v7;
}

void *sub_1C472C2EC(char a1, char a2)
{
  v3 = v2;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDDFECB8);

  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1C441D828(*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name), *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name + 8), &v14);
    _os_log_impl(&dword_1C43F8000, v7, v8, "%s: Fetching set of features to populate.", v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v14 = sub_1C47782B8();
  if (a1)
  {
    v11 = sub_1C477888C();
    sub_1C49D44B0(v11);
  }

  if (a2)
  {
    v12 = sub_1C4779518();
    sub_1C49D44B0(v12);
  }

  return v14;
}

uint64_t sub_1C472C460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v8 = v5;
  LOBYTE(v73) = a4;
  LOBYTE(v70) = a3;
  v10 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v68 = type metadata accessor for FeatureFetcher(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = (v16 - v15);
  if (qword_1EDDFECB0 != -1)
  {
LABEL_35:
    sub_1C44064A8();
    swift_once();
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDDFECB8);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();

  v66 = v13;
  v67 = v17;
  v72 = v8;
  v75 = a2;
  v71 = v7;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_1C441D828(*(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name), *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name + 8), &v78);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1C441D828(a1, a2, &v78);
    _os_log_impl(&dword_1C43F8000, v19, v20, "%s: Populating features for person entity %s.", v21, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v22 = sub_1C472C2EC(v70 & 1, v73 & 1);
  v23 = sub_1C4428DA0(v22);
  if (v23)
  {
    v24 = v23;
    v78 = MEMORY[0x1E69E7CC0];
    result = sub_1C4F02348();
    if (v24 < 0)
    {
      __break(1u);
      return result;
    }

    v26 = 0;
    v74 = v22 & 0xC000000000000001;
    v27 = v22;
    do
    {
      if (v74)
      {
        v28 = MEMORY[0x1C6940F90](v26, v22);
      }

      else
      {
        v28 = *(v22 + 8 * v26 + 32);
      }

      v29 = v28;
      ++v26;
      v30 = [v28 viewName];
      v31 = sub_1C4F01138();
      v33 = v32;

      v34 = [v29 featureName];
      a2 = sub_1C4F01138();
      v36 = v35;

      v37 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4673B1C(v31, v33, a2, v36, a1, v75);

      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      v22 = v27;
    }

    while (v24 != v26);

    v38 = v78;
    v17 = v67;
    v8 = v72;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  sub_1C44098F0(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_config, v17);
  v40 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name);
  v39 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name + 8);
  *(v17 + *(v68 + 20)) = v38;
  v41 = (v17 + *(v68 + 24));
  v73 = v40;
  *v41 = v40;
  v41[1] = v39;
  v70 = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42 = sub_1C46AB8A4();
  if (v42)
  {
    v13 = v42;
    sub_1C4F00318();
    v43 = type metadata accessor for EntityTaggingPersonDataCollection(0);
    v44 = (a5 + v43[5]);
    *v44 = 0;
    v44[1] = 0;
    v7 = (a5 + v43[6]);
    *v7 = 0;
    v7[1] = 0;
    v45 = (a5 + v43[7]);
    *v45 = 0;
    v45[1] = 0;
    v46 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
    sub_1C4400264(v46);
    v47 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
    sub_1C4400264(v47);
    v48 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
    sub_1C4400264(v48);
    v49 = a5 + v43[11];
    *v49 = 3;
    *(v49 + 8) = 0;
    v50 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_sessionID + 8);
    *v7 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_sessionID);
    v7[1] = v50;
    a1 = *(v13 + 16);
    if (a1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v51 = 0;
      v8 = (v13 + 40);
      v68 = 136315394;
      v76 = v13;
      while (1)
      {
        if (v51 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v52 = *v8;
        v53 = *(v8 - 1);
        v54 = v52;
        v7 = sub_1C477A100();
        v55 = [v53 featureName];
        v17 = sub_1C4F01138();
        a2 = v56;

        v57 = sub_1C4663248();

        if (v57 == 1)
        {
          v7 = v72;

          v58 = v53;
          v59 = sub_1C4F00968();
          a2 = sub_1C4F01CD8();

          if (!os_log_type_enabled(v59, a2))
          {

            goto LABEL_27;
          }

          v60 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v78 = v17;
          *v60 = 136315394;
          *(v60 + 4) = sub_1C441D828(v73, v70, &v78);
          *(v60 + 12) = 2112;
          *(v60 + 14) = v58;
          *v7 = v58;
          v53 = v58;
          _os_log_impl(&dword_1C43F8000, v59, a2, "%s: Feature does not have keypath defined %@", v60, 0x16u);
          sub_1C45B4B90(v7);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C440962C(v17);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          if ([v54 isUndefined])
          {
            goto LABEL_24;
          }

          if (v57)
          {
            v7 = v66;
            sub_1C46D43EC(v72[2], *(v72 + 24), v66);
            if (v71)
            {
              sub_1C44194D8();
              sub_1C4453D40(v67, v65);

              sub_1C4634004(v57);

              v63 = type metadata accessor for EntityTaggingPersonDataCollection;
              v64 = a5;
              return sub_1C4453D40(v64, v63);
            }

            swift_setAtWritableKeyPath();
LABEL_24:
            sub_1C4634004(v57);
          }
        }

LABEL_27:
        v13 = v76;
        ++v51;
        v8 += 2;
        if (a1 == v51)
        {
          goto LABEL_31;
        }
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_31:

    sub_1C44194D8();
    v64 = v67;
    return sub_1C4453D40(v64, v63);
  }

  else
  {
    sub_1C472CF14();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();
    sub_1C44194D8();
    return sub_1C4453D40(v17, v62);
  }
}

uint64_t sub_1C472CBCC()
{
  sub_1C46B6868(*(v0 + 16), *(v0 + 24));

  sub_1C4406BB8();
  sub_1C4453D40(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_collectionID;
  sub_1C4EF9D38();
  sub_1C43FBCE0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1C472CCB4()
{
  sub_1C472CBCC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityTaggingPersonDataCollectionTask(uint64_t a1)
{
  result = qword_1EDDDC9D8;
  if (!qword_1EDDDC9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C472CD60(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C4EF9D38();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C472CE7C()
{

  return v0;
}

uint64_t sub_1C472CEBC()
{
  sub_1C472CE7C();

  return swift_deallocClassInstance();
}

unint64_t sub_1C472CF14()
{
  result = qword_1EC0BC068;
  if (!qword_1EC0BC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC068);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingPersonDataCollectionTask.EntityTaggingPersonDataCollectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C472D048()
{
  result = qword_1EC0BC070;
  if (!qword_1EC0BC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC070);
  }

  return result;
}

uint64_t sub_1C472D09C@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  sub_1C441B8BC(v7, v8, v9, v7);
  v10 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  sub_1C441B8BC(v10, v11, v12, v10);
  v13 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  result = sub_1C441B8BC(v13, v14, v15, v13);
  v17 = a2 + v3[11];
  *v17 = 0;
  *(v17 + 8) = 1;
  return result;
}

uint64_t sub_1C472D148@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C442DEEC();
  sub_1C4405A7C(*(v5 + 32));
  type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  sub_1C440A6F0(v1);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EDDF1788 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BC400, &qword_1C4F239E0);
    }
  }

  else
  {
    sub_1C440E1C0();
    return sub_1C4771D34(v1, a1);
  }

  return result;
}

uint64_t sub_1C472D25C()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityTaggingPersonDataCollection(v2) + 32);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C440E1C0();
  sub_1C4771D34(v0, v1 + v3);
  type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C472D2D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C442DEEC();
  sub_1C4405A7C(*(v5 + 36));
  type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  sub_1C440A6F0(v1);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EDDEEA28 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BC408, &qword_1C4F239E8);
    }
  }

  else
  {
    sub_1C44170F4();
    return sub_1C4771D34(v1, a1);
  }

  return result;
}

uint64_t sub_1C472D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4405A6C();
  v8 = v7;
  sub_1C4F00318();
  v9 = *(v6(0) + 20);
  if (*v5 != -1)
  {
    swift_once();
  }

  *(v8 + v9) = *v4;
}

uint64_t sub_1C472D464()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityTaggingPersonDataCollection(v2) + 36);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C44170F4();
  sub_1C4771D34(v0, v1 + v3);
  type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C472D4D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C442DEEC();
  sub_1C4405A7C(*(v5 + 40));
  type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  sub_1C440A6F0(v1);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6968 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BC410, &unk_1C4F239F0);
    }
  }

  else
  {
    sub_1C44030CC();
    return sub_1C4771D34(v1, a1);
  }

  return result;
}

uint64_t sub_1C472D5EC()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityTaggingPersonDataCollection(v2) + 40);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C44030CC();
  sub_1C4771D34(v0, v1 + v3);
  type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C4733D48@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C44042B0();
  v11 = *(v4 + *(a1(v10) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_1C446C964(v11 + v12, v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440A6F0(v3);
  if (!v14)
  {
    return sub_1C4771D34(v3, a3);
  }

  v15 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v15;
  a3[2] = v15;
  sub_1C4F00318();
  v16 = *(v13 + 32);
  v17 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C440BAA8(a3 + v16, 1, 1, v17);
  result = sub_1C440A6F0(v3);
  if (!v14)
  {
    return sub_1C4420C3C(v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4733EF4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v5;
  v12 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = *((a2)(0, v14) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    swift_allocObject();
    v20 = sub_1C4425064();
    v19 = a4(v20);
    *(v10 + v17) = v19;
  }

  sub_1C4771D34(a1, v16);
  v21 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v16, 0, 1, v21);
  v22 = *a5;
  swift_beginAccess();
  sub_1C46ED080(v16, v19 + v22);
  return swift_endAccess();
}

uint64_t sub_1C4734044()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151C40);
  sub_1C442B738(v0, qword_1EC151C40);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0F830;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionID";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clusterID";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kgPersonFacts";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "personInteractionFeatures";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosPersonInteractionFeatures";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "protoVersion";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4734344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_1C4406AC8();
        sub_1C4734424(v6, v7, v8, v9);
        break;
      case 2:
        v22 = sub_1C4406AC8();
        sub_1C4734488(v22, v23, v24, v25);
        break;
      case 3:
        v14 = sub_1C4406AC8();
        sub_1C47344EC(v14, v15, v16, v17);
        break;
      case 4:
        v18 = sub_1C4406AC8();
        sub_1C4734550(v18, v19, v20, v21);
        break;
      case 5:
        v10 = sub_1C4406AC8();
        sub_1C4734604(v10, v11, v12, v13);
        break;
      case 6:
        v26 = sub_1C4406AC8();
        sub_1C47346B8(v26, v27, v28, v29);
        break;
      case 7:
        v30 = sub_1C4406AC8();
        sub_1C473476C(v30, v31, v32, v33);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C4734550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntityTaggingPersonDataCollection(0);
  type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  sub_1C4771900(qword_1EDDDE118, type metadata accessor for EntityTaggingPersonKGPersonFacts);
  return sub_1C4F003F8();
}

uint64_t sub_1C4734604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntityTaggingPersonDataCollection(0);
  type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  sub_1C4771900(qword_1EDDED840, type metadata accessor for EntityTaggingPersonPersonInteractionFeatures);
  return sub_1C4F003F8();
}

uint64_t sub_1C47346B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntityTaggingPersonDataCollection(0);
  type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  sub_1C4771900(&qword_1EC0BC420, type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures);
  return sub_1C4F003F8();
}

uint64_t sub_1C47347D0()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C473485C(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_1C43FEE60();
    sub_1C47348D4(v6, v7, v8, v9);
    v10 = sub_1C43FEE60();
    sub_1C473494C(v10, v11, v12, v13);
    v14 = sub_1C43FEE60();
    sub_1C47349C4(v14, v15, v16, v17);
    v18 = sub_1C43FEE60();
    sub_1C4734B98(v18, v19, v20, v21);
    v22 = sub_1C43FEE60();
    sub_1C4734D6C(v22, v23, v24, v25);
    v26 = sub_1C43FEE60();
    sub_1C4734F40(v26, v27, v28, v29);
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C473485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47348D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C473494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47349C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C446C964(a1 + *(v11 + 32), v7, &qword_1EC0BC400, &qword_1C4F239E0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BC400, &qword_1C4F239E0);
  }

  sub_1C4771D34(v7, v10);
  sub_1C4771900(qword_1EDDDE118, type metadata accessor for EntityTaggingPersonKGPersonFacts);
  sub_1C4F004B8();
  return sub_1C4771D8C();
}

uint64_t sub_1C4734B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C446C964(a1 + *(v11 + 36), v7, &qword_1EC0BC408, &qword_1C4F239E8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BC408, &qword_1C4F239E8);
  }

  sub_1C4771D34(v7, v10);
  sub_1C4771900(qword_1EDDED840, type metadata accessor for EntityTaggingPersonPersonInteractionFeatures);
  sub_1C4F004B8();
  return sub_1C4771D8C();
}

uint64_t sub_1C4734D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C446C964(a1 + *(v11 + 40), v7, &qword_1EC0BC410, &unk_1C4F239F0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BC410, &unk_1C4F239F0);
  }

  sub_1C4771D34(v7, v10);
  sub_1C4771900(&qword_1EC0BC420, type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures);
  sub_1C4F004B8();
  return sub_1C4771D8C();
}

uint64_t sub_1C4734F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C4734FB8(uint64_t a1, uint64_t a2)
{
  v104 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v100 = v7 - v6;
  v8 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v102 = v10;
  v103 = sub_1C456902C(&qword_1EC0BC470, &qword_1C4F24078);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v105 = v12;
  v13 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v101 = v16 - v15;
  v17 = sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C43FBD18(v17);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v106 = v19;
  v20 = sub_1C456902C(&qword_1EC0BC478, &qword_1C4F24080);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v107 = v22;
  v23 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - v30;
  v32 = sub_1C456902C(&qword_1EC0BC480, &qword_1C4F24088);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v34 = sub_1C44042B0();
  v35 = type metadata accessor for EntityTaggingPersonDataCollection(v34);
  v108 = a1;
  sub_1C4414A44();
  if (v38)
  {
    if (!v36)
    {
      goto LABEL_76;
    }

    sub_1C4402FD0(v37);
    v41 = v41 && v39 == v40;
    if (!v41 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v36)
  {
    goto LABEL_76;
  }

  sub_1C4414A44();
  if (v44)
  {
    if (!v42)
    {
      goto LABEL_76;
    }

    sub_1C4402FD0(v43);
    v47 = v41 && v45 == v46;
    if (!v47 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v42)
  {
    goto LABEL_76;
  }

  sub_1C4414A44();
  if (v50)
  {
    if (!v48)
    {
      goto LABEL_76;
    }

    sub_1C4402FD0(v49);
    v53 = v41 && v51 == v52;
    if (!v53 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v48)
  {
    goto LABEL_76;
  }

  v99 = a2;
  v54 = v35[8];
  v55 = *(v32 + 48);
  sub_1C446C964(v108 + v54, v2, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C446C964(v99 + v54, v2 + v55, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C4406BE8(v2);
  if (v41)
  {
    sub_1C4406BE8(v2 + v55);
    if (v41)
    {
      sub_1C4420C3C(v2, &qword_1EC0BC400, &qword_1C4F239E0);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  sub_1C446C964(v2, v31, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C4406BE8(v2 + v55);
  if (v56)
  {
    sub_1C4771D8C();
LABEL_36:
    v57 = &qword_1EC0BC480;
    v58 = &qword_1C4F24088;
LABEL_37:
    v59 = v2;
LABEL_75:
    sub_1C4420C3C(v59, v57, v58);
    goto LABEL_76;
  }

  sub_1C440E1C0();
  sub_1C4771D34(v2 + v55, v27);
  v60 = *(v23 + 20);
  v61 = *&v31[v60];
  v62 = *(v27 + v60);
  if (v61 != v62)
  {

    v63 = sub_1C4738178(v61, v62);

    if (!v63)
    {
      sub_1C4771D8C();
      sub_1C4771D8C();
      v57 = &qword_1EC0BC400;
      v58 = &qword_1C4F239E0;
      goto LABEL_37;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v64, v65);
  v66 = sub_1C4F010B8();
  sub_1C4771D8C();
  sub_1C4771D8C();
  sub_1C4420C3C(v2, &qword_1EC0BC400, &qword_1C4F239E0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_41:
  v67 = v35[9];
  v68 = *(v20 + 48);
  v69 = v107;
  sub_1C4426B20(v108 + v67, v107);
  sub_1C4426B20(v99 + v67, v69 + v68);
  sub_1C440029C(v69);
  if (v41)
  {
    sub_1C440029C(v69 + v68);
    if (v41)
    {
      sub_1C4420C3C(v69, &qword_1EC0BC408, &qword_1C4F239E8);
      goto LABEL_53;
    }

LABEL_49:
    v57 = &qword_1EC0BC478;
    v58 = &qword_1C4F24080;
LABEL_74:
    v59 = v69;
    goto LABEL_75;
  }

  v70 = v106;
  sub_1C446C964(v69, v106, &qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C440029C(v69 + v68);
  if (v71)
  {
    sub_1C4771D8C();
    goto LABEL_49;
  }

  sub_1C44170F4();
  v72 = v101;
  sub_1C4771D34(v69 + v68, v101);
  if (*(v70 + *(v13 + 20)) != *(v72 + *(v13 + 20)))
  {

    v73 = sub_1C43FBC98();
    v74 = sub_1C47456E8(v73);

    if ((v74 & 1) == 0)
    {
      sub_1C4771D8C();
      sub_1C4771D8C();
      v57 = &qword_1EC0BC408;
      v58 = &qword_1C4F239E8;
      goto LABEL_74;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v75, v76);
  v77 = sub_1C4F010B8();
  sub_1C4771D8C();
  sub_1C4771D8C();
  sub_1C4420C3C(v69, &qword_1EC0BC408, &qword_1C4F239E8);
  if ((v77 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_53:
  v78 = v35[10];
  v79 = *(v103 + 48);
  v69 = v105;
  sub_1C4426B20(v108 + v78, v105);
  v80 = v99 + v78;
  v81 = v99;
  sub_1C4426B20(v80, v69 + v79);
  v82 = v104;
  if (sub_1C44157D4(v69, 1, v104) == 1)
  {
    sub_1C4406BE8(v69 + v79);
    if (!v41)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v69, &qword_1EC0BC410, &unk_1C4F239F0);
    goto LABEL_65;
  }

  v83 = v102;
  sub_1C446C964(v69, v102, &qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C4406BE8(v69 + v79);
  if (v41)
  {
    sub_1C4771D8C();
LABEL_61:
    v57 = &qword_1EC0BC470;
    v58 = &qword_1C4F24078;
    goto LABEL_74;
  }

  sub_1C44030CC();
  v84 = v100;
  sub_1C4771D34(v69 + v79, v100);
  if (*(v83 + *(v82 + 20)) != *(v84 + *(v82 + 20)))
  {

    v85 = sub_1C43FBC98();
    v86 = sub_1C476039C(v85);

    if ((v86 & 1) == 0)
    {
      sub_1C4771D8C();
      sub_1C4771D8C();
      v57 = &qword_1EC0BC410;
      v58 = &unk_1C4F239F0;
      goto LABEL_74;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v87, v88);
  v89 = sub_1C4F010B8();
  sub_1C4771D8C();
  sub_1C4771D8C();
  sub_1C4420C3C(v69, &qword_1EC0BC410, &unk_1C4F239F0);
  if ((v89 & 1) == 0)
  {
LABEL_76:
    v97 = 0;
    return v97 & 1;
  }

LABEL_65:
  v90 = v35[11];
  v91 = (v108 + v90);
  v92 = *(v108 + v90 + 8);
  v93 = (v81 + v90);
  v94 = *(v81 + v90 + 8);
  if (v92)
  {
    if (!v94)
    {
      goto LABEL_76;
    }
  }

  else
  {
    if (*v91 != *v93)
    {
      LOBYTE(v94) = 1;
    }

    if (v94)
    {
      goto LABEL_76;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v95, v96);
  v97 = sub_1C4F010B8();
  return v97 & 1;
}

uint64_t sub_1C47359EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4771900(&qword_1EC0BC468, type metadata accessor for EntityTaggingPersonDataCollection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4735A8C(uint64_t a1)
{
  sub_1C4771900(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection);

  return sub_1C4F00428();
}

uint64_t sub_1C4735B54(uint64_t a1, uint64_t a2)
{
  sub_1C4771900(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection);

  return sub_1C4F00438();
}

uint64_t sub_1C4735BD4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151C58);
  sub_1C442B738(v0, qword_1EC151C58);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1C4F239A0;
  v4 = v66 + v3 + v1[14];
  *(v66 + v3) = 1;
  *v4 = "nameCategoryMatch";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v66 + v3 + v2 + v1[14];
  *(v66 + v3 + v2) = 2;
  *v8 = "isVIP";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v66 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sharesWorkAddress";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v66 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "hasSamePrivateEmailDomain";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v66 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "nicknameCategoryMatch";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v66 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBirthday";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v66 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "hasSameEmailDomains";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v66 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "sameLastName";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v66 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "hasSamePublicEmailDomain";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v66 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "photosPersonAge";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  v25 = (v66 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "isFavorite";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v66 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hasSameEduEmailDomain";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v7();
  v29 = (v66 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hasSameWorkEmailDomain";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v7();
  v31 = (v66 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "hasNickname";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v66 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "allowListedNameMatch";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v7();
  v35 = (v66 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "ageDifferenceCategory";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v66 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "nameContainsEmoji";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v7();
  v39 = (v66 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "nicknameContainsEmoji";
  *(v40 + 1) = 21;
  v40[16] = 2;
  v7();
  v41 = (v66 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "relationshipWithUser";
  *(v42 + 1) = 20;
  v42[16] = 2;
  v7();
  v43 = (v66 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "sharesHomeAddress";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  v45 = (v66 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "allowListedNicknameMatch";
  *(v46 + 1) = 24;
  v46[16] = 2;
  v7();
  v47 = (v66 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "photosAgeDifferenceCategory";
  *(v48 + 1) = 27;
  v48[16] = 2;
  v7();
  v49 = (v66 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "partialNicknameCategoryMatch";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v7();
  v51 = (v66 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "partialNameCategoryMatch";
  *(v52 + 1) = 24;
  v52[16] = 2;
  v7();
  v53 = (v66 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "iCloudFamilyMember";
  *(v54 + 1) = 18;
  v54[16] = 2;
  v7();
  v55 = (v66 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "isChild";
  *(v56 + 1) = 7;
  v56[16] = 2;
  v7();
  v57 = (v66 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "isFamily";
  *(v58 + 1) = 8;
  v58[16] = 2;
  v7();
  v59 = (v66 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "isPartner";
  *(v60 + 1) = 9;
  v60[16] = 2;
  v7();
  v61 = (v66 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "isSibling";
  *(v62 + 1) = 9;
  v62[16] = 2;
  v7();
  v63 = (v66 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "isCoworker";
  *(v64 + 1) = 10;
  v64[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C4736464()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker, 1, 1, v2);
  return v0;
}

uint64_t sub_1C47367E0(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v68 - v4;
  v6 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress, 1, 1, v7);
  v69 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p, 1, 1, v7);
  v70 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch, 1, 1, v7);
  v71 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p, 1, 1, v7);
  v72 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p, 1, 1, v7);
  v73 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName, 1, 1, v7);
  v74 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p, 1, 1, v7);
  v75 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge, 1, 1, v7);
  v76 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite, 1, 1, v7);
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p, 1, 1, v7);
  v78 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p, 1, 1, v7);
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p, 1, 1, v7);
  v80 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch, 1, 1, v7);
  v81 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory, 1, 1, v7);
  v82 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji, 1, 1, v7);
  v83 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji, 1, 1, v7);
  v84 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser, 1, 1, v7);
  v85 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress, 1, 1, v7);
  v86 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch, 1, 1, v7);
  v87 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory, 1, 1, v7);
  v88 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch, 1, 1, v7);
  v89 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch, 1, 1, v7);
  v90 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember, 1, 1, v7);
  v91 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild, 1, 1, v7);
  v92 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily, 1, 1, v7);
  v93 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner, 1, 1, v7);
  v94 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling, 1, 1, v7);
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker, 1, 1, v7);
  v10 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v10, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v6);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip;
  swift_beginAccess();
  sub_1C446C964(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v8);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress;
  swift_beginAccess();
  sub_1C446C964(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v9);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v13, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v14 = v69;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v14);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v15, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v16 = v70;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v16);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v17, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v18 = v71;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v18);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v19, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = v72;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v20);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName;
  swift_beginAccess();
  sub_1C446C964(a1 + v21, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v22 = v73;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v22);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v23, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v24 = v74;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge;
  swift_beginAccess();
  sub_1C446C964(a1 + v25, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v26 = v75;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v26);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite;
  swift_beginAccess();
  sub_1C446C964(a1 + v27, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v28 = v76;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v28);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v29, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v30 = v77;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v30);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v31, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v32 = v78;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v32);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v33, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v34 = v79;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v34);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v35, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v36 = v80;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v36);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory;
  swift_beginAccess();
  sub_1C446C964(a1 + v37, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v38 = v81;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v38);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji;
  swift_beginAccess();
  sub_1C446C964(a1 + v39, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v40 = v82;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v40);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji;
  swift_beginAccess();
  sub_1C446C964(a1 + v41, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v42 = v83;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v42);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser;
  swift_beginAccess();
  sub_1C446C964(a1 + v43, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v44 = v84;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v44);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress;
  swift_beginAccess();
  sub_1C446C964(a1 + v45, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v46 = v85;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v46);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v47, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v48 = v86;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v48);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory;
  swift_beginAccess();
  sub_1C446C964(a1 + v49, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v50 = v87;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v50);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v51, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v52 = v88;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v52);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v53, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v54 = v89;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v54);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember;
  swift_beginAccess();
  sub_1C446C964(a1 + v55, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v56 = v90;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v56);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild;
  swift_beginAccess();
  sub_1C446C964(a1 + v57, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v58 = v91;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v58);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily;
  swift_beginAccess();
  sub_1C446C964(a1 + v59, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v60 = v92;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v60);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner;
  swift_beginAccess();
  sub_1C446C964(a1 + v61, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v62 = v93;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v62);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling;
  swift_beginAccess();
  sub_1C446C964(a1 + v63, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v64 = v94;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v64);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker;
  swift_beginAccess();
  sub_1C446C964(a1 + v65, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v66 = v95;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v66);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C4737708()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C4737A50(uint64_t a1)
{
  sub_1C475E8BC(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C4737B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
        goto LABEL_34;
      case 2:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip;
        goto LABEL_34;
      case 3:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress;
        goto LABEL_34;
      case 4:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p;
        goto LABEL_34;
      case 5:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch;
        goto LABEL_34;
      case 6:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p;
        goto LABEL_34;
      case 7:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p;
        goto LABEL_34;
      case 8:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName;
        goto LABEL_34;
      case 9:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p;
        goto LABEL_34;
      case 10:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge;
        goto LABEL_34;
      case 11:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite;
        goto LABEL_34;
      case 12:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p;
        goto LABEL_34;
      case 13:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p;
        goto LABEL_34;
      case 14:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p;
        goto LABEL_34;
      case 15:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch;
        goto LABEL_34;
      case 16:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory;
        goto LABEL_34;
      case 17:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji;
        goto LABEL_34;
      case 18:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji;
        goto LABEL_34;
      case 19:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser;
        goto LABEL_34;
      case 20:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress;
        goto LABEL_34;
      case 21:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch;
        goto LABEL_34;
      case 22:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory;
        goto LABEL_34;
      case 23:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch;
        goto LABEL_34;
      case 24:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch;
        goto LABEL_34;
      case 25:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember;
        goto LABEL_34;
      case 26:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild;
        goto LABEL_34;
      case 27:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily;
        goto LABEL_34;
      case 28:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner;
        goto LABEL_34;
      case 29:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling;
        goto LABEL_34;
      case 30:
        v11 = &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker;
LABEL_34:
        sub_1C475F098(a2, a1, a3, a4, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C4737D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch, 1);
  if (!v4)
  {
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip, 2);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress, 3);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p, 4);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch, 5);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p, 6);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p, 7);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName, 8);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p, 9);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge, 10);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite, 11);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p, 12);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p, 13);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p, 14);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch, 15);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory, 16);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji, 17);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji, 18);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser, 19);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress, 20);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch, 21);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory, 22);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch, 23);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch, 24);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember, 25);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild, 26);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily, 27);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner, 28);
    sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling, 29);
    return sub_1C47600FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker, 30);
  }

  return result;
}

BOOL sub_1C4738178(uint64_t a1, uint64_t a2)
{
  v595 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v595);
  v593 = (&v506 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v596 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  MEMORY[0x1EEE9AC00](v596);
  v545 = &v506 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v544 = &v506 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v541 = &v506 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v538 = &v506 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v535 = &v506 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v532 = &v506 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v529 = &v506 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v527 = &v506 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v524 = &v506 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v521 = &v506 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v519 = &v506 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v516 = &v506 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v513 = &v506 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v549 = &v506 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v552 = &v506 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v555 = &v506 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v558 = &v506 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v562 = &v506 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v561 = &v506 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v567 = &v506 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v569 = &v506 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v571 = &v506 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v574 = &v506 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v577 = &v506 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v580 = &v506 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v583 = &v506 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v586 = &v506 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v589 = &v506 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v592 = &v506 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v506 - v63;
  v65 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v543 = &v506 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v542 = &v506 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v540 = &v506 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v539 = &v506 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v537 = &v506 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v536 = &v506 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v534 = &v506 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v533 = &v506 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v531 = &v506 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v530 = &v506 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v528 = &v506 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v526 = &v506 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v525 = &v506 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v523 = &v506 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v522 = &v506 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v520 = &v506 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v518 = &v506 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v517 = &v506 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v515 = &v506 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v514 = &v506 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v512 = &v506 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v511 = &v506 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v510 = &v506 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v509 = &v506 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v508 = &v506 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v507 = &v506 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v546 = &v506 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v547 = &v506 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v548 = &v506 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v550 = &v506 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v551 = &v506 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v553 = &v506 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v554 = &v506 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v556 = &v506 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v557 = &v506 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v559 = &v506 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v560 = &v506 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v563 = &v506 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v564 = &v506 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v566 = &v506 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v565 = &v506 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v570 = &v506 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v568 = &v506 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v573 = &v506 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v572 = &v506 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v576 = &v506 - v156;
  MEMORY[0x1EEE9AC00](v157);
  v575 = &v506 - v158;
  MEMORY[0x1EEE9AC00](v159);
  v579 = &v506 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v578 = &v506 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v582 = &v506 - v164;
  MEMORY[0x1EEE9AC00](v165);
  v581 = &v506 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v585 = &v506 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v584 = &v506 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v588 = &v506 - v172;
  MEMORY[0x1EEE9AC00](v173);
  v587 = &v506 - v174;
  MEMORY[0x1EEE9AC00](v175);
  v591 = &v506 - v176;
  MEMORY[0x1EEE9AC00](v177);
  v590 = &v506 - v178;
  MEMORY[0x1EEE9AC00](v179);
  v594 = &v506 - v180;
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v506 - v182;
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v506 - v185;
  v187 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v187, v186, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v188 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  swift_beginAccess();
  v189 = *(v596 + 48);
  sub_1C446C964(v186, v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v190 = a2 + v188;
  v191 = a2;
  v192 = v595;
  sub_1C446C964(v190, &v64[v189], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v64, 1, v192) == 1)
  {

    sub_1C4420C3C(v186, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(&v64[v189], 1, v192) == 1)
    {
      sub_1C4420C3C(v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_8;
    }

LABEL_6:
    v193 = v64;
LABEL_21:
    sub_1C4420C3C(v193, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_22;
  }

  sub_1C446C964(v64, v183, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v64[v189], 1, v192) == 1)
  {

    sub_1C4420C3C(v186, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    goto LABEL_6;
  }

  v194 = &v64[v189];
  v195 = v593;
  sub_1C4771D34(v194, v593);

  v196 = sub_1C47E3504(v183, v195);
  sub_1C4771D8C();
  sub_1C4420C3C(v186, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v196 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v197 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip;
  swift_beginAccess();
  v198 = v594;
  sub_1C446C964(a1 + v197, v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v199 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip;
  swift_beginAccess();
  v200 = *(v596 + 48);
  v201 = v592;
  sub_1C446C964(v198, v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v191 + v199, v201 + v200, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v202 = v595;
  if (sub_1C44157D4(v201, 1, v595) == 1)
  {
    sub_1C4420C3C(v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v201 + v200, 1, v202) == 1)
    {
      sub_1C4420C3C(v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v203 = v590;
  sub_1C446C964(v201, v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v201 + v200, 1, v202) == 1)
  {
    sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_13:
    v193 = v201;
    goto LABEL_21;
  }

  v204 = v201 + v200;
  v205 = v593;
  sub_1C4771D34(v204, v593);
  v206 = sub_1C47E3504(v203, v205);
  sub_1C4771D8C();
  sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v206 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v207 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress;
  swift_beginAccess();
  v208 = v591;
  sub_1C446C964(a1 + v207, v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v209 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress;
  swift_beginAccess();
  v210 = *(v596 + 48);
  v211 = v589;
  sub_1C446C964(v208, v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v594 = v191;
  sub_1C446C964(v191 + v209, v211 + v210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v211, 1, v202) == 1)
  {
    sub_1C4420C3C(v208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v212 = sub_1C44157D4(v211 + v210, 1, v202);
    v213 = v594;
    if (v212 == 1)
    {
      sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_25;
    }

LABEL_20:
    v193 = v211;
    goto LABEL_21;
  }

  v214 = v587;
  sub_1C446C964(v211, v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v211 + v210, 1, v202) == 1)
  {
    sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    goto LABEL_20;
  }

  v216 = v211 + v210;
  v217 = v593;
  sub_1C4771D34(v216, v593);
  v218 = sub_1C47E3504(v214, v217);
  sub_1C4771D8C();
  sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v213 = v594;
  if ((v218 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v219 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p;
  v220 = a1;
  swift_beginAccess();
  v221 = v588;
  sub_1C446C964(a1 + v219, v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v222 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p;
  swift_beginAccess();
  v223 = *(v596 + 48);
  v224 = v586;
  sub_1C446C964(v221, v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v213 + v222, v224 + v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v225 = v595;
  if (sub_1C44157D4(v224, 1, v595) == 1)
  {
    sub_1C4420C3C(v221, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v224 + v223, 1, v225) != 1)
    {
      goto LABEL_31;
    }

    sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v226 = v584;
    sub_1C446C964(v224, v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v224 + v223, 1, v225) == 1)
    {
      v227 = v588;
      goto LABEL_30;
    }

    v228 = v224 + v223;
    v229 = v593;
    sub_1C4771D34(v228, v593);
    v230 = sub_1C47E3504(v226, v229);
    sub_1C4771D8C();
    sub_1C4420C3C(v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v230 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v231 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch;
  swift_beginAccess();
  v594 = v220;
  v232 = v585;
  sub_1C446C964(v220 + v231, v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v233 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch;
  swift_beginAccess();
  v234 = *(v596 + 48);
  v235 = v583;
  sub_1C446C964(v232, v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v213 + v233, v235 + v234, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235, 1, v225) == 1)
  {
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v234, 1, v225) != 1)
    {
      goto LABEL_40;
    }

    v236 = v225;
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v237 = v581;
    sub_1C446C964(v235, v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v234, 1, v225) == 1)
    {
      v238 = v585;
LABEL_39:
      sub_1C4420C3C(v238, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4771D8C();
      goto LABEL_40;
    }

    v236 = v225;
    v239 = v593;
    sub_1C4771D34(v235 + v234, v593);
    v240 = sub_1C47E3504(v237, v239);
    sub_1C4771D8C();
    sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v240 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v241 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p;
  v242 = v594;
  swift_beginAccess();
  v243 = v242 + v241;
  v244 = v582;
  sub_1C446C964(v243, v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v245 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p;
  swift_beginAccess();
  v246 = v596;
  v247 = *(v596 + 48);
  v224 = v580;
  sub_1C446C964(v244, v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v213 + v245, v224 + v247, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v224, 1, v236) == 1)
  {
    sub_1C4420C3C(v244, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v248 = sub_1C44157D4(v224 + v247, 1, v236);
    v249 = v594;
    if (v248 != 1)
    {
      goto LABEL_31;
    }

    sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v250 = v578;
    sub_1C446C964(v224, v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v224 + v247, 1, v236) == 1)
    {
      sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4771D8C();
      goto LABEL_31;
    }

    v251 = v593;
    sub_1C4771D34(v224 + v247, v593);
    v252 = sub_1C47E3504(v250, v251);
    sub_1C4771D8C();
    sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v249 = v594;
    if ((v252 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v253 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p;
  swift_beginAccess();
  v254 = v579;
  sub_1C446C964(v249 + v253, v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v255 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p;
  swift_beginAccess();
  v256 = *(v246 + 48);
  v224 = v577;
  sub_1C446C964(v254, v577, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v213 + v255, v224 + v256, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v257 = v595;
  if (sub_1C44157D4(v224, 1, v595) != 1)
  {
    v258 = v575;
    sub_1C446C964(v224, v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v224 + v256, 1, v257) != 1)
    {
      v259 = v593;
      sub_1C4771D34(v224 + v256, v593);
      v260 = sub_1C47E3504(v258, v259);
      sub_1C4771D8C();
      sub_1C4420C3C(v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4771D8C();
      sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if ((v260 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_55;
    }

    v227 = v579;
LABEL_30:
    sub_1C4420C3C(v227, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    goto LABEL_31;
  }

  sub_1C4420C3C(v254, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v224 + v256, 1, v257) != 1)
  {
    goto LABEL_31;
  }

  sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_55:
  v261 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName;
  swift_beginAccess();
  v262 = v576;
  sub_1C446C964(v249 + v261, v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v263 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName;
  swift_beginAccess();
  v264 = *(v596 + 48);
  v224 = v574;
  sub_1C446C964(v262, v574, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v213 + v263, v224 + v264, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v265 = v595;
  if (sub_1C44157D4(v224, 1, v595) == 1)
  {
    sub_1C4420C3C(v262, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v224 + v264, 1, v265) == 1)
    {
      v266 = v265;
      sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_61;
    }

LABEL_31:
    sub_1C4420C3C(v224, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_22;
  }

  v267 = v572;
  sub_1C446C964(v224, v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v224 + v264, 1, v265) == 1)
  {
    v227 = v576;
    goto LABEL_30;
  }

  v266 = v265;
  v268 = v593;
  sub_1C4771D34(v224 + v264, v593);
  v269 = sub_1C47E3504(v267, v268);
  sub_1C4771D8C();
  sub_1C4420C3C(v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v269 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_61:
  v270 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p;
  swift_beginAccess();
  v271 = v573;
  sub_1C446C964(v249 + v270, v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v272 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p;
  swift_beginAccess();
  v273 = *(v596 + 48);
  v235 = v571;
  sub_1C446C964(v271, v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v213 + v272, v235 + v273, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235, 1, v266) == 1)
  {
    sub_1C4420C3C(v271, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v274 = v266;
    if (sub_1C44157D4(v235 + v273, 1, v266) == 1)
    {
      sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v211 = v569;
      goto LABEL_67;
    }

LABEL_40:
    sub_1C4420C3C(v235, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_22;
  }

  v275 = v568;
  sub_1C446C964(v235, v568, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v274 = v266;
  if (sub_1C44157D4(v235 + v273, 1, v266) == 1)
  {
    v238 = v573;
    goto LABEL_39;
  }

  v276 = v593;
  sub_1C4771D34(v235 + v273, v593);
  v277 = sub_1C47E3504(v275, v276);
  sub_1C4771D8C();
  sub_1C4420C3C(v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v211 = v569;
  if ((v277 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_67:
  v278 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge;
  v279 = v594;
  swift_beginAccess();
  v280 = v570;
  sub_1C446C964(v279 + v278, v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v281 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge;
  swift_beginAccess();
  v282 = *(v596 + 48);
  sub_1C446C964(v280, v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v213 + v281, v211 + v282, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v283 = v274;
  if (sub_1C44157D4(v211, 1, v274) == 1)
  {
    sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v211 + v282, 1, v274) == 1)
    {
      sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_73;
    }

    goto LABEL_20;
  }

  v284 = v565;
  sub_1C446C964(v211, v565, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v211 + v282, 1, v283) == 1)
  {
    sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    goto LABEL_20;
  }

  v285 = v593;
  sub_1C4771D34(v211 + v282, v593);
  v286 = sub_1C47E3504(v284, v285);
  sub_1C4771D8C();
  sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v286 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_73:
  v287 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite;
  swift_beginAccess();
  v288 = v566;
  sub_1C446C964(v279 + v287, v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v289 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite;
  swift_beginAccess();
  v290 = *(v596 + 48);
  v291 = v567;
  sub_1C446C964(v288, v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v292 = v213;
  sub_1C446C964(v213 + v289, v291 + v290, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v291, 1, v595) == 1)
  {
    sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v567 + v290, 1, v595) == 1)
    {
      sub_1C4420C3C(v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_80;
    }

LABEL_78:
    v294 = v567;
LABEL_205:
    sub_1C4420C3C(v294, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_22;
  }

  v293 = v567;
  sub_1C446C964(v567, v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v293 + v290, 1, v595) == 1)
  {
    sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    goto LABEL_78;
  }

  v295 = v567;
  v296 = v567 + v290;
  v297 = v593;
  sub_1C4771D34(v296, v593);
  v298 = sub_1C47E3504(v564, v297);
  sub_1C4771D8C();
  sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v295, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v298 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_80:
  v299 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p;
  swift_beginAccess();
  v300 = v563;
  sub_1C446C964(v279 + v299, v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v301 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p;
  swift_beginAccess();
  v302 = *(v596 + 48);
  v303 = v300;
  v304 = v561;
  sub_1C446C964(v303, v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v301, v304 + v302, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v304, 1, v595) == 1)
  {
    sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v304 + v302, 1, v595) == 1)
    {
      sub_1C4420C3C(v304, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  sub_1C446C964(v304, v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v304 + v302, 1, v595) == 1)
  {
    sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_85:
    v294 = v304;
    goto LABEL_205;
  }

  v305 = v304 + v302;
  v306 = v593;
  sub_1C4771D34(v305, v593);
  v307 = sub_1C47E3504(v560, v306);
  sub_1C4771D8C();
  sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v304, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v307 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_87:
  v308 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p;
  swift_beginAccess();
  v309 = v559;
  sub_1C446C964(v279 + v308, v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v310 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p;
  swift_beginAccess();
  v311 = *(v596 + 48);
  v312 = v309;
  v313 = v562;
  sub_1C446C964(v312, v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v310, v313 + v311, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v313, 1, v595) == 1)
  {
    sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v562 + v311, 1, v595) == 1)
    {
      sub_1C4420C3C(v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_94;
    }

    goto LABEL_92;
  }

  v314 = v562;
  sub_1C446C964(v562, v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v314 + v311, 1, v595) == 1)
  {
    sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_92:
    v294 = v562;
    goto LABEL_205;
  }

  v315 = v562;
  v316 = v562 + v311;
  v317 = v593;
  sub_1C4771D34(v316, v593);
  v318 = sub_1C47E3504(v557, v317);
  sub_1C4771D8C();
  sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v315, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v318 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_94:
  v319 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p;
  swift_beginAccess();
  v320 = v556;
  sub_1C446C964(v279 + v319, v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v321 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p;
  swift_beginAccess();
  v322 = *(v596 + 48);
  v323 = v320;
  v324 = v558;
  sub_1C446C964(v323, v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v321, v324 + v322, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v324, 1, v595) == 1)
  {
    sub_1C4420C3C(v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v558 + v322, 1, v595) == 1)
    {
      sub_1C4420C3C(v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  v325 = v558;
  sub_1C446C964(v558, v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v325 + v322, 1, v595) == 1)
  {
    sub_1C4420C3C(v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_99:
    v294 = v558;
    goto LABEL_205;
  }

  v326 = v558;
  v327 = v558 + v322;
  v328 = v593;
  sub_1C4771D34(v327, v593);
  v329 = sub_1C47E3504(v554, v328);
  sub_1C4771D8C();
  sub_1C4420C3C(v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v326, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v329 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_101:
  v330 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch;
  swift_beginAccess();
  v331 = v553;
  sub_1C446C964(v279 + v330, v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v332 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch;
  swift_beginAccess();
  v333 = *(v596 + 48);
  v334 = v331;
  v335 = v555;
  sub_1C446C964(v334, v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v332, v335 + v333, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v335, 1, v595) == 1)
  {
    sub_1C4420C3C(v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v555 + v333, 1, v595) == 1)
    {
      sub_1C4420C3C(v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  v336 = v555;
  sub_1C446C964(v555, v551, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v336 + v333, 1, v595) == 1)
  {
    sub_1C4420C3C(v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_106:
    v294 = v555;
    goto LABEL_205;
  }

  v337 = v555;
  v338 = v555 + v333;
  v339 = v593;
  sub_1C4771D34(v338, v593);
  v340 = sub_1C47E3504(v551, v339);
  sub_1C4771D8C();
  sub_1C4420C3C(v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v337, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v340 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_108:
  v341 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory;
  swift_beginAccess();
  v342 = v550;
  sub_1C446C964(v279 + v341, v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v343 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory;
  swift_beginAccess();
  v344 = *(v596 + 48);
  v345 = v342;
  v346 = v552;
  sub_1C446C964(v345, v552, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v343, v346 + v344, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v346, 1, v595) == 1)
  {
    sub_1C4420C3C(v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v552 + v344, 1, v595) == 1)
    {
      sub_1C4420C3C(v552, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v347 = v552;
  sub_1C446C964(v552, v548, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v347 + v344, 1, v595) == 1)
  {
    sub_1C4420C3C(v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_113:
    v294 = v552;
    goto LABEL_205;
  }

  v348 = v552;
  v349 = v552 + v344;
  v350 = v593;
  sub_1C4771D34(v349, v593);
  v351 = sub_1C47E3504(v548, v350);
  sub_1C4771D8C();
  sub_1C4420C3C(v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v348, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v351 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_115:
  v352 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji;
  swift_beginAccess();
  v353 = v547;
  sub_1C446C964(v279 + v352, v547, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v354 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji;
  swift_beginAccess();
  v355 = *(v596 + 48);
  v356 = v353;
  v357 = v549;
  sub_1C446C964(v356, v549, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v354, v357 + v355, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v357, 1, v595) == 1)
  {
    sub_1C4420C3C(v547, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v549 + v355, 1, v595) == 1)
    {
      sub_1C4420C3C(v549, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_122;
    }

    goto LABEL_120;
  }

  v358 = v549;
  sub_1C446C964(v549, v546, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v358 + v355, 1, v595) == 1)
  {
    sub_1C4420C3C(v547, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_120:
    v294 = v549;
    goto LABEL_205;
  }

  v359 = v549;
  v360 = v549 + v355;
  v361 = v593;
  sub_1C4771D34(v360, v593);
  v362 = sub_1C47E3504(v546, v361);
  sub_1C4771D8C();
  sub_1C4420C3C(v547, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v359, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v362 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_122:
  v363 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji;
  swift_beginAccess();
  v364 = v507;
  sub_1C446C964(v279 + v363, v507, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v365 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji;
  swift_beginAccess();
  v366 = *(v596 + 48);
  v367 = v364;
  v368 = v513;
  sub_1C446C964(v367, v513, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v365, v368 + v366, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v368, 1, v595) == 1)
  {
    sub_1C4420C3C(v507, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v513 + v366, 1, v595) == 1)
    {
      sub_1C4420C3C(v513, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_129;
    }

    goto LABEL_127;
  }

  v369 = v513;
  sub_1C446C964(v513, v508, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v369 + v366, 1, v595) == 1)
  {
    sub_1C4420C3C(v507, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_127:
    v294 = v513;
    goto LABEL_205;
  }

  v370 = v513;
  v371 = v513 + v366;
  v372 = v593;
  sub_1C4771D34(v371, v593);
  v373 = sub_1C47E3504(v508, v372);
  sub_1C4771D8C();
  sub_1C4420C3C(v507, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v370, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v373 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_129:
  v374 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser;
  swift_beginAccess();
  v375 = v509;
  sub_1C446C964(v279 + v374, v509, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v376 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser;
  swift_beginAccess();
  v377 = *(v596 + 48);
  v378 = v375;
  v379 = v516;
  sub_1C446C964(v378, v516, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v376, v379 + v377, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v379, 1, v595) == 1)
  {
    sub_1C4420C3C(v509, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v516 + v377, 1, v595) == 1)
    {
      sub_1C4420C3C(v516, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_136;
    }

    goto LABEL_134;
  }

  v380 = v516;
  sub_1C446C964(v516, v510, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v380 + v377, 1, v595) == 1)
  {
    sub_1C4420C3C(v509, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_134:
    v294 = v516;
    goto LABEL_205;
  }

  v381 = v516;
  v382 = v516 + v377;
  v383 = v593;
  sub_1C4771D34(v382, v593);
  v384 = sub_1C47E3504(v510, v383);
  sub_1C4771D8C();
  sub_1C4420C3C(v509, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v381, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v384 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_136:
  v385 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress;
  swift_beginAccess();
  v386 = v511;
  sub_1C446C964(v279 + v385, v511, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v387 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress;
  swift_beginAccess();
  v388 = *(v596 + 48);
  v389 = v386;
  v390 = v519;
  sub_1C446C964(v389, v519, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v387, v390 + v388, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v390, 1, v595) == 1)
  {
    sub_1C4420C3C(v511, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v519 + v388, 1, v595) == 1)
    {
      sub_1C4420C3C(v519, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_143;
    }

    goto LABEL_141;
  }

  v391 = v519;
  sub_1C446C964(v519, v512, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v391 + v388, 1, v595) == 1)
  {
    sub_1C4420C3C(v511, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_141:
    v294 = v519;
    goto LABEL_205;
  }

  v392 = v519;
  v393 = v519 + v388;
  v394 = v593;
  sub_1C4771D34(v393, v593);
  v395 = sub_1C47E3504(v512, v394);
  sub_1C4771D8C();
  sub_1C4420C3C(v511, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v392, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v395 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_143:
  v396 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch;
  swift_beginAccess();
  v397 = v514;
  sub_1C446C964(v279 + v396, v514, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v398 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch;
  swift_beginAccess();
  v399 = *(v596 + 48);
  v400 = v397;
  v401 = v521;
  sub_1C446C964(v400, v521, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v398, v401 + v399, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v401, 1, v595) == 1)
  {
    sub_1C4420C3C(v514, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v521 + v399, 1, v595) == 1)
    {
      sub_1C4420C3C(v521, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_150;
    }

    goto LABEL_148;
  }

  v402 = v521;
  sub_1C446C964(v521, v515, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v402 + v399, 1, v595) == 1)
  {
    sub_1C4420C3C(v514, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_148:
    v294 = v521;
    goto LABEL_205;
  }

  v403 = v521;
  v404 = v521 + v399;
  v405 = v593;
  sub_1C4771D34(v404, v593);
  v406 = sub_1C47E3504(v515, v405);
  sub_1C4771D8C();
  sub_1C4420C3C(v514, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v403, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v406 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_150:
  v407 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory;
  swift_beginAccess();
  v408 = v517;
  sub_1C446C964(v279 + v407, v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v409 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory;
  swift_beginAccess();
  v410 = *(v596 + 48);
  v411 = v408;
  v412 = v524;
  sub_1C446C964(v411, v524, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v409, v412 + v410, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v412, 1, v595) == 1)
  {
    sub_1C4420C3C(v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v524 + v410, 1, v595) == 1)
    {
      sub_1C4420C3C(v524, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_157;
    }

    goto LABEL_155;
  }

  v413 = v524;
  sub_1C446C964(v524, v518, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v413 + v410, 1, v595) == 1)
  {
    sub_1C4420C3C(v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_155:
    v294 = v524;
    goto LABEL_205;
  }

  v414 = v524;
  v415 = v524 + v410;
  v416 = v593;
  sub_1C4771D34(v415, v593);
  v417 = sub_1C47E3504(v518, v416);
  sub_1C4771D8C();
  sub_1C4420C3C(v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v414, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v417 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_157:
  v418 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch;
  swift_beginAccess();
  v419 = v520;
  sub_1C446C964(v279 + v418, v520, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v420 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch;
  swift_beginAccess();
  v421 = *(v596 + 48);
  v422 = v419;
  v423 = v527;
  sub_1C446C964(v422, v527, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v420, v423 + v421, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v423, 1, v595) == 1)
  {
    sub_1C4420C3C(v520, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v527 + v421, 1, v595) == 1)
    {
      sub_1C4420C3C(v527, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_164;
    }

    goto LABEL_162;
  }

  v424 = v527;
  sub_1C446C964(v527, v522, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v424 + v421, 1, v595) == 1)
  {
    sub_1C4420C3C(v520, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_162:
    v294 = v527;
    goto LABEL_205;
  }

  v425 = v527;
  v426 = v527 + v421;
  v427 = v593;
  sub_1C4771D34(v426, v593);
  v428 = sub_1C47E3504(v522, v427);
  sub_1C4771D8C();
  sub_1C4420C3C(v520, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v425, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v428 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_164:
  v429 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch;
  swift_beginAccess();
  v430 = v523;
  sub_1C446C964(v279 + v429, v523, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v431 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch;
  swift_beginAccess();
  v432 = *(v596 + 48);
  v433 = v430;
  v434 = v529;
  sub_1C446C964(v433, v529, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v431, v434 + v432, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v434, 1, v595) == 1)
  {
    sub_1C4420C3C(v523, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v529 + v432, 1, v595) == 1)
    {
      sub_1C4420C3C(v529, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_171;
    }

    goto LABEL_169;
  }

  v435 = v529;
  sub_1C446C964(v529, v525, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v435 + v432, 1, v595) == 1)
  {
    sub_1C4420C3C(v523, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_169:
    v294 = v529;
    goto LABEL_205;
  }

  v436 = v529;
  v437 = v529 + v432;
  v438 = v593;
  sub_1C4771D34(v437, v593);
  v439 = sub_1C47E3504(v525, v438);
  sub_1C4771D8C();
  sub_1C4420C3C(v523, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v436, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v439 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_171:
  v440 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember;
  swift_beginAccess();
  v441 = v526;
  sub_1C446C964(v279 + v440, v526, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v442 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember;
  swift_beginAccess();
  v443 = *(v596 + 48);
  v444 = v441;
  v445 = v532;
  sub_1C446C964(v444, v532, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v442, v445 + v443, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v445, 1, v595) == 1)
  {
    sub_1C4420C3C(v526, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v532 + v443, 1, v595) == 1)
    {
      sub_1C4420C3C(v532, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_178;
    }

    goto LABEL_176;
  }

  v446 = v532;
  sub_1C446C964(v532, v528, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v446 + v443, 1, v595) == 1)
  {
    sub_1C4420C3C(v526, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_176:
    v294 = v532;
    goto LABEL_205;
  }

  v447 = v532;
  v448 = v532 + v443;
  v449 = v593;
  sub_1C4771D34(v448, v593);
  v450 = sub_1C47E3504(v528, v449);
  sub_1C4771D8C();
  sub_1C4420C3C(v526, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v447, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v450 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_178:
  v451 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild;
  swift_beginAccess();
  v452 = v530;
  sub_1C446C964(v279 + v451, v530, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v453 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild;
  swift_beginAccess();
  v454 = *(v596 + 48);
  v455 = v452;
  v456 = v535;
  sub_1C446C964(v455, v535, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v453, v456 + v454, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v456, 1, v595) == 1)
  {
    sub_1C4420C3C(v530, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v535 + v454, 1, v595) == 1)
    {
      sub_1C4420C3C(v535, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_185;
    }

    goto LABEL_183;
  }

  v457 = v535;
  sub_1C446C964(v535, v531, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v457 + v454, 1, v595) == 1)
  {
    sub_1C4420C3C(v530, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_183:
    v294 = v535;
    goto LABEL_205;
  }

  v458 = v535;
  v459 = v535 + v454;
  v460 = v593;
  sub_1C4771D34(v459, v593);
  v461 = sub_1C47E3504(v531, v460);
  sub_1C4771D8C();
  sub_1C4420C3C(v530, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v458, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v461 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_185:
  v462 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily;
  swift_beginAccess();
  v463 = v533;
  sub_1C446C964(v279 + v462, v533, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v464 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily;
  swift_beginAccess();
  v465 = *(v596 + 48);
  v466 = v463;
  v467 = v538;
  sub_1C446C964(v466, v538, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v464, v467 + v465, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v467, 1, v595) == 1)
  {
    sub_1C4420C3C(v533, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v538 + v465, 1, v595) == 1)
    {
      sub_1C4420C3C(v538, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_192;
    }

    goto LABEL_190;
  }

  v468 = v538;
  sub_1C446C964(v538, v534, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v468 + v465, 1, v595) == 1)
  {
    sub_1C4420C3C(v533, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_190:
    v294 = v538;
    goto LABEL_205;
  }

  v469 = v538;
  v470 = v538 + v465;
  v471 = v593;
  sub_1C4771D34(v470, v593);
  v472 = sub_1C47E3504(v534, v471);
  sub_1C4771D8C();
  sub_1C4420C3C(v533, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v469, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v472 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_192:
  v473 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner;
  swift_beginAccess();
  v474 = v536;
  sub_1C446C964(v279 + v473, v536, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v475 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner;
  swift_beginAccess();
  v476 = *(v596 + 48);
  v477 = v474;
  v478 = v541;
  sub_1C446C964(v477, v541, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v475, v478 + v476, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v478, 1, v595) == 1)
  {
    sub_1C4420C3C(v536, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v541 + v476, 1, v595) == 1)
    {
      sub_1C4420C3C(v541, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_199;
    }

    goto LABEL_197;
  }

  v479 = v541;
  sub_1C446C964(v541, v537, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v479 + v476, 1, v595) == 1)
  {
    sub_1C4420C3C(v536, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_197:
    v294 = v541;
    goto LABEL_205;
  }

  v480 = v541;
  v481 = v541 + v476;
  v482 = v593;
  sub_1C4771D34(v481, v593);
  v483 = sub_1C47E3504(v537, v482);
  sub_1C4771D8C();
  sub_1C4420C3C(v536, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v480, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v483 & 1) == 0)
  {
LABEL_22:

    return 0;
  }

LABEL_199:
  v484 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling;
  swift_beginAccess();
  v485 = v539;
  sub_1C446C964(v279 + v484, v539, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v486 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling;
  swift_beginAccess();
  v487 = *(v596 + 48);
  v488 = v485;
  v489 = v544;
  sub_1C446C964(v488, v544, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v486, v489 + v487, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v489, 1, v595) == 1)
  {
    sub_1C4420C3C(v539, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v544 + v487, 1, v595) == 1)
    {
      sub_1C4420C3C(v544, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_208;
    }

    goto LABEL_204;
  }

  v490 = v544;
  sub_1C446C964(v544, v540, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v490 + v487, 1, v595) == 1)
  {
    sub_1C4420C3C(v539, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
LABEL_204:
    v294 = v544;
    goto LABEL_205;
  }

  v491 = v544;
  v492 = v544 + v487;
  v493 = v593;
  sub_1C4771D34(v492, v593);
  v494 = sub_1C47E3504(v540, v493);
  sub_1C4771D8C();
  sub_1C4420C3C(v539, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4771D8C();
  sub_1C4420C3C(v491, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v494 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_208:
  v495 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker;
  swift_beginAccess();
  v496 = v542;
  sub_1C446C964(v279 + v495, v542, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v497 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker;
  swift_beginAccess();
  v498 = *(v596 + 48);
  v499 = v496;
  v500 = v545;
  sub_1C446C964(v499, v545, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v292 + v497, v500 + v498, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v500, 1, v595) != 1)
  {
    v501 = v545;
    sub_1C446C964(v545, v543, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v501 + v498, 1, v595) == 1)
    {

      sub_1C4420C3C(v542, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4771D8C();
      goto LABEL_213;
    }

    v502 = v545;
    v503 = v545 + v498;
    v504 = v593;
    sub_1C4771D34(v503, v593);
    v505 = sub_1C47E3504(v543, v504);

    sub_1C4771D8C();
    sub_1C4420C3C(v542, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4771D8C();
    sub_1C4420C3C(v502, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v505 & 1) != 0;
  }

  sub_1C4420C3C(v542, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v545 + v498, 1, v595) != 1)
  {
LABEL_213:
    sub_1C4420C3C(v545, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v545, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}

uint64_t sub_1C473CCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4771900(&qword_1EC0BC488, type metadata accessor for EntityTaggingPersonKGPersonFacts);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C473CD94(uint64_t a1)
{
  sub_1C4771900(qword_1EDDDE118, type metadata accessor for EntityTaggingPersonKGPersonFacts);

  return sub_1C4F00428();
}

uint64_t sub_1C473CE5C(uint64_t a1, uint64_t a2)
{
  sub_1C4771900(qword_1EDDDE118, type metadata accessor for EntityTaggingPersonKGPersonFacts);

  return sub_1C4F00438();
}

uint64_t sub_1C473CF1C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151C70);
  sub_1C442B738(v0, qword_1EC151C70);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_1C4F239B0;
  v4 = v238 + v3 + v1[14];
  *(v238 + v3) = 1;
  *v4 = "personOverallPopularity";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v238 + v3 + v2 + v1[14];
  *(v238 + v3 + v2) = 2;
  *v8 = "personLongTermPopularity";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v238 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "personPopularityGivenMonday";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v238 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "mondayPopularityGivenPerson";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v238 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "personPosteriorProbabilityGivenMonday";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v238 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "personPopularityGivenTuesday";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v7();
  v17 = (v238 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "tuesdayPopularityGivenPerson";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  v19 = (v238 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "personPosteriorProbabilityGivenTuesday";
  *(v20 + 1) = 38;
  v20[16] = 2;
  v7();
  v21 = (v238 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "personPopularityGivenWednesday";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v7();
  v23 = (v238 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "wednesdayPopularityGivenPerson";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v7();
  v25 = (v238 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "personPosteriorProbabilityGivenWednesday";
  *(v26 + 1) = 40;
  v26[16] = 2;
  v7();
  v27 = (v238 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "personPopularityGivenThursday";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v238 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "thursdayPopularityGivenPerson";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v7();
  v31 = (v238 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "personPosteriorProbabilityGivenThursday";
  *(v32 + 1) = 39;
  v32[16] = 2;
  v7();
  v33 = (v238 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "personPopularityGivenFriday";
  *(v34 + 1) = 27;
  v34[16] = 2;
  v7();
  v35 = (v238 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "fridayPopularityGivenPerson";
  *(v36 + 1) = 27;
  v36[16] = 2;
  v7();
  v37 = (v238 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "personPosteriorProbabilityGivenFriday";
  *(v38 + 1) = 37;
  v38[16] = 2;
  v7();
  v39 = (v238 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "personPopularityGivenSaturday";
  *(v40 + 1) = 29;
  v40[16] = 2;
  v7();
  v41 = (v238 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "saturdayPopularityGivenPerson";
  *(v42 + 1) = 29;
  v42[16] = 2;
  v7();
  v43 = (v238 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "personPosteriorProbabilityGivenSaturday";
  *(v44 + 1) = 39;
  v44[16] = 2;
  v7();
  v45 = (v238 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "personPopularityGivenSunday";
  *(v46 + 1) = 27;
  v46[16] = 2;
  v7();
  v47 = (v238 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "sundayPopularityGivenPerson";
  *(v48 + 1) = 27;
  v48[16] = 2;
  v7();
  v49 = (v238 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "personPosteriorProbabilityGivenSunday";
  *(v50 + 1) = 37;
  v50[16] = 2;
  v7();
  v51 = (v238 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "personPopularityGivenMorning";
  *(v52 + 1) = 28;
  v52[16] = 2;
  v7();
  v53 = (v238 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "morningPopularityGivenPerson";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v238 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "personPosteriorProbabilityGivenMorning";
  *(v56 + 1) = 38;
  v56[16] = 2;
  v7();
  v57 = (v238 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "personPopularityGivenAfternoon";
  *(v58 + 1) = 30;
  v58[16] = 2;
  v7();
  v59 = (v238 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "afternoonPopularityGivenPerson";
  *(v60 + 1) = 30;
  v60[16] = 2;
  v7();
  v61 = (v238 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "personPosteriorProbabilityGivenAfternoon";
  *(v62 + 1) = 40;
  v62[16] = 2;
  v7();
  v63 = (v238 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "personPopularityGivenEvening";
  *(v64 + 1) = 28;
  v64[16] = 2;
  v7();
  v65 = (v238 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "eveningPopularityGivenPerson";
  *(v66 + 1) = 28;
  v66[16] = 2;
  v7();
  v67 = (v238 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "personPosteriorProbabilityGivenEvening";
  *(v68 + 1) = 38;
  v68[16] = 2;
  v7();
  v69 = (v238 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "personPopularityGivenNight";
  *(v70 + 1) = 26;
  v70[16] = 2;
  v7();
  v71 = (v238 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "nightPopularityGivenPerson";
  *(v72 + 1) = 26;
  v72[16] = 2;
  v7();
  v73 = (v238 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "personPosteriorProbabilityGivenNight";
  *(v74 + 1) = 36;
  v74[16] = 2;
  v7();
  v75 = (v238 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "personPosteriorProbabilityGivenMondayMorning";
  *(v76 + 1) = 44;
  v76[16] = 2;
  v7();
  v77 = (v238 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "personPosteriorProbabilityGivenMondayAfternoon";
  *(v78 + 1) = 46;
  v78[16] = 2;
  v7();
  v79 = (v238 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "personPosteriorProbabilityGivenMondayEvening";
  *(v80 + 1) = 44;
  v80[16] = 2;
  v7();
  v81 = (v238 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "personPosteriorProbabilityGivenMondayNight";
  *(v82 + 1) = 42;
  v82[16] = 2;
  v7();
  v83 = (v238 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "personPosteriorProbabilityGivenTuesdayMorning";
  *(v84 + 1) = 45;
  v84[16] = 2;
  v7();
  v85 = (v238 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "personPosteriorProbabilityGivenTuesdayAfternoon";
  *(v86 + 1) = 47;
  v86[16] = 2;
  v7();
  v87 = (v238 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "personPosteriorProbabilityGivenTuesdayEvening";
  *(v88 + 1) = 45;
  v88[16] = 2;
  v7();
  v89 = (v238 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "personPosteriorProbabilityGivenTuesdayNight";
  *(v90 + 1) = 43;
  v90[16] = 2;
  v7();
  v91 = (v238 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "personPosteriorProbabilityGivenWednesdayMorning";
  *(v92 + 1) = 47;
  v92[16] = 2;
  v7();
  v93 = (v238 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "personPosteriorProbabilityGivenWednesdayAfternoon";
  *(v94 + 1) = 49;
  v94[16] = 2;
  v7();
  v95 = (v238 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "personPosteriorProbabilityGivenWednesdayEvening";
  *(v96 + 1) = 47;
  v96[16] = 2;
  v7();
  v97 = (v238 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "personPosteriorProbabilityGivenWednesdayNight";
  *(v98 + 1) = 45;
  v98[16] = 2;
  v7();
  v99 = (v238 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "personPosteriorProbabilityGivenThursdayMorning";
  *(v100 + 1) = 46;
  v100[16] = 2;
  v7();
  v101 = (v238 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "personPosteriorProbabilityGivenThursdayAfternoon";
  *(v102 + 1) = 48;
  v102[16] = 2;
  v7();
  v103 = (v238 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "personPosteriorProbabilityGivenThursdayEvening";
  *(v104 + 1) = 46;
  v104[16] = 2;
  v7();
  v105 = (v238 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "personPosteriorProbabilityGivenThursdayNight";
  *(v106 + 1) = 44;
  v106[16] = 2;
  v7();
  v107 = (v238 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "personPosteriorProbabilityGivenFridayMorning";
  *(v108 + 1) = 44;
  v108[16] = 2;
  v7();
  v109 = (v238 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "personPosteriorProbabilityGivenFridayAfternoon";
  *(v110 + 1) = 46;
  v110[16] = 2;
  v7();
  v111 = (v238 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "personPosteriorProbabilityGivenFridayEvening";
  *(v112 + 1) = 44;
  v112[16] = 2;
  v7();
  v113 = (v238 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "personPosteriorProbabilityGivenFridayNight";
  *(v114 + 1) = 42;
  v114[16] = 2;
  v7();
  v115 = (v238 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "personPosteriorProbabilityGivenSaturdayMorning";
  *(v116 + 1) = 46;
  v116[16] = 2;
  v7();
  v117 = (v238 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "personPosteriorProbabilityGivenSaturdayAfternoon";
  *(v118 + 1) = 48;
  v118[16] = 2;
  v7();
  v119 = (v238 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "personPosteriorProbabilityGivenSaturdayEvening";
  *(v120 + 1) = 46;
  v120[16] = 2;
  v7();
  v121 = (v238 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "personPosteriorProbabilityGivenSaturdayNight";
  *(v122 + 1) = 44;
  v122[16] = 2;
  v7();
  v123 = (v238 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "personPosteriorProbabilityGivenSundayMorning";
  *(v124 + 1) = 44;
  v124[16] = 2;
  v7();
  v125 = (v238 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "personPosteriorProbabilityGivenSundayAfternoon";
  *(v126 + 1) = 46;
  v126[16] = 2;
  v7();
  v127 = (v238 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "personPosteriorProbabilityGivenSundayEvening";
  *(v128 + 1) = 44;
  v128[16] = 2;
  v7();
  v129 = (v238 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "personPosteriorProbabilityGivenSundayNight";
  *(v130 + 1) = 42;
  v130[16] = 2;
  v7();
  v131 = (v238 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "personPopularityGivenDefaultFocus";
  *(v132 + 1) = 33;
  v132[16] = 2;
  v7();
  v133 = (v238 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "defaultFocusPopularityGivenPerson";
  *(v134 + 1) = 33;
  v134[16] = 2;
  v7();
  v135 = (v238 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "personPosteriorProbabilityGivenDefaultFocus";
  *(v136 + 1) = 43;
  v136[16] = 2;
  v7();
  v137 = (v238 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 67;
  *v138 = "personPopularityGivenMindfulnessFocus";
  *(v138 + 1) = 37;
  v138[16] = 2;
  v7();
  v139 = (v238 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 68;
  *v140 = "mindfulnessFocusPopularityGivenPerson";
  *(v140 + 1) = 37;
  v140[16] = 2;
  v7();
  v141 = (v238 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 69;
  *v142 = "personPosteriorProbabilityGivenMindfulnessFocus";
  *(v142 + 1) = 47;
  v142[16] = 2;
  v7();
  v143 = (v238 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 70;
  *v144 = "personPopularityGivenExerciseFocus";
  *(v144 + 1) = 34;
  v144[16] = 2;
  v7();
  v145 = (v238 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 71;
  *v146 = "exerciseFocusPopularityGivenPerson";
  *(v146 + 1) = 34;
  v146[16] = 2;
  v7();
  v147 = (v238 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 72;
  *v148 = "personPosteriorProbabilityGivenExerciseFocus";
  *(v148 + 1) = 44;
  v148[16] = 2;
  v7();
  v149 = (v238 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 73;
  *v150 = "personPopularityGivenSleepFocus";
  *(v150 + 1) = 31;
  v150[16] = 2;
  v7();
  v151 = (v238 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 74;
  *v152 = "sleepFocusPopularityGivenPerson";
  *(v152 + 1) = 31;
  v152[16] = 2;
  v7();
  v153 = (v238 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 75;
  *v154 = "personPosteriorProbabilityGivenSleepFocus";
  *(v154 + 1) = 41;
  v154[16] = 2;
  v7();
  v155 = (v238 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 76;
  *v156 = "personPopularityGivenDrivingFocus";
  *(v156 + 1) = 33;
  v156[16] = 2;
  v7();
  v157 = (v238 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 77;
  *v158 = "drivingFocusPopularityGivenPerson";
  *(v158 + 1) = 33;
  v158[16] = 2;
  v7();
  v159 = (v238 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 78;
  *v160 = "personPosteriorProbabilityGivenDrivingFocus";
  *(v160 + 1) = 43;
  v160[16] = 2;
  v7();
  v161 = (v238 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 79;
  *v162 = "personPopularityGivenGamingFocus";
  *(v162 + 1) = 32;
  v162[16] = 2;
  v7();
  v163 = (v238 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 80;
  *v164 = "gamingFocusPopularityGivenPerson";
  *(v164 + 1) = 32;
  v164[16] = 2;
  v7();
  v165 = (v238 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 81;
  *v166 = "personPosteriorProbabilityGivenGamingFocus";
  *(v166 + 1) = 42;
  v166[16] = 2;
  v7();
  v167 = (v238 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 82;
  *v168 = "personPopularityGivenReadingFocus";
  *(v168 + 1) = 33;
  v168[16] = 2;
  v7();
  v169 = (v238 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 83;
  *v170 = "readingFocusPopularityGivenPerson";
  *(v170 + 1) = 33;
  v170[16] = 2;
  v7();
  v171 = (v238 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 84;
  *v172 = "personPosteriorProbabilityGivenReadingFocus";
  *(v172 + 1) = 43;
  v172[16] = 2;
  v7();
  v173 = (v238 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 85;
  *v174 = "personPopularityGivenPersonalTimeFocus";
  *(v174 + 1) = 38;
  v174[16] = 2;
  v7();
  v175 = (v238 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 86;
  *v176 = "personalTimeFocusPopularityGivenPerson";
  *(v176 + 1) = 38;
  v176[16] = 2;
  v7();
  v177 = (v238 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 87;
  *v178 = 0x1C4F99000;
  *(v178 + 1) = 48;
  v178[16] = 2;
  v7();
  v179 = (v238 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 88;
  *v180 = "personPopularityGivenWorkFocus";
  *(v180 + 1) = 30;
  v180[16] = 2;
  v7();
  v181 = (v238 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 89;
  *v182 = "workFocusPopularityGivenPerson";
  *(v182 + 1) = 30;
  v182[16] = 2;
  v7();
  v183 = (v238 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 90;
  *v184 = "personPosteriorProbabilityGivenWorkFocus";
  *(v184 + 1) = 40;
  v184[16] = 2;
  v7();
  v185 = (v238 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 91;
  *v186 = "personPopularityGivenHome";
  *(v186 + 1) = 25;
  v186[16] = 2;
  v7();
  v187 = (v238 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 92;
  *v188 = "homePopularityGivenPerson";
  *(v188 + 1) = 25;
  v188[16] = 2;
  v7();
  v189 = (v238 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 93;
  *v190 = "personPosteriorProbabilityGivenHome";
  *(v190 + 1) = 35;
  v190[16] = 2;
  v7();
  v191 = (v238 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 94;
  *v192 = "personPopularityGivenWork";
  *(v192 + 1) = 25;
  v192[16] = 2;
  v7();
  v193 = (v238 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 95;
  *v194 = "workPopularityGivenPerson";
  *(v194 + 1) = 25;
  v194[16] = 2;
  v7();
  v195 = (v238 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 96;
  *v196 = "personPosteriorProbabilityGivenWork";
  *(v196 + 1) = 35;
  v196[16] = 2;
  v7();
  v197 = (v238 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 97;
  *v198 = "personPopularityGivenWeekday";
  *(v198 + 1) = 28;
  v198[16] = 2;
  v7();
  v199 = (v238 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 98;
  *v200 = "weekdayPopularityGivenPerson";
  *(v200 + 1) = 28;
  v200[16] = 2;
  v7();
  v201 = (v238 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 99;
  *v202 = "personPosteriorProbabilityGivenWeekday";
  *(v202 + 1) = 38;
  v202[16] = 2;
  v7();
  v203 = (v238 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 100;
  *v204 = "personPopularityGivenWeekend";
  *(v204 + 1) = 28;
  v204[16] = 2;
  v7();
  v205 = (v238 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 101;
  *v206 = "weekendPopularityGivenPerson";
  *(v206 + 1) = 28;
  v206[16] = 2;
  v7();
  v207 = (v238 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 102;
  *v208 = "personPosteriorProbabilityGivenWeekend";
  *(v208 + 1) = 38;
  v208[16] = 2;
  v7();
  v209 = (v238 + v3 + 102 * v2);
  v210 = v209 + v1[14];
  *v209 = 103;
  *v210 = "personPosteriorProbabilityGivenWeekdayMorning";
  *(v210 + 1) = 45;
  v210[16] = 2;
  v7();
  v211 = (v238 + v3 + 103 * v2);
  v212 = v211 + v1[14];
  *v211 = 104;
  *v212 = "personPosteriorProbabilityGivenWeekdayAfternoon";
  *(v212 + 1) = 47;
  v212[16] = 2;
  v7();
  v213 = (v238 + v3 + 104 * v2);
  v214 = v213 + v1[14];
  *v213 = 105;
  *v214 = "personPosteriorProbabilityGivenWeekdayEvening";
  *(v214 + 1) = 45;
  v214[16] = 2;
  v7();
  v215 = (v238 + v3 + 105 * v2);
  v216 = v215 + v1[14];
  *v215 = 106;
  *v216 = "personPosteriorProbabilityGivenWeekdayNight";
  *(v216 + 1) = 43;
  v216[16] = 2;
  v7();
  v217 = (v238 + v3 + 106 * v2);
  v218 = v217 + v1[14];
  *v217 = 107;
  *v218 = "personPosteriorProbabilityGivenWeekendMorning";
  *(v218 + 1) = 45;
  v218[16] = 2;
  v7();
  v219 = (v238 + v3 + 107 * v2);
  v220 = v219 + v1[14];
  *v219 = 108;
  *v220 = "personPosteriorProbabilityGivenWeekendAfternoon";
  *(v220 + 1) = 47;
  v220[16] = 2;
  v7();
  v221 = (v238 + v3 + 108 * v2);
  v222 = v221 + v1[14];
  *v221 = 109;
  *v222 = "personPosteriorProbabilityGivenWeekendEvening";
  *(v222 + 1) = 45;
  v222[16] = 2;
  v7();
  v223 = (v238 + v3 + 109 * v2);
  v224 = v223 + v1[14];
  *v223 = 110;
  *v224 = "personPosteriorProbabilityGivenWeekendNight";
  *(v224 + 1) = 43;
  v224[16] = 2;
  v7();
  v225 = (v238 + v3 + 110 * v2);
  v226 = v225 + v1[14];
  *v225 = 111;
  *v226 = "top1PersonInteractionMechanism";
  *(v226 + 1) = 30;
  v226[16] = 2;
  v7();
  v227 = (v238 + v3 + 111 * v2);
  v228 = v227 + v1[14];
  *v227 = 112;
  *v228 = "top2PersonInteractionMechanism";
  *(v228 + 1) = 30;
  v228[16] = 2;
  v7();
  v229 = (v238 + v3 + 112 * v2);
  v230 = v229 + v1[14];
  *v229 = 113;
  *v230 = "top3PersonInteractionMechanism";
  *(v230 + 1) = 30;
  v230[16] = 2;
  v7();
  v231 = (v238 + v3 + 113 * v2);
  v232 = v231 + v1[14];
  *v231 = 114;
  *v232 = "top1PersonInteractionMechanismOnly";
  *(v232 + 1) = 34;
  v232[16] = 2;
  v7();
  v233 = (v238 + v3 + 114 * v2);
  v234 = v233 + v1[14];
  *v233 = 115;
  *v234 = "top2PersonInteractionMechanismOnly";
  *(v234 + 1) = 34;
  v234[16] = 2;
  v7();
  v235 = (v238 + v3 + 115 * v2);
  v236 = v235 + v1[14];
  *v235 = 116;
  *v236 = "top3PersonInteractionMechanismOnly";
  *(v236 + 1) = 34;
  v236[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C473EBB4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1C473EC08()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personOverallPopularity;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personLongTermPopularity, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMonday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mondayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMonday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenTuesday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__tuesdayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWednesday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__wednesdayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenThursday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__thursdayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenFriday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__fridayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFriday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSaturday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__saturdayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSunday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sundayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSunday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__morningPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__afternoonPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__eveningPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nightPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDefaultFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__defaultFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDefaultFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMindfulnessFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mindfulnessFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMindfulnessFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenExerciseFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__exerciseFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenExerciseFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSleepFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sleepFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSleepFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDrivingFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__drivingFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDrivingFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenGamingFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__gamingFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenGamingFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenReadingFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__readingFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenReadingFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenPersonalTimeFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personalTimeFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenPersonalTimeFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWorkFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workFocusPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWorkFocus, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenHome, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__homePopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenHome, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWork, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWork, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekdayPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekend, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekendPopularityGivenPerson, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekend, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendMorning, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendAfternoon, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendEvening, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendNight, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanism, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanism, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanism, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanismOnly, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanismOnly, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanismOnly, 1, 1, v2);
  return v0;
}

uint64_t sub_1C473F8EC(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v240 - v4;
  v6 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personOverallPopularity;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personLongTermPopularity;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personLongTermPopularity, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMonday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMonday, 1, 1, v7);
  v241 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mondayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mondayPopularityGivenPerson, 1, 1, v7);
  v242 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMonday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMonday, 1, 1, v7);
  v243 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenTuesday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenTuesday, 1, 1, v7);
  v244 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__tuesdayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__tuesdayPopularityGivenPerson, 1, 1, v7);
  v245 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesday, 1, 1, v7);
  v246 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWednesday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWednesday, 1, 1, v7);
  v247 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__wednesdayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__wednesdayPopularityGivenPerson, 1, 1, v7);
  v248 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesday, 1, 1, v7);
  v249 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenThursday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenThursday, 1, 1, v7);
  v250 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__thursdayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__thursdayPopularityGivenPerson, 1, 1, v7);
  v251 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursday, 1, 1, v7);
  v252 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenFriday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenFriday, 1, 1, v7);
  v253 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__fridayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__fridayPopularityGivenPerson, 1, 1, v7);
  v254 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFriday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFriday, 1, 1, v7);
  v255 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSaturday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSaturday, 1, 1, v7);
  v256 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__saturdayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__saturdayPopularityGivenPerson, 1, 1, v7);
  v257 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturday, 1, 1, v7);
  v258 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSunday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSunday, 1, 1, v7);
  v259 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sundayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sundayPopularityGivenPerson, 1, 1, v7);
  v260 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSunday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSunday, 1, 1, v7);
  v261 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMorning, 1, 1, v7);
  v262 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__morningPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__morningPopularityGivenPerson, 1, 1, v7);
  v263 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMorning, 1, 1, v7);
  v264 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenAfternoon, 1, 1, v7);
  v265 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__afternoonPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__afternoonPopularityGivenPerson, 1, 1, v7);
  v266 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenAfternoon, 1, 1, v7);
  v267 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenEvening, 1, 1, v7);
  v268 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__eveningPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__eveningPopularityGivenPerson, 1, 1, v7);
  v269 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenEvening, 1, 1, v7);
  v270 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenNight, 1, 1, v7);
  v271 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nightPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nightPopularityGivenPerson, 1, 1, v7);
  v272 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenNight, 1, 1, v7);
  v273 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayMorning, 1, 1, v7);
  v274 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayAfternoon, 1, 1, v7);
  v275 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayEvening, 1, 1, v7);
  v276 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayNight, 1, 1, v7);
  v277 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayMorning, 1, 1, v7);
  v278 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayAfternoon, 1, 1, v7);
  v279 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayEvening, 1, 1, v7);
  v280 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayNight, 1, 1, v7);
  v281 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayMorning, 1, 1, v7);
  v282 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayAfternoon, 1, 1, v7);
  v283 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayEvening, 1, 1, v7);
  v284 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayNight, 1, 1, v7);
  v285 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayMorning, 1, 1, v7);
  v286 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayAfternoon, 1, 1, v7);
  v287 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayEvening, 1, 1, v7);
  v288 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayNight, 1, 1, v7);
  v289 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayMorning, 1, 1, v7);
  v290 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayAfternoon, 1, 1, v7);
  v291 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayEvening, 1, 1, v7);
  v292 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayNight, 1, 1, v7);
  v293 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayMorning, 1, 1, v7);
  v294 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayAfternoon, 1, 1, v7);
  v295 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayEvening, 1, 1, v7);
  v296 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayNight, 1, 1, v7);
  v297 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayMorning, 1, 1, v7);
  v298 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayAfternoon, 1, 1, v7);
  v299 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayEvening, 1, 1, v7);
  v300 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayNight, 1, 1, v7);
  v301 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDefaultFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDefaultFocus, 1, 1, v7);
  v302 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__defaultFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__defaultFocusPopularityGivenPerson, 1, 1, v7);
  v303 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDefaultFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDefaultFocus, 1, 1, v7);
  v304 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMindfulnessFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMindfulnessFocus, 1, 1, v7);
  v305 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mindfulnessFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mindfulnessFocusPopularityGivenPerson, 1, 1, v7);
  v306 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMindfulnessFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMindfulnessFocus, 1, 1, v7);
  v307 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenExerciseFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenExerciseFocus, 1, 1, v7);
  v308 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__exerciseFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__exerciseFocusPopularityGivenPerson, 1, 1, v7);
  v309 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenExerciseFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenExerciseFocus, 1, 1, v7);
  v310 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSleepFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSleepFocus, 1, 1, v7);
  v311 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sleepFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sleepFocusPopularityGivenPerson, 1, 1, v7);
  v312 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSleepFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSleepFocus, 1, 1, v7);
  v313 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDrivingFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDrivingFocus, 1, 1, v7);
  v314 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__drivingFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__drivingFocusPopularityGivenPerson, 1, 1, v7);
  v315 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDrivingFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDrivingFocus, 1, 1, v7);
  v316 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenGamingFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenGamingFocus, 1, 1, v7);
  v317 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__gamingFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__gamingFocusPopularityGivenPerson, 1, 1, v7);
  v318 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenGamingFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenGamingFocus, 1, 1, v7);
  v319 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenReadingFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenReadingFocus, 1, 1, v7);
  v320 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__readingFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__readingFocusPopularityGivenPerson, 1, 1, v7);
  v321 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenReadingFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenReadingFocus, 1, 1, v7);
  v322 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenPersonalTimeFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenPersonalTimeFocus, 1, 1, v7);
  v323 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personalTimeFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personalTimeFocusPopularityGivenPerson, 1, 1, v7);
  v324 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenPersonalTimeFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenPersonalTimeFocus, 1, 1, v7);
  v325 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWorkFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWorkFocus, 1, 1, v7);
  v326 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workFocusPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workFocusPopularityGivenPerson, 1, 1, v7);
  v327 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWorkFocus;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWorkFocus, 1, 1, v7);
  v328 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenHome;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenHome, 1, 1, v7);
  v329 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__homePopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__homePopularityGivenPerson, 1, 1, v7);
  v330 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenHome;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenHome, 1, 1, v7);
  v331 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWork;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWork, 1, 1, v7);
  v332 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workPopularityGivenPerson, 1, 1, v7);
  v333 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWork;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWork, 1, 1, v7);
  v334 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekday, 1, 1, v7);
  v335 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekdayPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekdayPopularityGivenPerson, 1, 1, v7);
  v336 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekday, 1, 1, v7);
  v337 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekend;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekend, 1, 1, v7);
  v338 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekendPopularityGivenPerson;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekendPopularityGivenPerson, 1, 1, v7);
  v339 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekend;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekend, 1, 1, v7);
  v340 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayMorning, 1, 1, v7);
  v341 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayAfternoon, 1, 1, v7);
  v342 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayEvening, 1, 1, v7);
  v343 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayNight, 1, 1, v7);
  v344 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendMorning;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendMorning, 1, 1, v7);
  v345 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendAfternoon;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendAfternoon, 1, 1, v7);
  v346 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendEvening;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendEvening, 1, 1, v7);
  v347 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendNight;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendNight, 1, 1, v7);
  v348 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanism;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanism, 1, 1, v7);
  v349 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanism;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanism, 1, 1, v7);
  v350 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanism;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanism, 1, 1, v7);
  v351 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanismOnly;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanismOnly, 1, 1, v7);
  v352 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanismOnly;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanismOnly, 1, 1, v7);
  v353 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanismOnly;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanismOnly, 1, 1, v7);
  v10 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personOverallPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v10, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v6);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personLongTermPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v8);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMonday;
  swift_beginAccess();
  sub_1C446C964(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v9);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mondayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v13, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v14 = v241;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v14);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMonday;
  swift_beginAccess();
  sub_1C446C964(a1 + v15, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v16 = v242;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v16);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenTuesday;
  swift_beginAccess();
  sub_1C446C964(a1 + v17, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v18 = v243;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v18);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__tuesdayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v19, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = v244;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v20);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesday;
  swift_beginAccess();
  sub_1C446C964(a1 + v21, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v22 = v245;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v22);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWednesday;
  swift_beginAccess();
  sub_1C446C964(a1 + v23, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v24 = v246;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__wednesdayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v25, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v26 = v247;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v26);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesday;
  swift_beginAccess();
  sub_1C446C964(a1 + v27, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v28 = v248;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v28);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenThursday;
  swift_beginAccess();
  sub_1C446C964(a1 + v29, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v30 = v249;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v30);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__thursdayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v31, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v32 = v250;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v32);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursday;
  swift_beginAccess();
  sub_1C446C964(a1 + v33, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v34 = v251;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v34);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenFriday;
  swift_beginAccess();
  sub_1C446C964(a1 + v35, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v36 = v252;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v36);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__fridayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v37, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v38 = v253;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v38);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFriday;
  swift_beginAccess();
  sub_1C446C964(a1 + v39, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v40 = v254;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v40);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSaturday;
  swift_beginAccess();
  sub_1C446C964(a1 + v41, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v42 = v255;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v42);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__saturdayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v43, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v44 = v256;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v44);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturday;
  swift_beginAccess();
  sub_1C446C964(a1 + v45, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v46 = v257;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v46);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSunday;
  swift_beginAccess();
  sub_1C446C964(a1 + v47, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v48 = v258;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v48);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sundayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v49, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v50 = v259;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v50);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSunday;
  swift_beginAccess();
  sub_1C446C964(a1 + v51, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v52 = v260;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v52);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v53, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v54 = v261;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v54);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__morningPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v55, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v56 = v262;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v56);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v57, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v58 = v263;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v58);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v59, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v60 = v264;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v60);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__afternoonPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v61, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v62 = v265;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v62);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v63, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v64 = v266;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v64);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v65, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v66 = v267;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v66);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__eveningPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v67, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v68 = v268;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v68);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v69, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v70 = v269;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v70);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v71, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v72 = v270;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v72);
  swift_endAccess();
  v73 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nightPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v73, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v74 = v271;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v74);
  swift_endAccess();
  v75 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v75, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v76 = v272;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v76);
  swift_endAccess();
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v77, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v78 = v273;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v78);
  swift_endAccess();
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v79, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v80 = v274;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v80);
  swift_endAccess();
  v81 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v81, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v82 = v275;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v82);
  swift_endAccess();
  v83 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMondayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v83, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v84 = v276;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v84);
  swift_endAccess();
  v85 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v85, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v86 = v277;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v86);
  swift_endAccess();
  v87 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v87, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v88 = v278;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v88);
  swift_endAccess();
  v89 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v89, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v90 = v279;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v90);
  swift_endAccess();
  v91 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenTuesdayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v91, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v92 = v280;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v92);
  swift_endAccess();
  v93 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v93, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v94 = v281;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v94);
  swift_endAccess();
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v95, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v96 = v282;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v96);
  swift_endAccess();
  v97 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v97, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v98 = v283;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v98);
  swift_endAccess();
  v99 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWednesdayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v99, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v100 = v284;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v100);
  swift_endAccess();
  v101 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v101, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v102 = v285;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v102);
  swift_endAccess();
  v103 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v103, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v104 = v286;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v104);
  swift_endAccess();
  v105 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v105, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v106 = v287;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v106);
  swift_endAccess();
  v107 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenThursdayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v107, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v108 = v288;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v108);
  swift_endAccess();
  v109 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v109, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v110 = v289;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v110);
  swift_endAccess();
  v111 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v111, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v112 = v290;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v112);
  swift_endAccess();
  v113 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v113, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v114 = v291;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v114);
  swift_endAccess();
  v115 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenFridayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v115, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v116 = v292;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v116);
  swift_endAccess();
  v117 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v117, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v118 = v293;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v118);
  swift_endAccess();
  v119 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v119, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v120 = v294;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v120);
  swift_endAccess();
  v121 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v121, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v122 = v295;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v122);
  swift_endAccess();
  v123 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSaturdayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v123, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v124 = v296;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v124);
  swift_endAccess();
  v125 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v125, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v126 = v297;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v126);
  swift_endAccess();
  v127 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v127, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v128 = v298;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v128);
  swift_endAccess();
  v129 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v129, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v130 = v299;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v130);
  swift_endAccess();
  v131 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSundayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v131, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v132 = v300;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v132);
  swift_endAccess();
  v133 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDefaultFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v133, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v134 = v301;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v134);
  swift_endAccess();
  v135 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__defaultFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v135, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v136 = v302;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v136);
  swift_endAccess();
  v137 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDefaultFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v137, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v138 = v303;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v138);
  swift_endAccess();
  v139 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenMindfulnessFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v139, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v140 = v304;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v140);
  swift_endAccess();
  v141 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__mindfulnessFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v141, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v142 = v305;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v142);
  swift_endAccess();
  v143 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenMindfulnessFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v143, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v144 = v306;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v144);
  swift_endAccess();
  v145 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenExerciseFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v145, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v146 = v307;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v146);
  swift_endAccess();
  v147 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__exerciseFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v147, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v148 = v308;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v148);
  swift_endAccess();
  v149 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenExerciseFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v149, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v150 = v309;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v150);
  swift_endAccess();
  v151 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenSleepFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v151, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v152 = v310;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v152);
  swift_endAccess();
  v153 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sleepFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v153, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v154 = v311;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v154);
  swift_endAccess();
  v155 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenSleepFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v155, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v156 = v312;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v156);
  swift_endAccess();
  v157 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenDrivingFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v157, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v158 = v313;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v158);
  swift_endAccess();
  v159 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__drivingFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v159, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v160 = v314;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v160);
  swift_endAccess();
  v161 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenDrivingFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v161, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v162 = v315;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v162);
  swift_endAccess();
  v163 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenGamingFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v163, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v164 = v316;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v164);
  swift_endAccess();
  v165 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__gamingFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v165, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v166 = v317;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v166);
  swift_endAccess();
  v167 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenGamingFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v167, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v168 = v318;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v168);
  swift_endAccess();
  v169 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenReadingFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v169, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v170 = v319;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v170);
  swift_endAccess();
  v171 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__readingFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v171, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v172 = v320;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v172);
  swift_endAccess();
  v173 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenReadingFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v173, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v174 = v321;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v174);
  swift_endAccess();
  v175 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenPersonalTimeFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v175, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v176 = v322;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v176);
  swift_endAccess();
  v177 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personalTimeFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v177, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v178 = v323;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v178);
  swift_endAccess();
  v179 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenPersonalTimeFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v179, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v180 = v324;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v180);
  swift_endAccess();
  v181 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWorkFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v181, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v182 = v325;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v182);
  swift_endAccess();
  v183 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workFocusPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v183, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v184 = v326;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v184);
  swift_endAccess();
  v185 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWorkFocus;
  swift_beginAccess();
  sub_1C446C964(a1 + v185, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v186 = v327;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v186);
  swift_endAccess();
  v187 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenHome;
  swift_beginAccess();
  sub_1C446C964(a1 + v187, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v188 = v328;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v188);
  swift_endAccess();
  v189 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__homePopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v189, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v190 = v329;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v190);
  swift_endAccess();
  v191 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenHome;
  swift_beginAccess();
  sub_1C446C964(a1 + v191, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v192 = v330;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v192);
  swift_endAccess();
  v193 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWork;
  swift_beginAccess();
  sub_1C446C964(a1 + v193, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v194 = v331;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v194);
  swift_endAccess();
  v195 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__workPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v195, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v196 = v332;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v196);
  swift_endAccess();
  v197 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWork;
  swift_beginAccess();
  sub_1C446C964(a1 + v197, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v198 = v333;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v198);
  swift_endAccess();
  v199 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekday;
  swift_beginAccess();
  sub_1C446C964(a1 + v199, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v200 = v334;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v200);
  swift_endAccess();
  v201 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekdayPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v201, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v202 = v335;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v202);
  swift_endAccess();
  v203 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekday;
  swift_beginAccess();
  sub_1C446C964(a1 + v203, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v204 = v336;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v204);
  swift_endAccess();
  v205 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPopularityGivenWeekend;
  swift_beginAccess();
  sub_1C446C964(a1 + v205, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v206 = v337;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v206);
  swift_endAccess();
  v207 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__weekendPopularityGivenPerson;
  swift_beginAccess();
  sub_1C446C964(a1 + v207, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v208 = v338;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v208);
  swift_endAccess();
  v209 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekend;
  swift_beginAccess();
  sub_1C446C964(a1 + v209, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v210 = v339;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v210);
  swift_endAccess();
  v211 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v211, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v212 = v340;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v212);
  swift_endAccess();
  v213 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v213, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v214 = v341;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v214);
  swift_endAccess();
  v215 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v215, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v216 = v342;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v216);
  swift_endAccess();
  v217 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekdayNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v217, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v218 = v343;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v218);
  swift_endAccess();
  v219 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendMorning;
  swift_beginAccess();
  sub_1C446C964(a1 + v219, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v220 = v344;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v220);
  swift_endAccess();
  v221 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendAfternoon;
  swift_beginAccess();
  sub_1C446C964(a1 + v221, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v222 = v345;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v222);
  swift_endAccess();
  v223 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendEvening;
  swift_beginAccess();
  sub_1C446C964(a1 + v223, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v224 = v346;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v224);
  swift_endAccess();
  v225 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__personPosteriorProbabilityGivenWeekendNight;
  swift_beginAccess();
  sub_1C446C964(a1 + v225, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v226 = v347;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v226);
  swift_endAccess();
  v227 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanism;
  swift_beginAccess();
  sub_1C446C964(a1 + v227, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v228 = v348;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v228);
  swift_endAccess();
  v229 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanism;
  swift_beginAccess();
  sub_1C446C964(a1 + v229, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v230 = v349;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v230);
  swift_endAccess();
  v231 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanism;
  swift_beginAccess();
  sub_1C446C964(a1 + v231, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v232 = v350;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v232);
  swift_endAccess();
  v233 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top1PersonInteractionMechanismOnly;
  swift_beginAccess();
  sub_1C446C964(a1 + v233, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v234 = v351;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v234);
  swift_endAccess();
  v235 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top2PersonInteractionMechanismOnly;
  swift_beginAccess();
  sub_1C446C964(a1 + v235, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v236 = v352;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v236);
  swift_endAccess();
  v237 = OBJC_IVAR____TtCV24IntelligencePlatformCore44EntityTaggingPersonPersonInteractionFeaturesP33_316DD523D8D9654A3007195383EEB71613_StorageClass__top3PersonInteractionMechanismOnly;
  swift_beginAccess();
  sub_1C446C964(a1 + v237, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v238 = v353;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v238);
  swift_endAccess();
  return v1;
}