uint64_t sub_1DC2DA444()
{
  sub_1DC516AFC();
  sub_1DC2DB304(&qword_1ECC7BAE0, MEMORY[0x1E69A9090], MEMORY[0x1E69A90A0]);
  sub_1DC5179EC();
  sub_1DC5179EC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1DC51825C();
  }

  return v1 & 1;
}

uint64_t sub_1DC2DA524()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation27BoolRetrievedContextMatcher_targetType;
  sub_1DC516AFC();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1DC2DA630()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C000, &qword_1DC522588);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_2(v8, v58);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C008, &qword_1DC522590);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_56_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_1();
  v14 = type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_54_0();
  v19 = type metadata accessor for TurnSummary(v18);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v21 = *(v5 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
  if (*(v21 + 16))
  {
    v22 = OUTLINED_FUNCTION_27_2(v21);
    sub_1DC2D8C78(v22, v0);
    v23 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v23, v24, v19);
    if (v28)
    {
      v25 = &qword_1ECC7BFC0;
      v26 = &unk_1DC522540;
      v27 = v0;
    }

    else
    {
      sub_1DC2DB0A4(v0, v3);
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v2, 1, v14);
      if (v28)
      {
        OUTLINED_FUNCTION_1_2();
        sub_1DC2DAD1C(v3, v29);
        v25 = &qword_1ECC7BFC8;
        v26 = &unk_1DC524050;
        v27 = v2;
      }

      else
      {
        OUTLINED_FUNCTION_2_7();
        v30 = OUTLINED_FUNCTION_41();
        sub_1DC2DB0A4(v30, v31);
        v32 = *(v3 + *(v19 + 32));
        if (v32 != 2 && (v32 & 1) != 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_1DC2DAD1C(v1, v33);
          OUTLINED_FUNCTION_1_2();
          sub_1DC2DAD1C(v3, v34);
          goto LABEL_15;
        }

        sub_1DC51218C();
        OUTLINED_FUNCTION_1_2();
        sub_1DC2DAD1C(v3, v35);
        v36 = *(v6 + 48);
        sub_1DC2DB254();
        OUTLINED_FUNCTION_2_7();
        sub_1DC2DB0A4(v1, v59 + v36);
        sub_1DC51217C();
        OUTLINED_FUNCTION_14_2(v59);
        if (!v28)
        {
          sub_1DC2DB2AC();
          v37 = OUTLINED_FUNCTION_19_6();
          v39 = v38(v37);
          if (v39 == *MEMORY[0x1E69D0CC8])
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v41 = OUTLINED_FUNCTION_47_2(v40);
            v42 = OUTLINED_FUNCTION_19_6();
            v43(v42);
            if (v41 == 1)
            {
              goto LABEL_29;
            }
          }

          else if (v39 == *MEMORY[0x1E69D0CD0])
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v45 = OUTLINED_FUNCTION_47_2(v44);
            v46 = OUTLINED_FUNCTION_19_6();
            v47(v46);
            if (v45 == 2)
            {
              goto LABEL_29;
            }
          }

          else if (v39 == *MEMORY[0x1E69D0CD8])
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v49 = OUTLINED_FUNCTION_47_2(v48);
            v50 = OUTLINED_FUNCTION_19_6();
            v51(v50);
            if (v49 == 3)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v39 == *MEMORY[0x1E69D0CC0])
            {
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
              if (!OUTLINED_FUNCTION_47_2(v52))
              {
                sub_1DC5161CC();
                OUTLINED_FUNCTION_0_2();
                (*(v55 + 8))(v59 + v36);
                v56 = OUTLINED_FUNCTION_19_6();
                v57(v56);
LABEL_29:
                sub_1DC2AAF50(v59, &qword_1ECC7C008, &qword_1DC522590);
                goto LABEL_15;
              }
            }

            v53 = OUTLINED_FUNCTION_19_6();
            v54(v53);
          }
        }

        v25 = &qword_1ECC7C000;
        v26 = &qword_1DC522588;
        v27 = v59;
      }
    }

    sub_1DC2AAF50(v27, v25, v26);
  }

LABEL_15:
  OUTLINED_FUNCTION_34();
}

void *sub_1DC2DAB60(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C010, &qword_1DC5227D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C018, &unk_1DC5227E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC2DAC98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2DAD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC2DACB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2DAD1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

char *sub_1DC2DAD70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C058, &qword_1DC522830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DC2DAE88(unint64_t result, uint64_t a2, uint64_t a3)
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
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DC2DAEF4(uint64_t result, uint64_t a2, uint64_t a3)
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

BOOL sub_1DC2DAF70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_74_1();
  return (v1() & 1) == 0;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t type metadata accessor for BoolRetrievedContextMatcher(uint64_t a1)
{
  result = qword_1ECC85A00;
  if (!qword_1ECC85A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC2DB0A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DC2DB110(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DC2DB150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC2DB1B8(uint64_t a1)
{
  result = sub_1DC516AFC();
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

uint64_t sub_1DC2DB254()
{
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1DC2DB2AC()
{
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1DC2DB304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC2DB364(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_1DC510A0C();
  v8 = v7;

  v4(v6, v8, a3);

  return sub_1DC2AD740(v6, v8);
}

uint64_t sub_1DC2DB3E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for NLRouterOverride(0);
  v7 = OUTLINED_FUNCTION_52(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v8 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v9 = sub_1DC5176FC();
  v10 = swift_allocObject();
  *(v10 + 16) = &v22;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DC2DC6D0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1DC2DC798;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DC2DB364;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  [a3 lookupKey:v9 resultBlock:v12];

  _Block_release(v12);
  LODWORD(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = v22;

  v15 = *(v14 + 16);
  if (v15)
  {
    aBlock[0] = v8;
    result = sub_1DC2DC134(0, v15, 0);
    v16 = aBlock[0];
    v17 = *(a4 + 16);
    for (i = 32; *(v14 + i) < v17; i += 8)
    {
      OUTLINED_FUNCTION_0_4();
      sub_1DC2AE0C8();
      aBlock[0] = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DC2DC134((v19 > 1), v20 + 1, 1);
        v16 = aBlock[0];
      }

      *(v16 + 16) = v20 + 1;
      OUTLINED_FUNCTION_0_4();
      result = sub_1DC2A9458();
      if (!--v15)
      {

        return v16;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1DC2DB6D0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C080, &qword_1DC522970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for OverrideMatch(0);
  v24[2] = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v24[3] = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v24[1] = v24 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {
      return v25;
    }

    v15 = *(type metadata accessor for NLRouterOverride(0) - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1DC28EB30(v8, &qword_1ECC7C080, &qword_1DC522970);
      ++v13;
    }

    else
    {
      v24[0] = type metadata accessor for OverrideMatch;
      sub_1DC2A9458();
      sub_1DC2A9458();
      v16 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DC2A6974(0, v16[2] + 1, 1, v16, &qword_1ECC7C088, &qword_1DC522978, type metadata accessor for OverrideMatch, type metadata accessor for OverrideMatch);
      }

      v17 = v16;
      v18 = v16[2];
      v25 = v17;
      v19 = *(v17 + 24);
      v20 = v18 + 1;
      if (v18 >= v19 >> 1)
      {
        v24[0] = v18 + 1;
        v21 = sub_1DC2A6974((v19 > 1), v18 + 1, 1, v25, &qword_1ECC7C088, &qword_1DC522978, type metadata accessor for OverrideMatch, type metadata accessor for OverrideMatch);
        v20 = v24[0];
        v25 = v21;
      }

      ++v13;
      v25[2] = v20;
      sub_1DC2A9458();
    }
  }

  v22 = v25;

  return v22;
}

void *sub_1DC2DBA3C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_1DC51778C();
  v11 = sub_1DC2DB3E4(v9, v10, a4, a5);

  v15[5] = v11;

  sub_1DC2AD5B0(v12);
  v15[2] = a1;
  v15[3] = a2;
  v13 = sub_1DC2DB6D0(sub_1DC2DC550, v15, v11);

  return v13;
}

uint64_t sub_1DC2DBAFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = sub_1DC2DBA3C(a1, a2, a3, a4, a5);
  sub_1DC2DBB40(v7, a6);
}

uint64_t sub_1DC2DBB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverrideMatch(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1DC2AE0C8();
    for (i = 1; v10 != i; ++i)
    {
      sub_1DC2AE0C8();
      if (sub_1DC2DED0C(&v9[*(v4 + 20)], &v7[*(v4 + 20)]))
      {
        sub_1DC2ACED4(v9, type metadata accessor for OverrideMatch);
        sub_1DC2A9458();
      }

      else
      {
        sub_1DC2ACED4(v7, type metadata accessor for OverrideMatch);
      }
    }

    sub_1DC2A9458();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1DC2DBD68()
{
  v0 = OUTLINED_FUNCTION_5_1();
  type metadata accessor for OverrideMatch(v0);
  type metadata accessor for NLRouterOverride(0);
  sub_1DC291740(&qword_1ECC7C070, type metadata accessor for NLRouterOverride, &unk_1DC522B88);
  return sub_1DC5176BC() & 1;
}

uint64_t sub_1DC2DBDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_5_1();
  v6 = *(type metadata accessor for OverrideMatch(v5) + 20);

  return a3(v4 + v6, v3 + v6);
}

char *sub_1DC2DBF3C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1DC2DBFC8(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1DC2DBF88(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1DC2DBFC8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1DC2DBFC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C098, &qword_1DC522988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1DC2DC0C8(uint64_t a1)
{
  v2 = sub_1DC51074C();
  if (v2)
  {
    v3 = v2;
    result = sub_1DC51076C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1DC51075C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1DC2DC134(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2DC154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC2DC154(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C090, &qword_1DC522980);
  v10 = *(type metadata accessor for NLRouterOverride(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NLRouterOverride(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2AB394(a4 + v16, v8, v13 + v16, type metadata accessor for NLRouterOverride);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DC2DC31C()
{
  v1 = v0;
  v2 = sub_1DC510B6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B8, &qword_1DC5229B8);
  v6 = *v0;
  v7 = sub_1DC517EEC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1DC2DC5CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

void *sub_1DC2DC60C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_11_3(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_11_3(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC2DC650(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

void *sub_1DC2DC690(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_11_3(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_11_3(result, a2);
    }
  }

  return result;
}

void sub_1DC2DC6D0(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        a1 = a1;
        goto LABEL_5;
      }

      __break(1u);

      __break(1u);
      return;
    case 2uLL:
      a1 = *(a1 + 16);
LABEL_5:
      v5 = sub_1DC2DC0C8(a1);
      goto LABEL_7;
    case 3uLL:
      v5 = 0;
      goto LABEL_7;
    default:
LABEL_7:
      sub_1DC2DBF3C();
      v6 = *(*v4 + 16);
      sub_1DC2DBF88(v6);
      v7 = *v4;
      *(v7 + 16) = v6 + 1;
      *(v7 + 8 * v6 + 32) = v5;
      return;
  }
}

void sub_1DC2DC7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = type metadata accessor for NLRouterOverrideRoute(0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D8, &qword_1DC522A30);
  OUTLINED_FUNCTION_10(v38);
  OUTLINED_FUNCTION_14_0();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &a9 - v41;
  v43 = *(v40 + 56);
  sub_1DC2DFC9C(v25, &a9 - v41);
  sub_1DC2DFC9C(v23, &v42[v43]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
  OUTLINED_FUNCTION_5_3(v42);
  if (!v45)
  {
    OUTLINED_FUNCTION_5_6();
    sub_1DC2DFC9C(v42, v37);
    OUTLINED_FUNCTION_5_3(&v42[v43]);
    if (!v45)
    {
      (*(v28 + 32))(v32, &v42[v43], v26);
      sub_1DC5157DC();
      v46 = *(v28 + 8);
      v46(v32, v26);
      v46(v37, v26);
      OUTLINED_FUNCTION_2_8();
      sub_1DC2DFCF4(v42, v47);
      goto LABEL_10;
    }

    (*(v28 + 8))(v37, v26);
LABEL_9:
    sub_1DC2AAF50(v42, &qword_1ECC7C0D8, &qword_1DC522A30);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_3(&v42[v43]);
  if (!v45)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_8();
  sub_1DC2DFCF4(v42, v44);
LABEL_10:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2DCA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_38_2();
  v12 = sub_1DC51670C();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v99 = v15 - v14;
  OUTLINED_FUNCTION_12();
  v100 = sub_1DC51716C();
  OUTLINED_FUNCTION_0();
  v94 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v97 = v18 - v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v98 = v21;
  OUTLINED_FUNCTION_12();
  v101 = sub_1DC51668C();
  OUTLINED_FUNCTION_0();
  v103 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v102 = v24 - v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v93 - v27;
  v104 = sub_1DC51672C();
  OUTLINED_FUNCTION_0();
  v96 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v108 = sub_1DC511F3C();
  OUTLINED_FUNCTION_0();
  v105 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v107 = v34 - v33;
  OUTLINED_FUNCTION_12();
  v109 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_62();
  v106 = v42;
  sub_1DC511FBC();
  v43 = *(sub_1DC5122DC() + 16);

  if (v43)
  {
    v44 = sub_1DC5122DC();
    if (*(v44 + 16))
    {
      OUTLINED_FUNCTION_29_1();
      v45 = OUTLINED_FUNCTION_36_2(MEMORY[0x1E69E7CC0]);
      v99 = v46;
      sub_1DC2DF5F8(v45, v46, 0);
      v47 = 0;
      OUTLINED_FUNCTION_22_0();
      v101 = v44 + v48;
      v100 = v49 + 16;
      v102 = v96 + 8;
      v103 = (v49 + 8);
      v98 = v36 + 32;
      while (v47 < *(v44 + 16))
      {
        (*(v105 + 2))(v107, v101 + *(v105 + 9) * v47, v108);
        sub_1DC51671C();
        sub_1DC2DF618(&qword_1ECC7C0E0, MEMORY[0x1E69D0C38], MEMORY[0x1E69D0C30]);
        sub_1DC51679C();
        if (v11)
        {
          OUTLINED_FUNCTION_66_2();

          sub_1DC5122FC();
          OUTLINED_FUNCTION_0_2();
          v83 = OUTLINED_FUNCTION_27_3();
          v84(v83);
          v85 = OUTLINED_FUNCTION_43_3();
          v86(v85);
          (*v103)(v107, v108);
          goto LABEL_21;
        }

        v50 = OUTLINED_FUNCTION_43_3();
        v51(v50);
        OUTLINED_FUNCTION_17_1();
        sub_1DC2DF618(&qword_1ECC7C0E8, v52, MEMORY[0x1E69DB090]);
        OUTLINED_FUNCTION_16_1();
        sub_1DC2DF618(&qword_1ECC7C0F0, v53, MEMORY[0x1E69DAC50]);
        sub_1DC5164BC();
        (*v103)(v107, v108);
        v55 = *(a10 + 16);
        v54 = *(a10 + 24);
        if (v55 >= v54 >> 1)
        {
          v56 = OUTLINED_FUNCTION_26(v54);
          sub_1DC2DF5F8(v56, v55 + 1, 1);
        }

        ++v47;
        *(a10 + 16) = v55 + 1;
        (*(v36 + 32))(a10 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v55, v106, v109);
        if (v99 == v47)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }
  }

  else
  {
    v105 = v28;
    v106 = v36;
    v57 = sub_1DC511F5C();
    v58 = *(v57 + 16);
    if (v58)
    {
      v107 = v40;
      OUTLINED_FUNCTION_29_1();
      v59 = OUTLINED_FUNCTION_36_2(MEMORY[0x1E69E7CC0]);
      sub_1DC2DF5F8(v59, v58, 0);
      v60 = 0;
      OUTLINED_FUNCTION_22_0();
      v108 = a10;
      v96 = v57 + v62;
      v95 = v61 + 2;
      v93[5] = v94 + 16;
      v94 += 8;
      v104 = (v61 + 1);
      v93[4] = v106 + 32;
      v63 = v102;
      while (v60 < *(v57 + 16))
      {
        v64 = v61[2];
        v65 = v105;
        v66 = v101;
        (v64)(v105, v96 + v61[9] * v60, v101);
        (v64)(v63, v65, v66);
        v112 = 0;
        v110 = 0u;
        v111 = 0u;
        sub_1DC5166FC();
        OUTLINED_FUNCTION_16_1();
        sub_1DC2DF618(&qword_1ECC7C0F0, v67, MEMORY[0x1E69DAC50]);
        v68 = v98;
        v69 = v100;
        sub_1DC51676C();
        if (v11)
        {

          OUTLINED_FUNCTION_66_2();
          sub_1DC5122FC();
          OUTLINED_FUNCTION_0_2();
          v89 = OUTLINED_FUNCTION_27_3();
          v90(v89);
          v91 = OUTLINED_FUNCTION_56();
          v92(v91);
LABEL_21:

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_37();
        v70(v97, v68, v69);
        sub_1DC5172EC();
        v71 = OUTLINED_FUNCTION_49_3();
        v72(v71);
        v73 = OUTLINED_FUNCTION_56();
        v74(v73);
        v75 = v108;
        v113 = v108;
        v77 = *(v108 + 16);
        v76 = *(v108 + 24);
        if (v77 >= v76 >> 1)
        {
          v81 = OUTLINED_FUNCTION_26(v76);
          sub_1DC2DF5F8(v81, v77 + 1, 1);
          v75 = v113;
        }

        ++v60;
        *(v75 + 16) = v77 + 1;
        OUTLINED_FUNCTION_22_0();
        v108 = v78;
        (*(v80 + 32))(v78 + v79 + *(v80 + 72) * v77);
        v63 = v102;
        v61 = v103;
        if (v58 == v60)
        {
LABEL_9:
          sub_1DC5122FC();
          OUTLINED_FUNCTION_0_2();
          v87 = OUTLINED_FUNCTION_27_3();
          v88(v87);

          OUTLINED_FUNCTION_47_3();
          goto LABEL_22;
        }
      }

      goto LABEL_24;
    }
  }

  sub_1DC5122FC();
  OUTLINED_FUNCTION_0_2();
  (*(v82 + 8))(v10);
LABEL_22:
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC2DD388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_1DC51825C() & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_31_0();

  return sub_1DC2DD3F0(v6, v7);
}

uint64_t sub_1DC2DD3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC5172FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1DC2DF618(&qword_1ECC7C040, MEMORY[0x1E69DB0B8], MEMORY[0x1E69DB0D0]);
    v21 = sub_1DC5176CC();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2DD604(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DC53D3A0 == a2;
  if (v3 || (OUTLINED_FUNCTION_57_2(), (sub_1DC51825C() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_57_2();
    v7 = sub_1DC51825C();

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

uint64_t sub_1DC2DD6F0(char a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a1 & 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC2DD738(char a1)
{
  if (a1)
  {
    return 0x736C6562616CLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DC2DD794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC2DD604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC2DD7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC2DF660(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1DC2DD804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC2DF660(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void sub_1DC2DD840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_1();
  v36[0] = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0F8, &qword_1DC522A38);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v36 - v31;
  v33 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1DC2DF660(v33, v34, v35);
  sub_1DC51835C();
  sub_1DC5181BC();
  if (!v23)
  {
    v36[1] = v36[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C100, &qword_1DC522A40);
    sub_1DC2DFAE8(&qword_1ECC7C108, &qword_1ECC7C110, MEMORY[0x1E69DB0C0], MEMORY[0x1E69E6300]);
    sub_1DC51820C();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC2DD9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC51769C();
  v3 = OUTLINED_FUNCTION_31_0();

  return sub_1DC2DF9EC(v3, v4);
}

uint64_t sub_1DC2DDA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC5182FC();
  sub_1DC51769C();
  sub_1DC2DF9EC(v5, a3);
  return sub_1DC51833C();
}

uint64_t sub_1DC2DDAA0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C118, &qword_1DC522A48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC2DF660(v5, v6, v7);
  sub_1DC51834C();
  if (!v1)
  {
    v4 = sub_1DC5180FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C100, &qword_1DC522A40);
    sub_1DC2DFAE8(&qword_1ECC7C120, &qword_1ECC7C128, MEMORY[0x1E69DB0D8], MEMORY[0x1E69E6330]);
    sub_1DC51814C();
    v9 = OUTLINED_FUNCTION_16();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t sub_1DC2DDCC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC2DDAA0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DC2DDD44(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DC5182FC();
  sub_1DC51769C();
  sub_1DC2DF9EC(v4, v2);
  return sub_1DC51833C();
}

void sub_1DC2DDDA4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for NLRouterOverride(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1DC28FB9C(v3, v50);
  sub_1DC51764C();
  OUTLINED_FUNCTION_53_2();
  v51 = v13;
  v52 = v14;
  OUTLINED_FUNCTION_52_3();
  v53 = v15;
  v16 = sub_1DC2DE1F4();
  if ((v16 & 1) != 0 && (v17 = *(v0 + *(v8 + 36)), MEMORY[0x1EEE9AC00](v16), *(&v44 - 2) = v5, *(&v44 - 1) = v50, sub_1DC2D64AC(sub_1DC2DFBC4, (&v44 - 4), v17)))
  {
    v18 = *(v17 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    v46 = v0;
    if (v18)
    {
      v44 = v12;
      v45 = v7;
      v49 = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v18, 0);
      v19 = v49;
      v20 = v17 + 32;
      do
      {
        sub_1DC28FB9C(v20, v48);
        sub_1DC28FB9C(v48, &v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C050, qword_1DC522870);
        v21 = sub_1DC51777C();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        v49 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = OUTLINED_FUNCTION_26(v24);
          sub_1DC2DF6FC(v27, v25 + 1, 1);
          v19 = v49;
        }

        *(v19 + 16) = v25 + 1;
        v26 = v19 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v20 += 40;
        --v18;
      }

      while (v18);
      v7 = v45;
      v1 = v46;
      v12 = v44;
    }

    v48[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2DFC38();
    sub_1DC5176AC();

    v29 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v30 = sub_1DC2A5914();
    OUTLINED_FUNCTION_6_3();
    sub_1DC2DFC9C(v1, v12);
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v31 = 136315394;
      sub_1DC510B6C();
      sub_1DC2DF618(&qword_1ECC7BE90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      sub_1DC51823C();
      OUTLINED_FUNCTION_20_6();
      v32 = OUTLINED_FUNCTION_43();
      v35 = sub_1DC291244(v32, v33, v34);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = OUTLINED_FUNCTION_56();
      v39 = sub_1DC291244(v36, v37, v38);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1DC287000, v30, v29, "Overrides matched id %s by [%s]", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_40_0();
      v40 = v31;
      v1 = v46;
      MEMORY[0x1E1298840](v40, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_20_6();
    }

    v41 = v51;
    v42 = type metadata accessor for OverrideMatch(0);
    OUTLINED_FUNCTION_6_3();
    sub_1DC2DFC9C(v1, v7 + v43);
    *v7 = v41;
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v42);
  }

  else
  {
    v28 = type metadata accessor for OverrideMatch(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
  }

  sub_1DC2DFB94(v50);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2DE1F4()
{
  v1 = OUTLINED_FUNCTION_38_2();
  v2 = type metadata accessor for NLRouterOverride(v1);
  v3 = *(v0 + v2[5]);
  sub_1DC2D73A4();
  if (v3 == (v4 & 1) && (v5 = *(v0 + v2[6]), sub_1DC2D7974(), v5 == (v6 & 1)) && (v7 = *(v0 + v2[7]), sub_1DC2D8008(), v7 == (v8 & 1)))
  {
    v11 = *(v0 + v2[8]);
    sub_1DC2D863C();
    v9 = v11 ^ v12 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1DC2DE290()
{
  OUTLINED_FUNCTION_33();
  v152 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v143 = v133 - v6;
  OUTLINED_FUNCTION_12();
  v151 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v155 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v149 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v148 = v133 - v13;
  OUTLINED_FUNCTION_12();
  v154 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v162 = v18 - v17;
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v165 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v147 = v22 - v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  v146 = v133 - v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v161 = v133 - v27;
  OUTLINED_FUNCTION_22();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = v133 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v166 = v32;
  v33 = OUTLINED_FUNCTION_12();
  v34 = type metadata accessor for NLRouterOverrideRoute(v33);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  v45 = (v43 - v44);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v133 - v47;
  type metadata accessor for NLRouterOverride(0);
  OUTLINED_FUNCTION_5_6();
  v153 = v0;
  sub_1DC2DFC9C(v0 + v49, v38);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
  if (__swift_getEnumTagSinglePayload(v38, 1, v50) == 1)
  {
    OUTLINED_FUNCTION_2_8();
    sub_1DC2DFCF4(v38, v51);
    OUTLINED_FUNCTION_18_3();
LABEL_35:
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    goto LABEL_36;
  }

  v145 = v15;
  v56 = *(v41 + 32);
  v56(v48, v38, v39);
  (*(v41 + 16))(v45, v48, v39);
  v57 = (*(v41 + 88))(v45, v39);
  if (v57 == *MEMORY[0x1E69D02C8])
  {
    v137 = v57;
    v58 = *(v41 + 96);
    v138 = v39;
    v58(v45, v39);
    v59 = *v45;
    v60 = *(*v45 + 16);
    if (!v60)
    {

      v65 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v132 = v138;
      (*(v41 + 8))(v48, v138);
      *v3 = v65;
      (*(v41 + 104))(v3, v137, v132);
      v52 = v3;
      v53 = 0;
      v54 = 1;
      v55 = v132;
      goto LABEL_35;
    }

    v134 = v48;
    v135 = v41;
    v136 = v3;
    v164 = *(v165 + 16);
    v61 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v133[1] = v59;
    v160 = v61;
    v62 = v59 + v61;
    v63 = *(v165 + 72);
    v158 = v165 + 88;
    v163 = *MEMORY[0x1E69D0330];
    v156 = v165 + 32;
    v157 = (v165 + 8);
    v150 = v165 + 96;
    v140 = v155 + 4;
    v165 += 16;
    v142 = v165 + 88;
    v139 = (v155 + 1);
    v64 = (v145 + 32);
    v144 = v145 + 8;
    v65 = MEMORY[0x1E69E7CC0];
    LODWORD(v145) = *MEMORY[0x1E69D0340];
    v66 = v154;
    v141 = v31;
    v155 = v64;
    v159 = v63;
    while (1)
    {
      v67 = v165;
      v68 = v166;
      v69 = v164;
      v164(v166, v62, v19);
      v69(v31, v68, v19);
      v70 = OUTLINED_FUNCTION_34_2();
      v72 = v71(v70);
      if (v72 == v163)
      {
        v73 = OUTLINED_FUNCTION_34_2();
        v74(v73);
        v75 = *v64;
        (*v64)(v162, v31, v66);
        sub_1DC51582C();
        OUTLINED_FUNCTION_46_2();
        MEMORY[0x1EEE9AC00](v76);
        OUTLINED_FUNCTION_30_2();
        v67 = v148;
        sub_1DC51583C();
        v66 = v154;

        if (__swift_getEnumTagSinglePayload(v67, 1, v66) == 1)
        {
          sub_1DC2AAF50(v67, &qword_1ECC7BF00, &unk_1DC529C30);
          OUTLINED_FUNCTION_32_2();
          v77();
        }

        else
        {
          v84 = v161;
          v75(v161, v67, v66);
          OUTLINED_FUNCTION_37();
          v85(v84, v163, v19);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_18_3();
          v65 = sub_1DC2DF4D4(v104, v105, v106, v107);
        }

        v64 = v155;
        OUTLINED_FUNCTION_35_3();
        if (v87)
        {
          OUTLINED_FUNCTION_26(v86);
          OUTLINED_FUNCTION_18_3();
          v65 = sub_1DC2DF4D4(v108, v109, v110, v111);
        }

        OUTLINED_FUNCTION_37();
        v88(v162, v66);
        OUTLINED_FUNCTION_55_3();
        v89(v166, v19);
        v90 = OUTLINED_FUNCTION_12_4();
        v92 = v161;
      }

      else
      {
        if (v72 != v145)
        {
          OUTLINED_FUNCTION_32_2();
          v93();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_18_3();
            v65 = sub_1DC2DF4D4(v112, v113, v114, v115);
          }

          OUTLINED_FUNCTION_35_3();
          if (v87)
          {
            OUTLINED_FUNCTION_26(v94);
            OUTLINED_FUNCTION_18_3();
            v65 = sub_1DC2DF4D4(v116, v117, v118, v119);
          }

          v95 = *v157;
          (*v157)(v166, v19);
          v96 = OUTLINED_FUNCTION_12_4();
          v97(v96, v147, v19);
          v31 = v141;
          v95(v141, v19);
          v64 = v155;
          goto LABEL_30;
        }

        v78 = OUTLINED_FUNCTION_34_2();
        v79(v78);
        v80 = *v140;
        (*v140)(v149, v31, v151);
        sub_1DC5158EC();
        OUTLINED_FUNCTION_46_2();
        MEMORY[0x1EEE9AC00](v81);
        OUTLINED_FUNCTION_30_2();
        v67 = v143;
        sub_1DC5158FC();
        v82 = v151;

        if (__swift_getEnumTagSinglePayload(v67, 1, v82) == 1)
        {
          sub_1DC2AAF50(v67, &qword_1ECC7BF10, &unk_1DC522A50);
          OUTLINED_FUNCTION_32_2();
          v83();
        }

        else
        {
          v98 = v146;
          v80(v146, v67, v82);
          OUTLINED_FUNCTION_37();
          v99(v98, v145, v19);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v154;
        v64 = v155;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_18_3();
          v65 = sub_1DC2DF4D4(v120, v121, v122, v123);
        }

        OUTLINED_FUNCTION_35_3();
        if (v87)
        {
          OUTLINED_FUNCTION_26(v101);
          OUTLINED_FUNCTION_18_3();
          v65 = sub_1DC2DF4D4(v124, v125, v126, v127);
        }

        OUTLINED_FUNCTION_37();
        v102(v149, v151);
        OUTLINED_FUNCTION_55_3();
        v103(v166, v19);
        v90 = OUTLINED_FUNCTION_12_4();
        v92 = v146;
      }

      v91(v90, v92, v19);
LABEL_30:
      v62 += v67;
      if (!--v60)
      {

        v3 = v136;
        v41 = v135;
        v48 = v134;
        goto LABEL_34;
      }
    }
  }

  v56(v3, v48, v39);
  OUTLINED_FUNCTION_18_3();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  (*(v41 + 8))(v45, v39);
LABEL_36:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2DED0C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_38_2();
  v5 = type metadata accessor for NLRouterOverride(v4);
  if (sub_1DC510ABC())
  {
    return *(a2 + *(v5 + 48)) < *(v2 + *(v5 + 48));
  }

  return sub_1DC510A9C();
}

BOOL sub_1DC2DED90(uint64_t a1, uint64_t a2)
{
  if ((sub_1DC510B3C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_68();
  return *(a1 + v4) == *(a2 + v4);
}

BOOL sub_1DC2DEDE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterOverride(0);
  if (sub_1DC510ABC())
  {
    v5 = *(a1 + *(v4 + 48)) < *(a2 + *(v4 + 48));
  }

  else
  {
    v5 = sub_1DC510A9C();
  }

  return (v5 & 1) == 0;
}

BOOL sub_1DC2DEE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterOverride(0);
  if (sub_1DC510ABC())
  {
    v5 = *(a2 + *(v4 + 48)) < *(a1 + *(v4 + 48));
  }

  else
  {
    v5 = sub_1DC510A9C();
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1DC2DEED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterOverride(0);
  if (sub_1DC510ABC())
  {
    return *(a1 + *(v4 + 48)) < *(a2 + *(v4 + 48));
  }

  return sub_1DC510A9C();
}

void *sub_1DC2DEFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[3];
  v7 = v5[4];
  v8 = OUTLINED_FUNCTION_31_0();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v47 = v5;
  result = (*(v7 + 8))(v47[6], v47[7], v6, v7);
  if (result)
  {
    v11 = result;
    v12 = sub_1DC5176FC();
    v46 = v11;
    v13 = [v11 matchesInString:v12 options:0 range:{0, sub_1DC51783C()}];

    sub_1DC298C74(0, &unk_1ECC7B958, 0x1E696AEF8);
    v14 = sub_1DC517A1C();

    v15 = sub_1DC2DB350(v14);
    if (v15)
    {
      v16 = v15;
      if (v15 >= 1)
      {
        v17 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1E1296800](v17, v14);
          }

          else
          {
            v18 = *(v14 + 8 * v17 + 32);
          }

          v19 = v18;
          if ([v18 numberOfRanges] <= 1 || (v20 = objc_msgSend(v19, sel_rangeAtIndex_, 1), v20 == sub_1DC51068C()) || (OUTLINED_FUNCTION_31_0(), sub_1DC517B5C(), (v21 & 1) != 0))
          {
          }

          else
          {
            v22 = sub_1DC5179AC();
            v23 = MEMORY[0x1E1296060](v22);
            v25 = v24;

            v48 = v23;
            v26 = sub_1DC5176FC();
            v27 = [a5 rangeWithName_];

            if (v27 == sub_1DC51068C() || (OUTLINED_FUNCTION_31_0(), OUTLINED_FUNCTION_57_2(), sub_1DC517B5C(), (v28 & 1) != 0))
            {
            }

            else
            {
              OUTLINED_FUNCTION_57_2();
              v29 = sub_1DC5179AC();
              v44 = MEMORY[0x1E1296060](v29);
              v45 = v30;

              swift_isUniquelyReferenced_nonNull_native();
              v50 = v47[5];
              v31 = sub_1DC2AEB04(v48, v25);
              if (__OFADD__(v50[2], (v32 & 1) == 0))
              {
                goto LABEL_32;
              }

              v33 = v31;
              v43 = v32;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
              if (sub_1DC517FFC())
              {
                v34 = sub_1DC2AEB04(v48, v25);
                v36 = v43;
                if ((v43 & 1) != (v35 & 1))
                {
                  goto LABEL_34;
                }

                v33 = v34;
              }

              else
              {
                v36 = v43;
              }

              if (v36)
              {
                v37 = (v50[7] + 16 * v33);
                *v37 = v44;
                v37[1] = v45;
              }

              else
              {
                v50[(v33 >> 6) + 8] |= 1 << v33;
                v38 = (v50[6] + 16 * v33);
                *v38 = v48;
                v38[1] = v25;
                v39 = (v50[7] + 16 * v33);
                *v39 = v44;
                v39[1] = v45;
                v40 = v50[2];
                v41 = __OFADD__(v40, 1);
                v42 = v40 + 1;
                if (v41)
                {
                  goto LABEL_33;
                }

                v50[2] = v42;
              }

              v47[5] = v50;
            }
          }

          if (v16 == ++v17)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_1DC51829C();
      __break(1u);
    }

    else
    {
LABEL_27:
    }
  }

  return result;
}

void *sub_1DC2DF3B0(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC2AC4FC(v9, a2, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride);
  v11 = *(type metadata accessor for NLRouterOverride(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC2AB454(a4 + v12, v9, v10 + v12, type metadata accessor for NLRouterOverride);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC2DF4D4(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC2AC4FC(v9, a2, &qword_1ECC7BFA8, &unk_1DC5224D0, MEMORY[0x1E69D0348]);
  v11 = *(sub_1DC51588C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC2AB454(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0348]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC2DF5F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2DF71C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC2DF618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DC2DF660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC85B10[0];
  if (!qword_1ECC85B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC85B10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_1DC2DF6FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2DF8E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC2DF71C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C150, &qword_1DC522EF8);
  v10 = *(sub_1DC5172FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC5172FC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2AB454(a4 + v16, v8, v13 + v16, MEMORY[0x1E69DB0B8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DC2DF8E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC2DF9EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1296BB0](v3);
  if (v3)
  {
    v5 = *(sub_1DC5172FC() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1DC2DF618(&qword_1ECC7C148, MEMORY[0x1E69DB0B8], MEMORY[0x1E69DB0C8]);
    do
    {
      result = sub_1DC51768C();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DC2DFAE8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C100, &qword_1DC522A40);
    OUTLINED_FUNCTION_17_1();
    sub_1DC2DF618(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DC2DFBC4(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(v5 + 8))(v3, v2, v4, v5) & 1;
}

unint64_t sub_1DC2DFC38()
{
  result = qword_1ECC7B9F0;
  if (!qword_1ECC7B9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C130, &unk_1DC5240F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B9F0);
  }

  return result;
}

uint64_t sub_1DC2DFC9C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC2DFCF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DC2DFD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_59_0();
  v17 = *(v15 + 40) + 64;
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_60_2(v18);

  v19 = 0;
  if (v16)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      sub_1DC51590C();
      OUTLINED_FUNCTION_58_2();
      return;
    }

    v16 = *(v17 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      do
      {
LABEL_7:
        v16 &= v16 - 1;
        OUTLINED_FUNCTION_13_4();
        v22 = *v21;
        v23 = v21[1];
        OUTLINED_FUNCTION_21_6();

        MEMORY[0x1E1296160](v22, v23);

        OUTLINED_FUNCTION_39_2();
        sub_1DC2A32B0(v24, v25, v26);
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_14_3(v27, v28, v29, v30, v31, v32, MEMORY[0x1E69E6158]);
      }

      while (v16);
      continue;
    }
  }

  __break(1u);
}

void sub_1DC2DFE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_59_0();
  v17 = *(v15 + 40) + 64;
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_60_2(v18);

  v19 = 0;
  if (v16)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      sub_1DC51586C();
      sub_1DC329208();
      sub_1DC51585C();
      OUTLINED_FUNCTION_58_2();
      return;
    }

    v16 = *(v17 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      do
      {
LABEL_7:
        v16 &= v16 - 1;
        OUTLINED_FUNCTION_13_4();
        v22 = *v21;
        v23 = v21[1];
        OUTLINED_FUNCTION_21_6();

        MEMORY[0x1E1296160](v22, v23);

        OUTLINED_FUNCTION_39_2();
        sub_1DC2A32B0(v24, v25, v26);
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_14_3(v27, v28, v29, v30, v31, v32, MEMORY[0x1E69E6158]);
      }

      while (v16);
      continue;
    }
  }

  __break(1u);
}

unint64_t sub_1DC2DFFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7C138;
  if (!qword_1ECC7C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C138);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DC2E00A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_41_0(*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_41_0(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }
}

uint64_t sub_1DC2E00DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1DC2E0170(uint64_t a1)
{
  sub_1DC2E01C8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1DC2E01C8()
{
  if (!qword_1ECC7BB78)
  {
    v0 = sub_1DC5157EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BB78);
    }
  }
}

void sub_1DC2E0220(uint64_t a1)
{
  sub_1DC510B6C();
  if (v1 <= 0x3F)
  {
    sub_1DC2E02F0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NLRouterOverrideRoute(319);
      if (v3 <= 0x3F)
      {
        sub_1DC510AFC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DC2E02F0(uint64_t a1)
{
  if (!qword_1ECC7BA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C050, qword_1DC522870);
    v1 = sub_1DC517A6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC7BA28);
    }
  }
}

uint64_t sub_1DC2E0354(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_41_0(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_41_0(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v4);
}

uint64_t sub_1DC2E03A4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void sub_1DC2E042C(uint64_t a1)
{
  sub_1DC2E04B0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NLRouterOverride(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DC2E04B0()
{
  if (!qword_1ECC7BA88)
  {
    v0 = sub_1DC51766C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BA88);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DC2E0520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DC2E0560(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SpansForNamedCaptureGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for SpansForNamedCaptureGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DC2E0730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC86020[0];
  if (!qword_1ECC86020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC86020);
  }

  return result;
}

unint64_t sub_1DC2E0788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC86130;
  if (!qword_1ECC86130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC86130);
  }

  return result;
}

unint64_t sub_1DC2E07E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC86138[0];
  if (!qword_1ECC86138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC86138);
  }

  return result;
}

uint64_t sub_1DC2E0834()
{
  sub_1DC2E54B8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F00;
  *(v0 + 32) = sub_1DC51486C();
  *(v0 + 40) = sub_1DC514C2C();
  result = sub_1DC5148AC();
  *(v0 + 48) = result;
  qword_1ECC8F288 = v0;
  return result;
}

uint64_t *sub_1DC2E08AC()
{
  if (qword_1ECC7EAC0 != -1)
  {
    OUTLINED_FUNCTION_18_4();
    swift_once();
  }

  return &qword_1ECC8F288;
}

uint64_t sub_1DC2E08F0()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C150, &qword_1DC522EF8);
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F10;
  v7 = (v6 + v5);
  v8 = swift_allocObject();
  v9 = sub_1DC3EAB00();
  v10 = v9[1];
  v8[2] = *v9;
  v8[3] = v10;
  OUTLINED_FUNCTION_48_4();
  v8[4] = v11;
  v8[5] = 0xEA00000000007974;
  *v7 = v8;
  v12 = *MEMORY[0x1E69DB098];
  v13 = *(v2 + 104);
  v13(v7, v12, v0);
  v14 = swift_allocObject();

  v15 = sub_1DC3EAAF4();
  v16 = v15[1];
  v14[2] = *v15;
  v14[3] = v16;
  OUTLINED_FUNCTION_48_4();
  v14[4] = v17;
  v14[5] = 0xEA00000000007974;
  *(v7 + v4) = v14;
  v13((v7 + v4), v12, v0);
  qword_1ECC8F708 = v6;
  OUTLINED_FUNCTION_34();
}

void sub_1DC2E0A70()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B0, &qword_1DC522F88);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DC522F20;
  sub_1DC51641C();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DC2E5748(0, 1, 0);
  v11 = v15;
  (*(v1 + 16))(v4, v10 + v9, v0);

  sub_1DC51643C();
  (*(v1 + 8))(v4, v0);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1DC2E5748((v12 > 1), v13 + 1, 1);
    v11 = v15;
  }

  *(v11 + 16) = v13 + 1;
  (*(v1 + 32))(v11 + v9 + v13 * v8, v7, v0);
  qword_1ECC8F710 = v11;
  OUTLINED_FUNCTION_34();
}

void sub_1DC2E0C94()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v203 = v3;
  v197 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v198 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v179 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v193 = v15;
  OUTLINED_FUNCTION_12();
  v205 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v195 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v196 = v25;
  v26 = &unk_1DC5234A0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v179 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v31);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_40_3();
  v33 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  v199 = v36 - v35;
  OUTLINED_FUNCTION_12();
  v202 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v201 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v42 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v43 = sub_1DC2BE518();
  v44 = OUTLINED_FUNCTION_130();
  v200 = v41;
  v204 = v42;
  sub_1DC2A2ED0("HeuristicRules.NoteRule", 23, 2, v43, v44 & 1, v41);

  v45 = v2;
  v46 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F308(v2 + *(v46 + 32), v30, &qword_1ECC7C158, &unk_1DC5234A0);
  v47 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v30, 1, v47);
  if (v51)
  {
    sub_1DC28EB30(v30, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v33);
LABEL_6:
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v205);
    OUTLINED_FUNCTION_35_4();
    goto LABEL_98;
  }

  sub_1DC28F308(v30, v0, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v30, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v0, 1, v33);
  if (v51)
  {
    goto LABEL_6;
  }

  sub_1DC2E53A4(v0, v199);
  v181 = type metadata accessor for HeuristicRoutingRequest(0);
  v55 = v195;
  v56 = *(v195 + 16);
  v184 = *(v181 + 20);
  v57 = v2 + v184;
  v58 = v196;
  v59 = v205;
  v183 = v56;
  v182 = v195 + 16;
  v56(v196, v57, v205);
  v185 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v60 = sub_1DC344BC0();
  v62 = v61;
  v63 = sub_1DC312FB4(0);
  v33 = v64;
  if (v60 == v63 && v62 == v64)
  {
  }

  else
  {
    v66 = sub_1DC51825C();

    if ((v66 & 1) == 0)
    {
      v67 = sub_1DC344BC0();
      sub_1DC312F68(v67, v68);
      OUTLINED_FUNCTION_43_0();
      if (v51)
      {
        OUTLINED_FUNCTION_7_4(&v212);
      }

      else
      {
        OUTLINED_FUNCTION_20_3();
        sub_1DC312E7C(v69, v70);
        OUTLINED_FUNCTION_10_5();
        if (!v71)
        {
          v180 = v45;
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_27_4();
          v80();
          v33 = 0;
          OUTLINED_FUNCTION_50_3();
          v26 = *v81;
          v59 = *(*v81 + 16);
          v55 = v198 + 16;
          while (1)
          {
            if (v59 == v33)
            {
              OUTLINED_FUNCTION_12_5();
              v59 = v205;
              v101(v191, v205);
              v45 = v180;
              v58 = v196;
              goto LABEL_19;
            }

            if (v33 >= *(v26 + 16))
            {
              break;
            }

            v82 = v198;
            OUTLINED_FUNCTION_24();
            v58 = v197;
            (*(v82 + 16))(v8, v26 + v83 + *(v82 + 72) * v33++, v197);
            v41 = sub_1DC5111AC();
            sub_1DC2E1DD4();
            v85 = v84;

            (*(v82 + 8))(v8, v58);
            if (v85)
            {
              OUTLINED_FUNCTION_20_3();
              OUTLINED_FUNCTION_46_3();
              OUTLINED_FUNCTION_12_5();
              v59 = v205;
              v86(v33, v205);
              v87 = OUTLINED_FUNCTION_6_4();
              v88(v87);
              v45 = v180;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      sub_1DC28EB30(v41, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_19:
  v26 = v185;
  sub_1DC344AE4();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v51)
  {
    v74 = v41 == v73;
  }

  else
  {
    v74 = 0;
  }

  if (v74)
  {

    goto LABEL_42;
  }

  OUTLINED_FUNCTION_13(v72);
  OUTLINED_FUNCTION_56_6();

  if (v33)
  {
    goto LABEL_42;
  }

  v75 = sub_1DC344AE4();
  sub_1DC312F68(v75, v76);
  OUTLINED_FUNCTION_43_0();
  if (v51)
  {
    OUTLINED_FUNCTION_7_4(&v211);
LABEL_30:
    sub_1DC28EB30(v41, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_20_3();
  sub_1DC312E7C(v77, v78);
  OUTLINED_FUNCTION_10_5();
  if (v79)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_27_4();
  v89();
  v33 = 0;
  OUTLINED_FUNCTION_50_3();
  v8 = *v90;
  v205 = *(*v90 + 2);
  v193 = v198 + 16;
  v55 = v198 + 8;
  while (v205 != v33)
  {
    if (v33 >= *(v8 + 2))
    {
      goto LABEL_104;
    }

    v58 = v45;
    v91 = v59;
    v92 = v198;
    OUTLINED_FUNCTION_24();
    v94 = v194;
    v95 = v197;
    (*(v92 + 16))(v194, &v8[v93 + *(v92 + 72) * v33++], v197);
    v41 = sub_1DC5111AC();
    sub_1DC2E2560();
    v26 = v96;

    (*(v92 + 8))(v94, v95);
    v59 = v91;
    v45 = v58;
    if (v26)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_46_3();
      v55 = v195;
      v97 = OUTLINED_FUNCTION_11_5();
      v98(v97);
      v99 = OUTLINED_FUNCTION_6_4();
      v100(v99);
      goto LABEL_41;
    }
  }

  OUTLINED_FUNCTION_12_5();
  v102(v190, v59);
  v58 = v196;
LABEL_41:
  v26 = v185;
LABEL_42:
  sub_1DC344C58();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v51)
  {
    v105 = v41 == v104;
  }

  else
  {
    v105 = 0;
  }

  if (v105)
  {

    goto LABEL_58;
  }

  OUTLINED_FUNCTION_13(v103);
  OUTLINED_FUNCTION_56_6();

  if (v33)
  {
    goto LABEL_58;
  }

  v106 = sub_1DC344C58();
  sub_1DC312F68(v106, v107);
  OUTLINED_FUNCTION_43_0();
  if (v51)
  {
    OUTLINED_FUNCTION_7_4(&v208);
LABEL_53:
    sub_1DC28EB30(v41, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_20_3();
  sub_1DC312E7C(v108, v109);
  OUTLINED_FUNCTION_10_5();
  if (v110)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_42_5();
  v111 = v187;
  OUTLINED_FUNCTION_27_4();
  v112();
  v113 = v192;
  (*(v55 + 104))(v192, *MEMORY[0x1E69D02F8], v59);
  v41 = sub_1DC5157DC();
  v33 = v55 + 8;
  v8 = *(v55 + 8);
  (v8)(v113, v59);
  if (v41 & 1) != 0 && (OUTLINED_FUNCTION_50_3(), v41 = *v114, sub_1DC2E28DC(), (v115) && (OUTLINED_FUNCTION_17_2(), sub_1DC2E28DC(), (v116 & 1) == 0))
  {
    OUTLINED_FUNCTION_20_3();
    sub_1DC32DE40();
    (v8)(v111, v59);
    v175 = OUTLINED_FUNCTION_6_4();
    v176(v175);
  }

  else
  {
    (v8)(v111, v59);
  }

LABEL_58:
  sub_1DC344D34();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v51)
  {
    v119 = v41 == v118;
  }

  else
  {
    v119 = 0;
  }

  if (v119)
  {
  }

  else
  {
    OUTLINED_FUNCTION_13(v117);
    OUTLINED_FUNCTION_56_6();

    if ((v33 & 1) == 0)
    {
      v120 = sub_1DC344D34();
      sub_1DC312F68(v120, v121);
      OUTLINED_FUNCTION_43_0();
      if (v51)
      {
        OUTLINED_FUNCTION_7_4(&v209);
      }

      else
      {
        OUTLINED_FUNCTION_20_3();
        sub_1DC312E7C(v122, v123);
        OUTLINED_FUNCTION_10_5();
        if (!v124)
        {
          OUTLINED_FUNCTION_42_5();
          v33 = v188;
          OUTLINED_FUNCTION_27_4();
          v133();
          OUTLINED_FUNCTION_50_3();
          OUTLINED_FUNCTION_17_2();
          sub_1DC2E28DC();
          if (v134)
          {
            OUTLINED_FUNCTION_20_3();
            sub_1DC32DE40();
            v135 = OUTLINED_FUNCTION_11_5();
            v136(v135);
            v137 = OUTLINED_FUNCTION_6_4();
          }

          else
          {
            v137 = OUTLINED_FUNCTION_11_5();
          }

          v138(v137);
          goto LABEL_70;
        }
      }

      sub_1DC28EB30(v41, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_70:
  sub_1DC344E10();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v51)
  {
    v127 = v41 == v126;
  }

  else
  {
    v127 = 0;
  }

  if (v127)
  {
  }

  else
  {
    OUTLINED_FUNCTION_13(v125);
    OUTLINED_FUNCTION_56_6();

    if ((v33 & 1) == 0)
    {
      v128 = sub_1DC344E10();
      sub_1DC312F68(v128, v129);
      OUTLINED_FUNCTION_43_0();
      if (v51)
      {
        OUTLINED_FUNCTION_7_4(&v210);
      }

      else
      {
        OUTLINED_FUNCTION_20_3();
        sub_1DC312E7C(v130, v131);
        OUTLINED_FUNCTION_10_5();
        if (!v132)
        {
          OUTLINED_FUNCTION_42_5();
          v33 = v189;
          OUTLINED_FUNCTION_27_4();
          v139();
          sub_1DC2E5460();
          v140 = sub_1DC5176CC();
          if (v140)
          {
LABEL_93:
            v169 = OUTLINED_FUNCTION_11_5();
            v170(v169);
            goto LABEL_94;
          }

          type metadata accessor for NLRouterBypassUtils();
          if (_MergedGlobals_4 == -1)
          {
LABEL_87:
            sub_1DC30A498();
            if (v141)
            {
              if (qword_1EDAC8170 != -1)
              {
                OUTLINED_FUNCTION_25_2(&qword_1EDAC8170);
              }

              sub_1DC30A0F8();
              if (v142)
              {
                v143 = sub_1DC517B9C();
                v144 = sub_1DC2BE518();
                v145 = v186;
                OUTLINED_FUNCTION_44_2();
                v146();
                if (os_log_type_enabled(v144, v143))
                {
                  v147 = swift_slowAlloc();
                  LODWORD(v198) = v143;
                  v148 = v147;
                  v149 = swift_slowAlloc();
                  v205 = v149;
                  v206[0] = v149;
                  *v148 = 136315650;
                  v33 = v145;
                  sub_1DC344EEC(v149, v150, v151, v152, v153, v154, v155, v156);
                  v157 = v207[0];
                  v158 = v207[1];

                  sub_1DC28EB30(v207, &qword_1ECC7C168, &qword_1DC522F30);
                  v159 = sub_1DC291244(v157, v158, v206);

                  *(v148 + 4) = v159;
                  v26 = 2080;
                  *(v148 + 12) = 2080;
                  swift_beginAccess();
                  v160 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
                  v162 = sub_1DC291244(v160, v161, v206);

                  *(v148 + 14) = v162;
                  *(v148 + 22) = 2080;
                  j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
                  v163 = OUTLINED_FUNCTION_31_6();
                  v59(v163);
                  v164 = OUTLINED_FUNCTION_41();
                  v167 = sub_1DC291244(v164, v165, v166);
                  v58 = v196;

                  *(v148 + 24) = v167;
                  _os_log_impl(&dword_1DC287000, v144, v198, "[NoteRule] triggered by %s. Updating routing from %s to %s", v148, 0x20u);
                  v168 = v205;
                  swift_arrayDestroy();
                  MEMORY[0x1E1298840](v168, -1, -1);
                  MEMORY[0x1E1298840](v148, -1, -1);
                }

                else
                {

                  v177 = OUTLINED_FUNCTION_31_6();
                  v59(v177);
                }

                swift_beginAccess();
                v8 = v192;
                v178 = v189;
                sub_1DC32F9DC();
                (v59)(v178, v59);
                swift_beginAccess();
                (*(v33 + 40))(v58, v8, v59);
                v55 = v33;
                goto LABEL_94;
              }
            }

            goto LABEL_93;
          }

LABEL_105:
          OUTLINED_FUNCTION_22_3(&_MergedGlobals_4);
          goto LABEL_87;
        }
      }

      sub_1DC28EB30(v41, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_94:
  swift_beginAccess();
  if (sub_1DC5157DC())
  {
    v171 = v203;
  }

  else
  {
    v171 = v203;
    OUTLINED_FUNCTION_44_2();
    v172();
  }

  OUTLINED_FUNCTION_35_4();
  __swift_storeEnumTagSinglePayload(v171, v173, 1, v59);
  (*(v55 + 8))(v58, v59);
  sub_1DC2E5408(v199, type metadata accessor for NLRouterNLParseResponse);
LABEL_98:
  v174 = sub_1DC2BE518();
  sub_1DC2B8848(v26, "HeuristicRules.NoteRule", 23, 2, v174);

  (*(v8 + 1))(v26, v33);
  OUTLINED_FUNCTION_34();
}

void sub_1DC2E1DD4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v79 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v76 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_3();
  v83 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = *(v0 + 16);
  if (!v18)
  {
LABEL_36:
    OUTLINED_FUNCTION_34();
    return;
  }

  v72 = 0;
  v19 = v13 + 16;
  OUTLINED_FUNCTION_24();
  v21 = v0 + v20;
  v81 = (v9 + 8);
  v82 = v19 - 8;
  v77 = v7;
  v78 = (v3 + 8);
  v23 = v22;
  v24 = *(v19 + 56);
  v74 = v19;
  v75 = v1;
  v73 = v22;
  v80 = v24;
  while (1)
  {
    v23(v17, v21, v83);
    if (sub_1DC5114CC())
    {
      break;
    }

    v38 = OUTLINED_FUNCTION_5_7();
    v39(v38);
LABEL_18:
    v21 += v24;
    if (!--v18)
    {
      goto LABEL_36;
    }
  }

  sub_1DC51154C();
  v25 = sub_1DC51177C();
  v26 = v81;
  v27 = *v81;
  (*v81)(v1, v7);
  if ((v25 & 1) == 0)
  {
    v40 = OUTLINED_FUNCTION_5_7();
    v41(v40);
LABEL_17:
    v24 = v80;
    goto LABEL_18;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  v28 = v76;
  sub_1DC51178C();
  v27(v1, v7);
  v29 = sub_1DC307E5C(v28);
  v30 = *v78;
  (*v78)(v28, v79);
  if (!v29)
  {
    v42 = OUTLINED_FUNCTION_5_7();
    v43(v42);
LABEL_16:
    v7 = v77;
    v1 = v75;
    v23 = v73;
    goto LABEL_17;
  }

  sub_1DC51478C();

  if (!v85)
  {
    v44 = OUTLINED_FUNCTION_5_7();
    v45(v44);

    sub_1DC28EB30(&v84, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_16;
  }

  v31 = sub_1DC2BAD90(&v84, v86);
  if (qword_1ECC7EAC0 != -1)
  {
    OUTLINED_FUNCTION_18_4();
    v31 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v31);
  v71[-2] = v86;
  v32 = v72;
  if (sub_1DC2E24F4(sub_1DC2E56F0, &v71[-4], v33))
  {
    v63 = OUTLINED_FUNCTION_5_7();
    v64(v63);
    goto LABEL_38;
  }

  v34 = v30;
  v71[2] = v29;
  v35 = v71[0];
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3();
  sub_1DC51178C();
  v27(v35, v77);
  sub_1DC5138FC();
  if (v32)
  {

    OUTLINED_FUNCTION_34_3();

    v34(v26, v79);
    v36 = OUTLINED_FUNCTION_5_7();
    v37(v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    v72 = 0;
    v1 = v75;
    v23 = v73;
LABEL_35:
    v24 = v80;
    v7 = v77;
    goto LABEL_18;
  }

  v34(v26, v79);
  sub_1DC2E3224();
  v1 = v75;
  if (v46)
  {
    sub_1DC2E34F8();
    if (v47 & 1) != 0 || (sub_1DC2E372C(), (v48) || (sub_1DC2E3968(), (v49) || (sub_1DC2E3B94(), (v50))
    {

      OUTLINED_FUNCTION_34_3();

      v65 = OUTLINED_FUNCTION_5_7();
      v66(v65);
      goto LABEL_40;
    }
  }

  sub_1DC291F78(v86, &v84);
  sub_1DC514C6C();
  v51 = swift_dynamicCast();
  v72 = 0;
  if (!v51)
  {
    v57 = OUTLINED_FUNCTION_5_7();
    v58(v57);
    OUTLINED_FUNCTION_34_3();

    v23 = v73;
    goto LABEL_34;
  }

  sub_1DC2E4284();
  v23 = v73;
  if (!v52)
  {
    v59 = OUTLINED_FUNCTION_5_7();
    v60(v59);
LABEL_33:

    OUTLINED_FUNCTION_34_3();

    goto LABEL_34;
  }

  v53 = sub_1DC514F8C();
  v54 = sub_1DC2E4CBC(1701667182, 0xE400000000000000, v53);

  if (!v54)
  {
    v61 = OUTLINED_FUNCTION_5_7();
    v62(v61);

    goto LABEL_33;
  }

  if (!sub_1DC2C20B8(v54))
  {
    OUTLINED_FUNCTION_34_3();

    v55 = OUTLINED_FUNCTION_5_7();
    v56(v55);
LABEL_34:
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    goto LABEL_35;
  }

  if ((v54 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E1296800](0, v54);
    OUTLINED_FUNCTION_34_3();

    v69 = OUTLINED_FUNCTION_5_7();
    v70(v69);
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v67 = OUTLINED_FUNCTION_5_7();
    v68(v67);
LABEL_38:

LABEL_40:
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    goto LABEL_36;
  }

  __break(1u);
}

BOOL sub_1DC2E24F4(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v12 = v9;
    v10 = a1(&v12, a2);
    if (v3)
    {
      break;
    }
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

void sub_1DC2E2560()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v30 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v29 = v5 - v4;
  OUTLINED_FUNCTION_12();
  v32 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v9 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v13 = *(v0 + 16);
  if (v13)
  {
    v14 = *(v11 + 16);
    OUTLINED_FUNCTION_24();
    v16 = v0 + v15;
    v31 = (v7 + 8);
    v27 = (v17 + 8);
    v28 = v14;
    v18 = *(v11 + 72);
    v26 = v18;
    do
    {
      v14(v2, v16, v9);
      if (sub_1DC5114CC() & 1) != 0 && (sub_1DC51154C(), v19 = sub_1DC51177C(), v20 = *v31, (*v31)(v1, v32), (v19) && (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v20(v1, v32), v18 = v26, v21 = sub_1DC307E5C(v29), v14 = v28, (*v27)(v29, v30), v21))
      {

        sub_1DC51478C();

        v22 = OUTLINED_FUNCTION_41();
        v23(v22);
        *v34 = *&v34[5];
        *&v34[2] = v35;
        if (*(&v35 + 1))
        {
          sub_1DC28F308(v34, v33, &qword_1ECC7D3F0, &qword_1DC5238B0);
          sub_1DC51485C();
          if (swift_dynamicCast())
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v33);
            sub_1DC28EB30(v34, &qword_1ECC7D3F0, &qword_1DC5238B0);
            break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v33);
        }

        sub_1DC28EB30(v34, &qword_1ECC7D3F0, &qword_1DC5238B0);
      }

      else
      {
        v24 = OUTLINED_FUNCTION_41();
        v25(v24);
      }

      v16 += v18;
      --v13;
    }

    while (v13);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC2E28DC()
{
  OUTLINED_FUNCTION_33();
  v77 = v1;
  OUTLINED_FUNCTION_38_2();
  v80 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v79 = v6 - v5;
  OUTLINED_FUNCTION_12();
  v70 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v69 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C170, &qword_1DC522F38);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v72 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v71 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v85 = v23;
  OUTLINED_FUNCTION_12();
  v24 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v76 = v26;
  OUTLINED_FUNCTION_22();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v66 - v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v74 = v0;
  v75 = v31;
  v66[0] = v8 + 16;
  v66[1] = v8;
  v67 = (v8 + 8);
  v68 = (v8 + 32);
  v82 = v32 + 16;
  v83 = v32;
  v84 = (v32 + 32);
  v33 = (v3 + 8);
  v81 = (v32 + 8);
  swift_bridgeObjectRetain_n();
  v34 = 0;
  v73 = 0;
  v78 = v24;
  while (1)
  {
    v35 = 0;
    if (v34)
    {
      while (1)
      {
        v36 = *(v34 + 16);
        if (v35 == v36)
        {
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v49, v50, v51, v24);
          sub_1DC28EB30(v21, &qword_1ECC7C178, qword_1DC523CB0);
          goto LABEL_13;
        }

        if (v35 >= v36)
        {
          break;
        }

        OUTLINED_FUNCTION_24();
        (*(v38 + 16))(v21, v34 + v37 + *(v38 + 72) * v35, v24);
        __swift_storeEnumTagSinglePayload(v21, 0, 1, v24);
        v39 = v85;
        sub_1DC2E5B08(v21, v85, &qword_1ECC7C178, qword_1DC523CB0);
        OUTLINED_FUNCTION_39(v39, 1, v24);
        if (v40)
        {
          goto LABEL_20;
        }

        v41 = *v84;
        (*v84)(v30, v85, v24);
        if (sub_1DC5114CC() & 1) != 0 && (v42 = v30, v43 = v79, sub_1DC51154C(), v44 = sub_1DC51177C(), v45 = v43, v30 = v42, v24 = v78, (*v33)(v45, v80), (v44))
        {
          v46 = v75;
          v41(v75, v42, v24);
          v47 = v76;
          v41(v76, v46, v24);
          LOBYTE(v46) = v77(v47);
          v48 = v47;
          v30 = v42;
          (*v81)(v48, v24);
          if (v46)
          {

            goto LABEL_21;
          }
        }

        else
        {
          (*v81)(v30, v24);
        }

        ++v35;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

LABEL_13:
    v52 = *(v74 + 16);
    if (v73 == v52)
    {
      v53 = 1;
      v54 = v70;
    }

    else
    {
      v54 = v70;
      if (v73 >= v52)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_24();
      v55 = v73;
      (*(v57 + 16))(v71, v74 + v56 + *(v57 + 72) * v73, v54);
      v53 = 0;
      v73 = v55 + 1;
    }

    v58 = v71;
    __swift_storeEnumTagSinglePayload(v71, v53, 1, v54);
    v59 = v58;
    v60 = v72;
    sub_1DC2E5B08(v59, v72, &qword_1ECC7C170, &qword_1DC522F38);
    OUTLINED_FUNCTION_39(v60, 1, v54);
    if (v40)
    {
      break;
    }

    v61 = v69;
    (*v68)(v69, v72, v54);
    v62 = sub_1DC5111AC();
    (*v67)(v61, v54);

    v34 = v62;
  }

  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v24);
LABEL_20:
  sub_1DC28EB30(v85, &qword_1ECC7C178, qword_1DC523CB0);

LABEL_21:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2E2EBC()
{
  OUTLINED_FUNCTION_38_2();
  sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v3 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v5 + 8))(v1, v3);
  sub_1DC307E5C(v0);
  v7 = OUTLINED_FUNCTION_51_3();
  v8(v7);
  if (v3)
  {

    sub_1DC51478C();

    if (v12)
    {
      sub_1DC2BAD90(&v11, v13);
      OUTLINED_FUNCTION_57_3();
      sub_1DC51479C();
      if (OUTLINED_FUNCTION_55_4())
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        return 1;
      }

      OUTLINED_FUNCTION_57_3();
      v9 = sub_1DC2E30E4(&v11);

      sub_1DC28EB30(&v11, &qword_1ECC7D3F0, &qword_1DC5238B0);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      if (v9)
      {

        return 1;
      }
    }

    else
    {

      sub_1DC28EB30(&v11, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }

  return 0;
}

uint64_t sub_1DC2E30E4(uint64_t a1)
{
  sub_1DC28F308(a1, v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v22)
  {
    goto LABEL_11;
  }

  sub_1DC28F308(v21, v20, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v1 = sub_1DC51494C();
  if (!OUTLINED_FUNCTION_21(v1, v2, v3, v1, v4))
  {
    v5 = sub_1DC514ABC();
    if (OUTLINED_FUNCTION_21(v5, v6, v7, v5, v8) || (v9 = sub_1DC514D1C(), OUTLINED_FUNCTION_21(v9, v10, v11, v9, v12)))
    {

      sub_1DC5148BC();
      goto LABEL_7;
    }

    v14 = sub_1DC51487C();
    if (OUTLINED_FUNCTION_21(v14, v15, v16, v14, v17))
    {

      sub_1DC51392C();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  sub_1DC514C8C();
LABEL_7:

  v13 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_12:
  sub_1DC28EB30(v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v13;
}

void sub_1DC2E3224()
{
  OUTLINED_FUNCTION_33();
  v28 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v5 = sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC2E5144();
  OUTLINED_FUNCTION_39(v15, 1, v16);
  if (v20)
  {
    sub_1DC28EB30(v15, &qword_1ECC7C1A0, &qword_1DC522F80);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  (*(v18 + 32))(v1, v15, v16);
  v21 = sub_1DC514EFC();
  v22 = sub_1DC514E1C();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 < *(v21 + 16))
  {
    OUTLINED_FUNCTION_24();
    (*(v7 + 16))(v11, v21 + v23 + *(v7 + 72) * v24, v5);

    sub_1DC514EBC();
    sub_1DC514E6C();
    (*(v3 + 8))(v0, v28);
    OUTLINED_FUNCTION_47_4();
    sub_1DC51795C();

    (*(v7 + 8))(v11, v5);
    v25 = OUTLINED_FUNCTION_41();
    v26(v25);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DC2E34F8()
{
  OUTLINED_FUNCTION_33();
  v28 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC514EEC();
  v14 = 0;
  v15 = (v1 + 8);
  v29 = *(v13 + 16);
  while (1)
  {
    if (v29 == v14)
    {
      goto LABEL_11;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    v17 = v16;
    (*(v8 + 16))(v12, v16 + v18 + *(v8 + 72) * v14, v6);
    sub_1DC514E0C();
    v19 = sub_1DC514E6C();
    v21 = v20;
    (*v15)(v5, v28);
    if (v19 == 0x656D686361747461 && v21 == 0xEB0000000073746ELL)
    {

      v26 = OUTLINED_FUNCTION_52_4();
      v27(v26);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v14;
    v23 = sub_1DC51825C();

    v24 = OUTLINED_FUNCTION_52_4();
    v25(v24);
    v13 = v17;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC2E372C()
{
  OUTLINED_FUNCTION_33();
  v23 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v5 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v9 = sub_1DC514EEC();
  v10 = 0;
  v24 = *(v9 + 16);
  while (1)
  {
    if (v24 == v10)
    {
      goto LABEL_11;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    v12 = v11;
    (*(v7 + 16))(v1, v11 + v13 + *(v7 + 72) * v10, v5);
    sub_1DC514E0C();
    v14 = sub_1DC514E6C();
    v16 = v15;
    (*(v3 + 8))(v0, v23);
    if (v14 == 0xD000000000000010 && 0x80000001DC53D400 == v16)
    {

      v21 = OUTLINED_FUNCTION_28_3();
      v22(v21, v5);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v10;
    v18 = sub_1DC51825C();

    v19 = OUTLINED_FUNCTION_28_3();
    v20(v19, v5);
    v9 = v12;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC2E3968()
{
  OUTLINED_FUNCTION_33();
  v24 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v5 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v9 = sub_1DC514EEC();
  v10 = 0;
  v11 = (v3 + 8);
  v25 = *(v9 + 16);
  while (1)
  {
    if (v25 == v10)
    {
      goto LABEL_11;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    v13 = v12;
    (*(v7 + 16))(v1, v12 + v14 + *(v7 + 72) * v10, v5);
    sub_1DC514E0C();
    v15 = sub_1DC514E6C();
    v17 = v16;
    (*v11)(v0, v24);
    if (v15 == 1936154996 && v17 == 0xE400000000000000)
    {

      v22 = OUTLINED_FUNCTION_28_3();
      v23(v22, v5);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v10;
    v19 = sub_1DC51825C();

    v20 = OUTLINED_FUNCTION_28_3();
    v21(v20, v5);
    v9 = v13;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC2E3B94()
{
  OUTLINED_FUNCTION_33();
  sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v81 = v2;
  v82 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v76 = v4;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v85 = v6;
  OUTLINED_FUNCTION_12();
  v90 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v75 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v80 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_3();
  v91 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v86 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v79 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v84 = v0;
  v23 = sub_1DC514EEC();
  v24 = 0;
  v25 = *(v23 + 16);
  v89 = v15 + 16;
  v26 = (v8 + 8);
  v87 = v25;
  v88 = (v15 + 8);
  v78 = (v15 + 32);
  v83 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v87 == v24)
    {

      v78 = *(v83 + 16);
      if (!v78)
      {
LABEL_38:

        OUTLINED_FUNCTION_34();
        return;
      }

      v40 = 0;
      OUTLINED_FUNCTION_24();
      v79 = v41 + v42;
      v43 = v81;
      v87 = v82 + 16;
      v77 = (v82 + 8);
      while (1)
      {
        if (v40 >= *(v41 + 16))
        {
          goto LABEL_40;
        }

        (*(v15 + 16))(v86, v79 + *(v15 + 72) * v40, v91);
        v44 = sub_1DC514EFC();
        v45 = sub_1DC514E2C();
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v45 >= *(v44 + 16))
        {
          goto LABEL_42;
        }

        v46 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v47 = v43;
        v48 = *(v82 + 72);
        v49 = *(v82 + 16);
        v49(v85, v44 + v46 + v48 * v45, v47);

        v50 = v80;
        sub_1DC514EBC();
        v51 = sub_1DC514E6C();
        v53 = v52;
        v54 = *v26;
        (*v26)(v50, v90);
        if (v51 == 0x4E5F6E6F6D6D6F63 && v53 == 0xEB0000000065746FLL)
        {
        }

        else
        {
          v56 = sub_1DC51825C();

          if ((v56 & 1) == 0)
          {
            v43 = v81;
            (*v77)(v85, v81);
            v57 = OUTLINED_FUNCTION_23_4();
            v58(v57);
            goto LABEL_35;
          }
        }

        v59 = sub_1DC514EFC();
        v60 = sub_1DC514E1C();
        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v60 >= *(v59 + 16))
        {
          goto LABEL_44;
        }

        v61 = v59 + v46 + v60 * v48;
        v62 = v76;
        v43 = v81;
        v49(v76, v61, v81);

        v63 = v75;
        sub_1DC514EBC();
        v64 = sub_1DC514E6C();
        v66 = v65;
        v54(v63, v90);
        if (v64 == 0x646E65707061 && v66 == 0xE600000000000000)
        {

          v72 = *v77;
          (*v77)(v62, v43);
          v72(v85, v43);
          v73 = OUTLINED_FUNCTION_23_4();
          v74(v73);
          goto LABEL_38;
        }

        v68 = sub_1DC51825C();

        v69 = *v77;
        (*v77)(v62, v43);
        v69(v85, v43);
        v70 = OUTLINED_FUNCTION_23_4();
        v71(v70);
        if (v68)
        {
          goto LABEL_38;
        }

LABEL_35:
        ++v40;
        v41 = v83;
        if (v78 == v40)
        {
          goto LABEL_38;
        }
      }
    }

    if (v24 >= *(v23 + 16))
    {
      break;
    }

    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v28 = *(v15 + 72);
    (*(v15 + 16))(v22, v23 + v27 + v28 * v24, v91);
    sub_1DC514E0C();
    v29 = sub_1DC514E6C();
    v31 = v30;
    (*v26)(v1, v90);
    if (v29 == 0x6F43676E69727473 && v31 == 0xED0000746E65746ELL)
    {

LABEL_11:
      v34 = *v78;
      (*v78)(v79, v22, v91);
      v35 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v35;
      v77 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC2E5768(0, *(v35 + 16) + 1, 1);
        v35 = v92;
      }

      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v83 = v38 + 1;
        sub_1DC2E5768((v37 > 1), v38 + 1, 1);
        v39 = v83;
        v35 = v92;
      }

      ++v24;
      *(v35 + 16) = v39;
      v83 = v35;
      (v77)(v35 + v27 + v38 * v28, v79, v91);
    }

    else
    {
      v33 = sub_1DC51825C();

      if (v33)
      {
        goto LABEL_11;
      }

      (*v88)(v22, v91);
      ++v24;
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
  __break(1u);
}

void sub_1DC2E4284()
{
  OUTLINED_FUNCTION_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C188, &qword_1DC522F68);
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v112 = v3;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v111 = v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C190, &qword_1DC522F70);
  OUTLINED_FUNCTION_0();
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v118 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v105 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v100 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C198, &qword_1DC522F78);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  v101 = v94 - v19;
  OUTLINED_FUNCTION_12();
  sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v116 = v20;
  v117 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v104 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  v109 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v94 - v26;
  v28 = sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v103 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v98 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v94 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_40();
  v41 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  v47 = v46 - v45;
  sub_1DC2E5144();
  OUTLINED_FUNCTION_39(v0, 1, v41);
  if (v79)
  {
    v48 = &qword_1ECC7C1A0;
    v49 = &qword_1DC522F80;
    v50 = v0;
    goto LABEL_24;
  }

  v99 = v43;
  (*(v43 + 32))(v47, v0, v41);
  v51 = sub_1DC514EFC();
  v52 = sub_1DC514E1C();
  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
  }

  else if (v52 < *(v51 + 16))
  {
    v97 = v33;
    v53 = v103;
    v54 = v103 + 16;
    OUTLINED_FUNCTION_24();
    v57 = v51 + v55 + *(v54 + 56) * v56;
    v96 = v58;
    v58(v38, v57, v28);

    sub_1DC514EBC();
    sub_1DC514E6C();
    v59 = *(v117 + 8);
    v117 += 8;
    v114 = v59;
    v59(v27, v116);
    v102 = 0x80000001DC53D3C0;
    v60 = sub_1DC51795C();

    if ((v60 & 1) == 0)
    {
      (*(v53 + 8))(v38, v28);
      (*(v99 + 8))(v47, v41);
LABEL_25:
      OUTLINED_FUNCTION_34();
      return;
    }

    v113 = v28;
    v61 = v111;
    sub_1DC514E4C();
    v62 = sub_1DC514E5C();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
    v63 = v112;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
    v67 = sub_1DC514EAC();
    sub_1DC28EB30(v63, &qword_1ECC7C188, &qword_1DC522F68);
    sub_1DC28EB30(v61, &qword_1ECC7C188, &qword_1DC522F68);
    v68 = v99;
    v108 = *(v67 + 16);
    if (v108)
    {
      v94[1] = v54;
      v95 = v38;
      v69 = 0;
      OUTLINED_FUNCTION_24();
      v106 = v67 + v70;
      v111 = (v103 + 8);
      v112 = (v68 + 8);
      v94[2] = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v71 = v105;
      v107 = v47;
      while (1)
      {
        if (v69 >= *(v67 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v72 = v67;
        sub_1DC28F308(v106 + *(v110 + 72) * v69, v71, &qword_1ECC7C190, &qword_1DC522F70);
        v73 = v118;
        sub_1DC28F308(v71, v118, &qword_1ECC7C190, &qword_1DC522F70);
        v74 = v109;
        sub_1DC514E0C();
        v75 = *v112;
        v76 = v41;
        (*v112)(v73, v41);
        sub_1DC514E6C();
        v77 = OUTLINED_FUNCTION_45_5();
        v78(v77);
        v79 = v41 == 0x746567726174 && v74 == 0xE600000000000000;
        if (v79)
        {

          v80 = 1;
        }

        else
        {
          v80 = sub_1DC51825C();
        }

        v81 = *v111;
        (*v111)(v118 + *(v115 + 48), v113);
        if (v80)
        {
          sub_1DC28F308(v71, v10, &qword_1ECC7C190, &qword_1DC522F70);
          v82 = *(v115 + 48);
          sub_1DC514EBC();
          v81(v10 + v82, v113);
          sub_1DC514E6C();
          v83 = OUTLINED_FUNCTION_45_5();
          v84(v83);
          LOBYTE(v82) = sub_1DC51825C();

          v75(v10, v76);
          v71 = v105;
          if (v82)
          {
            break;
          }
        }

        ++v69;
        sub_1DC28EB30(v71, &qword_1ECC7C190, &qword_1DC522F70);
        v41 = v76;
        v47 = v107;
        v67 = v72;
        if (v108 == v69)
        {

          v85 = v101;
          v86 = v113;
          v38 = v95;
          v68 = v99;
          goto LABEL_22;
        }
      }

      v90 = v100;
      sub_1DC2E5B08(v71, v100, &qword_1ECC7C190, &qword_1DC522F70);
      v91 = *(v103 + 32);
      v85 = v101;
      v92 = v113;
      v91(v101, v90 + *(v115 + 48), v113);
      __swift_storeEnumTagSinglePayload(v85, 0, 1, v92);
      v75(v90, v76);
      OUTLINED_FUNCTION_39(v85, 1, v92);
      if (!v79)
      {
        v93 = v98;
        v91(v98, v85, v92);
        v96(v97, v93, v92);
        sub_1DC514F6C();
        swift_allocObject();
        sub_1DC514F5C();
        sub_1DC514F3C();

        v81(v93, v92);
        v81(v95, v92);
        v75(v107, v76);
        goto LABEL_25;
      }

      v81(v95, v92);
      v75(v107, v76);
    }

    else
    {

      v81 = *(v103 + 8);
      v85 = v101;
      v86 = v113;
LABEL_22:
      v81(v38, v86);
      (*(v68 + 8))(v47, v41);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
    }

    v48 = &qword_1ECC7C198;
    v49 = &qword_1DC522F78;
    v50 = v85;
LABEL_24:
    sub_1DC28EB30(v50, v48, v49);
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1DC2E4CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DC2AEB04(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

BOOL sub_1DC2E4D0C()
{
  OUTLINED_FUNCTION_38_2();
  sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v3 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v5 + 8))(v1, v3);
  sub_1DC307E5C(v0);
  v7 = OUTLINED_FUNCTION_51_3();
  v8(v7);
  if (v3)
  {

    sub_1DC51478C();

    if (v17)
    {
      sub_1DC2BAD90(&v16, v18);
      OUTLINED_FUNCTION_57_3();
      sub_1DC51479C();
      if (OUTLINED_FUNCTION_55_4())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }

      else
      {
        OUTLINED_FUNCTION_57_3();
        v9 = sub_1DC2E30E4(&v16);
        sub_1DC28EB30(&v16, &qword_1ECC7D3F0, &qword_1DC5238B0);
        if (v9)
        {

          sub_1DC5145FC();

          v10 = sub_1DC514F8C();

          v11 = sub_1DC2E5024(v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DC522F00;
          strcpy((inited + 32), "usoQuantifier");
          *(inited + 46) = -4864;
          *(inited + 48) = 0xD000000000000012;
          *(inited + 56) = 0x80000001DC53D420;
          *(inited + 64) = 0xD000000000000012;
          *(inited + 72) = 0x80000001DC53D440;
          v13 = sub_1DC2E5CA4(inited, v11);

          swift_setDeallocating();
          sub_1DC2A180C();
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          v14 = v13[2];

          return v14 != 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }
    }

    else
    {

      sub_1DC28EB30(&v16, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }

  return 0;
}

uint64_t sub_1DC2E5024(uint64_t a1)
{
  result = MEMORY[0x1E12963F0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1DC2E5B58(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DC2E5144()
{
  OUTLINED_FUNCTION_33();
  v23 = v1;
  v24 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v5 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_1DC514EEC();
  v13 = 0;
  v25 = *(v12 + 16);
  v14 = (v3 + 8);
  while (1)
  {
    if (v25 == v13)
    {

      v21 = 1;
      v22 = v23;
      goto LABEL_13;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    (*(v7 + 16))(v11, v12 + v15 + *(v7 + 72) * v13, v5);
    sub_1DC514E0C();
    v16 = sub_1DC514E6C();
    v18 = v17;
    (*v14)(v0, v24);
    if (v16 == 1802723700 && v18 == 0xE400000000000000)
    {

LABEL_12:

      v22 = v23;
      (*(v7 + 32))(v23, v11, v5);
      v21 = 0;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v22, v21, 1, v5);
      OUTLINED_FUNCTION_34();
      return;
    }

    v20 = sub_1DC51825C();

    if (v20)
    {
      goto LABEL_12;
    }

    (*(v7 + 8))(v11, v5);
    ++v13;
  }

  __break(1u);
}

uint64_t sub_1DC2E53A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterNLParseResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2E5408(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DC2E5460()
{
  result = qword_1ECC7BB68;
  if (!qword_1ECC7BB68)
  {
    sub_1DC5157EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BB68);
  }

  return result;
}

uint64_t sub_1DC2E54B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_1ECC7C1C8;
    v2 = &qword_1DC524550;
  }

  else
  {
    v1 = &qword_1ECC7C1C0;
    v2 = &unk_1DC5248E0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1DC2E5520(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC2E560C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC514E3C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC514E3C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_1DC2E56F0(uint64_t *a1)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(*(v1 + 16), *(*(v1 + 16) + 24));
  return v2 == swift_getDynamicType();
}

void *sub_1DC2E5748(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2E5788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC2E5768(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2E5954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC2E5788(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B0, &qword_1DC522F88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2E5520(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DC2E5954(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C180, &qword_1DC522F60);
  v10 = *(sub_1DC514E3C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC514E3C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2E560C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DC2E5B08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35();
  (*(v6 + 32))(v4, v5);
  return v4;
}

BOOL sub_1DC2E5B58(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1DC5182FC();
  sub_1DC51769C();
  v8 = sub_1DC51833C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1DC51825C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1DC2E6758(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

unint64_t *sub_1DC2E5CA4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_1DC5182FC();

      sub_1DC51769C();
      v9 = sub_1DC51833C();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_1DC51825C() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_1DC2E64B4(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x1E1298840](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_1DC2E653C(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_1DC5182FC();

          sub_1DC51769C();
          v25 = sub_1DC51833C();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_1DC51825C();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DC2E60AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517EFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1DC2A3304(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DC5182FC();
    sub_1DC51769C();
    result = sub_1DC51833C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t *sub_1DC2E6308(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1DC2E653C(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1DC5182FC();

    sub_1DC51769C();
    v14 = sub_1DC51833C();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_1DC51825C();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_1DC2E64B4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1DC2E6308(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1DC2E653C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517F0C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DC5182FC();

    sub_1DC51769C();
    result = sub_1DC51833C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1DC2E6758(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DC2E60AC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DC2E6A18(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1DC5182FC();
      sub_1DC51769C();
      result = sub_1DC51833C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1DC51825C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DC2E68C0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1DC51828C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1DC2E68C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  v2 = *v0;
  v3 = sub_1DC517EEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DC2E6A18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517EFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1DC5182FC();

        sub_1DC51769C();
        result = sub_1DC51833C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
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

void sub_1DC2E6C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v215 = v20;
  v240 = v24;
  v238 = v25;
  v207 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v206 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v28);
  v211 = sub_1DC515DFC();
  OUTLINED_FUNCTION_0();
  v218 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v31);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D0, &qword_1DC522FB0);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  v42 = OUTLINED_FUNCTION_14(v41);
  v219 = type metadata accessor for HeuristicAgentKeywords(v42);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v44);
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v223 = v46;
  v224 = v45;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_1();
  v236 = v47;
  OUTLINED_FUNCTION_12();
  v239 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v237 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_62();
  v231 = v51;
  OUTLINED_FUNCTION_12();
  sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v225 = v53;
  v226 = v52;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v54);
  v55 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_1();
  v61 = v60 - v59;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v63 = OUTLINED_FUNCTION_10(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  v227 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v203 - v67;
  v69 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_15();
  v228 = v71;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v203 - v73;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v233 = v76;
  v234 = v75;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v77 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v78 = sub_1DC2BE518();
  v79 = OUTLINED_FUNCTION_130();
  v232 = v21;
  v235 = v77;
  sub_1DC2A2ED0("HeuristicRules.GenAIRule", 24, 2, v78, v79 & 1, v21);

  v80 = type metadata accessor for NLRouterServiceRequest(0);
  v229 = *(v80 + 20);
  sub_1DC28F358(v240 + v229, v68, &qword_1ECC7BFD0, &unk_1DC522550);
  v230 = v69;
  OUTLINED_FUNCTION_39(v68, 1, v69);
  if (v173)
  {
    sub_1DC28EB30(v68, &qword_1ECC7BFD0, &unk_1DC522550);
    v242 = 1;
    v81 = v238;
LABEL_11:
    v91 = type metadata accessor for NLRouterBypassUtils();
    v92 = *(v240 + *(v80 + 24));
    v93 = sub_1DC308358(v92);
    v94 = v236;
    v95 = v237;
    v96 = v231;
    if ((v93 & 1) == 0)
    {
      v97 = v227;
      sub_1DC28F358(v240 + v229, v227, &qword_1ECC7BFD0, &unk_1DC522550);
      OUTLINED_FUNCTION_39(v97, 1, v230);
      if (v173)
      {
        sub_1DC28EB30(v97, &qword_1ECC7BFD0, &unk_1DC522550);
      }

      else
      {
        OUTLINED_FUNCTION_32_3();
        sub_1DC2E89AC(v97, v228);
        sub_1DC309850();
        if (v118 & 1) != 0 || (type metadata accessor for HeuristicRoutingRequest(0), (sub_1DC309474(v240)))
        {
          sub_1DC517B9C();
          v119 = OUTLINED_FUNCTION_23_5();
          v120 = OUTLINED_FUNCTION_40_1();
          sub_1DC516F0C(v120, v121, v122, v123, 58, 2);

          OUTLINED_FUNCTION_2_9();
          sub_1DC2EADFC(v228, v124);
LABEL_67:
          v117 = 1;
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_2_9();
        sub_1DC2EADFC(v228, v125);
      }
    }

    v241 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
    v98 = sub_1DC3463F4();
    v99 = MEMORY[0x1E69D02E0];
    if (v98)
    {
      v100 = type metadata accessor for HeuristicRoutingRequest(0);
      v101 = v239;
      (*(v95 + 16))(v96, v240 + *(v100 + 20), v239);
      if ((*(v95 + 88))(v96, v101) == *v99)
      {
        v228 = v91;
        v204 = v92;
        (*(v95 + 96))(v96, v101);
        v102 = v96;
        v104 = v225;
        v103 = v226;
        v105 = v221;
        (*(v225 + 32))(v221, v102, v226);
        sub_1DC515EFC();
        sub_1DC3322BC();
        v107 = v106;
        v108 = v224;
        v109 = *(v223 + 8);
        v109(v94, v224);
        if (v107)
        {
          sub_1DC515EFC();
          sub_1DC3319CC();
          v111 = v110;
          v109(v94, v108);
          if ((v242 | v111))
          {
            sub_1DC517B9C();
            v112 = OUTLINED_FUNCTION_23_5();
            v113 = OUTLINED_FUNCTION_40_1();
            sub_1DC516F0C(v113, v114, v115, v116, 30, 2);

            v81 = v238;
            sub_1DC32CDF4();
            (*(v225 + 8))(v105, v226);
            v117 = 0;
LABEL_68:
            v147 = v239;
            goto LABEL_69;
          }

          (*(v225 + 8))(v105, v226);
        }

        else
        {
          (*(v104 + 8))(v105, v103);
        }

        v95 = v237;
        v81 = v238;
        v92 = v204;
      }

      else
      {
        (*(v95 + 8))(v96, v101);
      }
    }

    v126 = sub_1DC308358(v92);
    v127 = v240;
    if ((v126 & 1) == 0)
    {
      v128 = type metadata accessor for HeuristicRoutingRequest(0);
      sub_1DC32DBF4();
      if (v129)
      {
        v130 = v220;
        sub_1DC28F358(v127 + *(v128 + 32), v220, &qword_1ECC7C1E0, qword_1DC52A6E0);
        v131 = v219;
        OUTLINED_FUNCTION_39(v130, 1, v219);
        if (v173)
        {
          sub_1DC28EB30(v130, &qword_1ECC7C1E0, qword_1DC52A6E0);
        }

        else
        {
          v132 = v130;
          v133 = v131;
          v134 = v216;
          v135 = sub_1DC2E89AC(v132, v216);
          v136 = *(v134 + *(v133 + 28));
          if (*(v136 + 16))
          {
            MEMORY[0x1EEE9AC00](v135);
            *(&v203 - 2) = v127;

            v137 = *(sub_1DC2E8568(sub_1DC2E897C, (&v203 - 4), v136) + 16);

            if (!v137)
            {
              sub_1DC517B9C();
              v189 = OUTLINED_FUNCTION_23_5();
              v190 = OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C(v190, v191, v192, v193, 74, 2);

              OUTLINED_FUNCTION_12_6();
              sub_1DC2EADFC(v216, v194);
              v147 = v239;
              (*(v95 + 104))(v81, *MEMORY[0x1E69D02D8], v239);
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_12_6();
            sub_1DC2EADFC(v216, v138);
          }

          else
          {
            OUTLINED_FUNCTION_12_6();
            sub_1DC2EADFC(v134, v139);
          }
        }
      }
    }

    v140 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
    sub_1DC32DBF4();
    if (v141)
    {
      sub_1DC517B9C();
      v142 = OUTLINED_FUNCTION_23_5();
      v143 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v143, v144, v145, v146, 54, 2);

      v147 = v239;
      (*(v95 + 16))(v81, v127 + v140, v239);
LABEL_39:
      v117 = 0;
LABEL_69:
      __swift_storeEnumTagSinglePayload(v81, v117, 1, v147);
      v187 = sub_1DC2BE518();
      v188 = v232;
      sub_1DC2B8848(v232, "HeuristicRules.GenAIRule", 24, 2, v187);

      (*(v233 + 8))(v188, v234);
      OUTLINED_FUNCTION_34();
      return;
    }

    if (sub_1DC3097BC(v127) & 1) != 0 && (sub_1DC51577C())
    {
      sub_1DC517B9C();
      v148 = OUTLINED_FUNCTION_23_5();
      v149 = OUTLINED_FUNCTION_40_1();
      v153 = 64;
LABEL_66:
      sub_1DC516F0C(v149, v150, v151, v152, v153, 2);

      goto LABEL_67;
    }

    if (sub_1DC308358(v92))
    {
      sub_1DC2E86D4();
      if (v154)
      {
        sub_1DC517B9C();
        v148 = OUTLINED_FUNCTION_23_5();
        v149 = OUTLINED_FUNCTION_40_1();
        v153 = 70;
        goto LABEL_66;
      }
    }

    if ((sub_1DC344218() & 1) == 0)
    {
      sub_1DC517B9C();
      v148 = OUTLINED_FUNCTION_23_5();
      v149 = OUTLINED_FUNCTION_40_1();
      v153 = 76;
      goto LABEL_66;
    }

    v155 = v212;
    sub_1DC28F358(v127 + v229, v212, &qword_1ECC7BFD0, &unk_1DC522550);
    v156 = v230;
    OUTLINED_FUNCTION_39(v155, 1, v230);
    v204 = v92;
    if (v173)
    {
      sub_1DC28EB30(v155, &qword_1ECC7BFD0, &unk_1DC522550);
      v160 = v214;
      OUTLINED_FUNCTION_19();
      v162 = v211;
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v211);
    }

    else
    {
      v160 = v214;
      sub_1DC28F358(v155 + *(v156 + 48), v214, &qword_1ECC7C1D8, &qword_1DC529390);
      OUTLINED_FUNCTION_2_9();
      sub_1DC2EADFC(v155, v161);
      v162 = v211;
    }

    v163 = v217;
    (*(v218 + 104))(v217, *MEMORY[0x1E69D04B8], v162);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v162);
    v167 = *(v213 + 48);
    v168 = v222;
    sub_1DC28F358(v160, v222, &qword_1ECC7C1D8, &qword_1DC529390);
    v169 = v168;
    sub_1DC28F358(v163, v168 + v167, &qword_1ECC7C1D8, &qword_1DC529390);
    OUTLINED_FUNCTION_3_0(v168);
    if (v173)
    {
      sub_1DC28EB30(v163, &qword_1ECC7C1D8, &qword_1DC529390);
      OUTLINED_FUNCTION_60_3();
      OUTLINED_FUNCTION_3_0(&qword_1ECC7C1D8 + v167);
      v170 = v236;
      if (v173)
      {
        sub_1DC28EB30(&qword_1ECC7C1D8, &qword_1ECC7C1D8, &qword_1DC529390);
        v81 = v238;
LABEL_65:
        sub_1DC517B9C();
        v148 = OUTLINED_FUNCTION_23_5();
        v149 = OUTLINED_FUNCTION_40_1();
        v153 = 50;
        goto LABEL_66;
      }
    }

    else
    {
      v171 = v168;
      v172 = v210;
      sub_1DC28F358(v171, v210, &qword_1ECC7C1D8, &qword_1DC529390);
      OUTLINED_FUNCTION_3_0(v169 + v167);
      v170 = v236;
      if (!v173)
      {
        v183 = v218;
        v184 = v208;
        (*(v218 + 32))(v208, v169 + v167, v162);
        sub_1DC2EBBA0(&qword_1ECC7BB50, MEMORY[0x1E69D04D0], MEMORY[0x1E69D04E0]);
        v185 = sub_1DC5176CC();
        v186 = *(v183 + 8);
        v186(v184, v162);
        OUTLINED_FUNCTION_61_1(&a13);
        OUTLINED_FUNCTION_61_1(&a10);
        v186(v172, v162);
        v127 = v240;
        OUTLINED_FUNCTION_61_1(&a18);
        v81 = v238;
        if (v185)
        {
          goto LABEL_65;
        }

LABEL_60:
        if (sub_1DC308358(v204))
        {
          v174 = v237;
          v175 = *(v237 + 16);
          v176 = v209;
          v177 = v239;
          v175(v209, v127 + v140, v239);
          v178 = (*(v174 + 88))(v176, v177);
          v179 = *MEMORY[0x1E69D02E0];
          (*(v174 + 8))(v176, v177);
          v180 = sub_1DC517B9C();
          v181 = sub_1DC2BE518();
          if (v178 == v179)
          {
            sub_1DC516F0C(v180, &dword_1DC287000, v181, "[GenAIRule] Sticky routing to montara, reusing model decision", 61, 2, MEMORY[0x1E69E7CC0]);

            v182 = v238;
            v147 = v239;
            v175(v238, v127 + v140, v239);
            v81 = v182;
          }

          else
          {
            sub_1DC516F0C(v180, &dword_1DC287000, v181, "[GenAIRule] Sticky routing to montara, override model decision", 62, 2, MEMORY[0x1E69E7CC0]);

            sub_1DC2EBBA0(&qword_1ECC7C1E8, MEMORY[0x1E69D0618], MEMORY[0x1E69D0588]);
            sub_1DC51502C();
            swift_getKeyPath();
            v195 = sub_1DC514FCC();

            v196 = v170;
            v197 = v206;
            v198 = v205;
            v199 = v207;
            (*(v206 + 104))(v205, *MEMORY[0x1E69D0728], v207);
            v195(v198);
            OUTLINED_FUNCTION_78_0();
            (*(v197 + 8))(v198, v199);
            swift_getKeyPath();
            v200 = sub_1DC514FCC();

            sub_1DC515EBC();
            sub_1DC2EBBA0(&qword_1ECC7C1F0, MEMORY[0x1E69D05E0], MEMORY[0x1E69D05C0]);
            sub_1DC51502C();
            sub_1DC51500C();

            v202 = v223;
            v201 = v224;
            (*(v223 + 104))(v196, *MEMORY[0x1E69D0608], v224);
            v200(v196);

            (*(v202 + 8))(v196, v201);
            v81 = v238;
            sub_1DC51500C();

            v147 = v239;
            (*(v174 + 104))(v81, v179, v239);
          }

          v117 = 0;
          goto LABEL_69;
        }

        sub_1DC517B9C();
        v148 = OUTLINED_FUNCTION_23_5();
        v149 = OUTLINED_FUNCTION_40_1();
        v153 = 43;
        goto LABEL_66;
      }

      sub_1DC28EB30(v217, &qword_1ECC7C1D8, &qword_1DC529390);
      OUTLINED_FUNCTION_60_3();
      (*(v218 + 8))(v172, v162);
    }

    sub_1DC28EB30(&qword_1ECC7C1D8, &qword_1ECC7C1D0, &qword_1DC522FB0);
    v81 = v238;
    goto LABEL_60;
  }

  v204 = v80;
  v241 = v55;
  OUTLINED_FUNCTION_32_3();
  sub_1DC2E89AC(v68, v74);
  v82 = 0;
  v83 = *(v74 + 2);
  v84 = *(v83 + 16);
  v85 = (v57 + 8);
  v86 = v74;
  v87 = v241;
  while (1)
  {
    v242 = v84 == v82;
    if (v84 == v82)
    {
      goto LABEL_10;
    }

    if (v82 >= *(v83 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    (*(v57 + 16))(v61, v83 + v88 + *(v57 + 72) * v82, v87);
    if (sub_1DC51191C())
    {
      (*v85)(v61, v87);
LABEL_10:
      OUTLINED_FUNCTION_2_9();
      sub_1DC2EADFC(v86, v90);
      v81 = v238;
      v80 = v204;
      goto LABEL_11;
    }

    ++v82;
    v89 = sub_1DC51195C();
    (*v85)(v61, v87);
    if (v89)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1DC2E80F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v25);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;
  v29 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v33 = type metadata accessor for HeuristicRoutingRequest(0);
  sub_1DC28F358(v24 + *(v33 + 36), v28, &qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_11_6(v28);
  if (v34)
  {
    sub_1DC510B7C();
    OUTLINED_FUNCTION_11_6(v28);
    if (!v34)
    {
      sub_1DC28EB30(v28, &qword_1ECC7CD00, &unk_1DC5259F0);
    }
  }

  else
  {
    (*(v31 + 32))(v20, v28, v29);
  }

  sub_1DC32A2FC();
  v35 = OUTLINED_FUNCTION_36();
  v36(v35);
  OUTLINED_FUNCTION_34();
}

unint64_t sub_1DC2E82A4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_1DC51122C();
  v5 = *(v33 - 8);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_1DC2EBBE8(0, *(v17 + 16) + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = v21 + 1;
        v24 = v21;
        sub_1DC2EBBE8((v20 > 1), v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      *(v19 + 16) = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2E8568(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v17 = *(a3 + 16);
  v7 = (a3 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  v15 = result;
  while (1)
  {
    if (v17 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v18[0] = v9;
    v18[1] = v10;

    v11 = v5(v18);
    if (v3)
    {

LABEL_15:

      return v8;
    }

    if (v11)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v19 = v8;
      if ((result & 1) == 0)
      {
        result = sub_1DC2DF6FC(0, *(v8 + 16) + 1, 1);
        v8 = v19;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1DC2DF6FC((v12 > 1), v13 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      v4 = a3;
      v5 = v15;
    }

    else
    {
    }

    v7 += 2;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1DC2E86D4()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_58_0();
  v14 = type metadata accessor for NLRouterNLParseResponse(v13);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v16 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v6 + *(v16 + 32), v10, &qword_1ECC7C158, &unk_1DC5234A0);
  v17 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v10, 1, v17);
  if (v21)
  {
    sub_1DC28EB30(v10, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
LABEL_6:
    sub_1DC28EB30(v2, &qword_1ECC7C160, qword_1DC5233B0);
    goto LABEL_7;
  }

  sub_1DC28F358(v10, v2, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2EADFC(v10, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v2, 1, v14);
  if (v21)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_29_2();
  v22 = OUTLINED_FUNCTION_30();
  v24 = sub_1DC2E89AC(v22, v23);
  v25 = *v1;
  MEMORY[0x1EEE9AC00](v24);
  *&v27[-32] = v0;
  v27[-24] = v4 & 1;
  *&v27[-16] = v6;

  sub_1DC2E82A4(sub_1DC2EADC4, &v27[-48], v25);

  OUTLINED_FUNCTION_33_4();
  sub_1DC2EADFC(v1, v26);
LABEL_7:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2E89AC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);
  OUTLINED_FUNCTION_35();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DC2E8A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1F8, &qword_1DC523018);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DC522FA0;
  OUTLINED_FUNCTION_49_5(v1, v2);
  OUTLINED_FUNCTION_28_4();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v126, v12, v136, v147);
  OUTLINED_FUNCTION_27_5();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1DC2EAE8C;
  *(v13 + 24) = v0;
  *(v1 + 32) = sub_1DC2EAF40;
  *(v1 + 40) = v13;
  OUTLINED_FUNCTION_49_5(v13, v14);
  OUTLINED_FUNCTION_28_4();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v15, v16, v17, v18, v19, v20, v21, v22, v23, v127, v24, v137, v147);
  OUTLINED_FUNCTION_27_5();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1DC2EAF44;
  *(v25 + 24) = v0;
  *(v1 + 48) = sub_1DC2EBDBC;
  *(v1 + 56) = v25;
  OUTLINED_FUNCTION_49_5(v25, v26);
  OUTLINED_FUNCTION_28_4();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v27, v28, v29, v30, v31, v32, v33, v34, v35, v128, v36, v138, v147);
  OUTLINED_FUNCTION_27_5();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1DC2EAF64;
  *(v37 + 24) = v0;
  *(v1 + 64) = sub_1DC2EBDBC;
  *(v1 + 72) = v37;
  OUTLINED_FUNCTION_49_5(v37, v38);
  OUTLINED_FUNCTION_28_4();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v39, v40, v41, v42, v43, v44, v45, v46, v47, v129, v48, v139, v147);
  OUTLINED_FUNCTION_27_5();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1DC2EAF80;
  *(v49 + 24) = v0;
  *(v1 + 80) = sub_1DC2EBDBC;
  *(v1 + 88) = v49;
  OUTLINED_FUNCTION_49_5(v49, v50);
  OUTLINED_FUNCTION_28_4();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v51, v52, v53, v54, v55, v56, v57, v58, v59, v130, v60, v140, v147);
  OUTLINED_FUNCTION_27_5();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1DC2EAF9C;
  *(v61 + 24) = v0;
  *(v1 + 96) = sub_1DC2EBDBC;
  *(v1 + 104) = v61;
  OUTLINED_FUNCTION_49_5(v61, v62);
  OUTLINED_FUNCTION_28_4();
  v63 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v63, v64, v65, v66, v67, v68, v69, v70, v71, v131, v72, v141, v147);
  OUTLINED_FUNCTION_27_5();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1DC2EAFB8;
  *(v73 + 24) = v0;
  *(v1 + 112) = sub_1DC2EBDBC;
  *(v1 + 120) = v73;
  OUTLINED_FUNCTION_49_5(v73, v74);
  OUTLINED_FUNCTION_28_4();
  v75 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v75, v76, v77, v78, v79, v80, v81, v82, v83, v132, v84, v142, v147);
  OUTLINED_FUNCTION_27_5();
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1DC2EB02C;
  *(v85 + 24) = v0;
  *(v1 + 128) = sub_1DC2EBDBC;
  *(v1 + 136) = v85;
  OUTLINED_FUNCTION_49_5(v85, v86);
  OUTLINED_FUNCTION_28_4();
  v87 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v87, v88, v89, v90, v91, v92, v93, v94, v95, v133, v96, v143, v147);
  OUTLINED_FUNCTION_27_5();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_1DC2EB04C;
  *(v97 + 24) = v0;
  *(v1 + 144) = sub_1DC2EBDBC;
  *(v1 + 152) = v97;
  OUTLINED_FUNCTION_49_5(v97, v98);
  OUTLINED_FUNCTION_28_4();
  v99 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v99, v100, v101, v102, v103, v104, v105, v106, v107, v134, v108, v144, v147);
  OUTLINED_FUNCTION_27_5();
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1DC2EB12C;
  *(v109 + 24) = v0;
  *(v1 + 160) = sub_1DC2EBDBC;
  *(v1 + 168) = v109;
  OUTLINED_FUNCTION_49_5(v109, v110);
  OUTLINED_FUNCTION_28_4();
  v111 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v111, v112, v113, v114, v115, v116, v117, v118, v119, v135, v120, v145, v147);
  OUTLINED_FUNCTION_27_5();
  v121 = swift_allocObject();
  *(v121 + 16) = sub_1DC2EB148;
  *(v121 + 24) = v0;
  *(v1 + 176) = sub_1DC2EBDBC;
  *(v1 + 184) = v121;
  OUTLINED_FUNCTION_49_5(v121, v122);
  OUTLINED_FUNCTION_28_4();
  v123 = swift_allocObject();
  *(v123 + 16) = v146;
  *(v123 + 32) = v147;
  *(v123 + 48) = v148;
  OUTLINED_FUNCTION_27_5();
  v124 = swift_allocObject();
  *(v124 + 16) = sub_1DC2EB168;
  *(v124 + 24) = v123;
  *(v1 + 192) = sub_1DC2EBDBC;
  *(v1 + 200) = v124;
  return v1;
}

uint64_t sub_1DC2E8DEC(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_3();
  v11 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  sub_1DC28F358(a1, v53, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v54)
  {
    goto LABEL_21;
  }

  sub_1DC28F358(v53, v52, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v19 = sub_1DC51480C();
  if (!OUTLINED_FUNCTION_45_6(&v51, v52, v20, v19))
  {
    v22 = sub_1DC51497C();
    if (OUTLINED_FUNCTION_45_6(&v51, v52, v23, v22))
    {

      sub_1DC51475C();

      if (v50)
      {
        sub_1DC51477C();
        OUTLINED_FUNCTION_78_0();
        sub_1DC5149AC();

        OUTLINED_FUNCTION_11_6(v3);
        if (!v24)
        {
          (*(v13 + 32))(v18, v3, v11);
          v36 = OUTLINED_FUNCTION_69_2();
          v37(v36);
          OUTLINED_FUNCTION_30_3();
          v21 = sub_1DC2EB290(v18, v1, v38, v39, MEMORY[0x1E69D1D48], MEMORY[0x1E69D1D58]);

          v40 = *(v13 + 8);
          v41 = OUTLINED_FUNCTION_36();
          v40(v41);
          v42 = v18;
LABEL_23:
          (v40)(v42, v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          goto LABEL_22;
        }
      }

      else
      {

        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v11);
      }

      v31 = v3;
    }

    else
    {
      v25 = sub_1DC514A1C();
      if (!OUTLINED_FUNCTION_45_6(&v51, v52, v26, v25))
      {
LABEL_20:
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
LABEL_21:
        v21 = 0;
        goto LABEL_22;
      }

      sub_1DC51475C();

      if (v50 && (v27 = sub_1DC51477C(), , v27))
      {
        sub_1DC5149AC();

        OUTLINED_FUNCTION_11_6(v9);
        if (!v24)
        {
          v43 = OUTLINED_FUNCTION_30();
          v44(v43);
          v45 = OUTLINED_FUNCTION_69_2();
          v46(v45);
          OUTLINED_FUNCTION_30_3();
          v21 = sub_1DC2EB290(v2, v1, v47, v48, MEMORY[0x1E69D1D48], MEMORY[0x1E69D1D58]);

          v40 = *(v13 + 8);
          v49 = OUTLINED_FUNCTION_36();
          v40(v49);
          v42 = v2;
          goto LABEL_23;
        }
      }

      else
      {

        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v11);
      }

      v31 = v9;
    }

    sub_1DC28EB30(v31, &qword_1ECC7C200, &qword_1DC523020);
    goto LABEL_20;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v21 = 1;
LABEL_22:
  sub_1DC28EB30(v53, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v21 & 1;
}

void sub_1DC2E9278()
{
  OUTLINED_FUNCTION_33();
  v57 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v56 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_3();
  v58 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v55 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v53 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  v54 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_58_0();
  v19 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  type metadata accessor for NLRouterBypassUtils();
  v29 = OUTLINED_FUNCTION_38_2();
  type metadata accessor for NLRouterServiceRequest(v29);
  sub_1DC3086B0();
  OUTLINED_FUNCTION_39(v0, 1, v19);
  if (v30)
  {
    sub_1DC28EB30(v0, &qword_1ECC7BF98, &qword_1DC5224C0);
    goto LABEL_10;
  }

  (*(v21 + 32))(v28, v0, v19);
  (*(v21 + 104))(v25, *MEMORY[0x1E69D0720], v19);
  sub_1DC2EBBA0(&qword_1ECC7C210, MEMORY[0x1E69D0738], MEMORY[0x1E69D0748]);
  v31 = sub_1DC5176CC();
  v32 = *(v21 + 8);
  v32(v25, v19);
  if ((v31 & 1) != 0 || (v57 & 1) == 0)
  {
    v32(v28, v19);
LABEL_10:
    sub_1DC28F358(v4, v61, &qword_1ECC7D3F0, &qword_1DC5238B0);
    if (v61[3])
    {
      sub_1DC28F358(v61, v60, &qword_1ECC7D3F0, &qword_1DC5238B0);
      sub_1DC51497C();
      OUTLINED_FUNCTION_74_2();
      if (swift_dynamicCast())
      {

        sub_1DC51475C();

        if (v59 && (v38 = sub_1DC51477C(), , v38))
        {
          sub_1DC5149AC();

          v39 = v58;
          OUTLINED_FUNCTION_39(v1, 1, v58);
          if (!v30)
          {
            v48 = v55;
            (*(v55 + 32))(v16, v1, v39);
LABEL_30:
            (*(v48 + 104))(v54, *MEMORY[0x1E69D1D40], v39);
            OUTLINED_FUNCTION_31_7();
            sub_1DC2EBBA0(v49, v50, MEMORY[0x1E69D1D50]);
            sub_1DC5176CC();

            v51 = *(v48 + 8);
            v52 = OUTLINED_FUNCTION_35_0();
            v51(v52);
            (v51)(v16, v39);
            __swift_destroy_boxed_opaque_existential_1Tm(v60);
            sub_1DC28EB30(v61, &qword_1ECC7D3F0, &qword_1DC5238B0);
            goto LABEL_29;
          }
        }

        else
        {

          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v41, v42, v43, v58);
        }

        v44 = v1;
        goto LABEL_28;
      }

      sub_1DC514A1C();
      OUTLINED_FUNCTION_74_2();
      if (swift_dynamicCast())
      {

        sub_1DC51475C();

        if (v59)
        {
          sub_1DC51477C();
          OUTLINED_FUNCTION_78_0();
          v40 = v56;
          sub_1DC5149AC();

          v39 = v58;
          OUTLINED_FUNCTION_39(v40, 1, v58);
          if (!v30)
          {
            v48 = v55;
            v16 = v53;
            (*(v55 + 32))(v53, v40, v39);
            goto LABEL_30;
          }
        }

        else
        {

          v40 = v56;
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v45, v46, v47, v58);
        }

        v44 = v40;
LABEL_28:
        sub_1DC28EB30(v44, &qword_1ECC7C200, &qword_1DC523020);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        sub_1DC28EB30(v61, &qword_1ECC7D3F0, &qword_1DC5238B0);
        goto LABEL_29;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v60);
    }

    sub_1DC28EB30(v61, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_29;
  }

  v33 = sub_1DC517B9C();
  v34 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v35 = sub_1DC2BE518();
  if (os_log_type_enabled(v35, v33))
  {
    OUTLINED_FUNCTION_63();
    v36 = OUTLINED_FUNCTION_41_3();
    v61[0] = v36;
    *v34 = 136315138;
    OUTLINED_FUNCTION_31_1();
    *(v34 + 4) = sub_1DC291244(0xD00000000000004ELL, v37, v61);
    _os_log_impl(&dword_1DC287000, v35, v33, "[GenAIRule] boomerang enabled don't breakout for %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1E1298840](v36, -1, -1);
    OUTLINED_FUNCTION_42();
  }

  v32(v28, v19);
LABEL_29:
  OUTLINED_FUNCTION_34();
}

void *sub_1DC2E9980(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC28F358(a1, v42, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v43)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_50_4(v4, v5, &qword_1ECC7D3F0, &qword_1DC5238B0, v6, v7, v8, v9);
  v10 = sub_1DC51485C();
  v17 = OUTLINED_FUNCTION_15_1(v10, v11, v12, v10, v13, v14, v15, v16, v39, v40);
  if (OUTLINED_FUNCTION_45_6(v17, v18, v19, v20))
  {

    if (a3)
    {
      sub_1DC517B9C();
      v21 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v22 = sub_1DC2BE518();
      if (OUTLINED_FUNCTION_80_1(v22))
      {
        OUTLINED_FUNCTION_63();
        v39 = OUTLINED_FUNCTION_41_3();
        *v21 = 136315138;
        OUTLINED_FUNCTION_31_1();
        *(v21 + 4) = sub_1DC291244(0xD000000000000056, v23, &v39);
        OUTLINED_FUNCTION_36_4(&dword_1DC287000, v24, v25, "[GenAIRule] boomerang enabled don't breakout for %s");
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_42();
      }

      goto LABEL_10;
    }
  }

  else
  {
    v26 = sub_1DC5148AC();
    v34 = OUTLINED_FUNCTION_7_5(v26, v27, v28, v29, v30, v31, v32, v33, v39, v40);
    if (!OUTLINED_FUNCTION_45_6(v34, v35, v36, v37))
    {
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
LABEL_11:
      a3 = 0;
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_51_4(v41);
LABEL_12:
  sub_1DC28EB30(v42, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return a3;
}

uint64_t sub_1DC2E9AF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DC517B9C();
    v4 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2BE518();
    if (OUTLINED_FUNCTION_80_1(v5))
    {
      OUTLINED_FUNCTION_63();
      v26[0] = OUTLINED_FUNCTION_41_3();
      *v4 = 136315138;
      OUTLINED_FUNCTION_31_1();
      *(v4 + 4) = sub_1DC291244(0xD000000000000053, v6, v26);
      OUTLINED_FUNCTION_36_4(&dword_1DC287000, v7, v8, "[GenAIRule] boomerang enabled don't breakout for %s");
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_42();
    }
  }

  else
  {
    v9 = sub_1DC28F358(a1, v26, &qword_1ECC7D3F0, &qword_1DC5238B0);
    if (v26[3])
    {
      OUTLINED_FUNCTION_50_4(v9, v10, &qword_1ECC7D3F0, &qword_1DC5238B0, v11, v12, v13, v14);
      v15 = sub_1DC514A6C();
      OUTLINED_FUNCTION_15_1(v15, v16, v17, v15, v18, v19, v20, v21, v23, v24);
      if (OUTLINED_FUNCTION_62_6())
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        sub_1DC28EB30(v26, &qword_1ECC7D3F0, &qword_1DC5238B0);
        return 1;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    sub_1DC28EB30(v26, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  return 0;
}

uint64_t sub_1DC2E9C58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C220, &qword_1DC52F230);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  sub_1DC28F358(a1, v49, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v50)
  {
    goto LABEL_15;
  }

  sub_1DC28F358(v49, v48, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v12 = sub_1DC514AAC();
  if (!OUTLINED_FUNCTION_35_5(v12, v13, v14, v12))
  {
    v19 = sub_1DC514BBC();
    if (OUTLINED_FUNCTION_35_5(v19, v20, v21, v19))
    {

      goto LABEL_10;
    }

    v28 = sub_1DC514B8C();
    if (OUTLINED_FUNCTION_35_5(v28, v29, v30, v28))
    {
      v7 = v47;

      sub_1DC514CFC();

      if (v46 && (v31 = sub_1DC51484C(), , v31))
      {
        sub_1DC514ADC();

        v32 = sub_1DC514AEC();
        OUTLINED_FUNCTION_39(v1, 1, v32);
        if (!v17)
        {
          v18 = v1;
          goto LABEL_7;
        }
      }

      else
      {

        sub_1DC514AEC();
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      }

      v26 = v1;
    }

    else
    {
      v33 = sub_1DC514C1C();
      if (!OUTLINED_FUNCTION_35_5(v33, v34, v35, v33))
      {
        goto LABEL_14;
      }

      sub_1DC514CFC();

      if (v46 && (v36 = sub_1DC51484C(), , v36))
      {
        sub_1DC514ADC();

        v37 = sub_1DC514AEC();
        OUTLINED_FUNCTION_39(v7, 1, v37);
        if (!v17)
        {
          v18 = v7;
          goto LABEL_7;
        }
      }

      else
      {

        sub_1DC514AEC();
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      }

      v26 = v7;
    }

LABEL_13:
    sub_1DC28EB30(v26, &qword_1ECC7C220, &qword_1DC52F230);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = v47;

  sub_1DC514CFC();

  if (!v46 || (v15 = sub_1DC51484C(), , !v15))
  {

    sub_1DC514AEC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_12;
  }

  sub_1DC514ADC();

  v16 = sub_1DC514AEC();
  OUTLINED_FUNCTION_39(v11, 1, v16);
  if (v17)
  {
LABEL_12:
    v26 = v11;
    goto LABEL_13;
  }

  v18 = v11;
LABEL_7:
  sub_1DC28EB30(v18, &qword_1ECC7C220, &qword_1DC52F230);
LABEL_10:
  OUTLINED_FUNCTION_51_4(v48);
LABEL_16:
  sub_1DC28EB30(v49, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v7;
}

void *sub_1DC2EA024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC28F358(a1, v66, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v67)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_50_4(v4, v5, &qword_1ECC7D3F0, &qword_1DC5238B0, v6, v7, v8, v9);
  v10 = sub_1DC514B3C();
  v17 = OUTLINED_FUNCTION_15_1(v10, v11, v12, v10, v13, v14, v15, v16, v63, v64);
  if (OUTLINED_FUNCTION_45_6(v17, v18, v19, v20))
  {

    if (a3)
    {
      sub_1DC517B9C();
      v21 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v22 = sub_1DC2BE518();
      if (OUTLINED_FUNCTION_80_1(v22))
      {
        OUTLINED_FUNCTION_63();
        v63 = OUTLINED_FUNCTION_41_3();
        *v21 = 136315138;
        OUTLINED_FUNCTION_31_1();
        *(v21 + 4) = sub_1DC291244(0xD000000000000059, v23, &v63);
        OUTLINED_FUNCTION_36_4(&dword_1DC287000, v24, v25, "[GenAIRule] boomerang enabled don't breakout for %s");
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_42();
      }

      goto LABEL_7;
    }

LABEL_13:
    OUTLINED_FUNCTION_51_4(v65);
    goto LABEL_14;
  }

  v26 = sub_1DC514B4C();
  v34 = OUTLINED_FUNCTION_7_5(v26, v27, v28, v29, v30, v31, v32, v33, v63, v64);
  if (OUTLINED_FUNCTION_45_6(v34, v35, v36, v37) || (v38 = sub_1DC514BAC(), v46 = OUTLINED_FUNCTION_7_5(v38, v39, v40, v41, v42, v43, v44, v45, v63, v64), OUTLINED_FUNCTION_45_6(v46, v47, v48, v49)) || (v50 = sub_1DC514B7C(), v58 = OUTLINED_FUNCTION_7_5(v50, v51, v52, v53, v54, v55, v56, v57, v63, v64), OUTLINED_FUNCTION_45_6(v58, v59, v60, v61)))
  {

    goto LABEL_13;
  }

LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_8:
  a3 = 0;
LABEL_14:
  sub_1DC28EB30(v66, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return a3;
}

void sub_1DC2EA1B8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v67 = sub_1DC51471C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v66 = v5;
  OUTLINED_FUNCTION_12();
  v6 = sub_1DC51133C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v11 = v10;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC51166C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v15);
  v16 = sub_1DC5116FC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C228, &qword_1DC523028);
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v23);
  sub_1DC28F358(v1, v74, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v74[3])
  {
    goto LABEL_29;
  }

  sub_1DC28F358(v74, v73, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51474C();
  if (!OUTLINED_FUNCTION_62_6())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
LABEL_29:
    sub_1DC28EB30(v74, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_34();
    return;
  }

  v59 = *(sub_1DC510FCC() + 16);
  if (!v59)
  {
LABEL_23:

    v48 = 1;
    v49 = v55;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v49, v48, 1, v16);
    sub_1DC28EB30(v49, &qword_1ECC7C228, &qword_1DC523028);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    goto LABEL_29;
  }

  v24 = 0;
  OUTLINED_FUNCTION_24();
  v60 = v25 + v26;
  v54 = *MEMORY[0x1E69D0A70];
  v53 = (v27 + 8);
  v69 = (v8 + 8);
  v63 = *MEMORY[0x1E69D1B38];
  v62 = (v3 + 104);
  v28 = v11;
  v29 = v61;
  v30 = v25;
  v52 = v16;
  v50 = v12;
  v51 = v18;
  v56 = v25;
  while (v24 < *(v30 + 16))
  {
    (*(v18 + 16))(v29, v60 + *(v18 + 72) * v24, v16);
    if (sub_1DC5116CC())
    {
      v68 = v24;
      sub_1DC5116BC();
      OUTLINED_FUNCTION_37();
      v31(v58, v54, v12);
      sub_1DC2EBBA0(&qword_1ECC7C230, MEMORY[0x1E69D0A80], MEMORY[0x1E69D0A88]);
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_79_2();
      v32 = *v53;
      (*v53)(v58, v12);
      v32(v57, v12);
      v30 = v56;
      v29 = v61;
      if (v72 == v71)
      {
        v33 = sub_1DC51167C();
        v70 = *(v33 + 16);
        if (v70)
        {
          v34 = 0;
          OUTLINED_FUNCTION_24();
          v36 = v33 + v35;
          v64 = v33 + v35;
          v65 = v33;
          while (v34 < *(v33 + 16))
          {
            (*(v8 + 16))(v28, v36 + *(v8 + 72) * v34, v6);
            if (sub_1DC51132C())
            {
              v37 = v6;
              v38 = sub_1DC51131C();
              v40 = v39;
              (*v62)(v66, v63, v67);
              v41 = sub_1DC51470C();
              v43 = v42;
              OUTLINED_FUNCTION_37();
              v44(v66, v67);
              if (v38 == v41 && v40 == v43)
              {

                (*v69)(v28, v37);
LABEL_27:

                v49 = v55;
                v16 = v52;
                (*(v51 + 32))(v55, v61, v52);
                v48 = 0;
                goto LABEL_28;
              }

              v46 = sub_1DC51825C();

              v6 = v37;
              (*v69)(v28, v37);
              v24 = v68;
              v36 = v64;
              v33 = v65;
              if (v46)
              {
                goto LABEL_27;
              }
            }

            else
            {
              (*v69)(v28, v6);
            }

            if (v70 == ++v34)
            {

              v16 = v52;
              v12 = v50;
              v18 = v51;
              v29 = v61;
              v30 = v56;
              goto LABEL_22;
            }
          }

          __break(1u);
          break;
        }
      }
    }

LABEL_22:
    ++v24;
    OUTLINED_FUNCTION_37();
    v47(v29, v16);
    if (v24 == v59)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_1DC2EA924()
{
  OUTLINED_FUNCTION_33();
  v41 = v1;
  OUTLINED_FUNCTION_38_2();
  v45 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v47 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v35 = *(sub_1DC5111AC() + 16);
  if (v35)
  {
    v18 = 0;
    OUTLINED_FUNCTION_24();
    v38 = v19 + v20;
    v37 = (v13 + 8);
    v46 = (v6 + 8);
    v44 = (v3 + 8);
    v39 = v21 & 1;
    v22 = v19;
    v23 = v35;
    v34 = v11;
    v43 = v17;
    v36 = v13;
    v33 = v19;
    while (v18 < *(v22 + 16))
    {
      (*(v13 + 16))(v17, v38 + *(v13 + 72) * v18, v11);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v24 = sub_1DC51177C();
        v25 = *v46;
        (*v46)(v10, v47);
        if (v24)
        {
          type metadata accessor for NLRouterBypassUtils();
          sub_1DC51154C();
          sub_1DC51178C();
          v25(v10, v47);
          v26 = sub_1DC307E5C(v0);
          v42 = *v44;
          (*v44)(v0, v45);
          if (v26)
          {
            v40 = v25;

            sub_1DC51478C();

            v27 = sub_1DC2E8A08();
            v28 = v27 + 40;
            v29 = -*(v27 + 16);
            v30 = -1;
            while (1)
            {
              if (v29 + v30 == -1)
              {

                sub_1DC28EB30(v48 + 2, &qword_1ECC7D3F0, &qword_1DC5238B0);
                v17 = v43;
                v11 = v34;
                (*v37)(v43, v34);
                v23 = v35;
                v13 = v36;
                v22 = v33;
                goto LABEL_13;
              }

              if (++v30 >= *(v27 + 16))
              {
                break;
              }

              v31 = v28 + 16;
              v32 = *(v28 - 8);

              sub_1DC51154C();
              sub_1DC51178C();
              v40(v10, v47);
              BYTE1(v48[0]) = v39;
              v32(v48, v48 + 2, v0, v48 + 1, v41);

              v42(v0, v45);
              v28 = v31;
              if (LOBYTE(v48[0]) == 1)
              {

                sub_1DC28EB30(v48 + 2, &qword_1ECC7D3F0, &qword_1DC5238B0);
                (*v37)(v43, v34);
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }
        }
      }

      (*v37)(v17, v11);
      v13 = v36;
LABEL_13:
      if (++v18 == v23)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

LABEL_17:
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC2EADFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC2EAE8C(uint64_t a1)
{
  v2 = sub_1DC28F358(a1, v19, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v20)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_50_4(v2, v3, &qword_1ECC7D3F0, &qword_1DC5238B0, v4, v5, v6, v7);
  v8 = sub_1DC514D4C();
  OUTLINED_FUNCTION_15_1(v8, v9, v10, v8, v11, v12, v13, v14, v16, v17);
  if (!OUTLINED_FUNCTION_62_6())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_51_4(v18);
LABEL_6:
  sub_1DC28EB30(v19, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v1;
}

uint64_t sub_1DC2EAFB8(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C218, &qword_1DC528A90);
  *(swift_initStackObject() + 16) = xmmword_1DC522F10;
  v5 = sub_1DC2EB358(a1);
  v7 = OUTLINED_FUNCTION_77(v5, v6);
  OUTLINED_FUNCTION_66_3(v7);
  return a3 & 1;
}

uint64_t sub_1DC2EB04C(uint64_t a1)
{
  v1 = sub_1DC28F358(a1, v20, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v21)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_50_4(v1, v2, &qword_1ECC7D3F0, &qword_1DC5238B0, v3, v4, v5, v6);
  v7 = sub_1DC51481C();
  v8 = MEMORY[0x1E69E7CA0];
  if (!OUTLINED_FUNCTION_21(v7, v9, v10, v7, v11))
  {
    v12 = sub_1DC51488C();
    if (!OUTLINED_FUNCTION_6_5(v12, v13))
    {
      v14 = sub_1DC51489C();
      if (!OUTLINED_FUNCTION_6_5(v14, v15))
      {
        v16 = sub_1DC5148EC();
        if (!OUTLINED_FUNCTION_6_5(v16, v17))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
LABEL_8:
          v8 = 0;
          goto LABEL_9;
        }
      }
    }
  }

  OUTLINED_FUNCTION_51_4(v19);
LABEL_9:
  sub_1DC28EB30(v20, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v8;
}

uint64_t sub_1DC2EB168(uint64_t a1)
{
  v1 = sub_1DC28F358(a1, v22, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v23)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_4(v1, v2, &qword_1ECC7D3F0, &qword_1DC5238B0, v3, v4, v5, v6);
  v7 = sub_1DC5148DC();
  v8 = MEMORY[0x1E69E7CA0];
  if (!OUTLINED_FUNCTION_21(v7, v9, v10, v7, v11))
  {
    v12 = sub_1DC51492C();
    if (!OUTLINED_FUNCTION_6_5(v12, v13))
    {
      v14 = sub_1DC5148FC();
      if (!OUTLINED_FUNCTION_6_5(v14, v15))
      {
        v16 = sub_1DC5149EC();
        if (!OUTLINED_FUNCTION_6_5(v16, v17))
        {
          v18 = sub_1DC51498C();
          if (!OUTLINED_FUNCTION_6_5(v18, v19))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v21);
LABEL_9:
            v8 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_51_4(v21);
LABEL_10:
  sub_1DC28EB30(v22, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v8;
}

uint64_t sub_1DC2EB258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, _BYTE *a4@<X8>)
{
  result = (*(v4 + 16))(a1, a2, *a3);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DC2EB290(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1DC2EBBA0(a4, a5, a6);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_79_2();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DC51825C();
  }

  return v10 & 1;
}

uint64_t sub_1DC2EB358(uint64_t a1)
{
  v2 = sub_1DC28F358(a1, v19, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v20)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_50_4(v2, v3, &qword_1ECC7D3F0, &qword_1DC5238B0, v4, v5, v6, v7);
  v8 = sub_1DC51493C();
  OUTLINED_FUNCTION_15_1(v8, v9, v10, v8, v11, v12, v13, v14, v16, v17);
  if (!OUTLINED_FUNCTION_62_6())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_51_4(v18);
LABEL_6:
  sub_1DC28EB30(v19, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v1;
}

uint64_t sub_1DC2EB40C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DC517B9C();
    v4 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2BE518();
    if (OUTLINED_FUNCTION_80_1(v5))
    {
      OUTLINED_FUNCTION_63();
      v25[0] = OUTLINED_FUNCTION_41_3();
      *v4 = 136315138;
      OUTLINED_FUNCTION_31_1();
      *(v4 + 4) = sub_1DC291244(0xD000000000000055, v6, v25);
      OUTLINED_FUNCTION_36_4(&dword_1DC287000, v7, v8, "[GenAIRule] boomerang enabled don't breakout for %s");
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_42();
    }

    return 0;
  }

  sub_1DC28F358(a1, v25, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v25[3])
  {
    sub_1DC28EB30(v25, &qword_1ECC7D3F0, &qword_1DC5238B0);
    return 0;
  }

  v9 = sub_1DC51497C();
  OUTLINED_FUNCTION_15_1(v9, v10, v11, v9, v12, v13, v14, v15, v23, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1DC51475C();

  if (!v25[0] || (v16 = sub_1DC51476C(), , !v16))
  {

    return 0;
  }

  result = sub_1DC2C20B8(v16);
  v18 = result;
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      return 0;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E1296800](i, v16);
      v20 = result;
    }

    else
    {
      if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v20 = *(v16 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v25[0] = v20;
    sub_1DC2EB670();
    v22 = v21;

    if (v22)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_1DC2EB640(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void sub_1DC2EB670()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC514BFC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C258, &qword_1DC523078);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_56_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_70_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38_3();
  sub_1DC5146BC();
  if (v29 && (v14 = sub_1DC5148CC(), , v14))
  {
    sub_1DC514BEC();
  }

  else
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }

  (*(v6 + 104))(v3, *MEMORY[0x1E69D20A8], v4);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  v21 = *(v8 + 48);
  OUTLINED_FUNCTION_76_0();
  sub_1DC28F358(v3, v0 + v21, &qword_1ECC7C260, &unk_1DC523080);
  OUTLINED_FUNCTION_11_6(v0);
  if (!v22)
  {
    sub_1DC28F358(v0, v2, &qword_1ECC7C260, &unk_1DC523080);
    OUTLINED_FUNCTION_11_6(v0 + v21);
    if (!v22)
    {
      (*(v6 + 32))(v1, v0 + v21, v4);
      sub_1DC2EBBA0(&qword_1ECC7C268, MEMORY[0x1E69D2110], MEMORY[0x1E69D2120]);
      OUTLINED_FUNCTION_30();
      sub_1DC5176CC();
      v25 = *(v6 + 8);
      v25(v1, v4);
      sub_1DC28EB30(v3, &qword_1ECC7C260, &unk_1DC523080);
      v26 = OUTLINED_FUNCTION_35_0();
      sub_1DC28EB30(v26, v27, &unk_1DC523080);
      v28 = OUTLINED_FUNCTION_29_0();
      (v25)(v28);
      sub_1DC28EB30(v0, &qword_1ECC7C260, &unk_1DC523080);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_47_5();
    OUTLINED_FUNCTION_46_4();
    v23 = OUTLINED_FUNCTION_29_0();
    v24(v23);
LABEL_13:
    sub_1DC28EB30(v0, &qword_1ECC7C258, &qword_1DC523078);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_11_6(v0 + v21);
  if (!v22)
  {
    goto LABEL_13;
  }

  sub_1DC28EB30(v0, &qword_1ECC7C260, &unk_1DC523080);
LABEL_14:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2EB9E4(uint64_t a1@<X8>)
{
  nullsub_1();
  *(a1 + 24) = &type metadata for GenerativeAssistantHelper;
  *(a1 + 32) = &off_1F57F8A40;
}

uint64_t sub_1DC2EBA20(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC51122C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC51122C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DC2EBB08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DC2EBB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC2EBBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1DC2EBBE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2EBC08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC2EBC08(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  v10 = *(sub_1DC51122C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51122C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2EBA20(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DC2EBDCC()
{
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  result = sub_1DC517D7C();
  off_1ECC8F578 = result;
  return result;
}

void static CDMProtobufConverter.nluRequestJsonToSIRINLU(protoJson:)()
{
  OUTLINED_FUNCTION_164();
  v0 = sub_1DC51657C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C280, &unk_1DC523090);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DC513CAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();

  sub_1DC51656C();
  sub_1DC302048(&qword_1ECC7C288, MEMORY[0x1E69D1580]);
  OUTLINED_FUNCTION_73();
  sub_1DC5165CC();
  v6 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  OUTLINED_FUNCTION_97_0();
  v9 = OUTLINED_FUNCTION_107();
  v10(v9);
  sub_1DC2EC084();
  v11 = OUTLINED_FUNCTION_58_3();
  v12(v11);
  OUTLINED_FUNCTION_154();
}

void sub_1DC2EC084()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC513BCC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  sub_1DC513B2C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  if (sub_1DC513C5C())
  {
    v44 = v9;
    v42 = v2;
    sub_1DC513C9C();
    v11 = sub_1DC513B0C();
    v13 = v12;
    v14 = sub_1DC513AEC();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E69D2510]);
    v18 = sub_1DC301880(v11, v13, v14, v16, &selRef_initWithIdAsString_connectionID_);
    v19 = OUTLINED_FUNCTION_56();
    v20(v19);
    if (sub_1DC513C8C())
    {
      OUTLINED_FUNCTION_128_1();
      sub_1DC513C6C();
      sub_1DC2FC53C();
      v22 = v21;
      v23 = v42;
      v24 = OUTLINED_FUNCTION_107();
      v43 = v26;
      v44 = v25;
      v26(v24);
      v45 = MEMORY[0x1E69E7CC0];
      v27 = *(sub_1DC513C7C() + 16);
      if (v27)
      {
        v41[0] = v22;
        v41[1] = v18;
        v28 = *(v23 + 16);
        OUTLINED_FUNCTION_24();
        v42 = v29;
        v31 = v29 + v30;
        v32 = *(v23 + 72);
        do
        {
          v28(v6, v31, v0);
          sub_1DC2FC53C();
          v33 = OUTLINED_FUNCTION_36();
          v34 = v43(v33);
          MEMORY[0x1E12962A0](v34);
          v35 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35 >> 1)
          {
            OUTLINED_FUNCTION_26(v35);
            sub_1DC517A3C();
          }

          sub_1DC517A5C();
          v31 += v32;
          --v27;
        }

        while (v27);
        v38 = v45;
      }

      else
      {

        v38 = MEMORY[0x1E69E7CC0];
      }

      objc_allocWithZone(MEMORY[0x1E69D2508]);
      v39 = OUTLINED_FUNCTION_30();
      sub_1DC300EAC(v39, v40, v38);
    }

    else
    {
      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      OUTLINED_FUNCTION_61_2();
      sub_1DC516EFC(v37);
    }
  }

  else
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v36);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC2EC748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1DC51420C();
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v29);
  v30 = sub_1DC513E3C();
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v32);
  v33 = sub_1DC513A7C();
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v35);
  v36 = sub_1DC5140BC();
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v38);
  v39 = sub_1DC51435C();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v41);
  v42 = sub_1DC5144CC();
  v43 = OUTLINED_FUNCTION_10(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v44);
  v45 = sub_1DC513F0C();
  v46 = OUTLINED_FUNCTION_10(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v47);
  v48 = sub_1DC513E2C();
  v49 = OUTLINED_FUNCTION_10(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_1();
  v533 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C2A8, &qword_1DC5230A0);
  v52 = OUTLINED_FUNCTION_10(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v60);
  v557 = sub_1DC513A8C();
  OUTLINED_FUNCTION_0();
  v535 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  v556 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v80);
  v81 = sub_1DC513DCC();
  v82 = OUTLINED_FUNCTION_10(v81);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_2_1();
  v547 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C2B0, &unk_1DC5230A8);
  OUTLINED_FUNCTION_10(v84);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v85);
  v551 = v501 - v86;
  OUTLINED_FUNCTION_12();
  v87 = sub_1DC51403C();
  OUTLINED_FUNCTION_0();
  v541 = v88;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_15();
  v553 = v90;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_23_1();
  v559 = v100;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_62();
  v552 = v102;
  OUTLINED_FUNCTION_12();
  v545 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v536 = v103;
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v110);
  v111 = sub_1DC513A3C();
  v112 = OUTLINED_FUNCTION_10(v111);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v113);
  v529 = sub_1DC513C4C();
  OUTLINED_FUNCTION_0();
  v523 = v114;
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v117);
  v530[0] = sub_1DC51421C();
  OUTLINED_FUNCTION_0();
  v534 = v118;
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_62();
  v561 = v121;
  OUTLINED_FUNCTION_12();
  v558 = sub_1DC51425C();
  OUTLINED_FUNCTION_0();
  v123 = v122;
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v125);
  v127 = v501 - v126;
  sub_1DC513CEC();
  v128 = [v24 requestId];
  v129 = [v128 idAsString];

  sub_1DC51772C();
  OUTLINED_FUNCTION_150();
  sub_1DC513CDC();
  OUTLINED_FUNCTION_152_0();
  sub_1DC513B1C();
  v130 = OUTLINED_FUNCTION_57_4();
  v20(v130);
  v131 = [v24 requestId];
  v132 = [v131 connectionID];

  sub_1DC51772C();
  v524[0] = v26;
  sub_1DC513CDC();
  OUTLINED_FUNCTION_152_0();
  sub_1DC513AFC();
  v133 = OUTLINED_FUNCTION_57_4();
  v20(v133);
  v538 = v24;
  v134 = [v24 repetitionResults];
  sub_1DC298C74(0, &qword_1ECC7C2B8, 0x1E69D2500);
  v135 = sub_1DC517A1C();

  v136 = sub_1DC2C20B8(v135);
  v137 = MEMORY[0x1E69D16C0];
  v138 = MEMORY[0x1E69D16C8];
  v139 = MEMORY[0x1E69D16B8];
  if (v136)
  {
    v140 = v136;
    v560 = v135;
    v563 = MEMORY[0x1E69E7CC0];
    sub_1DC301D30(0, v136 & ~(v136 >> 63), 0);
    if (v140 < 0)
    {
      goto LABEL_235;
    }

    v141 = 0;
    v142 = v563;
    v143 = v560;
    v555 = v560 & 0xC000000000000001;
    LODWORD(v544) = *v137;
    v144 = v534 + 104;
    LODWORD(v543) = *v138;
    LODWORD(v540) = *v139;
    LODWORD(v550) = *MEMORY[0x1E69D16B0];
    v554 = v123 + 32;
    LODWORD(v539) = *MEMORY[0x1E69D16A8];
    while (2)
    {
      if (v555)
      {
        v145 = MEMORY[0x1E1296800](v141);
      }

      else
      {
        v145 = *(v143 + 8 * v141 + 32);
      }

      v146 = v145;
      sub_1DC51424C();
      [v146 asrHypothesisIndex];
      sub_1DC51423C();
      v147 = [v146 repetitionType];
      v148 = v550;
      switch(v147)
      {
        case 0u:
          goto LABEL_15;
        case 1u:
          v149 = &v565;
          goto LABEL_14;
        case 2u:
          v149 = &a11;
          goto LABEL_14;
        case 3u:
          v149 = &a12;
          goto LABEL_14;
        default:
          if (qword_1ECC81EE0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v150 = off_1ECC8F578;
          v151 = sub_1DC517BAC();
          sub_1DC516EFC("repetition type unrecognized", 28, 2, &dword_1DC287000, v150, v151, MEMORY[0x1E69E7CC0]);
          v152 = [v146 repetitionType];
          *v561 = v152;
          v149 = &v564;
LABEL_14:
          v148 = *(v149 - 64);
LABEL_15:
          (*v144)(v561, v148, v530[0]);
          sub_1DC51422C();

          v563 = v142;
          v154 = *(v142 + 16);
          v153 = *(v142 + 24);
          if (v154 >= v153 >> 1)
          {
            v156 = OUTLINED_FUNCTION_26(v153);
            sub_1DC301D30(v156, v154 + 1, 1);
            v142 = v563;
          }

          ++v141;
          *(v142 + 16) = v154 + 1;
          OUTLINED_FUNCTION_24();
          (*(v123 + 32))(v142 + v155 + *(v123 + 72) * v154, v127, v558);
          v143 = v560;
          if (v140 != v141)
          {
            continue;
          }

          v157 = v556;
          v137 = MEMORY[0x1E69D16C0];
          break;
      }

      break;
    }
  }

  else
  {

    v157 = v556;
  }

  sub_1DC513CBC();
  v158 = [v538 parses];
  sub_1DC298C74(0, &qword_1ECC7C2C0, 0x1E69D2598);
  v159 = sub_1DC517A1C();

  v515 = v159;
  v160 = sub_1DC2C20B8(v159);
  v161 = v551;
  v522 = v160;
  if (!v160)
  {
LABEL_231:

    OUTLINED_FUNCTION_34();
    return;
  }

  v162 = 0;
  v163 = 0;
  v521 = v515 & 0xC000000000000001;
  v513 = v515 & 0xFFFFFFFFFFFFFF8;
  v512 = v515 + 32;
  v544 = v536 + 16;
  v543 = v536 + 8;
  v538 = (v535 + 32);
  v536 = v535 + 16;
  v535 += 8;
  v561 = v541 + 4;
  v540 = v541 + 2;
  v539 = v541 + 1;
  v511 = *v137;
  v520 = v534 + 104;
  v510 = *MEMORY[0x1E69D16C8];
  v509 = *MEMORY[0x1E69D16B8];
  v516[1] = *MEMORY[0x1E69D16B0];
  v508 = *MEMORY[0x1E69D16A8];
  v519 = v523 + 16;
  v518 = v523 + 32;
  v517 = v523 + 8;
  while (1)
  {
    if (v521)
    {
      v164 = MEMORY[0x1E1296800](v162, v515);
    }

    else
    {
      if (v162 >= *(v513 + 16))
      {
        goto LABEL_234;
      }

      v164 = *(v512 + 8 * v162);
    }

    v534 = v164;
    v165 = __OFADD__(v162, 1);
    v166 = v162 + 1;
    if (v165)
    {
      __break(1u);
      goto LABEL_233;
    }

    v527 = v166;
    sub_1DC513C3C();
    v167 = v534;
    [v534 probability];
    sub_1DC513BDC();
    v168 = [v167 parserId];
    v169 = sub_1DC51772C();

    OUTLINED_FUNCTION_30();
    sub_1DC513C2C();
    v170 = [v167 nsUUID];
    v171 = v549;
    sub_1DC510B4C();

    OUTLINED_FUNCTION_20_3();
    sub_1DC513A2C();
    sub_1DC513C0C();
    v172 = [v167 userDialogActs];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C328, &qword_1DC5230B8);
    v173 = sub_1DC517A1C();

    if (!(v173 >> 62))
    {
      v174 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v174)
      {
        break;
      }

      goto LABEL_220;
    }

    v174 = sub_1DC51802C();
    if (v174)
    {
      break;
    }

LABEL_220:

    v473 = [v534 repetitionResult];
    OUTLINED_FUNCTION_88();
    sub_1DC51424C();
    [v473 asrHypothesisIndex];
    sub_1DC51423C();
    v474 = [v473 repetitionType];
    v475 = v546;
    switch(v474)
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
        break;
      default:
        v475 = v546;
        if (qword_1ECC81EE0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v476 = off_1ECC8F578;
        v477 = sub_1DC517BAC();
        sub_1DC516EFC("repetition type unrecognized", 28, 2, &dword_1DC287000, v476, v477, MEMORY[0x1E69E7CC0]);
        v478 = [v473 repetitionType];
        *v525 = v478;
        break;
    }

    OUTLINED_FUNCTION_37();
    v479(v525);
    sub_1DC51422C();

    sub_1DC513BFC();
    v480 = [v534 parser];
    if (v480)
    {
      v481 = v480;
      OUTLINED_FUNCTION_88();
      sub_1DC513A6C();
      OUTLINED_FUNCTION_20_3();
      sub_1DC300BB0(v481, v482);
      sub_1DC513A5C();
      OUTLINED_FUNCTION_20_3();
      sub_1DC300CDC(v481, v483);
      sub_1DC513A4C();
      sub_1DC513C1C();
    }

    OUTLINED_FUNCTION_37();
    v484(v528, v475, v529);
    v485 = v524[0];
    sub_1DC513CCC();
    OUTLINED_FUNCTION_163();
    v487 = *v486;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v173 = v487;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v496 = OUTLINED_FUNCTION_136();
      v487 = sub_1DC301930(v496, v497, v498, v499);
      *v173 = v487;
    }

    v490 = v487[2];
    v489 = v487[3];
    if (v490 >= v489 >> 1)
    {
      v500 = OUTLINED_FUNCTION_26(v489);
      v487 = sub_1DC301930(v500, v490 + 1, 1, v487);
      *v173 = v487;
    }

    v487[2] = v490 + 1;
    v491 = v523;
    OUTLINED_FUNCTION_24();
    v493 = v487 + v492 + *(v491 + 72) * v490;
    v494 = v529;
    (*(v491 + 32))(v493, v528, v529);
    v495 = OUTLINED_FUNCTION_21_0();
    v485(v495);

    (*(v491 + 8))(v546, v494);
    v162 = v527;
    if (v527 == v522)
    {
      goto LABEL_231;
    }
  }

  v555 = v174;
  if (v174 >= 1)
  {
    v175 = 0;
    v554 = v173 & 0xC000000000000001;
    v550 = v173;
    v176 = v555;
    while (1)
    {
      v560 = v175;
      if (v554)
      {
        v177 = MEMORY[0x1E1296800]();
      }

      else
      {
        v177 = *(v173 + 8 * v175 + 32);
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      OUTLINED_FUNCTION_56_7();
      v178 = swift_dynamicCastObjCClass();
      if (!v178)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_56_7();
        v188 = swift_dynamicCastObjCClass();
        if (v188)
        {
          v171 = v188;
          v190 = v157;
          OUTLINED_FUNCTION_141(v188, v189);
          OUTLINED_FUNCTION_88();
          sub_1DC51402C();
          OUTLINED_FUNCTION_20_3();
          sub_1DC513E1C();
          sub_1DC513FEC();
          v191 = [v171 offerId];
          if (v191)
          {
            v172 = v191;
            v157 = v530[1];
            sub_1DC510B4C();

            OUTLINED_FUNCTION_15_2();
            OUTLINED_FUNCTION_93();
            v192();
            OUTLINED_FUNCTION_43_4();
            sub_1DC513A2C();
            sub_1DC513FDC();
            OUTLINED_FUNCTION_119_0();
            sub_1DC513DEC();
            v193 = OUTLINED_FUNCTION_21_0();
            (v172)(v193);
            OUTLINED_FUNCTION_37();
            v194(v157, v169);
          }

          v195 = [v171 reference];
          v169 = v532;
          if (v195)
          {
            v196 = v195;
            if (OUTLINED_FUNCTION_126())
            {
              OUTLINED_FUNCTION_20_3();
              sub_1DC514EDC();
              v173 = v550;
              if (v163)
              {
                v161 = v551;
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v172 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_77_0();
                sub_1DC516EFC(v197);

                v163 = 0;
                v199 = 1;
LABEL_90:
                OUTLINED_FUNCTION_116_0(v198, v199);
                v253 = OUTLINED_FUNCTION_82_0();
                OUTLINED_FUNCTION_39(v253, v254, v157);
                if (!v223)
                {
                  OUTLINED_FUNCTION_22_2();
                  v255 = OUTLINED_FUNCTION_148_0();
                  v256(v255);
                  OUTLINED_FUNCTION_20_7();
                  v169 = *(v257 - 256);
                  v258 = OUTLINED_FUNCTION_30();
                  v259(v258);
                  v172 = sub_1DC513FDC();
                  sub_1DC513E0C();
                  v260 = OUTLINED_FUNCTION_21_0();
                  (v172)(v260);
                  OUTLINED_FUNCTION_167();
                  v261 = OUTLINED_FUNCTION_23_6();
                  v262(v261, v157);
                  v157 = v556;
LABEL_94:
                  v263 = OUTLINED_FUNCTION_40_6();
                  v264 = v542;
                  goto LABEL_95;
                }

                v157 = v556;
LABEL_93:
                OUTLINED_FUNCTION_167();
                sub_1DC28EB30(v169, &qword_1ECC7C2A8, &qword_1DC5230A0);
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_22_2();
              v251 = OUTLINED_FUNCTION_115_0();
              v198 = v252(v251);
              v199 = 0;
            }

            else
            {
              v173 = v550;
              if (qword_1ECC81EE0 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v172 = off_1ECC8F578;
              sub_1DC517BAC();
              OUTLINED_FUNCTION_92();
              sub_1DC516EFC(v240);

              v199 = 1;
            }

            v161 = v551;
            goto LABEL_90;
          }

          if (qword_1ECC81EE0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v172 = off_1ECC8F578;
          sub_1DC517B8C();
          OUTLINED_FUNCTION_78_1();
          sub_1DC516EFC(v236);
          v237 = OUTLINED_FUNCTION_41_4();
          __swift_storeEnumTagSinglePayload(v237, v238, v239, v557);
          v157 = v190;
          v173 = v550;
          v161 = v551;
          goto LABEL_93;
        }

        objc_opt_self();
        OUTLINED_FUNCTION_56_7();
        v206 = swift_dynamicCastObjCClass();
        if (v206)
        {
          v171 = v206;
          v207 = v157;
          v558 = v177;
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_88();
          sub_1DC51402C();
          OUTLINED_FUNCTION_20_3();
          sub_1DC513EFC();
          sub_1DC51400C();
          v208 = [v171 taskId];
          if (v208)
          {
            v209 = v208;
            OUTLINED_FUNCTION_76_1();
            sub_1DC510B4C();

            v210 = OUTLINED_FUNCTION_15_2();
            v157 = v545;
            v211(v210, v87, v545);
            sub_1DC513A2C();
            v172 = sub_1DC513FFC();
            v177 = v212;
            sub_1DC513ECC();
            v213 = OUTLINED_FUNCTION_21_0();
            (v172)(v213);
            OUTLINED_FUNCTION_37();
            v214(v87, v157);
          }

          v215 = [v171 reference];
          if (v215)
          {
            v216 = v215;
            v217 = OUTLINED_FUNCTION_126();
            if (v217)
            {
              v177 = v217;
              OUTLINED_FUNCTION_20_3();
              sub_1DC514EDC();
              v173 = v550;
              v176 = v555;
              v169 = v526[0];
              if (v163)
              {
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v172 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_77_0();
                sub_1DC516EFC(v218);

                v163 = 0;
              }

              else
              {

                OUTLINED_FUNCTION_22_2();
                v294 = OUTLINED_FUNCTION_115_0();
                v295(v294);
              }
            }

            else
            {
              v173 = v550;
              v176 = v555;
              v169 = v526[0];
              if (qword_1ECC81EE0 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v172 = off_1ECC8F578;
              sub_1DC517BAC();
              OUTLINED_FUNCTION_92();
              sub_1DC516EFC(v283);
            }

            OUTLINED_FUNCTION_129_0();
            OUTLINED_FUNCTION_116_0(v296, v297);
            v298 = OUTLINED_FUNCTION_82_0();
            OUTLINED_FUNCTION_39(v298, v299, v157);
            if (!v223)
            {
              OUTLINED_FUNCTION_22_2();
              v301 = OUTLINED_FUNCTION_148_0();
              v302(v301);
              OUTLINED_FUNCTION_20_7();
              v169 = *(v303 - 256);
              v304 = OUTLINED_FUNCTION_30();
              v305(v304);
              OUTLINED_FUNCTION_129_0();
              v172 = sub_1DC513FFC();
              v177 = v306;
              sub_1DC513EEC();
              OUTLINED_FUNCTION_129_0();
              v307 = OUTLINED_FUNCTION_21_0();
              (v172)(v307);
              OUTLINED_FUNCTION_138();
              v308 = OUTLINED_FUNCTION_23_6();
              v309(v308, v157);
              v157 = v556;
LABEL_127:
              v231 = OUTLINED_FUNCTION_40_6();
              v232 = v177;
              goto LABEL_74;
            }

            v157 = v556;
          }

          else
          {
            if (qword_1ECC81EE0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v172 = off_1ECC8F578;
            sub_1DC517B8C();
            OUTLINED_FUNCTION_78_1();
            sub_1DC516EFC(v279);
            v169 = v526[0];
            v280 = OUTLINED_FUNCTION_41_4();
            __swift_storeEnumTagSinglePayload(v280, v281, v282, v557);
            OUTLINED_FUNCTION_129_0();
            v157 = v207;
            v173 = v550;
            v176 = v555;
          }

          OUTLINED_FUNCTION_138();
          v300 = v169;
        }

        else
        {
          objc_opt_self();
          OUTLINED_FUNCTION_56_7();
          v241 = swift_dynamicCastObjCClass();
          if (v241)
          {
            v171 = v241;
            OUTLINED_FUNCTION_133();
            OUTLINED_FUNCTION_141(v242, v243);
            OUTLINED_FUNCTION_88();
            sub_1DC51402C();
            v244 = [v171 systemDialogActId];
            OUTLINED_FUNCTION_106();
            sub_1DC510B4C();

            OUTLINED_FUNCTION_43_4();
            sub_1DC513A2C();
            sub_1DC513F8C();
            OUTLINED_FUNCTION_119_0();
            sub_1DC51437C();
            v245 = OUTLINED_FUNCTION_21_0();
            (v244)(v245);
            v246 = [v171 reference];
            if (v246)
            {
              v247 = v246;
              v248 = OUTLINED_FUNCTION_126();
              v169 = v557;
              v249 = v514;
              if (v248)
              {
                OUTLINED_FUNCTION_140_1();
                v87 = v161;
                if (v163)
                {
                  v161 = v173;
                  if (qword_1ECC81EE0 != -1)
                  {
                    OUTLINED_FUNCTION_0_6();
                    swift_once();
                  }

                  v249 = off_1ECC8F578;
                  sub_1DC517BAC();
                  OUTLINED_FUNCTION_77_0();
                  sub_1DC516EFC(v250);

                  v163 = 0;
LABEL_145:
                  v173 = v550;
                  OUTLINED_FUNCTION_83(&v537);
                  OUTLINED_FUNCTION_18_3();
                  __swift_storeEnumTagSinglePayload(v332, v333, v334, v335);

                  v336 = OUTLINED_FUNCTION_44();
                  OUTLINED_FUNCTION_49_0(v336, v337);
                  if (!v223)
                  {
                    OUTLINED_FUNCTION_22_2();
                    v338 = OUTLINED_FUNCTION_34_4();
                    v339(v338);
                    v340 = OUTLINED_FUNCTION_11_7();
                    v341(v340);
                    sub_1DC513F8C();
                    OUTLINED_FUNCTION_35_6();
                    sub_1DC51439C();
                    v342 = OUTLINED_FUNCTION_21_0();
                    v249(v342);
                    v343 = OUTLINED_FUNCTION_23_6();
                    v344(v343, v169);
LABEL_148:
                    v172 = v176;
                    v345 = OUTLINED_FUNCTION_40_6();
                    v346 = &v550;
                    goto LABEL_170;
                  }

LABEL_147:
                  sub_1DC28EB30(v249, &qword_1ECC7C2A8, &qword_1DC5230A0);
                  goto LABEL_148;
                }

                OUTLINED_FUNCTION_22_2();
                v330 = OUTLINED_FUNCTION_112();
                v331(v330);
              }

              else
              {
                v87 = v161;
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v249 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_92();
                sub_1DC516EFC(v315);
              }

              v161 = v173;
              goto LABEL_145;
            }

            v310 = v557;
            if (qword_1ECC81EE0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v249 = off_1ECC8F578;
            sub_1DC517B8C();
            OUTLINED_FUNCTION_78_1();
            sub_1DC516EFC(v311);
            v312 = OUTLINED_FUNCTION_31_8(&v537);
            __swift_storeEnumTagSinglePayload(v312, v313, v314, v310);
            v87 = v161;
            v161 = v173;
            v173 = v550;
            goto LABEL_147;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_56_7();
          v284 = swift_dynamicCastObjCClass();
          if (v284)
          {
            v171 = v284;
            OUTLINED_FUNCTION_133();
            OUTLINED_FUNCTION_141(v285, v286);
            OUTLINED_FUNCTION_88();
            sub_1DC51402C();
            v287 = [v171 systemDialogActId];
            OUTLINED_FUNCTION_106();
            sub_1DC510B4C();

            OUTLINED_FUNCTION_43_4();
            sub_1DC513A2C();
            sub_1DC513F3C();
            OUTLINED_FUNCTION_119_0();
            sub_1DC51427C();
            v288 = OUTLINED_FUNCTION_21_0();
            (v287)(v288);
            v289 = [v171 reference];
            if (!v289)
            {
              v347 = v557;
              v87 = v161;
              if (qword_1ECC81EE0 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v292 = off_1ECC8F578;
              sub_1DC517B8C();
              OUTLINED_FUNCTION_78_1();
              sub_1DC516EFC(v348);
              v349 = OUTLINED_FUNCTION_31_8(v530);
              __swift_storeEnumTagSinglePayload(v349, v350, v351, v347);
              v161 = v173;
              v173 = v550;
              goto LABEL_168;
            }

            v290 = v289;
            v291 = OUTLINED_FUNCTION_126();
            v169 = v557;
            v292 = v507;
            if (v291)
            {
              OUTLINED_FUNCTION_140_1();
              v87 = v161;
              if (v163)
              {
                v161 = v173;
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v292 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_77_0();
                sub_1DC516EFC(v293);

                v163 = 0;
LABEL_166:
                v173 = v550;
                OUTLINED_FUNCTION_83(v530);
                OUTLINED_FUNCTION_18_3();
                __swift_storeEnumTagSinglePayload(v365, v366, v367, v368);

                v369 = OUTLINED_FUNCTION_44();
                OUTLINED_FUNCTION_49_0(v369, v370);
                if (!v223)
                {
                  OUTLINED_FUNCTION_22_2();
                  v371 = OUTLINED_FUNCTION_34_4();
                  v372(v371);
                  v373 = OUTLINED_FUNCTION_11_7();
                  v374(v373);
                  sub_1DC513F3C();
                  OUTLINED_FUNCTION_35_6();
                  sub_1DC51429C();
                  v375 = OUTLINED_FUNCTION_21_0();
                  v292(v375);
                  v376 = OUTLINED_FUNCTION_23_6();
                  v377(v376, v169);
                  goto LABEL_169;
                }

LABEL_168:
                sub_1DC28EB30(v292, &qword_1ECC7C2A8, &qword_1DC5230A0);
LABEL_169:
                v172 = v176;
                v345 = OUTLINED_FUNCTION_40_6();
                v346 = &v533;
LABEL_170:
                (v169)(v345, *(v346 - 32), v87);
                OUTLINED_FUNCTION_61();
                __swift_storeEnumTagSinglePayload(v378, v379, v380, v87);
                swift_unknownObjectRelease();
                goto LABEL_96;
              }

              OUTLINED_FUNCTION_22_2();
              v363 = OUTLINED_FUNCTION_112();
              v364(v363);
            }

            else
            {
              v87 = v161;
              if (qword_1ECC81EE0 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v292 = off_1ECC8F578;
              sub_1DC517BAC();
              OUTLINED_FUNCTION_92();
              sub_1DC516EFC(v352);
            }

            v161 = v173;
            goto LABEL_166;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_56_7();
          v316 = swift_dynamicCastObjCClass();
          if (!v316)
          {
            objc_opt_self();
            OUTLINED_FUNCTION_56_7();
            v353 = swift_dynamicCastObjCClass();
            if (!v353)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_56_7();
              v386 = swift_dynamicCastObjCClass();
              if (v386)
              {
                v388 = v386;
                OUTLINED_FUNCTION_141(v386, v387);
                OUTLINED_FUNCTION_106();
                sub_1DC51402C();
                if (([v388 asrHypothesisIndex] & 0x80000000) != 0)
                {
                  goto LABEL_236;
                }

                OUTLINED_FUNCTION_150();
                v389 = sub_1DC51401C();
                sub_1DC51423C();
                v390 = OUTLINED_FUNCTION_57_4();
                v389(v390);
                sub_1DC301F7C(v388);
                if (v391)
                {
                  OUTLINED_FUNCTION_150();
                  v558 = sub_1DC51401C();
                  v501[0] = sub_1DC51459C();
                  OUTLINED_FUNCTION_85_0();
                  sub_1DC51654C();
                  (v501[0])(&v562, 0);
                  v392 = OUTLINED_FUNCTION_57_4();
                  v558(v392);
                }

                v393 = [v388 externalParserId];
                v171 = sub_1DC51772C();

                OUTLINED_FUNCTION_150();
                v172 = sub_1DC51401C();
                sub_1DC51456C();
                v394 = OUTLINED_FUNCTION_57_4();
                (v172)(v394);
                OUTLINED_FUNCTION_167();
                v395 = v169;
                v169 = *v561;
                v161 = v551;
                (*v561)(v551, v395, v87);
                OUTLINED_FUNCTION_61();
                __swift_storeEnumTagSinglePayload(v396, v397, v398, v87);
                v173 = v550;
                goto LABEL_96;
              }

              objc_opt_self();
              OUTLINED_FUNCTION_56_7();
              v419 = swift_dynamicCastObjCClass();
              if (!v419)
              {
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v172 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_78_1();
                sub_1DC516EFC(v450);
                swift_unknownObjectRelease();
                __swift_storeEnumTagSinglePayload(v161, 1, 1, v87);
                goto LABEL_100;
              }

              v171 = v419;
              OUTLINED_FUNCTION_141(v419, v420);
              OUTLINED_FUNCTION_88();
              sub_1DC51402C();
              OUTLINED_FUNCTION_20_3();
              sub_1DC5140AC();
              sub_1DC513F7C();
              v421 = [v171 task];
              if (v421)
              {
                v422 = v421;
                v423 = OUTLINED_FUNCTION_126();
                v169 = v557;
                v424 = v501[2];
                if (v423)
                {
                  OUTLINED_FUNCTION_140_1();
                  if (v163)
                  {
                    if (qword_1ECC81EE0 != -1)
                    {
                      OUTLINED_FUNCTION_0_6();
                      swift_once();
                    }

                    v172 = off_1ECC8F578;
                    sub_1DC517BAC();
                    OUTLINED_FUNCTION_77_0();
                    sub_1DC516EFC(v425);

                    v426 = OUTLINED_FUNCTION_31_8(v516);
                    __swift_storeEnumTagSinglePayload(v426, v427, v428, v169);

                    v163 = 0;
                    goto LABEL_215;
                  }

                  OUTLINED_FUNCTION_22_2();
                  v456 = v424;
                  v172 = v502;
                  v457(v502, v456, v169);
                }

                else
                {
                  if (qword_1ECC81EE0 != -1)
                  {
                    OUTLINED_FUNCTION_0_6();
                    swift_once();
                  }

                  sub_1DC517BAC();
                  OUTLINED_FUNCTION_92();
                  sub_1DC516EFC(v455);

                  v172 = v502;
                  OUTLINED_FUNCTION_44();
                }

                OUTLINED_FUNCTION_18_3();
                __swift_storeEnumTagSinglePayload(v458, v459, v460, v461);

                goto LABEL_215;
              }

              v169 = v557;
              if (qword_1ECC81EE0 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v172 = off_1ECC8F578;
              sub_1DC517B8C();
              OUTLINED_FUNCTION_78_1();
              sub_1DC516EFC(v451);
              v452 = OUTLINED_FUNCTION_31_8(v516);
              __swift_storeEnumTagSinglePayload(v452, v453, v454, v169);
LABEL_215:
              v462 = v503;
              v463 = OUTLINED_FUNCTION_44();
              OUTLINED_FUNCTION_49_0(v463, v464);
              if (v223)
              {
                swift_unknownObjectRelease();
                v465 = v172;
                v172 = v176;
                sub_1DC28EB30(v465, &qword_1ECC7C2A8, &qword_1DC5230A0);
              }

              else
              {
                OUTLINED_FUNCTION_22_2();
                v466 = OUTLINED_FUNCTION_34_4();
                v467(v466);
                v468 = OUTLINED_FUNCTION_11_7();
                v469(v468);
                sub_1DC513F6C();
                OUTLINED_FUNCTION_35_6();
                sub_1DC51409C();
                v462 = v503;
                v470 = OUTLINED_FUNCTION_21_0();
                (v172)(v470);
                OUTLINED_FUNCTION_167();
                v471 = OUTLINED_FUNCTION_23_6();
                v472(v471, v169);
              }

              v263 = OUTLINED_FUNCTION_40_6();
              v264 = v462;
LABEL_95:
              (v169)(v263, v264, v87);
              OUTLINED_FUNCTION_61();
              __swift_storeEnumTagSinglePayload(v265, v266, v267, v87);
LABEL_96:
              v176 = v555;
              goto LABEL_97;
            }

            OUTLINED_FUNCTION_165_0(v353, v354);
            OUTLINED_FUNCTION_88();
            sub_1DC51402C();
            OUTLINED_FUNCTION_20_3();
            sub_1DC51434C();
            sub_1DC513F5C();
            v355 = [v171 taskId];
            if (v355)
            {
              v172 = v355;
              v356 = v504;
              sub_1DC510B4C();

              OUTLINED_FUNCTION_15_2();
              OUTLINED_FUNCTION_93();
              v357();
              OUTLINED_FUNCTION_133();
              OUTLINED_FUNCTION_43_4();
              sub_1DC513A2C();
              sub_1DC513F4C();
              OUTLINED_FUNCTION_53_5();
              sub_1DC51431C();
              v358 = OUTLINED_FUNCTION_21_0();
              (v172)(v358);
              OUTLINED_FUNCTION_37();
              v359(v356, v169);
            }

            v360 = [v171 reference];
            v169 = v557;
            if (v360)
            {
              v361 = v360;
              v157 = v176;
              if (OUTLINED_FUNCTION_126())
              {
                sub_1DC514EDC();
                v176 = v555;
                if (v163)
                {
                  if (qword_1ECC81EE0 != -1)
                  {
                    OUTLINED_FUNCTION_0_6();
                    swift_once();
                  }

                  v172 = off_1ECC8F578;
                  sub_1DC517BAC();
                  OUTLINED_FUNCTION_77_0();
                  sub_1DC516EFC(v362);

                  v163 = 0;
                }

                else
                {

                  OUTLINED_FUNCTION_22_2();
                  v429(v505, v157, v169);
                }
              }

              else
              {
                v176 = v555;
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v172 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_92();
                sub_1DC516EFC(v418);
              }

              OUTLINED_FUNCTION_83(v524);
              OUTLINED_FUNCTION_18_3();
              __swift_storeEnumTagSinglePayload(v430, v431, v432, v433);

              v434 = OUTLINED_FUNCTION_44();
              OUTLINED_FUNCTION_49_0(v434, v435);
              if (!v223)
              {
                OUTLINED_FUNCTION_22_2();
                v438 = OUTLINED_FUNCTION_34_4();
                v439(v438);
                v440 = OUTLINED_FUNCTION_11_7();
                v441(v440);
                sub_1DC513F4C();
                OUTLINED_FUNCTION_35_6();
                sub_1DC51433C();
                v442 = OUTLINED_FUNCTION_21_0();
                (v172)(v442);
                OUTLINED_FUNCTION_138();
                v443 = OUTLINED_FUNCTION_23_6();
                v444(v443, v169);
LABEL_203:
                v231 = OUTLINED_FUNCTION_40_6();
                v232 = v506;
                goto LABEL_74;
              }
            }

            else
            {
              v157 = v176;
              if (qword_1ECC81EE0 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v172 = off_1ECC8F578;
              sub_1DC517B8C();
              OUTLINED_FUNCTION_78_1();
              sub_1DC516EFC(v414);
              v415 = OUTLINED_FUNCTION_31_8(v524);
              __swift_storeEnumTagSinglePayload(v415, v416, v417, v169);
              v176 = v555;
            }

            v436 = v558;
            swift_unknownObjectRelease();
            v437 = v172;
            v172 = v436;
            sub_1DC28EB30(v437, &qword_1ECC7C2A8, &qword_1DC5230A0);
            goto LABEL_203;
          }

          v171 = v316;
          v558 = v177;
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_88();
          sub_1DC51402C();
          OUTLINED_FUNCTION_20_3();
          sub_1DC5144BC();
          sub_1DC513FAC();
          v317 = [v171 taskId];
          v169 = v557;
          if (v317)
          {
            v172 = v317;
            OUTLINED_FUNCTION_106();
            sub_1DC510B4C();

            v318 = OUTLINED_FUNCTION_15_2();
            v319 = v157;
            v320 = v545;
            v321(v318, v169, v545);
            OUTLINED_FUNCTION_133();
            OUTLINED_FUNCTION_43_4();
            sub_1DC513A2C();
            sub_1DC513F9C();
            OUTLINED_FUNCTION_53_5();
            sub_1DC51448C();
            v322 = OUTLINED_FUNCTION_21_0();
            (v172)(v322);
            OUTLINED_FUNCTION_37();
            v323 = v169;
            v169 = v557;
            v324 = v320;
            v157 = v319;
            v176 = v555;
            v325(v323, v324);
          }

          v326 = [v171 reference];
          if (v326)
          {
            v327 = v326;
            v328 = OUTLINED_FUNCTION_126();
            if (v328)
            {
              v177 = v328;
              OUTLINED_FUNCTION_20_3();
              sub_1DC514EDC();
              if (v163)
              {
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v172 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_77_0();
                sub_1DC516EFC(v329);

                v163 = 0;
              }

              else
              {

                OUTLINED_FUNCTION_22_2();
                v399 = OUTLINED_FUNCTION_112();
                v400(v399);
              }
            }

            else
            {
              if (qword_1ECC81EE0 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v172 = off_1ECC8F578;
              sub_1DC517BAC();
              OUTLINED_FUNCTION_92();
              sub_1DC516EFC(v385);
            }

            OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_83(v526);
            OUTLINED_FUNCTION_18_3();
            __swift_storeEnumTagSinglePayload(v401, v402, v403, v404);

            v405 = OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_49_0(v405, v406);
            if (!v223)
            {
              OUTLINED_FUNCTION_22_2();
              v407 = OUTLINED_FUNCTION_34_4();
              v408(v407);
              v409 = OUTLINED_FUNCTION_11_7();
              v410(v409);
              OUTLINED_FUNCTION_127();
              sub_1DC513F9C();
              OUTLINED_FUNCTION_35_6();
              sub_1DC5144AC();
              OUTLINED_FUNCTION_127();
              v411 = OUTLINED_FUNCTION_21_0();
              (v172)(v411);
              OUTLINED_FUNCTION_138();
              v412 = OUTLINED_FUNCTION_23_6();
              v413(v412, v169);
              goto LABEL_127;
            }
          }

          else
          {
            if (qword_1ECC81EE0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v172 = off_1ECC8F578;
            sub_1DC517B8C();
            OUTLINED_FUNCTION_78_1();
            sub_1DC516EFC(v381);
            v382 = OUTLINED_FUNCTION_31_8(v526);
            __swift_storeEnumTagSinglePayload(v382, v383, v384, v169);
            OUTLINED_FUNCTION_127();
          }

          v171 = v558;
          swift_unknownObjectRelease();
          v300 = v172;
          v172 = v171;
        }

        sub_1DC28EB30(v300, &qword_1ECC7C2A8, &qword_1DC5230A0);
        goto LABEL_127;
      }

      OUTLINED_FUNCTION_165_0(v178, v179);
      sub_1DC51402C();
      OUTLINED_FUNCTION_20_3();
      sub_1DC513DBC();
      sub_1DC513FCC();
      v180 = [v171 offerId];
      if (v180)
      {
        v172 = v180;
        v157 = v537;
        sub_1DC510B4C();

        OUTLINED_FUNCTION_15_2();
        OUTLINED_FUNCTION_93();
        v181();
        OUTLINED_FUNCTION_133();
        OUTLINED_FUNCTION_43_4();
        sub_1DC513A2C();
        sub_1DC513FBC();
        OUTLINED_FUNCTION_53_5();
        sub_1DC513D8C();
        v182 = OUTLINED_FUNCTION_21_0();
        (v172)(v182);
        OUTLINED_FUNCTION_37();
        v183(v157, v169);
      }

      v184 = [v171 reference];
      v169 = v548;
      if (!v184)
      {
        if (qword_1ECC81EE0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v172 = off_1ECC8F578;
        sub_1DC517B8C();
        OUTLINED_FUNCTION_78_1();
        sub_1DC516EFC(v200);
        v201 = OUTLINED_FUNCTION_41_4();
        __swift_storeEnumTagSinglePayload(v201, v202, v203, v557);
        v157 = v176;
        v176 = v555;
        goto LABEL_72;
      }

      v185 = v184;
      if (!OUTLINED_FUNCTION_126())
      {
        break;
      }

      OUTLINED_FUNCTION_20_3();
      sub_1DC514EDC();
      v176 = v555;
      if (v163)
      {
        if (qword_1ECC81EE0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v172 = off_1ECC8F578;
        sub_1DC517BAC();
        OUTLINED_FUNCTION_77_0();
        sub_1DC516EFC(v186);

        v163 = 0;
LABEL_58:
        v205 = 1;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_22_2();
      v219 = OUTLINED_FUNCTION_115_0();
      v187 = v220(v219);
      v205 = 0;
LABEL_69:
      OUTLINED_FUNCTION_116_0(v187, v205);
      v221 = OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_39(v221, v222, v157);
      if (v223)
      {
        v157 = v556;
LABEL_72:
        OUTLINED_FUNCTION_138();
        sub_1DC28EB30(v169, &qword_1ECC7C2A8, &qword_1DC5230A0);
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_22_2();
      v224 = v531;
      v225(v531, v169, v157);
      OUTLINED_FUNCTION_20_7();
      v171 = *(v226 - 256);
      v227(v171, v224, v157);
      v172 = sub_1DC513FBC();
      sub_1DC513DAC();
      v228 = OUTLINED_FUNCTION_21_0();
      (v172)(v228);
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_37();
      v229 = v224;
      v161 = v551;
      v230(v229, v157);
      v157 = v556;
LABEL_73:
      v231 = OUTLINED_FUNCTION_40_6();
      v232 = v559;
LABEL_74:
      (v169)(v231, v232, v87);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v233, v234, v235, v87);
LABEL_97:
      OUTLINED_FUNCTION_39(v161, 1, v87);
      if (!v223)
      {
        v558 = v163;
        v268 = v552;
        v269 = OUTLINED_FUNCTION_85_0();
        v169(v269);
        OUTLINED_FUNCTION_37();
        v270(v553, v268, v87);
        v271 = sub_1DC513BEC();
        v273 = v272;
        v171 = *v272;
        v274 = swift_isUniquelyReferenced_nonNull_native();
        *v273 = v171;
        if ((v274 & 1) == 0)
        {
          v445 = OUTLINED_FUNCTION_136();
          v171 = sub_1DC301A54(v445, v446, v447, v448);
          *v273 = v171;
        }

        v276 = v171[2];
        v275 = v171[3];
        if (v276 >= v275 >> 1)
        {
          v449 = OUTLINED_FUNCTION_26(v275);
          v171 = sub_1DC301A54(v449, v276 + 1, 1, v171);
          *v273 = v171;
        }

        v161 = v551;
        v171[2] = v276 + 1;
        v172 = v541;
        OUTLINED_FUNCTION_24();
        (v169)(v171 + v277 + *(v172 + 9) * v276, v553, v87);
        v278 = OUTLINED_FUNCTION_21_0();
        v271(v278);
        swift_unknownObjectRelease();
        (*(v172 + 1))(v552, v87);
        v157 = v556;
        v163 = v558;
        goto LABEL_106;
      }

      swift_unknownObjectRelease();
LABEL_100:
      sub_1DC28EB30(v161, &qword_1ECC7C2B0, &unk_1DC5230A8);
LABEL_106:
      v175 = v560 + 1;
      if (v176 == (v560 + 1))
      {
        goto LABEL_220;
      }
    }

    v176 = v555;
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v172 = off_1ECC8F578;
    sub_1DC517BAC();
    OUTLINED_FUNCTION_92();
    sub_1DC516EFC(v204);

    goto LABEL_58;
  }

LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
}