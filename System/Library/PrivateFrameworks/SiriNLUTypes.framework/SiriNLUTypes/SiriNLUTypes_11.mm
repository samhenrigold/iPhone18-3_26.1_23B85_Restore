uint64_t sub_1C8893698()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__nluRequestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C8893788()
{
  v0 = sub_1C8893698();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C88930EC(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C889387C(v10, a1, a2, a3);
}

uint64_t sub_1C889387C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_1C88939FC();
        break;
      case 3:
      case 4:
        sub_1C8893AC0();
        break;
      case 5:
        sub_1C8893B34(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C8893C10(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C8893CEC(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C8893D78(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88939FC()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776740(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8893AC0()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C8893B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C8776740(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8893C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8776740(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8893CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}

uint64_t sub_1C8893D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C8776740(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0);
  result = sub_1C8893EC0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8893EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v34 - v6;
  v36 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v34 - v9;
  v39 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v40 = &v34 - v12;
  v41 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  swift_beginAccess();
  v47 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1C8778ED8(v19, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v23 = v44;
  }

  else
  {
    sub_1C87EF7B0();
    sub_1C8776740(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v24 = v44;
    sub_1C8BD4E2C();
    v23 = v24;
    result = sub_1C87EF860();
    if (v24)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v17, 1, v20) == 1)
  {
    sub_1C8778ED8(v17, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87EF7B0();
    sub_1C8776740(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    sub_1C8BD4E2C();
    result = sub_1C87EF860();
    if (v23)
    {
      return result;
    }
  }

  v26 = v47;
  v27 = v47 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID;
  swift_beginAccess();
  if (!*(v27 + 8) || (, sub_1C8BD4DDC(), result = , !v23))
  {
    v28 = v26 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance;
    swift_beginAccess();
    if (!*(v28 + 8) || (, sub_1C8BD4DDC(), result = , !v23))
    {
      swift_beginAccess();
      v29 = v40;
      sub_1C8778810();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v41);
      v31 = v42;
      if (EnumTagSinglePayload == 1)
      {
        sub_1C8778ED8(v29, &qword_1EC2B6048, &unk_1C8BE6F80);
      }

      else
      {
        sub_1C87EF7B0();
        sub_1C8776740(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
        sub_1C8BD4E2C();
        result = sub_1C87EF860();
        if (v23)
        {
          return result;
        }
      }

      swift_beginAccess();
      sub_1C8778810();
      if (__swift_getEnumTagSinglePayload(v31, 1, v39) == 1)
      {
        sub_1C8778ED8(v31, &qword_1EC2B64A8, &unk_1C8BE7670);
      }

      else
      {
        sub_1C87EF7B0();
        sub_1C8776740(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
        sub_1C8BD4E2C();
        result = sub_1C87EF860();
        if (v23)
        {
          return result;
        }
      }

      v32 = v26 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
      swift_beginAccess();
      if ((*(v32 + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v23))
      {
        swift_beginAccess();
        v33 = v35;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v33, 1, v36) == 1)
        {
          return sub_1C8778ED8(v33, &qword_1EC2B64B0, &unk_1C8BF3F40);
        }

        else
        {
          sub_1C87EF7B0();
          sub_1C8776740(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
          sub_1C8BD4E2C();
          return sub_1C87EF860();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_8_14();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1C8894960(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776740(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C8894960(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  v99 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v95 - v8;
  v105 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  MEMORY[0x1EEE9AC00](v105);
  v101 = (&v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v102 = (&v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v95 - v14;
  v110 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  MEMORY[0x1EEE9AC00](v110);
  v103 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v108 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v95 - v20;
  v120 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v120);
  v115 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v118 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v95 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v114 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v117 = &v95 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v119 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v95 - v34;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v116 = v22;
  v36 = *(v22 + 48);
  sub_1C8778810();
  v37 = v120;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v26, 1, v37) == 1)
  {

    sub_1C8778ED8(v35, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v38 = a1;
    if (__swift_getEnumTagSinglePayload(&v26[v36], 1, v37) == 1)
    {
      sub_1C8778ED8(v26, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C8778ED8(v26, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_16;
  }

  v38 = a1;
  v39 = v119;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(&v26[v36], 1, v37) == 1)
  {

    sub_1C8778ED8(v35, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87EF860();
    goto LABEL_6;
  }

  v40 = v115;
  sub_1C87EF7B0();

  v41 = static Siri_Nlu_External_UUID.== infix(_:_:)(v39, v40);
  sub_1C87EF860();
  sub_1C8778ED8(v35, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87EF860();
  sub_1C8778ED8(v26, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  swift_beginAccess();
  v42 = v117;
  sub_1C8778810();
  swift_beginAccess();
  v43 = *(v116 + 48);
  v44 = v118;
  sub_1C8778810();
  sub_1C8778810();
  v45 = v38;
  if (__swift_getEnumTagSinglePayload(v44, 1, v37) == 1)
  {
    sub_1C8778ED8(v42, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v44 + v43, 1, v37) == 1)
    {
      sub_1C8778ED8(v44, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_20;
    }

LABEL_14:
    v47 = &qword_1EC2B5EE8;
    v48 = &unk_1C8BE6F90;
    v49 = v44;
LABEL_15:
    sub_1C8778ED8(v49, v47, v48);
    goto LABEL_16;
  }

  v46 = v114;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v44 + v43, 1, v37) == 1)
  {
    sub_1C8778ED8(v42, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87EF860();
    goto LABEL_14;
  }

  v51 = v115;
  sub_1C87EF7B0();
  v52 = static Siri_Nlu_External_UUID.== infix(_:_:)(v46, v51);
  sub_1C87EF860();
  sub_1C8778ED8(v42, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87EF860();
  sub_1C8778ED8(v44, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v53 = (v38 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = (v121 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  swift_beginAccess();
  v57 = v56[1];
  if (v55)
  {
    v58 = v113;
    if (!v57)
    {
      goto LABEL_16;
    }

    v59 = v54 == *v56 && v55 == v57;
    if (!v59 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v58 = v113;
    if (v57)
    {
      goto LABEL_16;
    }
  }

  v60 = (v38 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = (v121 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  swift_beginAccess();
  v64 = v63[1];
  if (v62)
  {
    if (!v64)
    {
      goto LABEL_16;
    }

    v65 = v61 == *v63 && v62 == v64;
    if (!v65 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v64)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v66 = *(v109 + 48);
  v67 = v111;
  sub_1C8778810();
  sub_1C8778810();
  v68 = v110;
  if (__swift_getEnumTagSinglePayload(v67, 1, v110) == 1)
  {
    sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
    v70 = v112;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v67, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_45;
    }

LABEL_43:
    v47 = &qword_1EC2B6050;
    v48 = &qword_1C8BE6D00;
LABEL_51:
    v49 = v67;
    goto LABEL_15;
  }

  v71 = v108;
  sub_1C8778810();
  v72 = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
  v70 = v112;
  if (v72 == 1)
  {
    sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C87EF860();
    goto LABEL_43;
  }

  v73 = v103;
  sub_1C87EF7B0();
  v74 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v71, v73);
  sub_1C87EF860();
  sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C87EF860();
  sub_1C8778ED8(v67, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v74 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_45:
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v75 = *(v104 + 48);
  v67 = v106;
  sub_1C8778810();
  sub_1C8778810();
  v76 = v105;
  if (__swift_getEnumTagSinglePayload(v67, 1, v105) == 1)
  {
    sub_1C8778ED8(v70, &qword_1EC2B64A8, &unk_1C8BE7670);
    v77 = __swift_getEnumTagSinglePayload(v67 + v75, 1, v76);
    v78 = v107;
    if (v77 == 1)
    {
      sub_1C8778ED8(v67, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v79 = v102;
  sub_1C8778810();
  v80 = __swift_getEnumTagSinglePayload(v67 + v75, 1, v76);
  v78 = v107;
  if (v80 == 1)
  {
    sub_1C8778ED8(v112, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C87EF860();
LABEL_50:
    v47 = &qword_1EC2B64E0;
    v48 = &unk_1C8BE7880;
    goto LABEL_51;
  }

  v81 = v101;
  sub_1C87EF7B0();
  v82 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v79, v81);
  sub_1C87EF860();
  sub_1C8778ED8(v112, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87EF860();
  sub_1C8778ED8(v67, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v82 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_53:
  v83 = v45 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  swift_beginAccess();
  v84 = *v83;
  v85 = *(v83 + 8);
  v86 = v121 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  swift_beginAccess();
  if ((v85 & 1) == 0)
  {
    if ((*(v86 + 8) & 1) == 0 && v84 == *v86)
    {
      goto LABEL_58;
    }

LABEL_16:

    return 0;
  }

  if ((*(v86 + 8) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_58:
  swift_beginAccess();
  sub_1C8778810();
  v87 = v78;
  swift_beginAccess();
  v88 = *(v98 + 48);
  v89 = v100;
  sub_1C8778810();
  v90 = v89;
  sub_1C8778810();
  v91 = v99;
  if (__swift_getEnumTagSinglePayload(v89, 1, v99) == 1)
  {

    sub_1C8778ED8(v87, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v91) == 1)
    {
      sub_1C8778ED8(v89, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_63;
  }

  v92 = v97;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v90 + v88, 1, v91) == 1)
  {

    sub_1C8778ED8(v107, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C87EF860();
LABEL_63:
    sub_1C8778ED8(v90, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v93 = v96;
  sub_1C87EF7B0();
  v94 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v92, v93);

  sub_1C87EF860();
  sub_1C8778ED8(v107, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87EF860();
  sub_1C8778ED8(v90, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v94 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0);
  sub_1C8776740(&qword_1EC2B8870, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8895B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776740(&qword_1EC2B8888, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8895C04(uint64_t a1)
{
  v2 = sub_1C8776740(&qword_1EC2B8878, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8895C74(uint64_t a1, uint64_t a2)
{
  sub_1C8776740(&qword_1EC2B8878, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8895E3C(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8895EC8(uint64_t a1)
{
  sub_1C87F2968(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    sub_1C87F2968(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v2 <= 0x3F)
    {
      sub_1C87F2968(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v3 <= 0x3F)
      {
        sub_1C87F2968(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_37_5()
{

  return swift_beginAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.userStatedTask.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    v8 = type metadata accessor for Siri_Nlu_External_UsoGraph(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserStatedTask.task.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_UserStatedTask(v5);
  OUTLINED_FUNCTION_232();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    OUTLINED_FUNCTION_412(MEMORY[0x1E69E7CC0]);
    v7 = OUTLINED_FUNCTION_496();
    v8 = type metadata accessor for Siri_Nlu_External_SemVer(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.hasAccepted.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserParse.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(v0);
  OUTLINED_FUNCTION_109_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = OUTLINED_FUNCTION_524();
  type metadata accessor for Siri_Nlu_External_UUID(v2);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_38(v1[7]);
  *(v7 + 8) = 1;
  OUTLINED_FUNCTION_18_2(v1[8]);
  type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_38(v1[11]);
  *(v16 + 8) = 1;
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v17 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t Siri_Nlu_External_UserDialogAct.hasRejected.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasCancelled.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToPause.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_CorrectionOutcome.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_421();
  *(a2 + v4) = 2;
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.hasAcknowledged.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToProceed.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasDelegated.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.accepted.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &unk_1EC2B6330, &unk_1C8BF4FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.rejected.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserRejected(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E28, &unk_1C8C10580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.cancelled.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToRepeat.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E10, &unk_1C8BF5000);
    }
  }

  else
  {
    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.acknowledged.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86D8, &qword_1C8BF4620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToProceed.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86D0, &unk_1C8BF5010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToPause.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E18, &qword_1C8BEBC48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToUndo.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86C0, &unk_1C8BF5020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasOffered.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_TurnInput.systemDialogActGroup.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_TurnInput(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    v7 = OUTLINED_FUNCTION_313_0();
    v8 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_TurnInput.systemDialogActGroup.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_TurnInput(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_TurnInput.systemDialogActGroup.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  type metadata accessor for Siri_Nlu_External_TurnInput(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_317_0();
    v17 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v16);
    OUTLINED_FUNCTION_5_12(v17);
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_TurnInput.hasSystemDialogActGroup.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_TurnInput(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearSystemDialogActGroup()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_TurnInput(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_TurnInput.salientEntities.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C889783C(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_167();
  v3(v2);
  OUTLINED_FUNCTION_215_1();
  v4 = OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_277(v4, v5);
}

uint64_t sub_1C88978F8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v6;
  v11 = OUTLINED_FUNCTION_241();
  v13 = *(v12(v11) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_2();
    v15 = a4(v16);
    *(v10 + v13) = v15;
  }

  v17 = *a5;
  OUTLINED_FUNCTION_37_0(v15 + v17, v19);
  *(v15 + v17) = v5;
}

uint64_t Siri_Nlu_External_TurnInput.activeTasks.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_TurnInput.executedTasks.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_TurnInput.asrOutputs.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_TurnInput.turnContext.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_TurnInput(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_TurnInput.turnContext.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_TurnContext(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  type metadata accessor for Siri_Nlu_External_TurnInput(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_NLContext(v15);
    v16 = OUTLINED_FUNCTION_73_3();
    v20 = OUTLINED_FUNCTION_265_1(v16, v17, v18, v19);
    v21 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v20);
    OUTLINED_FUNCTION_5_12(v21);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8897F28()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_97();
    sub_1C88AC5E8();
    v2(v3);
    OUTLINED_FUNCTION_299_0();
    sub_1C87A0410();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_External_TurnInput.hasTurnContext.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_TurnInput(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearTurnContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_TurnInput(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_TurnInput.locale.getter()
{
  v1 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_11_12(v1);
  if (!*(v0 + 8))
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

void Siri_Nlu_External_TurnInput.locale.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_533();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_68();
  v27 = type metadata accessor for Siri_Nlu_External_TurnInput(v26);
  v28 = OUTLINED_FUNCTION_41_1(v27);
  v29 = *(v21 + v23);
  if ((v28 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v30 = OUTLINED_FUNCTION_2();
    v31 = sub_1C87924BC(v30);
    v28 = OUTLINED_FUNCTION_40(v31);
  }

  v32 = (v29 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  OUTLINED_FUNCTION_36_0(v28, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_534();
}

uint64_t (*Siri_Nlu_External_TurnInput.locale.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_160_1();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  v6 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_277(v6, v7);
  if (v5[1])
  {
    v8 = *v5;
    v9 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v8;
  v3[7] = v9;

  return sub_1C88982D0;
}

BOOL Siri_Nlu_External_TurnInput.hasLocale.getter()
{
  v1 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_11_12(v1);
  return *(v0 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearLocale()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_External_TurnInput(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v5 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87924BC(v5);
    *(v1 + v2) = v4;
  }

  v6 = (v4 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  OUTLINED_FUNCTION_37_0(v4 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale, v7);
  *v6 = 0;
  v6[1] = 0;
}

uint64_t Siri_Nlu_External_TurnInput.tapToEdit.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_160_1();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 84) = *(v4 + v5) & 1;
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_TurnInput.startTimestamp.getter()
{
  v1 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_11_12(v1);
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Siri_Nlu_External_TurnInput.startTimestamp.setter()
{
  v3 = OUTLINED_FUNCTION_241();
  v4 = type metadata accessor for Siri_Nlu_External_TurnInput(v3);
  v5 = OUTLINED_FUNCTION_436(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C87924BC(v7);
    v5 = OUTLINED_FUNCTION_264_1(v8);
  }

  v9 = v6 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  result = OUTLINED_FUNCTION_36_0(v5, v11);
  *v9 = v0;
  *(v9 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_External_TurnInput.startTimestamp.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_160_1();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  v5 = OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_277(v5, v6);
  v7 = *v4;
  if (*(v4 + 8))
  {
    v7 = 0;
  }

  *(v1 + 72) = v7;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8898650(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 88);
    v10 = *(v3 + 80);
    OUTLINED_FUNCTION_202_1();
    v11 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = sub_1C87924BC(v11);
    v8 = isUniquelyReferenced_nonNull_native;
    *(v10 + v9) = isUniquelyReferenced_nonNull_native;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = v8 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v3 + v12);
  *v13 = v4;
  *(v13 + 8) = 0;

  free(v3);
}

BOOL Siri_Nlu_External_TurnInput.hasStartTimestamp.getter()
{
  v1 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_11_12(v1);
  return (*(v0 + 8) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearStartTimestamp()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_External_TurnInput(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v5 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87924BC(v5);
    *(v1 + v2) = v4;
  }

  v6 = v4 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  OUTLINED_FUNCTION_37_0(v4 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp, v7);
  *v6 = 0;
  *(v6 + 8) = 1;
}

uint64_t Siri_Nlu_External_TurnInput.correctionOutcomeOverride.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_TurnInput(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_409();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_TurnInput.correctionOutcomeOverride.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_TurnInput(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_TurnInput.correctionOutcomeOverride.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 32) = v7;
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_129_2(v11);
  type metadata accessor for Siri_Nlu_External_TurnInput(v12);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_5_6();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_5_6();
    if (!v13)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_TurnInput.hasCorrectionOutcomeOverride.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_TurnInput(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearCorrectionOutcomeOverride()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_TurnInput(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t sub_1C8898C44(uint64_t a1)
{
  OUTLINED_FUNCTION_160_1();
  v4 = *(v1 + v3);
  v5 = OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_277(v5, v6);
  return *(v4 + a1) & 1;
}

void sub_1C8898C90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_533();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = *(v2 + v3);
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C87924BC(v11);
    OUTLINED_FUNCTION_40(v12);
  }

  v13 = OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_37_0(v13, v14);
  *(v10 + v5) = v7 & 1;
  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_TurnInput.connectedToCarPlayUltra.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_160_1();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 84) = *(v4 + v5) & 1;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8898D80()
{
  OUTLINED_FUNCTION_261();
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
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    OUTLINED_FUNCTION_202_1();
    v13 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87924BC(v13);
    *(v12 + v11) = v10;
  }

  v14 = 48;
  if (v3)
  {
    v14 = 24;
  }

  v15 = *v1;
  OUTLINED_FUNCTION_37_0(v10 + v15, v5 + v14);
  *(v10 + v15) = v8;
  OUTLINED_FUNCTION_260();

  free(v16);
}

BOOL sub_1C8898E34(uint64_t a1)
{
  OUTLINED_FUNCTION_160_1();
  v4 = *(v1 + v3);
  v5 = OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_277(v5, v6);
  return *(v4 + a1) != 2;
}

uint64_t sub_1C8898E84(uint64_t a1)
{
  v4 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v5 = OUTLINED_FUNCTION_436(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C87924BC(v7);
    OUTLINED_FUNCTION_264_1(v8);
  }

  v9 = OUTLINED_FUNCTION_316_0();
  result = OUTLINED_FUNCTION_37_0(v9, v10);
  *(v6 + a1) = 2;
  return result;
}

uint64_t Siri_Nlu_External_TurnContext.nlContext.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_TurnContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_TurnContext.nlContext.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_NLContext(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_TurnContext(v15);
  OUTLINED_FUNCTION_130_3(*(v16 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = v18;
    v11[2] = v18;
    v11[3] = v18;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v19 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_5_12(v19);
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_TurnContext.legacyNlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_TurnContext(v7);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    Siri_Nlu_External_LegacyNLContext.init()(a1);
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_3();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_TurnContext.legacyNlContext.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_TurnContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5FB8, &unk_1C8BF3D70);
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_TurnContext.legacyNlContext.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_TurnContext(v16);
  OUTLINED_FUNCTION_86_2(v17);
  OUTLINED_FUNCTION_0_0();
  if (v18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v19;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v12 + v0[7]) = 2;
    *(v12 + v0[8]) = 2;
    OUTLINED_FUNCTION_26(v0[9]);
    *(v12 + v0[10]) = v20;
    OUTLINED_FUNCTION_523(v0[11]);
    OUTLINED_FUNCTION_0_0();
    if (!v18)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NLContext.systemDialogActGroup.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NLContext(v5);
  OUTLINED_FUNCTION_232();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    v7 = OUTLINED_FUNCTION_313_0();
    v8 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_NLContext.systemDialogActGroup.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NLContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NLContext.systemDialogActGroup.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_NLContext(v15);
  OUTLINED_FUNCTION_130_3(*(v16 + 36));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = OUTLINED_FUNCTION_317_0();
    v19 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v18);
    OUTLINED_FUNCTION_5_12(v19);
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NLContext.salientEntities.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NLContext.systemDialogActs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NLContext.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_NLContext(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_196();

  return v2(v1);
}

uint64_t Siri_Nlu_External_NLContext.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NLContext(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_167_1();

  return v2(v1);
}

uint64_t Siri_Nlu_External_NLContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NLContext(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.dictationPrompt.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 28));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.strictPrompt.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_LegacyNLContext.previousDomainName.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 36)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_LegacyNLContext.previousDomainName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 36)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_LegacyNLContext.clearPreviousDomainName()()
{
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 40));
  return j_j__OUTLINED_FUNCTION_158;
}

void Siri_Nlu_External_LegacyNLContext.legacyContextSource.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_275_0();
  *v0 = v2;
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.legacyContextSource.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 44));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_LegacyNLContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8899E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D07C4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_RepetitionResult.asrHypothesisIndex.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_RepetitionResult.asrHypothesisIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_RepetitionResult.asrHypothesisIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

void Siri_Nlu_External_RepetitionResult.repetitionType.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(v1);
  OUTLINED_FUNCTION_275_0();
  *v0 = v2;
}

uint64_t Siri_Nlu_External_RepetitionResult.repetitionType.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_RepetitionResult(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_RepetitionResult.repetitionType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 24));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889A0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D0818();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Siri_Nlu_External_RepetitionResult.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_24_2(v1);
  *(v2 + 4) = 1;
  OUTLINED_FUNCTION_464(*(v3 + 24));
}

uint64_t Siri_Nlu_External_Parser.algorithm.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_Parser(v2);
  v4 = *(v1 + *(result + 20));
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1C889A1E0@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_Parser.algorithm.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_Parser.algorithm.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_Parser(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_Parser.algorithm.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 20));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_Parser.parserID.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_Parser(v2);
  v4 = *(v1 + *(result + 24));
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1C889A358@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_Parser.parserID.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_Parser.parserID.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_Parser(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_Parser.parserID.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 24));
  OUTLINED_FUNCTION_24_5(v3);
  return j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889A4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D08C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C889A548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D086C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_UserParse.id.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.id.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserParse(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C889A7E8()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v4, v5, v1);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Siri_Nlu_External_UserParse.probability.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 28));
}

uint64_t Siri_Nlu_External_UserParse.probability.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_UserParse(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C889A964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UserParse.parserID.setter(v1, v2);
}

uint64_t Siri_Nlu_External_UserParse.parserID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UserParse(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 32)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_UserParse.repetitionResult.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UserParse(v6);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_24_2(dword_1EC2B8A74);
    *(v8 + 4) = v0;
    OUTLINED_FUNCTION_464(dword_1EC2B8A78);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8A60, &unk_1C8BF5058);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.repetitionResult.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2B8A60, &unk_1C8BF5058);
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.repetitionResult.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UserParse(v15);
  OUTLINED_FUNCTION_85(*(v16 + 36));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(*(v1 + 20));
    OUTLINED_FUNCTION_523(*(v1 + 24));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8A60, &unk_1C8BF5058);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C889AD4C()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = v1(0);
  OUTLINED_FUNCTION_202_0(*(v7 + 36));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v9, v8);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v10, v11, v12);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C889AE30()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v4, v5, v1);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_UserParse.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UserParse(v7);
  OUTLINED_FUNCTION_57_0();
  v8 = type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v8 + 20)) = 3;
    *(a1 + *(v8 + 24)) = 10;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.parser.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_Parser(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.parser.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_Parser(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_UserParse(v16);
  OUTLINED_FUNCTION_85(*(v17 + 40));
  OUTLINED_FUNCTION_5_6();
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v12 + *(v1 + 20)) = 3;
    *(v12 + *(v1 + 24)) = 10;
    OUTLINED_FUNCTION_5_6();
    if (!v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_UserParse.comparableProbability.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 44));
}

uint64_t Siri_Nlu_External_UserParse.comparableProbability.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_UserParse(v2) + 44);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_UserParse.correctionOutcome.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UserParse(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_409();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.correctionOutcome.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 48), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.correctionOutcome.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserParse(v14);
  OUTLINED_FUNCTION_85(*(v15 + 48));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserParse.hasCorrectionOutcome.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_External_UserParse(v5);
  OUTLINED_FUNCTION_13(*(v6 + 48));
  OUTLINED_FUNCTION_262();
  v7 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_10(v7);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_External_UserParse.clearCorrectionOutcome()()
{
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8778ED8(v0 + *(v1 + 48), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_UserParse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_UserParse(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_CorrectionOutcome.type.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v2);
  *v0 = *(v1 + *(result + 20)) & 1;
  return result;
}

uint64_t sub_1C889B6AC@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_CorrectionOutcome.type.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_CorrectionOutcome.type.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_421();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_CorrectionOutcome.type.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 20));
  return j_j__OUTLINED_FUNCTION_158;
}

SiriNLUTypes::Siri_Nlu_External_CorrectionOutcome::CorrectionType_optional __swiftcall Siri_Nlu_External_CorrectionOutcome.CorrectionType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C889B818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D0914();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C889B880@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_CorrectionOutcome.CorrectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.accepted.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.accepted.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserAccepted(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &unk_1EC2B6330, &unk_1C8BF4FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearAccepted()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.rejected.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserRejected(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.rejected.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserRejected(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E28, &unk_1C8C10580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearRejected()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.cancelled.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.cancelled.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserCancelled(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearCancelled()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToRepeat.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToRepeat.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E10, &unk_1C8BF5000);
    }
  }

  else
  {
    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToRepeat()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.acknowledged.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.acknowledged.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86D8, &qword_1C8BF4620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearAcknowledged()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToProceed.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86D0, &unk_1C8BF5010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToProceed()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToPause.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToPause.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E18, &qword_1C8BEBC48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToPause()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.delegated.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_24_8();
  if (v9)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    v10 = a1 + dword_1EC2B86E0;
    *v10 = 0;
    *(v10 + 4) = v2;
    sub_1C8BD493C();
    v11 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = (a1 + dword_1EC2B86E8);
    *v15 = 0;
    v15[1] = 0;
    type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
    v16 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_496();
    v21 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v20);
    result = OUTLINED_FUNCTION_9_13(v21);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B86C8, &unk_1C8C10570);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.delegated.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v0);
  OUTLINED_FUNCTION_109_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_24_2(*(v1 + 24));
  *(v2 + 4) = 1;
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_18_2(*(v1 + 32));
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  v11 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Siri_Nlu_External_UserDialogAct.delegated.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v10);
  OUTLINED_FUNCTION_48_5();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(*(v0 + 24));
    sub_1C8BD493C();
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_26(*(v0 + 32));
    type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
    v20 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_303_0();
    v25 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v24);
    OUTLINED_FUNCTION_5_12(v25);
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B86C8, &unk_1C8C10570);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearDelegated()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.userStatedTask.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserStatedTask(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    v15 = type metadata accessor for Siri_Nlu_External_UsoGraph(v14);
    OUTLINED_FUNCTION_5_12(v15);
    if (!v13)
    {
      sub_1C8778ED8(v0, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearUserStatedTask()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToUndo.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToUndo.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86C0, &unk_1C8BF5020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToUndo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.alignment.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_24_2(dword_1EC2B8A80);
    *(v10 + 4) = v1;
    OUTLINED_FUNCTION_24_2(dword_1EC2B8A84);
    *(v11 + 4) = v1;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B8A68, &qword_1C8BF5068);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.alignment.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.alignment.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v10);
  OUTLINED_FUNCTION_48_5();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(*(v0 + 24));
    OUTLINED_FUNCTION_7_0(*(v0 + 28));
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B8A68, &qword_1C8BF5068);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasAlignment.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearAlignment()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_374(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserAccepted.offerID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAccepted(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAccepted.offerID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserAccepted(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C889DE68()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = v1(0);
  OUTLINED_FUNCTION_202_0(*(v7 + 20));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v9, v8);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v10, v11, v12);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C889DF4C()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v4, v5, v1);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_UserAccepted.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAccepted(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAccepted.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserAccepted(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserRejected.offerID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserRejected(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserRejected.offerID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserRejected(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserRejected.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserRejected(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserRejected.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserRejected(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserCancelled.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserCancelled(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserCancelled.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserCancelled(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserCancelled.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserCancelled(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserCancelled.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserCancelled(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToRepeat.systemDialogActID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToRepeat.systemDialogActID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToRepeat.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToRepeat.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserAcknowledged.systemDialogActID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAcknowledged.systemDialogActID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserAcknowledged.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAcknowledged.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToProceed.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToProceed.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_UserWantedToProceed.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToPause.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToPause.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToPause.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToPause.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_RewriteMessage.rewriteType.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(v1);
  OUTLINED_FUNCTION_275_0();
  *v0 = v2;
}

uint64_t Siri_Nlu_External_RewriteMessage.rewriteType.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_422();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_RewriteMessage.rewriteType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 20));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889FB70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RewriteMessage.rewrittenUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_External_RewriteMessage.rewrittenUtterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C889FCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D0968();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Siri_Nlu_External_RewriteMessage.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_464(v1);
  OUTLINED_FUNCTION_18_2(*(v2 + 24));
}

uint64_t Siri_Nlu_External_ReferenceContext.contextualReference.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_ReferenceContext(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_ReferenceContext.contextualReference.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 20));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_ReferenceContext.disambiguationNeeded.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_ReferenceContext(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_ReferenceContext.disambiguationNeeded.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 24));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889FF4C@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = a1(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void Siri_Nlu_External_DelegatedUserDialogAct.asrHypothesisIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_DelegatedUserDialogAct.asrHypothesisIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_211_2();
    OUTLINED_FUNCTION_84_1();
    return v7();
  }

  return result;
}

void Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = sub_1C8BD493C();
  OUTLINED_FUNCTION_278_0(v8);
  OUTLINED_FUNCTION_13_1();
  *(v0 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_116_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_38_4(v13);
  v15 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v14);
  OUTLINED_FUNCTION_32_5(*(v15 + 28));
  OUTLINED_FUNCTION_73(v7);
  if (v16)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_73(v7);
    if (!v16)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_4();
    v18(v17);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88A036C()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 32)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88A03B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter(v1, v2);
}

uint64_t sub_1C88A040C()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 32)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C88A04F8()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_464(*(v6 + 20));
    OUTLINED_FUNCTION_18_2(*(v6 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.rewrite.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_DelegatedUserDialogAct.rewrite.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v15);
  OUTLINED_FUNCTION_85(*(v16 + 36));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_523(*(v1 + 20));
    OUTLINED_FUNCTION_26(*(v1 + 24));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.referenceContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v7);
  OUTLINED_FUNCTION_57_0();
  v8 = type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_409();
    *(a1 + *(v8 + 24)) = v10;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &dword_1EC2B8A78, &unk_1C8BF5080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.referenceContext.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &dword_1EC2B8A78, &unk_1C8BF5080);
  OUTLINED_FUNCTION_57_4();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_DelegatedUserDialogAct.referenceContext.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v16);
  OUTLINED_FUNCTION_85(*(v17 + 40));
  OUTLINED_FUNCTION_5_6();
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_401();
    *(v12 + *(v1 + 24)) = v19;
    OUTLINED_FUNCTION_5_6();
    if (!v18)
    {
      sub_1C8778ED8(v0, &dword_1EC2B8A78, &unk_1C8BF5080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C88A0B30()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = v1(0);
  OUTLINED_FUNCTION_202_0(*(v7 + 40));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v9, v8);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v10, v11, v12);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88A0C14()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v4, v5, v1);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C88A0C94()
{
  v0 = OUTLINED_FUNCTION_207();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_196();

  return v3(v2);
}

uint64_t sub_1C88A0D20()
{
  v0 = OUTLINED_FUNCTION_241();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_167_1();

  return v3(v2);
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_UserStatedTask.task.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserStatedTask(v14);
  OUTLINED_FUNCTION_130_3(*(v15 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToUndo.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToUndo.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToUndo.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToUndo.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemDialogActGroup.systemDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v7);
  OUTLINED_FUNCTION_57_0();
  v8 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EDACB5F8 != -1)
    {
      OUTLINED_FUNCTION_397(&qword_1EDACB5F8);
    }

    *(a1 + v10) = qword_1EDACB600;
    v11 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_507(v11, v12);
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogActGroup.systemDialogAct.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5FE0, &unk_1C8C102D0);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemDialogActGroup.systemDialogAct.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v16);
  OUTLINED_FUNCTION_86_2(v17);
  OUTLINED_FUNCTION_0_0();
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v19 = *(v0 + 20);
    if (qword_1EDACB5F8 != -1)
    {
      OUTLINED_FUNCTION_397(&qword_1EDACB5F8);
    }

    *(v12 + v19) = qword_1EDACB600;
    v20 = OUTLINED_FUNCTION_82_5();
    __swift_getEnumTagSinglePayload(v20, v21, v22);
    OUTLINED_FUNCTION_511();

    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemDialogActGroup.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_SystemDialogAct.id.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  type metadata accessor for Siri_Nlu_External_UUID(v10);
  OUTLINED_FUNCTION_48_5();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v0[5]);
    OUTLINED_FUNCTION_11_0(v0[6]);
    v14[v0[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.prompted.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C879A880(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.prompted.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_SystemPrompted(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &dword_1EC2B86E8, &unk_1C8BF4630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearPrompted()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.offered.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_166_2(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86F0, &unk_1C8BF5030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

void Siri_Nlu_External_SystemDialogAct.offered.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_SystemOffered(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct(v14);
    OUTLINED_FUNCTION_5_12(v15);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86F0, &unk_1C8BF5030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearOffered()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.gaveOptions.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &dword_1EC2B8A80, &unk_1C8BF5090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

void Siri_Nlu_External_SystemDialogAct.gaveOptions.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 32) = v7;
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_5_6();
  if (v12)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v12)
    {
      sub_1C8778ED8(v7, &dword_1EC2B8A80, &unk_1C8BF5090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearGaveOptions()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.informed.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_166_2(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    v7 = OUTLINED_FUNCTION_313_0();
    v8 = type metadata accessor for Siri_Nlu_External_UUID(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B8A88, &unk_1C8C10560);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.informed.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C879A880(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C88A252C@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  a1(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  a2(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Siri_Nlu_External_SystemDialogAct.informed.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_SystemInformed(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    *v13 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_317_0();
    v16 = type metadata accessor for Siri_Nlu_External_UUID(v15);
    OUTLINED_FUNCTION_5_12(v16);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8A88, &unk_1C8C10560);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasInformed.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearInformed()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedSuccess.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_166_2(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B8A90, &unk_1C8BF50A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedSuccess.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C879A880(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.reportedSuccess.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID(v14);
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8A90, &unk_1C8BF50A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasReportedSuccess.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearReportedSuccess()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedFailure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EC2B51C8 != -1)
    {
      OUTLINED_FUNCTION_395(&qword_1EC2B51C8);
    }

    *(a1 + v10) = qword_1EC2B89E0;
    v11 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_507(v11, v12);
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8A98, &unk_1C8C10550);
    }
  }

  else
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedFailure.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C879A880(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.reportedFailure.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v10);
  OUTLINED_FUNCTION_48_5();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EC2B51C8 != -1)
    {
      OUTLINED_FUNCTION_395(&qword_1EC2B51C8);
    }

    *&v14[v16] = qword_1EC2B89E0;
    v17 = OUTLINED_FUNCTION_82_5();
    __swift_getEnumTagSinglePayload(v17, v18, v19);
    OUTLINED_FUNCTION_511();

    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B8A98, &unk_1C8C10550);
    }
  }

  else
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasReportedFailure.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearReportedFailure()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.renderedText.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_51();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_13_2(v9);
  v2[5] = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v2[6] = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_222_0(v12);
  v2[8] = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_240_2(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText);
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_220();
    v16(v15);
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasRenderedText.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = sub_1C8BD493C();
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearRenderedText()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_429(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879A880(v3);
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = sub_1C8BD493C();
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemPrompted.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemPrompted.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemPrompted.target.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemPrompted.target.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemOffered.offeredAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemOffered(v7);
  OUTLINED_FUNCTION_57_0();
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EDACC048 != -1)
    {
      OUTLINED_FUNCTION_394(&qword_1EDACC048);
    }

    *(a1 + v10) = qword_1EDACC050;
    v11 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_507(v11, v12);
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_5();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

void Siri_Nlu_External_SystemOffered.offeredAct.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_SystemOffered(v16);
  OUTLINED_FUNCTION_130_3(*(v17 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v19 = *(v0 + 20);
    if (qword_1EDACC048 != -1)
    {
      OUTLINED_FUNCTION_394(&qword_1EDACC048);
    }

    *(v12 + v19) = qword_1EDACC050;
    v20 = OUTLINED_FUNCTION_82_5();
    __swift_getEnumTagSinglePayload(v20, v21, v22);
    OUTLINED_FUNCTION_511();

    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_5();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemGaveOptions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88A3D34()
{
  OUTLINED_FUNCTION_526();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = v0(v6);
  OUTLINED_FUNCTION_13(*(v7 + 24));
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_452(v9);
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemInformed.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemInformed(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemInformed.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_SystemInformed(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemInformed.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_SystemInformed(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_SystemReportedSuccess.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemReportedSuccess.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemReportedSuccess.task.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemReportedSuccess.task.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88A44F8()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_508();
  v2 = OUTLINED_FUNCTION_230();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_45();
  v0(v6);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_406();
  OUTLINED_FUNCTION_241_2();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_65(v1);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_452(v8);
    OUTLINED_FUNCTION_65(v1);
    if (!v7)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemReportedFailure.taskID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_SystemReportedFailure._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C3354(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemReportedFailure.taskID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_UUID(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v15);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v0[5]);
    OUTLINED_FUNCTION_11_0(v0[6]);
    *(v11 + v0[7]) = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemReportedFailure.hasTaskID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemReportedFailure.clearTaskID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_SystemReportedFailure._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C3354(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemReportedFailure.reason.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_SystemReportedFailure._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C3354(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemReportedFailure.reason.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_303_0();
    v16 = type metadata accessor for Siri_Nlu_External_SemVer(v15);
    OUTLINED_FUNCTION_5_12(v16);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemReportedFailure.hasReason.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemReportedFailure.clearReason()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_SystemReportedFailure._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C3354(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemReportedFailure.task.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_SystemReportedFailure._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C3354(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemReportedFailure.task.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_303_0();
    v16 = type metadata accessor for Siri_Nlu_External_SemVer(v15);
    OUTLINED_FUNCTION_5_12(v16);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemReportedFailure.hasTask.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemReportedFailure.clearTask()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_SystemReportedFailure._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C3354(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_RRGroupIdentifier.groupID.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = sub_1C8BD493C();
  OUTLINED_FUNCTION_278_0(v8);
  OUTLINED_FUNCTION_13_1();
  *(v0 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_116_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_38_4(v13);
  v15 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v14);
  OUTLINED_FUNCTION_32_5(*(v15 + 20));
  OUTLINED_FUNCTION_73(v7);
  if (v16)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_73(v7);
    if (!v16)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_4();
    v18(v17);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

void sub_1C88A52B8()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 12);
  v6 = (*v4)[4];
  v7 = (*v4)[5];
  v8 = (*v4)[2];
  v9 = (*v4)[3];
  v11 = **v4;
  v10 = (*v4)[1];
  if (v12)
  {
    OUTLINED_FUNCTION_392();
    v13();
    sub_1C8778ED8(v11 + v5, v3, v2);
    (*(v9 + 32))(v11 + v5, v6, v8);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
    v17 = OUTLINED_FUNCTION_220();
    v18(v17);
  }

  else
  {
    sub_1C8778ED8(v11 + v5, v0, v1);
    OUTLINED_FUNCTION_392();
    v19();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v8);
  }

  free(v7);
  free(v6);
  free(v10);
  OUTLINED_FUNCTION_125();

  free(v23);
}

uint64_t sub_1C88A546C()
{
  v0 = OUTLINED_FUNCTION_167();
  v1(v0);
  OUTLINED_FUNCTION_4();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_RRGroupIdentifier.seq.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_RRGroupIdentifier.seq.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

void Siri_Nlu_External_RRGroupIdentifier.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  OUTLINED_FUNCTION_485();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_24_2(*(v1 + 24));
  *(v6 + 4) = 1;
}

uint64_t sub_1C88A55E4()
{
  OUTLINED_FUNCTION_526();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = v0(v6);
  OUTLINED_FUNCTION_13(*(v7 + 20));
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_211_2();
    OUTLINED_FUNCTION_84_1();
    return v9();
  }

  return result;
}

uint64_t sub_1C88A56F4()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  sub_1C8778ED8(v0 + *(v3 + 20), &qword_1EC2B6110, &qword_1C8BF5070);
  v4 = sub_1C8BD493C();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_232();
  v5();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Siri_Nlu_External_RRAnnotation.key.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = sub_1C8BD493C();
  OUTLINED_FUNCTION_278_0(v8);
  OUTLINED_FUNCTION_13_1();
  *(v0 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_116_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_38_4(v13);
  v15 = type metadata accessor for Siri_Nlu_External_RRAnnotation(v14);
  OUTLINED_FUNCTION_32_5(*(v15 + 20));
  OUTLINED_FUNCTION_73(v7);
  if (v16)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_73(v7);
    if (!v16)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_4();
    v18(v17);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_RRAnnotation.value.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_RRAnnotation(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_211_2();
    OUTLINED_FUNCTION_84_1();
    return v7();
  }

  return result;
}

uint64_t Siri_Nlu_External_RRAnnotation.value.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_RRAnnotation(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6110, &qword_1C8BF5070);
  v3 = sub_1C8BD493C();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_232();
  v4();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
}

void Siri_Nlu_External_RRAnnotation.value.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = sub_1C8BD493C();
  OUTLINED_FUNCTION_278_0(v8);
  OUTLINED_FUNCTION_13_1();
  *(v0 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_116_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_38_4(v13);
  v15 = type metadata accessor for Siri_Nlu_External_RRAnnotation(v14);
  OUTLINED_FUNCTION_32_5(*(v15 + 24));
  OUTLINED_FUNCTION_73(v7);
  if (v16)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_73(v7);
    if (!v16)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_4();
    v18(v17);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_RRAnnotation.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  v1 = sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

double Siri_Nlu_External_RRBoundingBox.xCoordinate.getter()
{
  OUTLINED_FUNCTION_419();
  result = OUTLINED_FUNCTION_2_12(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_External_RRBoundingBox.xCoordinate.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 20));
}

uint64_t Siri_Nlu_External_RRBoundingBox.xCoordinate.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_RRBoundingBox(v2) + 20);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_External_RRBoundingBox.yCoordinate.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 24));
}

uint64_t Siri_Nlu_External_RRBoundingBox.yCoordinate.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_RRBoundingBox(v2) + 24);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

double sub_1C88A5F00()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  result = OUTLINED_FUNCTION_2_12(*(v2 + 28));
  if (!v5)
  {
    return v4;
  }

  return result;
}

void Siri_Nlu_External_RRBoundingBox.width.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 28));
}

uint64_t Siri_Nlu_External_RRBoundingBox.width.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_RRBoundingBox(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

double Siri_Nlu_External_RRBoundingBox.height.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 32));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_External_RRBoundingBox.height.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 32));
}

uint64_t Siri_Nlu_External_RRBoundingBox.height.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_RRBoundingBox(v2) + 32);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_External_RRBoundingBox.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_38(v1);
  *(v2 + 8) = 1;
  OUTLINED_FUNCTION_38(*(v3 + 24));
  *(v4 + 8) = v5;
  OUTLINED_FUNCTION_38(*(v6 + 28));
  *(v7 + 8) = v8;
  OUTLINED_FUNCTION_38(*(v9 + 32));
  *(v10 + 8) = v11;
}

uint64_t sub_1C88A616C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RRSurroundingText.text.setter(v1, v2);
}

uint64_t Siri_Nlu_External_RRSurroundingText.text.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_RRSurroundingText.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_RRSurroundingText.boundingBox.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(v15);
  OUTLINED_FUNCTION_86_2(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v0[5]);
    OUTLINED_FUNCTION_11_0(v0[6]);
    OUTLINED_FUNCTION_11_0(v0[7]);
    OUTLINED_FUNCTION_11_0(v0[8]);
    OUTLINED_FUNCTION_0_0();
    if (!v17)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_RRSurroundingText.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(0);
  OUTLINED_FUNCTION_18_2(*(v1 + 20));
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  v2 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C88A6524()
{
  OUTLINED_FUNCTION_526();
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = (v1)(v7);
  OUTLINED_FUNCTION_13(*(v8 + 24));
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_38(v10);
    *(v11 + 8) = v0;
    OUTLINED_FUNCTION_38(*(v1 + 32));
    *(v12 + 8) = v0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B6128, &qword_1C8BE6DC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_RRMetadata.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_RRMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_RRMetadata.boundingBox.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_RRMetadata(v15);
  OUTLINED_FUNCTION_86_2(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v0[5]);
    OUTLINED_FUNCTION_11_0(v0[6]);
    OUTLINED_FUNCTION_11_0(v0[7]);
    OUTLINED_FUNCTION_11_0(v0[8]);
    OUTLINED_FUNCTION_0_0();
    if (!v17)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_RRMetadata.dataSource.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_RRMetadata(v2);
  v4 = *(v1 + *(result + 28));
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1C88A68C4@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_RRMetadata.dataSource.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_RRMetadata.dataSource.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_RRMetadata(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_RRMetadata.dataSource.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RRMetadata(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 28));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_RRMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_RRMetadata(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88A6A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D09BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Siri_Nlu_External_RRMetadata.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Siri_Nlu_External_RRMetadata(v0);
  OUTLINED_FUNCTION_109_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = OUTLINED_FUNCTION_524();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(v2);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_452(*(v1 + 28));
}

void sub_1C88A6B8C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_508();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_170();
  v1(v8);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_406();
  OUTLINED_FUNCTION_167_1();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_24_8();
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    *v3 = MEMORY[0x1E69E7CC0];
    v3[1] = v10;
    v3[2] = v10;
    v3[3] = v10;
    v3[4] = v10;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = OUTLINED_FUNCTION_496();
    type metadata accessor for Siri_Nlu_External_SemVer(v11);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_24_8();
    if (!v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_EntityCandidate.entity.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_EntityCandidate.entity.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  OUTLINED_FUNCTION_199_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_303_0();
    v16 = type metadata accessor for Siri_Nlu_External_SemVer(v15);
    OUTLINED_FUNCTION_5_12(v16);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_EntityCandidate.hasEntity.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_EntityCandidate.clearEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_EntityCandidate.score.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  sub_1C8BD48FC();
  v6 = OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    MEMORY[0x1CCA7D9E0](v6);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_211_2();
    OUTLINED_FUNCTION_84_1();
    return v8();
  }

  return result;
}

uint64_t Siri_Nlu_External_EntityCandidate.score.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_2();
    v6 = sub_1C88C86DC(v5);
    OUTLINED_FUNCTION_40(v6);
  }

  sub_1C8BD48FC();
  OUTLINED_FUNCTION_48_5();
  v7 = OUTLINED_FUNCTION_12();
  v8(v7);
  v9 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_EntityCandidate.score.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_51();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_13_2(v9);
  v2[5] = sub_1C8BD48FC();
  OUTLINED_FUNCTION_13_1();
  v2[6] = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_222_0(v12);
  v2[8] = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_240_2(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score);
  OUTLINED_FUNCTION_241_2();
  v14 = OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    MEMORY[0x1CCA7D9E0](v14);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_220();
    v17(v16);
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_EntityCandidate.hasScore.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_EntityCandidate.clearScore()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void sub_1C88A7548()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_508();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_45();
  v0(v8);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_406();
  OUTLINED_FUNCTION_241_2();
  v9 = sub_1C8BD493C();
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_65(v1);
    if (!v10)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_211_2();
    (*(v11 + 32))(v3, v1, v9);
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88A769C()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_180();
  v9 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_2();
    *(v0 + v9) = v2(v10);
  }

  v11 = sub_1C8BD493C();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_301();
  v12();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_EntityCandidate.entityID.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_51();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_13_2(v9);
  v2[5] = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v2[6] = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_222_0(v12);
  v2[8] = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_240_2(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID);
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_220();
    v16(v15);
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_EntityCandidate.hasEntityID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = sub_1C8BD493C();
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_EntityCandidate.clearEntityID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = sub_1C8BD493C();
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_EntityCandidate.appBundleID.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_51();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_13_2(v9);
  v2[5] = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v2[6] = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_222_0(v12);
  v2[8] = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_240_2(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID);
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_220();
    v16(v15);
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C88A7C9C()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 64);
  v6 = *(*v0 + 32);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_271();
    v8(v7);
    v2(v3);
    v9 = OUTLINED_FUNCTION_315();
    v10(v9);
  }

  else
  {
    v1(*(*v0 + 64));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_260();

  free(v11);
}

uint64_t Siri_Nlu_External_EntityCandidate.hasAppBundleID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = sub_1C8BD493C();
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_EntityCandidate.clearAppBundleID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = sub_1C8BD493C();
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_EntityCandidate.groupID.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v6);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    sub_1C8BD493C();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_24_2(dword_1EC2B8AB8);
    *(v12 + 4) = v0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8AA0, &qword_1C8BF50B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_EntityCandidate.groupID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_EntityCandidate.groupID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  OUTLINED_FUNCTION_199_2(v14);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    sub_1C8BD493C();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_7_0(*(v0 + 24));
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B8AA0, &qword_1C8BF50B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_EntityCandidate.hasGroupID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_EntityCandidate.clearGroupID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_EntityCandidate.annotations.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
  OUTLINED_FUNCTION_52_0(*(v3 + 20));
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

void sub_1C88A84CC()
{
  OUTLINED_FUNCTION_261();
  v5 = *v4;
  v6 = *(*v4 + 48);
  if (v7)
  {
    v8 = v3;

    v8(v9);
  }

  else
  {
    v10 = v2;
    v11 = v1;
    v12 = v0;
    v13 = *(v5 + 64);
    v14 = *(v5 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v5 + 64);
      v18 = *(v5 + 56);
      v12(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_2();
      v16 = v11(v19);
      *(v18 + v17) = v16;
    }

    v20 = *v10;
    OUTLINED_FUNCTION_37_0(v16 + v20, v5 + 24);
    *(v16 + v20) = v6;
  }

  OUTLINED_FUNCTION_260();

  free(v21);
}

uint64_t Siri_Nlu_External_EntityCandidate.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = OUTLINED_FUNCTION_313_0();
    type metadata accessor for Siri_Nlu_External_RRBoundingBox(v10);
    v11 = OUTLINED_FUNCTION_27_1();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    OUTLINED_FUNCTION_452(*(v8 + 28));
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_3();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_EntityCandidate.metadata.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_112_3();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_EntityCandidate.metadata.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_RRMetadata(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  OUTLINED_FUNCTION_199_2(v15);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = OUTLINED_FUNCTION_317_0();
    type metadata accessor for Siri_Nlu_External_RRBoundingBox(v17);
    v18 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    *(v11 + *(v0 + 28)) = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v1, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_EntityCandidate.hasMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_199_2(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v5 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_EntityCandidate.clearMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88C86DC(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t sub_1C88A8AD0()
{
  OUTLINED_FUNCTION_526();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = v0(v6);
  OUTLINED_FUNCTION_13(*(v7 + 20));
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_452(v9);
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_Task.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_Task(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_Task.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_Task(v14);
  OUTLINED_FUNCTION_123_0(v15);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C88A8E00(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = a1(v7);
  OUTLINED_FUNCTION_329_0(v8);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_24_8();
  if (v9)
  {
    OUTLINED_FUNCTION_412(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_496();
    v11 = type metadata accessor for Siri_Nlu_External_SemVer(v10);
    result = OUTLINED_FUNCTION_9_13(v11);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_Task.task.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_Task(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_Task.task.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_Task(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_Task.score.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_Task(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD48FC();
  v6 = OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    MEMORY[0x1CCA7D9E0](v6);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_211_2();
    OUTLINED_FUNCTION_84_1();
    return v8();
  }

  return result;
}

uint64_t sub_1C88A9218(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *(a2(0) + 28);
  v9 = OUTLINED_FUNCTION_207_2();
  sub_1C8778ED8(v9, v10, v11);
  v12 = a5(0);
  OUTLINED_FUNCTION_21();
  (*(v13 + 32))(v5 + v8, a1, v12);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
}

void Siri_Nlu_External_Task.score.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_278_0(v8);
  OUTLINED_FUNCTION_13_1();
  *(v0 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_116_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_38_4(v13);
  v15 = type metadata accessor for Siri_Nlu_External_Task(v14);
  OUTLINED_FUNCTION_32_5(*(v15 + 28));
  v16 = OUTLINED_FUNCTION_73(v7);
  if (v17)
  {
    MEMORY[0x1CCA7D9E0](v16);
    OUTLINED_FUNCTION_73(v7);
    if (!v17)
    {
      sub_1C8778ED8(v7, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88A9458()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = v1(0);
  OUTLINED_FUNCTION_202_0(*(v7 + 28));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v9, v8);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v10, v11, v12);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88A953C()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v4, v5, v1);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C88A95E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_333();
  v9(v8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_194();
  v11 = OUTLINED_FUNCTION_184();
  v12(v11);
  return a6(v6);
}

void Siri_Nlu_External_RewrittenUtterance.rewrittenUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = sub_1C8BD493C();
  OUTLINED_FUNCTION_278_0(v8);
  OUTLINED_FUNCTION_13_1();
  *(v0 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_116_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_38_4(v13);
  v15 = type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v14);
  OUTLINED_FUNCTION_32_5(*(v15 + 20));
  OUTLINED_FUNCTION_73(v7);
  if (v16)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_73(v7);
    if (!v16)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_4();
    v18(v17);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

double sub_1C88A9884()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  result = OUTLINED_FUNCTION_2_12(*(v2 + 24));
  if (!v5)
  {
    return v4;
  }

  return result;
}

void Siri_Nlu_External_RewrittenUtterance.score.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 24));
}

uint64_t Siri_Nlu_External_RewrittenUtterance.score.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v2) + 24);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_External_RewrittenUtterance.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_RewrittenUtterance(0);
  OUTLINED_FUNCTION_485();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_38(*(v1 + 24));
  *(v6 + 8) = 1;
}

uint64_t Siri_Nlu_External_AsrHypothesis.id.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_AsrHypothesis(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_452(v7);
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}