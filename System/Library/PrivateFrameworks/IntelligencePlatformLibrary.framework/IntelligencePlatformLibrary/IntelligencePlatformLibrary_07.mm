void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[1];
  v2 = v0[5];
  v9 = v0[7];
  v3 = v0[9];
  v10 = v0[11];
  v4 = v0[13];
  v5 = v0[15];
  v6 = v0[17];
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v7 = v0[3];
    sub_19393CAD0();
    sub_19393CAD0();
    if (v1)
    {
      sub_19393C640();
    }

    sub_19393CAD0();
    if (v7)
    {
      sub_19393C640();
    }
  }

  if (v2 == 1)
  {
    goto LABEL_12;
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  if (!v9)
  {
LABEL_12:
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  if (v3 == 1)
  {
    goto LABEL_18;
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v3)
  {
    sub_19393C640();
  }

  if (!v10)
  {
LABEL_18:
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  if (v4 == 1)
  {
    goto LABEL_25;
  }

  sub_19393CAD0();
  if (v4)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v5)
    {
      goto LABEL_22;
    }

LABEL_25:
    sub_19393CAD0();
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  sub_19393CAD0();
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_22:
  sub_19393CAD0();
  sub_19393C640();
  if (!v6)
  {
LABEL_23:
    sub_19393CAD0();
    OUTLINED_FUNCTION_196();
    return;
  }

LABEL_26:
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_196();

  sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CAB10(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.speculativeDecodingAcceptanceRate.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.draftModelInferenceCallCount.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.draftOutputTokenCount.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.targetOutputTokenCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
}

void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 12);
  v9 = *(v0 + 20);
  v10 = *(v0 + 28);
  v2 = *(v0 + 36);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v9)
  {
    sub_19393CAE0();
  }

  if (v10)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v2)
    {
LABEL_10:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v4)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  sub_19393CAD0();
  if (!v4)
  {
LABEL_11:
    sub_19393CAD0();
    MEMORY[0x193B18060](v3);
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_19393CAD0();
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_18:
    sub_19393CAD0();
    goto LABEL_19;
  }

LABEL_16:
  sub_19393CAD0();
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_19393CAD0();
  MEMORY[0x193B18060](v5);
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_13:
  sub_19393CAD0();
  MEMORY[0x193B18060](v7);
LABEL_19:
  OUTLINED_FUNCTION_107();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CB0C8(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

void static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117_6();
  OUTLINED_FUNCTION_91_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v93 = *(v2 + 64);
  LODWORD(v101) = *(v2 + 72);
  HIDWORD(v101) = *(v2 + 56);
  v81 = *(v2 + 80);
  HIDWORD(v97) = *(v2 + 88);
  OUTLINED_FUNCTION_139_3(v146);
  HIDWORD(v72) = *(v1 + 321);
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v85 = *(v0 + 64);
  v18 = *(v0 + 72);
  v77 = *(v0 + 80);
  HIDWORD(v89) = *(v0 + 88);
  OUTLINED_FUNCTION_167_0(v147);
  if (v4)
  {
    if (!v11)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v3 == v10)
    {
      v19 = v11;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_49;
    }
  }

  if (v6)
  {
    if (!v13)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v5 == v12)
    {
      v20 = v13;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_49;
    }
  }

  if (v8)
  {
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v21 = v15;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_49;
    }
  }

  if ((v101 & 0x100000000) != 0)
  {
    if (!v17)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v9 == v16)
    {
      v22 = v17;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_49;
    }
  }

  if (v101)
  {
    if (!v18)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v93 == v85)
    {
      v23 = v18;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_49;
    }
  }

  if ((v97 & 0x100000000) != 0)
  {
    if (!HIDWORD(v89))
    {
      goto LABEL_49;
    }

LABEL_42:
    v25 = *(v0 + 321);
    OUTLINED_FUNCTION_139_3(__src);
    OUTLINED_FUNCTION_167_0(&__src[144]);
    OUTLINED_FUNCTION_139_3(v145);
    if (sub_1934A8518(v145) == 1)
    {
      OUTLINED_FUNCTION_167_0(__dst);
      if (sub_1934A8518(__dst) == 1)
      {
        OUTLINED_FUNCTION_139_3(v143);
        OUTLINED_FUNCTION_112_5(v146, v26, v27, v28, v29, v30, v31, v32, v68, v72, v77, v81, v85, v89, v93, v97, v101, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141[0]);
        OUTLINED_FUNCTION_112_5(v147, v33, v34, v35, v36, v37, v38, v39, v69, v73, v78, v82, v86, v90, v94, v98, v102, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141[0]);
        OUTLINED_FUNCTION_175();
        sub_193442B60(v40, v41, v42);
LABEL_51:
        if ((v76 & 1) == 0)
        {
          memcpy(__src, (v1 + 240), 0x51uLL);
          __src[81] = v76;
          if ((v25 & 1) == 0)
          {
            static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.== infix(_:_:)();
          }
        }

        goto LABEL_49;
      }

      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
    }

    else
    {
      OUTLINED_FUNCTION_139_3(v143);
      OUTLINED_FUNCTION_167_0(__dst);
      if (sub_1934A8518(__dst) != 1)
      {
        OUTLINED_FUNCTION_112_5(v146, v43, v44, v45, v46, v47, v48, v49, v68, v72, v77, v81, v85, v89, v93, v97, v101, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141[0]);
        OUTLINED_FUNCTION_112_5(v147, v50, v51, v52, v53, v54, v55, v56, v70, v74, v79, v83, v87, v91, v95, v99, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141[0]);
        OUTLINED_FUNCTION_112_5(v143, v57, v58, v59, v60, v61, v62, v63, v71, v75, v80, v84, v88, v92, v96, v100, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141[0]);
        v64 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.== infix(_:_:)((v1 + 96), (v0 + 96));
        OUTLINED_FUNCTION_167_0(&v105);
        sub_1934D1724(&v105);
        OUTLINED_FUNCTION_139_3(&v123);
        sub_1934D1724(&v123);
        OUTLINED_FUNCTION_139_3(v141);
        OUTLINED_FUNCTION_175();
        sub_193442B60(v65, v66, v67);
        if ((v64 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_51;
      }

      OUTLINED_FUNCTION_139_3(v141);
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      sub_1934D1724(v141);
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_193442B60(__dst, &qword_1EAE3B508, &qword_193952D18);
    goto LABEL_49;
  }

  v24 = BYTE4(v89);
  if (v81 != v77)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_49:
  OUTLINED_FUNCTION_118_2();
}

void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = *(v0 + 24);
  v19 = v0[2];
  v20 = v0[4];
  v2 = v0[6];
  v21 = *(v0 + 40);
  v22 = *(v0 + 56);
  v3 = v0[8];
  v4 = *(v0 + 72);
  v5 = v0[10];
  v6 = *(v0 + 88);
  v7 = *(v0 + 321);
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      v8 = OUTLINED_FUNCTION_76_4(v19);
      MEMORY[0x193B18060](v8);
      goto LABEL_9;
    }
  }

  else
  {
    v18 = v0[6];
    v9 = *(v0 + 72);
    v10 = v0[8];
    v11 = *(v0 + 88);
    v12 = v0[10];
    v13 = *(v0 + 321);
    v14 = *v0;
    OUTLINED_FUNCTION_103_0();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v7 = v13;
    v5 = v12;
    v6 = v11;
    v3 = v10;
    v4 = v9;
    v2 = v18;
    MEMORY[0x193B18060](v15);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_9:
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v16 = OUTLINED_FUNCTION_76_4(v20);
    MEMORY[0x193B18060](v16);
  }

  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_20:
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_103_0();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v2;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x193B18060](v17);
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_14:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v3);
  if (!v6)
  {
LABEL_15:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v5);
    goto LABEL_22;
  }

LABEL_21:
  OUTLINED_FUNCTION_104_0();
LABEL_22:
  memcpy(v25, v0 + 12, 0x90uLL);
  if (sub_1934A8518(v25) != 1)
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(__dst, v0 + 12, sizeof(__dst));
    sub_1934A853C(__dst, v24);
    GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)();
    memcpy(v24, v0 + 12, sizeof(v24));
    sub_1934D1724(v24);
    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_104_0();
  if (v7)
  {
    goto LABEL_26;
  }

LABEL_24:
  OUTLINED_FUNCTION_103_0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)();
LABEL_27:
  OUTLINED_FUNCTION_116();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CB6A8(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.onBehalfOfBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.createdByBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_1934CB8A4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CB8CC@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CB9BC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1934CB9E4@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 88);
  v4 = *(a1 + 105);
  v5 = *(a2 + 16);
  v38 = *(a2 + 24);
  v6 = *(a2 + 88);
  v7 = *(a2 + 105);
  if (*(a1 + 9))
  {
    v29 = *(a2 + 32);
    v30 = *(a1 + 32);
    v28 = *(a1 + 24);
    v31 = *(a2 + 40);
    v32 = *(a2 + 48);
    v23 = *(a2 + 56);
    v24 = *(a1 + 56);
    v33 = *(a1 + 48);
    v34 = *(a1 + 80);
    v25 = *(a1 + 40);
    v26 = *(a2 + 64);
    v27 = *(a1 + 64);
    v22 = *(a2 + 72);
    v35 = *(a1 + 72);
    v36 = *(a2 + 80);
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

    v29 = *(a2 + 32);
    v30 = *(a1 + 32);
    v28 = *(a1 + 24);
    v31 = *(a2 + 40);
    v32 = *(a2 + 48);
    v23 = *(a2 + 56);
    v24 = *(a1 + 56);
    v33 = *(a1 + 48);
    v34 = *(a1 + 80);
    v25 = *(a1 + 40);
    v26 = *(a2 + 64);
    v27 = *(a1 + 64);
    v22 = *(a2 + 72);
    v35 = *(a1 + 72);
    v36 = *(a2 + 80);
    OUTLINED_FUNCTION_178_0();
    v8 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter();
    if (v8 != GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter())
    {
      return 0;
    }
  }

  result = sub_19344FC94(v2, v5);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v30)
  {
    v11 = v34;
    v10 = v35;
    v12 = v36;
    v13 = v31;
    v14 = v32;
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    v12 = v36;
    v15 = v29;
    if (v28 != v38)
    {
      v15 = 1;
    }

    v11 = v34;
    v10 = v35;
    v13 = v31;
    v14 = v32;
    if (v15)
    {
      return 0;
    }
  }

  if (v33)
  {
    if (!v14)
    {
      return 0;
    }

    result = v25;
    if (v25 != v13 || v33 != v14)
    {
      v37 = v12;
      v17 = v10;
      v18 = v11;
      result = sub_19393CA30();
      v12 = v37;
      v11 = v18;
      v10 = v17;
      if ((result & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v27)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    v19 = v26;
    if (v24 != v23)
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  if (v10 != v22 || v11 != v12)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

LABEL_37:
  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

LABEL_42:
    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v7)
      {
        return 0;
      }

      v21 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter(result);
      if (v21 != GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter(v21))
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v3) & 1) == 0)
  {
    goto LABEL_42;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v2 = *(v1 + 24);
  v16 = *(v1 + 16);
  v15 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v17 = *(v1 + 105);
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v14 = *(v1 + 64);
    v9 = *(v1 + 88);
    v10 = *(v1 + 24);
    OUTLINED_FUNCTION_103_0();
    v2 = v10;
    v7 = v9;
    v5 = v14;
    v11 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter();
    MEMORY[0x193B18030](v11);
  }

  sub_1934D11C8(v0, v16);
  if (v15)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
    if (v3)
    {
LABEL_6:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_11:
      OUTLINED_FUNCTION_103_0();
      MEMORY[0x193B18060](v4);
      if (v6)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
  if (v6)
  {
LABEL_8:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
    goto LABEL_13;
  }

LABEL_12:
  OUTLINED_FUNCTION_104_0();
LABEL_13:
  if (v7 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_103_0();
    v13 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter(v12);
    MEMORY[0x193B18030](v13);
  }

  OUTLINED_FUNCTION_196();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CBFA0(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.styles.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.recipientsLength.setter(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.attachmentsLength.setter(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.languageDetected.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numChunks.setter(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numRetries.setter(uint64_t result, char a2)
{
  *(v2 + 352) = result;
  *(v2 + 360) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numGMSCalls.setter(uint64_t result, char a2)
{
  *(v2 + 368) = result;
  *(v2 + 376) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.modelType.setter(uint64_t result, char a2)
{
  *(v2 + 384) = result;
  *(v2 + 392) = a2 & 1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 513;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = MEMORY[0x1E69E7CC0];
  *(a1 + 120) = 33686018;
  *(a1 + 123) = 33686018;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 201) = 33686018;
  *(a1 + 205) = 2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 1;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1;
  *(a1 + 377) = 514;
  *(a1 + 384) = 0;
  *(a1 + 392) = 1;
}

uint64_t sub_1934CC808@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CC830@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117_6();
  v97 = *(v0 + 89);
  v95 = *(v0 + 121);
  v96 = *(v0 + 120);
  v93 = *(v0 + 123);
  v94 = *(v0 + 122);
  v92 = *(v0 + 124);
  v90 = *(v0 + 125);
  v88 = *(v0 + 126);
  v2 = *(v0 + 128);
  v86 = *(v0 + 136);
  v3 = *(v0 + 144);
  v84 = *(v0 + 152);
  v4 = *(v0 + 160);
  v82 = *(v0 + 168);
  v80 = *(v0 + 184);
  v78 = *(v0 + 200);
  v76 = *(v0 + 201);
  v74 = *(v0 + 202);
  v5 = *(v1 + 128);
  v6 = *(v1 + 144);
  v7 = *(v1 + 160);
  v8 = *(v1 + 176);
  v9 = *(v1 + 192);
  v72 = *(v0 + 203);
  v47 = *(v0 + 204);
  v52 = *(v0 + 205);
  v55 = *(v0 + 208);
  v54 = *(v0 + 216);
  v57 = *(v0 + 224);
  v56 = *(v0 + 232);
  v61 = *(v0 + 240);
  v58 = *(v0 + 248);
  v63 = *(v0 + 256);
  v62 = *(v0 + 264);
  v65 = *(v0 + 272);
  v64 = *(v0 + 280);
  v67 = *(v0 + 288);
  v66 = *(v0 + 296);
  v69 = *(v0 + 304);
  v68 = *(v0 + 312);
  v70 = *(v0 + 328);
  v71 = *(v0 + 320);
  v10 = *(v1 + 8);
  v11 = *(v1 + 56);
  v12 = *(v1 + 72);
  v13 = *(v1 + 89);
  v14 = *(v1 + 120);
  v15 = *(v1 + 121);
  v16 = *(v1 + 122);
  v17 = *(v1 + 123);
  v91 = *(v1 + 124);
  v89 = *(v1 + 125);
  v87 = *(v1 + 126);
  v85 = *(v1 + 136);
  v83 = *(v1 + 152);
  v81 = *(v1 + 168);
  v79 = *(v1 + 184);
  v77 = *(v1 + 200);
  v75 = *(v1 + 201);
  v73 = *(v1 + 202);
  v35 = *(v1 + 203);
  v36 = *(v1 + 204);
  v37 = *(v1 + 205);
  v38 = *(v1 + 208);
  v39 = *(v1 + 216);
  v40 = *(v1 + 224);
  v41 = *(v1 + 232);
  v42 = *(v1 + 240);
  v43 = *(v1 + 248);
  v44 = *(v1 + 256);
  v45 = *(v1 + 264);
  v46 = *(v1 + 272);
  v48 = *(v1 + 280);
  v49 = *(v1 + 288);
  v50 = *(v1 + 296);
  v51 = *(v1 + 304);
  v53 = *(v1 + 312);
  v59 = *(v1 + 320);
  v60 = *(v1 + 328);
  if (*(v0 + 8))
  {
    if (!*(v1 + 8))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*v0 != *v1)
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 24))
  {
    if (!*(v1 + 24))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 16) == *(v1 + 16))
    {
      v18 = *(v1 + 24);
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 40))
  {
    if (!*(v1 + 40))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 32) == *(v1 + 32))
    {
      v19 = *(v1 + 40);
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 56))
  {
    if (!*(v1 + 56))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 48) != *(v1 + 48))
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 72))
  {
    if (!*(v1 + 72))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 64) != *(v1 + 64))
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 88))
  {
    if (!*(v1 + 88))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 80) == *(v1 + 80))
    {
      v20 = *(v1 + 88);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_192;
    }
  }

  if (v97 == 2)
  {
    v98 = *(v0 + 192);
    v99 = *(v0 + 176);
    if (v13 != 2)
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (v13 == 2)
    {
      goto LABEL_192;
    }

    v98 = *(v0 + 192);
    v99 = *(v0 + 176);
    if ((v13 ^ v97))
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 104))
  {
    if (!*(v1 + 104))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 96) == *(v1 + 96))
    {
      v21 = *(v1 + 104);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_192;
    }
  }

  if ((sub_1934C4DD8(*(v0 + 112), *(v1 + 112)) & 1) == 0)
  {
    goto LABEL_192;
  }

  if (v96 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v14 == 2 || ((v14 ^ v96) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v95 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v15 == 2 || ((v15 ^ v95) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v94 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v16 == 2 || ((v16 ^ v94) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v93 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v17 == 2 || ((v17 ^ v93) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v92 == 2)
  {
    if (v91 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v91 == 2 || ((v91 ^ v92) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v90 == 2)
  {
    if (v89 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v89 == 2 || ((v89 ^ v90) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v88 == 2)
  {
    if (v87 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v87 == 2 || ((v87 ^ v88) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v86)
  {
    if (!v85)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v22 = v85;
    if (v2 != v5)
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_192;
    }
  }

  if (v84)
  {
    if (!v83)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v23 = v83;
    if (v3 != v6)
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_192;
    }
  }

  if (v82)
  {
    if (!v81)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v24 = v81;
    if (v4 != v7)
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_192;
    }
  }

  if (v80)
  {
    if (!v79)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v25 = v79;
    if (v99 != v8)
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_192;
    }
  }

  if (v78)
  {
    if (!v77)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v26 = v77;
    if (v98 != v9)
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_192;
    }
  }

  if (v76 == 2)
  {
    if (v75 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v75 == 2 || ((v75 ^ v76) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v74 == 2)
  {
    if (v73 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v73 == 2 || ((v73 ^ v74) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v72 == 2)
  {
    if (v35 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v35 == 2 || ((v35 ^ v72) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v47 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v36 == 2 || ((v36 ^ v47) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v52 == 2)
  {
    if (v37 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v37 == 2 || ((v37 ^ v52) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v54)
  {
    if (!v39)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v27 = v39;
    if (v55 != v38)
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_192;
    }
  }

  if (v56)
  {
    if (!v41)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v28 = v41;
    if (v57 != v40)
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_192;
    }
  }

  if (v58)
  {
    if (!v43)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v29 = v43;
    if (v61 != v42)
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_192;
    }
  }

  if (v62)
  {
    if (!v45)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v30 = v45;
    if (v63 != v44)
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_192;
    }
  }

  if (v64)
  {
    if (!v48)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v31 = v48;
    if (v65 != v46)
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_192;
    }
  }

  if (v66)
  {
    if (!v50)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v32 = v50;
    if (v67 != v49)
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_192;
    }
  }

  if (v68)
  {
    if (!v53)
    {
      goto LABEL_192;
    }

    goto LABEL_185;
  }

  v33 = v53;
  if (v69 != v51)
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
LABEL_185:
    if (v70 && v60 && (v71 != v59 || v70 != v60))
    {
      sub_19393CA30();
    }
  }

LABEL_192:
  OUTLINED_FUNCTION_118_2();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v49 = *(v1 + 24);
  v29 = v1[2];
  v30 = v1[4];
  v31 = v1[6];
  v50 = *(v1 + 40);
  v51 = *(v1 + 56);
  v52 = *(v1 + 72);
  v2 = v1[10];
  v53 = *(v1 + 88);
  v54 = *(v1 + 89);
  v32 = v1[8];
  v33 = v1[12];
  v55 = *(v1 + 104);
  v3 = v1[14];
  v57 = *(v1 + 120);
  v4 = *(v1 + 121);
  v59 = *(v1 + 122);
  v5 = *(v1 + 123);
  v6 = *(v1 + 125);
  v61 = *(v1 + 124);
  v62 = *(v1 + 126);
  v35 = v1[16];
  v63 = *(v1 + 136);
  v36 = v1[18];
  v64 = *(v1 + 152);
  v37 = v1[20];
  v65 = *(v1 + 168);
  v38 = v1[22];
  v7 = v1[24];
  v66 = *(v1 + 184);
  v67 = *(v1 + 200);
  v8 = *(v1 + 202);
  v68 = *(v1 + 201);
  v69 = *(v1 + 203);
  v9 = *(v1 + 204);
  v70 = *(v1 + 205);
  v41 = v1[26];
  v71 = *(v1 + 216);
  v42 = v1[28];
  v72 = *(v1 + 232);
  v43 = v1[30];
  v73 = *(v1 + 248);
  v44 = v1[32];
  v74 = *(v1 + 264);
  v45 = v1[34];
  v75 = *(v1 + 280);
  v46 = v1[36];
  v76 = *(v1 + 296);
  v34 = v1[38];
  v77 = *(v1 + 312);
  v78 = v1[41];
  v48 = v1[42];
  v79 = *(v1 + 344);
  v39 = v1[44];
  v56 = *(v1 + 360);
  v40 = v1[46];
  v58 = *(v1 + 376);
  v10 = *(v1 + 377);
  v80 = *(v1 + 378);
  v47 = v1[48];
  v60 = *(v1 + 392);
  if (v11 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v28 = v1[24];
    v12 = v1[14];
    v13 = *(v1 + 202);
    v14 = *(v1 + 121);
    v15 = *(v1 + 204);
    v16 = *(v1 + 377);
    v17 = v1[10];
    v18 = *(v1 + 123);
    v19 = *(v1 + 125);
    v20 = *v1;
    sub_19393CAD0();
    v21 = v20;
    v6 = v19;
    v5 = v18;
    v2 = v17;
    v10 = v16;
    v9 = v15;
    v4 = v14;
    v8 = v13;
    v3 = v12;
    v7 = v28;
    MEMORY[0x193B18060](v21);
  }

  sub_19393CAD0();
  if (!v49)
  {
    MEMORY[0x193B18060](v29);
  }

  sub_19393CAD0();
  if (!v50)
  {
    MEMORY[0x193B18060](v30);
  }

  sub_19393CAD0();
  if (!v51)
  {
    MEMORY[0x193B18060](v31);
  }

  sub_19393CAD0();
  if (!v52)
  {
    MEMORY[0x193B18060](v32);
  }

  sub_19393CAD0();
  if (!v53)
  {
    MEMORY[0x193B18060](v2);
  }

  if (v54 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v55)
  {
    MEMORY[0x193B18060](v33);
  }

  sub_1934D12E4(v0, v3);
  if (v57 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v59 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v61 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v62 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v63)
  {
    v22 = OUTLINED_FUNCTION_76_4(v35);
    MEMORY[0x193B18060](v22);
  }

  sub_19393CAD0();
  if (!v64)
  {
    v23 = OUTLINED_FUNCTION_76_4(v36);
    MEMORY[0x193B18060](v23);
  }

  sub_19393CAD0();
  if (!v65)
  {
    v24 = OUTLINED_FUNCTION_76_4(v37);
    MEMORY[0x193B18060](v24);
  }

  sub_19393CAD0();
  if (!v66)
  {
    v25 = OUTLINED_FUNCTION_76_4(v38);
    MEMORY[0x193B18060](v25);
  }

  if (v67)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v7;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x193B18060](v26);
  }

  if (v68 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v8 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v69 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v9 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v70 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v71)
  {
    MEMORY[0x193B18060](v41);
  }

  sub_19393CAD0();
  if (!v72)
  {
    MEMORY[0x193B18060](v42);
  }

  sub_19393CAD0();
  if (!v73)
  {
    MEMORY[0x193B18060](v43);
  }

  sub_19393CAD0();
  if (!v74)
  {
    MEMORY[0x193B18060](v44);
  }

  sub_19393CAD0();
  if (!v75)
  {
    MEMORY[0x193B18060](v45);
  }

  sub_19393CAD0();
  if (!v76)
  {
    MEMORY[0x193B18060](v46);
  }

  sub_19393CAD0();
  if (!v77)
  {
    MEMORY[0x193B18060](v34);
  }

  sub_19393CAD0();
  if (v78)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v79)
  {
    MEMORY[0x193B18060](v48);
  }

  sub_19393CAD0();
  if (!v56)
  {
    MEMORY[0x193B18060](v39);
  }

  sub_19393CAD0();
  if (!v58)
  {
    MEMORY[0x193B18060](v40);
  }

  if (v10 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v80 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v60)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v47);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CDBA0(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.inputLength.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.languageDetected.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.responseUrgencyFastClassifier.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.confidenceBucket.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 112) = *result;
  *(v1 + 120) = v2;
  *(v1 + 121) = v3;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 513;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 1;
  *(a1 + 84) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 256;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 173) = 2;
  *(a1 + 169) = 33686018;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
}

uint64_t sub_1934CE10C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CE134@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117_6();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  v7 = v2[16];
  v8 = *(v2 + 3);
  v9 = v2[32];
  v10 = *(v2 + 5);
  v11 = v2[48];
  v12 = v2[49];
  v13 = *(v3 + 8);
  v43 = *(v3 + 7);
  v41 = *(v3 + 9);
  v44 = v3[80];
  v14 = *(v3 + 21);
  v42 = v3[88];
  v38 = *(v3 + 12);
  v40 = v3[104];
  v39 = v3[121];
  v15 = v1[21];
  v16 = *v1;
  v17 = *(v1 + 1);
  v18 = *(v1 + 3);
  v19 = *(v1 + 32);
  v20 = *(v1 + 5);
  v21 = *(v1 + 48);
  v22 = *(v1 + 49);
  v23 = *(v1 + 7);
  v24 = *(v1 + 8);
  v25 = *(v1 + 9);
  v26 = *(v1 + 80);
  v27 = *(v1 + 88);
  v28 = *(v1 + 12);
  v29 = *(v1 + 104);
  v30 = *(v1 + 121);
  if (v4 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_70;
    }
  }

  else if (v16 == 2 || ((v16 ^ v4) & 1) != 0)
  {
    goto LABEL_70;
  }

  if (v5 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_70;
    }
  }

  else if (v17 == 2 || ((v17 ^ v5) & 1) != 0)
  {
    goto LABEL_70;
  }

  if (v7)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v6 == *(v1 + 1))
    {
      v31 = *(v1 + 16);
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_70;
    }
  }

  if (v9)
  {
    if (!v19)
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v8 == v18)
    {
      v32 = v19;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_70;
    }
  }

  if (v11)
  {
    if (!v21)
    {
      goto LABEL_70;
    }

LABEL_32:
    if (v12 == 2)
    {
      if (v22 != 2)
      {
        goto LABEL_70;
      }
    }

    else if (v22 == 2 || ((v22 ^ v12) & 1) != 0)
    {
      goto LABEL_70;
    }

    if (v13)
    {
      if (!v24)
      {
        goto LABEL_70;
      }

      v34 = v43 == v23 && v13 == v24;
      if (!v34 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (v24)
    {
      goto LABEL_70;
    }

    if (v44)
    {
      if (!v26)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v41 == v25)
      {
        v35 = v26;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_70;
      }
    }

    if (v42)
    {
      if (!v27)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v14 == v15)
      {
        v36 = v27;
      }

      else
      {
        v36 = 1;
      }

      if (v36)
      {
        goto LABEL_70;
      }
    }

    if (v40)
    {
      if (!v29)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v38 == v28)
      {
        v37 = v29;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        goto LABEL_70;
      }
    }

    if ((v39 & 1) == 0 && (v30 & 1) == 0)
    {
      GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter();
      GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter();
    }

    goto LABEL_70;
  }

  if (v10 == v20)
  {
    v33 = v21;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_70:
  OUTLINED_FUNCTION_118_2();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 16);
  v14 = *(v1 + 8);
  v15 = *(v1 + 24);
  v4 = *(v1 + 32);
  v29 = *(v1 + 48);
  v5 = *(v1 + 49);
  v6 = *(v1 + 64);
  v16 = *(v1 + 40);
  v17 = *(v1 + 72);
  v31 = *(v1 + 80);
  v32 = *(v1 + 88);
  v18 = *(v1 + 96);
  v33 = *(v1 + 104);
  v34 = *(v1 + 121);
  v19 = *(v1 + 128);
  v35 = *(v1 + 136);
  v20 = *(v1 + 144);
  v36 = *(v1 + 152);
  v21 = *(v1 + 160);
  v7 = *(v1 + 169);
  v8 = *(v1 + 170);
  v37 = *(v1 + 168);
  v38 = *(v1 + 171);
  v39 = *(v1 + 172);
  v30 = *(v1 + 173);
  v22 = *(v1 + 176);
  v40 = *(v1 + 184);
  v23 = *(v1 + 192);
  v41 = *(v1 + 200);
  v24 = *(v1 + 208);
  v42 = *(v1 + 216);
  v25 = *(v1 + 224);
  v43 = *(v1 + 232);
  v26 = *(v1 + 240);
  v44 = *(v1 + 248);
  v27 = *(v1 + 256);
  v45 = *(v1 + 264);
  v28 = *(v1 + 272);
  v46 = *(v1 + 280);
  if (*v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v4)
    {
LABEL_7:
      OUTLINED_FUNCTION_103_0();
      MEMORY[0x193B18060](v15);
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v14);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_10:
  if (v29)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  if (v5 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v6)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v18);
  }

  if (v34)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v9 = GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter();
    MEMORY[0x193B18030](v9);
  }

  if (v35)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v10 = OUTLINED_FUNCTION_76_4(v19);
    MEMORY[0x193B18060](v10);
  }

  if (v36)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v11 = OUTLINED_FUNCTION_76_4(v20);
    MEMORY[0x193B18060](v11);
  }

  if (v37)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v12 = OUTLINED_FUNCTION_76_4(v21);
    MEMORY[0x193B18060](v12);
  }

  if (v7 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v8 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v38 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v39 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v30 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v40)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  if (v41)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v23);
  }

  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v24);
  }

  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v25);
  }

  if (v44)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v26);
  }

  if (v45)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v27);
  }

  if (v46)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v28);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934CEDE8(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  return MEMORY[0x193B18060](v3);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934CEF48(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

void GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (v5 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  v8 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v8);
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (v4)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x193B18060](v6);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hashValue.getter()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_88_4(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CF1BC()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_88_4(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.modelUsed.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.accountType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  *(v1 + 65) = v3;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 513;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 256;
}

uint64_t sub_1934CF3A0@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CF3C8@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 65);
  v12 = *(a2 + 25);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 65);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v16 = *(a2 + 8);
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

  if (v6)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 16))
    {
      v17 = *(a2 + 24);
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v7 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v12 == 2 || ((v12 ^ v7) & 1) != 0)
    {
      return v18;
    }
  }

  if (v9)
  {
    if (!v13)
    {
      return 0;
    }

    v19 = v8 == *(a2 + 32) && v9 == v13;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v10 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v14 == 2 || ((v14 ^ v10) & 1) != 0)
    {
      return v18;
    }
  }

  if (v11)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    v20 = GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter();
    if (v20 != GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter())
    {
      return 0;
    }
  }

  return 1;
}

void GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v12 = *(v0 + 25);
  v3 = v0[5];
  v4 = *(v0 + 48);
  v5 = *(v0 + 65);
  if (*(v0 + 8) != 1)
  {
    v11 = v0[5];
    v7 = *(v0 + 48);
    v8 = *(v0 + 65);
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    v5 = v8;
    v4 = v7;
    v3 = v11;
    MEMORY[0x193B18060](v9);
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_104_0();
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x193B18060](v6);
LABEL_9:
  if (v12 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177_1();
    v10 = GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter();
    MEMORY[0x193B18030](v10);
  }

  OUTLINED_FUNCTION_107();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CF7D0(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationError.GenericError.domain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void GenerativeFunctionsInstrumentationError.GenericError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1934CF8F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1934CF97C()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v1);
}

uint64_t sub_1934CFA04()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v2)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934CFAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 24);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  sub_19393CAB0();
  a4(v9);
  return sub_19393CB00();
}

uint64_t sub_1934CFB48@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFB70@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFD88@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFDB0@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFF2C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFF54@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D00D0@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D00F8@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D0274@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D029C@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D0454@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D047C@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

void GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1934D0708@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934D0730@<X0>(char **a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.allCases.getter();
  *a1 = result;
  return result;
}

BOOL sub_1934D0830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_178_0();
    v8 = v6(v4, v5, v6, v7);
    return v8 == a3();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t sub_1934D08E0()
{
  OUTLINED_FUNCTION_148_2();
  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v3 = v0;
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v5 = v3(v4);
  return MEMORY[0x193B18030](v5);
}

uint64_t sub_1934D096C(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v3 = a1();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_1934D0A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_180();
    v6 = a4();
    MEMORY[0x193B18030](v6);
  }

  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier.modelBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::GenerativeFunctionsInstrumentationError::SummarizationError::InvalidModelBundleIdentifier __swiftcall GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.modelBundleIdentifier.value._object = v2;
  result.modelBundleIdentifier.value._countAndFlagsBits = v1;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O28InvalidModelBundleIdentifierV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      OUTLINED_FUNCTION_155(a1);
      v5 = v5 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O28InvalidModelBundleIdentifierV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O28InvalidModelBundleIdentifierV9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  if (v1)
  {
    v2 = sub_19393CAD0();
    OUTLINED_FUNCTION_116_3(v2);
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934D0D40(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_19393CAB0();
  if (v2)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_116_3(v3);
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O13InputTooShortV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O13InputTooShortV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_51_5();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v3 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      return MEMORY[0x193B18060](v1);
    }
  }

  else
  {
    v5 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v5);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O13InputTooShortV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    MEMORY[0x193B18060](v1);
  }

  sub_19393CAD0();
  if (!v3)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934D0F48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v3 != 1)
  {
    MEMORY[0x193B18060](v2);
  }

  sub_19393CAD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934D103C(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_1934D10B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t sub_1934D1104()
{
  if (*(v0 + 33))
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = *(v0 + 2);
  sub_19393CAD0();
  if (v5)
  {
    sub_19393CAD0();
    if ((v3 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_19393CAD0();
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_19393CAD0();
  MEMORY[0x193B18060](v2);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    sub_19393CAD0();
    return sub_19393CAE0();
  }

  return sub_19393CAD0();
}

uint64_t sub_1934D11C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_19393C640();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D1240(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {

      sub_19393C640();
      sub_19393C640();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D12E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {
      v5 += 16;
      v6 = GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter();
      result = MEMORY[0x193B18030](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1934D1358(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x193B18030](v3);
  if (v3)
  {
    v4 = (a2 + 96);
    do
    {
      v5 = *(v4 - 8);
      v6 = *(v4 - 7);
      v7 = *(v4 - 6);
      v8 = *(v4 - 5);
      v9 = *(v4 - 4);
      v10 = *(v4 - 24);
      v12 = *(v4 - 2);
      v11 = *(v4 - 8);
      v13 = *v4;
      if (v6)
      {
        sub_19393CAD0();
        sub_19344C630(v5, v6, v7, v8);
        sub_19393C640();
        sub_19393C640();
        if (v10)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_19393CAD0();
        if (v10)
        {
LABEL_5:
          sub_19393CAD0();
          if (!v11)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      sub_19393CAD0();
      MEMORY[0x193B18060](v9);
      if (!v11)
      {
LABEL_9:
        sub_19393CAD0();
        MEMORY[0x193B18060](v12);
        goto LABEL_10;
      }

LABEL_6:
      sub_19393CAD0();
LABEL_10:
      sub_19393CAD0();
      if (!v13)
      {
        sub_19393CAE0();
      }

      sub_193442C40(v5, v6, v7, v8);
      v4 += 72;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1934D14B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x193B18060](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D1508(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(sub_19393BE60() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1934C4560(&qword_1EAE3AD68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1934D1694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_1934D16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_1934D178C()
{
  result = qword_1EAE3B520;
  if (!qword_1EAE3B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B520);
  }

  return result;
}

unint64_t sub_1934D187C()
{
  result = qword_1EAE3B530;
  if (!qword_1EAE3B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B530);
  }

  return result;
}

unint64_t sub_1934D1904()
{
  result = qword_1EAE3B548;
  if (!qword_1EAE3B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B548);
  }

  return result;
}

unint64_t sub_1934D195C()
{
  result = qword_1EAE3B550;
  if (!qword_1EAE3B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B550);
  }

  return result;
}

unint64_t sub_1934D19E4()
{
  result = qword_1EAE3B568;
  if (!qword_1EAE3B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B568);
  }

  return result;
}

unint64_t sub_1934D1A6C()
{
  result = qword_1EAE3B580;
  if (!qword_1EAE3B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B580);
  }

  return result;
}

unint64_t sub_1934D1AC4()
{
  result = qword_1EAE3B588;
  if (!qword_1EAE3B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B588);
  }

  return result;
}

unint64_t sub_1934D1B1C()
{
  result = qword_1EAE3B590;
  if (!qword_1EAE3B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B590);
  }

  return result;
}

unint64_t sub_1934D1B74()
{
  result = qword_1EAE3B598;
  if (!qword_1EAE3B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B598);
  }

  return result;
}

unint64_t sub_1934D1BFC()
{
  result = qword_1EAE3B5B0;
  if (!qword_1EAE3B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5B0);
  }

  return result;
}

unint64_t sub_1934D1C84()
{
  result = qword_1EAE3B5C8;
  if (!qword_1EAE3B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5C8);
  }

  return result;
}

unint64_t sub_1934D1CDC()
{
  result = qword_1EAE3B5D0;
  if (!qword_1EAE3B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5D0);
  }

  return result;
}

unint64_t sub_1934D1D34()
{
  result = qword_1EAE3B5D8;
  if (!qword_1EAE3B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5D8);
  }

  return result;
}

unint64_t sub_1934D1DBC()
{
  result = qword_1EAE3B5F0;
  if (!qword_1EAE3B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5F0);
  }

  return result;
}

unint64_t sub_1934D1E44()
{
  result = qword_1EAE3B608;
  if (!qword_1EAE3B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B608);
  }

  return result;
}

unint64_t sub_1934D1E9C()
{
  result = qword_1EAE3B610;
  if (!qword_1EAE3B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B610);
  }

  return result;
}

unint64_t sub_1934D1F24()
{
  result = qword_1EAE3B628;
  if (!qword_1EAE3B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B628);
  }

  return result;
}

unint64_t sub_1934D1FAC()
{
  result = qword_1EAE3B640;
  if (!qword_1EAE3B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B640);
  }

  return result;
}

unint64_t sub_1934D2034()
{
  result = qword_1EAE3B658;
  if (!qword_1EAE3B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B658);
  }

  return result;
}

unint64_t sub_1934D208C()
{
  result = qword_1EAE3B660;
  if (!qword_1EAE3B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B660);
  }

  return result;
}

unint64_t sub_1934D20E4()
{
  result = qword_1EAE3B668;
  if (!qword_1EAE3B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B668);
  }

  return result;
}

unint64_t sub_1934D216C()
{
  result = qword_1EAE3B680;
  if (!qword_1EAE3B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B680);
  }

  return result;
}

unint64_t sub_1934D21C4()
{
  result = qword_1EAE3B688;
  if (!qword_1EAE3B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B688);
  }

  return result;
}

unint64_t sub_1934D224C()
{
  result = qword_1EAE3B6A0;
  if (!qword_1EAE3B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6A0);
  }

  return result;
}

unint64_t sub_1934D22A4()
{
  result = qword_1EAE3B6A8;
  if (!qword_1EAE3B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6A8);
  }

  return result;
}

unint64_t sub_1934D232C()
{
  result = qword_1EAE3B6C0;
  if (!qword_1EAE3B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6C0);
  }

  return result;
}

unint64_t sub_1934D2384()
{
  result = qword_1EAE3B6C8;
  if (!qword_1EAE3B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6C8);
  }

  return result;
}

unint64_t sub_1934D23DC()
{
  result = qword_1EAE3B6D0;
  if (!qword_1EAE3B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6D0);
  }

  return result;
}

unint64_t sub_1934D2434()
{
  result = qword_1EAE3B6D8;
  if (!qword_1EAE3B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6D8);
  }

  return result;
}

unint64_t sub_1934D248C()
{
  result = qword_1EAE3B6E0;
  if (!qword_1EAE3B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6E0);
  }

  return result;
}

unint64_t sub_1934D24E4()
{
  result = qword_1EAE3B6E8;
  if (!qword_1EAE3B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6E8);
  }

  return result;
}

unint64_t sub_1934D253C()
{
  result = qword_1EAE3B6F0;
  if (!qword_1EAE3B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6F0);
  }

  return result;
}

unint64_t sub_1934D25C4()
{
  result = qword_1EAE3B708;
  if (!qword_1EAE3B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B708);
  }

  return result;
}

unint64_t sub_1934D264C()
{
  result = qword_1EAE3B720;
  if (!qword_1EAE3B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B720);
  }

  return result;
}

unint64_t sub_1934D26A4()
{
  result = qword_1EAE3B728;
  if (!qword_1EAE3B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B728);
  }

  return result;
}

unint64_t sub_1934D272C()
{
  result = qword_1EAE3B738;
  if (!qword_1EAE3B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B738);
  }

  return result;
}

unint64_t sub_1934D2784()
{
  result = qword_1EAE3B740;
  if (!qword_1EAE3B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B740);
  }

  return result;
}

unint64_t sub_1934D280C()
{
  result = qword_1EAE3B758;
  if (!qword_1EAE3B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B758);
  }

  return result;
}

unint64_t sub_1934D2864()
{
  result = qword_1EAE3B760;
  if (!qword_1EAE3B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B760);
  }

  return result;
}

unint64_t sub_1934D28BC()
{
  result = qword_1EAE3B768;
  if (!qword_1EAE3B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B768);
  }

  return result;
}

unint64_t sub_1934D2914()
{
  result = qword_1EAE3B770;
  if (!qword_1EAE3B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B770);
  }

  return result;
}

unint64_t sub_1934D299C()
{
  result = qword_1EAE3B788;
  if (!qword_1EAE3B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B788);
  }

  return result;
}

unint64_t sub_1934D29F4()
{
  result = qword_1EAE3B790;
  if (!qword_1EAE3B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B790);
  }

  return result;
}

unint64_t sub_1934D2A50()
{
  result = qword_1EAE3B798;
  if (!qword_1EAE3B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B798);
  }

  return result;
}

unint64_t sub_1934D2AD8()
{
  result = qword_1EAE3B7B0;
  if (!qword_1EAE3B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7B0);
  }

  return result;
}

unint64_t sub_1934D2B30()
{
  result = qword_1EAE3B7B8;
  if (!qword_1EAE3B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7B8);
  }

  return result;
}

unint64_t sub_1934D2B88()
{
  result = qword_1EAE3B7C0;
  if (!qword_1EAE3B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7C0);
  }

  return result;
}

unint64_t sub_1934D2BE0()
{
  result = qword_1EAE3B7C8;
  if (!qword_1EAE3B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7C8);
  }

  return result;
}

unint64_t sub_1934D2C38()
{
  result = qword_1EAE3B7D0;
  if (!qword_1EAE3B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7D0);
  }

  return result;
}

unint64_t sub_1934D2C90()
{
  result = qword_1EAE3B7D8;
  if (!qword_1EAE3B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7D8);
  }

  return result;
}

unint64_t sub_1934D2D18()
{
  result = qword_1EAE3B7F0;
  if (!qword_1EAE3B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7F0);
  }

  return result;
}

unint64_t sub_1934D2D70()
{
  result = qword_1EAE3B7F8;
  if (!qword_1EAE3B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7F8);
  }

  return result;
}

unint64_t sub_1934D2DF8()
{
  result = qword_1EAE3B810;
  if (!qword_1EAE3B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B810);
  }

  return result;
}

unint64_t sub_1934D2E50()
{
  result = qword_1EAE3B818;
  if (!qword_1EAE3B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B818);
  }

  return result;
}

unint64_t sub_1934D2ED8()
{
  result = qword_1EAE3B830;
  if (!qword_1EAE3B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B830);
  }

  return result;
}

unint64_t sub_1934D2F30()
{
  result = qword_1EAE3B838;
  if (!qword_1EAE3B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B838);
  }

  return result;
}

unint64_t sub_1934D2FB8()
{
  result = qword_1EAE3B850;
  if (!qword_1EAE3B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B850);
  }

  return result;
}

unint64_t sub_1934D3010()
{
  result = qword_1EAE3B858;
  if (!qword_1EAE3B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B858);
  }

  return result;
}

unint64_t sub_1934D3068()
{
  result = qword_1EAE3B860;
  if (!qword_1EAE3B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B860);
  }

  return result;
}

unint64_t sub_1934D30F0()
{
  result = qword_1EAE3B878;
  if (!qword_1EAE3B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B878);
  }

  return result;
}

unint64_t sub_1934D3148()
{
  result = qword_1EAE3B880;
  if (!qword_1EAE3B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B880);
  }

  return result;
}

unint64_t sub_1934D31A0()
{
  result = qword_1EAE3B888;
  if (!qword_1EAE3B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B888);
  }

  return result;
}

unint64_t sub_1934D31F8()
{
  result = qword_1EAE3B890;
  if (!qword_1EAE3B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B890);
  }

  return result;
}

uint64_t sub_1934D327C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1934D32D4()
{
  result = qword_1EAE3B8A8;
  if (!qword_1EAE3B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8A8);
  }

  return result;
}

unint64_t sub_1934D332C()
{
  result = qword_1EAE3B8B0;
  if (!qword_1EAE3B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8B0);
  }

  return result;
}

unint64_t sub_1934D3384()
{
  result = qword_1EAE3B8B8;
  if (!qword_1EAE3B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8B8);
  }

  return result;
}

unint64_t sub_1934D33DC()
{
  result = qword_1EAE3B8C0;
  if (!qword_1EAE3B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8C0);
  }

  return result;
}

unint64_t sub_1934D3434()
{
  result = qword_1EAE3B8C8;
  if (!qword_1EAE3B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8C8);
  }

  return result;
}

unint64_t sub_1934D348C()
{
  result = qword_1EAE3B8D0;
  if (!qword_1EAE3B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8D0);
  }

  return result;
}

unint64_t sub_1934D34E4()
{
  result = qword_1EAE3B8D8;
  if (!qword_1EAE3B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8D8);
  }

  return result;
}

unint64_t sub_1934D353C()
{
  result = qword_1EAE3B8E0;
  if (!qword_1EAE3B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8E0);
  }

  return result;
}

unint64_t sub_1934D3594()
{
  result = qword_1EAE3B8E8;
  if (!qword_1EAE3B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8E8);
  }

  return result;
}

unint64_t sub_1934D35EC()
{
  result = qword_1EAE3B8F0;
  if (!qword_1EAE3B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8F0);
  }

  return result;
}

unint64_t sub_1934D3644()
{
  result = qword_1EAE3B8F8;
  if (!qword_1EAE3B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8F8);
  }

  return result;
}

unint64_t sub_1934D369C()
{
  result = qword_1EAE3B900;
  if (!qword_1EAE3B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B900);
  }

  return result;
}

unint64_t sub_1934D36F4()
{
  result = qword_1EAE3B908;
  if (!qword_1EAE3B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B908);
  }

  return result;
}

void sub_1934D374C(uint64_t a1)
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(319);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_6_15(v3, qword_1ED5080D8, &type metadata for GenerativeFunctionsInstrumentationEvent.Subtype);
        if (v5 <= 0x3F)
        {
          v6 = type metadata accessor for MonotonicTimestamp(319);
          if (v7 <= 0x3F)
          {
            OUTLINED_FUNCTION_6_15(v6, &qword_1ED508068, &type metadata for GenerativeFunctionsInstrumentationMetadata);
            if (v9 <= 0x3F)
            {
              OUTLINED_FUNCTION_6_15(v8, &qword_1ED508140, &type metadata for GenerativeFunctionsInstrumentationError);
              if (v10 <= 0x3F)
              {
                sub_1934D3AB4(319, qword_1ED508078, &type metadata for GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo, MEMORY[0x1E69E62F8]);
                if (v11 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1934D3924(uint64_t a1)
{
  OUTLINED_FUNCTION_6_15(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_6_15(v4, &qword_1ED508070, MEMORY[0x1E69E76D8]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      OUTLINED_FUNCTION_6_15(v6, qword_1ED508148, &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1934D3A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1934D3AB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1934D3B04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D3B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D3BC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 104))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_1934D3BFC(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 9) = 0u;
    *(result + 11) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 104) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1934D3C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 89))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 80);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1934D3CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO19PrivateCloudMetricsV24InferenceEnvironmentInfoV05AssetM0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO19PrivateCloudMetricsV24InferenceEnvironmentInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO19PrivateCloudMetricsVSg(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1934D3DB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 665))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 616);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_1934D3DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    v3 = OUTLINED_FUNCTION_30_6(result, 0);
    *(v3 + 664) = 0;
    *(v3 + 648) = v4;
    OUTLINED_FUNCTION_125_1(v4);
    *(v5 + 504) = v6;
    *(v5 + 488) = v6;
    *(v5 + 472) = v6;
    *(v5 + 456) = v6;
    *(v5 + 440) = v6;
    *(v5 + 424) = v6;
    *(v5 + 408) = v6;
    *(v5 + 392) = v6;
    OUTLINED_FUNCTION_125_1(v6);
    *v7 = v8;
    if (v9 < 0)
    {
      *(v7 + 665) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *(result + 616) = (a2 - 1);
      return;
    }

    *(result + 665) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1934D3ED8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 185))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D3EF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *(result + 184) = 0;
    *result = v3;
    if (!v4)
    {
      return result;
    }

    v5 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v5 = 0;
  }

  *(result + 185) = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV35CatalogResourceIdentifierAndVersionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1934D3F70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D3FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D4034(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 74))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D404C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 74) = v3;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1934D40E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 42))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D40F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 42) = v3;
  return result;
}

uint64_t sub_1934D4160(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 114))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4178(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
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

  *(result + 114) = v3;
  return result;
}

uint64_t sub_1934D41D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1934D4210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1934D42B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 322))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  v3 = *(a1 + 232);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1934D4310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    result = OUTLINED_FUNCTION_30_6(result, 0);
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *(result + 320) = 0;
    *result = v4;
    if (v5 > v6)
    {
      *(result + 322) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 322) = 0;
    }

    if (a2)
    {
      *(result + 232) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1934D43A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 144))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D43F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t sub_1934D4470(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D44BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D4520(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4538(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

uint64_t sub_1934D458C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 106))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1934D45C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1934D462C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 393))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 112);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_1934D4668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(OUTLINED_FUNCTION_30_6(result, 0) + 392) = 0;
    OUTLINED_FUNCTION_125_1(v3);
    *v4 = v5;
    if (v6 < 0)
    {
      *(v4 + 393) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *(result + 112) = (a2 - 1);
      return;
    }

    *(result + 393) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1934D4704(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 281))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D4750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    result = OUTLINED_FUNCTION_30_6(result, 0);
    *(result + 280) = 0;
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 281) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 281) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 9) = v3;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1934D4838(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4850(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1934D48A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 66))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D48EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t *sub_1934D4974(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_1934D49CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D4A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D4A7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 123);
    }

    OUTLINED_FUNCTION_149_3();
    if (v3 >= 0x7B)
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

unint64_t *sub_1934D4AC4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

unint64_t *sub_1934D4B88(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_1934D4C5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_149_3();
    if (v3 >= 0x78)
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

unint64_t *sub_1934D4CA4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_1934D4D2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4D44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4E14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7C)
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

unint64_t *sub_1934D4E64(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

_BYTE *_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO18SummarizationErrorO12UnknownErrorVwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934D4F90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1934D4FDC(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_5(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_9(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_65_6(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t OUTLINED_FUNCTION_113_2()
{

  return sub_1934486A4();
}

uint64_t OUTLINED_FUNCTION_121_2(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_125_1(__n128 a1)
{
  *(v1 + 120) = a1;
  *(v1 + 104) = a1;
  *(v1 + 88) = a1;
  *(v1 + 72) = a1;
  *(v1 + 56) = a1;
  *(v1 + 40) = a1;
  *(v1 + 24) = a1;
  *(v1 + 8) = a1;
}

uint64_t OUTLINED_FUNCTION_127_2(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_128_1(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_130_1(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_3(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

void *OUTLINED_FUNCTION_139_3(void *a1)
{

  return memcpy(a1, (v1 + 96), 0x90uLL);
}

void *OUTLINED_FUNCTION_167_0(void *a1)
{

  return memcpy(a1, (v1 + 96), 0x90uLL);
}

void *OUTLINED_FUNCTION_168_1(void *a1)
{

  return memcpy(a1, &STACK[0x890], 0x142uLL);
}

uint64_t sub_1934D558C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_19393BE60();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v13 || (OUTLINED_FUNCTION_0_18(0x496E6F6973736573, 0xE900000000000064) & 1) != 0)
  {
    return sub_1934948FC();
  }

  v14 = a1 == 0x64496E617073 && a2 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_18(0x64496E617073, 0xE600000000000000) & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowIdentifiers(0);
    v16 = v3 + *(result + 20);
    if (*(v16 + 8))
    {
LABEL_13:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    v38 = *v16;
    return sub_1934948FC();
  }

  v17 = OUTLINED_FUNCTION_1_22() & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
  v19 = a1 == v17 && a2 == v18;
  if (v19 || (OUTLINED_FUNCTION_0_18(v17, v18) & 1) != 0)
  {
    v20 = *(type metadata accessor for IntelligenceFlowIdentifiers(0) + 24);
LABEL_22:
    v21 = (v3 + v20);
    v23 = *v21;
    v22 = v21[1];
    v38 = v23;
    v39 = v22;
    return sub_1934948FC();
  }

  v24 = OUTLINED_FUNCTION_1_22() & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
  v26 = a1 == v24 && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_0_18(v24, v25) & 1) != 0)
  {
    v20 = *(type metadata accessor for IntelligenceFlowIdentifiers(0) + 28);
    goto LABEL_22;
  }

  v27 = a1 == 0xD000000000000013 && 0x8000000193A178E0 == a2;
  if (v27 || (OUTLINED_FUNCTION_0_18(0xD000000000000013, 0x8000000193A178E0) & 1) != 0)
  {
    v20 = *(type metadata accessor for IntelligenceFlowIdentifiers(0) + 32);
    goto LABEL_22;
  }

  v28 = a1 == 0xD000000000000015 && 0x8000000193A17900 == a2;
  if (v28 || (OUTLINED_FUNCTION_0_18(0xD000000000000015, 0x8000000193A17900) & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowIdentifiers(0);
    v29 = (v3 + *(result + 36));
    v30 = v29[1];
    if (!v30)
    {
      goto LABEL_13;
    }

    v38 = *v29;
    v39 = v30;
    return sub_1934948FC();
  }

  v31 = a1 == 0x4574736575716572 && a2 == 0xEE006449746E6576;
  if (v31 || (OUTLINED_FUNCTION_0_18(0x4574736575716572, 0xEE006449746E6576) & 1) != 0)
  {
    v32 = type metadata accessor for IntelligenceFlowIdentifiers(0);
    sub_193458F7C(v3 + *(v32 + 40), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      result = sub_193458FEC(v9);
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      v33 = v37;
      (*(v37 + 32))(v12, v9, v10);
      sub_1934948FC();
      return (*(v33 + 8))(v12, v10);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v35 = v34;
    *v34 = a1;
    v34[1] = a2;
    v34[5] = type metadata accessor for IntelligenceFlowIdentifiers(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
    sub_1934D59B0(v3, boxed_opaque_existential_1Tm);
    *(v35 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1934D59B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934D5A2C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F60);
  __swift_project_value_buffer(v0, qword_1EAEA8F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_193952700;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "spanId";
  v10[1] = 6;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "clientRequestId";
  v13[1] = 15;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "clientSessionId";
  v16[1] = 15;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "clientApplicationId";
  v19[1] = 19;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "clientGroupIdentifier";
  v22[1] = 21;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v5 + 6 * v2);
  *v26 = 7;
  *v25 = "requestEventId";
  *(v25 + 8) = 14;
  *(v25 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

void sub_1934D5CE8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v29 - v16;
  v34 = v15;
  v29 = "etion8";
  v31 = (v5 + 40);
  v32 = (v5 + 32);
  v37 = v9;
  while (2)
  {
    v17 = sub_19393C0E0();
    if (v2 || (v18 & 1) != 0)
    {
      OUTLINED_FUNCTION_27();
      return;
    }

    switch(v17)
    {
      case 1:
        v5 = v33;
        __swift_storeEnumTagSinglePayload(v33, 1, 1, v3);
        sub_193497890(v5);
        sub_193458F7C(v5, v15);
        OUTLINED_FUNCTION_9_14(v15);
        if (!v19)
        {
          sub_193458FEC(v5);
          (*v32)(v9, v15, v3);
          goto LABEL_28;
        }

        v5 = v30;
        OUTLINED_FUNCTION_7_11();
        OUTLINED_FUNCTION_9_14(v5);
        if (!v19)
        {
          sub_193458FEC(v33);
          (*v32)(v9, v5, v3);
          OUTLINED_FUNCTION_9_14(v15);
          if (!v19)
          {
            sub_193458FEC(v15);
          }

LABEL_28:
          (*v31)(v0, v9, v3);
          continue;
        }

        __break(1u);
        return;
      case 2:
        type metadata accessor for IntelligenceFlowIdentifiers(0);
        OUTLINED_FUNCTION_113();
        sub_19393C230();
        goto LABEL_27;
      case 3:
        v35 = 0;
        v36 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v2 = 0;
        OUTLINED_FUNCTION_8_19();
        if (v19)
        {
          v24 = 0xE000000000000000;
        }

        else
        {
          v24 = v23;
        }

        v25 = (v0 + *(type metadata accessor for IntelligenceFlowIdentifiers(0) + 24));

        *v25 = v5;
        v25[1] = v24;
        goto LABEL_23;
      case 4:
        v35 = 0;
        v36 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v2 = 0;
        OUTLINED_FUNCTION_8_19();
        if (v19)
        {
          v21 = 0xE000000000000000;
        }

        else
        {
          v21 = v26;
        }

        v22 = *(type metadata accessor for IntelligenceFlowIdentifiers(0) + 28);
        goto LABEL_22;
      case 5:
        v35 = 0;
        v36 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v2 = 0;
        OUTLINED_FUNCTION_8_19();
        if (v19)
        {
          v21 = 0xE000000000000000;
        }

        else
        {
          v21 = v20;
        }

        v22 = *(type metadata accessor for IntelligenceFlowIdentifiers(0) + 32);
LABEL_22:
        v27 = (v0 + v22);

        *v27 = v5;
        v27[1] = v21;
LABEL_23:
        v15 = v34;
        v9 = v37;
        continue;
      case 6:
        type metadata accessor for IntelligenceFlowIdentifiers(0);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_27;
      case 7:
        v28 = type metadata accessor for IntelligenceFlowIdentifiers(0);
        sub_193497890(v0 + *(v28 + 40));
LABEL_27:
        v2 = 0;
        continue;
      default:
        continue;
    }
  }
}

uint64_t sub_1934D60CC(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3B910;

  return v1;
}

uint64_t sub_1934D6110@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE4F470 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EAE4F470);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEA8F60);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t IntelligenceFlowIdentifiers.spanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIdentifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientRequestId.getter()
{
  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientRequestId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIdentifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientSessionId.getter()
{
  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientSessionId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIdentifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientApplicationId.getter()
{
  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientApplicationId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIdentifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientGroupIdentifier.getter()
{
  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientGroupIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIdentifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.requestEventId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowIdentifiers(0) + 40);

  return sub_193458F7C(v3, a1);
}

uint64_t IntelligenceFlowIdentifiers.requestEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIdentifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

BOOL static IntelligenceFlowIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  if ((sub_19393BE40() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  v18 = v17;
  v19 = *(v17 + 20);
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_0_20(*(v17 + 24));
  v26 = v26 && v24 == v25;
  if (!v26 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_20(v18[7]);
  v29 = v26 && v27 == v28;
  if (!v29 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_20(v18[8]);
  v32 = v26 && v30 == v31;
  if (!v32 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v33 = v18[9];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }

    v38 = *v34 == *v36 && v35 == v37;
    if (!v38 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v39 = v18[10];
  v40 = *(v13 + 48);
  sub_193458F7C(a1 + v39, v16);
  sub_193458F7C(a2 + v39, &v16[v40]);
  OUTLINED_FUNCTION_31(v16);
  if (v26)
  {
    OUTLINED_FUNCTION_31(&v16[v40]);
    if (v26)
    {
      sub_19344E6DC(v16, &qword_1EAE3AA88, &qword_19394F9C0);
      return 1;
    }

    goto LABEL_40;
  }

  sub_193458F7C(v16, v12);
  OUTLINED_FUNCTION_31(&v16[v40]);
  if (v41)
  {
    (*(v6 + 8))(v12, v4);
LABEL_40:
    sub_19344E6DC(v16, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  (*(v6 + 32))(v9, &v16[v40], v4);
  OUTLINED_FUNCTION_1_23();
  sub_1934D6B28(v43, v44, MEMORY[0x1E69695C8]);
  v45 = sub_19393C550();
  v46 = *(v6 + 8);
  v47 = OUTLINED_FUNCTION_13_0();
  v46(v47);
  (v46)(v12, v4);
  sub_19344E6DC(v16, &qword_1EAE3AA88, &qword_19394F9C0);
  return (v45 & 1) != 0;
}

uint64_t IntelligenceFlowIdentifiers.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  v1 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  OUTLINED_FUNCTION_1_23();
  sub_1934D6B28(v10, v11, MEMORY[0x1E69695B8]);
  sub_19393C540();
  v12 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  v13 = (v0 + v12[5]);
  if (*(v13 + 8) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v14 = *v13;
    sub_19393CAD0();
    MEMORY[0x193B18060](v14);
  }

  OUTLINED_FUNCTION_9_27();
  OUTLINED_FUNCTION_9_27();
  OUTLINED_FUNCTION_9_27();
  if (*(v0 + v12[9] + 8))
  {
    v17 = v9;
    sub_19393CAD0();
    v9 = v17;
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_193458F7C(v0 + v12[10], v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v3 + 32))(v6, v9, v1);
  sub_19393CAD0();
  sub_19393C540();
  return (*(v3 + 8))(v6, v1);
}

uint64_t IntelligenceFlowIdentifiers.hashValue.getter()
{
  sub_19393CAB0();
  IntelligenceFlowIdentifiers.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934D6AA4(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowIdentifiers.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934D6B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1934D6B74(uint64_t a1)
{
  sub_19393BE60();
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1934D6C4C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1934D6C4C(uint64_t a1)
{
  if (!qword_1ED508298)
  {
    sub_19393BE60();
    v1 = sub_19393C860();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED508298);
    }
  }
}

_BYTE *_s4SageOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934D6D54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510058);
  v4 = __swift_project_value_buffer(v3, qword_1ED510058);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Sage.Transcript.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_3 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510058);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B928, &qword_193957A88);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Sage.Transcript.attribute(_:)(void (*a1)(void))
{
  result = sub_1934D7164(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934D71AC(void (*a1)(void))
{
  result = sub_1934D7164(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934D71DC(uint64_t a1)
{
  result = sub_1934D7204();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934D7204()
{
  result = qword_1ED506E48;
  if (!qword_1ED506E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E48);
  }

  return result;
}

_BYTE *_s10TranscriptOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SageTranscript.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for SageTranscript(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1934D74E0(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3B930, &qword_193957B00, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1934D74E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SageTranscript(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static SageTranscript.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE3B930, &qword_193957B00, v31);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_9_28();
    sub_1934D8A74(v29, v24, v32);
  }

  OUTLINED_FUNCTION_27();
}

void static SageTranscript.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v3;
  v37 = v2;
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_1();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  if (*sub_1934DC140() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v21, v12);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v14 + 8))(v21, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_9_28();
      v27 = v36;
      sub_1934D8A74(v1, v36, v28);
      v29 = type metadata accessor for SageTranscript(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v27 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v27 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v27 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v27 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v27 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v26 = v6;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t SageTranscript.serialize()()
{
  v2 = type metadata accessor for SageTranscript(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1934D74E0(v0, v1);
  sub_1934470C8(v1, v2, v6);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE3B930, &qword_193957B00, v8);
  v9 = sub_19393C290();
  sub_19344E6DC(v6, &qword_1EAE3B930, &qword_193957B00);
  return v9;
}

id static SageTranscript.columns.getter()
{
  v196 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v12, v13, v14, v15, v16, 0, 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v28 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v38 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v38);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v39, v40, v41, v42, v43, 0, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v44 = swift_initStackObject();
  v52 = OUTLINED_FUNCTION_2_4(v44, v45, v46, v47, v48, v49, v50, v51, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v62 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v62);
  v63 = OUTLINED_FUNCTION_27_10();
  result = OUTLINED_FUNCTION_10_11(v63, 0xEA00000000004449);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v64 = swift_initStackObject();
  v72 = OUTLINED_FUNCTION_2_4(v64, v65, v66, v67, v68, v69, v70, v71, v191);
  OUTLINED_FUNCTION_5_10(v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  v82 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v82);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_24_10();
  result = OUTLINED_FUNCTION_10_11(v83, v84);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v85 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v95 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  v105 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v105);
  result = OUTLINED_FUNCTION_10_11(0xD000000000000010, 0x8000000193A179F0);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v106 = swift_initStackObject();
  v114 = OUTLINED_FUNCTION_2_4(v106, v107, v108, v109, v110, v111, v112, v113, v192);
  OUTLINED_FUNCTION_5_10(v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
  v124 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v124);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v125, v126, v127, v128, v129, 13, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v130 = swift_initStackObject();
  v138 = OUTLINED_FUNCTION_2_4(v130, v131, v132, v133, v134, v135, v136, v137, v193);
  OUTLINED_FUNCTION_5_10(v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
  v148 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v148);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v149, v150, v151, v152, v153, 13, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v154 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v164 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
  v174 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v174);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v175, v176, v177, v178, v179, 4, 0);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v180 = swift_initStackObject();
  v188 = OUTLINED_FUNCTION_2_4(v180, v181, v182, v183, v184, v185, v186, v187, v194);
  *(v188 + 16) = v195;
  *(v188 + 32) = sub_19393C850();
  v189 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v190 = OUTLINED_FUNCTION_16_5();
  result = sub_19343D150(v190 | 0x7961507400000000, 0xEC00000064616F6CLL, 4, 0, v188, 14, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v196;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1934D7EB8()
{
  OUTLINED_FUNCTION_26();
  v165 = v0;
  v166 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v148 - v9;
  v151 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v149 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v148 - v15;
  v153 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v150 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v148 - v21;
  v156 = type metadata accessor for SageMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v154 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6();
  v159 = v27 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v160 = &v148 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v148 - v32;
  sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v161 = v35;
  v162 = v34;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6();
  v158 = v36 - v37;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v148 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v148 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v44);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25_1();
  v46 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_1();
  v52 = v51 - v50;
  OUTLINED_FUNCTION_38();
  v163 = v6;
  v164 = v4;
  v54 = v6 == 0xD000000000000011 && v53 == v4;
  if (v54 || (OUTLINED_FUNCTION_18_13(0xD000000000000011, v53) & 1) != 0)
  {
    v55 = type metadata accessor for SageTranscript(0);
    v56 = OUTLINED_FUNCTION_15_19(*(v55 + 28));
    sub_1934486F8(v56, v1, v57, v58);
    if (__swift_getEnumTagSinglePayload(v1, 1, v46) != 1)
    {
      (*(v48 + 32))(v52, v1, v46);
      sub_1934948FC();
      (*(v48 + 8))(v52, v46);
      goto LABEL_19;
    }

    v59 = &qword_1EAE3A9E8;
    v60 = &qword_19394F800;
    v61 = v1;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v64 = v163 == 0xD000000000000011 && v63 == v164;
  if (v64 || (OUTLINED_FUNCTION_18_13(0xD000000000000011, v63) & 1) != 0)
  {
    v65 = (v165 + *(type metadata accessor for SageTranscript(0) + 32));
    if (v65[1])
    {
      goto LABEL_9;
    }

    v167 = *v65;
LABEL_18:
    sub_1934948FC();
    goto LABEL_19;
  }

  v66 = OUTLINED_FUNCTION_27_10();
  v68 = v163 == v66 && v164 == v67;
  if (v68 || (OUTLINED_FUNCTION_18_13(v66, 0xEA00000000004449) & 1) != 0)
  {
    v69 = type metadata accessor for SageTranscript(0);
    v70 = OUTLINED_FUNCTION_15_19(*(v69 + 36));
    sub_1934486F8(v70, v33, v71, v72);
    OUTLINED_FUNCTION_20_7(v33);
    if (!v54)
    {
      v73 = v161;
      (*(v161 + 32))(v43, v33, v4);
      sub_1934948FC();
      (*(v73 + 8))(v43, v4);
      goto LABEL_19;
    }

    v59 = &qword_1EAE3AA88;
    v60 = &qword_19394F9C0;
    v61 = v33;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_14_16();
  v77 = v54 && v76 == v75;
  if (v77 || (OUTLINED_FUNCTION_18_13(v74, v75) & 1) != 0)
  {
    v78 = type metadata accessor for SageTranscript(0);
    v79 = OUTLINED_FUNCTION_15_19(*(v78 + 40));
    v80 = v160;
    sub_1934486F8(v79, v160, v81, v82);
    OUTLINED_FUNCTION_20_7(v80);
    if (!v54)
    {
      v83 = v161;
      (*(v161 + 32))(v41, v80, v4);
      sub_1934948FC();
      (*(v83 + 8))(v41, v4);
      goto LABEL_19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_14_16();
    v87 = v54 && v85 == v86;
    if (!v87 && (OUTLINED_FUNCTION_18_13(v84, v85) & 1) == 0)
    {
      v94 = OUTLINED_FUNCTION_16_5() | 0x62614C7400000000;
      v96 = v163 == v94 && v164 == v95;
      if (v96 || (OUTLINED_FUNCTION_18_13(v94, 0xEA00000000006C65) & 1) != 0)
      {
        v97 = *(type metadata accessor for SageTranscript(0) + 48);
      }

      else
      {
        v100 = OUTLINED_FUNCTION_16_5() | 0x7079547400000000;
        v102 = v163 == v100 && v164 == v101;
        if (!v102 && (OUTLINED_FUNCTION_18_13(v100, 0xE900000000000065) & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_16();
          v106 = v54 && v104 == v105;
          if (v106 || (OUTLINED_FUNCTION_18_13(v103, v104) & 1) != 0)
          {
            v107 = (v165 + *(type metadata accessor for SageTranscript(0) + 56));
            if (*(v107 + 9))
            {
              goto LABEL_9;
            }

            v108 = *(v107 + 8);
            v167 = *v107;
            LOBYTE(v168) = v108 & 1;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_16_5();
          OUTLINED_FUNCTION_14_16();
          v112 = v54 && v111 == v110;
          if (v112 || (OUTLINED_FUNCTION_18_13(v109, v110) & 1) != 0)
          {
            v113 = (v165 + *(type metadata accessor for SageTranscript(0) + 60));
            v114 = v113[1];
            if (v114 >> 60 == 15)
            {
              goto LABEL_9;
            }

            v167 = *v113;
            v168 = v114;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_14_16();
          v118 = v54 && v117 == v116;
          if (v118 || (OUTLINED_FUNCTION_18_13(v115, v116) & 1) != 0)
          {
            v119 = type metadata accessor for SageTranscript(0);
            v120 = OUTLINED_FUNCTION_15_19(*(v119 + 64));
            v121 = v157;
            sub_1934486F8(v120, v157, v122, v123);
            if (__swift_getEnumTagSinglePayload(v121, 1, v156) == 1)
            {
              v59 = &qword_1EAE3B940;
              v60 = &unk_193957C00;
              v61 = v157;
              goto LABEL_8;
            }

            v124 = v154;
            sub_1934D8A74(v157, v154, type metadata accessor for SageMetadata);
            sub_193494798(v156, &off_1F07BD8F0, v166);
            v125 = type metadata accessor for SageMetadata;
          }

          else
          {
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_14_16();
            v129 = v54 && v127 == v128;
            if (v129 || (OUTLINED_FUNCTION_18_13(v126, v127) & 1) != 0)
            {
              v130 = type metadata accessor for SageTranscript(0);
              v131 = OUTLINED_FUNCTION_15_19(*(v130 + 68));
              v132 = v155;
              sub_1934486F8(v131, v155, v133, v134);
              if (__swift_getEnumTagSinglePayload(v132, 1, v153) == 1)
              {
                v59 = &qword_1EAE3B498;
                v60 = &unk_193959120;
                v61 = v155;
                goto LABEL_8;
              }

              v124 = v150;
              sub_1934D8A74(v155, v150, type metadata accessor for MonotonicTimestamp);
              sub_193494798(v153, &off_1F07BD958, v166);
              v125 = type metadata accessor for MonotonicTimestamp;
            }

            else
            {
              OUTLINED_FUNCTION_14_16();
              v138 = v54 && v137 == v136;
              if (!v138 && (OUTLINED_FUNCTION_18_13(v135, v136) & 1) == 0)
              {
                sub_19349AB64();
                swift_allocError();
                v145 = v144;
                v146 = v164;
                *v144 = v163;
                v144[1] = v146;
                v144[5] = type metadata accessor for SageTranscript(0);
                boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v145 + 2);
                sub_1934D74E0(v165, boxed_opaque_existential_1Tm);
                *(v145 + 48) = 1;
                swift_willThrow();

                goto LABEL_19;
              }

              v139 = type metadata accessor for SageTranscript(0);
              v140 = OUTLINED_FUNCTION_15_19(*(v139 + 72));
              v141 = v152;
              sub_1934486F8(v140, v152, v142, v143);
              if (__swift_getEnumTagSinglePayload(v141, 1, v151) == 1)
              {
                v59 = &qword_1EAE3B948;
                v60 = &qword_193957C10;
                v61 = v152;
                goto LABEL_8;
              }

              v124 = v149;
              sub_1934D8A74(v152, v149, type metadata accessor for IntelligenceFlowIdentifiers);
              sub_193494798(v151, &off_1F07C27B8, v166);
              v125 = type metadata accessor for IntelligenceFlowIdentifiers;
            }
          }

          sub_1934D8AD4(v124, v125);
          goto LABEL_19;
        }

        v97 = *(type metadata accessor for SageTranscript(0) + 52);
      }

      v98 = (v165 + v97);
      v99 = *(v165 + v97 + 8);
      if (!v99)
      {
        goto LABEL_9;
      }

      v167 = *v98;
      v168 = v99;
      goto LABEL_18;
    }

    v88 = type metadata accessor for SageTranscript(0);
    v89 = OUTLINED_FUNCTION_15_19(*(v88 + 44));
    v80 = v159;
    sub_1934486F8(v89, v159, v90, v91);
    OUTLINED_FUNCTION_20_7(v80);
    if (!v54)
    {
      v92 = v161;
      v93 = v158;
      (*(v161 + 32))(v158, v80, v4);
      sub_1934948FC();
      (*(v92 + 8))(v93, v4);
      goto LABEL_19;
    }
  }

  v59 = &qword_1EAE3AA88;
  v60 = &qword_19394F9C0;
  v61 = v80;
LABEL_8:
  sub_19344E6DC(v61, v59, v60);
LABEL_9:
  v62 = v166;
  *v166 = 0u;
  *(v62 + 1) = 0u;
LABEL_19:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934D8A74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1934D8AD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SageTranscript.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SageTranscript(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v31 = a1 + v2[8];
  OUTLINED_FUNCTION_8_11();
  v6 = v2[9];
  sub_19344B7DC();
  v7 = v2[10];
  sub_19344B818();
  v32 = v2[11];
  sub_19344B818();
  v36 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v35 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v33 = a1 + v2[14];
  OUTLINED_FUNCTION_131(v33);
  v8 = a1 + v2[15];
  *v8 = sub_1934DC89C();
  *(v8 + 1) = v9;
  v34 = v2[16];
  sub_1934DC95C();
  v37 = v2[17];
  sub_19344BA58();
  v38 = v2[18];
  sub_1934DCAF4();
  *a1 = *sub_1934DC140();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  *v31 = 0;
  v31[8] = 1;
  sub_19344E6DC(a1 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
  v14 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v14);
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v14);
  sub_19344E6DC(a1 + v32, &qword_1EAE3AA88, &qword_19394F9C0);
  v15 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);

  *v36 = 0;
  v36[1] = 0;
  *v35 = 0;
  v35[1] = 0;
  *v33 = 0;
  *(v33 + 4) = 256;
  sub_19345012C(*v8, *(v8 + 1));
  *v8 = xmmword_193950B20;
  sub_19344E6DC(a1 + v34, &qword_1EAE3B940, &unk_193957C00);
  type metadata accessor for SageMetadata(0);
  v18 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_19344E6DC(a1 + v37, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp(0);
  v22 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_19344E6DC(a1 + v38, &qword_1EAE3B948, &qword_193957C10);
  type metadata accessor for IntelligenceFlowIdentifiers(0);
  v26 = OUTLINED_FUNCTION_5_18();

  return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

BOOL static SageTranscript.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v211 = a1;
  v212 = a2;
  v191 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v6);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B950, &unk_193959140);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v194 = v8;
  v9 = OUTLINED_FUNCTION_22_2();
  v195 = type metadata accessor for MonotonicTimestamp(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v14);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v197 = v16;
  v17 = OUTLINED_FUNCTION_22_2();
  v200 = type metadata accessor for SageMetadata(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v196 = v22;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B960, &qword_193957B58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v199 = v24;
  OUTLINED_FUNCTION_22_2();
  v209 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v207 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_289();
  v204 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v29 = OUTLINED_FUNCTION_47(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_8();
  v201 = v30;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v31);
  v203 = v187 - v32;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v33);
  v206 = v187 - v34;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15_8();
  v202 = v36;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v37);
  v205 = v187 - v38;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v187 - v40;
  v42 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v187 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v48);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v187 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v187 - v54;
  v210 = type metadata accessor for SageTranscript(0);
  v56 = v210[7];
  v57 = *(v52 + 56);
  sub_1934486F8(v211 + v56, v55, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(v212 + v56, &v55[v57], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v55, 1, v42);
  if (v58)
  {
    OUTLINED_FUNCTION_6_3(&v55[v57], 1, v42);
    if (v58)
    {
      sub_19344E6DC(v55, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_13;
    }

LABEL_9:
    v59 = &qword_1EAE3B968;
    v60 = &qword_193972430;
    v61 = v55;
LABEL_10:
    sub_19344E6DC(v61, v59, v60);
    return 0;
  }

  sub_1934486F8(v55, v51, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v55[v57], 1, v42);
  if (v58)
  {
    (*(v44 + 8))(v51, v42);
    goto LABEL_9;
  }

  (*(v44 + 32))(v47, &v55[v57], v42);
  OUTLINED_FUNCTION_12_11();
  sub_1934DAC18(v63, v64, MEMORY[0x1E6969550]);
  v65 = sub_19393C550();
  v66 = *(v44 + 8);
  v66(v47, v42);
  v66(v51, v42);
  sub_19344E6DC(v55, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v68 = v210;
  v67 = v211;
  v69 = v210[8];
  v70 = (v211 + v69);
  v71 = *(v211 + v69 + 8);
  v72 = v212;
  v73 = (v212 + v69);
  v74 = *(v212 + v69 + 8);
  if (v71)
  {
    v75 = v209;
    if (!v74)
    {
      return 0;
    }
  }

  else
  {
    if (*v70 != *v73)
    {
      LOBYTE(v74) = 1;
    }

    v75 = v209;
    if (v74)
    {
      return 0;
    }
  }

  v76 = v210[9];
  v77 = *(v208 + 48);
  sub_1934486F8(v211 + v76, v41, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v72 + v76, &v41[v77], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v41);
  if (v58)
  {
    OUTLINED_FUNCTION_3_22(&v41[v77]);
    if (v58)
    {
      sub_19344E6DC(v41, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  sub_1934486F8(v41, v206, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(&v41[v77]);
  if (v78)
  {
    v79 = OUTLINED_FUNCTION_33_7();
    v80(v79);
LABEL_27:
    v59 = &qword_1EAE3B4E8;
    v60 = &unk_193952CF0;
    v61 = v41;
    goto LABEL_10;
  }

  v81 = v207;
  (*(v207 + 32))(v204, &v41[v77], v75);
  OUTLINED_FUNCTION_0_22();
  v84 = sub_1934DAC18(v82, v83, MEMORY[0x1E69695C8]);
  v85 = OUTLINED_FUNCTION_31_11(v84);
  v86 = *(v81 + 8);
  v87 = OUTLINED_FUNCTION_28_6();
  v86(v87);
  v88 = OUTLINED_FUNCTION_33_7();
  v86(v88);
  sub_19344E6DC(v41, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v89 = *(v208 + 48);
  v90 = v205;
  OUTLINED_FUNCTION_21_9(v67 + v68[10]);
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_3_22(v90);
  if (v58)
  {
    OUTLINED_FUNCTION_3_22(v90 + v89);
    if (v58)
    {
      sub_19344E6DC(v90, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_40;
    }

LABEL_37:
    v59 = &qword_1EAE3B4E8;
    v60 = &unk_193952CF0;
LABEL_38:
    v61 = v90;
    goto LABEL_10;
  }

  sub_1934486F8(v90, v203, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v90 + v89);
  if (v91)
  {
    v92 = OUTLINED_FUNCTION_33_7();
    v93(v92);
    goto LABEL_37;
  }

  v94 = v207;
  (*(v207 + 32))(v204, v90 + v89, v75);
  OUTLINED_FUNCTION_0_22();
  v97 = sub_1934DAC18(v95, v96, MEMORY[0x1E69695C8]);
  v98 = OUTLINED_FUNCTION_31_11(v97);
  v99 = *(v94 + 8);
  v100 = OUTLINED_FUNCTION_28_6();
  v99(v100);
  v101 = OUTLINED_FUNCTION_33_7();
  v99(v101);
  sub_19344E6DC(v205, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v102 = v68[11];
  v103 = *(v208 + 48);
  v104 = v202;
  sub_1934486F8(v67 + v102, v202, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v72 + v102, v104 + v103, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v104);
  if (v58)
  {
    OUTLINED_FUNCTION_3_22(v104 + v103);
    if (v58)
    {
      sub_19344E6DC(v104, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_50;
    }

LABEL_48:
    v59 = &qword_1EAE3B4E8;
    v60 = &unk_193952CF0;
    v61 = v104;
    goto LABEL_10;
  }

  sub_1934486F8(v104, v201, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v104 + v103);
  if (v105)
  {
    v106 = OUTLINED_FUNCTION_28_6();
    v107(v106);
    goto LABEL_48;
  }

  v108 = v207;
  v109 = v104 + v103;
  v110 = v204;
  (*(v207 + 32))(v204, v109, v75);
  OUTLINED_FUNCTION_0_22();
  sub_1934DAC18(v111, v112, MEMORY[0x1E69695C8]);
  OUTLINED_FUNCTION_34_7();
  v113 = sub_19393C550();
  v114 = *(v108 + 8);
  v114(v110, v75);
  v115 = OUTLINED_FUNCTION_28_6();
  (v114)(v115);
  sub_19344E6DC(v104, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v113 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  OUTLINED_FUNCTION_36_10();
  if (v116)
  {
    if (!v117)
    {
      return 0;
    }

    v120 = *v118 == *v119 && v116 == v117;
    if (!v120 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v117)
  {
    return 0;
  }

  OUTLINED_FUNCTION_36_10();
  if (v121)
  {
    if (!v122)
    {
      return 0;
    }

    v125 = *v123 == *v124 && v121 == v122;
    if (!v125 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v122)
  {
    return 0;
  }

  v126 = v68[14];
  v127 = (v67 + v126);
  v128 = *(v67 + v126 + 9);
  v129 = (v72 + v126);
  v130 = *(v72 + v126 + 9);
  if (v128)
  {
    if ((v130 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v131 = *v129;
    v132 = *(v129 + 8);
    v133 = *(v127 + 8);
    v215 = *v127;
    v216 = v133;
    if (v130)
    {
      return 0;
    }

    v213 = v131;
    v214 = v132 & 1;
    sub_1934DAB70();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v134 = v68[15];
  v136 = *(v67 + v134);
  v135 = *(v67 + v134 + 8);
  v137 = (v72 + v134);
  v139 = *v137;
  v138 = v137[1];
  if (v135 >> 60 == 15)
  {
    if (v138 >> 60 == 15)
    {
      v140 = OUTLINED_FUNCTION_7_14();
      sub_19345012C(v140, v141);
      goto LABEL_79;
    }

LABEL_77:
    v142 = OUTLINED_FUNCTION_7_14();
    sub_19345012C(v142, v143);
    sub_19345012C(v139, v138);
    return 0;
  }

  if (v138 >> 60 == 15)
  {
    goto LABEL_77;
  }

  v144 = OUTLINED_FUNCTION_7_14();
  v145 = MEMORY[0x193B172A0](v144);
  sub_19345012C(v139, v138);
  sub_19345012C(v136, v135);
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_79:
  v90 = v199;
  v146 = *(v198 + 48);
  OUTLINED_FUNCTION_21_9(v67 + v68[16]);
  OUTLINED_FUNCTION_17_9();
  v147 = v200;
  OUTLINED_FUNCTION_6_3(v90, 1, v200);
  if (v58)
  {
    v148 = OUTLINED_FUNCTION_18_14();
    OUTLINED_FUNCTION_6_3(v148, v149, v147);
    if (v58)
    {
      sub_19344E6DC(v90, &qword_1EAE3B940, &unk_193957C00);
      goto LABEL_89;
    }

    goto LABEL_87;
  }

  v150 = v196;
  sub_1934486F8(v90, v196, &qword_1EAE3B940, &unk_193957C00);
  v151 = OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_6_3(v151, v152, v147);
  if (v153)
  {
    sub_1934D8AD4(v150, type metadata accessor for SageMetadata);
LABEL_87:
    v59 = &qword_1EAE3B960;
    v60 = &qword_193957B58;
    goto LABEL_38;
  }

  sub_1934D9F80(v90 + v146, v190, type metadata accessor for SageMetadata);
  OUTLINED_FUNCTION_11_13();
  sub_1934DAC18(v154, v155, &protocol conformance descriptor for SageMetadata);
  sub_19393C550();
  OUTLINED_FUNCTION_29_10();
  sub_1934D8AD4(v150, type metadata accessor for SageMetadata);
  sub_19344E6DC(v90, &qword_1EAE3B940, &unk_193957C00);
  if ((v147 & 1) == 0)
  {
    return 0;
  }

LABEL_89:
  v156 = *(v192 + 48);
  v90 = v197;
  OUTLINED_FUNCTION_21_9(v67 + v68[17]);
  OUTLINED_FUNCTION_17_9();
  v157 = v195;
  OUTLINED_FUNCTION_6_3(v90, 1, v195);
  if (v58)
  {
    v158 = OUTLINED_FUNCTION_18_14();
    OUTLINED_FUNCTION_6_3(v158, v159, v157);
    if (v58)
    {
      sub_19344E6DC(v90, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  sub_1934486F8(v90, v193, &qword_1EAE3B498, &unk_193959120);
  v160 = OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_6_3(v160, v161, v157);
  if (v162)
  {
    sub_1934D8AD4(v193, type metadata accessor for MonotonicTimestamp);
    v90 = v197;
LABEL_97:
    v59 = &qword_1EAE3B958;
    v60 = &qword_193957B50;
    goto LABEL_38;
  }

  v163 = v197;
  sub_1934D9F80(v197 + v156, v187[1], type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_10_12();
  sub_1934DAC18(v164, v165, &protocol conformance descriptor for MonotonicTimestamp);
  v166 = v193;
  OUTLINED_FUNCTION_34_7();
  v167 = v195;
  sub_19393C550();
  OUTLINED_FUNCTION_29_10();
  sub_1934D8AD4(v166, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v163, &qword_1EAE3B498, &unk_193959120);
  if ((v167 & 1) == 0)
  {
    return 0;
  }

LABEL_99:
  v168 = v210[18];
  v169 = *(v188 + 48);
  v170 = v194;
  OUTLINED_FUNCTION_21_9(v211 + v168);
  sub_1934486F8(v212 + v168, v170 + v169, &qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_6_3(v171, v172, v173);
  if (!v58)
  {
    sub_1934486F8(v194, v189, &qword_1EAE3B948, &qword_193957C10);
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_6_3(v177, v178, v179);
    if (!v180)
    {
      v181 = v194;
      sub_1934D9F80(v194 + v169, v187[0], type metadata accessor for IntelligenceFlowIdentifiers);
      OUTLINED_FUNCTION_9_29();
      sub_1934DAC18(v182, v183, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
      v184 = v189;
      OUTLINED_FUNCTION_34_7();
      OUTLINED_FUNCTION_35_9();
      v186 = v185;
      sub_19393C550();
      OUTLINED_FUNCTION_29_10();
      sub_1934D8AD4(v184, type metadata accessor for IntelligenceFlowIdentifiers);
      sub_19344E6DC(v181, &qword_1EAE3B948, &qword_193957C10);
      return (v186 & 1) != 0;
    }

    sub_1934D8AD4(v189, type metadata accessor for IntelligenceFlowIdentifiers);
    goto LABEL_107;
  }

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_6_3(v174, v175, v176);
  if (!v58)
  {
LABEL_107:
    v59 = &qword_1EAE3B950;
    v60 = &unk_193959140;
    v61 = v194;
    goto LABEL_10;
  }

  sub_19344E6DC(v194, &qword_1EAE3B948, &qword_193957C10);
  return 1;
}

uint64_t sub_1934D9F80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t SageTranscript.hash(into:)(uint64_t a1)
{
  v110 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_289();
  v100 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v109 = v5;
  v6 = OUTLINED_FUNCTION_22_2();
  v108 = type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_289();
  v99 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v107 = v11;
  v12 = OUTLINED_FUNCTION_22_2();
  v106 = type metadata accessor for SageMetadata(v12);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v98 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v105 = v17;
  OUTLINED_FUNCTION_22_2();
  v18 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v104 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_289();
  v103 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v23 = OUTLINED_FUNCTION_47(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_8();
  v102 = v24;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v25);
  v101 = &v98 - v26;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v98 - v28;
  v30 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v36);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v98 - v38;
  v40 = type metadata accessor for SageTranscript(0);
  sub_1934486F8(v111 + v40[7], v39, &qword_1EAE3A9E8, &qword_19394F800);
  v41 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v41, v42, v30);
  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v32 + 32))(v35, v39, v30);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_12_11();
    sub_1934DAC18(v44, v45, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v32 + 8))(v35, v30);
  }

  v46 = v111;
  v47 = (v111 + v40[8]);
  v48 = v106;
  v49 = v103;
  if (*(v47 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v50 = *v47;
    OUTLINED_FUNCTION_103_0();
    if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    MEMORY[0x193B18060](v51);
  }

  v52 = v104;
  sub_1934486F8(v46 + v40[9], v29, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v29, 1, v18);
  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v53 = OUTLINED_FUNCTION_26_8();
    v54(v53, v29, v18);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_22();
    sub_1934DAC18(v55, v56, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_14_17();
    sub_19393C540();
    v57 = OUTLINED_FUNCTION_32_12();
    v58(v57);
  }

  v59 = v101;
  sub_1934486F8(v46 + v40[10], v101, &qword_1EAE3AA88, &qword_19394F9C0);
  v60 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v60, v61, v18);
  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v62 = OUTLINED_FUNCTION_26_8();
    v63(v62, v59, v18);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_22();
    sub_1934DAC18(v64, v65, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_14_17();
    sub_19393C540();
    v66 = OUTLINED_FUNCTION_32_12();
    v67(v66);
  }

  v68 = v102;
  sub_1934486F8(v46 + v40[11], v102, &qword_1EAE3AA88, &qword_19394F9C0);
  v69 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v69, v70, v18);
  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v71 = OUTLINED_FUNCTION_26_8();
    v72(v71, v68, v18);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_22();
    sub_1934DAC18(v73, v74, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_14_17();
    sub_19393C540();
    (*(v52 + 8))(v49, v18);
  }

  if (*(v46 + v40[12] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_27_11();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v46 + v40[13] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_27_11();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v75 = (v46 + v40[14]);
  if (*(v75 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v76 = *(v75 + 8);
    v112 = *v75;
    v113 = v76 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_1934DABC4();
    sub_19393C540();
  }

  if (*(v46 + v40[15] + 8) >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_27_11();
    sub_19393BD50();
  }

  v77 = v108;
  v78 = v105;
  sub_1934486F8(v46 + v40[16], v105, &qword_1EAE3B940, &unk_193957C00);
  v79 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v79, v80, v48);
  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v81 = v98;
    sub_1934D9F80(v78, v98, type metadata accessor for SageMetadata);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_11_13();
    sub_1934DAC18(v82, v83, &protocol conformance descriptor for SageMetadata);
    sub_19393C540();
    sub_1934D8AD4(v81, type metadata accessor for SageMetadata);
  }

  v84 = v107;
  sub_1934486F8(v46 + v40[17], v107, &qword_1EAE3B498, &unk_193959120);
  v85 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v85, v86, v77);
  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v87 = v99;
    sub_1934D9F80(v84, v99, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_10_12();
    sub_1934DAC18(v88, v89, &protocol conformance descriptor for MonotonicTimestamp);
    sub_19393C540();
    sub_1934D8AD4(v87, type metadata accessor for MonotonicTimestamp);
  }

  v90 = v109;
  sub_1934486F8(v46 + v40[18], v109, &qword_1EAE3B948, &qword_193957C10);
  v91 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v91, v92, v110);
  if (v43)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_1934D9F80(v90, v100, type metadata accessor for IntelligenceFlowIdentifiers);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_9_29();
  sub_1934DAC18(v93, v94, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
  OUTLINED_FUNCTION_14_17();
  sub_19393C540();
  v95 = OUTLINED_FUNCTION_34_7();
  return sub_1934D8AD4(v95, v96);
}

uint64_t SageTranscript.SerializationFormat.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t SageTranscript.SerializationFormat.rawValue.getter()
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

char *static SageTranscript.SerializationFormat.allCases.getter()
{
  v0 = sub_1934DAC60(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_37_6(v1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_1934DAC60((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v0 = OUTLINED_FUNCTION_37_6(v1, v0);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t SageTranscript.SerializationFormat.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return 1852797770;
  }

  return 0x6675626F746F7250;
}

uint64_t SageTranscript.SerializationFormat.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x6675626F746F7250 && a2 == 0xE800000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_9(0x6675626F746F7250, 0xE800000000000000) & 1) != 0)
    {

      v8 = 0;
    }

    else
    {
      if (a1 != 1852797770 || a2 != 0xE400000000000000)
      {
        v9 = OUTLINED_FUNCTION_0_9(1852797770, 0xE400000000000000);

        v8 = v9 & 1;
        goto LABEL_14;
      }

      v8 = 1;
    }

    v9 = 1;
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

unint64_t sub_1934DAB70()
{
  result = qword_1EAE3B970;
  if (!qword_1EAE3B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B970);
  }

  return result;
}

unint64_t sub_1934DABC4()
{
  result = qword_1EAE3B980;
  if (!qword_1EAE3B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B980);
  }

  return result;
}

uint64_t sub_1934DAC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1934DAC60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9A0, &qword_193957BC0);
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
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}