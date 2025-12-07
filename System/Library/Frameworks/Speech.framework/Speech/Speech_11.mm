void sub_1AC6B87D0()
{
  OUTLINED_FUNCTION_104();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  v2 = OUTLINED_FUNCTION_167(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v57 = v3 - v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v12 = OUTLINED_FUNCTION_167(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = v0[1];
  v59 = *v0;
  v20 = v0[2];
  v52 = v0[3];
  v21 = v0[5];
  v56 = v0[4];
  v22 = v0[7];
  v54 = v0[6];
  OUTLINED_FUNCTION_14_5();
  v60 = v23;
  sub_1AC6B8F1C(v0 + v23, v10);
  v24 = type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_96(v10, 1, v24);
  v58 = v19;
  v55 = v21;
  v53 = v22;
  if (v25)
  {

    v30 = v52;

    sub_1AC5C720C(v10, &qword_1EB56CA50, &qword_1AC7AB4F0);
    sub_1AC79F958();
    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    v26 = sub_1AC79F958();
    v51 = v15;
    v27 = v20;
    v28 = v26;
    OUTLINED_FUNCTION_80();
    (*(v29 + 16))(v18, v10, v28);

    v30 = v52;

    sub_1AC6B9754(v10);
    v31 = v18;
    v32 = 0;
    v33 = 1;
    v34 = v28;
    v20 = v27;
    v15 = v51;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_1AC6B8F1C(v0 + v60, v8);
  OUTLINED_FUNCTION_96(v8, 1, v24);
  if (v25)
  {
    sub_1AC5C720C(v8, &qword_1EB56CA50, &qword_1AC7AB4F0);
    sub_1AC79F958();
    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    v35 = v30;
    v36 = *(v24 + 20);
    v37 = sub_1AC79F958();
    OUTLINED_FUNCTION_80();
    v39 = &v8[v36];
    v30 = v35;
    (*(v38 + 16))(v15, v39, v37);
    sub_1AC6B9754(v8);
    v40 = v15;
    v41 = 0;
    v42 = 1;
    v43 = v37;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = v57;
  v45 = v58;
  v46 = v53;
  sub_1AC6B8F1C(v0 + v60, v57);
  OUTLINED_FUNCTION_96(v44, 1, v24);
  v47 = v55;
  if (v25)
  {
    sub_1AC5C720C(v44, &qword_1EB56CA50, &qword_1AC7AB4F0);
    v50 = 0;
    v49 = 0;
  }

  else
  {
    v48 = (v44 + *(v24 + 24));
    v50 = *v48;
    v49 = v48[1];

    sub_1AC6B9754(v44);
  }

  objc_allocWithZone(_SFAnalyzerClientInfo);
  sub_1AC6BAB90(v59, v45, v20, v30, v56, v47, v54, v46, v18, v15, v50, v49);
  OUTLINED_FUNCTION_105();
}

double sub_1AC6B8B98()
{
  v0 = type metadata accessor for ClientInfo(0);
  __swift_allocate_value_buffer(v0, qword_1EB56E830);
  v1 = OUTLINED_FUNCTION_39();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = [objc_opt_self() defaultClientID];
  v5 = sub_1AC79FF68();
  v7 = v6;

  type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *v3 = v5;
  *(v3 + 8) = v7;
  result = 0.0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = xmmword_1AC7AC470;
  *(v3 + 48) = xmmword_1AC7AC470;
  return result;
}

double ClientInfo.init(identifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ClientInfo(0);
  type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = xmmword_1AC7AC470;
  *(a3 + 48) = xmmword_1AC7AC470;
  return result;
}

uint64_t ClientInfo.init(identifier:source:applicationName:inputOrigin:loggingInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = a8;
  OUTLINED_FUNCTION_14_5();

  return sub_1AC6B8D50(a10, a9 + v11);
}

uint64_t sub_1AC6B8D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ClientInfo.init(identifier:applicationName:source:inputOrigin:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_105();
}

void ClientInfo.init(identifier:applicationName:source:inputOrigin:dictationUIInteractionId:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_11();

  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_105();
}

uint64_t ClientInfo.loggingInfo.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_14_5();

  return sub_1AC6B8F1C(v1 + v3, a1);
}

uint64_t sub_1AC6B8F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClientInfo.LoggingInfo.asrID.getter()
{
  sub_1AC79F958();
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_39();

  return v1(v0);
}

uint64_t ClientInfo.LoggingInfo.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClientInfo.LoggingInfo(0) + 20);
  sub_1AC79F958();
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ClientInfo.LoggingInfo.dictationUIInteractionID.getter()
{
  type metadata accessor for ClientInfo.LoggingInfo(0);

  return OUTLINED_FUNCTION_39();
}

uint64_t ClientInfo.LoggingInfo.init(asrID:requestID:dictationUIInteractionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AC79F958();
  OUTLINED_FUNCTION_80();
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = (v12)(a5 + *(v13 + 20), a2, v10);
  v15 = (a5 + *(v13 + 24));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t static ClientInfo.LoggingInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AC79F928() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  if ((sub_1AC79F928() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_1AC7A0D38();
}

uint64_t ClientInfo.LoggingInfo.hash(into:)(uint64_t a1)
{
  sub_1AC79F958();
  OUTLINED_FUNCTION_1_10();
  sub_1AC6B9AFC(v1, v2, MEMORY[0x1E69695B8]);
  sub_1AC79FE58();
  type metadata accessor for ClientInfo.LoggingInfo(0);
  sub_1AC79FE58();

  return sub_1AC7A0048();
}

uint64_t ClientInfo.LoggingInfo.hashValue.getter()
{
  sub_1AC7A0E78();
  sub_1AC79F958();
  OUTLINED_FUNCTION_1_10();
  sub_1AC6B9AFC(v0, v1, MEMORY[0x1E69695B8]);
  sub_1AC79FE58();
  type metadata accessor for ClientInfo.LoggingInfo(0);
  sub_1AC79FE58();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B9380(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  sub_1AC79F958();
  sub_1AC6B9AFC(&qword_1EB56CE18, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1AC79FE58();
  sub_1AC79FE58();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t static ClientInfo.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  OUTLINED_FUNCTION_167(v8);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE20, &qword_1AC7AC480);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = *a1 == *a2 && a1[1] == a2[1];
  if (!v16 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v17 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = a1[4] == a2[4] && v18 == v19;
    if (!v20 && (sub_1AC7A0D38() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = a1[6] == a2[6] && v21 == v22;
    if (!v23 && (sub_1AC7A0D38() & 1) == 0)
    {
      return 0;
    }

LABEL_29:
    v24 = *(type metadata accessor for ClientInfo(0) + 32);
    v25 = *(v12 + 48);
    sub_1AC6B8F1C(a1 + v24, v15);
    sub_1AC6B8F1C(a2 + v24, &v15[v25]);
    OUTLINED_FUNCTION_96(v15, 1, v4);
    if (v16)
    {
      OUTLINED_FUNCTION_96(&v15[v25], 1, v4);
      if (v16)
      {
LABEL_33:
        sub_1AC5C720C(v15, &qword_1EB56CA50, &qword_1AC7AB4F0);
        return 1;
      }
    }

    else
    {
      sub_1AC6B8F1C(v15, v11);
      OUTLINED_FUNCTION_96(&v15[v25], 1, v4);
      if (!v27)
      {
        sub_1AC6B97B0(&v15[v25], v7);
        v30 = sub_1AC79F928();
        if (v30 & 1) != 0 && (sub_1AC79F928())
        {
          v31 = *(v4 + 24);
          v32 = *&v11[v31];
          v33 = *&v11[v31 + 8];
          v34 = &v7[v31];
          v35 = v32 == *v34 && v33 == *(v34 + 1);
          if (v35 || (sub_1AC7A0D38() & 1) != 0)
          {
            sub_1AC6B9754(v7);
            sub_1AC6B9754(v11);
            goto LABEL_33;
          }
        }

        sub_1AC6B9754(v7);
        sub_1AC6B9754(v11);
        v28 = &qword_1EB56CA50;
        v29 = &qword_1AC7AB4F0;
        goto LABEL_47;
      }

      sub_1AC6B9754(v11);
    }

    v28 = &qword_1EB56CE20;
    v29 = &qword_1AC7AC480;
LABEL_47:
    sub_1AC5C720C(v15, v28, v29);
    return 0;
  }

  if (!v22)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_1AC6B9754(uint64_t a1)
{
  v2 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC6B97B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ClientInfo.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  OUTLINED_FUNCTION_167(v6);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1AC7A0048();
  sub_1AC7A0048();
  if (*(v1 + 40))
  {
    sub_1AC7A0E98();
    sub_1AC7A0048();
  }

  else
  {
    sub_1AC7A0E98();
  }

  if (*(v1 + 56))
  {
    sub_1AC7A0E98();
    sub_1AC7A0048();
  }

  else
  {
    sub_1AC7A0E98();
  }

  OUTLINED_FUNCTION_14_5();
  sub_1AC6B8F1C(v1 + v10, v9);
  OUTLINED_FUNCTION_96(v9, 1, v2);
  if (v11)
  {
    return sub_1AC7A0E98();
  }

  sub_1AC6B97B0(v9, v5);
  sub_1AC7A0E98();
  sub_1AC79F958();
  OUTLINED_FUNCTION_1_10();
  sub_1AC6B9AFC(v12, v13, MEMORY[0x1E69695B8]);
  sub_1AC79FE58();
  sub_1AC79FE58();
  sub_1AC7A0048();
  return sub_1AC6B9754(v5);
}

uint64_t ClientInfo.hashValue.getter()
{
  sub_1AC7A0E78();
  ClientInfo.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B9A78(uint64_t a1)
{
  sub_1AC7A0E78();
  ClientInfo.hash(into:)(v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B9AFC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t *initializeBufferWithCopyOfBuffer for ClientInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    v6 = a2[3];
    a1[2] = a2[2];
    a1[3] = v6;
    v7 = a2[5];
    a1[4] = a2[4];
    a1[5] = v7;
    v8 = a2[7];
    v9 = *(a3 + 32);
    v10 = a2 + v9;
    v11 = a1 + v9;
    a1[6] = a2[6];
    a1[7] = v8;
    v12 = type metadata accessor for ClientInfo.LoggingInfo(0);

    if (__swift_getEnumTagSinglePayload(v10, 1, v12))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
      memcpy(v11, v10, *(*(v13 - 8) + 64));
    }

    else
    {
      v15 = sub_1AC79F958();
      v16 = *(*(v15 - 8) + 16);
      v16(v11, v10, v15);
      v16(&v11[*(v12 + 20)], &v10[*(v12 + 20)], v15);
      v17 = *(v12 + 24);
      v18 = &v11[v17];
      v19 = &v10[v17];
      v20 = *(v19 + 1);
      *v18 = *v19;
      *(v18 + 1) = v20;

      __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    }
  }

  return v3;
}

uint64_t destroy for ClientInfo(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 32);
  v5 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (!result)
  {
    v7 = sub_1AC79F958();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v8(v4 + *(v5 + 20), v7);
  }

  return result;
}

void *initializeWithCopy for ClientInfo(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  v7 = a2[7];
  v8 = *(a3 + 32);
  v9 = a2 + v8;
  v10 = a1 + v8;
  a1[6] = a2[6];
  a1[7] = v7;
  v11 = type metadata accessor for ClientInfo.LoggingInfo(0);

  if (__swift_getEnumTagSinglePayload(v9, 1, v11))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v10, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = sub_1AC79F958();
    v14 = *(*(v13 - 8) + 16);
    v14(v10, v9, v13);
    v14(&v10[*(v11 + 20)], &v9[*(v11 + 20)], v13);
    v15 = *(v11 + 24);
    v16 = &v10[v15];
    v17 = &v9[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return a1;
}

void *assignWithCopy for ClientInfo(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  v6 = *(a3 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for ClientInfo.LoggingInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    if (!v11)
    {
      v19 = sub_1AC79F958();
      v20 = *(*(v19 - 8) + 24);
      v20(v7, v8, v19);
      v20(&v7[*(v9 + 20)], &v8[*(v9 + 20)], v19);
      v21 = *(v9 + 24);
      v22 = &v7[v21];
      v23 = &v8[v21];
      *v22 = *v23;
      *(v22 + 1) = *(v23 + 1);

      return a1;
    }

    sub_1AC6B9754(v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v7, v8, *(*(v17 - 8) + 64));
    return a1;
  }

  v12 = sub_1AC79F958();
  v13 = *(*(v12 - 8) + 16);
  v13(v7, v8, v12);
  v13(&v7[*(v9 + 20)], &v8[*(v9 + 20)], v12);
  v14 = *(v9 + 24);
  v15 = &v7[v14];
  v16 = &v8[v14];
  *v15 = *v16;
  *(v15 + 1) = *(v16 + 1);

  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  return a1;
}

_OWORD *initializeWithTake for ClientInfo(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = *(a3 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for ClientInfo.LoggingInfo(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v7, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = sub_1AC79F958();
    v12 = *(*(v11 - 8) + 32);
    v12(v7, v8, v11);
    v12(&v7[*(v9 + 20)], &v8[*(v9 + 20)], v11);
    *&v7[*(v9 + 24)] = *&v8[*(v9 + 24)];
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  }

  return a1;
}

void *assignWithTake for ClientInfo(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = a2[3];
  a1[2] = a2[2];
  a1[3] = v7;

  v8 = a2[5];
  a1[4] = a2[4];
  a1[5] = v8;

  v9 = a2[7];
  a1[6] = a2[6];
  a1[7] = v9;

  v10 = *(a3 + 32);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = type metadata accessor for ClientInfo.LoggingInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v13);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (!EnumTagSinglePayload)
  {
    if (!v15)
    {
      v20 = sub_1AC79F958();
      v21 = *(*(v20 - 8) + 40);
      v21(v11, v12, v20);
      v21(&v11[*(v13 + 20)], &v12[*(v13 + 20)], v20);
      v22 = *(v13 + 24);
      v23 = &v11[v22];
      v24 = &v12[v22];
      v26 = *v24;
      v25 = *(v24 + 1);
      *v23 = v26;
      *(v23 + 1) = v25;

      return a1;
    }

    sub_1AC6B9754(v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v11, v12, *(*(v18 - 8) + 64));
    return a1;
  }

  v16 = sub_1AC79F958();
  v17 = *(*(v16 - 8) + 32);
  v17(v11, v12, v16);
  v17(&v11[*(v13 + 20)], &v12[*(v13 + 20)], v16);
  *&v11[*(v13 + 24)] = *&v12[*(v13 + 24)];
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  return a1;
}

void sub_1AC6BA568(uint64_t a1)
{
  sub_1AC6BA60C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1AC6BA60C(uint64_t a1)
{
  if (!qword_1ED937AA8[0])
  {
    type metadata accessor for ClientInfo.LoggingInfo(255);
    v1 = sub_1AC7A0798();
    if (!v2)
    {
      atomic_store(v1, qword_1ED937AA8);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ClientInfo.LoggingInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F958();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
    v9 = *(a3 + 24);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
  }

  return a1;
}

uint64_t destroy for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F958();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v5(a1 + *(a2 + 20), v4);
}

uint64_t initializeWithCopy for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

uint64_t assignWithCopy for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *v9 = *v10;
  v9[1] = v10[1];

  return a1;
}

uint64_t initializeWithTake for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  *v9 = v12;
  v9[1] = v11;

  return a1;
}

uint64_t sub_1AC6BAAF8(uint64_t a1)
{
  result = sub_1AC79F958();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_1AC6BAB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v16 = sub_1AC79FF58();

  v17 = sub_1AC79FF58();

  if (a6)
  {
    v18 = sub_1AC79FF58();
  }

  else
  {
    v18 = 0;
  }

  if (a8)
  {
    v19 = sub_1AC79FF58();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1AC79F958();
  v21 = 0;
  if (__swift_getEnumTagSinglePayload(a9, 1, v20) != 1)
  {
    v21 = sub_1AC79F918();
    (*(*(v20 - 8) + 8))(a9, v20);
  }

  if (__swift_getEnumTagSinglePayload(a10, 1, v20) != 1)
  {
    v22 = sub_1AC79F918();
    (*(*(v20 - 8) + 8))(a10, v20);
    if (a12)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = 0;
  if (!a12)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_1AC79FF58();

LABEL_14:
  v24 = [v13 initWithID:v16 source:v17 applicationName:v18 inputOrigin:v19 asrID:v21 requestID:v22 dictationUIInteractionID:v23];

  return v24;
}

uint64_t sub_1AC6BADA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SpeechModuleResult.isFinal.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  (*(a2 + 8))(v5, a1, a2);
  sub_1AC7A0558();

  return sub_1AC7A06B8();
}

uint64_t sub_1AC6BAEB4(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56AF90, type metadata accessor for CommandRecognizer, &protocol conformance descriptor for CommandRecognizer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BAF0C(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56B038, type metadata accessor for EndpointDetector, &protocol conformance descriptor for EndpointDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BAF64(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56CAA8, type metadata accessor for LanguageDetector, &protocol conformance descriptor for LanguageDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BAFBC(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56CB28, type metadata accessor for SpeechDetector, &protocol conformance descriptor for SpeechDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BB014(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56B2A8, type metadata accessor for Transcriber, &protocol conformance descriptor for Transcriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BB06C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of SpeechModule.availableCompatibleAudioFormats.getter()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_10_10(v0, v1);
  OUTLINED_FUNCTION_1_11();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_64_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_12(v3);

  return v6(v5);
}

uint64_t sub_1AC6BB1B8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1AC6BB2BC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1AC6BB32C(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_1AC6BB32C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1AC6BB39C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F918();
  v4 = [v2 initWithNSUUID_];

  sub_1AC79F958();
  OUTLINED_FUNCTION_80();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_1AC6BB430()
{
  v0 = sub_1AC79FDE8();
  __swift_allocate_value_buffer(v0, qword_1EB56CE38);
  __swift_project_value_buffer(v0, qword_1EB56CE38);
  return sub_1AC79FDD8();
}

void SpeechDonation.init(donorBundleID:recordingDate:audioFile:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 *a22, void **a23)
{
  OUTLINED_FUNCTION_104();
  v24 = v23;
  v149 = v25;
  v143 = v26;
  v154 = v28;
  v155 = v27;
  v159 = v29;
  v146 = v30;
  v142 = v31;
  v150 = v32;
  v151 = a21;
  v160[7] = *MEMORY[0x1E69E9840];
  v156 = type metadata accessor for SpeechDonation(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_8();
  v144 = v34;
  OUTLINED_FUNCTION_70_0();
  v158 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v152 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_4();
  v145 = v37;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v129 - v39;
  v157 = sub_1AC79F8E8();
  OUTLINED_FUNCTION_40();
  v153 = v41;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v129 - v46;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v129 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *v24;
  v51 = v24[1];
  v53 = *a22;
  v54 = *a23;
  v147 = v56;
  v148 = v55;
  (*(v56 + 16))(v50, v159);
  v57 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v58 = sub_1AC6C1404(v50, 3, 0);
  v141 = v54;
  v135 = v53;
  v136 = v45;
  v140 = v47;
  v137 = v40;
  v138 = v52;
  v139 = v51;
  v69 = v58;
  v70 = [v58 processingFormat];
  v71 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v70 frameCapacity:960000];
  if (!v71)
  {
    OUTLINED_FUNCTION_32_6();

    v75 = v152;
    if (qword_1EB56B5A0 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EB56B5A0);
    }

    v88 = sub_1AC79FDE8();
    __swift_project_value_buffer(v88, qword_1EB56CE38);
    v89 = sub_1AC79FDC8();
    v90 = sub_1AC7A05F8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_1AC5BC000, v89, v90, "Unable to create buffer for audio file", v91, 2u);
      OUTLINED_FUNCTION_70();
    }

    goto LABEL_7;
  }

  v72 = v71;
  v160[0] = 0;
  v73 = [v69 readIntoBuffer:v71 error:v160];
  v74 = v160[0];
  v75 = v152;
  v76 = v141;
  if ((v73 & 1) == 0)
  {
    v92 = v160[0];

    OUTLINED_FUNCTION_32_6();

    v93 = sub_1AC79F748();
    swift_willThrow();

    if (qword_1EB56B5A0 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EB56B5A0);
    }

    v59 = sub_1AC79FDE8();
    __swift_project_value_buffer(v59, qword_1EB56CE38);
    v60 = v93;
    v61 = sub_1AC79FDC8();
    v62 = sub_1AC7A05F8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_150();
      v64 = OUTLINED_FUNCTION_418();
      *v63 = 138412290;
      v65 = v93;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      _os_log_impl(&dword_1AC5BC000, v61, v62, "Unable to read audio file: %@", v63, 0xCu);
      sub_1AC5C720C(v64, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

LABEL_7:
    (*(v75 + 8))(v154, v158);
    (*(v147 + 8))(v159, v148);
    (*(v153 + 8))(v155, v157);
    v67 = 1;
    v68 = v150;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v68, v67, 1, v156);
    OUTLINED_FUNCTION_105();
    return;
  }

  v131 = v69;
  v77 = *(v153 + 16);
  v77(v140, v155, v157);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7AA7F0;
  *(inited + 32) = v72;
  v79 = *(v75 + 16);
  v134 = v75 + 16;
  v133 = v79;
  v79(v137, v154, v158);
  v80 = inited & 0xC000000000000001;
  sub_1AC61C25C();
  v81 = v72;
  v130 = v81;
  if ((inited & 0xC000000000000001) != 0)
  {
    v127 = v74;
    v128 = OUTLINED_FUNCTION_21_7();
    v82 = MEMORY[0x1B26E95B0](v128);
  }

  else
  {
    v82 = v81;
    v83 = v74;
  }

  v84 = v144;
  v85 = [v82 format];

  if (v85)
  {
    v144 = v85;
    v132 = v77;
    if (v80)
    {
      v86 = OUTLINED_FUNCTION_21_7();
      v87 = MEMORY[0x1B26E95B0](v86);
    }

    else
    {
      v94 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v94)
      {
        __break(1u);
        goto LABEL_48;
      }

      v87 = *(inited + 32);
    }

    v95 = v87;
    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    v96 = [v95 format];
    v97 = v144;
    v98 = sub_1AC7A0758();

    if ((v98 & 1) == 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    sub_1AC6BCA98(v97);
    v160[0] = MEMORY[0x1E69E7CC0];
    sub_1AC61C25C();
    v77 = v157;
    if (v80)
    {
      v99 = OUTLINED_FUNCTION_21_7();
      v100 = MEMORY[0x1B26E95B0](v99);
    }

    else
    {
      v100 = *(inited + 32);
    }

    v74 = v100;

    v101 = [v74 format];
    v102 = [v101 channelCount];

    if (v102 && [v74 frameLength] && objc_msgSend(v74, sel_int16ChannelData))
    {
      if ([v74 frameLength] > 0xEA600)
      {
        sub_1AC6BCC8C(v74, 960000);
        MEMORY[0x1B26E8CF0]();
        v94 = *((v160[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v160[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < v94 >> 1)
        {
LABEL_33:
          sub_1AC7A0198();
          v98 = v160[0];

          goto LABEL_35;
        }

LABEL_48:
        OUTLINED_FUNCTION_9(v94);
        sub_1AC7A0178();
        goto LABEL_33;
      }

      v125 = v74;
      MEMORY[0x1B26E8CF0]();
      v126 = *((v160[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v160[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v126 >> 1)
      {
        OUTLINED_FUNCTION_9(v126);
        sub_1AC7A0178();
      }

      sub_1AC7A0198();

      v98 = v160[0];
    }

    else
    {

      v98 = MEMORY[0x1E69E7CC0];
    }

LABEL_35:
    v103 = v136;
    v104 = OUTLINED_FUNCTION_170();
    v105 = v77;
    v106 = v132;
    (v132)(v104);
    v133(v145, v137, v158);
    v107 = sub_1AC61C24C();
    v108 = v151;
    if (v107)
    {
      v109 = v146;
      *v84 = v142;
      *(v84 + 1) = v109;
      v110 = v156;
      v106(&v84[v156[5]], v103, v105);
      *&v84[*(v110 + 24)] = v108;
      *&v84[*(v110 + 28)] = v141;
      OUTLINED_FUNCTION_10_11();
      sub_1AC61C25C();
      if ((v98 & 0xC000000000000001) == 0)
      {
        v111 = *(v98 + 32);
LABEL_38:
        v112 = v111;
        v113 = v130;
        v114 = v144;
        v115 = [v111 format];

        v116 = *(v75 + 8);
        v117 = v158;
        v116(v154, v158);
        (*(v147 + 8))(v159, v148);
        v118 = *(v153 + 8);
        v119 = v157;
        v118(v155, v157);
        v118(v136, v119);
        v116(v137, v117);
        v118(v140, v119);
        v120 = v156;
        *&v84[v156[8]] = v115;
        *&v84[v120[13]] = v98;
        (*(v75 + 32))(&v84[v120[9]], v145, v117);
        v121 = &v84[v120[10]];
        v122 = v149;
        *v121 = v143;
        *(v121 + 1) = v122;
        v84[v120[11]] = v135;
        v123 = &v84[v120[12]];
        v124 = v139;
        *v123 = v138;
        *(v123 + 1) = v124;
        v68 = v150;
        sub_1AC6C1768(v84, v150);
        v67 = 0;
        goto LABEL_8;
      }

LABEL_46:
      v111 = MEMORY[0x1B26E95B0](0, v98);
      goto LABEL_38;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
}

void SpeechDonation.init(donorBundleID:recordingDate:audioBuffers:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t *a23)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v27 = v26;
  v83 = v29;
  v84 = v28;
  v31 = v30;
  v77 = v32;
  v78 = v33;
  v35 = v34;
  v36 = a22;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v85 = v38;
  v86 = v37;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_8();
  v82 = v39;
  OUTLINED_FUNCTION_70_0();
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_40();
  v80 = v41;
  v81 = v40;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_8();
  v79 = v42;
  v43 = *a22;
  v44 = *a23;
  v45 = sub_1AC61C24C();
  if (!v45)
  {
    goto LABEL_41;
  }

  v23 = v45;
  v72 = v44;
  v73 = v43;
  v36 = (v31 & 0xC000000000000001);
  OUTLINED_FUNCTION_10_11();
  sub_1AC61C25C();
  if ((v31 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  for (i = *(v31 + 32); ; i = MEMORY[0x1B26E95B0](v70))
  {
    v47 = i;
    v75 = v35;
    v76 = v27;
    v74 = v25;
    v48 = [i format];

    v87 = v48;
    if (!v48)
    {
      break;
    }

    v25 = 0;
    v71 = a21;
    v27 = &qword_1ED937298;
    v35 = 0x1E69E58C0uLL;
    while (1)
    {
      if (v23 == v25)
      {
        goto LABEL_14;
      }

      if (v36)
      {
        v49 = OUTLINED_FUNCTION_124_0();
        v50 = MEMORY[0x1B26E95B0](v49);
      }

      else
      {
        if (v25 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v50 = *(v31 + 8 * v25 + 32);
      }

      v51 = v50;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      v52 = [v51 format];
      v53 = sub_1AC7A0758();

      ++v25;
      if ((v53 & 1) == 0)
      {
        __break(1u);
LABEL_14:
        sub_1AC6BCA98(v48);
        v27 = 0;
        v54 = MEMORY[0x1E69E7CC0];
        v88 = MEMORY[0x1E69E7CC0];
        v35 = 960000;
        while (1)
        {
          if (v36)
          {
            v55 = MEMORY[0x1B26E95B0](v27, v31);
          }

          else
          {
            if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v55 = *(v31 + 8 * v27 + 32);
          }

          v25 = v55;
          v56 = (v27 + 1);
          if (__OFADD__(v27, 1))
          {
            goto LABEL_38;
          }

          v57 = [v55 format];
          v58 = [v57 channelCount];

          if (v58 && [v25 frameLength] && objc_msgSend(v25, sel_int16ChannelData))
          {
            v59 = [v25 frameLength];
            v60 = v35 - v59;
            if (v35 < v59)
            {

              sub_1AC6BCC8C(v25, v35);
              v31 = v68;
              MEMORY[0x1B26E8CF0]();
              v69 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v69 >> 1)
              {
                OUTLINED_FUNCTION_9(v69);
                sub_1AC7A0178();
              }

              sub_1AC7A0198();
              v54 = v88;

LABEL_30:
              v62 = *(v80 + 16);
              v62(v79, v84, v81);
              (*(v85 + 16))(v82, v83, v86);
              if (sub_1AC61C24C())
              {
                *v75 = v77;
                *(v75 + 1) = v78;
                v31 = type metadata accessor for SpeechDonation(0);
                v62(&v75[*(v31 + 20)], v79, v81);
                *&v75[*(v31 + 24)] = a21;
                *&v75[*(v31 + 28)] = v72;
                OUTLINED_FUNCTION_10_11();
                sub_1AC61C25C();
                if ((v54 & 0xC000000000000001) == 0)
                {
                  v63 = *(v54 + 32);
LABEL_33:
                  v64 = v63;
                  v65 = [v63 format];

                  (*(v85 + 8))(v83, v86);
                  v66 = *(v80 + 8);
                  v66(v84, v81);
                  v66(v79, v81);
                  *&v75[*(v31 + 32)] = v65;
                  *&v75[*(v31 + 52)] = v54;
                  (*(v85 + 32))(&v75[*(v31 + 36)], v82, v86);
                  v67 = &v75[*(v31 + 40)];
                  *v67 = v76;
                  v67[1] = v74;
                  v75[*(v31 + 44)] = v73;
                  OUTLINED_FUNCTION_28_7(&v75[*(v31 + 48)]);
                  OUTLINED_FUNCTION_105();
                  return;
                }
              }

              else
              {
                __break(1u);
              }

              v63 = MEMORY[0x1B26E95B0](0, v54);
              goto LABEL_33;
            }

            v25 = v25;
            MEMORY[0x1B26E8CF0]();
            v61 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v61 >> 1)
            {
              OUTLINED_FUNCTION_9(v61);
              sub_1AC7A0178();
            }

            sub_1AC7A0198();

            v54 = v88;
            v35 = v60;
          }

          else
          {
          }

          ++v27;
          if (v56 == v23)
          {

            goto LABEL_30;
          }
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v70 = OUTLINED_FUNCTION_21_7();
  }

  __break(1u);
}

void SpeechDonation.init(donorBundleID:recordingDate:audioFormat:audioData:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21, uint64_t a22, uint64_t a23, unsigned __int8 *a24, uint64_t *a25)
{
  OUTLINED_FUNCTION_104();
  v74 = v25;
  v79 = v26;
  v28 = v27;
  v81 = v29;
  v31 = v30;
  v33 = v32;
  v72 = v34;
  v73 = v35;
  v37 = v36;
  v38 = a21;
  v80 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v78 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_8();
  v75 = v41;
  OUTLINED_FUNCTION_70_0();
  v42 = sub_1AC79F8E8();
  OUTLINED_FUNCTION_40();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_8();
  v77 = v46;
  v47 = *(a22 + 8);
  v48 = *a24;
  v49 = *a25;
  sub_1AC6BCA98(v31);
  switch(v28 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v81), v81))
      {
        goto LABEL_5;
      }

      __break(1u);
      goto LABEL_22;
    case 2uLL:
      if (__OFSUB__(*(v81 + 24), *(v81 + 16)))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_5:
      OUTLINED_FUNCTION_30_5();
      if (v50 < 0)
      {
        __break(1u);
        goto LABEL_17;
      }

LABEL_6:
      v51 = sub_1AC79F838();
      v47 = v52;
      v76 = v51;
      v53 = MEMORY[0x1B26E8430]();
      if (v53 < -1)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v53 > 0x1FFFFFFFFLL)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v69 = v49;
      v70 = v48;
      v71 = v28;
      v54 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v31 frameCapacity:v53 / 2];
      if (v54)
      {
        v48 = v54;
        v68 = a21;
        v55 = [v54 int16ChannelData];
        v67 = v31;
        if ([v31 channelCount])
        {
          v56 = *v55;
        }

        else
        {
          v56 = 0;
        }

        v31 = v75;
        v57 = [v48 frameCapacity];
        [v48 setFrameLength_];
        sub_1AC6BCB2C(v56, v57, 0, 0, 1, v76, v47);
        v58 = *(v44 + 16);
        v38 = v77;
        v75 = v33;
        v58(v77, v33, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1AC7AA7F0;
        *(v33 + 32) = v48;
        (*(v78 + 16))(v31, v79, v80);
        if (sub_1AC61C24C())
        {
          *v37 = v72;
          *(v37 + 1) = v73;
          v38 = type metadata accessor for SpeechDonation(0);
          v58(&v37[v38[5]], v77, v42);
          *&v37[v38[6]] = a23;
          *&v37[v38[7]] = v69;
          OUTLINED_FUNCTION_10_11();
          sub_1AC61C25C();
          if ((v33 & 0xC000000000000001) == 0)
          {
            v59 = *(v33 + 32);
            v60 = v48;
            v61 = v59;
LABEL_15:
            v62 = v61;
            v63 = [v61 format];

            sub_1AC5C28A8(v76, v47);
            sub_1AC5C28A8(v81, v71);

            (*(v78 + 8))(v79, v80);
            v64 = *(v44 + 8);
            v64(v75, v42);
            v64(v77, v42);
            *&v37[v38[8]] = v63;
            *&v37[v38[13]] = v33;
            (*(v78 + 32))(&v37[v38[9]], v31, v80);
            v65 = &v37[v38[10]];
            *v65 = v74;
            *(v65 + 1) = v68;
            v37[v38[11]] = v70;
            OUTLINED_FUNCTION_28_7(&v37[v38[12]]);
            OUTLINED_FUNCTION_105();
            return;
          }

LABEL_20:
          v66 = v48;
          v61 = MEMORY[0x1B26E95B0](0, v33);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_23:
      __break(1u);
      return;
    default:
      goto LABEL_6;
  }
}

id sub_1AC6BCA98(void *a1)
{
  result = [a1 channelCount];
  if (result != 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [a1 commonFormat];
  if (result != 3)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = [a1 sampleRate];
  if (v3 != 8000.0)
  {
    result = [a1 sampleRate];
    if (v4 != 16000.0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC6BCB2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  v8 = a3;
  v9 = 0;
  switch(a7 >> 62)
  {
    case 1uLL:
      LODWORD(v10) = HIDWORD(a6) - a6;
      if (!__OFSUB__(HIDWORD(a6), a6))
      {
        v10 = v10;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_32;
    case 2uLL:
      v12 = *(a6 + 16);
      v11 = *(a6 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_6;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    case 3uLL:
      return v9;
    default:
      v10 = BYTE6(a7);
LABEL_6:
      if (v10 < 1)
      {
        return 0;
      }

      if (a5)
      {
        if (v7)
        {
          if (v7 == 2)
          {
            v8 = *(a6 + 16);
          }

          else
          {
            v8 = a6;
          }

LABEL_21:
          if (a2 + 0x4000000000000000 < 0)
          {
LABEL_33:
            __break(1u);
          }

          else
          {
            v15 = 2 * a2;
            if (v10 < 2 * a2)
            {
              v15 = v10;
            }

            v14 = v8 + v15;
            if (!__OFADD__(v8, v15))
            {
              if (v14 >= v8)
              {
                goto LABEL_26;
              }

LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          __break(1u);
          goto LABEL_35;
        }

LABEL_19:
        v8 = v7;
        goto LABEL_21;
      }

      if (a3 == a4)
      {
        return 0;
      }

      if (a2 + 0x4000000000000000 < 0)
      {
        goto LABEL_37;
      }

      v7 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v10 = 2 * a2;
      if (v7 >= 2 * a2)
      {
        v7 = 2 * a2;
      }

      v14 = a3 + v7;
      if (__OFADD__(a3, v7))
      {
        goto LABEL_39;
      }

      if (v14 < a3)
      {
        __break(1u);
        goto LABEL_19;
      }

LABEL_26:
      if (v8 == v14)
      {
        return 0;
      }

      if (result)
      {
        result = sub_1AC79F848();
        v9 = v14 - v8;
        if (!__OFSUB__(v14, v8))
        {
          return v9;
        }

        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
      return result;
  }
}

void sub_1AC6BCC8C(void *a1, uint64_t a2)
{
  v4 = [a1 int16ChannelData];
  v5 = [a1 format];
  v6 = [v5 channelCount];

  if (v6)
  {
    v7 = *v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 frameLength];
  v9 = [a1 frameLength];
  v10 = [a1 format];
  v11 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v10 frameCapacity:a2];

  if (v11)
  {
    [v11 setFrameLength_];
    v12 = [v11 int16ChannelData];
    v13 = [v11 format];
    v14 = [v13 channelCount];

    if (v14)
    {
      v15 = *v12;
    }

    else
    {
      v15 = 0;
    }

    if (v9 >= a2)
    {
      a2 = a2;
    }

    else
    {
      a2 = v9;
    }

    sub_1AC6BCE30(0, a2, v7, v8, v15, [v11 frameLength]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC6BCE30(uint64_t result, uint64_t a2, uint64_t a3, int a4, void *__dst, uint64_t a6)
{
  if (__OFADD__(result, a2 - result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = a2 - result;
  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a3)
  {
    return 0;
  }

  if (v7 <= a6)
  {
    v8 = (a3 + 2 * result);
    v9 = a3 + 2 * a2;
    if (v8 != __dst || v9 <= __dst)
    {
      memmove(__dst, v8, 2 * v7);
    }

    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t SpeechDonation.donate()()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v1[4] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6BCF30()
{
  OUTLINED_FUNCTION_85();
  sub_1AC79F958();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1AC6BCFE0;

  return SpeechDonation.donate(withEnrollmentSpeechID:)();
}

uint64_t sub_1AC6BCFE0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*v0 + 32);

  sub_1AC5C720C(v1, &qword_1EB56B8F0, &unk_1AC7A9520);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t SpeechDonation.donate(withEnrollmentSpeechID:)()
{
  OUTLINED_FUNCTION_85();
  v1[67] = v0;
  v1[66] = v2;
  v1[65] = v3;
  v4 = sub_1AC79F698();
  v1[68] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[69] = v5;
  v1[70] = OUTLINED_FUNCTION_126();
  v6 = sub_1AC79F678();
  v1[71] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[72] = v7;
  v1[73] = OUTLINED_FUNCTION_126();
  v8 = sub_1AC79F6A8();
  v1[74] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[75] = v9;
  v1[76] = OUTLINED_FUNCTION_126();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v10 = sub_1AC79F778();
  v1[80] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[81] = v11;
  v1[82] = OUTLINED_FUNCTION_126();
  v12 = sub_1AC79F7F8();
  v1[83] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[84] = v13;
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v14 = sub_1AC79FB68();
  v1[89] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[90] = v15;
  v1[91] = OUTLINED_FUNCTION_126();
  v16 = sub_1AC79F8E8();
  v1[92] = v16;
  OUTLINED_FUNCTION_22(v16);
  v1[93] = v17;
  v1[94] = OUTLINED_FUNCTION_126();
  v18 = sub_1AC79F958();
  v1[95] = v18;
  OUTLINED_FUNCTION_22(v18);
  v1[96] = v19;
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1AC6BD498()
{
  v196 = v0;
  v195 = *MEMORY[0x1E69E9840];
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEAE8]) init];
  v0[101] = v1;
  v192 = v0;
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E69CEAF0]) init];
  v0[102] = v3;
  if (!v3)
  {
LABEL_19:

LABEL_20:
    if (qword_1EB56B5A0 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EB56B5A0);
    }

    v34 = sub_1AC79FDE8();
    __swift_project_value_buffer(v34, qword_1EB56CE38);
    v35 = sub_1AC79FDC8();
    v36 = sub_1AC7A05F8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1AC5BC000, v35, v36, "Failed to create speech donation data structures", v37, 2u);
      OUTLINED_FUNCTION_70();
    }

    v38 = v0[95];

    goto LABEL_25;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69CEAF8]) init];
  v0[103] = v5;
  if (!v5)
  {
LABEL_18:

    v2 = v4;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69CEAE0]) init];
  v0[104] = v7;
  if (!v7)
  {
LABEL_17:

    v2 = v4;
    v4 = v6;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69CEAC0]) init];
  v0[105] = v9;
  if (!v9)
  {
    v10 = v8;
LABEL_16:

    v2 = v4;
    v4 = v6;
    v6 = v10;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69CEAD8]) init];
  v0[106] = v11;
  if (!v11)
  {

    v2 = v4;
    v4 = v6;
    v6 = v8;
    goto LABEL_16;
  }

  v167 = v8;
  v168 = v10;
  v175 = v6;
  v169 = v11;
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[96];
  v15 = v0[95];
  v16 = v0[91];
  v17 = v0[90];
  v186 = v192[89];
  v166 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v192[107] = v166;
  sub_1AC79F948();
  sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
  v19 = *(v14 + 16);
  v18 = v14 + 16;
  v192[108] = v19;
  v192[109] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v165 = v19;
  v19(v13, v12, v15);
  v20 = sub_1AC6BB39C(v13);
  v192[110] = v20;
  sub_1AC79FB48();
  v190 = type metadata accessor for SpeechDonation(0);
  sub_1AC79FB28();
  (*(v17 + 8))(v16, v186);
  sub_1AC79F8A8();
  v22 = floor(v21 * 1000.0);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v22 <= -1.0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v22 >= 1.84467441e19)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    OUTLINED_FUNCTION_0_9(&qword_1EB56B5A0);
LABEL_35:
    v75 = sub_1AC79FDE8();
    __swift_project_value_buffer(v75, qword_1EB56CE38);
    v76 = v13;
    v77 = sub_1AC79FDC8();
    v78 = sub_1AC7A05F8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = OUTLINED_FUNCTION_150();
      v80 = OUTLINED_FUNCTION_418();
      *v79 = 138412290;
      v81 = v13;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v82;
      *v80 = v82;
      _os_log_impl(&dword_1AC5BC000, v77, v78, "Unable to report speech donation: %@", v79, 0xCu);
      sub_1AC5C720C(v80, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    v83 = v192[110];
    v178 = v192[107];
    v84 = v192[106];
    v182 = v77;
    v85 = v192[105];
    v86 = v192[104];
    v87 = v192[103];
    v88 = v192[102];
    v89 = v13;
    v90 = v192[96];
    v38 = v192[95];
    v184 = v192[94];
    v91 = v192[93];
    v180 = v192[92];
    v191 = v192[100];

    (*(v91 + 8))(v184, v180);
    (*(v90 + 8))(v191, v38);
LABEL_25:
    OUTLINED_FUNCTION_65_0();
    v42 = v38;
LABEL_26:
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);

    OUTLINED_FUNCTION_44();

    return v43();
  }

  Locale.languageRegionIdentifier.getter();
  v24 = v23;
  v177 = v25;
  v192[111] = v25;
  v26 = MobileGestalt_get_current_device();
  if (v26)
  {
    v27 = v26;
    v18 = MobileGestalt_copy_buildVersion_obj();

    v28 = MobileGestalt_get_current_device();
    if (v28)
    {
      v29 = v28;
      v30 = v192[67];
      deviceClassNumber = MobileGestalt_get_deviceClassNumber();

      v183 = *(v30 + v190[8]);
      [v183 sampleRate];
      if (v32 == 8000.0)
      {
        v162 = deviceClassNumber;
        v179 = v18;
        v163 = v20;
        v164 = v24;
        v33 = "com.apple.SpeechDonation";
      }

      else
      {
        if (v32 != 16000.0)
        {
          v100 = v192[100];
          v101 = v192[96];
          v102 = v192[95];
          v103 = v192[94];
          v104 = v18;
          v105 = v192[93];
          v106 = v192[92];

          (*(v105 + 8))(v103, v106);
          (*(v101 + 8))(v100, v102);
          OUTLINED_FUNCTION_65_0();
          v42 = v102;
          goto LABEL_26;
        }

        v162 = deviceClassNumber;
        v179 = v18;
        v163 = v20;
        v164 = v24;
        v33 = "Speech/LSRAssetInventory.swift";
      }

      v192[112] = v33;
      v45 = v192[87];
      v46 = v192[84];
      v187 = v192[83];
      v47 = v192[82];
      v48 = v192[81];
      v49 = v192[80];
      v50 = [objc_opt_self() defaultManager];
      v192[113] = v50;
      v51 = [v50 temporaryDirectory];
      sub_1AC79F7A8();

      v192[56] = 0xD000000000000018;
      v192[57] = 0x80000001AC7B78C0;
      v172 = *(v48 + 104);
      v172(v47, *MEMORY[0x1E6968F58], v49);
      sub_1AC649BF0();
      sub_1AC79F7E8();
      v170 = *(v48 + 8);
      v170(v47, v49);
      v52 = *(v46 + 8);
      v192[114] = v52;
      v192[115] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52(v45, v187);
      v53 = v50;
      v54 = sub_1AC79F788();
      v192[62] = 0;
      LODWORD(v50) = [v50 createDirectoryAtURL:v54 withIntermediateDirectories:1 attributes:0 error:v192 + 62];

      v55 = v192[62];
      if (v50)
      {
        v181 = v52;
        v160 = v53;
        v56 = v192[86];
        v161 = v192[85];
        v57 = v192[84];
        v188 = v192[83];
        v58 = v192[82];
        v59 = v192[80];
        v193 = 0x6E6F6974616E6F64;
        v194 = 0xE90000000000002DLL;
        v192[116] = sub_1AC6C2C38(&qword_1EB56CE50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v60 = v55;
        v61 = v192;
        v62 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v62);

        MEMORY[0x1B26E8C40](1630825774, 0xE400000000000000);
        v63 = v194;
        v192[58] = v193;
        v192[59] = v63;
        v172(v58, *MEMORY[0x1E6968F68], v59);
        sub_1AC79F7E8();
        v170(v58, v59);

        (*(v57 + 16))(v161, v56, v188);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AC7AC780;
        *(inited + 32) = sub_1AC79FF68();
        *(inited + 40) = v65;
        *(inited + 72) = MEMORY[0x1E69E7668];
        *(inited + 48) = 1634492771;
        *(inited + 80) = sub_1AC79FF68();
        *(inited + 88) = v66;
        [v183 sampleRate];
        *(inited + 120) = MEMORY[0x1E69E63B0];
        *(inited + 96) = v67;
        *(inited + 128) = sub_1AC79FF68();
        *(inited + 136) = v68;
        *(inited + 168) = MEMORY[0x1E69E6530];
        *(inited + 144) = 1;
        v69 = sub_1AC79FE38();
        v70 = objc_allocWithZone(MEMORY[0x1E6958408]);
        v71 = sub_1AC6C1560(v161, v69, 3, 0);
        v192[117] = v71;
        v185 = v71;
        v173 = v22;
        v92 = *(v192[67] + v190[13]);
        v93 = sub_1AC61C24C();
        v94 = 0;
        v13 = v92 & 0xFFFFFFFFFFFFFF8;
        while (v93 != v94)
        {
          if ((v92 & 0xC000000000000001) != 0)
          {
            v95 = MEMORY[0x1B26E95B0](v94, v92);
          }

          else
          {
            if (v94 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v95 = *(v92 + 8 * v94 + 32);
          }

          v96 = v95;
          if (__OFADD__(v94, 1))
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
            goto LABEL_97;
          }

          v61[63] = 0;
          v97 = [v185 writeFromBuffer:v95 error:v61 + 63];
          v98 = v61[63];
          if (!v97)
          {
            goto LABEL_67;
          }

          v99 = v98;

          ++v94;
          v61 = v192;
        }

        v107 = v61[99];
        v108 = v61[67];
        [v185 close];
        [v2 setSpeechSampleDonation_];
        [v2 setEventMetaData_];
        sub_1AC79F948();
        v109 = sub_1AC6BB39C(v107);
        [v4 setSdId_];

        [v4 setDeviceType_];
        [v4 setSystemBuild_];

        v171 = v163;
        [v175 setDonationID_];
        v61[118] = *v108;
        v61[119] = v108[1];
        v110 = sub_1AC79FF58();
        [v175 setDonorBundleID_];

        [v175 setCaptureDate_];
        v111 = sub_1AC79FF58();
        [v175 setTranscription_];

        v112 = objc_opt_self();
        v113 = sub_1AC79FF58();
        v114 = [v112 convertLanguageCodeToSchemaLocale_];

        [v175 setLocale_];
        v96 = *(v108 + v190[6]);
        v115 = *(v96 + 16);
        v116 = MEMORY[0x1E69E7CC0];
        if (v115)
        {
          v193 = MEMORY[0x1E69E7CC0];
          v176 = v115;
          sub_1AC7A0A88();
          v98 = sub_1AC6C2BF8(v96);
          v119 = v118;
          v120 = 0;
          v189 = v96 + 56;
          v174 = v96 + 64;
          v179 = v96;
          if ((v98 & 0x8000000000000000) == 0)
          {
            while (v98 < 1 << *(v96 + 32))
            {
              v13 = v98 >> 6;
              if ((*(v189 + 8 * (v98 >> 6)) & (1 << v98)) == 0)
              {
                goto LABEL_92;
              }

              if (*(v96 + 36) != v117)
              {
                goto LABEL_93;
              }

              v121 = v117;
              v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
              sub_1AC7A0A68();
              sub_1AC7A0A98();
              sub_1AC7A0AA8();
              sub_1AC7A0A78();
              if (v119)
              {
                __break(1u);
                goto LABEL_102;
              }

              v96 = v179;
              v122 = 1 << *(v179 + 32);
              if (v98 >= v122)
              {
                goto LABEL_94;
              }

              v123 = *(v189 + 8 * v13);
              if ((v123 & (1 << v98)) == 0)
              {
                goto LABEL_95;
              }

              if (*(v179 + 9) != v121)
              {
                goto LABEL_96;
              }

              v124 = v123 & (-2 << (v98 & 0x3F));
              if (v124)
              {
                v122 = __clz(__rbit64(v124)) | v98 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v125 = v13 << 6;
                v126 = (v174 + 8 * v13);
                v127 = v13 + 1;
                while (v127 < (v122 + 63) >> 6)
                {
                  v129 = *v126++;
                  v128 = v129;
                  v125 += 64;
                  ++v127;
                  if (v129)
                  {
                    sub_1AC637E98(v98, v121, 0);
                    v122 = __clz(__rbit64(v128)) + v125;
                    goto LABEL_63;
                  }
                }

                sub_1AC637E98(v98, v121, 0);
LABEL_63:
                v96 = v179;
              }

              if (++v120 == v176)
              {
                v61 = v192;
                v116 = v193;
                goto LABEL_69;
              }

              v119 = 0;
              v117 = *(v96 + 36);
              v98 = v122;
              if (v122 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
LABEL_67:
          v130 = v192[86];
          v131 = v192[83];
          v132 = v98;

          OUTLINED_FUNCTION_34_7();
          v13 = sub_1AC79F748();

          swift_willThrow();
          sub_1AC6BFBFC(v160, v130);

          v181(v130, v131);
          v133 = OUTLINED_FUNCTION_89();
          (v181)(v133);
          goto LABEL_34;
        }

LABEL_69:
        v61[120] = v116;
        if (sub_1AC61C24C())
        {
          sub_1AC6C187C(v116, v175);
        }

        v134 = v61[67];
        if (*(v134 + v190[7]))
        {
          [v175 setAudioCaptureDevice_];
          v134 = v61[67];
        }

        if (*(v134 + v190[11]) != 16)
        {
          LOBYTE(v193) = *(v134 + v190[11]);
          [v175 setAsrTask_];
          v134 = v61[67];
        }

        v135 = *(v134 + v190[12] + 8);
        if (v135 != 2)
        {
          if (v135)
          {
            v136 = 2;
          }

          else
          {
            v136 = 1;
          }

          [v175 setEvaluation_];
          if (v135 >= 2)
          {
            v138 = OUTLINED_FUNCTION_124_0();
            sub_1AC6C1A00(v138, v139);
            OUTLINED_FUNCTION_124_0();
            v137 = sub_1AC79FF58();
            v140 = OUTLINED_FUNCTION_124_0();
            sub_1AC6C1744(v140, v141);
          }

          else
          {
            v137 = 0;
          }

          [v175 setExpected_];
        }

        v142 = v167;
        [v142 setContent_];
        [v142 setSpeechAudioRecord_];

        v143 = sub_1AC79F818();
        v61[121] = v143;
        v61[122] = v144;
        v145 = v61[95];
        v146 = v61[79];
        sub_1AC6C17CC(v143, v144, v168);
        [v169 setInteractionId_];

        [v169 setAudioCreatedTimestampMs_];
        sub_1AC6C1824(v164, v177, v169);
        v147 = sub_1AC79FF58();
        [v169 setCodec_];

        v148 = OUTLINED_FUNCTION_124_0();
        sub_1AC5DC36C(v148, v149);
        if (__swift_getEnumTagSinglePayload(v146, 1, v145) == 1)
        {
          sub_1AC5C720C(v61[79], &qword_1EB56B8F0, &unk_1AC7A9520);
        }

        else
        {
          v150 = v61[99];
          v151 = v61[98];
          v152 = v61[96];
          v153 = v61[95];
          (*(v152 + 32))(v151, v61[79], v153);
          v165(v150, v151, v153);
          v154 = sub_1AC6BB39C(v150);
          [v169 setSpeechId_];

          (*(v152 + 8))(v151, v153);
        }

        v155 = [v2 wrapAsAnyEvent];
        v61[123] = v155;
        if (v155)
        {
          v156 = v155;
          v157 = sub_1AC79FF58();
          v61[124] = v157;
          v61[2] = v61;
          v61[3] = sub_1AC6BEB10;
          v158 = swift_continuation_init();
          v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
          v61[125] = v159;
          v61[47] = v159;
          v61[40] = MEMORY[0x1E69E9820];
          v61[41] = 1107296256;
          v61[42] = sub_1AC6BB2BC;
          v61[43] = &block_descriptor_4;
          v61[44] = v158;
          [v166 reportSiriInstrumentationEvent:v156 forBundleID:v157 completion:v61 + 40];
          v155 = v61 + 2;

          return MEMORY[0x1EEE6DEC8](v155);
        }

        goto LABEL_104;
      }

      v72 = v192[88];
      v73 = v192[83];
      v74 = v55;

      OUTLINED_FUNCTION_34_7();
      v13 = sub_1AC79F748();

      swift_willThrow();
      v52(v72, v73);
LABEL_34:
      if (qword_1EB56B5A0 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_100;
    }
  }

  else
  {
LABEL_102:
    __break(1u);
  }

  __break(1u);
LABEL_104:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v155);
}

uint64_t sub_1AC6BEB10()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1008) = v1;
  if (v1)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC6BEC70()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 832);

  v3 = [v2 wrapAsAnyEvent];
  *(v0 + 1016) = v3;
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = *(v0 + 1000);
  v6 = *(v0 + 856);

  v7 = sub_1AC79FF58();
  *(v0 + 1024) = v7;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1AC6BEE30;
  v8 = swift_continuation_init();
  *(v0 + 440) = v5;
  *(v0 + 384) = MEMORY[0x1E69E9820];
  *(v0 + 392) = 1107296256;
  *(v0 + 400) = sub_1AC6BB2BC;
  *(v0 + 408) = &block_descriptor_4;
  *(v0 + 416) = v8;
  [v6 reportDataUploadEvent:v4 application:v7 completion:v0 + 384];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1AC6BEE30()
{
  OUTLINED_FUNCTION_85();
  *(*v0 + 1032) = *(*v0 + 112);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6BEF64()
{
  v77 = v0;
  v76[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1016);

  if (qword_1EB56B5A0 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EB56B5A0);
  }

  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v4 = *(v0 + 864);
  v5 = *(v0 + 800);
  v6 = *(v0 + 776);
  v7 = *(v0 + 760);
  v8 = *(v0 + 624);
  v9 = *(v0 + 528);
  v10 = sub_1AC79FDE8();
  __swift_project_value_buffer(v10, qword_1EB56CE38);
  v4(v6, v5, v7);
  sub_1AC5DC36C(v9, v8);
  sub_1AC5CFBB8(v3, v2);
  v11 = sub_1AC79FDC8();
  v12 = sub_1AC7A0618();
  sub_1AC5C28A8(v3, v2);
  if (os_log_type_enabled(v11, v12))
  {
    v72 = v12;
    log = v11;
    v13 = *(v0 + 776);
    v14 = *(v0 + 768);
    v15 = *(v0 + 760);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    v18 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v18 = 136446722;
    sub_1AC7A0CC8();
    v19 = *(v14 + 8);
    v19(v13, v15);
    v20 = OUTLINED_FUNCTION_170();
    v23 = sub_1AC5CFE74(v20, v21, v22);

    *(v18 + 4) = v23;
    v67 = v18;
    *(v18 + 12) = 2082;
    sub_1AC5DC36C(v16, v17);
    v75 = v19;
    if (__swift_getEnumTagSinglePayload(v17, 1, v15) == 1)
    {
      sub_1AC5C720C(*(v0 + 616), &qword_1EB56B8F0, &unk_1AC7A9520);
    }

    else
    {
      v30 = *(v0 + 760);
      v31 = *(v0 + 616);
      sub_1AC79F908();
      v19(v31, v30);
    }

    v32 = *(v0 + 976);
    v33 = *(v0 + 968);
    v69 = *(v0 + 936);
    v65 = *(v0 + 600);
    v34 = *(v0 + 584);
    v35 = *(v0 + 576);
    v56 = *(v0 + 568);
    v58 = *(v0 + 608);
    v36 = *(v0 + 560);
    v37 = *(v0 + 552);
    v60 = *(v0 + 544);
    v62 = *(v0 + 592);
    sub_1AC5C720C(*(v0 + 624), &qword_1EB56B8F0, &unk_1AC7A9520);
    v38 = OUTLINED_FUNCTION_170();
    v41 = sub_1AC5CFE74(v38, v39, v40);

    *(v67 + 14) = v41;
    *(v67 + 22) = 2080;
    *(v0 + 512) = MEMORY[0x1B26E8430](v33, v32);
    (*(v35 + 104))(v34, *MEMORY[0x1E69689F0], v56);
    sub_1AC79F688();
    sub_1AC79F458();
    (*(v37 + 8))(v36, v60);
    v42 = OUTLINED_FUNCTION_89();
    v43(v42);
    sub_1AC6C1958();
    sub_1AC6C2C38(&qword_1EB56CE68, MEMORY[0x1E6968A00], MEMORY[0x1E69689F8]);
    sub_1AC6C19AC();
    sub_1AC7A0818();
    (*(v65 + 8))(v58, v62);
    v44 = sub_1AC5CFE74(*(v0 + 480), *(v0 + 488), v76);

    *(v67 + 24) = v44;
    _os_log_impl(&dword_1AC5BC000, log, v72, "Reported speech donation with donationID %{public}s, speechID %{public}s (audio size %s)", v67, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
    sub_1AC5C28A8(v33, v32);
  }

  else
  {
    v24 = *(v0 + 776);
    v25 = *(v0 + 768);
    v26 = *(v0 + 760);
    v27 = *(v0 + 624);

    v28 = OUTLINED_FUNCTION_39();
    sub_1AC5C28A8(v28, v29);
    sub_1AC5C720C(v27, &qword_1EB56B8F0, &unk_1AC7A9520);
    v75 = *(v25 + 8);
    v75(v24, v26);
  }

  v73 = *(v0 + 912);
  v45 = *(v0 + 904);
  v46 = *(v0 + 856);
  v57 = *(v0 + 848);
  v59 = *(v0 + 840);
  v61 = *(v0 + 832);
  v64 = *(v0 + 880);
  v66 = *(v0 + 824);
  v63 = *(v0 + 816);
  v47 = *(v0 + 808);
  v48 = *(v0 + 760);
  v71 = *(v0 + 752);
  v49 = *(v0 + 744);
  v68 = *(v0 + 800);
  v70 = *(v0 + 736);
  v50 = *(v0 + 704);
  v51 = *(v0 + 688);
  v52 = *(v0 + 664);
  v53 = *(v0 + 520);
  (*(v0 + 864))(v53);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v48);
  sub_1AC6BFBFC(v45, v51);

  v73(v51, v52);
  v73(v50, v52);
  (*(v49 + 8))(v71, v70);
  v75(v68, v48);
  OUTLINED_FUNCTION_2_13();

  OUTLINED_FUNCTION_44();

  return v54();
}

uint64_t sub_1AC6BF65C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_8(a1);
  v8 = OUTLINED_FUNCTION_39();
  sub_1AC5C28A8(v8, v9);

  sub_1AC6BFBFC(v2, v4);
  (v6)(v4, v5);
  (v6)(v3, v5);
  v10 = *(v1 + 1008);
  if (qword_1EB56B5A0 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EB56B5A0);
  }

  v11 = sub_1AC79FDE8();
  __swift_project_value_buffer(v11, qword_1EB56CE38);
  v12 = v10;
  v13 = sub_1AC79FDC8();
  v14 = sub_1AC7A05F8();

  if (os_log_type_enabled(v13, v14))
  {
    v2 = OUTLINED_FUNCTION_150();
    v3 = OUTLINED_FUNCTION_418();
    *v2 = 138412290;
    v15 = v10;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 1) = v16;
    *v3 = v16;
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v17, v18, "Unable to report speech donation: %@");
    sub_1AC5C720C(v3, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  OUTLINED_FUNCTION_7_9();

  (*(v13 + 8))();
  (*(v6 + 8))(v29, v14);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  v22 = OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_9_11(v22);

  OUTLINED_FUNCTION_44();

  return v23();
}

uint64_t sub_1AC6BF92C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_8(a1);
  v8 = OUTLINED_FUNCTION_39();
  sub_1AC5C28A8(v8, v9);

  sub_1AC6BFBFC(v2, v4);
  (v6)(v4, v5);
  (v6)(v3, v5);
  v10 = *(v1 + 1032);
  if (qword_1EB56B5A0 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EB56B5A0);
  }

  v11 = sub_1AC79FDE8();
  __swift_project_value_buffer(v11, qword_1EB56CE38);
  v12 = v10;
  v13 = sub_1AC79FDC8();
  v14 = sub_1AC7A05F8();

  if (os_log_type_enabled(v13, v14))
  {
    v2 = OUTLINED_FUNCTION_150();
    v3 = OUTLINED_FUNCTION_418();
    *v2 = 138412290;
    v15 = v10;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 1) = v16;
    *v3 = v16;
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v17, v18, "Unable to report speech donation: %@");
    sub_1AC5C720C(v3, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  OUTLINED_FUNCTION_7_9();

  (*(v13 + 8))();
  (*(v6 + 8))(v29, v14);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  v22 = OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_9_11(v22);

  OUTLINED_FUNCTION_44();

  return v23();
}

void sub_1AC6BFBFC(void *a1, uint64_t a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AC79F7F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AC79F788();
  v27[0] = 0;
  v9 = [a1 removeItemAtURL:v8 error:v27];

  v10 = v27[0];
  if (v9 && (v11 = v27[0], v12 = sub_1AC79F788(), v27[0] = 0, v13 = [a1 removeItemAtURL:v12 error:v27], v12, v10 = v27[0], v13))
  {

    v14 = v10;
  }

  else
  {
    v26 = v10;
    v15 = v10;
    v16 = sub_1AC79F748();

    swift_willThrow();
    if (qword_1EB56B5A0 != -1)
    {
      swift_once();
    }

    v17 = sub_1AC79FDE8();
    __swift_project_value_buffer(v17, qword_1EB56CE38);
    (*(v5 + 16))(v7, a2, v4);
    v18 = sub_1AC79FDC8();
    v19 = sub_1AC7A05F8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136315138;
      sub_1AC6C2C38(&qword_1EB56CEA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v22 = sub_1AC7A0CC8();
      v24 = v23;
      (*(v5 + 8))(v7, v4);
      v25 = sub_1AC5CFE74(v22, v24, v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1AC5BC000, v18, v19, "Unable to remove %s after donation", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B26EAB10](v21, -1, -1);
      MEMORY[0x1B26EAB10](v20, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1AC6BFF88(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_1AC7ACAC4[a1 - 1];
  }
}

uint64_t SpeechDonation.recordingDate.getter()
{
  v2 = *(OUTLINED_FUNCTION_26_7() + 20);
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

double SpeechDonation.speechAttributes.getter()
{
  type metadata accessor for SpeechDonation(0);

  return result;
}

id SpeechDonation.audioSource.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_26_7() + 28));
  *v0 = v2;

  return v2;
}

id SpeechDonation.audioFormat.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpeechDonation(0) + 32));

  return v1;
}

uint64_t SpeechDonation.locale.getter()
{
  v2 = *(OUTLINED_FUNCTION_26_7() + 36);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t SpeechDonation.transcription.getter()
{
  type metadata accessor for SpeechDonation(0);

  return OUTLINED_FUNCTION_39();
}

uint64_t SpeechDonation.taskHint.getter()
{
  result = OUTLINED_FUNCTION_26_7();
  *v0 = *(v1 + *(result + 44));
  return result;
}

double SpeechDonation.evaluation.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_26_7() + 48));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_1AC6C1A14(v3, v4);
}

uint64_t sub_1AC6C023C()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t SpeechDonation.SpeechAttribute.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6C0324(uint64_t a1)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6C036C()
{
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_89();
  return sub_1AC7A0758() & 1;
}

uint64_t static SpeechDonation.AudioSource.== infix(_:_:)()
{
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_39();
  return sub_1AC7A0758() & 1;
}

double static SpeechDonation.TranscriptionEvaluation.inaccurate.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC7A7E20;
  return result;
}

double static SpeechDonation.TranscriptionEvaluation.expected(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_1AC6C0440(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_1AC7A0D38();
  }

  return 1;
}

uint64_t sub_1AC6C048C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x1B26E9A40](v3, a2);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B26E9A40](v3, a2);
  }

  MEMORY[0x1B26E9A40](2);

  return sub_1AC7A0048();
}

uint64_t sub_1AC6C050C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_85_1();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1B26E9A40](2);
      sub_1AC7A0048();
      return sub_1AC7A0EC8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B26E9A40](v3);
  return sub_1AC7A0EC8();
}

BOOL static SpeechDonation.TranscriptionEvaluation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 != 1)
  {
    if (v4 >= 2)
    {
      v6 = *a1 == *a2 && v3 == v4;
      if (v6 || (sub_1AC7A0D38() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4 == 1;
}

uint64_t SpeechDonation.TranscriptionEvaluation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1B26E9A40](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B26E9A40](v3);
  }

  MEMORY[0x1B26E9A40](2);

  return sub_1AC7A0048();
}

uint64_t SpeechDonation.TranscriptionEvaluation.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_85_1();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B26E9A40](2);
      sub_1AC7A0048();
      return sub_1AC7A0EC8();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6C0730(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1AC7A0E78();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B26E9A40](2);
      sub_1AC7A0048();
      return sub_1AC7A0EC8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B26E9A40](v3);
  return sub_1AC7A0EC8();
}

void SpeechDonation.init(donorBundleID:recordingDate:audioFormat:audioData:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:donorReferenceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, char a25, uint64_t *a26)
{
  OUTLINED_FUNCTION_104();
  v27 = v26;
  v88 = v29;
  v89 = v28;
  v86 = v31;
  v87 = v30;
  v33 = v32;
  v77 = v34;
  v78 = v35;
  v37 = v36;
  v38 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_4();
  v84 = v42;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_91();
  v91 = v44;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1AC79F8E8();
  OUTLINED_FUNCTION_40();
  v85 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_4();
  v83 = v48;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_91();
  v90 = v50;

  v51 = *a22;
  v76 = *a26;
  if (a25)
  {
    v52 = 16;
  }

  else
  {
    sub_1AC6F4A30(a24, &v92);
    v52 = v92;
  }

  v79 = v33;
  v53 = v33;
  v54 = *(v85 + 16);
  v54(v90, v53, v45);
  v75 = v40;
  v56 = *(v40 + 16);
  v55 = (v40 + 16);
  v80 = v56;
  v56(v91, v88, v38);
  sub_1AC6BCA98(v87);
  switch(v86 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v89), v89))
      {
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_25;
    case 2uLL:
      if (__OFSUB__(*(v89 + 24), *(v89 + 16)))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_8:
      OUTLINED_FUNCTION_30_5();
      if (v57 < 0)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_9:
      v51 = sub_1AC79F838();
      v82 = v58;
      v59 = MEMORY[0x1B26E8430]();
      if (v59 < -1)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v59 > 0x1FFFFFFFFLL)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v74 = v52;
      v81 = v38;
      v60 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v87 frameCapacity:v59 / 2];
      if (v60)
      {
        v38 = v60;
        v73 = v27;
        v61 = [v60 int16ChannelData];
        if ([v87 channelCount])
        {
          v62 = *v61;
        }

        else
        {
          v62 = 0;
        }

        v63 = [v38 frameCapacity];
        [v38 setFrameLength_];
        sub_1AC6BCB2C(v62, v63, 0, 0, 1, v51, v82);
        v54(v83, v90, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1AC7AA7F0;
        *(v27 + 32) = v38;
        v80(v84, v91, v81);
        if (sub_1AC61C24C())
        {
          *v37 = v77;
          *(v37 + 1) = v78;
          v55 = type metadata accessor for SpeechDonation(0);
          v54(v37 + v55[5], v83, v45);
          *(v37 + v55[6]) = a23;
          v80 = v37;
          *(v37 + v55[7]) = v76;
          OUTLINED_FUNCTION_10_11();
          sub_1AC61C25C();
          v37 = v45;
          if ((v27 & 0xC000000000000001) == 0)
          {
            v64 = *(v27 + 32);
            v65 = v38;
            v66 = v64;
LABEL_18:
            v67 = v66;
            v68 = [v66 format];

            sub_1AC5C28A8(v51, v82);
            sub_1AC5C28A8(v89, v86);

            v69 = *(v75 + 8);
            v69(v88, v81);
            v70 = *(v85 + 8);
            v70(v79, v37);
            v70(v83, v37);
            v69(v91, v81);
            v70(v90, v37);
            *(v80 + v55[8]) = v68;
            *(v80 + v55[13]) = v27;
            (*(v75 + 32))(v80 + v55[9], v84, v81);
            v71 = (v80 + v55[10]);
            *v71 = v73;
            v71[1] = a21;
            *(v80 + v55[11]) = v74;
            OUTLINED_FUNCTION_28_7((v80 + v55[12]));
            OUTLINED_FUNCTION_105();
            return;
          }

LABEL_23:
          v72 = v38;
          v66 = MEMORY[0x1B26E95B0](0, v27);
          goto LABEL_18;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_26:
      __break(1u);
      return;
    default:
      goto LABEL_9;
  }
}

void SpeechDonation.init(donorBundleID:recordingDate:audioBuffers:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:donorReferenceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, unint64_t *a24)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v27 = v26;
  v86 = v29;
  v87 = v28;
  v31 = v30;
  v78 = v32;
  v79 = v33;
  v35 = v34;
  v36 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v88 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_4();
  v83 = v39;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_91();
  v90 = v41;
  OUTLINED_FUNCTION_70_0();
  v91 = sub_1AC79F8E8();
  OUTLINED_FUNCTION_40();
  v85 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_4();
  v82 = v44;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_91();
  v89 = v46;

  v47 = *a24;
  if (a23)
  {
    LOBYTE(v48) = 16;
  }

  else
  {
    sub_1AC6F4A30(a22, &v95);
    LOBYTE(v48) = v95;
  }

  v81 = *(v85 + 16);
  v81(v89, v87, v91);
  v84 = v36;
  v80 = *(v88 + 16);
  v80(v90, v86, v36);
  v49 = sub_1AC61C24C();
  if (!v49)
  {
    goto LABEL_44;
  }

  v36 = v49;
  v73 = v47;
  v47 = v31 & 0xC000000000000001;
  OUTLINED_FUNCTION_10_11();
  sub_1AC61C25C();
  if ((v31 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  for (i = *(v31 + 32); ; i = MEMORY[0x1B26E95B0](0, v31))
  {
    v51 = i;
    v74 = v48;
    v77 = v35;
    v75 = v27;
    v76 = v25;
    v52 = [i format];

    v93 = v52;
    if (!v52)
    {
      break;
    }

    v53 = 0;
    v48 = &qword_1ED937298;
    v35 = 0x1E69E58C0uLL;
    while (1)
    {
      if (v36 == v53)
      {
        goto LABEL_17;
      }

      if (v47)
      {
        v54 = MEMORY[0x1B26E95B0](v53, v31);
      }

      else
      {
        if (v53 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v54 = *(v31 + 8 * v53 + 32);
      }

      v25 = v54;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      v55 = OUTLINED_FUNCTION_21_7();
      sub_1AC5CF764(v55, v56, 0x1E69E58C0);
      v57 = [v25 format];
      v58 = sub_1AC7A0758();

      ++v53;
      if ((v58 & 1) == 0)
      {
        __break(1u);
LABEL_17:
        sub_1AC6BCA98(v93);
        v35 = 0;
        v59 = MEMORY[0x1E69E7CC0];
        v94 = MEMORY[0x1E69E7CC0];
        v48 = 960000;
        while (1)
        {
          if (v47)
          {
            v60 = MEMORY[0x1B26E95B0](v35, v31);
          }

          else
          {
            if (v35 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v60 = *(v31 + 8 * v35 + 32);
          }

          v61 = v60;
          v27 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_41;
          }

          v25 = [v60 format];
          v62 = [v25 channelCount];

          if (v62 && [v61 frameLength] && objc_msgSend(v61, sel_int16ChannelData))
          {
            v63 = [v61 frameLength];
            v25 = (v48 - v63);
            if (v48 < v63)
            {

              sub_1AC6BCC8C(v61, v48);
              MEMORY[0x1B26E8CF0]();
              v72 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v72 >> 1)
              {
                OUTLINED_FUNCTION_9(v72);
                sub_1AC7A0178();
              }

              OUTLINED_FUNCTION_124_0();
              sub_1AC7A0198();
              v59 = v94;

LABEL_33:
              v66 = (v88 + 16);
              v81(v82, v89, v91);
              v80(v83, v90, v84);
              if (sub_1AC61C24C())
              {
                *v77 = v78;
                *(v77 + 1) = v79;
                v66 = type metadata accessor for SpeechDonation(0);
                v81(&v77[v66[5]], v82, v91);
                *&v77[v66[6]] = a21;
                *&v77[v66[7]] = v73;
                OUTLINED_FUNCTION_10_11();
                sub_1AC61C25C();
                if ((v59 & 0xC000000000000001) == 0)
                {
                  v67 = *(v59 + 32);
LABEL_36:
                  v68 = v67;
                  v92 = [v67 format];

                  v69 = *(v88 + 8);
                  v69(v86, v84);
                  v70 = *(v85 + 8);
                  v70(v87, v91);
                  v70(v82, v91);
                  v69(v90, v84);
                  v70(v89, v91);
                  *&v77[v66[8]] = v92;
                  *&v77[v66[13]] = v59;
                  (*(v88 + 32))(&v77[v66[9]], v83, v84);
                  v71 = &v77[v66[10]];
                  *v71 = v75;
                  v71[1] = v76;
                  v77[v66[11]] = v74;
                  OUTLINED_FUNCTION_28_7(&v77[v66[12]]);
                  OUTLINED_FUNCTION_105();
                  return;
                }
              }

              else
              {
                __break(1u);
              }

              v67 = MEMORY[0x1B26E95B0](0, v59);
              goto LABEL_36;
            }

            v64 = v61;
            MEMORY[0x1B26E8CF0]();
            v65 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v65 >> 1)
            {
              OUTLINED_FUNCTION_9(v65);
              sub_1AC7A0178();
            }

            sub_1AC7A0198();

            v59 = v94;
            v48 = v25;
          }

          else
          {
          }

          ++v35;
          if (v27 == v36)
          {

            goto LABEL_33;
          }
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  __break(1u);
}

id sub_1AC6C1404(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1AC79F788();
  v17[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1AC79F7F8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1AC79F748();

    swift_willThrow();
    v15 = sub_1AC79F7F8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_1AC6C1560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1AC79F788();
  v10 = sub_1AC79FE18();

  v19[0] = 0;
  v11 = [v5 initForWriting:v9 settings:v10 commonFormat:a3 interleaved:a4 & 1 error:v19];

  v12 = v19[0];
  if (v11)
  {
    v13 = sub_1AC79F7F8();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a1, v13);
  }

  else
  {
    v16 = v19[0];
    sub_1AC79F748();

    swift_willThrow();
    v17 = sub_1AC79F7F8();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  return v11;
}

uint64_t type metadata accessor for SpeechDonation(uint64_t a1)
{
  result = qword_1EB56CE88;
  if (!qword_1EB56CE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC6C1744(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1AC6C1754(a1, a2);
  }

  return a1;
}

uint64_t sub_1AC6C1754(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1AC6C1768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechDonation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AC6C17CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AC79F858();
  [a3 setDataPayload_];
}

void sub_1AC6C1824(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AC79FF58();
  [a3 setLanguage_];
}

void sub_1AC6C187C(uint64_t a1, void *a2)
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC7A0148();
  [a2 setAttributes_];
}

uint64_t sub_1AC6C18F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1AC7A0898();
  }

  else
  {
    return sub_1AC7A0868();
  }
}

unint64_t sub_1AC6C1958()
{
  result = qword_1EB56CE60;
  if (!qword_1EB56CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE60);
  }

  return result;
}

unint64_t sub_1AC6C19AC()
{
  result = qword_1EB56CE70;
  if (!qword_1EB56CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE70);
  }

  return result;
}

double sub_1AC6C1A00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_1AC6C1A14(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1AC6C1A00(a1, a2);
  }

  return result;
}

unint64_t sub_1AC6C1A28()
{
  result = qword_1EB56CE78;
  if (!qword_1EB56CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE78);
  }

  return result;
}

unint64_t sub_1AC6C1A80()
{
  result = qword_1EB56CE80;
  if (!qword_1EB56CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE80);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SpeechDonation(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v29 = *a2;
    *v4 = *a2;
    v4 = (v29 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = sub_1AC79F8E8();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], &a2[v8], v9);
    v11 = a3[7];
    *&v4[a3[6]] = *&a2[a3[6]];
    v12 = *&a2[v11];
    *&v4[v11] = v12;
    v13 = a3[8];
    v14 = a3[9];
    v15 = *&a2[v13];
    *&v4[v13] = v15;
    v16 = sub_1AC79FB18();
    v17 = *(*(v16 - 8) + 16);

    v18 = v12;
    v19 = v15;
    v17(&v4[v14], &a2[v14], v16);
    v20 = a3[10];
    v21 = a3[11];
    v22 = &v4[v20];
    v23 = &a2[v20];
    v24 = *(v23 + 1);
    *v22 = *v23;
    *(v22 + 1) = v24;
    v4[v21] = a2[v21];
    v25 = a3[12];
    v26 = &v4[v25];
    v27 = &a2[v25];
    v28 = *&a2[v25 + 8];

    if (v28 <= 2)
    {
      *v26 = *v27;
    }

    else
    {
      *v26 = *v27;
      *(v26 + 1) = v28;
    }

    *&v4[a3[13]] = *&a2[a3[13]];
  }

  return v4;
}

uint64_t destroy for SpeechDonation(uint64_t a1, int *a2)
{

  v4 = a2[5];
  v5 = sub_1AC79F8E8();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = a2[9];
  v7 = sub_1AC79FB18();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);

  if (*(a1 + a2[12] + 8) >= 3uLL)
  {
  }
}

char *initializeWithCopy for SpeechDonation(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v11 = *&a2[v10];
  *&a1[v10] = v11;
  v12 = a3[8];
  v13 = a3[9];
  v14 = *&a2[v12];
  *&a1[v12] = v14;
  v15 = sub_1AC79FB18();
  v16 = *(*(v15 - 8) + 16);

  v17 = v11;
  v18 = v14;
  v16(&a1[v13], &a2[v13], v15);
  v19 = a3[10];
  v20 = a3[11];
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  a1[v20] = a2[v20];
  v24 = a3[12];
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *&a2[v24 + 8];

  if (v27 <= 2)
  {
    *v25 = *v26;
  }

  else
  {
    *v25 = *v26;
    *(v25 + 1) = v27;
  }

  *&a1[a3[13]] = *&a2[a3[13]];

  return a1;
}

char *assignWithCopy for SpeechDonation(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  *&a1[a3[6]] = *&a2[a3[6]];

  v8 = a3[7];
  v9 = *&a1[v8];
  v10 = *&a2[v8];
  *&a1[v8] = v10;
  v11 = v10;

  v12 = a3[8];
  v13 = *&a2[v12];
  v14 = *&a1[v12];
  *&a1[v12] = v13;
  v15 = v13;

  v16 = a3[9];
  v17 = sub_1AC79FB18();
  (*(*(v17 - 8) + 24))(&a1[v16], &a2[v16], v17);
  v18 = a3[10];
  v19 = &a1[v18];
  v20 = &a2[v18];
  *v19 = *v20;
  *(v19 + 1) = *(v20 + 1);

  a1[a3[11]] = a2[a3[11]];
  v21 = a3[12];
  v22 = &a1[v21];
  v23 = &a2[v21];
  v24 = *&a1[v21 + 8];
  v25 = *&a2[v21 + 8];
  if (v24 == 2)
  {
    if (v25 > 2)
    {
      goto LABEL_10;
    }
  }

  else if (v25 == 2)
  {
    sub_1AC6C2190(v22);
  }

  else if (v24 >= 2)
  {
    if (v25 >= 2)
    {
      *v22 = *v23;
      *(v22 + 1) = *(v23 + 1);

      goto LABEL_7;
    }

    sub_1AC6C213C(v22);
  }

  else if (v25 >= 2)
  {
LABEL_10:
    *v22 = *v23;
    *(v22 + 1) = *(v23 + 1);

    goto LABEL_7;
  }

  *v22 = *v23;
LABEL_7:
  *&a1[a3[13]] = *&a2[a3[13]];

  return a1;
}

char *initializeWithTake for SpeechDonation(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v10 = sub_1AC79FB18();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  v11 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v11] = a2[v11];
  v12 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  *&a1[v12] = *&a2[v12];
  return a1;
}

char *assignWithTake for SpeechDonation(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  *&a1[a3[6]] = *&a2[a3[6]];

  v9 = a3[7];
  v10 = *&a1[v9];
  *&a1[v9] = *&a2[v9];

  v11 = a3[8];
  v12 = *&a1[v11];
  *&a1[v11] = *&a2[v11];

  v13 = a3[9];
  v14 = sub_1AC79FB18();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  v15 = a3[10];
  v16 = &a1[v15];
  v17 = &a2[v15];
  v19 = *v17;
  v18 = *(v17 + 1);
  *v16 = v19;
  *(v16 + 1) = v18;

  v20 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = *&a1[v20 + 8];
  if (v23 != 2)
  {
    v24 = *(v22 + 1);
    if (v24 == 2)
    {
      sub_1AC6C2190(&a1[v20]);
    }

    else if (v23 >= 2)
    {
      if (v24 >= 2)
      {
        *v21 = *v22;
        *(v21 + 1) = v24;

        goto LABEL_8;
      }

      sub_1AC6C213C(&a1[v20]);
    }
  }

  *v21 = *v22;
LABEL_8:
  *&a1[a3[13]] = *&a2[a3[13]];

  return a1;
}

uint64_t sub_1AC6C2488(uint64_t a1)
{
  result = sub_1AC79F8E8();
  if (v2 <= 0x3F)
  {
    result = sub_1AC79FB18();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t destroy for SpeechDonation.TranscriptionEvaluation(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 2)
  {
  }

  return result;
}

void *sub_1AC6C25D4(void *a1, void *a2)
{
  v3 = a2[1];
  if (v3 >= 2)
  {
    *a1 = *a2;
    a1[1] = v3;
  }

  else
  {
    *a1 = *a2;
  }

  return a1;
}

void *assignWithCopy for SpeechDonation.TranscriptionEvaluation(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] >= 2uLL)
  {
    if (v4 >= 2)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

    sub_1AC6C213C(a1);
    goto LABEL_6;
  }

  if (v4 < 2)
  {
LABEL_6:
    *a1 = *a2;
    return a1;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for SpeechDonation.TranscriptionEvaluation(void *a1, void *a2)
{
  if (a1[1] >= 2uLL)
  {
    v4 = a2[1];
    if (v4 >= 2)
    {
      *a1 = *a2;
      a1[1] = v4;

      return a1;
    }

    sub_1AC6C213C(a1);
  }

  *a1 = *a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 16))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 2;
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

uint64_t storeEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t destroy for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t sub_1AC6C27DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = *a2;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v3;
  }

  return a1;
}

void *assignWithCopy for SpeechDonation.TranscriptionEvaluation.EvaluationCase(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithTake for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 8);
  if (v4 < 0xFFFFFFFF)
  {

LABEL_5:
    *a1 = *a2;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1AC6C29E0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeechTranscriber.ModelOptions(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SpeechTranscriber.ModelOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1AC6C2A9C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1AC6C2B4C()
{
  result = qword_1EB56CE98;
  if (!qword_1EB56CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE98);
  }

  return result;
}

unint64_t sub_1AC6C2BA4()
{
  result = qword_1EB56CEA0;
  if (!qword_1EB56CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CEA0);
  }

  return result;
}

uint64_t sub_1AC6C2C38(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_8_8(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return type metadata accessor for SpeechDonation(0);
}

uint64_t OUTLINED_FUNCTION_32_6()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  return sub_1AC6C1744(v2, v3);
}

uint64_t OUTLINED_FUNCTION_34_7()
{
}

void sub_1AC6C2D6C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v4);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_92_3();
  sub_1AC5D1E4C(v6, v7, &qword_1EB56BE70, &qword_1AC7A8270);
  v8 = sub_1AC7A0288();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(v1, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    (*(*(v8 - 8) + 8))(v1, v8);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v10)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
    OUTLINED_FUNCTION_71_3();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1AC7A0018();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
  OUTLINED_FUNCTION_71_3();
  swift_task_create();

  sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_105();
}

void sub_1AC6C2FD0()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v4);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_92_3();
  sub_1AC5D1E4C(v6, v7, &qword_1EB56BE70, &qword_1AC7A8270);
  v8 = sub_1AC7A0288();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(v1, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    (*(*(v8 - 8) + 8))(v1, v8);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v10)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);
    OUTLINED_FUNCTION_71_3();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1AC7A0018();

  OUTLINED_FUNCTION_71_3();
  swift_task_create();

  sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_105();
}

void sub_1AC6C3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v27 = v26;
  v102 = v28;
  v30 = v29;
  v94 = v31;
  v104 = v32;
  v105 = v33;
  v98 = a22;
  v99 = a23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, a21);
  OUTLINED_FUNCTION_40();
  v100 = v35;
  OUTLINED_FUNCTION_31();
  v96 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v97 = &v87 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v39);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v87 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v44 = OUTLINED_FUNCTION_167(v43);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v95 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v87 - v47;
  v101 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40();
  v50 = v49;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v93 = &v87 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v87 - v54;
  v56 = v27;
  v57 = v27;
  v58 = v25;
  sub_1AC5D9374(v57, v25);
  swift_defaultActor_initialize();
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  v59 = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  v60 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange;
  *(v60 + 16) = 0u;
  *(v60 + 32) = 0u;
  *v60 = 0u;
  *(v60 + 48) = 1;
  v61 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime;
  *v61 = 0;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0;
  *(v61 + 24) = 1;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v59;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v59;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  v62 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange;
  *(v62 + 16) = 0u;
  *(v62 + 32) = 0u;
  *v62 = 0u;
  *(v62 + 48) = 1;
  v63 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v63 = 0;
  v63[1] = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v59;
  v64 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v64 = 0;
  *(v64 + 8) = 0;
  v65 = v30;
  sub_1AC5D1E4C(v30, v42, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v66 = type metadata accessor for SpeechAnalyzer.Options(0);
  if (__swift_getEnumTagSinglePayload(v42, 1, v66) == 1)
  {
    sub_1AC5C720C(v42, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v67 = v101;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v101);
    sub_1AC7A0338();
    if (__swift_getEnumTagSinglePayload(v48, 1, v67) != 1)
    {
      sub_1AC5C720C(v48, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    v68 = v101;
    (*(v50 + 16))(v48, v42, v101);
    sub_1AC6CC440(v42, type metadata accessor for SpeechAnalyzer.Options);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v68);
    (*(v50 + 32))(v55, v48, v68);
  }

  v69 = v104;
  sub_1AC6CBCA4(v104, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  sub_1AC6CBCA4(v69, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo);
  v92 = v65;
  sub_1AC5D1E4C(v65, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = v94;

  v70 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v71 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v72 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  v89 = v58;
  v90 = v56;
  *v70 = v56;
  v70[1] = v58;
  sub_1AC5C3958(v71, v72);
  v73 = v102;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v102;

  sub_1AC6877A4(v74, v73);

  v75 = *(v50 + 16);
  v76 = v95;
  v88 = v55;
  v77 = v101;
  v75(v95, v55, v101);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
  v78 = v100;
  v79 = v97;
  (*(v100 + 16))(v97, v105, v103);
  v80 = v93;
  v75(v93, v55, v77);
  v81 = (*(v78 + 80) + 40) & ~*(v78 + 80);
  v82 = (v96 + *(v50 + 80) + v81) & ~*(v50 + 80);
  v83 = swift_allocObject();
  *(v83 + 2) = 0;
  *(v83 + 3) = 0;
  *(v83 + 4) = v23;
  v84 = &v83[v81];
  v85 = v103;
  (*(v78 + 32))(v84, v79, v103);
  (*(v50 + 32))(&v83[v82], v80, v77);

  OUTLINED_FUNCTION_248();
  sub_1AC659DBC();
  sub_1AC5C3958(v90, v89);

  sub_1AC5C720C(v92, &qword_1EB56C7D0, &qword_1AC7ACB40);
  (*(v78 + 8))(v105, v85);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v104, v86);
  (*(v50 + 8))(v88, v77);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6C3900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC6C3924, a4, 0);
}

uint64_t sub_1AC6C3924()
{
  OUTLINED_FUNCTION_85();
  sub_1AC6C3A48();
  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6C39AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC6C39D0, a4, 0);
}

uint64_t sub_1AC6C39D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_45_7();
  sub_1AC6C3A48();
  OUTLINED_FUNCTION_44();

  return v0();
}

void sub_1AC6C3A48()
{
  OUTLINED_FUNCTION_104();
  v26[1] = v1;
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_40();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v14);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v18 = sub_1AC7A0288();
  OUTLINED_FUNCTION_80();
  (*(v19 + 16))(v17, v3, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  (*(v10 + 16))(v13, v5, v8);
  OUTLINED_FUNCTION_3_10();
  v22 = sub_1AC6CC574(v20, v21, &protocol conformance descriptor for SpeechAnalyzer);
  v23 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v0;
  *(v24 + 3) = v22;
  *(v24 + 4) = v0;
  (*(v10 + 32))(&v24[v23], v13, v8);
  swift_retain_n();
  OUTLINED_FUNCTION_248();
  sub_1AC659DBC();
  *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = v25;

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6C3C50(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1AC7A0288();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6C3D10, v1, 0);
}

uint64_t sub_1AC6C3D10()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD000000000000015, v1))
  {
    if (*(*(v0 + 24) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask))
    {

      sub_1AC7A0318();
    }

    sub_1AC7A0338();
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_62_4();
    sub_1AC6C3A48();
    v2 = OUTLINED_FUNCTION_170();
    v3(v2);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC6C3E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1AC6C3EE0;

  return sub_1AC6C40C4(a5);
}

uint64_t sub_1AC6C3EE0()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v2 + 16);
  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](sub_1AC68A870, v5, 0);
}

uint64_t sub_1AC6C400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1AC6738E0;

  return sub_1AC6C56B8(a5);
}

uint64_t sub_1AC6C40C4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_1AC7A01F8();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEE0, &qword_1AC7ACD20);
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v6 = sub_1AC7A0288();
  v2[44] = v6;
  v2[45] = *(v6 - 8);
  v2[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6C42BC, v1, 0);
}

uint64_t sub_1AC6C4614()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 416) = v0;

  v7 = *(v3 + 264);
  if (v0)
  {
    v8 = sub_1AC6C4AC4;
  }

  else
  {
    v8 = sub_1AC6C4714;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC6C4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  memcpy((v13 + 88), (v13 + 16), 0x41uLL);
  v14 = *(v13 + 88);
  if (v14)
  {
    OUTLINED_FUNCTION_48_6(v14);
    v15 = swift_task_alloc();
    *(v13 + 424) = v15;
    *v15 = v13;
    v15[1] = sub_1AC6C4DAC;
    OUTLINED_FUNCTION_634();

    return sub_1AC5CC77C();
  }

  else
  {
    v18 = *(v13 + 416);
    v19 = OUTLINED_FUNCTION_56_4();
    v20(v19);
    sub_1AC7A0348();
    if (v18)
    {
      OUTLINED_FUNCTION_97_3();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      if (OUTLINED_FUNCTION_74_5(v21, v13 + 248, v21))
      {

        v22 = OUTLINED_FUNCTION_630();
        v23(v22);
        v24 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v26);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v27, v28, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_657();
        OUTLINED_FUNCTION_1_12();
        v31 = sub_1AC6CC574(v29, v30, MEMORY[0x1E69E8558]);
        v32 = OUTLINED_FUNCTION_19_6(v31);
        v34 = OUTLINED_FUNCTION_84_1(v32, v33);
        v35(v34);
        swift_willThrow();
        v36 = OUTLINED_FUNCTION_344();
        v37(v36);

        OUTLINED_FUNCTION_12_8();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
      }

      else
      {

        v59 = v18;
        v60 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v61 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v62 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v62);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v63, v12, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v61, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        OUTLINED_FUNCTION_625();
        v64 = v18;
        sub_1AC675568(v18);
        v65 = swift_task_alloc();
        v66 = OUTLINED_FUNCTION_109_3(v65);
        *v66 = v67;
        OUTLINED_FUNCTION_5_8(v66);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v68, v69);
      }
    }

    else
    {
      v46 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v48);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v49, v50, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_116_2();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v56(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C4AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 232);
  *(v10 + 240) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v12 = sub_1AC7A0D08();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = swift_allocError();
    *v14 = v11;
  }

  v15 = OUTLINED_FUNCTION_56_4();
  v16(v15);
  *(v10 + 440) = v13;
  v17 = *(v10 + 272);
  *(v10 + 248) = v13;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (swift_dynamicCast())
  {

    v19 = OUTLINED_FUNCTION_29_10();
    v20(v19);
    v21 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v23);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v24, v25, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_1_12();
    v28 = sub_1AC6CC574(v26, v27, MEMORY[0x1E69E8558]);
    v29 = OUTLINED_FUNCTION_19_6(v28);
    v31 = OUTLINED_FUNCTION_84_1(v29, v30);
    v32(v31);
    swift_willThrow();
    v33 = OUTLINED_FUNCTION_344();
    v34(v33);

    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }

  else
  {

    v44 = v13;
    v45 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v46 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v47);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v48, v17, "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v46, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v13);
    v49 = swift_task_alloc();
    v50 = OUTLINED_FUNCTION_109_3(v49);
    *v50 = v51;
    OUTLINED_FUNCTION_5_8(v50);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v52, v53);
  }
}

uint64_t sub_1AC6C4DAC()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 432) = v0;

  if (!v0)
  {
    *(v5 + 81) = v3 & 1;
  }

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6C4EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  v16 = *(v15 + 81);
  sub_1AC5C720C(v15 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  if (v16)
  {
    OUTLINED_FUNCTION_51_4(&qword_1EB56CEF0, &qword_1EB56CEE0, &qword_1AC7ACD20);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v15 + 408) = v17;
    *v17 = v18;
    v17[1] = sub_1AC6C4614;
    OUTLINED_FUNCTION_26_8();
    OUTLINED_FUNCTION_634();

    return MEMORY[0x1EEE6D8D0](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v27 = *(v15 + 432);
    v28 = OUTLINED_FUNCTION_56_4();
    v29(v28);
    sub_1AC7A0348();
    if (v27)
    {
      OUTLINED_FUNCTION_97_3();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      if (OUTLINED_FUNCTION_74_5(v30, v15 + 248, v30))
      {

        v31 = OUTLINED_FUNCTION_630();
        v32(v31);
        v33 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v35);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v36, v37, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_657();
        OUTLINED_FUNCTION_1_12();
        v40 = sub_1AC6CC574(v38, v39, MEMORY[0x1E69E8558]);
        v41 = OUTLINED_FUNCTION_19_6(v40);
        v43 = OUTLINED_FUNCTION_84_1(v41, v42);
        v44(v43);
        swift_willThrow();
        v45 = OUTLINED_FUNCTION_344();
        v46(v45);

        OUTLINED_FUNCTION_12_8();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
      }

      else
      {

        v68 = v27;
        v69 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v70 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v71 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v71);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v72, v14, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v70, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        OUTLINED_FUNCTION_625();
        v73 = v27;
        sub_1AC675568(v27);
        v74 = swift_task_alloc();
        v75 = OUTLINED_FUNCTION_109_3(v74);
        *v75 = v76;
        OUTLINED_FUNCTION_5_8(v75);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v77, v78);
      }
    }

    else
    {
      v55 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v57);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v58, v59, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_116_2();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v65(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = OUTLINED_FUNCTION_56_4();
  v12(v11);
  sub_1AC5C720C(v10 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  v13 = *(v10 + 432);
  *(v10 + 248) = v13;
  OUTLINED_FUNCTION_121_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_96_4(v14))
  {

    v15 = OUTLINED_FUNCTION_29_10();
    v16(v15);
    v17 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v19);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v20, v21, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_1_12();
    v24 = sub_1AC6CC574(v22, v23, MEMORY[0x1E69E8558]);
    v25 = OUTLINED_FUNCTION_19_6(v24);
    v27 = OUTLINED_FUNCTION_84_1(v25, v26);
    v28(v27);
    swift_willThrow();
    v29 = OUTLINED_FUNCTION_344();
    v30(v29);

    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }

  else
  {

    v40 = v13;
    v41 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v42 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v43);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v44, (v10 - 8), "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v42, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v13);
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_109_3(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_5_8(v46);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v48, v49);
  }
}

uint64_t sub_1AC6C551C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 440);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6C5630()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  swift_willThrow();
  OUTLINED_FUNCTION_12_8();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1AC6C56B8(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_1AC7A01F8();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEC8, &qword_1AC7ACD08);
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  v6 = sub_1AC7A0288();
  v2[42] = v6;
  v2[43] = *(v6 - 8);
  v2[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6C58B0, v1, 0);
}

uint64_t sub_1AC6C5C04()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 400) = v0;

  v7 = *(v3 + 248);
  if (v0)
  {
    v8 = sub_1AC6C60B4;
  }

  else
  {
    v8 = sub_1AC6C5D04;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC6C5D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  memcpy((v13 + 88), (v13 + 16), 0x41uLL);
  v14 = *(v13 + 88);
  if (v14)
  {
    OUTLINED_FUNCTION_48_6(v14);
    v15 = swift_task_alloc();
    *(v13 + 408) = v15;
    *v15 = v13;
    v15[1] = sub_1AC6C6364;
    OUTLINED_FUNCTION_634();

    return sub_1AC5CC77C();
  }

  else
  {
    v18 = *(v13 + 400);
    v19 = OUTLINED_FUNCTION_52_4();
    v20(v19);
    sub_1AC7A0348();
    if (v18)
    {
      OUTLINED_FUNCTION_95_3();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      if (OUTLINED_FUNCTION_74_5(v21, v13 + 232, v21))
      {

        v22 = OUTLINED_FUNCTION_630();
        v23(v22);
        v24 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v26);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v27, v28, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_128_2();
        OUTLINED_FUNCTION_1_12();
        v31 = sub_1AC6CC574(v29, v30, MEMORY[0x1E69E8558]);
        v32 = OUTLINED_FUNCTION_19_6(v31);
        v34 = OUTLINED_FUNCTION_84_1(v32, v33);
        v35(v34);
        swift_willThrow();
        v36 = OUTLINED_FUNCTION_344();
        v37(v36);

        OUTLINED_FUNCTION_11_11();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
      }

      else
      {

        v59 = v18;
        v60 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v61 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v62 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v62);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v63, v12, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v61, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        OUTLINED_FUNCTION_625();
        v64 = v18;
        sub_1AC675568(v18);
        v65 = swift_task_alloc();
        v66 = OUTLINED_FUNCTION_110_2(v65);
        *v66 = v67;
        OUTLINED_FUNCTION_6_9(v66);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v68, v69);
      }
    }

    else
    {
      v46 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v48);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v49, v50, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_119_4();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v56(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C60B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = sub_1AC7A0D08();
  if (!v11)
  {
    v11 = swift_allocError();
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_52_4();
  v14(v13);
  *(v10 + 424) = v12;
  v15 = *(v10 + 256);
  *(v10 + 232) = v12;
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (swift_dynamicCast())
  {

    v17 = OUTLINED_FUNCTION_29_10();
    v18(v17);
    v19 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v21);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v22, v23, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_128_2();
    OUTLINED_FUNCTION_1_12();
    v26 = sub_1AC6CC574(v24, v25, MEMORY[0x1E69E8558]);
    v27 = OUTLINED_FUNCTION_19_6(v26);
    v29 = OUTLINED_FUNCTION_84_1(v27, v28);
    v30(v29);
    swift_willThrow();
    v31 = OUTLINED_FUNCTION_344();
    v32(v31);

    OUTLINED_FUNCTION_11_11();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }

  else
  {

    v42 = v12;
    v43 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v44 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v45);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v46, v15, "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v44, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v12);
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_110_2(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_6_9(v48);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v50, v51);
  }
}

uint64_t sub_1AC6C6364()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 416) = v0;

  if (!v0)
  {
    *(v5 + 81) = v3 & 1;
  }

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6C6478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  v16 = *(v15 + 81);
  sub_1AC5C720C(v15 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  if (v16)
  {
    OUTLINED_FUNCTION_53_5(&qword_1EB56CED8, &qword_1EB56CEC8, &qword_1AC7ACD08);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v15 + 392) = v17;
    *v17 = v18;
    v17[1] = sub_1AC6C5C04;
    OUTLINED_FUNCTION_26_8();
    OUTLINED_FUNCTION_634();

    return MEMORY[0x1EEE6D8D0](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v27 = *(v15 + 416);
    v28 = OUTLINED_FUNCTION_52_4();
    v29(v28);
    sub_1AC7A0348();
    if (v27)
    {
      OUTLINED_FUNCTION_95_3();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      if (OUTLINED_FUNCTION_74_5(v30, v15 + 232, v30))
      {

        v31 = OUTLINED_FUNCTION_630();
        v32(v31);
        v33 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v35);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v36, v37, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_128_2();
        OUTLINED_FUNCTION_1_12();
        v40 = sub_1AC6CC574(v38, v39, MEMORY[0x1E69E8558]);
        v41 = OUTLINED_FUNCTION_19_6(v40);
        v43 = OUTLINED_FUNCTION_84_1(v41, v42);
        v44(v43);
        swift_willThrow();
        v45 = OUTLINED_FUNCTION_344();
        v46(v45);

        OUTLINED_FUNCTION_11_11();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
      }

      else
      {

        v68 = v27;
        v69 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v70 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v71 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v71);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v72, v14, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v70, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        OUTLINED_FUNCTION_625();
        v73 = v27;
        sub_1AC675568(v27);
        v74 = swift_task_alloc();
        v75 = OUTLINED_FUNCTION_110_2(v74);
        *v75 = v76;
        OUTLINED_FUNCTION_6_9(v75);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v77, v78);
      }
    }

    else
    {
      v55 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v57);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v58, v59, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_119_4();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v65(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = OUTLINED_FUNCTION_52_4();
  v12(v11);
  sub_1AC5C720C(v10 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  v13 = *(v10 + 416);
  *(v10 + 232) = v13;
  OUTLINED_FUNCTION_121_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_96_4(v14))
  {

    v15 = OUTLINED_FUNCTION_29_10();
    v16(v15);
    v17 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v19);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v20, v21, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_128_2();
    OUTLINED_FUNCTION_1_12();
    v24 = sub_1AC6CC574(v22, v23, MEMORY[0x1E69E8558]);
    v25 = OUTLINED_FUNCTION_19_6(v24);
    v27 = OUTLINED_FUNCTION_84_1(v25, v26);
    v28(v27);
    swift_willThrow();
    v29 = OUTLINED_FUNCTION_344();
    v30(v29);

    OUTLINED_FUNCTION_11_11();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }

  else
  {

    v40 = v13;
    v41 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v42 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v43);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v44, (v10 - 24), "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v42, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v13);
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_110_2(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_6_9(v46);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v48, v49);
  }
}

uint64_t sub_1AC6C6AD0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 424);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6C6BE4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  swift_willThrow();
  OUTLINED_FUNCTION_11_11();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t AudioBufferSequence.init(url:processingFormat:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v6 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(v8 + 16);
  v15(&v25 - v13, a1, v6);
  v15(v12, v14, v6);
  v16 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v17 = OUTLINED_FUNCTION_35_7();
  v18 = sub_1AC6CBAE8(v17);
  if (v3)
  {

    v20 = *(v8 + 8);
    v20(a1, v6);
    return (v20)(v14, v6);
  }

  else
  {
    v19 = v28;
    AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(v18, a2, 4096, &v25);
    v22 = *(v8 + 8);
    v22(a1, v6);
    result = (v22)(v14, v6);
    v23 = v27;
    v24 = v26;
    *v19 = v25;
    *(v19 + 8) = v24;
    *(v19 + 24) = v23;
  }

  return result;
}

void AudioBufferSequence.init(url:processingFormat:frameCapacity:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_89();
  v9(v8);
  v10 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v11 = OUTLINED_FUNCTION_35_7();
  v12 = sub_1AC6CBAE8(v11);
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_82_4();
    v14(v13);
  }

  else
  {
    AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(v12, a1, a2, &v18);
    v15 = OUTLINED_FUNCTION_82_4();
    v16(v15);
    v17 = v20;
    *a3 = v18;
    *(a3 + 8) = v19;
    *(a3 + 24) = v17;
  }
}

void AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AC79FB18();
  v9 = OUTLINED_FUNCTION_167(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v10 = sub_1AC79FF48();
  v11 = OUTLINED_FUNCTION_167(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  if (!a2)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_7;
  }

  v12 = a2;
  v13 = [a1 processingFormat];
  sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
  v14 = sub_1AC7A0758();

  if (v14)
  {

    v15 = 0;
    v16 = 0;
LABEL_7:
    *a4 = a1;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
    *(a4 + 24) = a3;
    return;
  }

  v17 = [a1 processingFormat];
  v18 = v12;
  v19 = sub_1AC6C7230(v17, v18, a3);
  if (v19)
  {
    v15 = v19;
    v16 = v20;

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_65();
  sub_1AC79FEE8();
  if (qword_1EB56B610 != -1)
  {
    OUTLINED_FUNCTION_2_14();
    swift_once();
  }

  v21 = qword_1EB56DF80;
  sub_1AC79FA88();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36_7();
  sub_1AC79FFC8();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_90_5();
  related decl 'e' for SFSpeechErrorCode.init(_:description:)(v22, v23, v24);
  swift_willThrow();
}

double AudioBufferSequence.init(audioFile:processingFormat:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(a1, a2, 4096, &v7);
  if (!v3)
  {
    v6 = v9;
    *a3 = v7;
    result = *&v8;
    *(a3 + 8) = v8;
    *(a3 + 24) = v6;
  }

  return result;
}

id sub_1AC6C7230(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:a1 frameCapacity:a3];
  if (v5)
  {
    v6 = v5;
    sub_1AC5CF764(0, &qword_1EB56CEF8, 0x1E69583F0);
    v7 = OUTLINED_FUNCTION_89();
    result = sub_1AC6C7B3C(v7, v8);
    if (result)
    {
      return result;
    }

    a2 = v6;
  }

  else
  {
  }

  return 0;
}

uint64_t AudioBufferSequence.next()()
{
  OUTLINED_FUNCTION_85();
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_126();
  v3 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v3);
  v4 = OUTLINED_FUNCTION_126();
  v5 = *v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = *(v0 + 1);
  *(v1 + 64) = *(v0 + 6);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6C73A8()
{
  OUTLINED_FUNCTION_57();
  v1 = *(v0 + 48);
  if (!v1 || (v2 = *(v0 + 56), v3 = v1, v4 = v2, (v5 = [v3 outputFormat]) == 0))
  {
    v5 = [*(v0 + 40) processingFormat];
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v5 frameCapacity:*(v0 + 64)];
  if (v6)
  {
    v7 = v6;
    if (v1)
    {
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      sub_1AC6C7684(*(v0 + 40), v6, v9, v8);

LABEL_12:
      v18 = [v7 frameLength];

      if (!v18)
      {

        v7 = 0;
      }

      OUTLINED_FUNCTION_82();

      return v19(v7);
    }

    v14 = *(v0 + 40);
    *(v0 + 16) = 0;
    v15 = [v14 readIntoBuffer:v7 error:v0 + 16];
    v16 = *(v0 + 16);
    if (v15)
    {
      v17 = v16;
      goto LABEL_12;
    }

    v21 = v16;
    sub_1AC79F748();

    swift_willThrow();
    v5 = v7;
  }

  else
  {
    sub_1AC6CBC24(*(v0 + 48), *(v0 + 56));
    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v10 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v11, v12, v13);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_44();

  return v22();
}

uint64_t sub_1AC6C7684(void *a1, uint64_t a2, void *a3, void *a4)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v8;
  aBlock[4] = sub_1AC6CC9B0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AC6C7CF8;
  aBlock[3] = &block_descriptor_5;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = a3;
  v14 = a4;

  aBlock[0] = 0;
  [v13 convertToBuffer:a2 error:aBlock withInputFromBlock:v11];
  _Block_release(v11);
  v15 = aBlock[0];
  if (aBlock[0])
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  if (*v9)
  {
    v16 = *v9;
LABEL_4:
    swift_willThrow();
    v17 = v15;
  }
}

id AudioBufferSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;
  v7 = OUTLINED_FUNCTION_170();

  return sub_1AC6CBC64(v7, v8);
}

void sub_1AC6C78A0(uint64_t a1@<X8>)
{
  AudioBufferSequence.makeAsyncIterator()(a1);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);

  sub_1AC6CBC24(v3, v4);
}

uint64_t sub_1AC6C78E4()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1AC5C8838;

  return AudioBufferSequence.next()();
}

uint64_t sub_1AC6C7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1AC6C7A2C;

  return sub_1AC6F8EB0();
}

uint64_t sub_1AC6C7A2C()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    **(v5 + 24) = v0;
  }

  else
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

id sub_1AC6C7B3C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromFormat:a1 toFormat:a2];

  return v4;
}

id sub_1AC6C7B98(unsigned int a1, uint64_t *a2, id a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v11 = [a3 framePosition];
  if (v11 >= [a3 length])
  {
    v12 = 0;
    v16 = 2;
  }

  else
  {
    v12 = a5;
    v13 = [v12 frameCapacity];
    if (v13 >= a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = v13;
    }

    v21[0] = 0;
    if (![a3 readIntoBuffer:v12 frameCount:v14 error:v21])
    {
      v17 = v21[0];

      v18 = sub_1AC79F748();
      swift_willThrow();
      swift_beginAccess();
      v19 = *(a6 + 16);
      *(a6 + 16) = v18;

      return 0;
    }

    v15 = v21[0];
    v16 = 2 * ([v12 frameLength] == 0);
  }

  *a2 = v16;
  return v12;
}

id sub_1AC6C7CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t SpeechAnalyzer.__allocating_init(inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 40) = v6;
  *(v1 + 48) = v4;
  *(v1 + 120) = v7;
  *(v1 + 24) = v8;
  *(v1 + 32) = v9;
  *(v1 + 16) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v11);
  *(v1 + 72) = OUTLINED_FUNCTION_126();
  v12 = type metadata accessor for ClientInfo(0);
  *(v1 + 80) = v12;
  OUTLINED_FUNCTION_167(v12);
  *(v1 + 88) = OUTLINED_FUNCTION_126();
  sub_1AC5D9374(v5, v3);
  v13 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1AC6C7E38()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  if (qword_1EB56B598 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[2];
  v3 = __swift_project_value_buffer(v0[10], qword_1EB56E830);
  sub_1AC6CBCA4(v3, v1);
  v4 = OUTLINED_FUNCTION_62_4();
  sub_1AC5D1E4C(v4, v5, v6, v7);
  v8 = v2;

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1AC6C7F5C;
  OUTLINED_FUNCTION_111_3(v0[11]);
  OUTLINED_FUNCTION_149_0();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6C7F5C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 112) = v1;
    v8 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC6C8068()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111_4();

  sub_1AC5C720C(v0, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_149_0();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC6C80F8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111_4();

  sub_1AC5C720C(v0, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 44) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v10);
  *(v1 + 112) = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v11);
  *(v1 + 120) = OUTLINED_FUNCTION_126();
  v12 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_167(v12);
  *(v1 + 128) = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  *(v1 + 136) = v13;
  OUTLINED_FUNCTION_22(v13);
  *(v1 + 144) = v14;
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  v15 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v15);
  *(v1 + 168) = OUTLINED_FUNCTION_126();
  v16 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v16);
  *(v1 + 176) = OUTLINED_FUNCTION_126();
  v17 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1AC6C8310()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 184) = [*(v0 + 56) processingFormat];
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6C83C8;
  OUTLINED_FUNCTION_111_3(*(v0 + 64));

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC6C83C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 184);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v8 + 200) = v7;

  v9 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6C84C4()
{
  v43 = v0;
  v1 = *(v0 + 200);
  if (!v1)
  {

    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 72);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v17, v18, v19);
    swift_willThrow();
    sub_1AC5C3958(v12, v11);

    sub_1AC5C720C(v13, &qword_1EB56C7D0, &qword_1AC7ACB40);
    OUTLINED_FUNCTION_0_10();
    v10 = v14;
    goto LABEL_7;
  }

  v2 = *(v0 + 56);
  v3 = v1;
  OUTLINED_FUNCTION_98_2(v2, &v39);
  if (v2)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 48);

    sub_1AC5C3958(v5, v4);

    sub_1AC5C720C(v6, &qword_1EB56C7D0, &qword_1AC7ACB40);
    OUTLINED_FUNCTION_0_10();
    v10 = v8;
LABEL_7:
    sub_1AC6CC440(v10, v9);

    OUTLINED_FUNCTION_44();

    return v20();
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v26 = *(v0 + 128);
  v35 = *(v0 + 88);
  v36 = *(v0 + 96);
  v33 = *(v0 + 120);
  v34 = *(v0 + 80);
  v27 = *(v0 + 72);
  v37 = *(v0 + 64);
  v28 = *(v0 + 48);
  v29 = v41;
  v30 = v40;
  *(v0 + 16) = v39;
  *(v0 + 24) = v30;
  *(v0 + 40) = v29;
  sub_1AC6CBD08();
  sub_1AC7A0B08();
  sub_1AC6CBCA4(v28, v26);
  (*(v24 + 16))(v22, v23, v25);
  sub_1AC5D1E4C(v27, v33, &qword_1EB56C7D0, &qword_1AC7ACB40);
  swift_allocObject();

  sub_1AC5D9374(v35, v36);
  sub_1AC6C3274(v26, v22, v37, v33, v34, v35, v36, &qword_1EB56CEB0, &qword_1AC7ACB58, &unk_1F2135408, &unk_1AC7ACD40, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42);
  *(v0 + 208) = v31;

  return MEMORY[0x1EEE6DFA0](sub_1AC6C8880, v31, 0);
}

uint64_t sub_1AC6C8880()
{
  if (*(v0 + 44) == 1)
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 112);
    v3 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    OUTLINED_FUNCTION_3_10();
    v6 = sub_1AC6CC574(v4, v5, &protocol conformance descriptor for SpeechAnalyzer);
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v6;
    v7[4] = v1;
    swift_retain_n();
    OUTLINED_FUNCTION_248();
    sub_1AC6C2FD0();
  }

  v8 = *(v0 + 200);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  sub_1AC5C3958(*(v0 + 88), *(v0 + 96));

  sub_1AC5C720C(v12, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v13, v15);
  (*(v10 + 8))(v9, v11);

  OUTLINED_FUNCTION_82();
  v17 = *(v0 + 208);

  return v16(v17);
}

uint64_t sub_1AC6C8A64(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6CC9C8, 0, 0);
}

uint64_t sub_1AC6C8A88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 44) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  v4 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v4);
  *(v1 + 72) = OUTLINED_FUNCTION_126();
  v5 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v5);
  *(v1 + 80) = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v6);
  *(v1 + 88) = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  *(v1 + 96) = v7;
  OUTLINED_FUNCTION_22(v7);
  *(v1 + 104) = v8;
  *(v1 + 112) = OUTLINED_FUNCTION_126();
  v9 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6C8C64()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[6];
  v0[15] = SpeechAnalyzer.modules.getter();
  v0[16] = [v1 processingFormat];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_88_3(v2);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC6C8D28()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v8 + 144) = v7;

  v9 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6C8E5C()
{
  OUTLINED_FUNCTION_169();
  v14 = v0;
  v1 = v0[18];
  if (!v1)
  {
    OUTLINED_FUNCTION_115_3();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v4 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_71_3();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v5, v6, v7);
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = v0[6];
  v3 = v1;
  OUTLINED_FUNCTION_98_2(v2, &v12);
  if (v2)
  {

LABEL_7:

    OUTLINED_FUNCTION_44();

    return v8();
  }

  OUTLINED_FUNCTION_125_3(v12, v13);
  OUTLINED_FUNCTION_106_4();
  sub_1AC7A0B08();
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1AC6C9070;
  v11 = OUTLINED_FUNCTION_111_3(v0[14]);

  return sub_1AC6C3C50(v11);
}

uint64_t sub_1AC6C9070()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6C918C()
{
  OUTLINED_FUNCTION_102();
  v1 = *(v0 + 144);
  if (*(v0 + 44) == 1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 56);
    v4 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
    OUTLINED_FUNCTION_3_10();
    v7 = sub_1AC6CC574(v5, v6, &protocol conformance descriptor for SpeechAnalyzer);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v3;
    swift_retain_n();
    OUTLINED_FUNCTION_248();
    sub_1AC6C2FD0();

    v9 = OUTLINED_FUNCTION_89();
    v10(v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_89();
    v12(v11);
  }

  OUTLINED_FUNCTION_44();

  return v13();
}

uint64_t sub_1AC6C9314()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 144);

  v2 = OUTLINED_FUNCTION_89();
  v3(v2);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t SpeechAnalyzer.analyzeSequence(from:)()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = *v0;
  v3 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v3);
  v1[9] = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v4);
  v1[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  v1[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_126();
  v7 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6C94D8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[6];
  v0[14] = SpeechAnalyzer.modules.getter();
  v0[15] = [v1 processingFormat];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_88_3(v2);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC6C959C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v8 + 136) = v7;

  v9 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6C96D0()
{
  OUTLINED_FUNCTION_57();
  v14 = v0;
  v1 = v0[17];
  if (!v1)
  {
    OUTLINED_FUNCTION_115_3();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v4 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_71_3();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v5, v6, v7);
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = v0[6];
  v3 = v1;
  OUTLINED_FUNCTION_98_2(v2, &v12);
  if (v2)
  {

LABEL_7:

    OUTLINED_FUNCTION_44();

    return v8();
  }

  OUTLINED_FUNCTION_125_3(v12, v13);
  OUTLINED_FUNCTION_106_4();
  sub_1AC7A0B08();
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1AC6C98CC;
  v11 = OUTLINED_FUNCTION_111_3(v0[13]);

  return sub_1AC6C40C4(v11);
}

uint64_t sub_1AC6C98CC()
{
  OUTLINED_FUNCTION_102();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v1;
  v11 = *v1;
  OUTLINED_FUNCTION_18();
  *v12 = v11;
  *v12 = *v1;
  *(v11 + 152) = v0;

  v13 = *(v10 + 56);
  if (v0)
  {
    v14 = sub_1AC6C9ACC;
  }

  else
  {
    *(v11 + 44) = v3;
    *(v11 + 160) = v5;
    *(v11 + 168) = v7;
    *(v11 + 176) = v9;
    v14 = sub_1AC6C9A18;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1AC6C9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 136);

  v12 = OUTLINED_FUNCTION_89();
  v13(v12);

  OUTLINED_FUNCTION_291();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1AC6C9ACC()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 136);

  v2 = OUTLINED_FUNCTION_89();
  v3(v2);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC6C9B6C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6C9B90, 0, 0);
}

uint64_t sub_1AC6C9B90()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 16);
  *v1 = *(v0 + 24);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  OUTLINED_FUNCTION_44();
  v6 = v2;
  v4 = v3;

  return v6();
}

uint64_t SpeechAnalyzer.setInputAudioFile(_:)()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_79_4();

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t SpeechAnalyzer.setInputAudioFile(_:audioFormat:)()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_79_4();

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t SpeechAnalyzer.setInputAudioFile(_:withAudioFormat:)()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1AC79F7F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6C9DD8()
{
  OUTLINED_FUNCTION_72();
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v1 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v2 = OUTLINED_FUNCTION_35_7();
  v0[7] = sub_1AC6CBAE8(v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1AC6C9EEC;
  OUTLINED_FUNCTION_79_4();

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t sub_1AC6C9EEC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6CA008()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6CA06C()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t SpeechAnalyzer.__allocating_init(inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v6;
  v1[6] = v4;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v1[9] = OUTLINED_FUNCTION_126();
  sub_1AC5D9374(v5, v3);
  v11 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6CA17C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  sub_1AC5D1E4C(v0[4], v0[9], &qword_1EB56C7D0, &qword_1AC7ACB40);
  v2 = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1AC6CA250;
  OUTLINED_FUNCTION_111_3(v0[2]);

  return SpeechAnalyzer.__allocating_init(inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CA250()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 96) = v1;
    v8 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC6CA35C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_137_2();

  sub_1AC5C720C(v0, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_82();
  v4 = *(v1 + 96);

  return v3(v4);
}

uint64_t sub_1AC6CA3E4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_137_2();

  sub_1AC5C720C(v0, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v6;
  v1[7] = v4;
  v1[4] = v7;
  v1[5] = v8;
  v1[2] = v9;
  v1[3] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v11);
  v1[10] = OUTLINED_FUNCTION_126();
  v12 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_167(v12);
  v1[11] = OUTLINED_FUNCTION_126();
  sub_1AC5D9374(v5, v3);
  v13 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1AC6CA534()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[3];
  sub_1AC6CBCA4(v0[2], v0[11]);
  sub_1AC5D1E4C(v2, v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v4 = v3;

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1AC6CA614;
  OUTLINED_FUNCTION_111_3(v0[11]);

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CA614()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 112) = v1;
    v8 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC6CA720()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_138_3();

  sub_1AC5C720C(v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v2, v4);

  OUTLINED_FUNCTION_82();
  v6 = *(v0 + 112);

  return v5(v6);
}

uint64_t sub_1AC6CA7C4()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_138_3();

  sub_1AC5C720C(v0, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v1, v3);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  *(v0 + 80) = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v11 = OUTLINED_FUNCTION_126();
  v12 = OUTLINED_FUNCTION_136_2(v11);
  OUTLINED_FUNCTION_167(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_126();
  v13 = OUTLINED_FUNCTION_170();
  sub_1AC5D9374(v13, v14);
  v15 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  v0[10] = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v11 = OUTLINED_FUNCTION_126();
  v12 = OUTLINED_FUNCTION_136_2(v11);
  OUTLINED_FUNCTION_167(v12);
  v0[12] = OUTLINED_FUNCTION_126();
  v13 = sub_1AC79F7F8();
  v0[13] = v13;
  OUTLINED_FUNCTION_22(v13);
  v0[14] = v14;
  v0[15] = OUTLINED_FUNCTION_126();
  v15 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  v0[10] = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v11 = OUTLINED_FUNCTION_126();
  v12 = OUTLINED_FUNCTION_136_2(v11);
  OUTLINED_FUNCTION_167(v12);
  v0[12] = OUTLINED_FUNCTION_126();
  v13 = sub_1AC79F7F8();
  v0[13] = v13;
  OUTLINED_FUNCTION_22(v13);
  v0[14] = v14;
  v0[15] = OUTLINED_FUNCTION_126();
  v15 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1AC6CA944()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_120_3();
  v2 = OUTLINED_FUNCTION_62_4();
  sub_1AC5D1E4C(v2, v3, v4, v5);
  v6 = v1;
  v7 = OUTLINED_FUNCTION_106_4();
  sub_1AC6D980C(v7);

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_50_6(v8);
  OUTLINED_FUNCTION_111_3(v9);
  OUTLINED_FUNCTION_149_0();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CAA0C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 120) = v1;
    v8 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC6CAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_107_2();

  sub_1AC5C720C(v10, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v11, v13);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_291();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1AC6CABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_107_2();

  sub_1AC5C720C(v10, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v11, v13);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:restrictedLogging:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  *(v0 + 80) = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v11 = OUTLINED_FUNCTION_126();
  v12 = OUTLINED_FUNCTION_136_2(v11);
  OUTLINED_FUNCTION_167(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_126();
  v13 = OUTLINED_FUNCTION_170();
  sub_1AC5D9374(v13, v14);
  v15 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1AC6CAD3C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_120_3();
  v2 = OUTLINED_FUNCTION_62_4();
  sub_1AC5D1E4C(v2, v3, v4, v5);
  v6 = v1;
  v7 = OUTLINED_FUNCTION_106_4();
  sub_1AC6D980C(v7);

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_50_6(v8);
  OUTLINED_FUNCTION_111_3(v9);
  OUTLINED_FUNCTION_149_0();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CAE04()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 120) = v1;
    v8 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC6CB024()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v6 = OUTLINED_FUNCTION_89_4();
  v7(v6);
  v8 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v9 = OUTLINED_FUNCTION_35_7();
  v10 = sub_1AC6CBAE8(v9);
  *(v0 + 128) = v10;
  v11 = v10;
  OUTLINED_FUNCTION_83_5();
  v11;
  sub_1AC6089EC(v5);

  sub_1AC5D1E4C(v4, v1, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v1);

  sub_1AC5D9374(v3, v2);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_50_6(v12);
  OUTLINED_FUNCTION_111_3(v13);
  OUTLINED_FUNCTION_115();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CB200()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 152) = v1;
    v8 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC6CB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14[16];
  v16 = v14[13];
  v17 = v14[14];
  v31 = v14[11];
  v32 = v14[10];
  v18 = v14[5];
  v20 = v14[2];
  v19 = v14[3];
  sub_1AC5C3958(v14[7], v14[8]);

  sub_1AC5C720C(v18, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v17 + 8))(v19, v16);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v20, v21);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_115();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_1AC6CB3F8()
{
  OUTLINED_FUNCTION_57();
  v2 = v1[16];
  sub_1AC5C3958(v1[7], v1[8]);

  OUTLINED_FUNCTION_87_4();
  v3 = v1[5];
  v4 = v1[2];

  sub_1AC5C720C(v3, &qword_1EB56C7E8, &qword_1AC7AA900);
  v5 = OUTLINED_FUNCTION_112_4();
  v6(v5, v0);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v4, v7);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC6CB5F8()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v6 = OUTLINED_FUNCTION_89_4();
  v7(v6);
  v8 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v9 = OUTLINED_FUNCTION_35_7();
  v10 = sub_1AC6CBAE8(v9);
  v0[16] = v10;
  v11 = v10;
  OUTLINED_FUNCTION_83_5();
  sub_1AC6089EC(v5);

  sub_1AC5D1E4C(v4, v1, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v1);
  sub_1AC5D9374(v3, v2);

  v11;
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1AC6CB7F0;
  OUTLINED_FUNCTION_111_3(v0[12]);
  OUTLINED_FUNCTION_115();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CB7F0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 152) = v1;
    v8 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC6CB8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = *(v14 + 104);
  v16 = *(v14 + 112);
  v32 = *(v14 + 96);
  v33 = *(v14 + 88);
  v34 = *(v14 + 80);
  v18 = *(v14 + 56);
  v17 = *(v14 + 64);
  v19 = *(v14 + 40);
  v20 = *(v14 + 16);
  v21 = *(v14 + 24);

  sub_1AC5C3958(v18, v17);
  sub_1AC5C720C(v19, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v16 + 8))(v21, v15);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v20, v22);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_115();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, a12, a13, a14);
}

uint64_t sub_1AC6CB9F4()
{
  OUTLINED_FUNCTION_57();

  OUTLINED_FUNCTION_87_4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  sub_1AC5C3958(*(v1 + 56), *(v1 + 64));
  sub_1AC5C720C(v2, &qword_1EB56C7E8, &qword_1AC7AA900);
  v4 = OUTLINED_FUNCTION_112_4();
  v5(v4, v0);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v3, v6);

  OUTLINED_FUNCTION_44();

  return v7();
}

id sub_1AC6CBAE8(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AC79F788();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1AC79F7F8();
    OUTLINED_FUNCTION_80();
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v14[0];
    sub_1AC79F748();

    swift_willThrow();
    sub_1AC79F7F8();
    OUTLINED_FUNCTION_80();
    (*(v12 + 8))(a1);
  }

  return v5;
}

void sub_1AC6CBC24(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_1AC6CBC64(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_1AC6CBCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC6CBD08()
{
  result = qword_1EB56CEB8;
  if (!qword_1EB56CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CEB8);
  }

  return result;
}

uint64_t sub_1AC6CBD5C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C8A88();
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC6CBE3C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C8A88();
}

unint64_t sub_1AC6CBEE0()
{
  result = qword_1EB56CEC0;
  if (!qword_1EB56CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CEC0);
  }

  return result;
}

void destroy for AudioBufferSequence(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    v3 = *(a1 + 16);
  }
}

uint64_t initializeWithCopy for AudioBufferSequence(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = (a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  v8 = v4;
  if (v6)
  {
    v9 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v9;
    v10 = v6;
    v11 = v9;
  }

  else
  {
    *v5 = *v7;
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for AudioBufferSequence(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (!v7)
  {
    if (v8)
    {
      *(a1 + 8) = v8;
      v13 = *(a2 + 16);
      *(a1 + 16) = v13;
      v14 = v8;
      v15 = v13;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 8) = *(a2 + 8);
    goto LABEL_8;
  }

  if (!v8)
  {
    sub_1AC6CC0C8(a1 + 8);
    goto LABEL_7;
  }

  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AudioBufferSequence(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    sub_1AC6CC0C8(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    goto LABEL_6;
  }

  *(a1 + 8) = v6;

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for AudioBufferSequence(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for AudioBufferSequence(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for AudioConverter(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for AudioConverter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for AudioConverter(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AC6CC310()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_22(v1);
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v2);
  OUTLINED_FUNCTION_94_2();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_102_3(v3);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_291();

  return sub_1AC6C3900(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC6CC440(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1AC6CC498()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_101_4();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_102_3(v3);
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C400C(v5, v6, v7, v0, v8);
}

uint64_t sub_1AC6CC574(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_40Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = *(v8 + 64);
  swift_unknownObjectRelease();

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + v9, v6 | 7);
}

uint64_t sub_1AC6CC678()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_101_4();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_102_3(v3);
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C3E28(v5, v6, v7, v0, v8);
}

uint64_t objectdestroy_36Tm()
{
  OUTLINED_FUNCTION_104();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40();
  v5 = v4;
  v6 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40();
  v11 = v10;
  v12 = (v6 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();

  (*(v5 + 8))(v0 + v6, v3);
  (*(v11 + 8))(v0 + v12, v9);
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v13, v14, v15);
}

uint64_t sub_1AC6CC880()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  OUTLINED_FUNCTION_22(v1);
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v2);
  OUTLINED_FUNCTION_94_2();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_102_3(v3);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_291();

  return sub_1AC6C39AC(v4, v5, v6, v7, v8, v9);
}

void OUTLINED_FUNCTION_20_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

__n128 OUTLINED_FUNCTION_48_6@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 160) = a1;
  *(v1 + 168) = *(v1 + 24);
  *(v1 + 184) = *(v1 + 40);
  *(v1 + 200) = *(v1 + 56);
  result = *(v1 + 65);
  *(v1 + 209) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_96_4(uint64_t a1)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_97_3()
{
  *(v1 + 440) = v0;
  *(v1 + 248) = v0;

  return v0;
}

void OUTLINED_FUNCTION_98_2(void *a1@<X0>, uint64_t a2@<X8>)
{

  AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(a1, v2, 4096, a2);
}

uint64_t OUTLINED_FUNCTION_115_3()
{

  return sub_1AC79FEE8();
}

uint64_t OUTLINED_FUNCTION_117_4(uint64_t a1)
{

  return sub_1AC7A0368();
}

void OUTLINED_FUNCTION_118_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 5u);
}

uint64_t OUTLINED_FUNCTION_120_3()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);

  return sub_1AC6CBCA4(v3, v2);
}

id OUTLINED_FUNCTION_121_3()
{
  *(v1 + 192) = v0;

  return v0;
}

unint64_t OUTLINED_FUNCTION_125_3@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 40) = v2;

  return sub_1AC6CBD08();
}

void OUTLINED_FUNCTION_128_2()
{
}

void OUTLINED_FUNCTION_129_3()
{
}

BOOL OUTLINED_FUNCTION_130_3()
{

  return os_log_type_enabled(v1, v0);
}

BOOL OUTLINED_FUNCTION_133_1()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_135_2()
{
}

uint64_t OUTLINED_FUNCTION_136_2(uint64_t a1)
{
  *(v1 + 88) = a1;

  return type metadata accessor for ClientInfo(0);
}

uint64_t OUTLINED_FUNCTION_137_2()
{
  sub_1AC5C3958(*(v0 + 48), *(v0 + 56));
}

uint64_t OUTLINED_FUNCTION_138_3()
{
  sub_1AC5C3958(*(v0 + 56), *(v0 + 64));
}

uint64_t sub_1AC6CCD24(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  v6 = a1 == 0xD00000000000002DLL && 0x80000001AC7B79B0 == a2;
  if (v6 || (OUTLINED_FUNCTION_9_12(0xD00000000000002DLL, 0x80000001AC7B79B0) & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  result = 0xD00000000000003CLL;
  v10 = a1 == 0xD00000000000003CLL && 0x80000001AC7B79E0 == a2;
  if (v10 || (result = OUTLINED_FUNCTION_9_12(0xD00000000000003CLL, 0x80000001AC7B79E0), (result & 1) != 0))
  {
    if (!*(a4 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1AC5D2398(a4 + 32, v16);
    if (v17)
    {
      if (swift_dynamicCast())
      {
        v11 = sub_1AC79F858();
        sub_1AC5C28A8(v14, v15);
LABEL_20:
        [a3 addAudioSampleData_];

        return 1;
      }
    }

    else
    {
      sub_1AC641B24(v16);
    }

    v11 = 0;
    goto LABEL_20;
  }

  v12 = a1 == 0xD000000000000030 && 0x80000001AC7B7A20 == a2;
  if (v12 || (v13 = OUTLINED_FUNCTION_9_12(0xD000000000000030, 0x80000001AC7B7A20), result = 0, (v13 & 1) != 0))
  {
    [a3 endAudio];
    return 1;
  }

  return result;
}

uint64_t sub_1AC6CCEA8()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6CCF50()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v2);
    if (v0)
    {

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B60);
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_6_0(v9);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6CD0AC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6CD1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6CE6FC;

  return sub_1AC6CCEA8();
}

uint64_t sub_1AC6CD264()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v1[11] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6CD368()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[13];
    v2 = v0[6];
    v3 = v0[5];
    v4 = sub_1AC5C6544();
    v0[2] = v3;
    v0[3] = v2;
    v0[4] = v4;
    sub_1AC5CFBB8(v3, v2);
    sub_1AC79FC98();
    sub_1AC5D0788(v1);
    nullsub_1();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B60);
    v11 = v6;
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_1AC6CD570;
    v8 = v0[10];
    v9 = v0[7];

    return v11(v9, v8, v0 + 4);
  }

  else
  {
    v5 = v0[7];

    return MEMORY[0x1EEE6DFA0](sub_1AC6CD72C, v5, 0);
  }
}

uint64_t sub_1AC6CD570()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6CD694()
{
  OUTLINED_FUNCTION_72();
  v3 = OUTLINED_FUNCTION_190();
  v4(v3);
  (*(v2 + 8))(v1, v0);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6CD72C()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6CD794()
{
  OUTLINED_FUNCTION_72();
  v3 = OUTLINED_FUNCTION_190();
  v4(v3);
  (*(v2 + 8))(v1, v0);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6CD82C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC6CD9A0;

    return sub_1AC6CD264();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6CD9A0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC6CDB14()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6CDBBC()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v2);
    if (v0)
    {

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B60);
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_6_0(v9);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6CDD18()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6CDE3C()
{
  OUTLINED_FUNCTION_85();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6CDEB0()
{
  OUTLINED_FUNCTION_85();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6CDF24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6CDFB8;

  return sub_1AC6CDB14();
}

uint64_t sub_1AC6CDFB8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6CE0A4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE1C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC6CE150()
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  OUTLINED_FUNCTION_1_13();
  sub_1AC6CE6A8(v0, v1, v2, &unk_1AC7ACF50);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CE1CC()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    OUTLINED_FUNCTION_1_13();
    sub_1AC6CE6A8(v1, v2, v3, &unk_1AC7ACFA0);
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC6CE294(uint64_t a1)
{
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC6CE6A8(&qword_1EB56B9C0, v1, type metadata accessor for EARLanguageDetectorAudioBuffer, &unk_1AC7ACFA0);
  return sub_1AC79FC28();
}

uint64_t sub_1AC6CE30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CE364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARLanguageDetectorAudioBuffer();
  v6 = sub_1AC6CE6A8(&qword_1EB56B9C0, v5, type metadata accessor for EARLanguageDetectorAudioBuffer, &unk_1AC7ACFA0);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC6CE3EC(uint64_t a1)
{
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC6CE6A8(&qword_1EB56B9C0, v1, type metadata accessor for EARLanguageDetectorAudioBuffer, &unk_1AC7ACFA0);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC6CE480@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC6CE6A8(&qword_1EB56B9C0, v4, type metadata accessor for EARLanguageDetectorAudioBuffer, &unk_1AC7ACFA0);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AC6CE640()
{
  v0 = objc_opt_self();
  v1 = &unk_1F215B468;
  v2 = [v0 interfaceWithProtocol_];

  qword_1EB56E848 = v2;
}

uint64_t sub_1AC6CE6A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

void sub_1AC6CE700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    sub_1AC63129C(0, v1, 0);
    v4 = sub_1AC6C2CA0();
    v6 = v5;
    v7 = v22;
    v8 = 0;
    v9 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v10 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_25;
        }

        v12 = *(v23 + 16);
        v11 = *(v23 + 24);
        if (v12 >= v11 >> 1)
        {
          v21 = v3;
          sub_1AC63129C(v11 > 1, v12 + 1, 1);
          v3 = v21;
          v9 = a1 + 56;
          v7 = v22;
        }

        *(v23 + 16) = v12 + 1;
        *(v23 + v12 + 32) = 5;
        if (v3)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v4 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v9 + 8 * v10);
        if ((v14 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v4 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v10 << 6;
          v17 = v10 + 1;
          v18 = (a1 + 64 + 8 * v10);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1AC637E98(v4, v6, 0);
              v9 = a1 + 56;
              v7 = v22;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v4, v6, 0);
          v9 = a1 + 56;
          v7 = v22;
        }

LABEL_19:
        if (++v8 == v7)
        {
          return;
        }

        v3 = 0;
        v6 = *(a1 + 36);
        v4 = v13;
        if (v13 < 0)
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

void SpeechTranscriber.Result.text.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (*(v3 + 16))
  {
    v4 = sub_1AC79F5C8();
    v5 = *(v4 - 8);
    v6 = *(v5 + 16);
    v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

    v6(a1, v7, v4);
  }

  else
  {
    __break(1u);
  }
}

__n128 SpeechTranscriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t SpeechTranscriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2, v3);
}

double SpeechTranscriber.MultisegmentResult.latticeMitigatorResult.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;

  return result;
}

__n128 SpeechTranscriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = a1[2];
  v19 = a11[1];
  *(a9 + 108) = *a11;
  *(a9 + 124) = v19;
  *(a9 + 140) = a11[2];
  *(a9 + 160) = *a12;
  result = *a15;
  v21 = *(a15 + 16);
  *(a9 + 200) = *a15;
  v22 = *a10;
  v23 = *(a12 + 16);
  v24 = *(a15 + 32);
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v22;
  *(a9 + 176) = v23;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  *(a9 + 216) = v21;
  *(a9 + 232) = v24;
  *(a9 + 240) = a16;
  *(a9 + 248) = a17;
  *(a9 + 256) = a18 & 1;
  return result;
}

uint64_t SpeechTranscriber.__allocating_init(locale:preset:)(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_25();
  v4 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  (*(v6 + 16))(v9 - v8, v2, v4);

  v14 = SpeechTranscriber.__allocating_init(locale:transcriptionOptions:reportingOptions:attributeOptions:)(v10, v11, v12, v13);

  v15 = OUTLINED_FUNCTION_170();
  v16(v15);
  return v14;
}

uint64_t SpeechTranscriber.__allocating_init(locale:transcriptionOptions:reportingOptions:attributeOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25();
  v8 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v4, v8);
  v17 = MEMORY[0x1E69E7CC0];
  v15 = swift_allocObject();
  SpeechTranscriber.init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(v14, &v17, a2, a3, a4);
  (*(v10 + 8))(v4, v8);
  return v15;
}

Speech::SpeechTranscriber::ModelOptions __swiftcall SpeechTranscriber.ModelOptions.init()()
{
  v1 = v0;

  *v1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t SpeechTranscriber.__allocating_init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  SpeechTranscriber.init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *SpeechTranscriber.init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v80 = a5;
  v81 = a3;
  v78 = a1;
  v71 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v69 - v10;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v76 = v12;
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v74 = v14 - v13;
  v82 = *a2;
  v15 = *(v82 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v79 = a4;
  if (v15)
  {
    v73 = v6;
    v83 = MEMORY[0x1E69E7CC0];

    sub_1AC6310CC(0, v15, 0);
    v17 = v82;
    v16 = v83;
    v18 = 32;
    do
    {
      v19 = 0xD000000000000014;
      if (*(v17 + v18) == 1)
      {
        v20 = 0x80000001AC7B4830;
      }

      else
      {
        v19 = 0x74616C736E617254;
        v20 = 0xEC00000070704165;
      }

      if (*(v17 + v18))
      {
        v21 = v19;
      }

      else
      {
        v21 = 0xD000000000000011;
      }

      if (*(v17 + v18))
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x80000001AC7B4810;
      }

      v83 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_1AC6310CC(v23 > 1, v24 + 1, 1);
        v17 = v82;
        v16 = v83;
      }

      v16[2] = v24 + 1;
      v25 = &v16[2 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      ++v18;
      --v15;
    }

    while (v15);

    v6 = v73;
    a4 = v79;
  }

  if (!v16[2])
  {

    if (sub_1AC637EF8())
    {
      v16 = &unk_1F212F700;
    }

    else
    {
      v16 = &unk_1F212F730;
    }
  }

  sub_1AC6CE700(v81);
  v27 = sub_1AC6090E4(v26);
  v73 = sub_1AC6CF4BC(&unk_1F212F760, v27, v28, v29, v30, v31, v32, v33);
  v34 = a4 + 56;
  OUTLINED_FUNCTION_13_5();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;

  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (v37)
  {
LABEL_26:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = *(*(a4 + 48) + (v43 | (v40 << 6)));
    if (v44 != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60DC84(0, *(v41 + 16) + 1, 1, v41);
        v41 = v48;
      }

      v46 = *(v41 + 16);
      v45 = *(v41 + 24);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v72 = v46 + 1;
        sub_1AC60DC84(v45 > 1, v46 + 1, 1, v41);
        v47 = v72;
        v41 = v49;
      }

      *(v41 + 16) = v47;
      *(v41 + v46 + 32) = v44;
      a4 = v79;
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v39)
    {

      v72 = sub_1AC6091C8(v41);
      sub_1AC62428C(v80);
      v71 = sub_1AC6090B4(v50);
      v51 = [objc_opt_self() standardUserDefaults];
      v52 = sub_1AC79FF58();
      v53 = [v51 BOOLForKey_];

      HIDWORD(v69) = v53 ^ 1;
      v55 = v76;
      v54 = v77;
      v70 = *(v76 + 16);
      v56 = v74;
      v57 = v78;
      v70(v74, v78, v77);
      v58 = sub_1AC79F7F8();
      v59 = v75;
      __swift_storeEnumTagSinglePayload(v75, 1, 1, v58);
      v60 = type metadata accessor for TranscriberCommon.ModelOptions(0);
      __swift_storeEnumTagSinglePayload(v59 + v60[7], 1, 1, v58);
      *(v59 + v60[5]) = 0;
      v61 = (v59 + v60[6]);
      *v61 = 0;
      v61[1] = 0;
      *(v59 + v60[9]) = MEMORY[0x1E69E7CC0];
      v62 = (v59 + v60[8]);
      *v62 = 0;
      v62[1] = 0;
      *(v59 + v60[10]) = 0;
      *(v59 + v60[11]) = 0;
      *(v59 + v60[12]) = 0;
      *(v59 + v60[15]) = 0;
      *(v59 + v60[13]) = 0;
      *(v59 + v60[14]) = 0;
      __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
      type metadata accessor for TranscriberCommon(0);
      swift_allocObject();
      LOBYTE(v68) = BYTE4(v69);
      sub_1AC74B560(v56, v59, v16, 7, 0, 0, v73, v72, v71, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      v64 = v63;
      (*(v55 + 8))(v57, v54);
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common) = v64;
      v70(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale, v64 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v54);
      v65 = v81;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_modelOptions) = v82;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_transcriptionOptions) = v65;
      v66 = v80;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_reportingOptions) = v79;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_resultAttributeOptions) = v66;
      return v6;
    }

    v37 = *(v34 + 8 * v42);
    ++v40;
    if (v37)
    {
      v40 = v42;
      goto LABEL_26;
    }
  }

  __break(1u);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}