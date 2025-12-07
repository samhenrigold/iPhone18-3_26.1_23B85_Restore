uint64_t TraitCompletionProcessor.__deallocating_deinit()
{
  TraitCompletionProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C7475F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C7475FE4;

  return sub_1C74754F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7475FE4()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for TraitCompletionProcessor(uint64_t a1)
{
  result = qword_1EDD0DBA0;
  if (!qword_1EDD0DBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7476120(uint64_t a1)
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

uint64_t sub_1C74761F4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1C7476248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_1C74762C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a3;
  v9 = a3[1];
  if ([objc_opt_self() useQueryAnnotationPromptBindingPersonAndPetNames])
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (os_log_type_enabled(v11, v12))
    {
      v36 = a4;
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C6F5C000, v11, v12, "Construct prompt binding recipe using query matching", v13, 2u);
      v14 = v13;
      a4 = v36;
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }

    v37 = sub_1C7476630();
    v38 = v10;
    v16 = v15;
    v39 = v9;
    v17 = sub_1C7476780(a1, a2, &v38, a4);
    v18 = a4;
    v19 = v17;
    v21 = v20;
    v38 = v10;
    v39 = v9;
    v22 = v16;
    v23 = sub_1C7476B50(a1, a2, &v38, v18);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v24 = sub_1C754FEEC();
    v25 = sub_1C75511BC();

    if (os_log_type_enabled(v24, v25))
    {
      buf = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *buf = 136642819;
      v38 = v37;
      v39 = v16;
      v40 = v19;
      v41 = v21;
      v42 = v23;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v33 = v25;
      v31 = PromptBindings.description.getter();
      log = v24;
      v27 = v26;

      v28 = sub_1C6F765A4(v31, v27, &v43);

      *(buf + 4) = v28;
      _os_log_impl(&dword_1C6F5C000, log, v33, "Prompt binding recipe = %{sensitive}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1CCA5F8E0](v35, -1, -1);
      MEMORY[0x1CCA5F8E0](buf, -1, -1);
    }

    else
    {
    }

    result = v37;
  }

  else
  {
    result = sub_1C7476630();
    v22 = v30;
    v19 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
  }

  *a5 = result;
  a5[1] = v22;
  a5[2] = v19;
  a5[3] = v21;
  a5[4] = v23;
  return result;
}

uint64_t sub_1C74765B4(uint64_t *a1)
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
  sub_1C747716C(v6);
  return sub_1C755193C();
}

uint64_t sub_1C7476630()
{
  v0 = sub_1C754DF6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0x2D4D4D2D79797979, 0xEA00000000006464, v4);
  sub_1C754DF5C();
  v5 = sub_1C754DECC();
  (*(v1 + 8))(v3, v0);
  v6 = [v4 stringFromDate_];

  v7 = sub_1C755068C();
  return v7;
}

uint64_t sub_1C7476780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = static StoryGenerationUtilities.tokenize(_:)(a1, a2);
  sub_1C75504FC();
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v39 = v10;
    *v9 = 136642819;
    v11 = MEMORY[0x1CCA5D090](v6, MEMORY[0x1E69E6158]);
    v13 = sub_1C6F765A4(v11, v12, &v39);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "The query terms = %{sensitive}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  v14 = 0;
  v37 = MEMORY[0x1E69E7CD0];
  v38 = MEMORY[0x1E69E7CD0];
  v15 = *(v6 + 16);
  v16 = (v6 + 40);
  while (v15 != v14)
  {
    if (v14 >= *(v6 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = *(v16 - 1);
    v17 = *v16;
    sub_1C75504FC();
    v19 = objc_autoreleasePoolPush();
    sub_1C7476D68(v18, v17, a4);

    ++v14;
    objc_autoreleasePoolPop(v19);
    v16 += 2;
  }

  v20 = sub_1C75504FC();
  v21 = sub_1C71CD85C(v20);
  v22 = *(v37 + 16);
  v23 = *(v38 + 16);
  if (__OFADD__(v22, v23))
  {
    goto LABEL_28;
  }

  if (v5 >= v22 + v23)
  {
    v28 = sub_1C75504FC();
    v27 = sub_1C71CD85C(v28);
    goto LABEL_16;
  }

  v24 = __OFSUB__(v5, v22);
  v25 = v5 - v22;
  if (v24)
  {
    goto LABEL_29;
  }

  if (v23 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = *(v38 + 16);
  }

  if (v26 >= 1)
  {
    sub_1C75504FC();
    sub_1C7033E24(v26, v38);
    v27 = sub_1C739C320(&v39);
    v47 = v39;
    v48 = v40;
    sub_1C7030CDC(&v47, &qword_1EC21C278, &qword_1C758D958);
    v45 = v41;
    v46 = v42;
    sub_1C7030CDC(&v45, &qword_1EC21C278, &qword_1C758D958);
    v44 = v43;
    sub_1C7030CDC(&v44, &unk_1EC215BF0, &qword_1C755C2F0);
LABEL_16:

    return v27;
  }

  sub_1C7033F04(v5, v21);
  v31 = v30;
  v33 = v32;
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    swift_unknownObjectRelease();
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v34 + 16);

  if (__OFSUB__(v33 >> 1, v31))
  {
    goto LABEL_30;
  }

  if (v35 != (v33 >> 1) - v31)
  {
LABEL_31:
    swift_unknownObjectRelease();
LABEL_19:
    sub_1C739C274();

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v36 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v36)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C7476B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C754E2FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 8);
  if ([objc_opt_self() enableLocationPromptBinding])
  {
    v11 = objc_opt_self();
    v12 = [v11 allowedSearchIndexCategoriesForMemoriesLocationPromptBinding];
    sub_1C754E29C();

    v13 = sub_1C755065C();
    v14 = sub_1C754E28C();
    v15 = [v11 performLocationDisambiguationForFullQueryString:v13 allowedSearchIndexCategories:v14 maxNumberOfResults:v10 photoLibrary:a4];

    v16 = sub_1C7550B5C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v17 = sub_1C754FEEC();
    v18 = sub_1C75511BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "The location prompt binding is disabled", v19, 2u);
      MEMORY[0x1CCA5F8E0](v19, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

void sub_1C7476D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_1C75504FC();
  v9 = sub_1C7550B3C();

  v10 = [v7 personEntitiesByLookupIdentifierForPersonNames:v9 photoLibrary:a3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C280, &unk_1C758D960);
  v11 = sub_1C75504AC();

  v12 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v37 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v19 = &selRef_addingKeyAssetForObject_toAssets_options_;
  while (v17)
  {
    v20 = v12;
LABEL_9:
    v21 = *(*(v37 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));
    if ((v21 & 0xC000000000000001) != 0)
    {
      sub_1C75504FC();
      v22 = sub_1C75516BC();
      if (!v22)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v22 = *(v21 + 16);
      sub_1C75504FC();
      if (!v22)
      {
LABEL_14:
        v23 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    if (v22 < 1)
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v23 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size(v23);
      v23[2] = v22;
      v23[3] = (2 * ((v24 - 32) / 8)) | 1;
    }

    sub_1C75504FC();
    sub_1C70D2348(&v36, v23 + 4, v22, v21);
    v26 = v25;
    sub_1C6F61E88(v36);
    if (v26 != v22)
    {
      goto LABEL_36;
    }

    v19 = &selRef_addingKeyAssetForObject_toAssets_options_;
LABEL_18:
    v36 = v23;
    sub_1C74765B4(&v36);
    if (v3)
    {
      goto LABEL_38;
    }

    v27 = v36;
    if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
    {
      v28 = sub_1C75516BC();
    }

    else
    {
      v28 = *(v36 + 16);
    }

    v17 &= v17 - 1;
    if (v28)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1CCA5DDD0](0, v27);
      }

      else
      {
        if (!*(v27 + 16))
        {
          goto LABEL_37;
        }

        v29 = *(v27 + 32);
      }

      v30 = v29;

      if ([v30 v19[171]] == 1300 || objc_msgSend(v30, v19[171]) == 1330)
      {
        v31 = [v30 text];
        v32 = sub_1C755068C();
        v34 = v33;

        v35 = v32;
        v19 = &selRef_addingKeyAssetForObject_toAssets_options_;
        sub_1C70F082C(&v36, v35, v34);

        v12 = v20;
      }

      else
      {

        v12 = v20;
      }
    }

    else
    {

      v12 = v20;
    }
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v20);
    ++v12;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:

  __break(1u);
}

void sub_1C747716C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D59C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C7477300(v8, v9, a1, v5);
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
    sub_1C747724C(0, v3, 1, a1);
  }
}

char *sub_1C747724C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
    while (2)
    {
      result = *(v6 + 8 * v4);
      v9 = v8;
      v10 = v7;
      do
      {
        result = [result compare_];
        if (result != 1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v11 = *v10;
        result = v10[1];
        *v10 = result;
        v10[1] = v11;
        --v10;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 8;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7477300(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v96 = *result;
    if (!*result)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v83 = v8 + 16;
      v84 = *(v8 + 2);
      while (v84 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v85 = v8;
        v86 = &v8[16 * v84];
        v87 = *v86;
        v88 = &v83[2 * v84];
        v89 = *(v88 + 1);
        sub_1C74778B0((*a3 + 8 * *v86), (*a3 + 8 * *v88), (*a3 + 8 * v89), v96);
        if (v5)
        {
          break;
        }

        if (v89 < v87)
        {
          goto LABEL_118;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_119;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_120;
        }

        v84 = *v83 - 1;
        sub_1C7423CF4(v88 + 16, v90, v88);
        *v83 = v84;
        v8 = v85;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_1C7420830();
    goto LABEL_94;
  }

  v91 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_clsSceneClassifications;
  while (1)
  {
    v10 = v7++;
    if (v7 < v6)
    {
      v11 = (*a3 + 8 * v10);
      v12 = 8 * v10;
      v14 = *v11;
      v13 = (v11 + 2);
      v15 = [*(*a3 + 8 * v7) v9[17]];
      v16 = v10;
      v17 = v15;
      v93 = v16;
      v18 = v16 + 2;
      while (1)
      {
        v19 = v18;
        if (++v7 >= v6)
        {
          break;
        }

        v20 = (v17 == 1) ^ ([*v13 compare_] != 1);
        ++v13;
        v18 = v19 + 1;
        if ((v20 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v7 = v6;
LABEL_9:
      if (v17 == 1)
      {
        v10 = v93;
        if (v7 < v93)
        {
          goto LABEL_124;
        }

        if (v93 >= v7)
        {
          v9 = &selRef_clsSceneClassifications;
        }

        else
        {
          if (v6 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v6;
          }

          v22 = 8 * v21 - 8;
          v23 = v7;
          v24 = v93;
          v9 = &selRef_clsSceneClassifications;
          do
          {
            if (v24 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v26 = *(v25 + v12);
              *(v25 + v12) = *(v25 + v22);
              *(v25 + v22) = v26;
            }

            ++v24;
            v22 -= 8;
            v12 += 8;
          }

          while (v24 < v23);
        }
      }

      else
      {
        v9 = &selRef_clsSceneClassifications;
        v10 = v93;
      }
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_123;
      }

      if (v7 - v10 < v91)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v10)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = v81;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      sub_1C6FB17EC(v37 > 1, v38 + 1, 1, v8);
      v8 = v82;
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v38 + 32];
    *v41 = v10;
    *(v41 + 1) = v7;
    v96 = *result;
    if (!*result)
    {
      goto LABEL_132;
    }

    if (v38)
    {
      v95 = v7;
      while (1)
      {
        v42 = v39 - 1;
        v43 = &v40[16 * v39 - 16];
        v44 = &v8[16 * v39];
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_60:
          if (v48)
          {
            goto LABEL_109;
          }

          v60 = *v44;
          v59 = *(v44 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_112;
          }

          v64 = *(v43 + 1);
          v65 = v64 - *v43;
          if (__OFSUB__(v64, *v43))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v62, v65))
          {
            goto LABEL_117;
          }

          if (v62 + v65 >= v47)
          {
            if (v47 < v65)
            {
              v42 = v39 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v39 < 2)
        {
          goto LABEL_111;
        }

        v67 = *v44;
        v66 = *(v44 + 1);
        v55 = __OFSUB__(v66, v67);
        v62 = v66 - v67;
        v63 = v55;
LABEL_75:
        if (v63)
        {
          goto LABEL_114;
        }

        v69 = *v43;
        v68 = *(v43 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_116;
        }

        if (v70 < v62)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v42 - 1 >= v39)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v74 = &v40[16 * v42 - 16];
        v75 = *v74;
        v76 = v42;
        v77 = &v40[16 * v42];
        v78 = *(v77 + 1);
        sub_1C74778B0((*a3 + 8 * *v74), (*a3 + 8 * *v77), (*a3 + 8 * v78), v96);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v78 < v75)
        {
          goto LABEL_104;
        }

        v5 = v8;
        v79 = *(v8 + 2);
        if (v76 > v79)
        {
          goto LABEL_105;
        }

        *v74 = v75;
        *(v74 + 1) = v78;
        if (v76 >= v79)
        {
          goto LABEL_106;
        }

        v39 = v79 - 1;
        sub_1C7423CF4(v77 + 16, v79 - 1 - v76, v77);
        *(v5 + 2) = v79 - 1;
        v80 = v79 > 2;
        v8 = v5;
        v5 = 0;
        v9 = &selRef_clsSceneClassifications;
        v7 = v95;
        if (!v80)
        {
          goto LABEL_89;
        }
      }

      v49 = &v40[16 * v39];
      v50 = *(v49 - 8);
      v51 = *(v49 - 7);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_107;
      }

      v54 = *(v49 - 6);
      v53 = *(v49 - 5);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_108;
      }

      v56 = *(v44 + 1);
      v57 = v56 - *v44;
      if (__OFSUB__(v56, *v44))
      {
        goto LABEL_110;
      }

      v55 = __OFADD__(v47, v57);
      v58 = v47 + v57;
      if (v55)
      {
        goto LABEL_113;
      }

      if (v58 >= v52)
      {
        v72 = *v43;
        v71 = *(v43 + 1);
        v55 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v55)
        {
          goto LABEL_121;
        }

        if (v47 < v73)
        {
          v42 = v39 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v28 = v10 + v91;
  if (__OFADD__(v10, v91))
  {
    goto LABEL_125;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v10)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v7 == v28)
  {
    goto LABEL_39;
  }

  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v94 = v10;
  v96 = v28;
  v31 = v10 - v7;
LABEL_32:
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if ([v32 v9[17]] != 1)
    {
LABEL_37:
      ++v7;
      v30 += 8;
      --v31;
      if (v7 == v96)
      {
        v7 = v96;
        v10 = v94;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v32 = v34[1];
    *v34 = v32;
    v34[1] = v35;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1C74778B0(char *a1, id *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
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

      if ([*v6 compare_] != 1)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2, a3 - a2, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = [*(v10 - 1) compare_];
    v17 = v5 + 1;
    if (v16 == 1)
    {
      v13 = v17 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v17)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 8;
  }

LABEL_28:
  v18 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v18])
  {
    memmove(v6, v4, 8 * v18);
  }

  return 1;
}

uint64_t static LLMStoryRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C708C6E4(*a1, *a2);
  if (v4)
  {
    v5 = *(a1 + 24);
    v11[0] = *(a1 + 8);
    v11[1] = v5;
    v12[0] = *(a1 + 40);
    *(v12 + 9) = *(a1 + 49);
    v6 = *(a2 + 24);
    v9[0] = *(a2 + 8);
    v9[1] = v6;
    v10[0] = *(a2 + 40);
    *(v10 + 9) = *(a2 + 49);
    v7 = static LLMSamplingParameters.== infix(_:_:)(v11, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

double LLMStoryRequest.init(promptBindings:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LLMConfiguration(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LLMWrapperUtils();
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  LOBYTE(v14) = byte_1EC218F88;
  static LLMWrapperUtils.storytellerModelType(for:)(&v17);
  type metadata accessor for LLMConfigurationProvider();
  if (qword_1EDD0BCA8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  v9 = __swift_project_value_buffer(v8, qword_1EDD0BCB0);
  static LLMConfigurationProvider.configuration(for:logger:)(&v17, v7, v9);
  if (v2)
  {
  }

  else
  {
    v11 = &v7[*(v5 + 40)];
    v12 = v11[1];
    v14 = *v11;
    v15 = v12;
    *v16 = v11[2];
    *&v16[9] = *(v11 + 41);
    sub_1C706CB5C(v7);
    *a2 = a1;
    v13 = v15;
    *(a2 + 8) = v14;
    *(a2 + 24) = v13;
    *(a2 + 40) = *v16;
    result = *&v16[9];
    *(a2 + 49) = *&v16[9];
  }

  return result;
}

__n128 LLMStoryRequest.init(promptBindings:samplingParameters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  *(a3 + 40) = *(a2 + 32);
  result = *(a2 + 41);
  *(a3 + 49) = result;
  return result;
}

uint64_t sub_1C7477CA4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0BCB0);
  __swift_project_value_buffer(v0, qword_1EDD0BCB0);
  return sub_1C754FEFC();
}

unint64_t LLMStoryRequest.debugPrompt.getter()
{
  sub_1C755180C();

  v0 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v0);

  return 0xD000000000000011;
}

uint64_t LLMStoryRequest.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B1AE0);
  v0 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v0);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75AC5B0);
  sub_1C75519EC();
  return 0;
}

uint64_t sub_1C7477ED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694274706D6F7270 && a2 == 0xEE0073676E69646ELL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7597350 == a2)
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

uint64_t sub_1C7477FB0(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x694274706D6F7270;
  }
}

uint64_t sub_1C7478000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7477ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7478028(uint64_t a1)
{
  v2 = sub_1C7478558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7478064(uint64_t a1)
{
  v2 = sub_1C7478558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LLMStoryRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C288, &unk_1C758D970);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7478558();
  sub_1C75504FC();
  sub_1C755200C();
  *&v14[0] = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
  sub_1C703195C(&qword_1EDD06C70, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1C7551D2C();

  if (!v2)
  {
    v12 = *(v3 + 3);
    v14[0] = *(v3 + 1);
    v14[1] = v12;
    v15[0] = *(v3 + 5);
    *(v15 + 9) = *(v3 + 49);
    v16 = 1;
    sub_1C6FB5D28();
    sub_1C7551D2C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t LLMStoryRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C290, &qword_1C758D980);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7478558();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v5 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
  LOBYTE(v10[0]) = 0;
  sub_1C703195C(&qword_1EC216128, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1C7551C1C();
  v6 = v11;
  v15 = 1;
  sub_1C72BFBD0();
  sub_1C7551C1C();
  v7 = OUTLINED_FUNCTION_0_194();
  v8(v7);
  v19 = v16;
  v20 = v17;
  v21[0] = v18[0];
  *(v21 + 9) = *(v18 + 9);
  v10[0] = v6;
  *&v10[1] = v16;
  *&v10[3] = v17;
  *&v10[5] = v18[0];
  *(&v10[6] + 1) = *(v18 + 9);
  memcpy(v5, v10, 0x41uLL);
  sub_1C6FB52D4(v10, &v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = v6;
  v12 = v19;
  v13 = v20;
  *v14 = v21[0];
  *&v14[9] = *(v21 + 9);
  return sub_1C6FB5330(&v11);
}

unint64_t sub_1C7478558()
{
  result = qword_1EDD0BCD8;
  if (!qword_1EDD0BCD8)
  {
    result = swift_getWitnessTable(byte_1C758DB28, &type metadata for LLMStoryRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BCD8);
  }

  return result;
}

uint64_t sub_1C74785AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1C74785EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMStoryRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7478730()
{
  result = qword_1EC21C298;
  if (!qword_1EC21C298)
  {
    result = swift_getWitnessTable(aI_22, &type metadata for LLMStoryRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C298);
  }

  return result;
}

unint64_t sub_1C7478788()
{
  result = qword_1EDD0BCC8;
  if (!qword_1EDD0BCC8)
  {
    result = swift_getWitnessTable(byte_1C758DA70, &type metadata for LLMStoryRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BCC8);
  }

  return result;
}

unint64_t sub_1C74787E0()
{
  result = qword_1EDD0BCD0;
  if (!qword_1EDD0BCD0)
  {
    result = swift_getWitnessTable(byte_1C758DA98, &type metadata for LLMStoryRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BCD0);
  }

  return result;
}

void *sub_1C7478898(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
  v35 = a2 + 40;
LABEL_2:
  for (i = (v7 + 16 * v5); ; i += 2)
  {
    if (v6 == v5)
    {

      return a1;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_27;
    }

    if (*(a3 + 16))
    {
      v11 = *(i - 1);
      v10 = *i;
      sub_1C75504FC();
      v12 = sub_1C6F78124(v11, v10);
      if (v13)
      {
        v14 = *(*(a3 + 56) + 40 * v12 + 34);
        if (v14 != 18)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v15 = sub_1C6FC2CD8();
          if (__OFADD__(a1[2], (v16 & 1) == 0))
          {
            goto LABEL_28;
          }

          v17 = v15;
          v34 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B430, &qword_1C7587D48);
          v18 = a1;
          if (sub_1C7551A2C())
          {
            v19 = sub_1C6FC2CD8();
            v7 = v35;
            if ((v34 & 1) != (v20 & 1))
            {
              goto LABEL_31;
            }

            v17 = v19;
            v18 = a1;
            if (v34)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v7 = v35;
            if (v34)
            {
LABEL_19:
              v24 = v18[7];
              v25 = *(v24 + 8 * v17);
              v22 = __OFADD__(v25, 1);
              v26 = v25 + 1;
              if (v22)
              {
                goto LABEL_29;
              }

              *(v24 + 8 * v17) = v26;
              v27 = *a4;
              sub_1C75504FC();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *a4 = v27;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C6FB1814();
                v27 = v31;
                *a4 = v31;
              }

              v29 = *(v27 + 16);
              if (v29 >= *(v27 + 24) >> 1)
              {
                sub_1C6FB1814();
                v27 = v32;
                *a4 = v32;
              }

              *(v27 + 16) = v29 + 1;
              v30 = v27 + 16 * v29;
              *(v30 + 32) = v11;
              *(v30 + 40) = v10;

              v5 = v9;
              goto LABEL_2;
            }
          }

          v18[(v17 >> 6) + 8] |= 1 << v17;
          *(v18[6] + v17) = v14;
          *(v18[7] + 8 * v17) = 0;
          v21 = v18[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_30;
          }

          v18[2] = v23;
          goto LABEL_19;
        }
      }
    }

    ++v5;
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
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7478B28(uint64_t result)
{
  v1 = 0;
  v19 = result;
  v20 = *(result + 16);
  v2 = result + 40;
  v17 = result + 40;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v2 + 16 * v1); ; i += 2)
  {
    if (v20 == v1)
    {

      return;
    }

    if (v1 >= *(v19 + 16))
    {
      break;
    }

    v4 = *(i - 1);
    v5 = *i;
    MEMORY[0x1EEE9AC00](result);
    sub_1C75504FC();
    sub_1C75504FC();
    v6 = sub_1C70735F4();

    if (v6 || (MEMORY[0x1EEE9AC00](v7), sub_1C75504FC(), v8 = sub_1C70735F4(), , v8))
    {
      v9 = v18;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v18 + 16) + 1, 1, v10, v11, v12, v13);
        v9 = v18;
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C6F7ED9C(v14 > 1, v15 + 1, 1, v10, v11, v12, v13);
        v9 = v18;
      }

      ++v1;
      *(v9 + 16) = v15 + 1;
      v18 = v9;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v4;
      *(v16 + 40) = v5;
      v2 = v17;
      goto LABEL_2;
    }

    ++v1;
  }

  __break(1u);
}

uint64_t AssetRichDescriptionsGenerator.init(storyPhotoLibraryContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[2];
  sub_1C754FEFC();
  result = type metadata accessor for AssetRichDescriptionsGenerator(0);
  v7 = a2 + *(result + 20);
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  return result;
}

uint64_t type metadata accessor for AssetRichDescriptionsGenerator(uint64_t a1)
{
  result = qword_1EDD07EC0;
  if (!qword_1EDD07EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetRichDescriptionsGenerator.assetRichDescriptionByAssetUUID(for:chapter:assetRichDescriptionOptions:eventRecorder:progressReporter:diagnosticContext:)(uint64_t a1, const void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 232) = a4;
  *(v7 + 240) = a5;
  *(v7 + 224) = a1;
  v10 = sub_1C754F2FC();
  *(v7 + 264) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v7 + 272) = v11;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v12 = sub_1C754F38C();
  *(v7 + 296) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v7 + 304) = v13;
  *(v7 + 312) = swift_task_alloc();
  memcpy((v7 + 16), a2, 0x68uLL);
  *(v7 + 374) = *a3;
  *(v7 + 375) = a3[1];
  *(v7 + 376) = a3[2];
  *(v7 + 377) = a3[3];
  *(v7 + 378) = a3[4];
  *(v7 + 379) = a3[5];
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7478FA4()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 232), *(*(v0 + 232) + 24));
  OUTLINED_FUNCTION_71_2("AssetRichDescriptionsGenerator.assetRichDescriptionByAssetUUID", 62);
  sub_1C754F2CC();
  v1 = *(v0 + 256);
  type metadata accessor for AssetCurationUtilities();
  v2 = OUTLINED_FUNCTION_19_1();
  v3 = *(v1 + *(type metadata accessor for AssetRichDescriptionsGenerator(v2) + 20));
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_1C747916C;
  v5 = *(v0 + 224);

  return static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(for:photoLibrary:)(v5, v3);
}

uint64_t sub_1C747916C()
{
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v4;
  *(v2 + 336) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7479278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v37 = *(v17 + 378);
  v38 = *(v17 + 379);
  v18 = *(v17 + 377);
  v19 = *(v17 + 376);
  v20 = *(v17 + 375);
  v21 = *(v17 + 374);
  v23 = *(v17 + 280);
  v22 = *(v17 + 288);
  v24 = *(v17 + 264);
  v25 = *(v17 + 272);
  sub_1C754F2BC();
  memcpy((v17 + 120), (v17 + 16), 0x68uLL);
  *(v17 + 368) = v21;
  *(v17 + 369) = v20;
  *(v17 + 370) = v19;
  *(v17 + 371) = v18;
  *(v17 + 372) = v37;
  *(v17 + 373) = v38;
  (*(v25 + 32))(v23, v22, v24);
  v26 = swift_task_alloc();
  *(v17 + 344) = v26;
  *v26 = v17;
  v26[1] = sub_1C74793B4;
  OUTLINED_FUNCTION_44();

  return AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(for:chapter:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:eventRecorder:progressReporter:diagnosticContext:)(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1C74793B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 352) = v4;
  *(v2 + 360) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C74794D0()
{
  v1 = v0[45];
  sub_1C754F2DC();
  result = v0[44];
  if (v1)
  {
    v3 = v0[34];
    v37 = v0[33];
    v4 = v0[29];
    v5 = v0[30];

    OUTLINED_FUNCTION_18_0(v4, v4[3]);
    sub_1C754F1AC();
    v6 = OUTLINED_FUNCTION_15_1();
    v7(v6);
    (*(v3 + 8))(v5, v37);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X1, X16 }
  }

  v34 = v0;
  v10 = 0;
  v36 = *(result + 16);
  v11 = MEMORY[0x1E69E7CC8];
  v12 = (result + 56);
  for (i = result; ; result = i)
  {
    if (v36 == v10)
    {

      sub_1C754F2EC();
      v29 = v34[38];
      v28 = v34[39];
      v30 = v34[37];
      __swift_project_boxed_opaque_existential_1(v34[29], *(v34[29] + 24));
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_42_17();
      sub_1C754F1AC();
      (*(v29 + 8))(v28, v30);

      OUTLINED_FUNCTION_94_1();

      __asm { BRAA            X2, X16 }
    }

    if (v10 >= *(result + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v38 = v10;
    v14 = *(v12 - 3);
    v13 = *(v12 - 2);
    v15 = *(v12 - 1);
    v16 = *v12;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    result = sub_1C6F78124(v14, v13);
    if (__OFADD__(v11[2], (v17 & 1) == 0))
    {
      goto LABEL_25;
    }

    v18 = result;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328, &unk_1C758DBC0);
    if (sub_1C7551A2C())
    {
      break;
    }

LABEL_12:
    if (v19)
    {

      v22 = (v11[7] + 16 * v18);
      *v22 = v15;
      v22[1] = v16;
    }

    else
    {
      v11[(v18 >> 6) + 8] |= 1 << v18;
      v23 = (v11[6] + 16 * v18);
      *v23 = v14;
      v23[1] = v13;
      v24 = (v11[7] + 16 * v18);
      *v24 = v15;
      v24[1] = v16;

      v25 = v11[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v11[2] = v27;
    }

    v12 += 4;
    v10 = v38 + 1;
  }

  v20 = sub_1C6F78124(v14, v13);
  if ((v19 & 1) == (v21 & 1))
  {
    v18 = v20;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_94_1();

  return sub_1C7551E4C();
}

uint64_t sub_1C747987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_32_42();
  (*(v14 + 8))(v12, v13);
  v15 = OUTLINED_FUNCTION_117_0();
  v16(v15);

  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7479928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_32_42();
  (*(v14 + 8))(v12, v13);
  v15 = OUTLINED_FUNCTION_117_0();
  v16(v15);

  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(for:chapter:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:eventRecorder:progressReporter:diagnosticContext:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 296) = a8;
  *(v9 + 304) = v8;
  *(v9 + 280) = a6;
  *(v9 + 288) = a7;
  *(v9 + 264) = a3;
  *(v9 + 272) = a4;
  *(v9 + 256) = a1;
  v12 = sub_1C754F2FC();
  *(v9 + 312) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v9 + 320) = v13;
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  v14 = sub_1C754F38C();
  *(v9 + 344) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v9 + 352) = v15;
  *(v9 + 360) = swift_task_alloc();
  memcpy((v9 + 16), a2, 0x68uLL);
  *(v9 + 432) = *a5;
  *(v9 + 433) = a5[1];
  *(v9 + 434) = a5[2];
  *(v9 + 435) = a5[3];
  *(v9 + 436) = a5[4];
  *(v9 + 437) = a5[5];
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C7479B44()
{
  v1 = *(v0 + 280);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_71_2("AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults", 66);
  sub_1C754F2CC();
  v2 = *(*(v0 + 256) + 16);
  *(v0 + 368) = v2;
  if (!v2)
  {
    v22 = sub_1C754FEEC();
    v23 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C6F5C000, v22, v23, "No assetUUIDs!", v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v26 = *(v0 + 352);
    v25 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 320);
    v35 = *(v0 + 312);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);

    __swift_project_boxed_opaque_existential_1(v30, v1[3]);
    OUTLINED_FUNCTION_99_1();
    sub_1C754F1AC();
    (*(v26 + 8))(v25, v27);
    (*(v28 + 8))(v29, v35);

    OUTLINED_FUNCTION_129();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  v33 = *(v0 + 312);
  v34 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = v5 + *(type metadata accessor for AssetRichDescriptionsGenerator(0) + 20);
  v7 = *v6;
  *(v0 + 376) = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *(v0 + 384) = v9;
  sub_1C7047818();
  v10 = v7;

  v11 = sub_1C755146C();
  *(v0 + 392) = v11;
  sub_1C754F2BC();
  *(v0 + 224) = v11;
  *(v0 + 232) = v10;
  *(v0 + 240) = v8;
  *(v0 + 248) = v9;
  v12 = sub_1C75504FC();
  *(v0 + 400) = sub_1C71CD85C(v12);
  memcpy((v0 + 120), (v0 + 16), 0x68uLL);
  (*(v4 + 32))(v34, v3, v33);
  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *v13 = v0;
  v13[1] = sub_1C7479F1C;
  OUTLINED_FUNCTION_129();

  return AssetRichDescriptionsDataSource.generateAssetSummaryInfos(for:characterUUIDs:chapter:eventRecorder:progressReporter:diagnosticContext:)(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C7479F1C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_40();
  *v7 = v6;
  *(v4 + 416) = v1;

  if (!v1)
  {
    *(v4 + 424) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C747A048()
{
  OUTLINED_FUNCTION_115_0();
  AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(from:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:)();
  v2 = v1;

  sub_1C75504FC();
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v4))
  {
    v5 = *(v0 + 368);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = *(v2 + 16);

    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;

    _os_log_impl(&dword_1C6F5C000, v3, v4, "Generated %ld asset rich description results for %ld assets", v6, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v7 = *(v0 + 416);
  sub_1C754F2EC();
  v8 = *(v0 + 376);
  v9 = *(v0 + 280);

  if (v7)
  {

    OUTLINED_FUNCTION_18_0(v9, v9[3]);
    sub_1C754F1AC();
    v10 = OUTLINED_FUNCTION_15_1();
    v11(v10);

    OUTLINED_FUNCTION_6_0();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_18_0(v9, v9[3]);
    sub_1C754F1AC();
    v14 = OUTLINED_FUNCTION_15_1();
    v15(v14);

    v16 = *(v0 + 8);

    return v16(v2);
  }
}

uint64_t sub_1C747A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 376);
  v15 = *(v12 + 352);
  v14 = *(v12 + 360);
  v16 = *(v12 + 344);
  v17 = *(v12 + 320);
  v29 = *(v12 + 312);
  v19 = *(v12 + 280);
  v18 = *(v12 + 288);

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  (*(v15 + 8))(v14, v16);
  (*(v17 + 8))(v18, v29);

  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_1C747A3D8(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422BF4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC2181B8, &unk_1C7570F90, sub_1C747F6C0, sub_1C747EBCC);
  *a1 = v2;
  return result;
}

uint64_t sub_1C747A47C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422EF0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC218D08, &qword_1C7575F48, sub_1C7480454, sub_1C747F028);
  *a1 = v2;
  return result;
}

uint64_t sub_1C747A520(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422F08();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC218CF8, &qword_1C7575F38, sub_1C7480C84, sub_1C747F204);
  *a1 = v2;
  return result;
}

uint64_t sub_1C747A5C4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422F20();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C747EAB0(v6, &qword_1EC218D18, &qword_1C7575F58, sub_1C748116C, sub_1C747F27C);
  *a1 = v2;
  return result;
}

void AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(from:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:)()
{
  OUTLINED_FUNCTION_33();
  v48 = v0;
  v49 = v1;
  v3 = v2;
  v47 = v4;
  v50 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219088, &qword_1C75851F0);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE98, &qword_1C758DBD0);
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  v15 = OUTLINED_FUNCTION_76(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = sub_1C754E01C();
  v19 = OUTLINED_FUNCTION_76(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v20 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  LODWORD(v25) = *v3;
  v27 = v3[1];
  v28 = v3[2];
  v45 = v3[3];
  v46 = v25;
  LODWORD(v25) = v3[4];
  v43 = v3[5];
  v44 = v25;
  v59 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v29 = v59;
  sub_1C754E06C();
  v30 = sub_1C754E07C();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
  v31 = sub_1C754E0FC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v31);
  sub_1C754E0DC();
  v32 = sub_1C754E0EC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v32);
  sub_1C754E00C();
  sub_1C754E02C();
  v33 = sub_1C754E09C();
  (*(v22 + 8))(v26, v20);
  [v29 setLocale_];

  v34 = v47;
  v42 = AssetRichDescriptionsGenerator.sortCharacterUUIDs(by:)(v47, v35, v36, v37, v38, v39, v40, v41);
  v51[2] = v48;
  v51[3] = v34;
  v51[4] = v42;
  v51[5] = v49;
  v52 = v46;
  v53 = v27;
  v54 = v28;
  v55 = v45;
  v56 = v44;
  v57 = v43;
  v58 = &v59;
  sub_1C7044E38(sub_1C7483124, v51, v50);
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_25_0();
}

uint64_t AssetRichDescriptionsGenerator.sortCharacterUUIDs(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C739C490(a1, a2, a3, a4, a5, a6, a7, a8, v25, v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37);
  *&v32 = v8;
  sub_1C747A3D8(&v32);
  v13 = v32;
  v14 = *(v32 + 16);
  if (v14)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v14, 0, v9, v10, v11, v12);
    v15 = v36;
    v16 = v13 + 32;
    do
    {
      sub_1C712A774(v16, &v32, &qword_1EC2181B8, &unk_1C7570F90);
      v29 = v33;
      v30 = v34;
      v31 = v35;
      v17 = v32;
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v36 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C6F7ED9C(v22 > 1, v23 + 1, 1, v18, v19, v20, v21);
        v15 = v36;
      }

      *(v15 + 16) = v23 + 1;
      *(v15 + 16 * v23 + 32) = v17;
      v16 += 56;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

double sub_1C747AB40@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v29 = a5;
  v30 = WORD2(a5);
  v13 = type metadata accessor for AssetSummaryInfo(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1C747AD64(a1, a2, a3, a4, &v29, a6);
  if (v17)
  {
    v18 = a1[1];
    *a7 = *a1;
    a7[1] = v18;
    a7[2] = v16;
    a7[3] = v17;
    sub_1C75504FC();
  }

  else
  {
    sub_1C7485C70(a1, v15);
    v20 = sub_1C754FEEC();
    v21 = sub_1C755117C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = *v15;
      v25 = v15[1];
      sub_1C75504FC();
      sub_1C7485C18(v15, type metadata accessor for AssetSummaryInfo);
      v26 = sub_1C6F765A4(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "No asset rich description for %s!", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1CCA5F8E0](v23, -1, -1);
      MEMORY[0x1CCA5F8E0](v22, -1, -1);
    }

    else
    {

      sub_1C7485C18(v15, type metadata accessor for AssetSummaryInfo);
    }

    result = 0.0;
    *a7 = 0u;
    *(a7 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1C747AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v137 = a4;
  v138 = a6;
  v135 = a2;
  v136 = a3;
  v8 = type metadata accessor for AssetSummaryInfo(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v140 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v139 = &v129 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088, &unk_1C758DC20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v129 - v17;
  v19 = type metadata accessor for AssetDescriptionInfo(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  v23 = a5[1];
  v143 = a5[2];
  v144 = v22;
  v24 = a5[3];
  LODWORD(v20) = a5[4];
  v141 = v23;
  v142 = v20;
  v25 = a5[5];
  v26 = *(v9 + 32);
  v28 = v27;
  sub_1C712A774(a1 + v26, v18, &qword_1EC21B088, &unk_1C758DC20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v28) == 1)
  {
    sub_1C6FD7FC8(v18, &qword_1EC21B088, &unk_1C758DC20);
    v29 = sub_1C754FEEC();
    v30 = sub_1C755119C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C6F5C000, v29, v30, "assetDescriptionInfo was nil", v31, 2u);
      MEMORY[0x1CCA5F8E0](v31, -1, -1);
    }

    return 0;
  }

  v134 = v25;
  sub_1C7485CC8(v18, v21);
  v32 = *(a1 + 24);
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = *(a1 + 16);
  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
LABEL_16:
    sub_1C7485C70(a1, v11);
    v59 = sub_1C754FEEC();
    v60 = sub_1C755119C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v145[0] = v62;
      *v61 = 136315138;
      v63 = *v11;
      v64 = v11[1];
      sub_1C75504FC();
      sub_1C7485C18(v11, type metadata accessor for AssetSummaryInfo);
      v65 = sub_1C6F765A4(v63, v64, v145);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1C6F5C000, v59, v60, "No caption for %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1CCA5F8E0](v62, -1, -1);
      MEMORY[0x1CCA5F8E0](v61, -1, -1);
    }

    else
    {

      sub_1C7485C18(v11, type metadata accessor for AssetSummaryInfo);
    }

    sub_1C7485C18(v21, type metadata accessor for AssetDescriptionInfo);
    return 0;
  }

  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v35 = swift_allocObject();
  v131 = xmmword_1C755BAB0;
  *(v35 + 16) = xmmword_1C755BAB0;
  v133 = v28;
  v36 = &v21[*(v28 + 44)];
  v38 = *v36;
  v37 = *(v36 + 1);
  *(v35 + 56) = MEMORY[0x1E69E6158];
  v130 = sub_1C6F6D524();
  *(v35 + 64) = v130;
  *(v35 + 32) = v38;
  *(v35 + 40) = v37;
  sub_1C75504FC();
  v39 = sub_1C75506BC();
  v41 = v40;
  sub_1C6FB1814();
  v43 = v42;
  v44 = *(v42 + 16);
  if (v44 >= *(v42 + 24) >> 1)
  {
    sub_1C6FB1814();
    v43 = v121;
  }

  *(v43 + 16) = v44 + 1;
  v45 = v43 + 16 * v44;
  *(v45 + 32) = v39;
  *(v45 + 40) = v41;
  if (v24)
  {
    LOBYTE(v145[0]) = v144;
    v46 = v141;
    BYTE1(v145[0]) = v141;
    BYTE2(v145[0]) = v143;
    BYTE3(v145[0]) = 1;
    BYTE4(v145[0]) = v142;
    BYTE5(v145[0]) = v134;
    AssetRichDescriptionsGenerator.characterInfoAsSentence(using:characterSummaryByCharacterUUID:sortedCharacterUUIDs:userQueryCharacterUUIDs:options:)();
    v48 = v47;
    v50 = v49;
    if (!v49)
    {
      goto LABEL_24;
    }

    v51 = v33;
    v52 = swift_allocObject();
    *(v52 + 16) = v131;
    v53 = v130;
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = v53;
    *(v52 + 32) = v48;
    *(v52 + 40) = v50;
    sub_1C75504FC();
    v54 = sub_1C75506BC();
    v56 = v55;
    v57 = *(v43 + 16);
    if (v57 >= *(v43 + 24) >> 1)
    {
      sub_1C6FB1814();
      v43 = v123;
    }

    *(v43 + 16) = v57 + 1;
    v58 = v43 + 16 * v57;
    *(v58 + 32) = v54;
    *(v58 + 40) = v56;
    v33 = v51;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v46 = v141;
LABEL_24:
  v69 = v139;
  v68 = v140;
  if (v142)
  {
    v70 = static StoryGenerationUtilities.removeSpecialCharacters(from:)(v33, v32);
    v72 = v71;
    v73 = swift_allocObject();
    *(v73 + 16) = v131;
    v74 = v130;
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = v74;
    *(v73 + 32) = v70;
    *(v73 + 40) = v72;
    v75 = sub_1C75506BC();
    v77 = v76;
    if (v50)
    {

      v78 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v78 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (!v78)
      {
        v79 = *(v43 + 16);
        if (v79 >= *(v43 + 24) >> 1)
        {
          sub_1C6FB1814();
          v43 = v128;
        }

        *(v43 + 16) = v79 + 1;
        v80 = v43 + 16 * v79;
        *(v80 + 32) = 7301239;
        *(v80 + 40) = 0xE300000000000000;
      }
    }

    v81 = *(v43 + 16);
    if (v81 >= *(v43 + 24) >> 1)
    {
      sub_1C6FB1814();
      v43 = v122;
    }

    *(v43 + 16) = v81 + 1;
    v82 = v43 + 16 * v81;
    *(v82 + 32) = v75;
    *(v82 + 40) = v77;
  }

  else
  {
  }

  v83 = v133;
  if (!v143)
  {
    goto LABEL_49;
  }

  v84 = &v21[*(v133 + 28)];
  if ((v84[2] & 1) == 0)
  {
    v85 = *v84;
    if (v85 == 4)
    {
      v87 = *(v43 + 16);
      v86 = *(v43 + 24);
      v88 = v87 + 1;
      v89 = 0x6B726F77207461;
      goto LABEL_42;
    }

    if (v85 == 3)
    {
      v87 = *(v43 + 16);
      v86 = *(v43 + 24);
      v88 = v87 + 1;
      v89 = 0x656D6F68207461;
LABEL_42:
      if (v87 >= v86 >> 1)
      {
        sub_1C6FB1814();
        v43 = v127;
        v69 = v139;
        v68 = v140;
        v46 = v141;
      }

      *(v43 + 16) = v88;
      v90 = v43 + 16 * v87;
      *(v90 + 32) = v89;
      *(v90 + 40) = 0xE700000000000000;
      v83 = v133;
    }
  }

  v91 = &v21[*(v83 + 24)];
  v92 = *(v91 + 1);
  if (v92)
  {
    v93 = *v91;
    v94 = swift_allocObject();
    *(v94 + 16) = v131;
    v95 = v130;
    *(v94 + 56) = MEMORY[0x1E69E6158];
    *(v94 + 64) = v95;
    *(v94 + 32) = v93;
    *(v94 + 40) = v92;
    sub_1C75504FC();
    v96 = sub_1C75506BC();
    v98 = v97;
    v99 = *(v43 + 16);
    if (v99 >= *(v43 + 24) >> 1)
    {
      sub_1C6FB1814();
      v43 = v124;
    }

    *(v43 + 16) = v99 + 1;
    v100 = v43 + 16 * v99;
    *(v100 + 32) = v96;
    *(v100 + 40) = v98;
    v83 = v133;
  }

LABEL_49:
  sub_1C712A774(v21, v69, &unk_1EC219230, &unk_1C7563720);
  sub_1C712A774(&v21[*(v83 + 20)], v68, &unk_1EC218C70, &qword_1C75653A0);
  if (v144)
  {
    static StoryGenerationUtilities.creationDateString(for:timeZone:dateFormatter:)();
    if (v102)
    {
      v103 = v101;
      v104 = v102;
      v105 = swift_allocObject();
      *(v105 + 16) = v131;
      v106 = v130;
      *(v105 + 56) = MEMORY[0x1E69E6158];
      *(v105 + 64) = v106;
      *(v105 + 32) = v103;
      *(v105 + 40) = v104;
      v107 = sub_1C75506BC();
      v109 = v108;
      v110 = *(v43 + 16);
      if (v110 >= *(v43 + 24) >> 1)
      {
        sub_1C6FB1814();
        v43 = v125;
      }

      *(v43 + 16) = v110 + 1;
      v111 = v43 + 16 * v110;
      *(v111 + 32) = v107;
      *(v111 + 40) = v109;
    }
  }

  if (v46)
  {
    static StoryGenerationUtilities.timeOfDayString(for:timeZone:dateFormatter:)();
    if (v113)
    {
      v114 = v112;
      v115 = v113;
      v116 = *(v43 + 16);
      if (v116 >= *(v43 + 24) >> 1)
      {
        sub_1C6FB1814();
        v43 = v126;
      }

      *(v43 + 16) = v116 + 1;
      v117 = v43 + 16 * v116;
      *(v117 + 32) = v114;
      *(v117 + 40) = v115;
    }
  }

  v145[0] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v118 = sub_1C75505FC();
  v120 = v119;

  v145[0] = v118;
  v145[1] = v120;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);

  v66 = v145[0];
  sub_1C6FD7FC8(v68, &unk_1EC218C70, &qword_1C75653A0);
  sub_1C6FD7FC8(v69, &unk_1EC219230, &unk_1C7563720);
  sub_1C7485C18(v21, type metadata accessor for AssetDescriptionInfo);
  return v66;
}

void AssetRichDescriptionsGenerator.characterInfoAsSentence(using:characterSummaryByCharacterUUID:sortedCharacterUUIDs:userQueryCharacterUUIDs:options:)()
{
  OUTLINED_FUNCTION_33();
  v78 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 5);
  v9 = type metadata accessor for AssetDescriptionInfo(0);
  v10 = *(v6 + *(v9 + 32));
  v84 = *(v6 + *(v9 + 36));
  v85[0] = v10;
  v11 = *(v10 + 16);
  v12 = *(v84 + 16);
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = sub_1C754FEEC();
  v14 = sub_1C755118C();
  if (OUTLINED_FUNCTION_23_0(v14))
  {
    v15 = swift_slowAlloc();
    v79 = v2;
    *v15 = 134218240;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v12;
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v11 + v12 < 1)
  {
    v25 = sub_1C754FEEC();
    v26 = sub_1C755118C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "No people and pets from which to get names.", v27, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_25;
  }

  v77[1] = v11;
  v21 = sub_1C7483768(v4, v85, &v84);
  v22 = sub_1C75504FC();
  sub_1C7478B28(v22);
  v24 = v23;
  v79 = sub_1C747BFB4(v21);
  v77[0] = sub_1C747C2EC(v21);
  if (v8)
  {
    AssetRichDescriptionsGenerator.characterUUIDsToNameInAssetCurationARD(userQueryCharacterUUIDs:sortedCharacterUUIDs:maximumNumberOfNamedCharacters:)(v78, v24, 8);
  }

  else
  {

    v83 = v10;
    sub_1C75504FC();
    v28 = sub_1C75504FC();
    sub_1C6FD2568(v28);
    sub_1C706D154();
  }

  sub_1C75504FC();
  sub_1C706D154();
  sub_1C7069A44();
  sub_1C747C950(v29, v21, v8);
  v31 = v30;
  v33 = v32;

  sub_1C75504FC();
  sub_1C706D154();
  sub_1C7069A44();

  v34 = OUTLINED_FUNCTION_117_0();
  sub_1C747C950(v34, v35, v8);
  v37 = v36;
  v39 = v38;

  sub_1C75504FC();
  v40 = sub_1C74831B0(v85, v33);
  if (*(v85[0] + 16) < v40)
  {
    goto LABEL_27;
  }

  sub_1C7159788(v40);

  sub_1C75504FC();
  v41 = sub_1C74831B0(&v84, v39);
  if (*(v84 + 16) < v41)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1C7159788(v41);

  v83 = v31;
  sub_1C75504FC();
  v42 = sub_1C75504FC();
  sub_1C6FD2568(v42);
  v43 = v31;
  sub_1C75504FC();
  sub_1C75504FC();
  v44 = sub_1C754FEEC();
  v45 = sub_1C755118C();
  v78 = v31;
  if (OUTLINED_FUNCTION_128(v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134218752;
    v47 = v31[2];

    *(v46 + 4) = v47;

    v43 = OS_LOG_TYPE_DEFAULT;
    *(v46 + 12) = 2048;
    v48 = *(v37 + 16);

    *(v46 + 14) = v48;

    *(v46 + 22) = 2048;
    OUTLINED_FUNCTION_5(v85, &v81);
    *(v46 + 24) = *(v85[0] + 16);
    *(v46 + 32) = 2048;
    OUTLINED_FUNCTION_5(&v84, &v80);
    *(v46 + 34) = *(v84 + 16);
    _os_log_impl(&dword_1C6F5C000, v44, v45, "Identified %ld named people and %ld named pets in this asset, with %ld people remaining and %ld pets remaining.", v46, 0x2Au);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v49 = v79;
  OUTLINED_FUNCTION_5(v85, &v83);
  v50 = v85[0];
  v82[0] = MEMORY[0x1E69E7CC0];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C7478898(MEMORY[0x1E69E7CC8], v50, v79, v82);

  v51 = v82[0];
  swift_beginAccess();
  sub_1C75504FC();
  v52 = sub_1C74833EC(v85, v51);
  if (*(v85[0] + 16) >= v52)
  {
    sub_1C7159788(v52);
    swift_endAccess();
    sub_1C75504FC();
    v53 = sub_1C754FEEC();
    v54 = sub_1C755118C();
    if (OUTLINED_FUNCTION_23_0(v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      v56 = *(v51 + 16);

      *(v55 + 4) = v56;
      v49 = v79;

      *(v55 + 12) = 2048;
      *(v55 + 14) = *(v85[0] + 16);
      _os_log_impl(&dword_1C6F5C000, v53, v43, "Identified %ld people without names but with confirmed relationships in this asset, with %ld people remaining.", v55, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v57 = v85[0];
    v58 = sub_1C75504FC();
    sub_1C747CC48(v58, v49);

    v59 = sub_1C754FEEC();
    v60 = sub_1C755118C();
    if (OUTLINED_FUNCTION_23_0(v60))
    {
      v61 = OUTLINED_FUNCTION_41_0();
      *v61 = 134217984;
      *(v61 + 4) = *(v57 + 16);
      OUTLINED_FUNCTION_8();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v67 = OUTLINED_FUNCTION_5(&v84, v82);
    v68 = v84;
    MEMORY[0x1EEE9AC00](v67);
    sub_1C75504FC();
    v69 = sub_1C6FDA040();

    v70 = sub_1C754FEEC();
    v71 = sub_1C755118C();
    if (OUTLINED_FUNCTION_23_0(v71))
    {
      v72 = OUTLINED_FUNCTION_41_0();
      *v72 = 134217984;
      *(v72 + 4) = *(v68 + 16);
      _os_log_impl(&dword_1C6F5C000, v70, v77, "Identified %ld remaining pets without names in this asset.", v72, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    OUTLINED_FUNCTION_42_17();
    sub_1C747CCF4(v73, v74, v75, v76, v69);

LABEL_25:
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_25_0();
    return;
  }

LABEL_29:
  __break(1u);
  swift_endAccess();
  __break(1u);
}

uint64_t sub_1C747BFB4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v44 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_1C75504FC();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C6FB5E28(*(a1 + 56) + 40 * v12, v42);
    *&v41 = v15;
    *(&v41 + 1) = v14;
    v37 = v41;
    v38 = v42[0];
    v39 = v42[1];
    v40 = v43;
    sub_1C6FB5E28(&v38, v30);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738, &unk_1C7579E20);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1) == 1)
      {
        goto LABEL_17;
      }

      v27 = *(&v34 + 1);
      v45 = v36;
      v28 = v34;
      v29 = v35;
      v33 = v40;
      v32[0] = v38;
      v32[1] = v39;
      v31 = v37;
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C7355628();
        v2 = v44;
      }

      v16 = v31;
      sub_1C7551F3C();
      sub_1C75505AC();
      result = sub_1C7551FAC();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
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
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v2 + 48) + 16 * v21) = v16;
      v26 = *(v2 + 56) + 40 * v21;
      *v26 = v28;
      *(v26 + 8) = v27;
      *(v26 + 16) = v29;
      *(v26 + 32) = v45;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v34 = xmmword_1C756A560;
      v36 = 0;
      v35 = 0uLL;
LABEL_17:
      sub_1C6FD7FC8(&v37, &qword_1EC2181B8, &unk_1C7570F90);
      result = sub_1C73CB2E4(v34, *(&v34 + 1));
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C747C2EC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v44 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_1C75504FC();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C6FB5E28(*(a1 + 56) + 40 * v12, v42);
    *&v41 = v15;
    *(&v41 + 1) = v14;
    v37 = v41;
    v38 = v42[0];
    v39 = v42[1];
    v40 = v43;
    sub_1C6FB5E28(&v38, v31);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738, &unk_1C7579E20);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1) == 1)
      {
        goto LABEL_17;
      }

      v27 = *(&v35 + 1);
      v29 = v36[20];
      v28 = *&v36[16];
      v45 = v35;
      v30 = *v36;
      v34 = v40;
      v33[0] = v38;
      v33[1] = v39;
      v32 = v37;
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C7355434();
        v2 = v44;
      }

      v16 = v32;
      sub_1C7551F3C();
      sub_1C75505AC();
      result = sub_1C7551FAC();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
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
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v2 + 48) + 16 * v21) = v16;
      v26 = *(v2 + 56) + 40 * v21;
      *v26 = v45;
      *(v26 + 8) = v27;
      *(v26 + 16) = v30;
      *(v26 + 36) = (v28 | (v29 << 32)) >> 32;
      *(v26 + 32) = v28;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      v35 = xmmword_1C756A560;
      *v36 = 0;
      *&v36[8] = 0;
      *&v36[13] = 0;
LABEL_17:
      sub_1C6FD7FC8(&v37, &qword_1EC2181B8, &unk_1C7570F90);
      result = sub_1C73CB2E4(v35, *(&v35 + 1));
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void AssetRichDescriptionsGenerator.characterUUIDsToNameInAssetCurationARD(userQueryCharacterUUIDs:sortedCharacterUUIDs:maximumNumberOfNamedCharacters:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  if (a3 <= v4)
  {
    v26 = sub_1C754FEEC();
    v27 = sub_1C755118C();
    if (OUTLINED_FUNCTION_128(v27))
    {
      v28 = OUTLINED_FUNCTION_41_0();
      *v28 = 134217984;
      *(v28 + 4) = v4;
      _os_log_impl(&dword_1C6F5C000, v26, v27, "Already enough characters mentioned in user's query: %ld", v28, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    OUTLINED_FUNCTION_59_28();

    sub_1C75504FC();
  }

  else
  {
    v41 = a3 - v4;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = a2 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v42 = a2 + 32;
LABEL_3:
    while (1)
    {
      v9 = v5;
      if (v5 == v6)
      {
        break;
      }

      if (v5 >= v6)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      ++v5;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_36;
      }

      v10 = (v7 + 16 * v9);
      v12 = *v10;
      v11 = v10[1];
      if (a1[2])
      {
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_57_29();
        while (1)
        {
          v14 = v13 & v43;
          if (((*(a1 + (((v13 & v43) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v13 & v43)) & 1) == 0)
          {
            break;
          }

          v15 = (a1[6] + 16 * v14);
          if (*v15 != v12 || v15[1] != v11)
          {
            v17 = sub_1C7551DBC();
            v13 = v14 + 1;
            if ((v17 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_3;
        }
      }

      else
      {
        sub_1C75504FC();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v8 + 16) + 1, 1, v19, v20, v21, v22);
        v8 = v44;
      }

      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C6F7ED9C(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        v8 = v44;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v12;
      *(v25 + 40) = v11;
      v7 = v42;
    }

    v30 = *(v8 + 16);
    if (v41 >= v30)
    {
      v32 = sub_1C754FEEC();
      v33 = sub_1C755118C();
      if (OUTLINED_FUNCTION_23_0(v33))
      {
        v34 = OUTLINED_FUNCTION_41_0();
        *v34 = 134217984;
        *(v34 + 4) = v30;
        OUTLINED_FUNCTION_8();
        _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
      OUTLINED_FUNCTION_59_28();

      sub_1C70739AC();
    }

    else
    {
      sub_1C7033F04(v41, v8);
      sub_1C75504FC();
      OUTLINED_FUNCTION_59_28();

      sub_1C70747A4();
    }
  }
}

void sub_1C747C950(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1;
  v41 = MEMORY[0x1E69E7CD0];
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = sub_1C75504FC();
  v12 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v37 = v11;
  v36 = a3;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (*(v5 + 48) + ((v12 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];
    if (a3)
    {
      if (*(a2 + 16))
      {
        sub_1C75504FC();
        v18 = sub_1C6F78124(v17, v16);
        if (v19)
        {
          sub_1C6FB5E28(*(a2 + 56) + 40 * v18, &v38);
          v20 = v39;
          v21 = v40;
          __swift_project_boxed_opaque_existential_1(&v38, v39);
          v22 = (*(v21 + 24))(v20, v21);
          goto LABEL_16;
        }

LABEL_23:
      }
    }

    else if (*(a2 + 16))
    {
      sub_1C75504FC();
      v24 = sub_1C6F78124(v17, v16);
      if ((v25 & 1) == 0)
      {
        goto LABEL_23;
      }

      sub_1C6FB5E28(*(a2 + 56) + 40 * v24, &v38);
      v26 = v39;
      v27 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v22 = (*(v27 + 16))(v26, v27);
LABEL_16:
      v28 = v22;
      v29 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v38);
      if (!v29)
      {
        goto LABEL_21;
      }

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {

LABEL_21:

        goto LABEL_22;
      }

      sub_1C70F082C(&v38, v17, v16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v35 = v33;
      }

      v31 = *(v35 + 16);
      if (v31 >= *(v35 + 24) >> 1)
      {
        sub_1C6FB1814();
        v35 = v34;
      }

      *(v35 + 16) = v31 + 1;
      v32 = v35 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
LABEL_22:
      v5 = v37;
      a3 = v36;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v38 = v35;
      sub_1C75504FC();
      sub_1C70401E8();

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1C747CC48(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CC8];
  v3 = *(a1 + 16);
  for (i = (a1 + 40); v3; --v3)
  {
    v5 = *i;
    v7[0] = *(i - 1);
    v7[1] = v5;
    sub_1C75504FC();
    sub_1C747DA74(&v8, v7, a2);

    i += 2;
  }

  return v8;
}

uint64_t sub_1C747CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C747DFB0(a2, sub_1C74855A0, sub_1C739D304, sub_1C747A5C4, sub_1C71BBAD4);
  v8 = *(v7 + 16);
  v9 = &unk_1C755C000;
  if (v8)
  {
    v71 = a4;
    v72 = a5;
    v10 = (v7 + 40);
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = *(v10 - 8);
      v84 = v11;
      v80 = *v10;
      v82 = v8;
      if (*v10 >= 2)
      {
        LOBYTE(v86) = *(v10 - 8);
        v13 = StoryPersonRelationshipType.pluralValue.getter();
        v15 = v13;
        v16 = v14;
        v78 = v13;
        v79 = v14;
        v17 = v13;
        v18 = v14;
        v19 = v13;
        v76 = v13;
        v77 = v14;
        v20 = v13;
        v21 = v14;
        v22 = v13;
        v23 = v13;
        v24 = v13;
        v25 = v14;
        v75 = v13;
        v26 = v13;
        v27 = v13;
        v28 = v13;
        v29 = v14;
        v30 = v13;
        v31 = v13;
        v32 = v13;
        v33 = v14;
        v34 = v14;
        v35 = v13;
        switch(v12)
        {
          case 1:
            goto LABEL_6;
          case 2:
            goto LABEL_13;
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_10;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          case 7:
            goto LABEL_16;
          case 8:
            goto LABEL_22;
          case 9:
            goto LABEL_12;
          case 10:
            goto LABEL_21;
          case 11:
            goto LABEL_9;
          case 12:
            goto LABEL_11;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_8;
          case 15:
            goto LABEL_14;
          case 16:
            goto LABEL_7;
          case 17:
            goto LABEL_17;
          default:
            goto LABEL_23;
        }
      }

      v79 = 0x80000001C7596B70;
      v25 = 0x80000001C7596BD0;
      v22 = 0x726568746166;
      v75 = 0x726568746F6DLL;
      v76 = 0xD000000000000013;
      v77 = 0x80000001C7596BA0;
      v78 = 0xD000000000000015;
      v29 = 0xE300000000000000;
      v33 = 0xE200000000000000;
      v21 = 0xE600000000000000;
      v18 = 0xE800000000000000;
      v16 = 0xE500000000000000;
      v14 = 0xE700000000000000;
      v32 = 25965;
      v13 = 0x726568746F7262;
      v15 = 0x646C696863;
      v17 = 0x72656B726F776F63;
      v19 = 0x7265746867756164;
      v20 = 0x796C696D6166;
      v23 = 0x646E65697266;
      v24 = 0xD000000000000010;
      v26 = 0x746E65726170;
      v27 = 0x72656E74726170;
      v28 = 7237491;
      v30 = 0x726574736973;
      v31 = 7367030;
      v35 = 0x746E696175716361;
      v34 = 0xEC00000065636E61;
      switch(*(v10 - 8))
      {
        case 1:
LABEL_6:
          v34 = v14;
          v35 = v13;
          goto LABEL_23;
        case 2:
LABEL_13:
          v34 = v16;
          v35 = v15;
          goto LABEL_23;
        case 3:
LABEL_15:
          v35 = v78;
          v34 = v79;
          goto LABEL_23;
        case 4:
LABEL_10:
          v34 = v18;
          v35 = v17;
          goto LABEL_23;
        case 5:
LABEL_18:
          v34 = v18;
          v35 = v19;
          goto LABEL_23;
        case 6:
LABEL_20:
          v35 = v76;
          v34 = v77;
          goto LABEL_23;
        case 7:
LABEL_16:
          v34 = v21;
          v35 = v20;
          goto LABEL_23;
        case 8:
LABEL_22:
          v34 = v21;
          v35 = v22;
          goto LABEL_23;
        case 9:
LABEL_12:
          v34 = v21;
          v35 = v23;
          goto LABEL_23;
        case 0xA:
LABEL_21:
          v34 = v25;
          v35 = v24;
          goto LABEL_23;
        case 0xB:
LABEL_9:

          v35 = v32;
          v34 = v33;
          goto LABEL_24;
        case 0xC:
LABEL_11:
          v34 = v21;
          v35 = v75;
          goto LABEL_23;
        case 0xD:
LABEL_19:
          v34 = v21;
          v35 = v26;
          goto LABEL_23;
        case 0xE:
LABEL_8:
          v34 = v14;
          v35 = v27;
          goto LABEL_23;
        case 0xF:
LABEL_14:
          v34 = v29;
          v35 = v28;
          goto LABEL_23;
        case 0x10:
LABEL_7:
          v34 = v21;
          v35 = v30;
          goto LABEL_23;
        case 0x11:
LABEL_17:
          v34 = v29;
          v35 = v31;
          goto LABEL_23;
        default:
LABEL_23:
          v36 = sub_1C7551DBC();

          if (v36)
          {
LABEL_24:
            v11 = v84;
LABEL_27:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v11 = v45;
            }

            v38 = *(v11 + 16);
            if (v38 >= *(v11 + 24) >> 1)
            {
              sub_1C6FB1814();
              v11 = v46;
            }

            *(v11 + 16) = v38 + 1;
            v39 = v11 + 16 * v38;
            *(v39 + 32) = v35;
            *(v39 + 40) = v34;
            goto LABEL_32;
          }

          v11 = v84;
          if (v80 >= 1)
          {
            v86 = sub_1C7551D8C();
            v87 = v37;
            MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
            MEMORY[0x1CCA5CD70](v35, v34);

            v35 = v86;
            v34 = v87;
            goto LABEL_27;
          }

          if (qword_1EC214268 != -1)
          {
            swift_once();
          }

          v40 = sub_1C754FF1C();
          __swift_project_value_buffer(v40, qword_1EC25B9C0);
          sub_1C75504FC();
          v41 = sub_1C754FEEC();
          v42 = sub_1C755119C();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v86 = v44;
            *v43 = 136315394;
            *(v43 + 4) = sub_1C6F765A4(v35, v34, &v86);
            *(v43 + 12) = 2048;
            *(v43 + 14) = v80;
            _os_log_impl(&dword_1C6F5C000, v41, v42, "Cannot generate a frequency string for character type %s with %ld characters.", v43, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v44);
            MEMORY[0x1CCA5F8E0](v44, -1, -1);
            MEMORY[0x1CCA5F8E0](v43, -1, -1);
          }

LABEL_32:
          v10 += 2;
          v8 = v82 - 1;
          if (v82 == 1)
          {
            v85 = v11;

            a5 = v72;
            v9 = &unk_1C755C000;
            a4 = v71;
            goto LABEL_40;
          }

          break;
      }
    }
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_40:
  sub_1C747E058(a3, a4);
  v81 = v47;
  v48 = sub_1C747DFB0(a5, sub_1C7485388, sub_1C739D2C4, sub_1C747A520, sub_1C71BB9E8);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (v48 + 40);
    v51 = MEMORY[0x1E69E7CC0];
    v83 = v9[138];
    do
    {
      v52 = *v50;
      v53 = static StoryGenerationCharacterTypes.detectionTypeString(for:isPlural:)(*(v50 - 4), *v50 > 1);
      if (v54)
      {
        v55 = v53;
        v56 = v54;
        if (v52 < 1)
        {
          if (qword_1EC214268 != -1)
          {
            swift_once();
          }

          v62 = sub_1C754FF1C();
          __swift_project_value_buffer(v62, qword_1EC25B9C0);
          sub_1C75504FC();
          v63 = sub_1C754FEEC();
          v64 = sub_1C755119C();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v86 = v66;
            *v65 = v83;
            *(v65 + 4) = sub_1C6F765A4(v55, v56, &v86);
            *(v65 + 12) = 2048;
            *(v65 + 14) = v52;
            _os_log_impl(&dword_1C6F5C000, v63, v64, "Cannot generate a frequency string for character type %s with %ld characters.", v65, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v66);
            MEMORY[0x1CCA5F8E0](v66, -1, -1);
            MEMORY[0x1CCA5F8E0](v65, -1, -1);
          }
        }

        else
        {
          v86 = sub_1C7551D8C();
          v87 = v57;
          MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
          MEMORY[0x1CCA5CD70](v55, v56);

          v58 = v86;
          v59 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v51 = v67;
          }

          v60 = *(v51 + 16);
          if (v60 >= *(v51 + 24) >> 1)
          {
            sub_1C6FB1814();
            v51 = v68;
          }

          *(v51 + 16) = v60 + 1;
          v61 = v51 + 16 * v60;
          *(v61 + 32) = v58;
          *(v61 + 40) = v59;
        }
      }

      v50 += 2;
      --v49;
    }

    while (v49);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v88 = a1;
  sub_1C75504FC();
  sub_1C6FD2568(v85);
  sub_1C6FD2568(v81);
  sub_1C6FD2568(v51);
  if (*(v88 + 16))
  {
    v69 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v88, 1, 0);
  }

  else
  {

    return 0;
  }

  return v69;
}

uint64_t sub_1C747D73C(uint64_t a1, uint64_t a2)
{
  sub_1C712A774(a1, &v35, &qword_1EC2181B8, &unk_1C7570F90);
  v4 = v35;
  v3 = v36;
  sub_1C6F699F8(v37, v38);
  sub_1C712A774(a2, &v35, &qword_1EC2181B8, &unk_1C7570F90);
  v6 = v35;
  v5 = v36;
  sub_1C6F699F8(v37, v32);
  v7 = v39;
  v8 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v9 = (*(v8 + 40))(v7, v8) & 1;
  v10 = v33;
  v11 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  if (v9 == ((*(v11 + 40))(v10, v11) & 1))
  {
    v15 = v39;
    v16 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v17 = (*(v16 + 32))(v15, v16) & 1;
    v18 = v33;
    v19 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    if (v17 != ((*(v19 + 32))(v18, v19) & 1))
    {

      v20 = v39;
      v21 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v14 = (*(v21 + 32))(v20, v21);
      goto LABEL_5;
    }

    v24 = v39;
    v25 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v25 + 16))(v24, v25);
    v27 = v26;
    v28 = v33;
    v29 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    (*(v29 + 16))(v28, v29);
    v22 = v27 != 0;
    if (v27)
    {
      if (v30)
      {

LABEL_12:
        if (v4 == v6 && v3 == v5)
        {

          v22 = 0;
          goto LABEL_6;
        }

        v22 = sub_1C7551DBC();

LABEL_20:

        goto LABEL_6;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_20;
  }

  v12 = v39;
  v13 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v14 = (*(v13 + 40))(v12, v13);
LABEL_5:
  v22 = v14;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v22 & 1;
}

void sub_1C747DA74(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1C6F78124(*a2, a2[1]);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 40 * v5 + 36);
      if (v7 == 2)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v24 = *a1;
        v33 = *a1;
        v25 = sub_1C6FC34F4(1);
        if (__OFADD__(*(v24 + 16), (v26 & 1) == 0))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v27 = v25;
        v28 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C0, &qword_1C758DC10);
        if (sub_1C7551A2C())
        {
          v29 = sub_1C6FC34F4(1);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_35;
          }

          v27 = v29;
        }

        *a1 = v33;
        if ((v28 & 1) == 0)
        {
          sub_1C6FC775C(v27, 1, 0, v33);
        }

        v15 = (*(v33 + 56) + 8 * v27);
        v16 = *v15 + 1;
        if (!__OFADD__(*v15, 1))
        {
          goto LABEL_21;
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v7 == 1)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v8 = *a1;
        v31 = *a1;
        v9 = sub_1C6FC34F4(2);
        if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v11 = v9;
        v12 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C0, &qword_1C758DC10);
        if (sub_1C7551A2C())
        {
          v13 = sub_1C6FC34F4(2);
          if ((v12 & 1) != (v14 & 1))
          {
            goto LABEL_35;
          }

          v11 = v13;
        }

        *a1 = v31;
        if ((v12 & 1) == 0)
        {
          sub_1C6FC775C(v11, 2, 0, v31);
        }

        v15 = (*(v31 + 56) + 8 * v11);
        v16 = *v15 + 1;
        if (!__OFADD__(*v15, 1))
        {
          goto LABEL_21;
        }

        __break(1u);
      }
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  v32 = *a1;
  v18 = sub_1C6FC34F4(0);
  if (__OFADD__(*(v17 + 16), (v19 & 1) == 0))
  {
    goto LABEL_31;
  }

  v20 = v18;
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C0, &qword_1C758DC10);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v22 = sub_1C6FC34F4(0);
  if ((v21 & 1) == (v23 & 1))
  {
    v20 = v22;
LABEL_18:
    *a1 = v32;
    if ((v21 & 1) == 0)
    {
      sub_1C6FC775C(v20, 0, 0, v32);
    }

    v15 = (*(v32 + 56) + 8 * v20);
    v16 = *v15 + 1;
    if (!__OFADD__(*v15, 1))
    {
LABEL_21:
      *v15 = v16;
      return;
    }

    goto LABEL_32;
  }

LABEL_35:
  sub_1C7551E4C();
  __break(1u);
}

void sub_1C747DD38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1C6F78124(*a2, a2[1]);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 40 * v5 + 34);
      if (v7 == 4)
      {
        goto LABEL_14;
      }

      if (v7 == 3)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v8 = *a1;
        v29 = *a1;
        v9 = sub_1C6FC3598(3);
        if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
        {
          __break(1u);
          goto LABEL_27;
        }

        v11 = v9;
        v12 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2B8, &qword_1C758DC08);
        if (sub_1C7551A2C())
        {
          v13 = sub_1C6FC3598(3);
          if ((v12 & 1) != (v14 & 1))
          {
            goto LABEL_29;
          }

          v11 = v13;
        }

        *a1 = v29;
        if ((v12 & 1) == 0)
        {
          sub_1C6FC7798(v11, 3, 0, v29);
        }

        v15 = *(v29 + 56);
        v16 = *(v15 + 8 * v11);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (!v17)
        {
          goto LABEL_21;
        }

        __break(1u);
LABEL_14:
        swift_isUniquelyReferenced_nonNull_native();
        v19 = *a1;
        v30 = *a1;
        v20 = sub_1C6FC3598(4);
        if (!__OFADD__(*(v19 + 16), (v21 & 1) == 0))
        {
          v11 = v20;
          v22 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2B8, &qword_1C758DC08);
          if ((sub_1C7551A2C() & 1) == 0)
          {
            goto LABEL_18;
          }

          v23 = sub_1C6FC3598(4);
          if ((v22 & 1) == (v24 & 1))
          {
            v11 = v23;
LABEL_18:
            *a1 = v30;
            if ((v22 & 1) == 0)
            {
              sub_1C6FC7798(v11, 4, 0, v30);
            }

            v15 = *(v30 + 56);
            v25 = *(v15 + 8 * v11);
            v17 = __OFADD__(v25, 1);
            v18 = v25 + 1;
            if (!v17)
            {
LABEL_21:
              *(v15 + 8 * v11) = v18;
              return;
            }

            goto LABEL_28;
          }

LABEL_29:
          type metadata accessor for PHDetectionType(0);
          sub_1C7551E4C();
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v26 = sub_1C754FEEC();
      v27 = sub_1C755119C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1C6F5C000, v26, v27, "Received unexpected pet type.", v28, 2u);
        MEMORY[0x1CCA5F8E0](v28, -1, -1);
      }
    }
  }
}

uint64_t sub_1C747DFB0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t *), uint64_t (*a5)(uint64_t))
{
  sub_1C7483600(a1, a2);
  v8 = a3();

  v11 = v8;
  a4(&v11);
  v9 = a5(v11);

  return v9;
}

void sub_1C747E058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6FE1680(0, a1);
  if ((v5 & 1) == 0 && v4 == a2 && (a2 <= 1 ? (v6 = 0x6E6F73726570) : (v6 = 0x656C706F6570), v7 = static StoryGenerationCharacterTypes.frequencyString(for:typeString:)(a2, v6, 0xE600000000000000), v9 = v8, , v9))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C755BAB0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
  }

  else
  {
    v11 = sub_1C747DFB0(a1, sub_1C7485100, sub_1C739D284, sub_1C747A47C, sub_1C71BB91C);
    v12 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v13 = *(v11 + 16);
    v14 = v11 + 40;
    v44 = v13;
LABEL_9:
    for (i = (v14 + 16 * v12); ; i += 2)
    {
      if (v13 == v12)
      {

        return;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      v16 = *(i - 8);
      v17 = *i;
      if (*(i - 8))
      {
        if (v17 >= 2)
        {
          v33 = 0xE500000000000000;
          if (v16 == 2)
          {
            v33 = 0xE600000000000000;
          }

          v34 = 0x736569626162;
          if (v16 != 2)
          {
            v34 = 0x726568746FLL;
          }

          if (v16 == 1)
          {
            v21 = 0xE800000000000000;
          }

          else
          {
            v21 = v33;
          }

          if (v16 == 1)
          {
            v20 = 0x6E6572646C696863;
          }

          else
          {
            v20 = v34;
          }

LABEL_45:
          v45 = sub_1C7551D8C();
          v46 = v35;
          MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
          MEMORY[0x1CCA5CD70](v20, v21);

          v36 = v45;
          v37 = v46;
          v14 = v11 + 40;
          v38 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v38 = v41;
          }

          v39 = *(v38 + 16);
          if (v39 >= *(v38 + 24) >> 1)
          {
            sub_1C6FB1814();
            v38 = v42;
          }

          ++v12;
          *(v38 + 16) = v39 + 1;
          v43 = v38;
          v40 = v38 + 16 * v39;
          *(v40 + 32) = v36;
          *(v40 + 40) = v37;
          v13 = v44;
          goto LABEL_9;
        }

        v18 = 2036490594;
        if (v16 != 2)
        {
          v18 = 0x726568746FLL;
        }

        v19 = 0xE400000000000000;
        if (v16 != 2)
        {
          v19 = 0xE500000000000000;
        }

        if (v16 == 1)
        {
          v20 = 0x646C696863;
        }

        else
        {
          v20 = v18;
        }

        if (v16 == 1)
        {
          v21 = 0xE500000000000000;
        }

        else
        {
          v21 = v19;
        }

        if (v17 == 1)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v17 <= 1)
        {
          v22 = 0x6E6F73726570;
        }

        else
        {
          v22 = 0x656C706F6570;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1C75604F0;
        v24 = MEMORY[0x1E69E6158];
        *(v23 + 56) = MEMORY[0x1E69E6158];
        v25 = sub_1C6F6D524();
        *(v23 + 32) = 0x726568746FLL;
        *(v23 + 40) = 0xE500000000000000;
        *(v23 + 96) = v24;
        *(v23 + 104) = v25;
        *(v23 + 64) = v25;
        *(v23 + 72) = v22;
        *(v23 + 80) = 0xE600000000000000;
        v20 = sub_1C75506BC();
        v21 = v26;
        if (v17 >= 1)
        {
          goto LABEL_45;
        }
      }

      if (qword_1EC214268 != -1)
      {
        swift_once();
      }

      v27 = sub_1C754FF1C();
      __swift_project_value_buffer(v27, qword_1EC25B9C0);
      sub_1C75504FC();
      v28 = sub_1C754FEEC();
      v29 = sub_1C755119C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45 = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_1C6F765A4(v20, v21, &v45);
        *(v30 + 12) = 2048;
        *(v30 + 14) = v17;
        _os_log_impl(&dword_1C6F5C000, v28, v29, "Cannot generate a frequency string for character type %s with %ld characters.", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1CCA5F8E0](v31, -1, -1);
        v32 = v30;
        v13 = v44;
        MEMORY[0x1CCA5F8E0](v32, -1, -1);
      }

      ++v12;
    }

    __break(1u);
  }
}

uint64_t sub_1C747E528(unsigned __int8 a1, uint64_t a2, char a3)
{
  v4 = 0x6E6F73726570;
  v5 = 0xE600000000000000;
  v6 = a1;
  v7 = 0x6E6F73726570;
  switch(v6)
  {
    case 1:
      v5 = 0xE500000000000000;
      v7 = 0x646C696863;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v7 = 2036490594;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v7 = 0x726568746FLL;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a3)
  {
    case 1:
      v8 = 0xE500000000000000;
      v4 = 0x646C696863;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v4 = 2036490594;
      break;
    case 3:
      v8 = 0xE500000000000000;
      v4 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v7 == v4 && v5 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1C7551DBC();
  }

  return v10 & 1;
}

uint64_t sub_1C747E65C(uint64_t a1)
{
  v1 = StoryPersonRelationshipType.rawValue.getter();
  v3 = v2;
  if (v1 == StoryPersonRelationshipType.rawValue.getter() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1C7551DBC();
  }

  return v6 & 1;
}

uint64_t sub_1C747E700(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v2 == v1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    MEMORY[0x1EEE9AC00](a1);
    sub_1C75504FC();
    v4 = sub_1C70735F4();

    if (v4)
    {
      break;
    }

    ++v1;
  }

  v5 = v1;
LABEL_7:

  return v5;
}

uint64_t sub_1C747E80C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (v3 == v4)
    {
      v16 = 0;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      break;
    }

LABEL_13:
    ++v3;
  }

  v7 = (v5 + 16 * v3);
  v9 = *v7;
  v8 = v7[1];
  sub_1C7551F3C();
  sub_1C75504FC();
  sub_1C75505AC();
  v10 = sub_1C7551FAC();
  v11 = ~(-1 << *(a2 + 32));
  do
  {
    v12 = v10 & v11;
    if (((*(v6 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {

      goto LABEL_13;
    }

    v13 = (*(a2 + 48) + 16 * v12);
    if (*v13 == v9 && v13[1] == v8)
    {
      break;
    }

    v15 = sub_1C7551DBC();
    v10 = v12 + 1;
  }

  while ((v15 & 1) == 0);

  v16 = v3;
LABEL_15:

  return v16;
}

uint64_t sub_1C747E954(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C6FF7814();
  v6 = type metadata accessor for Hastings.Feature(0);
  sub_1C754F58C();
  sub_1C7485D20(&qword_1EC215238, MEMORY[0x1E69C1928], MEMORY[0x1E69C1938]);
  sub_1C755059C();
  sub_1C7551FAC();
  v7 = sub_1C755163C();
  *(a3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
  result = sub_1C7485CC8(a1, a3[6] + *(*(v6 - 8) + 72) * v7);
  *(a3[7] + 8 * v7) = a2;
  ++a3[2];
  return result;
}

uint64_t sub_1C747EAB0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1C7550BBC();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_1C747EBCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v41 = *a4;
  v4 = *a4 + 56 * a3;
  v5 = result - a3;
  while (2)
  {
    v39 = v4;
    v40 = a3;
    v38 = v5;
    while (1)
    {
      sub_1C712A774(v4, v53, &qword_1EC2181B8, &unk_1C7570F90);
      v6 = v4 - 56;
      sub_1C712A774(v4 - 56, v52, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C712A774(v53, &v46, &qword_1EC2181B8, &unk_1C7570F90);
      v7 = v47;
      v54 = v46;
      sub_1C6F699F8(v48, v49);
      sub_1C712A774(v52, &v46, &qword_1EC2181B8, &unk_1C7570F90);
      v8 = v47;
      v42 = v46;
      sub_1C6F699F8(v48, v43);
      v9 = v50;
      v10 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      LODWORD(v9) = (*(v10 + 40))(v9, v10);
      v11 = v44;
      v12 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      if ((v9 ^ (*(v12 + 40))(v11, v12)))
      {

        v13 = v50;
        v14 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        v15 = (*(v14 + 40))(v13, v14);
LABEL_8:
        v22 = v15;
        goto LABEL_22;
      }

      v16 = v50;
      v17 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      LODWORD(v16) = (*(v17 + 32))(v16, v17);
      v18 = v44;
      v19 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      if ((v16 ^ (*(v19 + 32))(v18, v19)))
      {

        v20 = v50;
        v21 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        v15 = (*(v21 + 32))(v20, v21);
        goto LABEL_8;
      }

      v23 = v50;
      v24 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      (*(v24 + 16))(v23, v24);
      v26 = v25;
      v27 = v44;
      v28 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v28 + 16))(v27, v28);
      v22 = v26 != 0;
      if (v26)
      {
        if (v29)
        {

          goto LABEL_14;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v29)
      {

        goto LABEL_20;
      }

LABEL_14:
      if (v54 == v42 && v7 == v8)
      {
        break;
      }

      v22 = sub_1C7551DBC();

LABEL_21:

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1(v43);
      __swift_destroy_boxed_opaque_existential_1(v49);
      sub_1C6FD7FC8(v52, &qword_1EC2181B8, &unk_1C7570F90);
      result = sub_1C6FD7FC8(v53, &qword_1EC2181B8, &unk_1C7570F90);
      if (v22)
      {
        if (!v41)
        {
          __break(1u);
          return result;
        }

        v31 = *(v4 + 48);
        v33 = *(v4 + 16);
        v32 = *(v4 + 32);
        v34 = *v4;
        v35 = *(v4 - 40);
        *v4 = *v6;
        *(v4 + 16) = v35;
        *(v4 + 32) = *(v4 - 24);
        *(v4 + 48) = *(v4 - 8);
        *v6 = v34;
        *(v4 - 40) = v33;
        *(v4 - 24) = v32;
        v4 -= 56;
        *(v6 + 48) = v31;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_1C6FD7FC8(v52, &qword_1EC2181B8, &unk_1C7570F90);
    result = sub_1C6FD7FC8(v53, &qword_1EC2181B8, &unk_1C7570F90);
LABEL_26:
    a3 = v40 + 1;
    v4 = v39 + 56;
    v5 = v38 - 1;
    if (v40 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1C747F028(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 16 * v4);
      v18 = v7;
      v19 = v6;
      while (1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x6E6F73726570;
        switch(v8)
        {
          case 1:
            v9 = 0xE500000000000000;
            v10 = 0x646C696863;
            break;
          case 2:
            v9 = 0xE400000000000000;
            v10 = 2036490594;
            break;
          case 3:
            v9 = 0xE500000000000000;
            v10 = 0x726568746FLL;
            break;
          default:
            break;
        }

        v11 = 0xE600000000000000;
        v12 = 0x6E6F73726570;
        switch(*v6)
        {
          case 1:
            v11 = 0xE500000000000000;
            v12 = 0x646C696863;
            break;
          case 2:
            v11 = 0xE400000000000000;
            v12 = 2036490594;
            break;
          case 3:
            v11 = 0xE500000000000000;
            v12 = 0x726568746FLL;
            break;
          default:
            break;
        }

        if (v10 == v12 && v9 == v11)
        {
          break;
        }

        v14 = sub_1C7551DBC();

        if (v14)
        {
          if (!v5)
          {
            __break(1u);
            return result;
          }

          v8 = *(v6 + 16);
          v15 = *(v6 + 24);
          *(v6 + 16) = *v6;
          *v6 = v8;
          *(v6 + 8) = v15;
          v6 -= 16;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_22;
      }

LABEL_22:
      ++v4;
      v6 = v19 + 16;
      v7 = v18 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C747F204(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 3);
        *(v9 + 1) = *v9;
        *v9 = v7;
        *(v9 + 1) = v10;
        v9 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
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

uint64_t sub_1C747F27C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v25 = a3;
      v7 = *(v4 + 16 * a3);
      v23 = v6;
      v24 = v5;
      while (1)
      {
        v8 = 0xEC00000065636E61;
        v9 = 0x746E696175716361;
        switch(v7)
        {
          case 1:
            v8 = 0xE700000000000000;
            v10 = 0x6568746F7262;
            goto LABEL_8;
          case 2:
            v8 = 0xE500000000000000;
            v9 = 0x646C696863;
            break;
          case 3:
            v9 = 0xD000000000000015;
            v8 = 0x80000001C7596B70;
            break;
          case 4:
            v8 = 0xE800000000000000;
            v12 = 0x6B726F776F63;
            goto LABEL_19;
          case 5:
            v8 = 0xE800000000000000;
            v12 = 0x746867756164;
LABEL_19:
            v9 = v12 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v9 = 0xD000000000000013;
            v8 = 0x80000001C7596BA0;
            break;
          case 7:
            v8 = 0xE600000000000000;
            v9 = 0x796C696D6166;
            break;
          case 8:
            v8 = 0xE600000000000000;
            v11 = 1752457574;
            goto LABEL_24;
          case 9:
            v8 = 0xE600000000000000;
            v9 = 0x646E65697266;
            break;
          case 10:
            v9 = 0xD000000000000010;
            v8 = 0x80000001C7596BD0;
            break;
          case 11:
            v8 = 0xE200000000000000;
            v9 = 25965;
            break;
          case 12:
            v9 = 0x726568746F6DLL;
            v8 = 0xE600000000000000;
            break;
          case 13:
            v8 = 0xE600000000000000;
            v9 = 0x746E65726170;
            break;
          case 14:
            v8 = 0xE700000000000000;
            v10 = 0x656E74726170;
LABEL_8:
            v9 = v10 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 15:
            v8 = 0xE300000000000000;
            v9 = 7237491;
            break;
          case 16:
            v8 = 0xE600000000000000;
            v11 = 1953720691;
LABEL_24:
            v9 = v11 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 17:
            v8 = 0xE300000000000000;
            v9 = 7367030;
            break;
          default:
            break;
        }

        v13 = 0x746E696175716361;
        v14 = 0xEC00000065636E61;
        switch(*v5)
        {
          case 1:
            v14 = 0xE700000000000000;
            v15 = 0x6568746F7262;
            goto LABEL_29;
          case 2:
            v14 = 0xE500000000000000;
            v13 = 0x646C696863;
            break;
          case 3:
            v13 = 0xD000000000000015;
            v14 = 0x80000001C7596B70;
            break;
          case 4:
            v14 = 0xE800000000000000;
            v17 = 0x6B726F776F63;
            goto LABEL_40;
          case 5:
            v14 = 0xE800000000000000;
            v17 = 0x746867756164;
LABEL_40:
            v13 = v17 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v13 = 0xD000000000000013;
            v14 = 0x80000001C7596BA0;
            break;
          case 7:
            v14 = 0xE600000000000000;
            v13 = 0x796C696D6166;
            break;
          case 8:
            v14 = 0xE600000000000000;
            v16 = 1752457574;
            goto LABEL_45;
          case 9:
            v14 = 0xE600000000000000;
            v13 = 0x646E65697266;
            break;
          case 0xA:
            v13 = 0xD000000000000010;
            v14 = 0x80000001C7596BD0;
            break;
          case 0xB:
            v14 = 0xE200000000000000;
            v13 = 25965;
            break;
          case 0xC:
            v13 = 0x726568746F6DLL;
            v14 = 0xE600000000000000;
            break;
          case 0xD:
            v14 = 0xE600000000000000;
            v13 = 0x746E65726170;
            break;
          case 0xE:
            v14 = 0xE700000000000000;
            v15 = 0x656E74726170;
LABEL_29:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 0xF:
            v14 = 0xE300000000000000;
            v13 = 7237491;
            break;
          case 0x10:
            v14 = 0xE600000000000000;
            v16 = 1953720691;
LABEL_45:
            v13 = v16 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 0x11:
            v14 = 0xE300000000000000;
            v13 = 7367030;
            break;
          default:
            break;
        }

        if (v9 == v13 && v8 == v14)
        {
          break;
        }

        v19 = sub_1C7551DBC();

        if (v19)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v7 = *(v5 + 16);
          v20 = *(v5 + 24);
          *(v5 + 16) = *v5;
          *v5 = v7;
          *(v5 + 8) = v20;
          v5 -= 16;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_56;
      }

LABEL_56:
      a3 = v25 + 1;
      v5 = v24 + 16;
      v6 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C747F6C0(char **result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_130:
    v161 = *result;
    if (!v161)
    {
      goto LABEL_172;
    }

    v4 = v144;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_132;
    }

    goto LABEL_166;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    v135 = v8;
    if (v6 >= v5)
    {
      goto LABEL_42;
    }

    v4 = *a3;
    sub_1C712A774(*a3 + 56 * v6, v160, &qword_1EC2181B8, &unk_1C7570F90);
    sub_1C712A774(v4 + 56 * v8, v159, &qword_1EC2181B8, &unk_1C7570F90);
    v146 = sub_1C747D73C(v160, v159);
    if (v144)
    {
      sub_1C6FD7FC8(v159, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C6FD7FC8(v160, &qword_1EC2181B8, &unk_1C7570F90);
LABEL_140:

      return;
    }

    v137 = v7;
    sub_1C6FD7FC8(v159, &qword_1EC2181B8, &unk_1C7570F90);
    sub_1C6FD7FC8(v160, &qword_1EC2181B8, &unk_1C7570F90);
    v139 = 56 * v8;
    v141 = v5;
    v9 = v4 + 56 * v8 + 112;
    v10 = v8 + 2;
    while (1)
    {
      v11 = v10;
      if (v6 + 1 >= v5)
      {
        break;
      }

      sub_1C712A774(v9, v160, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C712A774(v9 - 56, v159, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C712A774(v160, &v153, &qword_1EC2181B8, &unk_1C7570F90);
      v161 = v153;
      v12 = v154;
      sub_1C6F699F8(v155, v156);
      sub_1C712A774(v159, &v153, &qword_1EC2181B8, &unk_1C7570F90);
      v13 = v154;
      v148 = v153;
      sub_1C6F699F8(v155, v150);
      v14 = v157;
      v15 = v158;
      __swift_project_boxed_opaque_existential_1(v156, v157);
      LODWORD(v14) = (*(v15 + 40))(v14, v15);
      v16 = v151;
      v17 = v152;
      __swift_project_boxed_opaque_existential_1(v150, v151);
      if ((v14 ^ (*(v17 + 40))(v16, v17)))
      {

        v18 = v157;
        v19 = v158;
        __swift_project_boxed_opaque_existential_1(v156, v157);
        v20 = (*(v19 + 40))(v18, v19);
      }

      else
      {
        v21 = v157;
        v22 = v158;
        __swift_project_boxed_opaque_existential_1(v156, v157);
        LODWORD(v21) = (*(v22 + 32))(v21, v22);
        v23 = v151;
        v24 = v152;
        __swift_project_boxed_opaque_existential_1(v150, v151);
        if (((v21 ^ (*(v24 + 32))(v23, v24)) & 1) == 0)
        {
          v27 = v157;
          v28 = v158;
          __swift_project_boxed_opaque_existential_1(v156, v157);
          (*(v28 + 16))(v27, v28);
          v30 = v29;
          v31 = v151;
          v32 = v152;
          __swift_project_boxed_opaque_existential_1(v150, v151);
          (*(v32 + 16))(v31, v32);
          v4 = v30 != 0;
          if (v30)
          {
            if (v33)
            {

              v5 = v141;
              goto LABEL_17;
            }

            v5 = v141;
LABEL_24:
          }

          else
          {
            v5 = v141;
            if (v33)
            {

              goto LABEL_24;
            }

LABEL_17:
            if (v161 == v148 && v12 == v13)
            {

              v4 = 0;
            }

            else
            {
              v4 = sub_1C7551DBC();
            }
          }

          v8 = v135;
          goto LABEL_26;
        }

        v25 = v157;
        v26 = v158;
        __swift_project_boxed_opaque_existential_1(v156, v157);
        v20 = (*(v26 + 32))(v25, v26);
      }

      v4 = v20;
      v5 = v141;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_1(v150);
      __swift_destroy_boxed_opaque_existential_1(v156);
      sub_1C6FD7FC8(v159, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C6FD7FC8(v160, &qword_1EC2181B8, &unk_1C7570F90);
      v9 += 56;
      ++v6;
      v10 = v11 + 1;
      if ((v146 ^ v4))
      {
        goto LABEL_29;
      }
    }

    v6 = v5;
LABEL_29:
    if ((v146 & 1) == 0)
    {
      v7 = v137;
      goto LABEL_42;
    }

    if (v6 < v8)
    {
      goto LABEL_165;
    }

    v7 = v137;
    if (v8 < v6)
    {
      if (v5 >= v11)
      {
        v35 = v11;
      }

      else
      {
        v35 = v5;
      }

      v36 = 56 * v35 - 56;
      v37 = v6;
      v38 = v8;
      v39 = v139;
      do
      {
        if (v38 != --v37)
        {
          v40 = *a3;
          if (!*a3)
          {
            goto LABEL_170;
          }

          v41 = v40 + v39;
          v42 = *(v40 + v39 + 48);
          v43 = v40 + v36;
          v45 = *(v41 + 16);
          v44 = *(v41 + 32);
          v46 = *v41;
          v48 = *(v43 + 16);
          v47 = *(v43 + 32);
          v49 = *v43;
          *(v41 + 48) = *(v43 + 48);
          *(v41 + 16) = v48;
          *(v41 + 32) = v47;
          *v41 = v49;
          *v43 = v46;
          *(v43 + 16) = v45;
          *(v43 + 32) = v44;
          *(v43 + 48) = v42;
        }

        ++v38;
        v36 -= 56;
        v39 += 56;
      }

      while (v38 < v37);
    }

LABEL_42:
    v50 = a3[1];
    if (v6 < v50)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_162;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_77:
    if (v6 < v8)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v7 + 2) + 1, 1, v7);
      v7 = v124;
    }

    v4 = *(v7 + 2);
    v82 = *(v7 + 3);
    v83 = v4 + 1;
    if (v4 >= v82 >> 1)
    {
      sub_1C6FB17EC(v82 > 1, v4 + 1, 1, v7);
      v7 = v125;
    }

    *(v7 + 2) = v83;
    v84 = v7 + 32;
    v85 = &v7[16 * v4 + 32];
    *v85 = v8;
    *(v85 + 1) = v6;
    v161 = *result;
    if (!v161)
    {
      goto LABEL_171;
    }

    if (v4)
    {
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = &v7[16 * v83];
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v7 + 4);
          v90 = *(v7 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_97:
          if (v92)
          {
            goto LABEL_148;
          }

          v104 = *v88;
          v103 = *(v88 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_151;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_156;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_119;
          }

          goto LABEL_112;
        }

        if (v83 < 2)
        {
          goto LABEL_150;
        }

        v111 = *v88;
        v110 = *(v88 + 1);
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_112:
        if (v107)
        {
          goto LABEL_153;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_155;
        }

        if (v114 < v106)
        {
          goto LABEL_126;
        }

LABEL_119:
        if (v86 - 1 >= v83)
        {
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
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_168;
        }

        v118 = v6;
        v119 = v7;
        v120 = &v84[16 * v86 - 16];
        v121 = *v120;
        v4 = &v84[16 * v86];
        v122 = *(v4 + 8);
        sub_1C7481F74((*a3 + 56 * *v120), (*a3 + 56 * *v4), *a3 + 56 * v122, v161);
        if (v144)
        {
          goto LABEL_140;
        }

        if (v122 < v121)
        {
          goto LABEL_143;
        }

        v123 = *(v119 + 2);
        if (v86 > v123)
        {
          goto LABEL_144;
        }

        *v120 = v121;
        *(v120 + 1) = v122;
        if (v86 >= v123)
        {
          goto LABEL_145;
        }

        v83 = v123 - 1;
        sub_1C7423CF4((v4 + 16), v123 - 1 - v86, &v84[16 * v86]);
        v7 = v119;
        *(v119 + 2) = v123 - 1;
        v6 = v118;
        if (v123 <= 2)
        {
          goto LABEL_126;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_146;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_147;
      }

      v100 = *(v88 + 1);
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_149;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_152;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_160;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_119;
      }

      goto LABEL_97;
    }

LABEL_126:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_130;
    }
  }

  v51 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_163;
  }

  if (v51 >= v50)
  {
    v51 = a3[1];
  }

  if (v51 < v8)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v7 = sub_1C7420830();
LABEL_132:
    v126 = (v7 + 16);
    for (i = *(v7 + 2); i >= 2; *v126 = i)
    {
      if (!*a3)
      {
        goto LABEL_169;
      }

      v128 = &v7[16 * i];
      v129 = *v128;
      v130 = &v126[2 * i];
      v131 = *(v130 + 1);
      sub_1C7481F74((*a3 + 56 * *v128), (*a3 + 56 * *v130), *a3 + 56 * v131, v161);
      if (v4)
      {
        break;
      }

      if (v131 < v129)
      {
        goto LABEL_157;
      }

      if (i - 2 >= *v126)
      {
        goto LABEL_158;
      }

      *v128 = v129;
      *(v128 + 1) = v131;
      v132 = *v126 - i;
      if (*v126 < i)
      {
        goto LABEL_159;
      }

      i = *v126 - 1;
      sub_1C7423CF4(v130 + 16, v132, v130);
    }

    goto LABEL_140;
  }

  if (v6 == v51)
  {
    goto LABEL_77;
  }

  v136 = v51;
  v138 = v7;
  v147 = *a3;
  v52 = *a3 + 56 * v6;
  v53 = v8 - v6;
  while (2)
  {
    v145 = v6;
    v140 = v53;
    v142 = v52;
LABEL_52:
    sub_1C712A774(v52, v160, &qword_1EC2181B8, &unk_1C7570F90);
    v54 = v52 - 56;
    sub_1C712A774(v52 - 56, v159, &qword_1EC2181B8, &unk_1C7570F90);
    sub_1C712A774(v160, &v153, &qword_1EC2181B8, &unk_1C7570F90);
    v4 = v154;
    v161 = v153;
    sub_1C6F699F8(v155, v156);
    sub_1C712A774(v159, &v153, &qword_1EC2181B8, &unk_1C7570F90);
    v55 = v154;
    v149 = v153;
    sub_1C6F699F8(v155, v150);
    v56 = v157;
    v57 = v158;
    __swift_project_boxed_opaque_existential_1(v156, v157);
    LODWORD(v56) = (*(v57 + 40))(v56, v57);
    v59 = v151;
    v58 = v152;
    __swift_project_boxed_opaque_existential_1(v150, v151);
    if ((v56 ^ (*(v58 + 40))(v59, v58)))
    {

      v4 = v157;
      v60 = v158;
      __swift_project_boxed_opaque_existential_1(v156, v157);
      v61 = (*(v60 + 40))(v4, v60);
      goto LABEL_56;
    }

    v62 = v157;
    v63 = v158;
    __swift_project_boxed_opaque_existential_1(v156, v157);
    LODWORD(v62) = (*(v63 + 32))(v62, v63);
    v64 = v151;
    v65 = v152;
    __swift_project_boxed_opaque_existential_1(v150, v151);
    if (((v62 ^ (*(v65 + 32))(v64, v65)) & 1) == 0)
    {
      v68 = v157;
      v69 = v158;
      __swift_project_boxed_opaque_existential_1(v156, v157);
      (*(v69 + 16))(v68, v69);
      v71 = v70;
      v72 = v151;
      v73 = v152;
      __swift_project_boxed_opaque_existential_1(v150, v151);
      (*(v73 + 16))(v72, v73);
      v67 = v71 != 0;
      if (v71)
      {
        if (v74)
        {

LABEL_62:
          if (v161 == v149 && v4 == v55)
          {

            __swift_destroy_boxed_opaque_existential_1(v150);
            __swift_destroy_boxed_opaque_existential_1(v156);
            sub_1C6FD7FC8(v159, &qword_1EC2181B8, &unk_1C7570F90);
            sub_1C6FD7FC8(v160, &qword_1EC2181B8, &unk_1C7570F90);
LABEL_74:
            v6 = v145 + 1;
            v52 = v142 + 56;
            v53 = v140 - 1;
            if (v145 + 1 == v136)
            {
              v6 = v136;
              v7 = v138;
              v8 = v135;
              goto LABEL_77;
            }

            continue;
          }

          v67 = sub_1C7551DBC();

          goto LABEL_69;
        }
      }

      else
      {
        if (!v74)
        {
          goto LABEL_62;
        }
      }

LABEL_69:

      goto LABEL_70;
    }

    break;
  }

  v4 = v157;
  v66 = v158;
  __swift_project_boxed_opaque_existential_1(v156, v157);
  v61 = (*(v66 + 32))(v4, v66);
LABEL_56:
  v67 = v61;
LABEL_70:
  __swift_destroy_boxed_opaque_existential_1(v150);
  __swift_destroy_boxed_opaque_existential_1(v156);
  sub_1C6FD7FC8(v159, &qword_1EC2181B8, &unk_1C7570F90);
  sub_1C6FD7FC8(v160, &qword_1EC2181B8, &unk_1C7570F90);
  if ((v67 & 1) == 0)
  {
    goto LABEL_74;
  }

  if (v147)
  {
    v76 = *(v52 + 48);
    v78 = *(v52 + 16);
    v77 = *(v52 + 32);
    v79 = *v52;
    v80 = *(v52 - 40);
    *v52 = *v54;
    *(v52 + 16) = v80;
    *(v52 + 32) = *(v52 - 24);
    *(v52 + 48) = *(v52 - 8);
    *v54 = v79;
    *(v52 - 40) = v78;
    *(v52 - 24) = v77;
    v52 -= 56;
    *(v54 + 48) = v76;
    if (__CFADD__(v53++, 1))
    {
      goto LABEL_74;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}

void sub_1C7480454(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_118;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v9 = v7;
  v10 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    v15 = v7 + 1;
  }

  else
  {
    v11 = v6;
    v12 = (*a3 + 16 * v9);
    LODWORD(v113) = sub_1C747E528(*(*a3 + 16 * v10), *(*a3 + 16 * v10 + 8), *v12);
    if (v5)
    {
LABEL_128:

      return;
    }

    v108 = v9;
    v13 = 16 * v9;
    v14 = v12 + 32;
    v15 = v11;
    while (v10 + 1 < v15)
    {
      v16 = 0xE600000000000000;
      v17 = 0x6E6F73726570;
      switch(*v14)
      {
        case 1:
          v16 = 0xE500000000000000;
          v17 = 0x646C696863;
          break;
        case 2:
          v16 = 0xE400000000000000;
          v17 = 2036490594;
          break;
        case 3:
          v16 = 0xE500000000000000;
          v17 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v18 = 0xE600000000000000;
      v19 = 0x6E6F73726570;
      switch(*(v14 - 16))
      {
        case 1:
          v18 = 0xE500000000000000;
          v19 = 0x646C696863;
          break;
        case 2:
          v18 = 0xE400000000000000;
          v19 = 2036490594;
          break;
        case 3:
          v18 = 0xE500000000000000;
          v19 = 0x726568746FLL;
          break;
        default:
          break;
      }

      if (v17 == v19 && v16 == v18)
      {

        if (v113)
        {
          v15 = v10 + 1;
          v9 = v108;
          goto LABEL_28;
        }
      }

      else
      {
        v21 = v5;
        v22 = sub_1C7551DBC();

        v23 = v113 ^ v22;
        v5 = v21;
        v15 = v11;
        if (v23)
        {
          v15 = v10 + 1;
          goto LABEL_25;
        }
      }

      v14 += 16;
      ++v10;
    }

    v10 = v11 - 1;
LABEL_25:
    v9 = v108;
    if ((v113 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (v15 < v9)
    {
      goto LABEL_150;
    }

    if (v9 <= v10)
    {
      v24 = 0;
      v25 = 16 * v15;
      v26 = v9;
      do
      {
        if (v26 != v15 + v24 - 1)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_157;
          }

          v28 = (v27 + v13);
          v29 = v27 + v25;
          v30 = *v28;
          v31 = *(v28 + 1);
          *v28 = *(v29 - 16);
          *(v29 - 16) = v30;
          *(v29 - 8) = v31;
        }

        ++v26;
        --v24;
        v25 -= 16;
        v13 += 16;
      }

      while (v26 < v15 + v24);
    }
  }

LABEL_35:
  v32 = a3[1];
  if (v15 >= v32)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v15, v9))
  {
    goto LABEL_149;
  }

  if (v15 - v9 >= a4)
  {
    goto LABEL_43;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_151;
  }

  if (v9 + a4 < v32)
  {
    v32 = v9 + a4;
  }

  if (v32 < v9)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v15 == v32)
  {
LABEL_43:
    v33 = v15;
    goto LABEL_44;
  }

  v112 = v32;
  v105 = v8;
  v106 = v5;
  v80 = *a3;
  v81 = *a3 + 16 * v15 - 16;
  v109 = v9;
  v82 = v15;
  v83 = v9 - v15;
LABEL_96:
  v113 = v82;
  v84 = *(v80 + 16 * v82);
  v85 = v83;
  v86 = v81;
  while (1)
  {
    v87 = 0xE600000000000000;
    v88 = 0x6E6F73726570;
    switch(v84)
    {
      case 1:
        v87 = 0xE500000000000000;
        v88 = 0x646C696863;
        break;
      case 2:
        v87 = 0xE400000000000000;
        v88 = 2036490594;
        break;
      case 3:
        v87 = 0xE500000000000000;
        v88 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v89 = 0xE600000000000000;
    v90 = 0x6E6F73726570;
    switch(*v86)
    {
      case 1:
        v89 = 0xE500000000000000;
        v90 = 0x646C696863;
        break;
      case 2:
        v89 = 0xE400000000000000;
        v90 = 2036490594;
        break;
      case 3:
        v89 = 0xE500000000000000;
        v90 = 0x726568746FLL;
        break;
      default:
        break;
    }

    if (v88 == v90 && v87 == v89)
    {

LABEL_115:
      v82 = (v113 + 1);
      v81 += 16;
      --v83;
      if (v113 + 1 != v112)
      {
        goto LABEL_96;
      }

      v8 = v105;
      v5 = v106;
      v9 = v109;
      v33 = v112;
LABEL_44:
      if (v33 < v9)
      {
        goto LABEL_148;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
        v8 = v95;
      }

      v35 = *(v8 + 2);
      v34 = *(v8 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_1C6FB17EC(v34 > 1, v35 + 1, 1, v8);
        v8 = v96;
      }

      *(v8 + 2) = v36;
      v37 = v8 + 32;
      v38 = &v8[16 * v35 + 32];
      *v38 = v9;
      *(v38 + 1) = v33;
      v113 = *result;
      if (!*result)
      {
        goto LABEL_158;
      }

      v111 = v33;
      if (v35)
      {
        while (2)
        {
          v39 = v36 - 1;
          v40 = &v37[16 * v36 - 16];
          v41 = &v8[16 * v36];
          if (v36 >= 4)
          {
            v46 = &v37[16 * v36];
            v47 = *(v46 - 8);
            v48 = *(v46 - 7);
            v52 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            if (v52)
            {
              goto LABEL_133;
            }

            v51 = *(v46 - 6);
            v50 = *(v46 - 5);
            v52 = __OFSUB__(v50, v51);
            v44 = v50 - v51;
            v45 = v52;
            if (v52)
            {
              goto LABEL_134;
            }

            v53 = *(v41 + 1);
            v54 = v53 - *v41;
            if (__OFSUB__(v53, *v41))
            {
              goto LABEL_136;
            }

            v52 = __OFADD__(v44, v54);
            v55 = v44 + v54;
            if (v52)
            {
              goto LABEL_139;
            }

            if (v55 >= v49)
            {
              v69 = *v40;
              v68 = *(v40 + 1);
              v52 = __OFSUB__(v68, v69);
              v70 = v68 - v69;
              if (v52)
              {
                goto LABEL_147;
              }

              if (v44 < v70)
              {
                v39 = v36 - 2;
              }
            }

            else
            {
LABEL_64:
              if (v45)
              {
                goto LABEL_135;
              }

              v57 = *v41;
              v56 = *(v41 + 1);
              v58 = __OFSUB__(v56, v57);
              v59 = v56 - v57;
              v60 = v58;
              if (v58)
              {
                goto LABEL_138;
              }

              v61 = *(v40 + 1);
              v62 = v61 - *v40;
              if (__OFSUB__(v61, *v40))
              {
                goto LABEL_141;
              }

              if (__OFADD__(v59, v62))
              {
                goto LABEL_143;
              }

              if (v59 + v62 < v44)
              {
                goto LABEL_79;
              }

              if (v44 < v62)
              {
                v39 = v36 - 2;
              }
            }
          }

          else
          {
            if (v36 == 3)
            {
              v42 = *(v8 + 4);
              v43 = *(v8 + 5);
              v52 = __OFSUB__(v43, v42);
              v44 = v43 - v42;
              v45 = v52;
              goto LABEL_64;
            }

            if (v36 < 2)
            {
              goto LABEL_137;
            }

            v64 = *v41;
            v63 = *(v41 + 1);
            v52 = __OFSUB__(v63, v64);
            v59 = v63 - v64;
            v60 = v52;
LABEL_79:
            if (v60)
            {
              goto LABEL_140;
            }

            v66 = *v40;
            v65 = *(v40 + 1);
            v52 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v52)
            {
              goto LABEL_142;
            }

            if (v67 < v59)
            {
              break;
            }
          }

          if (v39 - 1 >= v36)
          {
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
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          if (!*a3)
          {
            goto LABEL_155;
          }

          v71 = v8;
          v72 = &v37[16 * v39 - 16];
          v73 = *v72;
          v74 = v37;
          v75 = v39;
          v76 = &v37[16 * v39];
          v77 = *(v76 + 1);
          sub_1C7482364((*a3 + 16 * *v72), (*a3 + 16 * *v76), (*a3 + 16 * v77), v113);
          if (v5)
          {
            goto LABEL_128;
          }

          if (v77 < v73)
          {
            goto LABEL_130;
          }

          v5 = *(v71 + 2);
          if (v75 > v5)
          {
            goto LABEL_131;
          }

          *v72 = v73;
          *(v72 + 1) = v77;
          if (v75 >= v5)
          {
            goto LABEL_132;
          }

          v78 = v75;
          v36 = v5 - 1;
          sub_1C7423CF4(v76 + 16, v5 - 1 - v78, v76);
          v8 = v71;
          *(v71 + 2) = v5 - 1;
          v79 = v5 > 2;
          v5 = 0;
          v37 = v74;
          if (!v79)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      v7 = v111;
      if (v111 >= v6)
      {
LABEL_118:
        v113 = *result;
        if (!*result)
        {
          goto LABEL_159;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_120:
          v97 = v8 + 16;
          v98 = *(v8 + 2);
          while (v98 >= 2)
          {
            if (!*a3)
            {
              goto LABEL_156;
            }

            v99 = v8;
            v100 = &v8[16 * v98];
            v101 = *v100;
            v102 = &v97[2 * v98];
            v103 = *(v102 + 1);
            sub_1C7482364((*a3 + 16 * *v100), (*a3 + 16 * *v102), (*a3 + 16 * v103), v113);
            if (v5)
            {
              break;
            }

            if (v103 < v101)
            {
              goto LABEL_144;
            }

            if (v98 - 2 >= *v97)
            {
              goto LABEL_145;
            }

            *v100 = v101;
            *(v100 + 1) = v103;
            v104 = *v97 - v98;
            if (*v97 < v98)
            {
              goto LABEL_146;
            }

            v98 = *v97 - 1;
            sub_1C7423CF4(v102 + 16, v104, v102);
            *v97 = v98;
            v8 = v99;
          }

          goto LABEL_128;
        }

LABEL_153:
        v8 = sub_1C7420830();
        goto LABEL_120;
      }

      goto LABEL_3;
    }

    v92 = sub_1C7551DBC();

    if ((v92 & 1) == 0)
    {
      goto LABEL_115;
    }

    if (!v80)
    {
      break;
    }

    v84 = *(v86 + 16);
    v93 = *(v86 + 24);
    *(v86 + 16) = *v86;
    *v86 = v84;
    *(v86 + 8) = v93;
    v86 -= 16;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_115;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

void sub_1C7480C84(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 16;
        v13 = v15;
        v16 = v7 + 2;
        v17 = *(*a3 + 16 * v9);
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 8;
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

            v21 = 16 * v6;
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

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = *(v25 + 1);
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
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
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 3);
                *(v34 + 1) = *v34;
                *v34 = v32;
                *(v34 + 1) = v35;
                v34 -= 8;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
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

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v81;
      }

      v38 = v8[2];
      v37 = v8[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_1C6FB17EC(v37 > 1, v38 + 1, 1, v8);
        v8 = v82;
      }

      v8[2] = v39;
      v40 = v8 + 4;
      v41 = &v8[2 * v38 + 4];
      *v41 = v7;
      v41[1] = v9;
      v86 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = &v40[2 * v39 - 2];
          v44 = &v8[2 * v39];
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = v8[4];
            v46 = v8[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
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

          v74 = &v40[2 * v42 - 2];
          v75 = *v74;
          v76 = &v40[2 * v42];
          v77 = v76[1];
          sub_1C7482728((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v86);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = v8[2];
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          memmove(&v40[2 * v42], v76 + 2, 16 * (v79 - 1 - v42));
          v78[2] = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = &v40[2 * v39];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C7481E48(&v88, *result, a3);
LABEL_89:
}

void sub_1C748116C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_186:
    v123 = *result;
    if (!*result)
    {
      goto LABEL_227;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_188:
      v106 = v8 + 16;
      v107 = *(v8 + 2);
      while (v107 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_224;
        }

        v108 = v8;
        v109 = &v8[16 * v107];
        v110 = *v109;
        v111 = &v106[2 * v107];
        v112 = *(v111 + 1);
        sub_1C74828AC((*a3 + 16 * *v109), (*a3 + 16 * *v111), (*a3 + 16 * v112), v123);
        if (v5)
        {
          break;
        }

        if (v112 < v110)
        {
          goto LABEL_212;
        }

        if (v107 - 2 >= *v106)
        {
          goto LABEL_213;
        }

        *v109 = v110;
        *(v109 + 1) = v112;
        v113 = *v106 - v107;
        if (*v106 < v107)
        {
          goto LABEL_214;
        }

        v107 = *v106 - 1;
        sub_1C7423CF4(v111 + 16, v113, v111);
        *v106 = v107;
        v8 = v108;
      }

LABEL_196:

      return;
    }

LABEL_221:
    v8 = sub_1C7420830();
    goto LABEL_188;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v11 = v7;
      v12 = *a3 + 16 * v7;
      LODWORD(v123) = sub_1C747E65C(*(*a3 + 16 * v10));
      if (v5)
      {
        goto LABEL_196;
      }

      v120 = v6 - 1;
      v117 = v11;
      v13 = 16 * v11;
      v14 = (v12 + 32);
      while (v10 + 1 < v6)
      {
        v15 = 0xEC00000065636E61;
        v16 = 0x746E696175716361;
        switch(*v14)
        {
          case 1:
            v15 = 0xE700000000000000;
            v17 = 0x6568746F7262;
            goto LABEL_11;
          case 2:
            v15 = 0xE500000000000000;
            v16 = 0x646C696863;
            break;
          case 3:
            v16 = 0xD000000000000015;
            v15 = 0x80000001C7596B70;
            break;
          case 4:
            v15 = 0xE800000000000000;
            v19 = 0x6B726F776F63;
            goto LABEL_22;
          case 5:
            v15 = 0xE800000000000000;
            v19 = 0x746867756164;
LABEL_22:
            v16 = v19 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v16 = 0xD000000000000013;
            v15 = 0x80000001C7596BA0;
            break;
          case 7:
            v15 = 0xE600000000000000;
            v16 = 0x796C696D6166;
            break;
          case 8:
            v15 = 0xE600000000000000;
            v18 = 1752457574;
            goto LABEL_27;
          case 9:
            v15 = 0xE600000000000000;
            v16 = 0x646E65697266;
            break;
          case 0xA:
            v16 = 0xD000000000000010;
            v15 = 0x80000001C7596BD0;
            break;
          case 0xB:
            v15 = 0xE200000000000000;
            v16 = 25965;
            break;
          case 0xC:
            v16 = 0x726568746F6DLL;
            v15 = 0xE600000000000000;
            break;
          case 0xD:
            v15 = 0xE600000000000000;
            v16 = 0x746E65726170;
            break;
          case 0xE:
            v15 = 0xE700000000000000;
            v17 = 0x656E74726170;
LABEL_11:
            v16 = v17 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 0xF:
            v15 = 0xE300000000000000;
            v16 = 7237491;
            break;
          case 0x10:
            v15 = 0xE600000000000000;
            v18 = 1953720691;
LABEL_27:
            v16 = v18 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 0x11:
            v15 = 0xE300000000000000;
            v16 = 7367030;
            break;
          default:
            break;
        }

        v20 = 0x746E696175716361;
        v21 = 0xEC00000065636E61;
        switch(*(v14 - 16))
        {
          case 1:
            v21 = 0xE700000000000000;
            v22 = 0x6568746F7262;
            goto LABEL_32;
          case 2:
            v21 = 0xE500000000000000;
            v20 = 0x646C696863;
            break;
          case 3:
            v20 = 0xD000000000000015;
            v21 = 0x80000001C7596B70;
            break;
          case 4:
            v21 = 0xE800000000000000;
            v24 = 0x6B726F776F63;
            goto LABEL_43;
          case 5:
            v21 = 0xE800000000000000;
            v24 = 0x746867756164;
LABEL_43:
            v20 = v24 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v20 = 0xD000000000000013;
            v21 = 0x80000001C7596BA0;
            break;
          case 7:
            v21 = 0xE600000000000000;
            v20 = 0x796C696D6166;
            break;
          case 8:
            v21 = 0xE600000000000000;
            v23 = 1752457574;
            goto LABEL_48;
          case 9:
            v21 = 0xE600000000000000;
            v20 = 0x646E65697266;
            break;
          case 0xA:
            v20 = 0xD000000000000010;
            v21 = 0x80000001C7596BD0;
            break;
          case 0xB:
            v21 = 0xE200000000000000;
            v20 = 25965;
            break;
          case 0xC:
            v20 = 0x726568746F6DLL;
            v21 = 0xE600000000000000;
            break;
          case 0xD:
            v21 = 0xE600000000000000;
            v20 = 0x746E65726170;
            break;
          case 0xE:
            v21 = 0xE700000000000000;
            v22 = 0x656E74726170;
LABEL_32:
            v20 = v22 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 0xF:
            v21 = 0xE300000000000000;
            v20 = 7237491;
            break;
          case 0x10:
            v21 = 0xE600000000000000;
            v23 = 1953720691;
LABEL_48:
            v20 = v23 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 0x11:
            v21 = 0xE300000000000000;
            v20 = 7367030;
            break;
          default:
            break;
        }

        if (v16 == v20 && v15 == v21)
        {

          if (v123)
          {
            v6 = v10 + 1;
            v9 = v117;
            goto LABEL_62;
          }
        }

        else
        {
          v26 = v6;
          v27 = v5;
          v28 = sub_1C7551DBC();

          v29 = v123 ^ v28;
          v5 = v27;
          v6 = v26;
          if (v29)
          {
            v6 = v10 + 1;
            goto LABEL_59;
          }
        }

        v14 += 16;
        ++v10;
      }

      v10 = v120;
LABEL_59:
      v9 = v117;
      if ((v123 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_62:
      if (v6 < v9)
      {
        goto LABEL_218;
      }

      if (v9 <= v10)
      {
        v30 = 0;
        v31 = 16 * v6;
        v32 = v9;
        do
        {
          if (v32 != v6 + v30 - 1)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_225;
            }

            v34 = (v33 + v13);
            v35 = v33 + v31;
            v36 = *v34;
            v37 = *(v34 + 1);
            *v34 = *(v35 - 16);
            *(v35 - 16) = v36;
            *(v35 - 8) = v37;
          }

          ++v32;
          --v30;
          v31 -= 16;
          v13 += 16;
        }

        while (v32 < v6 + v30);
      }
    }

LABEL_69:
    v38 = a3[1];
    if (v6 < v38)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_217;
      }

      if (v6 - v9 < a4)
      {
        break;
      }
    }

LABEL_133:
    if (v6 < v9)
    {
      goto LABEL_216;
    }

    v122 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = v104;
    }

    v60 = *(v8 + 2);
    v59 = *(v8 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      sub_1C6FB17EC(v59 > 1, v60 + 1, 1, v8);
      v8 = v105;
    }

    *(v8 + 2) = v61;
    v62 = v8 + 32;
    v63 = &v8[16 * v60 + 32];
    *v63 = v9;
    *(v63 + 1) = v6;
    v123 = *result;
    if (!*result)
    {
      goto LABEL_226;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        v65 = &v62[16 * v61 - 16];
        v66 = &v8[16 * v61];
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v67 = *(v8 + 4);
          v68 = *(v8 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_153:
          if (v70)
          {
            goto LABEL_203;
          }

          v82 = *v66;
          v81 = *(v66 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_206;
          }

          v86 = *(v65 + 1);
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_209;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_211;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v61 - 2;
            }

            goto LABEL_175;
          }

          goto LABEL_168;
        }

        if (v61 < 2)
        {
          goto LABEL_205;
        }

        v89 = *v66;
        v88 = *(v66 + 1);
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_168:
        if (v85)
        {
          goto LABEL_208;
        }

        v91 = *v65;
        v90 = *(v65 + 1);
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_210;
        }

        if (v92 < v84)
        {
          goto LABEL_182;
        }

LABEL_175:
        if (v64 - 1 >= v61)
        {
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

        if (!*a3)
        {
          goto LABEL_223;
        }

        v96 = v8;
        v97 = &v62[16 * v64 - 16];
        v98 = *v97;
        v99 = v64;
        v100 = &v62[16 * v64];
        v101 = *(v100 + 1);
        sub_1C74828AC((*a3 + 16 * *v97), (*a3 + 16 * *v100), (*a3 + 16 * v101), v123);
        if (v5)
        {
          goto LABEL_196;
        }

        if (v101 < v98)
        {
          goto LABEL_198;
        }

        v5 = *(v96 + 2);
        if (v99 > v5)
        {
          goto LABEL_199;
        }

        *v97 = v98;
        *(v97 + 1) = v101;
        if (v99 >= v5)
        {
          goto LABEL_200;
        }

        v102 = v99;
        v61 = v5 - 1;
        sub_1C7423CF4(v100 + 16, v5 - 1 - v102, v100);
        v8 = v96;
        *(v96 + 2) = v5 - 1;
        v103 = v5 > 2;
        v5 = 0;
        if (!v103)
        {
          goto LABEL_182;
        }
      }

      v71 = &v62[16 * v61];
      v72 = *(v71 - 8);
      v73 = *(v71 - 7);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_201;
      }

      v76 = *(v71 - 6);
      v75 = *(v71 - 5);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_202;
      }

      v78 = *(v66 + 1);
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_204;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_207;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = *(v65 + 1);
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_215;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_175;
      }

      goto LABEL_153;
    }

LABEL_182:
    v6 = a3[1];
    v7 = v122;
    if (v122 >= v6)
    {
      goto LABEL_186;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_219;
  }

  if (v9 + a4 < v38)
  {
    v38 = v9 + a4;
  }

  if (v38 < v9)
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  if (v6 == v38)
  {
    goto LABEL_133;
  }

  v121 = v38;
  v114 = v8;
  v115 = v5;
  v39 = *a3;
  v40 = *a3 + 16 * v6 - 16;
  v118 = v9;
  v41 = v9 - v6;
LABEL_78:
  v123 = v6;
  v42 = *(v39 + 16 * v6);
  v43 = v41;
  v44 = v40;
  while (1)
  {
    v45 = 0xEC00000065636E61;
    v46 = 0x746E696175716361;
    switch(v42)
    {
      case 1:
        v45 = 0xE700000000000000;
        v47 = 0x6568746F7262;
        goto LABEL_83;
      case 2:
        v45 = 0xE500000000000000;
        v46 = 0x646C696863;
        break;
      case 3:
        v46 = 0xD000000000000015;
        v45 = 0x80000001C7596B70;
        break;
      case 4:
        v45 = 0xE800000000000000;
        v49 = 0x6B726F776F63;
        goto LABEL_94;
      case 5:
        v45 = 0xE800000000000000;
        v49 = 0x746867756164;
LABEL_94:
        v46 = v49 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v46 = 0xD000000000000013;
        v45 = 0x80000001C7596BA0;
        break;
      case 7:
        v45 = 0xE600000000000000;
        v46 = 0x796C696D6166;
        break;
      case 8:
        v45 = 0xE600000000000000;
        v48 = 1752457574;
        goto LABEL_99;
      case 9:
        v45 = 0xE600000000000000;
        v46 = 0x646E65697266;
        break;
      case 10:
        v46 = 0xD000000000000010;
        v45 = 0x80000001C7596BD0;
        break;
      case 11:
        v45 = 0xE200000000000000;
        v46 = 25965;
        break;
      case 12:
        v46 = 0x726568746F6DLL;
        v45 = 0xE600000000000000;
        break;
      case 13:
        v45 = 0xE600000000000000;
        v46 = 0x746E65726170;
        break;
      case 14:
        v45 = 0xE700000000000000;
        v47 = 0x656E74726170;
LABEL_83:
        v46 = v47 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v45 = 0xE300000000000000;
        v46 = 7237491;
        break;
      case 16:
        v45 = 0xE600000000000000;
        v48 = 1953720691;
LABEL_99:
        v46 = v48 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v45 = 0xE300000000000000;
        v46 = 7367030;
        break;
      default:
        break;
    }

    v50 = 0x746E696175716361;
    v51 = 0xEC00000065636E61;
    switch(*v44)
    {
      case 1:
        v51 = 0xE700000000000000;
        v52 = 0x6568746F7262;
        goto LABEL_104;
      case 2:
        v51 = 0xE500000000000000;
        v50 = 0x646C696863;
        break;
      case 3:
        v50 = 0xD000000000000015;
        v51 = 0x80000001C7596B70;
        break;
      case 4:
        v51 = 0xE800000000000000;
        v54 = 0x6B726F776F63;
        goto LABEL_115;
      case 5:
        v51 = 0xE800000000000000;
        v54 = 0x746867756164;
LABEL_115:
        v50 = v54 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v50 = 0xD000000000000013;
        v51 = 0x80000001C7596BA0;
        break;
      case 7:
        v51 = 0xE600000000000000;
        v50 = 0x796C696D6166;
        break;
      case 8:
        v51 = 0xE600000000000000;
        v53 = 1752457574;
        goto LABEL_120;
      case 9:
        v51 = 0xE600000000000000;
        v50 = 0x646E65697266;
        break;
      case 0xA:
        v50 = 0xD000000000000010;
        v51 = 0x80000001C7596BD0;
        break;
      case 0xB:
        v51 = 0xE200000000000000;
        v50 = 25965;
        break;
      case 0xC:
        v50 = 0x726568746F6DLL;
        v51 = 0xE600000000000000;
        break;
      case 0xD:
        v51 = 0xE600000000000000;
        v50 = 0x746E65726170;
        break;
      case 0xE:
        v51 = 0xE700000000000000;
        v52 = 0x656E74726170;
LABEL_104:
        v50 = v52 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 0xF:
        v51 = 0xE300000000000000;
        v50 = 7237491;
        break;
      case 0x10:
        v51 = 0xE600000000000000;
        v53 = 1953720691;
LABEL_120:
        v50 = v53 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 0x11:
        v51 = 0xE300000000000000;
        v50 = 7367030;
        break;
      default:
        break;
    }

    if (v46 == v50 && v45 == v51)
    {

LABEL_131:
      ++v6;
      v40 += 16;
      --v41;
      if (v123 + 1 == v121)
      {
        v8 = v114;
        v5 = v115;
        v9 = v118;
        v6 = v121;
        goto LABEL_133;
      }

      goto LABEL_78;
    }

    v56 = sub_1C7551DBC();

    if ((v56 & 1) == 0)
    {
      goto LABEL_131;
    }

    if (!v39)
    {
      break;
    }

    v42 = *(v44 + 16);
    v57 = *(v44 + 24);
    *(v44 + 16) = *v44;
    *v44 = v42;
    *(v44 + 8) = v57;
    v44 -= 16;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_131;
    }
  }

  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
}

uint64_t sub_1C7481E48(uint64_t *a1, char *a2, void *a3)
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
    sub_1C7482728((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1C7481F74(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 56;
  v11 = (a3 - a2) / 56;
  if (v9 >= v11)
  {
    sub_1C741E52C(a2, (a3 - a2) / 56, a4);
    v22 = v6 + 56 * v11;
    __src = v6;
    v23 = -v6;
    v24 = a3;
    v48 = -v6;
LABEL_15:
    v25 = (v7 - 56);
    v26 = v24 - 56;
    v27 = v22 - 56;
    v28 = v23 + v22;
    v49 = v7 - 56;
    while (1)
    {
      v12 = v27 + 56;
      if (v27 + 56 <= __src || v7 <= v8)
      {
        v6 = __src;
LABEL_29:
        v39 = (v12 - v6) / 56;
        v40 = v7 < v6 || v7 >= v6 + 56 * v39;
        if (v40 || v7 != v6)
        {
          v41 = 56 * v39;
          v42 = v7;
          goto LABEL_41;
        }

        return 1;
      }

      v53 = v28;
      v30 = v26;
      sub_1C712A774(v27, v52, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C712A774(v25, v51, &qword_1EC2181B8, &unk_1C7570F90);
      v31 = sub_1C747D73C(v52, v51);
      if (v5)
      {
        break;
      }

      v32 = v31;
      sub_1C6FD7FC8(v51, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C6FD7FC8(v52, &qword_1EC2181B8, &unk_1C7570F90);
      v24 = v30;
      if (v32)
      {
        v22 = v27 + 56;
        v18 = v30 + 56 == v7;
        v23 = v48;
        v7 -= 56;
        v5 = 0;
        if (!v18)
        {
          v36 = *v49;
          v37 = *(v49 + 1);
          v38 = *(v49 + 2);
          *(v30 + 48) = *(v49 + 6);
          *(v30 + 16) = v37;
          *(v30 + 32) = v38;
          *v30 = v36;
          v7 = v49;
        }

        goto LABEL_15;
      }

      if (v27 + 56 != v30 + 56)
      {
        v33 = *v27;
        v34 = *(v27 + 16);
        v35 = *(v27 + 32);
        *(v30 + 48) = *(v27 + 48);
        *(v30 + 16) = v34;
        *(v30 + 32) = v35;
        *v30 = v33;
      }

      v26 = v30 - 56;
      v27 -= 56;
      v28 = v53 - 56;
      v5 = 0;
      v25 = (v7 - 56);
    }

    sub_1C6FD7FC8(v51, &qword_1EC2181B8, &unk_1C7570F90);
    sub_1C6FD7FC8(v52, &qword_1EC2181B8, &unk_1C7570F90);
    v45 = __src;
    v46 = v7 < __src || v7 >= &__src[56 * (v53 / 56)];
    if (v46 || v7 != __src)
    {
      v41 = 56 * (v53 / 56);
      v42 = v7;
      goto LABEL_48;
    }
  }

  else
  {
    sub_1C741E52C(a1, (a2 - a1) / 56, a4);
    v12 = v6 + 56 * v9;
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v7 = v8;
        goto LABEL_29;
      }

      sub_1C712A774(v7, v52, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C712A774(v6, v51, &qword_1EC2181B8, &unk_1C7570F90);
      v15 = sub_1C747D73C(v52, v51);
      if (v4)
      {
        break;
      }

      v16 = v15;
      sub_1C6FD7FC8(v51, &qword_1EC2181B8, &unk_1C7570F90);
      sub_1C6FD7FC8(v52, &qword_1EC2181B8, &unk_1C7570F90);
      if (v16)
      {
        v17 = v7;
        v18 = v8 == v7;
        v7 += 56;
      }

      else
      {
        v17 = v6;
        v18 = v8 == v6;
        v6 += 56;
      }

      v13 = a3;
      if (!v18)
      {
        v19 = *v17;
        v20 = *(v17 + 16);
        v21 = *(v17 + 32);
        *(v8 + 6) = *(v17 + 48);
        *(v8 + 1) = v20;
        *(v8 + 2) = v21;
        *v8 = v19;
      }

      v8 += 56;
    }

    sub_1C6FD7FC8(v51, &qword_1EC2181B8, &unk_1C7570F90);
    sub_1C6FD7FC8(v52, &qword_1EC2181B8, &unk_1C7570F90);
    v43 = (v12 - v6) / 56;
    v44 = v8 < v6 || v8 >= v6 + 56 * v43;
    if (v44 || v8 != v6)
    {
      v41 = 56 * v43;
      v42 = v8;
LABEL_41:
      v45 = v6;
LABEL_48:
      memmove(v42, v45, v41);
    }
  }

  return 1;
}

uint64_t sub_1C7482364(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = 0x6E6F73726570;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 < v10)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v11 = &v4[16 * v9];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_55;
      }

      v13 = 0xE600000000000000;
      v14 = 0x6E6F73726570;
      switch(*v6)
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x646C696863;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 2036490594;
          break;
        case 3:
          v13 = 0xE500000000000000;
          v14 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v15 = 0xE600000000000000;
      v16 = 0x6E6F73726570;
      switch(*v4)
      {
        case 1:
          v15 = 0xE500000000000000;
          v16 = 0x646C696863;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 2036490594;
          break;
        case 3:
          v15 = 0xE500000000000000;
          v16 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v17 = v5;
      v18 = v14 == v16 && v13 == v15;
      if (v18)
      {
        break;
      }

      v19 = sub_1C7551DBC();

      if ((v19 & 1) == 0)
      {
        goto LABEL_24;
      }

      v20 = v6;
      v18 = v7 == v6;
      v6 += 16;
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 += 16;
      v5 = v17;
    }

LABEL_24:
    v20 = v4;
    v18 = v7 == v4;
    v4 += 16;
    if (v18)
    {
      goto LABEL_26;
    }

LABEL_25:
    *v7 = *v20;
    goto LABEL_26;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v11 = &v4[16 * v10];
  v34 = v7;
LABEL_28:
  v21 = v6 - 16;
  v5 -= 16;
  v36 = v6;
  v35 = v6 - 16;
  while (v11 > v4 && v6 > v7)
  {
    v23 = *v21;
    v24 = 0xE600000000000000;
    v25 = v8;
    switch(*(v11 - 16))
    {
      case 1:
        v24 = 0xE500000000000000;
        v25 = 0x646C696863;
        break;
      case 2:
        v24 = 0xE400000000000000;
        v25 = 2036490594;
        break;
      case 3:
        v24 = 0xE500000000000000;
        v25 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v26 = 0xE600000000000000;
    v27 = v8;
    switch(v23)
    {
      case 1:
        v26 = 0xE500000000000000;
        v27 = 0x646C696863;
        break;
      case 2:
        v26 = 0xE400000000000000;
        v27 = 2036490594;
        break;
      case 3:
        v26 = 0xE500000000000000;
        v27 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v28 = v8;
    if (v25 == v27 && v24 == v26)
    {
    }

    else
    {
      v30 = sub_1C7551DBC();

      if (v30)
      {
        v7 = v34;
        v6 = v35;
        v8 = v28;
        if (v5 + 16 != v36)
        {
          *v5 = *v35;
          v6 = v35;
        }

        goto LABEL_28;
      }
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v5 -= 16;
    v11 -= 16;
    v6 = v36;
    v7 = v34;
    v21 = v35;
    v8 = v28;
  }

LABEL_55:
  v31 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v31])
  {
    memmove(v6, v4, 16 * v31);
  }

  return 1;
}

uint64_t sub_1C7482728(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 8) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_1C74828AC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_123;
      }

      v12 = 0xEC00000065636E61;
      v13 = 0x746E696175716361;
      switch(*v6)
      {
        case 1:
          v12 = 0xE700000000000000;
          v14 = 0x6568746F7262;
          goto LABEL_11;
        case 2:
          v12 = 0xE500000000000000;
          v13 = 0x646C696863;
          break;
        case 3:
          v13 = 0xD000000000000015;
          v12 = 0x80000001C7596B70;
          break;
        case 4:
          v12 = 0xE800000000000000;
          v16 = 0x6B726F776F63;
          goto LABEL_22;
        case 5:
          v12 = 0xE800000000000000;
          v16 = 0x746867756164;
LABEL_22:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          v13 = 0xD000000000000013;
          v12 = 0x80000001C7596BA0;
          break;
        case 7:
          v12 = 0xE600000000000000;
          v13 = 0x796C696D6166;
          break;
        case 8:
          v12 = 0xE600000000000000;
          v15 = 1752457574;
          goto LABEL_27;
        case 9:
          v12 = 0xE600000000000000;
          v13 = 0x646E65697266;
          break;
        case 10:
          v13 = 0xD000000000000010;
          v12 = 0x80000001C7596BD0;
          break;
        case 11:
          v12 = 0xE200000000000000;
          v13 = 25965;
          break;
        case 12:
          v13 = 0x726568746F6DLL;
          v12 = 0xE600000000000000;
          break;
        case 13:
          v12 = 0xE600000000000000;
          v13 = 0x746E65726170;
          break;
        case 14:
          v12 = 0xE700000000000000;
          v14 = 0x656E74726170;
LABEL_11:
          v13 = v14 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 15:
          v12 = 0xE300000000000000;
          v13 = 7237491;
          break;
        case 16:
          v12 = 0xE600000000000000;
          v15 = 1953720691;
LABEL_27:
          v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 17:
          v12 = 0xE300000000000000;
          v13 = 7367030;
          break;
        default:
          break;
      }

      v17 = 0x746E696175716361;
      v18 = 0xEC00000065636E61;
      switch(*v4)
      {
        case 1:
          v18 = 0xE700000000000000;
          v19 = 0x6568746F7262;
          goto LABEL_32;
        case 2:
          v18 = 0xE500000000000000;
          v17 = 0x646C696863;
          break;
        case 3:
          v17 = 0xD000000000000015;
          v18 = 0x80000001C7596B70;
          break;
        case 4:
          v18 = 0xE800000000000000;
          v21 = 0x6B726F776F63;
          goto LABEL_43;
        case 5:
          v18 = 0xE800000000000000;
          v21 = 0x746867756164;
LABEL_43:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          v17 = 0xD000000000000013;
          v18 = 0x80000001C7596BA0;
          break;
        case 7:
          v18 = 0xE600000000000000;
          v17 = 0x796C696D6166;
          break;
        case 8:
          v18 = 0xE600000000000000;
          v20 = 1752457574;
          goto LABEL_48;
        case 9:
          v18 = 0xE600000000000000;
          v17 = 0x646E65697266;
          break;
        case 10:
          v17 = 0xD000000000000010;
          v18 = 0x80000001C7596BD0;
          break;
        case 11:
          v18 = 0xE200000000000000;
          v17 = 25965;
          break;
        case 12:
          v17 = 0x726568746F6DLL;
          v18 = 0xE600000000000000;
          break;
        case 13:
          v18 = 0xE600000000000000;
          v17 = 0x746E65726170;
          break;
        case 14:
          v18 = 0xE700000000000000;
          v19 = 0x656E74726170;
LABEL_32:
          v17 = v19 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 15:
          v18 = 0xE300000000000000;
          v17 = 7237491;
          break;
        case 16:
          v18 = 0xE600000000000000;
          v20 = 1953720691;
LABEL_48:
          v17 = v20 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 17:
          v18 = 0xE300000000000000;
          v17 = 7367030;
          break;
        default:
          break;
      }

      v22 = v13 == v17 && v12 == v18;
      if (v22)
      {
        break;
      }

      v23 = sub_1C7551DBC();

      if ((v23 & 1) == 0)
      {
        goto LABEL_58;
      }

      v24 = v6;
      v22 = v7 == v6;
      v6 += 16;
      if (!v22)
      {
        goto LABEL_59;
      }

LABEL_60:
      v7 += 16;
    }

LABEL_58:
    v24 = v4;
    v22 = v7 == v4;
    v4 += 16;
    if (v22)
    {
      goto LABEL_60;
    }

LABEL_59:
    *v7 = *v24;
    goto LABEL_60;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_62:
  v25 = v6 - 16;
  v5 -= 16;
  v44 = v6;
  for (i = v6 - 16; v10 > v4 && v6 > v7; v25 = i)
  {
    v27 = *v25;
    v28 = 0xEC00000065636E61;
    v29 = 0x746E696175716361;
    switch(*(v10 - 16))
    {
      case 1:
        v28 = 0xE700000000000000;
        v30 = 0x6568746F7262;
        goto LABEL_72;
      case 2:
        v28 = 0xE500000000000000;
        v29 = 0x646C696863;
        break;
      case 3:
        v29 = 0xD000000000000015;
        v28 = 0x80000001C7596B70;
        break;
      case 4:
        v28 = 0xE800000000000000;
        v32 = 0x6B726F776F63;
        goto LABEL_83;
      case 5:
        v28 = 0xE800000000000000;
        v32 = 0x746867756164;
LABEL_83:
        v29 = v32 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v29 = 0xD000000000000013;
        v28 = 0x80000001C7596BA0;
        break;
      case 7:
        v28 = 0xE600000000000000;
        v29 = 0x796C696D6166;
        break;
      case 8:
        v28 = 0xE600000000000000;
        v31 = 1752457574;
        goto LABEL_88;
      case 9:
        v28 = 0xE600000000000000;
        v29 = 0x646E65697266;
        break;
      case 10:
        v29 = 0xD000000000000010;
        v28 = 0x80000001C7596BD0;
        break;
      case 11:
        v28 = 0xE200000000000000;
        v29 = 25965;
        break;
      case 12:
        v29 = 0x726568746F6DLL;
        v28 = 0xE600000000000000;
        break;
      case 13:
        v28 = 0xE600000000000000;
        v29 = 0x746E65726170;
        break;
      case 14:
        v28 = 0xE700000000000000;
        v30 = 0x656E74726170;
LABEL_72:
        v29 = v30 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v28 = 0xE300000000000000;
        v29 = 7237491;
        break;
      case 16:
        v28 = 0xE600000000000000;
        v31 = 1953720691;
LABEL_88:
        v29 = v31 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v28 = 0xE300000000000000;
        v29 = 7367030;
        break;
      default:
        break;
    }

    v33 = 0x746E696175716361;
    v34 = 0xEC00000065636E61;
    switch(v27)
    {
      case 1:
        v34 = 0xE700000000000000;
        v35 = 0x6568746F7262;
        goto LABEL_93;
      case 2:
        v34 = 0xE500000000000000;
        v33 = 0x646C696863;
        break;
      case 3:
        v33 = 0xD000000000000015;
        v34 = 0x80000001C7596B70;
        break;
      case 4:
        v34 = 0xE800000000000000;
        v37 = 0x6B726F776F63;
        goto LABEL_104;
      case 5:
        v34 = 0xE800000000000000;
        v37 = 0x746867756164;
LABEL_104:
        v33 = v37 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v33 = 0xD000000000000013;
        v34 = 0x80000001C7596BA0;
        break;
      case 7:
        v34 = 0xE600000000000000;
        v33 = 0x796C696D6166;
        break;
      case 8:
        v34 = 0xE600000000000000;
        v36 = 1752457574;
        goto LABEL_109;
      case 9:
        v34 = 0xE600000000000000;
        v33 = 0x646E65697266;
        break;
      case 10:
        v33 = 0xD000000000000010;
        v34 = 0x80000001C7596BD0;
        break;
      case 11:
        v34 = 0xE200000000000000;
        v33 = 25965;
        break;
      case 12:
        v33 = 0x726568746F6DLL;
        v34 = 0xE600000000000000;
        break;
      case 13:
        v34 = 0xE600000000000000;
        v33 = 0x746E65726170;
        break;
      case 14:
        v34 = 0xE700000000000000;
        v35 = 0x656E74726170;
LABEL_93:
        v33 = v35 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v34 = 0xE300000000000000;
        v33 = 7237491;
        break;
      case 16:
        v34 = 0xE600000000000000;
        v36 = 1953720691;
LABEL_109:
        v33 = v36 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v34 = 0xE300000000000000;
        v33 = 7367030;
        break;
      default:
        break;
    }

    if (v29 == v33 && v28 == v34)
    {
    }

    else
    {
      v39 = sub_1C7551DBC();

      if (v39)
      {
        v6 = i;
        if (v5 + 16 != v44)
        {
          *v5 = *i;
          v6 = i;
        }

        goto LABEL_62;
      }
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v5 -= 16;
    v10 -= 16;
    v6 = v44;
  }

LABEL_123:
  v40 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v40])
  {
    memmove(v6, v4, 16 * v40);
  }

  return 1;
}

double sub_1C7483124@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = 0x10000000000;
  if (!*(v2 + 53))
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!*(v2 + 52))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v2 + 51))
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!*(v2 + 50))
  {
    v6 = 0;
  }

  v7 = 256;
  if (!*(v2 + 49))
  {
    v7 = 0;
  }

  return sub_1C747AB40(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), v7 | *(v2 + 48) | v6 | v5 | v4 | v3, *(v2 + 56), a2);
}

uint64_t sub_1C74831B0(uint64_t *a1, void *a2)
{
  v5 = *a1;
  sub_1C75504FC();
  result = sub_1C747E80C(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_29;
  }

  if (v7)
  {
    v8 = *(v5 + 16);
LABEL_29:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v5 + 16);
      if (v9 == v10)
      {
        goto LABEL_29;
      }

      if (v9 >= v10)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        break;
      }

      v11 = v5 + 32;
      v12 = (v5 + 32 + 16 * v9);
      if (a2[2])
      {
        v34 = v5 + 32;
        v36 = v5;
        v14 = *v12;
        v13 = v12[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_57_29();
        while (1)
        {
          v16 = v15 & v35;
          if (((*(a2 + (((v15 & v35) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v15 & v35)) & 1) == 0)
          {
            break;
          }

          v17 = (a2[6] + 16 * v16);
          if (*v17 != v14 || v17[1] != v13)
          {
            v19 = sub_1C7551DBC();
            v15 = v16 + 1;
            if ((v19 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v36;
          goto LABEL_26;
        }

        v5 = v36;
        v11 = v34;
      }

      if (v8 != v9)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        v20 = *(v5 + 16);
        if (v8 >= v20)
        {
          goto LABEL_34;
        }

        if (v9 >= v20)
        {
          goto LABEL_35;
        }

        v21 = (v11 + 16 * v8);
        v23 = *v21;
        v22 = v21[1];
        v24 = v5;
        v26 = *v12;
        v25 = v12[1];
        sub_1C75504FC();
        sub_1C75504FC();
        v27 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E439C();
          v27 = v33;
        }

        v28 = v27;
        v29 = v27 + 32;
        v30 = (v29 + 16 * v8);
        *v30 = v26;
        v30[1] = v25;
        v5 = v28;

        if (v9 >= *(v5 + 16))
        {
          goto LABEL_36;
        }

        v31 = (v29 + 16 * v9);
        *v31 = v23;
        v31[1] = v22;

        *a1 = v5;
      }

      v32 = __OFADD__(v8++, 1);
      if (v32)
      {
        goto LABEL_32;
      }

LABEL_26:
      v32 = __OFADD__(v9++, 1);
      if (v32)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C74833EC(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  sub_1C75504FC();
  result = sub_1C747E700(v6);
  if (v3)
  {
LABEL_20:

    return v2;
  }

  if (v8)
  {
    v2 = *(v6 + 16);

    return v2;
  }

  v2 = result;
  v23 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result; ; i += 16)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v12 = v6 + i;
      MEMORY[0x1EEE9AC00](result);
      sub_1C75504FC();
      v13 = a2;
      v14 = sub_1C70735F4();

      if (v14)
      {
        a2 = v13;
      }

      else
      {
        if (v9 != v2)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v15 = *(v6 + 16);
          if (v2 >= v15)
          {
            goto LABEL_24;
          }

          if (v9 >= v15)
          {
            goto LABEL_25;
          }

          v16 = (v6 + 32 + 16 * v2);
          v17 = v16[1];
          v24 = *v16;
          v18 = *(v12 + 48);
          v19 = *(v12 + 56);
          sub_1C75504FC();
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C70E439C();
            v6 = v22;
          }

          v20 = v6 + 16 * v2;
          *(v20 + 32) = v18;
          *(v20 + 40) = v19;

          if (v9 >= *(v6 + 16))
          {
            goto LABEL_26;
          }

          v21 = v6 + i;
          *(v21 + 48) = v24;
          *(v21 + 56) = v17;

          *v23 = v6;
        }

        a2 = v13;
        ++v2;
      }

      ++v9;
    }

    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C7483600(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v4 = sub_1C7483CCC(v12, v7, v5, a2);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return v4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C71FAC38(0, v7, v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  v8 = OUTLINED_FUNCTION_117_0();
  v10 = sub_1C74838EC(v8, v9, v5, a2);
  if (!v2)
  {
    return v10;
  }

  swift_willThrow();
  return v4;
}

unint64_t *sub_1C7483768(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      a3 = sub_1C7483D50(v11, v7, v5);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = (v12 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1C71FAC38(0, v7, v8);
  v9 = sub_1C74839E0(v8, v7, v5);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_1C74838EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v13) >= 1)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return a4();
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return a4();
    }

    v15 = *(a3 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}