uint64_t sub_1B907C744()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3D48);
  __swift_project_value_buffer(v0, qword_1EBAB3D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_context";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B907C9B4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B907C9B4()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_21();
  sub_1B907E880(v1, v2, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

void Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_95_4();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v7 || (v1 = v0, sub_1B964C700(), !v0))
  {
    type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, Context) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
LABEL_6:
      OUTLINED_FUNCTION_43_8();
      goto LABEL_7;
    }

    sub_1B907E6DC();
    OUTLINED_FUNCTION_9_21();
    sub_1B907E880(v8, v9, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_45_6();
    sub_1B964C740();
    sub_1B907E78C();
    if (!v1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_88();
  v14 = *v1 == *v0 && v1[1] == v0[1];
  if (v14 || (sub_1B964C9F0() & 1) != 0)
  {
    v28[1] = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(0);
    v15 = *(v12 + 48);
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_37_0(v2);
    if (v14)
    {
      OUTLINED_FUNCTION_37_0(v2 + v15);
      if (v14)
      {
        sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
LABEL_20:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_52();
        sub_1B907E880(v26, v27, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
        goto LABEL_21;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(v2 + v15);
      if (!v16)
      {
        OUTLINED_FUNCTION_1_45();
        sub_1B907E6DC();
        v19 = *(Context + 20);
        v20 = *&v11[v19];
        v21 = *(v7 + v19);
        if (v20 == v21 || (, , v22 = sub_1B9090820(v20, v21), , , v22))
        {
          v23 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_52();
          sub_1B907E880(v24, v25, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
          OUTLINED_FUNCTION_28_14();
          sub_1B907E78C();
          sub_1B907E78C();
          sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
          if ((v23 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        OUTLINED_FUNCTION_33_9();
        sub_1B907E78C();
        sub_1B907E78C();
        v17 = &qword_1EBABED40;
        v18 = &qword_1B96809F0;
LABEL_15:
        sub_1B8D9207C(v2, v17, v18);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_32_13();
      sub_1B907E78C();
    }

    v17 = &qword_1EBABED68;
    v18 = &qword_1B9680A10;
    goto LABEL_15;
  }

LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907CFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3878, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907D068(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3840, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907D0D8(uint64_t a1, uint64_t a2)
{
  sub_1B907E880(&qword_1EBAC3840, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B907D188(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B964C780();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B964EE70;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "status";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v15 = *(v14 + 104);
  (v15)(v11, v12, v13);
  v16 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v16 = "error";
  *(v16 + 8) = 5;
  *(v16 + 16) = 2;
  v15();
  v17 = (v10 + 2 * v7);
  v18 = v17 + v6[14];
  *v17 = 3;
  *v18 = "trace_id";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v15();
  v19 = v6[14];
  v20 = (v10 + 3 * v7);
  *v20 = 50;
  v21 = v20 + v19;
  *v21 = a3;
  *(v21 + 1) = a4;
  v21[16] = 2;
  v15();
  v22 = (v10 + 4 * v7);
  v23 = v22 + v6[14];
  *v22 = 100;
  *v23 = "service_debug";
  *(v23 + 1) = 13;
  v23[16] = 2;
  v15();
  return sub_1B964C760();
}

void Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B907D65C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B907D540();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 50:
        OUTLINED_FUNCTION_9();
        sub_1B907D5D0();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CFB0F8();
        break;
    }
  }
}

uint64_t sub_1B907D540()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_8_26();
  sub_1B907E880(v1, v2, protocol conformance descriptor for Apple_Parsec_Search_Error);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

void sub_1B907D5D0()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6(0);
  sub_1B907E880(v5, v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B907D65C()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_147_1();
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  OUTLINED_FUNCTION_7_26();
  sub_1B907E880(v1, v0, protocol conformance descriptor for Debuglevelspb_AnyArray);
  OUTLINED_FUNCTION_10_22(&qword_1EBABAE08);
  sub_1B964C3A0();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_164();
  v5 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  if (!*v1 || (sub_1B8F2116C(), OUTLINED_FUNCTION_17_15(), sub_1B964C680(), !v0))
  {
    type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      sub_1B907E6DC();
      OUTLINED_FUNCTION_8_26();
      sub_1B907E880(v7, v8, protocol conformance descriptor for Apple_Parsec_Search_Error);
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      sub_1B907E78C();
      if (v0)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_45_6(), sub_1B964C700(), !v0))
    {
      if (!*(v1[4] + 16) || (type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(0), sub_1B907E880(&qword_1ED9C99D8, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v0))
      {
        if (!*(v1[5] + 16) || (sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), OUTLINED_FUNCTION_7_26(), sub_1B907E880(v10, v5, protocol conformance descriptor for Debuglevelspb_AnyArray), OUTLINED_FUNCTION_10_22(&qword_1EBABAE08), OUTLINED_FUNCTION_45_6(), sub_1B964C5E0(), !v0))
        {
          OUTLINED_FUNCTION_43_8();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B907DA28()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_468();
  v7 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_164();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = *v1;
  v19 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        if (v18 != 1)
        {
          goto LABEL_29;
        }
      }

      else if (v18 != 2)
      {
        goto LABEL_29;
      }
    }

    else if (v18)
    {
      goto LABEL_29;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_29;
  }

  v29 = v4;
  v28 = v6(0);
  v20 = *(v14 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v17, 1, v7);
  if (!v21)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&v17[v20], 1, v7);
    if (!v21)
    {
      sub_1B907E6DC();
      v22 = static Apple_Parsec_Search_Error.== infix(_:_:)(v2, v11);
      sub_1B907E78C();
      sub_1B907E78C();
      sub_1B8D9207C(v17, &qword_1EBAB9188, &qword_1B964D970);
      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    sub_1B907E78C();
LABEL_19:
    sub_1B8D9207C(v17, &qword_1EBAB9190, &qword_1B964D978);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_178(&v17[v20], 1, v7);
  if (!v21)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v17, &qword_1EBAB9188, &qword_1B964D970);
LABEL_21:
  v23 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v23 || (sub_1B964C9F0()) && (v29(v1[4], v0[4]))
  {
    sub_1B8DAFA20();
    if (v24)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_52();
      v27 = sub_1B907E880(v25, v26, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v27);
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907DE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3870, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907DE8C(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3850, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907DEFC(uint64_t a1, uint64_t a2)
{
  sub_1B907E880(&qword_1EBAC3850, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B907DF94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC37B0);
  __swift_project_value_buffer(v0, qword_1EBAC37B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "results";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B907E1E8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B907E1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
  sub_1B907E880(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_SearchResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0), sub_1B907E880(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_SearchResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D61678(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_52();
  v8 = sub_1B907E880(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B907E468(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B907E880(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B907E54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3868, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907E5CC(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1ED9C99D8, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907E63C(uint64_t a1, uint64_t a2)
{
  sub_1B907E880(&qword_1ED9C99D8, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B907E6DC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B907E734()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B907E78C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B907E880(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B907E8C8()
{
  result = qword_1EBAB4B98;
  if (!qword_1EBAB4B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, &type metadata for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB4B98);
  }

  return result;
}

unint64_t sub_1B907E920()
{
  result = qword_1EBAB4B90;
  if (!qword_1EBAB4B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, &type metadata for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB4B90);
  }

  return result;
}

unint64_t sub_1B907E978()
{
  result = qword_1EBAB4B80;
  if (!qword_1EBAB4B80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, &type metadata for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB4B80);
  }

  return result;
}

unint64_t sub_1B907E9D0()
{
  result = qword_1EBAB4B88;
  if (!qword_1EBAB4B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, &type metadata for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB4B88);
  }

  return result;
}

unint64_t sub_1B907EA28()
{
  result = qword_1EBAC3800;
  if (!qword_1EBAC3800)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3808, &qword_1B9686CE8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC3800);
  }

  return result;
}

void sub_1B907F2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B907F368(uint64_t a1)
{
  sub_1B907F2DC(319, &qword_1ED9C8F70, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B907F454(uint64_t a1)
{
  sub_1B907F500();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B907F500()
{
  if (!qword_1ED9C8F78)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9C8F78);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_indexTm_3()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_61_0(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

void sub_1B907F6F4(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B907F2DC(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_16Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
    v6 = *(v2 + 36);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_17Tm()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_61_0(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

void sub_1B907F96C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B907F2DC(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B8E00BFC(319);
    if (v6 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v7 <= 0x3F)
      {
        sub_1B907F2DC(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B907FAAC(uint64_t a1)
{
  sub_1B907F2DC(319, &qword_1ED9C8FA8, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_22(unint64_t *a1)
{

  return sub_1B907E880(a1, v1, protocol conformance descriptor for Debuglevelspb_AnyArray);
}

uint64_t OUTLINED_FUNCTION_43_8()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_58_6(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 36);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 24);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_77_7()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_78_4()
{

  return sub_1B8D92024();
}

uint64_t Apple_Parsec_Search_LRConversationThread.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThread.lastUsedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 32));
  OUTLINED_FUNCTION_28_2(v9, v10);
  v11 = sub_1B964C110();
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    sub_1B964C100();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    return (*(v13 + 32))(a1, v1, v11);
  }

  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThread.lastUsedTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 32);
  sub_1B8D9207C(v1 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Search_LRConversationThread.lastUsedTimestamp.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_145_1(v4);
  v5 = sub_1B964C110();
  OUTLINED_FUNCTION_53_6(v5);
  OUTLINED_FUNCTION_30_1();
  *(v0 + 24) = v6;
  v8 = *(v7 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v8);
  *(v0 + 40) = __swift_coroFrameAllocStub(v8);
  v9 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 32);
  *(v0 + 48) = v9;
  OUTLINED_FUNCTION_30_19(v9);
  OUTLINED_FUNCTION_75(v4);
  if (v10)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_75(v4);
    if (!v10)
    {
      sub_1B8D9207C(v4, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_461();
    v12(v11);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_LRConversationThread.hasLastUsedTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 32));
  v6 = sub_1B964C110();
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Search_LRConversationThread.clearLastUsedTimestamp()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 36));
  OUTLINED_FUNCTION_28_2(v9, v10);
  v11 = sub_1B964C220();
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    sub_1B964C210();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC38E8, &qword_1B9687958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    return (*(v13 + 32))(a1, v1, v11);
  }

  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 36);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC38E8, &qword_1B9687958);
  v4 = sub_1B964C220();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_145_1(v4);
  v5 = sub_1B964C220();
  OUTLINED_FUNCTION_53_6(v5);
  OUTLINED_FUNCTION_30_1();
  *(v0 + 24) = v6;
  v8 = *(v7 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v8);
  *(v0 + 40) = __swift_coroFrameAllocStub(v8);
  v9 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 36);
  *(v0 + 48) = v9;
  OUTLINED_FUNCTION_30_19(v9);
  OUTLINED_FUNCTION_75(v4);
  if (v10)
  {
    sub_1B964C210();
    OUTLINED_FUNCTION_75(v4);
    if (!v10)
    {
      sub_1B8D9207C(v4, &qword_1EBAC38E8, &qword_1B9687958);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_461();
    v12(v11);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B9080580()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 12);
  v6 = (*v0)[4];
  v7 = (*v0)[5];
  v8 = (*v0)[2];
  v9 = (*v0)[3];
  v11 = **v0;
  v10 = (*v0)[1];
  if (v12)
  {
    (*(v9 + 16))((*v0)[4], v7, v8);
    sub_1B8D9207C(v11 + v5, v4, v3);
    (*(v9 + 32))(v11 + v5, v6, v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
    v16 = OUTLINED_FUNCTION_236();
    v17(v16);
  }

  else
  {
    sub_1B8D9207C(v11 + v5, v1, v2);
    (*(v9 + 32))(v11 + v5, v7, v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
  }

  free(v7);
  free(v6);
  free(v10);
  OUTLINED_FUNCTION_283();

  free(v21);
}

uint64_t Apple_Parsec_Search_LRConversationThread.hasLongPersistenceTtl.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 36));
  v6 = sub_1B964C220();
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Search_LRConversationThread.clearLongPersistenceTtl()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC38E8, &qword_1B9687958);
  sub_1B964C220();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_LRConversationThread.contextType.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2);
  return sub_1B8DD9078(v1 + *(v3 + 24), v0, &qword_1EBAC38F0, &qword_1B9687960);
}

uint64_t Apple_Parsec_Search_LRConversationThread.contextType.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 24);

  return sub_1B908080C(v0, v3);
}

uint64_t sub_1B908080C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Search_LRConversationThread.contextType.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_LRConversationThread(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_LRConversationThread.summary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  v5 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8DD9078(v0 + *(v5 + 24), v4, &qword_1EBAC38F0, &qword_1B9687960);
  v6 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  OUTLINED_FUNCTION_178(v4, 1, v6);
  if (v7)
  {
    sub_1B8D9207C(v4, &qword_1EBAC38F0, &qword_1B9687960);
    return sub_1B964C170();
  }

  else
  {
    sub_1B964C180();
    OUTLINED_FUNCTION_59_1();
    v8 = OUTLINED_FUNCTION_514();
    return v9(v8);
  }
}

uint64_t sub_1B90809EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = OUTLINED_FUNCTION_461();
  v11(v10);
  return a6(v9);
}

uint64_t Apple_Parsec_Search_LRConversationThread.summary.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC38F0, &qword_1B9687960);
  sub_1B964C180();
  OUTLINED_FUNCTION_59_1();
  (*(v4 + 32))(v1 + v3, v0);
  type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Search_LRConversationThread.summary.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C180();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 24);
  *(v3 + 14) = v13;
  OUTLINED_FUNCTION_30_19(v13);
  v14 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  v3[6] = v14;
  OUTLINED_FUNCTION_178(v6, 1, v14);
  if (v15)
  {
    sub_1B8D9207C(v6, &qword_1EBAC38F0, &qword_1B9687960);
    sub_1B964C170();
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B9080CC4()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[5];
  v2 = (*v0)[6];
  v3 = *(*v0 + 14);
  v5 = (*v0)[3];
  v4 = (*v0)[4];
  v6 = (*v0)[1];
  v7 = (*v0)[2];
  v8 = **v0;
  if (v9)
  {
    (*(v5 + 16))((*v0)[4], v1, v7);
    sub_1B8D9207C(v8 + v3, &qword_1EBAC38F0, &qword_1B9687960);
    (*(v5 + 32))(v8 + v3, v4, v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
    (*(v5 + 8))(v1, v7);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAC38F0, &qword_1B9687960);
    (*(v5 + 32))(v8 + v3, v1, v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  }

  free(v1);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_283();

  free(v16);
}

uint64_t Apple_Parsec_Search_LRConversationThread.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Apple_Parsec_Search_LRConversationThread.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Apple_Parsec_Search_LRConversationThread.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_LRConversationThread(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Search_LRConversationThread.OneOf_ContextType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F8, &qword_1B9687968);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v4 + 56);
  OUTLINED_FUNCTION_18_13();
  sub_1B9081498();
  sub_1B9081498();
  v8 = sub_1B964C160();
  v9 = sub_1B964C180();
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 8);
  v11(&v6[v7], v9);
  v11(v6, v9);
  return v8 & 1;
}

uint64_t Apple_Parsec_Search_LRConversationThread.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1B964C220();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.lrcThreadPolicy.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 20));
  OUTLINED_FUNCTION_28_2(v9, v10);
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  OUTLINED_FUNCTION_57(v1);
  if (v11)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3900, &qword_1B9687970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    return sub_1B9081890();
  }

  return result;
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.lrcThreadPolicy.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC3900, &qword_1B9687970);
  OUTLINED_FUNCTION_2_29();
  sub_1B9081890();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Search_ConversationContextManagementPolicy.lrcThreadPolicy.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_145_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(v5);
  OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  *(v0 + 32) = v9;
  v10 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0) + 20);
  *(v0 + 40) = v10;
  v11 = OUTLINED_FUNCTION_115(v10);
  OUTLINED_FUNCTION_44_7(v11, v12);
  OUTLINED_FUNCTION_75(v4);
  if (v13)
  {
    *v9 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v4);
    if (!v13)
    {
      sub_1B8D9207C(v4, &qword_1EBAC3900, &qword_1B9687970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    OUTLINED_FUNCTION_461();
    sub_1B9081890();
  }

  return sub_1B908145C;
}

uint64_t sub_1B9081498()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B90814EC()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.hasLrcThreadPolicy.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 20));
  v6 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Search_ConversationContextManagementPolicy.clearLrcThreadPolicy()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC3900, &qword_1B9687970);
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.lrcThreads.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Search_SearchConversationContext.managementPolicy.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_28_2(v1 + *(v8 + 24), v7);
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_57(v7);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3908, &qword_1B9687978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_46();
    return sub_1B9081890();
  }

  return result;
}

uint64_t sub_1B9081890()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B90818E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_208();
  sub_1B9081498();
  return a7(v7);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.managementPolicy.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC3908, &qword_1B9687978);
  OUTLINED_FUNCTION_1_46();
  sub_1B9081890();
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Search_SearchConversationContext.managementPolicy.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_145_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v5);
  OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v8);
  *(v0 + 32) = __swift_coroFrameAllocStub(v8);
  v9 = *(type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0) + 24);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_115(v9);
  OUTLINED_FUNCTION_44_7(v10, v11);
  OUTLINED_FUNCTION_75(v4);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_75(v4);
    if (!v12)
    {
      sub_1B8D9207C(v4, &qword_1EBAC3908, &qword_1B9687978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_46();
    OUTLINED_FUNCTION_461();
    sub_1B9081890();
  }

  return sub_1B9081B40;
}

void sub_1B9081B7C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[2];
  v18 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    sub_1B9081498();
    sub_1B8D9207C(v11 + v7, a3, a4);
    sub_1B9081890();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
    sub_1B90814EC();
  }

  else
  {
    sub_1B8D9207C(v11 + v7, a3, a4);
    sub_1B9081890();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  }

  free(v9);
  free(v8);
  free(v18);

  free(v6);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.hasManagementPolicy.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 24));
  v6 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Search_SearchConversationContext.clearManagementPolicy()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC3908, &qword_1B9687978);
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B9081D8C()
{
  v2 = OUTLINED_FUNCTION_27();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(v0, v1 + v4, v5);
}

uint64_t sub_1B9081E1C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9081EE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC38A0);
  __swift_project_value_buffer(v0, qword_1EBAC38A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "used_frequency";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "last_used_timestamp";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "long_persistence_ttl";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "summary";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_LRConversationThread.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9082258(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B908230C(v11, v12, v13, v14);
        break;
      case 10:
        v5 = OUTLINED_FUNCTION_432();
        sub_1B90823C0(v5, v6, v2, v1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9082258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B964C110();
  sub_1B9082F08(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t sub_1B908230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B964C220();
  sub_1B9082F08(&qword_1EBAC3918, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1B964C580();
}

uint64_t sub_1B90823C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v42 = a3;
  v41 = a2;
  v5 = sub_1B964C180();
  v40 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC39D8, &unk_1B96880B0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v34 - v21;
  __swift_storeEnumTagSinglePayload(&v34 - v21, 1, 1, v5);
  v23 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 24);
  v36 = a1;
  v34 = v23;
  sub_1B8DD9078(a1 + v23, v12, &qword_1EBAC38F0, &qword_1B9687960);
  v35 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC38F0, &qword_1B9687960);
    v25 = v40;
  }

  else
  {
    sub_1B9081890();
    sub_1B9081890();
    sub_1B8D9207C(v22, &qword_1EBAC39D8, &unk_1B96880B0);
    v26 = v40;
    v27 = *(v40 + 32);
    v27(v9, v16, v5);
    v27(v22, v9, v5);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    v25 = v26;
  }

  sub_1B9082F08(&qword_1EBAC3910, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  v28 = v38;
  sub_1B964C580();
  if (v28)
  {
    v29 = v22;
    return sub_1B8D9207C(v29, &qword_1EBAC39D8, &unk_1B96880B0);
  }

  sub_1B8DD9078(v22, v20, &qword_1EBAC39D8, &unk_1B96880B0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC39D8, &unk_1B96880B0);
    v29 = v20;
    return sub_1B8D9207C(v29, &qword_1EBAC39D8, &unk_1B96880B0);
  }

  v31 = *(v25 + 32);
  v31(v37, v20, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBAC39D8, &unk_1B96880B0);
  v32 = v36;
  v33 = v34;
  sub_1B8D9207C(v36 + v34, &qword_1EBAC38F0, &qword_1B9687960);
  v31((v32 + v33), v37, v5);
  return __swift_storeEnumTagSinglePayload(v32 + v33, 0, 1, v35);
}

uint64_t Apple_Parsec_Search_LRConversationThread.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v4;
  v66 = a3;
  v67 = a2;
  v68 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v65 = v9;
  sub_1B964C180();
  OUTLINED_FUNCTION_30_1();
  v63 = v11;
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v62 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38E8, &qword_1B9687958);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v18 = sub_1B964C220();
  OUTLINED_FUNCTION_30_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v25);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_159();
  v27 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v32 = v31 - v30;
  v33 = *(v3 + 8);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v60 = v27;
    v35 = v32;
    v36 = v29;
    OUTLINED_FUNCTION_52_6();
    v3 = v68;
    result = sub_1B964C700();
    if (v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_50_8();
    v6 = v38;
    v29 = v36;
    v32 = v35;
    v27 = v60;
  }

  v59 = v29;
  v61 = v17;
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_52_6();
    v3 = v68;
    result = sub_1B964C710();
    if (v6)
    {
      return result;
    }

    OUTLINED_FUNCTION_50_8();
  }

  v39 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8DD9078(v3 + v39[8], v5, &off_1EBAB90F0, &unk_1B964D8E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v27);
  v58 = v3;
  if (EnumTagSinglePayload == 1)
  {
    v60 = v24;
    sub_1B8D9207C(v5, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  else
  {
    v57 = v20;
    v41 = v59;
    (*(v59 + 32))(v32, v5, v27);
    OUTLINED_FUNCTION_21_12();
    sub_1B9082F08(v42, v43, MEMORY[0x1E69AA8F8]);
    sub_1B964C740();
    if (v6)
    {
      return (*(v41 + 8))(v32, v27);
    }

    v60 = v24;
    (*(v41 + 8))(v32, v27);
    v20 = v57;
    v3 = v58;
  }

  v44 = v61;
  sub_1B8DD9078(v3 + v39[9], v61, &qword_1EBAC38E8, &qword_1B9687958);
  if (__swift_getEnumTagSinglePayload(v44, 1, v18) == 1)
  {
    sub_1B8D9207C(v44, &qword_1EBAC38E8, &qword_1B9687958);
    v45 = v65;
  }

  else
  {
    v66 = v39;
    v46 = v60;
    (*(v20 + 32))(v60, v44, v18);
    OUTLINED_FUNCTION_19_13();
    sub_1B9082F08(v47, v48, MEMORY[0x1E69AAB68]);
    sub_1B964C740();
    v49 = v20;
    v45 = v65;
    if (v6)
    {
      return (*(v49 + 8))(v46, v18);
    }

    (*(v49 + 8))(v46, v18);
    v3 = v58;
    v39 = v66;
  }

  sub_1B8DD9078(v3 + v39[6], v45, &qword_1EBAC38F0, &qword_1B9687960);
  v50 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  v51 = __swift_getEnumTagSinglePayload(v45, 1, v50);
  v53 = v63;
  v52 = v64;
  if (v51 == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBAC38F0, &qword_1B9687960);
  }

  else
  {
    v54 = v45;
    v55 = v62;
    (*(v63 + 32))(v62, v54, v64);
    sub_1B9082F08(&qword_1EBAC3910, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
    sub_1B964C740();
    if (v6)
    {
      return (*(v53 + 8))(v55, v52);
    }

    (*(v53 + 8))(v55, v52);
  }

  return sub_1B964C290();
}

uint64_t sub_1B9082F08(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void static Apple_Parsec_Search_LRConversationThread.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v79 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v76 = v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3920, &qword_1B9687980);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v80 = v14;
  v84 = sub_1B964C220();
  OUTLINED_FUNCTION_30_1();
  v82 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v77 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38E8, &qword_1B9687958);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_185();
  v81 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3928, &qword_1B9687988);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_185();
  v83 = v24;
  v25 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v29);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_159();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v72 - v33;
  v35 = *v5 == *v3 && *(v5 + 8) == *(v3 + 8);
  if (!v35 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 16) != *(v3 + 16))
  {
    goto LABEL_37;
  }

  v73 = v9;
  v36 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  v85 = v3;
  v37 = *(v36 + 32);
  v38 = *(v31 + 48);
  v74 = v36;
  v75 = v5;
  sub_1B8DD9078(v5 + v37, v34, &off_1EBAB90F0, &unk_1B964D8E0);
  v39 = v85 + v37;
  v40 = v85;
  sub_1B8DD9078(v39, &v34[v38], &off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_37_0(v34);
  if (v35)
  {
    OUTLINED_FUNCTION_37_0(&v34[v38]);
    if (v35)
    {
      sub_1B8D9207C(v34, &off_1EBAB90F0, &unk_1B964D8E0);
      goto LABEL_17;
    }

LABEL_15:
    v42 = &qword_1EBAB90F8;
    v43 = &qword_1B9687990;
    v44 = v34;
LABEL_36:
    sub_1B8D9207C(v44, v42, v43);
    goto LABEL_37;
  }

  sub_1B8DD9078(v34, v1, &off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_37_0(&v34[v38]);
  if (v41)
  {
    (*(v27 + 8))(v1, v25);
    goto LABEL_15;
  }

  (*(v27 + 32))(v0, &v34[v38], v25);
  OUTLINED_FUNCTION_21_12();
  sub_1B9082F08(v45, v46, MEMORY[0x1E69AA908]);
  v47 = sub_1B964C850();
  v48 = *(v27 + 8);
  v48(v0, v25);
  v48(v1, v25);
  sub_1B8D9207C(v34, &off_1EBAB90F0, &unk_1B964D8E0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  v50 = v74;
  v49 = v75;
  v51 = *(v74 + 36);
  v52 = *(v22 + 48);
  v53 = v83;
  sub_1B8DD9078(v75 + v51, v83, &qword_1EBAC38E8, &qword_1B9687958);
  sub_1B8DD9078(v40 + v51, v53 + v52, &qword_1EBAC38E8, &qword_1B9687958);
  v54 = v84;
  OUTLINED_FUNCTION_178(v53, 1, v84);
  if (v35)
  {
    OUTLINED_FUNCTION_57(v53 + v52);
    if (v35)
    {
      sub_1B8D9207C(v53, &qword_1EBAC38E8, &qword_1B9687958);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v55 = v81;
  sub_1B8DD9078(v53, v81, &qword_1EBAC38E8, &qword_1B9687958);
  OUTLINED_FUNCTION_57(v53 + v52);
  if (v56)
  {
    (*(v82 + 8))(v55, v54);
LABEL_25:
    v42 = &qword_1EBAC3928;
    v43 = &qword_1B9687988;
    v44 = v53;
    goto LABEL_36;
  }

  v57 = v82;
  v58 = v77;
  (*(v82 + 32))(v77, v53 + v52, v54);
  OUTLINED_FUNCTION_19_13();
  sub_1B9082F08(v59, v60, MEMORY[0x1E69AAB78]);
  v61 = sub_1B964C850();
  v62 = *(v57 + 8);
  v62(v58, v54);
  v62(v55, v54);
  sub_1B8D9207C(v53, &qword_1EBAC38E8, &qword_1B9687958);
  if ((v61 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  v63 = *(v50 + 24);
  v64 = *(v78 + 48);
  v65 = v80;
  sub_1B8DD9078(v49 + v63, v80, &qword_1EBAC38F0, &qword_1B9687960);
  sub_1B8DD9078(v40 + v63, v65 + v64, &qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_178(v65, 1, v79);
  if (v35)
  {
    OUTLINED_FUNCTION_37_0(v65 + v64);
    if (v35)
    {
      sub_1B8D9207C(v65, &qword_1EBAC38F0, &qword_1B9687960);
LABEL_39:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_53();
      sub_1B9082F08(v70, v71, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v66 = v76;
  sub_1B8DD9078(v65, v76, &qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_37_0(v65 + v64);
  if (v67)
  {
    sub_1B90814EC();
LABEL_35:
    v42 = &qword_1EBAC3920;
    v43 = &qword_1B9687980;
    v44 = v65;
    goto LABEL_36;
  }

  v68 = v73;
  sub_1B9081890();
  v69 = static Apple_Parsec_Search_LRConversationThread.OneOf_ContextType.== infix(_:_:)(v66, v68);
  OUTLINED_FUNCTION_18_13();
  sub_1B90814EC();
  OUTLINED_FUNCTION_186();
  sub_1B90814EC();
  sub_1B8D9207C(v65, &qword_1EBAC38F0, &qword_1B9687960);
  if (v69)
  {
    goto LABEL_39;
  }

LABEL_37:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90837D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39D0, type metadata accessor for Apple_Parsec_Search_LRConversationThread, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThread);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9083854(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThread);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90838C4(uint64_t a1, uint64_t a2)
{
  sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThread);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C540();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B964C710(), !v4))
  {
    type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_LRConversationThreadManagementPolicy.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(v2);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_53();
  v5 = sub_1B9082F08(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B9083B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39C8, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9083C1C(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9083C8C(uint64_t a1, uint64_t a2)
{
  sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);

  return sub_1B964C5D0();
}

uint64_t sub_1B9083D3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B964D050;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v13 + 104))(v11, v12);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9083F10(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9083F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3900, &qword_1B9687970);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0) + 20);
  v14 = v3;
  sub_1B8DD9078(v3 + v11, v8, &qword_1EBAC3900, &qword_1B9687970);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAC3900, &qword_1B9687970);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    sub_1B9081890();
    sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);
    sub_1B964C740();
    OUTLINED_FUNCTION_24_15();
    result = sub_1B90814EC();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

void static Apple_Parsec_Search_ConversationContextManagementPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v29 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v29);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&a9 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3950, &qword_1B9687998) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_22_3();
  v36 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v35) + 20);
  v37 = *(v33 + 56);
  OUTLINED_FUNCTION_44_7(v27 + v36, v20);
  OUTLINED_FUNCTION_44_7(v25 + v36, v20 + v37);
  OUTLINED_FUNCTION_37_0(v20);
  if (!v40)
  {
    sub_1B8DD9078(v20, v32, &qword_1EBAC3900, &qword_1B9687970);
    OUTLINED_FUNCTION_37_0(v20 + v37);
    if (!v40)
    {
      OUTLINED_FUNCTION_2_29();
      sub_1B9081890();
      if (*v32 == *v21)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_53();
        sub_1B9082F08(v43, v44, MEMORY[0x1E69AAC10]);
        v45 = sub_1B964C850();
        sub_1B90814EC();
        sub_1B90814EC();
        sub_1B8D9207C(v20, &qword_1EBAC3900, &qword_1B9687970);
        if ((v45 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }

      sub_1B90814EC();
      sub_1B90814EC();
      v41 = &qword_1EBAC3900;
      v42 = &qword_1B9687970;
LABEL_11:
      sub_1B8D9207C(v20, v41, v42);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_24_15();
    sub_1B90814EC();
LABEL_10:
    v41 = &qword_1EBAC3950;
    v42 = &qword_1B9687998;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_0(v20 + v37);
  if (!v40)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v20, &qword_1EBAC3900, &qword_1B9687970);
LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_53();
  sub_1B9082F08(v38, v39, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
LABEL_12:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9084520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39C0, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_ConversationContextManagementPolicy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90845A0(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_ConversationContextManagementPolicy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9084610(uint64_t a1, uint64_t a2)
{
  sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_ConversationContextManagementPolicy);

  return sub_1B964C5D0();
}

uint64_t sub_1B90846A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5D50);
  __swift_project_value_buffer(v0, qword_1EBAB5D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lrc_threads";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "management_policy";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_SearchConversationContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 10)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B908499C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B90848FC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B90848FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThread);
  return sub_1B964C570();
}

uint64_t sub_1B908499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_ConversationContextManagementPolicy);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Search_SearchConversationContext.traverse<A>(visitor:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3908, &qword_1B9687978);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_159();
  v6 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  if (!*(*v1 + 16) || (type metadata accessor for Apple_Parsec_Search_LRConversationThread(0), sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread, protocol conformance descriptor for Apple_Parsec_Search_LRConversationThread), OUTLINED_FUNCTION_55_5(), result = sub_1B964C730(), !v2))
  {
    v9 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
    sub_1B8DD9078(v1 + *(v9 + 24), v3, &qword_1EBAC3908, &qword_1B9687978);
    if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
    {
      sub_1B8D9207C(v3, &qword_1EBAC3908, &qword_1B9687978);
    }

    else
    {
      OUTLINED_FUNCTION_1_46();
      sub_1B9081890();
      sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy, protocol conformance descriptor for Apple_Parsec_Search_ConversationContextManagementPolicy);
      OUTLINED_FUNCTION_55_5();
      sub_1B964C740();
      OUTLINED_FUNCTION_22_14();
      result = sub_1B90814EC();
      if (v2)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9084F68(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B9082F08(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9085048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39B8, type metadata accessor for Apple_Parsec_Search_SearchConversationContext, protocol conformance descriptor for Apple_Parsec_Search_SearchConversationContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90850C8(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAB5D40, type metadata accessor for Apple_Parsec_Search_SearchConversationContext, protocol conformance descriptor for Apple_Parsec_Search_SearchConversationContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9085138(uint64_t a1, uint64_t a2)
{
  sub_1B9082F08(&qword_1EBAB5D40, type metadata accessor for Apple_Parsec_Search_SearchConversationContext, protocol conformance descriptor for Apple_Parsec_Search_SearchConversationContext);

  return sub_1B964C5D0();
}

void sub_1B9085660(uint64_t a1)
{
  sub_1B90857BC(319, &qword_1ED9D1778, type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B90857BC(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B90857BC(319, &qword_1ED9CF6F0, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B90857BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9085820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B964C180();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1B9085868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C180();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1B90858C0(uint64_t a1)
{
  v2 = sub_1B964C180();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1B9085990(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9085A0C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B90857BC(319, &qword_1ED9CF7C8, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9085AE8(uint64_t a1)
{
  sub_1B90857BC(319, &qword_1ED9CF638, type metadata accessor for Apple_Parsec_Search_LRConversationThread, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B90857BC(319, &qword_1ED9CF838, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_30_19@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_44_7(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  if (qword_1ED9D38C0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1ED9D38C8;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Search_DevicePolicyType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (!a2)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Search_DevicePolicyType.rawValue.getter()
{
  if (v0[8])
  {
    return 2 * (*v0 != 0);
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B9085E94@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_DevicePolicyType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9085EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9093124();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_DevicePolicyType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B9085FCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_DevicePolicyType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.secretKey.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.secretKey.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.secretKey.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086138()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.secretKey.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.countryCode.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.countryCode.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.countryCode.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086308()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.locale.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 48, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.locale.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.locale.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90864D8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.locale.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90866A8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.getter()
{
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v8);
    *(v2 + v4) = v7;
  }

  OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  *(v7 + 80) = v0;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  *(v1 + 48) = *(v4 + 80);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086888()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 56);
      OUTLINED_FUNCTION_19_14();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B908C5D0(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.storeFront.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 88, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.storeFront.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 88, v5);
  *(v6 + 88) = v2;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.storeFront.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 88);
  v6 = *(v5 + 96);
  *(v1 + 48) = *(v5 + 88);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086A78()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 88);
    *(v7 + 88) = v3;
    *(v7 + 96) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.userGuid.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 104, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.userGuid.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 104, v5);
  *(v6 + 104) = v2;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.userGuid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 104);
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086C48()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 104);
    *(v7 + 104) = v3;
    *(v7 + 112) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.timeZone.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 120, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.timeZone.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 120, v5);
  *(v6 + 120) = v2;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.timeZone.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 120);
  v6 = *(v5 + 128);
  *(v1 + 48) = *(v5 + 120);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086E18()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 120);
    *(v7 + 120) = v3;
    *(v7 + 128) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.skuRegion.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 136, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 136, v5);
  *(v6 + 136) = v2;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.skuRegion.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 136);
  v6 = *(v5 + 144);
  *(v1 + 48) = *(v5 + 136);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086FE8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 136);
    *(v7 + 136) = v3;
    *(v7 + 144) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.calendar.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 152, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_PegasusQueryContext.calendar.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 152, v5);
  *(v6 + 152) = v2;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.calendar.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 152);
  v6 = *(v5 + 160);
  *(v1 + 48) = *(v5 + 152);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90871B8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.calendar.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B908C5D0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 152);
    *(v7 + 152) = v3;
    *(v7 + 160) = v2;
  }

  free(v0);
}

void Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 168, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 168));
}

void Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 168, v6);
  *(v7 + 168) = v3;
  *(v7 + 176) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  OUTLINED_FUNCTION_71_2(*(v0 + 168));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9087354()
{
  OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_4_15(v6);
  v8 = *(v5 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B908C5D0(v9);
    OUTLINED_FUNCTION_73_2(v10);
  }

  v11 = 48;
  if (v2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 168, v0 + v11);
  *(v8 + 168) = v3;
  *(v8 + 176) = v4;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Apple_Parsec_Search_PegasusQueryContext.measurementSystem.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 184, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 184));
}

void Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 184, v6);
  *(v7 + 184) = v3;
  *(v7 + 192) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.measurementSystem.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 184);
  OUTLINED_FUNCTION_71_2(*(v0 + 184));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90874EC()
{
  OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_4_15(v6);
  v8 = *(v5 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B908C5D0(v9);
    OUTLINED_FUNCTION_73_2(v10);
  }

  v11 = 48;
  if (v2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 184, v0 + v11);
  *(v8 + 184) = v3;
  *(v8 + 192) = v4;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Apple_Parsec_Search_PegasusQueryContext.hourFormat.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v0 + 200, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 200));
}

void Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 200, v6);
  *(v7 + 200) = v3;
  *(v7 + 208) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.hourFormat.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 200);
  OUTLINED_FUNCTION_71_2(*(v0 + 200));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9087684()
{
  OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_4_15(v6);
  v8 = *(v5 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B908C5D0(v9);
    OUTLINED_FUNCTION_73_2(v10);
  }

  v11 = 48;
  if (v2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 200, v0 + v11);
  *(v8 + 200) = v3;
  *(v8 + 208) = v4;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    Apple_Parsec_Search_V2_Location.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAC3A18, &qword_1B96880D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_17();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.location.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_22_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B908C5D0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_108_6();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.location.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Search_V2_Location(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0;
    *(v11 + 16) = 1;
    *(v11 + 5) = 0;
    *(v11 + 24) = 0;
    v11[4] = 0;
    *(v11 + 40) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
    OUTLINED_FUNCTION_84_6(v13);
    v14 = sub_1B964C130();
    OUTLINED_FUNCTION_84_6(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A18, &qword_1B96880D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_17();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.mapsSession.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0xC000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAC3A20, &qword_1B96880D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.mapsSession.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_22_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B908C5D0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_14_15();
  OUTLINED_FUNCTION_108_6();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.mapsSession.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Search_V2_MapsSession(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    *(v11 + 8) = 0;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = 0xC000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A20, &qword_1B96880D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9087DB4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B908D914();
    v2(v3);
    sub_1B908D96C();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B9087E88(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13 - 8];
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_521(v5 + *a3, v20);
  sub_1B8D92024();
  v15 = (a4)(0);
  OUTLINED_FUNCTION_178(v14, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1B8D9207C(v14, v6, v4);
  return v17;
}

void sub_1B9087F88()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v10 = OUTLINED_FUNCTION_40_0();
    *(v0 + v9) = sub_1B908C5D0(v10);
  }

  v11 = v2(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.subscriptions.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAC3A28, &qword_1B96880E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_18();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_22_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B908C5D0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_108_6();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.subscriptions.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A28, &qword_1B96880E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void Apple_Parsec_Search_PegasusQueryContext.transportationMode.getter()
{
  OUTLINED_FUNCTION_10_23();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode);
  OUTLINED_FUNCTION_521(v2, v3);
  OUTLINED_FUNCTION_66_2(*v2);
}

uint64_t sub_1B908847C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void Apple_Parsec_Search_PegasusQueryContext.transportationMode.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v22;
  a20 = v23;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = OUTLINED_FUNCTION_22_15();
  v28 = *(v20 + v21);
  if ((v27 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v29 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B908C5D0(v29);
    OUTLINED_FUNCTION_72_2(v30);
  }

  v31 = v28 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  OUTLINED_FUNCTION_18(v28 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode, &a10);
  *v31 = v25;
  *(v31 + 8) = v26;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.transportationMode.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_71_2(*v0);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90885A8()
{
  OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_4_15(v6);
  v8 = *(v5 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B908C5D0(v9);
    v7 = OUTLINED_FUNCTION_73_2(v10);
  }

  v11 = 48;
  if (v2)
  {
    v11 = 24;
  }

  v12 = v8 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  OUTLINED_FUNCTION_211_0(v7, v0 + v11);
  *v12 = v3;
  *(v12 + 8) = v4;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.getter()
{
  v0 = OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_6_2(v0);
  v1 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v1, v2);
  return OUTLINED_FUNCTION_288();
}

void Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_12_21();
  v27 = *(v21 + v23);
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v28 = OUTLINED_FUNCTION_40_0();
    v29 = sub_1B908C5D0(v28);
    v26 = OUTLINED_FUNCTION_135(v29);
  }

  v30 = (v27 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  OUTLINED_FUNCTION_211_0(v26, &a10);
  v31 = *v30;
  v32 = v30[1];
  *v30 = v22;
  v30[1] = v20;
  sub_1B8D538A0(v31, v32);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  OUTLINED_FUNCTION_41();
  v4 = *v0;
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;
  sub_1B8D91FCC(v4, v5);
  return OUTLINED_FUNCTION_105_0();
}

float Apple_Parsec_Search_PegasusQueryContext.uiScale.getter()
{
  v1 = OUTLINED_FUNCTION_10_23();
  v3 = *(v0 + v2) + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale;
  OUTLINED_FUNCTION_6_2(v1);
  return *v3;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.uiScale.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B908C5D0(v7);
    *(v2 + v4) = v6;
  }

  v8 = (v6 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  result = OUTLINED_FUNCTION_18(v6 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale, v10);
  *v8 = a1;
  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.uiScale.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9088970(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 80);
  v6 = *(v2 + 84);
  v7 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v2 + 84);
    v11 = *(v2 + 72);
    OUTLINED_FUNCTION_19_14();
    v12 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = sub_1B908C5D0(v12);
    v9 = isUniquelyReferenced_nonNull_native;
    *(v11 + v10) = isUniquelyReferenced_nonNull_native;
  }

  v13 = 48;
  if (a2)
  {
    v13 = 24;
  }

  v14 = (v9 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v2 + v13);
  *v14 = v5;

  free(v2);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.internalBuild.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9088AB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_30();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4(v1 + v3, v4);
  return *(v1 + v3);
}

void sub_1B9088B00()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_22_15();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B908C5D0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.seedBuild.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9088BDC()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 72);
  v8 = *(*v4 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B908C5D0(v11);
    OUTLINED_FUNCTION_73_2(v12);
  }

  v13 = 48;
  if (v3)
  {
    v13 = 24;
  }

  v14 = *v1;
  OUTLINED_FUNCTION_18(v10 + v14, v5 + v13);
  *(v10 + v14) = v8;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.hsEnabled.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.managedDevice.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.abTestSeed.getter()
{
  OUTLINED_FUNCTION_10_23();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed, v4);
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.abTestSeed.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  result = OUTLINED_FUNCTION_9_3(v7 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed, v6);
  *(v7 + v9) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.abTestSeed.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9088EBC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 80);
  v6 = *(v2 + 84);
  v7 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B908C5D0(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_18(v9 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed, v2 + v12);
  *(v9 + v13) = v5;

  free(v2);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.siriLocale.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B908904C(void *a1)
{
  v1 = OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_6_2(v1);

  return OUTLINED_FUNCTION_288();
}

void sub_1B90890E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v31 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = sub_1B908C5D0(v31);
    v30 = isUniquelyReferenced_nonNull_native;
    *(v27 + v28) = isUniquelyReferenced_nonNull_native;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.region.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.sil.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.ampBaselineExperimentMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.siriResponseLanguageVariant.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAC3A30, &unk_1B96880E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_22_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B908C5D0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_108_6();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A30, &unk_1B96880E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.deviceModel.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.isGenerativeModelDevice.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9089A54(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4(v1 + *a1, v3);
}

void sub_1B9089ACC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_22_15();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B908C5D0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.companionDevice.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9089BD4()
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 48);
  if (v5)
  {
    v6 = v2;

    v6(v7);
  }

  else
  {
    v8 = v1;
    v9 = *(v0 + 64);
    v10 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_19_14();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B908C5D0(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    v15 = *v8;
    OUTLINED_FUNCTION_59_3(v12 + v15);
    *(v12 + v15) = v4;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.deviceMetadata.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  sub_1B8D92024();
  v6 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  OUTLINED_FUNCTION_178(v5, 1, v6);
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 24);
    v9 = type metadata accessor for Useragentpb_Firmware(0);
    __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v9);
    result = OUTLINED_FUNCTION_178(v5, 1, v6);
    if (!v7)
    {
      return sub_1B8D9207C(v5, &qword_1EBAB91A8, &unk_1B964D990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_17();
    return sub_1B908D8BC();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.deviceMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_22_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B908C5D0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_108_6();
  v4 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.deviceMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Useragentpb_DeviceMetadata(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = type metadata accessor for Useragentpb_Firmware(0);
    OUTLINED_FUNCTION_84_6(v13);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB91A8, &unk_1B964D990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.searchOptOut.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.longSecretKey.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.keyboardIme.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.weatherUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    Apple_Parsec_Search_V2_WeatherUnits.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAC3A38, &qword_1B96880F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_16();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.weatherUnits.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_22_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B908C5D0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_108_6();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.weatherUnits.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[8] = 1;
    *(v11 + 2) = 0;
    v11[24] = 1;
    *(v11 + 4) = 0;
    v11[40] = 1;
    *(v11 + 6) = 0;
    v11[56] = 1;
    *(v11 + 8) = 0;
    v11[72] = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A38, &qword_1B96880F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.encryptedAuthToken.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_54(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B908A6E8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = v4;
    OUTLINED_FUNCTION_191();
    v7 = OUTLINED_FUNCTION_461();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_19_14();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B908C5D0(v13);
      isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_73_2(v14);
    }

    v15 = (v12 + *v8);
    OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v0 + 24);
    *v15 = v2;
    v15[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAC3A40, &qword_1B9688100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t sub_1B908A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B908D914();
  return a7(v11);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_22_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B908C5D0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_108_6();
  v4 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A40, &qword_1B9688100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t sub_1B908ACC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9095270();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B908AD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B909521C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B908ADD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90951C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B908AEBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B908AF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.HourFormat.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B908B02C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_PegasusQueryContext.HourFormat.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.devicePolicies.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void (*Apple_Parsec_Search_AppleIntelligenceStatus.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.query.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Apple_Parsec_Search_PegasusSearchQuery.qtype.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.qtype.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1B908B21C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B908B2B0()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*Apple_Parsec_Search_PegasusSearchQuery.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.completions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.origins.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Search_LocalCompletionInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(v0);
  return nullsub_1;
}

uint64_t sub_1B908B548()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3A00);
  __swift_project_value_buffer(v0, qword_1EBAC3A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEVICE_POLICY_TYPE_UNKNOWN";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "DEVICE_POLICY_TYPE_COUNTRY_1";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B908B740()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CF4A8);
  __swift_project_value_buffer(v0, qword_1ED9CF4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1B96880C0;
  v4 = v88 + v3 + v1[14];
  *(v88 + v3) = 1;
  *v4 = "secret_key";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v88 + v3 + v2 + v1[14];
  *(v88 + v3 + v2) = 2;
  *v8 = "country_code";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v88 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v88 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "effective_system_language";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v88 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "preferred_languages";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v88 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "store_front";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v88 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "user_guid";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v88 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "time_zone";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v88 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "sku_region";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  v23 = (v88 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "calendar";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v88 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "temperature_unit";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v88 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "measurement_system";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v88 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hour_format";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  v31 = (v88 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "location";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v7();
  v33 = (v88 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "maps_session";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v88 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "subscriptions";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v88 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "transportation_mode";
  *(v38 + 1) = 19;
  v38[16] = 2;
  v7();
  v39 = (v88 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "installed_apps_signature";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v88 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "ui_scale";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  v43 = (v88 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "internal_build";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v88 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "seed_build";
  *(v46 + 1) = 10;
  v46[16] = 2;
  v7();
  v47 = (v88 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "hs_enabled";
  *(v48 + 1) = 10;
  v48[16] = 2;
  v7();
  v49 = (v88 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "managed_device";
  *(v50 + 1) = 14;
  v50[16] = 2;
  v7();
  v51 = (v88 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "ab_test_seed";
  *(v52 + 1) = 12;
  v52[16] = 2;
  v7();
  v53 = (v88 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 26;
  *v54 = "siri_locale";
  *(v54 + 1) = 11;
  v54[16] = 2;
  v7();
  v55 = (v88 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 27;
  *v56 = "region";
  *(v56 + 1) = 6;
  v56[16] = 2;
  v7();
  v57 = (v88 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 28;
  *v58 = "sil";
  *(v58 + 1) = 3;
  v58[16] = 2;
  v7();
  v59 = (v88 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 29;
  *v60 = "trial_identifiers";
  *(v60 + 1) = 17;
  v60[16] = 2;
  v7();
  v61 = (v88 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 30;
  *v62 = "amp_baseline_experiment_metadata";
  *(v62 + 1) = 32;
  v62[16] = 2;
  v7();
  v63 = (v88 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 31;
  *v64 = "siri_response_language_variant";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v88 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 32;
  *v66 = "marketplace_info";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v88 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 33;
  *v68 = "device_model";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v88 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "is_generative_model_device";
  *(v70 + 1) = 26;
  v70[16] = 2;
  v7();
  v71 = (v88 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "companion_device";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v7();
  v73 = (v88 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "device_metadata";
  *(v74 + 1) = 15;
  v74[16] = 2;
  v7();
  v75 = (v88 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "search_opt_out";
  *(v76 + 1) = 14;
  v76[16] = 2;
  v7();
  v77 = (v88 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "long_secret_key";
  *(v78 + 1) = 15;
  v78[16] = 2;
  v7();
  v79 = (v88 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "keyboard_ime";
  *(v80 + 1) = 12;
  v80[16] = 2;
  v7();
  v81 = (v88 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "weather_units";
  *(v82 + 1) = 13;
  v82[16] = 2;
  v7();
  v83 = (v88 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "encrypted_auth_token";
  *(v84 + 1) = 20;
  v84[16] = 2;
  v7();
  v85 = (v88 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 44;
  *v86 = "apple_intelligence_status";
  *(v86 + 1) = 25;
  v86[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B908C298()
{
  OUTLINED_FUNCTION_19_14();
  result = sub_1B908C328();
  qword_1ED9D38C8 = result;
  return result;
}

uint64_t sub_1B908C328()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location;
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions;
  v7 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers) = v1;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo;
  v15 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice) = v1;
  v17 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata;
  v18 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut) = 0;
  v19 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits;
  v22 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus;
  v25 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  __swift_storeEnumTagSinglePayload(v0 + v24, 1, 1, v25);
  return v0;
}

uint64_t sub_1B908C5D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v185 = v142 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v184 = v142 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v183 = v142 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v181 = v142 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v161 = v142 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v157 = v142 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v154 = v142 - v16;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v143 = (v1 + 64);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 80) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 88) = 0;
  v144 = (v1 + 88);
  *(v1 + 96) = 0xE000000000000000;
  *(v1 + 104) = 0;
  v145 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v146 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  v147 = (v1 + 136);
  *(v1 + 144) = 0xE000000000000000;
  *(v1 + 152) = 0;
  v148 = (v1 + 152);
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  v149 = (v1 + 168);
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  v150 = (v1 + 184);
  *(v1 + 192) = 1;
  *(v1 + 200) = 0;
  v151 = (v1 + 200);
  *(v1 + 208) = 1;
  v17 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location;
  v152 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location;
  v18 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession;
  v153 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession;
  v20 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions;
  v142[1] = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions;
  v22 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  v155 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  *v23 = 0;
  *(v23 + 8) = 1;
  v156 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature) = xmmword_1B9652FE0;
  v158 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale) = 0;
  v159 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild) = 0;
  v160 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild) = 0;
  v162 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled) = 0;
  v163 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice) = 0;
  v164 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed) = 0;
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  v165 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  v166 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  v167 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v168 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  v27 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers) = MEMORY[0x1E69E7CC0];
  v28 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0]);
  v169 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0]);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  v170 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo;
  v171 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo;
  v31 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  v172 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v173 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice) = 0;
  v174 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice) = v27;
  v33 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata;
  v175 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata;
  v34 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v33, 1, 1, v34);
  v176 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut) = 0;
  v35 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  v177 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  v178 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits;
  v179 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits;
  v38 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(0);
  __swift_storeEnumTagSinglePayload(v1 + v37, 1, 1, v38);
  v39 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  v180 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v40 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus;
  v182 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus;
  v41 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  __swift_storeEnumTagSinglePayload(v1 + v40, 1, 1, v41);
  swift_beginAccess();
  v43 = *(a1 + 16);
  v42 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v43;
  *(v1 + 24) = v42;
  swift_beginAccess();
  v44 = *(a1 + 32);
  v45 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v44;
  *(v1 + 40) = v45;

  swift_beginAccess();
  v47 = *(a1 + 48);
  v46 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v47;
  *(v1 + 56) = v46;

  swift_beginAccess();
  v49 = *(a1 + 64);
  v48 = *(a1 + 72);
  v50 = v143;
  swift_beginAccess();
  *v50 = v49;
  *(v1 + 72) = v48;

  swift_beginAccess();
  v51 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v51;

  swift_beginAccess();
  v53 = *(a1 + 88);
  v52 = *(a1 + 96);
  v54 = v144;
  swift_beginAccess();
  *v54 = v53;
  *(v1 + 96) = v52;

  swift_beginAccess();
  v56 = *(a1 + 104);
  v55 = *(a1 + 112);
  v57 = v145;
  swift_beginAccess();
  *v57 = v56;
  *(v1 + 112) = v55;

  swift_beginAccess();
  v59 = *(a1 + 120);
  v58 = *(a1 + 128);
  v60 = v146;
  swift_beginAccess();
  *v60 = v59;
  *(v1 + 128) = v58;

  swift_beginAccess();
  v62 = *(a1 + 136);
  v61 = *(a1 + 144);
  v63 = v147;
  swift_beginAccess();
  *v63 = v62;
  *(v1 + 144) = v61;

  swift_beginAccess();
  v65 = *(a1 + 152);
  v64 = *(a1 + 160);
  v66 = v148;
  swift_beginAccess();
  *v66 = v65;
  *(v1 + 160) = v64;

  swift_beginAccess();
  v67 = *(a1 + 168);
  LOBYTE(v51) = *(a1 + 176);
  v68 = v149;
  swift_beginAccess();
  *v68 = v67;
  *(v1 + 176) = v51;
  swift_beginAccess();
  v69 = *(a1 + 184);
  LOBYTE(v51) = *(a1 + 192);
  v70 = v150;
  swift_beginAccess();
  *v70 = v69;
  *(v1 + 192) = v51;
  swift_beginAccess();
  v71 = *(a1 + 200);
  LOBYTE(v51) = *(a1 + 208);
  v72 = v151;
  swift_beginAccess();
  *v72 = v71;
  *(v1 + 208) = v51;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v73 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode);
  swift_beginAccess();
  v74 = *v73;
  LOBYTE(v73) = *(v73 + 8);
  v75 = v155;
  swift_beginAccess();
  *v75 = v74;
  *(v75 + 8) = v73;
  v76 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  v79 = v156;
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];
  *v79 = v78;
  v79[1] = v77;
  sub_1B8D91FCC(v78, v77);
  sub_1B8D538A0(v80, v81);
  v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  swift_beginAccess();
  v83 = *v82;
  v84 = v158;
  swift_beginAccess();
  *v84 = v83;
  v85 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v159;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
  swift_beginAccess();
  LOBYTE(v87) = *(a1 + v87);
  v88 = v160;
  swift_beginAccess();
  *(v1 + v88) = v87;
  v89 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
  swift_beginAccess();
  LOBYTE(v89) = *(a1 + v89);
  v90 = v162;
  swift_beginAccess();
  *(v1 + v90) = v89;
  v91 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
  swift_beginAccess();
  LOBYTE(v91) = *(a1 + v91);
  v92 = v163;
  swift_beginAccess();
  *(v1 + v92) = v91;
  v93 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  swift_beginAccess();
  LODWORD(v93) = *(a1 + v93);
  v94 = v164;
  swift_beginAccess();
  *(v1 + v94) = v93;
  v95 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  swift_beginAccess();
  v97 = *v95;
  v96 = v95[1];
  v98 = v165;
  swift_beginAccess();
  *v98 = v97;
  v98[1] = v96;

  v99 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  swift_beginAccess();
  v101 = *v99;
  v100 = v99[1];
  v102 = v166;
  swift_beginAccess();
  *v102 = v101;
  v102[1] = v100;

  v103 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  swift_beginAccess();
  v105 = *v103;
  v104 = v103[1];
  v106 = v167;
  swift_beginAccess();
  *v106 = v105;
  v106[1] = v104;

  v107 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v108 = *(a1 + v107);
  v109 = v168;
  swift_beginAccess();
  *(v1 + v109) = v108;

  v110 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0]);
  swift_beginAccess();
  v112 = *v110;
  v111 = v110[1];
  v113 = v169;
  swift_beginAccess();
  *v113 = v112;
  v113[1] = v111;

  v114 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  swift_beginAccess();
  v116 = *v114;
  v115 = v114[1];
  v117 = v170;
  swift_beginAccess();
  *v117 = v116;
  v117[1] = v115;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v118 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  swift_beginAccess();
  v120 = *v118;
  v119 = v118[1];
  v121 = v172;
  swift_beginAccess();
  *v121 = v120;
  v121[1] = v119;

  v122 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
  swift_beginAccess();
  LOBYTE(v122) = *(a1 + v122);
  v123 = v173;
  swift_beginAccess();
  *(v1 + v123) = v122;
  v124 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  swift_beginAccess();
  v125 = *(a1 + v124);
  v126 = v174;
  swift_beginAccess();
  *(v1 + v126) = v125;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v127 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
  swift_beginAccess();
  LOBYTE(v127) = *(a1 + v127);
  v128 = v176;
  swift_beginAccess();
  *(v1 + v128) = v127;
  v129 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  swift_beginAccess();
  v131 = *v129;
  v130 = v129[1];
  v132 = v177;
  swift_beginAccess();
  *v132 = v131;
  v132[1] = v130;

  v133 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  swift_beginAccess();
  v135 = *v133;
  v134 = v133[1];
  v136 = v178;
  swift_beginAccess();
  *v136 = v135;
  v136[1] = v134;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v137 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  swift_beginAccess();
  v139 = *v137;
  v138 = v137[1];
  v140 = v180;
  swift_beginAccess();
  *v140 = v139;
  v140[1] = v138;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B908D8BC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B908D914()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B908D96C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B908D9E0()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location, &qword_1EBAC3A18, &qword_1B96880D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession, &qword_1EBAC3A20, &qword_1B96880D8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions, &qword_1EBAC3A28, &qword_1B96880E0);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature), *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature + 8));

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo, &qword_1EBAC3A30, &unk_1B96880E8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata, &qword_1EBAB91A8, &unk_1B964D990);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits, &qword_1EBAC3A38, &qword_1B96880F8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus, &qword_1EBAC3A40, &qword_1B9688100);
  return v0;
}

uint64_t sub_1B908DC10()
{
  v0 = sub_1B908D9E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B908C5D0(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B908DD04(v10, a1, a2, a3);
}

uint64_t sub_1B908DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C(a2, a1);
        continue;
      case 2:
        sub_1B8DC46F4(a2, a1);
        continue;
      case 3:
        sub_1B8DC4778(a2, a1);
        continue;
      case 4:
        sub_1B8E16ACC(a2, a1);
        continue;
      case 5:
        sub_1B8E88AE0(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B8E6D9F8(a2, a1);
        continue;
      case 7:
        sub_1B8EC1004(a2, a1);
        continue;
      case 8:
        sub_1B8E16CDC(a2, a1);
        continue;
      case 9:
        sub_1B8F44964(a2, a1);
        continue;
      case 10:
        sub_1B8E71960(a2, a1);
        continue;
      case 11:
        sub_1B908E160(a2, a1, a3, a4);
        continue;
      case 12:
        sub_1B908E1F4(a2, a1, a3, a4);
        continue;
      case 13:
        sub_1B908E288(a2, a1, a3, a4);
        continue;
      case 14:
        sub_1B908E31C(a2, a1, a3, a4);
        continue;
      case 15:
        sub_1B908E3F8(a2, a1, a3, a4);
        continue;
      case 16:
        sub_1B908E4D4(a2, a1, a3, a4);
        continue;
      case 17:
        sub_1B908E5B0(a2, a1, a3, a4);
        continue;
      case 18:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature;
        v12 = MEMORY[0x1E69AAC78];
        goto LABEL_42;
      case 19:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale;
        v14 = MEMORY[0x1E69AAC88];
        goto LABEL_36;
      case 20:
      case 21:
      case 22:
      case 23:
      case 34:
      case 37:
        sub_1B908EA40();
        continue;
      case 24:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
        v14 = MEMORY[0x1E69AAC98];
LABEL_36:
        sub_1B908E64C(a2, a1, a3, a4, v13, v14);
        continue;
      case 26:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale;
        goto LABEL_41;
      case 27:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region;
        goto LABEL_41;
      case 28:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil;
        goto LABEL_41;
      case 29:
        sub_1B908E6D0(a2, a1, a3, a4);
        continue;
      case 30:
        v11 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata;
        goto LABEL_41;
      case 31:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant;
        goto LABEL_41;
      case 32:
        sub_1B908E7AC(a2, a1, a3, a4);
        continue;
      case 33:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel;
        goto LABEL_41;
      case 35:
        sub_1B908E888(a2, a1, a3, a4);
        continue;
      case 36:
        sub_1B908E964(a2, a1, a3, a4);
        continue;
      case 38:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey;
        goto LABEL_41;
      case 39:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme;
        goto LABEL_41;
      case 40:
        sub_1B908EAC0(a2, a1, a3, a4);
        continue;
      case 41:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken;
LABEL_41:
        v12 = MEMORY[0x1E69AACE0];
LABEL_42:
        sub_1B908EB9C(a2, a1, a3, a4, v11, v12);
        break;
      case 44:
        sub_1B908EC20(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B908E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9095270();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B909521C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90951C8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  sub_1B8CD2600(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location, protocol conformance descriptor for Apple_Parsec_Search_V2_Location);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  sub_1B8CD2600(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession, protocol conformance descriptor for Apple_Parsec_Search_V2_MapsSession);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  sub_1B8CD2600(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions, protocol conformance descriptor for Apple_Parsec_Search_V2_Subscriptions);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90952C4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_174_2();
  a6(v7);
  return swift_endAccess();
}

uint64_t sub_1B908E6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Trialpb_TrialExperiment(0);
  sub_1B8CD2600(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment, protocol conformance descriptor for Trialpb_TrialExperiment);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B908E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  sub_1B8CD2600(&qword_1EBAB48C8, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo, protocol conformance descriptor for Apple_Parsec_Search_V2_MarketplaceInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Useragentpb_CompanionDevice(0);
  sub_1B8CD2600(&qword_1EBABE1B8, type metadata accessor for Useragentpb_CompanionDevice, protocol conformance descriptor for Useragentpb_CompanionDevice);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B908E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Useragentpb_DeviceMetadata(0);
  sub_1B8CD2600(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata, protocol conformance descriptor for Useragentpb_DeviceMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908EA40()
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B908EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(0);
  sub_1B8CD2600(&qword_1EBAB4C40, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits, protocol conformance descriptor for Apple_Parsec_Search_V2_WeatherUnits);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_174_2();
  a6(v7);
  return swift_endAccess();
}

uint64_t sub_1B908EC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus, protocol conformance descriptor for Apple_Parsec_Search_AppleIntelligenceStatus);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B908ED60(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B908ED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v110 - v7;
  v114 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v110 = &v110 - v10;
  v111 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v118 = &v110 - v13;
  v117 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = &v110 - v16;
  v120 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v136 = &v110 - v19;
  v124 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v126 = &v110 - v22;
  v127 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v110 - v25;
  v27 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v29 = *(a1 + 24);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 40);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 56);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 72);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 80) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 96);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v39 = *(a1 + 112);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 128);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 144);
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = *(a1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
    goto LABEL_44;
  }

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_44:
  swift_beginAccess();
  v45 = *(a1 + 160);
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 168) || (v48 = *(a1 + 176), v134 = *(a1 + 168), v135 = v48, sub_1B9095270(), result = sub_1B964C680(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 184) || (v49 = *(a1 + 192), v132 = *(a1 + 184), v133 = v49, sub_1B909521C(), result = sub_1B964C680(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 200) || (v50 = *(a1 + 208), v130 = *(a1 + 200), v131 = v50, sub_1B90951C8(), result = sub_1B964C680(), !v4))
      {
        swift_beginAccess();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
        {
          sub_1B8D9207C(v26, &qword_1EBAC3A18, &qword_1B96880D0);
          v51 = v4;
        }

        else
        {
          sub_1B908D8BC();
          sub_1B8CD2600(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location, protocol conformance descriptor for Apple_Parsec_Search_V2_Location);
          sub_1B964C740();
          v51 = v4;
          if (v4)
          {
            return sub_1B908D96C();
          }

          sub_1B908D96C();
        }

        swift_beginAccess();
        v52 = v126;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v52, 1, v127) == 1)
        {
          sub_1B8D9207C(v52, &qword_1EBAC3A20, &qword_1B96880D8);
          v53 = v136;
        }

        else
        {
          sub_1B908D8BC();
          sub_1B8CD2600(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession, protocol conformance descriptor for Apple_Parsec_Search_V2_MapsSession);
          sub_1B964C740();
          v53 = v136;
          if (v51)
          {
            return sub_1B908D96C();
          }

          sub_1B908D96C();
        }

        swift_beginAccess();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v53, 1, v124) == 1)
        {
          sub_1B8D9207C(v53, &qword_1EBAC3A28, &qword_1B96880E0);
        }

        else
        {
          sub_1B908D8BC();
          sub_1B8CD2600(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions, protocol conformance descriptor for Apple_Parsec_Search_V2_Subscriptions);
          sub_1B964C740();
          if (v51)
          {
            return sub_1B908D96C();
          }

          sub_1B908D96C();
        }

        v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode);
        swift_beginAccess();
        if (!*v54 || (v55 = *(v54 + 8), v128 = *v54, v129 = v55, sub_1B90952C4(), result = sub_1B964C680(), !v51))
        {
          v56 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature;
          swift_beginAccess();
          if (!sub_1B8D99EA8(*v56, *(v56 + 8)))
          {
            v57 = *v56;
            v58 = *(v56 + 8);
            sub_1B8D91FCC(v57, v58);
            sub_1B964C6A0();
            if (v51)
            {
              return sub_1B8D538A0(v57, v58);
            }

            sub_1B8D538A0(v57, v58);
          }

          v59 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
          swift_beginAccess();
          if (*v59 == 0.0 || (result = sub_1B964C6B0(), !v51))
          {
            v60 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
            swift_beginAccess();
            if (*(a1 + v60) == 1)
            {
              result = sub_1B964C670();
              v61 = v51;
              if (v51)
              {
                return result;
              }
            }

            else
            {
              v61 = v51;
            }

            v62 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
            swift_beginAccess();
            if (*(a1 + v62) != 1 || (result = sub_1B964C670(), !v61))
            {
              v63 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
              swift_beginAccess();
              if (*(a1 + v63) != 1 || (result = sub_1B964C670(), !v61))
              {
                v64 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
                swift_beginAccess();
                if (*(a1 + v64) != 1 || (result = sub_1B964C670(), !v61))
                {
                  v65 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
                  swift_beginAccess();
                  if (!*(a1 + v65) || (result = sub_1B964C6C0(), !v61))
                  {
                    v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
                    swift_beginAccess();
                    v67 = *v66;
                    v68 = v66[1];
                    v69 = HIBYTE(v68) & 0xF;
                    if ((v68 & 0x2000000000000000) == 0)
                    {
                      v69 = v67 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v69)
                    {

                      sub_1B964C700();
                      if (v61)
                      {
                      }
                    }

                    v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
                    swift_beginAccess();
                    v71 = *v70;
                    v72 = v70[1];
                    v73 = HIBYTE(v72) & 0xF;
                    if ((v72 & 0x2000000000000000) == 0)
                    {
                      v73 = v71 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v73)
                    {

                      sub_1B964C700();
                      if (v61)
                      {
                      }
                    }

                    v74 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
                    swift_beginAccess();
                    v75 = *v74;
                    v76 = v74[1];
                    v77 = HIBYTE(v76) & 0xF;
                    if ((v76 & 0x2000000000000000) == 0)
                    {
                      v77 = v75 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v77)
                    {

                      sub_1B964C700();
                      if (v61)
                      {
                      }
                    }

                    v78 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
                    swift_beginAccess();
                    if (*(*(a1 + v78) + 16))
                    {
                      type metadata accessor for Trialpb_TrialExperiment(0);
                      sub_1B8CD2600(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment, protocol conformance descriptor for Trialpb_TrialExperiment);

                      sub_1B964C730();
                      if (v61)
                      {
                      }
                    }

                    v79 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0]);
                    swift_beginAccess();
                    v80 = *v79;
                    v81 = v79[1];
                    v82 = HIBYTE(v81) & 0xF;
                    if ((v81 & 0x2000000000000000) == 0)
                    {
                      v82 = v80 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v82)
                    {

                      sub_1B964C700();
                      if (v61)
                      {
                      }
                    }

                    v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
                    swift_beginAccess();
                    v84 = *v83;
                    v85 = v83[1];
                    v86 = HIBYTE(v85) & 0xF;
                    if ((v85 & 0x2000000000000000) == 0)
                    {
                      v86 = v84 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v86)
                    {

                      sub_1B964C700();
                      if (v61)
                      {
                      }
                    }

                    swift_beginAccess();
                    v87 = v121;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v87, 1, v120) == 1)
                    {
                      sub_1B8D9207C(v121, &qword_1EBAC3A30, &unk_1B96880E8);
                    }

                    else
                    {
                      sub_1B908D8BC();
                      sub_1B8CD2600(&qword_1EBAB48C8, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo, protocol conformance descriptor for Apple_Parsec_Search_V2_MarketplaceInfo);
                      sub_1B964C740();
                      if (v61)
                      {
                        return sub_1B908D96C();
                      }

                      sub_1B908D96C();
                    }

                    v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
                    swift_beginAccess();
                    v89 = *v88;
                    v90 = v88[1];
                    v91 = HIBYTE(v90) & 0xF;
                    if ((v90 & 0x2000000000000000) == 0)
                    {
                      v91 = v89 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v91)
                    {

                      sub_1B964C700();
                      if (v61)
                      {
                      }
                    }

                    v92 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
                    swift_beginAccess();
                    if (*(a1 + v92) != 1 || (result = sub_1B964C670(), !v61))
                    {
                      v93 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
                      swift_beginAccess();
                      if (*(*(a1 + v93) + 16))
                      {
                        type metadata accessor for Useragentpb_CompanionDevice(0);
                        sub_1B8CD2600(&qword_1EBABE1B8, type metadata accessor for Useragentpb_CompanionDevice, protocol conformance descriptor for Useragentpb_CompanionDevice);

                        sub_1B964C730();
                        if (v61)
                        {
                        }
                      }

                      swift_beginAccess();
                      v94 = v118;
                      sub_1B8D92024();
                      if (__swift_getEnumTagSinglePayload(v94, 1, v117) == 1)
                      {
                        sub_1B8D9207C(v118, &qword_1EBAB91A8, &unk_1B964D990);
                      }

                      else
                      {
                        sub_1B908D8BC();
                        sub_1B8CD2600(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata, protocol conformance descriptor for Useragentpb_DeviceMetadata);
                        sub_1B964C740();
                        if (v61)
                        {
                          return sub_1B908D96C();
                        }

                        sub_1B908D96C();
                      }

                      v95 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
                      swift_beginAccess();
                      if (*(a1 + v95) != 1 || (result = sub_1B964C670(), !v61))
                      {
                        v96 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
                        swift_beginAccess();
                        v97 = *v96;
                        v98 = v96[1];
                        v99 = HIBYTE(v98) & 0xF;
                        if ((v98 & 0x2000000000000000) == 0)
                        {
                          v99 = v97 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v99)
                        {

                          sub_1B964C700();
                          if (v61)
                          {
                          }
                        }

                        v100 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
                        swift_beginAccess();
                        v101 = *v100;
                        v102 = v100[1];
                        v103 = HIBYTE(v102) & 0xF;
                        if ((v102 & 0x2000000000000000) == 0)
                        {
                          v103 = v101 & 0xFFFFFFFFFFFFLL;
                        }

                        if (!v103)
                        {
                          goto LABEL_150;
                        }

                        sub_1B964C700();
                        if (!v61)
                        {

LABEL_150:
                          swift_beginAccess();
                          v104 = v110;
                          sub_1B8D92024();
                          if (__swift_getEnumTagSinglePayload(v104, 1, v111) == 1)
                          {
                            sub_1B8D9207C(v110, &qword_1EBAC3A38, &qword_1B96880F8);
                          }

                          else
                          {
                            sub_1B908D8BC();
                            sub_1B8CD2600(&qword_1EBAB4C40, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits, protocol conformance descriptor for Apple_Parsec_Search_V2_WeatherUnits);
                            sub_1B964C740();
                            if (v61)
                            {
                              return sub_1B908D96C();
                            }

                            sub_1B908D96C();
                          }

                          v105 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
                          swift_beginAccess();
                          v106 = *v105;
                          v107 = v105[1];
                          v108 = HIBYTE(v107) & 0xF;
                          if ((v107 & 0x2000000000000000) == 0)
                          {
                            v108 = v106 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v108)
                          {

                            sub_1B964C700();
                            if (v61)
                            {
                            }
                          }

                          swift_beginAccess();
                          v109 = v113;
                          sub_1B8D92024();
                          if (__swift_getEnumTagSinglePayload(v109, 1, v114) == 1)
                          {
                            return sub_1B8D9207C(v113, &qword_1EBAC3A40, &qword_1B9688100);
                          }

                          sub_1B908D8BC();
                          sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus, protocol conformance descriptor for Apple_Parsec_Search_AppleIntelligenceStatus);
                          sub_1B964C740();
                          return sub_1B908D96C();
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

  return result;
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_10_23();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B9090820(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B9090820(uint64_t a1, void *a2)
{
  v294 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v296 = v5;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B10, &qword_1B9688E70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v297 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v295 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_266_0();
  v293 = v12;
  v13 = OUTLINED_FUNCTION_201();
  v289 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v290 = v15;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B18, &unk_1B9688E78);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v291 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  v288 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_266_0();
  v287 = v22;
  v23 = OUTLINED_FUNCTION_201();
  v283 = type metadata accessor for Useragentpb_DeviceMetadata(v23);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21();
  v284 = v25;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B0, &unk_1B96670A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_185();
  v285 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  v29 = OUTLINED_FUNCTION_183(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v282 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_266_0();
  v281 = v32;
  v33 = OUTLINED_FUNCTION_201();
  v301 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(v33);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21();
  v279 = v35;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B20, &qword_1B9688E88);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_185();
  v302 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  v39 = OUTLINED_FUNCTION_183(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44_0();
  v299 = v40;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_266_0();
  v300 = v42;
  v43 = OUTLINED_FUNCTION_201();
  v307 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(v43);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_21();
  v303 = v45;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B28, &unk_1B9688E90);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_185();
  v308 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  v49 = OUTLINED_FUNCTION_183(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44_0();
  v304 = v50;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_266_0();
  v313 = v52;
  v53 = OUTLINED_FUNCTION_201();
  v311 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(v53);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_21();
  v305 = v55;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B30, &unk_1B968AE60);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_185();
  v312 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  v59 = OUTLINED_FUNCTION_183(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44_0();
  v309 = v60;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_266_0();
  v314 = v62;
  v63 = OUTLINED_FUNCTION_201();
  v64 = type metadata accessor for Apple_Parsec_Search_V2_Location(v63);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B38, &unk_1B9688EA0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_185();
  v315 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  v70 = OUTLINED_FUNCTION_183(v69);
  v71 = MEMORY[0x1EEE9AC00](v70);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v279 - v72;
  OUTLINED_FUNCTION_521(a1 + 16, v397);
  v74 = *(a1 + 16);
  v75 = *(a1 + 24);
  OUTLINED_FUNCTION_521((a2 + 2), v396);
  v76 = v74 == a2[2] && v75 == a2[3];
  if (!v76 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v395);
  v77 = *(a1 + 32);
  v78 = *(a1 + 40);
  OUTLINED_FUNCTION_521((a2 + 4), v394);
  v79 = v77 == a2[4] && v78 == a2[5];
  if (!v79 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 48, v393);
  v80 = *(a1 + 48);
  v81 = *(a1 + 56);
  OUTLINED_FUNCTION_521((a2 + 6), v392);
  v82 = v80 == a2[6] && v81 == a2[7];
  if (!v82 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 64, &v391);
  v83 = *(a1 + 64);
  v84 = *(a1 + 72);
  OUTLINED_FUNCTION_521((a2 + 8), &v390);
  v85 = v83 == a2[8] && v84 == a2[9];
  if (!v85 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 80, &v389);
  v86 = *(a1 + 80);
  OUTLINED_FUNCTION_521((a2 + 10), &v388);
  if ((sub_1B8D6123C(v86, a2[10]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 88, &v387);
  v87 = *(a1 + 88);
  v88 = *(a1 + 96);
  OUTLINED_FUNCTION_521((a2 + 11), &v386);
  v89 = v87 == a2[11] && v88 == a2[12];
  if (!v89 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 104, &v385);
  v90 = *(a1 + 104);
  v91 = *(a1 + 112);
  OUTLINED_FUNCTION_521((a2 + 13), &v384);
  v92 = v90 == a2[13] && v91 == a2[14];
  if (!v92 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 120, &v383);
  v93 = *(a1 + 120);
  v94 = *(a1 + 128);
  OUTLINED_FUNCTION_521((a2 + 15), &v382);
  v95 = v93 == a2[15] && v94 == a2[16];
  if (!v95 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 136, &v381);
  v96 = *(a1 + 136);
  v97 = *(a1 + 144);
  OUTLINED_FUNCTION_521((a2 + 17), &v380);
  v98 = v96 == a2[17] && v97 == a2[18];
  if (!v98 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 152, &v379);
  v99 = *(a1 + 152);
  v100 = *(a1 + 160);
  OUTLINED_FUNCTION_521((a2 + 19), &v378);
  v101 = v99 == a2[19] && v100 == a2[20];
  if (!v101 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 168, &v377);
  v102 = *(a1 + 168);
  v103 = *(a1 + 176);
  OUTLINED_FUNCTION_521((a2 + 21), &v376);
  if (!sub_1B8D92198(v102, v103, a2[21]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 184, &v375);
  v104 = *(a1 + 184);
  v105 = *(a1 + 192);
  OUTLINED_FUNCTION_521((a2 + 23), &v374);
  if (!sub_1B8D92198(v104, v105, a2[23]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 200, &v373);
  v106 = *(a1 + 200);
  v107 = *(a1 + 208);
  OUTLINED_FUNCTION_521((a2 + 25), &v372);
  if (!sub_1B8D92198(v106, v107, a2[25]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location, &v371);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location, &v370);
  v108 = *(v66 + 48);
  v109 = v315;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v109, 1, v64);
  if (v76)
  {

    sub_1B8D9207C(v73, &qword_1EBAC3A18, &qword_1B96880D0);
    OUTLINED_FUNCTION_178(v109 + v108, 1, v64);
    if (v76)
    {
      sub_1B8D9207C(v109, &qword_1EBAC3A18, &qword_1B96880D0);
      goto LABEL_60;
    }

LABEL_58:
    v111 = &qword_1EBAC3B38;
    v112 = &unk_1B9688EA0;
    v113 = v109;
LABEL_135:
    sub_1B8D9207C(v113, v111, v112);
LABEL_136:

    return 0;
  }

  OUTLINED_FUNCTION_205();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v109 + v108, 1, v64);
  if (v110)
  {

    sub_1B8D9207C(v73, &qword_1EBAC3A18, &qword_1B96880D0);
    sub_1B908D96C();
    goto LABEL_58;
  }

  sub_1B908D8BC();

  static Apple_Parsec_Search_V2_Location.== infix(_:_:)();
  v115 = v114;
  sub_1B908D96C();
  sub_1B8D9207C(v73, &qword_1EBAC3A18, &qword_1B96880D0);
  sub_1B908D96C();
  sub_1B8D9207C(v109, &qword_1EBAC3A18, &qword_1B96880D0);
  if ((v115 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_60:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession, &v369);
  v116 = v314;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession, &v368);
  v117 = *(v310 + 48);
  v118 = v312;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v119 = OUTLINED_FUNCTION_355();
  v120 = v311;
  OUTLINED_FUNCTION_178(v119, v121, v311);
  if (v76)
  {
    sub_1B8D9207C(v116, &qword_1EBAC3A20, &qword_1B96880D8);
    OUTLINED_FUNCTION_178(v118 + v117, 1, v120);
    v122 = v313;
    if (v76)
    {
      sub_1B8D9207C(v118, &qword_1EBAC3A20, &qword_1B96880D8);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v118 + v117, 1, v120);
  v122 = v313;
  if (v123)
  {
    sub_1B8D9207C(v314, &qword_1EBAC3A20, &qword_1B96880D8);
    sub_1B908D96C();
LABEL_68:
    v111 = &qword_1EBAC3B30;
    v112 = &unk_1B968AE60;
    v113 = v118;
    goto LABEL_135;
  }

  sub_1B908D8BC();
  v124 = OUTLINED_FUNCTION_205();
  static Apple_Parsec_Search_V2_MapsSession.== infix(_:_:)(v124);
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_189(v314);
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_86_5();
  if ((&qword_1B96880D8 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_70:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions, &v367);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions, &v366);
  v125 = *(v306 + 48);
  v126 = v308;
  OUTLINED_FUNCTION_81_1();
  sub_1B8D92024();
  v127 = OUTLINED_FUNCTION_355();
  v128 = v307;
  OUTLINED_FUNCTION_178(v127, v129, v307);
  if (v76)
  {
    sub_1B8D9207C(v122, &qword_1EBAC3A28, &qword_1B96880E0);
    OUTLINED_FUNCTION_178(v126 + v125, 1, v128);
    if (v76)
    {
      sub_1B8D9207C(v126, &qword_1EBAC3A28, &qword_1B96880E0);
      goto LABEL_75;
    }

    goto LABEL_134;
  }

  v211 = v304;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v126 + v125, 1, v128);
  if (v212)
  {
    sub_1B8D9207C(v122, &qword_1EBAC3A28, &qword_1B96880E0);
    sub_1B908D96C();
LABEL_134:
    v111 = &qword_1EBAC3B28;
    v112 = &unk_1B9688E90;
    v113 = v126;
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_6_18();
  v214 = v303;
  sub_1B908D8BC();
  if ((MEMORY[0x1BFADC060](*v211, v211[1], *v214, v214[1]) & 1) == 0)
  {
    sub_1B908D96C();
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v218, v219, v220);
    OUTLINED_FUNCTION_128_4();
    OUTLINED_FUNCTION_112_1();
    goto LABEL_135;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v215, v216, MEMORY[0x1E69AAC10]);
  v217 = sub_1B964C850();
  sub_1B908D96C();
  OUTLINED_FUNCTION_189(v122);
  sub_1B908D96C();
  OUTLINED_FUNCTION_86_5();
  if ((v217 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_75:
  v130 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  v131 = OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode, &v365);
  v132 = *v130;
  v133 = *(v130 + 8);
  v134 = (a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode);
  OUTLINED_FUNCTION_30_11(v131, &v364);
  if (!sub_1B8D92198(v132, v133, *v134))
  {
    goto LABEL_136;
  }

  v135 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  v136 = OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature, &v363);
  v138 = *v135;
  v137 = v135[1];
  v139 = (a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  OUTLINED_FUNCTION_30_11(v136, &v362);
  v141 = *v139;
  v140 = v139[1];
  sub_1B8D91FCC(v138, v137);
  sub_1B8D91FCC(v141, v140);
  v142 = MEMORY[0x1BFADC060](v138, v137, v141, v140);
  sub_1B8D538A0(v141, v140);
  sub_1B8D538A0(v138, v137);
  if ((v142 & 1) == 0)
  {
    goto LABEL_136;
  }

  v143 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale, &v361);
  v144 = *v143;
  v145 = (a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale, &v360);
  if (v144 != *v145)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild, &v359);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild, &v358);
  OUTLINED_FUNCTION_43_4();
  if (!v76)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild, &v357);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild, &v356);
  OUTLINED_FUNCTION_43_4();
  if (!v76)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled, &v355);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled, &v354);
  OUTLINED_FUNCTION_43_4();
  if (!v76)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice, &v353);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice, &v352);
  OUTLINED_FUNCTION_43_4();
  if (!v76)
  {
    goto LABEL_136;
  }

  v146 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed, &v351);
  LODWORD(v146) = *(a1 + v146);
  v147 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  v148 = OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed, &v350);
  if (v146 != *(a2 + v147))
  {
    goto LABEL_136;
  }

  v149 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale;
  v150 = OUTLINED_FUNCTION_79_1(v148, &v349);
  v151 = *(v149 + 8);
  OUTLINED_FUNCTION_30_11(v150, &v348);
  OUTLINED_FUNCTION_54_4();
  if (!v76 || v151 != v153)
  {
    v152 = OUTLINED_FUNCTION_120_0();
    if ((v152 & 1) == 0)
    {
      goto LABEL_136;
    }
  }

  v155 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region;
  v156 = OUTLINED_FUNCTION_79_1(v152, &v347);
  v157 = *(v155 + 8);
  OUTLINED_FUNCTION_30_11(v156, &v346);
  OUTLINED_FUNCTION_54_4();
  if (!v76 || v157 != v159)
  {
    v158 = OUTLINED_FUNCTION_120_0();
    if ((v158 & 1) == 0)
    {
      goto LABEL_136;
    }
  }

  v161 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil;
  v162 = OUTLINED_FUNCTION_79_1(v158, &v345);
  v163 = *(v161 + 8);
  OUTLINED_FUNCTION_30_11(v162, &v344);
  OUTLINED_FUNCTION_54_4();
  v165 = v76 && v163 == v164;
  if (!v165 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  v166 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers, &v343);
  v167 = *(a1 + v166);
  v168 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers, &v342);
  v169 = *(a2 + v168);

  sub_1B8D8C25C(v167, v169);
  v171 = v170;

  if ((v171 & 1) == 0)
  {
    goto LABEL_136;
  }

  v173 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0];
  v174 = OUTLINED_FUNCTION_79_1(v172, &v341);
  v175 = *(v173 + 8);
  OUTLINED_FUNCTION_30_11(v174, &v340);
  OUTLINED_FUNCTION_54_4();
  if (!v76 || v175 != v177)
  {
    v176 = OUTLINED_FUNCTION_120_0();
    if ((v176 & 1) == 0)
    {
      goto LABEL_136;
    }
  }

  v179 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant;
  v180 = OUTLINED_FUNCTION_79_1(v176, &v339);
  v181 = *(v179 + 8);
  OUTLINED_FUNCTION_30_11(v180, &v338);
  OUTLINED_FUNCTION_54_4();
  v183 = v76 && v181 == v182;
  if (!v183 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo, &v337);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo, &v336);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v184 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v184, v185, v301);
  if (v76)
  {
    sub_1B8D9207C(v300, &qword_1EBAC3A30, &unk_1B96880E8);
    v186 = OUTLINED_FUNCTION_105_2(v302);
    OUTLINED_FUNCTION_178(v186, v187, v188);
    if (v76)
    {
      v189 = sub_1B8D9207C(v302, &qword_1EBAC3A30, &unk_1B96880E8);
      goto LABEL_118;
    }

    goto LABEL_145;
  }

  sub_1B8D92024();
  v221 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v221, v222, v301);
  if (v223)
  {
    sub_1B8D9207C(v300, &qword_1EBAC3A30, &unk_1B96880E8);
    sub_1B908D96C();
LABEL_145:
    v111 = &qword_1EBAC3B20;
    v112 = &qword_1B9688E88;
    v113 = v302;
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_5_21();
  v224 = v279;
  sub_1B908D8BC();
  if (*v299 != *v224 || (sub_1B8D74510(*(v299 + 1), *(v279 + 1)), (v225 & 1) == 0))
  {
    sub_1B8D9207C(v300, &qword_1EBAC3A30, &unk_1B96880E8);
    sub_1B908D96C();
    sub_1B908D96C();
    v113 = v302;
    v111 = &qword_1EBAC3A30;
    v112 = &unk_1B96880E8;
    goto LABEL_135;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v226, v227, MEMORY[0x1E69AAC10]);
  v228 = sub_1B964C850();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v229, v230, v231);
  sub_1B908D96C();
  sub_1B908D96C();
  OUTLINED_FUNCTION_112_1();
  v189 = sub_1B8D9207C(v232, v233, v234);
  if ((v228 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_118:
  v190 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel;
  v191 = OUTLINED_FUNCTION_79_1(v189, &v335);
  v192 = *(v190 + 8);
  OUTLINED_FUNCTION_30_11(v191, &v334);
  OUTLINED_FUNCTION_54_4();
  v194 = v76 && v192 == v193;
  if (!v194 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice, &v333);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice, &v332);
  OUTLINED_FUNCTION_43_4();
  if (!v76)
  {
    goto LABEL_136;
  }

  v195 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice, &v331);
  v196 = *(a1 + v195);
  v197 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice, &v330);
  v198 = *(a2 + v197);

  sub_1B8D8C4B8(v196, v198, v199, v200, v201, v202, v203, v204, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
  v206 = v205;

  if ((v206 & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata, &v329);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata, &v328);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v207 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v207, v208, v283);
  if (v76)
  {
    sub_1B8D9207C(v281, &qword_1EBAB91A8, &unk_1B964D990);
    v209 = OUTLINED_FUNCTION_105_2(v285);
    OUTLINED_FUNCTION_178(v209, v210, v283);
    if (v76)
    {
      sub_1B8D9207C(v285, &qword_1EBAB91A8, &unk_1B964D990);
      goto LABEL_156;
    }

    goto LABEL_154;
  }

  sub_1B8D92024();
  v235 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v235, v236, v283);
  if (v237)
  {
    sub_1B8D9207C(v281, &qword_1EBAB91A8, &unk_1B964D990);
    sub_1B908D96C();
LABEL_154:
    v111 = &qword_1EBAB91B0;
    v112 = &unk_1B96670A0;
    v113 = v285;
    goto LABEL_135;
  }

  sub_1B908D8BC();
  OUTLINED_FUNCTION_205();
  static Useragentpb_DeviceMetadata.== infix(_:_:)();
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_189(v281);
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_86_5();
  if ((&unk_1B964D990 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_156:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut, &v327);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut, &v326);
  OUTLINED_FUNCTION_43_4();
  if (!v76)
  {
    goto LABEL_136;
  }

  v239 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey;
  v240 = OUTLINED_FUNCTION_79_1(v238, &v325);
  v241 = *(v239 + 8);
  OUTLINED_FUNCTION_30_11(v240, &v324);
  OUTLINED_FUNCTION_54_4();
  if (!v76 || v241 != v243)
  {
    v242 = OUTLINED_FUNCTION_120_0();
    if ((v242 & 1) == 0)
    {
      goto LABEL_136;
    }
  }

  v245 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme;
  v246 = OUTLINED_FUNCTION_79_1(v242, &v323);
  v247 = *(v245 + 8);
  OUTLINED_FUNCTION_30_11(v246, &v322);
  OUTLINED_FUNCTION_54_4();
  v249 = v76 && v247 == v248;
  if (!v249 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits, &v321);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits, &v320);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v250 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v250, v251, v289);
  if (v76)
  {
    sub_1B8D9207C(v287, &qword_1EBAC3A38, &qword_1B96880F8);
    v252 = OUTLINED_FUNCTION_105_2(v291);
    OUTLINED_FUNCTION_178(v252, v253, v289);
    if (v76)
    {
      v254 = sub_1B8D9207C(v291, &qword_1EBAC3A38, &qword_1B96880F8);
      goto LABEL_178;
    }

    goto LABEL_176;
  }

  sub_1B8D92024();
  v255 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v255, v256, v289);
  if (v257)
  {
    sub_1B8D9207C(v287, &qword_1EBAC3A38, &qword_1B96880F8);
    sub_1B908D96C();
LABEL_176:
    v111 = &qword_1EBAC3B18;
    v112 = &unk_1B9688E78;
    v113 = v291;
    goto LABEL_135;
  }

  sub_1B908D8BC();
  v258 = OUTLINED_FUNCTION_205();
  static Apple_Parsec_Search_V2_WeatherUnits.== infix(_:_:)(v258, v259);
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_189(v287);
  OUTLINED_FUNCTION_128_4();
  v254 = OUTLINED_FUNCTION_86_5();
  if ((&qword_1B96880F8 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_178:
  v260 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken;
  v261 = OUTLINED_FUNCTION_79_1(v254, &v319);
  v262 = *(v260 + 8);
  OUTLINED_FUNCTION_30_11(v261, &v318);
  OUTLINED_FUNCTION_54_4();
  v264 = v76 && v262 == v263;
  if (!v264 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus, &v317);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus, &v316);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v265 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v265, v266, v294);
  if (v76)
  {

    sub_1B8D9207C(v293, &qword_1EBAC3A40, &qword_1B9688100);
    v267 = OUTLINED_FUNCTION_105_2(v297);
    OUTLINED_FUNCTION_178(v267, v268, v294);
    if (v76)
    {
      sub_1B8D9207C(v297, &qword_1EBAC3A40, &qword_1B9688100);
      return 1;
    }

    goto LABEL_192;
  }

  sub_1B8D92024();
  v269 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v269, v270, v294);
  if (v271)
  {

    sub_1B8D9207C(v293, &qword_1EBAC3A40, &qword_1B9688100);
    sub_1B908D96C();
LABEL_192:
    v272 = &qword_1EBAC3B10;
    v273 = &qword_1B9688E70;
    v274 = v297;
LABEL_198:
    sub_1B8D9207C(v274, v272, v273);
    return 0;
  }

  OUTLINED_FUNCTION_4_26();
  v275 = v296;
  sub_1B908D8BC();
  if (*v295 != *v275 || (sub_1B8D8637C(*(v295 + 1), *(v296 + 1)) & 1) == 0)
  {

    sub_1B8D9207C(v293, &qword_1EBAC3A40, &qword_1B9688100);
    sub_1B908D96C();
    sub_1B908D96C();
    v274 = v297;
    v272 = &qword_1EBAC3A40;
    v273 = &qword_1B9688100;
    goto LABEL_198;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v276, v277, MEMORY[0x1E69AAC10]);
  v278 = sub_1B964C850();

  sub_1B8D9207C(v293, &qword_1EBAC3A40, &qword_1B9688100);
  sub_1B908D96C();
  sub_1B908D96C();
  sub_1B8D9207C(v297, &qword_1EBAC3A40, &qword_1B9688100);
  return (v278 & 1) != 0;
}

uint64_t sub_1B9092580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3B00, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9092600(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9092670(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2600(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B90926F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5DC0);
  __swift_project_value_buffer(v0, qword_1EBAB5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TemperatureUnitUnknown";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TemperatureUnitCelsius";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TemperatureUnitFahrenheit";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B909291C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5DA0);
  __swift_project_value_buffer(v0, qword_1EBAB5DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MeasurementSystemUnknown";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MeasurementSystemSI";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MeasurementSystemUS";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MeasurementSystemUK";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9092B7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5DE0);
  __swift_project_value_buffer(v0, qword_1EBAB5DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HourFormatUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HourFormatTwelve";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HourFormatTwentyFour";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9092DC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5D80);
  __swift_project_value_buffer(v0, qword_1EBAB5D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_enabled";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "device_policies";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v5 = OUTLINED_FUNCTION_288();
      sub_1B9093020(v5, v6, v2, v1);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (sub_1B9093124(), OUTLINED_FUNCTION_102_5(), result = sub_1B964C600(), !v1))
    {
      type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

unint64_t sub_1B9093124()
{
  result = qword_1EBAC3A50;
  if (!qword_1EBAC3A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_DevicePolicyType, &type metadata for Apple_Parsec_Search_DevicePolicyType, v0, v1);
    atomic_store(result, &qword_1EBAC3A50);
  }

  return result;
}

uint64_t static Apple_Parsec_Search_AppleIntelligenceStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if ((sub_1B8D8637C(*(v2 + 8), *(v3 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  v6 = sub_1B8CD2600(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B90932B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3AF8, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus, protocol conformance descriptor for Apple_Parsec_Search_AppleIntelligenceStatus);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9093330(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus, protocol conformance descriptor for Apple_Parsec_Search_AppleIntelligenceStatus);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90933A0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus, protocol conformance descriptor for Apple_Parsec_Search_AppleIntelligenceStatus);

  return sub_1B964C5D0();
}

uint64_t sub_1B909343C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5D20);
  __swift_project_value_buffer(v0, qword_1EBAB5D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qtype";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v5 = OUTLINED_FUNCTION_288();
      sub_1B9093698(v5, v6, v2, v1);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = v1[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (v2 = v0, result = sub_1B964C700(), !v0))
  {
    if (sub_1B8D92198(*(v3 + 16), *(v3 + 24), 0) || (sub_1B905BAEC(), OUTLINED_FUNCTION_102_5(), result = sub_1B964C680(), !v2))
    {
      type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_PegasusSearchQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 16), *(v1 + 24), v0[2]))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  v6 = sub_1B8CD2600(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9093930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3AF0, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Search_PegasusSearchQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90939B0(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Search_PegasusSearchQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9093A20(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2600(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Search_PegasusSearchQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B9093AAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB46E8);
  __swift_project_value_buffer(v0, qword_1EBAB46E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "completions";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scores";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "origins";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
      {
        type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_LocalCompletionInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0 || (sub_1B8D6123C(*(v1 + 8), *(v0 + 8)) & 1) == 0 || (sub_1B8D6123C(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  v6 = sub_1B8CD2600(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9093EDC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2600(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9093FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3AE8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo, protocol conformance descriptor for Apple_Parsec_Search_LocalCompletionInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B909403C(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo, protocol conformance descriptor for Apple_Parsec_Search_LocalCompletionInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90940AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2600(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo, protocol conformance descriptor for Apple_Parsec_Search_LocalCompletionInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B9094130()
{
  result = qword_1EBAC3A70;
  if (!qword_1EBAC3A70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_DevicePolicyType, &type metadata for Apple_Parsec_Search_DevicePolicyType, v0, v1);
    atomic_store(result, &qword_1EBAC3A70);
  }

  return result;
}

unint64_t sub_1B9094188()
{
  result = qword_1EBAC3A78;
  if (!qword_1EBAC3A78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_DevicePolicyType, &type metadata for Apple_Parsec_Search_DevicePolicyType, v0, v1);
    atomic_store(result, &qword_1EBAC3A78);
  }

  return result;
}

unint64_t sub_1B90941E0()
{
  result = qword_1EBAC3A80;
  if (!qword_1EBAC3A80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_DevicePolicyType, &type metadata for Apple_Parsec_Search_DevicePolicyType, v0, v1);
    atomic_store(result, &qword_1EBAC3A80);
  }

  return result;
}

unint64_t sub_1B9094268()
{
  result = qword_1ED9CF4F0;
  if (!qword_1ED9CF4F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, &type metadata for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, v0, v1);
    atomic_store(result, &qword_1ED9CF4F0);
  }

  return result;
}

unint64_t sub_1B90942C0()
{
  result = qword_1ED9CF4E0;
  if (!qword_1ED9CF4E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, &type metadata for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, v0, v1);
    atomic_store(result, &qword_1ED9CF4E0);
  }

  return result;
}

unint64_t sub_1B9094318()
{
  result = qword_1ED9CF4E8;
  if (!qword_1ED9CF4E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, &type metadata for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, v0, v1);
    atomic_store(result, &qword_1ED9CF4E8);
  }

  return result;
}

unint64_t sub_1B9094370()
{
  result = qword_1ED9CF4D0;
  if (!qword_1ED9CF4D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, &type metadata for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, v0, v1);
    atomic_store(result, &qword_1ED9CF4D0);
  }

  return result;
}

unint64_t sub_1B90943C8()
{
  result = qword_1ED9CF4C0;
  if (!qword_1ED9CF4C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, &type metadata for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, v0, v1);
    atomic_store(result, &qword_1ED9CF4C0);
  }

  return result;
}

unint64_t sub_1B9094420()
{
  result = qword_1ED9CF4C8;
  if (!qword_1ED9CF4C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, &type metadata for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, v0, v1);
    atomic_store(result, &qword_1ED9CF4C8);
  }

  return result;
}

unint64_t sub_1B9094478()
{
  result = qword_1ED9CF510;
  if (!qword_1ED9CF510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.HourFormat, &type metadata for Apple_Parsec_Search_PegasusQueryContext.HourFormat, v0, v1);
    atomic_store(result, &qword_1ED9CF510);
  }

  return result;
}

unint64_t sub_1B90944D0()
{
  result = qword_1ED9CF500;
  if (!qword_1ED9CF500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.HourFormat, &type metadata for Apple_Parsec_Search_PegasusQueryContext.HourFormat, v0, v1);
    atomic_store(result, &qword_1ED9CF500);
  }

  return result;
}

unint64_t sub_1B9094528()
{
  result = qword_1ED9CF508;
  if (!qword_1ED9CF508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.HourFormat, &type metadata for Apple_Parsec_Search_PegasusQueryContext.HourFormat, v0, v1);
    atomic_store(result, &qword_1ED9CF508);
  }

  return result;
}

uint64_t sub_1B9094AC4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9094BA0(uint64_t a1)
{
  sub_1B8DD7D14(319, &qword_1ED9D39B0, &type metadata for Apple_Parsec_Search_DevicePolicyType);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_1B9094CE0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9094D8C(uint64_t a1)
{
  sub_1B8DD7D14(319, qword_1EDA06FD0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9094E30(uint64_t a1)
{
  sub_1B9095174(319, &qword_1ED9FE338, type metadata accessor for Apple_Parsec_Search_V2_Location);
  if (v1 <= 0x3F)
  {
    sub_1B9095174(319, &qword_1ED9FDC38, type metadata accessor for Apple_Parsec_Search_V2_MapsSession);
    if (v2 <= 0x3F)
    {
      sub_1B9095174(319, &qword_1ED9FD840, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions);
      if (v3 <= 0x3F)
      {
        sub_1B9095174(319, qword_1ED9F0D50, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo);
        if (v4 <= 0x3F)
        {
          sub_1B9095174(319, qword_1ED9F25B8, type metadata accessor for Useragentpb_DeviceMetadata);
          if (v5 <= 0x3F)
          {
            sub_1B9095174(319, qword_1ED9F1910, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);
            if (v6 <= 0x3F)
            {
              sub_1B9095174(319, qword_1ED9EB298, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B9095174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B90951C8()
{
  result = qword_1ED9CF518;
  if (!qword_1ED9CF518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.HourFormat, &type metadata for Apple_Parsec_Search_PegasusQueryContext.HourFormat, v0, v1);
    atomic_store(result, &qword_1ED9CF518);
  }

  return result;
}

unint64_t sub_1B909521C()
{
  result = qword_1ED9CF4D8;
  if (!qword_1ED9CF4D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, &type metadata for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem, v0, v1);
    atomic_store(result, &qword_1ED9CF4D8);
  }

  return result;
}

unint64_t sub_1B9095270()
{
  result = qword_1ED9CF4F8;
  if (!qword_1ED9CF4F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, &type metadata for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit, v0, v1);
    atomic_store(result, &qword_1ED9CF4F8);
  }

  return result;
}

unint64_t sub_1B90952C4()
{
  result = qword_1EBAB4610;
  if (!qword_1EBAB4610)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_V2_TransportationMode, &type metadata for Apple_Parsec_Search_V2_TransportationMode, v0, v1);
    atomic_store(result, &qword_1EBAB4610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_54(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_21()
{
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_17_16()
{
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_84_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_86_5()
{

  return sub_1B8D9207C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_105_5()
{

  return sub_1B908D8BC();
}

uint64_t OUTLINED_FUNCTION_108_6()
{

  return sub_1B908D8BC();
}

uint64_t OUTLINED_FUNCTION_112_5()
{

  return sub_1B908D8BC();
}

uint64_t OUTLINED_FUNCTION_113_4()
{

  return sub_1B908D96C();
}

uint64_t OUTLINED_FUNCTION_128_4()
{

  return sub_1B908D96C();
}

uint64_t Apple_Parsec_Search_Error.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for Apple_Parsec_Search_Error(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Apple_Parsec_Search_Error(uint64_t a1)
{
  result = qword_1ED9EDE90;
  if (!qword_1ED9EDE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Apple_Parsec_Search_StatusCode.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9095704@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_StatusCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9095738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2116C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_StatusCode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3B40 = a1;
}

uint64_t (*static Apple_Parsec_Search_StatusCode.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B909587C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_StatusCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Search_Error.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B90387E4(v2, v3, v4);
}

uint64_t Apple_Parsec_Search_Error.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t Apple_Parsec_Search_Error.message.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v1 && (v0 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v2, v3, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9095960(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Search_Error.message.setter(v1, v2);
}

uint64_t Apple_Parsec_Search_Error.message.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B903880C(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;
  return result;
}

uint64_t (*Apple_Parsec_Search_Error.message.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 0);
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_1B9031F18;
}

uint64_t Apple_Parsec_Search_Error.encryptedMessage.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v1 && (v0 & 1) != 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v2, v3, 1);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9095A9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8D91FCC(*a1, v2);
  return Apple_Parsec_Search_Error.encryptedMessage.setter(v1, v2);
}

uint64_t Apple_Parsec_Search_Error.encryptedMessage.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B903880C(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Search_Error.encryptedMessage.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 1);
  }

  *a1 = v6;
  a1[1] = v5;
  return sub_1B90320F8;
}

uint64_t Apple_Parsec_Search_Error.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_Error(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Search_Error.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_Error(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Parsec_Search_Error.OneOf_Error.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = OUTLINED_FUNCTION_461();
      sub_1B90387FC(v5, v6, 1);
      v7 = OUTLINED_FUNCTION_288();
      sub_1B90387FC(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_288();
      v10 = MEMORY[0x1BFADC060](v9);
      v11 = OUTLINED_FUNCTION_288();
      sub_1B9038824(v11, v12, 1);
      v13 = OUTLINED_FUNCTION_461();
      v15 = 1;
LABEL_11:
      sub_1B9038824(v13, v14, v15);
      return v10 & 1;
    }

LABEL_5:
    v16 = OUTLINED_FUNCTION_42_0();
    sub_1B90387FC(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v19, v20, v4);
    v21 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v21, v22, v4);
    v23 = OUTLINED_FUNCTION_42_0();
    sub_1B9038824(v23, v24, v25);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v27 = *a1;
  if (v3 != *a2 || v2 != *(a2 + 8))
  {
    v10 = sub_1B964C9F0();
    v29 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v29, v30, 0);
    v31 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v31, v32, 0);
    v33 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v33, v34, 0);
    v13 = OUTLINED_FUNCTION_461();
    v15 = 0;
    goto LABEL_11;
  }

  sub_1B90387FC(v27, v2, 0);
  v35 = OUTLINED_FUNCTION_288();
  sub_1B90387FC(v35, v36, 0);
  v37 = OUTLINED_FUNCTION_288();
  sub_1B9038824(v37, v38, 0);
  v39 = OUTLINED_FUNCTION_288();
  sub_1B9038824(v39, v40, 0);
  return 1;
}

uint64_t sub_1B9095E28()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3B48);
  __swift_project_value_buffer(v0, qword_1EBAC3B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STATUS_CODE_OK";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STATUS_CODE_ERROR";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STATUS_CODE_NORESULTS";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9096070()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3B60);
  __swift_project_value_buffer(v0, qword_1EBAC3B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encrypted_message";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_Error.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_288();
      sub_1B9035AFC(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_288();
      sub_1B9035A30(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_Error.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_65_6();
  if (v9 || ((v8 & 1) == 0 ? (result = sub_1B8DC2578(v3, a1, a2, a3)) : (result = sub_1B9035C80(v3, a1, a2, a3)), !v4))
  {
    type metadata accessor for Apple_Parsec_Search_Error(0);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_Error.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (v3 != 255)
  {
    v52[0] = *a1;
    v52[1] = v2;
    v53 = v3;
    if (v6 != 255)
    {
      v50[0] = v5;
      v50[1] = v4;
      v7 = v6 & 1;
      v51 = v6 & 1;
      v8 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_259();
      sub_1B90387E4(v11, v12, v6);
      v13 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v13, v14, v15);
      v16 = static Apple_Parsec_Search_Error.OneOf_Error.== infix(_:_:)(v52, v50);
      v17 = OUTLINED_FUNCTION_259();
      sub_1B9038824(v17, v18, v7);
      v19 = OUTLINED_FUNCTION_461();
      sub_1B9038824(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_42_0();
      sub_1B903880C(v22, v23, v24);
      if (v16)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v29 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v32, v33, 255);
    v34 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_461();
    sub_1B9038824(v37, v38, v39);
LABEL_8:
    v40 = OUTLINED_FUNCTION_42_0();
    sub_1B903880C(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_259();
    sub_1B903880C(v43, v44, v6);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_461();
  sub_1B90387E4(v25, v26, 255);
  if (v6 != 255)
  {
    v27 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v27, v28, v6);
    goto LABEL_8;
  }

  v46 = OUTLINED_FUNCTION_259();
  sub_1B90387E4(v46, v47, 255);
  v48 = OUTLINED_FUNCTION_461();
  sub_1B903880C(v48, v49, 255);
LABEL_11:
  type metadata accessor for Apple_Parsec_Search_Error(0);
  sub_1B964C2B0();
  sub_1B8CD2648(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}