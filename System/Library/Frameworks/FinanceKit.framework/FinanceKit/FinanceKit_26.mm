void *sub_1B7405D14(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B7405D80(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B77FEB78();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B77FEBA8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B77FEB98();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1B7405E34@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1B7801A88();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1B7405E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1B7801A48();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1B7405F7C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DE0, &qword_1B7810390);
  v10 = sub_1B7406968();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1B72B8240(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

id sub_1B740602C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1B77FFAF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1B77FFA28();
  v8 = sub_1B77FFA58();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1B77FFCA8();
  v9 = sub_1B77FFCF8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v2, 1, v9) != 1)
  {
    v11 = sub_1B77FFCB8();
    (*(v10 + 8))(v2, v9);
  }

  [v7 setTimeZone_];

  v12 = sub_1B7800838();
  [v7 setDateFormat_];

  return v7;
}

void sub_1B740627C(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[7];
  v41 = a1[6];
  v10 = *a3;

  v11 = sub_1B724548C(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_1B7249794(v16, i & 1);
    v11 = sub_1B724548C(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1B78021C8();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v19[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    v24 = (v19[7] + 16 * v11);
    *v24 = v41;
    v24[1] = v9;
    v25 = v19[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v19[2] = v26;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v22 = v11;
  sub_1B725CA84();
  v11 = v22;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v11;

  v21 = (v19[7] + 16 * v20);
  *v21 = v41;
  v21[1] = v9;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = v6 + 11; ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v29 = *a3;

      v30 = sub_1B724548C(v7, v9);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        break;
      }

      v8 = v31;
      if (v29[3] < v34)
      {
        sub_1B7249794(v34, 1);
        v30 = sub_1B724548C(v7, v9);
        if ((v8 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      v36 = *a3;
      if (v8)
      {
        v27 = v30;

        v28 = (v36[7] + 16 * v27);
        *v28 = v3;
        v28[1] = v6;
      }

      else
      {
        v36[(v30 >> 6) + 8] |= 1 << v30;
        v37 = (v36[6] + 16 * v30);
        *v37 = v7;
        v37[1] = v9;
        v38 = (v36[7] + 16 * v30);
        *v38 = v3;
        v38[1] = v6;
        v39 = v36[2];
        v15 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v36[2] = v40;
      }

      if (!--v17)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

void *_sSD10FinanceKitSSRszSSRs_rlEySDyS2SGSayAA15HTTPHeaderFieldVGcfC_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B71FDCF8(0, v2, 0);
    v3 = v14;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v14 = v3;
      v10 = v3[2];
      v9 = v3[3];

      if (v10 >= v9 >> 1)
      {
        sub_1B71FDCF8((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      v3[2] = v10 + 1;
      v11 = &v3[4 * v10];
      v11[4] = v6;
      v11[5] = v5;
      v11[6] = v8;
      v11[7] = v7;
      v4 += 4;
      --v2;
    }

    while (v2);

    if (v3[2])
    {
      goto LABEL_7;
    }

LABEL_9:
    v12 = MEMORY[0x1E69E7CC8];
    goto LABEL_10;
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F648, &qword_1B780B3E0);
  v12 = sub_1B7801CD8();
LABEL_10:
  v14 = v12;
  sub_1B740627C(v3, 1, &v14);

  return v14;
}

unint64_t sub_1B7406698()
{
  result = qword_1EB994048;
  if (!qword_1EB994048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HTTPMethod, &type metadata for HTTPMethod, v0, v1);
    atomic_store(result, &qword_1EB994048);
  }

  return result;
}

unint64_t sub_1B74066F0()
{
  result = qword_1EB994050;
  if (!qword_1EB994050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HTTPHeaderField, &type metadata for HTTPHeaderField, v0, v1);
    atomic_store(result, &qword_1EB994050);
  }

  return result;
}

unint64_t sub_1B7406748()
{
  result = qword_1EB994058;
  if (!qword_1EB994058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HTTPHeaderField.ContentType, &type metadata for HTTPHeaderField.ContentType, v0, v1);
    atomic_store(result, &qword_1EB994058);
  }

  return result;
}

_BYTE *sub_1B74067F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B7406878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EE60, &qword_1B78277A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B74068E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1B7405D14(sub_1B7406948, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_1B7406968()
{
  result = qword_1EB994068;
  if (!qword_1EB994068)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990DE0, &qword_1B7810390);
    result = swift_getWitnessTable(MEMORY[0x1E6969E08], v3, v0, v1);
    atomic_store(result, &qword_1EB994068);
  }

  return result;
}

uint64_t PredictedTransactionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994070, &unk_1B78277B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4C8, &unk_1B7809230);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for PredictedTransactionQuery(0);
  sub_1B7406C84(a2, a7 + v22[5]);
  v23 = a7 + v22[6];
  *v23 = a3;
  v23[8] = a4 & 1;
  v24 = a7 + v22[7];
  *v24 = v27;
  v24[8] = v28 & 1;
  sub_1B7406C84(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B7406CF4(a2);
    result = sub_1B7406CF4(v14);
    v26 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v26 = sub_1B71FA8D0(v19);
    sub_1B7406CF4(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v26;
  return result;
}

uint64_t type metadata accessor for PredictedTransactionQuery(uint64_t a1)
{
  result = qword_1EB994078;
  if (!qword_1EB994078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7406C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994070, &unk_1B78277B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7406CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994070, &unk_1B78277B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B7406D84(uint64_t a1)
{
  sub_1B729D930(319, &qword_1EB994088, &qword_1EB9930F0, &unk_1B78277E0, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB994090, &qword_1EB98F4C8, &unk_1B7809230, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B729D994();
      if (v3 <= 0x3F)
      {
        sub_1B729D9E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_1B7406E90()
{
  v1[3] = &type metadata for FinanceTrialProvider;
  v1[4] = &protocol witness table for FinanceTrialProvider;
  return MCCMappingProvider.init(trialProvider:)(v1, &qword_1EB994098);
}

uint64_t MCCMappingProvider.init(trialProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  *&v15 = 0xD00000000000001CLL;
  *(&v15 + 1) = 0x80000001B787E260;
  v17 = 2;
  (*(v5 + 16))(&v15, &v17, v4, v5);
  v7 = v6;

  if (v7)
  {
    sub_1B74072BC(v7, &v15);

    v8 = v15;
    v9 = v16;
  }

  else
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v10 = sub_1B78000B8();
    __swift_project_value_buffer(v10, qword_1EDAF6590);
    v11 = sub_1B7800098();
    v12 = sub_1B78011D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B7198000, v11, v12, "Failed to get file path for MCC mapping from trial.", v13, 2u);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
    }

    v9 = 0;
    v8 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double static MCCMappingProvider.shared.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EB98E9F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1EB994098;
  v3 = qword_1EB9940A0;
  v4 = off_1EB9940A8;
  *a1 = qword_1EB994098;
  a1[1] = v3;
  a1[2] = v4;

  return sub_1B74084D8(v2, v3, v4);
}

uint64_t MCCMappingProvider.MCCMapping.version.getter()
{
  v1 = *v0;

  return v1;
}

void MCCMappingProvider.MCCMapping.version.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

unint64_t static MCCMappingProvider.MCCMapping.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  return sub_1B7220F88(v2, v3);
}

unint64_t sub_1B7407234(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  return sub_1B7220F88(v2, v3);
}

double MCCMappingProvider.mapping.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1B74084D8(v2, v3, v4);
}

void sub_1B74072BC(unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  sub_1B77FF3D8();
  v8 = sub_1B77FF518();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_1B7408604();
  sub_1B77FE8D8();
  sub_1B720A388(v8, v10);

  v17 = v52[1];
  v48 = v52[0];
  v18 = v52[2];
  v19 = sub_1B7202B20(MEMORY[0x1E69E7CC0]);
  v20 = *(v18 + 16);
  v49 = v17;

  v51 = v20;
  if (!v20)
  {
LABEL_23:

    v38 = v49;

    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v39 = sub_1B78000B8();
    __swift_project_value_buffer(v39, qword_1EDAF6590);

    v40 = sub_1B7800098();
    v41 = sub_1B78011F8();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v48;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52[0] = v45;
      *v44 = 136315138;

      v46 = sub_1B71A3EF8(v43, v38, v52);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_1B7198000, v40, v41, "Loaded MCC mapping version: %s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1B8CA7A40](v45, -1, -1);
      MEMORY[0x1B8CA7A40](v44, -1, -1);
    }

    v47 = v50;
    *v50 = v43;
    v47[1] = v38;
    v47[2] = v19;
    return;
  }

  v21 = 0;
  v22 = (v18 + 48);
  while (v21 < *(v18 + 16))
  {
    v23 = *(v22 - 8);
    v24 = *(v22 - 1);
    v25 = *v22;
    swift_bridgeObjectRetain_n();
    sub_1B74078B4(v24, v25, v52);
    if (LOBYTE(v52[0]) == 13)
    {
      a2 = 0;
    }

    else
    {
      a2 = LOBYTE(v52[0]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v19;
    v27 = sub_1B72455C0(v23);
    v29 = v19[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_29;
    }

    v33 = v28;
    if (v19[3] < v32)
    {
      sub_1B72483F0(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_1B72455C0(v23);
      if ((v33 & 1) != (v34 & 1))
      {
        sub_1B78021C8();
        __break(1u);
        return;
      }

LABEL_18:
      v19 = v52[0];
      if (v33)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v37 = v27;
    sub_1B725C044();
    v27 = v37;
    v19 = v52[0];
    if (v33)
    {
LABEL_7:
      *(v19[7] + v27) = a2;

      goto LABEL_8;
    }

LABEL_19:
    v19[(v27 >> 6) + 8] |= 1 << v27;
    *(v19[6] + 2 * v27) = v23;
    *(v19[7] + v27) = a2;

    v35 = v19[2];
    v31 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v31)
    {
      goto LABEL_30;
    }

    v19[2] = v36;
LABEL_8:
    ++v21;
    v22 += 3;
    if (v51 == v21)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  swift_once();
  v11 = sub_1B78000B8();
  __swift_project_value_buffer(v11, qword_1EDAF6590);

  v12 = sub_1B7800098();
  v13 = sub_1B78011D8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1B71A3EF8(v19, a2, v52);
    _os_log_impl(&dword_1B7198000, v12, v13, "Failed to read MCC mapping from file %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B8CA7A40](v15, -1, -1);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }

  v16 = v50;
  *v50 = 0;
  v16[1] = 0;
  v16[2] = 0;
}

unsigned __int16 *MCCMappingProvider.subscript.getter@<X0>(unsigned __int16 *result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 16);
    v4 = *(v5 + 16);
    if (v4)
    {
      result = sub_1B72455C0(*result);
      if (v6)
      {
        LOBYTE(v4) = *(result + *(v5 + 56));
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  *a2 = v4;
  return result;
}

void sub_1B74078B4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x44646E41646F6F66 && a2 == 0xED0000736B6E6972 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 1;
  }

  else if (a1 == 0x676E6970706F6873 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 2;
  }

  else if (a1 == 0x6C6576617274 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 3;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 4;
  }

  else if (a1 == 7239014 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 5;
  }

  else if (a1 == 0x68746C616568 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 6;
  }

  else if (a1 == 0x726F70736E617274 && a2 == 0xE900000000000074 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B787E280 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 8;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    v7 = 9;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 9;
    }

    else
    {
      v7 = 13;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7407C00(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994120, &qword_1B7827AD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7408B38();
  sub_1B78023F8();
  v14 = v8;
  v13 = 0;
  sub_1B7408BE0();
  sub_1B7801FC8();
  if (!v2)
  {
    v12 = 1;
    sub_1B7801F78();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B7407DA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994110, &qword_1B7827AC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7408B38();
  sub_1B78023C8();
  if (!v2)
  {
    v16 = 0;
    sub_1B7408B8C();
    sub_1B7801E48();
    v9 = v17;
    v15 = 1;
    v11 = sub_1B7801DF8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7407F64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9940E0, &qword_1B7827930);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740889C();
  sub_1B78023F8();
  v13 = 0;
  sub_1B7801F78();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9940C8, &qword_1B7827928);
    sub_1B7408944(&qword_1EB9940E8, sub_1B74089BC, MEMORY[0x1E69E6300]);
    sub_1B7801FC8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1B7408138()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1B7408170(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x80000001B787E2A0 == a2;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B787E2C0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7408250(uint64_t a1)
{
  v2 = sub_1B7408B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740828C(uint64_t a1)
{
  v2 = sub_1B7408B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74082F8()
{
  if (*v0)
  {
    return 0x73676E697070616DLL;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

void sub_1B7408334(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73676E697070616DLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7408410(uint64_t a1)
{
  v2 = sub_1B740889C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740844C(uint64_t a1)
{
  v2 = sub_1B740889C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7408488@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B7408668(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

double sub_1B74084D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit18MCCMappingProviderV0C0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7408534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7408590(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B7408604()
{
  result = qword_1EB9940B0;
  if (!qword_1EB9940B0)
  {
    result = swift_getWitnessTable(byte_1B78278F4, &type metadata for MCCMappingProvider.RawMCCMapping, v0, v1);
    atomic_store(result, &qword_1EB9940B0);
  }

  return result;
}

uint64_t sub_1B7408668(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9940B8, &qword_1B7827920);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740889C();
  sub_1B78023C8();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1B7801DF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9940C8, &qword_1B7827928);
    v9[15] = 1;
    sub_1B7408944(&qword_1EB9940D0, sub_1B74088F0, MEMORY[0x1E69E6330]);
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1B740889C()
{
  result = qword_1EB9940C0;
  if (!qword_1EB9940C0)
  {
    result = swift_getWitnessTable(aAG7_0, &type metadata for MCCMappingProvider.RawMCCMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9940C0);
  }

  return result;
}

unint64_t sub_1B74088F0()
{
  result = qword_1EB9940D8;
  if (!qword_1EB9940D8)
  {
    result = swift_getWitnessTable(a9_5, &type metadata for MCCMappingProvider.RawMCCMapping.Mapping, v0, v1);
    atomic_store(result, &qword_1EB9940D8);
  }

  return result;
}

uint64_t sub_1B7408944(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9940C8, &qword_1B7827928);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74089BC()
{
  result = qword_1EB9940F0;
  if (!qword_1EB9940F0)
  {
    result = swift_getWitnessTable(a1_8, &type metadata for MCCMappingProvider.RawMCCMapping.Mapping, v0, v1);
    atomic_store(result, &qword_1EB9940F0);
  }

  return result;
}

unint64_t sub_1B7408A34()
{
  result = qword_1EB9940F8;
  if (!qword_1EB9940F8)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for MCCMappingProvider.RawMCCMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9940F8);
  }

  return result;
}

unint64_t sub_1B7408A8C()
{
  result = qword_1EB994100;
  if (!qword_1EB994100)
  {
    result = swift_getWitnessTable(byte_1B7827970, &type metadata for MCCMappingProvider.RawMCCMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994100);
  }

  return result;
}

unint64_t sub_1B7408AE4()
{
  result = qword_1EB994108;
  if (!qword_1EB994108)
  {
    result = swift_getWitnessTable(byte_1B7827998, &type metadata for MCCMappingProvider.RawMCCMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994108);
  }

  return result;
}

unint64_t sub_1B7408B38()
{
  result = qword_1EB994118;
  if (!qword_1EB994118)
  {
    result = swift_getWitnessTable(aG7_4, &type metadata for MCCMappingProvider.RawMCCMapping.Mapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994118);
  }

  return result;
}

unint64_t sub_1B7408B8C()
{
  result = qword_1EB99DAB0;
  if (!qword_1EB99DAB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MerchantCategoryCode, &type metadata for MerchantCategoryCode, v0, v1);
    atomic_store(result, &qword_1EB99DAB0);
  }

  return result;
}

unint64_t sub_1B7408BE0()
{
  result = qword_1EB99DA40;
  if (!qword_1EB99DA40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MerchantCategoryCode, &type metadata for MerchantCategoryCode, v0, v1);
    atomic_store(result, &qword_1EB99DA40);
  }

  return result;
}

unint64_t sub_1B7408C48()
{
  result = qword_1EB994128;
  if (!qword_1EB994128)
  {
    result = swift_getWitnessTable(byte_1B7827B68, &type metadata for MCCMappingProvider.RawMCCMapping.Mapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994128);
  }

  return result;
}

unint64_t sub_1B7408CA0()
{
  result = qword_1EB994130;
  if (!qword_1EB994130)
  {
    result = swift_getWitnessTable(byte_1B7827AD8, &type metadata for MCCMappingProvider.RawMCCMapping.Mapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994130);
  }

  return result;
}

unint64_t sub_1B7408CF8()
{
  result = qword_1EB994138;
  if (!qword_1EB994138)
  {
    result = swift_getWitnessTable(a1_9, &type metadata for MCCMappingProvider.RawMCCMapping.Mapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994138);
  }

  return result;
}

uint64_t AccountBalance.init(id:accountId:availableAmount:availableAsOf:availableCreditDebitIndicator:bookedAmount:bookedAsOf:bookedCreditDebitIndicator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v128 = a7;
  v135 = a1;
  v136 = a5;
  v133 = a4;
  v134 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990548, &unk_1B7827BF0);
  MEMORY[0x1EEE9AC00](v125);
  v130 = (&v102 - v13);
  v14 = sub_1B77FF988();
  v131 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v120 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v102 - v17;
  v18 = type metadata accessor for Balance(0);
  v126 = *(v18 - 8);
  v127 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v108 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v107 = &v102 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v106 = (&v102 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v102 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v119 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v118 = &v102 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v102 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v102 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990550, &unk_1B780C450);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v116 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v123 = (&v102 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v102 - v42);
  v44 = a3[1];
  v103 = *a3;
  v102 = v44;
  v45 = a3[3];
  v110 = a3[2];
  v109 = v45;
  v46 = a3[4];
  v115 = *v136;
  v47 = a6[1];
  v105 = *a6;
  v104 = v47;
  v48 = a6[3];
  v114 = a6[2];
  v113 = v48;
  v136 = a6[4];
  v112 = *a8;
  v49 = sub_1B77FFA18();
  v121 = *(v49 - 8);
  v50 = *(v121 + 16);
  v50(a9, v135, v49);
  v124 = type metadata accessor for AccountBalance(0);
  v51 = *(v124 + 20);
  v129 = a9;
  v122 = v49;
  v50(a9 + v51, v134, v49);
  sub_1B7205588(v133, v36, &qword_1EB98EBD0, &unk_1B7809780);
  v132 = v46;
  v117 = v14;
  if (!v46)
  {
    sub_1B7205418(v36, &qword_1EB98EBD0, &unk_1B7809780);
    v53 = v130;
    v58 = v131;
    v54 = v127;
    v55 = v128;
    v56 = v126;
LABEL_7:
    v57 = v120;
    goto LABEL_8;
  }

  sub_1B7205340(v36, v34);
  v52 = v131;
  if (v131[6](v34, 1, v14) == 1)
  {
    sub_1B7205418(v34, &qword_1EB98EBD0, &unk_1B7809780);
    v53 = v130;
    v54 = v127;
    v55 = v128;
    v56 = v126;
    v57 = v120;
    v58 = v52;
LABEL_8:
    v62 = *(v56 + 56);
    v62(v43, 1, 1, v54);
    goto LABEL_9;
  }

  v59 = v14;
  v58 = v52;
  v60 = v52[4];
  v61 = v111;
  v60(v111, v34, v59);
  v56 = v126;
  v54 = v127;
  if (v115 == 2)
  {
    (v52[1])(v61, v59);
    v53 = v130;
    v55 = v128;
    goto LABEL_7;
  }

  v87 = v60;
  v88 = v103;
  *v26 = v103;
  *(v26 + 2) = WORD2(v88);
  v89 = v110 >> 16;
  v90 = v110;
  v91 = v102;
  *(v26 + 3) = HIWORD(v88);
  *(v26 + 1) = v91;
  *(v26 + 8) = v90;
  *(v26 + 9) = v89;
  v92 = v132;
  *(v26 + 3) = v109;
  *(v26 + 4) = v92;
  v87(&v26[*(v54 + 20)], v61, v59);
  v26[*(v54 + 24)] = v115 & 1;
  sub_1B740DCEC(v26, v43, type metadata accessor for Balance);
  v62 = *(v56 + 56);
  v62(v43, 0, 1, v54);
  v138 = v88;
  v139 = v91;
  v140 = v110;
  v141 = v109;
  v142 = v92;
  v58 = v131;
  sub_1B7215720(&v138, v137);
  v53 = v130;
  v55 = v128;
  v57 = v120;
LABEL_9:
  v63 = v119;
  v64 = v55;
  v65 = v55;
  v66 = v118;
  sub_1B7205588(v65, v118, &qword_1EB98EBD0, &unk_1B7809780);
  if (!v136)
  {
    v68 = v66;
    goto LABEL_13;
  }

  sub_1B7205340(v66, v63);
  v67 = v117;
  if (v58[6](v63, 1, v117) == 1)
  {
    v68 = v63;
LABEL_13:
    sub_1B7205418(v68, &qword_1EB98EBD0, &unk_1B7809780);
    v69 = v64;
LABEL_14:
    v70 = v123;
    v62(v123, 1, 1, v54);
    goto LABEL_15;
  }

  v130 = v58[4];
  v130(v57, v63, v67);
  v79 = v112;
  v80 = v67;
  v69 = v64;
  if (v112 == 2)
  {
    (v58[1])(v57, v80);
    goto LABEL_14;
  }

  v93 = v106;
  v94 = v105;
  *v106 = v105;
  v95 = v79;
  *(v93 + 4) = WORD2(v94);
  v96 = v114 >> 16;
  v97 = v114;
  v131 = v43;
  v98 = v57;
  v99 = v104;
  v100 = v94;
  *(v93 + 6) = HIWORD(v94);
  *(v93 + 8) = v99;
  *(v93 + 16) = v97;
  *(v93 + 18) = v96;
  v101 = v136;
  *(v93 + 24) = v113;
  *(v93 + 32) = v101;
  v130((v93 + *(v54 + 20)), v98, v80);
  *(v93 + *(v54 + 24)) = v95 & 1;
  v70 = v123;
  sub_1B740DCEC(v93, v123, type metadata accessor for Balance);
  v62(v70, 0, 1, v54);
  v138 = v100;
  v139 = v99;
  v43 = v131;
  v140 = v114;
  v141 = v113;
  v142 = v136;
  sub_1B7215720(&v138, v137);
LABEL_15:
  v71 = *(v125 + 48);
  sub_1B7205588(v43, v53, &qword_1EB990550, &unk_1B780C450);
  sub_1B7205588(v70, v53 + v71, &qword_1EB990550, &unk_1B780C450);
  v72 = *(v56 + 48);
  if (v72(v53, 1, v54) != 1)
  {

    v75 = v54;
    sub_1B7205418(v69, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v133, &qword_1EB98EBD0, &unk_1B7809780);
    v76 = *(v121 + 8);
    v77 = v122;
    v76(v134, v122);
    v76(v135, v77);
    sub_1B7205418(v70, &qword_1EB990550, &unk_1B780C450);
    sub_1B7205418(v43, &qword_1EB990550, &unk_1B780C450);
    v78 = v116;
    sub_1B7205588(v53, v116, &qword_1EB990550, &unk_1B780C450);
    if (v72(v53 + v71, 1, v75) == 1)
    {
      sub_1B740DCEC(v78, v129 + *(v124 + 24), type metadata accessor for Balance);
    }

    else
    {
      v81 = v78;
      v82 = v107;
      sub_1B740DCEC(v81, v107, type metadata accessor for Balance);
      v83 = v108;
      sub_1B740DCEC(v53 + v71, v108, type metadata accessor for Balance);
      v84 = v129 + *(v124 + 24);
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460) + 48);
      sub_1B740DCEC(v82, v84, type metadata accessor for Balance);
      sub_1B740DCEC(v83, v84 + v85, type metadata accessor for Balance);
    }

    type metadata accessor for CurrentBalance(0);
    goto LABEL_24;
  }

  if (v72(v53 + v71, 1, v54) != 1)
  {

    sub_1B7205418(v69, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v133, &qword_1EB98EBD0, &unk_1B7809780);
    v73 = *(v121 + 8);
    v74 = v122;
    v73(v134, v122);
    v73(v135, v74);
    sub_1B7205418(v70, &qword_1EB990550, &unk_1B780C450);
    sub_1B7205418(v43, &qword_1EB990550, &unk_1B780C450);
    sub_1B740DCEC(v53 + v71, v129 + *(v124 + 24), type metadata accessor for Balance);
    type metadata accessor for CurrentBalance(0);
LABEL_24:
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(v53, &qword_1EB990550, &unk_1B780C450);
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t AccountBalance.available.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountBalance(0);
  sub_1B740D5E8(v1 + *(v6 + 24), v5, type metadata accessor for CurrentBalance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for Balance(0);
      (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
      v9 = type metadata accessor for CurrentBalance;
      v10 = v5;
    }

    else
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460) + 48);
      sub_1B740DCEC(v5, a1, type metadata accessor for Balance);
      v14 = type metadata accessor for Balance(0);
      (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
      v9 = type metadata accessor for Balance;
      v10 = &v5[v13];
    }

    return sub_1B7409D08(v10, v9);
  }

  else
  {
    sub_1B740DCEC(v5, a1, type metadata accessor for Balance);
    v11 = type metadata accessor for Balance(0);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1B7409D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7409D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountBalance(0);
  sub_1B740D5E8(a1 + *(v7 + 24), v6, type metadata accessor for CurrentBalance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for Balance(0);
      (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
      v10 = type metadata accessor for CurrentBalance;
      v11 = v6;
    }

    else
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460) + 48);
      sub_1B740DCEC(v6, a2, type metadata accessor for Balance);
      v15 = type metadata accessor for Balance(0);
      (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
      v10 = type metadata accessor for Balance;
      v11 = &v6[v14];
    }

    return sub_1B7409D08(v11, v10);
  }

  else
  {
    sub_1B740DCEC(v6, a2, type metadata accessor for Balance);
    v12 = type metadata accessor for Balance(0);
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }
}

uint64_t AccountBalance.booked.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountBalance(0);
  sub_1B740D5E8(v1 + *(v6 + 24), v5, type metadata accessor for CurrentBalance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B740DCEC(v5, a1, type metadata accessor for Balance);
      v8 = type metadata accessor for Balance(0);
      return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460);
    sub_1B740DCEC(&v5[*(v12 + 48)], a1, type metadata accessor for Balance);
    v13 = type metadata accessor for Balance(0);
    (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    v11 = type metadata accessor for Balance;
  }

  else
  {
    v10 = type metadata accessor for Balance(0);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    v11 = type metadata accessor for CurrentBalance;
  }

  return sub_1B7409D08(v5, v11);
}

uint64_t sub_1B740A184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountBalance(0);
  sub_1B740D5E8(a1 + *(v7 + 24), v6, type metadata accessor for CurrentBalance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B740DCEC(v6, a2, type metadata accessor for Balance);
      v9 = type metadata accessor for Balance(0);
      return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460);
    sub_1B740DCEC(&v6[*(v13 + 48)], a2, type metadata accessor for Balance);
    v14 = type metadata accessor for Balance(0);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    v12 = type metadata accessor for Balance;
  }

  else
  {
    v11 = type metadata accessor for Balance(0);
    (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
    v12 = type metadata accessor for CurrentBalance;
  }

  return sub_1B7409D08(v6, v12);
}

uint64_t Balance.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = *(v1 + 32);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

uint64_t Balance.creditDebitIndicator.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Balance(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

unint64_t sub_1B740A434()
{
  v1 = 0x65746144664F7361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_1B740A490@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B740EA38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B740A4B8(uint64_t a1)
{
  v2 = sub_1B740D594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740A4F4(uint64_t a1)
{
  v2 = sub_1B740D594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Balance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994148, &qword_1B7827C00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740D594();
  sub_1B78023F8();
  v9 = v3[1];
  v22[0] = *v3;
  v22[1] = v9;
  v23 = *(v3 + 4);
  v10 = v3[1];
  v19 = *v3;
  v20 = v10;
  v21 = *(v3 + 4);
  v18 = 0;
  sub_1B7215720(v22, &v15);
  sub_1B7215044();
  sub_1B7801FC8();
  if (v2)
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    sub_1B721722C(&v15);
  }

  else
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    sub_1B721722C(&v15);
    v11 = type metadata accessor for Balance(0);
    v14 = 1;
    sub_1B77FF988();
    sub_1B71A7070(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801FC8();
    v14 = *(v3 + *(v11 + 24));
    v13[14] = 2;
    sub_1B721BF7C();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Balance.hash(into:)(uint64_t a1)
{
  sub_1B7801688();
  sub_1B7800798();
  type metadata accessor for Balance(0);
  sub_1B77FF988();
  sub_1B71A7070(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  return sub_1B7802328();
}

uint64_t Balance.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  type metadata accessor for Balance(0);
  sub_1B77FF988();
  sub_1B71A7070(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t Balance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v18 = sub_1B77FF988();
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994158, &qword_1B7827C08);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Balance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740D594();
  v10 = v20;
  sub_1B78023C8();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v11 = v17;
  v12 = v18;
  v26 = 0;
  sub_1B72153F8();
  sub_1B7801E48();
  v13 = v23;
  *v9 = v22;
  *(v9 + 1) = v13;
  *(v9 + 4) = v24;
  LOBYTE(v21) = 1;
  sub_1B71A7070(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1B7801E48();
  (*(v16 + 32))(&v9[*(v7 + 20)], v4, v12);
  v25 = 2;
  sub_1B721BFD0();
  sub_1B7801E48();
  (*(v11 + 8))(v6, v19);
  v9[*(v7 + 24)] = v21;
  sub_1B740D5E8(v9, v15, type metadata accessor for Balance);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1B7409D08(v9, type metadata accessor for Balance);
}

uint64_t sub_1B740AD8C(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A7070(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B740AE64(uint64_t a1, uint64_t a2)
{
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A7070(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  return sub_1B7802328();
}

uint64_t sub_1B740AF28(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A7070(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B740B004(uint64_t a1)
{
  v2 = sub_1B740DBF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740B040(uint64_t a1)
{
  v2 = sub_1B740DBF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B740B07C(uint64_t a1)
{
  v2 = sub_1B740DC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740B0B8(uint64_t a1)
{
  v2 = sub_1B740DC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B740B0F4(uint64_t a1)
{
  v2 = sub_1B740DC44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740B130(uint64_t a1)
{
  v2 = sub_1B740DC44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B740B16C(uint64_t a1)
{
  v2 = sub_1B740DB9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740B1A8(uint64_t a1)
{
  v2 = sub_1B740DB9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentBalance.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994160, &qword_1B7827C10);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994168, &qword_1B7827C18);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994170, &qword_1B7827C20);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v48 = type metadata accessor for Balance(0);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v36 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994178, &qword_1B7827C28);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v22 = &v36 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740DB9C();
  sub_1B78023F8();
  sub_1B740D5E8(v47, v20, type metadata accessor for CurrentBalance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B740DCEC(v20, v15, type metadata accessor for Balance);
      v53 = 1;
      sub_1B740DC44();
      v24 = v39;
      v25 = v51;
      sub_1B7801ED8();
      sub_1B71A7070(&qword_1EB994190, type metadata accessor for Balance, protocol conformance descriptor for Balance);
      v26 = v41;
      sub_1B7801FC8();
      (*(v40 + 8))(v24, v26);
      sub_1B7409D08(v15, type metadata accessor for Balance);
      return (*(v49 + 8))(v22, v25);
    }

    else
    {
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460) + 48);
      v31 = v43;
      sub_1B740DCEC(v20, v43, type metadata accessor for Balance);
      v32 = v42;
      sub_1B740DCEC(&v20[v30], v42, type metadata accessor for Balance);
      v56 = 2;
      sub_1B740DBF0();
      v33 = v44;
      sub_1B7801ED8();
      v55 = 0;
      sub_1B71A7070(&qword_1EB994190, type metadata accessor for Balance, protocol conformance descriptor for Balance);
      v34 = v46;
      v35 = v50;
      sub_1B7801FC8();
      if (!v35)
      {
        v54 = 1;
        sub_1B7801FC8();
      }

      (*(v45 + 8))(v33, v34);
      sub_1B7409D08(v32, type metadata accessor for Balance);
      sub_1B7409D08(v31, type metadata accessor for Balance);
      return (*(v49 + 8))(v22, v51);
    }
  }

  else
  {
    sub_1B740DCEC(v20, v17, type metadata accessor for Balance);
    v52 = 0;
    sub_1B740DC98();
    v28 = v51;
    sub_1B7801ED8();
    sub_1B71A7070(&qword_1EB994190, type metadata accessor for Balance, protocol conformance descriptor for Balance);
    v29 = v38;
    sub_1B7801FC8();
    (*(v37 + 8))(v8, v29);
    sub_1B7409D08(v17, type metadata accessor for Balance);
    return (*(v49 + 8))(v22, v28);
  }
}

uint64_t CurrentBalance.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Balance(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B740D5E8(v2, v11, type metadata accessor for CurrentBalance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460) + 48);
      sub_1B740DCEC(v11, v8, type metadata accessor for Balance);
      sub_1B740DCEC(&v11[v14], v6, type metadata accessor for Balance);
      MEMORY[0x1B8CA6620](2);
      sub_1B7801688();
      sub_1B7800798();
      sub_1B77FF988();
      sub_1B71A7070(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1B7800768();
      sub_1B7802328();
      sub_1B7801688();
      sub_1B7800798();
      sub_1B7800768();
      sub_1B7802328();
      sub_1B7409D08(v6, type metadata accessor for Balance);
      return sub_1B7409D08(v8, type metadata accessor for Balance);
    }

    sub_1B740DCEC(v11, v8, type metadata accessor for Balance);
    v13 = 1;
  }

  else
  {
    sub_1B740DCEC(v11, v8, type metadata accessor for Balance);
    v13 = 0;
  }

  MEMORY[0x1B8CA6620](v13);
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A7070(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B7409D08(v8, type metadata accessor for Balance);
}

uint64_t CurrentBalance.hashValue.getter()
{
  sub_1B78022F8();
  CurrentBalance.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t CurrentBalance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9941A8, &qword_1B7827C30);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v59 = &v45 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9941B0, &qword_1B7827C38);
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v56 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9941B8, &qword_1B7827C40);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v45 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9941C0, &unk_1B7827C48);
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v45 - v7;
  v9 = type metadata accessor for CurrentBalance(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B740DB9C();
  v22 = v60;
  sub_1B78023C8();
  if (!v22)
  {
    v45 = v15;
    v46 = v18;
    v23 = v54;
    v24 = v55;
    v25 = v56;
    v60 = v12;
    v47 = v9;
    v26 = v58;
    v27 = sub_1B7801E98();
    v28 = (2 * *(v27 + 16)) | 1;
    v62 = v27;
    v63 = v27 + 32;
    v64 = 0;
    v65 = v28;
    v29 = sub_1B721CE54();
    if (v29 == 3 || v64 != v65 >> 1)
    {
      v32 = sub_1B7801B18();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v34 = v47;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v57 + 8))(v8, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        if (v29 == 1)
        {
          v66 = 1;
          sub_1B740DC44();
          sub_1B7801D38();
          type metadata accessor for Balance(0);
          sub_1B71A7070(&qword_1EB9941C8, type metadata accessor for Balance, protocol conformance descriptor for Balance);
          v30 = v45;
          v31 = v48;
          sub_1B7801E48();
          (*(v52 + 8))(v25, v31);
          (*(v57 + 8))(v8, v24);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v42 = v30;
          v26 = v58;
        }

        else
        {
          v66 = 2;
          sub_1B740DBF0();
          sub_1B7801D38();
          type metadata accessor for Balance(0);
          v66 = 0;
          v39 = sub_1B71A7070(&qword_1EB9941C8, type metadata accessor for Balance, protocol conformance descriptor for Balance);
          v40 = v51;
          v56 = v39;
          sub_1B7801E48();
          v41 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460);
          v66 = 1;
          v43 = v59;
          sub_1B7801E48();
          (*(v53 + 8))(v43, v40);
          (*(v41 + 8))(v8, v24);
          swift_unknownObjectRelease();
          v44 = v60;
          swift_storeEnumTagMultiPayload();
          v42 = v44;
        }
      }

      else
      {
        v66 = 0;
        sub_1B740DC98();
        v36 = v23;
        sub_1B7801D38();
        type metadata accessor for Balance(0);
        sub_1B71A7070(&qword_1EB9941C8, type metadata accessor for Balance, protocol conformance descriptor for Balance);
        v37 = v46;
        v38 = v50;
        sub_1B7801E48();
        (*(v49 + 8))(v36, v38);
        (*(v57 + 8))(v8, v24);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v42 = v37;
      }

      sub_1B740DCEC(v42, v20, type metadata accessor for CurrentBalance);
      sub_1B740DCEC(v20, v26, type metadata accessor for CurrentBalance);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_1B740C5E4()
{
  sub_1B78022F8();
  CurrentBalance.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t sub_1B740C628(uint64_t a1)
{
  sub_1B78022F8();
  CurrentBalance.hash(into:)(v2);
  return sub_1B7802368();
}

uint64_t AccountBalance.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B740C6FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t static AccountBalance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AccountBalance(0);
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s10FinanceKit14CurrentBalanceO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1B740C858()
{
  v1 = 0x49746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0x42746E6572727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B740C8B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B740EB54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B740C8E0(uint64_t a1)
{
  v2 = sub_1B740DD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B740C91C(uint64_t a1)
{
  v2 = sub_1B740DD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountBalance.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9941D0, &qword_1B7827C58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740DD54();
  sub_1B78023F8();
  v11 = 0;
  sub_1B77FFA18();
  sub_1B71A7070(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for AccountBalance(0);
    v10 = 1;
    sub_1B7801FC8();
    v9 = 2;
    type metadata accessor for CurrentBalance(0);
    sub_1B71A7070(&qword_1EB9941E0, type metadata accessor for CurrentBalance, protocol conformance descriptor for CurrentBalance);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AccountBalance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFA18();
  v28 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9941E8, &qword_1B7827C60);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for AccountBalance(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740DD54();
  v32 = v11;
  v15 = v33;
  sub_1B78023C8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v14;
  v33 = a1;
  v36 = 0;
  sub_1B71A7070(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v29;
  sub_1B7801E48();
  v29 = *(v28 + 32);
  (v29)(v24, v16, v4);
  v35 = 1;
  v17 = v7;
  sub_1B7801E48();
  v18 = v24;
  (v29)(&v24[*(v23 + 20)], v17, v4);
  v34 = 2;
  sub_1B71A7070(&qword_1EB9941F0, type metadata accessor for CurrentBalance, protocol conformance descriptor for CurrentBalance);
  v19 = v27;
  sub_1B7801E48();
  v20 = v33;
  (*(v30 + 8))(v32, v31);
  sub_1B740DCEC(v19, v18 + *(v23 + 24), type metadata accessor for CurrentBalance);
  sub_1B740D5E8(v18, v25, type metadata accessor for AccountBalance);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1B7409D08(v18, type metadata accessor for AccountBalance);
}

uint64_t sub_1B740D0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return _s10FinanceKit14CurrentBalanceO2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t AccountBalance.currencyCode.getter()
{
  v1 = type metadata accessor for Balance(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CurrentBalance(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountBalance(0);
  sub_1B740D5E8(v0 + *(v7 + 24), v6, type metadata accessor for CurrentBalance);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460) + 48)];
    sub_1B740DCEC(v6, v3, type metadata accessor for Balance);
    v8 = *(v3 + 3);

    sub_1B7409D08(v3, type metadata accessor for Balance);
    v3 = v9;
  }

  else
  {
    sub_1B740DCEC(v6, v3, type metadata accessor for Balance);
    v8 = *(v3 + 3);
  }

  sub_1B7409D08(v3, type metadata accessor for Balance);
  return v8;
}

double static ManagedAccountBalance.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98E9F8 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_1B740D3EC()
{
  if (qword_1EB98E9F8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t _s10FinanceKit7BalanceV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v15 = *a1;
  v16[0] = v4;
  *&v16[1] = *(a1 + 4);
  v5 = a2[1];
  v17 = *a2;
  v18[0] = v5;
  *&v18[1] = *(a2 + 4);
  v6 = LODWORD(v16[0]);
  v7 = v5;
  v8 = v15;
  v9 = v17;
  sub_1B7215720(&v15, v14);
  sub_1B7215720(&v17, v14);
  if ((MEMORY[0x1B8CA5970](v8, *(&v8 + 1), v6, v9, *(&v9 + 1), v7) & 1) == 0)
  {
    sub_1B721722C(&v17);
    sub_1B721722C(&v15);
    goto LABEL_9;
  }

  if (*(&v16[0] + 1) == *(&v18[0] + 1) && *&v16[1] == *&v18[1])
  {
    sub_1B721722C(&v17);
    sub_1B721722C(&v15);
    goto LABEL_7;
  }

  v10 = sub_1B78020F8();
  sub_1B721722C(&v17);
  sub_1B721722C(&v15);
  if ((v10 & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

LABEL_7:
  v11 = type metadata accessor for Balance(0);
  if ((sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = *(a1 + *(v11 + 24)) ^ *(a2 + *(v11 + 24)) ^ 1;
  return v12 & 1;
}

unint64_t sub_1B740D594()
{
  result = qword_1EB994150;
  if (!qword_1EB994150)
  {
    result = swift_getWitnessTable(asc_1B7828590, &type metadata for Balance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994150);
  }

  return result;
}

uint64_t sub_1B740D5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10FinanceKit14CurrentBalanceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for Balance(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v39 = (&v38 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v40 = (&v38 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v38 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v38 - v13);
  v15 = type metadata accessor for CurrentBalance(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v38 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v38 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9942D0, &qword_1B7828BD8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v38 - v26;
  v28 = &v38 + *(v25 + 56) - v26;
  sub_1B740D5E8(a1, &v38 - v26, type metadata accessor for CurrentBalance);
  sub_1B740D5E8(v41, v28, type metadata accessor for CurrentBalance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B740D5E8(v27, v21, type metadata accessor for CurrentBalance);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B740DCEC(v28, v12, type metadata accessor for Balance);
        v30 = _s10FinanceKit7BalanceV2eeoiySbAC_ACtFZ_0(v21, v12);
        sub_1B7409D08(v12, type metadata accessor for Balance);
        v31 = v21;
LABEL_16:
        sub_1B7409D08(v31, type metadata accessor for Balance);
        sub_1B7409D08(v27, type metadata accessor for CurrentBalance);
        return v30 & 1;
      }

      v18 = v21;
      goto LABEL_12;
    }

    sub_1B740D5E8(v27, v18, type metadata accessor for CurrentBalance);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558, &qword_1B780C460) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v23 = v40;
      sub_1B740DCEC(v28, v40, type metadata accessor for Balance);
      v33 = v39;
      sub_1B740DCEC(v18 + v32, v39, type metadata accessor for Balance);
      v34 = v38;
      sub_1B740DCEC(&v28[v32], v38, type metadata accessor for Balance);
      v35 = _s10FinanceKit7BalanceV2eeoiySbAC_ACtFZ_0(v18, v23);
      sub_1B7409D08(v18, type metadata accessor for Balance);
      if ((v35 & 1) == 0)
      {
        sub_1B7409D08(v34, type metadata accessor for Balance);
        sub_1B7409D08(v33, type metadata accessor for Balance);
        sub_1B7409D08(v23, type metadata accessor for Balance);
        sub_1B7409D08(v27, type metadata accessor for CurrentBalance);
        goto LABEL_13;
      }

      v30 = _s10FinanceKit7BalanceV2eeoiySbAC_ACtFZ_0(v33, v34);
      sub_1B7409D08(v34, type metadata accessor for Balance);
      v36 = v33;
LABEL_15:
      sub_1B7409D08(v36, type metadata accessor for Balance);
      v31 = v23;
      goto LABEL_16;
    }

    sub_1B7409D08(v18 + v32, type metadata accessor for Balance);
  }

  else
  {
    sub_1B740D5E8(v27, v23, type metadata accessor for CurrentBalance);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B740DCEC(v28, v14, type metadata accessor for Balance);
      v30 = _s10FinanceKit7BalanceV2eeoiySbAC_ACtFZ_0(v23, v14);
      v36 = v14;
      goto LABEL_15;
    }

    v18 = v23;
  }

LABEL_12:
  sub_1B7409D08(v18, type metadata accessor for Balance);
  sub_1B7205418(v27, &qword_1EB9942D0, &qword_1B7828BD8);
LABEL_13:
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_1B740DB9C()
{
  result = qword_1EB994180;
  if (!qword_1EB994180)
  {
    result = swift_getWitnessTable(aY_11, &type metadata for CurrentBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994180);
  }

  return result;
}

unint64_t sub_1B740DBF0()
{
  result = qword_1EB994188;
  if (!qword_1EB994188)
  {
    result = swift_getWitnessTable(byte_1B78284F0, &type metadata for CurrentBalance.AvailableAndBookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994188);
  }

  return result;
}

unint64_t sub_1B740DC44()
{
  result = qword_1EB994198;
  if (!qword_1EB994198)
  {
    result = swift_getWitnessTable(byte_1B78284A0, &type metadata for CurrentBalance.BookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994198);
  }

  return result;
}

unint64_t sub_1B740DC98()
{
  result = qword_1EB9941A0;
  if (!qword_1EB9941A0)
  {
    result = swift_getWitnessTable(aI_20, &type metadata for CurrentBalance.AvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9941A0);
  }

  return result;
}

uint64_t sub_1B740DCEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B740DD54()
{
  result = qword_1EB9941D8;
  if (!qword_1EB9941D8)
  {
    result = swift_getWitnessTable(byte_1B7828400, &type metadata for AccountBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9941D8);
  }

  return result;
}

unint64_t _s10FinanceKit21ManagedAccountBalanceC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8, &qword_1B7809FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7827BE0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 25705;
  *(inited + 48) = 0xE200000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x49746E756F636361;
  *(inited + 72) = 0xE900000000000064;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001B7876500;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000014;
  *(inited + 120) = 0x80000001B7876500;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x79636E6572727563;
  *(inited + 144) = 0xE800000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x80000001B7876540;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000028;
  *(inited + 192) = 0x80000001B7876560;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000028;
  *(inited + 216) = 0x80000001B7876560;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000014;
  *(inited + 240) = 0x80000001B7876500;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x79636E6572727563;
  *(inited + 264) = 0xE800000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000013;
  *(inited + 288) = 0x80000001B7876540;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000028;
  *(inited + 312) = 0x80000001B7876560;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000028;
  *(inited + 336) = 0x80000001B7876560;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000011;
  *(inited + 360) = 0x80000001B78765B0;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000011;
  *(inited + 384) = 0x80000001B78765B0;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x79636E6572727563;
  *(inited + 408) = 0xE800000000000000;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x80000001B78765D0;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000025;
  *(inited + 456) = 0x80000001B78765F0;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000025;
  *(inited + 480) = 0x80000001B78765F0;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000011;
  *(inited + 504) = 0x80000001B78765B0;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0x79636E6572727563;
  *(inited + 528) = 0xE800000000000000;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x80000001B78765D0;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000025;
  *(inited + 576) = 0x80000001B78765F0;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000025;
  *(inited + 600) = 0x80000001B78765F0;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0x79636E6572727563;
  *(inited + 624) = 0xE800000000000000;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0, &qword_1B780D3E0);
  swift_arrayDestroy();
  return v1;
}

void sub_1B740E220(uint64_t a1)
{
  type metadata accessor for Balance(319);
  if (v1 <= 0x3F)
  {
    sub_1B740E294(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B740E294(uint64_t a1)
{
  if (!qword_1EB994228)
  {
    type metadata accessor for Balance(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB994228);
    }
  }
}

uint64_t sub_1B740E324(uint64_t a1)
{
  result = sub_1B77FFA18();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CurrentBalance(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B740E40C()
{
  result = qword_1EB994240;
  if (!qword_1EB994240)
  {
    result = swift_getWitnessTable(asc_1B7828040, &type metadata for Balance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994240);
  }

  return result;
}

unint64_t sub_1B740E464()
{
  result = qword_1EB994248;
  if (!qword_1EB994248)
  {
    result = swift_getWitnessTable(aQG7t, &type metadata for CurrentBalance.AvailableAndBookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994248);
  }

  return result;
}

unint64_t sub_1B740E4BC()
{
  result = qword_1EB994250;
  if (!qword_1EB994250)
  {
    result = swift_getWitnessTable(byte_1B78281B0, &type metadata for CurrentBalance.BookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994250);
  }

  return result;
}

unint64_t sub_1B740E514()
{
  result = qword_1EB994258;
  if (!qword_1EB994258)
  {
    result = swift_getWitnessTable(byte_1B7828268, &type metadata for CurrentBalance.AvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994258);
  }

  return result;
}

unint64_t sub_1B740E56C()
{
  result = qword_1EB994260;
  if (!qword_1EB994260)
  {
    result = swift_getWitnessTable(aG7_5, &type metadata for CurrentBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994260);
  }

  return result;
}

unint64_t sub_1B740E5C4()
{
  result = qword_1EB994268;
  if (!qword_1EB994268)
  {
    result = swift_getWitnessTable(aQG7, &type metadata for AccountBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994268);
  }

  return result;
}

unint64_t sub_1B740E61C()
{
  result = qword_1EB994270;
  if (!qword_1EB994270)
  {
    result = swift_getWitnessTable(byte_1B7828348, &type metadata for AccountBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994270);
  }

  return result;
}

unint64_t sub_1B740E674()
{
  result = qword_1EB994278;
  if (!qword_1EB994278)
  {
    result = swift_getWitnessTable(byte_1B7828370, &type metadata for AccountBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994278);
  }

  return result;
}

unint64_t sub_1B740E6CC()
{
  result = qword_1EB994280;
  if (!qword_1EB994280)
  {
    result = swift_getWitnessTable(byte_1B78281D8, &type metadata for CurrentBalance.AvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994280);
  }

  return result;
}

unint64_t sub_1B740E724()
{
  result = qword_1EB994288;
  if (!qword_1EB994288)
  {
    result = swift_getWitnessTable(a1_10, &type metadata for CurrentBalance.AvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994288);
  }

  return result;
}

unint64_t sub_1B740E77C()
{
  result = qword_1EB994290;
  if (!qword_1EB994290)
  {
    result = swift_getWitnessTable(byte_1B7828120, &type metadata for CurrentBalance.BookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994290);
  }

  return result;
}

unint64_t sub_1B740E7D4()
{
  result = qword_1EB994298;
  if (!qword_1EB994298)
  {
    result = swift_getWitnessTable(byte_1B7828148, &type metadata for CurrentBalance.BookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994298);
  }

  return result;
}

unint64_t sub_1B740E82C()
{
  result = qword_1EB9942A0;
  if (!qword_1EB9942A0)
  {
    result = swift_getWitnessTable(byte_1B7828068, &type metadata for CurrentBalance.AvailableAndBookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9942A0);
  }

  return result;
}

unint64_t sub_1B740E884()
{
  result = qword_1EB9942A8;
  if (!qword_1EB9942A8)
  {
    result = swift_getWitnessTable(byte_1B7828090, &type metadata for CurrentBalance.AvailableAndBookedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9942A8);
  }

  return result;
}

unint64_t sub_1B740E8DC()
{
  result = qword_1EB9942B0;
  if (!qword_1EB9942B0)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for CurrentBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9942B0);
  }

  return result;
}

unint64_t sub_1B740E934()
{
  result = qword_1EB9942B8;
  if (!qword_1EB9942B8)
  {
    result = swift_getWitnessTable(aY_12, &type metadata for CurrentBalance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9942B8);
  }

  return result;
}

unint64_t sub_1B740E98C()
{
  result = qword_1EB9942C0;
  if (!qword_1EB9942C0)
  {
    result = swift_getWitnessTable(aAG7_1, &type metadata for Balance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9942C0);
  }

  return result;
}

unint64_t sub_1B740E9E4()
{
  result = qword_1EB9942C8;
  if (!qword_1EB9942C8)
  {
    result = swift_getWitnessTable(aY_13, &type metadata for Balance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9942C8);
  }

  return result;
}

uint64_t sub_1B740EA38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144664F7361 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B740EB54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x42746E6572727563 && a2 == 0xEE0065636E616C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1B740EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (*(*a1 + 16) && (sub_1B726359C(), (v6 & 1) != 0))
  {
    if (qword_1EB98EA78 != -1)
    {
      swift_once();
    }

    v7 = sub_1B78000B8();
    __swift_project_value_buffer(v7, qword_1EB9948E8);
    v8 = sub_1B7800098();
    v9 = sub_1B78011D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 0xD000000000000014;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      if (v5)
      {
        if (v5 == 1)
        {
          v13 = "consentFlowRelinking";
        }

        else
        {
          v13 = "Manager";
        }
      }

      else
      {
        v10 = 0xD000000000000015;
        v13 = "consentFlowCompleted";
      }

      v20 = sub_1B71A3EF8(v10, v13 | 0x8000000000000000, &v21);

      *(v11 + 4) = v20;
      v19 = "CoreODI session with type %s is already in progress, discarding.";
LABEL_21:
      _os_log_impl(&dword_1B7198000, v8, v9, v19, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
      MEMORY[0x1B8CA7A40](v11, -1, -1);
    }
  }

  else
  {
    LOBYTE(v21) = v5;
    v14 = sub_1B741064C(&v21, a4);
    sub_1B74E46F4(v14, v5);
    if (qword_1EB98EA78 != -1)
    {
      swift_once();
    }

    v15 = sub_1B78000B8();
    __swift_project_value_buffer(v15, qword_1EB9948E8);
    v8 = sub_1B7800098();
    v9 = sub_1B78011F8();
    if (os_log_type_enabled(v8, v9))
    {
      v16 = 0xD000000000000014;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      if (v5)
      {
        if (v5 == 1)
        {
          v17 = "consentFlowRelinking";
        }

        else
        {
          v17 = "Manager";
        }
      }

      else
      {
        v16 = 0xD000000000000015;
        v17 = "consentFlowCompleted";
      }

      v18 = sub_1B71A3EF8(v16, v17 | 0x8000000000000000, &v21);

      *(v11 + 4) = v18;
      v19 = "Successfully created ODISession with type %s.";
      goto LABEL_21;
    }
  }
}

void sub_1B740EF54(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  v5 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1B726359C(), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
    v10 = qword_1EB98EA78;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_1B78000B8();
    __swift_project_value_buffer(v12, qword_1EB9948E8);
    v13 = sub_1B7800098();
    v14 = sub_1B78011F8();
    if (os_log_type_enabled(v13, v14))
    {
      v31 = v11;
      v15 = 0xD000000000000014;
      v16 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v16 = 136315394;
      if (v4)
      {
        if (v4 == 1)
        {
          v17 = "consentFlowRelinking";
        }

        else
        {
          v17 = "Manager";
        }
      }

      else
      {
        v15 = 0xD000000000000015;
        v17 = "consentFlowCompleted";
      }

      v26 = sub_1B71A3EF8(v15, v17 | 0x8000000000000000, &v32);

      *(v16 + 4) = v26;
      *(v16 + 12) = 2080;
      if (a4)
      {
        if (a4 == 1)
        {
          v27 = 0x6465747365676E69;
        }

        else
        {
          v27 = 0x74756F656D6974;
        }

        if (a4 == 1)
        {
          v28 = 0xE800000000000000;
        }

        else
        {
          v28 = 0xE700000000000000;
        }
      }

      else
      {
        v28 = 0xE900000000000064;
        v27 = 0x6564726163736964;
      }

      v29 = sub_1B71A3EF8(v27, v28, &v32);

      *(v16 + 14) = v29;
      _os_log_impl(&dword_1B7198000, v13, v14, "Providing CoreODI assessment feedback for assessment with type %s:\n%s.", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v30, -1, -1);
      MEMORY[0x1B8CA7A40](v16, -1, -1);

      v11 = v31;
    }

    else
    {
    }

    [v11 provideFeedbackOnPayloadOutcome_];
    sub_1B74E46F4(0, v4);
  }

  else
  {
    if (qword_1EB98EA78 != -1)
    {
      swift_once();
    }

    v18 = sub_1B78000B8();
    __swift_project_value_buffer(v18, qword_1EB9948E8);
    v19 = sub_1B7800098();
    v20 = sub_1B78011D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = 0xD000000000000014;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      if (v4)
      {
        if (v4 == 1)
        {
          v24 = "consentFlowRelinking";
        }

        else
        {
          v24 = "Manager";
        }
      }

      else
      {
        v21 = 0xD000000000000015;
        v24 = "consentFlowCompleted";
      }

      v25 = sub_1B71A3EF8(v21, v24 | 0x8000000000000000, &v32);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_1B7198000, v19, v20, "CoreODI session with type %s does not exist. Feedback cannot be\nprovided, discarding.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
      MEMORY[0x1B8CA7A40](v22, -1, -1);
    }
  }
}

uint64_t sub_1B740F344(_BYTE *a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 33) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B740F36C, 0, 0);
}

uint64_t sub_1B740F36C()
{
  v62 = v0;
  v1 = *(*(v0 + 6) + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (*(v2 + 16) && (v3 = sub_1B726359C(), (v4 & 1) != 0))
  {
    v5 = *(v0 + 5);
    v6 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 7) = v6;
    v7 = v6;

    v8 = *(v5 + 16);
    if (v8)
    {
      v49 = v0;
      v53 = *MEMORY[0x1E6998520];
      v57 = *MEMORY[0x1E6998548];
      v60 = *MEMORY[0x1E6998550];
      v52 = *MEMORY[0x1E6998500];
      v56 = *MEMORY[0x1E6998558];
      v59 = *MEMORY[0x1E69984D8];
      v51 = *MEMORY[0x1E69984D0];
      v55 = *MEMORY[0x1E69984E8];
      v58 = *MEMORY[0x1E69984E0];
      v50 = *MEMORY[0x1E69984F8];
      v54 = *MEMORY[0x1E69984F0];
      v9 = (*(v0 + 5) + 48);
      v10 = MEMORY[0x1E69E7CC8];
      v0 = v7;
      while (1)
      {
        v12 = *v9;
        if (v12 <= 4)
        {
          if (*v9 <= 1u)
          {
            v13 = v54;
            if (*v9)
            {
              v13 = v50;
            }
          }

          else
          {
            v13 = v58;
            if (v12 != 2)
            {
              v13 = v55;
              if (v12 != 3)
              {
                v13 = v51;
              }
            }
          }
        }

        else if (*v9 > 7u)
        {
          v13 = v60;
          if (v12 != 8)
          {
            v13 = v57;
            if (v12 != 9)
            {
              v13 = v53;
            }
          }
        }

        else
        {
          v13 = v59;
          if (v12 != 5)
          {
            v13 = v56;
            if (v12 != 6)
            {
              v13 = v52;
            }
          }
        }

        v15 = *(v9 - 2);
        v14 = *(v9 - 1);
        v16 = v13;
        sub_1B74104F0(v15, v14, v12);
        sub_1B74104F0(v15, v14, v12);
        sub_1B74104F0(v15, v14, v12);
        v17 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v10;
        v19 = sub_1B7263598();
        v21 = v10[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v25 = v20;
        if (v10[3] < v24)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_26;
        }

        v30 = v19;
        sub_1B725CDA8();
        v19 = v30;
        v10 = v61;
        if (v25)
        {
LABEL_5:
          v11 = (v10[7] + 16 * v19);
          *v11 = v15;
          v11[1] = v14;

          sub_1B7410508(v15, v14, v12);

          sub_1B7410508(v15, v14, v12);
          goto LABEL_6;
        }

LABEL_27:
        v10[(v19 >> 6) + 8] |= 1 << v19;
        *(v10[6] + 8 * v19) = v17;
        v27 = (v10[7] + 16 * v19);
        *v27 = v15;
        v27[1] = v14;
        sub_1B7410508(v15, v14, v12);

        sub_1B7410508(v15, v14, v12);
        v28 = v10[2];
        v23 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v23)
        {
          goto LABEL_53;
        }

        v10[2] = v29;
LABEL_6:
        v9 += 24;
        if (!--v8)
        {
          v7 = v0;
          v44 = [objc_allocWithZone(MEMORY[0x1E69983B8]) init];
          sub_1B7222CD4(v10);

          type metadata accessor for ODIAttributeKey(0);
          sub_1B7410520();
          v45 = sub_1B7800708();

          [v44 setAttributes_];

          [v0 updateWithAdditionalAttributes_];
          v0 = v49;
          goto LABEL_46;
        }
      }

      sub_1B724A110(v24, isUniquelyReferenced_nonNull_native);
      v10 = v61;
      v19 = sub_1B7263598();
      if ((v25 & 1) != (v26 & 1))
      {
        type metadata accessor for ODIAttributeKey(0);

        return sub_1B78021C8();
      }

LABEL_26:
      if (v25)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }

LABEL_46:
    v46 = swift_task_alloc();
    *(v0 + 8) = v46;
    *(v46 + 16) = v7;
    v47 = swift_task_alloc();
    *(v0 + 9) = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9942E0, &unk_1B7828C40);
    *v47 = v0;
    v47[1] = sub_1B740FA68;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000013, 0x80000001B787E380, sub_1B7410578, v46, v48);
  }

  else
  {

    if (qword_1EB98EA78 != -1)
    {
LABEL_54:
      swift_once();
    }

    v31 = sub_1B78000B8();
    __swift_project_value_buffer(v31, qword_1EB9948E8);
    v32 = sub_1B7800098();
    v33 = sub_1B78011D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[33];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61 = v36;
      *v35 = 136315138;
      v37 = "consentFlowRelinking";
      if (v34 != 1)
      {
        v37 = "Manager";
      }

      if (v34)
      {
        v38 = 0xD000000000000014;
      }

      else
      {
        v38 = 0xD000000000000015;
      }

      if (v34)
      {
        v39 = v37;
      }

      else
      {
        v39 = "consentFlowCompleted";
      }

      v40 = sub_1B71A3EF8(v38, v39 | 0x8000000000000000, &v61);

      *(v35 + 4) = v40;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1B8CA7A40](v36, -1, -1);
      MEMORY[0x1B8CA7A40](v35, -1, -1);
    }

    sub_1B741049C();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
    v42 = *(v0 + 1);

    return v42();
  }
}

uint64_t sub_1B740FA68()
{

  return MEMORY[0x1EEE6DFA0](sub_1B740FB80, 0, 0);
}

uint64_t sub_1B740FB80()
{
  v23 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    sub_1B7410580(*(v0 + 16));
    if (qword_1EB98EA78 != -1)
    {
      swift_once();
    }

    v3 = sub_1B78000B8();
    __swift_project_value_buffer(v3, qword_1EB9948E8);
    sub_1B7410580(v2);
    v4 = sub_1B7800098();
    v5 = sub_1B78011D8();
    sub_1B7410590(v2, v1, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 33);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v7 = 136315394;
      v10 = "consentFlowRelinking";
      if (v6 != 1)
      {
        v10 = "Manager";
      }

      if (v6)
      {
        v11 = 0xD000000000000014;
      }

      else
      {
        v11 = 0xD000000000000015;
      }

      if (v6)
      {
        v12 = v10;
      }

      else
      {
        v12 = "consentFlowCompleted";
      }

      v13 = sub_1B71A3EF8(v11, v12 | 0x8000000000000000, &v22);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2112;
      sub_1B741049C();
      swift_allocError();
      *v14 = v2;
      sub_1B7410580(v2);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v15;
      *v8 = v15;
      _os_log_impl(&dword_1B7198000, v4, v5, "An attempt to get assessment with type %s has failed: %@", v7, 0x16u);
      sub_1B726B694(v8);
      MEMORY[0x1B8CA7A40](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1B8CA7A40](v9, -1, -1);
      MEMORY[0x1B8CA7A40](v7, -1, -1);
    }

    v16 = *(v0 + 56);
    sub_1B741049C();
    swift_allocError();
    *v17 = v2;
    swift_willThrow();
    sub_1B7410590(v2, v1, 1);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {

    type metadata accessor for FraudAssessmentResult();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v1;
    v21 = *(v0 + 8);

    return v21();
  }
}

void sub_1B740FE84(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9942E8, &unk_1B7828C50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1B74105B0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B74103A8;
  aBlock[3] = &block_descriptor_7;
  v10 = _Block_copy(aBlock);

  [a2 getAssessment_];
  _Block_release(v10);
}

uint64_t sub_1B7410034(void *a1, unint64_t a2, id a3)
{
  if (a2)
  {
    v5 = qword_1EB98EA78;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_1B78000B8();
    __swift_project_value_buffer(v6, qword_1EB9948E8);

    v7 = sub_1B7800098();
    v8 = sub_1B78011F8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1B71A3EF8(a1, a2, &v26);
      _os_log_impl(&dword_1B7198000, v7, v8, "Successfully received CoreODI assessment: %s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
      MEMORY[0x1B8CA7A40](v9, -1, -1);
    }

    v26 = a1;
    v27 = a2;
    v28 = 0;
  }

  else
  {
    if (a3)
    {
      v12 = a3;
      if (qword_1EB98EA78 != -1)
      {
        swift_once();
      }

      v13 = sub_1B78000B8();
      __swift_project_value_buffer(v13, qword_1EB9948E8);
      v14 = a3;
      v15 = sub_1B7800098();
      v16 = sub_1B78011D8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = a3;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_1B7198000, v15, v16, "An error occurred while calculating the CoreODI assessment: %@.", v17, 0xCu);
        sub_1B726B694(v18);
        MEMORY[0x1B8CA7A40](v18, -1, -1);
        MEMORY[0x1B8CA7A40](v17, -1, -1);
      }

      v26 = a3;
      v27 = 0;
    }

    else
    {
      if (qword_1EB98EA78 != -1)
      {
        swift_once();
      }

      v21 = sub_1B78000B8();
      __swift_project_value_buffer(v21, qword_1EB9948E8);
      v22 = sub_1B7800098();
      v23 = sub_1B78011D8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        MEMORY[0x1B8CA7A40](v24, -1, -1);
      }

      v26 = 0;
      v27 = 0;
    }

    v28 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9942E8, &unk_1B7828C50);
  return sub_1B7800D08();
}

double sub_1B74103A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

uint64_t sub_1B7410440()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1B741049C()
{
  result = qword_1EB9942D8;
  if (!qword_1EB9942D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FraudAssessmentError, &type metadata for FraudAssessmentError, v0, v1);
    atomic_store(result, &qword_1EB9942D8);
  }

  return result;
}

double sub_1B74104F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xAu)
  {
  }

  return result;
}

double sub_1B7410508(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xAu)
  {
  }

  return result;
}

unint64_t sub_1B7410520()
{
  result = qword_1EB98F0E8;
  if (!qword_1EB98F0E8)
  {
    type metadata accessor for ODIAttributeKey(255);
    result = swift_getWitnessTable(byte_1B7808B88, v3, v0, v1);
    atomic_store(result, &qword_1EB98F0E8);
  }

  return result;
}

id sub_1B7410580(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

double sub_1B7410590(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B74105A0(a1);
  }

  else
  {
  }

  return result;
}

void sub_1B74105A0(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1B74105B0(void *a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9942E8, &unk_1B7828C50);

  return sub_1B7410034(a1, a2, a3);
}

id sub_1B741064C(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = **(&unk_1E7CAAEB8 + v2);
    v5 = [objc_allocWithZone(MEMORY[0x1E69983C8]) initWithServiceIdentifier:v4 forDSIDType:1 andLocationBundle:a2];
  }

  else
  {
    v4 = **(&unk_1E7CAAEB8 + v2);
    v5 = [objc_allocWithZone(MEMORY[0x1E69983C8]) initWithServiceIdentifier:v4 forDSIDType:1];
  }

  v6 = v5;

  return v6;
}

id static ManagedAccountBalance.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedAccountBalance;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

unint64_t static ManagedAccountBalance.existingAccountBalance(withID:in:)()
{
  v1 = v0;
  v12.receiver = swift_getObjCClassFromMetadata();
  v12.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedAccountBalance;
  v2 = objc_msgSendSuper2(&v12, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9A8();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B721FF04();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v10 = result;
  v11 = sub_1B7801958();
  result = v10;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(result + 32);
LABEL_8:
    v1 = v9;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedAccountBalance.predicateForAccountBalance(withID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9A8();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1B721FF04();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return sub_1B78010E8();
}

unint64_t static ManagedAccountBalance.latestAccountBalance(forAccountID:in:)()
{
  v1 = v0;
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedAccountBalance;
  v2 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B780B190;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v8 = sub_1B7800838();
  v9 = [v7 initWithKey:v8 ascending:0];

  *(v6 + 32) = v9;
  sub_1B7205540(0, &qword_1EDAF6470, 0x1E696AEB0);
  v10 = sub_1B7800C18();

  [v2 setSortDescriptors_];

  [v2 setFetchLimit_];
  [v2 setReturnsObjectsAsFaults_];
  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v13 = result;
  v14 = sub_1B7801958();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v1 = v12;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedAccountBalance.predicateForAccountBalances(forAccountID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

uint64_t BankConnectAuthorizationSession.AuthType.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = a1 != 2;
    if (a1 == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }

    if (a1 == 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 16);
}

unsigned __int16 *sub_1B7410DE0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOWORD(v2) = 0;
  }

  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

uint64_t BankConnectAuthorizationSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BankConnectAuthorizationSession.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double BankConnectAuthorizationSession.consent.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;

  return result;
}

uint64_t type metadata accessor for BankConnectAuthorizationSession(uint64_t a1)
{
  result = qword_1EDAF9700;
  if (!qword_1EDAF9700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 BankConnectAuthorizationSession.consent.setter(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v5 = a1[2];
  v2 = *(a1 + 6);
  v3 = v1 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 20);

  *v3 = v7;
  *(v3 + 16) = v6;
  result = v5;
  *(v3 + 32) = v5;
  *(v3 + 48) = v2;
  return result;
}

uint64_t BankConnectAuthorizationSession.codeVerifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 24));

  return v1;
}

void BankConnectAuthorizationSession.codeVerifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BankConnectAuthorizationSession.previousConsentUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 28);

  return sub_1B7227AFC(v3, a1);
}

uint64_t BankConnectAuthorizationSession.previousConsentUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 28);

  return sub_1B741129C(a1, v3);
}

uint64_t sub_1B741129C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectAuthorizationSession.institution.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 32);

  return sub_1B7399650(a1, v3);
}

uint64_t BankConnectAuthorizationSession.fpanId.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 36));

  return v1;
}

void BankConnectAuthorizationSession.fpanId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectAuthorizationSession(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BankConnectAuthorizationSession.authorizationType.setter(__int16 a1)
{
  result = type metadata accessor for BankConnectAuthorizationSession(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t BankConnectAuthorizationSession.init(id:consent:previousConsentUUID:codeVerifier:institution:fpanId:authorizationType:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int16 a10)
{
  v24 = a2[1];
  v25 = *a2;
  v23 = a2[2];
  v14 = *(a2 + 6);
  v15 = type metadata accessor for BankConnectAuthorizationSession(0);
  v16 = v15[7];
  v17 = sub_1B77FFA18();
  v18 = *(v17 - 8);
  (*(v18 + 56))(a9 + v16, 1, 1, v17);
  v19 = (a9 + v15[9]);
  (*(v18 + 32))(a9, a1, v17);
  v20 = a9 + v15[5];
  *v20 = v25;
  *(v20 + 16) = v24;
  *(v20 + 32) = v23;
  *(v20 + 48) = v14;
  sub_1B741129C(a3, a9 + v16);
  v21 = (a9 + v15[6]);
  *v21 = a4;
  v21[1] = a5;
  result = sub_1B739983C(a6, a9 + v15[8]);
  *v19 = a7;
  v19[1] = a8;
  *(a9 + v15[10]) = a10;
  return result;
}

unint64_t sub_1B7411700()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x64496E617066;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x7475746974736E69;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E65736E6F63;
  if (v1 != 1)
  {
    v5 = 0x6972655665646F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B74117E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B74141E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7411808(uint64_t a1)
{
  v2 = sub_1B7413A78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7411844(uint64_t a1)
{
  v2 = sub_1B7413A78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectAuthorizationSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9942F0, &qword_1B7828C78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7413A78();
  sub_1B78023F8();
  LOBYTE(v24) = 0;
  sub_1B77FFA18();
  sub_1B71A6A44(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B7801FC8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v23 = v6;
  v10 = type metadata accessor for BankConnectAuthorizationSession(0);
  v21 = v3;
  v22 = v10;
  v11 = (v3 + *(v10 + 20));
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[3];
  v15 = v11[4];
  v16 = v11[5];
  v17 = v11[6];
  v24 = *v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = 1;
  sub_1B7413ACC();

  sub_1B7801FC8();

  v18 = v21;
  LOBYTE(v24) = 2;
  sub_1B7801F78();
  v19 = v23;
  LOBYTE(v24) = 3;
  sub_1B7801F38();
  LOBYTE(v24) = 4;
  type metadata accessor for Institution(0);
  sub_1B71A6A44(&qword_1EB992F88, type metadata accessor for Institution, protocol conformance descriptor for Institution);
  sub_1B7801FC8();
  v20 = v22;
  LOBYTE(v24) = 5;
  sub_1B7801EF8();
  LOWORD(v24) = *(v18 + *(v20 + 40));
  v31 = 6;
  sub_1B7413B20();
  sub_1B7801FC8();
  return (*(v19 + 8))(v8, v5);
}

uint64_t BankConnectAuthorizationSession.hash(into:)(__int128 *a1)
{
  v3 = sub_1B77FFA18();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v14 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v13[1] = sub_1B71A6A44(&qword_1EB99DAF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B7800768();
  v8 = type metadata accessor for BankConnectAuthorizationSession(0);
  v9 = *(v1 + v8[5] + 48);
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7802318();
  if (v9)
  {
    sub_1B7223414(a1, v9);
  }

  sub_1B7800798();
  sub_1B7227AFC(v1 + v8[7], v7);
  v10 = v15;
  if ((*(v15 + 48))(v7, 1, v3) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    v11 = v14;
    (*(v10 + 32))(v14, v7, v3);
    sub_1B7802318();
    sub_1B7800768();
    (*(v10 + 8))(v11, v3);
  }

  Institution.hash(into:)(a1);
  if (*(v1 + v8[9] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802328();
}

uint64_t BankConnectAuthorizationSession.hashValue.getter()
{
  sub_1B78022F8();
  BankConnectAuthorizationSession.hash(into:)(v1);
  return sub_1B7802368();
}

void BankConnectAuthorizationSession.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - v5;
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994310, &qword_1B7828C80);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  v14 = type metadata accessor for BankConnectAuthorizationSession(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = *(v8 + 56);
  v46 = *(v15 + 28);
  v47 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(&v47[v46], 1, 1, v7);
  v18 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B7413A78();
  v43 = v13;
  v19 = v44;
  sub_1B78023C8();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_1B7205418(&v47[v46], &unk_1EB993A10, &qword_1B780B4A0);
  }

  else
  {
    v37 = v6;
    v20 = v41;
    v44 = v14;
    LOBYTE(v48) = 0;
    v21 = sub_1B71A6A44(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v22 = v42;
    sub_1B7801E48();
    v23 = v7;
    v36[1] = v21;
    v24 = v47;
    (*(v8 + 32))(v47, v10, v23);
    v52 = 1;
    sub_1B7413B74();
    sub_1B7801E48();
    v36[2] = 0;
    v25 = v49;
    v26 = v50;
    v27 = v51;
    v28 = v44;
    v29 = v24 + v44[5];
    *v29 = v48;
    *(v29 + 16) = v25;
    *(v29 + 32) = v26;
    *(v29 + 48) = v27;
    LOBYTE(v48) = 2;
    v30 = sub_1B7801DF8();
    v31 = (v24 + v28[6]);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v48) = 3;
    sub_1B7801DB8();
    sub_1B741129C(v37, v24 + v46);
    LOBYTE(v48) = 4;
    sub_1B71A6A44(&qword_1EB992F98, type metadata accessor for Institution, protocol conformance descriptor for Institution);
    sub_1B7801E48();
    sub_1B739983C(v40, v24 + v28[8]);
    LOBYTE(v48) = 5;
    v33 = sub_1B7801D78();
    v34 = (v24 + v28[9]);
    *v34 = v33;
    v34[1] = v35;
    v52 = 6;
    sub_1B7413BC8();
    sub_1B7801E48();
    (*(v20 + 8))(v43, v22);
    *(v24 + v28[10]) = v48;
    sub_1B7413C1C(v24, v38, type metadata accessor for BankConnectAuthorizationSession);
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_1B7413C84(v24, type metadata accessor for BankConnectAuthorizationSession);
  }
}

uint64_t sub_1B7412750()
{
  sub_1B78022F8();
  BankConnectAuthorizationSession.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t sub_1B7412794(uint64_t a1)
{
  sub_1B78022F8();
  BankConnectAuthorizationSession.hash(into:)(v2);
  return sub_1B7802368();
}

uint64_t BankConnectAuthorizationSession.Consent.id.getter()
{
  v1 = *v0;

  return v1;
}

void BankConnectAuthorizationSession.Consent.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t BankConnectAuthorizationSession.Consent.token.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void BankConnectAuthorizationSession.Consent.token.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t BankConnectAuthorizationSession.Consent.authorizationURI.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void BankConnectAuthorizationSession.Consent.authorizationURI.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall BankConnectAuthorizationSession.Consent.init(id:token:authorizationURI:extensionPayload:)(FinanceKit::BankConnectAuthorizationSession::Consent *__return_ptr retstr, Swift::String id, Swift::String token, Swift::String authorizationURI, Swift::OpaquePointer_optional extensionPayload)
{
  retstr->id = id;
  retstr->token = token;
  retstr->authorizationURI = authorizationURI;
  retstr->extensionPayload.value._rawValue = extensionPayload.value._rawValue;
}

uint64_t sub_1B74129D8()
{
  v1 = 25705;
  if (*v0)
  {
    v1 = 0x6E656B6F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1B7412A4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7414438(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7412A74(uint64_t a1)
{
  v2 = sub_1B7413CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7412AB0(uint64_t a1)
{
  v2 = sub_1B7413CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectAuthorizationSession.Consent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994328, &unk_1B7828C88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7413CE4();
  sub_1B78023F8();
  v23 = 0;
  v9 = v18;
  sub_1B7801F78();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_1B7801F78();
    v21 = 2;
    sub_1B7801F78();
    v19 = v10;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460, &qword_1B780CC00);
    sub_1B727C37C(&qword_1EDAF6530, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BankConnectAuthorizationSession.Consent.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  if (!v3)
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7223414(a1, v3);
}

uint64_t BankConnectAuthorizationSession.Consent.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7223414(v3, v1);
  }

  return sub_1B7802368();
}

void BankConnectAuthorizationSession.Consent.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994338, &qword_1B7828C98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7413CE4();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v28 = 0;
    v9 = sub_1B7801DF8();
    v23 = v10;
    v27 = 1;
    v11 = sub_1B7801DF8();
    v22 = v12;
    v20 = v11;
    v26 = 2;
    v19 = sub_1B7801DF8();
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460, &qword_1B780CC00);
    v25 = 3;
    sub_1B727C37C(&qword_1EDAF6528, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1B7801DB8();
    (*(v6 + 8))(v8, v5);
    v15 = v23;
    v14 = v24;
    *a2 = v9;
    a2[1] = v15;
    v16 = v19;
    v18 = v21;
    v17 = v22;
    a2[2] = v20;
    a2[3] = v17;
    a2[4] = v16;
    a2[5] = v18;
    a2[6] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B7413228(uint64_t a1)
{
  v3 = *(v1 + 48);
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  if (!v3)
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7223414(a1, v3);
}

uint64_t sub_1B74132E0(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7802318();
  if (v2)
  {
    sub_1B7223414(v4, v2);
  }

  return sub_1B7802368();
}

uint64_t BankConnectAuthorizationSession.AuthSource.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    v1 = a1 == 1;
    v2 = a1 != 1;
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 16);
}

unsigned __int16 *sub_1B74133CC@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOWORD(v2) = 0;
  }

  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

uint64_t _s10FinanceKit31BankConnectAuthorizationSessionV7ConsentV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1B78020F8()) && (v2 == v7 && v4 == v8 || (sub_1B78020F8()) && (v3 == v9 && v6 == v10 || (sub_1B78020F8()))
  {
    if (v5)
    {
      if (v11)
      {

        v12 = sub_1B7220360(v5, v11);

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s10FinanceKit31BankConnectAuthorizationSessionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB9943A0, &qword_1B786A830);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v53 = v7;
  v54 = v10;
  v55 = v5;
  v56 = v4;
  v14 = type metadata accessor for BankConnectAuthorizationSession(0);
  v15 = (a1 + v14[5]);
  v16 = *v15;
  v17 = v15[1];
  v57 = a2;
  v58 = a1;
  v18 = v15[2];
  v19 = v15[3];
  v20 = v15[4];
  v21 = v15[5];
  v22 = v15[6];
  v60[0] = v16;
  v60[1] = v17;
  v60[2] = v18;
  v60[3] = v19;
  v60[4] = v20;
  v60[5] = v21;
  v60[6] = v22;
  v23 = (a2 + v14[5]);
  v24 = v23[1];
  v25 = v23[2];
  v26 = v23[3];
  v27 = v23[4];
  v28 = v23[5];
  v29 = v23[6];
  v59[0] = *v23;
  v59[1] = v24;
  v59[2] = v25;
  v59[3] = v26;
  v59[4] = v27;
  v59[5] = v28;
  v59[6] = v29;

  LOBYTE(v24) = _s10FinanceKit31BankConnectAuthorizationSessionV7ConsentV2eeoiySbAE_AEtFZ_0(v60, v59);

  if ((v24 & 1) == 0)
  {
    return 0;
  }

  v30 = v14[6];
  v31 = v57;
  v32 = v58;
  v33 = *(v58 + v30);
  v34 = *(v58 + v30 + 8);
  v35 = (v57 + v30);
  v36 = v14;
  if ((v33 != *v35 || v34 != v35[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v37 = v14[7];
  v38 = *(v11 + 48);
  sub_1B7227AFC(v32 + v37, v13);
  sub_1B7227AFC(v31 + v37, &v13[v38]);
  v40 = v55;
  v39 = v56;
  v41 = *(v55 + 48);
  if (v41(v13, 1, v56) != 1)
  {
    v42 = v54;
    sub_1B7227AFC(v13, v54);
    if (v41(&v13[v38], 1, v39) != 1)
    {
      v43 = v53;
      (*(v40 + 32))(v53, &v13[v38], v39);
      sub_1B71A6A44(&qword_1EB99DBE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v44 = sub_1B7800828();
      v45 = *(v40 + 8);
      v45(v43, v39);
      v45(v42, v39);
      sub_1B7205418(v13, &unk_1EB993A10, &qword_1B780B4A0);
      if ((v44 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v40 + 8))(v42, v39);
LABEL_11:
    sub_1B7205418(v13, qword_1EB9943A0, &qword_1B786A830);
    return 0;
  }

  if (v41(&v13[v38], 1, v39) != 1)
  {
    goto LABEL_11;
  }

  sub_1B7205418(v13, &unk_1EB993A10, &qword_1B780B4A0);
LABEL_13:
  if (static Institution.== infix(_:_:)())
  {
    v46 = v36[9];
    v47 = (v32 + v46);
    v48 = *(v32 + v46 + 8);
    v49 = (v31 + v46);
    v50 = v49[1];
    if (v48)
    {
      if (v50 && (*v47 == *v49 && v48 == v50 || (sub_1B78020F8() & 1) != 0))
      {
        return *(v32 + v36[10]) == *(v31 + v36[10]);
      }
    }

    else if (!v50)
    {
      return *(v32 + v36[10]) == *(v31 + v36[10]);
    }
  }

  return 0;
}

unint64_t sub_1B7413A78()
{
  result = qword_1EB9942F8;
  if (!qword_1EB9942F8)
  {
    result = swift_getWitnessTable(a1_11, &type metadata for BankConnectAuthorizationSession.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9942F8);
  }

  return result;
}

unint64_t sub_1B7413ACC()
{
  result = qword_1EB994300;
  if (!qword_1EB994300)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.Consent, &type metadata for BankConnectAuthorizationSession.Consent, v0, v1);
    atomic_store(result, &qword_1EB994300);
  }

  return result;
}

unint64_t sub_1B7413B20()
{
  result = qword_1EB994308;
  if (!qword_1EB994308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.AuthType, &type metadata for BankConnectAuthorizationSession.AuthType, v0, v1);
    atomic_store(result, &qword_1EB994308);
  }

  return result;
}

unint64_t sub_1B7413B74()
{
  result = qword_1EB994318;
  if (!qword_1EB994318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.Consent, &type metadata for BankConnectAuthorizationSession.Consent, v0, v1);
    atomic_store(result, &qword_1EB994318);
  }

  return result;
}

unint64_t sub_1B7413BC8()
{
  result = qword_1EB994320;
  if (!qword_1EB994320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.AuthType, &type metadata for BankConnectAuthorizationSession.AuthType, v0, v1);
    atomic_store(result, &qword_1EB994320);
  }

  return result;
}

uint64_t sub_1B7413C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7413C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B7413CE4()
{
  result = qword_1EB994330;
  if (!qword_1EB994330)
  {
    result = swift_getWitnessTable(byte_1B7829238, &type metadata for BankConnectAuthorizationSession.Consent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994330);
  }

  return result;
}

unint64_t sub_1B7413D3C()
{
  result = qword_1EB994340;
  if (!qword_1EB994340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.AuthType, &type metadata for BankConnectAuthorizationSession.AuthType, v0, v1);
    atomic_store(result, &qword_1EB994340);
  }

  return result;
}

unint64_t sub_1B7413DDC()
{
  result = qword_1EB994350;
  if (!qword_1EB994350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.Consent, &type metadata for BankConnectAuthorizationSession.Consent, v0, v1);
    atomic_store(result, &qword_1EB994350);
  }

  return result;
}

unint64_t sub_1B7413E34()
{
  result = qword_1EB994358;
  if (!qword_1EB994358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.AuthSource, &type metadata for BankConnectAuthorizationSession.AuthSource, v0, v1);
    atomic_store(result, &qword_1EB994358);
  }

  return result;
}

void sub_1B7413EB0(uint64_t a1)
{
  sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    sub_1B73F170C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Institution(319);
      if (v3 <= 0x3F)
      {
        sub_1B7280028();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B7413FD8()
{
  result = qword_1EB994360;
  if (!qword_1EB994360)
  {
    result = swift_getWitnessTable(byte_1B7829158, &type metadata for BankConnectAuthorizationSession.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994360);
  }

  return result;
}

unint64_t sub_1B7414030()
{
  result = qword_1EB994368;
  if (!qword_1EB994368)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for BankConnectAuthorizationSession.Consent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994368);
  }

  return result;
}

unint64_t sub_1B7414088()
{
  result = qword_1EB994370;
  if (!qword_1EB994370)
  {
    result = swift_getWitnessTable(aQG7_0, &type metadata for BankConnectAuthorizationSession.Consent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994370);
  }

  return result;
}

unint64_t sub_1B74140E0()
{
  result = qword_1EB994378;
  if (!qword_1EB994378)
  {
    result = swift_getWitnessTable(byte_1B78291A8, &type metadata for BankConnectAuthorizationSession.Consent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994378);
  }

  return result;
}

unint64_t sub_1B7414138()
{
  result = qword_1EB994380;
  if (!qword_1EB994380)
  {
    result = swift_getWitnessTable(aG7_6, &type metadata for BankConnectAuthorizationSession.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994380);
  }

  return result;
}

unint64_t sub_1B7414190()
{
  result = qword_1EB994388;
  if (!qword_1EB994388)
  {
    result = swift_getWitnessTable(aA_16, &type metadata for BankConnectAuthorizationSession.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994388);
  }

  return result;
}

uint64_t sub_1B74141E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65736E6F63 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6972655665646F63 && a2 == 0xEC00000072656966 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B787E440 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64496E617066 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B787C9D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B7414438(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787E460 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787E480 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B74145A0()
{
  result = qword_1EB994390;
  if (!qword_1EB994390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.AuthSource, &type metadata for BankConnectAuthorizationSession.AuthSource, v0, v1);
    atomic_store(result, &qword_1EB994390);
  }

  return result;
}

unint64_t sub_1B74145F4()
{
  result = qword_1EB994398;
  if (!qword_1EB994398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectAuthorizationSession.AuthType, &type metadata for BankConnectAuthorizationSession.AuthType, v0, v1);
    atomic_store(result, &qword_1EB994398);
  }

  return result;
}

void HTTPRequest.makeURL(relativeTo:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v30 - v11;
  v12 = sub_1B77FEB48();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FF4F8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = a3;
  v41 = &v30 - v19;
  v20 = *(a3 + 8);
  v38 = a2;
  v39 = v4;
  v21 = v20(a2, a3);
  v33 = *(v15 + 16);
  v33(v18, a1, v14);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v21 + 40;
    while (v23 < *(v21 + 16))
    {
      ++v23;

      sub_1B77FF408();

      v24 += 16;
      if (v22 == v23)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

LABEL_5:

  v25 = *(v15 + 32);
  v26 = v41;
  v25(v41, v18, v14);
  if (*((*(v40 + 16))(v38) + 16))
  {
    v27 = v34;
    sub_1B77FEB38();

    sub_1B77FEB08();
    v28 = v35;
    v33(v35, v26, v14);
    (*(v15 + 56))(v28, 0, 1, v14);
    v29 = v36;
    sub_1B77FEB18();
    sub_1B726A798(v28);
    if ((*(v15 + 48))(v29, 1, v14) != 1)
    {

      (*(v31 + 8))(v27, v32);
      (*(v15 + 8))(v26, v14);
      v25(v37, v29, v14);
      return;
    }

    goto LABEL_11;
  }

  v25(v37, v26, v14);
}

uint64_t HTTPRequest.makeURLRequest(baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1B77FF4F8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  (*(a3 + 48))(a1, a2, a3);
  sub_1B77FE808();
  sub_1B77FE788();
  (*(a3 + 24))(&v13, a2, a3);
  sub_1B77FE778();
  v10 = (*(a3 + 32))(a2, a3);
  if (v4)
  {
    v11 = sub_1B77FE858();
    return (*(*(v11 - 8) + 8))(a4, v11);
  }

  else
  {
    _sSD10FinanceKitSSRszSSRs_rlEySDyS2SGSayAA15HTTPHeaderFieldVGcfC_0(v10);
    sub_1B77FE7D8();
    (*(a3 + 40))(a2, a3);
    sub_1B77FE848();
    return sub_1B77FE7E8();
  }
}

uint64_t HTTPRequestWrapper.pathComponents.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t HTTPRequestWrapper.queryItems.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t HTTPRequestWrapper.httpMethod.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t HTTPRequestWrapper.makeHTTPHeaderFields()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t HTTPRequestWrapper.makeHTTPBody()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t HTTPRequestWrapper.makeURL(relativeTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1B74154A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = *(type metadata accessor for HTTPRequestWithRequestID(0, a3, a4, v9) + 36);
  v11 = sub_1B77FFA18();
  v12 = *(*(v11 - 8) + 32);

  return v12(a5 + v10, a2, v11);
}

char *sub_1B7415560(uint64_t a1)
{
  v2 = (*(*(a1 + 24) + 32))(*(a1 + 16));
  if (!v1)
  {
    v3 = sub_1B77FF9A8();
    v5 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B723E73C(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B723E73C((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[32 * v7];
    strcpy(v8 + 32, "X-Request-ID");
    v8[45] = 0;
    *(v8 + 23) = -5120;
    *(v8 + 6) = v3;
    *(v8 + 7) = v5;
  }

  return v2;
}

uint64_t sub_1B7415690(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("؎\b", a1);

  return HTTPRequestWrapper.pathComponents.getter(a1, WitnessTable);
}

uint64_t sub_1B74156E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("؎\b", a1);

  return HTTPRequestWrapper.queryItems.getter(a1, WitnessTable);
}

uint64_t sub_1B7415738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("؎\b", a1);

  return HTTPRequestWrapper.httpMethod.getter(a1, WitnessTable);
}

uint64_t sub_1B7415804(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable("؎\b");

  return HTTPRequestWrapper.makeURL(relativeTo:)(a1, a2, WitnessTable);
}

uint64_t HTTPRequest.addingRequestID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_1B77FFA18();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v5, a2);
  (*(v11 + 16))(v14, a1, v10);
  return sub_1B74154A0(v16, v14, a2, a3, a4);
}

uint64_t sub_1B7415A5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422F0, a1);

  return HTTPRequestWrapper.pathComponents.getter(a1, WitnessTable);
}

uint64_t sub_1B7415AB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422F0, a1);

  return HTTPRequestWrapper.queryItems.getter(a1, WitnessTable);
}

uint64_t sub_1B7415B04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422F0, a1);

  return HTTPRequestWrapper.httpMethod.getter(a1, WitnessTable);
}

uint64_t sub_1B7415BB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422F0);

  return HTTPRequestWrapper.makeURL(relativeTo:)(a1, a2, WitnessTable);
}

uint64_t sub_1B7415C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422D4, a1);

  return HTTPRequestWrapper.pathComponents.getter(a1, WitnessTable);
}

uint64_t sub_1B7415C74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422D4, a1);

  return HTTPRequestWrapper.queryItems.getter(a1, WitnessTable);
}

uint64_t sub_1B7415CC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422D4, a1);

  return HTTPRequestWrapper.httpMethod.getter(a1, WitnessTable);
}

uint64_t sub_1B7415D7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422D4);

  return HTTPRequestWrapper.makeURL(relativeTo:)(a1, a2, WitnessTable);
}

uint64_t sub_1B7415DE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422B8, a1);

  return HTTPRequestWrapper.pathComponents.getter(a1, WitnessTable);
}

uint64_t sub_1B7415E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422B8, a1);

  return HTTPRequestWrapper.queryItems.getter(a1, WitnessTable);
}

uint64_t sub_1B7415E8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422B8, a1);

  return HTTPRequestWrapper.httpMethod.getter(a1, WitnessTable);
}

uint64_t sub_1B7415F40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_1B78422B8);

  return HTTPRequestWrapper.makeURL(relativeTo:)(a1, a2, WitnessTable);
}

uint64_t sub_1B7415FB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aIyo, a1);

  return HTTPRequestWrapper.pathComponents.getter(a1, WitnessTable);
}

uint64_t sub_1B741600C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aIyo, a1);

  return HTTPRequestWrapper.queryItems.getter(a1, WitnessTable);
}

uint64_t sub_1B7416060(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aIyo, a1);

  return HTTPRequestWrapper.httpMethod.getter(a1, WitnessTable);
}

uint64_t sub_1B7416114(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aIyo);

  return HTTPRequestWrapper.makeURL(relativeTo:)(a1, a2, WitnessTable);
}

uint64_t sub_1B74162A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78716E8, a1);

  return HTTPRequestWrapper.pathComponents.getter(a1, WitnessTable);
}

uint64_t sub_1B74162F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78716E8, a1);

  return HTTPRequestWrapper.queryItems.getter(a1, WitnessTable);
}

uint64_t sub_1B7416348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78716E8, a1);

  return HTTPRequestWrapper.httpMethod.getter(a1, WitnessTable);
}

uint64_t sub_1B74163FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_1B78716E8);

  return HTTPRequestWrapper.makeURL(relativeTo:)(a1, a2, WitnessTable);
}

uint64_t sub_1B74164A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B7871DC8, a1);

  return HTTPRequestWrapper.pathComponents.getter(a1, WitnessTable);
}

uint64_t sub_1B74164F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B7871DC8, a1);

  return HTTPRequestWrapper.queryItems.getter(a1, WitnessTable);
}

uint64_t sub_1B7416548(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B7871DC8, a1);

  return HTTPRequestWrapper.httpMethod.getter(a1, WitnessTable);
}

uint64_t sub_1B74165FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_1B7871DC8);

  return HTTPRequestWrapper.makeURL(relativeTo:)(a1, a2, WitnessTable);
}

uint64_t sub_1B7416718(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B77FFA18();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B74167A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1B7416A04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1B77FFA18() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t FinanceXPCConnection.execute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7416D5C, 0, 0);
}

{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B74185D8, 0, 0);
}

uint64_t sub_1B7416D5C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v1[1] = *(v0 + 40);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B7416E30;
  v5 = *(v0 + 16);

  return sub_1B76C5C48(v5, dword_1B78293F0);
}

uint64_t sub_1B7416E30()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B741C41C, 0, 0);
}

uint64_t ClientToServiceXPCConnection.__allocating_init(connection:entitlementChecker:)(void *a1, void *a2)
{
  v3 = sub_1B741B97C(a1, a2);

  return v3;
}

id ClientToServiceXPCConnection.connection.getter()
{
  v0 = sub_1B71C2A70();

  return v0;
}

void (*ClientToServiceXPCConnection.exportedObject.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  swift_getAssociatedTypeWitness();
  v6 = sub_1B7801768();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  ClientToServiceXPCConnection.exportedObject.getter(v9);
  return sub_1B7417130;
}

uint64_t ClientToServiceXPCConnection.init(connection:entitlementChecker:)(void *a1, void *a2)
{
  v3 = sub_1B741B91C(a1, a2);

  return v3;
}

void sub_1B741719C(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1B741B97C(a1, a2);

  *a3 = v5;
}

uint64_t sub_1B74171E4@<X0>(uint64_t a2@<X8>)
{
  if ([*(v2 + 16) exportedObject])
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
    sub_1B72051F0(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0, &qword_1B7808CE0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v5 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_1B741731C(uint64_t a1, uint64_t a2)
{
  sub_1B741B9C8(a1, a2);
  swift_getAssociatedTypeWitness();
  v3 = sub_1B7801768();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*sub_1B74173D4(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  swift_getAssociatedTypeWitness();
  v6 = sub_1B7801768();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1B74171D8(v9);
  return sub_1B7417524;
}

void sub_1B7417530(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    sub_1B741B9C8(v5, a3);
    v9 = *(v8 + 8);
    v9(v5, v7);
    v9(v6, v7);
  }

  else
  {
    sub_1B741B9C8(*(*a1 + 32), a3);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t _s10FinanceKit28ClientToServiceXPCConnectionC12entitlementsAA15XPCEntitlementsVyF_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v1);
  [*(v0 + 16) auditToken];
  return (*(v2 + 8))(v4, v5, v6, v7, v1, v2);
}

uint64_t ServiceToClientXPCConnection.__allocating_init(connection:entitlementChecker:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B741BBBC(a1, a2, a3, a4);

  return v5;
}

uint64_t ServiceToClientXPCConnection.init(connection:entitlementChecker:)(void *a1, void *a2)
{
  v3 = sub_1B741BB6C(a1, a2);

  return v3;
}

void sub_1B7417758(SEL *a1, SEL *a2)
{
  v5 = v2[2];
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 88);
  v8 = (*(v7 + 24))(v6, v7);
  [v5 *a1];

  v9 = (*(v7 + 32))(v6, v7);
  [v5 *a2];
}

uint64_t _s10FinanceKit28ClientToServiceXPCConnectionCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1B7417884(void *a1@<X0>, uint64_t *a2@<X8>, void *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = sub_1B741BBBC(a1, a3, a4, a5);

  *a2 = v7;
}

uint64_t FinanceXPCConnection.init(endpoint:entitlementChecker:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
  sub_1B719B06C(a2, v10);
  (*(a4 + 32))(v8, v10, a3, a4);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

void sub_1B741797C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = (*(a2 + 24))(a1);
  [v4 *a3];
}

uint64_t sub_1B74179D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7417A04, 0, 0);
}

uint64_t sub_1B7417A04()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B7416E30;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B741C128, v3, v6);
}

uint64_t sub_1B7417B14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7201BB0;

  return sub_1B74179D8(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_1B7417BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v63 = a3;
  v64 = a4;
  v52 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v49 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v12 = sub_1B7800D18();
  v13 = *(v12 - 8);
  v54 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v62 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v49 - v18;
  v19 = *(a7 + 24);
  v55 = a7;
  v56 = a5;
  v50 = v19(a5, a7);
  v20 = v13;
  v51 = *(v13 + 16);
  v21 = v15;
  v22 = v15;
  v23 = v12;
  v51(v22, a1, v12);
  v24 = *(v20 + 80);
  v25 = v20;
  v53 = v24 | 7;
  v26 = swift_allocObject();
  v27 = v66;
  *(v26 + 2) = a5;
  *(v26 + 3) = v27;
  *(v26 + 4) = a7;
  v28 = *(v25 + 32);
  v58 = v25 + 32;
  v59 = v28;
  v29 = v21;
  v30 = v23;
  v28(&v26[(v24 + 40) & ~v24], v21, v23);
  aBlock[4] = sub_1B741C410;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7418110;
  aBlock[3] = &block_descriptor_76_0;
  v31 = _Block_copy(aBlock);

  v32 = v50;
  v33 = [v50 remoteObjectProxyWithErrorHandler_];
  _Block_release(v31);

  sub_1B7801848();
  swift_unknownObjectRelease();
  v34 = v65;
  v35 = AssociatedTypeWitness;
  swift_dynamicCast();
  v36 = sub_1B7800DF8();
  (*(*(v36 - 8) + 56))(v67, 1, 1, v36);
  v38 = v60;
  v37 = v61;
  (*(v61 + 16))(v60, v34, v35);
  v39 = v29;
  v40 = v30;
  v51(v29, v52, v30);
  v41 = v37;
  v42 = (*(v37 + 80) + 72) & ~*(v37 + 80);
  v43 = (v62 + v42 + v24) & ~v24;
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  v45 = v66;
  *(v44 + 4) = v56;
  *(v44 + 5) = v45;
  v46 = v63;
  v47 = v64;
  *(v44 + 6) = v55;
  *(v44 + 7) = v46;
  *(v44 + 8) = v47;
  (*(v41 + 32))(&v44[v42], v38, v35);
  v59(&v44[v43], v39, v40);

  sub_1B759B5D0(0, 0, v67, &unk_1B7829560, v44);

  return (*(v41 + 8))(v65, v35);
}

void sub_1B7418110(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B7418178(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v15;
  v7[5] = *(v15 - 8);
  v7[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[7] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1B74182EC;

  return v13(v10, a6);
}

uint64_t sub_1B74182EC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B74184F4;
  }

  else
  {
    v2 = sub_1B7418400;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7418400()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v0[6], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  sub_1B7800D18();
  sub_1B7800D08();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B74184F4()
{
  v0[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  sub_1B7800D18();
  sub_1B7800CF8();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B74185D8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v1[1] = *(v0 + 40);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B7416E30;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B741BC10, v1, v5);
}

uint64_t sub_1B74186D4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v41 = a4;
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B7801768();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v13 = sub_1B7800D18();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v35 - v19;
  v20 = (*(a7 + 24))(a5, a7);
  v21 = *(v14 + 16);
  v40 = a1;
  v21(v17, a1, v13);
  v22 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = v37;
  v23[2] = a5;
  v23[3] = v24;
  v23[4] = a7;
  v25 = v23 + v22;
  v26 = AssociatedTypeWitness;
  (*(v14 + 32))(v25, v17, v13);
  v47 = sub_1B741C410;
  v48 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1B7418110;
  v46 = &block_descriptor_68;
  v27 = _Block_copy(&aBlock);

  v28 = [v20 remoteObjectProxyWithErrorHandler_];
  _Block_release(v27);

  v29 = v39;
  sub_1B7801848();
  swift_unknownObjectRelease();
  v30 = swift_dynamicCast();
  v31 = *(v18 + 56);
  if (v30)
  {
    v31(v29, 0, 1, v26);
    v32 = v38;
    (*(v18 + 32))(v38, v29, v26);
    v42(v32, v40);
    return (*(v18 + 8))(v32, v26);
  }

  else
  {
    v31(v29, 1, 1, v26);
    (*(v35 + 8))(v29, v36);
    aBlock = 0;
    v44 = 0xE000000000000000;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000038, 0x80000001B787E5E0);
    v34 = sub_1B7802438();
    MEMORY[0x1B8CA4D30](v34);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t _s10FinanceKit0A13XPCConnectionPAAE7execute9operationqd__y14RemoteProtocolQz_ys6ResultOyqd__s5Error_pGnYuctc_tYaKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7418BA8, 0, 0);
}

uint64_t sub_1B7418BA8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v1[1] = *(v0 + 40);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B7418CA0;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001B787E4A0, sub_1B741BC28, v1, v5);
}

uint64_t sub_1B7418CA0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7418DDC, 0, 0);
}

uint64_t sub_1B7418DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7418E40(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t (*)(), void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a3;
  v49 = a6;
  v47 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B7801768();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v13 = sub_1B7800D18();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v40 - v19;
  v20 = (*(a7 + 24))(a5, a7);
  v21 = *(v14 + 16);
  v44 = a1;
  v21(v17, a1, v13);
  v22 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v45 = a7;
  v46 = a5;
  v24 = v49;
  *(v23 + 2) = a5;
  *(v23 + 3) = v24;
  *(v23 + 4) = a7;
  (*(v14 + 32))(&v23[v22], v17, v13);
  v54 = sub_1B741BFB0;
  v55 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1B7418110;
  v53 = &block_descriptor_56_0;
  v25 = _Block_copy(&aBlock);

  v26 = [v20 remoteObjectProxyWithErrorHandler_];
  _Block_release(v25);

  v27 = v42;
  sub_1B7801848();
  swift_unknownObjectRelease();
  v28 = swift_dynamicCast();
  v29 = *(v18 + 56);
  if (v28)
  {
    v29(v27, 0, 1, AssociatedTypeWitness);
    v30 = v43;
    (*(v18 + 32))(v43, v27, AssociatedTypeWitness);
    v31 = v45;
    v32 = v46;
    v33 = v49;
    v34 = sub_1B74193B8(v44, v46, v49, v45);
    v36 = v35;
    v37 = swift_allocObject();
    v37[2] = v32;
    v37[3] = v33;
    v37[4] = v31;
    v37[5] = v34;
    v37[6] = v36;
    v48(v30, sub_1B741BFB4, v37);

    return (*(v18 + 8))(v30, AssociatedTypeWitness);
  }

  else
  {
    v29(v27, 1, 1, AssociatedTypeWitness);
    (*(v40 + 8))(v27, v41);
    aBlock = 0;
    v51 = 0xE000000000000000;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000038, 0x80000001B787E5E0);
    v39 = sub_1B7802438();
    MEMORY[0x1B8CA4D30](v39);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B741934C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  sub_1B7800D18();
  return sub_1B7800CF8();
}

uint64_t (*sub_1B74193B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v8 = sub_1B7800D18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], v11, v8);
  return sub_1B741BFC4;
}

uint64_t sub_1B7419524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v5 = sub_1B7800D18();
  return sub_1B741958C(a1, v5);
}

uint64_t sub_1B741958C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7802388();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1B7800CF8();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1B7800D08();
  }
}

uint64_t sub_1B74197C8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v6 = sub_1B7802388();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void FinanceXPCConnection.executeSync<A>(block:)(void (*a1)(char *, uint64_t (*)())@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v50 = a4;
  v46 = a2;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v8 = sub_1B7802388();
  v9 = sub_1B7801768();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v37 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1B7801768();
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v37 - v16;
  v45 = v9;
  v17 = swift_allocBox();
  v19 = v18;
  v41 = *(v8 - 8);
  v20 = *(v41 + 56);
  v49 = v8;
  v20(v18, 1, 1, v8);
  v21 = (*(a5 + 24))(a3, a5);
  v22 = swift_allocObject();
  v44 = a3;
  v23 = v50;
  v22[2] = a3;
  v22[3] = v23;
  v22[4] = a5;
  v22[5] = v17;
  v55 = sub_1B741BC40;
  v56 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1B7418110;
  v54 = &block_descriptor_8;
  v24 = _Block_copy(&aBlock);

  v25 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v24);

  sub_1B7801848();
  v26 = v40;
  swift_unknownObjectRelease();
  v27 = swift_dynamicCast();
  v28 = *(v26 + 56);
  if (v27)
  {
    v28(v15, 0, 1, AssociatedTypeWitness);
    v29 = v42;
    v30 = (*(v26 + 32))(v42, v15, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v30);
    v31 = v50;
    *(&v37 - 4) = v44;
    *(&v37 - 3) = v31;
    v35 = a5;
    v36 = v19;
    v47(v29, sub_1B741BC54);
    swift_beginAccess();
    v32 = v48;
    (*(v43 + 16))(v48, v19, v45);
    v33 = v49;
    if ((*(v41 + 48))(v32, 1, v49) != 1)
    {
      sub_1B741A2BC(v33, &v57, v39);
      (*(v26 + 8))(v29, AssociatedTypeWitness);

      return;
    }

    __break(1u);
  }

  v28(v15, 1, 1, AssociatedTypeWitness);
  (*(v37 + 8))(v15, v38);
  aBlock = 0;
  v52 = 0xE000000000000000;
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000037, 0x80000001B787E510);
  v34 = sub_1B7802438();
  MEMORY[0x1B8CA4D30](v34);

  LODWORD(v36) = 0;
  v35 = 193;
  sub_1B7801C88();
  __break(1u);
}

{
  v41 = a6;
  v52 = a4;
  v49 = a2;
  v50 = a1;
  sub_1B7801768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v8 = sub_1B7802388();
  v9 = sub_1B7801768();
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1B7801768();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v39 - v16;
  v46 = v9;
  v17 = swift_allocBox();
  v19 = v18;
  v43 = *(v8 - 8);
  v20 = *(v43 + 56);
  v51 = v8;
  v20(v18, 1, 1, v8);
  v21 = (*(a5 + 24))(a3, a5);
  v22 = swift_allocObject();
  v47 = a3;
  v23 = v52;
  v22[2] = a3;
  v22[3] = v23;
  v22[4] = a5;
  v22[5] = v17;
  v57 = sub_1B741BC60;
  v58 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1B7418110;
  v56 = &block_descriptor_13;
  v24 = _Block_copy(&aBlock);

  v25 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
  v26 = v24;
  v27 = AssociatedTypeWitness;
  v28 = v42;
  _Block_release(v26);

  sub_1B7801848();
  swift_unknownObjectRelease();
  v29 = swift_dynamicCast();
  v30 = *(v28 + 56);
  if (v29)
  {
    v30(v15, 0, 1, v27);
    v31 = v44;
    v32 = (*(v28 + 32))(v44, v15, v27);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v52;
    *(&v39 - 4) = v47;
    *(&v39 - 3) = v33;
    v37 = a5;
    v38 = v19;
    v50(v31, sub_1B741BC6C);
    swift_beginAccess();
    v34 = v48;
    (*(v45 + 16))(v48, v19, v46);
    v35 = v51;
    if ((*(v43 + 48))(v34, 1, v51) != 1)
    {
      sub_1B741A2BC(v35, &v59, v41);
      (*(v28 + 8))(v31, v27);

      return;
    }

    __break(1u);
  }

  v30(v15, 1, 1, v27);
  (*(v39 + 8))(v15, v40);
  aBlock = 0;
  v54 = 0xE000000000000000;
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000037, 0x80000001B787E510);
  v36 = sub_1B7802438();
  MEMORY[0x1B8CA4D30](v36);

  LODWORD(v38) = 0;
  v37 = 215;
  sub_1B7801C88();
  __break(1u);
}

uint64_t sub_1B7419E34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v5 = sub_1B7802388();
  v6 = sub_1B7801768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - v8);
  v10 = swift_projectBox();
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  v11 = a1;
  return (*(v7 + 40))(v10, v9, v6);
}

uint64_t sub_1B7419FAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v8 = sub_1B7801768();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v12 = sub_1B7802388();
  v24 = sub_1B7801768();
  v13 = *(v24 - 8);
  v14 = MEMORY[0x1EEE9AC00](v24);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v16 = a2;
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v16, 0, 1, v12);
    swift_beginAccess();
    v19 = a2;
    return (*(v13 + 40))(a3, v16, v24);
  }

  (*(v9 + 16))(v11, v23, v8);
  v20 = *(a5 - 8);
  result = (*(v20 + 48))(v11, 1, a5);
  if (result != 1)
  {
    (*(v20 + 32))(v18, v11, a5);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v18, 0, 1, v12);
    swift_beginAccess();
    v16 = v18;
    return (*(v13 + 40))(a3, v16, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B741A2BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1B741A38C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = -1;
  v6 = *(a1 + 16);
  v35 = sub_1B741BE38;
  v36 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1B7418110;
  v34 = &block_descriptor_26;
  v7 = _Block_copy(&aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994428, &unk_1B7829548);
  v9 = swift_dynamicCast();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v37;
  MEMORY[0x1EEE9AC00](v9);
  v27 = v5 + 16;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B741BE40;
  *(v11 + 24) = &v26;
  v12 = type metadata accessor for ThumbnailConfiguration.XPC();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___XPCThumbnailConfiguration_value];
  v15 = *(a2 + 41);
  v17 = a2[1];
  v16 = a2[2];
  *v14 = *a2;
  *(v14 + 1) = v17;
  *(v14 + 2) = v16;
  *(v14 + 41) = v15;
  sub_1B720A8E4(a2, &aBlock);
  v30.receiver = v13;
  v30.super_class = v12;
  v18 = objc_msgSendSuper2(&v30, sel_init);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B741BE54;
  *(v19 + 24) = v11;
  v35 = sub_1B741BE90;
  v36 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1B741B468;
  v34 = &block_descriptor_35;
  v20 = _Block_copy(&aBlock);

  [v10 renderThumbnailUsing:v18 completion:v20];

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  v21 = *(v5 + 32);
  if (v21 == 255)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    aBlock = 0;
    v32 = 0xE000000000000000;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000037, 0x80000001B787E510);
    MEMORY[0x1B8CA4D30](0xD00000000000001BLL, 0x80000001B787E560);
    sub_1B720A994(a2);
    v28 = 0;
    v27 = 215;
    result = sub_1B7801C88();
    __break(1u);
    return result;
  }

  v22 = *(v5 + 16);
  v23 = *(v5 + 24);
  if (v21)
  {
    v37 = *(v5 + 16);
    sub_1B741BEB8(v22, v23, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_willThrowTypedImpl();

    swift_unknownObjectRelease();
    return sub_1B720A994(a2);
  }

  else
  {
    sub_1B741BEC4(*(v5 + 16), *(v5 + 24), v21);

    swift_unknownObjectRelease();
    result = sub_1B720A994(a2);
    v25 = v29;
    *v29 = v22;
    v25[1] = v23;
  }

  return result;
}

void sub_1B741ADE4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  v6 = *(a2 + 32);
  *(a2 + 32) = 1;
  v7 = a1;
  sub_1B741BEDC(v4, v5, v6);
}

void sub_1B741AE60(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = *(a2 + 24);
  *(a2 + 24) = 1;
  v6 = a1;
  sub_1B741BF98(v4, v5);
}

uint64_t sub_1B741AED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7801768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v5 = sub_1B7802388();
  v6 = sub_1B7801768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - v8);
  v10 = swift_projectBox();
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  v11 = a1;
  return (*(v7 + 40))(v10, v9, v6);
}

void sub_1B741B05C(uint64_t a1, unint64_t a2, void *a3, uint64_t *a4)
{
  if (a3)
  {
    swift_beginAccess();
    v6 = *a4;
    v7 = a4[1];
    *a4 = a3;
    a4[1] = 0;
    v8 = *(a4 + 16);
    *(a4 + 16) = 1;
    v9 = a3;
    v10 = v6;
    v11 = v7;
    v12 = v8;
  }

  else
  {
    swift_beginAccess();
    v15 = *a4;
    v16 = a4[1];
    *a4 = a1;
    a4[1] = a2;
    v17 = *(a4 + 16);
    *(a4 + 16) = 0;
    sub_1B7228588(a1, a2);
    v10 = v15;
    v11 = v16;
    v12 = v17;
  }

  sub_1B741BEDC(v10, v11, v12);
}

void sub_1B741B124(void *a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    swift_beginAccess();
    v5 = *a3;
    *a3 = a2;
    v6 = *(a3 + 8);
    *(a3 + 8) = 1;
    v7 = a2;
    v8 = v5;
  }

  else
  {
    swift_beginAccess();
    v10 = *a3;
    *a3 = a1;
    v6 = *(a3 + 8);
    *(a3 + 8) = 0;
    v11 = a1;
    v8 = v10;
  }

  sub_1B741BF98(v8, v6);
}

uint64_t sub_1B741B1D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B7801768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v9 = sub_1B7802388();
  v10 = sub_1B7801768();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v16 - v12);
  if (a2)
  {
    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
    swift_beginAccess();
    v14 = a2;
  }

  else
  {
    (*(*(v8 - 8) + 16))(v13, a1, v8);
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
    swift_beginAccess();
  }

  return (*(v11 + 40))(a3, v13, v10);
}

void sub_1B741B3F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B741B468(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = a2;
    v6 = sub_1B77FF5B8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v4(v6, v8, a3);

  return sub_1B72380B8(v6, v8);
}

void *sub_1B741B504(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, unint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  v7 = *(a1 + 16);
  v27 = sub_1B741BF00;
  v28 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1B7418110;
  v26 = &block_descriptor_41;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994428, &unk_1B7829548);
  v10 = swift_dynamicCast();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v22;
  MEMORY[0x1EEE9AC00](v10);
  v20 = v6 + 16;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B741BF08;
  *(v12 + 24) = &v19;
  v13 = sub_1B77FF598();
  a3 = swift_allocObject();
  *(a3 + 16) = sub_1B741BF14;
  *(a3 + 24) = v12;
  v27 = sub_1B741BF4C;
  v28 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1B741B3F0;
  v26 = &block_descriptor_50;
  v14 = _Block_copy(&aBlock);

  [v11 backgroundColorForImageWithData:v13 completion:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  v15 = *(v6 + 24);
  if (v15 == 255)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    aBlock = 0;
    v24 = 0xE000000000000000;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000037, 0x80000001B787E510);
    MEMORY[0x1B8CA4D30](0xD00000000000001BLL, 0x80000001B787E560);
    sub_1B720A388(isEscapingClosureAtFileLocation, a3);
    v21 = 0;
    v20 = 215;
    result = sub_1B7801C88();
    __break(1u);
    return result;
  }

  v16 = *(v6 + 16);
  if (v15)
  {
    v22 = *(v6 + 16);
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_1B741BF74(*(v6 + 16), v15);
  }

  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1B741B91C(void *a1, void *a2)
{
  *(v2 + 16) = a1;
  sub_1B719B06C(a2, v2 + 24);
  v5 = a1;
  sub_1B7417758(&selRef_setRemoteObjectInterface_, &selRef_setExportedInterface_);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v2;
}

uint64_t sub_1B741B9C8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B7801768();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = *(v2 + 16);
  (*(v9 + 16))(&v13 - v6, a1);
  v10 = *(AssociatedTypeWitness - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, AssociatedTypeWitness) != 1)
  {
    v11 = sub_1B78020D8();
    (*(v10 + 8))(v7, AssociatedTypeWitness);
  }

  [v8 setExportedObject_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B741BB6C(void *a1, void *a2)
{
  *(v2 + 16) = a1;
  sub_1B719B06C(a2, v2 + 24);
  v5 = a1;
  sub_1B7417744();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v2;
}

uint64_t sub_1B741BBBC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ServiceToClientXPCConnection(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_1B741BB6C(a1, a2);
}

void sub_1B741BE2C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1B72380B8(a1, a2);
  }
}

uint64_t sub_1B741BE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

id sub_1B741BEB8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1B7228588(a1, a2);
  }
}

id sub_1B741BEC4(id result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B741BEB8(result, a2, a3 & 1);
  }

  return result;
}

void sub_1B741BEDC(void *a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1B741BE2C(a1, a2, a3 & 1);
  }
}

uint64_t sub_1B741BF14(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id sub_1B741BF74(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B741BF8C(result);
  }

  return result;
}

void sub_1B741BF98(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1B741BEF4(a1);
  }
}

uint64_t sub_1B741BFC4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v5 = *(sub_1B7800D18() - 8);
  v6 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1B7419524(a1, v6, v3, v4);
}

uint64_t sub_1B741C07C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v5 = *(sub_1B7800D18() - 8);
  return sub_1B741934C(a1, v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80)), v3, v4);
}

uint64_t objectdestroy_52Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v1 = sub_1B7800D18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B741C208(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v7 = *(sub_1B7800D18() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[7];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B7201BB0;

  return sub_1B7418178(a1, v9, v10, v11, v12, v1 + v5, v1 + v8);
}

unint64_t static ManagedInternalAccount.existingPlaceholderAccount(forPassWithPrimaryAccountID:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = 0xD000000000000021;
  v7 = 0x80000001B787E620;

  v3 = static ManagedInternalAccount.existingAccount(with:in:)(&v5);

  return v3;
}

void sub_1B741C4AC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B77FFA18();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B78000B8();
  __swift_project_value_buffer(v9, qword_1EDAF65B0);

  v10 = sub_1B7800098();
  v11 = sub_1B78011B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v34 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B71A3EF8(a1, a2, &v34);
    _os_log_impl(&dword_1B7198000, v10, v11, "Asked to delete placeholder account for primary account identifier: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  type metadata accessor for ManagedInternalAccount();
  *&v34 = a1;
  *(&v34 + 1) = a2;
  v35 = 0xD000000000000021;
  v36 = 0x80000001B787E620;

  v14 = static ManagedInternalAccount.existingAccount(with:in:)(&v34);

  if (v14)
  {

    v15 = v14;
    v16 = sub_1B7800098();
    v17 = sub_1B78011B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v34 = v32;
      *v18 = 136315394;
      v19 = [v15 publicAccountObject];
      HIDWORD(v31) = v17;
      v20 = v19;
      v21 = [v19 id];

      sub_1B77FF9E8();
      sub_1B729D260();
      v22 = sub_1B7802068();
      v24 = v23;
      (v33[1].isa)(v8, v6);
      v25 = sub_1B71A3EF8(v22, v24, &v34);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1B71A3EF8(a1, a2, &v34);
      _os_log_impl(&dword_1B7198000, v16, BYTE4(v31), "Found, and deleting, placeholder account id: %s for primary account identifier: %s", v18, 0x16u);
      v26 = v32;
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v26, -1, -1);
      MEMORY[0x1B8CA7A40](v18, -1, -1);
    }

    [a3 deleteObject_];
  }

  else
  {

    v33 = sub_1B7800098();
    v28 = sub_1B78011B8();

    if (os_log_type_enabled(v33, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v34 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B71A3EF8(a1, a2, &v34);
      _os_log_impl(&dword_1B7198000, v33, v28, "No placeholder account for primary account identifier: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1B8CA7A40](v30, -1, -1);
      MEMORY[0x1B8CA7A40](v29, -1, -1);
    }

    else
    {
      v27 = v33;
    }
  }
}

char *sub_1B741CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v228 = a4;
  v227 = a3;
  v246 = a2;
  v238 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v236 = v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v234 = v199 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v233 = v199 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v232 = v199 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v231 = v199 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A70, &qword_1B78097D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v239 = v199 - v17;
  v243 = type metadata accessor for InternalAccount(0);
  v18 = MEMORY[0x1EEE9AC00](v243);
  v229 = v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v240 = v199 - v20;
  v223 = type metadata accessor for BankConnectConsent(0);
  v21 = MEMORY[0x1EEE9AC00](v223);
  v224 = v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v225 = v199 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40, &unk_1B7837A80);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v221 = v199 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v237 = v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v235 = v199 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v242 = v199 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v241 = v199 - v33;
  v218 = type metadata accessor for Institution(0);
  v34 = MEMORY[0x1EEE9AC00](v218);
  v220 = (v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v226 = v199 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v244 = v199 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v222 = v199 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v219 = v199 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v230 = v199 - v44;
  v45 = sub_1B77FFA18();
  v245 = *(v45 - 8);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = v199 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = v199 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = v199 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = (v199 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v59 = v199 - v58;
  v60 = type metadata accessor for ManagedInstitution();
  v61 = v250;
  v62 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(0xD000000000000021, 0x80000001B787E620);
  if (v61)
  {
    return v54;
  }

  v212 = v59;
  v210 = v60;
  v211 = v57;
  v216 = v51;
  v215 = 0x80000001B787E620;
  v250 = a5;
  v214 = v54;
  v213 = v48;
  v217 = v45;
  v64 = 0;
  if (v62)
  {
    v230 = v62;
LABEL_5:
    v65 = v244;
    sub_1B77FF998();
    v66 = v245;
    v67 = v217;
    result = v245[6](v65, 1, v217);
    v68 = v216;
    if (result != 1)
    {
      type metadata accessor for ManagedConsent();
      v66[4](v68, v65, v67);
      v54 = sub_1B77FF9A8();
      v70 = v69;
      v71 = v67;
      v72 = v66[1];
      (v72)(v68, v71);
      v73 = static ManagedConsent.existingConsent(withConsentID:in:)(v54, v70);
      if (v64)
      {
      }

      else
      {
        v54 = v73;

        if (v54)
        {
          v244 = v72;
          v248.receiver = swift_getObjCClassFromMetadata();
          v248.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
          v82 = objc_msgSendSuper2(&v248, sel_fetchRequest);
          sub_1B729D790();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1B7807CD0;
          *(v83 + 56) = MEMORY[0x1E69E6158];
          *(v83 + 64) = sub_1B721FF04();
          v84 = v215;
          *(v83 + 32) = 0xD000000000000021;
          *(v83 + 40) = v84;
          v85 = sub_1B78010E8();
          [v82 setPredicate_];

          v86 = sub_1B7801498();
          v209 = 0;
          v92 = v86;

          if (v92 >> 62)
          {
            v93 = sub_1B7801958();
          }

          else
          {
            v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v94 = v240;
          v95 = v243;

          if (v93 == 1)
          {
            v96 = [v230 id];
            v226 = sub_1B7800868();
            v240 = v97;

            v98 = v214;
            sub_1B77FFA08();
            v99 = [v54 id];
            v100 = v213;
            sub_1B77FF9E8();

            v101 = v245[2];
            v102 = v98;
            v103 = v217;
            v101(v94, v102, v217);
            v101(&v94[*(v95 + 24)], v100, v103);
            strcpy(v247, "Placeholder-");
            BYTE5(v247[1]) = 0;
            HIWORD(v247[1]) = -5120;
            v104 = v246;
            swift_bridgeObjectRetain_n();

            v105 = v238;
            MEMORY[0x1B8CA4D30](v238, v104);
            v225 = v247[0];
            v224 = v247[1];
            v247[0] = 0;
            v247[1] = 0xE000000000000000;
            sub_1B7801A78();
            MEMORY[0x1B8CA4D30](0xD000000000000034, 0x80000001B787E6A0);
            MEMORY[0x1B8CA4D30](v105, v104);
            v223 = v247[0];
            v222 = v247[1];
            v106 = sub_1B77FF988();
            v216 = v106;
            v107 = *(v106 - 8);
            v108 = *(v107 + 56);
            v245 = v108;
            v218 = v107 + 56;
            (v108)(v241, 1, 1, v106);
            (v108)(v242, 1, 1, v106);
            (v108)(v235, 1, 1, v106);
            v220 = type metadata accessor for InternalAccountBalance(0);
            v109 = *(v220 - 1);
            v219 = *(v109 + 56);
            v221 = (v109 + 56);
            (v219)(v239, 1, 1, v220);
            v110 = sub_1B77FF4F8();
            v111 = v243;
            v112 = *(*(v110 - 8) + 56);
            v113 = v94;
            v112(v231, 1, 1, v110);
            v112(v232, 1, 1, v110);
            v112(v233, 1, 1, v110);
            v112(v234, 1, 1, v110);
            v112(v236, 1, 1, v110);
            v114 = &v94[v111[23]];
            v112(v114, 1, 1, v110);
            v115 = type metadata accessor for Actions(0);
            v215 = v115[5];
            v112(v114 + v215, 1, 1, v110);
            v212 = v115[6];
            v112(&v212[v114], 1, 1, v110);
            v211 = v115[7];
            v112(v211 + v114, 1, 1, v110);
            v210 = v115[8];
            v112(v114 + v210, 1, 1, v110);
            sub_1B7213740(v231, v114, &unk_1EB994C70, &qword_1B7809800);
            sub_1B7213740(v232, v114 + v215, &unk_1EB994C70, &qword_1B7809800);
            sub_1B7213740(v233, &v212[v114], &unk_1EB994C70, &qword_1B7809800);
            sub_1B7213740(v234, v211 + v114, &unk_1EB994C70, &qword_1B7809800);
            sub_1B7213740(v236, v114 + v210, &unk_1EB994C70, &qword_1B7809800);
            v116 = v216;
            v117 = v245;
            (v245)(v237, 1, 1, v216);
            v208 = (v113 + v111[8]);
            v118 = v111[12];
            v210 = v111[13];
            v211 = (v113 + v118);
            *(v113 + v210) = 4;
            v215 = v111[15];
            (v117)(v113 + v215, 1, 1, v116);
            v212 = v111[16];
            (v117)(&v212[v113], 1, 1, v116);
            v119 = v113 + v111[18];
            *(v119 + 32) = 0;
            *v119 = 0u;
            *(v119 + 16) = 0u;
            v231 = v111[19];
            (v117)(v113 + v231, 1, 1, v116);
            v120 = v113 + v111[20];
            *(v120 + 32) = 0;
            *v120 = 0u;
            *(v120 + 16) = 0u;
            v121 = v113 + v111[21];
            *(v121 + 32) = 0;
            *v121 = 0u;
            *(v121 + 16) = 0u;
            v232 = v111[22];
            (v219)(v113 + v232, 1, 1, v220);
            v234 = v111[26];
            *(v113 + v234) = 2;
            v233 = v111[27];
            *(v113 + v233) = 2;
            v236 = v111[31];
            (v245)(v113 + v236, 1, 1, v116);
            v122 = (v113 + v111[5]);
            v123 = v238;
            v124 = v246;
            *v122 = v238;
            v122[1] = v124;
            v122[2] = v226;
            v122[3] = v240;
            *(v113 + v111[7]) = MEMORY[0x1E69E7CC0];
            v125 = v208;
            *v208 = 0;
            v125[1] = 0;
            *(v113 + v111[9]) = 1;
            v126 = v113 + v111[10];
            *v126 = v123;
            *(v126 + 8) = v124;
            *(v126 + 16) = 4;
            v127 = (v113 + v111[11]);
            v128 = v224;
            *v127 = v225;
            v127[1] = v128;
            v129 = v211;
            v130 = v222;
            *v211 = v223;
            v129[1] = v130;
            *(v113 + v210) = 4;
            *(v113 + v111[14]) = 2;
            sub_1B7213740(v241, v113 + v215, &qword_1EB98EBD0, &unk_1B7809780);
            sub_1B7213740(v242, &v212[v113], &qword_1EB98EBD0, &unk_1B7809780);
            v131 = (v113 + v111[17]);
            v132 = v228;
            *v131 = v227;
            v131[1] = v132;

            *(v119 + 32) = 0;
            *v119 = 0u;
            *(v119 + 16) = 0u;
            sub_1B7213740(v235, v113 + v231, &qword_1EB98EBD0, &unk_1B7809780);

            *(v120 + 32) = 0;
            *v120 = 0u;
            *(v120 + 16) = 0u;

            *(v121 + 32) = 0;
            *v121 = 0u;
            *(v121 + 16) = 0u;
            sub_1B7213740(v239, v113 + v232, &qword_1EB993A70, &qword_1B78097D0);
            *(v113 + v111[24]) = 1;
            *(v113 + v111[25]) = 0;
            v133 = v233;
            *(v113 + v234) = 2;
            *(v113 + v133) = 2;
            *(v113 + v111[28]) = 4;
            v134 = (v113 + v111[29]);
            *v134 = 0x6C6F686563616C50;
            v134[1] = 0xEB00000000726564;
            *(v113 + v111[30]) = 0;
            sub_1B7213740(v237, v113 + v236, &qword_1EB98EBD0, &unk_1B7809780);
            *(v113 + v111[32]) = 0;
            *(v113 + v111[33]) = 0;
            v135 = v217;
            v136 = v244;
            (v244)(v213, v217);
            v136(v214, v135);

            type metadata accessor for ManagedInternalAccount();
            v137 = v229;
            sub_1B741E788(v113, v229, type metadata accessor for InternalAccount);
            v54 = ManagedInternalAccount.__allocating_init(_:consent:context:)(v137, v54, v250);

            sub_1B741E7F0(v113, type metadata accessor for InternalAccount);
          }

          else
          {
            sub_1B741E734();
            swift_allocError();
            *v145 = 2;
            swift_willThrow();
          }
        }

        else
        {
          if (qword_1EDAF65A8 != -1)
          {
            swift_once();
          }

          v87 = sub_1B78000B8();
          __swift_project_value_buffer(v87, qword_1EDAF65B0);
          v88 = sub_1B7800098();
          v89 = sub_1B78011D8();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            *v90 = 0;
            _os_log_impl(&dword_1B7198000, v88, v89, "Unable to add transaction for unconnected pass because the expected consent object does not exist.", v90, 2u);
            MEMORY[0x1B8CA7A40](v90, -1, -1);
          }

          sub_1B741E734();
          v54 = swift_allocError();
          *v91 = 1;
          swift_willThrow();
        }
      }

      return v54;
    }

    __break(1u);
    goto LABEL_35;
  }

  v74 = type metadata accessor for ManagedConsent();
  v249.receiver = swift_getObjCClassFromMetadata();
  v249.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v75 = objc_msgSendSuper2(&v249, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1B7807CD0;
  *(v76 + 56) = MEMORY[0x1E69E6158];
  *(v76 + 64) = sub_1B721FF04();
  v77 = v215;
  *(v76 + 32) = 0xD000000000000021;
  *(v76 + 40) = v77;
  v78 = sub_1B78010E8();
  [v75 setPredicate_];

  v79 = sub_1B7801498();
  v209 = 0;
  if (v79 >> 62)
  {
    v80 = sub_1B7801958();
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v80)
  {
    goto LABEL_11;
  }

  v138 = v230;
  v208 = 0x80000001B787E670;
  sub_1B77FF998();
  v139 = v245;
  v140 = v245[6];
  v141 = v217;
  v207 = (v245 + 6);
  v206 = v140;
  result = v140(v138, 1, v217);
  if (result == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v142 = v139[4];
  v54 = v212;
  v142(v212, v138, v141);
  v143 = v209;
  v144 = static ManagedConsent.existingConsent(withID:in:)();
  v209 = v143;
  if (v143)
  {
    (v139[1])(v54, v141);
    return v54;
  }

  v146 = v144;
  v204 = v142;
  v205 = v139 + 4;
  v149 = v139[1];
  v148 = (v139 + 1);
  v147 = v149;
  (v149)(v54, v141);
  if (v146)
  {

LABEL_11:
    sub_1B741E734();
    v54 = swift_allocError();
    *v81 = 0;
    swift_willThrow();
    return v54;
  }

  v202 = v147;
  v212 = v148;
  v203 = v74;
  v150 = sub_1B77FF988();
  v151 = *(v150 - 8);
  v152 = *(v151 + 56);
  v153 = v151 + 56;
  v154 = v241;
  v152(v241, 1, 1, v150);
  v152(v242, 1, 1, v150);
  v155 = v218;
  v156 = v226;
  v157 = (v226 + *(v218 + 48));
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v230 = refreshed[6];
  v152(v230 + v157, 1, 1, v150);
  v159 = refreshed[7];
  v201 = v150;
  v200 = v152;
  v199[1] = v153;
  v152(v157 + v159, 1, 1, v150);
  v160 = refreshed[9];
  v161 = v157 + refreshed[8];
  v162 = v157 + v160;
  *v157 = 0;
  sub_1B7213740(v154, v230 + v157, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7213740(v242, v157 + v159, &qword_1EB98EBD0, &unk_1B7809780);
  *v161 = 0;
  v161[8] = 1;
  *v162 = 0;
  v162[8] = 1;
  v163 = type metadata accessor for BankConnectTermsAndConditions(0);
  v164 = *(*(v163 - 8) + 56);
  v165 = v221;
  v164(v221, 1, 1, v163);
  v166 = v155[15];
  v164((v156 + v166), 1, 1, v163);
  v167 = v217;
  v168 = v155[18];
  *(v156 + v168) = 0;
  *v156 = 0xD000000000000021;
  *(v156 + 8) = v215;
  *(v156 + 16) = 0x6C6F686563616C50;
  *(v156 + 24) = 0xEB00000000726564;
  *(v156 + 32) = 0;
  *(v156 + 34) = 7;
  *(v156 + 40) = 0;
  *(v156 + 48) = 1;
  *(v156 + 64) = 0;
  *(v156 + 72) = 0;
  *(v156 + 56) = 0;
  *(v156 + v155[13]) = 0;
  *(v156 + v155[14]) = 0;
  sub_1B7213740(v165, v156 + v166, &qword_1EB98FC40, &unk_1B7837A80);
  *(v156 + v155[16]) = 0;
  *(v156 + v155[17]) = 1;

  *(v156 + v168) = 0;
  *(v156 + v155[19]) = 0;
  v169 = v156 + v155[20];
  *v169 = 0;
  *(v169 + 8) = 0;
  *(v156 + v155[21]) = 0;
  *(v156 + v155[22]) = 0;
  *(v156 + v155[23]) = 0;
  v170 = v220;
  sub_1B741E788(v156, v220, type metadata accessor for Institution);
  v171 = v250;
  v172 = sub_1B74FA170(v170, v171);
  v221 = v171;

  v230 = v172;
  v173 = v219;
  sub_1B77FF998();
  v174 = v206;
  result = v206(v173, 1, v167);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v175 = v225;
  v176 = v204;
  v204(v225, v173, v167);
  v177 = v222;
  sub_1B77FF998();
  result = v174(v177, 1, v167);
  v178 = v223;
  v179 = v211;
  if (result != 1)
  {
    v176(v211, v177, v167);
    v222 = sub_1B77FF9A8();
    v220 = v180;
    v181 = v202;
    (v202)(v179, v167);
    sub_1B77FF938();
    sub_1B77FF7F8();
    v182 = v241;
    sub_1B77FF938();
    v183 = v201;
    v184 = v200;
    v200(v182, 0, 1, v201);
    v185 = v214;
    sub_1B77FFA08();
    v219 = sub_1B77FF9A8();
    v218 = v186;
    (v181)(v185, v167);
    sub_1B77FF938();
    v187 = v178[8];
    v184(v175 + v187, 1, 1, v183);
    v188 = (v175 + v178[5]);
    v189 = v220;
    *v188 = v222;
    v188[1] = v189;
    sub_1B7213740(v182, v175 + v187, &qword_1EB98EBD0, &unk_1B7809780);
    *(v175 + v178[9]) = 0;
    v190 = (v175 + v178[10]);
    v191 = v218;
    *v190 = v219;
    v190[1] = v191;
    *(v175 + v178[11]) = 0;
    v192 = v224;
    sub_1B741E788(v175, v224, type metadata accessor for BankConnectConsent);
    v193 = objc_allocWithZone(v203);
    v194 = v221;
    v195 = [v193 initWithContext_];
    v196 = sub_1B77FF9B8();
    [v195 setId_];

    v197 = sub_1B7800838();
    [v195 setConsentID_];

    v198 = v230;
    [v195 setInstitutionObject_];
    _s10FinanceKit14ManagedConsentC6update_4withyAC_AA011BankConnectD0VtFZ_0(v195, v192);

    sub_1B741E7F0(v192, type metadata accessor for BankConnectConsent);
    sub_1B741E7F0(v175, type metadata accessor for BankConnectConsent);
    sub_1B741E7F0(v226, type metadata accessor for Institution);
    v64 = v209;
    goto LABEL_5;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1B741E734()
{
  result = qword_1EB994430;
  if (!qword_1EB994430)
  {
    result = swift_getWitnessTable(byte_1B78295F8, &_s31PlaceholderAccountCreationErrorON, v0, v1);
    atomic_store(result, &qword_1EB994430);
  }

  return result;
}

uint64_t sub_1B741E788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B741E7F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B741E864()
{
  result = qword_1EB994438;
  if (!qword_1EB994438)
  {
    result = swift_getWitnessTable(aY_14, &_s31PlaceholderAccountCreationErrorON, v0, v1);
    atomic_store(result, &qword_1EB994438);
  }

  return result;
}

uint64_t LocalizedString.localizedString.getter(uint64_t a1)
{
  v1 = sub_1B77FFA48();
  v2 = sub_1B741F7D4(v1);

  return v2;
}

void static LocalizedStringTransformer.register()()
{
  if (qword_1EDAFC4F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAFC500;
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(v0) init];
  [v2 setValueTransformer:v3 forName:v1];
}

uint64_t static LocalizedStringTransformer.allowedTopLevelClasses.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8, &unk_1B7816800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  *(v0 + 32) = type metadata accessor for LocalizedString();
  return v0;
}

uint64_t LocalizedString.key.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_key);

  return v1;
}

uint64_t LocalizedString.developmentLocalization.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization);

  return v1;
}

id LocalizedString.__allocating_init(key:localizedStrings:developmentLocalization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] = a3;
  v13 = &v11[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id LocalizedString.init(key:localizedStrings:developmentLocalization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v5[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] = a3;
  v13 = &v5[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_1B741EBC0(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1B723E180(0, *(a1 + 2) + 1, 1, a1);
    }

    v6 = *(a1 + 2);
    v5 = *(a1 + 3);
    if (v6 >= v5 >> 1)
    {
      a1 = sub_1B723E180((v5 > 1), v6 + 1, 1, a1);
    }

    *(a1 + 2) = v6 + 1;
    v7 = &a1[16 * v6];
    *(v7 + 4) = v4;
    *(v7 + 5) = v3;
  }

  else
  {
  }

  v8 = *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_1B7247064(*(v8 + 16), 0);
    v11 = sub_1B7261C10(&v19, (v10 + 4), v9, v8);
    v12 = v19;

    sub_1B71B7B58(v12);
    if (v11 != v9)
    {
      __break(1u);
    }
  }

  v13 = objc_opt_self();
  v14 = sub_1B7800C18();

  v15 = sub_1B7800C18();

  v16 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v15];

  v17 = sub_1B7800C38();
  return v17;
}

Swift::String __swiftcall LocalizedString.localizedString(for:)(Swift::OpaquePointer a1)
{
  v1 = sub_1B741F7D4(a1._rawValue);
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t LocalizedString.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B7303F28(a1, v11);
  if (!v12)
  {
    sub_1B726990C(v11);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_key) == *&v10[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key] && *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8) == *&v10[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
  if (!v3 && (sub_1B78020F8() & 1) == 0 || (v4 = *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings), v5 = *&v10[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings], , LOBYTE(v4) = sub_1B7220360(v4, v5), , (v4 & 1) == 0))
  {

    goto LABEL_19;
  }

  v6 = *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8);
  v7 = *&v10[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8];
  if (!v6)
  {

    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization) != *&v10[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization] || v6 != v7)
    {
      LOBYTE(v7) = sub_1B78020F8();
      goto LABEL_16;
    }

LABEL_24:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

LABEL_16:

  return v7 & 1;
}

uint64_t LocalizedString.hash.getter(uint64_t a1, uint64_t a2)
{
  sub_1B7802378();
  sub_1B7800798();
  sub_1B7223414(v4, *(v2 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings));
  if (*(v2 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802358();
}

id LocalizedString.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B7205540(0, &qword_1EDAF6440, 0x1E696AEC0);
  v6 = sub_1B78014F8();
  if (!v6)
  {

LABEL_10:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = &v2[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
  *v11 = v8;
  v11[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8, &unk_1B7816800);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7808C50;
  *(v12 + 32) = sub_1B7205540(0, &qword_1EB994458, 0x1E695DF20);
  *(v12 + 40) = v5;
  sub_1B7801508();

  if (!v24)
  {

    sub_1B726990C(v23);
LABEL_9:

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460, &qword_1B780CC00);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v2[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] = v22;
  v13 = sub_1B78014F8();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B7800868();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v19 = &v2[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
  *v19 = v15;
  v19[1] = v17;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v21, sel_init);

  return v20;
}

Swift::Void __swiftcall LocalizedString.encode(with:)(NSCoder with)
{
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  sub_1B7222224(*(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings));
  sub_1B7205540(0, &qword_1EDAF6440, 0x1E696AEC0);
  sub_1B741F8B4();
  v5 = sub_1B7800708();

  v6 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8))
  {
    v7 = sub_1B7800838();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id LocalizedString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B741F634()
{
  result = sub_1B7800838();
  qword_1EDAFC500 = result;
  return result;
}

id static NSValueTransformerName.localizedStringTransformerName.getter()
{
  if (qword_1EDAFC4F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAFC500;

  return v1;
}

id LocalizedStringTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B741F7D4(char *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings);
  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_1B741EBC0(a1);
  if (!v4[2] || (v5 = v4[4], v6 = v4[5], , , !*(v3 + 16)))
  {

    goto LABEL_7;
  }

  v7 = sub_1B724548C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = v2 + OBJC_IVAR____TtC10FinanceKit15LocalizedString_key;
    return *v10;
  }

  v10 = *(v3 + 56) + 16 * v7;
  return *v10;
}

unint64_t sub_1B741F8B4()
{
  result = qword_1EB98FCC8;
  if (!qword_1EB98FCC8)
  {
    v3 = sub_1B7205540(255, &qword_1EDAF6440, 0x1E696AEC0);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EB98FCC8);
  }

  return result;
}

uint64_t RawBankConnectData.PaymentInformation.ACH.accountNumber.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.PaymentInformation.ACH.accountNumber.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.PaymentInformation.ACH.routingNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void RawBankConnectData.PaymentInformation.ACH.routingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RawBankConnectData.PaymentInformation.ACH.init(accountNumber:routingNumber:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1B741FAA8()
{
  if (*v0)
  {
    return 0x4E676E6974756F72;
  }

  else
  {
    return 0x4E746E756F636361;
  }
}

void sub_1B741FAE8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E746E756F636361 && a2 == 0xED00007265626D75;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4E676E6974756F72 && a2 == 0xED00007265626D75)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B741FBCC(uint64_t a1)
{
  v2 = sub_1B741FC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B741FC08(uint64_t a1)
{
  v2 = sub_1B741FC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B741FC88()
{
  result = qword_1EB994470;
  if (!qword_1EB994470)
  {
    result = swift_getWitnessTable(asc_1B782A03C, &_s18PaymentInformationV3ACHV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994470);
  }

  return result;
}

uint64_t sub_1B741FD90()
{
  if (*v0)
  {
    return 0x65646F4374726F73;
  }

  else
  {
    return 0x4E746E756F636361;
  }
}

void sub_1B741FDD8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E746E756F636361 && a2 == 0xED00007265626D75;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65646F4374726F73 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B741FEBC(uint64_t a1)
{
  v2 = sub_1B7420114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B741FEF8(uint64_t a1)
{
  v2 = sub_1B7420114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B741FF78(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *(v5 + 16);
  v13[1] = *(v5 + 24);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_1B78023F8();
  v18 = 0;
  v11 = v15;
  sub_1B7801F78();
  if (!v11)
  {
    v17 = 1;
    sub_1B7801F78();
  }

  return (*(v16 + 8))(v9, v7);
}

unint64_t sub_1B7420114()
{
  result = qword_1EB994488;
  if (!qword_1EB994488)
  {
    result = swift_getWitnessTable(byte_1B7829FEC, &_s18PaymentInformationV4SCANV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994488);
  }

  return result;
}

void sub_1B74201AC(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v23 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B78023C8();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v22;
    v13 = v23;
    v25 = 0;
    v14 = sub_1B7801DF8();
    v16 = v15;
    v21 = v14;
    v24 = 1;
    v17 = sub_1B7801DF8();
    v19 = v18;
    (*(v12 + 8))(v11, v9);
    *v13 = v21;
    v13[1] = v16;
    v13[2] = v17;
    v13[3] = v19;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

double RawBankConnectData.PaymentInformation.automatedClearingHouse.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B7420484(v2, v3, v4, v5);
}

__n128 RawBankConnectData.PaymentInformation.automatedClearingHouse.setter(uint64_t a1)
{
  sub_1B74204FC(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

double RawBankConnectData.PaymentInformation.sortCodeAccountNumber.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B7420484(v2, v3, v4, v5);
}

double sub_1B7420484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

__n128 RawBankConnectData.PaymentInformation.sortCodeAccountNumber.setter(uint64_t a1)
{
  sub_1B74204FC(v1[4], v1[5], v1[6], v1[7]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v4;
  return result;
}

double sub_1B74204FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t RawBankConnectData.PaymentInformation.iban.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void RawBankConnectData.PaymentInformation.iban.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

__n128 RawBankConnectData.PaymentInformation.init(automatedClearingHouse:sortCodeAccountNumber:iban:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B74204FC(0, 0, 0, 0);
  v10 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v10;
  sub_1B74204FC(0, 0, 0, 0);
  result = *a2;
  v12 = *(a2 + 16);
  *(a5 + 32) = *a2;
  *(a5 + 48) = v12;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

unint64_t sub_1B7420668()
{
  v1 = 1851875945;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1B74206C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7422BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B74206EC(uint64_t a1)
{
  v2 = sub_1B7422128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7420728(uint64_t a1)
{
  v2 = sub_1B7422128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PaymentInformation.encode(to:)(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994498, &qword_1B78296C0);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = v19 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v22 = v1[5];
  v23 = v9;
  v10 = v1[6];
  v20 = v1[7];
  v21 = v10;
  v11 = v1[8];
  v19[1] = v1[9];
  v19[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7420484(v5, v6, v7, v8);
  sub_1B7422128();
  v12 = v24;
  sub_1B78023F8();
  v27 = v5;
  v28 = v6;
  v13 = v4;
  v29 = v7;
  v30 = v8;
  v31 = 0;
  sub_1B742217C();
  v14 = v25;
  sub_1B7801F38();
  v15 = sub_1B74204FC(v27, v28, v29, v30);
  if (v14)
  {
    return (*(v26 + 8))(v4, v12, v15);
  }

  v17 = v26;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  v31 = 1;
  sub_1B7420484(v23, v22, v21, v20);
  sub_1B74221D0();
  sub_1B7801F38();
  sub_1B74204FC(v27, v28, v29, v30);
  LOBYTE(v27) = 2;
  sub_1B7801EF8();
  return (*(v17 + 8))(v13, v12, v18);
}

uint64_t RawBankConnectData.PaymentInformation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9944B8, &qword_1B78296C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7422128();
  sub_1B78023C8();
  if (v2)
  {
    v30 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = v30;
    v44 = 0;
    v45 = 0;
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_1B7422254();
    sub_1B7801DB8();
    v26 = v36;
    v28 = v37;
    v29 = v38;
    v27 = v39;
    sub_1B74204FC(0, 0, 0, 0);
    LOBYTE(v31) = 1;
    sub_1B74222A8();
    sub_1B7801DB8();
    v10 = v6;
    v25 = a2;
    v11 = v36;
    v12 = v37;
    v13 = v38;
    v30 = v39;
    sub_1B74204FC(0, 0, 0, 0);
    v46 = 2;
    v14 = sub_1B7801D78();
    v15 = v8;
    v17 = v16;
    (*(v10 + 8))(v15, v5);
    v18 = v26;
    *&v31 = v26;
    *(&v31 + 1) = v28;
    v19 = v27;
    *&v32 = v29;
    *(&v32 + 1) = v27;
    v24 = v11;
    *&v33 = v11;
    *(&v33 + 1) = v12;
    v20 = v30;
    *&v34 = v13;
    *(&v34 + 1) = v30;
    *&v35 = v14;
    *(&v35 + 1) = v17;
    v21 = v34;
    v22 = v25;
    v25[2] = v33;
    v22[3] = v21;
    v22[4] = v35;
    v23 = v32;
    *v22 = v31;
    v22[1] = v23;
    sub_1B74222FC(&v31, &v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = v18;
    v37 = v28;
    v38 = v29;
    v39 = v19;
    v40 = v24;
    v41 = v12;
    v42 = v13;
    v43 = v20;
    v44 = v14;
    v45 = v17;
  }

  return sub_1B7422224(&v36);
}

uint64_t RawBankConnectData.PaymentInfoResponse.paymentInformation.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B74222FC(v8, &v7);
}

__n128 RawBankConnectData.PaymentInfoResponse.paymentInformation.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_1B7422334(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 RawBankConnectData.PaymentInfoResponse.init(paymentInformation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t static RawBankConnectData.PaymentInfoResponse.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v27 = a2[2];
  v28 = v7;
  v8 = a2[3];
  v29 = a2[4];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v19 = v23;
  v20 = v4;
  v21 = a1[4];
  v17 = v22[0];
  v18 = v2;
  v14 = v27;
  v15 = v8;
  v16 = a2[4];
  v12 = v26[0];
  v13 = v6;
  sub_1B74222FC(v22, v31);
  sub_1B74222FC(v26, v31);
  v10 = _s10FinanceKit18RawBankConnectDataO18PaymentInformationV2eeoiySbAE_AEtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_1B7422224(v30);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[0] = v17;
  v31[1] = v18;
  sub_1B7422224(v31);
  return v10 & 1;
}