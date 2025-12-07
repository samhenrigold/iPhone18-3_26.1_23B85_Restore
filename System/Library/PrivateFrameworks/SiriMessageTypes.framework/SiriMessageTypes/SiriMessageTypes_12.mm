uint64_t sub_2231D02B4(uint64_t a1)
{
  started = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231D0330(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  v16 = started[6];
  sub_2230D69D4(a1 + v16);
  v17 = sub_2231FFDA4();
  (*(*(v17 - 8) + 16))(a1 + v16, a5, v17);
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v17);
  v18 = (a1 + started[7]);

  *v18 = a6;
  v18[1] = a7;
  *(a1 + started[8]) = a8;
  return result;
}

void *StartSpeechDictationRequestMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A800, &qword_22321CB48);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D0F04();
  sub_223200794();
  if (!v2)
  {
    sub_2230FB7A0();
    sub_223200554();
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D05A810, 0x277CEF280);
    v8 = sub_223200264();
    v11 = v8;
    if (v8)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationRequestMessage_dictationOptions) = v8;
      sub_2230F7158(a1, &v15);
      v16 = v11;
      v9 = StartRequestMessageBase.init(from:)(&v15);
      v13 = OUTLINED_FUNCTION_2();
      v14(v13);
      OUTLINED_FUNCTION_5_1();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v9;
    }

    sub_2230F9E38();
    swift_allocError();
    *v12 = 0xD000000000000026;
    *(v12 + 8) = 0x8000000223226730;
    *(v12 + 16) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5_1();
    v6 = OUTLINED_FUNCTION_2();
    v7(v6);
  }

  v9 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for StartSpeechDictationRequestMessage(0);
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_2231D0770(void *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A818, &qword_22321CB50);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D0F04();
  sub_2232007A4();
  v10 = objc_opt_self();
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationRequestMessage_dictationOptions);
  v20[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v20];
  v13 = v20[0];
  if (v12)
  {
    v14 = sub_2231FFD24();
    v16 = v15;

    v20[0] = v14;
    v20[1] = v16;
    sub_2230D7754();
    sub_223200654();
    if (!v2)
    {
      sub_2230DEEE4(a1);
    }

    (*(v6 + 8))(v9, v4);
    return OUTLINED_FUNCTION_5_1();
  }

  else
  {
    v18 = v13;
    sub_2231FFD04();

    swift_willThrow();
    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_2231D09A4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StartSpeechDictationRequestMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0xD00000000000001FLL, 0x8000000223226760);
  return v7;
}

id sub_2231D0A6C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t StartSpeechDictationRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartSpeechDictationRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartSpeechDictationRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartSpeechDictationRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_46() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartSpeechDictationRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartSpeechDictationRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartSpeechDictationRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartSpeechDictationRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartSpeechDictationRequestMessage.Builder.dictationOptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartSpeechDictationRequestMessage.Builder.dictationOptions.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_46() + 36);

  *(v1 + v2) = v0;
}

id StartSpeechDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartSpeechDictationRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D0F04()
{
  result = qword_27D05A808;
  if (!qword_27D05A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A808);
  }

  return result;
}

uint64_t sub_2231D0FFC(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231D1118(319);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_2231D1118(uint64_t a1)
{
  if (!qword_27D05A830)
  {
    sub_2230FB7F4(255, &qword_27D05A810, 0x277CEF280);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D05A830);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StartSpeechDictationRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231D1230()
{
  result = qword_27D05A838;
  if (!qword_27D05A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A838);
  }

  return result;
}

unint64_t sub_2231D1288()
{
  result = qword_27D05A840;
  if (!qword_27D05A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A840);
  }

  return result;
}

unint64_t sub_2231D12E0()
{
  result = qword_27D05A848;
  if (!qword_27D05A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A848);
  }

  return result;
}

uint64_t sub_2231D1344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000002232268A0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644972657375 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2231D145C(char a1)
{
  if (!a1)
  {
    return 0x65676175676E616CLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x644972657375;
}

uint64_t sub_2231D14C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D1344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231D14EC(uint64_t a1)
{
  v2 = sub_2231D263C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D1528(uint64_t a1)
{
  v2 = sub_2231D263C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartSpeechDictationSessionMessage.languageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode);

  return v1;
}

uint64_t StartSpeechDictationSessionMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
  a1[1] = v2;
}

id StartSpeechDictationSessionMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v69 = v1;
  ObjectType = swift_getObjectType();
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v63 = v4;
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v66 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v65 = v15 - v14;
  started = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  v17 = (started - 8);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v20 = (v19 - v18);
  *v20 = 15;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  v21 = v17[8];
  v67 = v11;
  __swift_storeEnumTagSinglePayload(v19 - v18 + v21, 1, 1, v11);
  v22 = &v20[v17[9]];
  *v22 = 0;
  v22[1] = 0;
  v23 = v17[10];
  v20[v23] = 1;
  v24 = &v20[v17[11]];
  *v24 = 0xD000000000000024;
  *(v24 + 1) = 0x80000002232216F0;
  a1(v20);
  v25 = *v20;
  if (v25 == 15)
  {
    goto LABEL_13;
  }

  v26 = *(v20 + 2);
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = *(v20 + 1);
  sub_2230D1480(&v20[v21], v10);
  v28 = v67;
  if (__swift_getEnumTagSinglePayload(v10, 1, v67) == 1)
  {
    sub_2230D69D4(v10);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v45 = sub_223200014();
    __swift_project_value_buffer(v45, qword_280FCE830);
    v46 = sub_223200004();
    v47 = sub_223200254();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136446210;
      v50 = sub_2230F7898(ObjectType);
      v52 = sub_2231A5D38(v50, v51, v70);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_2230CE000, v46, v47, "Could not build %{public}s: Builder has missing required fields", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x223DD6780](v49, -1, -1);
      MEMORY[0x223DD6780](v48, -1, -1);
    }

    sub_2231D1C44(v20);
LABEL_18:
    type metadata accessor for StartSpeechDictationSessionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v61 = v27;
  v62 = v26;
  v30 = v65;
  v29 = v66;
  (*(v66 + 32))(v65, v10, v28);
  v31 = v22[1];
  if (!v31)
  {
    (*(v29 + 8))(v30, v28);
    goto LABEL_13;
  }

  v70[0] = *v22;
  v70[1] = v31;
  sub_2231FFC74();
  sub_2230D1D30();
  v32 = sub_2232002E4();
  v34 = v33;
  (*(v63 + 8))(v7, v64);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v54 = sub_223200014();
    __swift_project_value_buffer(v54, qword_280FCE830);
    v55 = sub_223200004();
    v56 = sub_223200254();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v65;
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2230CE000, v55, v56, "languageCode is empty, cannot create StartDitationSessionMessage", v59, 2u);
      MEMORY[0x223DD6780](v59, -1, -1);
    }

    sub_2231D1C44(v20);
    (*(v66 + 8))(v58, v28);
    goto LABEL_18;
  }

  v36 = v69;
  v37 = (v69 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode);
  v38 = v20[v23];
  *v37 = v32;
  v37[1] = v34;
  *(v36 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_recognitionOnDevice) = v38;
  v39 = *(v24 + 1);
  v40 = (v36 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
  *v40 = *v24;
  v40[1] = v39;
  MEMORY[0x28223BE20](v39);
  *(&v60 - 32) = v25;
  v41 = v62;
  *(&v60 - 3) = v61;
  *(&v60 - 2) = v41;
  v42 = v65;
  *(&v60 - 1) = v65;

  v43 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v44 = v43;
  sub_2231D1C44(v20);
  if (v43)
  {
  }

  (*(v66 + 8))(v42, v67);
  return v43;
}

uint64_t sub_2231D1C44(uint64_t a1)
{
  started = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartSpeechDictationSessionMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A850, &qword_22321CCD8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D263C();
  sub_223200794();
  if (v2)
  {
    v11 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartSpeechDictationSessionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode);
    *v7 = v5;
    v7[1] = v8;
    LOBYTE(v14[0]) = 1;
    OUTLINED_FUNCTION_0();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_recognitionOnDevice) = sub_223200504() & 1;
    v15 = 2;
    sub_2231105AC();
    sub_223200554();
    v9 = v14[1];
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
    *v10 = v14[0];
    v10[1] = v9;
    sub_2230F7158(a1, v14);
    v11 = SessionMessageBase.init(from:)(v14);
    v12 = OUTLINED_FUNCTION_2();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t sub_2231D1FB4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A860, &qword_22321CCE0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D263C();
  sub_2232007A4();
  LOBYTE(v13[0]) = 0;
  sub_2232005F4();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_223200604();
    v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId + 8);
    v13[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
    v13[1] = v11;
    v14 = 2;
    sub_2230D37F0();

    sub_223200654();

    sub_2230D46B0(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t StartSpeechDictationSessionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartSpeechDictationSessionMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartSpeechDictationSessionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartSpeechDictationSessionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_41() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartSpeechDictationSessionMessage.Builder.languageCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartSpeechDictationSessionMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartSpeechDictationSessionMessage.Builder.recognitionOnDevice.setter(char a1)
{
  result = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t StartSpeechDictationSessionMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t StartSpeechDictationSessionMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2231D2568()
{
}

id StartSpeechDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartSpeechDictationSessionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D263C()
{
  result = qword_27D05A858;
  if (!qword_27D05A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A858);
  }

  return result;
}

uint64_t sub_2231D273C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
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

_BYTE *storeEnumTagSinglePayload for StartSpeechDictationSessionMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D2904()
{
  result = qword_27D05A878;
  if (!qword_27D05A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A878);
  }

  return result;
}

unint64_t sub_2231D295C()
{
  result = qword_27D05A880;
  if (!qword_27D05A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A880);
  }

  return result;
}

unint64_t sub_2231D29B4()
{
  result = qword_27D05A888;
  if (!qword_27D05A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A888);
  }

  return result;
}

id StartSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v51 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  v11 = (started - 8);
  MEMORY[0x28223BE20](started);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  v49 = v6;
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v11[10];
  v13[v16] = 19;
  v17 = v11[11];
  *&v13[v17] = 0;
  v18 = v11[12];
  v13[v18] = 2;
  *&v13[v11[13]] = 0;
  a1(v13);
  v19 = *v13;
  if (v19 != 15)
  {
    v20 = *(v13 + 2);
    if (v20)
    {
      v46 = *(v13 + 1);
      sub_2230D1480(&v13[v14], v5);
      v21 = v49;
      if (__swift_getEnumTagSinglePayload(v5, 1, v49) == 1)
      {
        sub_2230D69D4(v5);
      }

      else
      {
        v45 = v20;
        v22 = v47;
        v23 = v48;
        (*(v47 + 32))(v48, v5, v21);
        v24 = *(v15 + 1);
        if (v24)
        {
          v25 = v45;
          if (v13[v16] != 19)
          {
            v26 = v13[v18];
            if (v26 != 2)
            {
              v37 = *&v13[v17];
              v38 = v51;
              *(v51 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_location) = v37;
              *(v38 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_asrOnServer) = v26 & 1;
              MEMORY[0x28223BE20](v37);
              *(&v45 - 64) = v19;
              *(&v45 - 7) = v46;
              *(&v45 - 6) = v25;
              v39 = v48;
              *(&v45 - 5) = v48;
              *(&v45 - 4) = v40;
              *(&v45 - 3) = v24;
              *(&v45 - 16) = v41;
              *(&v45 - 1) = v13;

              v35 = StartRequestMessageBase.init(build:)(sub_2231D3AE8);
              v42 = v35;

              if (v35)
              {

                v43 = *(v47 + 8);
                v44 = v42;
                v43(v39, v49);
                sub_2231D2F50(v13);
              }

              else
              {
                (*(v47 + 8))(v39, v49);
                sub_2231D2F50(v13);
              }

              return v35;
            }
          }

          (*(v22 + 8))(v48, v21);
        }

        else
        {
          (*(v22 + 8))(v23, v21);
        }
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v27 = sub_223200014();
  __swift_project_value_buffer(v27, qword_280FCE830);
  v28 = sub_223200004();
  v29 = sub_223200254();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v31;
    *v30 = 136446210;
    v32 = sub_2230F7898(ObjectType);
    v34 = sub_2231A5D38(v32, v33, &v52);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223DD6780](v31, -1, -1);
    MEMORY[0x223DD6780](v30, -1, -1);
  }

  sub_2231D2F50(v13);
  type metadata accessor for StartSpeechRequestMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231D2F50(uint64_t a1)
{
  started = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartSpeechRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A890, &qword_22321CE98);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E72C8();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartSpeechRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for Location(0);
    v10 = 0;
    sub_2230E7514(&qword_27D05A7D0, &protocol conformance descriptor for Location);
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_location) = v9[0];
    LOBYTE(v9[0]) = 1;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_asrOnServer) = sub_223200504() & 1;
    sub_2230F7158(a1, v9);
    v6 = StartRequestMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231D328C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265536E4F727361 && a2 == 0xEB00000000726576)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231D3358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D328C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231D3380(uint64_t a1)
{
  v2 = sub_2230E72C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D33BC(uint64_t a1)
{
  v2 = sub_2230E72C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2231D345C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  v17 = started[6];
  sub_2230D69D4(a1 + v17);
  v18 = sub_2231FFDA4();
  (*(*(v18 - 8) + 16))(a1 + v17, a5, v18);
  __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v18);
  v19 = (a1 + started[7]);

  *v19 = a6;
  v19[1] = a7;
  *(a1 + started[8]) = a8;
  v20 = *(a9 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 44));
  v21 = started[9];
  v22 = *(a1 + v21);
  v23 = v20;

  *(a1 + v21) = v20;
}

uint64_t StartSpeechRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartSpeechRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_40() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartSpeechRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartSpeechRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.location.getter()
{
  type metadata accessor for StartSpeechRequestMessage.Builder(0);
}

uint64_t StartSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_40() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.asrOnServer.setter(char a1)
{
  result = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *StartSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void StartSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_40() + 44);

  *(v1 + v2) = v0;
}

id StartSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D3BE0()
{
  result = qword_27D05A8A0;
  if (!qword_27D05A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8A0);
  }

  return result;
}

unint64_t sub_2231D3C38()
{
  result = qword_280FCD008;
  if (!qword_280FCD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD008);
  }

  return result;
}

unint64_t sub_2231D3C90()
{
  result = qword_280FCD010;
  if (!qword_280FCD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD010);
  }

  return result;
}

uint64_t sub_2231D3CF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5341656C62616E65 && a2 == 0xE900000000000052;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746E6F4374696ALL && a2 == 0xEA00000000007478;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000002232269D0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2231D3E1C(char a1)
{
  if (!a1)
  {
    return 0x5341656C62616E65;
  }

  if (a1 == 1)
  {
    return 0x65746E6F4374696ALL;
  }

  return 0xD000000000000011;
}

uint64_t sub_2231D3E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D3CF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231D3EB0(uint64_t a1)
{
  v2 = sub_2231D5360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D3EEC(uint64_t a1)
{
  v2 = sub_2231D5360();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartTestSpeechRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartTestSpeechRequestMessage.init(build:)(v1);
}

id StartTestSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v50 = a1;
  v51 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v46 = v6;
  MEMORY[0x28223BE20](v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  v10 = (started - 8);
  MEMORY[0x28223BE20](started);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 15;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v13 = v10[8];
  v48 = v5;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v5);
  v14 = &v12[v10[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = v10[10];
  v12[v15] = 19;
  *&v12[v10[11]] = 0;
  v16 = v10[12];
  v12[v16] = 2;
  v17 = v10[13];
  *&v12[v17] = 0;
  v18 = &v12[v10[14]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v12[v10[15]] = 0;
  v50(v12);
  v19 = *v12;
  if (v19 != 15)
  {
    v20 = *(v12 + 2);
    if (v20)
    {
      v50 = *(v12 + 1);
      sub_2230D1480(&v12[v13], v4);
      v21 = v48;
      if (__swift_getEnumTagSinglePayload(v4, 1, v48) == 1)
      {
        sub_2230D69D4(v4);
      }

      else
      {
        v45 = v20;
        v22 = v46;
        (*(v46 + 32))(v47, v4, v21);
        v23 = *(v14 + 1);
        if (v23)
        {
          if (v12[v15] != 19)
          {
            v24 = v12[v16];
            if (v24 != 2)
            {
              ObjectType = &v45;
              v35 = v51;
              *(v51 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_enableASR) = v24 & 1;
              *(v35 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext) = *&v12[v17];
              v36 = *(v18 + 1);
              v37 = (v35 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath);
              *v37 = *v18;
              v37[1] = v36;
              MEMORY[0x28223BE20](v36);
              *(&v45 - 64) = v19;
              v38 = v45;
              *(&v45 - 7) = v50;
              *(&v45 - 6) = v38;
              v39 = v47;
              *(&v45 - 5) = v47;
              *(&v45 - 4) = v40;
              *(&v45 - 3) = v23;
              *(&v45 - 16) = v41;
              *(&v45 - 1) = v12;

              v33 = StartSpeechRequestMessage.init(build:)(sub_2231D5324);
              v42 = v33;

              if (v33)
              {

                v43 = *(v46 + 8);
                v44 = v42;
                v43(v39, v21);
                sub_2231D4514(v12);
              }

              else
              {
                (*(v46 + 8))(v39, v21);
                sub_2231D4514(v12);
              }

              return v33;
            }
          }
        }

        (*(v22 + 8))(v47, v21);
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v25 = sub_223200014();
  __swift_project_value_buffer(v25, qword_280FCE830);
  v26 = sub_223200004();
  v27 = sub_223200254();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136446210;
    v30 = sub_2230F7898(ObjectType);
    v32 = sub_2231A5D38(v30, v31, &v52);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2230CE000, v26, v27, "Could not build %{public}s: Builder has missing required fields", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DD6780](v29, -1, -1);
    MEMORY[0x223DD6780](v28, -1, -1);
  }

  sub_2231D4514(v12);
  type metadata accessor for StartTestSpeechRequestMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231D4514(uint64_t a1)
{
  started = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231D4590(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  v17 = started[6];
  sub_2230D69D4(a1 + v17);
  v18 = sub_2231FFDA4();
  (*(*(v18 - 8) + 16))(a1 + v17, a5, v18);
  __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v18);
  v19 = (a1 + started[7]);

  *v19 = a6;
  v19[1] = a7;
  *(a1 + started[8]) = a8;
  v20 = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  v21 = *(a9 + *(v20 + 36));
  v22 = started[9];

  *(a1 + v22) = v21;
  *(a1 + started[10]) = 0;
  v23 = *(a9 + *(v20 + 52));
  v24 = started[11];
  v25 = *(a1 + v24);
  v26 = v23;

  *(a1 + v24) = v23;
}

void *StartTestSpeechRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8A8, &unk_22321D068);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D5360();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartTestSpeechRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    v13 = 1;
    sub_223165264(&qword_27D058DB8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext) = v12[0];
    OUTLINED_FUNCTION_0();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_enableASR) = sub_223200504() & 1;
    LOBYTE(v12[0]) = 2;
    OUTLINED_FUNCTION_0();
    v6 = sub_223200494();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath);
    *v7 = v6;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = StartSpeechRequestMessage.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231D4A14(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8B8, &qword_22321D078);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D5360();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext) || (v11[1] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext), v12 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380), sub_223165264(&qword_280FCA460, MEMORY[0x277D837D8], MEMORY[0x277D83948]), sub_223200654(), !v2))
  {
    v14 = 0;
    sub_223200604();
    if (!v2)
    {
      if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath + 8))
      {
        v13 = 2;
        sub_2232005F4();
      }

      sub_2230E5C88(a1);
    }
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t StartTestSpeechRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartTestSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_41() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartTestSpeechRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartTestSpeechRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.location.getter()
{
  type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
}

uint64_t StartTestSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_41() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.enableASR.setter(char a1)
{
  result = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.jitContext.getter()
{
  type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
}

uint64_t StartTestSpeechRequestMessage.Builder.jitContext.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_41() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.overrideModelPath.getter()
{
  type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartTestSpeechRequestMessage.Builder.overrideModelPath.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 48));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *StartTestSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 52));
  v2 = v1;
  return v1;
}

void StartTestSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_41() + 52);

  *(v1 + v2) = v0;
}

uint64_t sub_2231D5258()
{
}

id StartTestSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartTestSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D5360()
{
  result = qword_27D05A8B0;
  if (!qword_27D05A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8B0);
  }

  return result;
}

uint64_t sub_2231D5468(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C238C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_2231C238C(319, qword_280FCA608, type metadata accessor for Location);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_2231D562C(319);
      if (v11 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2231C238C(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        v2 = v12;
        if (v13 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2231D562C(uint64_t a1)
{
  if (!qword_280FCA458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059880, &unk_223214380);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA458);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StartTestSpeechRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D5770()
{
  result = qword_27D05A8D0;
  if (!qword_27D05A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8D0);
  }

  return result;
}

unint64_t sub_2231D57C8()
{
  result = qword_27D05A8D8;
  if (!qword_27D05A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8D8);
  }

  return result;
}

unint64_t sub_2231D5820()
{
  result = qword_27D05A8E0;
  if (!qword_27D05A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8E0);
  }

  return result;
}

void *StartTextRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartTextRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartTextRequestMessage(uint64_t a1)
{
  result = qword_280FCDA08;
  if (!qword_280FCDA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *StartUnderstandingDictationRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartSpeechDictationRequestMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartUnderstandingDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingDictationRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartUnderstandingDictationRequestMessage(uint64_t a1)
{
  result = qword_280FCBC18;
  if (!qword_280FCBC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231D5B74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000223225710 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231D5C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D5B74(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231D5C40(uint64_t a1)
{
  v2 = sub_2231D6A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D5C7C(uint64_t a1)
{
  v2 = sub_2231D6A98();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartUnderstandingDictationSessionMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
  v11 = (started - 8);
  MEMORY[0x28223BE20](started);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0xD000000000000024;
  *(v16 + 1) = 0x80000002232216F0;
  v17 = v11[11];
  v13[v17] = 1;
  a1(v13);
  v18 = *v13;
  if (v18 == 15)
  {
    goto LABEL_10;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v28 = sub_223200014();
    __swift_project_value_buffer(v28, qword_280FCE830);
    v29 = sub_223200004();
    v30 = sub_223200254();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136446210;
      v33 = sub_2230F7898(ObjectType);
      v35 = sub_2231A5D38(v33, v34, &v42);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2230CE000, v29, v30, "Could not build %{public}s: Builder has missing required fields", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x223DD6780](v32, -1, -1);
      MEMORY[0x223DD6780](v31, -1, -1);
    }

    sub_2231D6190(v13);
    type metadata accessor for StartUnderstandingDictationSessionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v38 = v20;
  v21 = v39;
  v22 = v40;
  v23 = (*(v40 + 32))(v39, v2, v6);
  if (!*(v15 + 1))
  {
    (*(v22 + 8))(v21, v6);
    goto LABEL_10;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes41StartUnderstandingDictationSessionMessage_understandingOnDevice) = v13[v17];
  MEMORY[0x28223BE20](v23);
  *(&v37 - 48) = v18;
  *(&v37 - 5) = v38;
  *(&v37 - 4) = v19;
  *(&v37 - 3) = v21;
  *(&v37 - 2) = v24;
  *(&v37 - 1) = v25;
  v26 = StartSpeechDictationSessionMessage.init(build:)(sub_2231D6A84);
  v27 = v26;
  sub_2231D6190(v13);
  if (v26)
  {
  }

  (*(v22 + 8))(v21, v6);
  return v26;
}

uint64_t sub_2231D6190(uint64_t a1)
{
  started = type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231D620C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  v14 = *(started + 24);
  sub_2230D69D4(a1 + v14);
  v15 = sub_2231FFDA4();
  (*(*(v15 - 8) + 16))(a1 + v14, a5, v15);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v15);
  v16 = (a1 + *(started + 28));

  *v16 = a6;
  v16[1] = a7;
  return result;
}

void *StartUnderstandingDictationSessionMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8E8, &qword_22321D2E8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D6A98();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartUnderstandingDictationSessionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes41StartUnderstandingDictationSessionMessage_understandingOnDevice) = sub_223200504() & 1;
    sub_2230F7158(a1, v9);
    v6 = StartSpeechDictationSessionMessage.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231D6540(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8F8, &qword_22321D2F0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D6A98();
  sub_2232007A4();
  sub_223200604();
  if (!v1)
  {
    sub_2231D1FB4(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_42() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.languageCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 32));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.understandingOnDevice.setter(char a1)
{
  result = type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

id StartUnderstandingDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingDictationSessionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D6A98()
{
  result = qword_27D05A8F0;
  if (!qword_27D05A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8F0);
  }

  return result;
}

uint64_t sub_2231D6B8C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
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

_BYTE *storeEnumTagSinglePayload for StartUnderstandingDictationSessionMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231D6D24()
{
  result = qword_27D05A910;
  if (!qword_27D05A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A910);
  }

  return result;
}

unint64_t sub_2231D6D7C()
{
  result = qword_27D05A918;
  if (!qword_27D05A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A918);
  }

  return result;
}

unint64_t sub_2231D6DD4()
{
  result = qword_27D05A920;
  if (!qword_27D05A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A920);
  }

  return result;
}

void *StartUnderstandingOnServerRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartUnderstandingOnServerRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingOnServerRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartUnderstandingOnServerRequestMessage(uint64_t a1)
{
  result = qword_280FCBCE8;
  if (!qword_280FCBCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *StartUnderstandingOnServerTextRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartUnderstandingOnServerRequestMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartUnderstandingOnServerTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingOnServerTextRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartUnderstandingOnServerTextRequestMessage(uint64_t a1)
{
  result = qword_280FCBA58;
  if (!qword_280FCBA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231D7128(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000223226C10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231D71A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D7128(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231D71D4(uint64_t a1)
{
  v2 = sub_2230D63D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D7210(uint64_t a1)
{
  v2 = sub_2230D63D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2231D72E8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A938, &unk_22321D6B8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D63D8();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StopAttendingRequestedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231D79C8();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StopAttendingRequestedMessage_attendingStopReason) = v9[0];
    sub_2230F7158(a1, v9);
    v6 = SessionMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t StopAttendingRequestedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StopAttendingRequestedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StopAttendingRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StopAttendingRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StopAttendingRequestedMessage.Builder.attendingStopReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

id StopAttendingRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAttendingRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2231D77CC(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  if (v1 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v3 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA860, &type metadata for AttendingStopReason);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2231D78C4()
{
  result = qword_27D05A930;
  if (!qword_27D05A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A930);
  }

  return result;
}

unint64_t sub_2231D791C()
{
  result = qword_280FCC678;
  if (!qword_280FCC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC678);
  }

  return result;
}

unint64_t sub_2231D7974()
{
  result = qword_280FCC680;
  if (!qword_280FCC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC680);
  }

  return result;
}

unint64_t sub_2231D79C8()
{
  result = qword_27D05A940;
  if (!qword_27D05A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A940);
  }

  return result;
}

uint64_t sub_2231D7A6C(uint64_t a1)
{
  v2 = sub_2231D8A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D7AA8(uint64_t a1)
{
  v2 = sub_2231D8A68();

  return MEMORY[0x2821FE720](a1, v2);
}

id StoppedListeningForSpeechContinuationForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForSpeechContinuationForPlannerMessage.init(build:)(v1);
}

id StoppedListeningForSpeechContinuationForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v46 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v7;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v13[v17] = 3;
  a1(v13);
  v18 = *v13;
  if (v18 == 15)
  {
    goto LABEL_13;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v33 = sub_223200014();
    __swift_project_value_buffer(v33, qword_280FCE830);
    v34 = sub_223200004();
    v35 = sub_223200254();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136446210;
      v38 = sub_2230F7898(ObjectType);
      v40 = sub_2231A5D38(v38, v39, &v47);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DD6780](v37, -1, -1);
      MEMORY[0x223DD6780](v36, -1, -1);
    }

    sub_2231D7FD0(v13);
    type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v20;
  v22 = v43;
  v21 = v44;
  (*(v44 + 32))(v43, v5, v6);
  if (!*(v15 + 1) || (v23 = *(v16 + 1)) == 0)
  {
    (*(v21 + 8))(v22, v6);
    goto LABEL_13;
  }

  v24 = *v16;
  v25 = v22;
  v26 = v46;
  v27 = (v46 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId);
  *v27 = v24;
  v27[1] = v23;
  v28 = v13[v17];
  if (v28 == 3)
  {
    LOBYTE(v28) = 1;
  }

  *(v26 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_mitigationDecision) = v28;
  MEMORY[0x28223BE20](v23);
  *(&v42 - 48) = v18;
  *(&v42 - 5) = v42;
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v25;
  *(&v42 - 2) = v29;
  *(&v42 - 1) = v30;

  v31 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v32 = v31;
  sub_2231D7FD0(v13);
  if (v31)
  {
  }

  (*(v44 + 8))(v25, v6);
  return v31;
}

uint64_t sub_2231D7FD0(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForSpeechContinuationForPlannerMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A948, &qword_22321D6C8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D8A68();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId);
    *v7 = v5;
    v7[1] = v8;
    v13 = 1;
    sub_2231996A4();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_mitigationDecision) = v12[0];
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231D8320(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A950, &qword_22321D6D0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D8A68();
  sub_2232007A4();
  v14 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_mitigationDecision);
    v12 = 1;
    sub_2231996F8();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_2231D8528()
{
  v1 = v0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_42() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.requestId.getter()
{
  type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.lastTRPId.getter()
{
  type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

id StoppedListeningForSpeechContinuationForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D8A68()
{
  result = qword_280FCB988;
  if (!qword_280FCB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForSpeechContinuationForPlannerMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D8C44()
{
  result = qword_27D05A958;
  if (!qword_27D05A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A958);
  }

  return result;
}

unint64_t sub_2231D8C9C()
{
  result = qword_280FCB978;
  if (!qword_280FCB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB978);
  }

  return result;
}

unint64_t sub_2231D8CF4()
{
  result = qword_280FCB980;
  if (!qword_280FCB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB980);
  }

  return result;
}

id StoppedListeningForSpeechContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v46 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v7;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v13[v17] = 3;
  a1(v13);
  v18 = *v13;
  if (v18 == 15)
  {
    goto LABEL_13;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v33 = sub_223200014();
    __swift_project_value_buffer(v33, qword_280FCE830);
    v34 = sub_223200004();
    v35 = sub_223200254();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136446210;
      v38 = sub_2230F7898(ObjectType);
      v40 = sub_2231A5D38(v38, v39, &v47);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DD6780](v37, -1, -1);
      MEMORY[0x223DD6780](v36, -1, -1);
    }

    sub_2231D9204(v13);
    type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v20;
  v22 = v43;
  v21 = v44;
  (*(v44 + 32))(v43, v5, v6);
  if (!*(v15 + 1) || (v23 = *(v16 + 1)) == 0)
  {
    (*(v21 + 8))(v22, v6);
    goto LABEL_13;
  }

  v24 = *v16;
  v25 = v22;
  v26 = v46;
  v27 = (v46 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId);
  *v27 = v24;
  v27[1] = v23;
  v28 = v13[v17];
  if (v28 == 3)
  {
    LOBYTE(v28) = 1;
  }

  *(v26 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_mitigationDecision) = v28;
  MEMORY[0x28223BE20](v23);
  *(&v42 - 48) = v18;
  *(&v42 - 5) = v42;
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v25;
  *(&v42 - 2) = v29;
  *(&v42 - 1) = v30;

  v31 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v32 = v31;
  sub_2231D9204(v13);
  if (v31)
  {
  }

  (*(v44 + 8))(v25, v6);
  return v31;
}

uint64_t sub_2231D9204(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForSpeechContinuationMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A960, &qword_22321D8A8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D9D94();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId);
    *v7 = v5;
    v7[1] = v8;
    v13 = 1;
    sub_2231996A4();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_mitigationDecision) = v12[0];
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231D9510(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A968, &qword_22321D8B0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D9D94();
  sub_2232007A4();
  v14 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_mitigationDecision);
    v12 = 1;
    sub_2231996F8();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_2231D9720(uint64_t a1)
{
  v2 = sub_2231D9D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D975C(uint64_t a1)
{
  v2 = sub_2231D9D94();

  return MEMORY[0x2821FE720](a1, v2);
}

id StoppedListeningForSpeechContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForSpeechContinuationMessage.init(build:)(v1);
}

uint64_t sub_2231D9884()
{
  v1 = v0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_43() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.requestId.getter()
{
  type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.getter()
{
  type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

id StoppedListeningForSpeechContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D9D94()
{
  result = qword_280FCBA50;
  if (!qword_280FCBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBA50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForSpeechContinuationMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D9F70()
{
  result = qword_27D05A970;
  if (!qword_27D05A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A970);
  }

  return result;
}

unint64_t sub_2231D9FC8()
{
  result = qword_280FCBA40;
  if (!qword_280FCBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBA40);
  }

  return result;
}

unint64_t sub_2231DA020()
{
  result = qword_280FCBA48;
  if (!qword_280FCBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBA48);
  }

  return result;
}

id StoppedListeningForTextContinuationForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForTextContinuationForPlannerMessage.init(build:)(v1);
}

id StoppedListeningForTextContinuationForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a1(v13);
  v17 = *v13;
  if (v17 == 15)
  {
    goto LABEL_12;
  }

  v18 = *(v13 + 2);
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898(ObjectType);
      v36 = sub_2231A5D38(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_2231DA578(v13);
    type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v39 = v19;
  v21 = v40;
  v20 = v41;
  (*(v40 + 32))(v41, v2, v6);
  if (!*(v15 + 1))
  {
    (*(v21 + 8))(v20, v6);
    goto LABEL_12;
  }

  v22 = *(v16 + 1);
  if (!v22)
  {
    (*(v21 + 8))(v41, v6);
    goto LABEL_12;
  }

  v23 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId);
  *v23 = *v16;
  v23[1] = v22;
  MEMORY[0x28223BE20](v22);
  *(&v38 - 48) = v17;
  *(&v38 - 5) = v39;
  *(&v38 - 4) = v18;
  v24 = v41;
  *(&v38 - 3) = v41;
  *(&v38 - 2) = v25;
  *(&v38 - 1) = v26;

  v27 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v28 = v27;
  sub_2231DA578(v13);
  if (v27)
  {
  }

  (*(v40 + 8))(v24, v6);
  return v27;
}

uint64_t sub_2231DA578(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForTextContinuationForPlannerMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A978, &qword_22321DA88);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DAEAC();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231DA834(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A980, &qword_22321DA90);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DAEAC();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2231DA9E4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_31() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.requestId.getter()
{
  type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.lastTRPId.getter()
{
  type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_2231DADAC(uint64_t a1)
{
  v2 = sub_2231DAEAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DADE8(uint64_t a1)
{
  v2 = sub_2231DAEAC();

  return MEMORY[0x2821FE720](a1, v2);
}

id StoppedListeningForTextContinuationForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231DAEAC()
{
  result = qword_280FCBB38;
  if (!qword_280FCBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBB38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForTextContinuationForPlannerMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DB050()
{
  result = qword_27D05A988;
  if (!qword_27D05A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A988);
  }

  return result;
}

unint64_t sub_2231DB0A8()
{
  result = qword_280FCBB28;
  if (!qword_280FCBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBB28);
  }

  return result;
}

unint64_t sub_2231DB100()
{
  result = qword_280FCBB30;
  if (!qword_280FCBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBB30);
  }

  return result;
}

id StoppedListeningForTextContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForTextContinuationMessage.init(build:)(v1);
}

id StoppedListeningForTextContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a1(v13);
  v17 = *v13;
  if (v17 == 15)
  {
    goto LABEL_12;
  }

  v18 = *(v13 + 2);
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898(ObjectType);
      v36 = sub_2231A5D38(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_2231DB658(v13);
    type metadata accessor for StoppedListeningForTextContinuationMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v39 = v19;
  v21 = v40;
  v20 = v41;
  (*(v40 + 32))(v41, v2, v6);
  if (!*(v15 + 1))
  {
    (*(v21 + 8))(v20, v6);
    goto LABEL_12;
  }

  v22 = *(v16 + 1);
  if (!v22)
  {
    (*(v21 + 8))(v41, v6);
    goto LABEL_12;
  }

  v23 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId);
  *v23 = *v16;
  v23[1] = v22;
  MEMORY[0x28223BE20](v22);
  *(&v38 - 48) = v17;
  *(&v38 - 5) = v39;
  *(&v38 - 4) = v18;
  v24 = v41;
  *(&v38 - 3) = v41;
  *(&v38 - 2) = v25;
  *(&v38 - 1) = v26;

  v27 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v28 = v27;
  sub_2231DB658(v13);
  if (v27)
  {
  }

  (*(v40 + 8))(v24, v6);
  return v27;
}

uint64_t sub_2231DB658(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForTextContinuationMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A990, &qword_22321DC48);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DBF8C();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForTextContinuationMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231DB914(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A998, &qword_22321DC50);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DBF8C();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2231DBAC4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StoppedListeningForTextContinuationMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.requestId.getter()
{
  type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.lastTRPId.getter()
{
  type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_2231DBE8C(uint64_t a1)
{
  v2 = sub_2231DBF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DBEC8(uint64_t a1)
{
  v2 = sub_2231DBF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

id StoppedListeningForTextContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForTextContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231DBF8C()
{
  result = qword_280FCBC00;
  if (!qword_280FCBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBC00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForTextContinuationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DC130()
{
  result = qword_27D05A9A0;
  if (!qword_27D05A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9A0);
  }

  return result;
}

unint64_t sub_2231DC188()
{
  result = qword_280FCBBF0;
  if (!qword_280FCBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBBF0);
  }

  return result;
}

unint64_t sub_2231DC1E0()
{
  result = qword_280FCBBF8;
  if (!qword_280FCBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBBF8);
  }

  return result;
}

id TextBasedResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v59 = v3;
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v58 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v9 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v61 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v62 = v13 - v12;
  v14 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v18 = (v17 - v16);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  v63 = v9;
  __swift_storeEnumTagSinglePayload(v17 - v16 + v19, 1, 1, v9);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v18[v15[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v18[v15[11]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v18[v15[12]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a1(v18);
  v24 = *v18;
  if (v24 == 15 || (v25 = *(v18 + 2)) == 0)
  {
    sub_2231DC7CC(v18);
    goto LABEL_6;
  }

  v26 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v8);
  v27 = v63;
  if (__swift_getEnumTagSinglePayload(v8, 1, v63) == 1)
  {
    sub_2231DC7CC(v18);
    sub_2230D69D4(v8);
LABEL_6:
    type metadata accessor for TextBasedResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v56 = v26;
  v57 = v25;
  v30 = v61;
  v31 = v62;
  (*(v61 + 32))(v62, v8, v27);
  v32 = *(v20 + 1);
  if (!v32)
  {
    sub_2231DC7CC(v18);
    (*(v30 + 8))(v31, v27);
    goto LABEL_6;
  }

  v33 = *(v21 + 1);
  if (!v33 || (v34 = *(v23 + 1)) == 0 || !*(v22 + 1))
  {
    sub_2231DC7CC(v18);
    (*(v30 + 8))(v62, v27);
    goto LABEL_6;
  }

  v54 = *(v22 + 1);
  v55 = v33;
  v35 = *v20;
  v36 = *v21;
  v37 = *v22;
  v65 = *v23;
  v66 = v34;
  v38 = v57;

  v39 = v58;
  sub_2231FFC74();
  sub_2230D1D30();
  v40 = sub_2232002E4();
  v42 = v41;
  v43 = (*(v59 + 8))(v39, v60);
  v44 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v44 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {

    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v49 = sub_223200014();
    __swift_project_value_buffer(v49, qword_280FCE830);
    v50 = sub_223200004();
    v51 = sub_223200254();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2230CE000, v50, v51, "utterance is empty, can't create message", v52, 2u);
      MEMORY[0x223DD6780](v52, -1, -1);
    }

    sub_2231DC7CC(v18);
    (*(v61 + 8))(v62, v63);
    goto LABEL_6;
  }

  v45 = (v64 + OBJC_IVAR____TtC16SiriMessageTypes31TextBasedResultCandidateMessage_utterance);
  *v45 = v40;
  v45[1] = v42;
  MEMORY[0x28223BE20](v43);
  *(&v53 - 80) = v24;
  v46 = v55;
  *(&v53 - 9) = v56;
  *(&v53 - 8) = v38;
  v47 = v62;
  *(&v53 - 7) = v62;
  *(&v53 - 6) = v35;
  *(&v53 - 5) = v32;
  *(&v53 - 4) = v36;
  *(&v53 - 3) = v46;
  *(&v53 - 2) = v37;
  *(&v53 - 1) = v54;
  v28 = UserIdAwareResultCandidateMessageBase.init(build:)(sub_2230FB70C);

  v48 = v28;
  sub_2231DC7CC(v18);
  if (v28)
  {
  }

  (*(v61 + 8))(v47, v63);
  return v28;
}

uint64_t sub_2231DC7CC(uint64_t a1)
{
  v2 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TextBasedResultCandidateMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9A8, &qword_22321DDF8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DD298();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TextBasedResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31TextBasedResultCandidateMessage_utterance);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = UserIdAwareResultCandidateMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231DCA4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9B0, &qword_22321DE00);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DD298();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2231EEBE4(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2231DCBCC(uint64_t a1)
{
  v2 = sub_2231DD298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DCC08(uint64_t a1)
{
  v2 = sub_2231DD298();

  return MEMORY[0x2821FE720](a1, v2);
}

id TextBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TextBasedResultCandidateMessage.init(build:)(v1);
}

uint64_t TextBasedResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextBasedResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TextBasedResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_24() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TextBasedResultCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextBasedResultCandidateMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TextBasedResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.utterance.getter()
{
  type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedResultCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

id LLMBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TextBasedResultCandidateMessage.init(build:)(v1);
}

void *LLMBasedResultCandidateMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = TextBasedResultCandidateMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id sub_2231DD258(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2231DD298()
{
  result = qword_280FCC3E0;
  if (!qword_280FCC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC3E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextBasedResultCandidateMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DD464()
{
  result = qword_27D05A9C8;
  if (!qword_27D05A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9C8);
  }

  return result;
}

unint64_t sub_2231DD4BC()
{
  result = qword_280FCC3D0;
  if (!qword_280FCC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC3D0);
  }

  return result;
}

unint64_t sub_2231DD514()
{
  result = qword_280FCC3D8;
  if (!qword_280FCC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC3D8);
  }

  return result;
}

id TextBasedTRPCandidateForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TextBasedTRPCandidateForPlannerMessage.init(build:)(v1);
}

id TextBasedTRPCandidateForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v59 = v3;
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v58 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v9 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v61 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v62 = v13 - v12;
  v14 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v18 = (v17 - v16);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  v63 = v9;
  __swift_storeEnumTagSinglePayload(v17 - v16 + v19, 1, 1, v9);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v18[v15[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v18[v15[11]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v18[v15[12]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a1(v18);
  v24 = *v18;
  if (v24 == 15 || (v25 = *(v18 + 2)) == 0)
  {
    sub_2231DDB6C(v18);
    goto LABEL_6;
  }

  v26 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v8);
  v27 = v63;
  if (__swift_getEnumTagSinglePayload(v8, 1, v63) == 1)
  {
    sub_2231DDB6C(v18);
    sub_2230D69D4(v8);
LABEL_6:
    type metadata accessor for TextBasedTRPCandidateForPlannerMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v56 = v26;
  v57 = v25;
  v30 = v61;
  v31 = v62;
  (*(v61 + 32))(v62, v8, v27);
  v32 = *(v20 + 1);
  if (!v32)
  {
    sub_2231DDB6C(v18);
    (*(v30 + 8))(v31, v27);
    goto LABEL_6;
  }

  v33 = *(v21 + 1);
  if (!v33 || (v34 = *(v23 + 1)) == 0 || !*(v22 + 1))
  {
    sub_2231DDB6C(v18);
    (*(v30 + 8))(v62, v27);
    goto LABEL_6;
  }

  v54 = *(v22 + 1);
  v55 = v33;
  v35 = *v20;
  v36 = *v21;
  v37 = *v22;
  v65 = *v23;
  v66 = v34;
  v38 = v57;

  v39 = v58;
  sub_2231FFC74();
  sub_2230D1D30();
  v40 = sub_2232002E4();
  v42 = v41;
  v43 = (*(v59 + 8))(v39, v60);
  v44 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v44 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {

    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v49 = sub_223200014();
    __swift_project_value_buffer(v49, qword_280FCE830);
    v50 = sub_223200004();
    v51 = sub_223200254();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2230CE000, v50, v51, "utterance is empty, can't create message", v52, 2u);
      MEMORY[0x223DD6780](v52, -1, -1);
    }

    sub_2231DDB6C(v18);
    (*(v61 + 8))(v62, v63);
    goto LABEL_6;
  }

  v45 = (v64 + OBJC_IVAR____TtC16SiriMessageTypes38TextBasedTRPCandidateForPlannerMessage_utterance);
  *v45 = v40;
  v45[1] = v42;
  MEMORY[0x28223BE20](v43);
  *(&v53 - 80) = v24;
  v46 = v55;
  *(&v53 - 9) = v56;
  *(&v53 - 8) = v38;
  v47 = v62;
  *(&v53 - 7) = v62;
  *(&v53 - 6) = v35;
  *(&v53 - 5) = v32;
  *(&v53 - 4) = v36;
  *(&v53 - 3) = v46;
  *(&v53 - 2) = v37;
  *(&v53 - 1) = v54;
  v28 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);

  v48 = v28;
  sub_2231DDB6C(v18);
  if (v28)
  {
  }

  (*(v61 + 8))(v47, v63);
  return v28;
}

uint64_t sub_2231DDB6C(uint64_t a1)
{
  v2 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TextBasedTRPCandidateForPlannerMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9D0, &qword_22321DFD8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DE4AC();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TextBasedTRPCandidateForPlannerMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes38TextBasedTRPCandidateForPlannerMessage_utterance);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = TRPCandidateRequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231DDE30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9D8, &qword_22321DFE0);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DE4AC();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2231E5494(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_25() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.requestId.getter()
{
  type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.utterance.getter()
{
  type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231DE3AC(uint64_t a1)
{
  v2 = sub_2231DE4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DE3E8(uint64_t a1)
{
  v2 = sub_2231DE4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

id TextBasedTRPCandidateForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextBasedTRPCandidateForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231DE4AC()
{
  result = qword_280FCBE00;
  if (!qword_280FCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBE00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextBasedTRPCandidateForPlannerMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DE650()
{
  result = qword_27D05A9E0;
  if (!qword_27D05A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9E0);
  }

  return result;
}

unint64_t sub_2231DE6A8()
{
  result = qword_280FCBDF0;
  if (!qword_280FCBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBDF0);
  }

  return result;
}

unint64_t sub_2231DE700()
{
  result = qword_280FCBDF8;
  if (!qword_280FCBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBDF8);
  }

  return result;
}

id sub_2231DE764(void *a1, uint64_t a2)
{
  v70 = a2;
  v71 = a1;
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v65 = v5;
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v64 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_9();
  v67 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v68 = v13 - v12;
  v14 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v16);
  v17 = v15[8];
  v69 = v9;
  __swift_storeEnumTagSinglePayload(&v2[v17], 1, 1, v9);
  v18 = &v2[v15[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v2[v15[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v2[v15[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v2[v15[12]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v2[v15[13]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v63 = v15[14];
  v2[v63] = 1;
  v23 = v15[15];
  v2[v23] = 1;
  sub_22319485C(v2, v70);
  if (*v2 == 15 || (v24 = *(v2 + 2)) == 0)
  {
    sub_2231DF2E8(v2);
    goto LABEL_6;
  }

  LODWORD(v70) = *v2;
  v62 = *(v2 + 1);
  sub_2230D1480(&v2[v17], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v69) == 1)
  {
    sub_2231DF2E8(v2);
    sub_2230D69D4(v3);
LABEL_6:
    type metadata accessor for TextBasedTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v61 = v24;
  (*(v67 + 32))(v68, v3, v69);
  v27 = *(v18 + 1);
  v28 = v71;
  if (!v27 || (v29 = *(v19 + 1)) == 0 || (v30 = *(v22 + 1)) == 0 || !*(v21 + 1))
  {
    sub_2231DF2E8(v2);
    (*(v67 + 8))(v68, v69);
    goto LABEL_6;
  }

  v59 = *(v21 + 1);
  v60 = v29;
  v31 = v27;
  v32 = *v19;
  v57 = *v18;
  v58 = v32;
  v33 = *v22;
  v34 = *v21;
  v72 = v33;
  v73 = v30;

  sub_2231FFC74();
  sub_2230D1D30();
  v35 = sub_2232002E4();
  v37 = v36;
  (*(v65 + 8))(v64, v66);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v43 = sub_223200014();
    __swift_project_value_buffer(v43, qword_280FCE830);
    v44 = sub_223200004();
    v45 = sub_223200254();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      OUTLINED_FUNCTION_17_12(&dword_2230CE000, v47, v48, "utterance is empty, can't create message");
      MEMORY[0x223DD6780](v46, -1, -1);
    }

    sub_2231DF2E8(v2);
    (*(v67 + 8))(v68, v69);
    goto LABEL_6;
  }

  v39 = (v71 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance);
  *v39 = v35;
  v39[1] = v37;
  v40 = *(v20 + 1);
  if (v40)
  {
    v41 = *v20;
    v42 = *(v20 + 1);
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  v49 = v68;
  v50 = (v28 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId);
  *v50 = v41;
  v50[1] = v42;
  *(v28 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome) = v2[v63];
  *(v28 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction) = v2[v23];
  MEMORY[0x28223BE20](v40);
  *(&v56 - 80) = v70;
  v51 = v61;
  *(&v56 - 9) = v62;
  *(&v56 - 8) = v51;
  v53 = v57;
  v52 = v58;
  *(&v56 - 7) = v49;
  *(&v56 - 6) = v53;
  *(&v56 - 5) = v31;
  *(&v56 - 4) = v52;
  v54 = v59;
  *(&v56 - 3) = v60;
  *(&v56 - 2) = v34;
  *(&v56 - 1) = v54;

  v25 = TRPCandidateRequestMessageBase.init(build:)(sub_2231E074C);

  v55 = v25;
  sub_2231DF2E8(v2);
  if (v25)
  {
  }

  (*(v67 + 8))(v49, v69);
  return v25;
}

id TextBasedTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v71 = a1;
  v70 = a2;
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v65 = v5;
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v64 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_9();
  v67 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v68 = v13 - v12;
  v14 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v16);
  v17 = v15[8];
  v69 = v9;
  __swift_storeEnumTagSinglePayload(&v2[v17], 1, 1, v9);
  v18 = &v2[v15[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v2[v15[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v2[v15[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v2[v15[12]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v2[v15[13]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v63 = v15[14];
  v2[v63] = 1;
  v23 = v15[15];
  v2[v23] = 1;
  v71(v2);
  if (*v2 == 15 || (v24 = *(v2 + 2)) == 0)
  {
    sub_2231DF2E8(v2);
    goto LABEL_6;
  }

  LODWORD(v70) = *v2;
  v71 = v24;
  v62 = *(v2 + 1);
  sub_2230D1480(&v2[v17], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v69) == 1)
  {
    sub_2231DF2E8(v2);
    sub_2230D69D4(v3);
LABEL_6:
    type metadata accessor for TextBasedTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v27 = v67;
  (*(v67 + 32))(v68, v3, v69);
  v28 = *(v18 + 1);
  if (!v28 || (v29 = *(v19 + 1)) == 0 || (v30 = *(v22 + 1)) == 0 || !*(v21 + 1))
  {
    sub_2231DF2E8(v2);
    (*(v67 + 8))(v68, v69);
    goto LABEL_6;
  }

  v60 = *(v21 + 1);
  v61 = v29;
  v31 = *v18;
  v32 = *v19;
  v33 = *v22;
  v58 = *v21;
  v59 = v31;
  v73 = v33;
  v74 = v30;

  sub_2231FFC74();
  sub_2230D1D30();
  v34 = sub_2232002E4();
  v36 = v35;
  (*(v65 + 8))(v64, v66);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v44 = sub_223200014();
    __swift_project_value_buffer(v44, qword_280FCE830);
    v45 = sub_223200004();
    v46 = sub_223200254();
    v47 = v68;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      OUTLINED_FUNCTION_17_12(&dword_2230CE000, v49, v50, "utterance is empty, can't create message");
      MEMORY[0x223DD6780](v48, -1, -1);
    }

    sub_2231DF2E8(v2);
    (*(v27 + 8))(v47, v69);
    goto LABEL_6;
  }

  v38 = v34;
  v39 = v72;
  v40 = (v72 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance);
  *v40 = v38;
  v40[1] = v36;
  v41 = *(v20 + 1);
  if (v41)
  {
    v42 = *v20;
    v43 = *(v20 + 1);
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  v51 = v68;
  v52 = (v39 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId);
  *v52 = v42;
  v52[1] = v43;
  *(v39 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome) = v2[v63];
  *(v39 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction) = v2[v23];
  MEMORY[0x28223BE20](v41);
  *(&v57 - 80) = v70;
  v53 = v71;
  *(&v57 - 9) = v62;
  *(&v57 - 8) = v53;
  v54 = v59;
  *(&v57 - 7) = v51;
  *(&v57 - 6) = v54;
  *(&v57 - 5) = v28;
  *(&v57 - 4) = v32;
  v55 = v58;
  *(&v57 - 3) = v61;
  *(&v57 - 2) = v55;
  *(&v57 - 1) = v60;

  v25 = TRPCandidateRequestMessageBase.init(build:)(sub_2231DF950);

  v56 = v25;
  sub_2231DF2E8(v2);
  if (v25)
  {
  }

  (*(v27 + 8))(v51, v69);
  return v25;
}

uint64_t sub_2231DF2E8(uint64_t a1)
{
  v2 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TextBasedTRPCandidateMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9E8, &qword_22321E198);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E02FC();
  sub_223200794();
  if (v2)
  {
    v12 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TextBasedTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_2();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance);
    *v7 = v5;
    v7[1] = v8;
    LOBYTE(v15[0]) = 1;
    v9 = OUTLINED_FUNCTION_5_2();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId);
    *v10 = v9;
    v10[1] = v11;
    sub_2231659CC();
    OUTLINED_FUNCTION_9_29(&type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome) = v15[0];
    v16 = 3;
    sub_223164E50();
    OUTLINED_FUNCTION_9_29(&type metadata for NLRoutingDecisionMessage.CorrectionOutcome);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction) = v15[0];
    sub_2230F7158(a1, v15);
    v12 = TRPCandidateRequestMessageBase.init(from:)(v15);
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t sub_2231DF660(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9F0, &qword_22321E1A0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E02FC();
  sub_2232007A4();
  v17 = 0;
  OUTLINED_FUNCTION_12_1();
  sub_2232005F4();
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_12_1();
    sub_2232005F4();
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome);
    v14 = 2;
    sub_223165978();
    OUTLINED_FUNCTION_12_1();
    sub_2232005E4();
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction);
    v12 = 3;
    sub_223164DA8();
    OUTLINED_FUNCTION_12_1();
    sub_2232005E4();
    sub_2231E5494(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

id TextBasedTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return TextBasedTRPCandidateMessage.init(build:)(v2, v0);
}

uint64_t TextBasedTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.sessionId.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_18_15() + 24);

  return sub_2230D1480(v2, v0);
}

uint64_t TextBasedTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_26() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TextBasedTRPCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.tcuId.getter()
{
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_18_15() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t TextBasedTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.utterance.getter()
{
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correctionOutcome.getter()
{
  result = OUTLINED_FUNCTION_18_15();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correctionOutcome.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correction.getter()
{
  result = OUTLINED_FUNCTION_18_15();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t sub_2231DFF88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6974636572726F63 && a2 == 0xEA00000000006E6FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2231E00F4(char a1)
{
  result = 0x636E617265747475;
  switch(a1)
  {
    case 1:
      result = 0x6449756374;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6974636572726F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231E0188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231DFF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E01B0(uint64_t a1)
{
  v2 = sub_2231E02FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E01EC(uint64_t a1)
{
  v2 = sub_2231E02FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231E0228()
{
}

id TextBasedTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextBasedTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E02FC()
{
  result = qword_280FCCA00;
  if (!qword_280FCCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCA00);
  }

  return result;
}

uint64_t sub_2231E0400(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCD5C0, &type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCD538, &type metadata for NLRoutingDecisionMessage.CorrectionOutcome);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for TextBasedTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2231E0638()
{
  result = qword_27D05A9F8;
  if (!qword_27D05A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9F8);
  }

  return result;
}

unint64_t sub_2231E0690()
{
  result = qword_280FCC9F0;
  if (!qword_280FCC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC9F0);
  }

  return result;
}

unint64_t sub_2231E06E8()
{
  result = qword_280FCC9F8;
  if (!qword_280FCC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC9F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return sub_2231FFDA4();
}

double TextRequestType.TapToEditRequest.init(build:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = 0uLL;
  a1(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t TextRequestType.TapToEditRequest.Builder.previousUtterance.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TextRequestType.TapToEditRequest.Builder.previousUtterance.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static TextRequestType.TapToEditRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_2232006B4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2231E089C(uint64_t a1)
{
  v2 = sub_2231E0A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E08D8(uint64_t a1)
{
  v2 = sub_2231E0A28();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextRequestType.TapToEditRequest.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA00, &qword_22321E360);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2231E0A28();
  sub_2232007A4();
  sub_2232005C4();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231E0A28()
{
  result = qword_27D05AA08;
  if (!qword_27D05AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA08);
  }

  return result;
}

void TextRequestType.TapToEditRequest.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA10, &qword_22321E368);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231E0A28();
  sub_223200794();
  if (!v0)
  {
    v10 = sub_223200494();
    v12 = v11;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

BOOL static TextRequestType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 != 1)
  {
    if (v5 == 1)
    {
      goto LABEL_5;
    }

    if (v3)
    {
      if (!v5)
      {
        goto LABEL_5;
      }

      v16 = *a1;
      if (v2 != v4 || v3 != v5)
      {
        v18 = sub_2232006B4();
        v19 = OUTLINED_FUNCTION_6_29();
        sub_2230D7C34(v19, v20);
        v21 = OUTLINED_FUNCTION_2_47();
        sub_2230D7C34(v21, v22);
        v23 = OUTLINED_FUNCTION_2_47();
        sub_2230D7BB4(v23, v24);
        v25 = OUTLINED_FUNCTION_6_29();
        sub_2230D7BB4(v25, v26);
        return (v18 & 1) != 0;
      }

      sub_2230D7C34(v16, v3);
      v27 = OUTLINED_FUNCTION_2_47();
      sub_2230D7C34(v27, v28);
      v29 = OUTLINED_FUNCTION_2_47();
      sub_2230D7BB4(v29, v30);
      v31 = OUTLINED_FUNCTION_2_47();
    }

    else
    {
      if (v5)
      {
        goto LABEL_5;
      }

      sub_2230D7C34(*a2, 0);
      sub_2230D7C34(v2, 0);
      sub_2230D7BB4(v2, 0);
      v31 = v4;
      v32 = 0;
    }

    sub_2230D7BB4(v31, v32);
    return 1;
  }

  if (v5 != 1)
  {
LABEL_5:
    v7 = OUTLINED_FUNCTION_6_29();
    sub_2230D7C34(v7, v8);
    v9 = OUTLINED_FUNCTION_2_47();
    sub_2230D7C34(v9, v10);
    v11 = OUTLINED_FUNCTION_2_47();
    sub_2230D7BB4(v11, v12);
    v13 = OUTLINED_FUNCTION_6_29();
    sub_2230D7BB4(v13, v14);
    return 0;
  }

  v6 = 1;
  sub_2230D7BB4(*a1, 1);
  sub_2230D7BB4(v4, 1);
  return v6;
}

uint64_t sub_2231E0D48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536F5465707974 && a2 == 0xEA00000000006972;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6964456F54706174 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231E0E20(char a1)
{
  if (a1)
  {
    return 0x6964456F54706174;
  }

  else
  {
    return 0x69536F5465707974;
  }
}

uint64_t sub_2231E0E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E0D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E0E90(uint64_t a1)
{
  v2 = sub_2231E12A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E0ECC(uint64_t a1)
{
  v2 = sub_2231E12A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231E0F08(uint64_t a1)
{
  v2 = sub_2231E12F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E0F44(uint64_t a1)
{
  v2 = sub_2231E12F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231E0F80(uint64_t a1)
{
  v2 = sub_2231E139C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E0FBC(uint64_t a1)
{
  v2 = sub_2231E139C();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextRequestType.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA18, &qword_22321E370);
  OUTLINED_FUNCTION_9();
  v24 = v4;
  v25 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA20, &qword_22321E378);
  OUTLINED_FUNCTION_9();
  v21 = v8;
  v22 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA28, &qword_22321E380);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v14 = v0[1];
  v20 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2231E12A0();
  sub_2232007A4();
  if (v14 == 1)
  {
    LOBYTE(v26[0]) = 0;
    sub_2231E139C();
    OUTLINED_FUNCTION_10_22(&type metadata for TextRequestType.TypeToSiriCodingKeys, v26);
    (*(v21 + 8))(v11, v22);
  }

  else
  {
    LOBYTE(v26[0]) = 1;
    sub_2231E12F4();
    v17 = v23;
    OUTLINED_FUNCTION_10_22(&type metadata for TextRequestType.TapToEditCodingKeys, v26);
    v26[0] = v20;
    v26[1] = v14;
    sub_2231E1348();
    v18 = v25;
    sub_223200654();
    OUTLINED_FUNCTION_4_44();
    v19(v17, v18);
  }

  v15 = OUTLINED_FUNCTION_7_33();
  v16(v15, v12);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231E12A0()
{
  result = qword_280FCAB88;
  if (!qword_280FCAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB88);
  }

  return result;
}

unint64_t sub_2231E12F4()
{
  result = qword_27D05AA30;
  if (!qword_27D05AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA30);
  }

  return result;
}

unint64_t sub_2231E1348()
{
  result = qword_27D05AA38;
  if (!qword_27D05AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA38);
  }

  return result;
}

unint64_t sub_2231E139C()
{
  result = qword_280FCABA0;
  if (!qword_280FCABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCABA0);
  }

  return result;
}

void TextRequestType.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v44 = v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA40, &qword_22321E388);
  OUTLINED_FUNCTION_9();
  v45 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA48, &qword_22321E390);
  OUTLINED_FUNCTION_9();
  v43 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v38[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA50, &unk_22321E398);
  OUTLINED_FUNCTION_9();
  v46 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-v15];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231E12A0();
  sub_223200794();
  if (v0)
  {
    goto LABEL_8;
  }

  v40 = v7;
  v41 = v11;
  v42 = v1;
  v17 = v47;
  v18 = sub_223200594();
  sub_2230E0B80(v18, 0);
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v27 = sub_2232003A4();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v29 = &type metadata for TextRequestType;
    sub_223200484();
    sub_223200394();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_44();
    v30(v16, v12);
LABEL_8:
    v31 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v20 < (v21 >> 1))
  {
    v39 = *(v19 + v20);
    sub_2230E0B40(v20 + 1);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (v39)
      {
        LOBYTE(v48) = 1;
        sub_2231E12F4();
        sub_223200474();
        v26 = v44;
        sub_2231E1950();
        sub_223200554();
        v33 = v46;
        swift_unknownObjectRelease();
        v35 = OUTLINED_FUNCTION_7_33();
        v36(v35, v17);
        (*(v33 + 8))(v16, v12);
        v37 = v48;
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_2231E139C();
        v32 = v41;
        sub_223200474();
        v26 = v44;
        swift_unknownObjectRelease();
        (*(v43 + 8))(v32, v40);
        OUTLINED_FUNCTION_4_44();
        v34(v16, v12);
        v37 = xmmword_223211C20;
      }

      *v26 = v37;
      v31 = v3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_2231E1950()
{
  result = qword_27D05AA58;
  if (!qword_27D05AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes15TextRequestTypeO(uint64_t a1)
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

void *sub_2231E19C8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextRequestType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231E1B08(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231E1BB8()
{
  result = qword_27D05AA60;
  if (!qword_27D05AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA60);
  }

  return result;
}

unint64_t sub_2231E1C10()
{
  result = qword_27D05AA68;
  if (!qword_27D05AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA68);
  }

  return result;
}

unint64_t sub_2231E1C68()
{
  result = qword_27D05AA70;
  if (!qword_27D05AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA70);
  }

  return result;
}

unint64_t sub_2231E1CC0()
{
  result = qword_280FCAB90;
  if (!qword_280FCAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB90);
  }

  return result;
}

unint64_t sub_2231E1D18()
{
  result = qword_280FCAB98;
  if (!qword_280FCAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB98);
  }

  return result;
}

unint64_t sub_2231E1D70()
{
  result = qword_280FCAB68;
  if (!qword_280FCAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB68);
  }

  return result;
}

unint64_t sub_2231E1DC8()
{
  result = qword_280FCAB70;
  if (!qword_280FCAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB70);
  }

  return result;
}

unint64_t sub_2231E1E20()
{
  result = qword_280FCAB78;
  if (!qword_280FCAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB78);
  }

  return result;
}

unint64_t sub_2231E1E78()
{
  result = qword_280FCAB80;
  if (!qword_280FCAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB80);
  }

  return result;
}

unint64_t sub_2231E1ED0()
{
  result = qword_27D05AA78;
  if (!qword_27D05AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA78);
  }

  return result;
}

unint64_t sub_2231E1F28()
{
  result = qword_27D05AA80;
  if (!qword_27D05AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA80);
  }

  return result;
}

id TRPCandidateForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateForPlannerMessage.init(build:)(v1);
}

id TRPCandidateForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v47 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_2231FFDA4();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TRPCandidateForPlannerMessage.Builder(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 15;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v12 = v9[8];
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v6);
  v13 = &v11[v9[9]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v11[v9[10]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v9[12];
  *&v11[v16] = 0;
  a1(v11);
  v17 = *v11;
  if (v17 == 15)
  {
    goto LABEL_13;
  }

  v18 = *(v11 + 2);
  if (!v18)
  {
    goto LABEL_13;
  }

  v43 = *(v11 + 1);
  sub_2230D1480(&v11[v12], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v33 = sub_223200004();
    v34 = sub_223200254();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136446210;
      v37 = sub_2230F7898(ObjectType);
      v39 = sub_2231A5D38(v37, v38, &v48);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223DD6780](v36, -1, -1);
      MEMORY[0x223DD6780](v35, -1, -1);
    }

    sub_2231E2490(v11);
    type metadata accessor for TRPCandidateForPlannerMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v18;
  v20 = v44;
  v19 = v45;
  (*(v45 + 32))(v44, v5, v6);
  if (!*(v13 + 1) || !*(v14 + 1) || !*(v15 + 1) || (v21 = *&v11[v16]) == 0)
  {
    (*(v19 + 8))(v20, v6);
    goto LABEL_13;
  }

  v22 = v20;
  *(v47 + OBJC_IVAR____TtC16SiriMessageTypes29TRPCandidateForPlannerMessage_tcuToContextList) = v21;
  MEMORY[0x28223BE20](v21);
  *(&v41 - 80) = v17;
  v23 = v42;
  *(&v41 - 9) = v43;
  *(&v41 - 8) = v23;
  *(&v41 - 7) = v20;
  *(&v41 - 6) = v24;
  *(&v41 - 5) = v26;
  *(&v41 - 4) = v25;
  *(&v41 - 3) = v27;
  *(&v41 - 2) = v28;
  *(&v41 - 1) = v29;

  v30 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v31 = v30;
  sub_2231E2490(v11);
  if (v30)
  {
  }

  (*(v45 + 8))(v22, v6);
  return v30;
}

uint64_t sub_2231E2490(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPCandidateForPlannerMessage.init(from:)(void *a1)
{
  v2 = v1;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Error: Attempted to serialize an instance of TRPCandidateRequestMessage, which is not currently codable. Conversation Session State will be empty.", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes29TRPCandidateForPlannerMessage_tcuToContextList) = MEMORY[0x277D84F90];
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_2231E26E8()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TRPCandidateForPlannerMessage(0);
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232252D0);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes29TRPCandidateForPlannerMessage_tcuToContextList];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EF8, &qword_223217808);
  v7 = MEMORY[0x223DD5B40](v5, v6);
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t TRPCandidateForPlannerMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TRPCandidateForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_48() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateForPlannerMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 28));

  return v1;
}

uint64_t TRPCandidateForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TRPCandidateForPlannerMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 32));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.trpCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 36));

  return v1;
}

uint64_t TRPCandidateForPlannerMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.tcuToContextList.getter()
{
  type metadata accessor for TRPCandidateForPlannerMessage.Builder(0);
}

uint64_t TRPCandidateForPlannerMessage.Builder.tcuToContextList.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_48() + 40);

  *(v1 + v2) = v0;
  return result;
}

id TRPCandidateForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231E2D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449707274 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231E2E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E2D78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231E2E30(uint64_t a1)
{
  v2 = sub_2231E3B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E2E6C(uint64_t a1)
{
  v2 = sub_2231E3B30();

  return MEMORY[0x2821FE720](a1, v2);
}

id TRPCandidateReadyForExecutionMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateReadyForExecutionMessage.init(build:)(v1);
}

id TRPCandidateReadyForExecutionMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v5[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v5[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v7[v5[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1(v7);
  v12 = *(v11 + 1);
  if (v12)
  {
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId);
    *v13 = *v11;
    v13[1] = v12;
    MEMORY[0x28223BE20](v12);
    *(&v24 - 2) = v7;

    v14 = RequestMessageBase.init(build:)(sub_2231E3B28);
    sub_2231E31DC(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;
      v20 = sub_2230F7898(ObjectType);
      v22 = sub_2231A5D38(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing required fields", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DD6780](v19, -1, -1);
      MEMORY[0x223DD6780](v18, -1, -1);
    }

    sub_2231E31DC(v7);
    type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

uint64_t sub_2231E31DC(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231E3258(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void *TRPCandidateReadyForExecutionMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA88, &qword_22321E9B0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E3B30();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231E3550(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA98, &unk_22321E9B8);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E3B30();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2231E3708()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0x64497072743C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.requestId.getter()
{
  type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.trpId.getter()
{
  type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.trpId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id TRPCandidateReadyForExecutionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E3B30()
{
  result = qword_27D05AA90;
  if (!qword_27D05AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TRPCandidateReadyForExecutionMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231E3CD4()
{
  result = qword_27D05AAC0;
  if (!qword_27D05AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAC0);
  }

  return result;
}

unint64_t sub_2231E3D2C()
{
  result = qword_27D05AAC8;
  if (!qword_27D05AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAC8);
  }

  return result;
}

unint64_t sub_2231E3D84()
{
  result = qword_27D05AAD0;
  if (!qword_27D05AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAD0);
  }

  return result;
}

id TRPCandidateRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateRequestMessage.init(build:)(v1);
}

id TRPCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v47 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_2231FFDA4();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TRPCandidateRequestMessage.Builder(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 15;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v12 = v9[8];
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v6);
  v13 = &v11[v9[9]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v11[v9[10]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v9[12];
  *&v11[v16] = 0;
  a1(v11);
  v17 = *v11;
  if (v17 == 15)
  {
    goto LABEL_13;
  }

  v18 = *(v11 + 2);
  if (!v18)
  {
    goto LABEL_13;
  }

  v43 = *(v11 + 1);
  sub_2230D1480(&v11[v12], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v33 = sub_223200004();
    v34 = sub_223200254();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136446210;
      v37 = sub_2230F7898(ObjectType);
      v39 = sub_2231A5D38(v37, v38, &v48);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223DD6780](v36, -1, -1);
      MEMORY[0x223DD6780](v35, -1, -1);
    }

    sub_2231E42F0(v11);
    type metadata accessor for TRPCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v18;
  v20 = v44;
  v19 = v45;
  (*(v45 + 32))(v44, v5, v6);
  if (!*(v13 + 1) || !*(v14 + 1) || !*(v15 + 1) || (v21 = *&v11[v16]) == 0)
  {
    (*(v19 + 8))(v20, v6);
    goto LABEL_13;
  }

  v22 = v20;
  *(v47 + OBJC_IVAR____TtC16SiriMessageTypes26TRPCandidateRequestMessage_tcuToContextList) = v21;
  MEMORY[0x28223BE20](v21);
  *(&v41 - 80) = v17;
  v23 = v42;
  *(&v41 - 9) = v43;
  *(&v41 - 8) = v23;
  *(&v41 - 7) = v20;
  *(&v41 - 6) = v24;
  *(&v41 - 5) = v26;
  *(&v41 - 4) = v25;
  *(&v41 - 3) = v27;
  *(&v41 - 2) = v28;
  *(&v41 - 1) = v29;

  v30 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v31 = v30;
  sub_2231E42F0(v11);
  if (v30)
  {
  }

  (*(v45 + 8))(v22, v6);
  return v30;
}

uint64_t sub_2231E42F0(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPCandidateRequestMessage.init(from:)(void *a1)
{
  v2 = v1;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Error: Attempted to serialize an instance of TRPCandidateRequestMessage, which is not currently codable. Conversation Session State will be empty.", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes26TRPCandidateRequestMessage_tcuToContextList) = MEMORY[0x277D84F90];
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_2231E4548()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TRPCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232252D0);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes26TRPCandidateRequestMessage_tcuToContextList];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EF8, &qword_223217808);
  v7 = MEMORY[0x223DD5B40](v5, v6);
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t TRPCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TRPCandidateRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_49() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t TRPCandidateRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TRPCandidateRequestMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 32));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.trpCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 36));

  return v1;
}

uint64_t TRPCandidateRequestMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.tcuToContextList.getter()
{
  type metadata accessor for TRPCandidateRequestMessage.Builder(0);
}

uint64_t TRPCandidateRequestMessage.Builder.tcuToContextList.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_49() + 40);

  *(v1 + v2) = v0;
  return result;
}

id TRPCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TRPCandidateRequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v72 = v1;
  ObjectType = swift_getObjectType();
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v67 = v4;
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v63 - v9;
  v11 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v69 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v70 = v15 - v14;
  v16 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v20 = (v19 - v18);
  *v20 = 15;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  v21 = v17[8];
  __swift_storeEnumTagSinglePayload(v19 - v18 + v21, 1, 1, v11);
  v22 = &v20[v17[9]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v20[v17[10]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v20[v17[11]];
  *v24 = 0;
  *(v24 + 1) = 0;
  a1(v20);
  v25 = *v20;
  if (v25 == 15)
  {
    goto LABEL_15;
  }

  v26 = *(v20 + 2);
  if (!v26)
  {
    goto LABEL_15;
  }

  v66 = *(v20 + 1);
  sub_2230D1480(&v20[v21], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2230D69D4(v10);
LABEL_15:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v49 = sub_223200014();
    __swift_project_value_buffer(v49, qword_280FCE830);
    v50 = sub_223200004();
    v51 = sub_223200254();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v73[0] = v53;
      *v52 = 136446210;
      v54 = sub_2230F7898(ObjectType);
      v56 = sub_2231A5D38(v54, v55, v73);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_2230CE000, v50, v51, "Could not build %{public}s: Builder has missing required fields", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x223DD6780](v53, -1, -1);
      MEMORY[0x223DD6780](v52, -1, -1);
    }

    sub_2231E5680(v20);
LABEL_20:
    type metadata accessor for TRPCandidateRequestMessageBase(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v26;
  v28 = v69;
  v27 = v70;
  (*(v69 + 32))(v70, v10, v11);
  v29 = *(v22 + 1);
  if (!v29 || (v30 = *(v23 + 1)) == 0 || (v31 = *(v24 + 1)) == 0)
  {
    (*(v28 + 8))(v27, v11);
    goto LABEL_15;
  }

  v32 = *v22;
  v63 = *v23;
  v64 = v32;
  v33 = *v24;
  v73[0] = *v24;
  v73[1] = v31;
  v34 = v30;
  v35 = v31;

  v36 = v35;

  sub_2231FFC74();
  sub_2230D1D30();
  ObjectType = sub_2232002E4();
  v38 = v37;
  (*(v67 + 8))(v7, v68);

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = ObjectType & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v58 = sub_223200014();
    __swift_project_value_buffer(v58, qword_280FCE830);
    v59 = sub_223200004();
    v60 = sub_223200254();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2230CE000, v59, v60, "trpCandidateId is empty, can't create message", v61, 2u);
      v62 = v61;
      v28 = v69;
      MEMORY[0x223DD6780](v62, -1, -1);
    }

    sub_2231E5680(v20);
    (*(v28 + 8))(v70, v11);
    goto LABEL_20;
  }

  v41 = v72;
  v42 = (v72 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId);
  *v42 = v33;
  v42[1] = v36;
  v43 = (v41 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
  *v43 = v63;
  v43[1] = v34;
  MEMORY[0x28223BE20](v39);
  *(&v63 - 48) = v25;
  v44 = v65;
  *(&v63 - 5) = v66;
  *(&v63 - 4) = v44;
  v45 = v70;
  v46 = v64;
  *(&v63 - 3) = v70;
  *(&v63 - 2) = v46;
  *(&v63 - 1) = v29;
  v47 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v48 = v47;
  sub_2231E5680(v20);
  if (v47)
  {
  }

  (*(v28 + 8))(v45, v11);
  return v47;
}

void *TRPCandidateRequestMessageBase.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AAD8, &qword_22321EBD8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E5F6C();
  sub_223200794();
  if (v2)
  {
    v11 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TRPCandidateRequestMessageBase(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId);
    *v7 = v5;
    v7[1] = v8;
    v15 = 1;
    sub_2231105AC();
    sub_223200554();
    v9 = v14[1];
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
    *v10 = v14[0];
    v10[1] = v9;
    sub_2230F7158(a1, v14);
    v11 = RequestMessageBase.init(from:)(v14);
    v12 = OUTLINED_FUNCTION_2();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t sub_2231E5494(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AAE0, &qword_22321EBE0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E5F6C();
  sub_2232007A4();
  LOBYTE(v13[0]) = 0;
  sub_2232005F4();
  if (!v2)
  {
    v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId + 8);
    v13[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
    v13[1] = v11;
    v14 = 1;
    sub_2230D37F0();

    sub_223200654();

    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2231E5680(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231E56FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69646E6143707274 && a2 == 0xEE00644965746164;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231E57C8(char a1)
{
  if (a1)
  {
    return 0x644972657375;
  }

  else
  {
    return 0x69646E6143707274;
  }
}

uint64_t sub_2231E5810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E56FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E5838(uint64_t a1)
{
  v2 = sub_2231E5F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E5874(uint64_t a1)
{
  v2 = sub_2231E5F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TRPCandidateRequestMessageBase.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
  a1[1] = v2;
}

id TRPCandidateRequestMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateRequestMessageBase.init(build:)(v1);
}

uint64_t sub_2231E59E0()
{
  v1 = v0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TRPCandidateRequestMessageBase(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0xD000000000000013, 0x80000002232227B0);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId + 8]);
  MEMORY[0x223DD5AA0](0x726573753C202C3ELL, 0xEC000000203A6449);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t TRPCandidateRequestMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateRequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateRequestMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateRequestMessageBase.Builder.requestId.getter()
{
  type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateRequestMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateRequestMessageBase.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TRPCandidateRequestMessageBase.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 32));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TRPCandidateRequestMessageBase.Builder.trpCandidateId.getter()
{
  type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateRequestMessageBase.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_2231E5E98()
{
}

id TRPCandidateRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E5F6C()
{
  result = qword_280FCCE50;
  if (!qword_280FCCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCE50);
  }

  return result;
}

uint64_t sub_2231E6060(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
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

_BYTE *storeEnumTagSinglePayload for TRPCandidateRequestMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231E623C()
{
  result = qword_27D05AAE8;
  if (!qword_27D05AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAE8);
  }

  return result;
}

unint64_t sub_2231E6294()
{
  result = qword_280FCCE40;
  if (!qword_280FCCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCE40);
  }

  return result;
}

unint64_t sub_2231E62EC()
{
  result = qword_280FCCE48;
  if (!qword_280FCCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCE48);
  }

  return result;
}

uint64_t sub_2231E637C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002232272B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231E641C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E637C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231E6448(uint64_t a1)
{
  v2 = sub_2231E723C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E6484(uint64_t a1)
{
  v2 = sub_2231E723C();

  return MEMORY[0x2821FE720](a1, v2);
}

id TRPDetectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPDetectedMessage.init(build:)(v1);
}

id TRPDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TRPDetectedMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a1(v13);
  v17 = *v13;
  if (v17 == 15)
  {
    goto LABEL_12;
  }

  v18 = *(v13 + 2);
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898(ObjectType);
      v36 = sub_2231A5D38(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_2231E6988(v13);
    type metadata accessor for TRPDetectedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v39 = v19;
  v21 = v40;
  v20 = v41;
  (*(v40 + 32))(v41, v2, v6);
  if (!*(v15 + 1))
  {
    (*(v21 + 8))(v20, v6);
    goto LABEL_12;
  }

  v22 = *(v16 + 1);
  if (!v22)
  {
    (*(v21 + 8))(v41, v6);
    goto LABEL_12;
  }

  v23 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId);
  *v23 = *v16;
  v23[1] = v22;
  MEMORY[0x28223BE20](v22);
  *(&v38 - 48) = v17;
  *(&v38 - 5) = v39;
  *(&v38 - 4) = v18;
  v24 = v41;
  *(&v38 - 3) = v41;
  *(&v38 - 2) = v25;
  *(&v38 - 1) = v26;

  v27 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v28 = v27;
  sub_2231E6988(v13);
  if (v27)
  {
  }

  (*(v40 + 8))(v24, v6);
  return v27;
}

uint64_t sub_2231E6988(uint64_t a1)
{
  v2 = type metadata accessor for TRPDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPDetectedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AAF0, &qword_22321ED78);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E723C();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TRPDetectedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231E6C44(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB00, &qword_22321ED80);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E723C();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2231E6DF4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TRPDetectedMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000017, 0x8000000223227230);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t TRPDetectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_34() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPDetectedMessage.Builder.requestId.getter()
{
  type metadata accessor for TRPDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPDetectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPDetectedMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPDetectedMessage.Builder.lastTRPCandidateId.getter()
{
  type metadata accessor for TRPDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPDetectedMessage.Builder.lastTRPCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPDetectedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id TRPDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E723C()
{
  result = qword_27D05AAF8;
  if (!qword_27D05AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TRPDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231E73E0()
{
  result = qword_27D05AB28;
  if (!qword_27D05AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB28);
  }

  return result;
}

unint64_t sub_2231E7438()
{
  result = qword_27D05AB30;
  if (!qword_27D05AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB30);
  }

  return result;
}

unint64_t sub_2231E7490()
{
  result = qword_27D05AB38;
  if (!qword_27D05AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB38);
  }

  return result;
}

uint64_t sub_2231E7578(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000002232272B0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5052546C616E6966 && a2 == 0xEA00000000006449;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5543546C616E6966 && a2 == 0xEA00000000006449)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2231E76A0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x5052546C616E6966;
  }

  return 0x5543546C616E6966;
}

uint64_t sub_2231E7704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E7578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E772C(uint64_t a1)
{
  v2 = sub_2231E8888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E7768(uint64_t a1)
{
  v2 = sub_2231E8888();

  return MEMORY[0x2821FE720](a1, v2);
}

id TRPFinalizedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPFinalizedMessage.init(build:)(v1);
}

id TRPFinalizedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v49 = v7;
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v1;
  v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_lastTRPCandidateId);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v15 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v15], 1, 1, v6);
  v16 = &v13[v11[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[v11[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v13[v11[11]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v13[v11[12]];
  *v19 = 0;
  *(v19 + 1) = 0;
  a1(v13);
  v20 = *v13;
  if (v20 == 15)
  {
    goto LABEL_11;
  }

  v21 = *(v13 + 2);
  if (!v21)
  {
    goto LABEL_11;
  }

  v47 = *(v13 + 1);
  sub_2230D1480(&v13[v15], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_11:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v36 = sub_223200014();
    __swift_project_value_buffer(v36, qword_280FCE830);
    v37 = sub_223200004();
    v38 = sub_223200254();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136446210;
      v41 = sub_2230F7898(ObjectType);
      v43 = sub_2231A5D38(v41, v42, &v52);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2230CE000, v37, v38, "Could not build %{public}s: Builder has missing required fields", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DD6780](v40, -1, -1);
      MEMORY[0x223DD6780](v39, -1, -1);
    }

    sub_2231E7CC0(v13);

    type metadata accessor for TRPFinalizedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v46 = v21;
  v23 = v48;
  v22 = v49;
  (*(v49 + 32))(v48, v5, v6);
  if (!*(v16 + 1) || (v24 = *(v18 + 1)) == 0)
  {
    (*(v22 + 8))(v23, v6);
    goto LABEL_11;
  }

  v25 = *v18;
  v26 = v23;
  v27 = v51;
  v28 = (v51 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId);
  *v28 = v25;
  v28[1] = v24;
  v29 = *(v19 + 1);
  v30 = (v27 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId);
  *v30 = *v19;
  v30[1] = v29;
  MEMORY[0x28223BE20](v29);
  *(&v45 - 48) = v20;
  v31 = v46;
  *(&v45 - 5) = v47;
  *(&v45 - 4) = v31;
  *(&v45 - 3) = v26;
  *(&v45 - 2) = v32;
  *(&v45 - 1) = v33;

  v34 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v35 = v34;
  sub_2231E7CC0(v13);
  if (v34)
  {
  }

  (*(v49 + 8))(v26, v6);
  return v34;
}

uint64_t sub_2231E7CC0(uint64_t a1)
{
  v2 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPFinalizedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB40, &qword_22321EF18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v18 = v1;
  v5 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_lastTRPCandidateId);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E8888();
  sub_223200794();
  if (v2)
  {
    v14 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for TRPFinalizedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_6_31(1);
    v6 = sub_2232004F4();
    v8 = v18;
    v9 = (v18 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId);
    *v9 = v6;
    v9[1] = v10;
    OUTLINED_FUNCTION_6_31(2);
    v11 = sub_223200494();
    v12 = (v8 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId);
    *v12 = v11;
    v12[1] = v13;
    sub_2230F7158(a1, v17);
    v14 = RequestMessageBase.init(from:)(v17);
    v15 = OUTLINED_FUNCTION_1_10();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_2231E8000(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB48, &qword_22321EF20);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E8888();
  sub_2232007A4();
  v13 = 1;
  sub_2232005F4();
  if (!v2)
  {
    if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId + 8))
    {
      v12 = 2;
      sub_2232005F4();
    }

    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_2231E8200()
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_223200374();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TRPFinalizedMessage(0);
  v1 = objc_msgSendSuper2(&v10, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  MEMORY[0x223DD5AA0](0x6C616E69663C202CLL, 0xEF203A6449505254);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000010, 0x80000002232272D0);
  v5 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x3E6C696E3CLL;
  }

  MEMORY[0x223DD5AA0](v7, v8);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v11;
}

uint64_t TRPFinalizedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPFinalizedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPFinalizedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_35() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPFinalizedMessage.Builder.requestId.getter()
{
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.lastTRPCandidateId.getter()
{
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.lastTRPCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.finalTRPId.getter()
{
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.finalTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.finalTCUId.getter()
{
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.finalTCUId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231E8794()
{
}

id TRPFinalizedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPFinalizedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E8888()
{
  result = qword_280FCE1F8;
  if (!qword_280FCE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE1F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TRPFinalizedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231E8A68()
{
  result = qword_27D05AB50;
  if (!qword_27D05AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB50);
  }

  return result;
}

unint64_t sub_2231E8AC0()
{
  result = qword_280FCE1E8;
  if (!qword_280FCE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE1E8);
  }

  return result;
}

unint64_t sub_2231E8B18()
{
  result = qword_280FCE1F0;
  if (!qword_280FCE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE1F0);
  }

  return result;
}

uint64_t TCUMappedNLResponse.init(tcuId:nlResponse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2231E8BBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F707365526C6ELL && a2 == 0xEA00000000006573)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231E8C88(char a1)
{
  if (a1)
  {
    return 0x6E6F707365526C6ELL;
  }

  else
  {
    return 0x6449756374;
  }
}

uint64_t sub_2231E8CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E8BBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E8CF0(uint64_t a1)
{
  v2 = sub_2231E8F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E8D2C(uint64_t a1)
{
  v2 = sub_2231E8F00();

  return MEMORY[0x2821FE720](a1, v2);
}

void TCUMappedNLResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB58, &qword_22321F0E0);
  OUTLINED_FUNCTION_9();
  v34 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v32 - v30;
  v33 = *(v23 + 16);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2231E8F00();
  sub_2232007A4();
  sub_2232005F4();
  if (!v24)
  {
    v35 = v33;
    type metadata accessor for NLParseResponse(0);
    sub_2231A1454(qword_280FCABC0, &protocol conformance descriptor for NLParseResponse);
    sub_223200654();
  }

  (*(v34 + 8))(v31, v27);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231E8F00()
{
  result = qword_280FCA858;
  if (!qword_280FCA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA858);
  }

  return result;
}

void TCUMappedNLResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB60, &unk_22321F0E8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2231E8F00();
  sub_223200794();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v29 = sub_2232004F4();
    v31 = v30;
    type metadata accessor for NLParseResponse(0);
    sub_2231A1454(&qword_27D0589E8, &protocol conformance descriptor for NLParseResponse);
    sub_223200554();
    v32 = OUTLINED_FUNCTION_2();
    v33(v32);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v35;

    v34 = v35;
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_9_0();
}

SiriMessageTypes::TTResponseMessage::MitigationDecision_optional __swiftcall TTResponseMessage.MitigationDecision.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2231E9198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002232212B0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574617453756374 && a2 == 0xEC00000074636944;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000223222870 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000002232213C0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2231E9300(char a1)
{
  result = 0x6574617453756374;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_2231E9458@<X0>(uint64_t *a1@<X8>)
{
  result = TTResponseMessage.MitigationDecision.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2231E9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E9198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E94B0(uint64_t a1)
{
  v2 = sub_2231EB184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E94EC(uint64_t a1)
{
  v2 = sub_2231EB184();

  return MEMORY[0x2821FE720](a1, v2);
}

void TTResponseMessage.tcuMappedNLResponse.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse + 8);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_2231E9548(v2, v3, v4);
}

void sub_2231E9548(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

__n128 TTResponseMessage.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 16);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 20);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes);
  *a1 = result;
  a1[1].n128_u16[2] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

id TTResponseMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TTResponseMessage.init(build:)(v1);
}

id TTResponseMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v74 = a1;
  v75 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v71 = &v63 - v3;
  v4 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v69 = v5;
  MEMORY[0x28223BE20](v6);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTResponseMessage.Builder(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 15;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v12 = v9[8];
  v72 = v4;
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v4);
  v13 = &v11[v9[9]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v11[v9[10]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[11]];
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = v9[12];
  *&v11[v16] = 0;
  v68 = v9[13];
  v11[v68] = 4;
  v17 = &v11[v9[14]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v11[v9[15]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 10) = 2;
  *(v18 + 4) = 0;
  v74(v11);
  v19 = *v11;
  if (v19 == 15 || !*(v11 + 2))
  {
    goto LABEL_12;
  }

  v66 = *(v11 + 2);
  v20 = v15[1];
  v74 = *v15;
  v67 = v20;
  v21 = v15[2];
  v65 = *(v11 + 1);
  v22 = &v11[v12];
  v23 = v71;
  sub_2230D1480(v22, v71);
  v24 = v72;
  if (__swift_getEnumTagSinglePayload(v23, 1, v72) == 1)
  {
    sub_2230D69D4(v23);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v33 = sub_223200004();
    v34 = sub_223200254();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76 = v36;
      *v35 = 136446210;
      v37 = sub_2230F7898(ObjectType);
      v39 = sub_2231A5D38(v37, v38, &v76);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223DD6780](v36, -1, -1);
      MEMORY[0x223DD6780](v35, -1, -1);
    }

    sub_2231E9C90(v11);
    type metadata accessor for TTResponseMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v64 = v21;
  v25 = v69;
  v26 = v23;
  v27 = v70;
  (*(v69 + 32))(v70, v26, v24);
  v28 = v13[1];
  if (!v28)
  {
    (*(v25 + 8))(v27, v24);
    goto LABEL_12;
  }

  if (!*(v14 + 1) || (v29 = *&v11[v16]) == 0 || (v30 = v11[v68], v31 = v70, v30 == 4))
  {
    (*(v25 + 8))(v70, v24);
    goto LABEL_12;
  }

  ObjectType = *(v14 + 1);
  v63 = v28;
  v71 = *v13;
  v68 = *v14;
  v42 = v17[1];
  if (v42)
  {
    v43 = *v17;
    v44 = v29;
  }

  else
  {
    v45 = qword_280FCA778;
    v44 = v29;

    if (v45 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v46 = sub_223200014();
    __swift_project_value_buffer(v46, qword_280FCE830);
    v47 = sub_223200004();
    v48 = sub_223200254();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2230CE000, v47, v48, "Warning: TTResponseMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v49, 2u);
      MEMORY[0x223DD6780](v49, -1, -1);
    }

    v42 = 0x80000002232216F0;
    v43 = 0xD000000000000024;
  }

  v50 = v74;
  v51 = v75;
  v52 = (v75 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse);
  v53 = v67;
  *v52 = v74;
  v52[1] = v53;
  v52[2] = v64;
  *(v51 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuStateDict) = v44;
  *(v51 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_mitigationDecision) = v30;
  LODWORD(v52) = *(v18 + 4);
  v54 = *(v18 + 10);
  v55 = v51 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes;
  *v55 = *v18;
  *(v55 + 20) = v54;
  *(v55 + 16) = v52;
  v56 = MEMORY[0x28223BE20](v50);
  *(&v63 - 80) = v19;
  v57 = v66;
  *(&v63 - 9) = v65;
  *(&v63 - 8) = v57;
  v58 = v71;
  *(&v63 - 7) = v31;
  *(&v63 - 6) = v58;
  v59 = v68;
  *(&v63 - 5) = v63;
  *(&v63 - 4) = v59;
  *(&v63 - 3) = ObjectType;
  *(&v63 - 2) = v43;
  *(&v63 - 1) = v42;
  sub_2231E9548(v56, v60, v61);
  v40 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v62 = v40;

  sub_2231E9C90(v11);
  if (v40)
  {
  }

  (*(v69 + 8))(v31, v72);
  return v40;
}

uint64_t sub_2231E9C90(uint64_t a1)
{
  v2 = type metadata accessor for TTResponseMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TTResponseMessage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB68, &qword_22321F0F8);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v75 - v32;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_2231EB184();
  sub_223200794();
  if (v24)
  {
    v34 = &qword_280FCDFA0[12];
    v36 = 0;
    v37 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v27);
    if (v36)
    {
      v38 = OUTLINED_FUNCTION_5_31(v25 + v34[501]);
      sub_2231EB1D8(v38, v39, v40);
    }

    if (v37)
    {
    }

    type metadata accessor for TTResponseMessage(0);
    swift_deallocPartialClassInstance();
LABEL_9:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v84 = v30;
  sub_2231EB21C();
  OUTLINED_FUNCTION_3_43();
  v35 = v33;
  sub_2232004C4();
  v41 = v86;
  v34 = &qword_280FCDFA0[12];
  v42 = v25 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse;
  *v42 = v85;
  *(v42 + 16) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
  sub_2231EB2C4(&qword_27D05AB80, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  sub_223200554();
  v43 = v84;
  v77 = v25;
  v78 = v35;
  v75 = v27;
  v76 = 0;
  v44 = v85;
  type metadata accessor for SMTTCUState();
  v45 = sub_223200064();
  v46 = 0;
  v48 = v44 + 64;
  v47 = *(v44 + 64);
  v81 = v28;
  v82 = v44;
  v49 = 1 << *(v44 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v47;
  v52 = (v49 + 63) >> 6;
  v53 = &qword_280FCDFA0[12];
  v79 = v52;
  v80 = v44 + 64;
  if ((v50 & v47) == 0)
  {
    while (1)
    {
LABEL_13:
      v54 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v54 >= v52)
      {
        break;
      }

      v51 = *(v48 + 8 * v54);
      ++v46;
      if (v51)
      {
        v46 = v54;
        goto LABEL_17;
      }
    }

    v25 = v77;
    *(v77 + v53[503]) = v45;
    sub_22311D924();
    OUTLINED_FUNCTION_3_43();
    v69 = v78;
    v70 = v76;
    sub_223200554();
    if (v70)
    {
      (*(v43 + 8))(v69, v28);
      v36 = 1;
      v37 = 1;
      v27 = v75;
      goto LABEL_4;
    }

    *(v25 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_mitigationDecision) = v85;
    sub_22316A808();
    OUTLINED_FUNCTION_3_43();
    sub_2232004C4();
    v71 = v75;
    v72 = v86;
    v73 = WORD2(v86);
    v74 = v25 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes;
    *v74 = v85;
    *(v74 + 20) = v73;
    *(v74 + 16) = v72;
    sub_2230F7158(v71, &v85);
    TRPCandidateRequestMessageBase.init(from:)(&v85);
    (*(v43 + 8))(v78, v28);
    __swift_destroy_boxed_opaque_existential_1(v71);
    goto LABEL_9;
  }

LABEL_17:
  while (1)
  {
    v55 = __clz(__rbit64(v51)) | (v46 << 6);
    v56 = (*(v82 + 48) + 16 * v55);
    v58 = *v56;
    v57 = v56[1];
    v83 = *(*(v82 + 56) + 8 * v55);

    swift_isUniquelyReferenced_nonNull_native();
    *&v85 = v45;
    v59 = sub_22314C358(v58, v57);
    if (__OFADD__(v45[2], (v60 & 1) == 0))
    {
      break;
    }

    v61 = v59;
    v62 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB88, &qword_22321F108);
    if (sub_2232003D4())
    {
      v63 = sub_22314C358(v58, v57);
      v43 = v84;
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_33;
      }

      v61 = v63;
      if (v62)
      {
LABEL_24:

        v45 = v85;
        *(*(v85 + 56) + 8 * v61) = v83;
        goto LABEL_25;
      }
    }

    else
    {
      v43 = v84;
      if (v62)
      {
        goto LABEL_24;
      }
    }

    v45 = v85;
    *(v85 + 8 * (v61 >> 6) + 64) |= 1 << v61;
    v65 = (v45[6] + 16 * v61);
    *v65 = v58;
    v65[1] = v57;
    *(v45[7] + 8 * v61) = v83;
    v66 = v45[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_32;
    }

    v45[2] = v68;
LABEL_25:
    v53 = qword_280FCDFA0 + 96;
    v34 = qword_280FCDFA0 + 96;
    v48 = v80;
    v28 = v81;
    v52 = v79;
    v51 &= v51 - 1;
    if (!v51)
    {
      goto LABEL_13;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_2232006E4();
  __break(1u);
}

void sub_2231EA368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB90, &qword_22321F110);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v60 - v31;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2231EB184();
  sub_2232007A4();
  v63 = OUTLINED_FUNCTION_5_31(v23 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse);
  v64 = v33;
  v65 = v34;
  sub_2231E9548(v63, v33, v34);
  sub_2231EB270();
  OUTLINED_FUNCTION_1_37();
  sub_2232005E4();
  if (v24)
  {
    sub_2231EB1D8(v63, v64, v65);
LABEL_3:
    (*(v29 + 8))(v32, v27);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v60 = v26;
  v62 = v29;
  sub_2231EB1D8(v63, v64, v65);
  v61 = v23;
  v35 = *(v23 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuStateDict);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB98, &qword_22321F118);
  v36 = sub_223200424();
  v37 = v36;
  v38 = 0;
  v39 = 1 << *(v35 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v35 + 64);
  v42 = (v39 + 63) >> 6;
  v43 = v36 + 64;
  if (!v41)
  {
LABEL_8:
    v45 = v38;
    while (1)
    {
      v38 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v38 >= v42)
      {
        break;
      }

      v46 = *(v35 + 64 + 8 * v38);
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v41 = (v46 - 1) & v46;
        goto LABEL_13;
      }
    }

    v63 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
    sub_2231EB2C4(&qword_280FCA4E8, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    sub_223200654();

    v56 = v61;
    LOBYTE(v63) = *(v61 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_mitigationDecision);
    sub_22311D978();
    OUTLINED_FUNCTION_1_37();
    sub_223200654();
    v29 = v62;
    v57 = (v56 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes);
    v58 = *(v56 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 16) | (*(v56 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 20) << 32);
    if ((v58 & 0xFF00000000) != 0x200000000)
    {
      v59 = v57[1];
      LODWORD(v63) = *v57;
      v64 = v59;
      LODWORD(v65) = v58;
      BYTE4(v65) = BYTE4(v58) & 1;
      BYTE5(v65) = BYTE5(v58) & 1;
      sub_22316A85C();
      OUTLINED_FUNCTION_1_37();
      sub_223200654();
    }

    sub_2231E5494(v60);
    goto LABEL_3;
  }

  while (1)
  {
    v44 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
LABEL_13:
    v47 = v44 | (v38 << 6);
    v48 = (*(v35 + 48) + 16 * v47);
    v49 = *(*(v35 + 56) + 8 * v47);
    v51 = *v48;
    v50 = v48[1];
    *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v52 = (v37[6] + 16 * v47);
    *v52 = v51;
    v52[1] = v50;
    *(v37[7] + 8 * v47) = v49;
    v53 = v37[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      break;
    }

    v37[2] = v55;

    if (!v41)
    {
      goto LABEL_8;
    }
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_2231EA7CC()
{
  v1 = v0;
  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  sub_223200374();
  v22 = v20;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for TTResponseMessage(0);
  v2 = objc_msgSendSuper2(&v21, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0]();
  v6 = OUTLINED_FUNCTION_5_31(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse);
  sub_2231E9548(v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ABA0, &unk_22321F120);
  v9 = sub_223200104();
  MEMORY[0x223DD5AA0](v9);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0](0xD000000000000012);
  type metadata accessor for SMTTCUState();
  v10 = sub_223200054();
  MEMORY[0x223DD5AA0](v10);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0](v11, v12, v13);
  v14 = sub_223200104();
  MEMORY[0x223DD5AA0](v14);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0](v15, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590B8, &qword_223210A68);
  v18 = sub_223200104();
  MEMORY[0x223DD5AA0](v18);

  return v22;
}

uint64_t TTResponseMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TTResponseMessage.Builder.sessionId.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_30() + 24);

  return sub_2230D1480(v2, v0);
}

uint64_t TTResponseMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TTResponseMessage.Builder.requestId.getter()
{
  type metadata accessor for TTResponseMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TTResponseMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TTResponseMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for TTResponseMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TTResponseMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void TTResponseMessage.Builder.tcuMappedNLResponse.getter()
{
  v2 = OUTLINED_FUNCTION_9_30();
  v3 = OUTLINED_FUNCTION_5_31(v1 + *(v2 + 36));
  *v0 = v3;
  v0[1] = v4;
  v0[2] = v5;

  sub_2231E9548(v3, v4, v5);
}

__n128 TTResponseMessage.Builder.tcuMappedNLResponse.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 36);
  sub_2231EB1D8(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t TTResponseMessage.Builder.tcuStateDict.getter()
{
  type metadata accessor for TTResponseMessage.Builder(0);
}

uint64_t TTResponseMessage.Builder.tcuStateDict.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_32() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TTResponseMessage.Builder.mitigationDecision.getter()
{
  result = OUTLINED_FUNCTION_9_30();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t TTResponseMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTResponseMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t TTResponseMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_9_30() + 48));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t TTResponseMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 48));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

__n128 TTResponseMessage.Builder.selectedUserAttributes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_9_30() + 52));
  v3 = v2[1].n128_u32[0];
  v4 = v2[1].n128_u16[2];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u16[2] = v4;
  v0[1].n128_u32[0] = v3;
  return result;
}

uint64_t TTResponseMessage.Builder.selectedUserAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  result = type metadata accessor for TTResponseMessage.Builder(0);
  v7 = v1 + *(result + 52);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 20) = v5;
  *(v7 + 16) = v4;
  return result;
}

uint64_t sub_2231EB0B8()
{
  v1 = OUTLINED_FUNCTION_5_31(v0 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse);
  sub_2231EB1D8(v1, v2, v3);
}

id TTResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231EB184()
{
  result = qword_280FCE488;
  if (!qword_280FCE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE488);
  }

  return result;
}

void sub_2231EB1D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

unint64_t sub_2231EB21C()
{
  result = qword_27D05AB70;
  if (!qword_27D05AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB70);
  }

  return result;
}

unint64_t sub_2231EB270()
{
  result = qword_280FCA840;
  if (!qword_280FCA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA840);
  }

  return result;
}

uint64_t sub_2231EB2C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05AB78, &qword_22321F100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231EB338()
{
  result = qword_27D05ABA8;
  if (!qword_27D05ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABA8);
  }

  return result;
}

uint64_t sub_2231EB46C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA838, &type metadata for TCUMappedNLResponse);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231EB614(319);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCE460, &type metadata for TTResponseMessage.MitigationDecision);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_2230D525C(319, &unk_280FCA7A8, &type metadata for SelectedUserAttributes);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_2231EB614(uint64_t a1)
{
  if (!qword_280FCA4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05ABB0, &qword_22321F3C0);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA4E0);
    }
  }
}

_BYTE *sub_2231EB678(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TCUMappedNLResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231EB834()
{
  result = qword_27D05ABB8;
  if (!qword_27D05ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABB8);
  }

  return result;
}

unint64_t sub_2231EB88C()
{
  result = qword_27D05ABC0;
  if (!qword_27D05ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABC0);
  }

  return result;
}

unint64_t sub_2231EB8E4()
{
  result = qword_280FCE478;
  if (!qword_280FCE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE478);
  }

  return result;
}

unint64_t sub_2231EB93C()
{
  result = qword_280FCE480;
  if (!qword_280FCE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE480);
  }

  return result;
}

unint64_t sub_2231EB994()
{
  result = qword_280FCA848;
  if (!qword_280FCA848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA848);
  }

  return result;
}

unint64_t sub_2231EB9EC()
{
  result = qword_280FCA850;
  if (!qword_280FCA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA850);
  }

  return result;
}

unint64_t sub_2231EBA40()
{
  result = qword_280FCE468;
  if (!qword_280FCE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE468);
  }

  return result;
}

void *TypingStartedMessage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-1] - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ABC8, &qword_22321F5E8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EBDA0();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TypingStartedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231FFDA4();
    sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
    sub_2232004C4();
    sub_2231EBE14(v5, v12[6] + OBJC_IVAR____TtC16SiriMessageTypes20TypingStartedMessage_typingSessionId);
    sub_2230F7158(a1, v12);
    v7 = SessionMessageBase.init(from:)(v12);
    v9 = OUTLINED_FUNCTION_1_10();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_2231EBDA0()
{
  result = qword_27D05ABD0;
  if (!qword_27D05ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABD0);
  }

  return result;
}

uint64_t sub_2231EBE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2231EBE84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ABD8, &qword_22321F5F0);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EBDA0();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
  sub_2232005E4();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2231EC004(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6553676E69707974 && a2 == 0xEF64496E6F697373)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231EC0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EC004(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231EC0D8(uint64_t a1)
{
  v2 = sub_2231EBDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EC114(uint64_t a1)
{
  v2 = sub_2231EBDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

id TypingStartedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for TypingStartedMessage.Builder(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v6[v4[7]] = 15;
  v8 = &v6[v4[8]];
  *v8 = 0;
  v8[1] = 0;
  __swift_storeEnumTagSinglePayload(&v6[v4[9]], 1, 1, v7);
  a1(v6);
  sub_2230D1480(v6, v1 + OBJC_IVAR____TtC16SiriMessageTypes20TypingStartedMessage_typingSessionId);
  v12 = v6;
  v9 = SessionMessageBase.init(build:)(sub_2231EC378);
  sub_2231EC380(v6);
  return v9;
}

uint64_t sub_2231EC2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingStartedMessage.Builder(0);
  *a1 = *(a2 + v4[5]);
  v5 = (a2 + v4[6]);
  v7 = *v5;
  v6 = v5[1];

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v8 = v4[7];
  v9 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v8, a1 + v9);
}

uint64_t sub_2231EC380(uint64_t a1)
{
  v2 = type metadata accessor for TypingStartedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TypingStartedMessage.Builder.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TypingStartedMessage.Builder(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TypingStartedMessage.Builder.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TypingStartedMessage.Builder(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t TypingStartedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypingStartedMessage.Builder(0) + 24));

  return v1;
}

uint64_t TypingStartedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TypingStartedMessage.Builder(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TypingStartedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TypingStartedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t TypingStartedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_50() + 28);

  return sub_2230D4E04(v0, v2);
}

id TypingStartedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TypingStartedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2231EC6CC(uint64_t a1)
{
  sub_2230F6D30(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for TypingStartedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231EC860()
{
  result = qword_27D05ABF0;
  if (!qword_27D05ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABF0);
  }

  return result;
}

unint64_t sub_2231EC8B8()
{
  result = qword_27D05ABF8;
  if (!qword_27D05ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABF8);
  }

  return result;
}

unint64_t sub_2231EC910()
{
  result = qword_27D05AC00;
  if (!qword_27D05AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC00);
  }

  return result;
}

uint64_t sub_2231EC9CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000223227570 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231ECA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EC9CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231ECA98(uint64_t a1)
{
  v2 = sub_2231ED7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231ECAD4(uint64_t a1)
{
  v2 = sub_2231ED7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

id UnsupportedLanguageDetectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return UnsupportedLanguageDetectedMessage.init(build:)(v1);
}

id UnsupportedLanguageDetectedMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v5[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v5[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v7[v5[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1(v7);
  v12 = *(v11 + 1);
  if (v12)
  {
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected);
    *v13 = *v11;
    v13[1] = v12;
    MEMORY[0x28223BE20](v12);
    *(&v24 - 2) = v7;

    v14 = RequestMessageBase.init(build:)(sub_2231ED7B8);
    sub_2231ECE44(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;
      v20 = sub_2230F7898(ObjectType);
      v22 = sub_2231A5D38(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing required fields", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DD6780](v19, -1, -1);
      MEMORY[0x223DD6780](v18, -1, -1);
    }

    sub_2231ECE44(v7);
    type metadata accessor for UnsupportedLanguageDetectedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

uint64_t sub_2231ECE44(uint64_t a1)
{
  v2 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231ECEC0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void *UnsupportedLanguageDetectedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC08, &qword_22321F770);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231ED7C0();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for UnsupportedLanguageDetectedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231ED1B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC18, &unk_22321F778);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231ED7C0();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2231ED370()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for UnsupportedLanguageDetectedMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232274D0);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected], *&v0[OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_33() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.requestId.getter()
{
  type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.languageDetected.getter()
{
  type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.languageDetected.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id UnsupportedLanguageDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnsupportedLanguageDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231ED7C0()
{
  result = qword_27D05AC10;
  if (!qword_27D05AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC10);
  }

  return result;
}

_BYTE *sub_2231ED8C4(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231ED974()
{
  result = qword_27D05AC30;
  if (!qword_27D05AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC30);
  }

  return result;
}

unint64_t sub_2231ED9CC()
{
  result = qword_27D05AC38;
  if (!qword_27D05AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC38);
  }

  return result;
}

unint64_t sub_2231EDA24()
{
  result = qword_27D05AC40;
  if (!qword_27D05AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC40);
  }

  return result;
}

uint64_t static UserID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2232006B4();
  }
}

Swift::Bool __swiftcall UserID.compare(toUserId:)(SiriMessageTypes::UserID toUserId)
{
  countAndFlagsBits = toUserId.sharedUserId._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC48, &qword_22321F930);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  v6 = *countAndFlagsBits;
  v7 = countAndFlagsBits[1];
  v8 = v1[1];
  v12[2] = *v1;
  v12[3] = v8;
  v12[0] = v6;
  v12[1] = v7;
  v9 = sub_2231FFDB4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  sub_2230D1D30();

  v10 = sub_2232002F4();
  sub_2231EDBDC(v5);

  return v10 == 0;
}

uint64_t sub_2231EDBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC48, &qword_22321F930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231EDC64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7355646572616873 && a2 == 0xEC00000064497265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231EDCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EDC64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231EDD0C(uint64_t a1)
{
  v2 = sub_2230D4FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EDD48(uint64_t a1)
{
  v2 = sub_2230D4FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserID.hashValue.getter()
{
  sub_223200744();
  sub_223200124();
  return sub_223200764();
}

uint64_t UserID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC58, &qword_22321F940);
  OUTLINED_FUNCTION_0_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D4FD8();
  sub_223200794();
  if (!v2)
  {
    v11 = sub_2232004F4();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2231EDF64()
{
  result = qword_280FCA748;
  if (!qword_280FCA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA748);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserID.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231EE068()
{
  result = qword_27D05AC60;
  if (!qword_27D05AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC60);
  }

  return result;
}

unint64_t sub_2231EE0C0()
{
  result = qword_280FCA760;
  if (!qword_280FCA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA760);
  }

  return result;
}

unint64_t sub_2231EE118()
{
  result = qword_280FCA768;
  if (!qword_280FCA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA768);
  }

  return result;
}

id sub_2231EE1C8(uint64_t a1, unsigned __int8 *a2, uint64_t (*a3)(void), void (*a4)(unsigned __int8 *))
{
  v43 = a4;
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_23(v8);
  v9 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v45 = v13 - v12;
  v14 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v16);
  v17 = v15[8];
  v47 = v9;
  __swift_storeEnumTagSinglePayload(&v4[v17], 1, 1, v9);
  v18 = &v4[v15[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v4[v15[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v4[v15[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *v4 = *a2;
  v21 = *(a2 + 2);
  v42 = *(a2 + 1);
  *(v4 + 1) = v42;
  *(v4 + 2) = v21;
  v22 = a3(0);
  v23 = v22[6];

  sub_2230DAEC8(&a2[v23], &v4[v17]);
  v24 = &a2[v22[7]];
  v25 = *(v24 + 1);
  v41 = *v24;
  *v18 = v41;
  *(v18 + 1) = v25;
  v26 = &a2[v22[8]];
  v27 = *v26;
  v28 = *(v26 + 1);
  *v19 = *v26;
  *(v19 + 1) = v28;
  v29 = &a2[v22[9]];
  v31 = *v29;
  v30 = *(v29 + 1);

  *v20 = v31;
  *(v20 + 1) = v30;
  v32 = *v4;
  if (v32 == 15 || !v21)
  {
    sub_2231EE94C(v4);
  }

  else
  {
    sub_2230D1480(&v4[v17], v46);
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
    {
      sub_2231EE94C(v4);
      sub_2230D69D4(v46);
    }

    else
    {
      v35 = v44;
      v36 = (*(v44 + 32))(v45, v46, v47);
      if (v25 && v28)
      {
        v37 = *(v20 + 1);
        if (v37)
        {
          v46 = &v41;
          v38 = (v48 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
          *v38 = *v20;
          v38[1] = v37;
          MEMORY[0x28223BE20](v36);
          *(&v41 - 64) = v32;
          v39 = v41;
          *(&v41 - 7) = v42;
          *(&v41 - 6) = v21;
          v40 = v45;
          *(&v41 - 5) = v45;
          *(&v41 - 4) = v39;
          *(&v41 - 3) = v25;
          *(&v41 - 2) = v27;
          *(&v41 - 1) = v28;

          v33 = ResultCandidateRequestMessageBase.init(build:)(v43);

          sub_2231EE94C(v4);
          (*(v35 + 8))(v40, v47);
          return v33;
        }

        sub_2231EE94C(v4);
        (*(v44 + 8))(v45, v47);
      }

      else
      {
        sub_2231EE94C(v4);
        (*(v44 + 8))(v45, v47);
      }
    }
  }

  type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  OUTLINED_FUNCTION_7_36();
  swift_deallocPartialClassInstance();
  return 0;
}

id UserIdAwareResultCandidateMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v5 = v34 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v37 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v10 = OUTLINED_FUNCTION_10_23(v9);
  v11 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(v10);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v13);
  v14 = v12[8];
  __swift_storeEnumTagSinglePayload(&v1[v14], 1, 1, v6);
  v15 = &v1[v12[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[v12[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v1[v12[11]];
  *v17 = 0;
  *(v17 + 1) = 0;
  a1(v1);
  v18 = *v1;
  if (v18 == 15 || (v19 = *(v1 + 2)) == 0)
  {
    sub_2231EE94C(v1);
  }

  else
  {
    v20 = *(v1 + 1);
    sub_2230D1480(&v1[v14], v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_2231EE94C(v1);
      sub_2230D69D4(v5);
    }

    else
    {
      v35 = v20;
      v24 = v36;
      v23 = v37;
      v25 = (*(v37 + 32))(v36, v5, v6);
      v26 = *(v15 + 1);
      if (v26)
      {
        if (*(v16 + 1))
        {
          v27 = *(v17 + 1);
          if (v27)
          {
            v34[1] = v34;
            v28 = v24;
            v29 = (v38 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
            *v29 = *v17;
            v29[1] = v27;
            MEMORY[0x28223BE20](v25);
            LOBYTE(v34[-8]) = v18;
            v34[-7] = v35;
            v34[-6] = v19;
            v34[-5] = v24;
            v34[-4] = v30;
            v34[-3] = v26;
            v34[-2] = v31;
            v34[-1] = v32;

            v33 = v23;
            v21 = ResultCandidateRequestMessageBase.init(build:)(sub_2231EEDE8);

            sub_2231EE94C(v1);
            (*(v33 + 8))(v28, v6);
            return v21;
          }
        }
      }

      sub_2231EE94C(v1);
      (*(v23 + 8))(v24, v6);
    }
  }

  type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  OUTLINED_FUNCTION_7_36();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231EE94C(uint64_t a1)
{
  v2 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *UserIdAwareResultCandidateMessageBase.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC68, &qword_22321FB78);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EEDEC();
  sub_223200794();
  if (v2)
  {
    v8 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231105AC();
    sub_223200554();
    v6 = v11[1];
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
    *v7 = v11[0];
    v7[1] = v6;
    sub_2230F7158(a1, v11);
    v8 = ResultCandidateRequestMessageBase.init(from:)(v11);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

uint64_t sub_2231EEBE4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC70, &qword_22321FB80);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EEDEC();
  sub_2232007A4();
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId + 8);
  v13[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
  v13[1] = v11;
  sub_2230D37F0();

  sub_223200654();

  if (!v2)
  {
    sub_223190B78(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t UserIdAwareResultCandidateMessageBase.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
  a1[1] = v2;
}

id UserIdAwareResultCandidateMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return UserIdAwareResultCandidateMessageBase.init(build:)(v1);
}

unint64_t sub_2231EEDEC()
{
  result = qword_280FCC150;
  if (!qword_280FCC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC150);
  }

  return result;
}

uint64_t sub_2231EEEEC()
{
  v1 = v0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0x3A644963723C202CLL, 0xE900000000000020);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId + 8]);
  MEMORY[0x223DD5AA0](0x726573753C202C3ELL, 0xEC000000203A6449);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

BOOL sub_2231EF02C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F4E88(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231EF060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231EF00C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231EF08C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F4E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231EF0B8(uint64_t a1)
{
  v2 = sub_2231EEDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EF0F4(uint64_t a1)
{
  v2 = sub_2231EEDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 28));

  return v1;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 32));

  return v1;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

id UserIdAwareResultCandidateMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for UserIdAwareResultCandidateMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231EF698()
{
  result = qword_27D05AC78;
  if (!qword_27D05AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC78);
  }

  return result;
}

unint64_t sub_2231EF6F0()
{
  result = qword_280FCC140;
  if (!qword_280FCC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC140);
  }

  return result;
}

unint64_t sub_2231EF748()
{
  result = qword_280FCC148;
  if (!qword_280FCC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC148);
  }

  return result;
}

void *UserIdentificationMessage.voiceIdScoreCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard);
  v2 = v1;
  return v1;
}

uint64_t sub_2231EF83C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000223227770 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6353644972657375 && a2 == 0xEC0000007365726FLL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000223221290 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x80000002232277A0 == a2;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64657463656C6573 && a2 == 0xEF73644972657355;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000223220CA0 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x5364496563696F76 && a2 == 0xED00007365726F63)
            {

              return 6;
            }

            else
            {
              v12 = sub_2232006B4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2231EFA88(char a1)
{
  result = 0x6353644972657375;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 9;
      goto LABEL_7;
    case 4:
      result = 0x64657463656C6573;
      break;
    case 5:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0x5364496563696F76;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2231EFB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EF83C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231EFBBC(uint64_t a1)
{
  v2 = sub_2231F1C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EFBF8(uint64_t a1)
{
  v2 = sub_2231F1C30();

  return MEMORY[0x2821FE720](a1, v2);
}

id UserIdentificationMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v64 = a2;
  v65 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56[-v3];
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v60 = v6;
  MEMORY[0x28223BE20](v7);
  v61 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UserIdentificationMessage.Builder(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v12 = 15;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v13 = v10[8];
  v62 = v5;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v5);
  v14 = &v12[v10[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v12[v10[10]] = 2;
  v15 = &v12[v10[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = v10[12];
  *&v12[v16] = 0;
  v58 = v10[13];
  *&v12[v58] = 0;
  v17 = v10[14];
  v12[v17] = 2;
  v18 = v10[15];
  *&v12[v18] = 0;
  v19 = &v12[v10[16]];
  *v19 = 0;
  v59 = v19;
  v19[8] = 1;
  v20 = v10[17];
  *&v12[v20] = 0;
  v65(v12);
  v21 = *v12;
  if (v21 == 15 || !*(v12 + 2))
  {
    goto LABEL_11;
  }

  v65 = *(v12 + 2);
  v64 = *(v12 + 1);
  sub_2230D1480(&v12[v13], v4);
  v22 = v62;
  if (__swift_getEnumTagSinglePayload(v4, 1, v62) != 1)
  {
    v57 = v21;
    v23 = v60;
    (*(v60 + 32))(v61, v4, v22);
    if (!*(v14 + 1) || (v15[8] & 1) != 0 || (v24 = *&v12[v16]) == 0)
    {
      (*(v23 + 8))(v61, v22);
      goto LABEL_11;
    }

    ObjectType = *(v14 + 1);
    v25 = *v14;
    v26 = v66;
    *(v66 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userClassification) = *v15;
    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores) = v24;
    v27 = v58;
    v28 = *&v12[v58];
    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard) = v28;
    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold) = v12[v17] & 1;
    v29 = *&v12[v18];
    if (v29)
    {
      *(v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = v29;
      v30 = v28;

      v31 = v61;
LABEL_22:
      v48 = v59[8];
      v49 = v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification;
      *v49 = *v59;
      *(v49 + 8) = v48;
      v50 = *&v12[v20];

      if (v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = sub_223200064();
      }

      *(v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores) = v51;
      MEMORY[0x28223BE20](v51);
      v56[-48] = v57;
      v52 = v65;
      *&v56[-40] = v64;
      *&v56[-32] = v52;
      *&v56[-24] = v31;
      *&v56[-16] = v25;
      *&v56[-8] = ObjectType;

      v53 = RequestMessageBase.init(build:)(sub_2230DDE2C);
      v40 = v53;
      if (v53)
      {
        v54 = *(v60 + 8);
        v55 = v53;
        v54(v31, v22);
        sub_2231F02EC(v12);
      }

      else
      {
        (*(v60 + 8))(v31, v22);
        sub_2231F02EC(v12);
      }

      return v40;
    }

    if (v28)
    {
      v42 = v28;

      v43 = sub_2231F1C04(&v12[v27]);
      v31 = v61;
      if (v44)
      {
        v45 = v43;
        v46 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C0, &qword_223214508);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_223205AB0;
        *(inited + 32) = v45;
        *(inited + 40) = v46;
        *(v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = sub_2231F1A74(inited);
        goto LABEL_22;
      }
    }

    else
    {

      v31 = v61;
    }

    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = MEMORY[0x277D84FA0];
    goto LABEL_22;
  }

  sub_2230D69D4(v4);
LABEL_11:
  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v32 = sub_223200014();
  __swift_project_value_buffer(v32, qword_280FCE830);
  v33 = sub_223200004();
  v34 = sub_223200254();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v67 = v36;
    *v35 = 136446210;
    v37 = sub_2230F7898(ObjectType);
    v39 = sub_2231A5D38(v37, v38, &v67);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x223DD6780](v36, -1, -1);
    MEMORY[0x223DD6780](v35, -1, -1);
  }

  sub_2231F02EC(v12);
  type metadata accessor for UserIdentificationMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231F02EC(uint64_t a1)
{
  v2 = type metadata accessor for UserIdentificationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *UserIdentificationMessage.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC80, &unk_22321FD60);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F1C30();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v2)
  {
    v12 = 0;
    OUTLINED_FUNCTION_11_16();
    goto LABEL_4;
  }

  LOBYTE(v29) = 0;
  OUTLINED_FUNCTION_0();
  v10 = sub_2232004B4();
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userClassification) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
  v31 = 1;
  sub_2231EB2C4(&qword_27D05AB80, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5();
  sub_223200554();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores) = v29;
  v31 = 2;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_10_5();
  sub_2232004C4();
  v17 = v30;
  if (v30 >> 60 == 15)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v28 = v29;
  v26 = sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
  sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
  v27 = v17;
  v18 = sub_223200264();
  if (!v18)
  {
    v9 = 0x8000000223223760;
    sub_2230F9E38();
    swift_allocError();
    *v23 = 0xD000000000000033;
    *(v23 + 8) = 0x8000000223223760;
    *(v23 + 16) = 0;
    swift_willThrow();
    sub_22310A610(v28, v27);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    OUTLINED_FUNCTION_11_16();
    v12 = 1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v5)
    {
      return v9;
    }

    if (v12)
    {

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else if (!v8)
    {
LABEL_7:
      if (!v9)
      {
LABEL_9:
        type metadata accessor for UserIdentificationMessage(0);
        swift_deallocPartialClassInstance();
        return v9;
      }

LABEL_8:

      goto LABEL_9;
    }

    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_22310A610(v28, v27);
LABEL_19:
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard) = v18;
  LOBYTE(v29) = 3;
  OUTLINED_FUNCTION_0();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold) = sub_223200504() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
  v31 = 4;
  sub_2231F1C84(&qword_27D05A0F0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_10_5();
  sub_223200554();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = v29;
  LOBYTE(v29) = 5;
  OUTLINED_FUNCTION_0();
  v19 = sub_2232004B4();
  v21 = v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  *v21 = v22;
  *(v21 + 8) = v20 & 1;
  v31 = 6;
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5();
  sub_223200554();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores) = v29;
  sub_2230F7158(a1, &v29);
  v9 = RequestMessageBase.init(from:)(&v29);
  v24 = OUTLINED_FUNCTION_2();
  v25(v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_2231F0958(void *a1)
{
  v3 = v1;
  v32 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC90, &qword_22321FD78);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F1C30();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  LOBYTE(v30) = 0;
  OUTLINED_FUNCTION_10();
  sub_223200634();
  if (!v2)
  {
    v30 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores);
    v29 = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
    v12 = sub_2231EB2C4(&qword_280FCA4E8, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    v28 = v11;
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard);
    if (v14)
    {
      v25 = v12;
      v15 = objc_opt_self();
      v30 = 0;
      v16 = v14;
      v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v30];
      v18 = v30;
      if (!v17)
      {
        v22 = v18;
        sub_2231FFD04();

        swift_willThrow();
        return (*(v7 + 8))(v10, v5);
      }

      v27 = v16;
      v19 = sub_2231FFD24();
      v21 = v20;

      v26 = v19;
      v30 = v19;
      v31 = v21;
      v29 = 2;
      sub_2230D7754();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10();
      sub_223200654();

      sub_2230D94DC(v26, v21);
    }

    LOBYTE(v30) = 3;
    OUTLINED_FUNCTION_10();
    sub_223200604();
    v30 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds);
    v29 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
    sub_2231F1C84(&qword_27D05A118, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    v23 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification + 8);
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification);
    }

    v30 = v24;
    LOBYTE(v31) = v23;
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A220, &qword_22321FD80);
    sub_2231B2C04();
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    v30 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores);
    v29 = 6;
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2231F0E14()
{
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_223200374();
  v24.receiver = v0;
  v24.super_class = type metadata accessor for UserIdentificationMessage(0);
  v1 = objc_msgSendSuper2(&v24, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v25 = v2;
  v26 = v4;
  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v5 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v5);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0](0xD000000000000012);
  v6 = sub_223200054();
  MEMORY[0x223DD5AA0](v6);

  v7 = 0xE300000000000000;
  OUTLINED_FUNCTION_14_14();
  v9 = v25;
  v8 = v26;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_223200374();
  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  if (v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold])
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold])
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v10, v11);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v12 = sub_223200234();
  MEMORY[0x223DD5AA0](v12);

  OUTLINED_FUNCTION_14_14();
  v13 = v25;
  v14 = v26;
  v25 = v9;
  v26 = v8;

  MEMORY[0x223DD5AA0](v13, v14);

  v16 = v25;
  v15 = v26;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_223200374();
  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  if (v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification + 8])
  {
    v17 = 7104878;
  }

  else
  {
    sub_2231F1CF0();
    v17 = sub_223200304();
    v7 = v18;
  }

  MEMORY[0x223DD5AA0](v17, v7);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v19 = sub_223200054();
  MEMORY[0x223DD5AA0](v19);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v20 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard];
  if (v20)
  {
    [v20 hasSufficientAudioProcessed];
  }

  type metadata accessor for AFBoolean();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](10558, 0xE200000000000000);
  v21 = v25;
  v22 = v26;
  v25 = v16;
  v26 = v15;

  MEMORY[0x223DD5AA0](v21, v22);

  return v25;
}

uint64_t UserIdentificationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UserIdentificationMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UserIdentificationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t UserIdentificationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_31() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t UserIdentificationMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 28));

  return v1;
}

uint64_t UserIdentificationMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UserIdentificationMessage.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for UserIdentificationMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t UserIdentificationMessage.Builder.userIdScores.getter()
{
  type metadata accessor for UserIdentificationMessage.Builder(0);
}

uint64_t UserIdentificationMessage.Builder.userIdScores.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 40);

  *(v1 + v2) = v0;
  return result;
}

void *UserIdentificationMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void UserIdentificationMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 44);

  *(v1 + v2) = v0;
}

uint64_t UserIdentificationMessage.Builder.userMeetsRecencyThreshold.setter(char a1)
{
  result = type metadata accessor for UserIdentificationMessage.Builder(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t UserIdentificationMessage.Builder.selectedUserIds.getter()
{
  type metadata accessor for UserIdentificationMessage.Builder(0);
}

uint64_t UserIdentificationMessage.Builder.selectedUserIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t UserIdentificationMessage.Builder.voiceIdScores.getter()
{
  type metadata accessor for UserIdentificationMessage.Builder(0);
}

uint64_t UserIdentificationMessage.Builder.voiceIdScores.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 60);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_2231F1970()
{
}

id UserIdentificationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIdentificationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231F1A74(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  result = sub_223200354();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_223200744();

    sub_223200124();
    result = sub_223200764();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_2232006B4() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2231F1C04(id *a1)
{
  v1 = *a1;

  return sub_2231F21F8(v1);
}

unint64_t sub_2231F1C30()
{
  result = qword_27D05AC88;
  if (!qword_27D05AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC88);
  }

  return result;
}

uint64_t sub_2231F1C84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A0E8, &qword_22321FD70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231F1CF0()
{
  result = qword_27D05AC98;
  if (!qword_27D05AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC98);
  }

  return result;
}

uint64_t sub_2231F1E18(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230FBAF8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
      v2 = v8;
      if (v9 > 0x3F)
      {
        return v2;
      }

      sub_2230FBAF8(319, &qword_280FCA368, type metadata accessor for AFUserIdentityClassfication);
      if (v11 > 0x3F)
      {
        return v10;
      }

      sub_223110900(319, &qword_27D05ACB0, &qword_27D05AB78, &qword_22321F100);
      if (v13 > 0x3F)
      {
        return v12;
      }

      sub_223110954(319);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_223110900(319, &qword_27D05A158, &qword_27D05A0E8, &qword_22321FD70);
      v2 = v15;
      if (v16 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for UserIdentificationMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2231F20F4()
{
  result = qword_27D05ACB8;
  if (!qword_27D05ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACB8);
  }

  return result;
}

unint64_t sub_2231F214C()
{
  result = qword_27D05ACC0;
  if (!qword_27D05ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACC0);
  }

  return result;
}

unint64_t sub_2231F21A4()
{
  result = qword_27D05ACC8;
  if (!qword_27D05ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACC8);
  }

  return result;
}

uint64_t sub_2231F21F8(void *a1)
{
  v2 = [a1 userClassified];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2232000C4();

  return v3;
}

uint64_t UserSessionAccessLevel.description.getter()
{
  if (*v0)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_2231F22C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231F2390(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_2231F23C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F22C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F23E8(uint64_t a1)
{
  v2 = sub_2231F27D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F2424(uint64_t a1)
{
  v2 = sub_2231F27D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F2460(uint64_t a1)
{
  v2 = sub_2231F2824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F249C(uint64_t a1)
{
  v2 = sub_2231F2824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F24D8(uint64_t a1)
{
  v2 = sub_2231F2878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F2514(uint64_t a1)
{
  v2 = sub_2231F2878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSessionAccessLevel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ACD0, &qword_22321FF80);
  OUTLINED_FUNCTION_9();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ACD8, &qword_22321FF88);
  OUTLINED_FUNCTION_9();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ACE0, &qword_22321FF90);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F27D0();
  sub_2232007A4();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_2231F2824();
    v20 = v24;
    sub_2232005B4();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_2231F2878();
    sub_2232005B4();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_2231F27D0()
{
  result = qword_27D05ACE8;
  if (!qword_27D05ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACE8);
  }

  return result;
}

unint64_t sub_2231F2824()
{
  result = qword_27D05ACF0;
  if (!qword_27D05ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACF0);
  }

  return result;
}

unint64_t sub_2231F2878()
{
  result = qword_27D05ACF8;
  if (!qword_27D05ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACF8);
  }

  return result;
}

uint64_t UserSessionAccessLevel.hashValue.getter()
{
  v1 = *v0;
  sub_223200744();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void UserSessionAccessLevel.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD00, &qword_22321FF98);
  OUTLINED_FUNCTION_9();
  v41 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD08, &qword_22321FFA0);
  OUTLINED_FUNCTION_9();
  v40 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD10, &unk_22321FFA8);
  OUTLINED_FUNCTION_9();
  v43 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F27D0();
  v17 = v45;
  sub_223200794();
  if (v17)
  {
    goto LABEL_10;
  }

  v38 = v7;
  v39 = v11;
  v45 = a1;
  v18 = v44;
  v19 = sub_223200594();
  sub_2230E0B80(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = v20;
LABEL_9:
    v33 = sub_2232003A4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v35 = &type metadata for UserSessionAccessLevel;
    sub_223200484();
    sub_223200394();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v16, v12);
    a1 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v37[1] = 0;
  if (v22 >= (v23 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v21 + v22);
    v25 = sub_2230E0B40(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 != v29 >> 1)
    {
      v44 = v25;
      goto LABEL_9;
    }

    v46 = v24;
    if (v24)
    {
      v48 = 1;
      sub_2231F2824();
      v30 = v6;
      OUTLINED_FUNCTION_3(&type metadata for UserSessionAccessLevel.HighCodingKeys, &v48);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v41 + 8))(v30, v18);
    }

    else
    {
      v47 = 0;
      sub_2231F2878();
      v36 = v39;
      OUTLINED_FUNCTION_3(&type metadata for UserSessionAccessLevel.LowCodingKeys, &v47);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v36, v38);
    }

    (*(v32 + 8))(v16, v27);
    *v31 = v46;
    __swift_destroy_boxed_opaque_existential_1(v45);
  }
}

unint64_t sub_2231F2DF4()
{
  result = qword_27D05AD18;
  if (!qword_27D05AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD18);
  }

  return result;
}

_BYTE *sub_2231F2E58(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231F2F58()
{
  result = qword_27D05AD20;
  if (!qword_27D05AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD20);
  }

  return result;
}

unint64_t sub_2231F2FB0()
{
  result = qword_27D05AD28;
  if (!qword_27D05AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD28);
  }

  return result;
}

unint64_t sub_2231F3008()
{
  result = qword_27D05AD30;
  if (!qword_27D05AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD30);
  }

  return result;
}

unint64_t sub_2231F3060()
{
  result = qword_27D05AD38;
  if (!qword_27D05AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD38);
  }

  return result;
}

unint64_t sub_2231F30B8()
{
  result = qword_27D05AD40;
  if (!qword_27D05AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD40);
  }

  return result;
}

unint64_t sub_2231F3110()
{
  result = qword_27D05AD48;
  if (!qword_27D05AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD48);
  }

  return result;
}

unint64_t sub_2231F3168()
{
  result = qword_27D05AD50;
  if (!qword_27D05AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD50);
  }

  return result;
}

unint64_t UserSessionState.activePersonaId.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_12_18();
      sub_2230D9D28(v3, v4, v5, v6);
      OUTLINED_FUNCTION_4_0();
      return 0xD000000000000024;
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    sub_2230D954C(v7, v8, v9, v10);
    OUTLINED_FUNCTION_12_18();
    sub_2230D9D28(v11, v12, v13, v14);
    OUTLINED_FUNCTION_4_0();
    return 0;
  }

  return v1;
}

void UserSessionState.init(withPersonaId:siriSharedUserId:accessLevel:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2;
  v10 = a3[1];
  if (a2)
  {
    v5 = a1;
    v11 = a1 == 0xD000000000000024 && 0x80000002232216F0 == a2;
    if (v11 || (v6 = *a3, v7 = *a4, (sub_2232006B4() & 1) != 0))
    {

      OUTLINED_FUNCTION_25_6();
      v8 = 1;
    }
  }

  else
  {

    OUTLINED_FUNCTION_25_6();
  }

  *a5 = v5;
  *(a5 + 8) = v8;
  *(a5 + 16) = v6;
  *(a5 + 24) = v10;
  *(a5 + 32) = v7;
}

BOOL UserSessionState.isGuestSessionActive.getter()
{
  OUTLINED_FUNCTION_13_16();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_5_33();
    sub_2230D954C(v1, v2, v3, v4);
  }

  OUTLINED_FUNCTION_5_33();
  sub_2230D9D28(v5, v6, v7, v8);
  OUTLINED_FUNCTION_4_0();
  return v0 == 1;
}

uint64_t static UserSessionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v2)
  {
    if (!v7)
    {
      OUTLINED_FUNCTION_7_38();
      sub_2230D9D28(v15, v16, v17, v18);
      sub_2230D9D28(v6, 0, v9, v8);
      return 1;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v7 < 2)
    {
      goto LABEL_8;
    }

    v36 = *a1 == v6 && v2 == v7;
    if (!v36 && (sub_2232006B4() & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v3)
    {
      if (v8)
      {
        if (v4 != v9 || v3 != v8)
        {
          v98 = sub_2232006B4();
          v38 = OUTLINED_FUNCTION_1_38();
          sub_2230D954C(v38, v39, v40, v41);
          v42 = OUTLINED_FUNCTION_0_16();
          sub_2230D954C(v42, v43, v44, v45);
          OUTLINED_FUNCTION_17_13();
          swift_bridgeObjectRetain_n();

          v46 = OUTLINED_FUNCTION_0_16();
          sub_2230D9D28(v46, v47, v48, v49);
          v50 = OUTLINED_FUNCTION_1_38();
          sub_2230D9D28(v50, v51, v52, v53);
          OUTLINED_FUNCTION_17_13();
          swift_bridgeObjectRelease_n();

          v7 = 0;
          if ((v98 & 1) == 0)
          {
            return v7;
          }

          return ((v10 ^ v5) & 1) == 0;
        }

        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_7_38();
        sub_2230D954C(v82, v83, v84, v85);
        v86 = OUTLINED_FUNCTION_0_16();
        sub_2230D954C(v86, v87, v88, v89);
        OUTLINED_FUNCTION_17_13();
        swift_bridgeObjectRetain_n();

        v90 = OUTLINED_FUNCTION_0_16();
        sub_2230D9D28(v90, v91, v92, v93);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_7_38();
        sub_2230D9D28(v94, v95, v96, v97);
        OUTLINED_FUNCTION_17_13();
        swift_bridgeObjectRelease_n();
LABEL_29:

        return ((v10 ^ v5) & 1) == 0;
      }

      v70 = OUTLINED_FUNCTION_16_0();
      sub_2230D954C(v70, v71, v9, 0);
      v72 = OUTLINED_FUNCTION_0_16();
      sub_2230D954C(v72, v73, v74, v75);
      OUTLINED_FUNCTION_17_13();
      swift_bridgeObjectRetain_n();
      v76 = OUTLINED_FUNCTION_0_16();
      sub_2230D9D28(v76, v77, v78, v79);
      v80 = OUTLINED_FUNCTION_16_0();
      sub_2230D9D28(v80, v81, v9, 0);
    }

    else
    {
      v54 = OUTLINED_FUNCTION_1_38();
      sub_2230D954C(v54, v55, v56, v57);
      v58 = OUTLINED_FUNCTION_16_16();
      sub_2230D954C(v58, v59, v60, v61);

      v62 = OUTLINED_FUNCTION_16_16();
      sub_2230D9D28(v62, v63, v64, v65);
      v66 = OUTLINED_FUNCTION_1_38();
      sub_2230D9D28(v66, v67, v68, v69);
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (v7 != 1)
  {
LABEL_8:
    v19 = OUTLINED_FUNCTION_1_38();
    sub_2230D954C(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_0_16();
    sub_2230D954C(v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_0_16();
    sub_2230D9D28(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_1_38();
    sub_2230D9D28(v31, v32, v33, v34);
    return 0;
  }

  OUTLINED_FUNCTION_7_38();
  sub_2230D9D28(v11, v12, v13, v14);
  sub_2230D9D28(v6, 1uLL, v9, v8);
  return v7;
}

BOOL UserSessionState.isSessionActive.getter()
{
  OUTLINED_FUNCTION_13_16();
  if (v0)
  {
    OUTLINED_FUNCTION_5_33();
    sub_2230D954C(v1, v2, v3, v4);
  }

  OUTLINED_FUNCTION_5_33();
  sub_2230D9D28(v5, v6, v7, v8);
  OUTLINED_FUNCTION_20_13();
  return v0 != 0;
}

BOOL UserSessionState.isAmbient.getter()
{
  OUTLINED_FUNCTION_13_16();
  if (v0)
  {
    OUTLINED_FUNCTION_5_33();
    sub_2230D954C(v1, v2, v3, v4);
  }

  OUTLINED_FUNCTION_5_33();
  sub_2230D9D28(v5, v6, v7, v8);
  OUTLINED_FUNCTION_20_13();
  return v0 == 0;
}

double sub_2231F3758@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v4;
  v7 = v3;
  UserSessionState.activeUserSharedUserId.getter(v6);
  result = *v6;
  *a2 = v6[0];
  return result;
}

double sub_2231F37A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  *&result = UserSessionState.activeUserSharedUserId.setter(v4).n128_u64[0];
  return result;
}

__n128 UserSessionState.activeUserSharedUserId.setter(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *(v1 + 8);
  if (v3 >= 2)
  {
    if (*(v1 + 24))
    {

      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_280FCA778);
      }

      v5 = sub_223200014();
      __swift_project_value_buffer(v5, qword_280FCE830);
      oslog = sub_223200004();
      v6 = sub_223200254();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_2230CE000, oslog, v6, "#user-session: cannot set a new siri sharedUserId.", v7, 2u);
        OUTLINED_FUNCTION_14();
      }
    }

    else
    {
      v8 = *a1;
      v9 = *v1;
      v10 = *(v1 + 32);
      v11 = *(v1 + 16);

      sub_2230D9D28(v9, v3, v11, 0);
      result.n128_u64[0] = v9;
      result.n128_u64[1] = v3;
      *&v12 = v8;
      *(&v12 + 1) = v2;
      *v1 = result;
      *(v1 + 16) = v12;
      *(v1 + 32) = v10 & 1;
    }
  }

  else
  {
  }

  return result;
}

double (*UserSessionState.activeUserSharedUserId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (v4)
  {
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_10_24(*v1, 1uLL);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_18_16("00000000-0000-0000-0000-000000000000");
    }

    else
    {

      OUTLINED_FUNCTION_10_24(v3, v4);
      OUTLINED_FUNCTION_4_0();
      *a1 = v5;
      a1[1] = v6;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_9_32();
    sub_2230D9D28(v7, v8, v9, v6);
    OUTLINED_FUNCTION_4_0();
    *a1 = 0;
    a1[1] = 0;
  }

  return sub_2231F3A64;
}

double sub_2231F3A64(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v4 = *a1;
    v5 = v2;

    UserSessionState.activeUserSharedUserId.setter(&v4);
  }

  else
  {
    v4 = *a1;
    v5 = v2;
    *&result = UserSessionState.activeUserSharedUserId.setter(&v4).n128_u64[0];
  }

  return result;
}

void UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a2;
  v4 = *v2;
  v5 = v2[1];
  if (v5)
  {
    v6 = *(a1 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_userIdToHomeMember);
    if (v5 == 1)
    {
      OUTLINED_FUNCTION_14_15();
      sub_2230D9D28(v7, v8, v9, v10);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_23_6();
      v13 = v12 & v11;
      v15 = (v14 + 63) >> 6;
      v61 = 0x80000002232216F0;

      v16 = 0;
      if (v13)
      {
        goto LABEL_8;
      }

      while (1)
      {
LABEL_4:
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v17 >= v15)
        {
          break;
        }

        v13 = *(v6 + 64 + 8 * v17);
        ++v16;
        if (v13)
        {
          v16 = v17;
LABEL_8:
          while (1)
          {
            v18 = __clz(__rbit64(v13)) | (v16 << 6);
            v19 = (*(v6 + 48) + 16 * v18);
            v20 = *v19;
            v21 = v19[1];
            v22 = *(*(v6 + 56) + 8 * v18);

            v23 = sub_2231F5154(v22);
            if (v24)
            {
              if (v23 == 0xD000000000000024 && v24 == 0x80000002232216F0)
              {

                goto LABEL_43;
              }

              v26 = sub_2232006B4();

              if (v26)
              {
                break;
              }
            }

            v13 &= v13 - 1;

            if (!v13)
            {
              goto LABEL_4;
            }
          }

LABEL_43:
          *a2 = v20;
          a2[1] = v21;
          return;
        }
      }

      if (qword_280FCA778 != -1)
      {
        goto LABEL_48;
      }

LABEL_31:
      v50 = sub_223200014();
      __swift_project_value_buffer(v50, qword_280FCE830);
      v51 = sub_223200004();
      v52 = sub_223200254();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2230CE000, v51, v52, "#user-session: unable to find shareduserid for guest in homememberInfo", v53, 2u);
        OUTLINED_FUNCTION_14();
      }

      *a2 = 0xD000000000000024;
      a2[1] = v61;
    }

    else
    {
      v59 = v4;
      OUTLINED_FUNCTION_23_6();
      v37 = v36 & v35;
      v39 = (v38 + 63) >> 6;

      v40 = 0;
      if (v37)
      {
        goto LABEL_22;
      }

      do
      {
LABEL_18:
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          OUTLINED_FUNCTION_1_0(&qword_280FCA778);
          goto LABEL_31;
        }

        if (v41 >= v39)
        {

          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_1_0(&qword_280FCA778);
          }

          v54 = sub_223200014();
          __swift_project_value_buffer(v54, qword_280FCE830);

          v55 = sub_223200004();
          v56 = sub_223200254();

          v3 = a2;
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v62 = v58;
            *v57 = 136315138;
            *(v57 + 4) = sub_2231A5D38(v59, v5, &v62);
            _os_log_impl(&dword_2230CE000, v55, v56, "#user-session: unable to find shareduserid for personaId=%s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v58);
            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_14();
          }

          goto LABEL_39;
        }

        v37 = *(v6 + 64 + 8 * v41);
        ++v40;
      }

      while (!v37);
      v40 = v41;
LABEL_22:
      while (1)
      {
        v42 = __clz(__rbit64(v37)) | (v40 << 6);
        v43 = (*(v6 + 48) + 16 * v42);
        v44 = v43[1];
        v61 = *v43;
        v45 = *(*(v6 + 56) + 8 * v42);

        v46 = sub_2231F5154(v45);
        if (v47)
        {
          if (v46 == v59 && v47 == v5)
          {

            goto LABEL_45;
          }

          v49 = sub_2232006B4();

          if (v49)
          {
            break;
          }
        }

        v37 &= v37 - 1;

        if (!v37)
        {
          goto LABEL_18;
        }
      }

LABEL_45:
      *a2 = v61;
      a2[1] = v44;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    sub_2230D954C(v27, v28, v29, v30);
    OUTLINED_FUNCTION_14_15();
    sub_2230D9D28(v31, v32, v33, v34);
    OUTLINED_FUNCTION_4_0();
LABEL_39:
    *v3 = 0;
    v3[1] = 0;
  }
}

uint64_t UserSessionState.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x746E6569626D61;
  }

  if (v1 == 1)
  {
    return 0x7473657567;
  }

  v3 = *(v0 + 32);
  v4 = *v0;

  sub_223200374();

  MEMORY[0x223DD5AA0](v4, v1);
  MEMORY[0x223DD5AA0](47, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD58, &qword_223220330);
  v5 = sub_223200104();
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](47, 0xE100000000000000);
  if (v3)
  {
    v6 = 1751607656;
  }

  else
  {
    v6 = 7827308;
  }

  if (v3)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x223DD5AA0](v6, v7);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return 0x64656C6C6F726E65;
}

uint64_t sub_2231F4100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6569626D61 && a2 == 0xE700000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473657567 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656C6C6F726E65 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2231F420C(char a1)
{
  if (!a1)
  {
    return 0x746E6569626D61;
  }

  if (a1 == 1)
  {
    return 0x7473657567;
  }

  return 0x64656C6C6F726E65;
}

uint64_t sub_2231F4260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49616E6F73726570 && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002232277F0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x654C737365636361 && a2 == 0xEB000000006C6576)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2231F4384(char a1)
{
  if (!a1)
  {
    return 0x49616E6F73726570;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x654C737365636361;
}

uint64_t sub_2231F43EC(uint64_t a1)
{
  v2 = sub_2231F52B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F4428(uint64_t a1)
{
  v2 = sub_2231F52B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F4100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F4494(uint64_t a1)
{
  v2 = sub_2231F51B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F44D0(uint64_t a1)
{
  v2 = sub_2231F51B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F4260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F453C(uint64_t a1)
{
  v2 = sub_2231F520C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F4578(uint64_t a1)
{
  v2 = sub_2231F520C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F45B4(uint64_t a1)
{
  v2 = sub_2231F5260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F45F0(uint64_t a1)
{
  v2 = sub_2231F5260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSessionState.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD60, &qword_223220338);
  OUTLINED_FUNCTION_9();
  v42 = v4;
  v43 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD68, &qword_223220340);
  OUTLINED_FUNCTION_9();
  v39 = v8;
  v40 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD70, &qword_223220348);
  OUTLINED_FUNCTION_9();
  v38 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD78, &qword_223220350);
  OUTLINED_FUNCTION_9();
  v44 = v18;
  v45 = v17;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v20 = *v1;
  v21 = v1[1];
  v22 = v1[3];
  v36 = v1[2];
  v37 = v20;
  v35 = v22;
  v49 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F51B8();
  sub_2232007A4();
  if (!v21)
  {
    LOBYTE(v47) = 0;
    sub_2231F52B4();
    v27 = v45;
    sub_2232005B4();
    (*(v38 + 8))(v16, v12);
    v24 = OUTLINED_FUNCTION_15_11();
    v26 = v27;
    return v25(v24, v26);
  }

  if (v21 == 1)
  {
    LOBYTE(v47) = 1;
    sub_2231F5260();
    v23 = v45;
    sub_2232005B4();
    (*(v39 + 8))(v11, v40);
    v24 = OUTLINED_FUNCTION_15_11();
    v26 = v23;
    return v25(v24, v26);
  }

  LOBYTE(v47) = 2;
  sub_2231F520C();
  v29 = v41;
  v30 = v45;
  sub_2232005B4();
  LOBYTE(v47) = 0;
  v31 = v43;
  v32 = v46;
  sub_2232005F4();
  if (!v32)
  {
    v47 = v36;
    v48 = v35;
    v50 = 1;
    sub_2230D37F0();
    OUTLINED_FUNCTION_19_10();
    sub_2232005E4();
    LOBYTE(v47) = v49 & 1;
    v50 = 2;
    sub_2230F6A90();
    OUTLINED_FUNCTION_19_10();
    sub_223200654();
  }

  (*(v42 + 8))(v29, v31);
  v33 = OUTLINED_FUNCTION_15_11();
  return v34(v33, v30);
}

void UserSessionState.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADA0, &qword_223220358);
  OUTLINED_FUNCTION_9();
  v63 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v64 = &v56 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADA8, &qword_223220360);
  OUTLINED_FUNCTION_9();
  v60 = v7;
  v61 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADB0, &qword_223220368);
  OUTLINED_FUNCTION_9();
  v59 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADB8, &unk_223220370);
  OUTLINED_FUNCTION_9();
  v18 = v17;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2231F51B8();
  v23 = v67;
  sub_223200794();
  if (v23)
  {
    goto LABEL_9;
  }

  v57 = v11;
  v58 = v15;
  v67 = v18;
  v24 = v21;
  v25 = sub_223200594();
  sub_2230E0B80(v25, 0);
  if (v27 == v28 >> 1)
  {
    goto LABEL_8;
  }

  v56 = 0;
  if (v27 >= (v28 >> 1))
  {
    __break(1u);
    return;
  }

  v29 = *(v26 + v27);
  v30 = sub_2230E0B40(v27 + 1);
  v32 = v31;
  v34 = v33;
  swift_unknownObjectRelease();
  if (v32 != v34 >> 1)
  {
LABEL_8:
    v36 = sub_2232003A4();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v38 = &type metadata for UserSessionState;
    sub_223200484();
    sub_223200394();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_6_34();
    v40(v39);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v66);
    return;
  }

  if (v29)
  {
    if (v29 == 1)
    {
      LOBYTE(v68[0]) = 1;
      sub_2231F5260();
      OUTLINED_FUNCTION_21_13(&type metadata for UserSessionState.GuestCodingKeys, v68);
      v35 = v62;
      swift_unknownObjectRelease();
      (*(v60 + 8))(v10, v61);
      v43 = OUTLINED_FUNCTION_6_34();
      v44(v43);
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 1;
    }

    else
    {
      LOBYTE(v68[0]) = 2;
      sub_2231F520C();
      OUTLINED_FUNCTION_21_13(&type metadata for UserSessionState.EnrolledCodingKeys, v68);
      v35 = v62;
      v60 = v30;
      v61 = v24;
      LOBYTE(v68[0]) = 0;
      v45 = sub_2232004F4();
      v49 = v51;
      v70 = 1;
      sub_2231105AC();
      sub_2232004C4();
      v46 = v68[0];
      v47 = v68[1];
      v69 = 2;
      sub_2230F7104();
      sub_223200554();
      swift_unknownObjectRelease();
      v52 = OUTLINED_FUNCTION_22_9();
      v53(v52);
      v54 = OUTLINED_FUNCTION_24_6();
      v55(v54);
      v48 = v70;
    }

    v50 = v66;
  }

  else
  {
    LOBYTE(v68[0]) = 0;
    sub_2231F52B4();
    v41 = v58;
    OUTLINED_FUNCTION_21_13(&type metadata for UserSessionState.AmbientCodingKeys, v68);
    v42 = v67;
    swift_unknownObjectRelease();
    (*(v59 + 8))(v41, v57);
    (*(v42 + 8))(v24, v16);
    v45 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v50 = v66;
    v35 = v62;
  }

  *v35 = v45;
  *(v35 + 8) = v49;
  *(v35 + 16) = v46;
  *(v35 + 24) = v47;
  *(v35 + 32) = v48;
  __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_2231F5154(void *a1)
{
  v1 = [a1 personaIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2232000C4();

  return v3;
}

unint64_t sub_2231F51B8()
{
  result = qword_27D05AD80;
  if (!qword_27D05AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD80);
  }

  return result;
}

unint64_t sub_2231F520C()
{
  result = qword_27D05AD88;
  if (!qword_27D05AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD88);
  }

  return result;
}

unint64_t sub_2231F5260()
{
  result = qword_27D05AD90;
  if (!qword_27D05AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD90);
  }

  return result;
}

unint64_t sub_2231F52B4()
{
  result = qword_27D05AD98;
  if (!qword_27D05AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD98);
  }

  return result;
}

_BYTE *sub_2231F5348(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231F5428()
{
  result = qword_27D05ADC0;
  if (!qword_27D05ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADC0);
  }

  return result;
}

unint64_t sub_2231F5480()
{
  result = qword_27D05ADC8;
  if (!qword_27D05ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADC8);
  }

  return result;
}

unint64_t sub_2231F54D8()
{
  result = qword_27D05ADD0;
  if (!qword_27D05ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADD0);
  }

  return result;
}

unint64_t sub_2231F5530()
{
  result = qword_27D05ADD8;
  if (!qword_27D05ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADD8);
  }

  return result;
}

unint64_t sub_2231F5588()
{
  result = qword_27D05ADE0;
  if (!qword_27D05ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADE0);
  }

  return result;
}

unint64_t sub_2231F55E0()
{
  result = qword_27D05ADE8;
  if (!qword_27D05ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADE8);
  }

  return result;
}

unint64_t sub_2231F5638()
{
  result = qword_27D05ADF0;
  if (!qword_27D05ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADF0);
  }

  return result;
}

unint64_t sub_2231F5690()
{
  result = qword_27D05ADF8;
  if (!qword_27D05ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADF8);
  }

  return result;
}

unint64_t sub_2231F56E8()
{
  result = qword_27D05AE00;
  if (!qword_27D05AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE00);
  }

  return result;
}

unint64_t sub_2231F5740()
{
  result = qword_27D05AE08;
  if (!qword_27D05AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE08);
  }

  return result;
}

void OUTLINED_FUNCTION_20_13()
{

  sub_2230D9D28(0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_21_13(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t sub_2231F5840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554786966657270 && a2 == 0xEA00000000007478;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5478696674736F70 && a2 == 0xEB00000000747865;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657463656C6573 && a2 == 0xEC00000074786554;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000223227880 == a2;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002232278A0 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000002232278C0 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000002232278E0 == a2;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E6576456F646E75 && a2 == 0xE900000000000074)
              {

                return 7;
              }

              else
              {
                v13 = sub_2232006B4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2231F5AD8(char a1)
{
  result = 0x6554786966657270;
  switch(a1)
  {
    case 1:
      result = 0x5478696674736F70;
      break;
    case 2:
      result = 0x64657463656C6573;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x6E6576456F646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231F5BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F5840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F5C14(uint64_t a1)
{
  v2 = sub_2231F7238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F5C50(uint64_t a1)
{
  v2 = sub_2231F7238();

  return MEMORY[0x2821FE720](a1, v2);
}

id VoiceCommandContextMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return VoiceCommandContextMessage.init(build:)(v1);
}

id VoiceCommandContextMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v56 = a1;
  v57 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46[-v3];
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v52 = v6;
  MEMORY[0x28223BE20](v7);
  v53 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v12 = 15;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v13 = v10[8];
  v54 = v5;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v5);
  v14 = &v12[v10[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v12[v10[10]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[v10[11]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v12[v10[12]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v10[13];
  v12[v18] = 2;
  v49 = v10[14];
  v12[v49] = 2;
  v50 = v10[15];
  v12[v50] = 2;
  v51 = v10[16];
  v12[v51] = 2;
  v19 = v10[17];
  v12[v19] = 2;
  v56(v12);
  v20 = *v12;
  if (v20 == 15 || !*(v12 + 2))
  {
    goto LABEL_10;
  }

  v56 = *(v12 + 2);
  v48 = *(v12 + 1);
  sub_2230D1480(&v12[v13], v4);
  v21 = v54;
  if (__swift_getEnumTagSinglePayload(v4, 1, v54) == 1)
  {
    sub_2230D69D4(v4);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v37 = sub_223200014();
    __swift_project_value_buffer(v37, qword_280FCE830);
    v38 = sub_223200004();
    v39 = sub_223200254();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58 = v41;
      *v40 = 136446210;
      v42 = sub_2230F7898(ObjectType);
      v44 = sub_2231A5D38(v42, v43, &v58);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2230CE000, v38, v39, "Could not build %{public}s: Builder has missing required fields", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x223DD6780](v41, -1, -1);
      MEMORY[0x223DD6780](v40, -1, -1);
    }

    sub_2231F6310(v12);
    type metadata accessor for VoiceCommandContextMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v47 = v20;
  v22 = v52;
  (*(v52 + 32))(v53, v4, v21);
  if (!*(v14 + 1))
  {
    (*(v22 + 8))(v53, v21);
    goto LABEL_10;
  }

  ObjectType = v46;
  v23 = *(v15 + 1);
  v24 = v57;
  v25 = (v57 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText);
  *v25 = *v15;
  v25[1] = v23;
  v26 = *v16;
  v27 = *(v16 + 1);
  v28 = (v24 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText);
  *v28 = v26;
  v28[1] = v27;
  v29 = *(v17 + 1);
  v30 = (v24 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText);
  *v30 = *v17;
  v30[1] = v29;
  *(v24 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_disambiguationActive) = v12[v18];
  *(v24 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_cursorInVisibleText) = v12[v49];
  *(v24 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_favorCommandSuppression) = v12[v50];
  *(v24 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_abortCommandSuppression) = v12[v51];
  *(v24 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_undoEvent) = v12[v19];
  MEMORY[0x28223BE20](v29);
  v46[-48] = v47;
  v31 = v56;
  *&v46[-40] = v48;
  *&v46[-32] = v31;
  v32 = v53;
  *&v46[-24] = v53;
  *&v46[-16] = v33;
  *&v46[-8] = v34;

  v35 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v36 = v35;
  sub_2231F6310(v12);
  if (v35)
  {
  }

  (*(v52 + 8))(v32, v54);
  return v35;
}

uint64_t sub_2231F6310(uint64_t a1)
{
  v2 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *VoiceCommandContextMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE10, &qword_223220838);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F7238();
  sub_223200794();
  if (v2)
  {
    v15 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for VoiceCommandContextMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    v5 = sub_223200494();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText);
    *v7 = v5;
    v7[1] = v8;
    OUTLINED_FUNCTION_6_31(1);
    v9 = sub_223200494();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText);
    *v10 = v9;
    v10[1] = v11;
    OUTLINED_FUNCTION_6_31(2);
    v12 = sub_223200494();
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText);
    *v13 = v12;
    v13[1] = v14;
    OUTLINED_FUNCTION_6_31(3);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_disambiguationActive) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(4);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_cursorInVisibleText) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(5);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_favorCommandSuppression) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(6);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_abortCommandSuppression) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(7);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_undoEvent) = sub_2232004A4();
    sub_2230F7158(a1, v18);
    v15 = RequestMessageBase.init(from:)(v18);
    v16 = OUTLINED_FUNCTION_2();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_2231F6788(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE20, &qword_223220840);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F7238();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText + 8) || (v13 = 0, OUTLINED_FUNCTION_12(), sub_2232005F4(), !v2))
  {
    if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText + 8) || (v14 = 1, OUTLINED_FUNCTION_12(), sub_2232005F4(), !v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText + 8) || (v15 = 2, OUTLINED_FUNCTION_12(), sub_2232005F4(), !v2))
      {
        OUTLINED_FUNCTION_11_17();
        if (v10 || (v16 = 3, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
        {
          OUTLINED_FUNCTION_11_17();
          if (v10 || (v17 = 4, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
          {
            OUTLINED_FUNCTION_11_17();
            if (v10 || (v18 = 5, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
            {
              OUTLINED_FUNCTION_11_17();
              if (v10 || (v19 = 6, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
              {
                OUTLINED_FUNCTION_11_17();
                if (v10 || (v20 = 7, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
                {
                  sub_2230D77A8(a1);
                }
              }
            }
          }
        }
      }
    }
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t VoiceCommandContextMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceCommandContextMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t VoiceCommandContextMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_33() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t VoiceCommandContextMessage.Builder.requestId.getter()
{
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.prefixText.getter()
{
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.prefixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.postfixText.getter()
{
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.postfixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.selectedText.getter()
{
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.selectedText.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.disambiguationActive.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.cursorInVisibleText.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.favorCommandSuppression.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.abortCommandSuppression.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.undoEvent.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t sub_2231F7144()
{
}

id VoiceCommandContextMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceCommandContextMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231F7238()
{
  result = qword_27D05AE18;
  if (!qword_27D05AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE18);
  }

  return result;
}

uint64_t sub_2231F7340(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandContextMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2231F7538()
{
  result = qword_27D05AE38;
  if (!qword_27D05AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE38);
  }

  return result;
}

unint64_t sub_2231F7590()
{
  result = qword_27D05AE40;
  if (!qword_27D05AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE40);
  }

  return result;
}

unint64_t sub_2231F75E8()
{
  result = qword_27D05AE48;
  if (!qword_27D05AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE48);
  }

  return result;
}

id VoiceIdScoreCardMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v43 = v8;
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VoiceIdScoreCardMessage.Builder(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v12[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v12[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v12[10];
  *&v14[v17] = 0;
  a1(v14);
  v18 = *v14;
  if (v18 == 15)
  {
    goto LABEL_12;
  }

  v19 = *(v14 + 2);
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v33 = sub_223200004();
    v34 = sub_223200254();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = v36;
      *v35 = 136446210;
      v37 = sub_2230F7898(ObjectType);
      v39 = sub_2231A5D38(v37, v38, &v46);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223DD6780](v36, -1, -1);
      MEMORY[0x223DD6780](v35, -1, -1);
    }

    sub_2231F7B30(v14);
    type metadata accessor for VoiceIdScoreCardMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v20;
  v22 = v43;
  v21 = v44;
  v23 = (*(v43 + 32))(v44, v6, v7);
  if (!*(v16 + 1))
  {
    (*(v22 + 8))(v21, v7);
    goto LABEL_12;
  }

  v24 = *&v14[v17];
  if (!v24)
  {
    (*(v22 + 8))(v44, v7);
    goto LABEL_12;
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23VoiceIdScoreCardMessage_voiceIdScoreCard) = v24;
  MEMORY[0x28223BE20](v23);
  *(&v41 - 48) = v18;
  *(&v41 - 5) = v42;
  *(&v41 - 4) = v19;
  v25 = v44;
  *(&v41 - 3) = v44;
  *(&v41 - 2) = v26;
  *(&v41 - 1) = v27;
  v29 = v28;
  v30 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v31 = v30;

  sub_2231F7B30(v14);
  if (v30)
  {
  }

  (*(v43 + 8))(v25, v7);
  return v30;
}

uint64_t sub_2231F7B30(uint64_t a1)
{
  v2 = type metadata accessor for VoiceIdScoreCardMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *VoiceIdScoreCardMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE50, &qword_223220A28);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F84FC();
  sub_223200794();
  if (!v2)
  {
    sub_2230FB7A0();
    sub_223200554();
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    v8 = sub_223200264();
    v11 = v8;
    if (v8)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23VoiceIdScoreCardMessage_voiceIdScoreCard) = v8;
      sub_2230F7158(a1, &v15);
      v16 = v11;
      v9 = RequestMessageBase.init(from:)(&v15);
      v13 = OUTLINED_FUNCTION_2();
      v14(v13);
      OUTLINED_FUNCTION_5_1();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v9;
    }

    sub_2230F9E38();
    swift_allocError();
    *v12 = 0xD000000000000020;
    *(v12 + 8) = 0x8000000223223D00;
    *(v12 + 16) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5_1();
    v6 = OUTLINED_FUNCTION_2();
    v7(v6);
  }

  v9 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for VoiceIdScoreCardMessage(0);
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_2231F7EEC(void *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE60, &qword_223220A30);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F84FC();
  sub_2232007A4();
  v10 = objc_opt_self();
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23VoiceIdScoreCardMessage_voiceIdScoreCard);
  v20[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v20];
  v13 = v20[0];
  if (v12)
  {
    v14 = sub_2231FFD24();
    v16 = v15;

    v20[0] = v14;
    v20[1] = v16;
    sub_2230D7754();
    sub_223200654();
    if (!v2)
    {
      sub_2230D77A8(a1);
    }

    (*(v6 + 8))(v9, v4);
    return OUTLINED_FUNCTION_5_1();
  }

  else
  {
    v18 = v13;
    sub_2231FFD04();

    swift_willThrow();
    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_2231F8108(uint64_t a1)
{
  v2 = sub_2231F84FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F8144(uint64_t a1)
{
  v2 = sub_2231F84FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VoiceIdScoreCardMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t VoiceIdScoreCardMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t VoiceIdScoreCardMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t VoiceIdScoreCardMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_52() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t VoiceIdScoreCardMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 28));

  return v1;
}

uint64_t VoiceIdScoreCardMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *VoiceIdScoreCardMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 32));
  v2 = v1;
  return v1;
}

void VoiceIdScoreCardMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_52() + 32);

  *(v1 + v2) = v0;
}

id VoiceIdScoreCardMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceIdScoreCardMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231F84FC()
{
  result = qword_27D05AE58;
  if (!qword_27D05AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE58);
  }

  return result;
}

uint64_t sub_2231F85F4(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223110954(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for VoiceIdScoreCardMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231F8794()
{
  result = qword_27D05AE88;
  if (!qword_27D05AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE88);
  }

  return result;
}

unint64_t sub_2231F87EC()
{
  result = qword_27D05AE90;
  if (!qword_27D05AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE90);
  }

  return result;
}

unint64_t sub_2231F8844()
{
  result = qword_27D05AE98;
  if (!qword_27D05AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE98);
  }

  return result;
}

__CFString *SMTNeuralCombinerMitigationDecisionGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2784D5BB0[a1];
  }
}

uint64_t SMTNeuralCombinerMitigationDecisionGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SMTNeuralCombinerMitigationDecisionGetFromName_onceToken != -1)
    {
      dispatch_once(&SMTNeuralCombinerMitigationDecisionGetFromName_onceToken, &__block_literal_global);
    }

    v2 = [SMTNeuralCombinerMitigationDecisionGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SMTNeuralCombinerMitigationDecisionGetFromName_block_invoke()
{
  v0 = SMTNeuralCombinerMitigationDecisionGetFromName_map;
  SMTNeuralCombinerMitigationDecisionGetFromName_map = &unk_28368B4C0;
}

__CFString *SMTTCUStateGetName(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2784D5E10[a1];
  }
}

uint64_t SMTTCUStateGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SMTTCUStateGetFromName_onceToken != -1)
    {
      dispatch_once(&SMTTCUStateGetFromName_onceToken, &__block_literal_global_628);
    }

    v2 = [SMTTCUStateGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SMTTCUStateGetFromName_block_invoke()
{
  v0 = SMTTCUStateGetFromName_map;
  SMTTCUStateGetFromName_map = &unk_28368B4E8;
}

__CFString *SMTVoiceTriggerPhraseTypeGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2784D5F90[a1];
  }
}

uint64_t SMTVoiceTriggerPhraseTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SMTVoiceTriggerPhraseTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SMTVoiceTriggerPhraseTypeGetFromName_onceToken, &__block_literal_global_983);
    }

    v2 = [SMTVoiceTriggerPhraseTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SMTVoiceTriggerPhraseTypeGetFromName_block_invoke()
{
  v0 = SMTVoiceTriggerPhraseTypeGetFromName_map;
  SMTVoiceTriggerPhraseTypeGetFromName_map = &unk_28368B510;
}