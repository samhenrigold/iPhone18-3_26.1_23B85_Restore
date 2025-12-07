uint64_t sub_1B90FC398(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAB5918, type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientConversationContextInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B90FC430()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4368);
  __swift_project_value_buffer(v0, qword_1EBAB4368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_object_disambiguation_needed";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "display_hints_domain";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "display_hints";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "creation_timestamp";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "response_options";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Context_ClientDisplayHints.decodeMessage<A>(decoder:)()
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
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B90FD4E0();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B90FC7E4(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90FC7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(0);
  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  sub_1B8CD27F8(&qword_1EBAB45D0, type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Context_ClientDisplayHints.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D28, &qword_1B968FA90);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  if (*v0 != 1 || (OUTLINED_FUNCTION_24_3(), sub_1B964C670(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v6 || (sub_1B964C700(), !v1))
    {
      if (!*(*(v0 + 24) + 16) || (type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(0), sub_1B8CD27F8(&qword_1EBAC4D58, type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusDisplayHint), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
      {
        if (!*(v0 + 32) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v1))
        {
          type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(0);
          sub_1B8D92024();
          OUTLINED_FUNCTION_170_2();
          if (__swift_getEnumTagSinglePayload(v7, v8, v9) == 1)
          {
            sub_1B8D9207C(v2, &qword_1EBAC4D28, &qword_1B968FA90);
LABEL_12:
            OUTLINED_FUNCTION_8_1();
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_5_25();
          OUTLINED_FUNCTION_424();
          sub_1B90FA524();
          sub_1B8CD27F8(&qword_1EBAB45D0, type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions);
          OUTLINED_FUNCTION_687();
          sub_1B964C740();
          OUTLINED_FUNCTION_93_6();
          sub_1B90FA5CC();
          if (!v1)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Context_ClientDisplayHints.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D28, &qword_1B968FA90);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_137();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D60, &qword_1B968FAC0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_88();
  if (*v1 != *v0)
  {
    goto LABEL_27;
  }

  v12 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1B8D68788(v1[3], v0[3]);
  if ((v13 & 1) == 0 || v1[4] != v0[4])
  {
    goto LABEL_27;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(0);
  v14 = *(v10 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v12)
  {
    OUTLINED_FUNCTION_37_0(v2 + v14);
    if (v12)
    {
      sub_1B8D9207C(v2, &qword_1EBAC4D28, &qword_1B968FA90);
      goto LABEL_14;
    }

LABEL_18:
    v20 = &qword_1EBAC4D60;
    v21 = &qword_1B968FAC0;
LABEL_26:
    sub_1B8D9207C(v2, v20, v21);
LABEL_27:
    v18 = 0;
    goto LABEL_28;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v14);
  if (v19)
  {
    OUTLINED_FUNCTION_93_6();
    sub_1B90FA5CC();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_25();
  sub_1B90FA524();
  sub_1B8D6C178(*v3, *v7);
  if ((v22 & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = *(v3 + 8);
  v24 = *(v7 + 8);
  if (*(v3 + 16))
  {
    v23 = v23 != 0;
  }

  if (*(v7 + 16) == 1)
  {
    if (v24)
    {
      if (v23 != 1)
      {
LABEL_25:
        sub_1B90FA5CC();
        sub_1B90FA5CC();
        v20 = &qword_1EBAC4D28;
        v21 = &qword_1B968FA90;
        goto LABEL_26;
      }
    }

    else if (v23)
    {
      goto LABEL_25;
    }
  }

  else if (v23 != v24)
  {
    goto LABEL_25;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  sub_1B8CD27F8(v25, v26, MEMORY[0x1E69AAC10]);
  v27 = sub_1B964C850();
  sub_1B90FA5CC();
  sub_1B90FA5CC();
  sub_1B8D9207C(v2, &qword_1EBAC4D28, &qword_1B968FA90);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  v17 = sub_1B8CD27F8(v15, v16, MEMORY[0x1E69AAC10]);
  v18 = OUTLINED_FUNCTION_199_0(v17);
LABEL_28:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90FCF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F58, type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientDisplayHints);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90FCFB4(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAB4358, type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientDisplayHints);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90FD024(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAB4358, type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientDisplayHints);

  return sub_1B964C5D0();
}

uint64_t sub_1B90FD0BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4C60);
  __swift_project_value_buffer(v0, qword_1EBAC4C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "creation_timestamp";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "result_entities";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "server_selected_index";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_valid_server_selected_index";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Context_ClientApplicationContext.decodeMessage<A>(decoder:)()
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
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B90FD478(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B90FD4E0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

void sub_1B90FD4E0()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD27F8(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 24, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_Context_ClientApplicationContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_144_6(), sub_1B8DEE788(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0), sub_1B8CD27F8(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (!*(v2 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
        {
          if (*(v2 + 36) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_ClientApplicationContext.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (!sub_1B8D57FD0(*(v4 + 8), *(v3 + 16), *(v2 + 8), *(v2 + 16)))
  {
    return 0;
  }

  sub_1B8D7FB90(*(v3 + 24), *(v2 + 24));
  if ((v5 & 1) == 0 || *(v3 + 32) != *(v2 + 32) || *(v3 + 36) != *(v2 + 36))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  v9 = sub_1B8CD27F8(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B90FD7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F50, type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientApplicationContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90FD874(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAC4E68, type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientApplicationContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90FD8E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAC4E68, type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientApplicationContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B90FD97C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB45E0);
  __swift_project_value_buffer(v0, qword_1EBAB45E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "options";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Context_ResponseOptions.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B90FDC1C(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B90FF888();
    }
  }
}

uint64_t Apple_Parsec_Siri_Context_ResponseOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0), OUTLINED_FUNCTION_30_20(), sub_1B8CD27F8(v3, v4, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_144_6(), sub_1B9104F18(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_ResponseOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D6C178(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 8);
  v6 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v5 = v5 != 0;
  }

  if (*(v0 + 16) == 1)
  {
    if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  v10 = sub_1B8CD27F8(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B90FDED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F48, type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90FDF50(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAB45D0, type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90FDFC0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAB45D0, type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions);

  return sub_1B964C5D0();
}

uint64_t sub_1B90FE040()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4C78);
  __swift_project_value_buffer(v0, qword_1EBAC4C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUTHORIZE_SIRIKIT_APP";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90FE248()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4C90);
  __swift_project_value_buffer(v0, qword_1EBAC4C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_PegasusSemanticValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  v7 = sub_1B8CD27F8(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B90FE678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F40, type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90FE6F8(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAC4D78, type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90FE768(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAC4D78, type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B90FE800()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4CA8);
  __swift_project_value_buffer(v0, qword_1EBAC4CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id_value";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "display_value";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_PegasusDisplayHint.decodeMessage<A>(decoder:)()
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
      v7 = OUTLINED_FUNCTION_9();
      sub_1B90FEB04(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B90FEA50(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B90FEA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(0);
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  sub_1B8CD27F8(&qword_1EBAC4D78, type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue);
  return sub_1B964C580();
}

uint64_t sub_1B90FEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(0);
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  sub_1B8CD27F8(&qword_1EBAC4D78, type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Context_PegasusDisplayHint.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v22 = v2;
  v23 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D30, &qword_1B968FA98);
  v5 = OUTLINED_FUNCTION_183(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v20 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(0);
  v21 = v0;
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v11);
  if (v15)
  {
    sub_1B8D9207C(v11, &qword_1EBAC4D30, &qword_1B968FA98);
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    sub_1B90FA524();
    OUTLINED_FUNCTION_30_20();
    sub_1B8CD27F8(v16, v17, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue);
    OUTLINED_FUNCTION_749();
    sub_1B964C740();
    OUTLINED_FUNCTION_20_6();
    sub_1B90FA5CC();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v8);
  if (v15)
  {
    sub_1B8D9207C(v8, &qword_1EBAC4D30, &qword_1B968FA98);
LABEL_9:
    sub_1B964C290();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_49();
  sub_1B90FA524();
  OUTLINED_FUNCTION_30_20();
  sub_1B8CD27F8(v18, v19, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusSemanticValue);
  sub_1B964C740();
  OUTLINED_FUNCTION_20_6();
  sub_1B90FA5CC();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Context_PegasusDisplayHint.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44_0();
  v43 = v5;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D30, &qword_1B968FA98);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v44 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D98, &qword_1B968FAC8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v47 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_87_0();
  v45 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(0);
  v46 = v15;
  v19 = *(v15 + 48);
  v48 = v2;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v21)
  {
    OUTLINED_FUNCTION_37_0(v0 + v19);
    if (v21)
    {
      v20 = v3;
      sub_1B8D9207C(v0, &qword_1EBAC4D30, &qword_1B968FA98);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v19);
  if (v21)
  {
    OUTLINED_FUNCTION_20_6();
    sub_1B90FA5CC();
LABEL_9:
    v22 = &qword_1EBAC4D98;
    v23 = &qword_1B968FAC8;
LABEL_10:
    v24 = v0;
LABEL_32:
    sub_1B8D9207C(v24, v22, v23);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_1_49();
  sub_1B90FA524();
  v25 = *v14 == *v8 && v14[1] == v8[1];
  if (!v25 && (sub_1B964C9F0() & 1) == 0 || (v14[2] == v8[2] ? (v26 = v14[3] == v8[3]) : (v26 = 0), !v26 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_97_5();
    sub_1B90FA5CC();
    OUTLINED_FUNCTION_432();
    sub_1B90FA5CC();
    v22 = &qword_1EBAC4D30;
    v23 = &qword_1B968FA98;
    goto LABEL_10;
  }

  v20 = v3;
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  sub_1B8CD27F8(v27, v28, MEMORY[0x1E69AAC10]);
  v29 = sub_1B964C850();
  sub_1B90FA5CC();
  OUTLINED_FUNCTION_472();
  sub_1B90FA5CC();
  sub_1B8D9207C(v0, &qword_1EBAC4D30, &qword_1B968FA98);
  if ((v29 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v30 = *(v46 + 48);
  v31 = v47;
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_178(v31, 1, v20);
  if (v21)
  {
    OUTLINED_FUNCTION_178(v31 + v30, 1, v20);
    if (v21)
    {
      sub_1B8D9207C(v31, &qword_1EBAC4D30, &qword_1B968FA98);
LABEL_47:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_58();
      sub_1B8CD27F8(v41, v42, MEMORY[0x1E69AAC10]);
      v34 = sub_1B964C850();
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v32 = v44;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v31 + v30, 1, v20);
  if (v33)
  {
    OUTLINED_FUNCTION_20_6();
    sub_1B90FA5CC();
LABEL_30:
    v22 = &qword_1EBAC4D98;
    v23 = &qword_1B968FAC8;
LABEL_31:
    v24 = v31;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_49();
  v35 = v43;
  sub_1B90FA524();
  v36 = *v32 == *v35 && v32[1] == v35[1];
  if (!v36 && (sub_1B964C9F0() & 1) == 0 || (v32[2] == v35[2] ? (v37 = v32[3] == v35[3]) : (v37 = 0), !v37 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B90FA5CC();
    OUTLINED_FUNCTION_182();
    sub_1B90FA5CC();
    v22 = &qword_1EBAC4D30;
    v23 = &qword_1B968FA98;
    goto LABEL_31;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  sub_1B8CD27F8(v38, v39, MEMORY[0x1E69AAC10]);
  v40 = sub_1B964C850();
  OUTLINED_FUNCTION_97_5();
  sub_1B90FA5CC();
  OUTLINED_FUNCTION_128();
  sub_1B90FA5CC();
  sub_1B8D9207C(v31, &qword_1EBAC4D30, &qword_1B968FA98);
  if (v40)
  {
    goto LABEL_47;
  }

LABEL_33:
  v34 = 0;
LABEL_34:
  OUTLINED_FUNCTION_264(v34);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90FF458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F38, type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusDisplayHint);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90FF4D8(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAC4D58, type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusDisplayHint);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90FF548(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAC4D58, type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint, protocol conformance descriptor for Apple_Parsec_Siri_Context_PegasusDisplayHint);

  return sub_1B964C5D0();
}

uint64_t sub_1B90FF5E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5998);
  __swift_project_value_buffer(v0, qword_1EBAB5998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entities";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "music_ranking_influence";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Context_OnDeviceContext.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B90FF8DC(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B90FF888();
    }
  }
}

void sub_1B90FF888()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD27F8(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_Context_OnDeviceContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(0), sub_1B8CD27F8(&qword_1EBAB4820, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_144_6(), sub_1B9104F6C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_OnDeviceContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D81C88(*v2, *v3);
  if ((v4 & 1) == 0 || !sub_1B8D92198(*(v1 + 8), *(v1 + 16), *(v0 + 8)))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  v7 = sub_1B8CD27F8(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B90FFB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F30, type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_OnDeviceContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90FFBF4(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAB5988, type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_OnDeviceContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90FFC64(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAB5988, type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_OnDeviceContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B90FFCF0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4830);
  __swift_project_value_buffer(v0, qword_1EBAB4830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "uso_graph";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "alignments";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "source";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "score";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ontology_label";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "has_address";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "has_phone_number";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "sage_app_entity";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9100188(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91001F0(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9100290(v11, v12, v13, v14);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B91002F8(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91001F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment(0);
  sub_1B8CD27F8(&qword_1EBAB40C8, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntityAlignment);
  return sub_1B964C570();
}

uint64_t sub_1B91002F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(0);
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
  sub_1B8CD27F8(&qword_1EBAC4DB0, type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SageAppEntity);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Context_ClientEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D38, &qword_1B968FAA0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_159();
  v6 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (sub_1B9104FC0(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    if (sub_1B8D99EA8(*(v2 + 16), *(v2 + 24)) || (OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment(0), sub_1B8CD27F8(&qword_1EBAB40C8, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntityAlignment), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
      {
        if (!*(v2 + 40) || (sub_1B9105014(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
        {
          if (*(v2 + 56) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), sub_1B964C6F0(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
            {
              if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
              {
                if (*(v2 + 81) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
                {
                  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(0);
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
                  {
                    sub_1B8D9207C(v3, &qword_1EBAC4D38, &qword_1B968FAA0);
LABEL_21:
                    OUTLINED_FUNCTION_8_1();
                    goto LABEL_22;
                  }

                  OUTLINED_FUNCTION_4_30();
                  OUTLINED_FUNCTION_424();
                  sub_1B90FA524();
                  sub_1B8CD27F8(&qword_1EBAC4DB0, type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SageAppEntity);
                  OUTLINED_FUNCTION_687();
                  sub_1B964C740();
                  OUTLINED_FUNCTION_92_7();
                  sub_1B90FA5CC();
                  if (!v1)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Context_ClientEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D38, &qword_1B968FAA0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4DB8, &qword_1B968FAD0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_88();
  v10 = *v1;
  v11 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v11)
    {
      case 1:
        if (*&v10 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      case 2:
        if (*&v10 != 2)
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      case 3:
        if (*&v10 != 3)
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      default:
        if (v10 == 0.0)
        {
          goto LABEL_6;
        }

        goto LABEL_27;
    }
  }

  if (*&v10 != v11)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (MEMORY[0x1BFADC060](*(v1 + 2), *(v1 + 3), v0[2], v0[3]))
  {
    sub_1B8D74338(*(v1 + 4), v0[4]);
    if ((v12 & 1) != 0 && sub_1B8D92198(*(v1 + 5), *(v1 + 48), v0[5]) && v1[7] == *(v0 + 7))
    {
      v13 = *(v1 + 8) == v0[8] && *(v1 + 9) == v0[9];
      if (v13 || (sub_1B964C9F0()) && *(v1 + 80) == *(v0 + 80) && *(v1 + 81) == *(v0 + 81))
      {
        type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(0);
        v14 = *(v8 + 48);
        OUTLINED_FUNCTION_106_6();
        sub_1B8D92024();
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v2, 1, v4);
        if (v13)
        {
          OUTLINED_FUNCTION_178(v2 + v14, 1, v4);
          if (v13)
          {
            sub_1B8D9207C(v2, &qword_1EBAC4D38, &qword_1B968FAA0);
LABEL_34:
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_58();
            v21 = sub_1B8CD27F8(v19, v20, MEMORY[0x1E69AAC10]);
            v15 = OUTLINED_FUNCTION_634(v21);
            goto LABEL_28;
          }
        }

        else
        {
          OUTLINED_FUNCTION_177_1();
          sub_1B8D92024();
          OUTLINED_FUNCTION_178(v2 + v14, 1, v4);
          if (!v16)
          {
            OUTLINED_FUNCTION_4_30();
            sub_1B90FA524();
            v17 = OUTLINED_FUNCTION_246();
            v18 = static Apple_Parsec_Siri_Context_SageAppEntity.== infix(_:_:)(v17);
            sub_1B90FA5CC();
            sub_1B90FA5CC();
            sub_1B8D9207C(v2, &qword_1EBAC4D38, &qword_1B968FAA0);
            if (v18)
            {
              goto LABEL_34;
            }

            goto LABEL_27;
          }

          OUTLINED_FUNCTION_92_7();
          sub_1B90FA5CC();
        }

        sub_1B8D9207C(v2, &qword_1EBAC4DB8, &qword_1B968FAD0);
      }
    }
  }

LABEL_27:
  v15 = 0;
LABEL_28:
  OUTLINED_FUNCTION_264(v15);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9100AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F28, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9100B64(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAB4820, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9100BD4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAB4820, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9100C54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB48B0);
  __swift_project_value_buffer(v0, qword_1EBAB48B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CLIENT_ENTITY_TYPE_UNKNOWN";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLIENT_ENTITY_TYPE_REFERENCE";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLIENT_ENTITY_TYPE_PERSONAL_SPAN";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLIENT_ENTITY_TYPE_CORRECTION";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9100EBC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4870);
  __swift_project_value_buffer(v0, qword_1EBAB4870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CLIENT_ENTITY_SOURCE_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLIENT_ENTITY_SOURCE_SIRI_VOCABULARY";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLIENT_ENTITY_SOURCE_MARRS";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLIENT_ENTITY_SOURCE_CORRECTION";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CLIENT_ENTITY_SOURCE_SAGE";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B910117C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4CC0);
  __swift_project_value_buffer(v0, qword_1EBAC4CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "flight_entity";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sports_entity";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_SageAppEntity.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B91018CC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B91013D4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B91013D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D40, &qword_1B968FAA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4F68, &qword_1B9691748);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC4D40, &qword_1B968FAA8);
  }

  else
  {
    sub_1B90FA524();
    sub_1B90FA524();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B90FA5CC();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC4F68, &qword_1B9691748);
      sub_1B90FA524();
      sub_1B90FA524();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD27F8(&qword_1EBAC4EC8, type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_FlightEntity);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC4F68, &qword_1B9691748);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC4F68, &qword_1B9691748);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC4F68, &qword_1B9691748);
  }

  sub_1B90FA524();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC4F68, &qword_1B9691748);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC4D40, &qword_1B968FAA8);
  sub_1B90FA524();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B91018CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D40, &qword_1B968FAA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4F70, &qword_1B9691750);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC4D40, &qword_1B968FAA8);
  }

  else
  {
    sub_1B90FA524();
    sub_1B90FA524();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC4F70, &qword_1B9691750);
      sub_1B90FA524();
      sub_1B90FA524();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B90FA5CC();
    }
  }

  sub_1B8CD27F8(&qword_1EBAC4EE0, type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsEntity);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC4F70, &qword_1B9691750);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC4F70, &qword_1B9691750);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC4F70, &qword_1B9691750);
  }

  sub_1B90FA524();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC4F70, &qword_1B9691750);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC4D40, &qword_1B968FAA8);
  sub_1B90FA524();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Siri_Context_SageAppEntity.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D40, &qword_1B968FAA8);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  OUTLINED_FUNCTION_90(v4);
  if (v5)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B910210C(v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B9101EF8(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_31_16();
  result = sub_1B90FA5CC();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9101EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D40, &qword_1B968FAA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC4D40, &qword_1B968FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B90FA524();
      sub_1B8CD27F8(&qword_1EBAC4EC8, type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_FlightEntity);
      sub_1B964C740();
      return sub_1B90FA5CC();
    }

    result = sub_1B90FA5CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B910210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D40, &qword_1B968FAA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC4D40, &qword_1B968FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B90FA524();
      sub_1B8CD27F8(&qword_1EBAC4EE0, type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsEntity);
      sub_1B964C740();
      return sub_1B90FA5CC();
    }

    result = sub_1B90FA5CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9102614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F20, type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SageAppEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9102694(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAC4DB0, type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SageAppEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9102704(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAC4DB0, type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SageAppEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9102790()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4CD8);
  __swift_project_value_buffer(v0, qword_1EBAC4CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "flight_code";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "departure_timestamp";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "departure_airport";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_FlightEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9103204(v3, v4, v5, v6, v7);
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

void Apple_Parsec_Siri_Context_FlightEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22_3();
  v5 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_1();
  if (!v14 || (OUTLINED_FUNCTION_156_0(v12, v13, 1), (v0 = v1) == 0))
  {
    type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(0);
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v2);
    if (v15)
    {
      sub_1B8D9207C(v2, &off_1EBAB90F0, &unk_1B964D8E0);
    }

    else
    {
      (*(v7 + 32))(v11, v2, v5);
      OUTLINED_FUNCTION_2_33();
      sub_1B8CD27F8(v16, v17, MEMORY[0x1E69AA8F8]);
      OUTLINED_FUNCTION_168_4();
      sub_1B964C740();
      if (v0)
      {
        v18 = OUTLINED_FUNCTION_424();
        v19(v18);
        goto LABEL_12;
      }

      v20 = OUTLINED_FUNCTION_424();
      v21(v20);
    }

    OUTLINED_FUNCTION_1();
    if (!v22 || (sub_1B964C700(), !v0))
    {
      sub_1B964C290();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9102D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F18, type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_FlightEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9102D94(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAC4EC8, type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_FlightEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9102E04(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAC4EC8, type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_FlightEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9102E90()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4CF0);
  __swift_project_value_buffer(v0, qword_1EBAC4CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start_date_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requested_properties";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "end_date_time";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_SportsEntity.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9103204(v7, v8, v9, v10, v11);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9103150(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9103150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(0);
  sub_1B964C110();
  sub_1B8CD27F8(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t sub_1B9103204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_1B964C110();
  OUTLINED_FUNCTION_2_33();
  sub_1B8CD27F8(v5, v6, MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Context_SportsEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v0;
  v35 = v3;
  v36 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v6 = OUTLINED_FUNCTION_183(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44_0();
  v32 = v7;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v33 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_87_0();
  v34 = type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(0);
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v10);
  if (v17)
  {
    v31 = v13;
    sub_1B8D9207C(v10, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_444();
    v19(v18);
    OUTLINED_FUNCTION_2_33();
    sub_1B8CD27F8(v20, v21, MEMORY[0x1E69AA8F8]);
    OUTLINED_FUNCTION_168_4();
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    if (v1)
    {
      goto LABEL_12;
    }

    v31 = v13;
    v22 = OUTLINED_FUNCTION_424();
    v23(v22);
  }

  v24 = v33;
  if (!*(*v2 + 16) || (OUTLINED_FUNCTION_79_0(), sub_1B964C6E0(), !v1))
  {
    v25 = v32;
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v25);
    if (v17)
    {
      sub_1B8D9207C(v25, &off_1EBAB90F0, &unk_1B964D8E0);
    }

    else
    {
      v26 = v31;
      (*(v31 + 32))(v24, v25, v11);
      OUTLINED_FUNCTION_2_33();
      sub_1B8CD27F8(v27, v28, MEMORY[0x1E69AA8F8]);
      OUTLINED_FUNCTION_79_0();
      sub_1B964C740();
      if (v1)
      {
LABEL_12:
        v29 = OUTLINED_FUNCTION_424();
        v30(v29);
        goto LABEL_15;
      }

      (*(v26 + 8))(v24, v11);
    }

    sub_1B964C290();
  }

LABEL_15:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B91036A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F10, type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9103728(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAC4EE0, type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9103798(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAC4EE0, type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9103830()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB40D8);
  __swift_project_value_buffer(v0, qword_1EBAB40D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance_substring";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_token_index";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end_token_index";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "score";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_ClientEntityAlignment.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_Context_ClientEntityAlignment.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
      {
        if (!*(v2 + 28) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
        {
          if (*(v2 + 32) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
          {
            type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_ClientEntityAlignment.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 24) != *(v2 + 24) || *(v3 + 28) != *(v2 + 28) || *(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  v8 = sub_1B8CD27F8(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B9103DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F08, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntityAlignment);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9103E68(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAB40C8, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntityAlignment);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9103ED8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAB40C8, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment, protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntityAlignment);

  return sub_1B964C5D0();
}

uint64_t sub_1B9103F70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB59C8);
  __swift_project_value_buffer(v0, qword_1EBAB59C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "previous_siri_executed_domain";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "previous_siri_nl_domain";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "domain_hints";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "alert_domain_hints";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "background_domain_hints";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "dictation_prompt";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "strict_prompt";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "object_disambiguation";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "ambiguity_target";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "listen_after_speaking";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "prompt_target_hints";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9104380@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B964C780();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_48_7();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t Apple_Parsec_Siri_Context_PromptContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 4:
      case 5:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 6:
      case 7:
      case 8:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91044F8(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91044F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_PromptContext(0);
  sub_1B964C130();
  sub_1B8CD27F8(&qword_1EBAB3B48, MEMORY[0x1E69AA930], MEMORY[0x1E69AA928]);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Context_PromptContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_159();
  v6 = sub_1B964C130();
  OUTLINED_FUNCTION_30_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_156_0(v13, v14, 1), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_156_0(v16, v17, 2), (v0 = v1) == 0))
    {
      if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6E0(), (v0 = v1) == 0))
      {
        if (!*(*(v2 + 40) + 16) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6E0(), (v0 = v1) == 0))
        {
          if (!*(*(v2 + 48) + 16) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6E0(), (v0 = v1) == 0))
          {
            if (*(v2 + 56) != 1 || (OUTLINED_FUNCTION_480_0(), sub_1B964C670(), (v0 = v1) == 0))
            {
              if (*(v2 + 57) != 1 || (OUTLINED_FUNCTION_480_0(), sub_1B964C670(), (v0 = v1) == 0))
              {
                if (*(v2 + 58) != 1 || (OUTLINED_FUNCTION_480_0(), sub_1B964C670(), (v0 = v1) == 0))
                {
                  type metadata accessor for Apple_Parsec_Siri_Context_PromptContext(0);
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_90(v3);
                  if (v19)
                  {
                    sub_1B8D9207C(v3, &qword_1EBAB9270, &unk_1B9660450);
                  }

                  else
                  {
                    (*(v8 + 32))(v12, v3, v6);
                    OUTLINED_FUNCTION_98_6();
                    sub_1B8CD27F8(v20, v21, MEMORY[0x1E69AA928]);
                    v1 = v0;
                    sub_1B964C740();
                    if (v0)
                    {
                      (*(v8 + 8))(v12, v6);
                      goto LABEL_28;
                    }

                    (*(v8 + 8))(v12, v6);
                  }

                  if (*(v2 + 59) != 1 || (OUTLINED_FUNCTION_175_5(), sub_1B964C670(), !v1))
                  {
                    if (!*(*(v2 + 64) + 16) || (OUTLINED_FUNCTION_175_5(), sub_1B964C6E0(), !v1))
                    {
                      sub_1B964C290();
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

LABEL_28:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Context_PromptContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v3 = sub_1B964C130();
  OUTLINED_FUNCTION_30_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9278, &unk_1B964DA60);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79();
  v14 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v15 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v1 + 32), *(v0 + 32)) & 1) == 0 || (sub_1B8D6123C(*(v1 + 40), *(v0 + 40)) & 1) == 0 || (sub_1B8D6123C(*(v1 + 48), *(v0 + 48)) & 1) == 0 || *(v1 + 56) != *(v0 + 56) || *(v1 + 57) != *(v0 + 57) || *(v1 + 58) != *(v0 + 58))
  {
    goto LABEL_30;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_PromptContext(0);
  v16 = *(v12 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v14)
  {
    OUTLINED_FUNCTION_37_0(v2 + v16);
    if (v14)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9270, &unk_1B9660450);
      goto LABEL_27;
    }

LABEL_25:
    sub_1B8D9207C(v2, &qword_1EBAB9278, &unk_1B964DA60);
LABEL_30:
    v29 = 0;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_200();
    v19(v18);
    goto LABEL_25;
  }

  (*(v5 + 32))(v9, v2 + v16, v3);
  OUTLINED_FUNCTION_98_6();
  sub_1B8CD27F8(v20, v21, MEMORY[0x1E69AA938]);
  v22 = OUTLINED_FUNCTION_67_2();
  v23 = *(v5 + 8);
  v24 = OUTLINED_FUNCTION_128();
  v23(v24);
  v25 = OUTLINED_FUNCTION_200();
  v23(v25);
  sub_1B8D9207C(v2, &qword_1EBAB9270, &unk_1B9660450);
  if ((v22 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (*(v1 + 59) != *(v0 + 59) || (sub_1B8D6123C(*(v1 + 64), *(v0 + 64)) & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_58();
  v28 = sub_1B8CD27F8(v26, v27, MEMORY[0x1E69AAC10]);
  v29 = OUTLINED_FUNCTION_199_0(v28);
LABEL_31:
  OUTLINED_FUNCTION_264(v29);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9104CB0()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD27F8(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9104D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27F8(&qword_1EBAC4F00, type metadata accessor for Apple_Parsec_Siri_Context_PromptContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_PromptContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9104E08(uint64_t a1)
{
  v2 = sub_1B8CD27F8(&qword_1EBAB59B8, type metadata accessor for Apple_Parsec_Siri_Context_PromptContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_PromptContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9104E78(uint64_t a1, uint64_t a2)
{
  sub_1B8CD27F8(&qword_1EBAB59B8, type metadata accessor for Apple_Parsec_Siri_Context_PromptContext, protocol conformance descriptor for Apple_Parsec_Siri_Context_PromptContext);

  return sub_1B964C5D0();
}

unint64_t sub_1B9104F18()
{
  result = qword_1EBAC4D80;
  if (!qword_1EBAC4D80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption, &type metadata for Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption, v0, v1);
    atomic_store(result, &qword_1EBAC4D80);
  }

  return result;
}

unint64_t sub_1B9104F6C()
{
  result = qword_1EBAB4098;
  if (!qword_1EBAB4098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_MusicRankingInfluence, &type metadata for Apple_Parsec_Siri_Context_MusicRankingInfluence, v0, v1);
    atomic_store(result, &qword_1EBAB4098);
  }

  return result;
}

unint64_t sub_1B9104FC0()
{
  result = qword_1EBAB48A0;
  if (!qword_1EBAB48A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB48A0);
  }

  return result;
}

unint64_t sub_1B9105014()
{
  result = qword_1EBAB4860;
  if (!qword_1EBAB4860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB4860);
  }

  return result;
}

unint64_t sub_1B910506C()
{
  result = qword_1EBAB4090;
  if (!qword_1EBAB4090)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_MusicRankingInfluence, &type metadata for Apple_Parsec_Siri_Context_MusicRankingInfluence, v0, v1);
    atomic_store(result, &qword_1EBAB4090);
  }

  return result;
}

unint64_t sub_1B91050C4()
{
  result = qword_1EBAB4080;
  if (!qword_1EBAB4080)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_MusicRankingInfluence, &type metadata for Apple_Parsec_Siri_Context_MusicRankingInfluence, v0, v1);
    atomic_store(result, &qword_1EBAB4080);
  }

  return result;
}

unint64_t sub_1B910511C()
{
  result = qword_1EBAB4088;
  if (!qword_1EBAB4088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_MusicRankingInfluence, &type metadata for Apple_Parsec_Siri_Context_MusicRankingInfluence, v0, v1);
    atomic_store(result, &qword_1EBAB4088);
  }

  return result;
}

unint64_t sub_1B91051A4()
{
  result = qword_1EBAC4E08;
  if (!qword_1EBAC4E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption, &type metadata for Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption, v0, v1);
    atomic_store(result, &qword_1EBAC4E08);
  }

  return result;
}

unint64_t sub_1B91051FC()
{
  result = qword_1EBAC4E10;
  if (!qword_1EBAC4E10)
  {
    result = swift_getWitnessTable("钀5 Y\n", &type metadata for Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption, v0, v1);
    atomic_store(result, &qword_1EBAC4E10);
  }

  return result;
}

unint64_t sub_1B9105254()
{
  result = qword_1EBAC4E18;
  if (!qword_1EBAC4E18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption, &type metadata for Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption, v0, v1);
    atomic_store(result, &qword_1EBAC4E18);
  }

  return result;
}

unint64_t sub_1B91052DC()
{
  result = qword_1EBAB4898;
  if (!qword_1EBAB4898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB4898);
  }

  return result;
}

unint64_t sub_1B9105334()
{
  result = qword_1EBAB4888;
  if (!qword_1EBAB4888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB4888);
  }

  return result;
}

unint64_t sub_1B910538C()
{
  result = qword_1EBAB4890;
  if (!qword_1EBAB4890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType, v0, v1);
    atomic_store(result, &qword_1EBAB4890);
  }

  return result;
}

unint64_t sub_1B91053E4()
{
  result = qword_1EBAB4858;
  if (!qword_1EBAB4858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB4858);
  }

  return result;
}

unint64_t sub_1B910543C()
{
  result = qword_1EBAB4848;
  if (!qword_1EBAB4848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB4848);
  }

  return result;
}

unint64_t sub_1B9105494()
{
  result = qword_1EBAB4850;
  if (!qword_1EBAB4850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, &type metadata for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB4850);
  }

  return result;
}

uint64_t sub_1B9106420(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B91064CC(uint64_t a1)
{
  sub_1B91065E8(319, &qword_1ED9CF6E0, type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B91065E8(319, &qword_1ED9EC568, type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91065E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9106674(uint64_t a1)
{
  sub_1B91065E8(319, &qword_1ED9CF668, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9106808(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91065E8(319, &qword_1ED9D3828, type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B910690C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_1B91065E8(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91069D8(uint64_t a1)
{
  sub_1B91065E8(319, &qword_1ED9CF5B0, type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B91065E8(319, qword_1ED9D1C10, type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9106B60(uint64_t a1)
{
  sub_1B91065E8(319, qword_1ED9D1CC0, type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9106C14(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9106CB0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91065E8(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9106D9C(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B91065E8(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9106E90(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9106F50(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B91065E8(319, qword_1ED9FBDE8, MEMORY[0x1E69AA930], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B910704C(uint64_t a1)
{
  sub_1B91065E8(319, &qword_1ED9EBE08, type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B91065E8(319, &qword_1ED9EE138, type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B91065E8(319, &qword_1ED9EE1A8, type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B91065E8(319, &qword_1ED9EE1C0, type metadata accessor for Apple_Parsec_Siri_Context_PromptContext, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_90_5()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_141_7()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_179_0@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;
  *(v2 + 16) = v3;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_185_3()
{

  return sub_1B90FA524();
}

uint64_t OUTLINED_FUNCTION_186_2@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0) + 20);
  if (qword_1ED9CA4A8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1ED9CA4B0;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.id.getter()
{
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Context_ResultEntity.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_23_11();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9107804()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Context_ResultEntity.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_17();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B910C618(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.name.getter()
{
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Context_ResultEntity.name.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_23_11();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91079DC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Context_ResultEntity.name.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_17();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B910C618(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.domain.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_29();
  result = OUTLINED_FUNCTION_10_4(v1 + 48, v3);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v5;
  return result;
}

void Apple_Parsec_Siri_Context_ResultEntity.domain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_24_17();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v9);
    *(v2 + v1) = v8;
  }

  OUTLINED_FUNCTION_9_3(v8 + 48, v7);
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.domain.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_25();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 48);
  v5 = *(v4 + 56);
  *(v1 + 72) = *(v4 + 48);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9107B94()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 72);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_17_17();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B910C618(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v2)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_18(v9 + 48, v0 + v13);
  *(v9 + 48) = v4;
  *(v9 + 56) = v7;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.metadata.getter()
{
  OUTLINED_FUNCTION_10_25();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.metadata.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_113_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v0;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.metadata.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 64);
  *(v1 + 48) = *(v4 + 64);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9107D80()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Apple_Parsec_Siri_Context_ResultEntity.metadata.setter();
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
      OUTLINED_FUNCTION_17_17();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B910C618(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter()
{
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_10_4(v0 + 72, v1);
  v2 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v2, v3);
  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Context_ResultEntity.usoEntity.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_23_11();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 72, v5);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  *(v6 + 72) = v2;
  *(v6 + 80) = v0;
  sub_1B8D538A0(v9, v10);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.usoEntity.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 72);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9107F70()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v6, v7);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Context_ResultEntity.usoEntity.setter();
    v8 = v0[6];
    v9 = v0[7];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_163_1();
    v11 = *(v4 + v1);
    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_17();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B910C618(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3(v11 + 72);
    v8 = *(v11 + 72);
    v9 = *(v11 + 80);
    *(v11 + 72) = v3;
    *(v11 + 80) = v2;
  }

  sub_1B8D538A0(v8, v9);

  free(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.kgID.getter()
{
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_10_4(v0 + 88, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Context_ResultEntity.kgID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_23_11();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 88, v5);
  *(v6 + 88) = v2;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.kgID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 88);
  v6 = *(v5 + 96);
  *(v1 + 48) = *(v5 + 88);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9108150()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Context_ResultEntity.kgID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_17();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B910C618(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 88);
    *(v7 + 88) = v3;
    *(v7 + 96) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.getter()
{
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_10_4(v0 + 104, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_23_11();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 104, v5);
  *(v6 + 104) = v2;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 104);
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9108328()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_17();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B910C618(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 104);
    *(v7 + 104) = v3;
    *(v7 + 112) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.adamIds.getter()
{
  OUTLINED_FUNCTION_10_25();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 120, v2);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.adamIds.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_113_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 120, v5);
  *(v6 + 120) = v0;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.adamIds.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 120);
  *(v1 + 48) = *(v4 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9108500()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Apple_Parsec_Siri_Context_ResultEntity.adamIds.setter();
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
      OUTLINED_FUNCTION_17_17();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B910C618(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_59_3(v7 + 120);
    *(v7 + 120) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.locationTypeInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_397();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    Apple_Parsec_Siri_Context_LocationTypeInfo.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5038, &qword_1B9691780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_18();
    return sub_1B910CF78();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.locationTypeInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5038, &qword_1B9691780);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_24_17() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B910C618(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_118_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = 0;
  v1[11] = v2;
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = v2;
  v1[15] = 0;
  v1[16] = v2;
  v1[17] = 0;
  v1[18] = v2;
  type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Context_ResultEntity.locationTypeInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    v13[2] = 0;
    v13[3] = v15;
    v13[4] = 0;
    v13[5] = v15;
    v13[6] = 0;
    v13[7] = v15;
    v13[8] = 0;
    v13[9] = v15;
    v13[10] = 0;
    v13[11] = v15;
    v13[12] = 0;
    v13[13] = 0;
    v13[14] = v15;
    v13[15] = 0;
    v13[16] = v15;
    v13[17] = 0;
    v13[18] = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5038, &qword_1B9691780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_18();
    OUTLINED_FUNCTION_120_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.websiteTypeInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_397();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5040, &qword_1B9691788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_32();
    return sub_1B910CF78();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.websiteTypeInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5040, &qword_1B9691788);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_24_17() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B910C618(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_118_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_WebsiteTypeInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Context_ResultEntity.websiteTypeInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_110_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5040, &qword_1B9691788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_32();
    OUTLINED_FUNCTION_120_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9108CD0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B910CFD0();
    v2(v3);
    sub_1B910D028();
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

uint64_t sub_1B9108DA4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13 - 8];
  OUTLINED_FUNCTION_8_29();
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

void sub_1B9108EA4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B910C618(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.eventTypeInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = sub_1B964C110();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v10);
    result = OUTLINED_FUNCTION_178(v7, 1, v8);
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC5048, &qword_1B9691790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_19();
    return sub_1B910CF78();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.eventTypeInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5048, &qword_1B9691790);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_24_17() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B910C618(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_118_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
}

void Apple_Parsec_Siri_Context_ResultEntity.eventTypeInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    v13[16] = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = sub_1B964C110();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5048, &qword_1B9691790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_120_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.sportsInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_397();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    a1[4] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5050, &qword_1B9691798);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_22();
    return sub_1B910CF78();
  }

  return result;
}

uint64_t sub_1B9109568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B910CFD0();
  return a7(v11);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.sportsInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5050, &qword_1B9691798);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_24_17() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B910C618(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_118_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Context_ResultEntity.sportsInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    v13[2] = 0;
    v13[3] = v15;
    v13[4] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5050, &qword_1B9691798);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_120_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.groupID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_26(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
  OUTLINED_FUNCTION_62_0(v5);
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.groupSequenceNumber.getter()
{
  OUTLINED_FUNCTION_10_25();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber, v4);
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.groupSequenceNumber.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_113_5(0);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
  result = OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber, v5);
  *(v6 + v9) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.groupSequenceNumber.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_25();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber);
  *(v1 + 80) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9109ADC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 80);
  v6 = *(v2 + 84);
  v7 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B910C618(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
  OUTLINED_FUNCTION_18(v9 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber, v2 + v12);
  *(v9 + v13) = v5;

  free(v2);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.isPresentInResponse.getter()
{
  OUTLINED_FUNCTION_10_25();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse, v4);
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.isPresentInResponse.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_113_5(0);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
  result = OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse, v5);
  *(v6 + v9) = a1 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.isPresentInResponse.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_25();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9109CA4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B910C618(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
  OUTLINED_FUNCTION_18(v8 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse, v3 + v11);
  *(v8 + v12) = v6;

  free(v3);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.origin.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_25();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin);
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9109DF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_10_25();
  v7 = *(v2 + v6) + *a1;
  result = OUTLINED_FUNCTION_6_2(v5);
  v9 = *(v7 + 8);
  *a2 = *v7;
  *(a2 + 8) = v9;
  return result;
}

void *sub_1B9109E48@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B9109E90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void sub_1B9109EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = v20;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v20 + v29);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v32 = OUTLINED_FUNCTION_40_0();
    v31 = sub_1B910C618(v32);
    *(v25 + v29) = v31;
  }

  v33 = v31 + *v24;
  OUTLINED_FUNCTION_18(v33, &a10);
  *v33 = v27;
  *(v33 + 8) = v28;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.listResolutionType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_25();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType);
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9109FEC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_238();
  v6 = *(v5 + 72);
  v7 = *(v0 + 84);
  v8 = *(v0 + 88);
  v9 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v0 + 84);
    v13 = *(v0 + 88);
    OUTLINED_FUNCTION_17_17();
    v14 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B910C618(v14);
    *(v13 + v12) = v11;
  }

  v15 = 48;
  if (v4)
  {
    v15 = 24;
  }

  v16 = v11 + *v2;
  OUTLINED_FUNCTION_18(v16, v0 + v15);
  *v16 = v6;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t sub_1B910A0AC(void *a1)
{
  v1 = OUTLINED_FUNCTION_10_25();
  OUTLINED_FUNCTION_6_2(v1);

  return OUTLINED_FUNCTION_288();
}

void sub_1B910A144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_17();
    v31 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B910C618(v31);
    *(v27 + v28) = v30;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_18(v32, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.requestedPropertyAnswer.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_26(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
  OUTLINED_FUNCTION_62_0(v5);
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B910A260()
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
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_17_17();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B910C618(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.Origin.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B910A428@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_Context_ResultEntity.Origin.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B910A45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9113964();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B910A4EC@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B910A520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9113910();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Siri_Context_ResultEntity.Origin.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B910A60C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_Context_ResultEntity.Origin.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*static Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B910A6C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.stateCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.stateName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.countryCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.countryName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.timezone.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.address.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(v2) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Context_WebsiteTypeInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Context_WebsiteTypeInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Apple_Parsec_Siri_Context_WebsiteTypeInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.startTime.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v5);
  OUTLINED_FUNCTION_397();
  sub_1B8D92024();
  sub_1B964C110();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B964C100();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_397();
    return v7();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.startTime.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_3_0();
  v3();
  v4 = OUTLINED_FUNCTION_60_6();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Siri_Context_EventTypeInfo.startTime.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v1[2] = OUTLINED_FUNCTION_104_2(v8);
  OUTLINED_FUNCTION_30_1();
  v1[3] = v9;
  v11 = *(v10 + 64);
  v1[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_102_6(v12);
  OUTLINED_FUNCTION_25_9(*(v13 + 32));
  OUTLINED_FUNCTION_75(v0);
  if (v14)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_75(v0);
    if (!v14)
    {
      sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.hasStartTime.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v4);
  OUTLINED_FUNCTION_274_0();
  sub_1B964C110();
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_3_0();
  sub_1B8D9207C(v10, v11, v12);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Siri_Context_EventTypeInfo.clearStartTime()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.startDate.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v5);
  OUTLINED_FUNCTION_397();
  sub_1B8D92024();
  sub_1B964C110();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B964C100();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_397();
    return v7();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.startDate.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_3_0();
  v3();
  v4 = OUTLINED_FUNCTION_60_6();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Siri_Context_EventTypeInfo.startDate.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v1[2] = OUTLINED_FUNCTION_104_2(v8);
  OUTLINED_FUNCTION_30_1();
  v1[3] = v9;
  v11 = *(v10 + 64);
  v1[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_102_6(v12);
  OUTLINED_FUNCTION_25_9(*(v13 + 36));
  OUTLINED_FUNCTION_75(v0);
  if (v14)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_75(v0);
    if (!v14)
    {
      sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B910B418()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_43_1();
    v9 = OUTLINED_FUNCTION_236();
    v10(v9);
  }

  else
  {
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_43_1();
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.hasStartDate.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v4);
  OUTLINED_FUNCTION_274_0();
  sub_1B964C110();
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_3_0();
  sub_1B8D9207C(v10, v11, v12);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Siri_Context_EventTypeInfo.clearStartDate()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.endTime.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v5);
  OUTLINED_FUNCTION_397();
  sub_1B8D92024();
  sub_1B964C110();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B964C100();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_397();
    return v7();
  }

  return result;
}

uint64_t sub_1B910B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v8 = OUTLINED_FUNCTION_461();
  v9(v8);
  return a5(v5);
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.endTime.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_3_0();
  v3();
  v4 = OUTLINED_FUNCTION_60_6();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Siri_Context_EventTypeInfo.endTime.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v1[2] = OUTLINED_FUNCTION_104_2(v8);
  OUTLINED_FUNCTION_30_1();
  v1[3] = v9;
  v11 = *(v10 + 64);
  v1[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_102_6(v12);
  OUTLINED_FUNCTION_25_9(*(v13 + 40));
  OUTLINED_FUNCTION_75(v0);
  if (v14)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_75(v0);
    if (!v14)
    {
      sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.hasEndTime.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v4);
  OUTLINED_FUNCTION_274_0();
  sub_1B964C110();
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_3_0();
  sub_1B8D9207C(v10, v11, v12);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Siri_Context_EventTypeInfo.clearEndTime()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 40), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.details.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.sport.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.league.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.teams.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B910BD34()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B910BDBC()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B910BE88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4800);
  __swift_project_value_buffer(v0, qword_1EBAB4800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1B96511A0;
  v4 = v42 + v3 + v1[14];
  *(v42 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v42 + v3 + v2 + v1[14];
  *(v42 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v42 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "domain";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v42 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v42 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "uso_entity";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v42 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "kg_id";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v42 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "maps_encrypted_muid";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v42 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "adam_ids";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v42 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "location_type_info";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v42 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "website_type_info";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v7();
  v25 = (v42 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 17;
  *v26 = "event_type_info";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v42 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 18;
  *v28 = "sports_info";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v42 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 10;
  *v30 = "group_id";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v42 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 11;
  *v32 = "group_sequence_number";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v7();
  v33 = (v42 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "is_present_in_response";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v7();
  v35 = (v42 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "origin";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v7();
  v37 = (v42 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "list_resolution_type";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v42 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "requested_property_answer";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B910C450()
{
  OUTLINED_FUNCTION_17_17();
  result = sub_1B910C4A0();
  qword_1ED9CA4B0 = result;
  return result;
}

uint64_t sub_1B910C4A0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  sub_1B964C1C0();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = sub_1B964C7B0();
  *(v0 + 72) = xmmword_1B9652FE0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__locationTypeInfo;
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__websiteTypeInfo;
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__eventTypeInfo;
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__sportsInfo[0];
  v9 = type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse) = 0;
  v11 = v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B910C618(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5050, &qword_1B9691798);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5048, &qword_1B9691790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5040, &qword_1B9691788);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5038, &qword_1B9691780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v62 - v10;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v63 = (v1 + 48);
  *(v1 + 56) = 1;
  sub_1B964C1C0();
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = sub_1B964C7B0();
  *(v1 + 72) = xmmword_1B9652FE0;
  *(v1 + 88) = 0;
  v64 = (v1 + 88);
  *(v1 + 96) = 0xE000000000000000;
  *(v1 + 104) = 0;
  v65 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = v11;
  v66 = (v1 + 120);
  v12 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__locationTypeInfo;
  v67 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__locationTypeInfo;
  v13 = type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__websiteTypeInfo;
  v68 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__websiteTypeInfo;
  v15 = type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__eventTypeInfo;
  v70 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__eventTypeInfo;
  v17 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__sportsInfo[0];
  v71 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__sportsInfo[0];
  v19 = type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
  v72 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v74 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber) = 0;
  v75 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse) = 0;
  v21 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin;
  v76 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType;
  v78 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
  v79 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  swift_beginAccess();
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v25;
  *(v1 + 24) = v24;

  swift_beginAccess();
  v27 = *(a1 + 32);
  v26 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v27;
  *(v1 + 40) = v26;

  swift_beginAccess();
  v28 = *(a1 + 48);
  LOBYTE(v24) = *(a1 + 56);
  v29 = v63;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 56) = v24;
  swift_beginAccess();
  v30 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v30;

  swift_beginAccess();
  v31 = *(a1 + 72);
  v32 = *(a1 + 80);
  swift_beginAccess();
  v33 = *(v1 + 72);
  v34 = *(v1 + 80);
  *(v1 + 72) = v31;
  *(v1 + 80) = v32;
  sub_1B8D91FCC(v31, v32);
  sub_1B8D538A0(v33, v34);
  swift_beginAccess();
  v36 = *(a1 + 88);
  v35 = *(a1 + 96);
  v37 = v64;
  swift_beginAccess();
  *v37 = v36;
  *(v1 + 96) = v35;

  swift_beginAccess();
  v39 = *(a1 + 104);
  v38 = *(a1 + 112);
  v40 = v65;
  swift_beginAccess();
  *v40 = v39;
  *(v1 + 112) = v38;

  swift_beginAccess();
  v41 = *(a1 + 120);
  v42 = v66;
  swift_beginAccess();
  *v42 = v41;

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
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  v46 = v72;
  swift_beginAccess();
  *v46 = v45;
  v46[1] = v44;

  v47 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
  swift_beginAccess();
  LODWORD(v47) = *(a1 + v47);
  v48 = v74;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
  swift_beginAccess();
  LOBYTE(v49) = *(a1 + v49);
  v50 = v75;
  swift_beginAccess();
  *(v1 + v50) = v49;
  v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin);
  swift_beginAccess();
  v52 = *v51;
  LOBYTE(v51) = *(v51 + 8);
  v53 = v76;
  swift_beginAccess();
  *v53 = v52;
  *(v53 + 8) = v51;
  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType);
  swift_beginAccess();
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  v56 = v78;
  swift_beginAccess();
  *v56 = v55;
  *(v56 + 8) = v54;
  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];

  v60 = v79;
  swift_beginAccess();
  *v60 = v59;
  v60[1] = v58;

  return v1;
}

uint64_t sub_1B910CF78()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B910CFD0()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B910D028()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B910D0BC()
{

  sub_1B8D538A0(*(v0 + 72), *(v0 + 80));

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__locationTypeInfo, &qword_1EBAC5038, &qword_1B9691780);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__websiteTypeInfo[0], &qword_1EBAC5040, &qword_1B9691788);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__eventTypeInfo, &qword_1EBAC5048, &qword_1B9691790);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__sportsInfo[0], &qword_1EBAC5050, &qword_1B9691798);

  return v0;
}

uint64_t sub_1B910D1B4()
{
  v0 = sub_1B910D0BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.decodeMessage<A>(decoder:)()
{
  v3 = v0;
  OUTLINED_FUNCTION_12_8();
  v5 = v4;
  v6 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity._StorageClass(0);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B910C618(v9);
    *(v3 + v6) = v8;
  }

  return sub_1B910D2A4(v8, v5, v2, v1);
}

uint64_t sub_1B910D2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        break;
      case 2:
        sub_1B8DC46F4(a2, a1);
        break;
      case 3:
        sub_1B910D580(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B910D614(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B910D738(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B8E6D9F8(a2, a1);
        break;
      case 7:
        sub_1B8EC1004(a2, a1);
        break;
      case 8:
        sub_1B910D7BC(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B910D898(a2, a1, a3, a4);
        break;
      case 10:
      case 19:
        sub_1B8DAB218();
        break;
      case 11:
        sub_1B910D974(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B910DA00(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B910DA84(a2, a1, a3, a4);
        break;
      case 14:
        v11 = sub_1B9113964;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin;
        v17 = &type metadata for Apple_Parsec_Siri_Context_ResultEntity.Origin;
        goto LABEL_18;
      case 15:
        v11 = sub_1B9113910;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType;
        v17 = &type metadata for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType;
LABEL_18:
        sub_1B910DB10(v12, v13, v14, v15, v16, v11, v17);
        break;
      case 17:
        sub_1B910DBB4(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B910DC90(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B910D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8DEE788();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B910D614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C1C0();
  v4 = MEMORY[0x1E69AAB10];
  sub_1B8CD2840(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  sub_1B8CD2840(&qword_1EBAC5190, v4, MEMORY[0x1E69AAB18]);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B910D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C470();
  return swift_endAccess();
}

uint64_t sub_1B910D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  sub_1B8CD2840(&qword_1EBAC50E0, type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_LocationTypeInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B910D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  sub_1B8CD2840(&qword_1EBAC50F8, type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_WebsiteTypeInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B910D974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B910DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B910DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B910DB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B910DBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B8CD2840(&qword_1EBAC5110, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_EventTypeInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B910DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  sub_1B8CD2840(&qword_1EBAC5128, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B910DDD0(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B910DDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5050, &qword_1B9691798);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = v51 - v9;
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  MEMORY[0x1EEE9AC00](v10);
  v51[4] = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5048, &qword_1B9691790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = v51 - v13;
  v54 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  MEMORY[0x1EEE9AC00](v54);
  v51[5] = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5040, &qword_1B9691788);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = v51 - v16;
  v57 = type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5038, &qword_1B9691780);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v51 - v19;
  v65 = type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  MEMORY[0x1EEE9AC00](v65);
  v55 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *(a1 + 24);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 40);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48))
  {
    v26 = *(a1 + 56);
    v63 = *(a1 + 48);
    v64 = v26;
    sub_1B8DEE788();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  v51[2] = a3;
  v51[3] = a2;
  swift_beginAccess();
  v28 = *(*(a1 + 64) + 16);
  v51[0] = v10;
  if (v28)
  {
    v51[1] = sub_1B964C280();
    sub_1B964C1C0();
    v29 = MEMORY[0x1E69AAB10];
    sub_1B8CD2840(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
    sub_1B8CD2840(&qword_1EBAC5190, v29, MEMORY[0x1E69AAB18]);

    sub_1B964C5E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!sub_1B8D99EA8(*(a1 + 72), *(a1 + 80)))
  {
    v30 = *(a1 + 72);
    v31 = *(a1 + 80);
    sub_1B8D91FCC(v30, v31);
    sub_1B964C6A0();
    if (v4)
    {
      return sub_1B8D538A0(v30, v31);
    }

    sub_1B8D538A0(v30, v31);
  }

  swift_beginAccess();
  v32 = *(a1 + 96);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_25;
    }
  }

LABEL_25:
  swift_beginAccess();
  v34 = *(a1 + 112);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v65) == 1)
  {
    sub_1B8D9207C(v20, &qword_1EBAC5038, &qword_1B9691780);
  }

  else
  {
    sub_1B910CF78();
    sub_1B8CD2840(&qword_1EBAC50E0, type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_LocationTypeInfo);
    sub_1B964C740();
    if (v4)
    {
      return sub_1B910D028();
    }

    sub_1B910D028();
  }

  swift_beginAccess();
  v36 = v56;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v36, 1, v57) == 1)
  {
    sub_1B8D9207C(v36, &qword_1EBAC5040, &qword_1B9691788);
    goto LABEL_41;
  }

  sub_1B910CF78();
  sub_1B8CD2840(&qword_1EBAC50F8, type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_WebsiteTypeInfo);
  sub_1B964C740();
  if (v4)
  {
    return sub_1B910D028();
  }

  sub_1B910D028();
LABEL_41:
  v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
  swift_beginAccess();
  v38 = v37[1];
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39 || (, sub_1B964C700(), result = , !v4))
  {
    v40 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
    swift_beginAccess();
    if (!*(a1 + v40) || (result = sub_1B964C710(), !v4))
    {
      swift_beginAccess();
      if (!*(*(a1 + 120) + 16) || (, sub_1B964C6E0(), result = , !v4))
      {
        v41 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
        swift_beginAccess();
        if (*(a1 + v41) != 1 || (result = sub_1B964C670(), !v4))
        {
          v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin);
          swift_beginAccess();
          if (!*v42 || (v43 = *(v42 + 8), v61 = *v42, v62 = v43, sub_1B9113964(), result = sub_1B964C680(), !v4))
          {
            v44 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType);
            swift_beginAccess();
            if (!*v44 || (v45 = *(v44 + 8), v59 = *v44, v60 = v45, sub_1B9113910(), result = sub_1B964C680(), !v4))
            {
              swift_beginAccess();
              v46 = v53;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v46, 1, v54) == 1)
              {
                sub_1B8D9207C(v46, &qword_1EBAC5048, &qword_1B9691790);
              }

              else
              {
                sub_1B910CF78();
                sub_1B8CD2840(&qword_1EBAC5110, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_EventTypeInfo);
                sub_1B964C740();
                result = sub_1B910D028();
                if (v4)
                {
                  return result;
                }
              }

              v47 = v52;
              swift_beginAccess();
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v47, 1, v51[0]) == 1)
              {
                sub_1B8D9207C(v47, &qword_1EBAC5050, &qword_1B9691798);
              }

              else
              {
                sub_1B910CF78();
                sub_1B8CD2840(&qword_1EBAC5128, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsInfo);
                sub_1B964C740();
                result = sub_1B910D028();
                if (v4)
                {
                  return result;
                }
              }

              v48 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
              result = swift_beginAccess();
              v49 = v48[1];
              v50 = HIBYTE(v49) & 0xF;
              if ((v49 & 0x2000000000000000) == 0)
              {
                v50 = *v48 & 0xFFFFFFFFFFFFLL;
              }

              if (v50)
              {

                sub_1B964C700();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_ResultEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_10_25();
  if (*(v1 + v2) != *(v0 + v2))
  {

    sub_1B910EBB4();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_50();
  sub_1B8CD2840(v5, v6, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B910EBB4()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = v7 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5170, &qword_1B9692398);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v128 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5050, &qword_1B9691798);
  v13 = OUTLINED_FUNCTION_183(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v131 = v14;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  v141 = v128 - v16;
  v137 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v132 = v19 - v18;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5178, &qword_1B96923A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v138 = v128 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5048, &qword_1B9691790);
  v23 = OUTLINED_FUNCTION_183(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  v134 = v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  v149 = v128 - v26;
  v144 = type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v135 = (v29 - v28);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5180, &qword_1B96923A8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  v145 = v128 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5040, &qword_1B9691788);
  v33 = OUTLINED_FUNCTION_183(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44_0();
  v140 = v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  v143 = v128 - v36;
  v147 = type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v139 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5188, &unk_1B96923B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v41);
  v148 = v128 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5038, &qword_1B9691780);
  v44 = OUTLINED_FUNCTION_183(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44_0();
  v146 = v45;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v128 - v47;
  OUTLINED_FUNCTION_521(v3 + 16, &v185);
  v49 = *(v3 + 16);
  v50 = *(v3 + 24);
  OUTLINED_FUNCTION_521(v1 + 16, &v184);
  v51 = v49 == *(v1 + 16) && v50 == *(v1 + 24);
  if (v51 || (OUTLINED_FUNCTION_94_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_521(v3 + 32, &v183);
    v52 = *(v3 + 32);
    v53 = *(v3 + 40);
    OUTLINED_FUNCTION_521(v1 + 32, &v182);
    v54 = v52 == *(v1 + 32) && v53 == *(v1 + 40);
    if (v54 || (OUTLINED_FUNCTION_94_3() & 1) != 0)
    {
      OUTLINED_FUNCTION_521(v3 + 48, &v181);
      v55 = *(v3 + 48);
      v56 = *(v3 + 56);
      OUTLINED_FUNCTION_521(v1 + 48, &v180);
      if (sub_1B8D57FD0(v55, v56, *(v1 + 48), *(v1 + 56)))
      {
        v130 = v4;
        OUTLINED_FUNCTION_521(v3 + 64, &v179);
        OUTLINED_FUNCTION_521(v1 + 64, &v178);

        sub_1B8DB5B64();
        v58 = v57;

        if ((v58 & 1) == 0)
        {
          goto LABEL_72;
        }

        v128[1] = v8;
        v129 = v11;
        OUTLINED_FUNCTION_521(v3 + 72, &v177);
        v59 = *(v3 + 72);
        v60 = *(v3 + 80);
        OUTLINED_FUNCTION_521(v1 + 72, &v176);
        v62 = *(v1 + 72);
        v61 = *(v1 + 80);
        sub_1B8D91FCC(v59, v60);
        sub_1B8D91FCC(v62, v61);
        v63 = MEMORY[0x1BFADC060](v59, v60, v62, v61);
        sub_1B8D538A0(v62, v61);
        sub_1B8D538A0(v59, v60);
        if ((v63 & 1) == 0)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_521(v3 + 88, &v175);
        v64 = *(v3 + 88);
        v65 = *(v3 + 96);
        OUTLINED_FUNCTION_521(v1 + 88, &v174);
        v66 = v64 == *(v1 + 88) && v65 == *(v1 + 96);
        if (!v66 && (OUTLINED_FUNCTION_94_3() & 1) == 0)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_521(v3 + 104, &v173);
        v67 = *(v3 + 104);
        v68 = *(v3 + 112);
        OUTLINED_FUNCTION_521(v1 + 104, &v172);
        v69 = v67 == *(v1 + 104) && v68 == *(v1 + 112);
        if (!v69 && (OUTLINED_FUNCTION_94_3() & 1) == 0)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_521(v3 + 120, &v171);
        v70 = *(v3 + 120);
        OUTLINED_FUNCTION_521(v1 + 120, &v170);
        if ((sub_1B8D6123C(v70, *(v1 + 120)) & 1) == 0)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__locationTypeInfo, &v169);
        sub_1B8D92024();
        OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__locationTypeInfo, &v168);
        v71 = *(v40 + 48);
        v72 = v148;
        sub_1B8D92024();
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v72, 1, v147);
        if (v51)
        {
          sub_1B8D9207C(v48, &qword_1EBAC5038, &qword_1B9691780);
          OUTLINED_FUNCTION_75(v72 + v71);
          v73 = v149;
          if (v51)
          {
            sub_1B8D9207C(v72, &qword_1EBAC5038, &qword_1B9691780);
            goto LABEL_36;
          }
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_75(v72 + v71);
          v73 = v149;
          if (!v74)
          {
            sub_1B910CF78();
            v78 = OUTLINED_FUNCTION_491();
            v79 = static Apple_Parsec_Siri_Context_LocationTypeInfo.== infix(_:_:)(v78);
            sub_1B910D028();
            sub_1B8D9207C(v48, &qword_1EBAC5038, &qword_1B9691780);
            sub_1B910D028();
            sub_1B8D9207C(v72, &qword_1EBAC5038, &qword_1B9691780);
            if ((v79 & 1) == 0)
            {
              goto LABEL_72;
            }

LABEL_36:
            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__websiteTypeInfo, &v167);
            v80 = v143;
            OUTLINED_FUNCTION_52_2();
            OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__websiteTypeInfo, &v166);
            v81 = *(v142 + 48);
            v82 = v145;
            OUTLINED_FUNCTION_89_10();
            sub_1B8D92024();
            v83 = v82;
            OUTLINED_FUNCTION_52_2();
            OUTLINED_FUNCTION_178(v82, 1, v144);
            if (v51)
            {
              sub_1B8D9207C(v80, &qword_1EBAC5040, &qword_1B9691788);
              OUTLINED_FUNCTION_75(v82 + v81);
              v84 = v141;
              if (v51)
              {
                sub_1B8D9207C(v83, &qword_1EBAC5040, &qword_1B9691788);
                goto LABEL_51;
              }
            }

            else
            {
              v85 = v140;
              sub_1B8D92024();
              OUTLINED_FUNCTION_75(v82 + v81);
              if (!v86)
              {
                OUTLINED_FUNCTION_3_32();
                v87 = v135;
                sub_1B910CF78();
                v88 = *v85 == *v87 && v85[1] == v87[1];
                if (!v88 && (sub_1B964C9F0() & 1) == 0)
                {
                  sub_1B910D028();
                  sub_1B8D9207C(v80, &qword_1EBAC5040, &qword_1B9691788);
                  sub_1B910D028();
                  v77 = v82;
                  v75 = &qword_1EBAC5040;
                  v76 = &qword_1B9691788;
                  goto LABEL_71;
                }

                sub_1B964C2B0();
                OUTLINED_FUNCTION_1_50();
                sub_1B8CD2840(v89, v90, MEMORY[0x1E69AAC10]);
                v91 = sub_1B964C850();
                sub_1B910D028();
                v92 = v80;
                v93 = v82;
                OUTLINED_FUNCTION_189(v92);
                v84 = v141;
                sub_1B910D028();
                OUTLINED_FUNCTION_189(v93);
                if ((v91 & 1) == 0)
                {
                  goto LABEL_72;
                }

LABEL_51:
                OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__eventTypeInfo, &v165);
                OUTLINED_FUNCTION_52_2();
                OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__eventTypeInfo, &v164);
                v94 = *(v136 + 48);
                v95 = v138;
                OUTLINED_FUNCTION_52_2();
                OUTLINED_FUNCTION_52_2();
                OUTLINED_FUNCTION_178(v95, 1, v137);
                if (v51)
                {
                  sub_1B8D9207C(v73, &qword_1EBAC5048, &qword_1B9691790);
                  OUTLINED_FUNCTION_37_0(v95 + v94);
                  if (v51)
                  {
                    sub_1B8D9207C(v95, &qword_1EBAC5048, &qword_1B9691790);
LABEL_61:
                    OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__sportsInfo[0], &v163);
                    OUTLINED_FUNCTION_89_10();
                    sub_1B8D92024();
                    OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__sportsInfo[0], &v162);
                    v99 = *(v133 + 48);
                    v100 = v84;
                    v72 = v129;
                    OUTLINED_FUNCTION_89_10();
                    sub_1B8D92024();
                    OUTLINED_FUNCTION_52_2();
                    OUTLINED_FUNCTION_178(v72, 1, v130);
                    if (v51)
                    {
                      sub_1B8D9207C(v100, &qword_1EBAC5050, &qword_1B9691798);
                      OUTLINED_FUNCTION_37_0(v72 + v99);
                      if (v51)
                      {
                        sub_1B8D9207C(v72, &qword_1EBAC5050, &qword_1B9691798);
LABEL_75:
                        v104 = (v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
                        OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID, &v161);
                        v105 = *v104;
                        v106 = v104[1];
                        v107 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID);
                        OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupID, &v160);
                        v108 = v105 == *v107 && v106 == v107[1];
                        if (v108 || (sub_1B964C9F0() & 1) != 0)
                        {
                          v109 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
                          OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber, &v159);
                          LODWORD(v109) = *(v3 + v109);
                          v110 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber;
                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__groupSequenceNumber, &v158);
                          if (v109 == *(v1 + v110))
                          {
                            v111 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
                            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse, &v157);
                            LODWORD(v111) = *(v3 + v111);
                            v112 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse;
                            OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__isPresentInResponse, &v156);
                            if (v111 == *(v1 + v112))
                            {
                              v113 = (v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin);
                              OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin, &v155);
                              v114 = *v113;
                              v115 = *(v113 + 8);
                              v116 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin);
                              OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__origin, &v154);
                              v117 = *v116;
                              v118 = v114 != 0;
                              if (!v115)
                              {
                                v118 = v114;
                              }

                              if (*(v116 + 8) == 1)
                              {
                                if (v117)
                                {
                                  if (v118 == 1)
                                  {
                                    goto LABEL_91;
                                  }
                                }

                                else if (!v118)
                                {
                                  goto LABEL_91;
                                }
                              }

                              else if (v118 == v117)
                              {
LABEL_91:
                                v119 = v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType;
                                OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType, &v153);
                                v120 = *v119;
                                v121 = *(v119 + 8);
                                v122 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType);
                                OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__listResolutionType, &v152);
                                if (sub_1B8D92198(v120, v121, *v122))
                                {
                                  v123 = (v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
                                  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer, &v151);
                                  v124 = *v123;
                                  v125 = v123[1];
                                  v126 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer);
                                  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityP33_3F1FCD892111CC0FBF2B0DCE30DFE59D13_StorageClass__requestedPropertyAnswer, &v150);
                                  if (v124 != *v126 || v125 != v126[1])
                                  {
                                    sub_1B964C9F0();
                                  }
                                }
                              }
                            }
                          }
                        }

LABEL_72:

                        goto LABEL_73;
                      }
                    }

                    else
                    {
                      v101 = v131;
                      sub_1B8D92024();
                      OUTLINED_FUNCTION_37_0(v72 + v99);
                      if (!v102)
                      {
                        sub_1B910CF78();
                        v103 = static Apple_Parsec_Siri_Context_SportsInfo.== infix(_:_:)(v101);
                        sub_1B910D028();
                        OUTLINED_FUNCTION_189(v141);
                        sub_1B910D028();
                        OUTLINED_FUNCTION_189(v72);
                        if ((v103 & 1) == 0)
                        {
                          goto LABEL_72;
                        }

                        goto LABEL_75;
                      }

                      sub_1B8D9207C(v141, &qword_1EBAC5050, &qword_1B9691798);
                      sub_1B910D028();
                    }

                    v75 = &qword_1EBAC5170;
                    v76 = &qword_1B9692398;
                    goto LABEL_34;
                  }
                }

                else
                {
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_37_0(v95 + v94);
                  if (!v96)
                  {
                    sub_1B910CF78();
                    static Apple_Parsec_Siri_Context_EventTypeInfo.== infix(_:_:)();
                    v98 = v97;
                    sub_1B910D028();
                    OUTLINED_FUNCTION_189(v73);
                    sub_1B910D028();
                    OUTLINED_FUNCTION_189(v95);
                    if ((v98 & 1) == 0)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_61;
                  }

                  sub_1B8D9207C(v73, &qword_1EBAC5048, &qword_1B9691790);
                  sub_1B910D028();
                }

                v75 = &qword_1EBAC5178;
                v76 = &qword_1B96923A0;
                v77 = v95;
                goto LABEL_71;
              }

              sub_1B8D9207C(v80, &qword_1EBAC5040, &qword_1B9691788);
              sub_1B910D028();
            }

            v75 = &qword_1EBAC5180;
            v76 = &qword_1B96923A8;
            v77 = v83;
            goto LABEL_71;
          }

          sub_1B8D9207C(v48, &qword_1EBAC5038, &qword_1B9691780);
          sub_1B910D028();
        }

        v75 = &qword_1EBAC5188;
        v76 = &unk_1B96923B0;
LABEL_34:
        v77 = v72;
LABEL_71:
        sub_1B8D9207C(v77, v75, v76);
        goto LABEL_72;
      }
    }
  }

LABEL_73:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B910FC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2840(&qword_1EBAC5158, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B910FC94(uint64_t a1)
{
  v2 = sub_1B8CD2840(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B910FD04(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2840(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B910FD84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4FA8);
  __swift_project_value_buffer(v0, qword_1EBAC4FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ORIGIN_SERVER";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ORIGIN_ON_DEVICE";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B910FF74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4FC0);
  __swift_project_value_buffer(v0, qword_1EBAC4FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LIST_RESOLUTION_TYPE_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LIST_RESOLUTION_ORDINAL_REFERENCE";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LIST_RESOLUTION_FUZZY_MATCHING";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91101B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4FD8);
  __swift_project_value_buffer(v0, qword_1EBAC4FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "city";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "county";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "stateCode";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "stateName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "countryCode";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "countryName";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "latitude";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "longitude";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "timezone";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "address";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "name";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 9:
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_Context_LocationTypeInfo.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v2 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), (v2 = v1) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 3), (v2 = v1) == 0))
      {
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 4), (v2 = v1) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(v16, v17, 5), (v2 = v1) == 0))
          {
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 6), (v2 = v1) == 0))
            {
              if (*(v0 + 96) == 0.0 || (v1 = v2, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v2))
              {
                if (*(v0 + 100) == 0.0 || (v1 = v2, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v2))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v24 || (result = OUTLINED_FUNCTION_3(v22, v23, 9), !v1))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v27 || (result = OUTLINED_FUNCTION_3(v25, v26, 10), !v1))
                    {
                      OUTLINED_FUNCTION_1();
                      if (!v30 || (result = OUTLINED_FUNCTION_3(v28, v29, 11), !v1))
                      {
                        type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
                        OUTLINED_FUNCTION_12();
                        return sub_1B964C290();
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

uint64_t static Apple_Parsec_Siri_Context_LocationTypeInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 64) == *(v1 + 64) && *(v2 + 72) == *(v1 + 72);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 80) == *(v1 + 80) && *(v2 + 88) == *(v1 + 88);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 96) != *(v1 + 96) || *(v2 + 100) != *(v1 + 100))
  {
    return 0;
  }

  v11 = *(v2 + 104) == *(v1 + 104) && *(v2 + 112) == *(v1 + 112);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v2 + 120) == *(v1 + 120) && *(v2 + 128) == *(v1 + 128);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v2 + 136) == *(v1 + 136) && *(v2 + 144) == *(v1 + 144);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_50();
  v16 = sub_1B8CD2840(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v16) & 1;
}

uint64_t sub_1B9110A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2840(&qword_1EBAC5150, type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_LocationTypeInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9110B18(uint64_t a1)
{
  v2 = sub_1B8CD2840(&qword_1EBAC50E0, type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_LocationTypeInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9110B88(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2840(&qword_1EBAC50E0, type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_LocationTypeInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9110C20()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4FF0);
  __swift_project_value_buffer(v0, qword_1EBAC4FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "url";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_WebsiteTypeInfo.decodeMessage<A>(decoder:)()
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
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_WebsiteTypeInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_WebsiteTypeInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_50();
  v6 = sub_1B8CD2840(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9110FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2840(&qword_1EBAC5148, type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_WebsiteTypeInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B911102C(uint64_t a1)
{
  v2 = sub_1B8CD2840(&qword_1EBAC50F8, type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_WebsiteTypeInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B911109C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2840(&qword_1EBAC50F8, type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_WebsiteTypeInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9111134()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5008);
  __swift_project_value_buffer(v0, qword_1EBAC5008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_time";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_date";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end_time";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_all_day";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 100;
  *v18 = "details";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        goto LABEL_6;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91114EC(v11, v12, v13, v14);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91115A0(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9111654(v7, v8, v9, v10);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        if (result == 100)
        {
LABEL_6:
          OUTLINED_FUNCTION_12();
          sub_1B964C530();
        }

        break;
    }
  }
}

uint64_t sub_1B91114EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B964C110();
  sub_1B8CD2840(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t sub_1B91115A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B964C110();
  sub_1B8CD2840(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t sub_1B9111654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B964C110();
  sub_1B8CD2840(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_Context_EventTypeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v55 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v7 = OUTLINED_FUNCTION_183(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  v53 = v8;
  OUTLINED_FUNCTION_230();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - v13;
  v15 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v54 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  v52 = v18;
  OUTLINED_FUNCTION_230();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  OUTLINED_FUNCTION_1();
  if (v25)
  {
    result = sub_1B964C700();
    if (v4)
    {
      return result;
    }
  }

  v51 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  sub_1B8D92024();
  v27 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v27, v28, v15) == 1)
  {
    sub_1B8D9207C(v14, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  else
  {
    v49 = v22;
    v50 = v5;
    OUTLINED_FUNCTION_91_3();
    v29(v24, v14, v15);
    OUTLINED_FUNCTION_0_59();
    sub_1B8CD2840(v30, v31, MEMORY[0x1E69AA8F8]);
    OUTLINED_FUNCTION_45_6();
    sub_1B964C740();
    if (v4)
    {
      goto LABEL_14;
    }

    v32 = OUTLINED_FUNCTION_686();
    v33(v32);
    v22 = v49;
    v5 = v50;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    sub_1B8D9207C(v12, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  else
  {
    v50 = v5;
    OUTLINED_FUNCTION_91_3();
    v34(v22, v12, v15);
    OUTLINED_FUNCTION_0_59();
    sub_1B8CD2840(v35, v36, MEMORY[0x1E69AA8F8]);
    OUTLINED_FUNCTION_45_6();
    sub_1B964C740();
    if (v4)
    {
      goto LABEL_14;
    }

    v37 = OUTLINED_FUNCTION_686();
    v38(v37);
    v5 = v50;
  }

  v39 = v53;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v39, 1, v15) != 1)
  {
    OUTLINED_FUNCTION_91_3();
    v40 = OUTLINED_FUNCTION_287();
    v41(v40);
    OUTLINED_FUNCTION_0_59();
    sub_1B8CD2840(v42, v43, MEMORY[0x1E69AA8F8]);
    OUTLINED_FUNCTION_45_6();
    sub_1B964C740();
    if (!v4)
    {
      v46 = OUTLINED_FUNCTION_686();
      v47(v46);
      goto LABEL_17;
    }

LABEL_14:
    v44 = OUTLINED_FUNCTION_686();
    return v45(v44);
  }

  sub_1B8D9207C(v39, &off_1EBAB90F0, &unk_1B964D8E0);
LABEL_17:
  if (*(v5 + 16) != 1 || (OUTLINED_FUNCTION_45_6(), result = sub_1B964C670(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v48 || (OUTLINED_FUNCTION_45_6(), result = sub_1B964C700(), !v4))
    {
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

void static Apple_Parsec_Siri_Context_EventTypeInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v10 = OUTLINED_FUNCTION_183(v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v61 - v14;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  v63 = v18;
  OUTLINED_FUNCTION_230();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - v23;
  v25 = *v1 == *v0 && v1[1] == v0[1];
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v61 = v13;
  v64 = v8;
  v67 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  v68 = v0;
  v65 = v16;
  v26 = *(v16 + 48);
  v62 = v1;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v24);
  if (v25)
  {
    OUTLINED_FUNCTION_37_0(&v24[v26]);
    if (v25)
    {
      sub_1B8D9207C(v24, &off_1EBAB90F0, &unk_1B964D8E0);
      v27 = v4;
      v28 = v64;
      goto LABEL_16;
    }

LABEL_14:
    v32 = v24;
LABEL_35:
    sub_1B8D9207C(v32, &qword_1EBAB90F8, &qword_1B9687990);
    goto LABEL_36;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v24[v26]);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_287();
    v31(v30);
    goto LABEL_14;
  }

  v33 = &v24[v26];
  v27 = v4;
  v28 = v64;
  (*(v4 + 32))(v64, v33, v2);
  OUTLINED_FUNCTION_0_59();
  sub_1B8CD2840(v34, v35, MEMORY[0x1E69AA908]);
  OUTLINED_FUNCTION_686();
  v36 = sub_1B964C850();
  v37 = *(v27 + 8);
  v37(v28, v2);
  v38 = OUTLINED_FUNCTION_287();
  (v37)(v38);
  sub_1B8D9207C(v24, &off_1EBAB90F0, &unk_1B964D8E0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v39 = *(v65 + 48);
  v40 = v62;
  OUTLINED_FUNCTION_549();
  OUTLINED_FUNCTION_549();
  OUTLINED_FUNCTION_37_0(v22);
  if (v25)
  {
    OUTLINED_FUNCTION_37_0(&v22[v39]);
    if (v25)
    {
      sub_1B8D9207C(v22, &off_1EBAB90F0, &unk_1B964D8E0);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v22[v39]);
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_287();
    v43(v42);
LABEL_24:
    v32 = v22;
    goto LABEL_35;
  }

  (*(v27 + 32))(v28, &v22[v39], v2);
  OUTLINED_FUNCTION_0_59();
  sub_1B8CD2840(v44, v45, MEMORY[0x1E69AA908]);
  OUTLINED_FUNCTION_686();
  v46 = sub_1B964C850();
  v47 = *(v27 + 8);
  v47(v28, v2);
  v48 = OUTLINED_FUNCTION_287();
  (v47)(v48);
  sub_1B8D9207C(v22, &off_1EBAB90F0, &unk_1B964D8E0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  v49 = *(v65 + 48);
  v50 = v63;
  OUTLINED_FUNCTION_549();
  v51 = v68;
  OUTLINED_FUNCTION_549();
  OUTLINED_FUNCTION_37_0(v50);
  if (!v25)
  {
    v52 = v61;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v50 + v49);
    if (!v53)
    {
      (*(v27 + 32))(v28, v50 + v49, v2);
      OUTLINED_FUNCTION_0_59();
      sub_1B8CD2840(v54, v55, MEMORY[0x1E69AA908]);
      OUTLINED_FUNCTION_89_10();
      v56 = sub_1B964C850();
      v57 = *(v27 + 8);
      v57(v28, v2);
      v57(v52, v2);
      v51 = v68;
      sub_1B8D9207C(v50, &off_1EBAB90F0, &unk_1B964D8E0);
      if ((v56 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_38;
    }

    (*(v27 + 8))(v52, v2);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_37_0(v50 + v49);
  if (!v25)
  {
LABEL_34:
    v32 = v50;
    goto LABEL_35;
  }

  sub_1B8D9207C(v50, &off_1EBAB90F0, &unk_1B964D8E0);
LABEL_38:
  if (*(v40 + 16) == *(v51 + 16))
  {
    v58 = v40[3] == v51[3] && v40[4] == v51[4];
    if (v58 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_50();
      sub_1B8CD2840(v59, v60, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9112378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2840(&qword_1EBAC5140, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_EventTypeInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91123F8(uint64_t a1)
{
  v2 = sub_1B8CD2840(&qword_1EBAC5110, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_EventTypeInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9112468(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2840(&qword_1EBAC5110, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_EventTypeInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9112500()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5020);
  __swift_project_value_buffer(v0, qword_1EBAC5020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sport";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "league";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "teams";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v2 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), (v2 = v1) == 0))
    {
      if (!*(*(v0 + 32) + 16) || (result = sub_1B964C6E0(), !v2))
      {
        type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_SportsInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(v2[4], v1[4]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_50();
  v9 = sub_1B8CD2840(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B9112970(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2840(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9112A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2840(&qword_1EBAC5138, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9112AD0(uint64_t a1)
{
  v2 = sub_1B8CD2840(&qword_1EBAC5128, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9112B40(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2840(&qword_1EBAC5128, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo, protocol conformance descriptor for Apple_Parsec_Siri_Context_SportsInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B9112BC4()
{
  result = qword_1EBAC5080;
  if (!qword_1EBAC5080)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.Origin, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.Origin, v0, v1);
    atomic_store(result, &qword_1EBAC5080);
  }

  return result;
}

unint64_t sub_1B9112C1C()
{
  result = qword_1EBAC5088;
  if (!qword_1EBAC5088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.Origin, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.Origin, v0, v1);
    atomic_store(result, &qword_1EBAC5088);
  }

  return result;
}

unint64_t sub_1B9112C74()
{
  result = qword_1EBAC5090;
  if (!qword_1EBAC5090)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.Origin, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.Origin, v0, v1);
    atomic_store(result, &qword_1EBAC5090);
  }

  return result;
}

unint64_t sub_1B9112CCC()
{
  result = qword_1EBAC5098;
  if (!qword_1EBAC5098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, v0, v1);
    atomic_store(result, &qword_1EBAC5098);
  }

  return result;
}

unint64_t sub_1B9112D24()
{
  result = qword_1EBAC50A0;
  if (!qword_1EBAC50A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, v0, v1);
    atomic_store(result, &qword_1EBAC50A0);
  }

  return result;
}

unint64_t sub_1B9112D7C()
{
  result = qword_1EBAC50A8;
  if (!qword_1EBAC50A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, v0, v1);
    atomic_store(result, &qword_1EBAC50A8);
  }

  return result;
}

uint64_t sub_1B91133F8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B91134C4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91135B8(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91138BC(319, &qword_1ED9EB350, MEMORY[0x1E69AA900]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91136B0(uint64_t a1)
{
  sub_1B91138BC(319, &qword_1ED9F7370, type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo);
  if (v1 <= 0x3F)
  {
    sub_1B91138BC(319, &qword_1ED9F7788, type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo);
    if (v2 <= 0x3F)
    {
      sub_1B91138BC(319, qword_1ED9EC838, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo);
      if (v3 <= 0x3F)
      {
        sub_1B91138BC(319, qword_1ED9ECC60, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B91138BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1B9113910()
{
  result = qword_1EBAC5160;
  if (!qword_1EBAC5160)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.ListResolutionType, v0, v1);
    atomic_store(result, &qword_1EBAC5160);
  }

  return result;
}

unint64_t sub_1B9113964()
{
  result = qword_1EBAC5168;
  if (!qword_1EBAC5168)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity.Origin, &type metadata for Apple_Parsec_Siri_Context_ResultEntity.Origin, v0, v1);
    atomic_store(result, &qword_1EBAC5168);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_26(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_17()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_24_17()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_102_6(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1)
{
  *(v1 + 8) = a1;

  return sub_1B964C110();
}

uint64_t OUTLINED_FUNCTION_113_5(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_118_3()
{

  return sub_1B910CF78();
}

uint64_t OUTLINED_FUNCTION_120_5()
{

  return sub_1B910CF78();
}

unint64_t Apple_Parsec_Siri_Legacy_RegionProperty.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9113C8C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_Legacy_RegionProperty.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9113CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B912EC1C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Legacy_RegionProperty.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18(&off_1EBAC5198, v3);
  off_1EBAC5198 = a1;
}

uint64_t (*static Apple_Parsec_Siri_Legacy_RegionProperty.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9113DF0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Legacy_RegionProperty.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.generalKnowledgeSnippet.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_57(v1);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAC53A0, &qword_1B96923C0);
LABEL_6:
    OUTLINED_FUNCTION_132_2();
    *(v0 + 16) = 0;
    *(v0 + 24) = v8;
    *(v0 + 32) = 0;
    OUTLINED_FUNCTION_246_2(v8);
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
    v9 = OUTLINED_FUNCTION_40_3();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B9114334();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_288();
  return sub_1B9114610();
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.generalKnowledgeSnippet.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  OUTLINED_FUNCTION_246_2(v2);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_LegacySnippet.generalKnowledgeSnippet.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_128();
      sub_1B9114610();
      goto LABEL_8;
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_247_1();
  *(v11 + 16) = 0;
  *(v11 + 24) = v17;
  *(v11 + 32) = 0;
  *(v11 + 40) = MEMORY[0x1E69E7CC0];
  *(v11 + 48) = 0;
  *(v11 + 56) = v17;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9114238()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v4, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t sub_1B9114334()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.answerSnippet.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_11_30();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  v8 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v8);
  OUTLINED_FUNCTION_163_2(v9);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v10 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B9114498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B91148B0();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.answerSnippet.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.init()(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v1);
  OUTLINED_FUNCTION_163_2(v2);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B9114610()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

void Apple_Parsec_Siri_Legacy_LegacySnippet.answerSnippet.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
LABEL_7:
    OUTLINED_FUNCTION_224_3(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B91147B4()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v4, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t sub_1B91148B0()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  v2 = OUTLINED_FUNCTION_183(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v3 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  v4 = OUTLINED_FUNCTION_183(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_8();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A8, &qword_1B96923C8);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_139();
  sub_1B91148B0();
  sub_1B91148B0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_142_3();
    sub_1B91148B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_11_30();
      sub_1B9114610();
      v9 = OUTLINED_FUNCTION_128();
      static Apple_Parsec_Siri_Legacy_AnswerSnippet.== infix(_:_:)(v9);
      sub_1B9114334();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B9114334();
      OUTLINED_FUNCTION_63_6();
      sub_1B9114334();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_142_3();
    sub_1B91148B0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_12_23();
      sub_1B9114610();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.== infix(_:_:)();
      sub_1B9114334();
      goto LABEL_7;
    }
  }

  sub_1B9114334();
  sub_1B8D9207C(v0, &qword_1EBAC53A8, &qword_1B96923C8);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B8, &qword_1B96923D8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_23;
  }

  sub_1B8D85B24(*(v1 + 40), *(v0 + 40));
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v4);
  if (!v11)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    v18 = OUTLINED_FUNCTION_156_6();
    OUTLINED_FUNCTION_178(v18, v19, v4);
    if (!v20)
    {
      OUTLINED_FUNCTION_1_51();
      sub_1B9114610();
      OUTLINED_FUNCTION_494_0();
      if (v24 || (, , v25 = OUTLINED_FUNCTION_616(), v27 = sub_1B912BB5C(v25, v26), , , (v27 & 1) != 0))
      {
        v28 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_60();
        sub_1B8CD2888(v29, v30, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_257();
        sub_1B964C850();
        OUTLINED_FUNCTION_61_5();
        sub_1B9114334();
        sub_1B9114334();
        sub_1B8D9207C(v2, &qword_1EBAC53B0, &qword_1B96923D0);
        if ((v28 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_62_3();
      sub_1B9114334();
      sub_1B9114334();
      v21 = &qword_1EBAC53B0;
      v22 = &qword_1B96923D0;
LABEL_22:
      sub_1B8D9207C(v2, v21, v22);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
LABEL_21:
    v21 = &qword_1EBAC53B8;
    v22 = &qword_1B96923D8;
    goto LABEL_22;
  }

  v16 = OUTLINED_FUNCTION_156_6();
  OUTLINED_FUNCTION_178(v16, v17, v4);
  if (!v11)
  {
    goto LABEL_21;
  }

  sub_1B8D9207C(v2, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_28:
  v31 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (v31 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    v34 = sub_1B8CD2888(v32, v33, MEMORY[0x1E69AAC10]);
    v23 = OUTLINED_FUNCTION_199_0(v34);
    goto LABEL_24;
  }

LABEL_23:
  v23 = 0;
LABEL_24:
  OUTLINED_FUNCTION_264(v23);
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.pods.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v5);
  OUTLINED_FUNCTION_100_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17(&qword_1EBAB7448);
    }

    *(a1 + v8) = qword_1EBAC5328;
    v9 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_234_3(v9, v10);
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v16);
  OUTLINED_FUNCTION_256_1(*(v17 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v10 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17(&qword_1EBAB7448);
    }

    *(v12 + v19) = qword_1EBAC5328;
    v20 = OUTLINED_FUNCTION_50_1();

    if (v20 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.imagePod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_6:
    v7 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v7);
    return OUTLINED_FUNCTION_163_2(v8);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B9114334();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_26();
  OUTLINED_FUNCTION_288();
  return sub_1B9114610();
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.imagePod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_10_26();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_Legacy_PodView.imagePod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_10_26();
      OUTLINED_FUNCTION_128();
      sub_1B9114610();
      goto LABEL_7;
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_224_3(MEMORY[0x1E69E7CC0]);
LABEL_7:
  OUTLINED_FUNCTION_242();
}

void sub_1B9115B40()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.summaryPod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_9_23();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_276_1();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v8 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.summaryPod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.init()()
{
  OUTLINED_FUNCTION_276_1();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v0 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void Apple_Parsec_Siri_Legacy_PodView.summaryPod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    v11[2] = 0;
    v11[3] = v17;
    v11[4] = 0;
    v11[5] = v17;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9115F7C()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.propertyPod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  v8 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v8);
  return OUTLINED_FUNCTION_163_2(v9);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.propertyPod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B91161F8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v3 = v2(v1);
  return OUTLINED_FUNCTION_163_2(v3);
}

void Apple_Parsec_Siri_Legacy_PodView.propertyPod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_7:
    OUTLINED_FUNCTION_224_3(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9116370()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_8_30();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_8_30();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.webLinkPod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v1);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_7_27();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_132_2();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.webLinkPod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_Legacy_PodView.webLinkPod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9116740()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t sub_1B9116854()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B91168DC()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v48 = v1;
  v49 = v2;
  v44[1] = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v47 = (v5 - v4);
  v6 = OUTLINED_FUNCTION_201();
  v44[2] = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v46 = (v9 - v8);
  v10 = OUTLINED_FUNCTION_201();
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v10);
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v13 = OUTLINED_FUNCTION_186_1();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v45 = (v16 - v15);
  v17 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(v17);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_66();
  v21 = (v19 - v20);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (v44 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v44 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C0, &qword_1B96923E8);
  OUTLINED_FUNCTION_183(v29);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_139();
  sub_1B91148B0();
  sub_1B91148B0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2() != 1)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_9_23();
      sub_1B9114610();
      static Apple_Parsec_Siri_Legacy_SummaryPod.== infix(_:_:)();
      sub_1B9114334();
      sub_1B9114334();
      OUTLINED_FUNCTION_16_21();
      sub_1B9114334();
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2() != 2)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_8_30();
      v31 = v46;
      sub_1B9114610();
      sub_1B8D756E8(*v25, *v31);
      if (v32)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_60();
        sub_1B8CD2888(v33, v34, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_148_3();
      sub_1B9114334();
      goto LABEL_25;
    case 3u:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2() != 3)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_7_27();
      v35 = v47;
      sub_1B9114610();
      v36 = *v21 == *v35 && v21[1] == v35[1];
      if (v36 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B8D757E4(v21[2], v35[2]);
        if (v37)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_60();
          sub_1B8CD2888(v38, v39, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }
      }

      OUTLINED_FUNCTION_147_4();
      sub_1B9114334();
      goto LABEL_25;
    default:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2())
      {
LABEL_19:
        sub_1B9114334();
        sub_1B8D9207C(v0, &qword_1EBAC53C0, &qword_1B96923E8);
      }

      else
      {
        OUTLINED_FUNCTION_10_26();
        v40 = v45;
        sub_1B9114610();
        sub_1B8D781B4(*v28, *v40);
        if (v41)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_60();
          sub_1B8CD2888(v42, v43, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_149_4();
        sub_1B9114334();
LABEL_25:
        sub_1B9114334();
        OUTLINED_FUNCTION_16_21();
        sub_1B9114334();
      }

LABEL_26:
      OUTLINED_FUNCTION_283();
      return;
  }
}

void static Apple_Parsec_Siri_Legacy_SummaryPod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_84_1();
  v13 = v10 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  v14 = *(v6 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v0);
  if (!v10)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v0 + v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_2_34();
      sub_1B9114610();
      v17 = OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v17, v18);
      OUTLINED_FUNCTION_141_8();
      sub_1B9114334();
      sub_1B9114334();
      sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
      if ((v2 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_6_21();
    sub_1B9114334();
LABEL_19:
    sub_1B8D9207C(v0, &qword_1EBAB9078, &qword_1B964D868);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_50(v0 + v14);
  if (!v10)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
LABEL_23:
  OUTLINED_FUNCTION_40_5();
  v21 = v10 && v19 == v20;
  if (v21 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    v24 = sub_1B8CD2888(v22, v23, MEMORY[0x1E69AAC10]);
    v16 = OUTLINED_FUNCTION_634(v24);
    goto LABEL_21;
  }

LABEL_20:
  v16 = 0;
LABEL_21:
  OUTLINED_FUNCTION_264(v16);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9117230(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_871();
  OUTLINED_FUNCTION_0_60();
  v10 = sub_1B8CD2888(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}