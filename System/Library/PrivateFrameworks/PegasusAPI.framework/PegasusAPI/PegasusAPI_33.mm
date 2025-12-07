uint64_t sub_1B9003834()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result, &qword_1EBAB9168, &qword_1B964D950);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userSelection, &qword_1EBAC06D8, &qword_1B966F960);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection, &qword_1EBAC0730, &qword_1B966F9B8);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes), *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes + 8));

  return v0;
}

void sub_1B9003964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B9006E98(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        break;
      case 2:
        sub_1B9003B3C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B9003C18(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B9003CF4(a2, a1, a3, a4);
        break;
      case 5:
        v11 = MEMORY[0x1E69AAC78];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes;
        goto LABEL_12;
      case 6:
        sub_1B9003DD0(a2, a1, a3, a4);
        break;
      case 7:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier;
LABEL_12:
        sub_1B9003EAC(v12, v13, v14, v15, v16, v11);
        break;
      case 8:
        sub_1B9003F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType, sub_1B9023AEC, &type metadata for Apple_Parsec_Feedback_V2_UserReportType);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9003B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9003C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9003CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9003DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  sub_1B964C570();
  return swift_endAccess();
}

void sub_1B9003EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_819();
  v7 = v6;
  OUTLINED_FUNCTION_132_5();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v8 = v7();
  OUTLINED_FUNCTION_199_1(v8);
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B9003F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  OUTLINED_FUNCTION_601_0();
  v9 = sub_1B964C420();
  return OUTLINED_FUNCTION_199_1(v9);
}

uint64_t sub_1B9003FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = v37 - v7;
  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x1EEE9AC00](v38);
  v37[1] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = v37 - v10;
  v40 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x1EEE9AC00](v40);
  v37[2] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v37 - v13;
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  v16 = a1;
  if (!*(a1 + 16) || (result = sub_1B964C720(), !v4))
  {
    v44 = v4;
    swift_beginAccess();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1B8D9207C(v14, &qword_1EBAB9168, &qword_1B964D950);
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
      v18 = v44;
      sub_1B964C740();
      result = sub_1B8FAC5C8();
      if (v18)
      {
        return result;
      }

      v44 = 0;
    }

    swift_beginAccess();
    v19 = v39;
    sub_1B8F1B8B8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v40);
    v21 = v41;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v19, &qword_1EBAC06D8, &qword_1B966F960);
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
      v22 = v44;
      sub_1B964C740();
      result = sub_1B8FAC5C8();
      if (v22)
      {
        return result;
      }

      v44 = 0;
    }

    swift_beginAccess();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v21, 1, v38) == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBAC0730, &qword_1B966F9B8);
      v23 = v44;
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
      v24 = v44;
      sub_1B964C740();
      v23 = v24;
      result = sub_1B8FAC5C8();
      if (v24)
      {
        return result;
      }
    }

    v25 = v16 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes;
    swift_beginAccess();
    if (sub_1B8D99EA8(*v25, *(v25 + 8)) || (v27 = *v25, v26 = *(v25 + 8), sub_1B8D91FCC(v27, v26), sub_1B964C6A0(), result = sub_1B8D538A0(v27, v26), !v23))
    {
      v28 = v23;
      v29 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
      swift_beginAccess();
      if (*(*(v16 + v29) + 16))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
        sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

        sub_1B964C730();
        v30 = v28;

        if (v28)
        {
          return result;
        }
      }

      else
      {
        v30 = v28;
      }

      v31 = (v16 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
      swift_beginAccess();
      v32 = *v31;
      v33 = v31[1];
      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v34 || (, sub_1B964C700(), result = , !v30))
      {
        v35 = v16 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
        result = swift_beginAccess();
        if (*v35)
        {
          v36 = *(v35 + 8);
          v42 = *v35;
          v43 = v36;
          sub_1B9023AEC();
          return sub_1B964C680();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B90047CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v12, v13, MEMORY[0x1E69AAC10]);
  v14 = OUTLINED_FUNCTION_288();
  return OUTLINED_FUNCTION_656_0(v14, v15) & 1;
}

BOOL sub_1B9004898(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x1EEE9AC00](v84);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0780, &qword_1B966FA20);
  MEMORY[0x1EEE9AC00](v83);
  v7 = &v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v79 - v11;
  v89 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28);
  MEMORY[0x1EEE9AC00](v88);
  v93 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v79 - v17;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v91 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  swift_beginAccess();
  v28 = *(a1 + 16);
  swift_beginAccess();
  if (v28 != *(a2 + 16))
  {
    return 0;
  }

  v79 = v5;
  v80 = v7;
  v86 = a2;
  swift_beginAccess();
  v29 = v86;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v30 = *(v20 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v18) == 1)
  {

    sub_1B8D9207C(v27, &qword_1EBAB9168, &qword_1B964D950);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v22[v30], 1, v18);
    v32 = v93;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAB9168, &qword_1B964D950);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v33 = v91;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v22[v30], 1, v18) == 1)
  {

    sub_1B8D9207C(v27, &qword_1EBAB9168, &qword_1B964D950);
    sub_1B8FAC5C8();
LABEL_7:
    v34 = &qword_1EBAB9170;
    v35 = &qword_1B964D958;
    v36 = v22;
LABEL_26:
    sub_1B8D9207C(v36, v34, v35);
    goto LABEL_27;
  }

  v37 = v87;
  sub_1B8FAC528();
  v38 = *(v18 + 20);
  v39 = *&v33[v38];
  v40 = *&v37[v38];

  if (v39 != v40)
  {

    v41 = sub_1B8FB7DA4(v39, v40);

    if (!v41)
    {
      sub_1B8FAC5C8();
      sub_1B8D9207C(v27, &qword_1EBAB9168, &qword_1B964D950);
      sub_1B8FAC5C8();
      v36 = v22;
      v34 = &qword_1EBAB9168;
      v35 = &qword_1B964D950;
      goto LABEL_26;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v42 = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v27, &qword_1EBAB9168, &qword_1B964D950);
  sub_1B8FAC5C8();
  v29 = v86;
  sub_1B8D9207C(v22, &qword_1EBAB9168, &qword_1B964D950);
  v32 = v93;
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  swift_beginAccess();
  v43 = v92;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v44 = *(v88 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v45 = v89;
  if (__swift_getEnumTagSinglePayload(v32, 1, v89) != 1)
  {
    v48 = v85;
    sub_1B8F1B8B8();
    v49 = __swift_getEnumTagSinglePayload(v32 + v44, 1, v45);
    v47 = v90;
    if (v49 != 1)
    {
      sub_1B8FAC528();
      v50 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v48);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v92, &qword_1EBAC06D8, &qword_1B966F960);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v32, &qword_1EBAC06D8, &qword_1B966F960);
      if ((v50 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    sub_1B8D9207C(v92, &qword_1EBAC06D8, &qword_1B966F960);
    sub_1B8FAC5C8();
LABEL_16:
    v34 = &qword_1EBAC0788;
    v35 = &qword_1B966FA28;
LABEL_25:
    v36 = v32;
    goto LABEL_26;
  }

  sub_1B8D9207C(v43, &qword_1EBAC06D8, &qword_1B966F960);
  v46 = __swift_getEnumTagSinglePayload(v32 + v44, 1, v45);
  v47 = v90;
  if (v46 != 1)
  {
    goto LABEL_16;
  }

  sub_1B8D9207C(v32, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_18:
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v51 = *(v83 + 48);
  v32 = v80;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v52 = v84;
  if (__swift_getEnumTagSinglePayload(v32, 1, v84) == 1)
  {
    sub_1B8D9207C(v47, &qword_1EBAC0730, &qword_1B966F9B8);
    if (__swift_getEnumTagSinglePayload(v32 + v51, 1, v52) == 1)
    {
      sub_1B8D9207C(v32, &qword_1EBAC0730, &qword_1B966F9B8);
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v32 + v51, 1, v52) == 1)
  {
    sub_1B8D9207C(v47, &qword_1EBAC0730, &qword_1B966F9B8);
    sub_1B8FAC5C8();
LABEL_24:
    v34 = &qword_1EBAC0780;
    v35 = &qword_1B966FA20;
    goto LABEL_25;
  }

  sub_1B8FAC528();
  v55 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v47, &qword_1EBAC0730, &qword_1B966F9B8);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v32, &qword_1EBAC0730, &qword_1B966F9B8);
  if (v55)
  {
LABEL_31:
    v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
    swift_beginAccess();
    v58 = *v56;
    v57 = v56[1];
    v59 = (v29 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
    swift_beginAccess();
    v61 = *v59;
    v60 = v59[1];
    sub_1B8D91FCC(v58, v57);
    sub_1B8D91FCC(v61, v60);
    v62 = MEMORY[0x1BFADC060](v58, v57, v61, v60);
    sub_1B8D538A0(v61, v60);
    sub_1B8D538A0(v58, v57);
    if (v62)
    {
      v63 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
      swift_beginAccess();
      v64 = *(a1 + v63);
      v65 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
      swift_beginAccess();
      v66 = *(v29 + v65);

      sub_1B8D7FB3C(v64, v66);
      v68 = v67;

      if (v68)
      {
        v69 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
        swift_beginAccess();
        v70 = *v69;
        v71 = v69[1];
        v72 = (v29 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
        swift_beginAccess();
        v73 = v70 == *v72 && v71 == v72[1];
        if (v73 || (sub_1B964C9F0() & 1) != 0)
        {
          v74 = a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
          swift_beginAccess();
          v75 = *v74;
          v76 = *(v74 + 8);

          v77 = (v29 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType);
          swift_beginAccess();
          v78 = *v77;

          return sub_1B8D92198(v75, v76, v78);
        }
      }
    }
  }

LABEL_27:

  return 0;
}

uint64_t sub_1B9005654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C20, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90056D4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A80, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9005744(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1A80, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B90057D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05E0);
  __swift_project_value_buffer(v0, qword_1EBAC05E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "country";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceModel";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "locale";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "osVersion";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v9 = v3 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_850();
  v12 = v3 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_40();
  v15 = sub_1B8CD2450(v13, v14, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v15) & 1;
}

uint64_t sub_1B9005CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C18, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9005D78(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9005DE8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9005E74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05F8);
  __swift_project_value_buffer(v0, qword_1EBAC05F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "collectionStartTimestamp";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "collectionEndTimestamp";
  *(v9 + 8) = 22;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "client";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "totalUsagesInCollectionPeriod";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "context";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "configuredLookbackTimeInDays";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "activeDaysInCollectionPeriod";
  *(v19 + 1) = 28;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "totalEngagements";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "isDiagnosticsAndUsageEnabled";
  *(v23 + 1) = 28;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "invokedDays";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "zkwEngagedDays";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "searchedDays";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "suggestionOrAppleResultEngagedDays";
  *(v31 + 1) = 34;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "webEngagedDays";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "voiceSearchDays";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "numSearchEngagements";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B90063E8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 44) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__context;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements) = 0;
  return v0;
}

uint64_t sub_1B90064C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34[1] = v34 - v4;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  v5 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__context;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays) = 0;
  v35 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod) = 0;
  v36 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements) = 0;
  v37 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled) = 0;
  v38 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays) = 0;
  v39 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays) = 0;
  v40 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays) = 0;
  v41 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays) = 0;
  v42 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays) = 0;
  v43 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays) = 0;
  v44 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements) = 0;
  swift_beginAccess();
  v8 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v8;
  swift_beginAccess();
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v9;
  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v10;
  *(v1 + 40) = v11;
  swift_beginAccess();
  LODWORD(v10) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v10;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + v12);
  swift_beginAccess();
  *(v1 + v7) = v12;
  v13 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + v13);
  v14 = v35;
  swift_beginAccess();
  *(v1 + v14) = v13;
  v15 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
  swift_beginAccess();
  LODWORD(v15) = *(a1 + v15);
  v16 = v36;
  swift_beginAccess();
  *(v1 + v16) = v15;
  v17 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + v17);
  v18 = v37;
  swift_beginAccess();
  *(v1 + v18) = v17;
  v19 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
  swift_beginAccess();
  LODWORD(v19) = *(a1 + v19);
  v20 = v38;
  swift_beginAccess();
  *(v1 + v20) = v19;
  v21 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
  swift_beginAccess();
  LODWORD(v21) = *(a1 + v21);
  v22 = v39;
  swift_beginAccess();
  *(v1 + v22) = v21;
  v23 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
  swift_beginAccess();
  LODWORD(v23) = *(a1 + v23);
  v24 = v40;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
  swift_beginAccess();
  LODWORD(v25) = *(a1 + v25);
  v26 = v41;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
  swift_beginAccess();
  LODWORD(v27) = *(a1 + v27);
  v28 = v42;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
  swift_beginAccess();
  LODWORD(v29) = *(a1 + v29);
  v30 = v43;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
  swift_beginAccess();
  LODWORD(v31) = *(a1 + v31);

  v32 = v44;
  swift_beginAccess();
  *(v1 + v32) = v31;
  return v1;
}

uint64_t sub_1B9006A30()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__context, &qword_1EBAC07F0, &qword_1B966FA90);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B9006B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B9006E98(a2, a1, a3, a4, MEMORY[0x1E69AACA8]);
        continue;
      case 2:
        sub_1B9006EF0(a2, a1, a3, a4, MEMORY[0x1E69AACA8]);
        continue;
      case 3:
        sub_1B9006F48(a2, a1, a3, a4, sub_1B9023A98, &type metadata for Apple_Parsec_Feedback_V2_Client);
        continue;
      case 4:
        sub_1B900C204(a2, a1, a3, a4, MEMORY[0x1E69AAC98]);
        continue;
      case 5:
        sub_1B9006FC0(a2, a1, a3, a4);
        continue;
      case 6:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
        goto LABEL_19;
      case 7:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
        goto LABEL_19;
      case 8:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
        goto LABEL_19;
      case 9:
        sub_1B900709C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled);
        continue;
      case 10:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
        goto LABEL_19;
      case 11:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
        goto LABEL_19;
      case 12:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
        goto LABEL_19;
      case 13:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
        goto LABEL_19;
      case 14:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
        goto LABEL_19;
      case 15:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
        goto LABEL_19;
      case 16:
        v11 = MEMORY[0x1E69AAC98];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
LABEL_19:
        sub_1B900C4C4(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

void sub_1B9006E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

void sub_1B9006EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

void sub_1B9006F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_819();
  v7 = v6;
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  v7(v8);
  OUTLINED_FUNCTION_601_0();
  v9 = sub_1B964C420();
  OUTLINED_FUNCTION_199_1(v9);
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B9006FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B900709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v5 = sub_1B964C400();
  OUTLINED_FUNCTION_199_1(v5);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B9007134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B964C6D0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_1B964C6D0(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (v12 = *(a1 + 40), v24[37] = *(a1 + 32), v25 = v12, sub_1B9023A98(), result = sub_1B964C680(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 44) || (result = sub_1B964C6C0(), !v4))
        {
          v26 = a4;
          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
          {
            sub_1B8D9207C(v9, &qword_1EBAC07F0, &qword_1B966FA90);
          }

          else
          {
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
            sub_1B964C740();
            result = sub_1B8FAC5C8();
            if (v4)
            {
              return result;
            }
          }

          v13 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
          swift_beginAccess();
          if (!*(a1 + v13) || (result = sub_1B964C6C0(), !v4))
          {
            v14 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
            swift_beginAccess();
            if (!*(a1 + v14) || (result = sub_1B964C6C0(), !v4))
            {
              v15 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
              swift_beginAccess();
              if (!*(a1 + v15) || (result = sub_1B964C6C0(), !v4))
              {
                v16 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
                swift_beginAccess();
                if (*(a1 + v16) != 1 || (result = sub_1B964C670(), !v4))
                {
                  v17 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
                  swift_beginAccess();
                  if (!*(a1 + v17) || (result = sub_1B964C6C0(), !v4))
                  {
                    v18 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
                    swift_beginAccess();
                    if (!*(a1 + v18) || (result = sub_1B964C6C0(), !v4))
                    {
                      v19 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
                      swift_beginAccess();
                      if (!*(a1 + v19) || (result = sub_1B964C6C0(), !v4))
                      {
                        v20 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
                        swift_beginAccess();
                        if (!*(a1 + v20) || (result = sub_1B964C6C0(), !v4))
                        {
                          v21 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
                          swift_beginAccess();
                          if (!*(a1 + v21) || (result = sub_1B964C6C0(), !v4))
                          {
                            v22 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
                            swift_beginAccess();
                            if (!*(a1 + v22) || (result = sub_1B964C6C0(), !v4))
                            {
                              v23 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
                              swift_beginAccess();
                              result = *(a1 + v23);
                              if (result)
                              {
                                return sub_1B964C6C0();
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

  return result;
}

BOOL sub_1B90076F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0C30, &qword_1B966FAD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v45 - v12;
  swift_beginAccess();
  v14 = *(a1 + 16);
  swift_beginAccess();
  if (v14 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 24);
  swift_beginAccess();
  if (v15 != *(a2 + 24))
  {
    return 0;
  }

  v45[0] = v7;
  swift_beginAccess();
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  swift_beginAccess();
  if (!sub_1B8D92198(v16, v17, *(a2 + 32)))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 44);
  swift_beginAccess();
  if (v18 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v19 = *(v5 + 48);
  v20 = v45[0];
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v4) == 1)
  {

    sub_1B8D9207C(v13, &qword_1EBAC07F0, &qword_1B966FA90);
    if (__swift_getEnumTagSinglePayload(v20 + v19, 1, v4) == 1)
    {
      sub_1B8D9207C(v20, &qword_1EBAC07F0, &qword_1B966FA90);
LABEL_12:
      v22 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
      swift_beginAccess();
      LODWORD(v22) = *(a1 + v22);
      v23 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
      swift_beginAccess();
      if (v22 == *(a2 + v23))
      {
        v24 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
        swift_beginAccess();
        LODWORD(v24) = *(a1 + v24);
        v25 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
        swift_beginAccess();
        if (v24 == *(a2 + v25))
        {
          v26 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
          swift_beginAccess();
          LODWORD(v26) = *(a1 + v26);
          v27 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
          swift_beginAccess();
          if (v26 == *(a2 + v27))
          {
            v28 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
            swift_beginAccess();
            LODWORD(v28) = *(a1 + v28);
            v29 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
            swift_beginAccess();
            if (v28 == *(a2 + v29))
            {
              v30 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
              swift_beginAccess();
              LODWORD(v30) = *(a1 + v30);
              v31 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
              swift_beginAccess();
              if (v30 == *(a2 + v31))
              {
                v32 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
                swift_beginAccess();
                LODWORD(v32) = *(a1 + v32);
                v33 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
                swift_beginAccess();
                if (v32 == *(a2 + v33))
                {
                  v34 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
                  swift_beginAccess();
                  LODWORD(v34) = *(a1 + v34);
                  v35 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
                  swift_beginAccess();
                  if (v34 == *(a2 + v35))
                  {
                    v36 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
                    swift_beginAccess();
                    LODWORD(v36) = *(a1 + v36);
                    v37 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
                    swift_beginAccess();
                    if (v36 == *(a2 + v37))
                    {
                      v38 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
                      swift_beginAccess();
                      LODWORD(v38) = *(a1 + v38);
                      v39 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
                      swift_beginAccess();
                      if (v38 == *(a2 + v39))
                      {
                        v40 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
                        swift_beginAccess();
                        LODWORD(v40) = *(a1 + v40);
                        v41 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
                        swift_beginAccess();
                        if (v40 == *(a2 + v41))
                        {
                          v42 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
                          swift_beginAccess();
                          LODWORD(v42) = *(a1 + v42);

                          v43 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
                          swift_beginAccess();
                          LODWORD(v43) = *(a2 + v43);

                          return v42 == v43;
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

      goto LABEL_23;
    }

    goto LABEL_10;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20 + v19, 1, v4) == 1)
  {

    sub_1B8D9207C(v13, &qword_1EBAC07F0, &qword_1B966FA90);
    sub_1B8FAC5C8();
LABEL_10:
    sub_1B8D9207C(v20, &qword_1EBAC0C30, &qword_1B966FAD0);
    goto LABEL_23;
  }

  sub_1B8FAC528();

  v21 = static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(v11);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v13, &qword_1EBAC07F0, &qword_1B966FA90);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v20, &qword_1EBAC07F0, &qword_1B966FA90);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_23:

  return 0;
}

uint64_t sub_1B9007F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C10, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9007FB4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9008024(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return sub_1B964C5D0();
}

uint64_t sub_1B90080B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0618);
  __swift_project_value_buffer(v0, qword_1EBAC0618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B9652FF0;
  v4 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v4 = "localGoto";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v48 + v3 + v2 + v1[14];
  *(v48 + v3 + v2) = 2;
  *v8 = "localTap";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v48 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "parsecGoto";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v48 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "parsecTap";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v48 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "thirdPartyGoto";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v48 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thirdPartyTap";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v48 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "thirdPartyCompletionOrRecentSearch";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v7();
  v19 = (v48 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "goToSite";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v48 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "other";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v48 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "parsecWeb";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v48 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "parsecAppStore";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v48 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "parsecMaps";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v7();
  v29 = (v48 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "parsecWiki";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v48 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "parsecNews";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v7();
  v33 = (v48 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "parsecStocks";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v48 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "parsecWeather";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v48 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "parsecOther";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v48 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 10;
  *v40 = "totalEngagements";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v48 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "topHitTriggerRatio";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v7();
  v43 = (v48 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "totalTopHitEngagements";
  *(v44 + 1) = 22;
  v44[16] = 2;
  v7();
  v45 = (v48 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "engagementShareRatio";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9008758()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v3 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B90087DC(_DWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32[1] = v32 - v6;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v7 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v33 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v9 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  swift_beginAccess();
  v11 = a1[4];
  swift_beginAccess();
  *(v1 + 16) = v11;
  swift_beginAccess();
  v12 = a1[5];
  swift_beginAccess();
  *(v1 + 20) = v12;
  swift_beginAccess();
  v13 = a1[6];
  swift_beginAccess();
  *(v1 + 24) = v13;
  swift_beginAccess();
  v14 = a1[7];
  swift_beginAccess();
  *(v1 + 28) = v14;
  swift_beginAccess();
  v15 = a1[8];
  swift_beginAccess();
  *(v1 + 32) = v15;
  swift_beginAccess();
  v16 = a1[9];
  swift_beginAccess();
  *(v1 + 36) = v16;
  swift_beginAccess();
  v17 = a1[10];
  swift_beginAccess();
  *(v1 + 40) = v17;
  swift_beginAccess();
  v18 = a1[11];
  swift_beginAccess();
  *(v1 + 44) = v18;
  swift_beginAccess();
  v19 = a1[12];
  swift_beginAccess();
  *(v1 + 48) = v19;
  swift_beginAccess();
  v20 = a1[13];
  swift_beginAccess();
  *(v1 + 52) = v20;
  swift_beginAccess();
  v21 = a1[14];
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  v22 = a1[15];
  swift_beginAccess();
  *(v1 + 60) = v22;
  swift_beginAccess();
  v23 = a1[16];
  swift_beginAccess();
  *(v1 + 64) = v23;
  swift_beginAccess();
  v24 = a1[17];
  swift_beginAccess();
  *(v1 + 68) = v24;
  swift_beginAccess();
  v25 = a1[18];
  swift_beginAccess();
  *(v1 + 72) = v25;
  swift_beginAccess();
  v26 = a1[19];
  swift_beginAccess();
  *(v1 + 76) = v26;
  swift_beginAccess();
  v27 = a1[20];
  swift_beginAccess();
  *(v1 + 80) = v27;
  swift_beginAccess();
  v28 = a1[21];
  swift_beginAccess();
  *(v1 + 84) = v28;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v29) = *(a1 + v29);
  v30 = v33;
  swift_beginAccess();
  *(v1 + v30) = v29;
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B9008DE4()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio, &qword_1EBAC0800, &qword_1B966FAA0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B9008EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B900BFB0(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 2:
        sub_1B900C008(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B900C05C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B900C0B0(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B900C104(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B900C158(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B900C1AC(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 8:
        sub_1B900C204(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 9:
        sub_1B900C25C(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 10:
        sub_1B900C770(a2, a1, a3, a4, MEMORY[0x1E69AAC98]);
        break;
      case 11:
        sub_1B900C2B4(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 12:
        sub_1B900C524(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B900C578(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B900C5CC(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B900C620(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B900C674(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B900C6C8(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B900C71C(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B900923C(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B900C4C4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements, MEMORY[0x1E69AAC98]);
        break;
      case 21:
        sub_1B9009318(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B900923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9009318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9009434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v17 = v16 - v7;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x1EEE9AC00](v18);
  v16[2] = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - v10;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 20) == 0.0 || (result = sub_1B964C6B0(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 24) == 0.0 || (result = sub_1B964C6B0(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 28) == 0.0 || (result = sub_1B964C6B0(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 32) == 0.0 || (result = sub_1B964C6B0(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 36) == 0.0 || (result = sub_1B964C6B0(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 40) == 0.0 || (result = sub_1B964C6B0(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 44) == 0.0 || (result = sub_1B964C6B0(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 48) == 0.0 || (result = sub_1B964C6B0(), !v4))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 84) || (result = sub_1B964C6C0(), !v4))
                    {
                      swift_beginAccess();
                      if (*(a1 + 52) == 0.0 || (result = sub_1B964C6B0(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 56) == 0.0 || (result = sub_1B964C6B0(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 60) == 0.0 || (result = sub_1B964C6B0(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 64) == 0.0 || (result = sub_1B964C6B0(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 68) == 0.0 || (result = sub_1B964C6B0(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 72) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                {
                                  swift_beginAccess();
                                  if (*(a1 + 76) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 80) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                    {
                                      v16[1] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
                                      swift_beginAccess();
                                      sub_1B8F1B8B8();
                                      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
                                      {
                                        sub_1B8D9207C(v11, &qword_1EBAC07F8, &qword_1B966FA98);
                                      }

                                      else
                                      {
                                        sub_1B8FAC528();
                                        sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                                        sub_1B964C740();
                                        result = sub_1B8FAC5C8();
                                        if (v4)
                                        {
                                          return result;
                                        }
                                      }

                                      v14 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
                                      swift_beginAccess();
                                      if (!*(a1 + v14) || (result = sub_1B964C6C0(), !v4))
                                      {
                                        swift_beginAccess();
                                        v15 = v17;
                                        sub_1B8F1B8B8();
                                        if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
                                        {
                                          return sub_1B8D9207C(v15, &qword_1EBAC0800, &qword_1B966FAA0);
                                        }

                                        else
                                        {
                                          sub_1B8FAC528();
                                          sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
                                          sub_1B964C740();
                                          return sub_1B8FAC5C8();
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
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B9009C9C(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x1EEE9AC00](v60);
  v57 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20B8, &qword_1B967F560);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v10;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20C0, &qword_1B967F568);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  swift_beginAccess();
  v23 = *(a1 + 16);
  swift_beginAccess();
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 20);
  swift_beginAccess();
  if (v24 != *(a2 + 20))
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 24);
  swift_beginAccess();
  if (v25 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 28);
  swift_beginAccess();
  if (v26 != *(a2 + 28))
  {
    return 0;
  }

  swift_beginAccess();
  v27 = *(a1 + 32);
  swift_beginAccess();
  if (v27 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 36);
  swift_beginAccess();
  if (v28 != *(a2 + 36))
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 40);
  swift_beginAccess();
  if (v29 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 44);
  swift_beginAccess();
  if (v30 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  v31 = *(a1 + 48);
  swift_beginAccess();
  if (v31 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 52);
  swift_beginAccess();
  if (v32 != *(a2 + 52))
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 56);
  swift_beginAccess();
  if (v33 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 60);
  swift_beginAccess();
  if (v34 != *(a2 + 60))
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 64);
  swift_beginAccess();
  if (v35 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 68);
  swift_beginAccess();
  if (v36 != *(a2 + 68))
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 72);
  swift_beginAccess();
  if (v37 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 76);
  swift_beginAccess();
  if (v38 != *(a2 + 76))
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 80);
  swift_beginAccess();
  if (v39 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  LODWORD(v56) = *(a1 + 84);
  swift_beginAccess();
  if (v56 != *(a2 + 84))
  {
    return 0;
  }

  v56 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  sub_1B8F1B8B8();
  v56 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  v40 = *(v14 + 48);
  sub_1B8F1B8B8();
  v56 = v40;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
  {

    sub_1B8D9207C(v22, &qword_1EBAC07F8, &qword_1B966FA98);
    if (__swift_getEnumTagSinglePayload(&v16[v56], 1, v11) == 1)
    {
      sub_1B8D9207C(v16, &qword_1EBAC07F8, &qword_1B966FA98);
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v16[v56], 1, v11) == 1)
  {

    sub_1B8D9207C(v22, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
LABEL_29:
    v46 = &qword_1EBAC20C0;
    v47 = &qword_1B967F568;
    v48 = v16;
LABEL_36:
    sub_1B8D9207C(v48, v46, v47);
    goto LABEL_37;
  }

  sub_1B8FAC528();
  if (*v20 != *v13 || v20[1] != v13[1] || *(v20 + 2) != *(v13 + 2))
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v22, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
    v48 = v16;
    v46 = &qword_1EBAC07F8;
    v47 = &qword_1B966FA98;
    goto LABEL_36;
  }

  sub_1B964C2B0();
  v56 = sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);

  LODWORD(v56) = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v22, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v16, &qword_1EBAC07F8, &qword_1B966FA98);
  if ((v56 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_22:
  v41 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v41) = *(a1 + v41);
  v42 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  if (v41 != *(a2 + v42))
  {
LABEL_37:

    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v43 = *(v5 + 48);
  v44 = v61;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v44, 1, v60) == 1)
  {

    sub_1B8D9207C(v59, &qword_1EBAC0800, &qword_1B966FAA0);
    if (__swift_getEnumTagSinglePayload(v61 + v43, 1, v60) == 1)
    {
      sub_1B8D9207C(v61, &qword_1EBAC0800, &qword_1B966FAA0);
      return 1;
    }

    goto LABEL_41;
  }

  v49 = v61;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v49 + v43, 1, v60) == 1)
  {

    sub_1B8D9207C(v59, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
LABEL_41:
    v50 = &qword_1EBAC20B8;
    v51 = &qword_1B967F560;
    v52 = v61;
LABEL_47:
    sub_1B8D9207C(v52, v50, v51);
    return 0;
  }

  v53 = v57;
  sub_1B8FAC528();
  if (*v58 != *v53 || v58[1] != v57[1])
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v59, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
    v52 = v61;
    v50 = &qword_1EBAC0800;
    v51 = &qword_1B966FAA0;
    goto LABEL_47;
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v54 = sub_1B964C850();

  sub_1B8FAC5C8();
  sub_1B8D9207C(v59, &qword_1EBAC0800, &qword_1B966FAA0);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v61, &qword_1EBAC0800, &qword_1B966FAA0);
  return (v54 & 1) != 0;
}

uint64_t sub_1B900AA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C08, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900AB00(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900AB70(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return sub_1B964C5D0();
}

uint64_t sub_1B900ABFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0638);
  __swift_project_value_buffer(v0, qword_1EBAC0638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1B964EE50;
  v4 = v53 + v3;
  v5 = v53 + v3 + v1[14];
  *(v53 + v3) = 1;
  *v5 = "appLaunch";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "onDeviceAddressBookData";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "onDeviceOtherPersonalData";
  *(v11 + 1) = 25;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "punchout";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "thirdPartyInAppContent";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parsec";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "querySuggestion";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "other";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "totalEngagements";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "siriSuggestions";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 14;
  *v27 = "parsecWeb";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 15;
  *v29 = "parsecAppStore";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 16;
  *v31 = "parsecMaps";
  *(v31 + 1) = 10;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 17;
  *v33 = "parsecWiki";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 18;
  *v35 = "parsecNews";
  *(v35 + 1) = 10;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 19;
  *v37 = "parsecStocks";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 20;
  *v39 = "parsecWeather";
  *(v39 + 1) = 13;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 21;
  *v41 = "parsecOther";
  *(v41 + 1) = 11;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 22;
  *v43 = "webSuggestions";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 11;
  *v45 = "topHitTriggerRatio";
  *(v45 + 1) = 18;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 12;
  *v47 = "querySuggestionTriggerRatio";
  *(v47 + 1) = 27;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 13;
  *v49 = "totalTopHitEngagements";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "engagementShareRatio";
  *(v51 + 1) = 20;
  v51[16] = 2;
  v8();
  return sub_1B964C760();
}

_OWORD *sub_1B900B330()
{
  *(v0 + 76) = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v1 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v3 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B900B3DC(_DWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33[0] = v33 - v6;
  *(v1 + 76) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v7 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v33[1] = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio, 1, 1, v8);
  v34 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v9 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v35 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  swift_beginAccess();
  v11 = a1[4];
  swift_beginAccess();
  *(v1 + 16) = v11;
  swift_beginAccess();
  v12 = a1[5];
  swift_beginAccess();
  *(v1 + 20) = v12;
  swift_beginAccess();
  v13 = a1[6];
  swift_beginAccess();
  *(v1 + 24) = v13;
  swift_beginAccess();
  v14 = a1[7];
  swift_beginAccess();
  *(v1 + 28) = v14;
  swift_beginAccess();
  v15 = a1[8];
  swift_beginAccess();
  *(v1 + 32) = v15;
  swift_beginAccess();
  v16 = a1[9];
  swift_beginAccess();
  *(v1 + 36) = v16;
  swift_beginAccess();
  v17 = a1[10];
  swift_beginAccess();
  *(v1 + 40) = v17;
  swift_beginAccess();
  v18 = a1[11];
  swift_beginAccess();
  *(v1 + 44) = v18;
  swift_beginAccess();
  v19 = a1[12];
  swift_beginAccess();
  *(v1 + 48) = v19;
  swift_beginAccess();
  v20 = a1[13];
  swift_beginAccess();
  *(v1 + 52) = v20;
  swift_beginAccess();
  v21 = a1[14];
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  v22 = a1[15];
  swift_beginAccess();
  *(v1 + 60) = v22;
  swift_beginAccess();
  v23 = a1[16];
  swift_beginAccess();
  *(v1 + 64) = v23;
  swift_beginAccess();
  v24 = a1[17];
  swift_beginAccess();
  *(v1 + 68) = v24;
  swift_beginAccess();
  v25 = a1[18];
  swift_beginAccess();
  *(v1 + 72) = v25;
  swift_beginAccess();
  v26 = a1[19];
  swift_beginAccess();
  *(v1 + 76) = v26;
  swift_beginAccess();
  v27 = a1[20];
  swift_beginAccess();
  *(v1 + 80) = v27;
  swift_beginAccess();
  v28 = a1[21];
  swift_beginAccess();
  *(v1 + 84) = v28;
  swift_beginAccess();
  v29 = a1[22];
  swift_beginAccess();
  *(v1 + 88) = v29;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + v30);
  v31 = v34;
  swift_beginAccess();
  *(v1 + v31) = v30;
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B900BAA8()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio, &qword_1EBAC0800, &qword_1B966FAA0);
  return v0;
}

uint64_t sub_1B900BB48(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B900BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B900BFB0(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 2:
        sub_1B900C008(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B900C05C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B900C0B0(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B900C104(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B900C158(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B900C1AC(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 8:
        sub_1B900C204(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 9:
        sub_1B900C25C(a2, a1, a3, a4, MEMORY[0x1E69AAC98]);
        break;
      case 10:
        sub_1B900C2B4(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 11:
        sub_1B900C30C(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B900C3E8(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B900C4C4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements, MEMORY[0x1E69AAC98]);
        break;
      case 14:
        sub_1B900C524(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B900C578(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B900C5CC(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B900C620(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B900C674(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B900C6C8(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B900C71C(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B900C770(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 22:
        sub_1B900C7C8(a2, a1, a3, a4, MEMORY[0x1E69AAC88]);
        break;
      case 23:
        sub_1B900C820(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

void sub_1B900BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

void sub_1B900C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

void sub_1B900C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

void sub_1B900C25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

void sub_1B900C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B900C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B900C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B900C4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_819();
  v7 = v6;
  OUTLINED_FUNCTION_132_5();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v8 = v7();
  OUTLINED_FUNCTION_199_1(v8);
  OUTLINED_FUNCTION_818();
}

void sub_1B900C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C490();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B900C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

void sub_1B900C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B900C820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B900C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v22 - v8;
  v24 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x1EEE9AC00](v24);
  v22[2] = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13;
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v25 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 20) == 0.0 || (result = sub_1B964C6B0(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 24) == 0.0 || (result = sub_1B964C6B0(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 28) == 0.0 || (result = sub_1B964C6B0(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 32) == 0.0 || (result = sub_1B964C6B0(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 36) == 0.0 || (result = sub_1B964C6B0(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 40) == 0.0 || (result = sub_1B964C6B0(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 44) == 0.0 || (result = sub_1B964C6B0(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 48) || (result = sub_1B964C6C0(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 52) == 0.0 || (result = sub_1B964C6B0(), !v4))
                    {
                      v22[1] = a4;
                      swift_beginAccess();
                      sub_1B8F1B8B8();
                      if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
                      {
                        sub_1B8D9207C(v14, &qword_1EBAC07F8, &qword_1B966FA98);
                      }

                      else
                      {
                        sub_1B8FAC528();
                        sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                        sub_1B964C740();
                        result = sub_1B8FAC5C8();
                        if (v4)
                        {
                          return result;
                        }
                      }

                      swift_beginAccess();
                      v19 = v26;
                      sub_1B8F1B8B8();
                      if (__swift_getEnumTagSinglePayload(v19, 1, v15) == 1)
                      {
                        sub_1B8D9207C(v19, &qword_1EBAC07F8, &qword_1B966FA98);
                      }

                      else
                      {
                        sub_1B8FAC528();
                        sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                        sub_1B964C740();
                        result = sub_1B8FAC5C8();
                        if (v4)
                        {
                          return result;
                        }
                      }

                      v20 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
                      swift_beginAccess();
                      if (!*(a1 + v20) || (result = sub_1B964C6C0(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 56) == 0.0 || (result = sub_1B964C6B0(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 60) == 0.0 || (result = sub_1B964C6B0(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 64) == 0.0 || (result = sub_1B964C6B0(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 68) == 0.0 || (result = sub_1B964C6B0(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 72) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                {
                                  swift_beginAccess();
                                  if (*(a1 + 76) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 80) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                    {
                                      swift_beginAccess();
                                      if (*(a1 + 84) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                      {
                                        swift_beginAccess();
                                        if (*(a1 + 88) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                        {
                                          swift_beginAccess();
                                          v21 = v23;
                                          sub_1B8F1B8B8();
                                          if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
                                          {
                                            return sub_1B8D9207C(v21, &qword_1EBAC0800, &qword_1B966FAA0);
                                          }

                                          else
                                          {
                                            sub_1B8FAC528();
                                            sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
                                            sub_1B964C740();
                                            return sub_1B8FAC5C8();
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
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B900D340(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x1EEE9AC00](v78);
  v74 = (v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20B8, &qword_1B967F560);
  MEMORY[0x1EEE9AC00](v75);
  v6 = v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = (v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v77 = v71 - v10;
  v82 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v11 = MEMORY[0x1EEE9AC00](v82);
  v79 = (v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v71 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20C0, &qword_1B967F568);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v81 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = (v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v71 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (v71 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v71 - v29;
  swift_beginAccess();
  v31 = *(a1 + 16);
  swift_beginAccess();
  if (v31 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 20);
  swift_beginAccess();
  if (v32 != *(a2 + 20))
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 24);
  swift_beginAccess();
  if (v33 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 28);
  swift_beginAccess();
  if (v34 != *(a2 + 28))
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 32);
  swift_beginAccess();
  if (v35 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 36);
  swift_beginAccess();
  if (v36 != *(a2 + 36))
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 40);
  swift_beginAccess();
  if (v37 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 44);
  swift_beginAccess();
  if (v38 != *(a2 + 44))
  {
    return 0;
  }

  v73 = v6;
  swift_beginAccess();
  v39 = *(a1 + 48);
  swift_beginAccess();
  if (v39 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 52);
  swift_beginAccess();
  if (v40 != *(a2 + 52))
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 56);
  swift_beginAccess();
  if (v41 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 60);
  swift_beginAccess();
  if (v42 != *(a2 + 60))
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 64);
  swift_beginAccess();
  if (v43 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 68);
  swift_beginAccess();
  if (v44 != *(a2 + 68))
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 72);
  swift_beginAccess();
  if (v45 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 76);
  swift_beginAccess();
  if (v46 != *(a2 + 76))
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 80);
  swift_beginAccess();
  if (v47 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 84);
  swift_beginAccess();
  if (v48 != *(a2 + 84))
  {
    return 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 88);
  swift_beginAccess();
  if (v49 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  v72 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  v50 = *(v15 + 48);
  sub_1B8F1B8B8();
  v72 = v50;
  sub_1B8F1B8B8();
  v51 = v82;
  if (__swift_getEnumTagSinglePayload(v19, 1, v82) == 1)
  {

    sub_1B8D9207C(v30, &qword_1EBAC07F8, &qword_1B966FA98);
    if (__swift_getEnumTagSinglePayload(&v19[v72], 1, v51) == 1)
    {
      sub_1B8D9207C(v19, &qword_1EBAC07F8, &qword_1B966FA98);
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v19[v72], 1, v51) == 1)
  {

    sub_1B8D9207C(v30, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
LABEL_33:
    v59 = &qword_1EBAC20C0;
    v60 = &qword_1B967F568;
    v61 = v19;
LABEL_49:
    sub_1B8D9207C(v61, v59, v60);
    goto LABEL_50;
  }

  sub_1B8FAC528();
  if (*v28 != *v14 || v28[1] != v14[1] || *(v28 + 2) != *(v14 + 2))
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v30, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
    v61 = v19;
    v59 = &qword_1EBAC07F8;
    v60 = &qword_1B966FA98;
    goto LABEL_49;
  }

  v72 = *(v82 + 28);
  sub_1B964C2B0();
  v71[1] = sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);

  LODWORD(v72) = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v30, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v19, &qword_1EBAC07F8, &qword_1B966FA98);
  if ((v72 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_23:
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v52 = *(v15 + 48);
  v53 = v81;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v53, 1, v82) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC07F8, &qword_1B966FA98);
    if (__swift_getEnumTagSinglePayload(v81 + v52, 1, v82) == 1)
    {
      sub_1B8D9207C(v81, &qword_1EBAC07F8, &qword_1B966FA98);
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  v62 = v81;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v62 + v52, 1, v82) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
LABEL_42:
    v59 = &qword_1EBAC20C0;
    v60 = &qword_1B967F568;
    v61 = v81;
    goto LABEL_49;
  }

  v63 = v79;
  sub_1B8FAC528();
  if (*v80 != *v63 || v80[1] != v79[1] || *(v80 + 2) != *(v79 + 2))
  {
    sub_1B8FAC5C8();
    sub_1B8D9207C(v25, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
    v61 = v81;
    v59 = &qword_1EBAC07F8;
    v60 = &qword_1B966FA98;
    goto LABEL_49;
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v64 = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v25, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v81, &qword_1EBAC07F8, &qword_1B966FA98);
  if ((v64 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_26:
  v54 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + v54);
  v55 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  if (v54 != *(a2 + v55))
  {
LABEL_50:

    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v56 = *(v75 + 48);
  v57 = v73;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v57, 1, v78) == 1)
  {

    sub_1B8D9207C(v77, &qword_1EBAC0800, &qword_1B966FAA0);
    if (__swift_getEnumTagSinglePayload(&v73[v56], 1, v78) == 1)
    {
      sub_1B8D9207C(v73, &qword_1EBAC0800, &qword_1B966FAA0);
      return 1;
    }

    goto LABEL_54;
  }

  v65 = v73;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v65 + v56, 1, v78) == 1)
  {

    sub_1B8D9207C(v77, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
LABEL_54:
    v66 = &qword_1EBAC20B8;
    v67 = &qword_1B967F560;
    v68 = v73;
LABEL_60:
    sub_1B8D9207C(v68, v66, v67);
    return 0;
  }

  v69 = v74;
  sub_1B8FAC528();
  if (*v76 != *v69 || v76[1] != v74[1])
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v77, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
    v68 = v73;
    v66 = &qword_1EBAC0800;
    v67 = &qword_1B966FAA0;
    goto LABEL_60;
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v70 = sub_1B964C850();

  sub_1B8FAC5C8();
  sub_1B8D9207C(v77, &qword_1EBAC0800, &qword_1B966FAA0);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v73, &qword_1EBAC0800, &qword_1B966FAA0);
  return (v70 & 1) != 0;
}

uint64_t sub_1B900E4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C00, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, "q");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900E568(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900E5D8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return sub_1B964C5D0();
}

uint64_t sub_1B900E664()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0658);
  __swift_project_value_buffer(v0, qword_1EBAC0658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "zkw";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recentResult";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "other";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "querySuggestion";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "image";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 4;
  *v18 = "totalEngagements";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    OUTLINED_FUNCTION_844();
    if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
    {
      if (*(v1 + 8) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
      {
        if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
        {
          if (*(v1 + 12) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
          {
            if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B900EBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BF8, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900EC20(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, ")");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900EC90(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, ")");

  return sub_1B964C5D0();
}

uint64_t sub_1B900ED1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0670);
  __swift_project_value_buffer(v0, qword_1EBAC0670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalEngagements";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_NewsUsagePropensity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    if (!*(v1 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
      v3 = OUTLINED_FUNCTION_184_2();
      return OUTLINED_FUNCTION_655_0(v3);
    }
  }

  return result;
}

uint64_t sub_1B900F05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BF0, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900F0DC(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900F14C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return sub_1B964C5D0();
}

uint64_t sub_1B900F1D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0688);
  __swift_project_value_buffer(v0, qword_1EBAC0688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "go";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tap";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalEngagements";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_311_0();
      sub_1B964C4A0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    OUTLINED_FUNCTION_844();
    if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
    {
      if (!*(v1 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_EngagementTriggerRatio.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516_0(a1);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_375_0(v3);
  if (!v4 || *(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_40();
  v7 = sub_1B8CD2450(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B900F644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BE8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900F6C4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900F734(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return sub_1B964C5D0();
}

uint64_t sub_1B900F7CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC06A0);
  __swift_project_value_buffer(v0, qword_1EBAC06A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareOfEngagements";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareOfInternetEngagements";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B900F9E4()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v2 + 4, v4, v3);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_1_0();
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EngagementShareRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v1 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    OUTLINED_FUNCTION_844();
    if (v1 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
      v2 = OUTLINED_FUNCTION_184_2();
      return OUTLINED_FUNCTION_655_0(v2);
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_EngagementShareRatio.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516_0(a1);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_375_0(v1);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_40();
  v5 = sub_1B8CD2450(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B900FC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BE0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900FC84(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900FCF4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return sub_1B964C5D0();
}

uint64_t sub_1B900FD80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC06B8);
  __swift_project_value_buffer(v0, qword_1EBAC06B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "usageSinceLookback";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "safariUsagePropensity";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "spotlightUsagePropensity";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "imagesUsagePropensity";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "newsUsagePropensity";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "collectionStartTimestamp";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "collectionEndTimestamp";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "configuredLookbackTimeInDays";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "totalSessions";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "context";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "uuidBytes";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B90102CC(v3, v4, v5, v6);
        break;
      case 2:
        v27 = OUTLINED_FUNCTION_17_3();
        sub_1B90107C4(v27, v28, v29, v30);
        break;
      case 3:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B9010CBC(v15, v16, v17, v18);
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B90111B4(v19, v20, v21, v22);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B90116AC(v7, v8, v9, v10);
        break;
      case 10:
        v31 = OUTLINED_FUNCTION_9();
        sub_1B9011BA4(v31, v32, v33, v34, v35, v36);
        break;
      case 11:
        v37 = OUTLINED_FUNCTION_9();
        sub_1B9011BF8(v37, v38, v39, v40);
        break;
      case 12:
        v23 = OUTLINED_FUNCTION_9();
        sub_1B9011C5C(v23, v24, v25, v26);
        break;
      case 13:
        v45 = OUTLINED_FUNCTION_9();
        sub_1B9011CC0(v45, v46, v47, v48);
        break;
      case 14:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9011D24(v11, v12, v13, v14);
        break;
      case 15:
        v41 = OUTLINED_FUNCTION_9();
        sub_1B9011DD8(v41, v42, v43, v44);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90102CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8FAC5C8();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC07D0, &qword_1B966FA70);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC07D0, &qword_1B966FA70);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC07D0, &qword_1B966FA70);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC07D0, &qword_1B966FA70);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC07D0, &qword_1B966FA70);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B90107C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F18, &qword_1B967F3C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F18, &qword_1B967F3C0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F18, &qword_1B967F3C0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F18, &qword_1B967F3C0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F18, &qword_1B967F3C0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F18, &qword_1B967F3C0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9010CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F20, &qword_1B967F3C8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F20, &qword_1B967F3C8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F20, &qword_1B967F3C8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F20, &qword_1B967F3C8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F20, &qword_1B967F3C8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F20, &qword_1B967F3C8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B90111B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F28, &qword_1B967F3D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F28, &qword_1B967F3D0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, ")");
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F28, &qword_1B967F3D0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F28, &qword_1B967F3D0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F28, &qword_1B967F3D0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F28, &qword_1B967F3D0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B90116AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F30, &qword_1B967F3D8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F30, &qword_1B967F3D8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F30, &qword_1B967F3D8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F30, &qword_1B967F3D8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F30, &qword_1B967F3D8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F30, &qword_1B967F3D8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9011BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_132_5();
  v7(0);
  OUTLINED_FUNCTION_169_2();
  return a6();
}

uint64_t sub_1B9011D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  v40 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v39[1] = v8;
  v9 = OUTLINED_FUNCTION_177_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - v13;
  OUTLINED_FUNCTION_198_1();
  sub_1B8F1B8B8();
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_178(v14, 1, v15);
  if (!v16)
  {
    OUTLINED_FUNCTION_113_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v34 = OUTLINED_FUNCTION_242_1();
        sub_1B90123E4(v34, v35, v36, v37);
        goto LABEL_11;
      case 2:
        v26 = OUTLINED_FUNCTION_242_1();
        sub_1B90125F8(v26, v27, v28, v29);
        goto LABEL_11;
      case 3:
        v30 = OUTLINED_FUNCTION_242_1();
        sub_1B901280C(v30, v31, v32, v33);
        goto LABEL_11;
      case 4:
        v22 = OUTLINED_FUNCTION_242_1();
        sub_1B9012A20(v22, v23, v24, v25);
        v0 = v1;
        if (v1)
        {
          OUTLINED_FUNCTION_47_4();
          sub_1B8FAC5C8();
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_47_4();
        sub_1B8FAC5C8();
        break;
      default:
        v18 = OUTLINED_FUNCTION_242_1();
        sub_1B90121D4(v18, v19, v20, v21);
LABEL_11:
        v0 = v1;
        OUTLINED_FUNCTION_47_4();
        sub_1B8FAC5C8();
        if (!v1)
        {
          break;
        }

        goto LABEL_29;
    }
  }

  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  if (!*(v2 + v38[5]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6D0(), (v0 = v1) == 0))
  {
    if (!*(v2 + v38[6]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6D0(), (v0 = v1) == 0))
    {
      if (!*(v2 + v38[7]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6C0(), (v0 = v1) == 0))
      {
        if (!*(v2 + v38[8]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6C0(), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_715_0();
          OUTLINED_FUNCTION_178(v3, 1, v40);
          if (v16)
          {
            sub_1B8D9207C(v3, &qword_1EBAC07F0, &qword_1B966FA90);
          }

          else
          {
            OUTLINED_FUNCTION_16_15();
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
            OUTLINED_FUNCTION_683_0();
            sub_1B964C740();
            OUTLINED_FUNCTION_324_0();
            sub_1B8FAC5C8();
            if (v0)
            {
              goto LABEL_29;
            }
          }

          if (sub_1B8D99EA8(*(v2 + v38[9]), *(v2 + v38[9] + 8)) || (sub_1B964C6A0(), !v0))
          {
            sub_1B964C290();
          }
        }
      }
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B90121D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90123E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90125F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B901280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, ")");
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9012A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Feedback_V2_UsageEnvelope.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v44 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v42[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v42[2] = v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0C30, &qword_1B966FAD0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v45 = v10;
  v11 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(v11);
  OUTLINED_FUNCTION_126_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_175_3();
  v13 = OUTLINED_FUNCTION_690();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_183(v15);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0C38, &qword_1B966FAD8);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v42 - v20;
  v22 = *(v19 + 56);
  v23 = v3;
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_57(v21);
  if (v24)
  {
    OUTLINED_FUNCTION_57(&v21[v22]);
    if (v24)
    {
      sub_1B8D9207C(v21, &qword_1EBAC0808, &qword_1B966FAA8);
      goto LABEL_12;
    }

LABEL_9:
    v25 = &qword_1EBAC0C38;
    v26 = &qword_1B966FAD8;
    v27 = v21;
LABEL_10:
    sub_1B8D9207C(v27, v25, v26);
LABEL_28:
    v41 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_606();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_57(&v21[v22]);
  if (v24)
  {
    OUTLINED_FUNCTION_47_4();
    sub_1B8FAC5C8();
    goto LABEL_9;
  }

  sub_1B8FAC528();
  OUTLINED_FUNCTION_424();
  static Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind.== infix(_:_:)();
  v29 = v28;
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v21, &qword_1EBAC0808, &qword_1B966FAA8);
  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  if (*(v3 + v30[5]) != *(v1 + v30[5]))
  {
    goto LABEL_28;
  }

  v31 = v30;
  if (*(v3 + v30[6]) != *(v1 + v30[6]) || *(v3 + v30[7]) != *(v1 + v30[7]) || *(v3 + v30[8]) != *(v1 + v30[8]))
  {
    goto LABEL_28;
  }

  v32 = *(v43 + 48);
  v33 = v45;
  OUTLINED_FUNCTION_397();
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v34 = v44;
  OUTLINED_FUNCTION_178(v33, 1, v44);
  if (v24)
  {
    OUTLINED_FUNCTION_178(v33 + v32, 1, v34);
    if (v24)
    {
      sub_1B8D9207C(v33, &qword_1EBAC07F0, &qword_1B966FA90);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v33 + v32, 1, v34);
  if (v35)
  {
    OUTLINED_FUNCTION_324_0();
    sub_1B8FAC5C8();
LABEL_24:
    v25 = &qword_1EBAC0C30;
    v26 = &qword_1B966FAD0;
    v27 = v33;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_16_15();
  sub_1B8FAC528();
  v36 = OUTLINED_FUNCTION_197();
  v37 = static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(v36);
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v33, &qword_1EBAC07F0, &qword_1B966FA90);
  if ((v37 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ((MEMORY[0x1BFADC060](*(v23 + v31[9]), *(v23 + v31[9] + 8), *(v1 + v31[9]), *(v1 + v31[9] + 8)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = v31[10];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v39, v40, MEMORY[0x1E69AAC10]);
  v41 = OUTLINED_FUNCTION_656_0(v23 + v38, v1 + v38);
LABEL_29:
  OUTLINED_FUNCTION_264(v41);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9013170()
{
  OUTLINED_FUNCTION_250_1();
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2450(v2, v3, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9013244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BD8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90132C4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9013334(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return sub_1B964C5D0();
}

unint64_t sub_1B9013634()
{
  result = qword_1EBAC0858;
  if (!qword_1EBAC0858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_SearchSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC0858);
  }

  return result;
}

unint64_t sub_1B9013688()
{
  result = qword_1EBAC0878;
  if (!qword_1EBAC0878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAC0878);
  }

  return result;
}

unint64_t sub_1B90136DC()
{
  result = qword_1EBAC0888;
  if (!qword_1EBAC0888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC0888);
  }

  return result;
}

unint64_t sub_1B9013730()
{
  result = qword_1EBAC0898;
  if (!qword_1EBAC0898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_HideReason, &type metadata for Apple_Parsec_Feedback_V2_HideReason, v0, v1);
    atomic_store(result, &qword_1EBAC0898);
  }

  return result;
}

unint64_t sub_1B9013784()
{
  result = qword_1EBAC08A8;
  if (!qword_1EBAC08A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, &type metadata for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, v0, v1);
    atomic_store(result, &qword_1EBAC08A8);
  }

  return result;
}

unint64_t sub_1B90137D8()
{
  result = qword_1EBAC08C0;
  if (!qword_1EBAC08C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBAC08C0);
  }

  return result;
}

unint64_t sub_1B901382C()
{
  result = qword_1EBAC08C8;
  if (!qword_1EBAC08C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EmbeddingStatusType, &type metadata for Apple_Parsec_Feedback_V2_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBAC08C8);
  }

  return result;
}

unint64_t sub_1B9013880()
{
  result = qword_1EBAC08E0;
  if (!qword_1EBAC08E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewAppearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewAppearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC08E0);
  }

  return result;
}

unint64_t sub_1B90138D4()
{
  result = qword_1EBAC08F0;
  if (!qword_1EBAC08F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC08F0);
  }

  return result;
}

unint64_t sub_1B9013928()
{
  result = qword_1EBAC0908;
  if (!qword_1EBAC0908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC0908);
  }

  return result;
}

unint64_t sub_1B901397C()
{
  result = qword_1EBAC0940;
  if (!qword_1EBAC0940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0940);
  }

  return result;
}

unint64_t sub_1B90139D0()
{
  result = qword_1EBAC0948;
  if (!qword_1EBAC0948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementDestination, &type metadata for Apple_Parsec_Feedback_V2_EngagementDestination, v0, v1);
    atomic_store(result, &qword_1EBAC0948);
  }

  return result;
}

unint64_t sub_1B9013A24()
{
  result = qword_1EBAC0950;
  if (!qword_1EBAC0950)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementActionTarget, &type metadata for Apple_Parsec_Feedback_V2_EngagementActionTarget, v0, v1);
    atomic_store(result, &qword_1EBAC0950);
  }

  return result;
}

unint64_t sub_1B9013A78()
{
  result = qword_1EBAC0968;
  if (!qword_1EBAC0968)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0968);
  }

  return result;
}

unint64_t sub_1B9013ACC()
{
  result = qword_1EBAC0980;
  if (!qword_1EBAC0980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualError, &type metadata for Apple_Parsec_Feedback_V2_CounterfactualError, v0, v1);
    atomic_store(result, &qword_1EBAC0980);
  }

  return result;
}

unint64_t sub_1B9013B20()
{
  result = qword_1EBAC09A0;
  if (!qword_1EBAC09A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandType, &type metadata for Apple_Parsec_Feedback_V2_CommandType, v0, v1);
    atomic_store(result, &qword_1EBAC09A0);
  }

  return result;
}

unint64_t sub_1B9013B74()
{
  result = qword_1EBAC09B0;
  if (!qword_1EBAC09B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionType, &type metadata for Apple_Parsec_Feedback_V2_CardSectionType, v0, v1);
    atomic_store(result, &qword_1EBAC09B0);
  }

  return result;
}

unint64_t sub_1B9013BC8()
{
  result = qword_1EBAC09E8;
  if (!qword_1EBAC09E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionCardType, &type metadata for Apple_Parsec_Feedback_V2_ActionCardType, v0, v1);
    atomic_store(result, &qword_1EBAC09E8);
  }

  return result;
}

unint64_t sub_1B9013C1C()
{
  result = qword_1EBAC09F0;
  if (!qword_1EBAC09F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC09F0);
  }

  return result;
}

unint64_t sub_1B9013C70()
{
  result = qword_1EBAB3DE8;
  if (!qword_1EBAB3DE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, v0, v1);
    atomic_store(result, &qword_1EBAB3DE8);
  }

  return result;
}

unint64_t sub_1B9013CC4()
{
  result = qword_1EBAB4DC0;
  if (!qword_1EBAB4DC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchType, &type metadata for Apple_Parsec_Feedback_V2_SearchType, v0, v1);
    atomic_store(result, &qword_1EBAB4DC0);
  }

  return result;
}

unint64_t sub_1B9013D18()
{
  result = qword_1EBAB4A28;
  if (!qword_1EBAB4A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndpointType, &type metadata for Apple_Parsec_Feedback_V2_EndpointType, v0, v1);
    atomic_store(result, &qword_1EBAB4A28);
  }

  return result;
}

unint64_t sub_1B9013D6C()
{
  result = qword_1EBAC0A28;
  if (!qword_1EBAC0A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityType, &type metadata for Apple_Parsec_Feedback_V2_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC0A28);
  }

  return result;
}

unint64_t sub_1B9013DC0()
{
  result = qword_1EBAC0A68;
  if (!qword_1EBAC0A68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAC0A68);
  }

  return result;
}

unint64_t sub_1B9013E14()
{
  result = qword_1EBAC0A88;
  if (!qword_1EBAC0A88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_KnownFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_KnownFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC0A88);
  }

  return result;
}

unint64_t sub_1B9013E68()
{
  result = qword_1EBAC0AA8;
  if (!qword_1EBAC0AA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_CardDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0AA8);
  }

  return result;
}

unint64_t sub_1B9013EBC()
{
  result = qword_1EBAC0AE0;
  if (!qword_1EBAC0AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0AE0);
  }

  return result;
}

unint64_t sub_1B9013F10()
{
  result = qword_1EBAC0AF0;
  if (!qword_1EBAC0AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0AF0);
  }

  return result;
}

unint64_t sub_1B9013F64()
{
  result = qword_1EBAC0B00;
  if (!qword_1EBAC0B00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, &type metadata for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, v0, v1);
    atomic_store(result, &qword_1EBAC0B00);
  }

  return result;
}

unint64_t sub_1B9013FB8()
{
  result = qword_1EBAC0B30;
  if (!qword_1EBAC0B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackGrade, &type metadata for Apple_Parsec_Feedback_V2_FeedbackGrade, v0, v1);
    atomic_store(result, &qword_1EBAC0B30);
  }

  return result;
}

unint64_t sub_1B901400C()
{
  result = qword_1EBAC0B48;
  if (!qword_1EBAC0B48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancy, &type metadata for Apple_Parsec_Feedback_V2_LookupHintRelevancy, v0, v1);
    atomic_store(result, &qword_1EBAC0B48);
  }

  return result;
}

unint64_t sub_1B9014060()
{
  result = qword_1EBAC0B68;
  if (!qword_1EBAC0B68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0B68);
  }

  return result;
}

unint64_t sub_1B90140B4()
{
  result = qword_1EBAC0B88;
  if (!qword_1EBAC0B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0B88);
  }

  return result;
}

unint64_t sub_1B9014108()
{
  result = qword_1EBAC0BD0;
  if (!qword_1EBAC0BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementType, &type metadata for Apple_Parsec_Feedback_V2_CBAEngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC0BD0);
  }

  return result;
}

unint64_t sub_1B9014160()
{
  result = qword_1EBAC0C48;
  if (!qword_1EBAC0C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_SearchSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC0C48);
  }

  return result;
}

unint64_t sub_1B90141B8()
{
  result = qword_1EBAC0C50;
  if (!qword_1EBAC0C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_SearchSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC0C50);
  }

  return result;
}

unint64_t sub_1B9014210()
{
  result = qword_1EBAC0C58;
  if (!qword_1EBAC0C58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_SearchSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC0C58);
  }

  return result;
}

unint64_t sub_1B9014298()
{
  result = qword_1EBAC0C70;
  if (!qword_1EBAC0C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultType, &type metadata for Apple_Parsec_Feedback_V2_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAC0C70);
  }

  return result;
}

unint64_t sub_1B90142F0()
{
  result = qword_1EBAC0C78;
  if (!qword_1EBAC0C78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultType, &type metadata for Apple_Parsec_Feedback_V2_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAC0C78);
  }

  return result;
}

unint64_t sub_1B9014348()
{
  result = qword_1EBAC0C80;
  if (!qword_1EBAC0C80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultType, &type metadata for Apple_Parsec_Feedback_V2_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAC0C80);
  }

  return result;
}

unint64_t sub_1B90143D0()
{
  result = qword_1EBAC0C98;
  if (!qword_1EBAC0C98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementActionTarget, &type metadata for Apple_Parsec_Feedback_V2_EngagementActionTarget, v0, v1);
    atomic_store(result, &qword_1EBAC0C98);
  }

  return result;
}

unint64_t sub_1B9014428()
{
  result = qword_1EBAC0CA0;
  if (!qword_1EBAC0CA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementActionTarget, &type metadata for Apple_Parsec_Feedback_V2_EngagementActionTarget, v0, v1);
    atomic_store(result, &qword_1EBAC0CA0);
  }

  return result;
}

unint64_t sub_1B9014480()
{
  result = qword_1EBAC0CA8;
  if (!qword_1EBAC0CA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementActionTarget, &type metadata for Apple_Parsec_Feedback_V2_EngagementActionTarget, v0, v1);
    atomic_store(result, &qword_1EBAC0CA8);
  }

  return result;
}

unint64_t sub_1B9014508()
{
  result = qword_1EBAC0CC0;
  if (!qword_1EBAC0CC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementDestination, &type metadata for Apple_Parsec_Feedback_V2_EngagementDestination, v0, v1);
    atomic_store(result, &qword_1EBAC0CC0);
  }

  return result;
}

unint64_t sub_1B9014560()
{
  result = qword_1EBAC0CC8;
  if (!qword_1EBAC0CC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementDestination, &type metadata for Apple_Parsec_Feedback_V2_EngagementDestination, v0, v1);
    atomic_store(result, &qword_1EBAC0CC8);
  }

  return result;
}

unint64_t sub_1B90145B8()
{
  result = qword_1EBAC0CD0;
  if (!qword_1EBAC0CD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementDestination, &type metadata for Apple_Parsec_Feedback_V2_EngagementDestination, v0, v1);
    atomic_store(result, &qword_1EBAC0CD0);
  }

  return result;
}

unint64_t sub_1B9014640()
{
  result = qword_1EBAC0CE8;
  if (!qword_1EBAC0CE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionType, &type metadata for Apple_Parsec_Feedback_V2_CardSectionType, v0, v1);
    atomic_store(result, &qword_1EBAC0CE8);
  }

  return result;
}

unint64_t sub_1B9014698()
{
  result = qword_1EBAC0CF0;
  if (!qword_1EBAC0CF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionType, &type metadata for Apple_Parsec_Feedback_V2_CardSectionType, v0, v1);
    atomic_store(result, &qword_1EBAC0CF0);
  }

  return result;
}

unint64_t sub_1B90146F0()
{
  result = qword_1EBAC0CF8;
  if (!qword_1EBAC0CF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionType, &type metadata for Apple_Parsec_Feedback_V2_CardSectionType, v0, v1);
    atomic_store(result, &qword_1EBAC0CF8);
  }

  return result;
}

unint64_t sub_1B9014778()
{
  result = qword_1EBAC0D10;
  if (!qword_1EBAC0D10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FBTH, &type metadata for Apple_Parsec_Feedback_V2_FBTH, v0, v1);
    atomic_store(result, &qword_1EBAC0D10);
  }

  return result;
}

unint64_t sub_1B90147D0()
{
  result = qword_1EBAC0D18;
  if (!qword_1EBAC0D18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FBTH, &type metadata for Apple_Parsec_Feedback_V2_FBTH, v0, v1);
    atomic_store(result, &qword_1EBAC0D18);
  }

  return result;
}

unint64_t sub_1B9014828()
{
  result = qword_1EBAC0D20;
  if (!qword_1EBAC0D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FBTH, &type metadata for Apple_Parsec_Feedback_V2_FBTH, v0, v1);
    atomic_store(result, &qword_1EBAC0D20);
  }

  return result;
}

unint64_t sub_1B90148B0()
{
  result = qword_1EBAC0D38;
  if (!qword_1EBAC0D38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0D38);
  }

  return result;
}

unint64_t sub_1B9014908()
{
  result = qword_1EBAC0D40;
  if (!qword_1EBAC0D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0D40);
  }

  return result;
}

unint64_t sub_1B9014960()
{
  result = qword_1EBAC0D48;
  if (!qword_1EBAC0D48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0D48);
  }

  return result;
}

unint64_t sub_1B90149E8()
{
  result = qword_1EBAC0D60;
  if (!qword_1EBAC0D60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0D60);
  }

  return result;
}

unint64_t sub_1B9014A40()
{
  result = qword_1EBAC0D68;
  if (!qword_1EBAC0D68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0D68);
  }

  return result;
}

unint64_t sub_1B9014A98()
{
  result = qword_1EBAC0D70;
  if (!qword_1EBAC0D70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SessionEndTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0D70);
  }

  return result;
}

unint64_t sub_1B9014B20()
{
  result = qword_1EBAC0D88;
  if (!qword_1EBAC0D88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionCardType, &type metadata for Apple_Parsec_Feedback_V2_ActionCardType, v0, v1);
    atomic_store(result, &qword_1EBAC0D88);
  }

  return result;
}

unint64_t sub_1B9014B78()
{
  result = qword_1EBAC0D90;
  if (!qword_1EBAC0D90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionCardType, &type metadata for Apple_Parsec_Feedback_V2_ActionCardType, v0, v1);
    atomic_store(result, &qword_1EBAC0D90);
  }

  return result;
}

unint64_t sub_1B9014BD0()
{
  result = qword_1EBAC0D98;
  if (!qword_1EBAC0D98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionCardType, &type metadata for Apple_Parsec_Feedback_V2_ActionCardType, v0, v1);
    atomic_store(result, &qword_1EBAC0D98);
  }

  return result;
}

unint64_t sub_1B9014C58()
{
  result = qword_1EBAB3DE0;
  if (!qword_1EBAB3DE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, v0, v1);
    atomic_store(result, &qword_1EBAB3DE0);
  }

  return result;
}

unint64_t sub_1B9014CB0()
{
  result = qword_1EBAB3DD0;
  if (!qword_1EBAB3DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, v0, v1);
    atomic_store(result, &qword_1EBAB3DD0);
  }

  return result;
}

unint64_t sub_1B9014D08()
{
  result = qword_1EBAB3DD8;
  if (!qword_1EBAB3DD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent, v0, v1);
    atomic_store(result, &qword_1EBAB3DD8);
  }

  return result;
}

unint64_t sub_1B9014D90()
{
  result = qword_1EBAB4A20;
  if (!qword_1EBAB4A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndpointType, &type metadata for Apple_Parsec_Feedback_V2_EndpointType, v0, v1);
    atomic_store(result, &qword_1EBAB4A20);
  }

  return result;
}

unint64_t sub_1B9014DE8()
{
  result = qword_1EBAB4A10;
  if (!qword_1EBAB4A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndpointType, &type metadata for Apple_Parsec_Feedback_V2_EndpointType, v0, v1);
    atomic_store(result, &qword_1EBAB4A10);
  }

  return result;
}

unint64_t sub_1B9014E40()
{
  result = qword_1EBAB4A18;
  if (!qword_1EBAB4A18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndpointType, &type metadata for Apple_Parsec_Feedback_V2_EndpointType, v0, v1);
    atomic_store(result, &qword_1EBAB4A18);
  }

  return result;
}

unint64_t sub_1B9014EC8()
{
  result = qword_1EBAC0DD0;
  if (!qword_1EBAC0DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexType, &type metadata for Apple_Parsec_Feedback_V2_IndexType, v0, v1);
    atomic_store(result, &qword_1EBAC0DD0);
  }

  return result;
}

unint64_t sub_1B9014F20()
{
  result = qword_1EBAC0DD8;
  if (!qword_1EBAC0DD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexType, &type metadata for Apple_Parsec_Feedback_V2_IndexType, v0, v1);
    atomic_store(result, &qword_1EBAC0DD8);
  }

  return result;
}

unint64_t sub_1B9014F78()
{
  result = qword_1EBAC0DE0;
  if (!qword_1EBAC0DE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexType, &type metadata for Apple_Parsec_Feedback_V2_IndexType, v0, v1);
    atomic_store(result, &qword_1EBAC0DE0);
  }

  return result;
}

unint64_t sub_1B9015000()
{
  result = qword_1EBAC0DF8;
  if (!qword_1EBAC0DF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_CardDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0DF8);
  }

  return result;
}

unint64_t sub_1B9015058()
{
  result = qword_1EBAC0E00;
  if (!qword_1EBAC0E00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_CardDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E00);
  }

  return result;
}

unint64_t sub_1B90150B0()
{
  result = qword_1EBAC0E08;
  if (!qword_1EBAC0E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_CardDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E08);
  }

  return result;
}

unint64_t sub_1B9015138()
{
  result = qword_1EBAC0E20;
  if (!qword_1EBAC0E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E20);
  }

  return result;
}

unint64_t sub_1B9015190()
{
  result = qword_1EBAC0E28;
  if (!qword_1EBAC0E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E28);
  }

  return result;
}

unint64_t sub_1B90151E8()
{
  result = qword_1EBAC0E30;
  if (!qword_1EBAC0E30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_ClearInputTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E30);
  }

  return result;
}

unint64_t sub_1B9015270()
{
  result = qword_1EBAC0E48;
  if (!qword_1EBAC0E48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E48);
  }

  return result;
}

unint64_t sub_1B90152C8()
{
  result = qword_1EBAC0E50;
  if (!qword_1EBAC0E50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E50);
  }

  return result;
}

unint64_t sub_1B9015320()
{
  result = qword_1EBAC0E58;
  if (!qword_1EBAC0E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0E58);
  }

  return result;
}

unint64_t sub_1B90153A8()
{
  result = qword_1EBAC0E70;
  if (!qword_1EBAC0E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, &type metadata for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, v0, v1);
    atomic_store(result, &qword_1EBAC0E70);
  }

  return result;
}

unint64_t sub_1B9015400()
{
  result = qword_1EBAC0E78;
  if (!qword_1EBAC0E78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, &type metadata for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, v0, v1);
    atomic_store(result, &qword_1EBAC0E78);
  }

  return result;
}

unint64_t sub_1B9015458()
{
  result = qword_1EBAC0E80;
  if (!qword_1EBAC0E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, &type metadata for Apple_Parsec_Feedback_V2_VisibleSectionHeaderType, v0, v1);
    atomic_store(result, &qword_1EBAC0E80);
  }

  return result;
}

unint64_t sub_1B90154E0()
{
  result = qword_1EBAC0E98;
  if (!qword_1EBAC0E98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_KnownFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_KnownFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC0E98);
  }

  return result;
}

unint64_t sub_1B9015538()
{
  result = qword_1EBAC0EA0;
  if (!qword_1EBAC0EA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_KnownFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_KnownFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC0EA0);
  }

  return result;
}

unint64_t sub_1B9015590()
{
  result = qword_1EBAC0EA8;
  if (!qword_1EBAC0EA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_KnownFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_KnownFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC0EA8);
  }

  return result;
}

unint64_t sub_1B9015618()
{
  result = qword_1EBAC0EC0;
  if (!qword_1EBAC0EC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackGrade, &type metadata for Apple_Parsec_Feedback_V2_FeedbackGrade, v0, v1);
    atomic_store(result, &qword_1EBAC0EC0);
  }

  return result;
}

unint64_t sub_1B9015670()
{
  result = qword_1EBAC0EC8;
  if (!qword_1EBAC0EC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackGrade, &type metadata for Apple_Parsec_Feedback_V2_FeedbackGrade, v0, v1);
    atomic_store(result, &qword_1EBAC0EC8);
  }

  return result;
}

unint64_t sub_1B90156C8()
{
  result = qword_1EBAC0ED0;
  if (!qword_1EBAC0ED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackGrade, &type metadata for Apple_Parsec_Feedback_V2_FeedbackGrade, v0, v1);
    atomic_store(result, &qword_1EBAC0ED0);
  }

  return result;
}

unint64_t sub_1B9015750()
{
  result = qword_1EBAC0EE8;
  if (!qword_1EBAC0EE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0EE8);
  }

  return result;
}

unint64_t sub_1B90157A8()
{
  result = qword_1EBAC0EF0;
  if (!qword_1EBAC0EF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0EF0);
  }

  return result;
}

unint64_t sub_1B9015800()
{
  result = qword_1EBAC0EF8;
  if (!qword_1EBAC0EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, &type metadata for Apple_Parsec_Feedback_V2_TriggerEngagementEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0EF8);
  }

  return result;
}

unint64_t sub_1B9015888()
{
  result = qword_1EBAC0F10;
  if (!qword_1EBAC0F10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewAppearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewAppearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0F10);
  }

  return result;
}

unint64_t sub_1B90158E0()
{
  result = qword_1EBAC0F18;
  if (!qword_1EBAC0F18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewAppearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewAppearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0F18);
  }

  return result;
}

unint64_t sub_1B9015938()
{
  result = qword_1EBAC0F20;
  if (!qword_1EBAC0F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewAppearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewAppearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0F20);
  }

  return result;
}

unint64_t sub_1B90159C0()
{
  result = qword_1EBAC0F38;
  if (!qword_1EBAC0F38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0F38);
  }

  return result;
}

unint64_t sub_1B9015A18()
{
  result = qword_1EBAC0F40;
  if (!qword_1EBAC0F40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0F40);
  }

  return result;
}

unint64_t sub_1B9015A70()
{
  result = qword_1EBAC0F48;
  if (!qword_1EBAC0F48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewDisappearEvent, &type metadata for Apple_Parsec_Feedback_V2_ViewDisappearEvent, v0, v1);
    atomic_store(result, &qword_1EBAC0F48);
  }

  return result;
}

unint64_t sub_1B9015AF8()
{
  result = qword_1EBAC0F60;
  if (!qword_1EBAC0F60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TimingDataDictKeys, &type metadata for Apple_Parsec_Feedback_V2_TimingDataDictKeys, v0, v1);
    atomic_store(result, &qword_1EBAC0F60);
  }

  return result;
}

unint64_t sub_1B9015B50()
{
  result = qword_1EBAC0F68;
  if (!qword_1EBAC0F68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TimingDataDictKeys, &type metadata for Apple_Parsec_Feedback_V2_TimingDataDictKeys, v0, v1);
    atomic_store(result, &qword_1EBAC0F68);
  }

  return result;
}

unint64_t sub_1B9015BA8()
{
  result = qword_1EBAC0F70;
  if (!qword_1EBAC0F70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TimingDataDictKeys, &type metadata for Apple_Parsec_Feedback_V2_TimingDataDictKeys, v0, v1);
    atomic_store(result, &qword_1EBAC0F70);
  }

  return result;
}

unint64_t sub_1B9015C30()
{
  result = qword_1EBAC0F88;
  if (!qword_1EBAC0F88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandType, &type metadata for Apple_Parsec_Feedback_V2_CommandType, v0, v1);
    atomic_store(result, &qword_1EBAC0F88);
  }

  return result;
}

unint64_t sub_1B9015C88()
{
  result = qword_1EBAC0F90;
  if (!qword_1EBAC0F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandType, &type metadata for Apple_Parsec_Feedback_V2_CommandType, v0, v1);
    atomic_store(result, &qword_1EBAC0F90);
  }

  return result;
}

unint64_t sub_1B9015CE0()
{
  result = qword_1EBAC0F98;
  if (!qword_1EBAC0F98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandType, &type metadata for Apple_Parsec_Feedback_V2_CommandType, v0, v1);
    atomic_store(result, &qword_1EBAC0F98);
  }

  return result;
}

unint64_t sub_1B9015D68()
{
  result = qword_1EBAC0FB0;
  if (!qword_1EBAC0FB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, v0, v1);
    atomic_store(result, &qword_1EBAC0FB0);
  }

  return result;
}

unint64_t sub_1B9015DC0()
{
  result = qword_1EBAC0FB8;
  if (!qword_1EBAC0FB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, v0, v1);
    atomic_store(result, &qword_1EBAC0FB8);
  }

  return result;
}

unint64_t sub_1B9015E18()
{
  result = qword_1EBAC0FC0;
  if (!qword_1EBAC0FC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, v0, v1);
    atomic_store(result, &qword_1EBAC0FC0);
  }

  return result;
}

unint64_t sub_1B9015EA0()
{
  result = qword_1EBAC0FD8;
  if (!qword_1EBAC0FD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, v0, v1);
    atomic_store(result, &qword_1EBAC0FD8);
  }

  return result;
}

unint64_t sub_1B9015EF8()
{
  result = qword_1EBAC0FE0;
  if (!qword_1EBAC0FE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, v0, v1);
    atomic_store(result, &qword_1EBAC0FE0);
  }

  return result;
}

unint64_t sub_1B9015F50()
{
  result = qword_1EBAC0FE8;
  if (!qword_1EBAC0FE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, v0, v1);
    atomic_store(result, &qword_1EBAC0FE8);
  }

  return result;
}

unint64_t sub_1B9015FD8()
{
  result = qword_1EBAC1000;
  if (!qword_1EBAC1000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, &type metadata for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, v0, v1);
    atomic_store(result, &qword_1EBAC1000);
  }

  return result;
}

unint64_t sub_1B9016030()
{
  result = qword_1EBAC1008;
  if (!qword_1EBAC1008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, &type metadata for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, v0, v1);
    atomic_store(result, &qword_1EBAC1008);
  }

  return result;
}

unint64_t sub_1B9016088()
{
  result = qword_1EBAC1010;
  if (!qword_1EBAC1010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, &type metadata for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, v0, v1);
    atomic_store(result, &qword_1EBAC1010);
  }

  return result;
}

unint64_t sub_1B9016110()
{
  result = qword_1EBAC1028;
  if (!qword_1EBAC1028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC1028);
  }

  return result;
}

unint64_t sub_1B9016168()
{
  result = qword_1EBAC1030;
  if (!qword_1EBAC1030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC1030);
  }

  return result;
}

unint64_t sub_1B90161C0()
{
  result = qword_1EBAC1038;
  if (!qword_1EBAC1038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosSuggestionType, &type metadata for Apple_Parsec_Feedback_V2_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAC1038);
  }

  return result;
}

unint64_t sub_1B9016248()
{
  result = qword_1EBAC1050;
  if (!qword_1EBAC1050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_HideReason, &type metadata for Apple_Parsec_Feedback_V2_HideReason, v0, v1);
    atomic_store(result, &qword_1EBAC1050);
  }

  return result;
}

unint64_t sub_1B90162A0()
{
  result = qword_1EBAC1058;
  if (!qword_1EBAC1058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_HideReason, &type metadata for Apple_Parsec_Feedback_V2_HideReason, v0, v1);
    atomic_store(result, &qword_1EBAC1058);
  }

  return result;
}

unint64_t sub_1B90162F8()
{
  result = qword_1EBAC1060;
  if (!qword_1EBAC1060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_HideReason, &type metadata for Apple_Parsec_Feedback_V2_HideReason, v0, v1);
    atomic_store(result, &qword_1EBAC1060);
  }

  return result;
}

unint64_t sub_1B9016380()
{
  result = qword_1EBAC1078;
  if (!qword_1EBAC1078)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, &type metadata for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, v0, v1);
    atomic_store(result, &qword_1EBAC1078);
  }

  return result;
}

unint64_t sub_1B90163D8()
{
  result = qword_1EBAC1080;
  if (!qword_1EBAC1080)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, &type metadata for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, v0, v1);
    atomic_store(result, &qword_1EBAC1080);
  }

  return result;
}

unint64_t sub_1B9016430()
{
  result = qword_1EBAC1088;
  if (!qword_1EBAC1088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, &type metadata for Apple_Parsec_Feedback_V2_MailSuggestionDataSources, v0, v1);
    atomic_store(result, &qword_1EBAC1088);
  }

  return result;
}

unint64_t sub_1B90164B8()
{
  result = qword_1EBAC10A0;
  if (!qword_1EBAC10A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBAC10A0);
  }

  return result;
}

unint64_t sub_1B9016510()
{
  result = qword_1EBAC10A8;
  if (!qword_1EBAC10A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBAC10A8);
  }

  return result;
}

unint64_t sub_1B9016568()
{
  result = qword_1EBAC10B0;
  if (!qword_1EBAC10B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBAC10B0);
  }

  return result;
}

unint64_t sub_1B90165F0()
{
  result = qword_1EBAC10C8;
  if (!qword_1EBAC10C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EmbeddingStatusType, &type metadata for Apple_Parsec_Feedback_V2_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBAC10C8);
  }

  return result;
}

unint64_t sub_1B9016648()
{
  result = qword_1EBAC10D0;
  if (!qword_1EBAC10D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EmbeddingStatusType, &type metadata for Apple_Parsec_Feedback_V2_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBAC10D0);
  }

  return result;
}

unint64_t sub_1B90166A0()
{
  result = qword_1EBAC10D8;
  if (!qword_1EBAC10D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EmbeddingStatusType, &type metadata for Apple_Parsec_Feedback_V2_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBAC10D8);
  }

  return result;
}

unint64_t sub_1B9016728()
{
  result = qword_1EBAC10F0;
  if (!qword_1EBAC10F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ContactActionType, &type metadata for Apple_Parsec_Feedback_V2_ContactActionType, v0, v1);
    atomic_store(result, &qword_1EBAC10F0);
  }

  return result;
}

unint64_t sub_1B9016780()
{
  result = qword_1EBAC10F8;
  if (!qword_1EBAC10F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ContactActionType, &type metadata for Apple_Parsec_Feedback_V2_ContactActionType, v0, v1);
    atomic_store(result, &qword_1EBAC10F8);
  }

  return result;
}

unint64_t sub_1B90167D8()
{
  result = qword_1EBAC1100;
  if (!qword_1EBAC1100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ContactActionType, &type metadata for Apple_Parsec_Feedback_V2_ContactActionType, v0, v1);
    atomic_store(result, &qword_1EBAC1100);
  }

  return result;
}

unint64_t sub_1B9016860()
{
  result = qword_1EBAC1118;
  if (!qword_1EBAC1118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualError, &type metadata for Apple_Parsec_Feedback_V2_CounterfactualError, v0, v1);
    atomic_store(result, &qword_1EBAC1118);
  }

  return result;
}

unint64_t sub_1B90168B8()
{
  result = qword_1EBAC1120;
  if (!qword_1EBAC1120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualError, &type metadata for Apple_Parsec_Feedback_V2_CounterfactualError, v0, v1);
    atomic_store(result, &qword_1EBAC1120);
  }

  return result;
}

unint64_t sub_1B9016910()
{
  result = qword_1EBAC1128;
  if (!qword_1EBAC1128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualError, &type metadata for Apple_Parsec_Feedback_V2_CounterfactualError, v0, v1);
    atomic_store(result, &qword_1EBAC1128);
  }

  return result;
}

unint64_t sub_1B9016998()
{
  result = qword_1EBAC1140;
  if (!qword_1EBAC1140)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC1140);
  }

  return result;
}

unint64_t sub_1B90169F0()
{
  result = qword_1EBAC1148;
  if (!qword_1EBAC1148)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC1148);
  }

  return result;
}

unint64_t sub_1B9016A48()
{
  result = qword_1EBAC1150;
  if (!qword_1EBAC1150)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, &type metadata for Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC1150);
  }

  return result;
}

unint64_t sub_1B9016AD0()
{
  result = qword_1EBAC1168;
  if (!qword_1EBAC1168)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, &type metadata for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, v0, v1);
    atomic_store(result, &qword_1EBAC1168);
  }

  return result;
}

unint64_t sub_1B9016B28()
{
  result = qword_1EBAC1170;
  if (!qword_1EBAC1170)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, &type metadata for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, v0, v1);
    atomic_store(result, &qword_1EBAC1170);
  }

  return result;
}

unint64_t sub_1B9016B80()
{
  result = qword_1EBAC1178;
  if (!qword_1EBAC1178)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, &type metadata for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, v0, v1);
    atomic_store(result, &qword_1EBAC1178);
  }

  return result;
}

unint64_t sub_1B9016C08()
{
  result = qword_1EBAB4DB8;
  if (!qword_1EBAB4DB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchType, &type metadata for Apple_Parsec_Feedback_V2_SearchType, v0, v1);
    atomic_store(result, &qword_1EBAB4DB8);
  }

  return result;
}

unint64_t sub_1B9016C60()
{
  result = qword_1EBAB4DA8;
  if (!qword_1EBAB4DA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchType, &type metadata for Apple_Parsec_Feedback_V2_SearchType, v0, v1);
    atomic_store(result, &qword_1EBAB4DA8);
  }

  return result;
}

unint64_t sub_1B9016CB8()
{
  result = qword_1EBAB4DB0;
  if (!qword_1EBAB4DB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchType, &type metadata for Apple_Parsec_Feedback_V2_SearchType, v0, v1);
    atomic_store(result, &qword_1EBAB4DB0);
  }

  return result;
}

unint64_t sub_1B9016D40()
{
  result = qword_1EBAC11A0;
  if (!qword_1EBAC11A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityType, &type metadata for Apple_Parsec_Feedback_V2_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC11A0);
  }

  return result;
}

unint64_t sub_1B9016D98()
{
  result = qword_1EBAC11A8;
  if (!qword_1EBAC11A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityType, &type metadata for Apple_Parsec_Feedback_V2_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC11A8);
  }

  return result;
}

unint64_t sub_1B9016DF0()
{
  result = qword_1EBAC11B0;
  if (!qword_1EBAC11B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityType, &type metadata for Apple_Parsec_Feedback_V2_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC11B0);
  }

  return result;
}

unint64_t sub_1B9016E78()
{
  result = qword_1EBAC11C8;
  if (!qword_1EBAC11C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC11C8);
  }

  return result;
}

unint64_t sub_1B9016ED0()
{
  result = qword_1EBAC11D0;
  if (!qword_1EBAC11D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC11D0);
  }

  return result;
}

unint64_t sub_1B9016F28()
{
  result = qword_1EBAC11D8;
  if (!qword_1EBAC11D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC11D8);
  }

  return result;
}

unint64_t sub_1B9016FB0()
{
  result = qword_1EBAC11F0;
  if (!qword_1EBAC11F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC11F0);
  }

  return result;
}

unint64_t sub_1B9017008()
{
  result = qword_1EBAC11F8;
  if (!qword_1EBAC11F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC11F8);
  }

  return result;
}

unint64_t sub_1B9017060()
{
  result = qword_1EBAC1200;
  if (!qword_1EBAC1200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC1200);
  }

  return result;
}

unint64_t sub_1B90170E8()
{
  result = qword_1EBAC1218;
  if (!qword_1EBAC1218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAC1218);
  }

  return result;
}

unint64_t sub_1B9017140()
{
  result = qword_1EBAC1220;
  if (!qword_1EBAC1220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAC1220);
  }

  return result;
}

unint64_t sub_1B9017198()
{
  result = qword_1EBAC1228;
  if (!qword_1EBAC1228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAC1228);
  }

  return result;
}

unint64_t sub_1B9017220()
{
  result = qword_1EBAC1240;
  if (!qword_1EBAC1240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAC1240);
  }

  return result;
}

unint64_t sub_1B9017278()
{
  result = qword_1EBAC1248;
  if (!qword_1EBAC1248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAC1248);
  }

  return result;
}

unint64_t sub_1B90172D0()
{
  result = qword_1EBAC1250;
  if (!qword_1EBAC1250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, &type metadata for Apple_Parsec_Feedback_V2_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAC1250);
  }

  return result;
}

unint64_t sub_1B9017358()
{
  result = qword_1EBAC1268;
  if (!qword_1EBAC1268)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancy, &type metadata for Apple_Parsec_Feedback_V2_LookupHintRelevancy, v0, v1);
    atomic_store(result, &qword_1EBAC1268);
  }

  return result;
}

unint64_t sub_1B90173B0()
{
  result = qword_1EBAC1270;
  if (!qword_1EBAC1270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancy, &type metadata for Apple_Parsec_Feedback_V2_LookupHintRelevancy, v0, v1);
    atomic_store(result, &qword_1EBAC1270);
  }

  return result;
}

unint64_t sub_1B9017408()
{
  result = qword_1EBAC1278;
  if (!qword_1EBAC1278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancy, &type metadata for Apple_Parsec_Feedback_V2_LookupHintRelevancy, v0, v1);
    atomic_store(result, &qword_1EBAC1278);
  }

  return result;
}

unint64_t sub_1B9017490()
{
  result = qword_1EBAC1290;
  if (!qword_1EBAC1290)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FlusherEndpoint, &type metadata for Apple_Parsec_Feedback_V2_FlusherEndpoint, v0, v1);
    atomic_store(result, &qword_1EBAC1290);
  }

  return result;
}

unint64_t sub_1B90174E8()
{
  result = qword_1EBAC1298;
  if (!qword_1EBAC1298)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FlusherEndpoint, &type metadata for Apple_Parsec_Feedback_V2_FlusherEndpoint, v0, v1);
    atomic_store(result, &qword_1EBAC1298);
  }

  return result;
}

unint64_t sub_1B9017540()
{
  result = qword_1EBAC12A0;
  if (!qword_1EBAC12A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FlusherEndpoint, &type metadata for Apple_Parsec_Feedback_V2_FlusherEndpoint, v0, v1);
    atomic_store(result, &qword_1EBAC12A0);
  }

  return result;
}

unint64_t sub_1B90175C8()
{
  result = qword_1EBAC12B8;
  if (!qword_1EBAC12B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC12B8);
  }

  return result;
}

unint64_t sub_1B9017620()
{
  result = qword_1EBAC12C0;
  if (!qword_1EBAC12C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC12C0);
  }

  return result;
}

unint64_t sub_1B9017678()
{
  result = qword_1EBAC12C8;
  if (!qword_1EBAC12C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC12C8);
  }

  return result;
}

unint64_t sub_1B9017700()
{
  result = qword_1EBAC12E0;
  if (!qword_1EBAC12E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupSelectionType, &type metadata for Apple_Parsec_Feedback_V2_LookupSelectionType, v0, v1);
    atomic_store(result, &qword_1EBAC12E0);
  }

  return result;
}

unint64_t sub_1B9017758()
{
  result = qword_1EBAC12E8;
  if (!qword_1EBAC12E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupSelectionType, &type metadata for Apple_Parsec_Feedback_V2_LookupSelectionType, v0, v1);
    atomic_store(result, &qword_1EBAC12E8);
  }

  return result;
}

unint64_t sub_1B90177B0()
{
  result = qword_1EBAC12F0;
  if (!qword_1EBAC12F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupSelectionType, &type metadata for Apple_Parsec_Feedback_V2_LookupSelectionType, v0, v1);
    atomic_store(result, &qword_1EBAC12F0);
  }

  return result;
}

unint64_t sub_1B9017838()
{
  result = qword_1EBAC1308;
  if (!qword_1EBAC1308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC1308);
  }

  return result;
}

unint64_t sub_1B9017890()
{
  result = qword_1EBAC1310;
  if (!qword_1EBAC1310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC1310);
  }

  return result;
}

unint64_t sub_1B90178E8()
{
  result = qword_1EBAC1318;
  if (!qword_1EBAC1318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, &type metadata for Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent, v0, v1);
    atomic_store(result, &qword_1EBAC1318);
  }

  return result;
}

unint64_t sub_1B9017970()
{
  result = qword_1EBAC1330;
  if (!qword_1EBAC1330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PrivateRelayStatus, &type metadata for Apple_Parsec_Feedback_V2_PrivateRelayStatus, v0, v1);
    atomic_store(result, &qword_1EBAC1330);
  }

  return result;
}

unint64_t sub_1B90179C8()
{
  result = qword_1EBAC1338;
  if (!qword_1EBAC1338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PrivateRelayStatus, &type metadata for Apple_Parsec_Feedback_V2_PrivateRelayStatus, v0, v1);
    atomic_store(result, &qword_1EBAC1338);
  }

  return result;
}

unint64_t sub_1B9017A20()
{
  result = qword_1EBAC1340;
  if (!qword_1EBAC1340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PrivateRelayStatus, &type metadata for Apple_Parsec_Feedback_V2_PrivateRelayStatus, v0, v1);
    atomic_store(result, &qword_1EBAC1340);
  }

  return result;
}

unint64_t sub_1B9017AA8()
{
  result = qword_1EBAC1358;
  if (!qword_1EBAC1358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_NullValue, &type metadata for Apple_Parsec_Feedback_V2_NullValue, v0, v1);
    atomic_store(result, &qword_1EBAC1358);
  }

  return result;
}

unint64_t sub_1B9017B00()
{
  result = qword_1EBAC1360;
  if (!qword_1EBAC1360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_NullValue, &type metadata for Apple_Parsec_Feedback_V2_NullValue, v0, v1);
    atomic_store(result, &qword_1EBAC1360);
  }

  return result;
}

unint64_t sub_1B9017B58()
{
  result = qword_1EBAC1368;
  if (!qword_1EBAC1368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_NullValue, &type metadata for Apple_Parsec_Feedback_V2_NullValue, v0, v1);
    atomic_store(result, &qword_1EBAC1368);
  }

  return result;
}

unint64_t sub_1B9017BE0()
{
  result = qword_1EBAC1380;
  if (!qword_1EBAC1380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementType, &type metadata for Apple_Parsec_Feedback_V2_CBAEngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC1380);
  }

  return result;
}

unint64_t sub_1B9017C38()
{
  result = qword_1EBAC1388;
  if (!qword_1EBAC1388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementType, &type metadata for Apple_Parsec_Feedback_V2_CBAEngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC1388);
  }

  return result;
}

unint64_t sub_1B9017C90()
{
  result = qword_1EBAC1390;
  if (!qword_1EBAC1390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementType, &type metadata for Apple_Parsec_Feedback_V2_CBAEngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC1390);
  }

  return result;
}

unint64_t sub_1B9017D18()
{
  result = qword_1EBAC13A8;
  if (!qword_1EBAC13A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_BundleIdentifier, &type metadata for Apple_Parsec_Feedback_V2_BundleIdentifier, v0, v1);
    atomic_store(result, &qword_1EBAC13A8);
  }

  return result;
}

unint64_t sub_1B9017D70()
{
  result = qword_1EBAC13B0;
  if (!qword_1EBAC13B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_BundleIdentifier, &type metadata for Apple_Parsec_Feedback_V2_BundleIdentifier, v0, v1);
    atomic_store(result, &qword_1EBAC13B0);
  }

  return result;
}

unint64_t sub_1B9017DC8()
{
  result = qword_1EBAC13B8;
  if (!qword_1EBAC13B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_BundleIdentifier, &type metadata for Apple_Parsec_Feedback_V2_BundleIdentifier, v0, v1);
    atomic_store(result, &qword_1EBAC13B8);
  }

  return result;
}

unint64_t sub_1B9017E50()
{
  result = qword_1EBAC13D0;
  if (!qword_1EBAC13D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportType, &type metadata for Apple_Parsec_Feedback_V2_UserReportType, v0, v1);
    atomic_store(result, &qword_1EBAC13D0);
  }

  return result;
}

unint64_t sub_1B9017EA8()
{
  result = qword_1EBAC13D8;
  if (!qword_1EBAC13D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportType, &type metadata for Apple_Parsec_Feedback_V2_UserReportType, v0, v1);
    atomic_store(result, &qword_1EBAC13D8);
  }

  return result;
}

unint64_t sub_1B9017F00()
{
  result = qword_1EBAC13E0;
  if (!qword_1EBAC13E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportType, &type metadata for Apple_Parsec_Feedback_V2_UserReportType, v0, v1);
    atomic_store(result, &qword_1EBAC13E0);
  }

  return result;
}

unint64_t sub_1B9017F88()
{
  result = qword_1EBAC13F8;
  if (!qword_1EBAC13F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_Client, &type metadata for Apple_Parsec_Feedback_V2_Client, v0, v1);
    atomic_store(result, &qword_1EBAC13F8);
  }

  return result;
}

unint64_t sub_1B9017FE0()
{
  result = qword_1EBAC1400;
  if (!qword_1EBAC1400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_Client, &type metadata for Apple_Parsec_Feedback_V2_Client, v0, v1);
    atomic_store(result, &qword_1EBAC1400);
  }

  return result;
}

unint64_t sub_1B9018038()
{
  result = qword_1EBAC1408;
  if (!qword_1EBAC1408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_Client, &type metadata for Apple_Parsec_Feedback_V2_Client, v0, v1);
    atomic_store(result, &qword_1EBAC1408);
  }

  return result;
}

unint64_t sub_1B90180C0()
{
  result = qword_1EBAC1420;
  if (!qword_1EBAC1420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, &type metadata for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, v0, v1);
    atomic_store(result, &qword_1EBAC1420);
  }

  return result;
}

unint64_t sub_1B9018118()
{
  result = qword_1EBAC1428;
  if (!qword_1EBAC1428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, &type metadata for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, v0, v1);
    atomic_store(result, &qword_1EBAC1428);
  }

  return result;
}

unint64_t sub_1B9018170()
{
  result = qword_1EBAC1430;
  if (!qword_1EBAC1430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, &type metadata for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, v0, v1);
    atomic_store(result, &qword_1EBAC1430);
  }

  return result;
}

void sub_1B901E58C(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B901FED0(319, &qword_1ED9FAC98, &type metadata for Apple_Parsec_Feedback_V2_ResultSectionForFeedback.OneOf_BundleID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B901E6F8(319, &qword_1EDA00148, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B901E6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B901E7A0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B901E87C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B901E944(uint64_t a1)
{
  sub_1B901FED0(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B901FED0(319, qword_1ED9FAD28, &type metadata for Apple_Parsec_Feedback_V2_PunchoutForFeedback.OneOf_BundleID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B901EC10(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B901ED1C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B901EE24(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9F4490, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B901EF68(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9F4498, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1ED9FF758, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B901F0B4(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B901F244(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1698Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_706_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
    OUTLINED_FUNCTION_678_0();
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void __swift_store_extra_inhabitant_index_1699Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_682_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
      OUTLINED_FUNCTION_684_0();
    }

    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B901F4F8(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B901FED0(319, &qword_1ED9FBDD8, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B901FED0(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v4 <= 0x3F)
        {
          sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B901F6AC(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9F44A0, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B901F830(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1EBAC1B60, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9F44A0, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B901FB10(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B901FC8C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void sub_1B901FD5C(uint64_t a1)
{
  sub_1B901FE74();
  if (v1 <= 0x3F)
  {
    sub_1B901FED0(319, qword_1ED9FA7D0, &type metadata for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B901FE74()
{
  if (!qword_1ED9FBDE0)
  {
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9FBDE0);
    }
  }
}

void sub_1B901FED0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void sub_1B9020024(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9FCD90, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9020250(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, qword_1ED9F5990, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B901E6F8(319, qword_1ED9F73E0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1894Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1895Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_1B90204B4(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9FE628, type metadata accessor for Apple_Parsec_Feedback_V2_Error, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1707Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v3)
  {
    v6 = *(a3 + 20);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_266();
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t __swift_store_extra_inhabitant_index_1708Tm()
{
  OUTLINED_FUNCTION_705_0();
  OUTLINED_FUNCTION_128_1();
  if (*(v1 + 84) != v0)
  {
    v2 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_1B9020738()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_339_0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1761Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_622_0();
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_1762Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v5 + 84) == v4)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      OUTLINED_FUNCTION_633_0();
    }

    v9 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t __swift_get_extra_inhabitant_index_1975Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_267_0();
  }

  v5 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t __swift_store_extra_inhabitant_index_1976Tm()
{
  OUTLINED_FUNCTION_705_0();
  OUTLINED_FUNCTION_128_1();
  if (*(v1 + 84) != v0)
  {
    v2 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_1B9020C24()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_339_0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1743Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1744Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B9020E98()
{
  OUTLINED_FUNCTION_734();
  sub_1B901E6F8(319, v0, v1, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B9020F84()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_339_0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B9021088(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9FE610, type metadata accessor for Apple_Parsec_Feedback_V2_Range, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1617Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1618Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_index_1680Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_706_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B902136C()
{
  OUTLINED_FUNCTION_734();
  sub_1B901E6F8(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B90213EC(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(319);
                                                                                  if (v42 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(319);
                                                                                    if (v43 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(319);
                                                                                      if (v44 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(319);
                                                                                        if (v45 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(319);
                                                                                          if (v46 <= 0x3F)
                                                                                          {
                                                                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                            return 0;
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

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1842Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_678_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_1843Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_684_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B90218C0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_2056Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_362_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_2057Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B9021A7C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1797Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_1798Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B9021C18(uint64_t a1)
{
  sub_1B9021CE4(319, &qword_1EBAC1B98, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  if (v1 <= 0x3F)
  {
    sub_1B9021CE4(319, &qword_1EBAC1BA0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9021CE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(255);
    OUTLINED_FUNCTION_461();
    v5 = sub_1B964C7C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B9021DA4(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9021EA4()
{
  OUTLINED_FUNCTION_734();
  sub_1B901E6F8(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1545Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_362_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1546Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B902208C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void __swift_store_extra_inhabitant_indexTm_2()
{
  OUTLINED_FUNCTION_365_0();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_81_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1B9022248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1599Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1600Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1B9022418()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1671Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

void sub_1B9022530(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9CA4D8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1ED9CA4F0, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9022650(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B9022708(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9FE120, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B902283C(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1EDA00060, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1ED9FE350, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B901E6F8(319, &qword_1EDA03BE8, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B901E6F8(319, &qword_1ED9F99D0, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B901E6F8(319, &qword_1ED9F9C60, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B901E6F8(319, qword_1ED9FA630, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1B901E6F8(319, qword_1ED9F7828, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1B901E6F8(319, qword_1ED9F78C0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B901E6F8(319, qword_1ED9F6AA0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
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
    }
  }
}

void sub_1B9022D70(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, qword_1ED9F78C0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9022EE0(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03AF8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9023044(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03AF8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B902319C(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9FF208, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA00028, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9023304(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9C9D90, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9CA4C0, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B90234A4(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1EDA03AF8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B902367C(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9CA4F0, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B9023784(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9C9AE0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9C9C80, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B90238E4(uint64_t a1)
{
  sub_1B901E6F8(319, &qword_1ED9C9AE0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9C9C80, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B9023A44()
{
  result = qword_1EBAC1E80;
  if (!qword_1EBAC1E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, &type metadata for Apple_Parsec_Feedback_V2_FeedbackDeletionReason, v0, v1);
    atomic_store(result, &qword_1EBAC1E80);
  }

  return result;
}

unint64_t sub_1B9023A98()
{
  result = qword_1EBAC1E88;
  if (!qword_1EBAC1E88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_Client, &type metadata for Apple_Parsec_Feedback_V2_Client, v0, v1);
    atomic_store(result, &qword_1EBAC1E88);
  }

  return result;
}

unint64_t sub_1B9023AEC()
{
  result = qword_1EBAC1E90;
  if (!qword_1EBAC1E90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportType, &type metadata for Apple_Parsec_Feedback_V2_UserReportType, v0, v1);
    atomic_store(result, &qword_1EBAC1E90);
  }

  return result;
}

unint64_t sub_1B9023B40()
{
  result = qword_1EBAC1E98;
  if (!qword_1EBAC1E98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_BundleIdentifier, &type metadata for Apple_Parsec_Feedback_V2_BundleIdentifier, v0, v1);
    atomic_store(result, &qword_1EBAC1E98);
  }

  return result;
}

unint64_t sub_1B9023B94()
{
  result = qword_1EBAC1EA0;
  if (!qword_1EBAC1EA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_NullValue, &type metadata for Apple_Parsec_Feedback_V2_NullValue, v0, v1);
    atomic_store(result, &qword_1EBAC1EA0);
  }

  return result;
}

unint64_t sub_1B9023BE8()
{
  result = qword_1EBAC1EA8;
  if (!qword_1EBAC1EA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_PrivateRelayStatus, &type metadata for Apple_Parsec_Feedback_V2_PrivateRelayStatus, v0, v1);
    atomic_store(result, &qword_1EBAC1EA8);
  }

  return result;
}

unint64_t sub_1B9023C3C()
{
  result = qword_1EBAC1EB0;
  if (!qword_1EBAC1EB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupSelectionType, &type metadata for Apple_Parsec_Feedback_V2_LookupSelectionType, v0, v1);
    atomic_store(result, &qword_1EBAC1EB0);
  }

  return result;
}

unint64_t sub_1B9023C90()
{
  result = qword_1EBAC1EB8;
  if (!qword_1EBAC1EB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackType, v0, v1);
    atomic_store(result, &qword_1EBAC1EB8);
  }

  return result;
}

unint64_t sub_1B9023CE4()
{
  result = qword_1EBAC1EC0;
  if (!qword_1EBAC1EC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FlusherEndpoint, &type metadata for Apple_Parsec_Feedback_V2_FlusherEndpoint, v0, v1);
    atomic_store(result, &qword_1EBAC1EC0);
  }

  return result;
}

unint64_t sub_1B9023D38()
{
  result = qword_1EBAC1EC8;
  if (!qword_1EBAC1EC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, &type metadata for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAC1EC8);
  }

  return result;
}

unint64_t sub_1B9023D8C()
{
  result = qword_1EBAC1ED0;
  if (!qword_1EBAC1ED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, &type metadata for Apple_Parsec_Feedback_V2_SKStoreProductPageResult, v0, v1);
    atomic_store(result, &qword_1EBAC1ED0);
  }

  return result;
}

unint64_t sub_1B9023DE0()
{
  result = qword_1EBAC1ED8;
  if (!qword_1EBAC1ED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ContactActionType, &type metadata for Apple_Parsec_Feedback_V2_ContactActionType, v0, v1);
    atomic_store(result, &qword_1EBAC1ED8);
  }

  return result;
}

unint64_t sub_1B9023E34()
{
  result = qword_1EBAC1EE0;
  if (!qword_1EBAC1EE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, &type metadata for Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched, v0, v1);
    atomic_store(result, &qword_1EBAC1EE0);
  }

  return result;
}

unint64_t sub_1B9023E88()
{
  result = qword_1EBAC1EE8;
  if (!qword_1EBAC1EE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason, v0, v1);
    atomic_store(result, &qword_1EBAC1EE8);
  }

  return result;
}

unint64_t sub_1B9023EDC()
{
  result = qword_1EBAC1EF0;
  if (!qword_1EBAC1EF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed, v0, v1);
    atomic_store(result, &qword_1EBAC1EF0);
  }

  return result;
}

unint64_t sub_1B9023F30()
{
  result = qword_1EBAC1EF8;
  if (!qword_1EBAC1EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_TimingDataDictKeys, &type metadata for Apple_Parsec_Feedback_V2_TimingDataDictKeys, v0, v1);
    atomic_store(result, &qword_1EBAC1EF8);
  }

  return result;
}

unint64_t sub_1B9023F84()
{
  result = qword_1EBAC1F00;
  if (!qword_1EBAC1F00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexType, &type metadata for Apple_Parsec_Feedback_V2_IndexType, v0, v1);
    atomic_store(result, &qword_1EBAC1F00);
  }

  return result;
}

unint64_t sub_1B9023FD8()
{
  result = qword_1EBAC1F08;
  if (!qword_1EBAC1F08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FBTH, &type metadata for Apple_Parsec_Feedback_V2_FBTH, v0, v1);
    atomic_store(result, &qword_1EBAC1F08);
  }

  return result;
}

unint64_t sub_1B902402C()
{
  result = qword_1EBAC1F10;
  if (!qword_1EBAC1F10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultType, &type metadata for Apple_Parsec_Feedback_V2_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAC1F10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_14(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  *(a1 + 88) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_6(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
}

uint64_t OUTLINED_FUNCTION_41_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
}

uint64_t OUTLINED_FUNCTION_138_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_151_2()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_220_2(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1B8D9207C(v3, v2, v1);
}

void OUTLINED_FUNCTION_241_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_244_1()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_249_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_255_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_256_1@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_262_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_263_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_274_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_276_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

void OUTLINED_FUNCTION_280_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
}

uint64_t OUTLINED_FUNCTION_284_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_297_0()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_308_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_309_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_310_0@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = a2;
  *(v2 + 56) = -1;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_339_0()
{
  v3 = MEMORY[0x1E69E6720];

  sub_1B901E6F8(319, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_342_0()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_343_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_344_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_346_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_349_0()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback._StorageClass(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_350_0()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_354_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_355_0()
{

  return sub_1B8FAC5C8();
}

uint64_t OUTLINED_FUNCTION_356_0()
{

  return sub_1B8FAC5C8();
}

uint64_t OUTLINED_FUNCTION_357_0()
{

  return sub_1B964C850();
}

void OUTLINED_FUNCTION_363_0()
{
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_364_0()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_368_0@<X0>(uint64_t a2@<X8>)
{
  *(v4 + 96) = v2;
  *(v4 + 104) = 0;
  *(v4 + 112) = v3;
  *(v4 + 120) = 0;
  *(v4 + 128) = a2;
  *(v4 + 136) = v2;
  *(v4 + 144) = v2;
  *(v4 + 152) = v2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_369_0()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return 0;
}

void OUTLINED_FUNCTION_370_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_374_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_397_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_422_0()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_424_0()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
}

void OUTLINED_FUNCTION_427_0()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
}

uint64_t OUTLINED_FUNCTION_433_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_459_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_461_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_474_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_500_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_505_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_509_0(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_513_0(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_518_0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_520_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_535_0(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_536_0(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_543_0(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_586_1()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_592_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_602_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_603_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_604_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_605_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_606_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_607_0(uint64_t a1@<X8>)
{
  *(v2 + 64) = 0;
  *(v2 + 72) = v1;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_608_0@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xC000000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 255;
  *(v2 + 68) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_609_0@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  result = *v4;
  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_610_0@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + v1;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v2 = *v4;
  *(v2 + 8) = v6;
  *(v2 + 16) = v7;

  return sub_1B8D52584(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_613_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_614_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_619_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_639_0()
{
  *(v0 + 1888) = v2;
  *(v0 + 1896) = v1;
  *(v0 + 1904) = v3;
}

uint64_t OUTLINED_FUNCTION_643_0(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_655_0(uint64_t a1)
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_656_0(uint64_t a1, uint64_t a2)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_660_0@<X0>(unint64_t a1@<X8>)
{
  v1 = a1 >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_666_0()
{

  return sub_1B8FAC528();
}