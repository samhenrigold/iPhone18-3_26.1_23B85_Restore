uint64_t sub_193503CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = 0x6E6F73616572;
  v8 = *v4;
  v9 = *(v4 + 4);
  v10 = *(v4 + 10);
  v11 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v11 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      return sub_193494798(&type metadata for CacheManagerError, &off_1F07C46E8, a4);
    }
  }

  else
  {
    v14 = sub_19349AB64();
    v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 40) = a3;
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    *(v16 + 26) = v10;
    OUTLINED_FUNCTION_23_2(v15, v16);
  }

  return result;
}

uint64_t sub_193503DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x707954726F727265;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 9);
  v10 = a1 == 0x707954726F727265 && a2 == 0xE900000000000065;
  if (v10 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v9)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v12 = sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 40) = &type metadata for CacheManagerError;
    *(v14 + 16) = v7;
    *(v14 + 24) = v8;
    *(v14 + 25) = v9;
    OUTLINED_FUNCTION_23_2(v13, v14);
  }

  return result;
}

uint64_t LLMCacheManagerTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1935091B8();
  v6 = v2[8];
  sub_1935092CC();
  v7 = v2[9];
  sub_1935093C0();
  *a1 = *sub_193509008();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3BE30, &qword_19395A0A8);
  type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_19344E6DC(a1 + v7, &qword_1EAE3BE38, &qword_19395A0B0);
  type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t static LLMCacheManagerTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v65 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v66 = v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE40, &qword_19395A1C0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v69 = v11;
  v75 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v67 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v71 = v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_53_1();
  v74 = v19;
  type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_47(v24);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE48, &qword_19395A1C8) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  v73 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v32 = *(v73 + 28);
  v33 = *(v28 + 56);
  v76 = a1;
  sub_1934486F8(a1 + v32, v31, &qword_1EAE3BE30, &qword_19395A0A8);
  v77 = a2;
  sub_1934486F8(a2 + v32, &v31[v33], &qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_31(v31);
  if (v34)
  {
    OUTLINED_FUNCTION_31(&v31[v33]);
    if (v34)
    {
      sub_19344E6DC(v31, &qword_1EAE3BE30, &qword_19395A0A8);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1934486F8(v31, v27, &qword_1EAE3BE30, &qword_19395A0A8);
    OUTLINED_FUNCTION_31(&v31[v33]);
    if (!v34)
    {
      OUTLINED_FUNCTION_9_37();
      sub_193505174(&v31[v33], v23, v38);
      OUTLINED_FUNCTION_8_27();
      sub_193505418(v39, v40, &protocol conformance descriptor for CacheManagerTelemetryEventMetadata);
      v41 = sub_19393C550();
      sub_193503150(v23, &qword_19395A0A8);
      sub_193503150(v27, &qword_19395A0A8);
      sub_19344E6DC(v31, &qword_1EAE3BE30, &qword_19395A0A8);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

LABEL_11:
      v42 = v73;
      v43 = *(v73 + 32);
      v44 = *(v72 + 48);
      v45 = v76;
      v46 = v74;
      sub_1934486F8(v76 + v43, v74, &qword_1EAE3B498, &unk_193959120);
      v47 = v77;
      sub_1934486F8(v77 + v43, v46 + v44, &qword_1EAE3B498, &unk_193959120);
      if (__swift_getEnumTagSinglePayload(v46, 1, v75) == 1)
      {
        OUTLINED_FUNCTION_31(v46 + v44);
        if (!v34)
        {
          goto LABEL_18;
        }

        sub_19344E6DC(v46, &qword_1EAE3B498, &unk_193959120);
      }

      else
      {
        v48 = v71;
        sub_1934486F8(v46, v71, &qword_1EAE3B498, &unk_193959120);
        OUTLINED_FUNCTION_31(v46 + v44);
        if (v34)
        {
          sub_193503150(v48, type metadata accessor for MonotonicTimestamp);
LABEL_18:
          v35 = &qword_1EAE3B958;
          v36 = &qword_193957B50;
          v37 = v46;
          goto LABEL_28;
        }

        v49 = v67;
        sub_193505174(v46 + v44, v67, type metadata accessor for MonotonicTimestamp);
        OUTLINED_FUNCTION_6_23();
        sub_193505418(v50, v51, &protocol conformance descriptor for MonotonicTimestamp);
        v52 = sub_19393C550();
        sub_193503150(v49, type metadata accessor for MonotonicTimestamp);
        sub_193503150(v48, type metadata accessor for MonotonicTimestamp);
        sub_19344E6DC(v46, &qword_1EAE3B498, &unk_193959120);
        if ((v52 & 1) == 0)
        {
          return 0;
        }
      }

      v53 = *(v42 + 36);
      v54 = v69;
      v55 = *(v68 + 48);
      sub_1934486F8(v45 + v53, v69, &qword_1EAE3BE38, &qword_19395A0B0);
      sub_1934486F8(v47 + v53, v54 + v55, &qword_1EAE3BE38, &qword_19395A0B0);
      if (__swift_getEnumTagSinglePayload(v54, 1, v70) == 1)
      {
        OUTLINED_FUNCTION_31(v54 + v55);
        if (!v34)
        {
          goto LABEL_27;
        }

        sub_19344E6DC(v54, &qword_1EAE3BE38, &qword_19395A0B0);
      }

      else
      {
        v56 = v66;
        sub_1934486F8(v54, v66, &qword_1EAE3BE38, &qword_19395A0B0);
        OUTLINED_FUNCTION_31(v54 + v55);
        if (v34)
        {
          OUTLINED_FUNCTION_1_32();
          sub_193503150(v56, v57);
LABEL_27:
          v35 = &qword_1EAE3BE40;
          v36 = &qword_19395A1C0;
          v37 = v54;
          goto LABEL_28;
        }

        v59 = v54 + v55;
        v60 = v65;
        sub_193505174(v59, v65, type metadata accessor for CacheManagerTarget);
        OUTLINED_FUNCTION_10_20();
        sub_193505418(v61, v62, &protocol conformance descriptor for CacheManagerTarget);
        v63 = sub_19393C550();
        sub_193503150(v60, type metadata accessor for CacheManagerTarget);
        sub_193503150(v56, type metadata accessor for CacheManagerTarget);
        sub_19344E6DC(v54, &qword_1EAE3BE38, &qword_19395A0B0);
        if ((v63 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    sub_193503150(v27, type metadata accessor for CacheManagerTelemetryEventMetadata);
  }

  v35 = &qword_1EAE3BE48;
  v36 = &qword_19395A1C8;
  v37 = v31;
LABEL_28:
  sub_19344E6DC(v37, v35, v36);
  return 0;
}

uint64_t LLMCacheManagerTelemetry.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v46 = type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v43 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v45 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v42 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_47(v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  v26 = type metadata accessor for LLMCacheManagerTelemetry(0);
  sub_1934486F8(v2 + v26[7], v25, &qword_1EAE3BE30, &qword_19395A0A8);
  if (__swift_getEnumTagSinglePayload(v25, 1, v17) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_9_37();
    sub_193505174(v25, v21, v27);
    sub_19393CAD0();
    OUTLINED_FUNCTION_8_27();
    sub_193505418(v28, v29, &protocol conformance descriptor for CacheManagerTelemetryEventMetadata);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v30 = OUTLINED_FUNCTION_24_1();
    sub_193503150(v30, v31);
  }

  sub_1934486F8(v2 + v26[8], v16, &qword_1EAE3B498, &unk_193959120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v45);
  v33 = v46;
  if (EnumTagSinglePayload == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v34 = v42;
    sub_193505174(v16, v42, type metadata accessor for MonotonicTimestamp);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_23();
    sub_193505418(v35, v36, &protocol conformance descriptor for MonotonicTimestamp);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193503150(v34, type metadata accessor for MonotonicTimestamp);
  }

  sub_1934486F8(v2 + v26[9], v9, &qword_1EAE3BE38, &qword_19395A0B0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v33) == 1)
  {
    return sub_19393CAD0();
  }

  v38 = v43;
  sub_193505174(v9, v43, type metadata accessor for CacheManagerTarget);
  sub_19393CAD0();
  OUTLINED_FUNCTION_10_20();
  sub_193505418(v39, v40, &protocol conformance descriptor for CacheManagerTarget);
  OUTLINED_FUNCTION_21_1();
  sub_19393C540();
  return sub_193503150(v38, type metadata accessor for CacheManagerTarget);
}

uint64_t static CacheManagerTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheManagerRequestInvocation(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - v9;
  v11 = type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_4_1();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v42 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE70, &qword_19395A1D0);
  OUTLINED_FUNCTION_47(v21);
  OUTLINED_FUNCTION_3_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v42 - v24;
  v26 = v42 + *(v23 + 56) - v24;
  sub_193504ED4(a1, v42 - v24);
  sub_193504ED4(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_193504ED4(v25, v18);
      OUTLINED_FUNCTION_24_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *(v18 + 4);
        v29 = v18[10];
        v30 = *v26;
        v31 = *(v26 + 4);
        v32 = v26[10];
        *&v44[0] = *v18;
        BYTE10(v44[0]) = v29;
        WORD4(v44[0]) = v28;
        *&v42[0] = v30;
        BYTE10(v42[0]) = v32;
        WORD4(v42[0]) = v31;
        v33 = static CacheManagerInsert.== infix(_:_:)(v44, v42);
LABEL_9:
        v38 = v33;
LABEL_12:
        OUTLINED_FUNCTION_1_32();
        sub_193503150(v25, v40);
        return v38 & 1;
      }
    }

    else
    {
      sub_193504ED4(v25, v15);
      OUTLINED_FUNCTION_24_1();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = v15[48];
        v35 = v26[48];
        v36 = *(v15 + 1);
        v44[0] = *v15;
        v44[1] = v36;
        v44[2] = *(v15 + 2);
        v45 = v34;
        v37 = *(v26 + 1);
        v42[0] = *v26;
        v42[1] = v37;
        v42[2] = *(v26 + 2);
        v43 = v35;
        v33 = static CacheManagerSearch.== infix(_:_:)(v44, v42);
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_193504ED4(v25, v20);
    OUTLINED_FUNCTION_24_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_7_24();
      sub_193505174(v20, v10, v39);
      sub_193505174(v26, v8, v11);
      v38 = static CacheManagerRequestInvocation.== infix(_:_:)(v10, v8);
      sub_193503150(v8, v11);
      sub_193503150(v10, v11);
      goto LABEL_12;
    }

    sub_193503150(v20, type metadata accessor for CacheManagerRequestInvocation);
  }

  sub_19344E6DC(v25, &qword_1EAE3BE70, &qword_19395A1D0);
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_193504ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheManagerTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static CacheManagerInsert.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 10);
  v3 = *a2;
  v4 = *(a2 + 4) | (*(a2 + 10) << 16);
  if (!(v2 >> 6))
  {
    if (v4 < 0x400000)
    {
      OUTLINED_FUNCTION_23_19();
      v7 = static CacheManagerInsert.Started.== infix(_:_:)(v8, v9);
      return v7 & 1;
    }

LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if ((v4 & 0xC00000) == 0x800000)
    {
      v10 = *(a1 + 4) | (*(a1 + 10) << 16);
      v15 = *a1;
      v16 = v10;
      v17 = BYTE2(v10) & 1;
      v12 = v3;
      v13 = v4;
      v14 = BYTE2(v4) & 1;
      v7 = static CacheManagerInsert.Failed.== infix(_:_:)(&v15, &v12);
      return v7 & 1;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xC00000) != 0x400000)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_23_19();
  v7 = static CacheManagerInsert.Ended.== infix(_:_:)(v5, v6);
  return v7 & 1;
}

uint64_t static CacheManagerSearch.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = *(a2 + 48);
  if (!(v3 >> 6))
  {
    if (v5 < 0x40)
    {
      LOBYTE(v26) = *a1;
      LOBYTE(v18) = v4;
      v16 = static CacheManagerSearch.Started.== infix(_:_:)(&v26, &v18);
      return v16 & 1;
    }

LABEL_9:
    v16 = 0;
    return v16 & 1;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v3 >> 6 != 1)
  {
    if ((v5 & 0xC0) == 0x80)
    {
      v26 = *a1;
      v27 = v6;
      v28 = BYTE2(v6) & 1;
      OUTLINED_FUNCTION_19_21();
      v16 = static CacheManagerSearch.Failed.== infix(_:_:)(&v26, &v18);
      return v16 & 1;
    }

    goto LABEL_9;
  }

  v8 = a1[3];
  v9 = a1[5];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v14 = *(a1 + 8);
  v15 = *(a1 + 4);
  v42 = BYTE1(v6) & 1;
  v41 = v15 & 1;
  v40 = v14 & 1;
  v39 = v3 & 1;
  if ((v5 & 0xC0) != 0x40)
  {
    goto LABEL_9;
  }

  v38 = BYTE1(v7) & 1;
  v37 = v10 & 1;
  v36 = v13 & 1;
  v35 = v5 & 1;
  v26 = v2;
  LOBYTE(v27) = v6;
  HIBYTE(v27) = v42;
  v29 = HIDWORD(v6);
  v30 = v41;
  v31 = v8;
  v32 = v40;
  v33 = v9;
  v34 = v39;
  v18 = v4;
  v19 = v7 & 0x1FF;
  v20 = HIDWORD(v7);
  v21 = v10 & 1;
  v22 = v11;
  v23 = v13 & 1;
  v24 = v12;
  v25 = v5 & 1;
  v16 = static CacheManagerSearch.Ended.== infix(_:_:)(&v26, &v18);
  return v16 & 1;
}

uint64_t sub_193505174(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t CacheManagerTarget.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for CacheManagerRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  sub_193504ED4(v2, v9 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1935053C4();
    }

    else
    {
      sub_193505370();
    }

    return sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    sub_193505174(v10, v6, v12);
    sub_193505418(&qword_1EAE3BE88, type metadata accessor for CacheManagerRequestInvocation, &protocol conformance descriptor for CacheManagerRequestInvocation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_193503150(v6, v2);
  }
}

unint64_t sub_193505370()
{
  result = qword_1EAE3BE78;
  if (!qword_1EAE3BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE78);
  }

  return result;
}

unint64_t sub_1935053C4()
{
  result = qword_1EAE3BE80;
  if (!qword_1EAE3BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE80);
  }

  return result;
}

uint64_t sub_193505418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void CacheManagerRequestInvocation.CacheManagerNamespace.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static CacheManagerRequestInvocation.CacheManagerNamespace.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3BEE8, &qword_19395A2F8);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE3BEE8, &qword_19395A2F8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v15, v2 + 2, 1, v16, &qword_1EAE3BEE8, &qword_19395A2F8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v17, v2 + 3, 1, v18, &qword_1EAE3BEE8, &qword_19395A2F8);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v19, v2 + 4, 1, v20, &qword_1EAE3BEE8, &qword_19395A2F8);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

unint64_t CacheManagerRequestInvocation.CacheManagerNamespace.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x72656E6E616C50;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726574756F524C4ELL;
  }
}

void CacheManagerRequestInvocation.CacheManagerNamespace.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x726574756F524C4ELL ? (v5 = v0 == 0xE800000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x726574756F524C4ELL, 0xE800000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x72656E6E616C50 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x72656E6E616C50, 0xE700000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else if (v1 == 0xD000000000000012 && 0x8000000193A19520 == v0)
    {

      v6 = 2;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A19520);

      v6 = 2;
      if ((v9 & 1) == 0)
      {
        v6 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

uint64_t CacheManagerInsert.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 10);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      sub_193505DD4();
    }

    else
    {
      sub_193505D80();
    }
  }

  else
  {
    sub_193505E28();
  }

  return sub_19393C540();
}

uint64_t CacheManagerSearch.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      sub_193505ED0();
    }

    else
    {
      OUTLINED_FUNCTION_19_21();
      sub_193505E7C();
    }
  }

  else
  {
    sub_193505F24();
  }

  return sub_19393C540();
}

uint64_t CacheManagerSearch.CacheManagerSearchStrategy.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0xD000000000000010;
  }

  return 0x74614D7463617845;
}

void CacheManagerSearch.CacheManagerSearchStrategy.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x74614D7463617845 ? (v5 = v0 == 0xEA00000000006863) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x74614D7463617845, 0xEA00000000006863) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0xD000000000000010 && 0x8000000193A19540 == v0)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A19540);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void CacheManagerError.ErrorType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t CacheManagerError.ErrorType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *sub_193505B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v6 + 3;
  v12 = &v4[16 * v10];
  *(v12 + 4) = 1;
  v12[40] = 1;
  return v4;
}

uint64_t CacheManagerError.ErrorType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6C616E7265746E49;
  }

  return 0x4964696C61766E49;
}

void CacheManagerError.ErrorType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x4964696C61766E49 ? (v5 = v0 == 0xE900000000000064) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x4964696C61766E49, 0xE900000000000064) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x6C616E7265746E49 && v0 == 0xEF6572756C696146)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x6C616E7265746E49, 0xEF6572756C696146);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

unint64_t sub_193505D80()
{
  result = qword_1EAE3BE90;
  if (!qword_1EAE3BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE90);
  }

  return result;
}

unint64_t sub_193505DD4()
{
  result = qword_1EAE3BE98;
  if (!qword_1EAE3BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE98);
  }

  return result;
}

unint64_t sub_193505E28()
{
  result = qword_1EAE3BEA0;
  if (!qword_1EAE3BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEA0);
  }

  return result;
}

unint64_t sub_193505E7C()
{
  result = qword_1EAE3BEA8;
  if (!qword_1EAE3BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEA8);
  }

  return result;
}

unint64_t sub_193505ED0()
{
  result = qword_1EAE3BEB0;
  if (!qword_1EAE3BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEB0);
  }

  return result;
}

unint64_t sub_193505F24()
{
  result = qword_1EAE3BEB8;
  if (!qword_1EAE3BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEB8);
  }

  return result;
}

unint64_t sub_193505F7C()
{
  result = qword_1EAE3BEC0;
  if (!qword_1EAE3BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEC0);
  }

  return result;
}

unint64_t sub_193505FD4()
{
  result = qword_1EAE3BEC8;
  if (!qword_1EAE3BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEC8);
  }

  return result;
}

unint64_t sub_19350602C()
{
  result = qword_1EAE3BED0;
  if (!qword_1EAE3BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BED0);
  }

  return result;
}

void sub_193506088()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA9200);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("eventMetadata");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "monotonicTimestamp");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "target");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935061DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        type metadata accessor for LLMCacheManagerTelemetry(0);
        type metadata accessor for CacheManagerTarget(0);
        OUTLINED_FUNCTION_36_3();
LABEL_10:
        sub_193498018();
        break;
      case 2:
        type metadata accessor for LLMCacheManagerTelemetry(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_36_3();
        goto LABEL_10;
      case 1:
        type metadata accessor for LLMCacheManagerTelemetry(0);
        type metadata accessor for CacheManagerTelemetryEventMetadata(0);
        OUTLINED_FUNCTION_36_3();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935062BC()
{
  OUTLINED_FUNCTION_46_5();
  sub_193506310();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_193506430();
    OUTLINED_FUNCTION_46_5();
    sub_193506550();
  }
}

void sub_193506310()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_35_10();
  type metadata accessor for CacheManagerTelemetryEventMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v8 = OUTLINED_FUNCTION_14_5();
  v9 = type metadata accessor for LLMCacheManagerTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BE30, &qword_19395A0A8);
  }

  else
  {
    OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_17(v1, 1);
    sub_193508F34(v1, type metadata accessor for CacheManagerTelemetryEventMetadata);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193506430()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_35_10();
  type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v8 = OUTLINED_FUNCTION_14_5();
  v9 = type metadata accessor for LLMCacheManagerTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 32));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_17(v1, 2);
    sub_193508F34(v1, type metadata accessor for MonotonicTimestamp);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193506550()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_35_10();
  type metadata accessor for CacheManagerTarget(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v8 = OUTLINED_FUNCTION_14_5();
  v9 = type metadata accessor for LLMCacheManagerTelemetry(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 36));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BE38, &qword_19395A0B0);
  }

  else
  {
    OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_17(v1, 3);
    OUTLINED_FUNCTION_4_23();
    sub_193508F34(v1, v11);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935066C4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9218);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_30_3();
  v1 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("rowId");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "cacheManagerId");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193506804()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v4 = v1 + *(type metadata accessor for CacheManagerTelemetryEventMetadata(0) + 20);
LABEL_8:
      sub_193497890(v4);
    }

    else if (result == 1)
    {
      v4 = v1;
      goto LABEL_8;
    }
  }
}

void sub_193506888()
{
  OUTLINED_FUNCTION_46_5();
  sub_193507528();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_1935068D0();
  }
}

void sub_1935068D0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  v11 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  sub_1934486F8(v3 + *(v11 + 20), v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_78_0();
    v13(v12);
    OUTLINED_FUNCTION_116_0(v2, 2);
    v14 = OUTLINED_FUNCTION_86_0();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193506A84()
{
  CacheManagerRequestInvocation.init()();
  type metadata accessor for CacheManagerTarget(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_193506ACC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9230);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("invocation");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_29_1();
  *v6 = "insertContext";
  *(v6 + 8) = 13;
  *(v6 + 16) = v0;
  v4();
  v7 = OUTLINED_FUNCTION_13_12();
  *v7 = "searchContext";
  *(v7 + 1) = 13;
  v7[16] = v0;
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193506C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v16 = type metadata accessor for CacheManagerRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BFC0, &qword_19395A320);
  v19 = OUTLINED_FUNCTION_47(v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v41[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41[-v23];
  v42 = xmmword_19395A300;
  while (1)
  {
    v25 = OUTLINED_FUNCTION_124();
    if (v13 || (v26 & 1) != 0)
    {
      break;
    }

    switch(v25)
    {
      case 3:
        v43 = v42;
        v44 = 0x3FFFEuLL;
        v45 = 0uLL;
        LOBYTE(v46) = 0;
        sub_193498018();
        OUTLINED_FUNCTION_4_23();
        sub_193508F34(v14, v31);
        v32 = *(&v43 + 1);
        v33 = v43;
        v34 = v44;
        v35 = v45;
        v36 = v46;
        if ((~DWORD2(v43) & 0xFFFE0000) == 0)
        {
          v37 = (v44 & 0xFFFFFFFFFFFFFFFELL) != 0x3FFFE || v45 > 1;
          if (!v37 && v46 <= 1u)
          {
            CacheManagerSearch.Started.init()();
            v32 = 0;
            v36 = 0;
            v33 = a13;
            v34 = 0uLL;
            v35 = 0uLL;
          }
        }

        *v14 = v33;
        *(v14 + 8) = v32;
        *(v14 + 16) = v34;
        *(v14 + 32) = v35;
        *(v14 + 48) = v36;
        type metadata accessor for CacheManagerTarget(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        *&v43 = 0;
        BYTE10(v43) = -2;
        WORD4(v43) = 0;
        sub_193498018();
        OUTLINED_FUNCTION_4_23();
        sub_193508F34(v14, v28);
        v29 = WORD4(v43) | (BYTE10(v43) << 16);
        if (v29 < 0xFE0000)
        {
          v30 = v43;
        }

        else
        {
          CacheManagerInsert.Started.init()();
          v29 = 0;
          v30 = a13;
        }

        *v14 = v30;
        *(v14 + 8) = v29;
        *(v14 + 10) = BYTE2(v29);
        type metadata accessor for CacheManagerTarget(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        __swift_storeEnumTagSinglePayload(v24, 1, 1, v16);
        sub_193498018();
        OUTLINED_FUNCTION_4_23();
        sub_193508F34(v14, v27);
        sub_1934486F8(v24, v22, &qword_1EAE3BFC0, &qword_19395A320);
        if (__swift_getEnumTagSinglePayload(v22, 1, v16) == 1)
        {
          CacheManagerRequestInvocation.init()();
          sub_19344E6DC(v24, &qword_1EAE3BFC0, &qword_19395A320);
          if (__swift_getEnumTagSinglePayload(v22, 1, v16) != 1)
          {
            sub_19344E6DC(v22, &qword_1EAE3BFC0, &qword_19395A320);
          }
        }

        else
        {
          sub_19344E6DC(v24, &qword_1EAE3BFC0, &qword_19395A320);
          OUTLINED_FUNCTION_15_25();
          sub_193508ED4(v22, v15, v39);
        }

        OUTLINED_FUNCTION_15_25();
        sub_193508ED4(v15, v14, v40);
        type metadata accessor for CacheManagerTarget(0);
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::CacheManagerInsert::Started sub_193507004@<W0>(uint64_t a1@<X8>)
{
  result.exists.value = CacheManagerInsert.Started.init()().exists.value;
  *a1 = v3;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0;
  return result;
}

double sub_193507044@<D0>(uint64_t a1@<X8>)
{
  CacheManagerSearch.Started.init()();
  *a1 = v3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

void sub_19350708C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_0();
  type metadata accessor for CacheManagerRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v4 = OUTLINED_FUNCTION_35_10();
  type metadata accessor for CacheManagerTarget(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  sub_193504ED4(v0, v2);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_193447600();
  }

  else
  {
    OUTLINED_FUNCTION_15_25();
    sub_193508ED4(v2, v1, v6);
    sub_193447600();
    sub_193508F34(v1, type metadata accessor for CacheManagerRequestInvocation);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193507290()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9248);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_30_3();
  v1 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("clientTraceId");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "namespace");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935073D0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      type metadata accessor for CacheManagerRequestInvocation(0);
      OUTLINED_FUNCTION_28_7();
      sub_1934982A8();
    }

    else if (v2 == 1)
    {
      sub_193497890(v1);
    }
  }
}

void sub_193507474()
{
  OUTLINED_FUNCTION_22_0();
  sub_193507528();
  if (!v1)
  {
    v4 = (v0 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20));
    if ((*(v4 + 9) & 1) == 0)
    {
      v5 = *(v4 + 8);
      v6 = *v4;
      v7 = v5 & 1;
      sub_193447324(&v6, 2, v3, &type metadata for CacheManagerRequestInvocation.CacheManagerNamespace, v2, &off_1F07C47B8);
    }
  }
}

void sub_193507528()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  sub_1934486F8(v3, v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v2, 1);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935076D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9260);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_30_3();
  v5 = v4 & ~v3;
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_19394FBC0;
  v7 = v6 + v5 + dword_1EAEA9298;
  *(v6 + v5) = 0;
  *v7 = "Unknown";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_3_1(v6 + v5 + v2);
  OUTLINED_FUNCTION_69_6(v10);
  *v11 = "NLRouter";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v2);
  *v13 = 2;
  *v12 = "Planner";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v2);
  *v15 = 3;
  *v14 = "ResponseGeneration";
  *(v14 + 8) = 18;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935078D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9278);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("started");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193507A24()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        v13 = 0;
        v14 = 0x1000000;
        sub_193498018();
        if ((v14 & 0x1000000) != 0)
        {
          v6 = &v10;
          CacheManagerInsert.Failed.init()(&v10);
          v7 = v11;
          v8 = v12;
        }

        else
        {
          v7 = v14;
          v8 = BYTE2(v14) & 1;
          v6 = &v13;
        }

        if (v8)
        {
          v9 = 0x10000;
        }

        else
        {
          v9 = 0;
        }

        *v1 = *v6;
        *(v1 + 8) = v7;
        *(v1 + 10) = (v9 | 0x800000u) >> 16;
        break;
      case 2:
        LOBYTE(v13) = 3;
        sub_193498018();
        v5 = v13;
        if (v13 == 3)
        {
          CacheManagerInsert.Ended.init()();
          v5 = v10;
        }

        *v1 = v5;
        *(v1 + 10) = 64;
        *(v1 + 8) = 0;
        break;
      case 1:
        LOBYTE(v13) = 3;
        OUTLINED_FUNCTION_28_7();
        sub_193498018();
        v4 = v13;
        if (v13 == 3)
        {
          CacheManagerInsert.Started.init()();
          v4 = v10;
        }

        *v1 = v4;
        *(v1 + 10) = 0;
        *(v1 + 8) = 0;
        break;
    }
  }
}

uint64_t sub_193507D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 2)
  {
    return sub_19393C2E0();
  }

  return result;
}

void sub_193507E78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA92D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("started");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193507FCC()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        *&v17 = 0;
        DWORD2(v17) = 0x1000000;
        sub_193498018();
        if (BYTE11(v17))
        {
          v5 = v14;
          CacheManagerSearch.Failed.init()(v14);
          v6 = *&v14[8];
          v7 = v14[10];
        }

        else
        {
          v6 = WORD4(v17);
          v7 = BYTE10(v17) & 1;
          v5 = &v17;
        }

        v12 = v7 == 0;
        v13 = 0x10000;
        if (v12)
        {
          v13 = 0;
        }

        *v1 = *v5;
        *(v1 + 8) = v13 | v6;
        *(v1 + 16) = 0u;
        *(v1 + 32) = 0u;
        *(v1 + 48) = 0x80;
        break;
      case 2:
        v21 = 1;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 256;
        sub_193498018();
        if ((v20 & 0x100) != 0)
        {
          CacheManagerSearch.Ended.init()(v14);
        }

        else
        {
          *v14 = v17;
          *&v14[16] = v18;
          v15 = v19;
          v16 = v20;
        }

        v8 = *&v14[24];
        v9 = *(&v15 + 1);
        v10 = v15 & 1;
        v11 = v16 & 1 | 0x40;
        *v1 = *v14;
        *(v1 + 8) = vandq_s8(*&v14[8], xmmword_19395A310);
        *(v1 + 24) = v8;
        *(v1 + 32) = v10;
        *(v1 + 40) = v9;
        *(v1 + 48) = v11;
        break;
      case 1:
        LOBYTE(v17) = 3;
        OUTLINED_FUNCTION_28_7();
        sub_193498018();
        v4 = v17;
        if (v17 == 3)
        {
          CacheManagerSearch.Started.init()();
          v4 = v14[0];
        }

        *v1 = v4;
        *(v1 + 8) = 0u;
        *(v1 + 24) = 0u;
        *(v1 + 33) = 0u;
        break;
    }
  }
}

void sub_193508368()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA92F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  v7(v8);
  OUTLINED_FUNCTION_3_1(v0 + v4);
  OUTLINED_FUNCTION_69_6(v9);
  v11 = OUTLINED_FUNCTION_48(v10, "ExactMatch");
  v7(v11);
  v12 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v13 = v1;
  v14 = OUTLINED_FUNCTION_48(v12, "ApproximateMatch");
  v7(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193508510()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_193508598()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9320);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_30_3();
  v5 = v4 & ~v3;
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_19394FBC0;
  v7 = v6 + v5 + dword_1EAEA9358;
  *(v6 + v5) = 1;
  *v7 = "searchStrategy";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_29_1();
  *v10 = "resultCount";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v11 = OUTLINED_FUNCTION_13_12();
  *v11 = "highestMatchScore";
  *(v11 + 1) = 17;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v2);
  *v13 = 4;
  *v12 = "lowestMatchScore";
  *(v12 + 8) = 16;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193508760()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_27_5();
        sub_1934982A8();
        break;
      case 2:
        sub_19393C170();
        break;
      case 3:
      case 4:
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193508820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  if ((*(v3 + 9) & 1) == 0)
  {
    v9 = *v3;
    v10 = *(v3 + 8);
    result = sub_193447324(&v9, 1, a2, &type metadata for CacheManagerSearch.CacheManagerSearchStrategy, a3, &off_1F07C48D0);
  }

  if (!v4)
  {
    if ((v5 & 1) == 0)
    {
      result = sub_19393C350();
    }

    if ((v6 & 1) == 0)
    {
      result = sub_19393C3B0();
    }

    if ((v7 & 1) == 0)
    {
      return sub_19393C3B0();
    }
  }

  return result;
}

void sub_1935089A4()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_27_5();
      sub_193498018();
    }
  }
}

void sub_193508A08()
{
  if ((*(v0 + 10) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    sub_193447600();
  }
}

uint64_t sub_193508AB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19394FAC0;
  v11 = v10 + v9 + v8[14];
  OUTLINED_FUNCTION_69_6((v10 + v9));
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v13 + 104))(v11, v12);
  return sub_19393C410();
}

void sub_193508C18()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1934982A8();
    }
  }
}

uint64_t sub_193508C7C()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    v1 = *(v0 + 8);
    v6 = v2;
    v7 = v1 & 1;
    return sub_193447324(&v6, 1, v3, &type metadata for CacheManagerError.ErrorType, v4, &off_1F07C49B8);
  }

  return result;
}

void sub_193508D40()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9368);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  v7(v8);
  OUTLINED_FUNCTION_3_1(v0 + v4);
  OUTLINED_FUNCTION_69_6(v9);
  v11 = OUTLINED_FUNCTION_48(v10, "InvalidId");
  v7(v11);
  v12 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v13 = v1;
  v14 = OUTLINED_FUNCTION_48(v12, "InternalFailure");
  v7(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193508ED4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193508F34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return sub_193508ED4(v1, v2, v0);
}

uint64_t sub_193509014()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE00();
  v0 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t LLMCacheManagerTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t LLMCacheManagerTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t LLMCacheManagerTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t LLMCacheManagerTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935091B8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for CacheManagerTelemetryEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t LLMCacheManagerTelemetry.eventMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 28), &qword_1EAE3BE30, &qword_19395A0A8);
}

uint64_t LLMCacheManagerTelemetry.eventMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 28), &qword_1EAE3BE30, &qword_19395A0A8);
}

uint64_t LLMCacheManagerTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935092CC()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for MonotonicTimestamp(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t LLMCacheManagerTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t LLMCacheManagerTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t LLMCacheManagerTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935093C0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for CacheManagerTarget(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t LLMCacheManagerTelemetry.target.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 36), &qword_1EAE3BE38, &qword_19395A0B0);
}

uint64_t LLMCacheManagerTelemetry.target.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 36), &qword_1EAE3BE38, &qword_19395A0B0);
}

uint64_t LLMCacheManagerTelemetry.target.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t CacheManagerTelemetryEventMetadata.cacheManagerId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for CacheManagerTelemetryEventMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t CacheManagerTelemetryEventMetadata.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = *(type metadata accessor for CacheManagerTelemetryEventMetadata(0) + 20);
  v6 = OUTLINED_FUNCTION_42_13();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v10 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
  sub_19344E6DC(v0 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  v13 = OUTLINED_FUNCTION_42_13();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

BOOL static CacheManagerTelemetryEventMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_4();
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v50 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v47 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v46 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - v23;
  v25 = *(v22 + 48);
  v48 = v2;
  sub_193448804(v2, &v45 - v23, &qword_1EAE3AA88, &qword_19394F9C0);
  v49 = a2;
  sub_193448804(a2, &v24[v25], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v24);
  if (v26)
  {
    OUTLINED_FUNCTION_31(&v24[v25]);
    if (v26)
    {
      sub_19344E6DC(v24, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_11;
    }

LABEL_9:
    v27 = v24;
LABEL_20:
    sub_19344E6DC(v27, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  sub_193448804(v24, v15, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(&v24[v25]);
  if (v26)
  {
    (*(v50 + 8))(v15, v4);
    goto LABEL_9;
  }

  v28 = v50;
  (*(v50 + 32))(v47, &v24[v25], v4);
  OUTLINED_FUNCTION_0_34();
  sub_193509E00(v29, v30, MEMORY[0x1E69695C8]);
  v31 = sub_19393C550();
  v32 = *(v28 + 8);
  v33 = OUTLINED_FUNCTION_13_0();
  v32(v33);
  (v32)(v15, v4);
  sub_19344E6DC(v24, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v34 = *(type metadata accessor for CacheManagerTelemetryEventMetadata(0) + 20);
  v35 = *(v16 + 48);
  sub_193448804(v48 + v34, v20, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_193448804(v49 + v34, v20 + v35, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v20);
  if (v26)
  {
    OUTLINED_FUNCTION_31(v20 + v35);
    if (v26)
    {
      sub_19344E6DC(v20, &qword_1EAE3AA88, &qword_19394F9C0);
      return 1;
    }

    goto LABEL_19;
  }

  v36 = v46;
  sub_193448804(v20, v46, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v20 + v35);
  if (v37)
  {
    (*(v50 + 8))(v36, v4);
LABEL_19:
    v27 = v20;
    goto LABEL_20;
  }

  v39 = v50;
  (*(v50 + 32))(v47, v20 + v35, v4);
  OUTLINED_FUNCTION_0_34();
  sub_193509E00(v40, v41, MEMORY[0x1E69695C8]);
  v42 = sub_19393C550();
  v43 = *(v39 + 8);
  v44 = OUTLINED_FUNCTION_13_0();
  v43(v44);
  (v43)(v36, v4);
  sub_19344E6DC(v20, &qword_1EAE3AA88, &qword_19394F9C0);
  return (v42 & 1) != 0;
}

uint64_t CacheManagerTelemetryEventMetadata.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  sub_193448804(v1, &v25 - v15, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v8, v16, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_34();
    v19 = sub_193509E00(v17, v18, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_33(v19);
    (*(v4 + 8))(v8, v2);
  }

  v20 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  sub_193448804(v1 + *(v20 + 20), v13, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  (*(v4 + 32))(v8, v13, v2);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_34();
  v24 = sub_193509E00(v22, v23, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_33(v24);
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_193509E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CacheManagerRequestInvocation.namespace.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for CacheManagerRequestInvocation(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t CacheManagerRequestInvocation.namespace.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for CacheManagerRequestInvocation(0);
  v6 = v1 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t CacheManagerRequestInvocation.namespace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for CacheManagerRequestInvocation(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t CacheManagerRequestInvocation.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = v0 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v6 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_19350A0B8@<X0>(uint64_t *a1@<X8>)
{
  result = CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19350A0E0@<X0>(char **a1@<X8>)
{
  result = static CacheManagerRequestInvocation.CacheManagerNamespace.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19350A13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19350A1CC()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_19350A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t static CacheManagerRequestInvocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v16 = OUTLINED_FUNCTION_47(v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = *(v17 + 56);
  sub_193448804(a1, &v36 - v18, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_193448804(a2, &v19[v20], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v19);
  if (!v21)
  {
    sub_193448804(v19, v14, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_31(&v19[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v19[v20], v4);
      OUTLINED_FUNCTION_0_34();
      sub_193509E00(v23, v24, MEMORY[0x1E69695C8]);
      v25 = sub_19393C550();
      v26 = *(v6 + 8);
      v26(v10, v4);
      v26(v14, v4);
      sub_19344E6DC(v19, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_19344E6DC(v19, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v19[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v19, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_13:
  v27 = *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 9);
  v30 = (a2 + v27);
  if (v29)
  {
    if (*(v30 + 9))
    {
      return 1;
    }
  }

  else if ((*(v30 + 9) & 1) == 0)
  {
    v31 = *v28;
    v32 = *(v28 + 8);
    v33 = *v30;
    v34 = *(v30 + 8);
    v38 = v31;
    v39 = v32 & 1;
    v36 = v33;
    v37 = v34 & 1;
    v35 = CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter();
    if (v35 == CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CacheManagerRequestInvocation.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_193448804(v1, &v20 - v11, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_34();
    sub_193509E00(v13, v14, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v4 + 8))(v8, v2);
  }

  v15 = v1 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
  if (*(v15 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v17 = *(v15 + 8);
  v18 = *v15;
  OUTLINED_FUNCTION_103_0();
  v20 = v18;
  v21 = v17 & 1;
  v19 = CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter();
  return MEMORY[0x193B18030](v19);
}

uint64_t sub_19350A858(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19350A8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

BOOL static CacheManagerInsert.Ended.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void CacheManagerInsert.Failed.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t CacheManagerInsert.Failed.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

uint64_t CacheManagerInsert.hashValue.getter()
{
  OUTLINED_FUNCTION_17_15();
  sub_19393CAB0();
  CacheManagerInsert.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19350AA7C()
{
  OUTLINED_FUNCTION_17_15();
  sub_19393CAB0();
  CacheManagerInsert.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19350AAC8@<X0>(uint64_t *a1@<X8>)
{
  result = CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19350AAF0@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static CacheManagerSearch.CacheManagerSearchStrategy.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO5EndedV4hash4intoys6HasherVz_tF_0()
{
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO5EndedV9hashValueSivg_0()
{
  v1 = *v0;
  sub_19393CAB0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19350ACA8(uint64_t a1)
{
  v2 = *v1;
  sub_19393CAB0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t CacheManagerSearch.Ended.resultCount.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t CacheManagerSearch.Ended.highestMatchScore.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t CacheManagerSearch.Ended.lowestMatchScore.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void CacheManagerSearch.Ended.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

uint64_t static CacheManagerSearch.Ended.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a2 + 12);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16();
    v14 = CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter();
    if (v14 != CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter())
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v8)
    {
      v15 = v9;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v10)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v7)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v12)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CacheManagerSearch.Ended.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v9 = CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter();
    MEMORY[0x193B18030](v9);
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x193B18060](v6);
    if (!v5)
    {
      goto LABEL_8;
    }

    return OUTLINED_FUNCTION_104_0();
  }

LABEL_14:
  OUTLINED_FUNCTION_104_0();
  if (v5)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_8:
  OUTLINED_FUNCTION_103_0();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x193B18060](v7);
}

uint64_t CacheManagerSearch.Ended.hashValue.getter()
{
  sub_19393CAB0();
  CacheManagerSearch.Ended.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19350B070(uint64_t a1)
{
  sub_19393CAB0();
  CacheManagerSearch.Ended.hash(into:)();
  return sub_19393CB00();
}

BOOL _s27IntelligencePlatformLibrary18CacheManagerInsertO6FailedV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 10);
  if ((*(a1 + 10) & 1) == 0)
  {
    v3 = *a2;
    v4 = *(a2 + 4);
    v5 = *(a1 + 4);
    v9 = *a1;
    v10 = v5;
    v11 = 0;
    if (v2)
    {
      return 0;
    }

    v7 = v3;
    v8 = v4 & 0x1FF;
    return static CacheManagerError.== infix(_:_:)(&v9, &v7);
  }

  return (*(a2 + 10) & 1) != 0;
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO6FailedV4hash4intoys6HasherVz_tF_0()
{
  if (*(v0 + 10) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_103_0();
  if ((v1 & 0x100) != 0)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v2 = CacheManagerError.ErrorType.rawValue.getter();
  return MEMORY[0x193B18030](v2);
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO6FailedV9hashValueSivg_0()
{
  OUTLINED_FUNCTION_40_4();
  sub_19393CAB0();
  if (v0 == 1 || (OUTLINED_FUNCTION_32_0(), (v1 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_32_0();
    v4 = OUTLINED_FUNCTION_12_18(v2, v3);
    MEMORY[0x193B18030](v4);
  }

  return sub_19393CB00();
}

uint64_t sub_19350B224()
{
  OUTLINED_FUNCTION_40_4();
  sub_19393CAB0();
  if (v0 == 1 || (OUTLINED_FUNCTION_32_0(), (v1 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_32_0();
    v4 = OUTLINED_FUNCTION_12_18(v2, v3);
    MEMORY[0x193B18030](v4);
  }

  return sub_19393CB00();
}

uint64_t CacheManagerSearch.hashValue.getter()
{
  OUTLINED_FUNCTION_18_17();
  sub_19393CAB0();
  CacheManagerSearch.hash(into:)(v8, v0, v1, v2, v3, v4, v5, v6);
  return sub_19393CB00();
}

uint64_t sub_19350B2D4()
{
  OUTLINED_FUNCTION_18_17();
  sub_19393CAB0();
  CacheManagerSearch.hash(into:)(v8, v0, v1, v2, v3, v4, v5, v6);
  return sub_19393CB00();
}

uint64_t sub_19350B34C@<X0>(uint64_t *a1@<X8>)
{
  result = CacheManagerError.ErrorType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19350B374@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static CacheManagerError.ErrorType.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

BOOL static CacheManagerError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16();
    v2 = CacheManagerError.ErrorType.rawValue.getter();
    return v2 == CacheManagerError.ErrorType.rawValue.getter();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t CacheManagerError.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v2 = CacheManagerError.ErrorType.rawValue.getter();
  return MEMORY[0x193B18030](v2);
}

uint64_t CacheManagerError.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_32_0();
    v3 = OUTLINED_FUNCTION_12_18(v1, v2);
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_19350B598()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_32_0();
    v3 = OUTLINED_FUNCTION_12_18(v1, v2);
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

unint64_t sub_19350B700()
{
  result = qword_1EAE3BFE0;
  if (!qword_1EAE3BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BFE0);
  }

  return result;
}

unint64_t sub_19350B7A0()
{
  result = qword_1EAE3BFF0;
  if (!qword_1EAE3BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BFF0);
  }

  return result;
}

unint64_t sub_19350B7F8()
{
  result = qword_1EAE3BFF8;
  if (!qword_1EAE3BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BFF8);
  }

  return result;
}

unint64_t sub_19350B850()
{
  result = qword_1EAE3C000;
  if (!qword_1EAE3C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C000);
  }

  return result;
}

unint64_t sub_19350B8A8()
{
  result = qword_1EAE3C008;
  if (!qword_1EAE3C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C008);
  }

  return result;
}

unint64_t sub_19350B930()
{
  result = qword_1EAE3C020;
  if (!qword_1EAE3C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C020);
  }

  return result;
}

unint64_t sub_19350B988()
{
  result = qword_1EAE3C028;
  if (!qword_1EAE3C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C028);
  }

  return result;
}

unint64_t sub_19350B9E0()
{
  result = qword_1EAE3C030;
  if (!qword_1EAE3C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C030);
  }

  return result;
}

unint64_t sub_19350BA38()
{
  result = qword_1EAE3C038;
  if (!qword_1EAE3C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C038);
  }

  return result;
}

unint64_t sub_19350BA90()
{
  result = qword_1EAE3C040;
  if (!qword_1EAE3C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C040);
  }

  return result;
}

unint64_t sub_19350BB18()
{
  result = qword_1EAE3C058;
  if (!qword_1EAE3C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C058);
  }

  return result;
}

unint64_t sub_19350BB70()
{
  result = qword_1EAE3C060;
  if (!qword_1EAE3C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C060);
  }

  return result;
}

void sub_19350BBF0(uint64_t a1)
{
  OUTLINED_FUNCTION_35_11(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_35_11(v2, &qword_1ED5079C0);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_35_11(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_35_11(v6, &qword_1ED507A80);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_15_2();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_10_1();
          }
        }
      }
    }
  }
}

void sub_19350BD10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19350BD8C(uint64_t a1)
{
  OUTLINED_FUNCTION_13_13(a1, &qword_1ED508298);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_10_1();
  }
}

uint64_t sub_19350BDF0(uint64_t a1)
{
  result = type metadata accessor for CacheManagerRequestInvocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_10_1();
  }

  return result;
}

void sub_19350BE88(uint64_t a1)
{
  OUTLINED_FUNCTION_13_13(a1, &qword_1ED508298);
  if (v1 <= 0x3F)
  {
    sub_19350BF04();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

void sub_19350BF04()
{
  if (!qword_1ED506768[0])
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, qword_1ED506768);
    }
  }
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheManagerInsert(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 11))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 125);
    }

    v3 = ((*(a1 + 10) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 10) >> 1) & 0x1F))) ^ 0x7F;
    if (v3 >= 0x7D)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t storeEnumTagSinglePayload for CacheManagerInsert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 10) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheManagerInsert.Failed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheManagerInsert.Failed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
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

  *(result + 11) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CacheManagerSearch(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for CacheManagerSearch(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if ((a2 & 0x80000000) == 0 || !*(a1 + 49))
  {
    v2 = (HIWORD(*(a1 + 8)) >> 1) | (*(a1 + 16) >> 1 << 15);
    if (v2 > 0x80000000)
    {
      return OUTLINED_FUNCTION_46_4(~v2);
    }

    return OUTLINED_FUNCTION_46_4(-1);
  }

  return OUTLINED_FUNCTION_46_4(*a1 + 0x7FFFFFFF);
}

uint64_t storeEnumTagSinglePayload for CacheManagerSearch(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = 0;
      *(result + 8) = (-a2 & 0x7FFF) << 17;
      *(result + 16) = (-a2 >> 14) & 0x3FFFE;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_19350C1EC(uint64_t a1, char a2)
{
  v2 = *(a1 + 32) & 1;
  v3 = *(a1 + 48) & 1 | (a2 << 6);
  result = vandq_s8(*(a1 + 8), xmmword_19395A310);
  *(a1 + 8) = result;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary32IntelligenceFlowFeedbackLearningV21ToolCandidateCategoryVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v7);
}

_BYTE *_s27IntelligencePlatformLibrary18CacheManagerInsertO5EndedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19350C3BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19350C3D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

void sub_19350C4EC()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v5 = v4;
  v7 = *v0;
  v6 = v0[1];
  if (v2 != 0x6E69616D6F64 || v1 != 0xE600000000000000)
  {
    v9 = v1;
    v10 = *(v0 + 4);
    v11 = *(v0 + 20);
    v19 = v0[3];
    v12 = *(v0 + 32);
    OUTLINED_FUNCTION_116_4();
    if ((sub_19393CA30() & 1) == 0)
    {
      v13 = v3 == 1701080931 && v9 == 0xE400000000000000;
      if (v13 || (OUTLINED_FUNCTION_116_4(), (sub_19393CA30() & 1) != 0))
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v3 != 0x646F43726F727265 || v9 != 0xE900000000000065)
        {
          OUTLINED_FUNCTION_116_4();
          if ((sub_19393CA30() & 1) == 0)
          {
            v15 = sub_19349AB64();
            OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v15);
            v17 = v16;
            *v16 = v3;
            v16[1] = v9;
            v16[5] = &type metadata for IntelligenceFlowError;
            v18 = swift_allocObject();
            v17[2] = v18;
            *(v18 + 16) = v7;
            *(v18 + 24) = v6;
            *(v18 + 32) = v10;
            *(v18 + 36) = v11;
            *(v18 + 40) = v19;
            *(v18 + 48) = v12;
            *(v17 + 48) = 1;
            swift_willThrow();

            goto LABEL_15;
          }
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      *v5 = 0u;
      v5[1] = 0u;
      goto LABEL_15;
    }
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_19350C6D0()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_77_7();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_6();
  v11 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_28();
  v13 = v6 == v2 && v4 == 111;
  if (v13 || (OUTLINED_FUNCTION_67(v2, 111) & 1) != 0)
  {
    if (*(v0 + 32) >> 8 != 0xFFFFFFFFLL)
    {
      sub_193494798(&type metadata for IntelligenceFlowPlatformPnR.StateInfo, &off_1F07C57E0, v8);
      goto LABEL_9;
    }
  }

  else
  {
    if (v6 != OUTLINED_FUNCTION_17_12() || v4 != 100)
    {
      OUTLINED_FUNCTION_142();
      if ((OUTLINED_FUNCTION_67(v15, v16) & 1) == 0)
      {
        v21 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
        OUTLINED_FUNCTION_106_0();
        *v22 = v6;
        v22[1] = v4;
        v23 = type metadata accessor for IntelligenceFlowPlatformPnR(0);
        OUTLINED_FUNCTION_152(v23);
        OUTLINED_FUNCTION_141();
        sub_1935159EC();
        OUTLINED_FUNCTION_48_4();
        swift_willThrow();

        goto LABEL_9;
      }
    }

    type metadata accessor for IntelligenceFlowPlatformPnR(0);
    sub_19344F184();
    OUTLINED_FUNCTION_6_3(v1, 1, v11);
    if (!v13)
    {
      v17 = OUTLINED_FUNCTION_76_5();
      v18(v17);
      OUTLINED_FUNCTION_93_4();
      sub_1934948FC();
      v19 = OUTLINED_FUNCTION_93_4();
      v20(v19);
      goto LABEL_9;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_183();
}

uint64_t sub_19350CB08(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_19350CB5C()
{
  OUTLINED_FUNCTION_145_0();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_26_9();
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v27 = v0[3];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v4 == v5 && v6 == 0xE700000000000000;
  if (!v13)
  {
    OUTLINED_FUNCTION_25_14();
    v0 = v14;
    v15 = sub_19393CA30();
    v7 = v0;
    if ((v15 & 1) == 0)
    {
      if (v4 != OUTLINED_FUNCTION_34_10() || v2 != 0xE500000000000000)
      {
        OUTLINED_FUNCTION_25_14();
        if ((sub_19393CA30() & 1) == 0)
        {
          OUTLINED_FUNCTION_33_9();
          if (v13 && v2 == 0xE600000000000000)
          {
            if (v12 >> 62 != 2)
            {
              goto LABEL_24;
            }
          }

          else
          {
            OUTLINED_FUNCTION_25_14();
            if ((sub_19393CA30() & 1) == 0 || (v12 & 0xC000000000000000) != 0x8000000000000000)
            {
              goto LABEL_24;
            }
          }

          OUTLINED_FUNCTION_169_1();
          v16 = &type metadata for IntelligenceFlowPlatformPnR.Failed;
          v17 = &off_1F07C57D0;
          goto LABEL_8;
        }
      }

      if (v12 >> 62 == 1)
      {
        OUTLINED_FUNCTION_169_1();
        v16 = &type metadata for IntelligenceFlowPlatformPnR.Ended;
        v17 = &off_1F07C57C0;
        goto LABEL_8;
      }

LABEL_24:
      v20 = sub_19349AB64();
      v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
      OUTLINED_FUNCTION_53_6(v21, v22);
      *(v23 + 40) = &type metadata for IntelligenceFlowPlatformPnR.StateInfo;
      OUTLINED_FUNCTION_133();
      v24 = swift_allocObject();
      v0[2] = v24;
      v24[2] = v8;
      v24[3] = v9;
      v24[4] = v10;
      v24[5] = v27;
      v24[6] = v12;
      v24[7] = v11;
      OUTLINED_FUNCTION_26_0();

      v25 = OUTLINED_FUNCTION_165_1();
      sub_19350CD7C(v25, v26, v10, v27, v12, v11);
      goto LABEL_25;
    }
  }

  if (v12 >> 62)
  {
    goto LABEL_24;
  }

  v16 = &type metadata for IntelligenceFlowPlatformPnR.Started;
  v17 = &off_1F07C57B0;
LABEL_8:
  sub_193494798(v16, v17, v7);
LABEL_25:
  OUTLINED_FUNCTION_143_0();
}

uint64_t sub_19350CD1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a5 >> 62 == 2)
  {

    return sub_193456418(result, a2);
  }

  else if (a5 >> 62 == 1)
  {
    sub_193456418(result, a2);
  }

  return result;
}

uint64_t sub_19350CD7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a5 >> 62 == 2)
  {

    return sub_19350CB08(result, a2);
  }

  else if (a5 >> 62 == 1)
  {
    sub_19350CB08(result, a2);
  }

  return result;
}

uint64_t sub_19350CDF4()
{
  v2 = OUTLINED_FUNCTION_106_6() & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
  v5 = *v0;
  if (v1 == v2 && v3 == 0xE600000000000000)
  {
    return sub_1934948FC();
  }

  v7 = v4;
  v8 = v3;
  if (OUTLINED_FUNCTION_156_2(v2, 0xE600000000000000))
  {
    return sub_1934948FC();
  }

  v10 = sub_19349AB64();
  v11 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
  *v12 = v1;
  *(v12 + 8) = v8;
  *(v12 + 40) = v7;
  *(v12 + 16) = v5;
  OUTLINED_FUNCTION_23_2(v11, v12);
}

void sub_19350CED0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v3);
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_6();
  v8 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C068, byte_19395C2A0);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_5_14();
  v13 = type metadata accessor for ResponseGeneration.Event(v12);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = v5 == 0x746E657665 && v1 == 0xE500000000000000;
  if (!v20)
  {
    v15 = OUTLINED_FUNCTION_67(0x746E657665, 0xE500000000000000);
    if ((v15 & 1) == 0)
    {
      if (v5 != OUTLINED_FUNCTION_17_12() || v1 != v26)
      {
        OUTLINED_FUNCTION_142();
        if ((OUTLINED_FUNCTION_67(v28, v29) & 1) == 0)
        {
          v34 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
          OUTLINED_FUNCTION_114_4();
          *v35 = v5;
          v35[1] = v1;
          v36 = type metadata accessor for ResponseGeneration(0);
          v37 = OUTLINED_FUNCTION_126(v36);
          OUTLINED_FUNCTION_136_1(v37, v37);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_10;
        }
      }

      type metadata accessor for ResponseGeneration(0);
      sub_19344F184();
      OUTLINED_FUNCTION_6_3(v2, 1, v8);
      if (!v20)
      {
        v30 = OUTLINED_FUNCTION_76_5();
        v31(v30);
        OUTLINED_FUNCTION_93_4();
        sub_1934948FC();
        v32 = OUTLINED_FUNCTION_93_4();
        v33(v32);
        goto LABEL_10;
      }

      v23 = &qword_1EAE3AA88;
      v24 = &qword_19394F9C0;
      v25 = v2;
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_179_1(v15, v16, &qword_1EAE3C068, byte_19395C2A0);
  v21 = OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_6_3(v21, v22, v13);
  if (v20)
  {
    v23 = &qword_1EAE3C068;
    v24 = byte_19395C2A0;
    v25 = v0;
LABEL_9:
    sub_19344E6DC(v25, v23, v24);
    OUTLINED_FUNCTION_109_5();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_0();
  sub_1935156A0();
  sub_193494798(v13, &off_1F07C5810, v38);
  sub_1935156F8(v19, type metadata accessor for ResponseGeneration.Event);
LABEL_10:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_19350D1FC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C070, &qword_19395AF28);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for ResponseGeneration.Event.EventType(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_28();
  v8 = v1 == 0x707954746E657665 && v0 == 0xE900000000000065;
  if (v8 || (OUTLINED_FUNCTION_85_5(0x707954746E657665, 0xE900000000000065) & 1) != 0)
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v8)
    {
      sub_19344E6DC(v2, &qword_1EAE3C070, &qword_19395AF28);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v9 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v9, v10, &off_1F07C5AA0);
      OUTLINED_FUNCTION_1_33();
      sub_1935156F8(v3, v11);
    }
  }

  else
  {
    v12 = sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    v15 = OUTLINED_FUNCTION_51_0(v13, v14);
    v16 = type metadata accessor for ResponseGeneration.Event(v15);
    OUTLINED_FUNCTION_152(v16);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19350D3AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_77_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C078, &qword_19395C2B0);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v7);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v9 = v1 == v4 && v0 == 111;
  if (v9 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_85_5(v10, v11) & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v9)
    {
      sub_19344E6DC(v2, &qword_1EAE3C078, &qword_19395C2B0);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v12 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v12, v13, &off_1F07C5860);
      OUTLINED_FUNCTION_18_18();
      sub_1935156F8(v3, v14);
    }
  }

  else
  {
    v15 = sub_19349AB64();
    v16 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v15);
    v18 = OUTLINED_FUNCTION_51_0(v16, v17);
    v19 = type metadata accessor for ResponseGeneration.Event.Generation(v18);
    OUTLINED_FUNCTION_152(v19);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19350D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x676E697473697865;
  v7 = *v3;
  v8 = a1 == 0x676E697473697865 && a2 == 0xE800000000000000;
  if (v8 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7 == 2)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v10 = sub_19349AB64();
    v11 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 40) = &type metadata for ResponseGeneration.Event.Generation.Started;
    *(v12 + 16) = v7;
    OUTLINED_FUNCTION_23_2(v11, v12);
  }

  return result;
}

void sub_19350D654()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  v10 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v12 = v5 == 0x4564656C646E6168 && v3 == 0xEC000000726F7272;
  if (v12 || (v13 = OUTLINED_FUNCTION_113_3(), (OUTLINED_FUNCTION_67(v13, v14) & 1) != 0))
  {
    if (*(v0 + 8) != 1)
    {
      sub_193494798(&type metadata for IntelligenceFlowError, &off_1F07C5790, v7);
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v15 = v5 == 0x656372756F73 && v3 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_67(0x656372756F73, 0xE600000000000000) & 1) != 0)
  {
    if (*(v0 + 49))
    {
      goto LABEL_7;
    }

LABEL_22:
    sub_1934948FC();
    goto LABEL_23;
  }

  v16 = v5 == 0x6574636172616863 && v3 == 0xEE00746E756F4372;
  if (v16 || (OUTLINED_FUNCTION_67(0x6574636172616863, 0xEE00746E756F4372) & 1) != 0)
  {
    if (*(v0 + 56))
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  v17 = v5 == 0x6E756F4364726F77 && v3 == 0xE900000000000074;
  if (v17 || (OUTLINED_FUNCTION_67(0x6E756F4364726F77, 0xE900000000000074) & 1) != 0)
  {
    if (*(v0 + 64))
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  v18 = v5 == 0x6B6361626C6C6166 && v3 == 0xEE006E6F73616552;
  if (v18 || (OUTLINED_FUNCTION_67(0x6B6361626C6C6166, 0xEE006E6F73616552) & 1) != 0)
  {
    if (*(v0 + 81))
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  v19 = v5 == 0x5379616C70736964 && v3 == 0xED0000676E697274;
  if (v19 || (OUTLINED_FUNCTION_67(0x5379616C70736964, 0xED0000676E697274) & 1) != 0)
  {
    if (!*(v0 + 96))
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  v20 = v5 == 0x74536E656B6F7073 && v3 == 0xEC000000676E6972;
  if (v20 || (OUTLINED_FUNCTION_67(0x74536E656B6F7073, 0xEC000000676E6972) & 1) != 0)
  {
    if (!*(v0 + 112))
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  v21 = v5 == 0x6449746163 && v3 == 0xE500000000000000;
  if (v21 || (OUTLINED_FUNCTION_67(0x6449746163, 0xE500000000000000) & 1) != 0)
  {
    if (!*(v0 + 128))
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  v22 = v5 == 0x6944636974617473 && v3 == 0xEE006449676F6C61;
  if (!v22 && (OUTLINED_FUNCTION_67(0x6944636974617473, 0xEE006449676F6C61) & 1) == 0)
  {
    OUTLINED_FUNCTION_168();
    if (v5 != v24 || v23 != v3)
    {
      v26 = OUTLINED_FUNCTION_49_1();
      if ((OUTLINED_FUNCTION_67(v26, v27) & 1) == 0)
      {
        v32 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
        OUTLINED_FUNCTION_100_6();
        *v33 = v5;
        v33[1] = v3;
        v34 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(0);
        OUTLINED_FUNCTION_126(v34);
        OUTLINED_FUNCTION_141();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_23;
      }
    }

    type metadata accessor for ResponseGeneration.Event.Generation.Ended(0);
    sub_19344F184();
    OUTLINED_FUNCTION_6_3(v1, 1, v10);
    if (!v12)
    {
      v28 = OUTLINED_FUNCTION_76_5();
      v29(v28);
      OUTLINED_FUNCTION_93_4();
      sub_1934948FC();
      v30 = OUTLINED_FUNCTION_93_4();
      v31(v30);
      goto LABEL_23;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
    goto LABEL_7;
  }

  if (*(v0 + 144))
  {
    goto LABEL_22;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_23:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

void sub_19350DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  v17 = OUTLINED_FUNCTION_46_6(v16);
  type metadata accessor for ResponseGeneration.Event.Generation.Ended(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v19 = OUTLINED_FUNCTION_14_5();
  type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v19);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_61_4();
  v23 = v13 == v12 && v11 == 0xE700000000000000;
  if (v23 || (OUTLINED_FUNCTION_19_20(v12, 0xE700000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_24();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v24 = OUTLINED_FUNCTION_180_1();
    if (!v24)
    {
      OUTLINED_FUNCTION_155_1(v24, &type metadata for ResponseGeneration.Event.Generation.Started, &off_1F07C5830);
      goto LABEL_17;
    }

    v25 = sub_19349AB64();
    v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
    OUTLINED_FUNCTION_56_3(v26, v27);
    OUTLINED_FUNCTION_6_24();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    OUTLINED_FUNCTION_18_18();
    v29 = v10;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_34_10();
    v31 = v13 == v30 && v11 == 0xE500000000000000;
    if (v31 || (OUTLINED_FUNCTION_19_20(v30, 0xE500000000000000) & 1) != 0)
    {
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        v32 = sub_1935156A0();
        OUTLINED_FUNCTION_154_3(v32, v33, &off_1F07C5840);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_17;
      }

      v34 = sub_19349AB64();
      v35 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
      OUTLINED_FUNCTION_32_13(v35, v36);
      OUTLINED_FUNCTION_6_24();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_18_18();
      v29 = v15;
    }

    else
    {
      v37 = OUTLINED_FUNCTION_35_12();
      v38 = v13 == v37 && v11 == 0xE600000000000000;
      if (!v38 && (OUTLINED_FUNCTION_19_20(v37, 0xE600000000000000) & 1) == 0)
      {
        v45 = sub_19349AB64();
        v46 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v45);
        OUTLINED_FUNCTION_32_13(v46, v47);
        OUTLINED_FUNCTION_6_24();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_121_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_60_7();
        OUTLINED_FUNCTION_155_1(v39, &type metadata for ResponseGeneration.Event.Generation.Failed, &off_1F07C5850);
        v40 = OUTLINED_FUNCTION_50_6();
        sub_193456418(v40, v41);
        goto LABEL_17;
      }

      v42 = sub_19349AB64();
      v43 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v42);
      OUTLINED_FUNCTION_32_13(v43, v44);
      OUTLINED_FUNCTION_6_24();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_18_18();
      v29 = v14;
    }
  }

  sub_1935156F8(v29, v28);
LABEL_17:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

void sub_19350DEA8()
{
  OUTLINED_FUNCTION_145_0();
  v0 = OUTLINED_FUNCTION_15_26();
  v3 = v3 && v1 == v2;
  if (v3 || (OUTLINED_FUNCTION_54_5(v0, v1) & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v3 & v4)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v5, &type metadata for ResponseGeneration.Event.RequestValidation.StateInfo, &off_1F07C58B0);
    }
  }

  else
  {
    v6 = sub_19349AB64();
    v7 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v6);
    OUTLINED_FUNCTION_108_8(v7, v8);
    *(v9 + 40) = &type metadata for ResponseGeneration.Event.RequestValidation;
    OUTLINED_FUNCTION_79_6();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v10);

    v11 = OUTLINED_FUNCTION_27_12();
    sub_19345D634(v11, v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_19350E16C()
{
  OUTLINED_FUNCTION_28_8();
  memcpy(__dst, v2, sizeof(__dst));
  v4 = v3 == 0x666E496574617473 && v0 == 0xE90000000000006FLL;
  if (v4 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_85_5(v5, v6) & 1) != 0))
  {
    if (__dst[4] >> 8 == 0xFFFFFFFFLL && __dst[6] < 0x200uLL)
    {
      OUTLINED_FUNCTION_104();
    }

    else
    {
      v7 = v2[1];
      v11[0] = *v2;
      v11[1] = v7;
      v12 = __dst[4];
      v13 = __dst[5];
      v14 = __dst[6];
      v15 = *(v2 + 56);
      sub_193494798(&type metadata for ResponseGeneration.Event.Override.StateInfo, &off_1F07C5900, v1);
    }
  }

  else
  {
    v8 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v8);
    OUTLINED_FUNCTION_106_0();
    *v9 = v3;
    v9[1] = v0;
    v9[5] = &type metadata for ResponseGeneration.Event.Override;
    OUTLINED_FUNCTION_127_3();
    v10 = swift_allocObject();
    v1[2] = v10;
    memcpy((v10 + 16), __dst, 0x48uLL);
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    sub_19350E350(__dst, v11);
  }
}

uint64_t sub_19350E2C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  switch(a7 >> 62)
  {
    case 1uLL:
      sub_193456418(result, a2);
      goto LABEL_6;
    case 2uLL:

      result = sub_193456418(result, a2);
      break;
    case 3uLL:
      return result;
    default:
LABEL_6:

      break;
  }

  return result;
}

uint64_t sub_19350E3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  result = memcpy(__dst, v4, sizeof(__dst));
  if (a1 != 0x4564656C646E6168 || a2 != 0xEC000000726F7272)
  {
    OUTLINED_FUNCTION_29_12();
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v10 || (OUTLINED_FUNCTION_130(), result = sub_19393CA30(), (result & 1) != 0))
      {
        if ((__dst[6] & 0x100) != 0)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_33_4();
      }

      else
      {
        if (a1 != 25705 || a2 != 0xE200000000000000)
        {
          OUTLINED_FUNCTION_130();
          result = sub_19393CA30();
          if ((result & 1) == 0)
          {
            v12 = sub_19349AB64();
            OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
            OUTLINED_FUNCTION_32_3();
            *v13 = a1;
            v13[1] = a2;
            v13[5] = &type metadata for ResponseGeneration.Event.Override.Ended;
            OUTLINED_FUNCTION_127_3();
            v14 = swift_allocObject();
            a3[2] = v14;
            memcpy((v14 + 16), __dst, 0x48uLL);
            OUTLINED_FUNCTION_26_0();

            return sub_19350E5E4(__dst, &v15);
          }
        }

        if (!__dst[8])
        {
          goto LABEL_7;
        }

        v15 = __dst[7];
        v16 = __dst[8];
      }

      return sub_1934948FC();
    }
  }

  if (__dst[1] == 1)
  {
LABEL_7:
    *a3 = 0u;
    *(a3 + 1) = 0u;
    return result;
  }

  v15 = __dst[0];
  v16 = __dst[1];
  v17 = __dst[2];
  v18 = BYTE4(__dst[2]) & 1;
  v19 = __dst[3];
  v20 = __dst[4] & 1;
  return sub_193494798(&type metadata for IntelligenceFlowError, &off_1F07C5790, a3);
}

id sub_19350E680()
{
  OUTLINED_FUNCTION_115_5();
  v3 = v2;
  memcpy(__dst, v4, 0x48uLL);
  v5 = v1 == 0x64657472617473 && v0 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_19_20(0x64657472617473, 0xE700000000000000) & 1) != 0)
  {
    if (!(*&__dst[3] >> 62))
    {
      v16 = __dst[0];
      v6 = &type metadata for ResponseGeneration.Event.Override.Started;
      v7 = &off_1F07C58D0;
      return sub_193494798(v6, v7, v3);
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_34_10();
    v10 = v1 == v9 && v0 == 0xE500000000000000;
    if (v10 || (OUTLINED_FUNCTION_19_20(v9, 0xE500000000000000) & 1) != 0)
    {
      if (*&__dst[3] >> 62 == 1)
      {
        v16 = __dst[0];
        v17 = __dst[1];
        v18 = __dst[2];
        v19 = *&__dst[3] & 0x3FFFFFFFFFFFFFFFLL;
        v20 = *(&__dst[3] + 8);
        v6 = &type metadata for ResponseGeneration.Event.Override.Ended;
        v7 = &off_1F07C58E0;
        return sub_193494798(v6, v7, v3);
      }
    }

    else
    {
      v11 = OUTLINED_FUNCTION_35_12();
      v12 = v1 == v11 && v0 == 0xE600000000000000;
      if (v12 || (OUTLINED_FUNCTION_19_20(v11, 0xE600000000000000)) && *&__dst[3] >> 62 == 2)
      {
        v16 = __dst[0];
        v17 = __dst[1];
        LOBYTE(v18) = __dst[2];
        v6 = &type metadata for ResponseGeneration.Event.Override.Failed;
        v7 = &off_1F07C58F0;
        return sub_193494798(v6, v7, v3);
      }
    }
  }

  v13 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
  OUTLINED_FUNCTION_106_0();
  *v14 = v1;
  v14[1] = v0;
  v14[5] = &type metadata for ResponseGeneration.Event.Override.StateInfo;
  OUTLINED_FUNCTION_127_3();
  v15 = swift_allocObject();
  v3[2] = v15;
  memcpy((v15 + 16), __dst, 0x48uLL);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  return sub_19350E860(__dst, &v16);
}

void sub_19350E8D4()
{
  OUTLINED_FUNCTION_145_0();
  v0 = OUTLINED_FUNCTION_15_26();
  v3 = v3 && v1 == v2;
  if (v3 || (OUTLINED_FUNCTION_54_5(v0, v1) & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v3 & v4)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v5, &type metadata for ResponseGeneration.Event.ResponseCatalog.StateInfo, &off_1F07C5950);
    }
  }

  else
  {
    v6 = sub_19349AB64();
    v7 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v6);
    OUTLINED_FUNCTION_108_8(v7, v8);
    *(v9 + 40) = &type metadata for ResponseGeneration.Event.ResponseCatalog;
    OUTLINED_FUNCTION_79_6();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v10);

    v11 = OUTLINED_FUNCTION_27_12();
    sub_19345D634(v11, v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_143_0();
}

uint64_t objectdestroy_17Tm()
{
  if (HIBYTE(*(v0 + 48)) <= 0xFEu)
  {
    v1 = OUTLINED_FUNCTION_107_4();
    sub_19350F244(v1, v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_79_6();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t objectdestroy_26Tm()
{
  v1 = OUTLINED_FUNCTION_107_4();
  sub_19350F244(v1, v2, v3, v4, *(v0 + 48), *(v0 + 49));
  OUTLINED_FUNCTION_79_6();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

void sub_19350EC18()
{
  OUTLINED_FUNCTION_145_0();
  v0 = OUTLINED_FUNCTION_15_26();
  v3 = v3 && v1 == v2;
  if (v3 || (OUTLINED_FUNCTION_54_5(v0, v1) & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v3 & v4)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v5, &type metadata for ResponseGeneration.Event.ModelInference.StateInfo, &off_1F07C59A0);
    }
  }

  else
  {
    v6 = sub_19349AB64();
    v7 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v6);
    OUTLINED_FUNCTION_108_8(v7, v8);
    *(v9 + 40) = &type metadata for ResponseGeneration.Event.ModelInference;
    OUTLINED_FUNCTION_79_6();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v10);

    v11 = OUTLINED_FUNCTION_27_12();
    sub_19350ED50(v11, v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_143_0();
}

uint64_t sub_19350ECD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {

    return sub_193456418(result, a2);
  }

  else if (!a6)
  {
  }

  return result;
}

uint64_t sub_19350ED50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19350ED64(a1, a2, a3, a4, a5, SBYTE1(a5));
  }

  return a1;
}

uint64_t sub_19350ED64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {

    return sub_19350CB08(result, a2);
  }

  else if (!a6)
  {
  }

  return result;
}

void sub_19350EDFC()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v4 = v1;
  v6 = *v0;
  v5 = v0[1];
  if (v1 != 0x7265566C65646F6DLL || v2 != 0xEC0000006E6F6973)
  {
    v9 = v0[2];
    v8 = v0[3];
    if ((OUTLINED_FUNCTION_134_3(0x7265566C65646F6DLL, 0xEC0000006E6F6973, v1) & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_105_6() & 0xFFFFFFFFFFFFLL | 0x6556000000000000;
      v12 = v4 == v10 && v3 == v11;
      if (!v12 && (OUTLINED_FUNCTION_134_3(v10, v11, v4) & 1) == 0)
      {
        v13 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
        v15 = v14;
        *v14 = v4;
        v14[1] = v3;
        v14[5] = &type metadata for ResponseGeneration.Event.ModelInference.Started;
        v16 = swift_allocObject();
        v15[2] = v16;
        v16[2] = v6;
        v16[3] = v5;
        v16[4] = v9;
        v16[5] = v8;
        OUTLINED_FUNCTION_48_4();
        swift_willThrow();

        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

uint64_t objectdestroy_113Tm()
{
  v0 = OUTLINED_FUNCTION_107_4();
  v1(v0);
  OUTLINED_FUNCTION_79_6();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_19350F18C()
{
  OUTLINED_FUNCTION_145_0();
  v0 = OUTLINED_FUNCTION_15_26();
  v3 = v3 && v1 == v2;
  if (v3 || (OUTLINED_FUNCTION_54_5(v0, v1) & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v3 & v4)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v5, &type metadata for ResponseGeneration.Event.HallucinationDetection.StateInfo, &off_1F07C59F0);
    }
  }

  else
  {
    v6 = sub_19349AB64();
    v7 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v6);
    OUTLINED_FUNCTION_108_8(v7, v8);
    *(v9 + 40) = &type metadata for ResponseGeneration.Event.HallucinationDetection;
    OUTLINED_FUNCTION_79_6();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v10);

    v11 = OUTLINED_FUNCTION_27_12();
    sub_19345D634(v11, v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_143_0();
}

uint64_t sub_19350F244(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
    return sub_193456418(result, a2);
  }

  if (!a6)
  {
  }

  return result;
}

uint64_t sub_19350F26C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
    return sub_19350CB08(result, a2);
  }

  if (!a6)
  {
  }

  return result;
}

uint64_t sub_19350F2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = 0x7265567465737361;
  v10 = *v4;
  v9 = v4[1];
  v11 = a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973;
  if (v11 || (result = OUTLINED_FUNCTION_134_3(0x7265567465737361, 0xEC0000006E6F6973, a1), (result & 1) != 0))
  {
    if (v9)
    {
      return sub_1934948FC();
    }

    else
    {
      *a4 = 0u;
      a4[1] = 0u;
    }
  }

  else
  {
    v13 = sub_19349AB64();
    v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
    *v15 = a1;
    v15[1] = a2;
    v15[5] = a3;
    v15[2] = v10;
    v15[3] = v9;
    OUTLINED_FUNCTION_23_2(v14, v15);
  }

  return result;
}

void sub_19350F7D8()
{
  OUTLINED_FUNCTION_184_0();
  v25 = v3;
  v26 = v2;
  v27 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_177_2();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v14 = v8 == 0x666E496574617473 && v6 == 0xE90000000000006FLL;
  if (v14 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_117_2(v15, v16, v8) & 1) != 0))
  {
    if (HIBYTE(*(v0 + 32)) <= 0xFEu)
    {
      sub_193494798(v26, v27, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = v8 == 0x64496563617274 && v6 == 0xE700000000000000;
    if (!v17 && (OUTLINED_FUNCTION_117_2(0x64496563617274, 0xE700000000000000, v8) & 1) == 0)
    {
      v22 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
      OUTLINED_FUNCTION_100_6();
      *v23 = v8;
      v23[1] = v6;
      v24 = v25(0);
      OUTLINED_FUNCTION_126(v24);
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_9;
    }

    v25(0);
    sub_19344F184();
    OUTLINED_FUNCTION_24_13(v1);
    if (!v14)
    {
      v18 = OUTLINED_FUNCTION_82_5();
      v19(v18);
      OUTLINED_FUNCTION_165_1();
      sub_1934948FC();
      v20 = OUTLINED_FUNCTION_165_1();
      v21(v20);
      goto LABEL_9;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

uint64_t sub_19350FA94()
{
  v2 = OUTLINED_FUNCTION_106_6() | 0x676E697400000000;
  v5 = *v0;
  if (v1 == v2 && v3 == 0xE800000000000000)
  {
    return sub_1934948FC();
  }

  v7 = v4;
  v8 = v3;
  if (OUTLINED_FUNCTION_156_2(v2, 0xE800000000000000))
  {
    return sub_1934948FC();
  }

  v10 = sub_19349AB64();
  v11 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
  *v12 = v1;
  *(v12 + 8) = v8;
  *(v12 + 40) = v7;
  *(v12 + 16) = v5;
  OUTLINED_FUNCTION_23_2(v11, v12);
}

void sub_19350FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_86_5();
  v10 = v6 == v8 && v5 == v9;
  if (v10 || (OUTLINED_FUNCTION_134_3(v8, v9, v6) & 1) != 0)
  {
    if (v4 == 1)
    {
      *v7 = 0u;
      v7[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_118_3();
      OUTLINED_FUNCTION_174_1(v11, &type metadata for IntelligenceFlowError, &off_1F07C5790, v12, v13, v14, v15, v16, a3, v33);
      sub_193494798(v17, v18, v19);
    }
  }

  else
  {
    v20 = sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    v29 = OUTLINED_FUNCTION_123_3(v21, v22, v23, v24, v25, v26, v27, v28, a3, v33, v34, v35, v36, v37, v38, a4);
    OUTLINED_FUNCTION_128_2(v29);

    v30 = OUTLINED_FUNCTION_27_12();
    sub_19350CB08(v30, v31);
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_19350FE20()
{
  OUTLINED_FUNCTION_26();
  v124 = v2;
  v125 = v0;
  v4 = v3;
  v6 = v5;
  v118 = type metadata accessor for ResponseGeneration.Event.GMSCall(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v117 = v9 - v8;
  v120 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v119 = v12 - v11;
  v13 = type metadata accessor for ResponseGeneration.Event.Generation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v126 = type metadata accessor for ResponseGeneration.Event.EventType(0);
  MEMORY[0x1EEE9AC00](0x69746172656E6567);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_3();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v116 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v116 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_49_5();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v116 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v116 - v32;
  v34 = v6 == v31 && v4 == 0xEA00000000006E6FLL;
  if (v34 || (OUTLINED_FUNCTION_84_4(v31, 0xEA00000000006E6FLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v35 = v126;
    if (swift_getEnumCaseMultiPayload())
    {
      v36 = sub_19349AB64();
      v37 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v36);
      OUTLINED_FUNCTION_62_10(v37, v38);
      *(v39 + 40) = v35;
      __swift_allocate_boxed_opaque_existential_1Tm((v39 + 16));
      OUTLINED_FUNCTION_0_35();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_1_33();
      v41 = v33;
    }

    else
    {
      sub_1935156A0();
      sub_193494798(v13, &off_1F07C5820, v124);
      v40 = type metadata accessor for ResponseGeneration.Event.Generation;
      v41 = v17;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v43 = v6 == 0xD000000000000011 && v42 == v4;
  if (v43 || (OUTLINED_FUNCTION_84_4(0xD000000000000011, v42) & 1) != 0)
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_120_1();
    sub_1935159EC();
    v44 = v126;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v46 = *v30;
      v47 = *(v30 + 1);
      v48 = *(v30 + 2);
      v49 = *(v30 + 3);
      v50 = *(v30 + 16);
      v128[0] = v46;
      v128[1] = v47;
      v128[2] = v48;
      v128[3] = v49;
      LOWORD(v128[4]) = v50;
      OUTLINED_FUNCTION_181_2(EnumCaseMultiPayload, &type metadata for ResponseGeneration.Event.RequestValidation, &off_1F07C5870);
      v51 = v46;
      v52 = v47;
      v53 = v48;
      v54 = v49;
      v55 = v50;
LABEL_17:
      sub_19345D748(v51, v52, v53, v54, v55);
      goto LABEL_18;
    }

    v56 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v56);
    v58 = v57;
    *v57 = v6;
    v57[1] = v4;
    v57[5] = v44;
    __swift_allocate_boxed_opaque_existential_1Tm(v57 + 2);
    OUTLINED_FUNCTION_0_35();
    sub_1935159EC();
    *(v58 + 48) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_1_33();
    v41 = v30;
    goto LABEL_9;
  }

  v59 = v6 == 0x656469727265766FLL && v4 == 0xE800000000000000;
  if (v59 || (OUTLINED_FUNCTION_84_4(0x656469727265766FLL, 0xE800000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_82_5();
    sub_1935159EC();
    v60 = v126;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v128, v1, 0x48uLL);
      memcpy(v127, v1, sizeof(v127));
      sub_193494798(&type metadata for ResponseGeneration.Event.Override, &off_1F07C58C0, v124);
      sub_193510818(v128);
      goto LABEL_18;
    }

    v61 = sub_19349AB64();
    v62 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v61);
    OUTLINED_FUNCTION_62_10(v62, v63);
    *(v64 + 40) = v60;
    __swift_allocate_boxed_opaque_existential_1Tm((v64 + 16));
    OUTLINED_FUNCTION_0_35();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_1_33();
    v41 = v1;
    goto LABEL_9;
  }

  v65 = v6 == 0x65736E6F70736572 && v4 == 0xEF676F6C61746143;
  if (!v65 && (OUTLINED_FUNCTION_84_4(0x65736E6F70736572, 0xEF676F6C61746143) & 1) == 0)
  {
    v76 = OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x666E000000000000;
    v78 = v6 == v76 && v4 == v77;
    v79 = v126;
    if (v78 || (OUTLINED_FUNCTION_84_4(v76, v77) & 1) != 0)
    {
      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_166();
      sub_1935159EC();
      v80 = swift_getEnumCaseMultiPayload();
      if (v80 == 4)
      {
        v81 = *v23;
        v82 = *(v23 + 1);
        v83 = *(v23 + 2);
        v84 = *(v23 + 3);
        v85 = *(v23 + 16);
        v128[0] = v81;
        v128[1] = v82;
        v128[2] = v83;
        v128[3] = v84;
        LOWORD(v128[4]) = v85;
        OUTLINED_FUNCTION_181_2(v80, &type metadata for ResponseGeneration.Event.ModelInference, &off_1F07C5960);
        v86 = OUTLINED_FUNCTION_13_0();
        sub_193510804(v86, v87, v83, v84, v85);
        goto LABEL_18;
      }

      v88 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v88);
      OUTLINED_FUNCTION_114_4();
      *v89 = v6;
      v89[1] = v4;
      v89[5] = v79;
      __swift_allocate_boxed_opaque_existential_1Tm(v89 + 2);
      OUTLINED_FUNCTION_0_35();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_1_33();
      v41 = v23;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_38();
    v91 = v6 == 0xD000000000000016 && v90 == v4;
    if (v91 || (OUTLINED_FUNCTION_84_4(0xD000000000000016, v90) & 1) != 0)
    {
      OUTLINED_FUNCTION_0_35();
      v92 = v123;
      sub_1935159EC();
      v93 = swift_getEnumCaseMultiPayload();
      if (v93 == 5)
      {
        v94 = *v92;
        v95 = *(v92 + 8);
        v96 = *(v92 + 16);
        v97 = *(v92 + 24);
        v98 = *(v92 + 32);
        v128[0] = v94;
        v128[1] = v95;
        v128[2] = v96;
        v128[3] = v97;
        LOWORD(v128[4]) = v98;
        OUTLINED_FUNCTION_181_2(v93, &type metadata for ResponseGeneration.Event.HallucinationDetection, &off_1F07C59B0);
        v51 = v94;
        v52 = v95;
        v53 = v96;
        v54 = v97;
        v55 = v98;
        goto LABEL_17;
      }

      goto LABEL_59;
    }

    OUTLINED_FUNCTION_38();
    v100 = v6 == 0xD000000000000010 && v99 == v4;
    if (v100 || (OUTLINED_FUNCTION_84_4(0xD000000000000010, v99) & 1) != 0)
    {
      OUTLINED_FUNCTION_0_35();
      v92 = v122;
      sub_1935159EC();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_59:
        v103 = sub_19349AB64();
        v104 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v103);
        OUTLINED_FUNCTION_62_10(v104, v105);
        *(v106 + 40) = v79;
        __swift_allocate_boxed_opaque_existential_1Tm((v106 + 16));
        OUTLINED_FUNCTION_0_35();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_1_33();
        v41 = v92;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_141();
      v101 = v119;
      sub_1935156A0();
      sub_193494798(v120, &off_1F07C5A00, v124);
      v102 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall;
    }

    else
    {
      v107 = v6 == 0x6C6C6143736D67 && v4 == 0xE700000000000000;
      if (!v107 && (OUTLINED_FUNCTION_84_4(0x6C6C6143736D67, 0xE700000000000000) & 1) == 0)
      {
        v112 = sub_19349AB64();
        v113 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v112);
        OUTLINED_FUNCTION_62_10(v113, v114);
        *(v115 + 40) = v79;
        __swift_allocate_boxed_opaque_existential_1Tm((v115 + 16));
        OUTLINED_FUNCTION_0_35();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_18;
      }

      OUTLINED_FUNCTION_0_35();
      sub_1935159EC();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v108 = sub_19349AB64();
        v109 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v108);
        OUTLINED_FUNCTION_62_10(v109, v110);
        *(v111 + 40) = v126;
        __swift_allocate_boxed_opaque_existential_1Tm((v111 + 16));
        OUTLINED_FUNCTION_0_35();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_1_33();
        v41 = v121;
        goto LABEL_9;
      }

      v101 = v117;
      sub_1935156A0();
      sub_193494798(v118, &off_1F07C5A50, v124);
      v102 = type metadata accessor for ResponseGeneration.Event.GMSCall;
    }

    v40 = v102;
    v41 = v101;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_165_1();
  sub_1935159EC();
  v66 = v126;
  v67 = swift_getEnumCaseMultiPayload();
  if (v67 == 3)
  {
    v68 = *(v26 + 1);
    v69 = *(v26 + 2);
    v70 = *(v26 + 3);
    v71 = *(v26 + 16);
    v128[0] = *v26;
    v128[1] = v68;
    v128[2] = v69;
    v128[3] = v70;
    LOWORD(v128[4]) = v71;
    OUTLINED_FUNCTION_181_2(v67, &type metadata for ResponseGeneration.Event.ResponseCatalog, &off_1F07C5910);
    v51 = OUTLINED_FUNCTION_50_6();
    goto LABEL_17;
  }

  v72 = sub_19349AB64();
  v73 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v72);
  OUTLINED_FUNCTION_62_10(v73, v74);
  *(v75 + 40) = v66;
  __swift_allocate_boxed_opaque_existential_1Tm((v75 + 16));
  OUTLINED_FUNCTION_0_35();
  sub_1935159EC();
  OUTLINED_FUNCTION_15_24();
  swift_willThrow();

  OUTLINED_FUNCTION_1_33();
  v41 = v26;
LABEL_9:
  sub_1935156F8(v41, v40);
LABEL_18:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193510804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19350ECD0(result, a2, a3, a4, a5, SBYTE1(a5));
  }

  return result;
}

void sub_193510884()
{
  OUTLINED_FUNCTION_26();
  v56 = v1;
  v57 = v0;
  v3 = v2;
  v5 = v4;
  v55 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v52 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v53 = v15;
  v54 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_61_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C080, &unk_19395C2E0);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v24 = type metadata accessor for PlanGeneration.StateInfo(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  v28 = v27 - v26;
  v29 = v5 == 0x666E496574617473 && v3 == 0xE90000000000006FLL;
  if (!v29 && (OUTLINED_FUNCTION_124_3(0x666E496574617473, 0xE90000000000006FLL, v5) & 1) == 0)
  {
    v35 = OUTLINED_FUNCTION_173_2();
    v36 = v29 && v3 == 0xE500000000000000;
    if (v36 || (OUTLINED_FUNCTION_124_3(v35, 0xE500000000000000, v5) & 1) != 0)
    {
      if ((~*(v57 + *(type metadata accessor for PlanGeneration(0) + 20)) & 0xF000000000000007) != 0)
      {
        sub_193494798(&type metadata for PlanGeneration.Event, &off_1F07C5B00, v55);
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v38 = v5 == OUTLINED_FUNCTION_17_12() && v3 == v37;
    if (v38 || (OUTLINED_FUNCTION_142(), (OUTLINED_FUNCTION_124_3(v39, v40, v5) & 1) != 0))
    {
      type metadata accessor for PlanGeneration(0);
      sub_19344F184();
      OUTLINED_FUNCTION_6_3(v13, 1, v54);
      if (!v29)
      {
        v41 = OUTLINED_FUNCTION_113_3();
        v42(v41);
        OUTLINED_FUNCTION_13_0();
        sub_1934948FC();
        v43 = OUTLINED_FUNCTION_13_0();
        v44(v43);
        goto LABEL_11;
      }

      v30 = &qword_1EAE3AA88;
      v31 = &qword_19394F9C0;
      v32 = v13;
    }

    else
    {
      v45 = v5 == 0x6E6576456E616C70 && v3 == 0xEB00000000644974;
      if (!v45 && (OUTLINED_FUNCTION_124_3(0x6E6576456E616C70, 0xEB00000000644974, v5) & 1) == 0)
      {
        v49 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v49);
        OUTLINED_FUNCTION_114_4();
        *v50 = v5;
        v50[1] = v3;
        v51 = type metadata accessor for PlanGeneration(0);
        OUTLINED_FUNCTION_126(v51);
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }

      type metadata accessor for PlanGeneration(0);
      v46 = v52;
      sub_19344F184();
      v47 = v54;
      OUTLINED_FUNCTION_6_3(v46, 1, v54);
      if (!v29)
      {
        v48 = v53;
        (*(v53 + 32))(v18, v46, v47);
        sub_1934948FC();
        (*(v48 + 8))(v18, v47);
        goto LABEL_11;
      }

      v30 = &qword_1EAE3AA88;
      v31 = &qword_19394F9C0;
      v32 = v46;
    }

LABEL_9:
    sub_19344E6DC(v32, v30, v31);
LABEL_10:
    v33 = v55;
    *v55 = 0u;
    *(v33 + 1) = 0u;
    goto LABEL_11;
  }

  sub_19344F184();
  OUTLINED_FUNCTION_6_3(v23, 1, v24);
  if (v29)
  {
    v30 = &qword_1EAE3C080;
    v31 = &unk_19395C2E0;
    v32 = v23;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_112_6();
  sub_1935156A0();
  sub_193494798(v24, &off_1F07C5AF0, v55);
  OUTLINED_FUNCTION_20_12();
  sub_1935156F8(v28, v34);
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193510E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  v17 = OUTLINED_FUNCTION_46_6(v16);
  type metadata accessor for PlanGeneration.Ended(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v19 = OUTLINED_FUNCTION_14_5();
  type metadata accessor for PlanGeneration.StateInfo(v19);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_61_4();
  v23 = v13 == v12 && v11 == 0xE700000000000000;
  if (v23 || (OUTLINED_FUNCTION_19_20(v12, 0xE700000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v24 = OUTLINED_FUNCTION_180_1();
    if (!v24)
    {
      OUTLINED_FUNCTION_155_1(v24, &type metadata for PlanGeneration.Started, &off_1F07C5AC0);

      goto LABEL_17;
    }

    v25 = sub_19349AB64();
    v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
    OUTLINED_FUNCTION_56_3(v26, v27);
    OUTLINED_FUNCTION_5_29();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    OUTLINED_FUNCTION_20_12();
    v29 = v10;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_34_10();
    v31 = v13 == v30 && v11 == 0xE500000000000000;
    if (v31 || (OUTLINED_FUNCTION_19_20(v30, 0xE500000000000000) & 1) != 0)
    {
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        v32 = sub_1935156A0();
        OUTLINED_FUNCTION_154_3(v32, v33, &off_1F07C5AD0);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_17;
      }

      v34 = sub_19349AB64();
      v35 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
      OUTLINED_FUNCTION_32_13(v35, v36);
      OUTLINED_FUNCTION_5_29();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_20_12();
      v29 = v15;
    }

    else
    {
      v37 = OUTLINED_FUNCTION_35_12();
      v38 = v13 == v37 && v11 == 0xE600000000000000;
      if (!v38 && (OUTLINED_FUNCTION_19_20(v37, 0xE600000000000000) & 1) == 0)
      {
        v45 = sub_19349AB64();
        v46 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v45);
        OUTLINED_FUNCTION_32_13(v46, v47);
        OUTLINED_FUNCTION_5_29();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_121_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_60_7();
        OUTLINED_FUNCTION_155_1(v39, &type metadata for PlanGeneration.Failed, &off_1F07C5AE0);
        v40 = OUTLINED_FUNCTION_50_6();
        sub_193456418(v40, v41);
        goto LABEL_17;
      }

      v42 = sub_19349AB64();
      v43 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v42);
      OUTLINED_FUNCTION_32_13(v43, v44);
      OUTLINED_FUNCTION_5_29();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_20_12();
      v29 = v14;
    }
  }

  sub_1935156F8(v29, v28);
LABEL_17:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

void sub_193511148()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v17 = v4;
  v5 = type metadata accessor for PlanGeneration.Event.PlanCreation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = *v0;
  if (v3 != 0x616572436E616C70 || v1 != 0xEC0000006E6F6974)
  {
    OUTLINED_FUNCTION_130();
    if ((sub_19393CA30() & 1) == 0)
    {
      v13 = v3 == (OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x666E000000000000) && v1 == v12;
      if (v13 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
      {
        if (v10 < 0)
        {
          sub_193494798(&type metadata for PlanGeneration.Event.ModelInference, &off_1F07C5B60, v17);
          goto LABEL_16;
        }
      }

      goto LABEL_14;
    }
  }

  if (v10 < 0)
  {
LABEL_14:
    v14 = sub_19349AB64();
    v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    *v16 = v3;
    v16[1] = v1;
    v16[5] = &type metadata for PlanGeneration.Event;
    v16[2] = v10;
    OUTLINED_FUNCTION_23_2(v15, v16);

    goto LABEL_16;
  }

  swift_projectBox();
  OUTLINED_FUNCTION_88_5();
  sub_1935159EC();
  sub_193494798(v5, &off_1F07C5B10, v17);
  sub_1935156F8(v9, type metadata accessor for PlanGeneration.Event.PlanCreation);
LABEL_16:
  OUTLINED_FUNCTION_183();
}

void sub_193511320()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_77_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C088, &qword_19395AF30);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v7);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v9 = v1 == v4 && v0 == 111;
  if (v9 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_85_5(v10, v11) & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v9)
    {
      sub_19344E6DC(v2, &qword_1EAE3C088, &qword_19395AF30);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v12 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v12, v13, &off_1F07C5B50);
      OUTLINED_FUNCTION_19_22();
      sub_1935156F8(v3, v14);
    }
  }

  else
  {
    v15 = sub_19349AB64();
    v16 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v15);
    v18 = OUTLINED_FUNCTION_51_0(v16, v17);
    v19 = type metadata accessor for PlanGeneration.Event.PlanCreation(v18);
    OUTLINED_FUNCTION_152(v19);
    OUTLINED_FUNCTION_88_5();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935114B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = OUTLINED_FUNCTION_105_6();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == result && v6 == 0xE600000000000000;
  if (v10 || (v11 = v7, v12 = v6, result = OUTLINED_FUNCTION_134_3(result, 0xE600000000000000, a1), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    else
    {
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    v13 = sub_19349AB64();
    v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
    *v15 = a1;
    v15[1] = v12;
    v15[5] = v11;
    v15[2] = v9;
    v15[3] = v8;
    OUTLINED_FUNCTION_23_2(v14, v15);
  }

  return result;
}

void sub_1935115B4()
{
  OUTLINED_FUNCTION_184_0();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_177_2();
  OUTLINED_FUNCTION_0();
  v29 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = v6 == 0x526572756C696166 && v4 == 0xED00006E6F736165;
  if (v15 || (OUTLINED_FUNCTION_117_2(0x526572756C696166, 0xED00006E6F736165, v6) & 1) != 0)
  {
    if (*(v0 + 9))
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    goto LABEL_16;
  }

  v16 = OUTLINED_FUNCTION_105_6() & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
  v18 = v6 == v16 && v4 == v17;
  if (!v18 && (OUTLINED_FUNCTION_117_2(v16, v17, v6) & 1) == 0)
  {
    OUTLINED_FUNCTION_168();
    if (v6 != v20 || v19 != v4)
    {
      v22 = OUTLINED_FUNCTION_49_1();
      if ((OUTLINED_FUNCTION_117_2(v22, v23, v6) & 1) == 0)
      {
        v26 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
        OUTLINED_FUNCTION_100_6();
        *v27 = v6;
        v27[1] = v4;
        v28 = v30(0);
        OUTLINED_FUNCTION_126(v28);
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_16;
      }
    }

    v30(0);
    sub_19344F184();
    OUTLINED_FUNCTION_24_13(v1);
    if (!v15)
    {
      v24 = OUTLINED_FUNCTION_170_0();
      v25(v24);
      sub_1934948FC();
      (*(v29 + 8))(v14, v9);
      goto LABEL_16;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
    goto LABEL_7;
  }

  if (*(v0 + 24))
  {
    goto LABEL_15;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_16:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

void sub_1935118B8(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v9 = OUTLINED_FUNCTION_111_1();
  v11 = *(v5 + 8);
  v12 = a1 == v9 && a2 == v10;
  if (v12 || (OUTLINED_FUNCTION_134_3(v9, v10, a1) & 1) != 0)
  {
    if (v11 == 1)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_118_3();
      OUTLINED_FUNCTION_174_1(v13, &type metadata for IntelligenceFlowError, &off_1F07C5790, v14, v15, v16, v17, v18, a4, v35);
      sub_193494798(v19, v20, v21);
    }
  }

  else
  {
    v22 = sub_19349AB64();
    v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
    v31 = OUTLINED_FUNCTION_123_3(v23, v24, v25, v26, v27, v28, v29, v30, a4, v35, v36, v37, v38, v39, v40, a5);
    OUTLINED_FUNCTION_128_2(v31);

    v32 = OUTLINED_FUNCTION_27_12();
    sub_19350CB08(v32, v33);
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1935119B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  v17 = OUTLINED_FUNCTION_46_6(v16);
  type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v19 = OUTLINED_FUNCTION_14_5();
  type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v19);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_61_4();
  v23 = v13 == v12 && v11 == 0xE700000000000000;
  if (v23 || (OUTLINED_FUNCTION_19_20(v12, 0xE700000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v24 = OUTLINED_FUNCTION_180_1();
    if (!v24)
    {
      OUTLINED_FUNCTION_155_1(v24, &type metadata for PlanGeneration.Event.PlanCreation.Started, &off_1F07C5B20);

      goto LABEL_17;
    }

    v25 = sub_19349AB64();
    v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
    OUTLINED_FUNCTION_56_3(v26, v27);
    OUTLINED_FUNCTION_3_31();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    OUTLINED_FUNCTION_19_22();
    v29 = v10;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_34_10();
    v31 = v13 == v30 && v11 == 0xE500000000000000;
    if (v31 || (OUTLINED_FUNCTION_19_20(v30, 0xE500000000000000) & 1) != 0)
    {
      OUTLINED_FUNCTION_3_31();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        v32 = sub_1935156A0();
        OUTLINED_FUNCTION_154_3(v32, v33, &off_1F07C5B30);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_17;
      }

      v34 = sub_19349AB64();
      v35 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
      OUTLINED_FUNCTION_32_13(v35, v36);
      OUTLINED_FUNCTION_3_31();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_19_22();
      v29 = v15;
    }

    else
    {
      v37 = OUTLINED_FUNCTION_35_12();
      v38 = v13 == v37 && v11 == 0xE600000000000000;
      if (!v38 && (OUTLINED_FUNCTION_19_20(v37, 0xE600000000000000) & 1) == 0)
      {
        v45 = sub_19349AB64();
        v46 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v45);
        OUTLINED_FUNCTION_32_13(v46, v47);
        OUTLINED_FUNCTION_3_31();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_3_31();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_121_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_60_7();
        OUTLINED_FUNCTION_155_1(v39, &type metadata for PlanGeneration.Event.PlanCreation.Failed, &off_1F07C5B40);
        v40 = OUTLINED_FUNCTION_50_6();
        sub_193456418(v40, v41);
        goto LABEL_17;
      }

      v42 = sub_19349AB64();
      v43 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v42);
      OUTLINED_FUNCTION_32_13(v43, v44);
      OUTLINED_FUNCTION_3_31();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_19_22();
      v29 = v14;
    }
  }

  sub_1935156F8(v29, v28);
LABEL_17:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193511CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x666E496574617473;
  v6 = *(v3 + 8);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = a1 == 0x666E496574617473 && a2 == 0xE90000000000006FLL;
  v10 = *(v3 + 48);
  if (v9 || (OUTLINED_FUNCTION_98_5(), v30 = v10, v12 = v6, v13 = v8, v14 = v7, v16 = v15, v18 = v17, v20 = v19, v22 = v21, result = sub_19393CA30(), a3 = v22, v23 = v20, v10 = v30, (result & 1) != 0))
  {
    if (v10 >> 9 <= 0x7E)
    {
      return sub_193494798(&type metadata for PlanGeneration.Event.ModelInference.StateInfo, &off_1F07C5BA0, a3);
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    v24 = a2;
    v25 = v23;
    v29 = v23;
    v26 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
    OUTLINED_FUNCTION_32_3();
    *v27 = a1;
    v27[1] = v24;
    v27[5] = &type metadata for PlanGeneration.Event.ModelInference;
    OUTLINED_FUNCTION_150_3();
    v28 = swift_allocObject();
    *(v18 + 16) = v28;
    *(v28 + 16) = v25;
    *(v28 + 24) = v12;
    *(v28 + 32) = v13;
    *(v28 + 40) = v14;
    *(v28 + 48) = v16;
    *(v28 + 56) = v18;
    *(v28 + 64) = v30;
    OUTLINED_FUNCTION_26_0();

    return sub_193511ED8(v29, v12, v13, v14, v16, v18, v30);
  }

  return result;
}

uint64_t sub_193511EB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 14;
  if (v7 == 2)
  {
    return sub_193456418(result, a2);
  }

  if (v7 == 1)
  {
  }

  return result;
}

uint64_t sub_193511ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  if ((a7 >> 9) <= 0x7Eu)
  {
    return sub_193511EEC(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_193511EEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 14;
  if (v7 == 2)
  {
    return sub_19350CB08(result, a2);
  }

  if (v7 == 1)
  {
  }

  return result;
}

uint64_t sub_193511F28()
{
  OUTLINED_FUNCTION_91_0();
  v2 = sub_19349AB64();
  v3 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v2);
  *v4 = v1;
  v4[1] = v0;
  v4[5] = &type metadata for PlanGeneration.Event.ModelInference.Started;
  OUTLINED_FUNCTION_23_2(v3, v4);
}

void sub_193511FA0()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = v0[1];
  v14 = *v0;
  v15 = v4;
  v16 = v0[2];
  v5 = v2 == 0x526572756C696166 && v1 == 0xED00006E6F736165;
  if (v5 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE9(v14))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    goto LABEL_8;
  }

  v7 = v3 == (OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x746E000000000000) && v1 == v6;
  if (v7 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE9(v15))
    {
      goto LABEL_7;
    }

LABEL_8:
    OUTLINED_FUNCTION_33_4();
LABEL_9:
    sub_1934948FC();
    return;
  }

  v8 = v3 == 0x6564496C65646F6DLL && v1 == 0xEF7265696669746ELL;
  if (v8 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (!*(&v16 + 1))
    {
      goto LABEL_7;
    }

    v13[0] = v16;
    goto LABEL_9;
  }

  v9 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
  OUTLINED_FUNCTION_32_3();
  *v10 = v3;
  v10[1] = v1;
  v10[5] = &type metadata for PlanGeneration.Event.ModelInference.Ended;
  OUTLINED_FUNCTION_133();
  v11 = swift_allocObject();
  *(v0 + 2) = v11;
  v12 = v16;
  v11[2] = v15;
  v11[3] = v12;
  v11[1] = v14;
  OUTLINED_FUNCTION_26_0();

  sub_19351216C(&v14, v13);
}

void sub_1935121E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_102_3();
  v25 = *(v3 + 48);
  v9 = a1 == v7 && a2 == v8;
  if (v9 || (OUTLINED_FUNCTION_124_3(v7, v8, a1) & 1) != 0)
  {
    if (*(&v22 + 1) == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    v17 = v22;
    v18 = v23;
    v19 = BYTE4(v23) & 1;
    v20 = *(&v23 + 1);
    v21 = v24 & 1;
    sub_193494798(&type metadata for IntelligenceFlowError, &off_1F07C5790, a3);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    v12 = a1 == v10 && a2 == v11;
    if (v12 || (OUTLINED_FUNCTION_124_3(v10, v11, a1) & 1) != 0)
    {
      if ((v25 & 0x100) != 0)
      {
        goto LABEL_7;
      }

      *&v17 = *(&v24 + 1);
      BYTE8(v17) = v25 & 1;
      sub_1934948FC();
    }

    else
    {
      v13 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
      OUTLINED_FUNCTION_32_3();
      *v14 = a1;
      v14[1] = a2;
      v14[5] = &type metadata for PlanGeneration.Event.ModelInference.Failed;
      OUTLINED_FUNCTION_150_3();
      v15 = swift_allocObject();
      *(v3 + 16) = v15;
      *(v15 + 64) = v25;
      v16 = v24;
      *(v15 + 32) = v23;
      *(v15 + 48) = v16;
      *(v15 + 16) = v22;
      OUTLINED_FUNCTION_26_0();

      sub_1935123C0(&v22, &v17);
    }
  }
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{
  if (*(v1 + 24) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

id sub_193512434(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_26_9();
  v9 = *v2;
  v8 = *(v2 + 8);
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = *(v2 + 32);
  v29 = *(v2 + 40);
  v13 = a1 == v5 && v6 == 0xE700000000000000;
  v14 = *(v2 + 48);
  if (v13 || (OUTLINED_FUNCTION_138_2(), v16 = v15, v17 = sub_19393CA30(), v7 = v16, (v17 & 1) != 0))
  {
    if ((v14 & 0xC000) == 0)
    {
      return sub_193494798(&type metadata for PlanGeneration.Event.ModelInference.Started, &off_1F07C5B70, v7);
    }

    goto LABEL_24;
  }

  v20 = a1 == OUTLINED_FUNCTION_34_10() && a2 == 0xE500000000000000;
  if (v20 || (OUTLINED_FUNCTION_138_2(), v21 = sub_19393CA30(), v19 = v16, (v21 & 1) != 0))
  {
    if ((v14 & 0xC000) == 0x4000)
    {
      v22 = &type metadata for PlanGeneration.Event.ModelInference.Ended;
      v23 = &off_1F07C5B80;
      return sub_193494798(v22, v23, v19);
    }
  }

  else
  {
    if (a1 != OUTLINED_FUNCTION_35_12() || a2 != 0xE600000000000000)
    {
      OUTLINED_FUNCTION_138_2();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_24;
      }

      v19 = v16;
    }

    if ((v14 & 0xC000) == 0x8000)
    {
      v22 = &type metadata for PlanGeneration.Event.ModelInference.Failed;
      v23 = &off_1F07C5B90;
      return sub_193494798(v22, v23, v19);
    }
  }

LABEL_24:
  v25 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
  v27 = v26;
  *v26 = a1;
  v26[1] = a2;
  v26[5] = &type metadata for PlanGeneration.Event.ModelInference.StateInfo;
  OUTLINED_FUNCTION_150_3();
  v28 = swift_allocObject();
  v27[2] = v28;
  *(v28 + 16) = v9;
  *(v28 + 24) = v8;
  *(v28 + 32) = v11;
  *(v28 + 40) = v10;
  *(v28 + 48) = v12;
  *(v28 + 56) = v29;
  *(v28 + 64) = v14;
  *(v27 + 48) = 1;
  swift_willThrow();

  return sub_193511EEC(v9, v8, v11, v10, v12, v29, v14);
}

void sub_19351268C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v4);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C090, &qword_19395AF38);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event(v9);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C098, &unk_19395C300);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_5_14();
  v14 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(v13);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_129_2();
  v18 = v6 == 0x617461646174656DLL && v1 == 0xE800000000000000;
  if (v18 || (v16 = OUTLINED_FUNCTION_0_18(0x617461646174656DLL, 0xE800000000000000), (v16 & 1) != 0))
  {
    OUTLINED_FUNCTION_179_1(v16, v17, &qword_1EAE3C098, &unk_19395C300);
    v19 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v19, v20, v14);
    if (!v18)
    {
      OUTLINED_FUNCTION_113_3();
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v14, v24, v25);
      v26 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata;
      v27 = v3;
LABEL_10:
      sub_1935156F8(v27, v26);
      goto LABEL_11;
    }

    v21 = &qword_1EAE3C098;
    v22 = &unk_19395C300;
    v23 = v0;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_173_2();
    v29 = v18 && v1 == 0xE500000000000000;
    if (!v29 && (OUTLINED_FUNCTION_0_18(v28, 0xE500000000000000) & 1) == 0)
    {
      v30 = sub_19349AB64();
      v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
      v33 = OUTLINED_FUNCTION_103_4(v31, v32);
      v34 = type metadata accessor for IntelligenceFlowFeedbackLearning(v33);
      v35 = OUTLINED_FUNCTION_126(v34);
      OUTLINED_FUNCTION_136_1(v35, v35);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_11;
    }

    type metadata accessor for IntelligenceFlowFeedbackLearning(0);
    OUTLINED_FUNCTION_153_3();
    OUTLINED_FUNCTION_24_13(v2);
    if (!v18)
    {
      OUTLINED_FUNCTION_170_0();
      sub_1935156A0();
      OUTLINED_FUNCTION_125_2(&off_1F07C5BC0, v36);
      v27 = OUTLINED_FUNCTION_68_4();
      goto LABEL_10;
    }

    v21 = &qword_1EAE3C090;
    v22 = &qword_19395AF38;
    v23 = v2;
  }

  sub_19344E6DC(v23, v21, v22);
  OUTLINED_FUNCTION_109_5();
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193512970()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0A0, &unk_19395C310);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_28();
  v8 = v1 == 0x6C6156746E657665 && v0 == 0xEA00000000006575;
  if (v8 || (OUTLINED_FUNCTION_85_5(0x6C6156746E657665, 0xEA00000000006575) & 1) != 0)
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v8)
    {
      sub_19344E6DC(v2, &qword_1EAE3C0A0, &unk_19395C310);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v9 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v9, v10, &off_1F07C5C60);
      OUTLINED_FUNCTION_39_10();
      sub_1935156F8(v3, v11);
    }
  }

  else
  {
    v12 = sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    v15 = OUTLINED_FUNCTION_51_0(v13, v14);
    v16 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event(v15);
    OUTLINED_FUNCTION_152(v16);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193512B20()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v7);
  OUTLINED_FUNCTION_146_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v10);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0A8, &qword_19395AF40);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_5_14();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v14);
  v15 = OUTLINED_FUNCTION_144_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_99_6();
  v19 = v19 && v3 == v18;
  if (v19 || (v16 = OUTLINED_FUNCTION_0_18(v16, v1 + 11), (v16 & 1) != 0))
  {
    OUTLINED_FUNCTION_179_1(v16, v17, &qword_1EAE3C0A8, &qword_19395AF40);
    v20 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v20, v21, v2);
    if (!v19)
    {
      OUTLINED_FUNCTION_113_3();
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v2, v25, v26);
      OUTLINED_FUNCTION_17_16();
      v28 = v6;
LABEL_10:
      sub_1935156F8(v28, v27);
      goto LABEL_11;
    }

    v22 = &qword_1EAE3C0A8;
    v23 = &qword_19395AF40;
    v24 = v0;
  }

  else
  {
    if (v5 != OUTLINED_FUNCTION_17_12() || v3 != v1)
    {
      OUTLINED_FUNCTION_142();
      if ((OUTLINED_FUNCTION_0_18(v30, v31) & 1) == 0)
      {
        v32 = sub_19349AB64();
        v33 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
        v35 = OUTLINED_FUNCTION_103_4(v33, v34);
        v36 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(v35);
        v37 = OUTLINED_FUNCTION_126(v36);
        OUTLINED_FUNCTION_136_1(v37, v37);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }
    }

    type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
    OUTLINED_FUNCTION_153_3();
    OUTLINED_FUNCTION_24_13(v4);
    if (!v19)
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_170_0();
      sub_1935156A0();
      OUTLINED_FUNCTION_125_2(&off_1F07C3F90, v38);
      v28 = OUTLINED_FUNCTION_2_31();
      goto LABEL_10;
    }

    v22 = &qword_1EAE3BCA0;
    v23 = &unk_19395C320;
    v24 = v4;
  }

  sub_19344E6DC(v24, v22, v23);
  OUTLINED_FUNCTION_109_5();
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193512DD4()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v10);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v12 = v5 == 0x6F69737365536669 && v3 == 0xEB0000000064496ELL;
  if (!v12)
  {
    v13 = OUTLINED_FUNCTION_113_3();
    if ((OUTLINED_FUNCTION_59_0(v13, v14) & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v20 = v5 == 0xD000000000000011 && v19 == v3;
      if (v20 || (v21 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0(v21, v22) & 1) != 0))
      {
        if (*(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 20) + 4))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v23 = v5 == 0x6C6176456B736174 && v3 == 0xEE006E6F69746175;
        if (v23 || (OUTLINED_FUNCTION_59_0(0x6C6176456B736174, 0xEE006E6F69746175) & 1) != 0)
        {
          if (*(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 24) + 48))
          {
            sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluation, &off_1F07C5C80, v7);
            goto LABEL_24;
          }

          goto LABEL_9;
        }

        OUTLINED_FUNCTION_38();
        v25 = v5 == 0xD000000000000014 && v24 == v3;
        if (v25 || (OUTLINED_FUNCTION_59_0(0xD000000000000014, v24) & 1) != 0)
        {
          type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0B0, &qword_19395AF48);
        }

        else
        {
          v26 = OUTLINED_FUNCTION_139_4() & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
          v28 = v5 == v26 && v3 == v27;
          if (!v28 && (OUTLINED_FUNCTION_59_0(v26, v27) & 1) == 0)
          {
            v29 = sub_19349AB64();
            OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
            OUTLINED_FUNCTION_100_6();
            *v30 = v5;
            v30[1] = v3;
            v31 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
            OUTLINED_FUNCTION_126(v31);
            OUTLINED_FUNCTION_141();
            sub_1935159EC();
            OUTLINED_FUNCTION_15_24();
            swift_willThrow();

            goto LABEL_24;
          }

          if (*(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 32) + 9))
          {
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_149_4();
        }
      }

      sub_1934948FC();
      goto LABEL_24;
    }
  }

  sub_19344F184();
  OUTLINED_FUNCTION_23_4();
  if (v12)
  {
    sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_82_5();
  v15 = sub_1935156A0();
  OUTLINED_FUNCTION_80_0(v15, v16, &off_1F07C3F90);
  v17 = OUTLINED_FUNCTION_2_31();
  sub_1935156F8(v17, v18);
LABEL_24:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

void sub_193513170()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_115_5();
  v33 = v5;
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v8 = OUTLINED_FUNCTION_14_5();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_61_4();
  v12 = v2 == 0x64657472617473 && v1 == 0xE700000000000000;
  if (!v12 && (OUTLINED_FUNCTION_19_20(0x64657472617473, 0xE700000000000000) & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_34_10();
    v21 = v2 == v20 && v1 == 0xE500000000000000;
    if (v21 || (OUTLINED_FUNCTION_19_20(v20, 0xE500000000000000) & 1) != 0)
    {
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        sub_1935156A0();
        sub_193494798(v6, &off_1F07C5BF0, v33);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_18;
      }

      v22 = sub_19349AB64();
      v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
      OUTLINED_FUNCTION_32_13(v23, v24);
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_17_16();
      v17 = v4;
      goto LABEL_8;
    }

    v25 = OUTLINED_FUNCTION_35_12();
    v26 = v2 == v25 && v1 == 0xE600000000000000;
    if (!v26 && (OUTLINED_FUNCTION_19_20(v25, 0xE600000000000000) & 1) == 0)
    {
      v30 = sub_19349AB64();
      v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
      OUTLINED_FUNCTION_32_13(v31, v32);
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_7_25();
    sub_1935159EC();
    OUTLINED_FUNCTION_121_0();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v27 = sub_19349AB64();
      v28 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
      OUTLINED_FUNCTION_32_13(v28, v29);
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_17_16();
      v17 = v3;
      goto LABEL_8;
    }

    v18 = &type metadata for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Failed;
    v19 = &off_1F07C5C00;
LABEL_10:
    sub_193494798(v18, v19, v33);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_25();
  sub_1935159EC();
  if (!OUTLINED_FUNCTION_180_1())
  {
    v18 = &type metadata for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Started;
    v19 = &off_1F07C5BE0;
    goto LABEL_10;
  }

  v13 = sub_19349AB64();
  v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
  OUTLINED_FUNCTION_56_3(v14, v15);
  OUTLINED_FUNCTION_7_25();
  sub_1935159EC();
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  OUTLINED_FUNCTION_17_16();
  v17 = v0;
LABEL_8:
  sub_1935156F8(v17, v16);
LABEL_18:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

void sub_1935134E4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v7);
  OUTLINED_FUNCTION_146_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v10);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0B8, &qword_19395AF50);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_5_14();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v14);
  v15 = OUTLINED_FUNCTION_144_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_99_6();
  v19 = v19 && v3 == v18;
  if (v19 || (v16 = OUTLINED_FUNCTION_0_18(v16, v1 + 11), (v16 & 1) != 0))
  {
    OUTLINED_FUNCTION_179_1(v16, v17, &qword_1EAE3C0B8, &qword_19395AF50);
    v20 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v20, v21, v2);
    if (!v19)
    {
      OUTLINED_FUNCTION_113_3();
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v2, v25, v26);
      OUTLINED_FUNCTION_40_5();
      v28 = v6;
LABEL_10:
      sub_1935156F8(v28, v27);
      goto LABEL_11;
    }

    v22 = &qword_1EAE3C0B8;
    v23 = &qword_19395AF50;
    v24 = v0;
  }

  else
  {
    if (v5 != OUTLINED_FUNCTION_17_12() || v3 != v1)
    {
      OUTLINED_FUNCTION_142();
      if ((OUTLINED_FUNCTION_0_18(v30, v31) & 1) == 0)
      {
        v32 = sub_19349AB64();
        v33 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
        v35 = OUTLINED_FUNCTION_103_4(v33, v34);
        v36 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(v35);
        v37 = OUTLINED_FUNCTION_126(v36);
        OUTLINED_FUNCTION_136_1(v37, v37);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }
    }

    type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
    OUTLINED_FUNCTION_153_3();
    OUTLINED_FUNCTION_24_13(v4);
    if (!v19)
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_170_0();
      sub_1935156A0();
      OUTLINED_FUNCTION_125_2(&off_1F07C3F90, v38);
      v28 = OUTLINED_FUNCTION_2_31();
      goto LABEL_10;
    }

    v22 = &qword_1EAE3BCA0;
    v23 = &unk_19395C320;
    v24 = v4;
  }

  sub_19344E6DC(v24, v22, v23);
  OUTLINED_FUNCTION_109_5();
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193513798()
{
  OUTLINED_FUNCTION_26();
  v66 = v2;
  v67 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v61 - v9;
  v62 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_61_4();
  v17 = sub_19393BE00();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](0x6574756C6F736261);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v61 - v24;
  v64 = v6;
  v65 = v4;
  v26 = v6 == v23 && v4 == 0xEC000000656D6954;
  if (!v26 && (OUTLINED_FUNCTION_18_13(v23, 0xEC000000656D6954) & 1) == 0)
  {
    v33 = v64 == 0x6E6F6974616E6F64 && v65 == 0xEC000000656D6954;
    if (v33 || (OUTLINED_FUNCTION_18_13(0x6E6F6974616E6F64, 0xEC000000656D6954) & 1) != 0)
    {
      type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
      sub_19344F184();
      OUTLINED_FUNCTION_6_3(v15, 1, v17);
      if (!v26)
      {
        (*(v18 + 32))(v21, v15, v17);
        sub_1934948FC();
        (*(v18 + 8))(v21, v17);
        goto LABEL_12;
      }

      v29 = &qword_1EAE3A9E8;
      v30 = &qword_19394F800;
      v31 = v15;
      goto LABEL_10;
    }

    v34 = v64 == 0x6F69737365536669 && v65 == 0xEB0000000064496ELL;
    if (!v34 && (OUTLINED_FUNCTION_18_13(0x6F69737365536669, 0xEB0000000064496ELL) & 1) == 0)
    {
      OUTLINED_FUNCTION_168();
      v42 = v64 == v41 && v40 == v65;
      if (v42 || (v43 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_18_13(v43, v44) & 1) != 0))
      {
        v45 = v67 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 28);
        if (*(v45 + 4))
        {
          goto LABEL_11;
        }

        LODWORD(v68) = *v45;
      }

      else
      {
        v46 = v64 == 0x6E6F6974616E6F64 && v65 == 0xEF72656767697254;
        if (v46 || (OUTLINED_FUNCTION_18_13(0x6E6F6974616E6F64, 0xEF72656767697254) & 1) != 0)
        {
          if (*(v67 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 32) + 9))
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_149_4();
          v68 = v47;
          LOBYTE(v69) = v48 & 1;
        }

        else
        {
          v49 = v64 == 0x656C707554736177 && v65 == 0xEF646574616E6F44;
          if (v49 || (OUTLINED_FUNCTION_18_13(0x656C707554736177, 0xEF646574616E6F44) & 1) != 0)
          {
            v50 = *(v67 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 36));
            if (v50 == 2)
            {
              goto LABEL_11;
            }

            LOBYTE(v68) = v50 & 1;
          }

          else
          {
            v51 = v64 == 0x656C707574 && v65 == 0xE500000000000000;
            if (v51 || (OUTLINED_FUNCTION_18_13(0x656C707574, 0xE500000000000000) & 1) != 0)
            {
              v52 = (v67 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 40));
              v53 = *v52;
              if (*v52)
              {
                v54 = *(v52 + 8);
                v55 = v52[1];
                v68 = v53;
                v69 = v55;
                v70 = v54 & 0x1FF;
                sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.TupleInteraction, &off_1F07C5CC0, v66);
                goto LABEL_12;
              }

              goto LABEL_11;
            }

            v56 = v64 == 0x74616469646E6163 && v65 == 0xEA00000000007365;
            if (!v56 && (OUTLINED_FUNCTION_18_13(0x74616469646E6163, 0xEA00000000007365) & 1) == 0)
            {
              v57 = sub_19349AB64();
              OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v57);
              OUTLINED_FUNCTION_114_4();
              v58 = v65;
              *v59 = v64;
              v59[1] = v58;
              v60 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
              OUTLINED_FUNCTION_126(v60);
              sub_1935159EC();
              OUTLINED_FUNCTION_15_24();
              swift_willThrow();

              goto LABEL_12;
            }

            v68 = *(v67 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 44));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0C0, &qword_19395AF58);
          }
        }
      }

      sub_1934948FC();
      goto LABEL_12;
    }

    type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
    v0 = v63;
    sub_19344F184();
    v35 = OUTLINED_FUNCTION_131_0();
    v36 = v62;
    OUTLINED_FUNCTION_6_3(v35, v37, v62);
    if (!v26)
    {
      OUTLINED_FUNCTION_4_24();
      sub_1935156A0();
      sub_193494798(v36, &off_1F07C3F90, v66);
      v38 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v38, v39);
      goto LABEL_12;
    }

    v29 = &qword_1EAE3BCA0;
    v30 = &unk_19395C320;
LABEL_9:
    v31 = v0;
LABEL_10:
    sub_19344E6DC(v31, v29, v30);
LABEL_11:
    v32 = v66;
    *v66 = 0u;
    *(v32 + 1) = 0u;
    goto LABEL_12;
  }

  sub_19344F184();
  v27 = OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_6_3(v27, v28, v17);
  if (v26)
  {
    v29 = &qword_1EAE3A9E8;
    v30 = &qword_19394F800;
    goto LABEL_9;
  }

  (*(v18 + 32))(v25, v0, v17);
  sub_1934948FC();
  (*(v18 + 8))(v25, v17);
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193513E4C()
{
  OUTLINED_FUNCTION_26();
  v26 = v5;
  OUTLINED_FUNCTION_115_5();
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_129_2();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_167_1();
  v10 = v10 && v0 == 0xE700000000000000;
  if (v10 || (OUTLINED_FUNCTION_19_20(0x64657472617473, 0xE700000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Started, &off_1F07C5C30, v26);
      goto LABEL_10;
    }

    v11 = sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
    OUTLINED_FUNCTION_45_8(v12, v13);
    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_40_5();
    v15 = v2;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_34_10();
    v17 = v1 == v16 && v0 == 0xE500000000000000;
    if (!v17 && (OUTLINED_FUNCTION_19_20(v16, 0xE500000000000000) & 1) == 0)
    {
      v23 = sub_19349AB64();
      v24 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v23);
      OUTLINED_FUNCTION_45_8(v24, v25);
      OUTLINED_FUNCTION_9_38();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    OUTLINED_FUNCTION_121_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v6, v18, v19);
      sub_1935156F8(v4, type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended);
      goto LABEL_10;
    }

    v20 = sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    OUTLINED_FUNCTION_45_8(v21, v22);
    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_40_5();
    v15 = v3;
  }

  sub_1935156F8(v15, v14);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

void sub_193514100()
{
  OUTLINED_FUNCTION_26();
  v34 = v3;
  v35 = v1;
  OUTLINED_FUNCTION_115_5();
  v33 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_28();
  v5 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  OUTLINED_FUNCTION_38();
  v18 = v2 == 0xD000000000000010 && v17 == v0;
  if (v18 || (OUTLINED_FUNCTION_19_20(0xD000000000000010, v17) & 1) != 0)
  {
    OUTLINED_FUNCTION_11_18();
    OUTLINED_FUNCTION_121_0();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v19);
      OUTLINED_FUNCTION_100_6();
      OUTLINED_FUNCTION_157_2(v20, v21);
      OUTLINED_FUNCTION_11_18();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_39_10();
      v23 = v16;
    }

    else
    {
      sub_1935156A0();
      sub_193494798(v5, &off_1F07C5BD0, v34);
      v22 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation;
      v23 = v9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v25 = v2 == 0xD000000000000013 && v24 == v0;
    if (!v25 && (OUTLINED_FUNCTION_19_20(0xD000000000000013, v24) & 1) == 0)
    {
      v29 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
      OUTLINED_FUNCTION_100_6();
      OUTLINED_FUNCTION_157_2(v30, v31);
      OUTLINED_FUNCTION_11_18();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_11_18();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1935156A0();
      sub_193494798(v33, &off_1F07C5C20, v34);
      v23 = OUTLINED_FUNCTION_68_4();
    }

    else
    {
      v26 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
      OUTLINED_FUNCTION_100_6();
      OUTLINED_FUNCTION_157_2(v27, v28);
      OUTLINED_FUNCTION_11_18();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_39_10();
      v23 = v13;
    }
  }

  sub_1935156F8(v23, v22);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

void sub_193514454()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_28();
  v7 = v1 == 1682533478 && v0 == 0xE400000000000000;
  if (v7 || (OUTLINED_FUNCTION_85_5(1682533478, 0xE400000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v7)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_82_5();
      v8 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v8, v9, &off_1F07C3F90);
      v10 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v10, v11);
    }
  }

  else
  {
    v12 = sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    v15 = OUTLINED_FUNCTION_51_0(v13, v14);
    v16 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(v15);
    OUTLINED_FUNCTION_152(v16);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935145E8()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  OUTLINED_FUNCTION_102_3();
  v23 = *(v0 + 48);
  OUTLINED_FUNCTION_168();
  v7 = v4 == v6 && v5 == v1;
  if (v7 || (v8 = v4, OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE9(v20))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    v16 = v20;
    LOBYTE(v17) = BYTE8(v20) & 1;
    goto LABEL_9;
  }

  v9 = v8 == 0x6374754F6B736174 && v1 == 0xEB00000000656D6FLL;
  if (v9 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v22))
    {
      goto LABEL_7;
    }

    v16 = v21;
    v17 = WORD4(v21) & 0x1FF;
    v18 = v22;
    v19 = WORD4(v22) & 0x1FF;
    sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.TaskOutcome, &off_1F07C5D10, v3);
  }

  else
  {
    v11 = v8 == (OUTLINED_FUNCTION_139_4() & 0xFFFFFFFFFFFFLL | 0x6974000000000000) && v1 == v10;
    if (v11 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
    {
      v16 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0C8, &qword_19395AF60);
LABEL_9:
      sub_1934948FC();
      return;
    }

    v12 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    OUTLINED_FUNCTION_32_3();
    *v13 = v8;
    v13[1] = v1;
    v13[5] = &type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluation;
    v14 = swift_allocObject();
    *(v0 + 16) = v14;
    *(v14 + 64) = v23;
    v15 = v22;
    *(v14 + 32) = v21;
    *(v14 + 48) = v15;
    *(v14 + 16) = v20;
    OUTLINED_FUNCTION_26_0();

    sub_193514800(&v20, &v16);
  }
}

void sub_193514874()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_28();
  v7 = v1 == 0x74616469646E6163 && v0 == 0xEB00000000644965;
  if (v7 || (v8 = OUTLINED_FUNCTION_113_3(), (OUTLINED_FUNCTION_85_5(v8, v9) & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v7)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_82_5();
      v10 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v10, v11, &off_1F07C3F90);
      v12 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v12, v13);
    }
  }

  else
  {
    v14 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    OUTLINED_FUNCTION_100_6();
    *v15 = v1;
    v15[1] = v0;
    v16 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
    OUTLINED_FUNCTION_126(v16);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_193514A1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_139_4() & 0xFFFFFFFFFFFFLL | 0x6F74000000000000;
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);
  v11 = a1 == v5 && v6 == v7;
  if (v11 || (v12 = v6, v20 = v2[2], v21 = *(v2 + 24), v13 = *(v2 + 25), v14 = v2[4], (OUTLINED_FUNCTION_0_32(v5, 0xE900000000000072) & 1) != 0))
  {
    if (v10)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v15 = a1 == 0x746C75736572 && v12 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_0_32(0x746C75736572, 0xE600000000000000) & 1) != 0)
  {
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v16 = a1 == 0x73656372756F73 && v12 == 0xE700000000000000;
  if (v16 || (OUTLINED_FUNCTION_0_32(0x73656372756F73, 0xE700000000000000) & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D0, &qword_19395AF68);
LABEL_8:
    sub_1934948FC();
    return;
  }

  v17 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
  OUTLINED_FUNCTION_106_0();
  *v18 = a1;
  v18[1] = v12;
  v18[5] = &type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluationNode;
  v19 = swift_allocObject();
  *(a2 + 16) = v19;
  *(v19 + 16) = v8;
  *(v19 + 24) = v9;
  *(v19 + 25) = v10;
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  *(v19 + 41) = v13;
  *(v19 + 48) = v14;
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();
}

void sub_193514C24()
{
  OUTLINED_FUNCTION_26();
  v33 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v10);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0E0, &unk_19395C350);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_129_2();
  v14 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_38();
  v20 = v7 == 0xD000000000000011 && v19 == v5;
  if (!v20)
  {
    v21 = OUTLINED_FUNCTION_49_1();
    if ((OUTLINED_FUNCTION_59_0(v21, v22) & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v25 = v7 == 0xD000000000000013 && v24 == v5;
      if (v25 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, v24) & 1) != 0)
      {
        type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
        sub_19344F184();
        OUTLINED_FUNCTION_23_4();
        if (!v20)
        {
          OUTLINED_FUNCTION_38_10();
          sub_1935156A0();
          OUTLINED_FUNCTION_125_2(&off_1F07C5C90, v33);
          v26 = OUTLINED_FUNCTION_68_4();
          sub_1935156F8(v26, v27);
          goto LABEL_9;
        }

        sub_19344E6DC(v1, &qword_1EAE3C0D8, &qword_19395AF70);
LABEL_18:
        *v33 = 0u;
        *(v33 + 16) = 0u;
        goto LABEL_9;
      }

      v28 = v7 == 0x6974756C6F736572 && v5 == 0xEA00000000006E6FLL;
      if (v28 || (OUTLINED_FUNCTION_59_0(0x6974756C6F736572, 0xEA00000000006E6FLL) & 1) != 0)
      {
        if (*(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0) + 24) + 9))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = v7 == 0x656D6F6374756FLL && v5 == 0xE700000000000000;
        if (!v29 && (OUTLINED_FUNCTION_59_0(0x656D6F6374756FLL, 0xE700000000000000) & 1) == 0)
        {
          v30 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
          OUTLINED_FUNCTION_114_4();
          *v31 = v7;
          v31[1] = v5;
          v32 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
          OUTLINED_FUNCTION_126(v32);
          sub_1935159EC();
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_9;
        }

        if (*(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0) + 28) + 9))
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_149_4();
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  sub_19344F184();
  OUTLINED_FUNCTION_6_3(v2, 1, v14);
  if (v20)
  {
    sub_19344E6DC(v2, &qword_1EAE3C0E0, &unk_19395C350);
    *v33 = 0u;
    *(v33 + 16) = 0u;
  }

  else
  {
    sub_1935156A0();
    sub_193494798(v14, &off_1F07C5CE0, v33);
    OUTLINED_FUNCTION_41_7();
    sub_1935156F8(v18, v23);
  }

LABEL_9:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193515038()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = v2 == 0x696669746E656469 && v1 == 0xEB00000000737265;
  if (v7 || (v8 = v0[1], v9 = *(v0 + 16), v10 = *(v0 + 17), OUTLINED_FUNCTION_116_4(), (sub_19393CA30() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0E8, &qword_19395AF78);
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_122_2();
  v13 = v7 && v1 == v12;
  if (v13 || (OUTLINED_FUNCTION_116_4(), result = sub_19393CA30(), (result & 1) != 0))
  {
    if ((v10 & 1) == 0)
    {
      return sub_1934948FC();
    }

    *v5 = 0u;
    v5[1] = 0u;
  }

  else
  {
    v14 = sub_19349AB64();
    v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    *v16 = v3;
    *(v16 + 8) = v1;
    *(v16 + 40) = &type metadata for IntelligenceFlowFeedbackLearning.TupleInteraction;
    *(v16 + 16) = v6;
    *(v16 + 24) = v8;
    *(v16 + 32) = v9;
    *(v16 + 33) = v10;
    OUTLINED_FUNCTION_23_2(v15, v16);
  }

  return result;
}

void sub_1935151A4()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v8);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v10 = v5 == 0x696669746E656469 && v3 == 0xEA00000000007265;
  if (!v10 && (OUTLINED_FUNCTION_59_0(0x696669746E656469, 0xEA00000000007265) & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_122_2();
    v17 = v10 && v3 == v16;
    if (!v17 && (OUTLINED_FUNCTION_59_0(v15, 0xE900000000000074) & 1) == 0)
    {
      v18 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
      OUTLINED_FUNCTION_106_0();
      *v19 = v5;
      v19[1] = v3;
      v20 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0);
      OUTLINED_FUNCTION_152(v20);
      OUTLINED_FUNCTION_141();
      sub_1935159EC();
      OUTLINED_FUNCTION_48_4();
      swift_willThrow();

      goto LABEL_10;
    }

    if ((*(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0) + 20) + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_149_4();
      sub_1934948FC();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_19344F184();
  OUTLINED_FUNCTION_23_4();
  if (v10)
  {
    sub_19344E6DC(v1, &qword_1EAE3C0D8, &qword_19395AF70);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38_10();
  v11 = sub_1935156A0();
  OUTLINED_FUNCTION_80_0(v11, v12, &off_1F07C5C90);
  v13 = OUTLINED_FUNCTION_68_4();
  sub_1935156F8(v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_183();
}

void sub_1935153E0()
{
  OUTLINED_FUNCTION_26();
  v28 = v5;
  OUTLINED_FUNCTION_115_5();
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_129_2();
  type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_167_1();
  v10 = v10 && v0 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_19_20(1819242356, 0xE400000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.ToolCandidateCategory, &off_1F07C5CF0, v28);
      goto LABEL_10;
    }

    v11 = sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
    v14 = v13;
    OUTLINED_FUNCTION_56_3(v12, v13);
    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    *(v14 + 48) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_41_7();
    v16 = v2;
  }

  else
  {
    v17 = v1 == 0x6574656D61726170 && v0 == 0xE900000000000072;
    if (!v17 && (OUTLINED_FUNCTION_19_20(0x6574656D61726170, 0xE900000000000072) & 1) == 0)
    {
      v24 = sub_19349AB64();
      v25 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
      v27 = v26;
      OUTLINED_FUNCTION_56_3(v25, v26);
      OUTLINED_FUNCTION_10_21();
      sub_1935159EC();
      *(v27 + 48) = 1;
      swift_willThrow();

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    OUTLINED_FUNCTION_121_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v6, v18, v19);
      sub_1935156F8(v4, type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory);
      goto LABEL_10;
    }

    v20 = sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    v23 = v22;
    OUTLINED_FUNCTION_56_3(v21, v22);
    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    *(v23 + 48) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_41_7();
    v16 = v3;
  }

  sub_1935156F8(v16, v15);
LABEL_10:
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935156A0()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

uint64_t sub_1935156F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_193515768()
{
  v2 = OUTLINED_FUNCTION_106_6() & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
  v5 = *v0;
  v6 = v1 == v2 && v3 == 0xE600000000000000;
  if (v6 || (v7 = v4, v8 = v3, (OUTLINED_FUNCTION_156_2(v2, 0xE600000000000000) & 1) != 0))
  {
    if (v5 == 2)
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v9 = sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    *v11 = v1;
    *(v11 + 8) = v8;
    *(v11 + 40) = v7;
    *(v11 + 16) = v5;
    OUTLINED_FUNCTION_23_2(v10, v11);
  }
}

void sub_193515858()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_28();
  v7 = v1 == 0x6574656D61726170 && v0 == 0xEF6449656D614E72;
  if (v7 || (v8 = OUTLINED_FUNCTION_113_3(), (OUTLINED_FUNCTION_85_5(v8, v9) & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v7)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_82_5();
      v10 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v10, v11, &off_1F07C3F90);
      v12 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v12, v13);
    }
  }

  else
  {
    v14 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    OUTLINED_FUNCTION_100_6();
    *v15 = v1;
    v15[1] = v0;
    v16 = type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory(0);
    OUTLINED_FUNCTION_126(v16);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935159EC()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

void sub_193515A5C()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  if (v2 != 0x746174536B736174 || v1 != 0xEA00000000007375)
  {
    v8 = v1;
    v9 = v0[2];
    v17 = *(v0 + 24);
    v10 = *(v0 + 25);
    if ((sub_19393CA30() & 1) == 0)
    {
      v12 = v3 == (OUTLINED_FUNCTION_105_6() & 0xFFFFFFFFFFFFLL | 0x7453000000000000) && v8 == v11;
      if (!v12 && (sub_19393CA30() & 1) == 0)
      {
        v13 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
        v15 = v14;
        *v14 = v3;
        v14[1] = v8;
        v14[5] = &type metadata for IntelligenceFlowFeedbackLearning.TaskOutcome;
        v16 = swift_allocObject();
        v15[2] = v16;
        *(v16 + 16) = v4;
        *(v16 + 24) = v5;
        *(v16 + 25) = v6;
        *(v16 + 32) = v9;
        *(v16 + 40) = v17;
        *(v16 + 41) = v10;
        OUTLINED_FUNCTION_48_4();
        swift_willThrow();

        goto LABEL_9;
      }

      if (v10)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{
  *(v6 + 16) = a1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v2;
  *(a1 + 48) = v1;
  *(v6 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_60_7()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v1 - 120) = *v0;
  *(v1 - 112) = v2;
  *(v1 - 104) = v3;
  *(v1 - 96) = v4;
  *(v1 - 88) = v5;
}

void OUTLINED_FUNCTION_101_5(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = v2;
  *(v3 - 72) = v1;
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

double OUTLINED_FUNCTION_109_5()
{
  result = 0.0;
  v2 = *(v0 - 96);
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_123_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a2 = v17;
  a2[1] = v16;
  a2[5] = a9;

  return swift_allocObject();
}

id OUTLINED_FUNCTION_125_2@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{

  return sub_193494798(v2, a1, a2);
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1)
{
  *(v6 + 16) = a1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v2;
  *(a1 + 48) = v1;
  *(v6 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_151_3()
{

  return sub_19344F184();
}

uint64_t OUTLINED_FUNCTION_153_3()
{

  return sub_19344F184();
}

id OUTLINED_FUNCTION_154_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 - 136);

  return sub_193494798(v3, a3, v6);
}

id OUTLINED_FUNCTION_155_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 136);

  return sub_193494798(a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_156_2(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t *OUTLINED_FUNCTION_157_2(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[5] = v4;

  return __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
}

id OUTLINED_FUNCTION_159_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193494798(a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_178_1()
{

  return sub_1935156F8(v1, v0);
}

id OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 256);

  return sub_193494798(a2, a3, v5);
}

id OUTLINED_FUNCTION_182_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193494798(a2, a3, v3);
}

uint64_t static IntelligenceFlowPlatformPnR.StateInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v87 = v12;
  v88 = a1[5];
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      if (v11 >> 62 == 1)
      {
        v95 = *a1;
        v96 = v3;
        v97 = v5;
        v98 = v4;
        v99 = v6;
        v100 = v88;
        v89 = v8;
        v90 = v7;
        v91 = v9;
        v92 = v10;
        v93 = v11;
        v94 = v12;
        OUTLINED_FUNCTION_73_4();
        v84 = v4;
        v14 = v13;
        v16 = v15;
        sub_19350CD7C(v17, v18, v19, v10, v11, v20);
        OUTLINED_FUNCTION_183_1();
        sub_19350CD7C(v21, v22, v23, v24, v25, v88);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD7C(v26, v27, v28, v29, v30, v12);
        sub_19350CD7C(v16, v14, v5, v84, v6, v88);
        static IntelligenceFlowPlatformPnR.Ended.== infix(_:_:)(&v95, &v89);
        v32 = v31;
        sub_19350CD1C(v16, v14, v5, v84, v6, v88);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v33, v34, v35, v36, v37, v87);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v38, v39, v40, v41, v42, v87);
        v43 = v16;
        v44 = v14;
        v45 = v5;
        v46 = v84;
LABEL_9:
        v49 = v6;
        v50 = v88;
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_111_6();
    }

    else
    {
      if (v11 >> 62 == 2)
      {
        v95 = *a1;
        v96 = v3;
        v97 = v5;
        v98 = v4;
        v99 = v6;
        v89 = v8;
        v90 = v7;
        v91 = v9;
        v92 = v10;
        v93 = v11;
        OUTLINED_FUNCTION_73_4();
        v83 = v51;
        v85 = v4;
        v53 = v52;
        sub_19350CD7C(v54, v55, v56, v10, v11, v12);
        OUTLINED_FUNCTION_183_1();
        sub_19350CD7C(v57, v58, v59, v60, v61, v88);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD7C(v62, v63, v64, v65, v66, v12);
        sub_19350CD7C(v53, v83, v5, v85, v6, v88);
        v32 = static IntelligenceFlowPlatformPnR.Failed.== infix(_:_:)(&v95, &v89);
        v67 = OUTLINED_FUNCTION_55();
        sub_19350CD1C(v67, v68, v5, v85, v6, v69);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v70, v71, v72, v73, v74, v87);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v75, v76, v77, v78, v79, v87);
        v43 = v53;
        v44 = v83;
        v46 = v85;
        v45 = v5;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_111_6();
    }

LABEL_13:
    sub_19350CD7C(v8, v7, v2, v86, v11, v12);
    v80 = OUTLINED_FUNCTION_114_0();
    sub_19350CD1C(v80, v81, v5, v4, v6, v88);
    sub_19350CD1C(v8, v7, v2, v86, v11, v12);
    v32 = 0;
    return v32 & 1;
  }

  v2 = a2[2];
  v86 = a2[3];
  if (v11 >> 62)
  {
    goto LABEL_13;
  }

  LOBYTE(v95) = *a1 & 1;
  LOBYTE(v89) = v8 & 1;
  v32 = static IntelligenceFlowPlatformPnR.Started.== infix(_:_:)(&v95, &v89);
  v47 = OUTLINED_FUNCTION_114_0();
  sub_19350CD1C(v47, v48, v5, v4, v6, v88);
  v43 = v8;
  v44 = v7;
  v45 = v9;
  v46 = v10;
  v49 = v11;
  v50 = v87;
LABEL_10:
  sub_19350CD1C(v43, v44, v45, v46, v49, v50);
  return v32 & 1;
}

uint64_t IntelligenceFlowPlatformPnR.StateInfo.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32) >> 62;
  if (v7)
  {
    if (v7 == 1)
    {
      sub_1935164CC();
    }

    else
    {
      sub_193516478();
    }
  }

  else
  {
    sub_193516520();
  }

  return sub_19393C540();
}

unint64_t sub_193516478()
{
  result = qword_1EAE3C0F0;
  if (!qword_1EAE3C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C0F0);
  }

  return result;
}

unint64_t sub_1935164CC()
{
  result = qword_1EAE3C0F8;
  if (!qword_1EAE3C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C0F8);
  }

  return result;
}

unint64_t sub_193516520()
{
  result = qword_1EAE3C100;
  if (!qword_1EAE3C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C100);
  }

  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.Source.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ResponseGeneration.Event.Generation.Ended.Source.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_16_0();
  if (!(!v14 & v13))
  {
    v51 = OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_84_2(v51, v52, v53, v54, &qword_1EAE3C3E8, &qword_19395BB58);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v55 = OUTLINED_FUNCTION_39(v19);
    OUTLINED_FUNCTION_85(v55, v56, v57, v58, &qword_1EAE3C3E8, &qword_19395BB58);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v59, v60, v61, v62, v63, v64);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v65 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE3C3E8, &qword_19395BB58);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v69 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v69, v70, v71, v72, &qword_1EAE3C3E8, &qword_19395BB58);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    v73 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE3C3E8, &qword_19395BB58);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42);
  if (v1 + 7 > (v47 >> 1))
  {
    v77 = OUTLINED_FUNCTION_39(v47);
    v43 = OUTLINED_FUNCTION_85(v77, v78, v79, v80, &qword_1EAE3C3E8, &qword_19395BB58);
    v46 = v43;
  }

  OUTLINED_FUNCTION_47_5(v43, v44, v45, v46);
  *(v48 + 32) = 5;
  *(v48 + 40) = v0;
  return v49;
}

uint64_t ResponseGeneration.Event.Generation.Ended.Source.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1819242324;
  switch(*v0)
  {
    case 1:
      result = 0x6B6361626C6C6146;
      break;
    case 2:
      result = 0x656469727265764FLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_165_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_159();
      break;
    case 5:
      result = 0x6C65646F4D676C4ELL;
      break;
    default:
      return result;
  }

  return result;
}

void ResponseGeneration.Event.Generation.Ended.Source.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1819242324 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1819242324, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_141_0();
      v8 = v4 && v0 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_9(v7, 0xE800000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x656469727265764FLL && v0 == 0xE800000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_9(0x656469727265764FLL, 0xE800000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = OUTLINED_FUNCTION_165_2();
          v12 = v1 == v10 && v0 == v11;
          if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = OUTLINED_FUNCTION_159();
            v15 = v1 == v13 && v0 == v14;
            if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else if (v1 == 0x6C65646F4D676C4ELL && v0 == 0xE800000000000000)
            {

              OUTLINED_FUNCTION_83();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(0x6C65646F4D676C4ELL, 0xE800000000000000);
              OUTLINED_FUNCTION_89();
              v5 = 5;
              if ((v1 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ResponseGeneration.Event.Generation.Ended.FallbackReason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ResponseGeneration.Event.Generation.Ended.FallbackReason.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v68 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v68, v69, v70, v71, &qword_1EAE3C3E0, &qword_19395BB50);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v72 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v72, v73, v74, v75, &qword_1EAE3C3E0, &qword_19395BB50);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v76, v77, v78, v79, v80, v81);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v82 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v82, v83, v84, v85, &qword_1EAE3C3E0, &qword_19395BB50);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v86 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v86, v87, v88, v89, &qword_1EAE3C3E0, &qword_19395BB50);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v90 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v90, v91, v92, v93, &qword_1EAE3C3E0, &qword_19395BB50);
    v39 = v36;
  }

  OUTLINED_FUNCTION_50(v36, v37, v38, v39);
  OUTLINED_FUNCTION_4(v41);
  if (v0 + 7 > (v46 >> 1))
  {
    v94 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v94, v95, v96, v97, &qword_1EAE3C3E0, &qword_19395BB50);
    v45 = v42;
  }

  OUTLINED_FUNCTION_47_5(v42, v43, v44, v45);
  OUTLINED_FUNCTION_4(v47);
  if (v0 + 8 > (v52 >> 1))
  {
    v98 = OUTLINED_FUNCTION_39(v52);
    v48 = OUTLINED_FUNCTION_84_2(v98, v99, v100, v101, &qword_1EAE3C3E0, &qword_19395BB50);
    v51 = v48;
  }

  OUTLINED_FUNCTION_50(v48, v49, v50, v51);
  OUTLINED_FUNCTION_4(v53);
  if (v0 + 9 > (v58 >> 1))
  {
    v102 = OUTLINED_FUNCTION_39(v58);
    v54 = OUTLINED_FUNCTION_85(v102, v103, v104, v105, &qword_1EAE3C3E0, &qword_19395BB50);
    v57 = v54;
  }

  OUTLINED_FUNCTION_47_5(v54, v55, v56, v57);
  OUTLINED_FUNCTION_4(v59);
  if (v0 + 10 > (v64 >> 1))
  {
    v106 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_84_2(v106, v107, v108, v109, &qword_1EAE3C3E0, &qword_19395BB50);
    v63 = v60;
  }

  OUTLINED_FUNCTION_50(v60, v61, v62, v63);
  return OUTLINED_FUNCTION_38_1(v65, v66);
}

void ResponseGeneration.Event.Generation.Ended.FallbackReason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 5:
        return;
      case 2:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_101_6(10);
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_187_1();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ResponseGeneration.Event.Generation.Ended.FallbackReason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    v7 = v1 == 17 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(17, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0x6C6C416E49746F4ELL && v0 == 0xEE007473694C776FLL;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x6C6C416E49746F4ELL, 0xEE007473694C776FLL) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_158();
        v11 = v1 == v9 && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = v1 == 30 && 0x8000000193A199C0 == v0;
          if (v12 || (OUTLINED_FUNCTION_0_9(30, 0x8000000193A199C0) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = OUTLINED_FUNCTION_142_0();
            v15 = v4 && v14 == v0;
            if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v16 = v1 == 0x646469727265764FLL && v0 == 0xEA00000000006E65;
              if (v16 || (OUTLINED_FUNCTION_0_9(0x646469727265764FLL, 0xEA00000000006E65) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v17 = OUTLINED_FUNCTION_138();
                v19 = v4 && v18 == v0;
                if (v19 || (OUTLINED_FUNCTION_0_9(v17, v18) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_26_4();
                  v21 = v4 && v20 == v0;
                  if (v21 || (OUTLINED_FUNCTION_25_7(16, v20) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else if (v1 == 19 && 0x8000000193A19940 == v0)
                  {

                    v5 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_9(19, 0x8000000193A19940);
                    OUTLINED_FUNCTION_89();
                    v5 = 8;
                    if ((v1 & 1) == 0)
                    {
                      v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

void static ResponseGeneration.Event.Generation.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_133_4();
  v3 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(v2);
  v4 = OUTLINED_FUNCTION_47(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_38_11();
  type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_98_6();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C108, &qword_19395B510);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_7();
  v13 = (v0 + *(v12 + 56));
  sub_19351E57C();
  OUTLINED_FUNCTION_107_5();
  sub_19351E57C();
  v14 = OUTLINED_FUNCTION_162_3();
  if (!v14)
  {
    OUTLINED_FUNCTION_9_39();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_55();
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = *v13;
      v27[0] = *v1;
      v26[0] = v15;
      static ResponseGeneration.Event.Generation.Started.== infix(_:_:)(v27, v26);
      goto LABEL_9;
    }

LABEL_12:
    sub_19344E6DC(v0, &qword_1EAE3C108, &qword_19395B510);
    goto LABEL_13;
  }

  if (v14 != 1)
  {
    OUTLINED_FUNCTION_9_39();
    OUTLINED_FUNCTION_114_0();
    sub_19351E57C();
    OUTLINED_FUNCTION_55();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v16 = OUTLINED_FUNCTION_30_7();
      static ResponseGeneration.Event.Generation.Failed.== infix(_:_:)(v16, v17);
      v18 = OUTLINED_FUNCTION_125_3();
      sub_193456418(v18, v19);
      v20 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_160_4(v20, v21, v22);
      goto LABEL_9;
    }

    v23 = OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_160_4(v23, v24, v25);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_102_4();
  sub_19351E57C();
  OUTLINED_FUNCTION_55();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_77_8();
    sub_19351E634();
    goto LABEL_12;
  }

  sub_19351E5D8();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_94_5();
  static ResponseGeneration.Event.Generation.Ended.== infix(_:_:)();
  sub_19351E634();
  OUTLINED_FUNCTION_127();
  sub_19351E634();
LABEL_9:
  OUTLINED_FUNCTION_153_4();
LABEL_13:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t ResponseGeneration.Event.Generation.StateInfo.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_57_3();
  type metadata accessor for ResponseGeneration.Event.Generation.Ended(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_95_5();
      sub_19351E688(&qword_1EAE3C118, type metadata accessor for ResponseGeneration.Event.Generation.Ended, &protocol conformance descriptor for ResponseGeneration.Event.Generation.Ended);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_77_8();
      return sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_59_9();
      v7 = sub_19351D85C();
      OUTLINED_FUNCTION_163_2(v7, &type metadata for ResponseGeneration.Event.Generation.Failed, v7);
      v8 = OUTLINED_FUNCTION_94_5();
      return OUTLINED_FUNCTION_161_2(v8, v9);
    }
  }

  else
  {
    v6 = sub_19351D8B0();
    return OUTLINED_FUNCTION_163_2(v6, &type metadata for ResponseGeneration.Event.Generation.Started, v6);
  }
}

uint64_t ResponseGeneration.Event.RequestValidation.StateInfo.hash(into:)()
{
  OUTLINED_FUNCTION_132_3();
  if (v0)
  {
    OUTLINED_FUNCTION_138_3();
    if (v1)
    {
      OUTLINED_FUNCTION_58_7();
      v2 = sub_19351D958();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.RequestValidation.Ended;
    }

    else
    {
      OUTLINED_FUNCTION_58_7();
      v2 = sub_19351D904();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.RequestValidation.Failed;
    }
  }

  else
  {
    v2 = sub_19351D9AC();
    v3 = v2;
    v4 = &type metadata for ResponseGeneration.Event.RequestValidation.Started;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}

uint64_t ResponseGeneration.Event.Override.Ended.OverrideType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6944676E69727453;
  if (*v0 != 1)
  {
    v1 = 0x6F6C616944746143;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626C6C6146;
  }
}

void ResponseGeneration.Event.Override.Ended.OverrideType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_141_0();
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = v1 == 0x6944676E69727453 && v0 == 0xEC000000676F6C61;
      if (v9 || (OUTLINED_FUNCTION_0_9(0x6944676E69727453, 0xEC000000676F6C61) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x6F6C616944746143 && v0 == 0xE900000000000067)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x6F6C616944746143, 0xE900000000000067);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static ResponseGeneration.Event.Override.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_185_2(&v89);
  memcpy(__dst, v0, 0x48uLL);
  OUTLINED_FUNCTION_185_2(v95);
  v1 = memcpy(v96, v0, sizeof(v96));
  if (!(v92 >> 62))
  {
    if (!(*&__dst[3] >> 62))
    {
      v10 = OUTLINED_FUNCTION_166_2(v1, v2, v3, v4, v5, v6, v7, v8, *&__dst[0], *(&__dst[0] + 1), v70, v71, v72, v73, v74, v75, v76, v77, v89, *(&v89 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83);
      v18 = OUTLINED_FUNCTION_167_2(v10, v11, v12, v13, v14, v15, v16, v17, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1));
      v26 = OUTLINED_FUNCTION_167_2(v18, v19, v20, v21, v22, v23, v24, v25, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1));
      OUTLINED_FUNCTION_166_2(v26, v27, v28, v29, v30, v31, v32, v33, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83);
      v9 = static ResponseGeneration.Event.Override.Started.== infix(_:_:)(&v78);
      goto LABEL_9;
    }

LABEL_10:
    v59 = OUTLINED_FUNCTION_167_2(v1, v2, v3, v4, v5, v6, v7, v8, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1));
    OUTLINED_FUNCTION_166_2(v59, v60, v61, v62, v63, v64, v65, v66, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83);
    sub_19344E6DC(v95, &qword_1EAE3C140, &qword_19395B518);
    v58 = 0;
    return v58 & 1;
  }

  if (v92 >> 62 != 1)
  {
    if (*&__dst[3] >> 62 == 2)
    {
      LOBYTE(v80) = v91;
      LOBYTE(v72) = __dst[2];
      v34 = OUTLINED_FUNCTION_166_2(v1, v2, v3, v4, v5, v6, v7, v8, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), v72, v73, v74, v75, v76, v77, v89, *(&v89 + 1), v90, *(&v90 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83);
      v42 = OUTLINED_FUNCTION_167_2(v34, v35, v36, v37, v38, v39, v40, v41, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1));
      v50 = OUTLINED_FUNCTION_167_2(v42, v43, v44, v45, v46, v47, v48, v49, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1));
      OUTLINED_FUNCTION_166_2(v50, v51, v52, v53, v54, v55, v56, v57, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83);
      v9 = static ResponseGeneration.Event.Override.Failed.== infix(_:_:)(&v78, &v68);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (*&__dst[3] >> 62 != 1)
  {
    goto LABEL_10;
  }

  v84 = v89;
  v85 = v90;
  v86 = v91;
  v87 = v92 & 0x3FFFFFFFFFFFFFFFLL;
  v88 = v93;
  v78 = __dst[0];
  v79 = __dst[1];
  v80 = __dst[2];
  v81 = *&__dst[3] & 0x3FFFFFFFFFFFFFFFLL;
  v82 = *(&__dst[3] + 8);
  sub_19350E860(__dst, &v68);
  sub_19350E860(&v89, &v68);
  sub_19350E860(&v89, &v68);
  sub_19350E860(__dst, &v68);
  v9 = static ResponseGeneration.Event.Override.Ended.== infix(_:_:)(&v84, &v78);
LABEL_9:
  v58 = v9;
  sub_19344E6DC(v95, &qword_1EAE3C140, &qword_19395B518);
  sub_19351DA00(__dst);
  sub_19351DA00(&v89);
  return v58 & 1;
}

uint64_t ResponseGeneration.Event.Override.StateInfo.hash(into:)()
{
  v1 = *(v0 + 48) >> 62;
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = sub_19351DAA8();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.Override.Ended;
    }

    else
    {
      v2 = sub_19351DA54();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.Override.Failed;
    }
  }

  else
  {
    v2 = sub_19351DAFC();
    v3 = v2;
    v4 = &type metadata for ResponseGeneration.Event.Override.Started;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}

uint64_t ResponseGeneration.Event.ResponseCatalog.StateInfo.hash(into:)()
{
  OUTLINED_FUNCTION_132_3();
  if (v0)
  {
    OUTLINED_FUNCTION_138_3();
    if (v1)
    {
      OUTLINED_FUNCTION_58_7();
      v2 = sub_19351DBA4();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.ResponseCatalog.Ended;
    }

    else
    {
      OUTLINED_FUNCTION_58_7();
      v2 = sub_19351DB50();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.ResponseCatalog.Failed;
    }
  }

  else
  {
    v2 = sub_19351DBF8();
    v3 = v2;
    v4 = &type metadata for ResponseGeneration.Event.ResponseCatalog.Started;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}

uint64_t ResponseGeneration.Event.ModelInference.StateInfo.hash(into:)()
{
  if (*(v0 + 33))
  {
    if (*(v0 + 33) == 1)
    {
      v1 = sub_19351DCA0();
      v2 = v1;
      v3 = &type metadata for ResponseGeneration.Event.ModelInference.Ended;
    }

    else
    {
      v1 = sub_19351DC4C();
      v2 = v1;
      v3 = &type metadata for ResponseGeneration.Event.ModelInference.Failed;
    }
  }

  else
  {
    v1 = sub_19351DCF4();
    v2 = v1;
    v3 = &type metadata for ResponseGeneration.Event.ModelInference.Started;
  }

  return OUTLINED_FUNCTION_154_0(v1, v3, v2);
}

uint64_t ResponseGeneration.Event.HallucinationDetection.StateInfo.hash(into:)()
{
  OUTLINED_FUNCTION_132_3();
  if (v0)
  {
    OUTLINED_FUNCTION_138_3();
    if (v1)
    {
      OUTLINED_FUNCTION_58_7();
      v2 = sub_19351DD9C();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.HallucinationDetection.Ended;
    }

    else
    {
      OUTLINED_FUNCTION_58_7();
      v2 = sub_19351DD48();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.HallucinationDetection.Failed;
    }
  }

  else
  {
    v2 = sub_19351DDF0();
    v3 = v2;
    v4 = &type metadata for ResponseGeneration.Event.HallucinationDetection.Started;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}