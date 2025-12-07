void *sub_222BA8AF0(unint64_t a1)
{
  v20 = *v1;
  v21 = sub_222BAE908(a1);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222C94C6C())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DC9B30](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v23 = v6;
      sub_222BA8D30(&v23, v21, v20, &v22);

      v9 = v22;
      v10 = *(v22 + 16);
      v11 = v5[2];
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= v5[3] >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v5 = sub_222B4B09C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
        if (*(v9 + 16))
        {
LABEL_19:
          v15 = (v5[3] >> 1) - v5[2];
          type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
          if (v15 < v10)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v16 = v5[2];
            v17 = __OFADD__(v16, v10);
            v18 = v16 + v10;
            if (v17)
            {
              goto LABEL_29;
            }

            v5[2] = v18;
          }

          goto LABEL_5;
        }
      }

      if (v10)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v4;
      if (v8 == i)
      {
        goto LABEL_32;
      }
    }

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
LABEL_30:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_32:

  return v5;
}

void sub_222BA8D30(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v47 = a2;
  v48 = a3;
  v55 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v54 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v41 - v18;
  v20 = *a1;
  v21 = [v20 plusSuggesterQueried];
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = v21;
  v23 = [v21 matchedResults];

  if (!v23)
  {
    goto LABEL_9;
  }

  sub_222B505A8(0, &qword_27D025D20, 0x277D59DE0);
  v24 = sub_222C9471C();

  v25 = [v20 eventMetadata];
  if (!v25 || (v26 = v25, v27 = [v25 plusId], v26, !v27))
  {

    v14[7](v12, 1, 1, v13);
    goto LABEL_8;
  }

  sub_222C94A1C();

  v49 = v14[6];
  v50 = (v14 + 6);
  if ((v49)(v12, 1, v13) == 1)
  {

LABEL_8:
    sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
LABEL_9:
    *v55 = MEMORY[0x277D84F90];
    return;
  }

  v45 = v14[4];
  v46 = (v14 + 4);
  (v45)(v19, v12, v13);
  if (v24 >> 62)
  {
    goto LABEL_33;
  }

  v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v42 = v19;
  v43 = v5;
  v53 = v24;
  if (v28)
  {
    v29 = 0;
    v51 = v24 & 0xFFFFFFFFFFFFFF8;
    v52 = v24 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v44 = v14 + 7;
    v19 = v14;
    v24 = v28;
    while (1)
    {
      if (v52)
      {
        v30 = MEMORY[0x223DC9B30](v29, v53);
      }

      else
      {
        if (v29 >= *(v51 + 16))
        {
          goto LABEL_32;
        }

        v30 = *(v53 + 8 * v29 + 32);
      }

      v14 = v30;
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v28 = sub_222C94C6C();
        goto LABEL_12;
      }

      v32 = [v30 suggestionId];
      if (v32)
      {
        v33 = v32;
        sub_222C94A1C();

        if ((v49)(v9, 1, v13) != 1)
        {
          (v45)(v54, v9, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_222B4A2C8(0, v5[2] + 1, 1, v5);
          }

          v35 = v5[2];
          v34 = v5[3];
          if (v35 >= v34 >> 1)
          {
            v5 = sub_222B4A2C8((v34 > 1), v35 + 1, 1, v5);
          }

          v5[2] = v35 + 1;
          v36 = v5 + ((v19[80] + 32) & ~v19[80]) + *(v19 + 9) * v35;
          v14 = v19;
          (v45)(v36, v54, v13);
          goto LABEL_16;
        }
      }

      else
      {

        (*v44)(v9, 1, 1, v13);
      }

      sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
      v14 = v19;
LABEL_16:
      ++v29;
      if (v31 == v24)
      {
        goto LABEL_30;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_30:

  MEMORY[0x28223BE20](v37);
  v38 = v48;
  v39 = v42;
  *(&v41 - 4) = v47;
  *(&v41 - 3) = v39;
  *(&v41 - 2) = v38;
  v40 = sub_222BDC510(sub_222BAEB40, (&v41 - 6), v5);

  *v55 = v40;
  (v14[1])(v39, v13);
}

uint64_t sub_222BA9294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  if (*(a2 + 16) && (v15 = sub_222B8CA54(a1), (v16 & 1) != 0))
  {
    sub_222BADB30(*(a2 + 56) + *(v9 + 72) * v15, v11, type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata);
    sub_222BADC98(v11, v14, type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata);
    v32 = *v14;
    v17 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
    v30 = v17[5];
    v18 = sub_222C9367C();
    v19 = *(v18 - 8);
    v31 = a3;
    v20 = v19;
    v21 = *(v19 + 16);
    v21(&a4[v30], a1, v18);
    v22 = v17[6];
    v21(&a4[v22], &v14[v8[5]], v18);
    (*(v20 + 56))(&a4[v22], 0, 1, v18);
    v21(&a4[v17[7]], v31, v18);
    LOBYTE(v22) = v14[v8[6]];
    LOBYTE(v20) = v14[v8[7]];
    sub_222BADBB4(v14, type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata);
    *a4 = v32;
    a4[v17[8]] = v22;
    a4[v17[9]] = v20;
    return (*(*(v17 - 1) + 56))(a4, 0, 1, v17);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);
    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      if (qword_27D0246D8 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v33);
      _os_log_impl(&dword_222B39000, v25, v26, "%s Generic suggestion summary not extracted - suggestionId/requestId was missing", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

    v29 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }
}

uint64_t sub_222BA96AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222C947FC();
  swift_getWitnessTable();
  return sub_222C949CC();
}

void sub_222BA9754(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 payload];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9350C();
    v7 = v6;

    v8 = sub_222C934FC();
    sub_222B803C0(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) initWithData_];

  *a2 = v9;
}

id sub_222BA97F8(id *a1)
{
  result = [*a1 source];
  if (result)
  {
    v2 = result;
    v3 = [result component];

    return (v3 == 19);
  }

  return result;
}

void sub_222BA9850(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 source];
  if (v3 && (v4 = v3, v7 = [v3 uuid], v4, v7))
  {
    sub_222C94A1C();
  }

  else
  {
    v5 = sub_222C9367C();
    v6 = *(*(v5 - 8) + 56);

    v6(a2, 1, 1, v5);
  }
}

uint64_t PlusClientEventFeatureExtractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PlusContactSuggestionRuntimeSummary.runtimeSuggestionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlusGenericSuggestionRuntimeSummary.suggestionLinkId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlusGenericSuggestionRuntimeSummary(0) + 20);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlusGenericSuggestionRuntimeSummary.originalPlusId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlusGenericSuggestionRuntimeSummary(0) + 28);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlusGenericSuggestionRuntimeSummary.suggestionSurfacedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t PlusGenericSuggestionRuntimeSummary.suggestionNoveltyState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t PlusRuntimeContactSuggestions.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222BA9DA0(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA9E08(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlusForcePrompted.init(value:)(char a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PlusForcePrompted.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t PlusClientEventIdFeature.init(value:)(uint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  v6 = sub_222C93EEC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v2 - 8);
  sub_222B4FC6C(a1, &v6 - v3, &unk_27D026290, &qword_222C96B40);
  v4 = sub_222C93EDC();

  sub_222B4FCD4(a1, &unk_27D026290, &qword_222C96B40);
  if (v4)
  {
  }

  return v4;
}

uint64_t sub_222BAA210(char *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BAA278(char *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BAA2EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222B8C9DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_222B92DDC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_222B8E22C(v16, a4 & 1);
    v11 = sub_222B8C9DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_222C0000C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_222BAA434(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *v3;
  result = sub_222B8CB28(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_222B92F9C();
    result = v17;
    goto LABEL_8;
  }

  sub_222B8E524(v14, a3 & 1);
  result = sub_222B8CB28(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 2 * result) = v7;
  }

  else
  {
    sub_222C00054(result, a2, v7, v19);
    return sub_222B554C0(a2, v20);
  }

  return result;
}

uint64_t sub_222BAA538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = a1;
  v14 = *v6;
  result = sub_222B8CB9C(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      sub_222B93140();
      result = v23;
      goto LABEL_8;
    }

    sub_222B8E85C(v20, a6 & 1);
    result = sub_222B8CB9C(a2, a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 4 * result;
    *v26 = v13;
    *(v26 + 3) = HIBYTE(v13);
    *(v26 + 1) = v13 >> 8;
  }

  else
  {
    sub_222C000B4(result, a2, a3, a4, a5, v13, v25);
  }

  return result;
}

uint64_t sub_222BAA6B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_222B8CC2C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_222B932D4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_222B8EB44(v14, a3 & 1);
    v9 = sub_222B8CC2C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_222C9386C();
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {
    sub_222C00E80();
  }
}

uint64_t sub_222BAA7DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_222B8CCFC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_222B932E8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_222B8EB58(v14, a3 & 1);
    v9 = sub_222B8CCFC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_222C9378C();
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {
    sub_222C00E80();
  }
}

uint64_t sub_222BAA908(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222B8CA54(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_222B932FC();
      goto LABEL_7;
    }

    sub_222B8EE1C(v17, a3 & 1);
    v22 = sub_222B8CA54(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_222C00158(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_222BAAAD4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_222B8CA54(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_222B93310();
      goto LABEL_9;
    }

    sub_222B8EE30(v16, a3 & 1);
    v19 = sub_222B8CA54(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_222C00210(v13, v10, a1, v21);
  }
}

uint64_t sub_222BAACB8(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222B8CA54(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 2 * v14);
      *v21 = a1 & 1;
      v21[1] = HIBYTE(a1) & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_222B93BE4();
    goto LABEL_7;
  }

  sub_222B9046C(result, a3 & 1);
  result = sub_222B8CA54(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_222C002EC(v14, v11, a1 & 0x101, v20);
}

uint64_t sub_222BAAE68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222B8CA54(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_222B93E70();
      goto LABEL_7;
    }

    sub_222B90844(v17, a3 & 1);
    v24 = sub_222B8CA54(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_222C003B4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0) - 8) + 72) * v14;

  return sub_222BAEB80(a1, v22);
}

uint64_t sub_222BAB050(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_222B8C9DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_222B941C4();
      result = v19;
      goto LABEL_8;
    }

    sub_222B90CF4(v16, a4 & 1);
    result = sub_222B8C9DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    sub_222C00490(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

uint64_t sub_222BAB184(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222B8CFCC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_222B9490C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_222B91808(v16, a4 & 1);
    v11 = sub_222B8CFCC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_222B405A0(a1, v22);
  }

  else
  {
    sub_222C004D8(v11, a2, a3, a1, v21);

    return sub_222B95830(a2, a3);
  }
}

uint64_t sub_222BAB340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_222B4FC6C(a1, &v10 - v5, &unk_27D026290, &qword_222C96B40);
  v7 = sub_222C9367C();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  __break(1u);
  return result;
}

void sub_222BAB45C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = v0[3];
  v31 = v0[2];
  v32 = v5;
  v33 = v0[4];
  v6 = *(v0 + 11);
  v34 = *(v0 + 10);
  v7 = v0[1];
  v29 = *v0;
  v30 = v7;
  v23 = *(v0 + 12);
  v24 = v6;
  v28 = sub_222BAB678();
  v21 = v31;
  v22 = *(&v30 + 1);
  v19[2] = v33;
  v20 = *(&v32 + 1);
  v8 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 < 0)
  {
    v9 = v29;
  }

  else
  {
    v9 = v29 & 0xFFFFFFFFFFFFFF8;
  }

  v19[1] = v9;
  v25 = v29 & 0xC000000000000001;
  v10 = v29 + 32;
  v19[0] = v29;
  v11 = v29 >> 62;
  if (v29 >> 62)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = *(v8 + 16); v28 != i; i = sub_222C94C6C())
  {
    if (v25)
    {
      v13 = MEMORY[0x223DC9B30](v28, v19[0]);
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      if (v28 >= *(v8 + 16))
      {
        goto LABEL_18;
      }

      v13 = *(v10 + 8 * v28);
    }

    v14 = v13;
    v15 = *(v1 + 13);
    v26 = v13;
    v22(&v27, &v26);

    v16 = v27;
    v26 = v27;
    v20(&v27, &v26);

    v17 = v27;
    v24(&v27);

    v18 = v15(v4);
    sub_222B4FCD4(v4, &unk_27D026290, &qword_222C96B40);
    if (v18)
    {
      return;
    }

    sub_222BABB0C(&v28);
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }
}

uint64_t sub_222BAB678()
{
  v1 = v0;
  v2 = v0[1];
  v24 = *v0;
  v25 = v2;
  v26 = v0[2];
  v3 = *(v0 + 7);
  v27 = *(v0 + 6);
  v20 = v3;
  v4 = sub_222BAB808();
  v5 = v4;
  v23 = v4;
  v6 = v24;
  v19 = *(&v25 + 1);
  if (v24 >> 62)
  {
    goto LABEL_15;
  }

  v7 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 != v7)
  {
    do
    {
      v8 = *(v1 + 9);
      v1 = *(v1 + 10);
      v9 = v6 & 0xC000000000000001;
      v10 = v6 & 0xFFFFFFFFFFFFFF8;
      v18 = v6;
      v11 = (v6 + 32);
      while (1)
      {
        if (v9)
        {
          v12 = MEMORY[0x223DC9B30](v5, v18);
          goto LABEL_8;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v5 >= *(v10 + 16))
        {
          goto LABEL_14;
        }

        v12 = v11[v5];
LABEL_8:
        v13 = v12;
        v21 = v12;
        v19(&v22, &v21);

        v14 = v22;
        v21 = v22;
        v20(&v22, &v21);

        v15 = v22;
        v21 = v22;
        v16 = v8(&v21);

        if (v16)
        {
          return v5;
        }

        v6 = &v24;
        sub_222BABCA0(&v23);
        v5 = v23;
        if (v23 == v7)
        {
          return v7;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v7 = sub_222C94C6C();
    }

    while (v5 != v7);
  }

  return v5;
}

uint64_t sub_222BAB808()
{
  v1 = *v0;
  v2 = v0[1];
  v16 = v0[3];
  v3 = sub_222BABA1C(*v0, v2);
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); v3 != i; i = sub_222C94C6C())
  {
    v15 = v0[5];
    v5 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    v14 = i;
    while (2)
    {
      if (v5)
      {
        v7 = MEMORY[0x223DC9B30](v3, v1);
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          break;
        }

        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v7 = *(v17 + 8 * v3);
      }

      v8 = v7;
      v18 = v7;
      v16(&v19, &v18);

      v9 = v19;
      v18 = v19;
      v0 = v15(&v18);

      if (v0)
      {
        return v3;
      }

      if (!(v1 >> 62))
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 != v10)
        {
          goto LABEL_18;
        }

        goto LABEL_32;
      }

      if (v3 != sub_222C94C6C())
      {
        v10 = sub_222C94C6C();
        while (1)
        {
LABEL_18:
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (v6 == v10)
          {
            break;
          }

          if (v5)
          {
            v11 = MEMORY[0x223DC9B30](v3 + 1, v1);
          }

          else
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v11 = *(v17 + 8 * v6);
          }

          v12 = v11;
          v19 = v11;
          v0 = v2(&v19);

          ++v3;
          if (v0)
          {
            goto LABEL_5;
          }
        }

        v6 = v10;
LABEL_5:
        v3 = v6;
        if (v6 != v14)
        {
          continue;
        }

        return v14;
      }

      break;
    }

    __break(1u);
LABEL_34:
    ;
  }

  return v3;
}

unint64_t sub_222BABA1C(unint64_t a1, uint64_t (*a2)(id *))
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_222C94C6C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DC9B30](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a2(&v12);

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return v5;
}

void sub_222BABB0C(uint64_t *a1)
{
  v2 = v1[2];
  v23 = v1[1];
  v24 = v2;
  v22 = *v1;
  v3 = *(v1 + 7);
  v25 = *(v1 + 6);
  v18 = v3;
  v4 = *a1;
  v21 = *a1;
  v5 = v22;
  v17 = *(&v23 + 1);
  v6 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 == v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  while (2)
  {
    v8 = *(v1 + 9);
    v9 = v5 & 0xC000000000000001;
    v15 = v5;
    v4 = v5 + 32;
    while (1)
    {
      v1 = &v22;
      sub_222BABCA0(&v21);
      v5 = v21;
      if (v21 == v7)
      {
        v5 = v7;
LABEL_13:
        *a1 = v5;
        return;
      }

      if (!v9)
      {
        break;
      }

      v10 = MEMORY[0x223DC9B30](v21, v15);
LABEL_9:
      v11 = v10;
      v19 = v10;
      v17(&v20, &v19);

      v12 = v20;
      v19 = v20;
      v18(&v20, &v19);

      v13 = v20;
      v19 = v20;
      v14 = v8(&v19);

      if (v14)
      {
        goto LABEL_13;
      }
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      if (v21 >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v10 = *(v4 + 8 * v21);
      goto LABEL_9;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    if (v4 != sub_222C94C6C())
    {
      v7 = sub_222C94C6C();
      continue;
    }

    break;
  }

LABEL_19:
  __break(1u);
}

void sub_222BABCA0(unint64_t *a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v17 = *(v1 + 24);
  v4 = *a1;
  v5 = *v1 & 0xFFFFFFFFFFFFFF8;
  if (*v1 >> 62)
  {
    goto LABEL_33;
  }

  if (v4 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  else
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v6;
    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
    {
      v15 = *(v1 + 48);
      v16 = *(v1 + 40);
      v7 = v3 & 0xC000000000000001;
      v13 = v3;
      v8 = (v3 + 32);
      while (2)
      {
        if (v4 == v18)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
        }

        else
        {
          v3 = v4;
          while (1)
          {
            v4 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            if (v4 == v6)
            {
              break;
            }

            if (v7)
            {
              v9 = MEMORY[0x223DC9B30](v3 + 1, v13);
            }

            else
            {
              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              if (v4 >= *(v5 + 16))
              {
                goto LABEL_29;
              }

              v9 = *&v8[8 * v4];
            }

            v10 = v9;
            v21 = v9;
            v1 = v2(&v21);

            ++v3;
            if (v1)
            {
              goto LABEL_17;
            }
          }

          v4 = v6;
LABEL_17:
          if (v4 == i)
          {
            v4 = i;
            goto LABEL_26;
          }

          if (v7)
          {
            v11 = MEMORY[0x223DC9B30](v4, v13);
            goto LABEL_22;
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (v4 < *(v5 + 16))
          {
            v11 = *&v8[8 * v4];
LABEL_22:
            v12 = v11;
            v20 = v11;
            v17(&v21, &v20);

            v3 = v21;
            v20 = v21;
            v1 = v15;
            LOBYTE(v12) = v16(&v20);

            if ((v12 & 1) == 0)
            {
              continue;
            }

LABEL_26:
            *a1 = v4;
            return;
          }
        }

        break;
      }

      __break(1u);
LABEL_33:
      if (v4 == sub_222C94C6C())
      {
        break;
      }

      v18 = sub_222C94C6C();
      v6 = sub_222C94C6C();
    }
  }

  __break(1u);
}

id sub_222BABEA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s28SiriPrivateLearningInference35PlusGenericSuggestionRuntimeSummaryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v15 = a1;
  v16 = v5;
  v29 = v14;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  v27 = v15;
  sub_222B4FC6C(&v15[v17], v13, &unk_27D026290, &qword_222C96B40);
  v28 = a2;
  sub_222B4FC6C(&a2[v17], &v13[v18], &unk_27D026290, &qword_222C96B40);
  v19 = *(v16 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_222B4FC6C(v13, v10, &unk_27D026290, &qword_222C96B40);
    if (v19(&v13[v18], 1, v4) != 1)
    {
      (*(v16 + 32))(v7, &v13[v18], v4);
      sub_222BAC6B0(&qword_280FE02A0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_222C9447C();
      v21 = *(v16 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v16 + 8))(v10, v4);
LABEL_8:
    sub_222B4FCD4(v13, &qword_27D025290, &unk_222C97C30);
    return 0;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
LABEL_10:
  v22 = v28;
  v23 = v29;
  v24 = v27;
  if ((sub_222C9362C() & 1) != 0 && v24[*(v23 + 32)] == v22[*(v23 + 32)])
  {
    return v24[*(v23 + 36)] == v22[*(v23 + 36)];
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference35PlusContactSuggestionRuntimeSummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if ((sub_222C9362C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v15 = a1;
  v16 = a2;
  v26 = v14;
  v27 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_222B4FC6C(v15 + v17, v13, &unk_27D026290, &qword_222C96B40);
  v19 = v16 + v17;
  v20 = v16;
  sub_222B4FC6C(v19, &v13[v18], &unk_27D026290, &qword_222C96B40);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_222B4FC6C(v13, v10, &unk_27D026290, &qword_222C96B40);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_222BAC6B0(&qword_280FE02A0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_222C9447C();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v10, v4);
      v20 = v16;
      sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_222B4FCD4(v13, &qword_27D025290, &unk_222C97C30);
    goto LABEL_10;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
LABEL_9:
  if (*(v27 + *(v26 + 24)) == *(v20 + *(v26 + 24)))
  {
    v24 = *(v27 + *(v26 + 28)) ^ *(v20 + *(v26 + 28)) ^ 1;
    return v24 & 1;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_222BAC6B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_222BAC6F8(uint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  MEMORY[0x28223BE20](v6);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v38 - v10;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v13 = *(v9 + 80);
  v14 = *(v9 + 72);
  v15 = a1 + ((v13 + 32) & ~v13);
  v46 = (v13 + 32) & ~v13;
  v47 = (v3 + 16);
  v41 = v3 + 32;
  v42 = v13;
  v40 = (v3 + 8);
  v39 = xmmword_222C97C40;
  v44 = v5;
  v45 = v3;
  v43 = v6;
  v49 = v14;
  while (1)
  {
    v17 = v50;
    sub_222BADB30(v15, v50, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
    (*v47)(v5, v17 + *(v6 + 20), v2);
    v19 = sub_222B8CA54(v5);
    v20 = v11[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v11[3] < v22)
    {
      sub_222B90068(v22, 1);
      v11 = v51;
      v24 = sub_222B8CA54(v5);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {
      v26 = v2;
      (*v40)(v5, v2);
      v27 = v11[7];
      sub_222BADC98(v50, v48, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v28 = *(v27 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v19) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_222B4B09C(0, v28[2] + 1, 1, v28);
        *(v27 + 8 * v19) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_222B4B09C((v30 > 1), v31 + 1, 1, v28);
        *(v27 + 8 * v19) = v28;
      }

      v2 = v26;
      v28[2] = v31 + 1;
      v16 = v49;
      sub_222BADC98(v48, v28 + v46 + v31 * v49, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v6 = v43;
      v5 = v44;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB8, &qword_222C96A90);
      v32 = v46;
      v33 = swift_allocObject();
      *(v33 + 16) = v39;
      sub_222BADC98(v50, v33 + v32, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v11[(v19 >> 6) + 8] |= 1 << v19;
      (*(v45 + 32))(v11[6] + *(v45 + 72) * v19, v5, v2);
      *(v11[7] + 8 * v19) = v33;
      v34 = v11[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v11[2] = v36;
      v16 = v49;
    }

    v15 += v16;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

void *sub_222BACB2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0) - 8;
  MEMORY[0x28223BE20](v8);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v39 - v12;
  v13 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v43 = *(v11 + 80);
  v15 = v5;
  v16 = *(v11 + 72);
  v48 = (v43 + 32) & ~v43;
  v17 = a1 + v48;
  v41 = (v15 + 8);
  v42 = v15 + 32;
  v40 = xmmword_222C97C40;
  v44 = v15;
  v45 = a2;
  v46 = v4;
  v47 = v16;
  while (1)
  {
    sub_222BADB30(v17, v50, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
    v19 = a2;
    swift_getAtKeyPath();
    v21 = sub_222B8CA54(v7);
    v22 = v13[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v13[3] < v24)
    {
      sub_222B90458(v24, 1);
      v13 = v51;
      v26 = sub_222B8CA54(v7);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      (*v41)(v7, v4);
      v28 = v13[7];
      sub_222BADC98(v50, v49, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_222B4B074(0, v29[2] + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_222B4B074((v31 > 1), v32 + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v29[2] = v32 + 1;
      v4 = v46;
      v18 = v47;
      sub_222BADC98(v49, v29 + v48 + v32 * v47, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      a2 = v45;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F28, &qword_222C9B820);
      v33 = v48;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      sub_222BADC98(v50, v34 + v33, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      v13[(v21 >> 6) + 8] |= 1 << v21;
      (*(v44 + 32))(v13[6] + *(v44 + 72) * v21, v7, v4);
      *(v13[7] + 8 * v21) = v34;
      v35 = v13[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v13[2] = v37;
      v18 = v47;
      a2 = v19;
    }

    v17 += v18;
    if (!--v14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:

  result = sub_222C9526C();
  __break(1u);
  return result;
}

void sub_222BACF48(uint64_t *a1, id *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_222C9367C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = [*a2 suggestionId];
  if (v13)
  {
    v14 = v13;
    sub_222C94A1C();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v11, v6, v7);
      v15 = [v12 isSuggestionPresentInModelOutput];
      v16 = [v12 isDuplicateSuggestion];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *a1;
      if (v16)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      sub_222BAACB8(v18 | v15, v11, isUniquelyReferenced_nonNull_native);
      (*(v8 + 8))(v11, v7);
      *a1 = v25;
      return;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_222B4FCD4(v6, &unk_27D026290, &qword_222C96B40);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v19 = sub_222C9431C();
  __swift_project_value_buffer(v19, qword_280FE2340);
  v20 = sub_222C942FC();
  v21 = sub_222C94A4C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    if (qword_27D0246D8 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v25);
    _os_log_impl(&dword_222B39000, v20, v21, "%s Contact suggestion metadata not extracted - suggestionId was missing", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x223DCA8C0](v23, -1, -1);
    MEMORY[0x223DCA8C0](v22, -1, -1);
  }
}

uint64_t sub_222BAD2B4(unint64_t a1)
{
  v11 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
  {
    swift_bridgeObjectRetain_n();
    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC9B30](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 contactSuggesterSuggestionMetadataReported];

      if (v7)
      {
        v10 = v7;
        sub_222BACF48(&v11, &v10);
      }

      ++v3;
      if (v6 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = MEMORY[0x277D84F98];
LABEL_15:
  swift_bridgeObjectRelease_n();
  return v8;
}

uint64_t sub_222BAD420(unint64_t a1)
{
  v13 = sub_222BAD2B4(a1);
  v16 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222C94C6C())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC9B30](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 contactSuggesterQueryContext];
      if (v7 && (v8 = v7, v9 = [v7 ended], v8, v9) && (v10 = objc_msgSend(v9, sel_hasMatchingResults), v9, v10))
      {
        v15 = v5;
        sub_222BA840C(&v15, v13, &v14);

        sub_222B499F4(v14);
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        v11 = v16;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_20:

  return v11;
}

void *sub_222BAD5C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F40, &qword_222C9B790);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v43 - v2;
  v4 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F48, &qword_222C9B798);
  MEMORY[0x28223BE20](v54);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v51 = &v43 - v13;
  v63 = v4;
  v64 = &off_28360A960;
  KeyPath = swift_getKeyPath();

  v16 = sub_222BACB2C(v15, KeyPath);

  v56 = v4;
  v61 = v4;
  v62 = &off_28360A960;
  v57 = swift_getKeyPath();
  v58 = v16;
  v17 = v16 + 8;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16[8];
  v21 = (v18 + 63) >> 6;
  v45 = v5;
  v48 = (v5 + 48);

  v23 = 0;
  v47 = MEMORY[0x277D84F90];
  v49 = v21;
  v50 = v16 + 8;
  v55 = v3;
  v24 = v51;
LABEL_4:
  v25 = v23;
  if (!v20)
  {
    goto LABEL_6;
  }

  do
  {
    v23 = v25;
LABEL_9:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v58;
    v29 = v58[6];
    v60 = sub_222C9367C();
    v30 = *(v60 - 8);
    (*(v30 + 16))(v24, v29 + *(v30 + 72) * v27, v60);
    v59 = *(v28[7] + 8 * v27);
    v31 = v54;
    *(v24 + *(v54 + 48)) = v59;
    v32 = v52;
    sub_222B4FC6C(v24, v52, &qword_27D025F48, &qword_222C9B798);
    v33 = *(v31 + 48);
    v34 = *(v32 + v33);
    v35 = v53;
    (*(v30 + 32))(v53, v32, v60);
    *(v35 + v33) = v34;

    v36 = v55;
    swift_getAtKeyPath();
    sub_222B4FCD4(v35, &qword_27D025F48, &qword_222C9B798);
    sub_222B4FCD4(v24, &qword_27D025F48, &qword_222C9B798);
    if ((*v48)(v36, 1, v56) != 1)
    {
      v37 = v44;
      sub_222BADC98(v36, v44, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      sub_222BADC98(v37, v46, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_222B4B074(0, v47[2] + 1, 1, v47);
      }

      v17 = v50;
      v40 = v47[2];
      v39 = v47[3];
      if (v40 >= v39 >> 1)
      {
        v47 = sub_222B4B074((v39 > 1), v40 + 1, 1, v47);
      }

      v41 = v46;
      v42 = v47;
      v47[2] = v40 + 1;
      result = sub_222BADC98(v41, v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      goto LABEL_4;
    }

    result = sub_222B4FCD4(v36, &qword_27D025F40, &qword_222C9B790);
    v25 = v23;
    v21 = v49;
    v17 = v50;
  }

  while (v20);
LABEL_6:
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return v47;
    }

    v20 = v17[v23];
    ++v25;
    if (v20)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222BADB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BADBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222BADC34()
{
  result = qword_27D025ED8;
  if (!qword_27D025ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025EE0, &qword_222C9B2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025ED8);
  }

  return result;
}

uint64_t sub_222BADC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_222BADD8C()
{
  result = qword_27D025EF8;
  if (!qword_27D025EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025EF8);
  }

  return result;
}

unint64_t sub_222BADDE4()
{
  result = qword_27D025F00;
  if (!qword_27D025F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F00);
  }

  return result;
}

unint64_t sub_222BADE3C()
{
  result = qword_27D025F08;
  if (!qword_27D025F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F08);
  }

  return result;
}

void sub_222BADF08(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222B56160(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222BADFC4(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222B56160(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_222BAE12C(uint64_t a1)
{
  result = sub_222C9367C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_222BAE1A4(uint64_t a1, void **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F38, &qword_222C9B788);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v63 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v58 - v20;
  v22 = *a2;
  v23 = [v22 suggestionLinkId];
  if (!v23)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_8;
  }

  v24 = v23;
  v61 = a1;
  v64 = v2;
  sub_222C94A1C();

  v25 = *(v13 + 48);
  if (v25(v11, 1, v12) == 1)
  {
LABEL_8:
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v31 = sub_222C9431C();
    __swift_project_value_buffer(v31, qword_280FE2340);
    v32 = sub_222C942FC();
    v33 = sub_222C94A4C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66 = v35;
      *v34 = 136315138;
      if (qword_27D0246D8 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v66);
      _os_log_impl(&dword_222B39000, v32, v33, "%s Generic suggestion metadata not extracted - suggestionId/requestId was missing", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x223DCA8C0](v35, -1, -1);
      MEMORY[0x223DCA8C0](v34, -1, -1);
    }

    return;
  }

  v60 = v17;
  v26 = v11;
  v27 = *(v13 + 32);
  v27(v21, v26, v12);
  v28 = [v22 originalRequestId];
  if (!v28)
  {
    (*(v13 + 8))(v21, v12);
    v11 = v65;
    (*(v13 + 56))(v65, 1, 1, v12);
    goto LABEL_8;
  }

  v29 = v28;
  v59 = v21;
  v30 = v65;
  sub_222C94A1C();

  if (v25(v30, 1, v12) == 1)
  {
    (*(v13 + 8))(v59, v12);
    v11 = v30;
    goto LABEL_8;
  }

  v36 = v12;
  v27(v60, v30, v12);
  v37 = [v22 suggestionNoveltyState];
  if (v37 <= 3 && (v38 = v37, v39 = [v22 suggestionSurfaced], v39 <= 3) && (v40 = v39, (v41 = objc_msgSend(v22, sel_suggestionDomainMetadata)) != 0) && (v42 = v41, v43 = objc_msgSend(v41, sel_suggestionGenerationDomain), v42, v43 <= 3))
  {
    v44 = v13;
    v65 = *(v13 + 16);
    v45 = v36;
    (v65)(v63, v59, v36);
    v46 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
    v47 = v62;
    (v65)(&v62[v46[5]], v60, v45);
    *v47 = v43;
    v47[v46[6]] = v40;
    v47[v46[7]] = v38;
    (*(*(v46 - 1) + 56))(v47, 0, 1, v46);
    sub_222C4AAF0(v47, v63);
    v48 = *(v44 + 8);
    v48(v60, v45);
    v48(v59, v45);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v49 = sub_222C9431C();
    __swift_project_value_buffer(v49, qword_280FE2340);
    v50 = sub_222C942FC();
    v51 = sub_222C94A4C();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v36;
    v54 = v59;
    if (v52)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66 = v56;
      *v55 = 136315138;
      if (qword_27D0246D8 != -1)
      {
        swift_once();
      }

      *(v55 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v66);
      _os_log_impl(&dword_222B39000, v50, v51, "%s Generic suggestion metadata not extracted - unexpected enum values", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x223DCA8C0](v56, -1, -1);
      MEMORY[0x223DCA8C0](v55, -1, -1);
    }

    v57 = *(v13 + 8);
    v57(v60, v53);
    v57(v54, v53);
  }
}

unint64_t sub_222BAE908(unint64_t a1)
{
  v1 = a1;
  v16 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_222C94C6C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DC9B30](v4, v1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_25;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = [v6 plusSuggesterSuggestionMetadataReported];

    ++v4;
    if (v9)
    {
      MEMORY[0x223DC94A0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      v5 = v16;
      v4 = v8;
    }
  }

  v16 = MEMORY[0x277D84F98];
  if (v5 >> 62)
  {
    v10 = sub_222C94C6C();
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_16:
      v1 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x223DC9B30](v1, v5);
        }

        else
        {
          if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v11 = *(v5 + 8 * v1 + 32);
        }

        v12 = v11;
        v2 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_26;
        }

        v15 = v11;
        sub_222BAE1A4(&v16, &v15);

        ++v1;
        if (v2 == v10)
        {
          v13 = v16;
          goto LABEL_31;
        }
      }
    }
  }

  v13 = MEMORY[0x277D84F98];
LABEL_31:

  return v13;
}

uint64_t sub_222BAEB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PlusClientEventFeatureExtractor.SuggestionMetadata(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PlusClientEventFeatureExtractor.SuggestionMetadata(_WORD *result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222BAED98(uint64_t a1)
{
  result = sub_222C9367C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PICSStoreApi.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PICSStoreApi.init(store:)(a1);
  return v2;
}

uint64_t PICSStoreApi.init(store:)(uint64_t a1)
{
  sub_222B4FC6C(a1, &v8, &qword_27D025F60, &unk_222C9B880);
  if (v9)
  {
    sub_222B405A0(&v8, v10);
    sub_222B43E3C(v10, &v8);
    sub_222C9403C();
    type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
    v3 = swift_allocObject();
    sub_222B4FCD4(a1, &qword_27D025F60, &unk_222C9B880);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v3[8] = 0xD000000000000030;
    v3[9] = 0x8000000222CAAB10;
    sub_222B405A0(&v8, (v3 + 2));
    type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
    v4 = swift_allocObject();
    type metadata accessor for SELFEventLogEmitters();
    v5 = swift_allocObject();
    sub_222B405A0(&v7, v5 + 16);
    *(v4 + 16) = v5;
    v3[7] = v4;
  }

  else
  {
    sub_222B4FCD4(a1, &qword_27D025F60, &unk_222C9B880);
    sub_222B4FCD4(&v8, &qword_27D025F60, &unk_222C9B880);
    v3 = 0;
  }

  *(v1 + 16) = v3;
  return v1;
}

unint64_t sub_222BAF028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v14 = sub_222C9431C();
  __swift_project_value_buffer(v14, qword_280FE2340);
  v15 = sub_222C942FC();
  v16 = sub_222C94A4C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v9;
    v18 = a3;
    v19 = a2;
    v20 = v17;
    *v17 = 0;
    _os_log_impl(&dword_222B39000, v15, v16, "PICSStoreApi is deprecated and usage should be migrated to PlusContactSuggestionStoreRuntimeQueryWrapper.", v17, 2u);
    v21 = v20;
    a2 = v19;
    a3 = v18;
    v4 = v3;
    v9 = v30;
    MEMORY[0x223DCA8C0](v21, -1, -1);
  }

  if (*(v4 + 16))
  {

    v22 = sub_222BAF9C8(&unk_283607B80);
    sub_222B4FC6C(a3, v9, &unk_27D026290, &qword_222C96B40);
    v23 = *(v11 + 48);
    if (v23(v9, 1, v10) == 1)
    {
      sub_222C9366C();
      if (v23(v9, 1, v10) != 1)
      {
        sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
      }
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
    }

    v27 = sub_222C2A580(a2, v22, v13);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v24 = sub_222C942FC();
    v25 = sub_222C94A4C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_222B39000, v24, v25, "PICSStoreApi for SiriInference: queryWrapper is nil", v26, 2u);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v27;
}

uint64_t PICSStoreApi.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222BAF404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v32 = v1;
    v33 = a1 + 32;
    while (1)
    {
      v6 = *(v33 + v4);
      v34 = v4 + 1;
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 3)
          {
            if (*(*(v3 + 48) + v9) > 5u)
            {
              if (v13 == 6)
              {
                v18 = 0xD000000000000013;
                v19 = 0x8000000222CA93E0;
                if (v6 > 3)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v18 = 0xD000000000000012;
                v19 = 0x8000000222CA9400;
                if (v6 > 3)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {
              if (v13 == 4)
              {
                v18 = 0x7972617262696CLL;
              }

              else
              {
                v18 = 0xD000000000000011;
              }

              if (v13 == 4)
              {
                v19 = 0xE700000000000000;
              }

              else
              {
                v19 = 0x8000000222CA93C0;
              }

              if (v6 > 3)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            v14 = 0x6974636572726F63;
            if (v13 == 2)
            {
              v14 = 0x6574616E696D6F6ELL;
            }

            v15 = 0xEA00000000006E6FLL;
            if (v13 == 2)
            {
              v15 = 0xE900000000000064;
            }

            v16 = 0x754D6E69616D6F64;
            if (*(*(v3 + 48) + v9))
            {
              v16 = 0x656D7269666E6F63;
            }

            v17 = 0xEB00000000636973;
            if (*(*(v3 + 48) + v9))
            {
              v17 = 0xE900000000000064;
            }

            if (*(*(v3 + 48) + v9) <= 1u)
            {
              v18 = v16;
            }

            else
            {
              v18 = v14;
            }

            if (*(*(v3 + 48) + v9) <= 1u)
            {
              v19 = v17;
            }

            else
            {
              v19 = v15;
            }

            if (v6 > 3)
            {
LABEL_34:
              v20 = 0xD000000000000013;
              if (v6 != 6)
              {
                v20 = 0xD000000000000012;
              }

              v21 = 0x8000000222CA9400;
              if (v6 == 6)
              {
                v21 = 0x8000000222CA93E0;
              }

              v22 = 0x7972617262696CLL;
              if (v6 != 4)
              {
                v22 = 0xD000000000000011;
              }

              v23 = 0x8000000222CA93C0;
              if (v6 == 4)
              {
                v23 = 0xE700000000000000;
              }

              if (v6 <= 5)
              {
                v24 = v22;
              }

              else
              {
                v24 = v20;
              }

              if (v6 <= 5)
              {
                v25 = v23;
              }

              else
              {
                v25 = v21;
              }

              if (v18 != v24)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }
          }

          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v28 = 0x6574616E696D6F6ELL;
            }

            else
            {
              v28 = 0x6974636572726F63;
            }

            if (v6 == 2)
            {
              v25 = 0xE900000000000064;
            }

            else
            {
              v25 = 0xEA00000000006E6FLL;
            }

            if (v18 != v28)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v26 = 0x754D6E69616D6F64;
            v25 = 0xEB00000000636973;
            if (v6)
            {
              v26 = 0x656D7269666E6F63;
              v25 = 0xE900000000000064;
            }

            if (v18 != v26)
            {
              goto LABEL_56;
            }
          }

LABEL_55:
          if (v19 == v25)
          {

            goto LABEL_4;
          }

LABEL_56:
          v27 = sub_222C951FC();

          if (v27)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v29 = *(v3 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v3 + 16) = v31;
LABEL_4:
      v4 = v34;
      if (v34 == v32)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_222BAF88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F68, &qword_222C9B8E8);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v10);
      result = sub_222C9534C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_222BAF9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4++);
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x68506E69616D6F64;
            }

            else
            {
              v14 = 0x654D6E69616D6F64;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xEF6C6C6143656E6FLL;
            }

            else
            {
              v15 = 0xEE00736567617373;
            }

            if (v6 <= 1)
            {
LABEL_34:
              v18 = 0x654D6E69616D6F64;
              v19 = 0xEE00736567617373;
              if (v6)
              {
                v18 = 0x68506E69616D6F64;
                v19 = 0xEF6C6C6143656E6FLL;
              }

              goto LABEL_36;
            }
          }

          else if (v13 == 2)
          {
            v14 = 0x656D7269666E6F63;
            v15 = 0xE900000000000064;
            if (v6 <= 1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x6574616E696D6F6ELL;
            }

            else
            {
              v14 = 0x6974636572726F63;
            }

            if (v13 == 3)
            {
              v15 = 0xE900000000000064;
            }

            else
            {
              v15 = 0xEA00000000006E6FLL;
            }

            if (v6 <= 1)
            {
              goto LABEL_34;
            }
          }

          v16 = 0x6974636572726F63;
          if (v6 == 3)
          {
            v16 = 0x6574616E696D6F6ELL;
          }

          v17 = 0xEA00000000006E6FLL;
          if (v6 == 3)
          {
            v17 = 0xE900000000000064;
          }

          if (v6 == 2)
          {
            v18 = 0x656D7269666E6F63;
          }

          else
          {
            v18 = v16;
          }

          if (v6 == 2)
          {
            v19 = 0xE900000000000064;
          }

          else
          {
            v19 = v17;
          }

LABEL_36:
          if (v14 == v18 && v15 == v19)
          {

            goto LABEL_4;
          }

          v20 = sub_222C951FC();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_222BAFDE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_222C952FC();

      sub_222C9452C();
      result = sub_222C9534C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_222C951FC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

id PlusMediaSuggestion.toCascadeInstance()()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for PlusMediaSuggestion(0);
  sub_222C0A220(*(v0 + *(v1 + 20)), &v35);
  result = 0;
  v3 = v36;
  if (v36 == 1)
  {
    return result;
  }

  v4 = v38;
  v5 = v39;
  v6 = v40;
  if (v37)
  {
    v7 = sub_222C9448C();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 0;
    if (v38)
    {
LABEL_4:
      v8 = sub_222C9448C();
      if (v5)
      {
        goto LABEL_5;
      }

LABEL_11:
      v9 = 0;
      if (!v3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v8 = 0;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = sub_222C9448C();
  if (v3)
  {
LABEL_6:
    v3 = sub_222C9448C();
  }

LABEL_7:
  if (v6)
  {
    v10 = sub_222C9448C();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_allocWithZone(MEMORY[0x277D21140]);
  v12 = sub_222C9448C();
  v34 = 0;
  v13 = [v11 initWithUserPhrasedSongName:v7 userPhrasedArtistName:v8 userPhrasedAlbumName:v9 userPhrasedEntityName:v3 userPhrasedVersion:v10 suggestedAdamId:v12 error:&v34];

  if (v13)
  {
    v14 = v34;
    sub_222B4FCD4(&v35, &qword_27D0256C8, &unk_222C98AB0);
    v15 = sub_222C9360C();
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x277D21148]);
    v29 = sub_222BB0A6C(v15, v17);
    v30 = objc_allocWithZone(MEMORY[0x277CF94C8]);
    v34 = 0;
    v31 = [v30 initWithContent:v13 metaContent:v29 error:&v34];
    v32 = v34;
    if (v31)
    {

      return v31;
    }

    v33 = v32;
    v20 = sub_222C9342C();

    swift_willThrow();
  }

  else
  {
    v19 = v34;
    v20 = sub_222C9342C();

    swift_willThrow();
    sub_222B4FCD4(&v35, &qword_27D0256C8, &unk_222C98AB0);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v21 = sub_222C9431C();
  __swift_project_value_buffer(v21, qword_280FE2340);
  v22 = v20;
  v23 = sub_222C942FC();
  v24 = sub_222C94A4C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v20;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_222B39000, v23, v24, "Error occured during mapping PIMS to CCSiriLearnedMedia %@", v25, 0xCu);
    sub_222B4FCD4(v26, &qword_27D025F70, &unk_222C9E7C0);
    MEMORY[0x223DCA8C0](v26, -1, -1);
    MEMORY[0x223DCA8C0](v25, -1, -1);
  }

  else
  {
  }

  return 0;
}

id PlusContactSuggestion.toCascadeInstance()()
{
  v29[2] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for PlusContactSuggestion(0);
  v2 = sub_222C0AFD4(*(v0 + *(v1 + 20)));
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = (v0 + *(v1 + 24));
  v7 = *v6;
  v8 = v6[1];
  objc_allocWithZone(MEMORY[0x277D21130]);

  v9 = sub_222BB0958(v4, v5, v7, v8);
  v10 = sub_222C9360C();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277D21138]);
  v14 = sub_222BB0A6C(v10, v12);
  v24 = v14;
  v29[0] = 0;
  v25 = [objc_allocWithZone(MEMORY[0x277CF94C8]) initWithContent:v9 metaContent:v14 error:v29];
  v26 = v29[0];
  if (!v25)
  {
    v27 = v26;
    v28 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = sub_222C9431C();
    __swift_project_value_buffer(v15, qword_280FE2340);
    v16 = v28;
    v17 = sub_222C942FC();
    v18 = sub_222C94A4C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v28;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_222B39000, v17, v18, "Error occured during building CCSiriLearnedContact %@", v19, 0xCu);
      sub_222B4FCD4(v20, &qword_27D025F70, &unk_222C9E7C0);
      MEMORY[0x223DCA8C0](v20, -1, -1);
      MEMORY[0x223DCA8C0](v19, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v25;
}

SiriPrivateLearningInference::DonationCandidateType_optional __swiftcall DonationCandidateType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t DonationCandidateType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_222BB06A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "picsRuntimeInSiriVocab";
  }

  else
  {
    v4 = "siriLearnedContact";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "siriLearnedContact";
  }

  else
  {
    v7 = "picsRuntimeInSiriVocab";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222C951FC();
  }

  return v9 & 1;
}

uint64_t sub_222BB0750()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BB07D0(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222BB083C(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BB08B8@<X0>(char *a2@<X8>)
{
  v3 = sub_222C94FDC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_222BB0918(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "siriLearnedContact";
  }

  else
  {
    v3 = "picsRuntimeInSiriVocab";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id sub_222BB0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = sub_222C9448C();

    if (a4)
    {
LABEL_3:
      v7 = sub_222C9448C();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v12[0] = 0;
  v8 = [v4 initWithUserPhrasedName:v6 suggestedContactId:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_222C9342C();

    swift_willThrow();
  }

  return v8;
}

id sub_222BB0A6C(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_222C9448C();

  v8[0] = 0;
  v4 = [v2 initWithSourceItemIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_222C9342C();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_222BB0B38(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_222BB0B98(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_222BB0C10()
{
  result = qword_280FDEF30;
  if (!qword_280FDEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDEF30);
  }

  return result;
}

uint64_t ContactEntityUtteranceComparator.__allocating_init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a3;
  *(result + 24) = a2;
  return result;
}

uint64_t ContactEntityUtteranceComparator.init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  *(v3 + 32) = a1;
  *(v3 + 16) = a3;
  *(v3 + 24) = a2;
  return v3;
}

BOOL sub_222BB0CF0(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = sub_222B417F4(*(a1 + *(v2 + 24)));
  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_222BB0D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = type metadata accessor for FeaturisedTurn(0);
  *&result = COERCE_DOUBLE(sub_222B41648(*(a1 + *(v10 + 24))));
  if (*&result == 0.0)
  {
    goto LABEL_10;
  }

  v12 = result;
  v13 = sub_222B41648(*(a2 + *(v10 + 24)));
  if (!v13)
  {
    *&result = COERCE_DOUBLE();
LABEL_10:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v14 = v13;
  v15 = sub_222B72040(v12);

  v16 = sub_222B860E8(v15, v7);

  v17 = sub_222B72040(v14);

  v18 = sub_222B860E8(v17, v16);

  v19 = v18[2];
  *&result = COERCE_DOUBLE();
  if (v19 != 1)
  {
    goto LABEL_10;
  }

  *&result = COERCE_DOUBLE(sub_222BB1F5C(a1, a2, 0));
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = result;
  if (*&result >= 0.3)
  {
    if (*&result >= 0.5)
    {
      if (*&result >= 0.7)
      {
        if (*&result >= 0.85)
        {
          if (*&result >= 1.0)
          {
            if (*&result == 1.0)
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v28 = &type metadata for PIMSConstraintMismatch;
              v29 = sub_222B77B4C();
              v25 = 0xD000000000000016;
              v26 = 0x8000000222CA9C80;
              v22 = 9;
            }

            else
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v28 = &type metadata for PIMSConstraintMismatch;
              v29 = sub_222B77B4C();
              v25 = 0xD000000000000016;
              v26 = 0x8000000222CA9C80;
              v22 = 10;
            }
          }

          else
          {
            if (qword_280FDF1F0 != -1)
            {
              swift_once();
            }

            v28 = &type metadata for PIMSConstraintMismatch;
            v29 = sub_222B77B4C();
            v25 = 0xD000000000000016;
            v26 = 0x8000000222CA9C80;
            v22 = 8;
          }
        }

        else
        {
          if (qword_280FDF1F0 != -1)
          {
            swift_once();
          }

          v28 = &type metadata for PIMSConstraintMismatch;
          v29 = sub_222B77B4C();
          v25 = 0xD000000000000016;
          v26 = 0x8000000222CA9C80;
          v22 = 7;
        }
      }

      else
      {
        if (qword_280FDF1F0 != -1)
        {
          swift_once();
        }

        v28 = &type metadata for PIMSConstraintMismatch;
        v29 = sub_222B77B4C();
        v25 = 0xD000000000000016;
        v26 = 0x8000000222CA9C80;
        v22 = 6;
      }
    }

    else
    {
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v28 = &type metadata for PIMSConstraintMismatch;
      v29 = sub_222B77B4C();
      v25 = 0xD000000000000016;
      v26 = 0x8000000222CA9C80;
      v22 = 5;
    }
  }

  else
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v28 = &type metadata for PIMSConstraintMismatch;
    v29 = sub_222B77B4C();
    v25 = 0xD000000000000016;
    v26 = 0x8000000222CA9C80;
    v22 = 4;
  }

  v27 = v22;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  v23 = type metadata accessor for EntityUtteranceComparison();
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v8;
  *(v24 + 32) = v9;
  *(a3 + 24) = v23;
  *&result = COERCE_DOUBLE(sub_222BB23C8());
  *(a3 + 32) = *&result;
  *a3 = v24;
  return result;
}

unint64_t sub_222BB11EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_222C945FC() != a1 || v9 != a2)
  {
    v10 = sub_222C951FC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_222C9454C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_222BB12DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_222C9462C();
  }

  __break(1u);
  return result;
}

uint64_t ContactEntityUtteranceComparator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_222BB13A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v41 = MEMORY[0x277D84F90];
    sub_222B4CA70(0, v1, 0);
    v4 = v41;
    sub_222B78598();
    v5 = a1 + 40;
    do
    {
      v6 = sub_222C94BAC();
      v42 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        v10 = v6;
        sub_222B4CA70((v7 > 1), v8 + 1, 1);
        v6 = v10;
        v4 = v42;
      }

      *(v4 + 16) = v9;
      *(v4 + 8 * v8 + 32) = v6;
      v5 += 16;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x277D84F90];
LABEL_9:
    v37 = v9;
    result = sub_222B4CA30(0, v9, 0);
    v12 = 0;
    v13 = v2;
    v35 = v4;
    v36 = v4 + 32;
    while (v12 < *(v4 + 16))
    {
      v14 = *(v36 + 8 * v12);
      v15 = *(v14 + 16);

      if (v15)
      {
        v16 = 0;
        v17 = v14 + 40;
        v18 = v2;
        do
        {
          v19 = (v17 + 16 * v16);
          v20 = v16;
          while (1)
          {
            if (v20 >= *(v14 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v21 = *(v19 - 1);
            v22 = *v19;
            v16 = v20 + 1;

            v23 = sub_222BB11EC(92, 0xE100000000000000, v21, v22);
            if ((v24 & 1) == 0)
            {
              break;
            }

            v19 += 2;
            ++v20;
            if (v15 == v16)
            {
              goto LABEL_25;
            }
          }

          v25 = sub_222BB12DC(v23, v21, v22);
          v39 = v26;
          v40 = v25;
          v28 = v27;
          v38 = v29;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_222B4A758(0, *(v18 + 2) + 1, 1, v18);
          }

          v31 = *(v18 + 2);
          v30 = *(v18 + 3);
          if (v31 >= v30 >> 1)
          {
            v18 = sub_222B4A758((v30 > 1), v31 + 1, 1, v18);
          }

          *(v18 + 2) = v31 + 1;
          v32 = &v18[32 * v31];
          *(v32 + 4) = v40;
          *(v32 + 5) = v28;
          *(v32 + 6) = v39;
          *(v32 + 7) = v38;
          v17 = v14 + 40;
        }

        while (v15 - 1 != v20);
      }

      else
      {
        v18 = v2;
      }

LABEL_25:

      v34 = *(v13 + 2);
      v33 = *(v13 + 3);
      v4 = v35;
      if (v34 >= v33 >> 1)
      {
        result = sub_222B4CA30((v33 > 1), v34 + 1, 1);
      }

      ++v12;
      *(v13 + 2) = v34 + 1;
      *&v13[8 * v34 + 32] = v18;
      v2 = MEMORY[0x277D84F90];
      if (v12 == v37)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    return result;
  }

  v9 = *(MEMORY[0x277D84F90] + 16);
  if (v9)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_30:
  v13 = MEMORY[0x277D84F90];
LABEL_28:

  return v13;
}

uint64_t sub_222BB16C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v5 = sub_222B4282C(v4);
  if (!v5)
  {
    result = sub_222B73DD0(a1);
    v6 = 0;
LABEL_8:
    v7 = 0;
LABEL_9:
    v8 = 0;
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v6 = sub_222B42844(v4);
  if (!v6)
  {
    sub_222B73DD0(a1);

    v5 = 0;
    goto LABEL_8;
  }

  v7 = sub_222B4285C(v4);
  if (!v7)
  {
    sub_222B73DD0(a1);

    v5 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v8 = sub_222B417F4(v4);
  if (!v8)
  {
    sub_222B73DD0(a1);

    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v9 = sub_222BB13A4(v6);
  result = sub_222B73DD0(a1);
LABEL_11:
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  return result;
}

uint64_t sub_222BB17F8(char **a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v7 = *&v5[8 * v6 + 24];
    v8 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_3;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = 0;
  if (__OFADD__(-1, 1))
  {
    goto LABEL_19;
  }

LABEL_3:
  v9 = *(a3 + 16);
  if ((v9 - 1) >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9 - 1;
  }

  if (v8 < -1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 < v10 + 1)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    v5 = sub_222B4AB44(0, v6 + 1, 1, v5);
    goto LABEL_24;
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = (a3 + 16 * v10 + 40);
  v14 = v10;
  while (v14 != -1)
  {
    v3 = v14;
    if (v14 > v10)
    {
      __break(1u);
      goto LABEL_28;
    }

    if (*(v13 - 1) != v11 || *v13 != v12)
    {
      v16 = sub_222C951FC();
      v14 = v3 - 1;
      v13 -= 2;
      if ((v16 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

LABEL_20:
  if (v6)
  {
    v3 = *&v5[8 * v6 + 24];
  }

  else
  {
    v3 = 0;
  }

LABEL_23:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v18 = *(v5 + 2);
  v17 = *(v5 + 3);
  if (v18 >= v17 >> 1)
  {
    v5 = sub_222B4AB44((v17 > 1), v18 + 1, 1, v5);
  }

  *(v5 + 2) = v18 + 1;
  *&v5[8 * v18 + 32] = v3;
  *a1 = v5;
  return result;
}

uint64_t sub_222BB1980(uint64_t *a1, char *a2, char *a3)
{
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F88, &qword_222C9BAD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - v6;
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(v8 + 16);
  if (v10 == *(v9 + 16))
  {
    v11 = *a1;
    v12 = *(*a1 + 16);
    if (v12 == *(a1[1] + 16))
    {
      v60 = a1;
      v13 = MEMORY[0x277D84F90];
      v69[0] = MEMORY[0x277D84F90];
      v62 = v10;
      if (v10)
      {
        v14 = (v8 + 40);
        do
        {
          v15 = *v14;
          *&v70 = *(v14 - 1);
          *(&v70 + 1) = v15;

          sub_222BB17F8(v69, &v70, v11);

          v14 += 2;
          --v10;
        }

        while (v10);
        v13 = v69[0];
        v10 = v62;
      }

      v16 = *(v13 + 2);
      v61 = v13 + 32;
      v17 = 32;
      while (v16)
      {
        v18 = *&v13[v17];
        v17 += 8;
        --v16;
        if (v18 >= v12)
        {

          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v19 = sub_222C9431C();
          __swift_project_value_buffer(v19, qword_280FE2340);
          v20 = sub_222C942FC();
          v21 = sub_222C94A4C();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "[EntityUtteranceComparator] Could not map from postITN phonemes into preITN phonemes. Skipping entity-based comparison.";
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      v27 = MEMORY[0x277D84F90];
      if (!v10)
      {
        goto LABEL_41;
      }

      v28 = 0;
      v58 = v13;
      v59 = v9 + 32;
      while (2)
      {
        v29 = v28;
        v65 = v27;
LABEL_24:
        if (v29 >= v10)
        {
LABEL_49:
          __break(1u);
        }

        else if (!__OFADD__(v29, 1))
        {
          if (v29 < *(v13 + 2))
          {
            v30 = *&v61[8 * v29];
            if ((v30 & 0x8000000000000000) == 0)
            {
              v31 = v60[4];
              if (v30 < *(v31 + 16))
              {
                v67 = v29 + 1;
                v32 = (v59 + 16 * v29);
                v33 = v32[1];
                v63 = *v32;
                v64 = v29;
                v34 = *(v31 + 8 * v30 + 32);
                v35 = *(v34 + 16);
                v66 = v33;

                v36 = (v34 + 56);
                v37 = -v35;
                v38 = -1;
                do
                {
                  if (v37 + v38 == -1)
                  {

                    v29 = v67;
                    v10 = v62;
                    v27 = v65;
                    v13 = v58;
                    if (v67 != v62)
                    {
                      goto LABEL_24;
                    }

                    goto LABEL_41;
                  }

                  if (++v38 >= *(v34 + 16))
                  {
                    __break(1u);
                    goto LABEL_49;
                  }

                  v39 = v36 + 4;
                  v40 = *(v36 - 1);
                  v41 = *v36;
                  v70 = *(v36 - 3);
                  v71 = v40;
                  v72 = v41;
                  v69[0] = a2;
                  v69[1] = v68;
                  v42 = sub_222C9369C();
                  (*(*(v42 - 8) + 56))(v7, 1, 1, v42);
                  sub_222BB24B8();
                  sub_222B78598();

                  sub_222C94BDC();
                  v44 = v43;
                  sub_222B4FCD4(v7, &qword_27D025F88, &qword_222C9BAD8);

                  v36 = v39;
                }

                while ((v44 & 1) != 0);

                v27 = v65;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v73 = v27;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_222B4CAB0(0, v27[2] + 1, 1);
                  v27 = v73;
                }

                v10 = v62;
                v13 = v58;
                v47 = v27[2];
                v46 = v27[3];
                if (v47 >= v46 >> 1)
                {
                  sub_222B4CAB0((v46 > 1), v47 + 1, 1);
                  v13 = v58;
                  v27 = v73;
                }

                v27[2] = v47 + 1;
                v48 = &v27[3 * v47];
                v49 = v63;
                v48[4] = v64;
                v48[5] = v49;
                v28 = v67;
                v48[6] = v66;
                if (v28 != v10)
                {
                  continue;
                }

LABEL_41:

                v50 = v27[2];
                if (!v50)
                {

                  return MEMORY[0x277D84F90];
                }

                *&v70 = MEMORY[0x277D84F90];
                sub_222B4C418(0, v50, 0);
                v25 = v70;
                v51 = v27 + 6;
                do
                {
                  v53 = *(v51 - 1);
                  v52 = *v51;
                  *&v70 = v25;
                  v54 = *(v25 + 16);
                  v55 = *(v25 + 24);

                  if (v54 >= v55 >> 1)
                  {
                    sub_222B4C418((v55 > 1), v54 + 1, 1);
                    v25 = v70;
                  }

                  *(v25 + 16) = v54 + 1;
                  v56 = v25 + 16 * v54;
                  *(v56 + 32) = v53;
                  *(v56 + 40) = v52;
                  v51 += 3;
                  --v50;
                }

                while (v50);

                return v25;
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        break;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_54:
    swift_once();
  }

  v24 = sub_222C9431C();
  __swift_project_value_buffer(v24, qword_280FE2340);
  v20 = sub_222C942FC();
  v21 = sub_222C94A4C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "[EntityUtteranceComparator] Utterance and phoneme lengths do not match up. Skipping entity-based comparison.";
LABEL_17:
    _os_log_impl(&dword_222B39000, v20, v21, v23, v22, 2u);
    MEMORY[0x223DCA8C0](v22, -1, -1);
  }

LABEL_18:

  return MEMORY[0x277D84F90];
}

uint64_t sub_222BB1F5C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);
    v10 = sub_222C942FC();
    v11 = sub_222C94A4C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222B39000, v10, v11, "calculateRestatementScore called with useTrimmedUtterance=true. This is not supported for Contact restatement comparison. Full utterance comparison will be used instead.", v12, 2u);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }
  }

  sub_222B78534(a1, v8);
  sub_222BB16C4(v8, &v23);
  v13 = v23;
  if (v23)
  {
    v32 = v23;
    v33 = v24;
    v34 = v25;
    sub_222B78534(a2, v8);
    sub_222BB16C4(v8, &v26);
    if (v26)
    {
      v29 = v26;
      v30 = v27;
      v31 = v28;
      v14 = sub_222BB1980(&v32, 0x61746E6F635C5C5ELL, 0xEB000000002D7463);
      v35 = v32;
      sub_222B4FCD4(&v35, &qword_27D024F20, &unk_222C96CD0);
      v36 = v33;
      sub_222B4FCD4(&v36, &qword_27D024F20, &unk_222C96CD0);
      v37 = *(&v33 + 1);
      sub_222B4FCD4(&v37, &qword_27D024F20, &unk_222C96CD0);
      v38 = v34;
      sub_222B4FCD4(&v38, &qword_27D024F20, &unk_222C96CD0);
      v39 = *(&v34 + 1);
      sub_222B4FCD4(&v39, &qword_27D025F80, &qword_222C9BAD0);
      v44[0] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
      sub_222B72340();
      sub_222C9445C();

      v15 = sub_222BB1980(&v29, 0x61746E6F635C5C5ELL, 0xEB000000002D7463);
      v40 = v29;
      sub_222B4FCD4(&v40, &qword_27D024F20, &unk_222C96CD0);
      v41 = v30;
      sub_222B4FCD4(&v41, &qword_27D024F20, &unk_222C96CD0);
      v42 = *(&v30 + 1);
      sub_222B4FCD4(&v42, &qword_27D024F20, &unk_222C96CD0);
      v43 = v31;
      sub_222B4FCD4(&v43, &qword_27D024F20, &unk_222C96CD0);
      v44[0] = *(&v31 + 1);
      sub_222B4FCD4(v44, &qword_27D025F80, &qword_222C9BAD0);
      v22 = v15;
      v16 = sub_222C9445C();
      v18 = v17;

      v19._countAndFlagsBits = v16;
      v19._object = v18;
      v45 = String.scoreRatcliffObershelp(between:)(v19);
      v20 = *&v45.is_nil;

      return v20;
    }

    v41 = v13;
    sub_222B4FCD4(&v41, &qword_27D024F20, &unk_222C96CD0);
    v42 = v33;
    sub_222B4FCD4(&v42, &qword_27D024F20, &unk_222C96CD0);
    v43 = *(&v33 + 1);
    sub_222B4FCD4(&v43, &qword_27D024F20, &unk_222C96CD0);
    v44[0] = v34;
    sub_222B4FCD4(v44, &qword_27D024F20, &unk_222C96CD0);
    v29 = *(&v34 + 1);
    sub_222B4FCD4(&v29, &qword_27D025F80, &qword_222C9BAD0);
  }

  return 0;
}

unint64_t sub_222BB23C8()
{
  result = qword_27D025F78;
  if (!qword_27D025F78)
  {
    type metadata accessor for EntityUtteranceComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F78);
  }

  return result;
}

unint64_t sub_222BB24B8()
{
  result = qword_27D025F90;
  if (!qword_27D025F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F90);
  }

  return result;
}

id sub_222BB250C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (qword_27D0246E0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FA8, qword_222C9BAF0);
  v1 = sub_222C9470C();
  v7[0] = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch_error_];

  v3 = v7[0];
  if (!v2)
  {
    v4 = v3;
    v5 = sub_222C9342C();

    swift_willThrow();
    return 0;
  }

  return v2;
}

uint64_t sub_222BB2620()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C9BAE0;
  *(v0 + 32) = *MEMORY[0x277CBD018];
  qword_27D025FA0 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_222BB26C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v37 = v4;
  v38 = v2;
  v36 = v8;
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      while (1)
      {
        if (!*(a1 + 16) || (v13 = __clz(__rbit64(v7)) | (v12 << 6), v14 = *(v2 + 48), v15 = *(v14 + v13), v16 = sub_222BBF5A4(*(a1 + 40), *(v14 + v13)), v17 = -1 << *(a1 + 32), v18 = v16 & ~v17, ((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0))
        {
LABEL_77:

          return 0;
        }

        v7 &= v7 - 1;
        v19 = ~v17;
        while (1)
        {
          v20 = *(*(a1 + 48) + v18);
          if (v20 <= 3)
          {
            break;
          }

          if (*(*(a1 + 48) + v18) > 5u)
          {
            if (v20 == 6)
            {
              v25 = 0xD000000000000013;
              v26 = 0x8000000222CA93E0;
              if (v15 > 3)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v25 = 0xD000000000000012;
              v26 = 0x8000000222CA9400;
              if (v15 > 3)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            if (v20 == 4)
            {
              v25 = 0x7972617262696CLL;
            }

            else
            {
              v25 = 0xD000000000000011;
            }

            if (v20 == 4)
            {
              v26 = 0xE700000000000000;
            }

            else
            {
              v26 = 0x8000000222CA93C0;
            }

            if (v15 > 3)
            {
              goto LABEL_42;
            }
          }

LABEL_29:
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v34 = 0x6574616E696D6F6ELL;
            }

            else
            {
              v34 = 0x6974636572726F63;
            }

            if (v15 == 2)
            {
              v28 = 0xE900000000000064;
            }

            else
            {
              v28 = 0xEA00000000006E6FLL;
            }

            if (v25 == v34)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v27 = 0x754D6E69616D6F64;
            v28 = 0xEB00000000636973;
            if (v15)
            {
              v27 = 0x656D7269666E6F63;
              v28 = 0xE900000000000064;
            }

            if (v25 == v27)
            {
              goto LABEL_65;
            }
          }

LABEL_66:
          v35 = sub_222C951FC();

          if (v35)
          {
            goto LABEL_75;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        v21 = 0x6974636572726F63;
        if (v20 == 2)
        {
          v21 = 0x6574616E696D6F6ELL;
        }

        v22 = 0xEA00000000006E6FLL;
        if (v20 == 2)
        {
          v22 = 0xE900000000000064;
        }

        v23 = 0x754D6E69616D6F64;
        if (*(*(a1 + 48) + v18))
        {
          v23 = 0x656D7269666E6F63;
        }

        v24 = 0xEB00000000636973;
        if (*(*(a1 + 48) + v18))
        {
          v24 = 0xE900000000000064;
        }

        if (*(*(a1 + 48) + v18) <= 1u)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        if (*(*(a1 + 48) + v18) <= 1u)
        {
          v26 = v24;
        }

        else
        {
          v26 = v22;
        }

        if (v15 <= 3)
        {
          goto LABEL_29;
        }

LABEL_42:
        v29 = 0xD000000000000011;
        v30 = 0xD000000000000013;
        if (v15 != 6)
        {
          v30 = 0xD000000000000012;
        }

        v31 = 0x8000000222CA9400;
        if (v15 == 6)
        {
          v31 = 0x8000000222CA93E0;
        }

        if (v15 == 4)
        {
          v29 = 0x7972617262696CLL;
        }

        v32 = 0x8000000222CA93C0;
        if (v15 == 4)
        {
          v32 = 0xE700000000000000;
        }

        if (v15 <= 5)
        {
          v33 = v29;
        }

        else
        {
          v33 = v30;
        }

        if (v15 <= 5)
        {
          v28 = v32;
        }

        else
        {
          v28 = v31;
        }

        if (v25 != v33)
        {
          goto LABEL_66;
        }

LABEL_65:
        if (v26 != v28)
        {
          goto LABEL_66;
        }

LABEL_75:
        v11 = v12;
        v4 = v37;
        v2 = v38;
        v8 = v36;
        if (!v7)
        {
          goto LABEL_7;
        }

LABEL_6:
        v12 = v11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB2AB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v30 = v4;
  v31 = v2;
  v29 = v8;
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      while (1)
      {
        if (!*(a1 + 16) || (v13 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6))), sub_222C952FC(), sub_222C9452C(), , v14 = sub_222C9534C(), v15 = -1 << *(a1 + 32), v16 = v14 & ~v15, ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
        {
LABEL_48:

          return 0;
        }

        v7 &= v7 - 1;
        v17 = ~v15;
        while (1)
        {
          v18 = *(*(a1 + 48) + v16);
          if (v18 <= 1)
          {
            v19 = v18 == 0;
            v20 = *(*(a1 + 48) + v16) ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
            v21 = 0xEF6C6C6143656E6FLL;
            v22 = 0xEE00736567617373;
          }

          else
          {
            if (v18 == 2)
            {
              v20 = 0x656D7269666E6F63;
              v23 = 0xE900000000000064;
              if (v13 > 1)
              {
                goto LABEL_27;
              }

              goto LABEL_38;
            }

            v19 = v18 == 3;
            v20 = v18 == 3 ? 0x6574616E696D6F6ELL : 0x6974636572726F63;
            v21 = 0xEA00000000006E6FLL;
            v22 = 0xE900000000000064;
          }

          if (v19)
          {
            v23 = v22;
          }

          else
          {
            v23 = v21;
          }

          if (v13 > 1)
          {
LABEL_27:
            v24 = 0x6974636572726F63;
            if (v13 == 3)
            {
              v24 = 0x6574616E696D6F6ELL;
            }

            v25 = 0xEA00000000006E6FLL;
            if (v13 == 3)
            {
              v25 = 0xE900000000000064;
            }

            if (v13 == 2)
            {
              v26 = 0x656D7269666E6F63;
            }

            else
            {
              v26 = v24;
            }

            if (v13 == 2)
            {
              v27 = 0xE900000000000064;
            }

            else
            {
              v27 = v25;
            }

            goto LABEL_40;
          }

LABEL_38:
          v26 = 0x654D6E69616D6F64;
          v27 = 0xEE00736567617373;
          if (v13)
          {
            v26 = 0x68506E69616D6F64;
            v27 = 0xEF6C6C6143656E6FLL;
          }

LABEL_40:
          if (v20 == v26 && v23 == v27)
          {
            break;
          }

          v28 = sub_222C951FC();

          if (v28)
          {
            goto LABEL_46;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

LABEL_46:
        v11 = v12;
        v4 = v30;
        v2 = v31;
        v8 = v29;
        if (!v7)
        {
          goto LABEL_7;
        }

LABEL_6:
        v12 = v11;
      }
    }
  }

  __break(1u);
  return result;
}

void *PimsStoreRuntimeQueryWrapper.__allocating_init()()
{
  v0 = sub_222C9429C();
  v2 = v1;
  v3 = type metadata accessor for PIMSStoreCoreData();
  v4 = swift_allocObject();
  v5 = sub_222C769D4(v0, v2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
    sub_222C9403C();
    type metadata accessor for PimsStoreRuntimeQueryWrapper();
    v6 = swift_allocObject();
    v6[5] = v3;
    v6[6] = &protocol witness table for PIMSStoreCoreData;
    v6[2] = v4;
    type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
    v7 = swift_allocObject();
    type metadata accessor for SELFEventLogEmitters();
    v8 = swift_allocObject();
    sub_222B505F4(&v14, v8 + 16);
    result = v6;
    *(v7 + 16) = v8;
    v6[7] = v7;
  }

  else
  {
    swift_deallocPartialClassInstance();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222B39000, v11, v12, "[PimsStoreRuntimeQueryWrapper]: Failed to initialise PIMS store", v13, 2u);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    return 0;
  }

  return result;
}

void *PimsStoreRuntimeQueryWrapper.__allocating_init(store:logTarget:)(void *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_222BB38D0(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

void *PimsStoreRuntimeQueryWrapper.init(store:logTarget:)(void *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_222BB37F4(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_222BB31D4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PlusMediaSuggestion(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = v2[5];
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
  v13 = (*(v12 + 48))(a1, v11, v12);
  v14 = v13;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v16 = *(v13 + 16);

  v35 = v16;
  if (v16)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v32 = v15;
    v33 = v5;
    while (v17 < *(v14 + 16))
    {
      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = *(v6 + 72);
      sub_222B79B14(v14 + v19 + v20 * v17, v10);
      if (sub_222BB26C4(*&v10[*(v5 + 44)], v15) & 1) != 0 && (PlusMediaSuggestion.isNominated.getter())
      {
        sub_222B7D960(v10, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C630(0, *(v18 + 16) + 1, 1);
          v18 = v36;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_222B4C630((v22 > 1), v23 + 1, 1);
          v18 = v36;
        }

        *(v18 + 16) = v23 + 1;
        sub_222B7D960(v34, v18 + v19 + v23 * v20);
        v15 = v32;
        v5 = v33;
      }

      else
      {
        sub_222B7D9D0(v10);
      }

      if (v35 == ++v17)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_17:

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_23;
  }

LABEL_18:
  v24 = sub_222C9431C();
  __swift_project_value_buffer(v24, qword_280FE2340);
  swift_retain_n();

  v25 = sub_222C942FC();
  v26 = sub_222C94A3C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    v28 = *(v14 + 16);

    *(v27 + 4) = v28;

    *(v27 + 12) = 2048;
    v29 = *(v18 + 16);

    *(v27 + 14) = v29;

    _os_log_impl(&dword_222B39000, v25, v26, "[PimsStoreRuntimeQueryWrapper]: Found %ld results and %ld with matching tags.", v27, 0x16u);
    MEMORY[0x223DCA8C0](v27, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v18;
}

uint64_t sub_222BB3554(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_222C93A5C();
  swift_allocObject();
  v6 = sub_222C93A4C();
  sub_222C93A3C();
  MEMORY[0x223DC8590](v6);
  sub_222C9386C();
  sub_222C9381C();

  if (v14)
  {
    v7 = sub_222BB31D4(v14, a3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v8 = sub_222C9431C();
    __swift_project_value_buffer(v8, qword_280FE2340);

    v9 = sub_222C942FC();
    v10 = sub_222C94A4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_222B437C0(a1, a2, &v14);
      _os_log_impl(&dword_222B39000, v9, v10, "[PimsStoreRuntimeQueryWrapper]: unable to create USO for query from %s String", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t PimsStoreRuntimeQueryWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t PimsStoreRuntimeQueryWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_222BB37A4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_222BB37C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_222BB37F4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v10 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v11 = swift_allocObject();
  sub_222B505F4(a2, v11 + 16);
  *(v10 + 16) = v11;
  a3[7] = v10;
  return a3;
}

void *sub_222BB38D0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PimsStoreRuntimeQueryWrapper();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  return sub_222BB37F4(v11, a2, v12, a4, a5);
}

uint64_t dispatch thunk of PimsStoreRuntimeQueryWrapper.queryWithLogging(query:suggestionTags:plusId:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_222BB3A40(uint64_t a1)
{
  type metadata accessor for MessagesAbandonmentClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FC0, &unk_222C9BC40);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDD6F0 = 91;
  unk_280FDD6F8 = 0xE100000000000000;
  return result;
}

void sub_222BB3AD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > 3 || v3 == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v5 = sub_222C9431C();
    __swift_project_value_buffer(v5, qword_280FE2340);
    v6 = sub_222C942FC();
    v7 = sub_222C94A3C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      if (qword_280FDD6E8 != -1)
      {
        swift_once();
      }

      *(v8 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v25);
      _os_log_impl(&dword_222B39000, v6, v7, "%s Session has 0 or more than 3 turns, and so is out of scope of Messages Abandonment", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x223DCA8C0](v9, -1, -1);
      MEMORY[0x223DCA8C0](v8, -1, -1);
    }

    v10 = type metadata accessor for FeaturisedTurn(0);
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a2;
    goto LABEL_13;
  }

  if (v3 == 3)
  {
    v14 = a1;
    v15 = type metadata accessor for FeaturisedTurn(0);
    v24 = *(v15 - 8);

    sub_222B41D48(v16);
    v18 = v17;

    a1 = v14;
    if (v18)
    {

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v19 = sub_222C9431C();
      __swift_project_value_buffer(v19, qword_280FE2340);
      v20 = sub_222C942FC();
      v21 = sub_222C94A3C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        if (qword_280FDD6E8 != -1)
        {
          swift_once();
        }

        *(v22 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v25);
        _os_log_impl(&dword_222B39000, v20, v21, "%s Session has 3 turns, but the latter is not empty, and so session is out of scope of Messages Abandonment", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x223DCA8C0](v23, -1, -1);
        MEMORY[0x223DCA8C0](v22, -1, -1);
      }

      v11 = *(v24 + 56);
      v13 = a2;
      v12 = v15;
LABEL_13:

      v11(v13, 1, 1, v12);
      return;
    }
  }

  sub_222C434E4(a1, a2);
}

uint64_t sub_222BB3EEC(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_222C98AE0;
  v9 = (v8 + v7);
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x8000000222CAAC90;
  swift_storeEnumTagMultiPayload();
  v10 = (v9 + v6);
  *v10 = 0xD00000000000001DLL;
  v10[1] = 0x8000000222CA9AF0;
  sub_222B77FE8(a1);
  swift_storeEnumTagMultiPayload();
  sub_222BB4A28(v4, v9 + v6 + v5[14], type metadata accessor for RuleResult);
  v11 = (v9 + 2 * v6);
  v12 = v5[14];
  *v11 = 0xD00000000000001CLL;
  v11[1] = 0x8000000222CA9B40;
  sub_222C432CC(a1, (v11 + v12));
  v13 = v9 + 3 * v6;
  v14 = v5[14];
  *v13 = 0xD00000000000001BLL;
  *(v13 + 1) = 0x8000000222CA9B60;
  sub_222C3D810(a1, &v13[v14]);
  return v8;
}

void *sub_222BB410C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - v3;
  v5 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  sub_222BB3AD0(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_222B6537C(v4);
    if (*(a1 + 16))
    {
LABEL_3:
      v12 = sub_222C9360C();
      v14 = v13;
LABEL_7:
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v18 = sub_222C9431C();
      __swift_project_value_buffer(v18, qword_280FE2340);

      v19 = sub_222C942FC();
      v20 = sub_222C94A3C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v57 = v22;
        *v21 = 136315394;
        if (qword_280FDD6E8 != -1)
        {
          swift_once();
        }

        *(v21 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v57);
        *(v21 + 12) = 2080;
        v23 = sub_222B437C0(v12, v14, &v57);

        *(v21 + 14) = v23;
        _os_log_impl(&dword_222B39000, v19, v20, "%s Skipping conversation with id=%s with no or invalid dismissal features", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v22, -1, -1);
        MEMORY[0x223DCA8C0](v21, -1, -1);
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }

LABEL_6:
    v14 = 0x8000000222CA9B80;
    v12 = 0xD000000000000014;
    goto LABEL_7;
  }

  sub_222BB4A28(v4, v11, type metadata accessor for FeaturisedTurn);
  v15 = *&v11[*(v5 + 24)];
  v16 = sub_222B41494(v15);
  if (v17)
  {
    sub_222B73DD0(v11);
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v56 = v16;
  v25 = sub_222BB3EEC(v11);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v26 = sub_222C9431C();
  v27 = __swift_project_value_buffer(v26, qword_280FE2340);
  sub_222B78534(v11, v8);

  v28 = sub_222C942FC();
  v29 = sub_222C94A3C();

  if (os_log_type_enabled(v28, v29))
  {
    *&v55 = v27;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57 = v31;
    *v30 = 136315650;
    if (qword_280FDD6E8 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v57);
    *(v30 + 12) = 2080;
    sub_222C9367C();
    sub_222B9E5D0();
    v32 = sub_222C9517C();
    v34 = v33;
    sub_222B73DD0(v8);
    v35 = sub_222B437C0(v32, v34, &v57);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
    v37 = MEMORY[0x223DC94D0](v25, v36);
    v39 = sub_222B437C0(v37, v38, &v57);

    *(v30 + 24) = v39;
    _os_log_impl(&dword_222B39000, v28, v29, "%s Rule Matrix for turnId=%s, rulematrix=%s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v31, -1, -1);
    MEMORY[0x223DCA8C0](v30, -1, -1);
  }

  else
  {

    sub_222B73DD0(v8);
  }

  v40 = sub_222C1EC00(v25);

  if (!v40)
  {
    goto LABEL_42;
  }

  v41 = sub_222B41B30(v15);
  v42 = v41 >> 62;
  if (!v41)
  {
    goto LABEL_27;
  }

  if (!v42)
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  if (sub_222C94C6C() != 1)
  {
LABEL_35:
    v48 = sub_222C942FC();
    LOBYTE(v44) = sub_222C94A3C();
    if (os_log_type_enabled(v48, v44))
    {
      v51 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v51 = 136315394;
      if (qword_280FDD6E8 == -1)
      {
LABEL_37:
        *(v51 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v57);
        *(v51 + 12) = 2048;
        if (v42)
        {
          v53 = sub_222C94C6C();
        }

        else
        {
          v53 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v51 + 14) = v53;

        _os_log_impl(&dword_222B39000, v48, v44, "%s message has %ld recipients, rejecting", v51, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x223DCA8C0](v49, -1, -1);
        MEMORY[0x223DCA8C0](v51, -1, -1);

        goto LABEL_42;
      }

LABEL_49:
      swift_once();
      goto LABEL_37;
    }

LABEL_42:
    sub_222B73DD0(v11);
    return MEMORY[0x277D84F90];
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v43 = swift_allocObject();
  v55 = xmmword_222C97C40;
  v44 = v43;
  *(v43 + 16) = xmmword_222C97C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v45 = sub_222C9367C();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v55;
  v50 = *(v46 + 16);
  v49 = (v46 + 16);
  v50(v48 + v47, v11, v45);
  if (!v41)
  {
LABEL_45:
    v52 = 0;
    goto LABEL_46;
  }

  v51 = v41 & 0xFFFFFFFFFFFFFF8;
  if (!v42)
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

  if (!sub_222C94C6C())
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_30:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x223DC9B30](0, v41);
    goto LABEL_33;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_49;
  }

  v52 = *(v41 + 32);

LABEL_33:

LABEL_46:
  v44[7] = &type metadata for MessagesAbandonmentClassification;
  v44[8] = &protocol witness table for MessagesAbandonmentClassification;
  v54 = swift_allocObject();
  v44[4] = v54;
  v54[2] = v56;
  v54[3] = v48;
  v54[4] = MEMORY[0x277D84F90];
  v54[5] = v52;
  sub_222B73DD0(v11);
  return v44;
}

uint64_t sub_222BB4A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MessagesContactPartialRepetitionDefinition.__allocating_init()()
{
  v0 = swift_allocObject();
  MessagesContactPartialRepetitionDefinition.init()();
  return v0;
}

uint64_t MessagesContactPartialRepetitionDefinition.init()()
{
  v1 = v0;
  type metadata accessor for MessagesContactPartialRepetitionDefinition();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FC8, &unk_222C9BC60);
  v2 = sub_222C944EC();
  MEMORY[0x223DC9330](v2);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  type metadata accessor for EntityPromptClassifier();
  v4 = swift_allocObject();
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD0, &unk_222C9BC70);
  *(v3 + 64) = &off_28360D250;
  *(v3 + 32) = v4;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_222BB4BF0()
{
  v0 = sub_222BAFDE0(&unk_283607BF8);
  result = sub_222BB6FDC(&unk_283607C18);
  qword_280FDBDF8 = v0;
  return result;
}

uint64_t sub_222BB4C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD8, &qword_222CA5EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  if (qword_280FDBDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_280FDBDF8;
  v2 = type metadata accessor for EntityNodeComparator();
  v3 = swift_allocObject();
  *(v3 + 32) = v1;
  *(v3 + 16) = 0x3FE6666666666666;
  *(v3 + 24) = 0;
  *(v0 + 56) = v2;
  *(v0 + 64) = &protocol witness table for EntityNodeComparator;
  *(v0 + 32) = v3;

  return v0;
}

uint64_t sub_222BB4D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  type metadata accessor for SuccessfulMessageClassifier();
  v1 = swift_allocObject();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FE0, &qword_222C9BC80);
  *(v0 + 64) = &off_28360D250;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_222BB4DAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_222B43E3C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v10;
    v5 = v11;
    result = v12;
    if (v8 == 1)
    {
      v6 = v9;
      v7 = 1;
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v4 = 0;
      v5 = 0;
      result = 0;
    }

    *a2 = v7;
    a2[1] = v6;
    a2[2] = v4;
    a2[3] = v5;
    a2[4] = result;
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

BOOL sub_222BB4E80(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_222B41F28(a1[2]);
  if (v4 & 1) == 0 && (v1 == 0xD000000000000013 ? (v6 = 0x8000000222CA87A0 == v2) : (v6 = 0), v6 || (v7 = v3, v8 = sub_222C951FC(), v3 = v7, (v8)))
  {
    return v3 == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222BB4F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for MessagesGroundTruth(0);
  *(a5 + v16[5]) = 1;
  *(a5 + v16[6]) = a2;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9, v10, v11);
}

uint64_t sub_222BB5064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v36 = a3;
  v42 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v10;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v35 = v5;
  v38 = (v5 + 48);
  v39 = (v5 + 56);
  v44 = *a1;

  v43 = 0;
  while (1)
  {
    v23 = v43;
    v24 = *(v44 + 16);
    if (v43 == v24)
    {
      v25 = 1;
      v27 = v41;
      v26 = v42;
      v28 = v40;
      goto LABEL_15;
    }

    v27 = v41;
    v26 = v42;
    v28 = v40;
    if (v43 >= v24)
    {
      break;
    }

    sub_222BB6F14(v44 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v43, v40, type metadata accessor for FeaturisedTurn);
    v25 = 0;
    ++v23;
LABEL_15:
    (*v39)(v28, v25, 1, v26);
    sub_222B5EC84(v28, v27);
    if ((*v38)(v27, 1, v26) == 1)
    {

      v33 = v36;
      *v36 = 0u;
      v33[1] = 0u;
      return result;
    }

    v43 = v23;
    v29 = v27;
    v30 = v37;
    sub_222B441A4(v29, v37, type metadata accessor for FeaturisedTurn);
    v31 = *(v30 + *(v26 + 28));

    sub_222BB6F7C(v30, type metadata accessor for FeaturisedTurn);

    v32 = v31;
    if (v31)
    {
      v14 = (v31 + 64);
      v15 = -1;
      while (1)
      {
        ++v15;
        v16 = *(v32 + 16);
        if (v15 == v16)
        {
          break;
        }

        if (v15 >= v16)
        {
          __break(1u);
          goto LABEL_22;
        }

        v18 = *(v14 - 4);
        v17 = *(v14 - 3);
        v19 = *(v14 - 2);
        v20 = *(v14 - 1);
        v21 = *v14;
        if (v18 == v11 && v17 == v12)
        {
          v18 = v11;
LABEL_19:

          v45[0] = v18;
          v45[1] = v17;
          v45[2] = v19;
          v45[3] = v20;
          v45[4] = v21;
          extractContactReference(event:)(v45, v36);
        }

        v14 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

void *sub_222BB53E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41660(*(a1 + 16));
  if (!result)
  {
    goto LABEL_6;
  }

  if (!result[2])
  {

LABEL_6:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v4 = result[6];
  v5 = result[7];
  v6 = result[8];
  v7 = result[9];

  if (v5)
  {

    v8 = v7;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v8 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
}

unint64_t sub_222BB54C4(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41B30(*(a1 + *(v2 + 24)));
  if (!result)
  {
    return result;
  }

  v4 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_222C94C6C();
    result = v6;
    if (v7 == 1)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DC9B30](0);
    goto LABEL_7;
  }

  if (*(v4 + 16))
  {
    v5 = *(result + 32);

LABEL_7:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB5590(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FeaturisedSession(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16) >= 9uLL)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    sub_222BB6F14(a1, v10, type metadata accessor for FeaturisedSession);

    v12 = sub_222C942FC();
    v13 = sub_222C94A3C();

    if (!os_log_type_enabled(v12, v13))
    {
      sub_222BB6F7C(v10, type metadata accessor for FeaturisedSession);
      goto LABEL_20;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v27);
    *(v14 + 12) = 2048;
    v16 = *(*v10 + 16);
    sub_222BB6F7C(v10, type metadata accessor for FeaturisedSession);
    *(v14 + 14) = v16;
    _os_log_impl(&dword_222B39000, v12, v13, "%s Turn has %ld, over limit threshold. Skipping partial repetition ground truth generation", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x223DCA8C0](v15, -1, -1);
    v17 = v14;
LABEL_18:
    MEMORY[0x223DCA8C0](v17, -1, -1);
LABEL_20:

    return 0;
  }

  if (a3 & 1) != 0 && (sub_222BB6040(a1))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v18 = sub_222C9431C();
    __swift_project_value_buffer(v18, qword_280FE2340);

    v12 = sub_222C942FC();
    v19 = sub_222C94A3C();

    if (!os_log_type_enabled(v12, v19))
    {
      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v27);
    v22 = "%s Session is composite and contains out of scope elements. Skipping partial repetition ground truth generation";
    goto LABEL_17;
  }

  sub_222BB5998(a2);
  if (v23)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);

    v12 = sub_222C942FC();
    v19 = sub_222C94A3C();

    if (!os_log_type_enabled(v12, v19))
    {
      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v27);
    v22 = "%s Prompt selected in session. Skipping partial repetition ground truth generation";
LABEL_17:
    _os_log_impl(&dword_222B39000, v12, v19, v22, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x223DCA8C0](v21, -1, -1);
    v17 = v20;
    goto LABEL_18;
  }

  return 1;
}

void sub_222BB5998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for EntityPromptClassification(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v22 = &v22 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    v13 = MEMORY[0x277D84F90];
    v23 = v8;
    do
    {
      sub_222B43E3C(v12, v25);
      sub_222B405A0(v25, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v14 = swift_dynamicCast();
      (*(v6 + 56))(v4, v14 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_222B4FCD4(v4, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222B441A4(v4, v8, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_222B49F90(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_222B49F90((v15 > 1), v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        v17 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16;
        v8 = v23;
        sub_222B441A4(v23, v17, type metadata accessor for EntityPromptClassification);
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = 0;
  v19 = v13[2];
  v20 = v22;
  while (1)
  {
    if (v19 == v18)
    {
      goto LABEL_17;
    }

    if (v18 >= v13[2])
    {
      break;
    }

    sub_222BB6F14(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18++, v20, type metadata accessor for EntityPromptClassification);
    v21 = *(v20 + 48);

    sub_222BB6F7C(v20, type metadata accessor for EntityPromptClassification);
    if (v21)
    {

LABEL_17:

      return;
    }
  }

  __break(1u);
}

uint64_t MessagesContactPartialRepetitionDefinition.deinit()
{

  return v0;
}

uint64_t MessagesContactPartialRepetitionDefinition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222BB5DC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for MessagesGroundTruth(0);
  *(a5 + v16[5]) = 1;
  *(a5 + v16[6]) = v7;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9, v10, v11);
}

unint64_t sub_222BB5F44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41B30(*(a1 + *(v4 + 24)));
  if (!result)
  {
    goto LABEL_10;
  }

  v6 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v8 = result;
  v9 = sub_222C94C6C();
  result = v8;
  if (v9 != 1)
  {
LABEL_9:

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223DC9B30](0);
    goto LABEL_7;
  }

  if (*(v6 + 16))
  {
    v7 = *(result + 32);

LABEL_7:

LABEL_11:
    *a2 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB6040(uint64_t *a1)
{
  v59 = type metadata accessor for FeaturisedTurn(0);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v49 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = *a1;
  v51 = *(*a1 + 16);
  if (v51)
  {
    v12 = 0;
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v58 = v11 + v55;
    v53 = v11;
    v52 = &v49 - v9;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        goto LABEL_62;
      }

      v13 = *(v54 + 72);
      sub_222BB6F14(v58 + v13 * v12, v10, type metadata accessor for FeaturisedTurn);
      v14 = *&v10[*(v59 + 24)];
      v15 = *(v14 + 16);
      if (v15)
      {
        break;
      }

LABEL_3:
      v10 = v52;
      sub_222BB6F7C(v52, type metadata accessor for FeaturisedTurn);
      ++v12;
      v11 = v53;
      if (v12 == v51)
      {
        goto LABEL_46;
      }
    }

    v16 = 0;
    v17 = v14 + 32;
    while (v16 < *(v14 + 16))
    {
      sub_222B43E3C(v17, v63);
      sub_222B405A0(v63, &v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      sub_222C93FCC();
      if (swift_dynamicCast())
      {

        sub_222BB6F7C(v52, type metadata accessor for FeaturisedTurn);
        v18 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          if ((v18 & 0x8000000000000000) == 0)
          {
            if (*(v53 + 16) >= v18)
            {

              v19 = 0;
              v20 = MEMORY[0x277D84F90];
              do
              {
                sub_222BB6F14(v58 + v19 * v13, v7, type metadata accessor for FeaturisedTurn);
                v21 = *&v7[*(v59 + 24)];
                v22 = *(v21 + 16);
                if (!v22)
                {
LABEL_15:
                  sub_222BB6F7C(v7, type metadata accessor for FeaturisedTurn);
                  goto LABEL_16;
                }

                v23 = 0;
                v24 = v21 + 32;
                while (1)
                {
                  if (v23 >= *(v21 + 16))
                  {
                    __break(1u);
LABEL_53:

                    if (qword_280FDFE78 != -1)
                    {
                      swift_once();
                    }

                    v44 = sub_222C9431C();
                    __swift_project_value_buffer(v44, qword_280FE2340);
                    v45 = v50;

                    v33 = sub_222C942FC();
                    v46 = sub_222C94A3C();

                    if (os_log_type_enabled(v33, v46))
                    {
                      v47 = swift_slowAlloc();
                      v48 = swift_slowAlloc();
                      *&v61 = v48;
                      *v47 = 136315138;
                      *(v47 + 4) = sub_222B437C0(*(v45 + 16), *(v45 + 24), &v61);
                      _os_log_impl(&dword_222B39000, v33, v46, "%s Found payload before dismissal. Composite session is out of scope.", v47, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v48);
                      MEMORY[0x223DCA8C0](v48, -1, -1);
                      MEMORY[0x223DCA8C0](v47, -1, -1);
                    }

                    else
                    {
LABEL_58:
                    }

                    sub_222B4FCD4(v63, &qword_27D024860, &unk_222C962F0);
                    return 1;
                  }

                  sub_222B43E3C(v24, v63);
                  sub_222B405A0(v63, &v61);
                  type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
                  if (swift_dynamicCast())
                  {
                    break;
                  }

                  ++v23;
                  v24 += 40;
                  if (v22 == v23)
                  {
                    goto LABEL_15;
                  }
                }

                sub_222B441A4(v7, v57, type metadata accessor for FeaturisedTurn);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v60[0] = v20;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_222B4C3D4(0, *(v20 + 16) + 1, 1);
                  v20 = v60[0];
                }

                v27 = *(v20 + 16);
                v26 = *(v20 + 24);
                if (v27 >= v26 >> 1)
                {
                  sub_222B4C3D4((v26 > 1), v27 + 1, 1);
                  v20 = v60[0];
                }

                *(v20 + 16) = v27 + 1;
                sub_222B441A4(v57, v20 + v55 + v27 * v13, type metadata accessor for FeaturisedTurn);
LABEL_16:
                ++v19;
              }

              while (v19 != v18);

              v28 = *(v20 + 16);
              if (v28)
              {
                v29 = 0;
                v59 = *(v59 + 24);
                v30 = v20 + v55;
                while (1)
                {
                  if (v29 >= *(v20 + 16))
                  {
                    goto LABEL_61;
                  }

                  v32 = v56;
                  sub_222BB6F14(v30 + v29 * v13, v56, type metadata accessor for FeaturisedTurn);
                  v33 = *(v32 + v59);

                  sub_222BB6F7C(v32, type metadata accessor for FeaturisedTurn);
                  isa = v33[2].isa;
                  if (isa)
                  {
                    v35 = 0;
                    v36 = &v33[4];
                    while (v35 < v33[2].isa)
                    {
                      sub_222B43E3C(v36, &v61);
                      sub_222B43E3C(&v61, v60);
                      type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
                      if (swift_dynamicCast())
                      {

                        sub_222B405A0(&v61, v63);
                        goto LABEL_41;
                      }

                      v35 = (v35 + 1);
                      __swift_destroy_boxed_opaque_existential_0Tm(&v61);
                      v36 += 40;
                      if (isa == v35)
                      {
                        goto LABEL_39;
                      }
                    }

                    __break(1u);
                    goto LABEL_58;
                  }

LABEL_39:

                  v64 = 0;
                  memset(v63, 0, sizeof(v63));
LABEL_41:
                  sub_222B43F34(v63, &v61);
                  if (!v62)
                  {
                    break;
                  }

                  type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    v31 = v63;
                    goto LABEL_31;
                  }

                  sub_222C93EFC();

                  if (v61 == 1)
                  {
                    goto LABEL_53;
                  }

                  sub_222B4FCD4(v63, &qword_27D024860, &unk_222C962F0);

LABEL_32:
                  if (++v29 == v28)
                  {
                    goto LABEL_50;
                  }
                }

                sub_222B4FCD4(v63, &qword_27D024860, &unk_222C962F0);
                v31 = &v61;
LABEL_31:
                sub_222B4FCD4(v31, &qword_27D024860, &unk_222C962F0);
                goto LABEL_32;
              }

LABEL_50:

              return 0;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      ++v16;
      v17 += 40;
      if (v15 == v16)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_46:
  if (qword_280FDFE78 != -1)
  {
LABEL_66:
    swift_once();
  }

  v37 = sub_222C9431C();
  __swift_project_value_buffer(v37, qword_280FE2340);
  v38 = v50;

  v39 = sub_222C942FC();
  v40 = sub_222C94A3C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v63[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_222B437C0(*(v38 + 16), *(v38 + 24), v63);
    _os_log_impl(&dword_222B39000, v39, v40, "%s isCompositeSessionOutOfScope: No dismissal turn - not checking for payload", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x223DCA8C0](v42, -1, -1);
    MEMORY[0x223DCA8C0](v41, -1, -1);
  }

  return 0;
}

void sub_222BB6938(uint64_t *a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v20 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v19 = v2;
    while (v10 < *(v8 + 16))
    {
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = *(v3 + 72);
      sub_222BB6F14(v8 + v12 + v13 * v10, v7, type metadata accessor for FeaturisedTurn);
      v14 = *&v7[*(v2 + 24)];
      if (sub_222B41D30(v14) && (, sub_222B417F4(v14)))
      {

        sub_222B441A4(v7, v20, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v11 + 16) + 1, 1);
          v11 = v21;
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_222B4C3D4((v16 > 1), v17 + 1, 1);
          v11 = v21;
        }

        *(v11 + 16) = v17 + 1;
        sub_222B441A4(v20, v11 + v12 + v17 * v13, type metadata accessor for FeaturisedTurn);
        v2 = v19;
      }

      else
      {
        sub_222BB6F7C(v7, type metadata accessor for FeaturisedTurn);
      }

      if (v9 == ++v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_222BB6B88(uint64_t a1, uint64_t a2)
{
  result = sub_222BB6C84(&qword_280FDBDE8, a2, type metadata accessor for MessagesContactPartialRepetitionDefinition, &protocol conformance descriptor for MessagesContactPartialRepetitionDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222BB6C84(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BB6F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BB6F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

SiriPrivateLearningInference::ContactSuggestionTag_optional __swiftcall ContactSuggestionTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactSuggestionTag.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x654D6E69616D6F64;
  v3 = 0x656D7269666E6F63;
  v4 = 0x6574616E696D6F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6974636572726F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68506E69616D6F64;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_222BB7160()
{
  result = qword_280FDF1D8;
  if (!qword_280FDF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDF1D8);
  }

  return result;
}

uint64_t sub_222BB71B4()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BB72BC(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222BB73B0(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222BB74C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736567617373;
  v4 = 0x654D6E69616D6F64;
  v5 = 0x656D7269666E6F63;
  v6 = 0xE900000000000064;
  v7 = 0x6574616E696D6F6ELL;
  v8 = 0xE900000000000064;
  if (v2 != 3)
  {
    v7 = 0x6974636572726F63;
    v8 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x68506E69616D6F64;
    v3 = 0xEF6C6C6143656E6FLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_222BB7660()
{
  result = qword_27D025FE8;
  if (!qword_27D025FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025FE8);
  }

  return result;
}

void *sub_222BB76B4(uint64_t a1)
{
  v2 = sub_222C94C2C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_222BB7DF8(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void *sub_222BB7734@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_222C94C2C();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 5;
  }

  else
  {
    result = sub_222BB7F28(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_222BB77B0(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_222C94D4C();
  swift_getObjectType();
  result = sub_222C94D4C();
  if (v1 == result)
  {
    v3 = sub_222C94D5C();
    swift_unknownObjectRelease();
    if (v3)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      sub_222C94F1C();
      swift_unknownObjectRelease();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_222BB78A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222C94C2C();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_222BB7E8C(&v7, v4, *(a1 + 36), 0, a1);
    *(a2 + 8) = v6;
    result = *&v7;
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t Conversation.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v1 - 8);
  v23 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v24 = &v21 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  sub_222C93BEC();
  swift_getObjectType();
  swift_unknownObjectRetain();
LABEL_8:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = sub_222C94D4C();
  if (v11 == sub_222C94D4C())
  {
    while (1)
    {
      v8 = sub_222C94D5C();
      swift_unknownObjectRelease();
      if (v8)
      {
        break;
      }

      sub_222C94F1C();
      Turn.getTimestamp()(v7);

      v9 = sub_222C935EC();
      v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
      sub_222BA2994(v7);
      if (v10 != 1)
      {
        break;
      }

      if (swift_isUniquelyReferenced_nonNull())
      {
        sub_222C94EEC();
        goto LABEL_8;
      }

      sub_222C94EFC();
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_222C94D4C();
      if (v22 != sub_222C94D4C())
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    __break(1u);
  }

  swift_unknownObjectRetain();
  v12 = sub_222C94D4C();
  swift_getObjectType();
  result = sub_222C94D4C();
  if (v12 == result)
  {
    v14 = sub_222C94D5C();
    swift_unknownObjectRelease();
    if (v14)
    {
      swift_unknownObjectRelease();
      v15 = sub_222C935EC();
      (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
    }

    sub_222C94F1C();
    v16 = v24;
    Turn.getTimestamp()(v24);

    v17 = v23;
    sub_222B81ED0(v16, v23);
    v18 = sub_222C935EC();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v17, 1, v18);
    if (result != 1)
    {
      v20 = v25;
      (*(v19 + 32))(v25, v17, v18);
      swift_unknownObjectRelease();
      sub_222BA2994(v16);
      (*(v19 + 56))(v20, 0, 1, v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Conversation.getConversationId()@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_222C93BEC();
  v4 = sub_222BB77B0(v3);

  if (v4)
  {
    sub_222C941DC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222C9367C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *sub_222BB7DF8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_222BB7E8C(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 16 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222BB7F28@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_222BB805C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MigrationPolicyAddDefaultTag();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_222BB80B8(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_222C9448C();
  v4 = [v2 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_222B9A614();
  *(v5 + 32) = 0x68506E69616D6F64;
  *(v5 + 40) = 0xEF6C6C6143656E6FLL;
  v6 = sub_222C949EC();
  [v4 setPredicate_];

  [v4 setFetchLimit_];
  v7 = [a1 destinationContext];
  sub_222B505A8(0, &qword_27D025FF0, 0x277CBE438);
  v8 = sub_222C94B2C();

  if (v8 >> 62)
  {
    result = sub_222C94C6C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v13 = objc_opt_self();
    v14 = sub_222C9448C();
    v15 = [a1 destinationContext];
    v16 = [v13 insertNewObjectForEntityForName:v14 inManagedObjectContext:v15];

    v17 = sub_222C9448C();
    v18 = sub_222C9448C();
    [v16 setValue:v17 forKey:v18];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_222C9BAE0;
    *(v19 + 32) = v16;

    return v19;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223DC9B30](0, v8);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_6:
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222C9BAE0;
    *(v12 + 32) = v11;

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t ContactSuggestionStoreCandidateAdapter.__allocating_init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = sub_222B63530(MEMORY[0x277D84F90]);
  sub_222B505F4(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t ContactSuggestionStoreCandidateAdapter.init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = sub_222B63530(MEMORY[0x277D84F90]);
  sub_222B505F4(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_222BB84FC(uint64_t a1)
{
  v3 = type metadata accessor for PlusContactSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  swift_beginAccess();
  v29 = v1;
  v10 = v1[8];
  if (*(v10 + 16))
  {

    v11 = sub_222B8CCFC(a1);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      return v13;
    }
  }

  v14 = v29[5];
  v15 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v14);
  v16 = *(v15 + 56);
  v28 = a1;
  result = v16(a1, v14, v15);
  v18 = result;
  v32 = *(result + 16);
  if (!v32)
  {
    v13 = MEMORY[0x277D84F90];
    v20 = v29;
LABEL_17:

    swift_beginAccess();
    v26 = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v20[8];
    v20[8] = 0x8000000000000000;
    sub_222BAA7DC(v13, v26, isUniquelyReferenced_nonNull_native);

    v20[8] = v33;
    swift_endAccess();
    return v13;
  }

  v19 = 0;
  v13 = MEMORY[0x277D84F90];
  v20 = v29;
  v30 = v6;
  v31 = v3;
  while (v19 < *(v18 + 16))
  {
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = *(v4 + 72);
    sub_222BB8CF4(v18 + v21 + v22 * v19, v9);
    if (sub_222BB2AB8(*&v9[*(v3 + 36)], v20[7]))
    {
      sub_222BB8DB4(v9, v6);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v13;
      if ((v23 & 1) == 0)
      {
        sub_222B4C6E8(0, *(v13 + 16) + 1, 1);
        v20 = v29;
        v13 = v34;
      }

      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_222B4C6E8((v24 > 1), v25 + 1, 1);
        v20 = v29;
        v13 = v34;
      }

      *(v13 + 16) = v25 + 1;
      v6 = v30;
      result = sub_222BB8DB4(v30, v13 + v21 + v25 * v22);
      v3 = v31;
    }

    else
    {
      result = sub_222BB8D58(v9);
    }

    if (v32 == ++v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB8810(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_222BAA7DC(a2, a1, isUniquelyReferenced_nonNull_native);

  *(v2 + 64) = v7;
  return swift_endAccess();
}

uint64_t sub_222BB88B0()
{
  v1 = v0;
  v2 = type metadata accessor for PlusContactSuggestion(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = v0[8];
  v6 = *(v5 + 64);
  v26 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v25 = (v7 + 63) >> 6;

  v11 = 0;
  v27 = result;
LABEL_5:
  while (v9)
  {
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(*(result + 56) + ((v11 << 9) | (8 * v13)));
    v15 = *(v14 + 16);
    if (v15)
    {
      v28 = v14 + ((*(v29 + 80) + 32) & ~*(v29 + 80));

      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        sub_222BB8CF4(v28 + *(v29 + 72) * v16, v4);
        v18 = v1[5];
        v17 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
        if (((*(v17 + 24))(v4, v18, v17) & 1) == 0)
        {
          v19 = v1[5];
          v20 = v1[6];
          __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
          if (((*(v20 + 8))(v4, v19, v20) & 1) == 0)
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v21 = sub_222C9431C();
            __swift_project_value_buffer(v21, qword_280FE2340);
            v22 = sub_222C942FC();
            v23 = sub_222C94A4C();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&dword_222B39000, v22, v23, "Failed to write updated candiates to the suggestion store", v24, 2u);
              MEMORY[0x223DCA8C0](v24, -1, -1);
            }
          }
        }

        ++v16;
        result = sub_222BB8D58(v4);
        if (v15 == v16)
        {

          result = v27;
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v25)
    {
    }

    v9 = *(v26 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

void *ContactSuggestionStoreCandidateAdapter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t ContactSuggestionStoreCandidateAdapter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222BB8C54(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_222BAA7DC(a2, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v8;
  return swift_endAccess();
}

uint64_t sub_222BB8CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BB8D58(uint64_t a1)
{
  v2 = type metadata accessor for PlusContactSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BB8DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_222BB8E1C()
{
  result = qword_27D025FF8;
  if (!qword_27D025FF8)
  {
    type metadata accessor for PlusContactSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025FF8);
  }

  return result;
}

uint64_t sub_222BB8F88(uint64_t a1)
{
  v2 = type metadata accessor for QuickHangupClassification(0);
  MEMORY[0x28223BE20](v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  sub_222B43E3C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  if (swift_dynamicCast())
  {
    sub_222BB90A8(v4);
    return 1;
  }

  else
  {
    sub_222B43E3C(a1, v8);
    result = swift_dynamicCast();
    if (result)
    {
      v6 = result;

      return v6;
    }
  }

  return result;
}

uint64_t sub_222BB90A8(uint64_t a1)
{
  v2 = type metadata accessor for QuickHangupClassification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Double_optional __swiftcall String.scoreRatcliffObershelp(between:)(Swift::String between)
{
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  object = between._object;
  countAndFlagsBits = between._countAndFlagsBits;
  v7 = HIBYTE(between._object) & 0xF;
  if ((between._object & 0x2000000000000000) == 0)
  {
    v7 = between._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_11:
    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  if (v1 == between._countAndFlagsBits && v2 == between._object || (v8 = v1, v9 = v2, (sub_222C951FC() & 1) != 0))
  {
    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  v11 = sub_222C9453C();
  v10 = sub_222C9453C();
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = String.commonSequences(between:)(countAndFlagsBits, object, v8, v9);
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = MEMORY[0x277D84F90];
    sub_222B4C7F8(0, v14, 0);
    v15 = v26;
    v16 = v13 + 40;
    do
    {

      v17 = sub_222C9453C();

      v19 = *(v26 + 16);
      v18 = *(v26 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_222B4C7F8((v18 > 1), v19 + 1, 1);
      }

      *(v26 + 16) = v19 + 1;
      *(v26 + 8 * v19 + 32) = v17;
      v16 += 16;
      --v14;
    }

    while (v14);

    v20 = *(v26 + 16);
    if (v20)
    {
LABEL_19:
      v21 = 0;
      v22 = 32;
      while (1)
      {
        v23 = *(v15 + v22);
        v24 = __OFADD__(v21, v23);
        v21 += v23;
        if (v24)
        {
          break;
        }

        v22 += 8;
        if (!--v20)
        {

          v25 = v21;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (v20)
    {
      goto LABEL_19;
    }
  }

  v25 = 0.0;
LABEL_25:
  v3 = 2.0 / v12 * v25;
  LOBYTE(v10) = LOBYTE(v3);
LABEL_28:
  result.value = v3;
  result.is_nil = v10;
  return result;
}

uint64_t String.commonSequences(between:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a2;
  v9 = a1;
  v10 = MEMORY[0x277D84F90];
  v11 = sub_222BB98E0(a1, a2, a3, a4);
  if (v11 < 1)
  {
    return v10;
  }

  v15 = v11;
  v16 = v12;
  v17 = v12 - v11;
  if (__OFSUB__(v12, v11))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v13;
  v18 = sub_222C9457C();
  v14 = sub_222C9457C() >> 14;
  if (v14 < v18 >> 14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v98 = v15;
  v99 = v4;
  v96 = v9;
  v19 = sub_222C9462C();
  v5 = MEMORY[0x223DC92B0](v19);
  v93 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC0, &qword_222C96A98);
  inited = swift_initStackObject();
  v97 = xmmword_222C96900;
  *(inited + 16) = xmmword_222C96900;

  v9 = sub_222BB9D18(v17, a3, a4);
  v4 = v22;
  v17 = v23;
  v15 = v24;

  *(inited + 32) = v9;
  *(inited + 40) = v4;
  *(inited + 48) = v17;
  *(inited + 56) = v15;

  v25 = sub_222C9453C();
  v26 = __OFSUB__(v25, v16);
  v27 = v25 - v16;
  if (!v26)
  {
    v92 = v5;
    v28 = sub_222BB9BC0(v27, a3, a4);
    v5 = v29;
    v31 = v30;
    v16 = v32;

    v94 = v31;
    v95 = v28;
    *(inited + 64) = v28;
    *(inited + 72) = v5;
    *(inited + 80) = v31;
    *(inited + 88) = v16;
    v100 = MEMORY[0x277D84F90];
    sub_222B4C418(0, 2, 0);
    v33 = v100;
    v34 = *(inited + 32);
    v35 = *(inited + 40);
    v36 = *(inited + 48);
    v37 = *(inited + 56);

    v4 = MEMORY[0x223DC92B0](v34, v35, v36, v37);
    v9 = v38;

    v15 = v100[2];
    v14 = v100[3];
    v17 = v15 + 1;
    if (v15 < v14 >> 1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  sub_222B4C418((v14 > 1), v17, 1);
  v33 = v100;
LABEL_6:
  v33[2] = v17;
  v39 = &v33[2 * v15];
  v39[4] = v4;
  v39[5] = v9;

  v40 = MEMORY[0x223DC92B0](v95, v5, v94, v16);
  v42 = v41;

  v101 = v33;
  v44 = v33[2];
  v43 = v33[3];
  v45 = v44 + 1;
  if (v44 >= v43 >> 1)
  {
    sub_222B4C418((v43 > 1), v44 + 1, 1);
  }

  v33[2] = v45;
  v46 = &v33[2 * v44];
  v46[4] = v40;
  v46[5] = v42;
  v47 = swift_initStackObject();
  *(v47 + 16) = v97;
  v48 = v98;
  v49 = v99;
  v50 = v99 - v98;
  if (__OFSUB__(v99, v98))
  {
    __break(1u);
  }

  else
  {
    v51 = v47;

    v44 = v96;
    v50 = sub_222BB9D18(v50, v96, v8);
    v53 = v52;
    v45 = v54;
    v56 = v55;

    v51[4] = v50;
    v51[5] = v53;
    v51[6] = v45;
    v51[7] = v56;

    v57 = sub_222C9453C();
    v26 = __OFSUB__(v57, v99);
    v58 = v57 - v99;
    if (!v26)
    {
      v59 = sub_222BB9BC0(v58, v96, v8);
      v61 = v60;
      v49 = v62;
      v50 = v63;

      v98 = v61;
      v99 = v59;
      v51[8] = v59;
      v51[9] = v61;
      v51[10] = v49;
      v51[11] = v50;
      v101 = MEMORY[0x277D84F90];
      sub_222B4C418(0, 2, 0);
      v64 = v101;
      v65 = v51[4];
      v66 = v51[5];
      v67 = v51[6];
      v68 = v51[7];

      v8 = MEMORY[0x223DC92B0](v65, v66, v67, v68);
      v15 = v69;

      v44 = v101[2];
      v48 = v101[3];
      v45 = v44 + 1;
      if (v44 < v48 >> 1)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  sub_222B4C418((v48 > 1), v45, 1);
  v64 = v101;
LABEL_11:
  v64[2] = v45;
  v70 = &v64[2 * v44];
  v70[4] = v8;
  v70[5] = v15;

  v71 = MEMORY[0x223DC92B0](v99, v98, v49, v50);
  v73 = v72;

  v75 = v64[2];
  v74 = v64[3];
  if (v75 >= v74 >> 1)
  {
    sub_222B4C418((v74 > 1), v75 + 1, 1);
  }

  v64[2] = v75 + 1;
  v76 = &v64[2 * v75];
  v76[4] = v71;
  v76[5] = v73;
  result = sub_222B49E84(0, 1, 1, MEMORY[0x277D84F90]);
  v78 = result;
  v80 = *(result + 16);
  v79 = *(result + 24);
  if (v80 >= v79 >> 1)
  {
    result = sub_222B49E84((v79 > 1), v80 + 1, 1, result);
    v78 = result;
  }

  *(v78 + 16) = v80 + 1;
  v81 = v78 + 16 * v80;
  *(v81 + 32) = v92;
  *(v81 + 40) = v93;
  v102 = v78;
  if (!v33[2])
  {
    __break(1u);
    goto LABEL_29;
  }

  if (!v64[2])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v83 = v33[4];
  v82 = v33[5];
  v84 = v64[4];
  v85 = v64[5];

  v86 = String.commonSequences(between:)(v84, v85, v83, v82);

  result = sub_222B48F64(v86);
  if (v33[2] < 2uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v88 = v33[6];
  v87 = v33[7];

  if (v64[2] >= 2uLL)
  {
    v89 = v64[6];
    v90 = v64[7];

    v91 = String.commonSequences(between:)(v89, v90, v88, v87);

    sub_222B48F64(v91);
    return v102;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_222BB98E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_222C9453C();
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_46;
  }

  if (v5 < 0)
  {
    goto LABEL_47;
  }

  if (v4 == -1)
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = v4;
    v7 = sub_222C9478C();
    *(v7 + 16) = v5;
    bzero((v7 + 32), 8 * v6 + 8);
  }

  v8 = sub_222C9453C();
  if (__OFADD__(v8, 1))
  {
    goto LABEL_48;
  }

  v9 = sub_222BB9C7C(v7, v8 + 1);

  v35 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v10 = sub_222C9459C();
    if (!v11)
    {
      break;
    }

    v12 = v10;
    v13 = v11;
    v14 = 0;
    v36 = 0;
    v37 = 0;
    v15 = 0;
    v16 = v35 + 4;
    while (1)
    {
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = 0;
LABEL_13:
      v20 = v19;
      while (1)
      {
        v22 = v20;
        v23 = sub_222C9459C();
        if (!v24)
        {
          break;
        }

        v19 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
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
          goto LABEL_45;
        }

        if (v12 == v23 && v13 == v24)
        {

LABEL_20:
          v25 = v35[2];
          if (v14 >= v25)
          {
            goto LABEL_40;
          }

          v26 = v16[v14];
          if (v22 >= *(v26 + 16))
          {
            goto LABEL_41;
          }

          v27 = *(v26 + 8 * v22 + 32);
          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_42;
          }

          if (v18 >= v25)
          {
            goto LABEL_43;
          }

          v29 = v16[v18];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16[v18] = v29;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v29 = sub_222B64B70(v29);
          v16[v18] = v29;
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

LABEL_26:
          if (v19 >= *(v29 + 2))
          {
            goto LABEL_44;
          }

          *&v29[8 * v19 + 32] = v28;
          v31 = v15 < v28;
          if (v15 <= v28)
          {
            v15 = v28;
          }

          if (v31)
          {
            v32 = v19;
          }

          else
          {
            v32 = v37;
          }

          v33 = v36;
          if (v31)
          {
            v33 = v14 + 1;
          }

          v36 = v33;
          v37 = v32;
          goto LABEL_13;
        }

        v21 = sub_222C951FC();

        v20 = v22 + 1;
        if (v21)
        {
          goto LABEL_20;
        }
      }

      v12 = sub_222C9459C();
      v13 = v17;
      ++v14;
      if (!v17)
      {
        goto LABEL_38;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v35 = sub_222B64B84(v35);
  }

LABEL_37:
  v15 = 0;
LABEL_38:

  return v15;
}

unint64_t sub_222BB9BC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_222C9456C();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_222C9462C();
}

uint64_t sub_222BB9C7C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EE0, &qword_222C96C90);
    v4 = sub_222C9478C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_222BB9D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_222C9456C();

    return sub_222C9462C();
  }

  return result;
}

uint64_t sub_222BB9DB4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v21 = *a1;
  v22 = *(a1 + 1);
  v23 = v3;
  v4 = v22;
  if (v22)
  {

    v5 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222B4B1F8(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_222B4B1F8((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[32 * v7];
    *(v8 + 4) = v2;
    *(v8 + 5) = v4;
    *(v8 + 6) = 0;
    *(v8 + 7) = 0;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_222BBA208(&v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026018, &qword_222C9C060);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C96900;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026020, &qword_222C9C068);
  v11 = swift_allocObject();
  *(v11 + 16) = 0x3FB999999999999ALL;
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_222B61940(&qword_27D026028, &qword_27D026020, &qword_222C9C068, &unk_222C9A5E8);
  *(v9 + 32) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026030, &qword_222C9C070);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v9 + 96) = v12;
  *(v9 + 104) = sub_222B61940(&qword_27D026038, &qword_27D026030, &qword_222C9C070, &unk_222CA5308);
  *(v9 + 72) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026040, &qword_222C9C078);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C96900;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026048, &qword_222C9C080);
  v16 = swift_allocObject();
  *(v14 + 56) = v15;
  *(v14 + 64) = sub_222B61940(&qword_27D026050, &qword_27D026048, &qword_222C9C080, &unk_222C99578);
  *(v14 + 32) = v16;
  v17 = sub_222BAF9C8(&unk_283607D20);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026058, &qword_222C9C088);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v14 + 96) = v18;
  *(v14 + 104) = sub_222B61940(&qword_27D026060, &qword_27D026058, &qword_222C9C088, &unk_222C9FD18);
  *(v14 + 72) = v19;
  *(v1 + 16) = v9;
  *(v1 + 24) = v14;
  return v1;
}

uint64_t type metadata accessor for ContactSuggestionCandidateNominator(uint64_t a1)
{
  result = qword_27D026000;
  if (!qword_27D026000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BBA148()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1 = sub_222BB250C();

  if (v1)
  {
    v2 = [v1 identifier];

    v1 = sub_222C9449C();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v7[0] = v1;
  v7[1] = v4;
  type metadata accessor for ContactSuggestionCandidateNominator(0);
  v7[2] = 0;
  v7[3] = 0;
  v5 = swift_allocObject();
  sub_222BB9DB4(v7);
  return v5;
}

uint64_t sub_222BBA208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026010, &qword_222C9C058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BBA274()
{
  v1 = 0x6C6143656E6F6870;
  v2 = 0x50746361746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222BBA304@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BBC428(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BBA32C(uint64_t a1)
{
  v2 = sub_222BBB8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA368(uint64_t a1)
{
  v2 = sub_222BBB8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA3A4(uint64_t a1)
{
  v2 = sub_222BBB9DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA3E0(uint64_t a1)
{
  v2 = sub_222BBB9DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA41C(uint64_t a1)
{
  v2 = sub_222BBB934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA458(uint64_t a1)
{
  v2 = sub_222BBB934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA494(uint64_t a1)
{
  v2 = sub_222BBBA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA4D0(uint64_t a1)
{
  v2 = sub_222BBBA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA50C(uint64_t a1)
{
  v2 = sub_222BBBB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA548(uint64_t a1)
{
  v2 = sub_222BBBB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroundTruthSource.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026068, &qword_222C9C090);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026070, &qword_222C9C098);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026078, &qword_222C9C0A0);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026080, &qword_222C9C0A8);
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026088, &qword_222C9C0B0);
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v35 = *v2;
  v18 = *(v2 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BBB8E0();
  sub_222C9536C();
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v44 = 2;
      sub_222BBB9DC();
      v19 = v37;
      sub_222C950BC();
      v42 = v35;
      sub_222BBBA30();
      v20 = v31;
      sub_222C9512C();
      v21 = *(v30 + 8);
      v22 = v8;
    }

    else
    {
      v45 = 3;
      sub_222BBB934();
      v24 = v32;
      v19 = v37;
      sub_222C950BC();
      v43 = v35;
      sub_222BBB988();
      v20 = v34;
      sub_222C9512C();
      v21 = *(v33 + 8);
      v22 = v24;
    }

    v21(v22, v20);
  }

  else if (v18)
  {
    v41 = 1;
    sub_222BBBA84();
    v19 = v37;
    sub_222C950BC();
    v40 = v35;
    sub_222BBBAD8();
    v23 = v29;
    sub_222C9512C();
    (*(v28 + 8))(v11, v23);
  }

  else
  {
    v39 = 0;
    sub_222BBBB2C();
    v19 = v37;
    sub_222C950BC();
    v38 = v35;
    sub_222BBBB80();
    sub_222C9512C();
    (*(v27 + 8))(v14, v12);
  }

  return (*(v36 + 8))(v17, v19);
}

uint64_t GroundTruthSource.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 2) > 1u)
  {
    if (*(v1 + 2) == 2)
    {
      MEMORY[0x223DCA0B0](2);
      goto LABEL_16;
    }

    MEMORY[0x223DCA0B0](3);
    if (v2 > 4u)
    {
      switch(v2)
      {
        case 5u:
          v3 = 3;
          return MEMORY[0x223DCA0B0](v3);
        case 6u:
          v3 = 4;
          return MEMORY[0x223DCA0B0](v3);
        case 7u:
          v3 = 6;
          return MEMORY[0x223DCA0B0](v3);
      }
    }

    else
    {
      switch(v2)
      {
        case 2u:
          v3 = 0;
          return MEMORY[0x223DCA0B0](v3);
        case 3u:
          v3 = 1;
          return MEMORY[0x223DCA0B0](v3);
        case 4u:
          v3 = 2;
          return MEMORY[0x223DCA0B0](v3);
      }
    }

    MEMORY[0x223DCA0B0](5);
    MEMORY[0x223DCA0B0](v2 & 1);
    v3 = v2 >> 8;
    return MEMORY[0x223DCA0B0](v3);
  }

  if (*(v1 + 2))
  {
    MEMORY[0x223DCA0B0](1);
  }

  else
  {
    MEMORY[0x223DCA0B0](0);
  }

LABEL_16:
  sub_222C9452C();
}

uint64_t GroundTruthSource.hashValue.getter()
{
  v1 = *(v0 + 2);
  v3[38] = *v0;
  v4 = v1;
  sub_222C952FC();
  GroundTruthSource.hash(into:)(v3);
  return sub_222C9534C();
}

uint64_t GroundTruthSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260D8, &qword_222C9C0B8);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v42 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260E0, &qword_222C9C0C0);
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v50 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260E8, &qword_222C9C0C8);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260F0, &qword_222C9C0D0);
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260F8, &unk_222C9C0D8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_222BBB8E0();
  v17 = v54;
  sub_222C9535C();
  if (!v17)
  {
    v18 = v11;
    v42 = v9;
    v43 = 0;
    v19 = v8;
    v20 = v50;
    v21 = v51;
    v54 = v13;
    v23 = v52;
    v22 = v53;
    v24 = sub_222C9508C();
    v25 = (2 * *(v24 + 16)) | 1;
    v56 = v24;
    v57 = v24 + 32;
    v58 = 0;
    v59 = v25;
    v26 = sub_222B572D0();
    if (v26 == 4 || v58 != v59 >> 1)
    {
      v30 = sub_222C94DBC();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v32 = &type metadata for GroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
    }

    else
    {
      v60 = v26;
      if (v26 > 1u)
      {
        if (v26 == 2)
        {
          LOBYTE(v61) = 2;
          sub_222BBB9DC();
          v34 = v20;
          v35 = v43;
          sub_222C94FFC();
          v36 = v54;
          if (!v35)
          {
            sub_222BBBC28();
            v37 = v44;
            sub_222C9507C();
            (*(v48 + 8))(v34, v37);
            (*(v36 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v29 = v61;
            v22 = v53;
            goto LABEL_19;
          }
        }

        else
        {
          LOBYTE(v61) = 3;
          sub_222BBB934();
          v40 = v43;
          sub_222C94FFC();
          v41 = v54;
          if (!v40)
          {
            sub_222BBBBD4();
            sub_222C9507C();
            (*(v49 + 8))(v21, v23);
            (*(v41 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v29 = v61;
            goto LABEL_19;
          }
        }
      }

      else if (v26)
      {
        LOBYTE(v61) = 1;
        sub_222BBBA84();
        v38 = v43;
        sub_222C94FFC();
        if (!v38)
        {
          sub_222BBBC7C();
          v39 = v46;
          sub_222C9507C();
          (*(v47 + 8))(v19, v39);
          (*(v54 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v29 = v61;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_222BBBB2C();
        v27 = v43;
        sub_222C94FFC();
        if (!v27)
        {
          sub_222BBBCD0();
          v28 = v42;
          sub_222C9507C();
          (*(v45 + 8))(v18, v28);
          (*(v54 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v29 = v61;
LABEL_19:
          *v22 = v29;
          *(v22 + 2) = v60;
          return __swift_destroy_boxed_opaque_existential_0Tm(v55);
        }
      }
    }

    (*(v54 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v55);
}