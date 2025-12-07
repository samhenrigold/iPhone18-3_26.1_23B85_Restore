void IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_25_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_70_7(v8, v18);
  OUTLINED_FUNCTION_6_3(v0, 1, v2);
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    OUTLINED_FUNCTION_166_4(v10, v11, v12);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_46();
    v15 = sub_1935C8448(v13, v14, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_73(v15);
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  OUTLINED_FUNCTION_129_7();
  if (*(v0 + v16) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_100();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_96_12();
    v17 = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.rawValue.getter();
    MEMORY[0x193B18030](v17);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.result.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (v2 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(__src, v5, sizeof(__src));
      sub_1935AF804(__dst, v7);
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
      memcpy(v7, __src, sizeof(v7));
      result = sub_1935D2104(v7);
      v5 += 232;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.queryAttributes.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 96) = v2;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.quTokenParseInfo.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 109);
  *(a1 + 4) = *(v1 + 108);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.quTokenParseInfo.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 108) = *(result + 4);
  *(v1 + 104) = v2;
  *(v1 + 109) = v3;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.documentAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 132);
  v5 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 20) = v4;
  *(a1 + 16) = v5;
  return sub_19350CB08(v2, v3);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.documentAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = v1 + 128;
  result = sub_193456418(*(v6 - 16), *(v6 - 8));
  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.topicalityAttributes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 136), sizeof(__dst));
  memcpy(a1, (v1 + 136), 0x60uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE3E5C8, &qword_19396A2C8);
}

void *IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.topicalityAttributes.setter(const void *a1)
{
  memcpy(v4, (v1 + 136), sizeof(v4));
  sub_19344E6DC(v4, &qword_1EAE3E5C8, &qword_19396A2C8);
  return memcpy((v1 + 136), a1, 0x60uLL);
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()(uint64_t a1@<X8>)
{
  *(a1 + 112) = xmmword_1939526A0;
  *(a1 + 128) = 0;
  v2 = (a1 + 128);
  *(a1 + 132) = 0;
  OUTLINED_FUNCTION_150_5(0);
  *(a1 + 136) = v3;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 256;
  sub_193456418(*(a1 + 112), *(a1 + 120));
  *(a1 + 112) = xmmword_1939526A0;
  *(a1 + 132) = 0;
  *v2 = 0;
  memcpy(__dst, (a1 + 136), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3E5C8, &qword_19396A2C8);
  *(a1 + 136) = 0u;
  OUTLINED_FUNCTION_150_5(0);
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
}

BOOL static IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = a1[3];
  v117 = a1[2];
  v7 = *(a1 + 8);
  v119 = *(a1 + 36);
  v8 = *(a1 + 10);
  v116 = *(a1 + 44);
  v111 = *(a1 + 12);
  v114 = *(a1 + 52);
  v108 = *(a1 + 14);
  v112 = *(a1 + 60);
  v105 = *(a1 + 16);
  v109 = *(a1 + 68);
  v102 = *(a1 + 18);
  v106 = *(a1 + 76);
  v99 = *(a1 + 20);
  v103 = *(a1 + 84);
  v95 = *(a1 + 22);
  v100 = *(a1 + 92);
  v96 = a1[12];
  v82 = *(a1 + 108);
  v81 = *(a1 + 26);
  v91 = *(a1 + 109);
  v88 = a1[14];
  v92 = a1[15];
  v86 = *(a1 + 132);
  v85 = *(a1 + 32);
  memcpy(__dst, a1 + 17, sizeof(__dst));
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = a2[2];
  v13 = a2[3];
  v14 = *(a2 + 8);
  v118 = *(a2 + 36);
  v15 = *(a2 + 10);
  v115 = *(a2 + 44);
  v16 = *(a2 + 12);
  v113 = *(a2 + 52);
  v17 = *(a2 + 14);
  v110 = *(a2 + 60);
  v18 = *(a2 + 16);
  v107 = *(a2 + 68);
  v19 = *(a2 + 18);
  v104 = *(a2 + 76);
  v97 = *(a2 + 20);
  v101 = *(a2 + 84);
  v93 = *(a2 + 22);
  v98 = *(a2 + 92);
  v94 = a2[12];
  v80 = *(a2 + 108);
  v79 = *(a2 + 26);
  v90 = *(a2 + 109);
  v87 = a2[14];
  v89 = a2[15];
  v84 = *(a2 + 132);
  v83 = *(a2 + 32);
  memcpy(__src, a2 + 17, 0x60uLL);
  if (v5)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      return 0;
    }

    v124[0] = v3;
    LOBYTE(v124[1]) = v4 & 1;
    v123[0] = v9;
    LOBYTE(v123[1]) = v10 & 1;
    v20 = IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.rawValue.getter();
    if (v20 != IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.rawValue.getter())
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    v21 = v117 == v12 && v6 == v13;
    if (!v21 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v119)
  {
    if (!v118)
    {
      return 0;
    }
  }

  else
  {
    v22 = v118;
    if (v7 != v14)
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (v116)
  {
    if (!v115)
    {
      return 0;
    }
  }

  else
  {
    v23 = v115;
    if (v8 != v15)
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v114)
  {
    if (!v113)
    {
      return 0;
    }
  }

  else
  {
    v24 = v113;
    if (v111 != v16)
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v112)
  {
    if (!v110)
    {
      return 0;
    }
  }

  else
  {
    v25 = v110;
    if (v108 != v17)
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v109)
  {
    if (!v107)
    {
      return 0;
    }
  }

  else
  {
    v26 = v107;
    if (v105 != v18)
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (v106)
  {
    if (!v104)
    {
      return 0;
    }
  }

  else
  {
    v27 = v104;
    if (v102 != v19)
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v103)
  {
    if (!v101)
    {
      return 0;
    }
  }

  else
  {
    v28 = v101;
    if (v99 != v97)
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v100)
  {
    if (!v98)
    {
      return 0;
    }
  }

  else
  {
    v29 = v98;
    if (v95 != v93)
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (!v96)
  {
    if (!v94)
    {

      goto LABEL_72;
    }

LABEL_68:

    return 0;
  }

  if (!v94)
  {
    goto LABEL_68;
  }

  if ((sub_1935CA4BC(v96, v94) & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  if (v91)
  {
    if ((v90 & 1) == 0)
    {
      return 0;
    }

LABEL_74:
    v32 = v83 | (v84 << 32);
    if (v92 == 1)
    {
      sub_19350CB08(v88, 1);
      if (v89 == 1)
      {
        v92 = 1;
        sub_19350CB08(v87, 1);
LABEL_77:
        sub_193456418(v88, v92);
        memcpy(v128, __dst, sizeof(v128));
        v33 = __dst[11];
        memcpy(v127, __src, sizeof(v127));
        v34 = __src[11];
        if (__dst[11] == 1)
        {
          if (__src[11] == 1)
          {
            memcpy(v124, __dst, 0x58uLL);
            v30 = 1;
            v124[11] = 1;
            sub_193448804(__dst, v123, &qword_1EAE3E5C8, &qword_19396A2C8);
            sub_193448804(__src, v123, &qword_1EAE3E5C8, &qword_19396A2C8);
            v35 = v124;
LABEL_106:
            sub_19344E6DC(v35, &qword_1EAE3E5C8, &qword_19396A2C8);
            return v30;
          }

          sub_193448804(__dst, v124, &qword_1EAE3E5C8, &qword_19396A2C8);
          sub_193448804(__src, v124, &qword_1EAE3E5C8, &qword_19396A2C8);
        }

        else
        {
          memcpy(v124, __dst, 0x58uLL);
          v124[11] = __dst[11];
          memcpy(v123, v124, sizeof(v123));
          if (__src[11] != 1)
          {
            memcpy(v122, __src, 0x58uLL);
            v122[11] = __src[11];
            v30 = static IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.== infix(_:_:)(v123, v122);
            memcpy(v120, v122, sizeof(v120));
            OUTLINED_FUNCTION_113_9();
            sub_193448804(v60, v61, v62, &qword_19396A2C8);
            OUTLINED_FUNCTION_113_9();
            sub_193448804(v63, v64, v65, &qword_19396A2C8);
            OUTLINED_FUNCTION_113_9();
            sub_193448804(v66, v67, v68, &qword_19396A2C8);
            sub_1935D2134(v120);
            memcpy(v121, v123, sizeof(v121));
            sub_1935D2134(v121);
            memcpy(v122, v128, 0x58uLL);
            v122[11] = v33;
            v35 = v122;
            goto LABEL_106;
          }

          memcpy(v122, v124, sizeof(v122));
          OUTLINED_FUNCTION_113_9();
          sub_193448804(v49, v50, v51, &qword_19396A2C8);
          OUTLINED_FUNCTION_113_9();
          sub_193448804(v52, v53, v54, &qword_19396A2C8);
          OUTLINED_FUNCTION_113_9();
          sub_193448804(v55, v56, v57, &qword_19396A2C8);
          sub_1935D2134(v122);
        }

        memcpy(v124, v128, 0x58uLL);
        v124[11] = v33;
        memcpy(v125, v127, sizeof(v125));
        v126 = v34;
        sub_19344E6DC(v124, &qword_1EAE3E5D0, &qword_19396A2D0);
        return 0;
      }

      sub_19350CB08(v87, v89);
      goto LABEL_90;
    }

    if (v89 == 1)
    {
      OUTLINED_FUNCTION_128_8();
      sub_19350CB08(v37, v38);
      sub_19350CB08(v87, 1);
      OUTLINED_FUNCTION_128_8();
      sub_19350CB08(v39, v40);

LABEL_90:
      sub_193456418(v88, v92);
      v41 = v87;
      v42 = v89;
LABEL_110:
      sub_193456418(v41, v42);
      return 0;
    }

    if (v92)
    {
      if (v89)
      {
        if (v88 != v87 || v92 != v89)
        {
          v44 = sub_19393CA30();
          v45 = OUTLINED_FUNCTION_115_0();
          sub_19350CB08(v45, v46);
          sub_19350CB08(v87, v89);
          v47 = OUTLINED_FUNCTION_115_0();
          sub_19350CB08(v47, v48);
          sub_193456418(v87, v89);
          if ((v44 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_113;
        }

        OUTLINED_FUNCTION_128_8();
        sub_19350CB08(v75, v76);
        sub_19350CB08(v88, v92);
        OUTLINED_FUNCTION_128_8();
        sub_19350CB08(v77, v78);
        v58 = v88;
        v59 = v92;
LABEL_112:
        sub_193456418(v58, v59);
LABEL_113:
        if (((v85 | (v86 << 32)) & 0x100000000) == 0)
        {
          if ((v32 & 0x100000000) != 0 || v85 != v83)
          {
            goto LABEL_109;
          }

LABEL_118:

          goto LABEL_77;
        }

        if ((v32 & 0x100000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_109:

        OUTLINED_FUNCTION_85_9();
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_85_9();
      sub_19350CB08(v69, v70);
      v89 = 0;
    }

    else
    {
      sub_19350CB08(v88, 0);
      if (!v89)
      {
        sub_19350CB08(v87, 0);
        sub_19350CB08(v88, 0);
        v58 = v87;
        v59 = 0;
        goto LABEL_112;
      }
    }

    sub_19350CB08(v87, v89);
    OUTLINED_FUNCTION_85_9();
    sub_19350CB08(v71, v72);
    v73 = OUTLINED_FUNCTION_115_0();
    sub_193456418(v73, v74);
    goto LABEL_109;
  }

  if (v90)
  {
    return 0;
  }

  v36 = v79 | (v80 << 32);
  if (((v81 | (v82 << 32)) & 0x100000000) != 0)
  {
    if ((v36 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_74;
  }

  v30 = 0;
  if ((v36 & 0x100000000) == 0 && v81 == v79)
  {
    goto LABEL_74;
  }

  return v30;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_148_2();
  v2 = v1[3];
  v28 = *(v1 + 8);
  v29 = *(v1 + 10);
  v36 = *(v1 + 36);
  v37 = *(v1 + 44);
  v30 = *(v1 + 12);
  v31 = *(v1 + 14);
  v38 = *(v1 + 52);
  v39 = *(v1 + 60);
  v32 = *(v1 + 16);
  v33 = *(v1 + 18);
  v40 = *(v1 + 68);
  v41 = *(v1 + 76);
  v34 = *(v1 + 20);
  v42 = *(v1 + 84);
  v43 = *(v1 + 92);
  v44 = v1[12];
  v3 = *(v1 + 108);
  v4 = *(v1 + 26);
  v45 = *(v1 + 109);
  v5 = v1[15];
  v35 = v1[14];
  v27 = *(v1 + 132);
  v26 = *(v1 + 32);
  v6 = v1[28];
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    v25 = *(v1 + 108);
    v24 = *(v1 + 22);
    v8 = v1[15];
    v9 = v1[28];
    v10 = *(v1 + 8);
    v11 = *v1;
    OUTLINED_FUNCTION_103_0();
    v49[0] = v11;
    v12 = v10 & 1;
    v6 = v9;
    v5 = v8;
    LOBYTE(v49[1]) = v12;
    v13 = IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.rawValue.getter();
    MEMORY[0x193B18030](v13);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v36)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v28);
    sub_19393CAE0();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v29);
    sub_19393CAE0();
  }

  if (v38)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v30);
    sub_19393CAE0();
  }

  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v31);
    sub_19393CAE0();
  }

  if (v40)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v32);
    sub_19393CAE0();
  }

  if (v41)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v33);
    sub_19393CAE0();
  }

  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v34);
    sub_19393CAE0();
  }

  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v44)
  {
    OUTLINED_FUNCTION_103_0();
    sub_1935D1610(v0, v44);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v45 || (OUTLINED_FUNCTION_103_0(), ((v4 | (v3 << 32)) & 0x100000000) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v5 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_45;
  }

  v14 = v26 | (v27 << 32);
  OUTLINED_FUNCTION_103_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_104_0();
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_43:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_103_0();

  sub_19393C640();
  if ((v14 & 0x100000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_41:
  OUTLINED_FUNCTION_103_0();
  sub_19393CAE0();
LABEL_44:
  sub_193456418(v35, v5);
LABEL_45:
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    memcpy(__dst, v1 + 17, 0x58uLL);
    __dst[11] = v6;
    OUTLINED_FUNCTION_103_0();
    memcpy(v47, v1 + 17, sizeof(v47));
    v48 = v6;
    sub_1935AFDCC(v47, v49);
    IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)(v0, v15, v16, v17, v18, v19, v20, v21, v22, HIDWORD(v22), v23, v24, v25, HIDWORD(v25), v26);
    memcpy(v49, __dst, 0x60uLL);
    sub_1935D2134(v49);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CDDC4(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.QueryAttributes.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = (v1 + 36);
    do
    {
      if (*v4 == 1)
      {
        result = sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        result = sub_19393CAE0();
      }

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if ((*(a2 + 4) & 1) == 0)
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

uint64_t IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo.hash(into:)()
{
  OUTLINED_FUNCTION_67_10();
  if (v0 == 1)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo.hashValue.getter()
{
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_119();
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.embeddingModelId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.init()(_DWORD *a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_103_9(a1);
  *(v1 + 40) = 0;
  *(v1 + 44) = v2;
  *(v1 + 48) = 0;
  *(v1 + 52) = v2;
  *(v1 + 56) = 0;
  *(v1 + 60) = v2;
  *(v1 + 64) = 0;
  *(v1 + 68) = v2;
  *(v1 + 72) = 0;
  *(v1 + 76) = v2;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
}

BOOL static IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  v12 = *(a1 + 36);
  v43 = *(a1 + 40);
  v13 = *(a1 + 44);
  v41 = *(a1 + 48);
  v44 = *(a1 + 52);
  v39 = *(a1 + 56);
  v42 = *(a1 + 60);
  v14 = *(a1 + 64);
  v40 = *(a1 + 68);
  v15 = *(a1 + 72);
  v38 = *(a1 + 76);
  v35 = *(a1 + 80);
  v37 = *(a1 + 88);
  v16 = *(a2 + 4);
  v17 = *(a2 + 8);
  v18 = *(a2 + 12);
  v19 = *(a2 + 16);
  v20 = *(a2 + 20);
  v21 = *(a2 + 24);
  v22 = *(a2 + 28);
  v36 = *(a2 + 88);
  if (v4)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v23 = v16;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v17)
    {
      v24 = v18;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v19)
    {
      v25 = v20;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v21)
    {
      v26 = v22;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v11 == *(a2 + 32))
    {
      v27 = *(a2 + 36);
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v43 == *(a2 + 40))
    {
      v28 = *(a2 + 44);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v44)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v41 == *(a2 + 48))
    {
      v29 = *(a2 + 52);
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (v42)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v39 == *(a2 + 56))
    {
      v30 = *(a2 + 60);
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (v40)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v14 == *(a2 + 64))
    {
      v31 = *(a2 + 68);
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  if (v38)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    v32 = *(a2 + 76);
    if (v15 != *(a2 + 72))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v37)
  {
    if (!v36)
    {
      return 0;
    }

    v33 = v35 == *(a2 + 80) && v37 == v36;
    return v33 || (sub_19393CA30() & 1) != 0;
  }

  return !v36;
}

void IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13, unsigned int a14, unsigned int a15)
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_67_10();
  v16 = *(v15 + 12);
  OUTLINED_FUNCTION_116_8();
  v29 = v18;
  v30 = v17;
  v31 = *(v19 + 36);
  OUTLINED_FUNCTION_115_8();
  v32 = v21;
  v33 = v20;
  v23 = *(v22 + 60);
  v24 = *(v22 + 68);
  v25 = *(v22 + 76);
  v26 = *(v22 + 88);
  if (v27 == 1)
  {
    sub_19393CAD0();
    if (!v16)
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
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v29)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v30)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v31)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v32)
  {
    sub_19393CAE0();
  }

  if (v33)
  {
    sub_19393CAD0();
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v23)
    {
LABEL_16:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v24)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  sub_19393CAD0();
  if (!v24)
  {
LABEL_17:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v25)
    {
      goto LABEL_18;
    }

LABEL_25:
    sub_19393CAD0();
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_26:
    sub_19393CAD0();
    OUTLINED_FUNCTION_194();
    return;
  }

LABEL_24:
  sub_19393CAD0();
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_18:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_19:
  sub_19393CAD0();
  OUTLINED_FUNCTION_194();

  sub_19393C640();
}

uint64_t IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, HIDWORD(v8), v9[0], v9[1], v9[2], v9[3], v9[4]);
  return sub_19393CB00();
}

uint64_t sub_1935CE7AC(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, HIDWORD(v9), v10[0], v10[1], v10[2], v10[3], v10[4]);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.DocumentAttributes.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.DocumentAttributes.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.DocumentAttributes.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
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

uint64_t IntelligenceFlowSearchToolTelemetry.DocumentAttributes.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 20);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
    if (v1)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.DocumentAttributes.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 20);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v2)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_1935CEA60(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.DocumentAttributes.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.modelNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 168);
  *(a1 + 48) = v2;
}

__n128 IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);

  v4 = *a1;
  *(v1 + 152) = a1[1];
  *(v1 + 136) = v4;
  result = v6;
  *(v1 + 168) = v6;
  *(v1 + 184) = v3;
  return result;
}

double IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.init()@<D0>(uint64_t a1@<X8>)
{
  bzero(a1, 0x85uLL);
  *(a1 + 133) = 1;

  *(a1 + 184) = 0;
  result = 0.0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 192) = 2;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v7 = v6;
  v8 = v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 133);
  v11 = *(v0 + 136);
  v12 = *(v0 + 152);
  v13 = *(v0 + 168);
  v14 = *(v0 + 184);
  v15 = *(v7 + 8);
  v16 = *(v7 + 133);
  v17 = *(v7 + 136);
  v18 = *(v7 + 152);
  v19 = *(v7 + 168);
  v20 = *(v7 + 184);
  if (!v9)
  {
    if (v15)
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v10)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = v19;
      v33 = v18;
      v34 = v17;
      v35 = v13;
      v36 = v12;
      v37 = v11;
      memcpy(__dst, v8 + 2, sizeof(__dst));
      v39 = v10;
      if (v16)
      {
        goto LABEL_22;
      }

      v0 = static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.== infix(_:_:)(__dst, v7 + 16);
      v12 = v36;
      v11 = v37;
      v17 = v34;
      v13 = v35;
      v19 = v32;
      v18 = v33;
      if ((v0 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v14)
    {
      *__dst = v11;
      *&__dst[16] = v12;
      *&__dst[32] = v13;
      *&__dst[48] = v14;
      if (v20)
      {
        v40 = v17;
        v41 = v18;
        v42 = v19;
        v43 = v20;

        swift_bridgeObjectRetain_n();
        static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.== infix(_:_:)(__dst, &v40);
        v44[0] = v40;
        v44[1] = v41;
        v44[2] = v42;
        v45 = v43;
        v22 = sub_1935D2164(v44);
        OUTLINED_FUNCTION_121_6(v22, v23, v24, v25, v26, v27, v28, v29, v30, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36.n128_i64[0], v36.n128_i64[1], v37.n128_i64[0], v37.n128_i64[1], *__dst, *&__dst[16], v31, *&__dst[32]);
        sub_1935D2164(v46);

        goto LABEL_22;
      }

      OUTLINED_FUNCTION_121_6(v0, v9, v1, v15, v2, v3, v4, v5, v11, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36.n128_i64[0], v36.n128_i64[1], v37.n128_i64[0], v37.n128_i64[1], *__dst, *&__dst[16], v12, *&__dst[32]);
      swift_bridgeObjectRetain_n();
      sub_1935D2164(v46);
    }

    else
    {
      if (!v20)
      {

        goto LABEL_22;
      }
    }

    goto LABEL_22;
  }

  if (v15)
  {
    v0 = *v0;
    v1 = *v7;
    if (*v8 == *v7 && v9 == v15)
    {
      goto LABEL_10;
    }

    v36 = v12;
    v37 = v11;
    v34 = *(v7 + 136);
    v35 = v13;
    v32 = *(v7 + 168);
    v33 = *(v7 + 152);
    v0 = sub_19393CA30();
    v19 = v32;
    v18 = v33;
    v17 = v34;
    v13 = v35;
    v12 = v36;
    v11 = v37;
    if (v0)
    {
      goto LABEL_10;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 133);
  v18 = *(v1 + 144);
  v19 = *(v1 + 136);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v16 = *(v1 + 176);
  v17 = *(v1 + 168);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_6();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_103_0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
LABEL_6:
  if (v6)
  {
    *&v21 = v4;
    *(&v21 + 1) = v5;
    *&v22 = v17;
    *(&v22 + 1) = v16;
    OUTLINED_FUNCTION_103_0();
    v23[0] = v19;
    v23[1] = v18;
    v23[2] = v4;
    v23[3] = v5;
    v23[4] = v17;
    v23[5] = v16;
    v23[6] = v6;
    sub_1935B0BFC(v23, v24);
    IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)(a1, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19, v19, v18);
    v24[0] = v20;
    v24[1] = v21;
    v24[2] = v22;
    v25 = v6;
    sub_1935D2164(v24);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v7 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935CF134(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.pqaModelInferenceTime.setter(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 100) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.answerSynthesisPostProcessingTime.setter(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 108) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.answerSynthesisPCCPromptGenerationTime.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  result = 1;
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
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;
  *(a1 + 96) = 0;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 112) = 0;
  *(a1 + 116) = 1;
  return result;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
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

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 20);
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

  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v5 = *(a2 + 28);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v6 = *(a2 + 36);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (*(a1 + 44))
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) == *(a2 + 40))
    {
      v7 = *(a2 + 44);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 52))
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) == *(a2 + 48))
    {
      v8 = *(a2 + 52);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (*(a1 + 60))
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) == *(a2 + 56))
    {
      v9 = *(a2 + 60);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*(a1 + 68))
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a2 + 68);
    if (*(a1 + 64) != *(a2 + 64))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 76))
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a2 + 76);
    if (*(a1 + 72) != *(a2 + 72))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (*(a1 + 84))
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    v12 = *(a2 + 84);
    if (*(a1 + 80) != *(a2 + 80))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (*(a1 + 92))
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    v13 = *(a2 + 92);
    if (*(a1 + 88) != *(a2 + 88))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (*(a1 + 100))
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    v14 = *(a2 + 100);
    if (*(a1 + 96) != *(a2 + 96))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (*(a1 + 108))
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    v15 = *(a2 + 108);
    if (*(a1 + 104) != *(a2 + 104))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (*(a1 + 116))
  {
    if ((*(a2 + 116) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a2 + 116);
    if (*(a1 + 112) != *(a2 + 112))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_67_10();
  v17 = *(v0 + 12);
  OUTLINED_FUNCTION_116_8();
  v18 = v2;
  v19 = v1;
  v20 = *(v3 + 36);
  OUTLINED_FUNCTION_115_8();
  v21 = v6;
  v22 = v5;
  v23 = v4[60];
  v24 = v4[68];
  v25 = v4[76];
  v26 = v4[84];
  v7 = v4[92];
  v8 = v4[100];
  v9 = v4[108];
  v10 = v4[116];
  if (v11 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v12 = v4[92];
    v13 = v4[100];
    v14 = v4[108];
    v15 = v4[116];
    sub_19393CAD0();
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v7 = v12;
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v17)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v18)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v19)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v20)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v21)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v22)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v23)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v24)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v25)
  {
    sub_19393CAE0();
  }

  if (v26)
  {
    sub_19393CAD0();
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v7)
    {
LABEL_24:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  sub_19393CAD0();
  if (!v8)
  {
LABEL_25:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v9)
    {
      goto LABEL_26;
    }

LABEL_31:
    sub_19393CAD0();
    if (!v10)
    {
      goto LABEL_27;
    }

    return sub_19393CAD0();
  }

LABEL_30:
  sub_19393CAD0();
  if (v9)
  {
    goto LABEL_31;
  }

LABEL_26:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v10)
  {
LABEL_27:
    sub_19393CAD0();
    return sub_19393CAE0();
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CFC14(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.answerSynthesisHydrationMetrics.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.init()(_DWORD *a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_103_9(a1);
  *(v1 + 40) = 0;
  *(v1 + 44) = v2;
  *(v1 + 48) = MEMORY[0x1E69E7CC0];
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 32);
  v13 = *(a1 + 36);
  v14 = *(a1 + 40);
  v15 = *(a1 + 44);
  v16 = *(a1 + 48);
  v17 = *(a2 + 4);
  v18 = *(a2 + 8);
  v19 = *(a2 + 12);
  v20 = *(a2 + 16);
  v21 = *(a2 + 20);
  v22 = *(a2 + 24);
  v23 = *(a2 + 28);
  v24 = *(a2 + 32);
  v25 = *(a2 + 36);
  v26 = *(a2 + 40);
  v27 = *(a2 + 44);
  v28 = *(a2 + 48);
  if (v5)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v29 = v17;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v18)
    {
      v30 = v19;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v20)
    {
      v31 = v21;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v22)
    {
      v32 = v23;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == v24)
    {
      v33 = v25;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v26)
    {
      v35 = v27;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  return sub_1935CA3A4(v16, v28);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67_10();
  v15 = v14[12];
  v24 = v14[20];
  v16 = v14[28];
  v17 = v14[36];
  v18 = v14[44];
  if (v19 == 1)
  {
    sub_19393CAD0();
    if (!v15)
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
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v24)
  {
    sub_19393CAD0();
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v16)
    {
LABEL_8:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v17)
      {
        goto LABEL_9;
      }

LABEL_13:
      sub_19393CAD0();
      if (!v18)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  sub_19393CAD0();
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v18)
  {
LABEL_10:
    sub_19393CAD0();
    sub_19393CAE0();
    goto LABEL_15;
  }

LABEL_14:
  sub_19393CAD0();
LABEL_15:
  OUTLINED_FUNCTION_114();

  return sub_1935D1F70(v20, v21);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4]);
  return sub_19393CB00();
}

uint64_t sub_1935D00EC(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4]);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.asHydrationPerContentTypeTime.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
}

BOOL static IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a2 + 12);
  v5 = *(a2 + 16);
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

    OUTLINED_FUNCTION_178_0();
    OUTLINED_FUNCTION_39_5();
    v6 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
    if (v6 != IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter())
    {
      return 0;
    }
  }

  if ((v3 & 1) == 0)
  {
    if (v2 == v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    return (v8 & 1) == 0;
  }

  return (v5 & 1) != 0;
}

uint64_t IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 16);
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      return sub_19393CAE0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v4 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
    MEMORY[0x193B18030](v4);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.hashValue.getter()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_169_4();
  }

  return sub_19393CB00();
}

uint64_t sub_1935D037C()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_169_4();
  }

  return sub_19393CB00();
}

uint64_t sub_1935D0484(uint64_t (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  OUTLINED_FUNCTION_119();
  a1(v5, v3);
  return sub_19393CB00();
}

uint64_t sub_1935D04EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_19393CAB0();
  a4(v8, v6);
  return sub_19393CB00();
}

double _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQURequestFailedVAEycfC_0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  OUTLINED_FUNCTION_112_11();
  result = 0.0;
  *(a1 + 16) = xmmword_1939526A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_1935D05D0()
{
  OUTLINED_FUNCTION_195();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  if (*(v2 + 9))
  {
    if ((*(v0 + 9) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_7:
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_248();
      sub_19350CB08(v21, v22);
      if (v8 == 1)
      {
        OUTLINED_FUNCTION_20_19(v7, 1);
        OUTLINED_FUNCTION_248();
        sub_193456418(v23, v24);
        goto LABEL_28;
      }

      v31 = OUTLINED_FUNCTION_11_23();
      sub_19350CB08(v31, v32);
      goto LABEL_13;
    }

    if (v8 == 1)
    {
      v25 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v25, v26);
      OUTLINED_FUNCTION_53_16();
      sub_19350CB08(v27, v28);
      v29 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v29, v30);

LABEL_13:
      v33 = OUTLINED_FUNCTION_8_35();
      sub_193456418(v33, v34);
      v35 = OUTLINED_FUNCTION_11_23();
LABEL_27:
      sub_193456418(v35, v36);
      goto LABEL_28;
    }

    if (v4)
    {
      if (v8)
      {
        v37 = v3 == v7 && v4 == v8;
        if (!v37)
        {
          OUTLINED_FUNCTION_159_7();
          v38 = sub_19393CA30();
          v39 = OUTLINED_FUNCTION_8_35();
          sub_19350CB08(v39, v40);
          v41 = OUTLINED_FUNCTION_11_23();
          sub_19350CB08(v41, v42);
          v43 = OUTLINED_FUNCTION_8_35();
          sub_19350CB08(v43, v44);
          v45 = OUTLINED_FUNCTION_11_23();
          sub_193456418(v45, v46);
          if ((v38 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_31;
        }

        OUTLINED_FUNCTION_248();
        sub_19350CB08(v61, v62);
        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_53_16();
        sub_19350CB08(v63, v64);
        v65 = OUTLINED_FUNCTION_8_35();
        sub_19350CB08(v65, v66);
        OUTLINED_FUNCTION_24_1();
LABEL_30:
        OUTLINED_FUNCTION_53_16();
        sub_193456418(v67, v68);
LABEL_31:
        if (v6)
        {
          if (v10)
          {
LABEL_36:

            v69 = OUTLINED_FUNCTION_8_35();
            sub_193456418(v69, v70);
            goto LABEL_28;
          }
        }

        else if ((v10 & 1) == 0 && v5 == v9)
        {
          goto LABEL_36;
        }

LABEL_26:

        v35 = OUTLINED_FUNCTION_8_35();
        goto LABEL_27;
      }

      v53 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v53, v54);
    }

    else
    {
      OUTLINED_FUNCTION_248();
      sub_19350CB08(v47, v48);
      if (!v8)
      {
        v49 = OUTLINED_FUNCTION_151_5();
        OUTLINED_FUNCTION_20_19(v49, v50);
        OUTLINED_FUNCTION_248();
        sub_19350CB08(v51, v52);
        OUTLINED_FUNCTION_151_5();
        goto LABEL_30;
      }
    }

    v55 = OUTLINED_FUNCTION_11_23();
    sub_19350CB08(v55, v56);
    OUTLINED_FUNCTION_248();
    sub_19350CB08(v57, v58);
    v59 = OUTLINED_FUNCTION_11_23();
    sub_193456418(v59, v60);
    goto LABEL_26;
  }

  if ((*(v0 + 9) & 1) == 0)
  {
    v11 = v1;
    OUTLINED_FUNCTION_178_0();
    v71 = v8;
    v13 = v4;
    v14 = v7;
    v15 = v3;
    v16 = v6;
    v17 = v5;
    v18 = v10;
    v19 = v9;
    v20 = v12();
    v37 = v20 == v11();
    v9 = v19;
    v10 = v18;
    v5 = v17;
    v6 = v16;
    v3 = v15;
    v7 = v14;
    v4 = v13;
    v8 = v71;
    if (v37)
    {
      goto LABEL_7;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_194();
}

void sub_1935D0878()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v6 = v1;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v7 = v6();
    MEMORY[0x193B18030](v7);
  }

  if (v2 == 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v2)
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_9:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146_6();
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_10:
  OUTLINED_FUNCTION_114();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if ((*(a1 + 4) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    if (*(a1 + 17))
    {
      if ((*(a2 + 17) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 17))
      {
        return 0;
      }

      OUTLINED_FUNCTION_39_5();
      v3 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter();
      if (v3 != IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter())
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 4))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.hash(into:)()
{
  v1 = *(v0 + 17);
  if (*(v0 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_179_0();
      v2 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter();
      return MEMORY[0x193B18030](v2);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.hashValue.getter()
{
  OUTLINED_FUNCTION_120_5();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_169_4();
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_1935D0BB4()
{
  OUTLINED_FUNCTION_120_5();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_169_4();
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  if (v0 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v2 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter();
  return MEMORY[0x193B18030](v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v1 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

uint64_t sub_1935D0D60()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v1 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.hallucinationDetectedRules.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (*(v1 + 4) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
  }

  return sub_1935D1A9C(a1, v3);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1 != 1)
  {
    sub_19393CAE0();
  }

  sub_1935D1A9C(v4, v2);
  return sub_19393CB00();
}

uint64_t sub_1935D0F58(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    sub_19393CAE0();
  }

  sub_1935D1A9C(v5, v3);
  return sub_19393CB00();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQURequestFailedV06searchF12FailureErrorAC0efkL0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 40);
  return sub_19350CB08(v2, v3);
}

__n128 _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQURequestFailedV06searchF12FailureErrorAC0efkL0VSgvs_0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_193456418(*(v1 + 16), *(v1 + 24));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v4 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.rawValue.getter();
    MEMORY[0x193B18030](v4);
  }

  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_6();
    if (v3)
    {
      return OUTLINED_FUNCTION_104_0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      return OUTLINED_FUNCTION_104_0();
    }
  }

  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v2);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hashValue.getter()
{
  OUTLINED_FUNCTION_76_11();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935D11B0()
{
  OUTLINED_FUNCTION_76_11();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hash(into:)();
  return sub_19393CB00();
}

void _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_74();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94_7();
  v14 = *(v13 + 56);
  sub_193448804(v4, v0, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v2, v0 + v14, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v0);
  if (!v19)
  {
    v15 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v15, v16, v17, v18);
    OUTLINED_FUNCTION_31(v0 + v14);
    if (!v19)
    {
      sub_1935D1BE4(v0 + v14, v8, type metadata accessor for AIML.UUID);
      OUTLINED_FUNCTION_0_46();
      sub_1935C8448(v20, v21, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_85_9();
      sub_19393C550();
      OUTLINED_FUNCTION_6_34();
      sub_1935D1B90();
      OUTLINED_FUNCTION_24_1();
      sub_1935D1B90();
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1935D1B90();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v14);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_237();
  v3 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_74();
  sub_193448804(v0, v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v2, 1, v3);
  if (v9)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_1935D1BE4(v2, v1, type metadata accessor for AIML.UUID);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_46();
    sub_1935C8448(v10, v11, &protocol conformance descriptor for AIML.UUID);
    sub_19393C540();
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_1935D1610(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 36);
    do
    {
      if (*v5 == 1)
      {
        result = sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        result = sub_19393CAE0();
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D1688(uint64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v22);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  result = MEMORY[0x193B18030](v11);
  if (v11)
  {
    v13 = &v10[*(v7 + 20)];
    v14 = &v10[*(v7 + 24)];
    v15 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    do
    {
      sub_1935D50D0(v15, v10);
      sub_193448804(v10, v6, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v6, 1, v22) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_1935D1BE4(v6, v20, type metadata accessor for AIML.UUID);
        sub_19393CAD0();
        sub_1935C8448(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_1935D1B90();
      }

      if (*(v13 + 1))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (v14[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v16 = v14[8];
        v17 = *v14;
        sub_19393CAD0();
        v23 = v17;
        v24 = v16 & 1;
        v18 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter();
        MEMORY[0x193B18030](v18);
      }

      result = sub_1935D1B90();
      v15 += v21;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1935D19B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 49);
    do
    {
      v6 = *v5;
      if (*(v5 - 13) == 1)
      {
        sub_19393CAD0();
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
        if (!v6)
        {
LABEL_7:
          sub_19393CAD0();
          v7 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter();
          result = MEMORY[0x193B18030](v7);
          goto LABEL_8;
        }
      }

      result = sub_19393CAD0();
LABEL_8:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D1A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {
      v5 += 16;
      v6 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.rawValue.getter();
      result = MEMORY[0x193B18030](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D1B90()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1935D1BE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_1935D1C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v20 = v3;
  if (!v3)
  {
    return result;
  }

  v5 = 0;
  v19 = a2 + 32;
  do
  {
    memcpy(__dst, (v19 + 200 * v5), 0xC1uLL);
    if (__dst[1])
    {
      sub_19393CAD0();
      sub_1935B02B8(__dst, v21);
      sub_19393C640();
    }

    else
    {
      sub_19393CAD0();
      sub_1935B02B8(__dst, v21);
    }

    if ((__dst[16] & 0x10000000000) != 0)
    {
      sub_19393CAD0();
    }

    else
    {
      memcpy(v21, &__dst[2], 0x75uLL);
      sub_19393CAD0();
      IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
    }

    v6 = __dst[23];
    if (!__dst[23])
    {
      sub_19393CAD0();
      goto LABEL_33;
    }

    v8 = __dst[21];
    v7 = __dst[22];
    v10 = __dst[19];
    v9 = __dst[20];
    v12 = __dst[17];
    v11 = __dst[18];
    sub_19393CAD0();
    if ((v12 & 0x100000000) != 0)
    {
      sub_19393CAD0();
      if ((v11 & 0x100000000) != 0)
      {
LABEL_12:
        sub_19393CAD0();
        if ((v10 & 0x100000000) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_19393CAD0();
      sub_19393CAE0();
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_12;
      }
    }

    sub_19393CAD0();
    sub_19393CAE0();
    if ((v10 & 0x100000000) != 0)
    {
LABEL_13:
      sub_19393CAD0();
      if ((v9 & 0x100000000) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

LABEL_20:
    sub_19393CAD0();
    sub_19393CAE0();
    if ((v9 & 0x100000000) != 0)
    {
LABEL_14:
      sub_19393CAD0();
      if ((v8 & 0x100000000) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_19393CAD0();
    sub_19393CAE0();
    if ((v8 & 0x100000000) != 0)
    {
LABEL_15:
      sub_19393CAD0();
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_22:
    sub_19393CAD0();
    sub_19393CAE0();
    if ((v7 & 0x100000000) == 0)
    {
LABEL_23:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_24;
    }

LABEL_16:
    sub_19393CAD0();
LABEL_24:
    v13 = *(v6 + 16);
    MEMORY[0x193B18030](v13);
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = (v6 + 48);
    do
    {
      v15 = *v14;
      if (*(v14 - 7) == 1)
      {
        sub_19393CAD0();
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = *(v14 - 8);
        v17 = *(v14 - 2);
        sub_19393CAD0();
        v21[0] = v17;
        LOBYTE(v21[1]) = v16 & 1;
        v18 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
        MEMORY[0x193B18030](v18);
        if (!v15)
        {
LABEL_28:
          sub_19393CAD0();
          sub_19393CAE0();
          goto LABEL_31;
        }
      }

      sub_19393CAD0();
LABEL_31:
      v14 += 24;
      --v13;
    }

    while (v13);

LABEL_33:
    if (LOBYTE(__dst[24]) != 2)
    {
      sub_19393CAD0();
    }

    sub_19393CAD0();
    result = sub_1935D50A0(__dst);
    ++v5;
  }

  while (v5 != v20);
  return result;
}

uint64_t sub_1935D1F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      if (*(v5 - 7) == 1)
      {
        sub_19393CAD0();
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_19393CAD0();
        v7 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter();
        MEMORY[0x193B18030](v7);
        if (!v6)
        {
LABEL_7:
          sub_19393CAD0();
          result = sub_19393CAE0();
          goto LABEL_8;
        }
      }

      result = sub_19393CAD0();
LABEL_8:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D2054(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(__src, v5, sizeof(__src));
      sub_1935AF804(__dst, v7);
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
      memcpy(v7, __src, sizeof(v7));
      result = sub_1935D2104(v7);
      v5 += 232;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1935D21C8()
{
  result = qword_1EAE3E5E8;
  if (!qword_1EAE3E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E5E8);
  }

  return result;
}

unint64_t sub_1935D2250()
{
  result = qword_1EAE3E600;
  if (!qword_1EAE3E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E600);
  }

  return result;
}

unint64_t sub_1935D22D8()
{
  result = qword_1EAE3E618;
  if (!qword_1EAE3E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E618);
  }

  return result;
}

unint64_t sub_1935D2360()
{
  result = qword_1EAE3E630;
  if (!qword_1EAE3E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E630);
  }

  return result;
}

unint64_t sub_1935D23E8()
{
  result = qword_1EAE3E648;
  if (!qword_1EAE3E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E648);
  }

  return result;
}

unint64_t sub_1935D2470()
{
  result = qword_1EAE3E660;
  if (!qword_1EAE3E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E660);
  }

  return result;
}

unint64_t sub_1935D24F8()
{
  result = qword_1EAE3E678;
  if (!qword_1EAE3E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E678);
  }

  return result;
}

unint64_t sub_1935D2580()
{
  result = qword_1EAE3E690;
  if (!qword_1EAE3E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E690);
  }

  return result;
}

unint64_t sub_1935D2608()
{
  result = qword_1EAE3E6A8;
  if (!qword_1EAE3E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6A8);
  }

  return result;
}

unint64_t sub_1935D2690()
{
  result = qword_1EAE3E6C0;
  if (!qword_1EAE3E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6C0);
  }

  return result;
}

unint64_t sub_1935D2718()
{
  result = qword_1EAE3E6D8;
  if (!qword_1EAE3E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6D8);
  }

  return result;
}

unint64_t sub_1935D27A0()
{
  result = qword_1EAE3E6F0;
  if (!qword_1EAE3E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6F0);
  }

  return result;
}

unint64_t sub_1935D2828()
{
  result = qword_1EAE3E708;
  if (!qword_1EAE3E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E708);
  }

  return result;
}

unint64_t sub_1935D28B0()
{
  result = qword_1EAE3E720;
  if (!qword_1EAE3E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E720);
  }

  return result;
}

unint64_t sub_1935D2938()
{
  result = qword_1EAE3E738;
  if (!qword_1EAE3E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E738);
  }

  return result;
}

unint64_t sub_1935D29C0()
{
  result = qword_1EAE3E750;
  if (!qword_1EAE3E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E750);
  }

  return result;
}

unint64_t sub_1935D2A48()
{
  result = qword_1EAE3E768;
  if (!qword_1EAE3E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E768);
  }

  return result;
}

unint64_t sub_1935D2AD0()
{
  result = qword_1EAE3E778;
  if (!qword_1EAE3E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E778);
  }

  return result;
}

unint64_t sub_1935D2B58()
{
  result = qword_1EAE3E790;
  if (!qword_1EAE3E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E790);
  }

  return result;
}

unint64_t sub_1935D2C58()
{
  result = qword_1EAE3E798;
  if (!qword_1EAE3E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E798);
  }

  return result;
}

unint64_t sub_1935D2CB0()
{
  result = qword_1EAE3E7A0;
  if (!qword_1EAE3E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7A0);
  }

  return result;
}

unint64_t sub_1935D2D08()
{
  result = qword_1EAE3E7A8;
  if (!qword_1EAE3E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7A8);
  }

  return result;
}

unint64_t sub_1935D2DA8()
{
  result = qword_1EAE3E7B0;
  if (!qword_1EAE3E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7B0);
  }

  return result;
}

unint64_t sub_1935D2E90()
{
  result = qword_1EAE3E7C0;
  if (!qword_1EAE3E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7C0);
  }

  return result;
}

unint64_t sub_1935D2EE8()
{
  result = qword_1EAE3E7C8;
  if (!qword_1EAE3E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7C8);
  }

  return result;
}

unint64_t sub_1935D2F88()
{
  result = qword_1EAE3E7D8;
  if (!qword_1EAE3E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7D8);
  }

  return result;
}

unint64_t sub_1935D3028()
{
  result = qword_1EAE3E7E8;
  if (!qword_1EAE3E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7E8);
  }

  return result;
}

unint64_t sub_1935D3080()
{
  result = qword_1EAE3E7F0;
  if (!qword_1EAE3E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7F0);
  }

  return result;
}

unint64_t sub_1935D3120()
{
  result = qword_1EAE3E800;
  if (!qword_1EAE3E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E800);
  }

  return result;
}

unint64_t sub_1935D3178()
{
  result = qword_1EAE3E808;
  if (!qword_1EAE3E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E808);
  }

  return result;
}

unint64_t sub_1935D31D0()
{
  result = qword_1EAE3E810;
  if (!qword_1EAE3E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E810);
  }

  return result;
}

unint64_t sub_1935D3228()
{
  result = qword_1EAE3E818;
  if (!qword_1EAE3E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E818);
  }

  return result;
}

unint64_t sub_1935D3280()
{
  result = qword_1EAE3E820;
  if (!qword_1EAE3E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E820);
  }

  return result;
}

unint64_t sub_1935D32D8()
{
  result = qword_1EAE3E828;
  if (!qword_1EAE3E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E828);
  }

  return result;
}

unint64_t sub_1935D3330()
{
  result = qword_1EAE3E830;
  if (!qword_1EAE3E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E830);
  }

  return result;
}

unint64_t sub_1935D3388()
{
  result = qword_1EAE3E838;
  if (!qword_1EAE3E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E838);
  }

  return result;
}

unint64_t sub_1935D33E0()
{
  result = qword_1EAE3E840;
  if (!qword_1EAE3E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E840);
  }

  return result;
}

unint64_t sub_1935D3438()
{
  result = qword_1EAE3E848;
  if (!qword_1EAE3E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E848);
  }

  return result;
}

unint64_t sub_1935D3490()
{
  result = qword_1EAE3E850;
  if (!qword_1EAE3E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E850);
  }

  return result;
}

unint64_t sub_1935D34E8()
{
  result = qword_1EAE3E858;
  if (!qword_1EAE3E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E858);
  }

  return result;
}

unint64_t sub_1935D3540()
{
  result = qword_1EAE3E860;
  if (!qword_1EAE3E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E860);
  }

  return result;
}

unint64_t sub_1935D3598()
{
  result = qword_1EAE3E868;
  if (!qword_1EAE3E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E868);
  }

  return result;
}

unint64_t sub_1935D35F0()
{
  result = qword_1EAE3E870;
  if (!qword_1EAE3E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E870);
  }

  return result;
}

unint64_t sub_1935D3648()
{
  result = qword_1EAE3E878;
  if (!qword_1EAE3E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E878);
  }

  return result;
}

unint64_t sub_1935D36A0()
{
  result = qword_1EAE3E880;
  if (!qword_1EAE3E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E880);
  }

  return result;
}

unint64_t sub_1935D36F8()
{
  result = qword_1EAE3E888;
  if (!qword_1EAE3E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E888);
  }

  return result;
}

unint64_t sub_1935D3750()
{
  result = qword_1EAE3E890;
  if (!qword_1EAE3E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E890);
  }

  return result;
}

void sub_1935D3868()
{
  sub_1935D3BC4(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_1935D3BC4(319, qword_1ED506A90, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1935D3BC4(319, &qword_1ED507A78, type metadata accessor for MonotonicTimestamp, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1935D3BC4(319, &qword_1ED506A28, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED5069F8, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext);
            if (v5 <= 0x3F)
            {
              sub_19349D1FC(319, &qword_1ED506A10, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext);
              if (v6 <= 0x3F)
              {
                sub_19349D1FC(319, qword_1ED506A30, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext);
                if (v7 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED505888, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext);
                  if (v8 <= 0x3F)
                  {
                    sub_19349D1FC(319, qword_1ED505760, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext);
                    if (v9 <= 0x3F)
                    {
                      sub_1935D3BC4(319, qword_1ED505848, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1, MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        sub_19349D1FC(319, &qword_1ED506A20, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationContext);
                        if (v11 <= 0x3F)
                        {
                          sub_1935D3BC4(319, &qword_1ED506A00, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_1935D3BC4(319, &qword_1ED506A08, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext, MEMORY[0x1E69E6720]);
                            if (v13 <= 0x3F)
                            {
                              OUTLINED_FUNCTION_15_2();
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
          }
        }
      }
    }
  }
}

void sub_1935D3BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

void sub_1935D3DE8()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED505890, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED505880, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506A18, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1935D3F1C()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_114_8();
    if (v3 < 0)
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      result[10] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[10] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
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

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_114_8();
  if (v6 < 0)
  {
    v6 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v6);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        result[2] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        result[2] = 0;
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
        *(result + 2) = 0;
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
          result = OUTLINED_FUNCTION_117_1(result, a2);
        }

        break;
    }
  }

  return result;
}

void sub_1935D4250()
{
  sub_1935D3BC4(319, &qword_1EAE3E8A0, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1EAE3E8A8, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseSource);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE3E8B0, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_4_36();
        sub_1935D3BC4(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1935D4394()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_263Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_12_0(*(a1 + *(a3 + 20) + 8));
  }

  v7 = OUTLINED_FUNCTION_21_1();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void __swift_store_extra_inhabitant_index_264Tm()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

void sub_1935D4630()
{
  sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
    if (v1 <= 0x3F)
    {
      sub_1935D3BC4(319, &qword_1EAE3E8C0, type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3E8C8, &type metadata for IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy37_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1935D4750(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 37))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935D4768(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 37) = v3;
  return result;
}

void sub_1935D4810(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v7, v8, MEMORY[0x1E69E6720]);
  if (v9 <= 0x3F)
  {
    sub_19349D1FC(319, a4, a5);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_128_8();
      sub_19349D1FC(v11, v12, v13);
      if (v14 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV20TopicalityAttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t sub_1935D4950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 232))
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

uint64_t sub_1935D499C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1935D4A40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_1935D4A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_1935D4B50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 193))
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

uint64_t sub_1935D4B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_135(result, 0);
    *(result + 192) = 0;
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1935D4C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 117))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935D4C34(uint64_t result, int a2, int a3)
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
    *(result + 116) = 0;
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

  *(result + 117) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary35IntelligenceFlowSearchToolTelemetryV29SearchToolLLMQURequestStartedVwet_0(unsigned __int8 *a1, unsigned int a2)
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
  OUTLINED_FUNCTION_114_8();
  if (v6 < 0)
  {
    v6 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v6);
}

_BYTE *_s27IntelligencePlatformLibrary35IntelligenceFlowSearchToolTelemetryV29SearchToolLLMQURequestStartedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_117_1(result, a2);
        }

        break;
    }
  }

  return result;
}

void *sub_1935D4E60(void *result, int a2, int a3)
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 8) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_1935D4F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1935D4F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void sub_1935D501C()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1935D50D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_57_10(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_14(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_13(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

void OUTLINED_FUNCTION_103_9(uint64_t a1@<X8>)
{
  *(a1 + 4) = v1;
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
  *(a1 + 16) = 0;
  *(a1 + 20) = v1;
  *(a1 + 24) = 0;
  *(a1 + 28) = v1;
  *(a1 + 32) = 0;
  *(a1 + 36) = v1;
}

__n128 OUTLINED_FUNCTION_121_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __n128 a24, uint64_t a25)
{
  *(v25 - 144) = a21;
  *(v25 - 128) = a22;
  result = a24;
  *(v25 - 112) = a24;
  *(v25 - 96) = a25;
  return result;
}

uint64_t OUTLINED_FUNCTION_137_5()
{

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
}

uint64_t OUTLINED_FUNCTION_146_6()
{

  return sub_19393C640();
}

void OUTLINED_FUNCTION_150_5(__n128 a1)
{
  *(v1 + 152) = a1;
  *(v1 + 168) = a1;
  *(v1 + 184) = a1;
  *(v1 + 200) = a1;
}

double OUTLINED_FUNCTION_154_5()
{
  *(v0 + 29) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 37) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_166_4(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1935D1BE4(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_167_5(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1935D1BE4(v4 + v5, v3, a3);
}

uint64_t OUTLINED_FUNCTION_168_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_193448804(v4, v5, a3, a4);
}

_BYTE *_s16IntelligenceFlowOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s9TelemetryOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s10DatastreamOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s10TranscriptOwst_1(_BYTE *result, int a2, int a3)
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

_BYTE *_s4SiriOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s18PostSiriEngagementOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935D58E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v2, qword_1ED510670);
  v3 = __swift_project_value_buffer(v2, qword_1ED510670);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return (*(v5 + 32))(v3, v0, v2);
  }

  return result;
}

uint64_t sub_1935D5A80(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = a2(0);
  __swift_allocate_value_buffer(v4, a3);
  __swift_project_value_buffer(v4, a3);
  OUTLINED_FUNCTION_9_10();
  v6 = *(v5 + 104);

  return v6();
}

unint64_t sub_1935D5B7C()
{
  result = sub_193434358();
  qword_1ED510660 = &type metadata for Library.Databases.IntelligenceFlow.Telemetry.Indexes;
  *algn_1ED510668 = result;
  return result;
}

uint64_t sub_1935D5BB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return (*(v8 + 32))(v6, v2, v5);
  }

  return result;
}

uint64_t sub_1935D5CD0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  __swift_project_value_buffer(v8, a3);
  OUTLINED_FUNCTION_9_10();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t sub_1935D5DB0(uint64_t a1)
{
  v2 = sub_1935D60DC();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D5DEC(uint64_t a1)
{
  sub_1935D60DC();

  return MEMORY[0x1EEDF07A0](a1);
}

uint64_t sub_1935D5E38(uint64_t a1)
{
  v2 = sub_1935D60DC();

  return MEMORY[0x1EEDF07B0](a1, v2);
}

unint64_t sub_1935D5E84()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_193490E70((v1 > 1), v2 + 1, 1, v0);
  }

  result = sub_1935D60DC();
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Telemetry.Indexes.ITDatestampClientSessionIDClientRequestIDIndexView;
  *(v4 + 5) = result;
  qword_1ED510658 = v0;
  return result;
}

unint64_t sub_1935D5F18()
{
  result = qword_1ED502AC0;
  if (!qword_1ED502AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AC0);
  }

  return result;
}

unint64_t sub_1935D5F70()
{
  result = qword_1ED502BB0;
  if (!qword_1ED502BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BB0);
  }

  return result;
}

_BYTE *sub_1935D6030(_BYTE *result, int a2, int a3)
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

unint64_t sub_1935D60DC()
{
  result = qword_1ED502BB8;
  if (!qword_1ED502BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BB8);
  }

  return result;
}

uint64_t sub_1935D613C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v2, qword_1ED510790);
  v3 = __swift_project_value_buffer(v2, qword_1ED510790);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return (*(v5 + 32))(v3, v0, v2);
  }

  return result;
}

unint64_t sub_1935D6350()
{
  result = sub_193434304();
  qword_1ED510760 = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes;
  *algn_1ED510768 = result;
  return result;
}

uint64_t sub_1935D63CC(uint64_t a1)
{
  v2 = sub_1935D6D34();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D6408()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6D34();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D6448()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6D34();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D64C8()
{
  result = sub_193434304();
  qword_1ED510770 = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes;
  *algn_1ED510778 = result;
  return result;
}

uint64_t sub_1935D65A4(uint64_t a1)
{
  v2 = sub_1935D6CE0();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D65E0()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6CE0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D6620()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6CE0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D66A0()
{
  result = sub_193434304();
  qword_1ED510780 = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes;
  *algn_1ED510788 = result;
  return result;
}

uint64_t sub_1935D66DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return (*(v8 + 32))(v6, v2, v5);
  }

  return result;
}

uint64_t sub_1935D67F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  __swift_project_value_buffer(v8, a3);
  OUTLINED_FUNCTION_9_10();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t sub_1935D689C(uint64_t a1)
{
  v2 = sub_1935D6C8C();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D68D8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6C8C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D6918()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6C8C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D6958()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    v0 = OUTLINED_FUNCTION_36_2(v1);
  }

  v4 = sub_1935D6D34();
  *(v0 + 2) = v3;
  v5 = &v0[16 * v2];
  *(v5 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes.ITDDatestampClientSessionIDClientRequestIDIndexView;
  *(v5 + 5) = v4;
  v6 = *(v0 + 3);
  v7 = v2 + 2;
  if ((v2 + 2) > (v6 >> 1))
  {
    v0 = sub_193490E70((v6 > 1), v2 + 2, 1, v0);
  }

  v8 = sub_1935D6CE0();
  *(v0 + 2) = v7;
  v9 = &v0[16 * v3];
  *(v9 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes.ITDDatestampEventIDIndexView;
  *(v9 + 5) = v8;
  v10 = *(v0 + 3);
  if ((v2 + 3) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v10);
  }

  result = sub_1935D6C8C();
  *(v0 + 2) = v2 + 3;
  v12 = &v0[16 * v7];
  *(v12 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes.ITDDatestampSessionIDIndexView;
  *(v12 + 5) = result;
  qword_1ED510758 = v0;
  return result;
}

unint64_t sub_1935D6A54()
{
  result = qword_1ED502AC8;
  if (!qword_1ED502AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AC8);
  }

  return result;
}

unint64_t sub_1935D6AAC()
{
  result = qword_1ED502A98;
  if (!qword_1ED502A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A98);
  }

  return result;
}

unint64_t sub_1935D6B04()
{
  result = qword_1ED502A90;
  if (!qword_1ED502A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A90);
  }

  return result;
}

unint64_t sub_1935D6B5C()
{
  result = qword_1ED502BC8;
  if (!qword_1ED502BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BC8);
  }

  return result;
}

_BYTE *_s7IndexesO28ITDDatestampEventIDIndexViewOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1935D6C8C()
{
  result = qword_1ED502B80;
  if (!qword_1ED502B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B80);
  }

  return result;
}

unint64_t sub_1935D6CE0()
{
  result = qword_1ED502B88;
  if (!qword_1ED502B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B88);
  }

  return result;
}

unint64_t sub_1935D6D34()
{
  result = qword_1ED502BD0;
  if (!qword_1ED502BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BD0);
  }

  return result;
}

uint64_t sub_1935D6DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v2, qword_1ED510910);
  v3 = __swift_project_value_buffer(v2, qword_1ED510910);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return (*(v5 + 32))(v3, v0, v2);
  }

  return result;
}

unint64_t sub_1935D6FE8()
{
  result = sub_193434AE0();
  qword_1ED5108E0 = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes;
  *algn_1ED5108E8 = result;
  return result;
}

uint64_t sub_1935D70AC(uint64_t a1)
{
  v2 = sub_1935D7BB8();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D70E8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7BB8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D7128()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7BB8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D71C0()
{
  result = sub_193434AE0();
  qword_1ED5108F0 = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes;
  *algn_1ED5108F8 = result;
  return result;
}

uint64_t sub_1935D7284(uint64_t a1)
{
  v2 = sub_1935D7B64();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D72C0()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B64();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D7300()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B64();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D7398()
{
  result = sub_193434AE0();
  qword_1ED510900 = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes;
  *algn_1ED510908 = result;
  return result;
}

uint64_t sub_1935D73F8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return (*(v8 + 32))(v6, v2, v5);
  }

  return result;
}

uint64_t sub_1935D7578(uint64_t a1)
{
  v2 = sub_1935D7B10();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D75B4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B10();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D75F4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B10();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D7634()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    v0 = OUTLINED_FUNCTION_36_2(v1);
  }

  v4 = sub_1935D7BB8();
  *(v0 + 2) = v3;
  v5 = &v0[16 * v2];
  *(v5 + 4) = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes.SPDatestampClientSessionIdIndexView;
  *(v5 + 5) = v4;
  v6 = *(v0 + 3);
  v7 = v2 + 2;
  if ((v2 + 2) > (v6 >> 1))
  {
    v0 = sub_193490E70((v6 > 1), v2 + 2, 1, v0);
  }

  v8 = sub_1935D7B64();
  *(v0 + 2) = v7;
  v9 = &v0[16 * v3];
  *(v9 + 4) = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes.SPDatestampLastRequestIdIndexView;
  *(v9 + 5) = v8;
  v10 = *(v0 + 3);
  if ((v2 + 3) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v10);
  }

  result = sub_1935D7B10();
  *(v0 + 2) = v2 + 3;
  v12 = &v0[16 * v7];
  *(v12 + 4) = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes.SPDatestampTaskIdIndexView;
  *(v12 + 5) = result;
  qword_1ED5108D8 = v0;
  return result;
}

uint64_t static Library.Databases.Siri.PostSiriEngagement.Indexes.views.getter()
{
  if (qword_1ED5108D0 != -1)
  {
    OUTLINED_FUNCTION_4_39(&qword_1ED5108D0);
  }
}

unint64_t sub_1935D7790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = a1 == 0xD000000000000023 && 0x800000019396E390 == a2;
  if (v7 || (OUTLINED_FUNCTION_59_0(0xD000000000000023, 0x800000019396E390) & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_1935D7C0C(v8);
  }

  else
  {
    v10 = a1 == 0xD000000000000021 && 0x800000019396E3C0 == a2;
    if (v10 || (OUTLINED_FUNCTION_59_0(0xD000000000000021, 0x800000019396E3C0) & 1) != 0)
    {
      v11 = OUTLINED_FUNCTION_26_3();
      result = sub_1935D7C44(v11);
    }

    else
    {
      v12 = a1 == 0xD00000000000001ALL && 0x800000019396E3F0 == a2;
      if (!v12 && (OUTLINED_FUNCTION_59_0(0xD00000000000001ALL, 0x800000019396E3F0) & 1) == 0)
      {
        return a3();
      }

      v13 = OUTLINED_FUNCTION_26_3();
      result = sub_1935D7C7C(v13);
    }
  }

  if (!v3)
  {
  }

  return result;
}

unint64_t sub_1935D789C()
{
  result = qword_1ED502AB0;
  if (!qword_1ED502AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AB0);
  }

  return result;
}

unint64_t sub_1935D78F4()
{
  result = qword_1ED502A50;
  if (!qword_1ED502A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A50);
  }

  return result;
}

unint64_t sub_1935D794C()
{
  result = qword_1ED502A58;
  if (!qword_1ED502A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A58);
  }

  return result;
}

unint64_t sub_1935D79A4()
{
  result = qword_1ED502B40;
  if (!qword_1ED502B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B40);
  }

  return result;
}

_BYTE *sub_1935D7A68(_BYTE *result, int a2, int a3)
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

unint64_t sub_1935D7B10()
{
  result = qword_1ED502B58;
  if (!qword_1ED502B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B58);
  }

  return result;
}

unint64_t sub_1935D7B64()
{
  result = qword_1ED502B50;
  if (!qword_1ED502B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B50);
  }

  return result;
}

unint64_t sub_1935D7BB8()
{
  result = qword_1ED502B48;
  if (!qword_1ED502B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B48);
  }

  return result;
}

uint64_t sub_1935D7CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510B90);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D7E68(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  a2(0);
  OUTLINED_FUNCTION_104_2();
  __swift_allocate_value_buffer(v5, v6);
  __swift_project_value_buffer(v3, a3);
  OUTLINED_FUNCTION_9_10();
  v8 = *(v7 + 104);

  return v8();
}

uint64_t sub_1935D7F30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510BD8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D8020()
{
  result = sub_193434A8C();
  qword_1ED510B10 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B18 = result;
  return result;
}

uint64_t sub_1935D8074()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510BF0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D8244()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E20F0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D82C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510C08);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D83B0()
{
  result = sub_193434A8C();
  qword_1ED510B20 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B28 = result;
  return result;
}

uint64_t sub_1935D8404()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510C20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t static Library.Databases.IntelligencePlatform.Entity.FlightReservations.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_165_5(v0 | 8, v1 | 0x8000000000000000, v3, v4, v5, v2 | 0x8000000000000000);
  sub_19393BFC0();
  OUTLINED_FUNCTION_29_8();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1935D863C()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E209C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D86B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510C38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D87A0()
{
  result = sub_193434A8C();
  qword_1ED510B30 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B38 = result;
  return result;
}

uint64_t sub_1935D87F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510C50);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D89B8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E2048();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D8A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510C68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D8B1C()
{
  result = sub_193434A8C();
  qword_1ED510B40 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B48 = result;
  return result;
}

uint64_t sub_1935D8B70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510C80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D8D48()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1FF4();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D8DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510C98);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D8EAC()
{
  result = sub_193434A8C();
  qword_1ED510B50 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B58 = result;
  return result;
}

uint64_t sub_1935D8F00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510CB0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D9028()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_165_5(v1, v2, v3, v4, v5, v0 | 0x8000000000000000);
  sub_19393BFC0();
  OUTLINED_FUNCTION_29_8();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1935D9124()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1FA0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D9190()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510CC8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D9280()
{
  result = sub_193434A8C();
  qword_1ED510B60 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B68 = result;
  return result;
}

uint64_t sub_1935D92D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510CE0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D9470()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1F4C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D94EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510CF8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D95DC()
{
  result = sub_193434A8C();
  qword_1ED510B70 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B78 = result;
  return result;
}

uint64_t sub_1935D9630()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510D10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D977C(uint64_t a1)
{
  v2 = sub_1935E1EF8();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D97B8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1EF8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D97F8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1EF8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

uint64_t sub_1935D9840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510D28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_1935D9930()
{
  result = sub_193434A8C();
  qword_1ED510B80 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B88 = result;
  return result;
}

uint64_t sub_1935D9984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED510D40);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_1935D9A74@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_98_1();
  if (!v4)
  {
    swift_once();
  }

  a1(0);
  OUTLINED_FUNCTION_104_2();
  __swift_project_value_buffer(v5, v6);
  OUTLINED_FUNCTION_9_10();
  v8 = *(v7 + 16);

  return v8(a2);
}

uint64_t sub_1935D9BB4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1EA4();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D9C18@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_98_1();
  if (!v3)
  {
    swift_once();
  }

  sub_19393BF10();
  OUTLINED_FUNCTION_104_2();
  v6 = __swift_project_value_buffer(v4, v5);
  OUTLINED_FUNCTION_52_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_9_10();
  return (*(v7 + 16))(a1, v6, v1);
}

unint64_t sub_1935D9CB0()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v20, v21, v22, v23);
  }

  v3 = sub_1935E20F0();
  *(v0 + 2) = v2 + 1;
  OUTLINED_FUNCTION_89_4(v3, &type metadata for Library.Databases.IntelligencePlatform.Entity.Event);
  if ((v2 + 2) > (v4 >> 1))
  {
    OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v24, v25, v26, v27);
  }

  v5 = sub_1935E209C();
  *(v0 + 2) = v2 + 2;
  OUTLINED_FUNCTION_89_4(v5, &type metadata for Library.Databases.IntelligencePlatform.Entity.FlightReservations);
  if ((v2 + 3) > (v6 >> 1))
  {
    OUTLINED_FUNCTION_39(v6);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v28, v29, v30, v31);
  }

  v7 = sub_1935E2048();
  *(v0 + 2) = v2 + 3;
  OUTLINED_FUNCTION_89_4(v7, &type metadata for Library.Databases.IntelligencePlatform.Entity.Location);
  if ((v2 + 4) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_39(v8);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v32, v33, v34, v35);
  }

  v9 = sub_1935E1FF4();
  *(v0 + 2) = v2 + 4;
  OUTLINED_FUNCTION_89_4(v9, &type metadata for Library.Databases.IntelligencePlatform.Entity.Person);
  if ((v2 + 5) > (v10 >> 1))
  {
    OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v36, v37, v38, v39);
  }

  v11 = sub_1935E1FA0();
  *(v0 + 2) = v2 + 5;
  OUTLINED_FUNCTION_89_4(v11, &type metadata for Library.Databases.IntelligencePlatform.Entity.Software);
  if ((v2 + 6) > (v12 >> 1))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v40, v41, v42, v43);
  }

  v13 = sub_1935E1F4C();
  *(v0 + 2) = v2 + 6;
  OUTLINED_FUNCTION_89_4(v13, &type metadata for Library.Databases.IntelligencePlatform.Entity.holidayEvent);
  v15 = v2 + 7;
  if ((v2 + 7) > (v14 >> 1))
  {
    OUTLINED_FUNCTION_39(v14);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v44, v45, v46, v47);
  }

  v16 = sub_1935E1EF8();
  *(v0 + 2) = v15;
  OUTLINED_FUNCTION_89_4(v16, &type metadata for Library.Databases.IntelligencePlatform.Entity.initializeGlobalKnowledgeAssets);
  if ((v2 + 8) > (v17 >> 1))
  {
    OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v48, v49, v50, v51);
  }

  result = sub_1935E1EA4();
  *(v0 + 2) = v2 + 8;
  v19 = &v0[16 * v15];
  *(v19 + 4) = &type metadata for Library.Databases.IntelligencePlatform.Entity.sportsTeams;
  *(v19 + 5) = result;
  qword_1ED510AD0 = v0;
  return result;
}

uint64_t static Library.Databases.IntelligencePlatform.Entity.views.getter()
{
  if (qword_1ED510AC8 != -1)
  {
    OUTLINED_FUNCTION_83_16(&qword_1ED510AC8);
  }
}

unint64_t sub_1935D9F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1 == 0x746E657645 && a2 == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_59_0(0x746E657645, 0xE500000000000000) & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_1935E2144(v8);
    goto LABEL_7;
  }

  v10 = a1 == 0xD000000000000012 && 0x800000019396E6D0 == a2;
  if (v10 || (v11 = OUTLINED_FUNCTION_90_1(), (OUTLINED_FUNCTION_59_0(v11, v12) & 1) != 0))
  {
    v13 = OUTLINED_FUNCTION_26_3();
    result = sub_1935E2170(v13);
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_133_8();
  v15 = a1 == v14 && a2 == 0xE800000000000000;
  if (v15 || (OUTLINED_FUNCTION_59_0(v14, 0xE800000000000000) & 1) != 0)
  {
    goto LABEL_21;
  }

  v17 = OUTLINED_FUNCTION_138_5();
  v18 = a1 == v17 && a2 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_59_0(v17, 0xE600000000000000) & 1) != 0)
  {
    v19 = OUTLINED_FUNCTION_26_3();
    result = sub_1935E21D4(v19);
  }

  else
  {
    v20 = a1 == 0x6572617774666F53 && a2 == 0xE800000000000000;
    if (v20 || (OUTLINED_FUNCTION_59_0(0x6572617774666F53, 0xE800000000000000) & 1) != 0)
    {
LABEL_21:
      v16 = OUTLINED_FUNCTION_26_3();
      result = sub_1935E21A8(v16);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_166_5();
    v22 = a1 == 0x45796164696C6F68 && a2 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_0(0x45796164696C6F68, v21) & 1) != 0)
    {
      v23 = OUTLINED_FUNCTION_26_3();
      result = sub_1935E2200(v23);
    }

    else
    {
      v24 = a1 == 0xD00000000000001FLL && 0x800000019396E6F0 == a2;
      if (v24 || (OUTLINED_FUNCTION_59_0(0xD00000000000001FLL, 0x800000019396E6F0) & 1) != 0)
      {
        v25 = OUTLINED_FUNCTION_26_3();
        result = sub_1935E2234(v25);
      }

      else
      {
        v26 = a1 == 0x65547374726F7073 && a2 == 0xEB00000000736D61;
        if (!v26 && (OUTLINED_FUNCTION_59_0(0x65547374726F7073, 0xEB00000000736D61) & 1) == 0)
        {
          return a3();
        }

        v27 = OUTLINED_FUNCTION_26_3();
        result = sub_1935E226C(v27);
      }
    }
  }

LABEL_7:
  if (!v3)
  {
  }

  return result;
}

void sub_1935DA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_1();
  v412 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  v27 = OUTLINED_FUNCTION_47(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15_8();
  v394 = v28;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_372();
  v408 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  v32 = OUTLINED_FUNCTION_47(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15_8();
  v393 = v33;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_124_6();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  v36 = OUTLINED_FUNCTION_47(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15_8();
  v392 = v37;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v383 - v39;
  v407 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15_8();
  v391 = v44;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v383 - v46;
  v48 = sub_19393BF10();
  __swift_allocate_value_buffer(v48, qword_1ED510D58);
  v410 = v48;
  v396 = __swift_project_value_buffer(v48, qword_1ED510D58);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v50 = OUTLINED_FUNCTION_168_3(v49, &a17);
  OUTLINED_FUNCTION_30(v50);
  v402 = *(v51 + 72);
  OUTLINED_FUNCTION_123_10(&a16);
  v53 = v52;
  v388 = v52;
  v54 = swift_allocObject();
  v395 = v54;
  *(v54 + 16) = xmmword_1939526C0;
  v403 = &v53[v54];
  v397 = *MEMORY[0x1E698F1A0];
  v55 = *(v42 + 104);
  v405 = v42 + 104;
  v55(v47);
  v56 = v55;
  v411 = v55;
  v57 = sub_19393BF40();
  v58 = OUTLINED_FUNCTION_39_4();
  v406 = v57;
  OUTLINED_FUNCTION_63_0(v58, v59, v60, v57);
  v409 = sub_19393BEF0();
  v61 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_63_0(v65, v66, v67, v48);
  v404 = sub_19393BEB0();
  v68 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_99_13(v72, v73, v74, v75, v47);
  v399 = *MEMORY[0x1E698F198];
  v76 = v399;
  v77 = v407;
  (v56)(v47, v399, v407);
  v78 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v57);
  v81 = v20;
  OUTLINED_FUNCTION_45();
  v82 = v409;
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v409);
  v86 = OUTLINED_FUNCTION_25_9();
  v87 = v410;
  __swift_storeEnumTagSinglePayload(v86, v88, v89, v410);
  v90 = OUTLINED_FUNCTION_20_1();
  v91 = v404;
  __swift_storeEnumTagSinglePayload(v90, v92, v93, v404);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_105();
  v94 = v402;
  v95 = v403;
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_129_8(v96, v97, v98, v99, v47, v40);
  OUTLINED_FUNCTION_86_12(&v95[2 * v94]);
  v100 = v94;
  v101 = v76;
  v102 = v77;
  v103 = v77;
  v104 = v411;
  (v411)(v47, v101, v103);
  v105 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v406);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v82);
  v111 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v87);
  v114 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v91);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_117_11(v117, v118, v119, v120, v47, v40);
  OUTLINED_FUNCTION_86_12(3 * v94);
  v121 = v399;
  (v104)(v47, v399, v102);
  v122 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_170_3(v122, v123, v124);
  v125 = v81;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v409);
  v129 = OUTLINED_FUNCTION_20_1();
  v130 = v410;
  __swift_storeEnumTagSinglePayload(v129, v131, v132, v410);
  v133 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v404);
  OUTLINED_FUNCTION_135_5();
  OUTLINED_FUNCTION_14_3();
  v136 = v403;
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  v401 = v47;
  OUTLINED_FUNCTION_114_9(v137, v138, v139, v140, v47, v40);
  OUTLINED_FUNCTION_86_12(&v136[4 * v100]);
  v141 = v47;
  v142 = v411;
  (v411)(v141, v121, v407);
  v143 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v87);
  v146 = OUTLINED_FUNCTION_35_0();
  v147 = v409;
  __swift_storeEnumTagSinglePayload(v146, v148, v149, v409);
  v150 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v130);
  v153 = v412;
  v154 = OUTLINED_FUNCTION_38_4();
  v155 = v404;
  __swift_storeEnumTagSinglePayload(v154, v156, v157, v404);
  OUTLINED_FUNCTION_136_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  v398 = v125;
  OUTLINED_FUNCTION_114_9(v158, v159, v160, v161, v401, v40);
  v162 = v402;
  OUTLINED_FUNCTION_86_12(5 * v402);
  v163 = OUTLINED_FUNCTION_225();
  (v142)(v163);
  v164 = v40;
  OUTLINED_FUNCTION_45();
  v165 = v406;
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v406);
  v169 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v147);
  v172 = v408;
  v173 = OUTLINED_FUNCTION_35_0();
  v174 = v410;
  __swift_storeEnumTagSinglePayload(v173, v175, v176, v410);
  v177 = v153;
  v178 = OUTLINED_FUNCTION_38_4();
  v179 = v155;
  __swift_storeEnumTagSinglePayload(v178, v180, v181, v155);
  v389 = v172;
  v390 = v177;
  v182 = v403;
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  v183 = v401;
  v184 = v398;
  OUTLINED_FUNCTION_114_9(v185, v186, v187, v188, v401, v164);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_86_12(&v182[v162 * v189]);
  (v411)(v183, v121, v407);
  v190 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v190, v191, v192, v165);
  v193 = OUTLINED_FUNCTION_35_0();
  v194 = v409;
  __swift_storeEnumTagSinglePayload(v193, v195, v196, v409);
  v197 = v408;
  v198 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v174);
  v201 = v412;
  v202 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v202, v203, v204, v179);
  v385 = v197;
  v386 = v201;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  v400 = v164;
  OUTLINED_FUNCTION_114_9(v205, v206, v207, v208, v183, v164);
  v209 = OUTLINED_FUNCTION_105_12(7 * v402);
  v210 = v121;
  v211 = v407;
  v212 = v411;
  (v411)(v209, v210, v407);
  v213 = OUTLINED_FUNCTION_42_3();
  v214 = v406;
  __swift_storeEnumTagSinglePayload(v213, v215, v216, v406);
  OUTLINED_FUNCTION_9_10();
  v386 = *(v217 + 104);
  v387 = v217 + 104;
  v386(v184);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v194);
  OUTLINED_FUNCTION_88_13("LabelledIdentifier");
  v221 = v388;
  v222 = swift_allocObject();
  v389 = &v221[OUTLINED_FUNCTION_102_13(v222, &a17, xmmword_19394FBE0)];
  v223 = v391;
  v224 = v399;
  (v212)(v391, v399, v211);
  v225 = v392;
  v226 = OUTLINED_FUNCTION_19_6();
  v227 = v214;
  __swift_storeEnumTagSinglePayload(v226, v228, v229, v214);
  v230 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v230, v231, v232, v194);
  v233 = v394;
  v234 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v234, v235, v236, v410);
  v237 = v412;
  v238 = OUTLINED_FUNCTION_20_1();
  v239 = v404;
  __swift_storeEnumTagSinglePayload(v238, v240, v241, v404);
  v385 = v233;
  v386 = v237;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_119_8(v242, v243, v244, v245, v223, v225);
  v388 = "LabelledIdentifier";
  (v411)(v223, v224, v407);
  v246 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v246, v247, v248, v227);
  v249 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v249, v250, v251, v409);
  v252 = OUTLINED_FUNCTION_15_7();
  v253 = v410;
  __swift_storeEnumTagSinglePayload(v252, v254, v255, v410);
  v256 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v256, v257, v258, v239);
  v385 = v233;
  v386 = v237;
  v259 = v402;
  OUTLINED_FUNCTION_131_7();
  v384 = 0;
  v383 = 256;
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_119_8(v260, v261, v262, v263, v223, v225);
  v264 = v408;
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v265, v266, v267, v253);
  v268 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v239);
  v385 = v264;
  v386 = v237;
  v384 = 0;
  v383 = 256;
  OUTLINED_FUNCTION_140_6();
  v271 = v403;
  OUTLINED_FUNCTION_52_7();
  v272 = v401;
  v273 = v398;
  OUTLINED_FUNCTION_107_10(v274, v275, v276, v277, v401, v400);
  v394 = &v271[8 * v259];
  v278 = v397;
  v279 = v407;
  (v411)(v272, v397, v407);
  v280 = OUTLINED_FUNCTION_38_4();
  v281 = v406;
  __swift_storeEnumTagSinglePayload(v280, v282, v283, v406);
  v284 = v273;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v285, v286, v287, v409);
  v288 = OUTLINED_FUNCTION_25_9();
  v289 = v410;
  __swift_storeEnumTagSinglePayload(v288, v290, v291, v410);
  v292 = OUTLINED_FUNCTION_28_0();
  v293 = v404;
  __swift_storeEnumTagSinglePayload(v292, v294, v295, v404);
  OUTLINED_FUNCTION_164_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_52_7();
  v296 = v401;
  OUTLINED_FUNCTION_110_6(v297, v298, v299, v300, v401);
  v301 = v402;
  v394 = 9 * v402;
  v302 = v278;
  v303 = v411;
  (v411)(v296, v302, v279);
  v304 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v304, v305, v306, v281);
  v307 = OUTLINED_FUNCTION_15_7();
  v308 = v409;
  __swift_storeEnumTagSinglePayload(v307, v309, v310, v409);
  v311 = v408;
  v312 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v312, v313, v314, v289);
  v315 = v412;
  v316 = OUTLINED_FUNCTION_19_6();
  v317 = v293;
  __swift_storeEnumTagSinglePayload(v316, v318, v319, v293);
  v389 = v311;
  v390 = v315;
  OUTLINED_FUNCTION_14_3();
  v320 = v403;
  OUTLINED_FUNCTION_42_8();
  v321 = v400;
  OUTLINED_FUNCTION_117_11(v322, v323, v324, v325, v296, v400);
  v394 = &v320[10 * v301];
  (v303)(v296, v397, v279);
  v326 = v321;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v327, v328, v329, v406);
  v330 = v386;
  (v386)(v284, *MEMORY[0x1E698F1E8], v308);
  OUTLINED_FUNCTION_38_15();
  v331 = v308;
  __swift_storeEnumTagSinglePayload(v332, v333, v334, v335);
  v336 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v336, v337, v338, v410);
  v339 = v412;
  v340 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v340, v341, v342, v317);
  v389 = v311;
  v390 = v339;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_117_11(v343, v344, v345, v346, v296, v326);
  v403 += 11 * v402;
  (v411)(v296, v399, v407);
  v347 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v347, v348, v349, v406);
  (v330)(v284, *MEMORY[0x1E698F1A8], v331);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v350, v351, v352, v331);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v353, v354, v355, v410);
  v411 = "virtualConferenceURL";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E8D8, &qword_19396ED68);
  v356 = sub_19393BEE0();
  OUTLINED_FUNCTION_30(v356);
  OUTLINED_FUNCTION_30_3();
  *(swift_allocObject() + 16) = xmmword_19396E6E0;
  OUTLINED_FUNCTION_166_5();
  sub_19393BED0();
  sub_19393BED0();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14(v357, v358, 0xD00000000000002ELL);
  OUTLINED_FUNCTION_92_9();
  v361 = OUTLINED_FUNCTION_80_14(v360, v359 | 0x8000000000000000, 0xD00000000000001ALL);
  OUTLINED_FUNCTION_144_5(v361, 0x8000000193A26880, 0xD000000000000020);
  OUTLINED_FUNCTION_92_9();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14(v362, v363, 0xD000000000000023);
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_144_5(v364, v365, 0xD000000000000024);
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_64_11();
  sub_19393BED0();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_64_11();
  sub_19393BED0();
  OUTLINED_FUNCTION_125_6();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_125_6();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14(v366, v367, 0xD000000000000023);
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14(v368, v369, 0xD000000000000018);
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_144_5(v370, v371, 0xD000000000000017);
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14(v372, v373, 0xD00000000000001ALL);
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_144_5(v374, v375, 0xD000000000000038);
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_125_6();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_80_14(v377, v376 | 0x8000000000000000, 0xD000000000000018);
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_144_5(v379, v378 | 0x8000000000000000, 0xD00000000000002BLL);
  OUTLINED_FUNCTION_59_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v380, v381, v382, v404);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.IntelligencePlatform.Entity.Event.metadata.modify()
{
  if (qword_1ED510AD8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED510D58);
  return OUTLINED_FUNCTION_64_0();
}

void sub_1935DB688()
{
  OUTLINED_FUNCTION_117();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v460 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v476 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v460 - v13;
  v479 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  v478 = v19 - v18;
  v21 = sub_19393BF10();
  __swift_allocate_value_buffer(v21, qword_1ED510D70);
  v22 = __swift_project_value_buffer(v21, qword_1ED510D70);
  v463 = &qword_19396E6D0;
  v464 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v23 = sub_19393BF30();
  OUTLINED_FUNCTION_30(v23);
  v477 = *(v24 + 72);
  OUTLINED_FUNCTION_30_3();
  v27 = v26 & ~v25;
  v28 = swift_allocObject();
  v462 = v28;
  *(v28 + 16) = xmmword_193961690;
  v473 = v28 + v27;
  v29 = *MEMORY[0x1E698F1A0];
  v472 = *(v16 + 104);
  v472(v20, v29, v479);
  v30 = sub_19393BF40();
  v31 = OUTLINED_FUNCTION_42_3();
  v469 = v30;
  OUTLINED_FUNCTION_63_0(v31, v32, v33, v30);
  v34 = sub_19393BEF0();
  v35 = OUTLINED_FUNCTION_28_0();
  v474 = v34;
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = v476;
  v39 = OUTLINED_FUNCTION_16();
  v470 = v21;
  OUTLINED_FUNCTION_63_0(v39, v40, v41, v21);
  v475 = sub_19393BEB0();
  v480 = v3;
  v42 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v46 = v38;
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v47 = v478;
  v48 = v14;
  v49 = v10;
  sub_19393BF20();
  HIDWORD(v468) = *MEMORY[0x1E698F198];
  v50 = v47;
  v471 = v16 + 104;
  v51 = v472;
  (v472)(v50);
  v52 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v30);
  v55 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v34);
  v58 = v46;
  v59 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v21);
  v62 = OUTLINED_FUNCTION_28_0();
  v63 = v475;
  __swift_storeEnumTagSinglePayload(v62, v64, v65, v475);
  OUTLINED_FUNCTION_79_13();
  v66 = v58;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_105();
  v68 = v477;
  v67 = v478;
  v69 = v473;
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_142_6(v70, v71, v72, v73, v67);
  v466 = v69 + 2 * v68;
  v51(v67, HIDWORD(v468), v479);
  v74 = OUTLINED_FUNCTION_39_4();
  v75 = v469;
  __swift_storeEnumTagSinglePayload(v74, v76, v77, v469);
  v78 = OUTLINED_FUNCTION_42_3();
  v79 = v474;
  __swift_storeEnumTagSinglePayload(v78, v80, v81, v474);
  v82 = OUTLINED_FUNCTION_20_1();
  v83 = v470;
  __swift_storeEnumTagSinglePayload(v82, v84, v85, v470);
  v86 = v480;
  v87 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v63);
  v461 = v66;
  v462 = v86;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_142_6(v90, v91, v92, v93, v478);
  v94 = v477;
  v466 = 3 * v477;
  v95 = OUTLINED_FUNCTION_225();
  v96 = v472;
  (v472)(v95);
  v97 = v48;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v75);
  v101 = v49;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v79);
  v105 = v476;
  v106 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v83);
  v109 = OUTLINED_FUNCTION_28_0();
  v110 = v475;
  __swift_storeEnumTagSinglePayload(v109, v111, v112, v475);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  v113 = v473;
  OUTLINED_FUNCTION_52_7();
  v114 = v478;
  OUTLINED_FUNCTION_97_0(v115, v116, v117, v118, v478, v97);
  OUTLINED_FUNCTION_160_5();
  v96();
  v119 = v97;
  OUTLINED_FUNCTION_45();
  v120 = v469;
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v469);
  v124 = OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_170_3(v124, v125, v126);
  v127 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v470);
  v130 = v480;
  v131 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v110);
  v465 = v105;
  v466 = v130;
  v134 = v105;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  v467 = v119;
  OUTLINED_FUNCTION_97_0(v135, v136, v137, v138, v114, v119);
  v139 = v477;
  v140 = v114;
  v141 = v113;
  v142 = v472;
  v472(v140, v79, v113);
  v143 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v120);
  v146 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v94);
  v149 = v134;
  v150 = OUTLINED_FUNCTION_38_4();
  v151 = v470;
  __swift_storeEnumTagSinglePayload(v150, v152, v153, v470);
  v154 = v480;
  v155 = OUTLINED_FUNCTION_38_4();
  v156 = v475;
  __swift_storeEnumTagSinglePayload(v155, v157, v158, v475);
  v465 = v149;
  v466 = v154;
  OUTLINED_FUNCTION_14_3();
  v159 = v473;
  v160 = v467;
  OUTLINED_FUNCTION_52_7();
  v161 = v478;
  OUTLINED_FUNCTION_97_0(v162, v163, v164, v165, v478, v160);
  OUTLINED_FUNCTION_159_0();
  v466 = v159 + v139 * v166;
  v167 = v161;
  v168 = HIDWORD(v468);
  v142(v167, HIDWORD(v468), v113);
  v169 = OUTLINED_FUNCTION_35_0();
  v170 = v469;
  __swift_storeEnumTagSinglePayload(v169, v171, v172, v469);
  v173 = OUTLINED_FUNCTION_19_6();
  v174 = v474;
  __swift_storeEnumTagSinglePayload(v173, v175, v176, v474);
  v177 = v476;
  v178 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v151);
  v181 = v480;
  v182 = OUTLINED_FUNCTION_42_3();
  v183 = v156;
  __swift_storeEnumTagSinglePayload(v182, v184, v185, v156);
  OUTLINED_FUNCTION_115_9();
  v461 = v177;
  v462 = v181;
  OUTLINED_FUNCTION_14_3();
  v186 = v467;
  OUTLINED_FUNCTION_52_7();
  v187 = v478;
  OUTLINED_FUNCTION_97_0(v188, v189, v190, v191, v478, v186);
  v192 = v477;
  v466 = 7 * v477;
  v193 = v472;
  v472(v187, v168, v141);
  v194 = v186;
  OUTLINED_FUNCTION_45();
  v195 = v170;
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v170);
  v199 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v199, v200, v201, v174);
  v202 = v476;
  v203 = OUTLINED_FUNCTION_15_7();
  v204 = v470;
  __swift_storeEnumTagSinglePayload(v203, v205, v206, v470);
  v207 = v480;
  v208 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v183);
  v461 = v202;
  v462 = v207;
  v211 = v473;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  v212 = v478;
  OUTLINED_FUNCTION_97_0(v213, v214, v215, v216, v478, v194);
  v461 = v211 + 8 * v192;
  LODWORD(v466) = *MEMORY[0x1E698F190];
  v217 = v466;
  v193(v212, v466, v479);
  v218 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v195);
  v221 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v474);
  v224 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v224, v225, v226, v204);
  v227 = OUTLINED_FUNCTION_28_0();
  v228 = v475;
  __swift_storeEnumTagSinglePayload(v227, v229, v230, v475);
  OUTLINED_FUNCTION_79_13();
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  v465 = v101;
  sub_19393BF20();
  OUTLINED_FUNCTION_137_6("departureAirportLongitude");
  v231 = v212;
  v232 = v479;
  v233 = v472;
  v472(v212, v217, v479);
  v234 = OUTLINED_FUNCTION_20_1();
  v235 = v469;
  __swift_storeEnumTagSinglePayload(v234, v236, v237, v469);
  v238 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v474);
  v241 = v202;
  v242 = OUTLINED_FUNCTION_15_7();
  v243 = v470;
  __swift_storeEnumTagSinglePayload(v242, v244, v245, v470);
  v246 = v480;
  v247 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v247, v248, v249, v228);
  v465 = v241;
  v466 = v246;
  v250 = v473;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_152_7();
  OUTLINED_FUNCTION_129_8(v251, v252, v253, v254, v255, v256);
  v233(v231, HIDWORD(v468), v232);
  v257 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v235);
  v260 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_170_3(v260, v261, v262);
  v263 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v263, v264, v265, v243);
  v266 = v480;
  v267 = OUTLINED_FUNCTION_15_7();
  v268 = v475;
  __swift_storeEnumTagSinglePayload(v267, v269, v270, v475);
  v465 = v241;
  v466 = v266;
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_152_7();
  OUTLINED_FUNCTION_129_8(v271, v272, v273, v274, v275, v276);
  v277 = v472;
  v278 = v473;
  v472(v231, v466, v479);
  v279 = OUTLINED_FUNCTION_20_1();
  v280 = v469;
  __swift_storeEnumTagSinglePayload(v279, v281, v282, v469);
  v283 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v283, v284, v285, v250);
  v286 = v476;
  v287 = OUTLINED_FUNCTION_25_9();
  v288 = v470;
  __swift_storeEnumTagSinglePayload(v287, v289, v290, v470);
  v291 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v291, v292, v293, v268);
  OUTLINED_FUNCTION_164_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_152_7();
  OUTLINED_FUNCTION_129_8(v294, v295, v296, v297, v298, v299);
  OUTLINED_FUNCTION_137_6("arrivalAirportName");
  OUTLINED_FUNCTION_160_5();
  v277();
  v300 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v300, v301, v302, v280);
  v303 = OUTLINED_FUNCTION_28_0();
  v304 = v474;
  __swift_storeEnumTagSinglePayload(v303, v305, v306, v474);
  v307 = v476;
  v308 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v308, v309, v310, v288);
  v311 = v480;
  v312 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v312, v313, v314, v475);
  v469 = v307;
  v470 = v311;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_152_7();
  OUTLINED_FUNCTION_129_8(v315, v316, v317, v318, v319, v320);
  v321 = v472;
  OUTLINED_FUNCTION_137_6("arrivalAirportCode");
  v321(v231, v286, v278);
  v322 = v194;
  OUTLINED_FUNCTION_45();
  v323 = v469;
  __swift_storeEnumTagSinglePayload(v324, v325, v326, v469);
  v327 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v327, v328, v329, v304);
  v330 = v476;
  v331 = OUTLINED_FUNCTION_38_4();
  v332 = v470;
  __swift_storeEnumTagSinglePayload(v331, v333, v334, v470);
  v335 = v480;
  v336 = OUTLINED_FUNCTION_20_1();
  v337 = v475;
  __swift_storeEnumTagSinglePayload(v336, v338, v339, v475);
  v469 = v330;
  v470 = v335;
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_52_7();
  v340 = v478;
  OUTLINED_FUNCTION_129_8(v341, v342, v343, v344, v478, v322);
  OUTLINED_FUNCTION_137_6("arrivalAirportLatitude");
  v345 = v466;
  v321(v340, v466, v479);
  v346 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v346, v347, v348, v323);
  v349 = OUTLINED_FUNCTION_28_0();
  v350 = v474;
  __swift_storeEnumTagSinglePayload(v349, v351, v352, v474);
  v353 = v476;
  v354 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v354, v355, v356, v332);
  v357 = v480;
  v358 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v358, v359, v360, v337);
  v469 = v353;
  v470 = v357;
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_52_7();
  v361 = v478;
  sub_19393BF20();
  v362 = v345;
  v363 = v479;
  v364 = v472;
  v472(v361, v362, v479);
  v365 = OUTLINED_FUNCTION_15_7();
  v366 = v469;
  __swift_storeEnumTagSinglePayload(v365, v367, v368, v469);
  v369 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v369, v370, v371, v350);
  v372 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v372, v373, v374, v332);
  v375 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v375, v376, v377, v337);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_52_7();
  v378 = v478;
  v379 = v467;
  OUTLINED_FUNCTION_107_10(v380, v381, v382, v383, v478, v467);
  OUTLINED_FUNCTION_137_6("arrivalAirportAddress");
  v364(v378, HIDWORD(v468), v363);
  v384 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v384, v385, v386, v366);
  v387 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_170_3(v387, v388, v389);
  v390 = OUTLINED_FUNCTION_19_6();
  v391 = v470;
  __swift_storeEnumTagSinglePayload(v390, v392, v393, v470);
  v394 = v480;
  v395 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v395, v396, v397, v475);
  v473 = v353;
  v474 = v394;
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_107_10(v398, v399, v400, v401, v378, v379);
  v402 = v378;
  v403 = v479;
  v404 = v472;
  v472(v402, v466, v479);
  v405 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v405, v406, v407, v469);
  v408 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v408, v409, v410, v363);
  v411 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v411, v412, v413, v391);
  v414 = OUTLINED_FUNCTION_20_1();
  v415 = v475;
  __swift_storeEnumTagSinglePayload(v414, v416, v417, v475);
  OUTLINED_FUNCTION_135_5();
  OUTLINED_FUNCTION_26_14();
  LOBYTE(v476) = 0;
  OUTLINED_FUNCTION_52_7();
  v418 = v478;
  v419 = v467;
  OUTLINED_FUNCTION_107_10(v420, v421, v422, v423, v478, v467);
  v424 = HIDWORD(v468);
  v404(v418, HIDWORD(v468), v403);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v425, v426, v427, v428);
  v429 = OUTLINED_FUNCTION_39_4();
  v430 = v474;
  __swift_storeEnumTagSinglePayload(v429, v431, v432, v474);
  v433 = OUTLINED_FUNCTION_28_0();
  v434 = v470;
  __swift_storeEnumTagSinglePayload(v433, v435, v436, v470);
  v437 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v437, v438, v439, v415);
  OUTLINED_FUNCTION_135_5();
  OUTLINED_FUNCTION_26_14();
  LOBYTE(v480) = 0;
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_107_10(v440, v441, v442, v443, v418, v419);
  v472(v418, v424, v479);
  v444 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v444, v445, v446, v469);
  v447 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v447, v448, v449, v430);
  v450 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v450, v451, v452, v434);
  v453 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v453, v454, v455, v475);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_135_5();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_107_10(v456, v457, v458, v459, v418, v419);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.IntelligencePlatform.Entity.FlightReservations.metadata.modify()
{
  if (qword_1ED510AE0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED510D70);
  return OUTLINED_FUNCTION_64_0();
}

void sub_1935DC748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v391 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  v28 = OUTLINED_FUNCTION_47(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15_8();
  v404 = v29;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_372();
  v406 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  v33 = OUTLINED_FUNCTION_47(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15_8();
  v397 = v34;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_372();
  v401 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  v38 = OUTLINED_FUNCTION_47(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15_8();
  v395 = v39;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v391 - v41;
  v43 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15_8();
  v416 = v47;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_124_6();
  v414 = v20;
  v49 = sub_19393BF10();
  __swift_allocate_value_buffer(v49, &unk_1ED510D88);
  v400 = __swift_project_value_buffer(v49, &unk_1ED510D88);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v51 = OUTLINED_FUNCTION_168_3(v50, &a15);
  OUTLINED_FUNCTION_30(v51);
  v413 = *(v52 + 72);
  v394 = *(v53 + 80);
  v54 = (v394 + 32) & ~v394;
  v393 = v54;
  v398 = 7 * v413;
  v55 = swift_allocObject();
  v399 = v55;
  *(v55 + 16) = xmmword_193952700;
  v405 = (v55 + v54);
  v56 = *MEMORY[0x1E698F1A0];
  v57 = *(v45 + 104);
  v418 = v45 + 104;
  v407 = v57;
  v412 = v43;
  (v57)(v20, v56, v43);
  v58 = sub_19393BF40();
  v59 = OUTLINED_FUNCTION_35_0();
  v408 = v58;
  OUTLINED_FUNCTION_63_0(v59, v60, v61, v58);
  v62 = sub_19393BEF0();
  v63 = v401;
  v64 = OUTLINED_FUNCTION_38_4();
  v415 = v62;
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
  v67 = OUTLINED_FUNCTION_16();
  v411 = v49;
  OUTLINED_FUNCTION_63_0(v67, v68, v69, v49);
  v70 = sub_19393BEB0();
  v417 = v26;
  v71 = OUTLINED_FUNCTION_28_0();
  v410 = v70;
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v74 = v414;
  OUTLINED_FUNCTION_92_0(v75, v76, v77, v78, v414, v42);
  v409 = *MEMORY[0x1E698F198];
  v79 = v74;
  v80 = v407;
  (v407)(v79);
  v81 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v58);
  v84 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v62);
  v87 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v49);
  v90 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v70);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_105();
  v93 = v413;
  v94 = v414;
  v95 = v405;
  OUTLINED_FUNCTION_52_7();
  v96 = v63;
  OUTLINED_FUNCTION_92_0(v97, v98, v99, v100, v94, v42);
  v403 = &v95[2 * v93];
  v101 = v409;
  v102 = v412;
  (v80)(v94, v409, v412);
  v103 = v42;
  OUTLINED_FUNCTION_45();
  v104 = v408;
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v408);
  v108 = v96;
  OUTLINED_FUNCTION_45();
  v109 = v415;
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v415);
  v113 = OUTLINED_FUNCTION_25_9();
  v114 = v411;
  v117 = OUTLINED_FUNCTION_6_35(v113, v115, v116, v411);
  v118 = v410;
  __swift_storeEnumTagSinglePayload(v117, v119, v120, v410);
  OUTLINED_FUNCTION_164_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_52_7();
  v121 = v414;
  v402 = v103;
  OUTLINED_FUNCTION_107_10(v122, v123, v124, v125, v414, v103);
  v403 = 3 * v413;
  v126 = v121;
  v127 = v407;
  (v407)(v126, v101, v102);
  v128 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v104);
  v131 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v109);
  v134 = v406;
  v135 = OUTLINED_FUNCTION_16();
  v138 = OUTLINED_FUNCTION_6_35(v135, v136, v137, v114);
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v118);
  v392 = v134;
  v393 = v103;
  OUTLINED_FUNCTION_14_3();
  v141 = v405;
  OUTLINED_FUNCTION_52_7();
  v142 = v414;
  v143 = v402;
  OUTLINED_FUNCTION_107_10(v144, v145, v146, v147, v414, v402);
  v392 = &v141[4 * v413];
  LODWORD(v396) = *MEMORY[0x1E698F190];
  v148 = v142;
  v149 = v412;
  (v127)(v148);
  v150 = OUTLINED_FUNCTION_35_0();
  v151 = v104;
  __swift_storeEnumTagSinglePayload(v150, v152, v153, v104);
  v154 = OUTLINED_FUNCTION_39_4();
  v155 = v415;
  __swift_storeEnumTagSinglePayload(v154, v156, v157, v415);
  v158 = OUTLINED_FUNCTION_15_7();
  v159 = v411;
  __swift_storeEnumTagSinglePayload(v158, v160, v161, v411);
  v162 = v417;
  v163 = OUTLINED_FUNCTION_42_3();
  v164 = v410;
  __swift_storeEnumTagSinglePayload(v163, v165, v166, v410);
  v392 = v134;
  v393 = v162;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  v167 = v414;
  OUTLINED_FUNCTION_107_10(v168, v169, v170, v171, v414, v143);
  v172 = v167;
  v173 = v167;
  v174 = v407;
  (v407)(v172, v396, v149);
  v175 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v151);
  v178 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v155);
  v181 = v406;
  v182 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v159);
  v185 = v417;
  v186 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v186, v187, v188, v164);
  v392 = v181;
  v393 = v185;
  OUTLINED_FUNCTION_14_3();
  v189 = v405;
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  v396 = &v189[2 * v403];
  v190 = v409;
  v191 = v174;
  (v174)(v173, v409, v149);
  v192 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v151);
  v195 = v415;
  OUTLINED_FUNCTION_9_10();
  (*(v196 + 104))(v108);
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
  v201 = v393;
  OUTLINED_FUNCTION_84_10();
  v202 = swift_allocObject();
  v405 = OUTLINED_FUNCTION_102_13(v202, &a15, xmmword_1939526B0) + v201;
  v203 = v416;
  (v191)(v416, v190, v149);
  v204 = v395;
  v205 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v205, v206, v207, v151);
  v208 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v195);
  v211 = v404;
  v212 = OUTLINED_FUNCTION_20_1();
  v213 = v411;
  v216 = OUTLINED_FUNCTION_6_35(v212, v214, v215, v411);
  v217 = v410;
  __swift_storeEnumTagSinglePayload(v216, v218, v219, v410);
  OUTLINED_FUNCTION_161_4();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_139_8(v220, v221, v222, v223, v203, v204);
  v224 = v203;
  v225 = v412;
  v226 = v407;
  (v407)(v224, v409, v412);
  v227 = v204;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v228, v229, v230, v408);
  v231 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v231, v232, v233, v415);
  v234 = OUTLINED_FUNCTION_20_1();
  v235 = v213;
  v238 = OUTLINED_FUNCTION_6_35(v234, v236, v237, v213);
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v217);
  OUTLINED_FUNCTION_161_4();
  OUTLINED_FUNCTION_14_3();
  v241 = v413;
  v242 = v405;
  OUTLINED_FUNCTION_52_7();
  v243 = v416;
  OUTLINED_FUNCTION_139_8(v244, v245, v246, v247, v416, v227);
  OUTLINED_FUNCTION_86_12(&v242[2 * v241]);
  v248 = v243;
  v249 = v409;
  v250 = v226;
  (v226)(v248, v409, v225);
  v251 = v227;
  OUTLINED_FUNCTION_45();
  v252 = v408;
  __swift_storeEnumTagSinglePayload(v253, v254, v255, v408);
  OUTLINED_FUNCTION_45();
  v256 = v415;
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v415);
  v260 = v211;
  v261 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v261, v262, v263, v235);
  v264 = v417;
  v265 = OUTLINED_FUNCTION_20_1();
  v266 = v410;
  __swift_storeEnumTagSinglePayload(v265, v267, v268, v410);
  v399 = v260;
  v400 = v264;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  v269 = v416;
  OUTLINED_FUNCTION_97_7(v270, v271, v272, v273, v416);
  (v226)(v269, v249, v412);
  v274 = v251;
  v275 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v275, v276, v277, v252);
  v278 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v278, v279, v280, v256);
  v281 = v404;
  v282 = OUTLINED_FUNCTION_35_0();
  v283 = v411;
  __swift_storeEnumTagSinglePayload(v282, v284, v285, v411);
  v286 = v417;
  v287 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v287, v288, v289, v266);
  v399 = v281;
  v400 = v286;
  v290 = v405;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  v291 = v416;
  OUTLINED_FUNCTION_91_1(v292, v293, v294, v295, v416, v274);
  v413 = &v290[4 * v413];
  OUTLINED_FUNCTION_86_12("30-833d-b9c739dec19a");
  v296 = v249;
  v297 = v412;
  v298 = v250;
  (v250)(v291, v296, v412);
  v299 = OUTLINED_FUNCTION_19_6();
  v300 = v408;
  __swift_storeEnumTagSinglePayload(v299, v301, v302, v408);
  v303 = OUTLINED_FUNCTION_20_1();
  v304 = v415;
  __swift_storeEnumTagSinglePayload(v303, v305, v306, v415);
  v307 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v307, v308, v309, v283);
  v310 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v310, v311, v312, v410);
  v399 = v281;
  v400 = v286;
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_52_7();
  v313 = v416;
  OUTLINED_FUNCTION_91_1(v314, v315, v316, v317, v416, v274);
  v318 = v313;
  v319 = v409;
  v320 = v297;
  v321 = v298;
  v298(v318, v409, v320);
  v322 = v274;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v323, v324, v325, v300);
  v326 = OUTLINED_FUNCTION_20_1();
  v327 = v304;
  __swift_storeEnumTagSinglePayload(v326, v328, v329, v304);
  v330 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v330, v331, v332, v411);
  v333 = OUTLINED_FUNCTION_25_9();
  v334 = v410;
  __swift_storeEnumTagSinglePayload(v333, v335, v336, v410);
  v399 = v281;
  v400 = v286;
  OUTLINED_FUNCTION_14_3();
  v337 = v405;
  OUTLINED_FUNCTION_42_8();
  v338 = v416;
  v339 = v322;
  OUTLINED_FUNCTION_91_1(v340, v341, v342, v343, v416, v322);
  v413 = &v337[2 * v403];
  v344 = v338;
  v345 = v319;
  v346 = v412;
  v321(v344, v319, v412);
  v347 = OUTLINED_FUNCTION_35_0();
  v348 = v408;
  __swift_storeEnumTagSinglePayload(v347, v349, v350, v408);
  v351 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v351, v352, v353, v327);
  v354 = OUTLINED_FUNCTION_15_7();
  v355 = v411;
  __swift_storeEnumTagSinglePayload(v354, v356, v357, v411);
  v358 = OUTLINED_FUNCTION_25_9();
  v359 = v334;
  __swift_storeEnumTagSinglePayload(v358, v360, v361, v334);
  OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  v362 = v416;
  OUTLINED_FUNCTION_91_1(v363, v364, v365, v366, v416, v339);
  (v407)(v362, v345, v346);
  v367 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v367, v368, v369, v348);
  v370 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v370, v371, v372, v415);
  v373 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v373, v374, v375, v355);
  v376 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v376, v377, v378, v359);
  OUTLINED_FUNCTION_162_6();
  *(&v406 + 1) = 1;
  LOBYTE(v406) = 0;
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_91_1(v379, v380, v381, v382, v362, v339);
  v383 = v406;
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v384, v385, v386, v387);
  v388 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v388, v389, v390, v359);
  v407 = v383;
  v408 = v286;
  *(&v406 + 1) = 1;
  LOBYTE(v406) = 0;
  OUTLINED_FUNCTION_42_8();
  sub_19393BF20();
  OUTLINED_FUNCTION_133_8();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.IntelligencePlatform.Entity.Location.metadata.modify()
{
  if (qword_1ED510AE8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, &unk_1ED510D88);
  return OUTLINED_FUNCTION_64_0();
}

void sub_1935DD5B4()
{
  OUTLINED_FUNCTION_117();
  v946 = v1;
  v947 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v935 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_8();
  v919 = v8;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_372();
  v923 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_8();
  v912 = v13;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_86_12(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  v17 = OUTLINED_FUNCTION_47(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_8();
  v917 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_124_6();
  v20 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_8();
  v924 = v24;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v888 - v26;
  v922 = &v888 - v26;
  v28 = sub_19393BF10();
  __swift_allocate_value_buffer(v28, qword_1ED510DA0);
  v925 = v28;
  v896 = __swift_project_value_buffer(v28, qword_1ED510DA0);
  v895 = "7f-a720-aed83442e337";
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v30 = OUTLINED_FUNCTION_168_3(v29, &v938);
  OUTLINED_FUNCTION_30(v30);
  v926 = *(v31 + 72);
  OUTLINED_FUNCTION_123_10(&v937);
  v33 = v32;
  v910 = v32;
  v34 = swift_allocObject();
  v915 = (OUTLINED_FUNCTION_102_13(v34, &v923, xmmword_193961690) + v33);
  LODWORD(v898) = *MEMORY[0x1E698F1A0];
  v35 = *(v22 + 104);
  v931 = v20;
  (v35)(v27);
  v928 = v22 + 104;
  v929 = v35;
  v36 = sub_19393BF40();
  v37 = v0;
  v38 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v38, v39, v40, v36);
  v927 = sub_19393BEF0();
  v41 = v911;
  v42 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v46 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_63_0(v46, v47, v48, v28);
  v930 = sub_19393BEB0();
  v49 = v935;
  v50 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v54 = v922;
  OUTLINED_FUNCTION_119_8(v55, v56, v57, v58, v922, v37);
  v934 = *MEMORY[0x1E698F198];
  (v35)(v54);
  v902 = *MEMORY[0x1E698F1F0];
  v59 = v36;
  OUTLINED_FUNCTION_9_10();
  v918 = *(v60 + 104);
  v921 = v60 + 104;
  v918(v37);
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  OUTLINED_FUNCTION_9_10();
  v914 = *(v65 + 104);
  v913 = v65 + 104;
  (v914)(v41);
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  v70 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v925);
  v73 = OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_169_5(v73, v74, v75);
  OUTLINED_FUNCTION_148_5();
  OUTLINED_FUNCTION_79_13();
  OUTLINED_FUNCTION_105();
  v76 = v915;
  v77 = v926;
  OUTLINED_FUNCTION_34_0();
  v78 = v922;
  sub_19393BF20();
  v909 = v76 + 2 * v77;
  v79 = OUTLINED_FUNCTION_105_12("r for the person");
  v80 = v929;
  (v929)(v79, v934, v931);
  v920.n128_u32[0] = *MEMORY[0x1E698F1F8];
  v916 = v37;
  v936 = v59;
  v81 = v918;
  v918(v37);
  OUTLINED_FUNCTION_38_15();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v86 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v927);
  v89 = v923;
  v90 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v925);
  v93 = v935;
  v94 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v49);
  OUTLINED_FUNCTION_66_15();
  v903 = v97 - 2;
  v889 = v89;
  v890 = v93;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_65_12();
  v98 = v916;
  sub_19393BF20();
  v99 = v926;
  OUTLINED_FUNCTION_132_7(3 * v926);
  OUTLINED_FUNCTION_105_12("Full name of the person");
  OUTLINED_FUNCTION_157_6();
  v80();
  v100 = v98;
  v101 = v98;
  v102 = v920.n128_u32[0];
  v103 = v936;
  (v81)(v101, v920.n128_u32[0], v936);
  v104 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
  v107 = OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_167_6(v107, v108, v109);
  v110 = OUTLINED_FUNCTION_15_7();
  v113 = OUTLINED_FUNCTION_6_35(v110, v111, v112, v925);
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v930);
  OUTLINED_FUNCTION_79_13();
  OUTLINED_FUNCTION_81_10();
  v116 = v915;
  OUTLINED_FUNCTION_148_5();
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_142_6(v117, v118, 0xD000000000000019, v119, v78);
  v909 = v116 + 4 * v99;
  OUTLINED_FUNCTION_89_12("Middle names of the person");
  v120 = v929;
  (v929)(v78, v934, v49);
  (v918)(v100, v102, v936);
  OUTLINED_FUNCTION_38_15();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
  v125 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v80);
  v128 = v923;
  v129 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v925);
  v132 = v935;
  v133 = OUTLINED_FUNCTION_25_9();
  v134 = v930;
  __swift_storeEnumTagSinglePayload(v133, v135, v136, v930);
  v893 = v128;
  v894 = v132;
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_14_3();
  v137 = v100;
  OUTLINED_FUNCTION_91_1(v138, v139, v140, v141, v78, v100);
  v905 = 5 * v926;
  OUTLINED_FUNCTION_105_12("Middle names of the person");
  v142 = v78;
  OUTLINED_FUNCTION_157_6();
  v120();
  v143 = v936;
  v144 = v918;
  (v918)(v137, v920.n128_u32[0], v936);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v143);
  v148 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v927);
  v151 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v925);
  v154 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v134);
  v893 = v128;
  v894 = v132;
  v157 = v915;
  OUTLINED_FUNCTION_108_11();
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_34_0();
  sub_19393BF20();
  OUTLINED_FUNCTION_159_0();
  v158 = v926;
  v894 = v157 + v926 * v159;
  v890 = "Family names of the person";
  v160 = v929;
  (v929)(v142, v934, v49);
  OUTLINED_FUNCTION_130_7();
  v144();
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  LODWORD(v909) = *MEMORY[0x1E698F1E0];
  v165 = v927;
  OUTLINED_FUNCTION_39_18();
  v166();
  OUTLINED_FUNCTION_30_13();
  v167 = v165;
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
  v172 = v910;
  v901 = (v910 + 4 * v158);
  OUTLINED_FUNCTION_18_24();
  v173 = swift_allocObject();
  v899 = xmmword_19394FBC0;
  v174 = OUTLINED_FUNCTION_102_13(v173, &v919, xmmword_19394FBC0);
  OUTLINED_FUNCTION_78_13(v174 + v172);
  v897 = "Structured names of the person";
  v175 = v934;
  v176 = v931;
  (v160)(v924, v934, v931);
  OUTLINED_FUNCTION_130_7();
  v144();
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_171_2(v177, v178, v179, v180);
  v181 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v165);
  v184 = OUTLINED_FUNCTION_39_4();
  v185 = v925;
  v188 = OUTLINED_FUNCTION_6_35(v184, v186, v187, v925);
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v930);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_14_3();
  v191 = OUTLINED_FUNCTION_46_18();
  v192 = v924;
  OUTLINED_FUNCTION_91_1(v191, v193, v194, v195, v924, v917);
  v196 = v192;
  v197 = v929;
  (v929)(v196, v175, v176);
  v198 = v920.n128_u32[0];
  OUTLINED_FUNCTION_85_15();
  v199();
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v175);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v167);
  v206 = v919;
  v207 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v207, v208, v209, v185);
  v210 = v935;
  v211 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_169_5(v211, v212, v213);
  OUTLINED_FUNCTION_66_15();
  v905 = v214 - 1;
  v893 = v206;
  v894 = v210;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_81_10();
  OUTLINED_FUNCTION_59_1();
  v215 = v924;
  v216 = v917;
  OUTLINED_FUNCTION_91_1(v217, v218, v219, v220, v924, v917);
  v892 = "First name of the person";
  v221 = v931;
  (v197)(v215, v934, v931);
  v222 = v198;
  v223 = v936;
  v224 = v918;
  (v918)(v216, v222, v936);
  v225 = OUTLINED_FUNCTION_41_15();
  __swift_storeEnumTagSinglePayload(v225, v226, v227, v223);
  v228 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_167_6(v228, v229, v230);
  v231 = v919;
  v232 = OUTLINED_FUNCTION_25_9();
  v233 = v925;
  __swift_storeEnumTagSinglePayload(v232, v234, v235, v925);
  v236 = v935;
  v237 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v237, v238, v239, v175);
  v893 = v231;
  v894 = v236;
  OUTLINED_FUNCTION_14_3();
  v240 = OUTLINED_FUNCTION_50_11(0x656C6464696DLL);
  v241 = v924;
  v242 = v917;
  OUTLINED_FUNCTION_107_10(v240, v243, v244, v245, v924, v917);
  v891 = "Middle name of the person";
  (v929)(v241, v934, v221);
  v246 = OUTLINED_FUNCTION_146_7();
  v247 = v936;
  v224(v246);
  v248 = OUTLINED_FUNCTION_41_15();
  __swift_storeEnumTagSinglePayload(v248, v249, v250, v247);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v251, v252, v253, v254);
  v255 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v255, v256, v257, v233);
  v258 = v935;
  v259 = OUTLINED_FUNCTION_20_1();
  v260 = v930;
  __swift_storeEnumTagSinglePayload(v259, v261, v262, v930);
  OUTLINED_FUNCTION_135_5();
  v263 = v258;
  OUTLINED_FUNCTION_69_13();
  BYTE2(v895) = 0;
  LOWORD(v895) = 256;
  v264 = OUTLINED_FUNCTION_50_11(0x796C696D6166);
  OUTLINED_FUNCTION_139_8(v264, v265, v266, v267, v241, v242);
  OUTLINED_FUNCTION_138_5();
  v268 = v923;
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_54_12();
  __swift_storeEnumTagSinglePayload(v269, v270, v271, v272);
  v273 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v273, v274, v275, v260);
  v896 = v268;
  v897 = v263;
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_28_14();
  LOWORD(v895) = 256;
  v276 = v916;
  OUTLINED_FUNCTION_91_1(v277, 0xE500000000000000, v278, v279, v922, v916);
  v890 = 7 * v926;
  OUTLINED_FUNCTION_72_10("Phonetic representation of the person's name");
  v280 = v934;
  OUTLINED_FUNCTION_157_6();
  v281 = v929;
  v929();
  v282 = v920.n128_u32[0];
  v283 = v936;
  v284 = v918;
  (v918)(v276, v920.n128_u32[0], v936);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v285, v286, v287, v283);
  OUTLINED_FUNCTION_111_9();
  v288 = v927;
  OUTLINED_FUNCTION_39_18();
  v289();
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v290, v291, v292, v293);
  OUTLINED_FUNCTION_18_24();
  v889 = swift_allocObject();
  v294 = OUTLINED_FUNCTION_68_14(v889, v899);
  OUTLINED_FUNCTION_78_13(v294 + v295);
  (v281)(v924, v280, 256);
  v296 = v917;
  v284(v917, v282, v283);
  v297 = OUTLINED_FUNCTION_41_15();
  OUTLINED_FUNCTION_171_2(v297, v298, v299, v283);
  v300 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v300, v301, v302, v288);
  v303 = v919;
  v304 = OUTLINED_FUNCTION_35_0();
  v305 = v925;
  v308 = OUTLINED_FUNCTION_6_35(v304, v306, v307, v925);
  __swift_storeEnumTagSinglePayload(v308, v309, v310, v930);
  v896 = v303;
  v897 = v288;
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_94_10();
  v311 = OUTLINED_FUNCTION_46_18();
  v312 = v924;
  OUTLINED_FUNCTION_97_0(v311, v313, v314, v315, v924, v296);
  v316 = v931;
  (v929)(v312, v934, v931);
  v317 = v296;
  v318 = OUTLINED_FUNCTION_146_7();
  v319 = v918;
  v918(v318);
  v320 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v320, v321, v322, v283);
  OUTLINED_FUNCTION_45();
  v323 = v927;
  __swift_storeEnumTagSinglePayload(v324, v325, v326, v927);
  v327 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v327, v328, v329, v305);
  v330 = OUTLINED_FUNCTION_28_0();
  v331 = v930;
  __swift_storeEnumTagSinglePayload(v330, v332, v333, v930);
  OUTLINED_FUNCTION_161_4();
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_81_10();
  OUTLINED_FUNCTION_59_1();
  v334 = v924;
  OUTLINED_FUNCTION_119_8(v335, v336, v905, v337, v924, v317);
  v338 = v934;
  v339 = v929;
  (v929)(v334, v934, v316);
  v340 = v936;
  (v319)(v317, v920.n128_u32[0], v936);
  v341 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v341, v342, v343, v340);
  OUTLINED_FUNCTION_45();
  v344 = v323;
  __swift_storeEnumTagSinglePayload(v345, v346, v347, v323);
  v348 = v919;
  v349 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v349, v350, v351, v925);
  v352 = v935;
  v353 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v353, v354, v355, v331);
  v899.n128_u64[1] = v348;
  v900 = v352;
  OUTLINED_FUNCTION_1_46();
  v356 = OUTLINED_FUNCTION_50_11(0x656C6464696DLL);
  v357 = v924;
  OUTLINED_FUNCTION_107_10(v356, v358, v359, v360, v924, v917);
  (v339)(v357, v338, v931);
  OUTLINED_FUNCTION_130_7();
  v319();
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v361, v362, v363, v364);
  v365 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v365, v366, v367, v344);
  v368 = OUTLINED_FUNCTION_42_3();
  v369 = v925;
  v372 = OUTLINED_FUNCTION_6_35(v368, v370, v371, v925);
  OUTLINED_FUNCTION_169_5(v372, v373, v374);
  OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_69_13();
  OUTLINED_FUNCTION_75_15();
  *(&v902 + 1) = 1;
  LOBYTE(v902) = 0;
  v375 = OUTLINED_FUNCTION_50_11(0x796C696D6166);
  OUTLINED_FUNCTION_110_6(v375, v376, v377, v378, v357);
  v379 = v923;
  OUTLINED_FUNCTION_138_5();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_29_8();
  v380 = v369;
  __swift_storeEnumTagSinglePayload(v381, v382, v383, v369);
  v384 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v384, v385, v386, v344);
  OUTLINED_FUNCTION_79_13();
  OUTLINED_FUNCTION_56_11();
  v387 = v915;
  OUTLINED_FUNCTION_108_11();
  v908 = 0;
  v907 = 1;
  v906 = 0;
  OUTLINED_FUNCTION_75_15();
  v388 = v922;
  v389 = v911;
  OUTLINED_FUNCTION_119_8(v390, v391, v392, v393, v922, v916);
  OUTLINED_FUNCTION_78_13("ntation of the person's name");
  OUTLINED_FUNCTION_145_5();
  v394 = v929;
  v929();
  OUTLINED_FUNCTION_146_7();
  OUTLINED_FUNCTION_85_15();
  v395();
  v396 = OUTLINED_FUNCTION_41_15();
  __swift_storeEnumTagSinglePayload(v396, v397, v398, v387);
  v399 = v389;
  v400 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v400, v401, v402, v927);
  v403 = OUTLINED_FUNCTION_15_7();
  v404 = v380;
  __swift_storeEnumTagSinglePayload(v403, v405, v406, v380);
  v407 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_169_5(v407, v408, v409);
  OUTLINED_FUNCTION_79_13();
  v410 = v379;
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_1_46();
  v411 = v399;
  sub_19393BF20();
  v412 = v926;
  v897 = 9 * v926;
  OUTLINED_FUNCTION_78_13("s or aliases of the person");
  v413 = v388;
  v414 = v931;
  v415 = v394;
  (v394)(v413, *MEMORY[0x1E698F190], v931);
  v416 = OUTLINED_FUNCTION_28_0();
  v417 = v936;
  __swift_storeEnumTagSinglePayload(v416, v418, v419, v936);
  v420 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v420, v421, v422, v927);
  v423 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v423, v424, v425, v404);
  v426 = v935;
  v427 = OUTLINED_FUNCTION_39_4();
  v428 = v387;
  __swift_storeEnumTagSinglePayload(v427, v429, v430, v387);
  v911 = v410;
  v912 = v426;
  v431 = v915;
  OUTLINED_FUNCTION_108_11();
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_75_15();
  v432 = v922;
  v433 = v916;
  OUTLINED_FUNCTION_110_6(v434, v435, v436, v437, v922);
  OUTLINED_FUNCTION_78_13(v431 + 10 * v412);
  (v415)(v432, v898, v414);
  v438 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v438, v439, v440, v417);
  OUTLINED_FUNCTION_39_18();
  v441();
  OUTLINED_FUNCTION_38_15();
  __swift_storeEnumTagSinglePayload(v442, v443, v444, v445);
  v446 = OUTLINED_FUNCTION_15_7();
  v447 = v925;
  v450 = OUTLINED_FUNCTION_6_35(v446, v448, v449, v925);
  __swift_storeEnumTagSinglePayload(v450, v451, v452, v428);
  OUTLINED_FUNCTION_79_13();
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_150_6();
  v453 = v433;
  sub_19393BF20();
  v454 = v926;
  OUTLINED_FUNCTION_78_13(v431 + 11 * v926);
  OUTLINED_FUNCTION_72_10("Previous family name of the person");
  OUTLINED_FUNCTION_145_5();
  v455 = v929;
  v929();
  v456 = v936;
  v457 = v918;
  (v918)(v453, v920.n128_u32[0], v936);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v458, v459, v460, v456);
  v461 = OUTLINED_FUNCTION_42_3();
  v462 = v927;
  __swift_storeEnumTagSinglePayload(v461, v463, v464, v927);
  v465 = v923;
  v466 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v466, v467, v468, v447);
  v469 = v935;
  v470 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v470, v471, v472, v930);
  OUTLINED_FUNCTION_66_15();
  v897 = v473 - 7;
  v915 = v465;
  v916 = v469;
  OUTLINED_FUNCTION_131_7();
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_94_10();
  v474 = v411;
  sub_19393BF20();
  OUTLINED_FUNCTION_78_13(v915 + 12 * v454);
  OUTLINED_FUNCTION_72_10("visualIdentifier");
  v893 = "visualIdentifier";
  v475 = v934;
  OUTLINED_FUNCTION_157_6();
  v455();
  OUTLINED_FUNCTION_130_7();
  v457();
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v476, v477, v478, v479);
  v480 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v480, v481, v482, v462);
  v483 = v923;
  v484 = OUTLINED_FUNCTION_39_4();
  v485 = v925;
  __swift_storeEnumTagSinglePayload(v484, v486, v487, v925);
  v488 = OUTLINED_FUNCTION_35_0();
  v489 = v930;
  __swift_storeEnumTagSinglePayload(v488, v490, v491, v930);
  OUTLINED_FUNCTION_66_15();
  v898 = v492 - 9;
  v915 = v483;
  v916 = v469;
  OUTLINED_FUNCTION_131_7();
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_94_10();
  v493 = v916;
  OUTLINED_FUNCTION_139_8(v494, v495, v496, v497, v922, v916);
  v498 = v915;
  v499 = v926;
  OUTLINED_FUNCTION_78_13(v915 + 13 * v926);
  OUTLINED_FUNCTION_72_10("contactIdentifier");
  v500 = OUTLINED_FUNCTION_105_12("contactIdentifier");
  (v929)(v500, v475, "red as a timestamp");
  OUTLINED_FUNCTION_130_7();
  (v918)();
  v501 = v493;
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v502, v503, v504, v505);
  v506 = v927;
  v507 = v914;
  (v914)(v474, *MEMORY[0x1E698F1C0], v927);
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v508, v509, v510, v511);
  v512 = v923;
  v513 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v513, v514, v515, v485);
  v516 = v935;
  v517 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v517, v518, v519, v489);
  OUTLINED_FUNCTION_66_15();
  v915 = v512;
  v916 = v516;
  OUTLINED_FUNCTION_131_7();
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_94_10();
  v520 = v922;
  OUTLINED_FUNCTION_139_8(v521, v522, v523, v524, v922, v501);
  OUTLINED_FUNCTION_147_5(v498 + 14 * v499);
  OUTLINED_FUNCTION_72_10("The person's employer organization");
  v525 = v520;
  v526 = v934;
  v527 = v931;
  v528 = v929;
  (v929)(v525, v934, v931);
  v529 = OUTLINED_FUNCTION_20_1();
  v530 = v936;
  __swift_storeEnumTagSinglePayload(v529, v531, v532, v936);
  OUTLINED_FUNCTION_111_9();
  v507();
  OUTLINED_FUNCTION_30_13();
  __swift_storeEnumTagSinglePayload(v533, v534, v535, v536);
  OUTLINED_FUNCTION_18_24();
  v537 = swift_allocObject();
  v538 = OUTLINED_FUNCTION_68_14(v537, v899);
  OUTLINED_FUNCTION_78_13(v538 + v539);
  (v528)(v924, v526, v527);
  v540 = v917;
  v541 = v918;
  v542 = v920.n128_u32[0];
  (v918)(v917, v920.n128_u32[0], v530);
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_171_2(v543, v544, v545, v530);
  v546 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v546, v547, v548, v506);
  v549 = OUTLINED_FUNCTION_20_1();
  v550 = v925;
  v553 = OUTLINED_FUNCTION_6_35(v549, v551, v552, v925);
  __swift_storeEnumTagSinglePayload(v553, v554, v555, v930);
  OUTLINED_FUNCTION_161_4();
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_46_18();
  sub_19393BF20();
  v556 = OUTLINED_FUNCTION_105_12("name of the organization");
  v557 = v931;
  v558 = v929;
  (v929)(v556, v526, v931);
  v559 = v936;
  v541(v540, v542, v936);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v560, v561, v562, v559);
  v563 = OUTLINED_FUNCTION_28_0();
  v564 = v927;
  __swift_storeEnumTagSinglePayload(v563, v565, v566, v927);
  v567 = OUTLINED_FUNCTION_42_3();
  v570 = OUTLINED_FUNCTION_6_35(v567, v568, v569, v550);
  __swift_storeEnumTagSinglePayload(v570, v571, v572, v930);
  OUTLINED_FUNCTION_116_9();
  v573 = v904;
  OUTLINED_FUNCTION_108_11();
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_40_13();
  v574 = OUTLINED_FUNCTION_56_11();
  v575 = v924;
  OUTLINED_FUNCTION_97_7(v574, v576, v577, v578, v924);
  v579 = v934;
  (v558)(v575, v934, v557);
  OUTLINED_FUNCTION_146_7();
  OUTLINED_FUNCTION_85_15();
  v580();
  v581 = OUTLINED_FUNCTION_41_15();
  __swift_storeEnumTagSinglePayload(v581, v582, v583, v558);
  v584 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v584, v585, v586, v564);
  v587 = OUTLINED_FUNCTION_42_3();
  v588 = v925;
  v591 = OUTLINED_FUNCTION_6_35(v587, v589, v590, v925);
  v592 = v930;
  __swift_storeEnumTagSinglePayload(v591, v593, v594, v930);
  OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_97_7(v595, v596, v597, v598, v575);
  v921 = "department of the organization";
  v599 = v579;
  v600 = v931;
  (v929)(v575, v599, v931);
  v601 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v601, v602, v603, v558);
  v604 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v604, v605, v606, v564);
  v607 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v607, v608, v609, v588);
  v610 = v573;
  v611 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v611, v612, v613, v592);
  OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_90_14();
  OUTLINED_FUNCTION_69_13();
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_97_7(v614, v615, v616, v921 | 0x8000000000000000, v575);
  OUTLINED_FUNCTION_96_13();
  OUTLINED_FUNCTION_65_12();
  v617 = v923;
  sub_19393BEA0();
  OUTLINED_FUNCTION_54_12();
  v618 = v588;
  __swift_storeEnumTagSinglePayload(v619, v620, v621, v622);
  v623 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v623, v624, v625, v592);
  v925 = v617;
  v926 = v610;
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_134_8();
  OUTLINED_FUNCTION_150_6();
  v626 = v916;
  OUTLINED_FUNCTION_117_11(v627, v628, v629, v630, v631, v916);
  (v929)(v610, v934, v600);
  v632 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v632, v633, v634, v936);
  OUTLINED_FUNCTION_151_6();
  v635 = v914;
  v914();
  OUTLINED_FUNCTION_38_15();
  __swift_storeEnumTagSinglePayload(v636, v637, v638, v639);
  v640 = OUTLINED_FUNCTION_35_0();
  v643 = OUTLINED_FUNCTION_6_35(v640, v641, v642, v618);
  __swift_storeEnumTagSinglePayload(v643, v644, v645, v592);
  v925 = v617;
  v926 = v618;
  v646 = v915;
  OUTLINED_FUNCTION_108_11();
  OUTLINED_FUNCTION_40_13();
  v647 = v922;
  OUTLINED_FUNCTION_97_0(7107189, 0xE300000000000000, v648, v649, v922, v626);
  OUTLINED_FUNCTION_132_7(&v646[v926]);
  OUTLINED_FUNCTION_147_5("URLs associated with the person");
  OUTLINED_FUNCTION_128_9("Person's relationships, identified with labels");
  v650 = v647;
  v651 = v929;
  (v929)(v650, v934, v931);
  v652 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v652, v653, v654, v936);
  OUTLINED_FUNCTION_111_9();
  v635();
  OUTLINED_FUNCTION_38_15();
  v655 = v592;
  __swift_storeEnumTagSinglePayload(v656, v657, v658, v659);
  OUTLINED_FUNCTION_18_24();
  v660 = swift_allocObject();
  v920 = xmmword_19394FBE0;
  OUTLINED_FUNCTION_102_13(v660, &v928, xmmword_19394FBE0);
  v661 = v924;
  v662 = OUTLINED_FUNCTION_225();
  v663 = v651;
  (v651)(v662);
  v664 = OUTLINED_FUNCTION_39_4();
  v665 = v936;
  OUTLINED_FUNCTION_171_2(v664, v666, v667, v936);
  v668 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v668, v669, v670, v655);
  v671 = v919;
  v672 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v672, v673, v674, v925);
  v675 = v935;
  v676 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v676, v677, v678, v930);
  v925 = v671;
  v926 = v675;
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_70_10();
  LOBYTE(v924) = 0;
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_99_13(v679, v680, v681, v682, v661);
  v683 = OUTLINED_FUNCTION_225();
  (v663)(v683);
  v684 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v684, v685, v686, v665);
  v687 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v687, v688, v689, v927);
  v690 = OUTLINED_FUNCTION_28_0();
  v691 = v925;
  v694 = OUTLINED_FUNCTION_6_35(v690, v692, v693, v925);
  v695 = v930;
  __swift_storeEnumTagSinglePayload(v694, v696, v697, v930);
  OUTLINED_FUNCTION_106_1();
  v698 = v926;
  *(&v928 + 1) = 1;
  LOBYTE(v928) = 0;
  OUTLINED_FUNCTION_52_7();
  v699 = v924;
  OUTLINED_FUNCTION_99_13(v700, v701, v702, v703, v924);
  v704 = v897;
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  v705 = OUTLINED_FUNCTION_41_15();
  __swift_storeEnumTagSinglePayload(v705, v706, v707, v691);
  v708 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v708, v709, v710, v695);
  OUTLINED_FUNCTION_164_5();
  OUTLINED_FUNCTION_134_8();
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_28_14();
  v933 = 1;
  v932 = 0;
  v711 = v922;
  v712 = v916;
  OUTLINED_FUNCTION_107_10(v704, v713, v714, v715, v922, v916);
  OUTLINED_FUNCTION_147_5(17 * v698);
  OUTLINED_FUNCTION_132_7("targetIdentifier");
  v716 = v711;
  v717 = v934;
  v718 = v931;
  v719 = v929;
  (v929)(v716, v934, v931);
  v720 = OUTLINED_FUNCTION_20_1();
  v721 = v936;
  __swift_storeEnumTagSinglePayload(v720, v722, v723, v936);
  OUTLINED_FUNCTION_111_9();
  OUTLINED_FUNCTION_151_6();
  OUTLINED_FUNCTION_39_18();
  v724();
  OUTLINED_FUNCTION_38_15();
  __swift_storeEnumTagSinglePayload(v725, v726, v727, v728);
  OUTLINED_FUNCTION_18_24();
  v901 = swift_allocObject();
  OUTLINED_FUNCTION_68_14(v901, v920);
  (v719)(v699, v717, v718);
  v729 = v917;
  v730 = OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_171_2(v730, v731, v732, v721);
  v733 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v733, v734, v735, v712);
  v736 = OUTLINED_FUNCTION_42_3();
  v737 = v925;
  __swift_storeEnumTagSinglePayload(v736, v738, v739, v925);
  v740 = OUTLINED_FUNCTION_28_0();
  v741 = v930;
  __swift_storeEnumTagSinglePayload(v740, v742, v743, v930);
  OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_114_9(v744, v745, v746, v747, v699, v729);
  OUTLINED_FUNCTION_145_5();
  v929();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v748, v749, v750, v936);
  v751 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v751, v752, v753, v927);
  v754 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v754, v755, v756, v737);
  v757 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v757, v758, v759, v741);
  OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_131_7();
  v941 = 0;
  v940 = 1;
  v939 = 0;
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_114_9(v760, v761, v762, v763, v699, v729);
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_54_12();
  __swift_storeEnumTagSinglePayload(v764, v765, v766, v767);
  v768 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v768, v769, v770, v741);
  OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_140_6();
  OUTLINED_FUNCTION_134_8();
  v944 = 0;
  v943 = 1;
  v942 = 0;
  OUTLINED_FUNCTION_108_11();
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_150_6();
  v771 = v916;
  OUTLINED_FUNCTION_107_10(v772, v773, v774, v775, v776, v916);
  OUTLINED_FUNCTION_132_7("ated with the person");
  v777 = v934;
  v778 = v931;
  v779 = v929;
  (v929)(1, v934, v931);
  v780 = OUTLINED_FUNCTION_20_1();
  v781 = v936;
  __swift_storeEnumTagSinglePayload(v780, v782, v783, v936);
  OUTLINED_FUNCTION_111_9();
  OUTLINED_FUNCTION_151_6();
  OUTLINED_FUNCTION_39_18();
  v784();
  OUTLINED_FUNCTION_38_15();
  __swift_storeEnumTagSinglePayload(v785, v786, v787, v788);
  OUTLINED_FUNCTION_18_24();
  v904 = swift_allocObject();
  OUTLINED_FUNCTION_68_14(v904, v920);
  OUTLINED_FUNCTION_128_9("Label for the email address (e.g., work, personal)");
  (v779)(v699, v777, v778);
  v789 = v779;
  v790 = v917;
  v791 = OUTLINED_FUNCTION_16();
  v792 = v781;
  OUTLINED_FUNCTION_171_2(v791, v793, v794, v781);
  v795 = OUTLINED_FUNCTION_39_4();
  v796 = v771;
  __swift_storeEnumTagSinglePayload(v795, v797, v798, v771);
  v799 = v919;
  v800 = OUTLINED_FUNCTION_42_3();
  v801 = v925;
  __swift_storeEnumTagSinglePayload(v800, v802, v803, v925);
  v804 = v935;
  v805 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v805, v806, v807, v930);
  v945 = v799;
  v946 = v804;
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_70_10();
  v808 = v924;
  sub_19393BF20();
  OUTLINED_FUNCTION_128_9("The email address itself");
  v809 = v931;
  (v789)(v808, v934, v931);
  v810 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v810, v811, v812, v792);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v813, v814, v815, v796);
  OUTLINED_FUNCTION_17_5();
  v820 = OUTLINED_FUNCTION_6_35(v816, v817, v818, v819);
  v821 = v930;
  __swift_storeEnumTagSinglePayload(v820, v822, v823, v930);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_26_14();
  v824 = v926;
  OUTLINED_FUNCTION_134_8();
  OUTLINED_FUNCTION_75_15();
  v948 = 0;
  OUTLINED_FUNCTION_117_11(0x6464416C69616D65, 0xEC00000073736572, v905, v825, v924, v790);
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_29_8();
  v826 = v801;
  __swift_storeEnumTagSinglePayload(v827, v828, v829, v801);
  v830 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v830, v831, v832, v821);
  OUTLINED_FUNCTION_79_13();
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_28_14();
  v950 = 1;
  v949 = 0;
  OUTLINED_FUNCTION_150_6();
  OUTLINED_FUNCTION_92_0(v833, v834, v835, v836, v837, v916);
  v838 = v934;
  v839 = v809;
  v840 = v809;
  v841 = v929;
  (v929)(0xEC00000073736572, v934, v839);
  v842 = OUTLINED_FUNCTION_15_7();
  v843 = v936;
  __swift_storeEnumTagSinglePayload(v842, v844, v845, v936);
  OUTLINED_FUNCTION_111_9();
  OUTLINED_FUNCTION_151_6();
  OUTLINED_FUNCTION_39_18();
  v846();
  OUTLINED_FUNCTION_38_15();
  __swift_storeEnumTagSinglePayload(v847, v848, v849, v850);
  OUTLINED_FUNCTION_18_24();
  v921 = swift_allocObject();
  OUTLINED_FUNCTION_68_14(v921, v920);
  (v841)(v924, v838, v840);
  v851 = v917;
  v852 = OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_171_2(v852, v853, v854, v843);
  v855 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v855, v856, v857, v824);
  v858 = OUTLINED_FUNCTION_39_4();
  v859 = v826;
  __swift_storeEnumTagSinglePayload(v858, v860, v861, v826);
  v862 = OUTLINED_FUNCTION_28_0();
  v863 = v930;
  __swift_storeEnumTagSinglePayload(v862, v864, v865, v930);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_4_40();
  v866 = OUTLINED_FUNCTION_70_10();
  v867 = v924;
  OUTLINED_FUNCTION_114_9(v866, 0xE500000000000000, v868, v869, v924, v851);
  OUTLINED_FUNCTION_145_5();
  v929();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v870, v871, v872, v936);
  v873 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v873, v874, v875, v927);
  v876 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v876, v877, v878, v859);
  v879 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v879, v880, v881, v863);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_26_14();
  v951 = 0;
  OUTLINED_FUNCTION_97_7(0x6D754E656E6F6870, 0xEB00000000726562, v903, 0x8000000193A26420, v867);
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v882, v883, v884, v859);
  v885 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v885, v886, v887, v863);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_1_46();
  sub_19393BF20();
  OUTLINED_FUNCTION_138_5();
  OUTLINED_FUNCTION_65_12();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}