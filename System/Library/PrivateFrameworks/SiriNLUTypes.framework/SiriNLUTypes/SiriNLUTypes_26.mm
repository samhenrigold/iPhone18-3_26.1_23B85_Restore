uint64_t sub_1C8A2ABD8(uint64_t a1)
{
  v3 = v1;
  v24 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v22 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v15 = *(v14 + 20);
  v23 = v3;
  sub_1C8786744(v3 + v15, v10, &qword_1EC2B6000, &qword_1C8BF5050);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C8778ED8(v10, &qword_1EC2B6000, &qword_1C8BF5050);
  }

  else
  {
    sub_1C87A5594(v10, v13, type metadata accessor for Siri_Nlu_External_NLContext);
    sub_1C8A32D80();
    result = sub_1C87A9A38(v13, type metadata accessor for Siri_Nlu_External_NLContext);
    if (v2)
    {
      return result;
    }
  }

  sub_1C8786744(v23 + *(v14 + 24), v6, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  if (__swift_getEnumTagSinglePayload(v6, 1, v22) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  }

  else
  {
    v17 = v6;
    v18 = v21;
    sub_1C87A5594(v17, v21, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
    sub_1C8A32D80();
    result = sub_1C87A9A38(v18, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
    if (v2)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v19, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A2AF40(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C8786744(v3 + *(v10 + 36), v6, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  }

  else
  {
    sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    sub_1C8A32D80();
    result = sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v12, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task), result = sub_1C8BD507C(), !v2))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v13, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task), result = sub_1C8BD507C(), !v2))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_EntityCandidate(0), sub_1C87A4F90(qword_1EDACA548, v14, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACB7D8, 255, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate), result = sub_1C8BD507C(), !v2))
      {
        if (!*(v3[3] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_SystemDialogAct(0), sub_1C87A4F90(qword_1EDACA548, v15, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(qword_1EDACB410, 255, type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct), result = sub_1C8BD507C(), !v2))
        {
          type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
          sub_1C87A4F90(qword_1EDACA548, v16, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
          return sub_1C8BD49DC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C8A2B434(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  if (!*(*v1 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C8BD493C(), sub_1C87A4F90(qword_1EDACA548, v3, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACA318, 255, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]), result = sub_1C8BD507C(), !v2))
  {
    if (!*(v1[1] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v5, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), result = sub_1C8BD4FFC(), !v2))
    {
      type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
      sub_1C87A4F90(qword_1EDACA548, v6, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t sub_1C8A2B608(uint64_t a1)
{
  v3 = v1;
  v41 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v31 - v5;
  v34 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v31 - v8;
  v36 = type metadata accessor for Siri_Nlu_External_Parser(0);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A60, &unk_1C8BF5058);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v39 = type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8786744(v3 + *(v40 + 24), v16, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87A5594(v16, v19, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8A32CE4(v19, 1, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v19, type metadata accessor for Siri_Nlu_External_UUID);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_UserDialogAct(0), sub_1C87A4F90(qword_1EDACA548, v21, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACBDF8, 255, type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct), result = sub_1C8BD507C(), !v2))
  {
    v22 = v40;
    sub_1C8786744(v3 + *(v40 + 36), v12, &qword_1EC2B8A60, &unk_1C8BF5058);
    if (__swift_getEnumTagSinglePayload(v12, 1, v39) == 1)
    {
      sub_1C8778ED8(v12, &qword_1EC2B8A60, &unk_1C8BF5058);
    }

    else
    {
      v23 = v35;
      sub_1C87A5594(v12, v35, type metadata accessor for Siri_Nlu_External_RepetitionResult);
      sub_1C8A33CF0(v23);
      result = sub_1C87A9A38(v23, type metadata accessor for Siri_Nlu_External_RepetitionResult);
      if (v2)
      {
        return result;
      }
    }

    v24 = v37;
    sub_1C8786744(v3 + *(v22 + 40), v37, &qword_1EC2B6540, &unk_1C8BE7A40);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v36);
    v26 = v38;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v24, &qword_1EC2B6540, &unk_1C8BE7A40);
    }

    else
    {
      v27 = v33;
      sub_1C87A5594(v24, v33, type metadata accessor for Siri_Nlu_External_Parser);
      sub_1C8A32CE4(v27, 6, type metadata accessor for Siri_Nlu_External_Parser);
      result = sub_1C87A9A38(v27, type metadata accessor for Siri_Nlu_External_Parser);
      if (v2)
      {
        return result;
      }
    }

    sub_1C8786744(v3 + *(v22 + 48), v26, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    if (__swift_getEnumTagSinglePayload(v26, 1, v34) == 1)
    {
      sub_1C8778ED8(v26, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }

    else
    {
      v28 = v26;
      v29 = v32;
      sub_1C87A5594(v28, v32, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
      sub_1C8A32CE4(v29, 8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
      result = sub_1C87A9A38(v29, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
      if (v2)
      {
        return result;
      }
    }

    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v30, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2BCD8(uint64_t a1, uint64_t a2)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v86 - v4;
  v88 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v86 - v7;
  v91 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v86 - v10;
  v94 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v98 = &v86 - v13;
  v97 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = &v86 - v16;
  v100 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  MEMORY[0x1EEE9AC00](v100);
  v96 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v86 - v19;
  v102 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v105 = &v86 - v22;
  v104 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  MEMORY[0x1EEE9AC00](v104);
  v112 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v107 = &v86 - v25;
  v106 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  MEMORY[0x1EEE9AC00](v106);
  v111 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v110 = &v86 - v28;
  v109 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  MEMORY[0x1EEE9AC00](v109);
  v114 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v86 - v31;
  v113 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  MEMORY[0x1EEE9AC00](v113);
  v108 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v86 - v35;
  v37 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  swift_beginAccess();
  sub_1C8786744(a1 + v40, v36, &unk_1EC2B6330, &unk_1C8BF4FE0);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_1C8778ED8(v36, &unk_1EC2B6330, &unk_1C8BF4FE0);
    v41 = v115;
  }

  else
  {
    sub_1C87A5594(v36, v39, type metadata accessor for Siri_Nlu_External_UserAccepted);
    v42 = v115;
    sub_1C8A33324();
    v41 = v42;
    if (v42)
    {
      v43 = type metadata accessor for Siri_Nlu_External_UserAccepted;
LABEL_15:
      v53 = v43;
      v54 = v39;
      return sub_1C87A9A38(v54, v53);
    }

    sub_1C87A9A38(v39, type metadata accessor for Siri_Nlu_External_UserAccepted);
  }

  v44 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
  swift_beginAccess();
  sub_1C8786744(a1 + v44, v32, &qword_1EC2B6E28, &unk_1C8C10580);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v113);
  v39 = v114;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v32, &qword_1EC2B6E28, &unk_1C8C10580);
  }

  else
  {
    v46 = v108;
    sub_1C87A5594(v32, v108, type metadata accessor for Siri_Nlu_External_UserRejected);
    sub_1C8A33324();
    if (v41)
    {
      v47 = type metadata accessor for Siri_Nlu_External_UserRejected;
LABEL_26:
      v53 = v47;
      v54 = v46;
      return sub_1C87A9A38(v54, v53);
    }

    sub_1C87A9A38(v46, type metadata accessor for Siri_Nlu_External_UserRejected);
  }

  v48 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
  swift_beginAccess();
  v49 = a1 + v48;
  v50 = v110;
  sub_1C8786744(v49, v110, &qword_1EC2B6E20, &unk_1C8BF4FF0);
  v51 = __swift_getEnumTagSinglePayload(v50, 1, v109);
  v52 = v111;
  v46 = v112;
  if (v51 == 1)
  {
    sub_1C8778ED8(v50, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    goto LABEL_17;
  }

  sub_1C87A5594(v50, v39, type metadata accessor for Siri_Nlu_External_UserCancelled);
  sub_1C8A33324();
  if (v41)
  {
    v43 = type metadata accessor for Siri_Nlu_External_UserCancelled;
    goto LABEL_15;
  }

  sub_1C87A9A38(v39, type metadata accessor for Siri_Nlu_External_UserCancelled);
LABEL_17:
  v55 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  swift_beginAccess();
  v56 = a1 + v55;
  v57 = v107;
  sub_1C8786744(v56, v107, &qword_1EC2B6E10, &unk_1C8BF5000);
  if (__swift_getEnumTagSinglePayload(v57, 1, v106) == 1)
  {
    sub_1C8778ED8(v57, &qword_1EC2B6E10, &unk_1C8BF5000);
    goto LABEL_22;
  }

  sub_1C87A5594(v57, v52, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat);
  sub_1C8A33324();
  if (v41)
  {
    v53 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat;
    v54 = v52;
    return sub_1C87A9A38(v54, v53);
  }

  sub_1C87A9A38(v52, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat);
LABEL_22:
  v58 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  swift_beginAccess();
  v59 = a1 + v58;
  v60 = v105;
  sub_1C8786744(v59, v105, &qword_1EC2B86D8, &qword_1C8BF4620);
  if (__swift_getEnumTagSinglePayload(v60, 1, v104) == 1)
  {
    sub_1C8778ED8(v60, &qword_1EC2B86D8, &qword_1C8BF4620);
    goto LABEL_30;
  }

  sub_1C87A5594(v60, v46, type metadata accessor for Siri_Nlu_External_UserAcknowledged);
  sub_1C8A33324();
  if (v41)
  {
    v47 = type metadata accessor for Siri_Nlu_External_UserAcknowledged;
    goto LABEL_26;
  }

  sub_1C87A9A38(v46, type metadata accessor for Siri_Nlu_External_UserAcknowledged);
LABEL_30:
  v62 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  swift_beginAccess();
  v63 = a1 + v62;
  v64 = v103;
  sub_1C8786744(v63, v103, &qword_1EC2B86D0, &unk_1C8BF5010);
  if (__swift_getEnumTagSinglePayload(v64, 1, v102) == 1)
  {
    sub_1C8778ED8(v64, &qword_1EC2B86D0, &unk_1C8BF5010);
  }

  else
  {
    v65 = v99;
    sub_1C87A5594(v64, v99, type metadata accessor for Siri_Nlu_External_UserWantedToProceed);
    sub_1C8A33324();
    result = sub_1C87A9A38(v65, type metadata accessor for Siri_Nlu_External_UserWantedToProceed);
    if (v41)
    {
      return result;
    }
  }

  v66 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  swift_beginAccess();
  v67 = a1 + v66;
  v68 = v101;
  sub_1C8786744(v67, v101, &qword_1EC2B6E18, &qword_1C8BEBC48);
  if (__swift_getEnumTagSinglePayload(v68, 1, v100) == 1)
  {
    sub_1C8778ED8(v68, &qword_1EC2B6E18, &qword_1C8BEBC48);
  }

  else
  {
    v69 = v96;
    sub_1C87A5594(v68, v96, type metadata accessor for Siri_Nlu_External_UserWantedToPause);
    sub_1C8A33324();
    result = sub_1C87A9A38(v69, type metadata accessor for Siri_Nlu_External_UserWantedToPause);
    if (v41)
    {
      return result;
    }
  }

  v70 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
  swift_beginAccess();
  v71 = a1 + v70;
  v72 = v98;
  sub_1C8786744(v71, v98, &qword_1EC2B86C8, &unk_1C8C10570);
  if (__swift_getEnumTagSinglePayload(v72, 1, v97) == 1)
  {
    sub_1C8778ED8(v72, &qword_1EC2B86C8, &unk_1C8C10570);
  }

  else
  {
    v73 = v93;
    sub_1C87A5594(v72, v93, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);
    sub_1C8A32D80();
    result = sub_1C87A9A38(v73, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);
    if (v41)
    {
      return result;
    }
  }

  v74 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  swift_beginAccess();
  v75 = a1 + v74;
  v76 = v95;
  sub_1C8786744(v75, v95, &unk_1EC2B61D8, &unk_1C8BF4FD0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v94) == 1)
  {
    sub_1C8778ED8(v76, &unk_1EC2B61D8, &unk_1C8BF4FD0);
  }

  else
  {
    v77 = v90;
    sub_1C87A5594(v76, v90, type metadata accessor for Siri_Nlu_External_UserStatedTask);
    sub_1C8A3370C(v77);
    result = sub_1C87A9A38(v77, type metadata accessor for Siri_Nlu_External_UserStatedTask);
    if (v41)
    {
      return result;
    }
  }

  v78 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  swift_beginAccess();
  v79 = a1 + v78;
  v80 = v92;
  sub_1C8786744(v79, v92, &qword_1EC2B86C0, &unk_1C8BF5020);
  if (__swift_getEnumTagSinglePayload(v80, 1, v91) == 1)
  {
    sub_1C8778ED8(v80, &qword_1EC2B86C0, &unk_1C8BF5020);
LABEL_45:
    v82 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment;
    swift_beginAccess();
    v83 = a1 + v82;
    v84 = v89;
    sub_1C8786744(v83, v89, &qword_1EC2B8A68, &qword_1C8BF5068);
    if (__swift_getEnumTagSinglePayload(v84, 1, v88) == 1)
    {
      return sub_1C8778ED8(v84, &qword_1EC2B8A68, &qword_1C8BF5068);
    }

    v85 = v86;
    sub_1C87A5594(v84, v86, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);
    sub_1C8A32D80();
    v54 = v85;
    v53 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment;
    return sub_1C87A9A38(v54, v53);
  }

  v81 = v87;
  sub_1C87A5594(v80, v87, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);
  sub_1C8A33324();
  result = sub_1C87A9A38(v81, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);
  if (!v41)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t sub_1C8A2CDBC(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v31 = type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v28 - v9;
  v32 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_1C8BD493C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  v19 = *(v1 + *(v18 + 24) + 4);
  v34 = v18;
  if ((v19 & 1) == 0)
  {
    v28 = v6;
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v20, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    result = sub_1C8BD504C();
    if (v2)
    {
      return result;
    }

    v3 = v1;
    v6 = v28;
    v18 = v34;
  }

  sub_1C8786744(v3 + *(v18 + 28), v13, &qword_1EC2B6110, &qword_1C8BF5070);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C8778ED8(v13, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1C8A33908(v17, 2, MEMORY[0x1E69AA9A0], &qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
    if (v2)
    {
      return (*(v15 + 8))(v17, v14);
    }

    (*(v15 + 8))(v17, v14);
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Span(0), sub_1C87A4F90(qword_1EDACA548, v22, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EC2B4C10, 255, type metadata accessor for Siri_Nlu_External_Span, &protocol conformance descriptor for Siri_Nlu_External_Span), result = sub_1C8BD507C(), !v2))
  {
    v23 = v33;
    sub_1C8786744(v3 + *(v34 + 36), v33, &unk_1EC2B8A70, &qword_1C8BF5078);
    if (__swift_getEnumTagSinglePayload(v23, 1, v32) == 1)
    {
      sub_1C8778ED8(v23, &unk_1EC2B8A70, &qword_1C8BF5078);
    }

    else
    {
      v24 = v23;
      v25 = v30;
      sub_1C87A5594(v24, v30, type metadata accessor for Siri_Nlu_External_RewriteMessage);
      sub_1C8A32CE4(v25, 5, type metadata accessor for Siri_Nlu_External_RewriteMessage);
      result = sub_1C87A9A38(v25, type metadata accessor for Siri_Nlu_External_RewriteMessage);
      if (v2)
      {
        return result;
      }
    }

    sub_1C8786744(v3 + *(v34 + 40), v6, &dword_1EC2B8A78, &unk_1C8BF5080);
    if (__swift_getEnumTagSinglePayload(v6, 1, v31) == 1)
    {
      sub_1C8778ED8(v6, &dword_1EC2B8A78, &unk_1C8BF5080);
    }

    else
    {
      v26 = v29;
      sub_1C87A5594(v6, v29, type metadata accessor for Siri_Nlu_External_ReferenceContext);
      sub_1C8A32CE4(v26, 6, type metadata accessor for Siri_Nlu_External_ReferenceContext);
      result = sub_1C87A9A38(v26, type metadata accessor for Siri_Nlu_External_ReferenceContext);
      if (v2)
      {
        return result;
      }
    }

    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v27, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2D458(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE0, &unk_1C8C102D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  sub_1C8786744(v3 + *(v10 + 24), v6, &qword_1EC2B5FE0, &unk_1C8C102D0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B5FE0, &unk_1C8C102D0);
  }

  else
  {
    sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    sub_1C8A32DC0(v9, 1, type metadata accessor for Siri_Nlu_External_SystemDialogAct, sub_1C8A2D720);
    result = sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v12, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EC2B8AC0, 255, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup), result = sub_1C8BD507C(), !v2))
  {
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v13, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2D720(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v65 - v4;
  v67 = sub_1C8BD493C();
  v84 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v65 - v7;
  v69 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v65 - v10;
  v72 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v65 - v13;
  v75 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v79 = &v65 - v16;
  v78 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  MEMORY[0x1EEE9AC00](v78);
  v74 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = &v65 - v19;
  v81 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v65 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  MEMORY[0x1EEE9AC00](v24);
  v80 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v65 - v27;
  v29 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id;
  swift_beginAccess();
  v33 = a1 + v32;
  v34 = a1;
  sub_1C8786744(v33, v28, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1C8778ED8(v28, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v35 = v85;
  }

  else
  {
    sub_1C87A5594(v28, v31, type metadata accessor for Siri_Nlu_External_UUID);
    v36 = v85;
    sub_1C8A32CE4(v31, 1, type metadata accessor for Siri_Nlu_External_UUID);
    v35 = v36;
    if (v36)
    {
      return sub_1C87A9A38(v31, type metadata accessor for Siri_Nlu_External_UUID);
    }

    sub_1C87A9A38(v31, type metadata accessor for Siri_Nlu_External_UUID);
  }

  v38 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  swift_beginAccess();
  sub_1C8786744(a1 + v38, v23, &dword_1EC2B86E8, &unk_1C8BF4630);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C8778ED8(v23, &dword_1EC2B86E8, &unk_1C8BF4630);
  }

  else
  {
    v39 = v80;
    sub_1C87A5594(v23, v80, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    sub_1C8A33324();
    result = sub_1C87A9A38(v39, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    if (v35)
    {
      return result;
    }
  }

  v40 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered;
  swift_beginAccess();
  v41 = v82;
  sub_1C8786744(v34 + v40, v82, &qword_1EC2B86F0, &unk_1C8BF5030);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v81);
  v43 = v84;
  v44 = v83;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v41, &qword_1EC2B86F0, &unk_1C8BF5030);
  }

  else
  {
    v45 = v77;
    sub_1C87A5594(v41, v77, type metadata accessor for Siri_Nlu_External_SystemOffered);
    sub_1C8A334E8(v45);
    result = sub_1C87A9A38(v45, type metadata accessor for Siri_Nlu_External_SystemOffered);
    if (v35)
    {
      return result;
    }
  }

  v46 = v79;
  v47 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__gaveOptions;
  swift_beginAccess();
  sub_1C8786744(v34 + v47, v46, &dword_1EC2B8A80, &unk_1C8BF5090);
  if (__swift_getEnumTagSinglePayload(v46, 1, v78) == 1)
  {
    sub_1C8778ED8(v46, &dword_1EC2B8A80, &unk_1C8BF5090);
  }

  else
  {
    v48 = v74;
    sub_1C87A5594(v46, v74, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
    sub_1C8A33364(v48);
    result = sub_1C87A9A38(v48, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
    if (v35)
    {
      return result;
    }
  }

  v49 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  swift_beginAccess();
  v50 = v34 + v49;
  v51 = v76;
  sub_1C8786744(v50, v76, &qword_1EC2B8A88, &unk_1C8C10560);
  if (__swift_getEnumTagSinglePayload(v51, 1, v75) == 1)
  {
    sub_1C8778ED8(v51, &qword_1EC2B8A88, &unk_1C8C10560);
  }

  else
  {
    v52 = v71;
    sub_1C87A5594(v51, v71, type metadata accessor for Siri_Nlu_External_SystemInformed);
    sub_1C8A32D80();
    result = sub_1C87A9A38(v52, type metadata accessor for Siri_Nlu_External_SystemInformed);
    if (v35)
    {
      return result;
    }
  }

  v53 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  swift_beginAccess();
  v54 = v34 + v53;
  v55 = v73;
  sub_1C8786744(v54, v73, &qword_1EC2B8A90, &unk_1C8BF50A0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v72) == 1)
  {
    sub_1C8778ED8(v55, &qword_1EC2B8A90, &unk_1C8BF50A0);
  }

  else
  {
    v56 = v68;
    sub_1C87A5594(v55, v68, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);
    sub_1C8A33324();
    result = sub_1C87A9A38(v56, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);
    if (v35)
    {
      return result;
    }
  }

  v57 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  swift_beginAccess();
  v58 = v34 + v57;
  v59 = v70;
  sub_1C8786744(v58, v70, &qword_1EC2B8A98, &unk_1C8C10550);
  if (__swift_getEnumTagSinglePayload(v59, 1, v69) == 1)
  {
    sub_1C8778ED8(v59, &qword_1EC2B8A98, &unk_1C8C10550);
  }

  else
  {
    v60 = v66;
    sub_1C87A5594(v59, v66, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);
    sub_1C8A32DC0(v60, 7, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, sub_1C8A2EA14);
    result = sub_1C87A9A38(v60, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);
    if (v35)
    {
      return result;
    }
  }

  v61 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C8786744(v34 + v61, v44, &qword_1EC2B6110, &qword_1C8BF5070);
  v62 = v67;
  if (__swift_getEnumTagSinglePayload(v44, 1, v67) == 1)
  {
    return sub_1C8778ED8(v44, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  v63 = v44;
  v64 = v65;
  (*(v43 + 32))(v65, v63, v62);
  sub_1C8A33908(v64, 101, MEMORY[0x1E69AA9A0], &qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  return (*(v43 + 8))(v64, v62);
}

uint64_t sub_1C8A2E438(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  sub_1C8786744(v3 + *(v10 + 24), v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8A32CE4(v9, 1, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_UUID);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_UsoGraph(0), sub_1C87A4F90(qword_1EDACA548, v12, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACCCE0, 255, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph), result = sub_1C8BD507C(), !v2))
  {
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v13, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2E6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v32 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v31 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33();
  v21 = v20 - v19;
  v22 = a2(0);
  v23 = *(v22 + 20);
  v33 = v5;
  sub_1C8786744(v5 + v23, v16, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87A5594(v16, v21, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8A32CE4(v21, 1, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v21, type metadata accessor for Siri_Nlu_External_UUID);
    if (v3)
    {
      return result;
    }
  }

  sub_1C8786744(v33 + *(v22 + 24), v9, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v32) == 1)
  {
    sub_1C8778ED8(v9, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  else
  {
    v25 = v9;
    v26 = v31;
    sub_1C87A5594(v25, v31, type metadata accessor for Siri_Nlu_External_UsoGraph);
    sub_1C8A32E88(v26);
    result = sub_1C87A9A38(v26, type metadata accessor for Siri_Nlu_External_UsoGraph);
    if (v3)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  OUTLINED_FUNCTION_1_19();
  sub_1C87A4F90(v27, v28, v29, &unk_1C8C10348);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A2EA14(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v32 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v8 = MEMORY[0x1EEE9AC00](v32);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID;
  swift_beginAccess();
  sub_1C8786744(a1 + v18, v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v19 = v33;
  }

  else
  {
    sub_1C87A5594(v14, v17, type metadata accessor for Siri_Nlu_External_UUID);
    v20 = v33;
    sub_1C8A32CE4(v17, 1, type metadata accessor for Siri_Nlu_External_UUID);
    v19 = v20;
    result = sub_1C87A9A38(v17, type metadata accessor for Siri_Nlu_External_UUID);
    if (v20)
    {
      return result;
    }
  }

  v22 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason;
  swift_beginAccess();
  sub_1C8786744(a1 + v22, v7, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v23 = v32;
  if (__swift_getEnumTagSinglePayload(v7, 1, v32) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  else
  {
    sub_1C87A5594(v7, v11, type metadata accessor for Siri_Nlu_External_UsoGraph);
    sub_1C8A32E88(v11);
    result = sub_1C87A9A38(v11, type metadata accessor for Siri_Nlu_External_UsoGraph);
    if (v19)
    {
      return result;
    }
  }

  v24 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task;
  swift_beginAccess();
  v25 = a1 + v24;
  v26 = v31;
  sub_1C8786744(v25, v31, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v23) == 1)
  {
    return sub_1C8778ED8(v26, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  v27 = v26;
  v28 = v30;
  sub_1C87A5594(v27, v30, type metadata accessor for Siri_Nlu_External_UsoGraph);
  sub_1C8A32E88(v28);
  return sub_1C87A9A38(v28, type metadata accessor for Siri_Nlu_External_UsoGraph);
}

uint64_t sub_1C8A2EE38(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v1, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A2EEBC(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  sub_1C8786744(v3 + *(v10 + 24), v6, &qword_1EC2B6128, &qword_1C8BE6DC8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B6128, &qword_1C8BE6DC8);
  }

  else
  {
    sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_RRBoundingBox);
    sub_1C8A32D80();
    result = sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_RRBoundingBox);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_RRSurroundingText(0), sub_1C87A4F90(qword_1EDACA548, v12, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EC2B8BE0, 255, type metadata accessor for Siri_Nlu_External_RRSurroundingText, &protocol conformance descriptor for Siri_Nlu_External_RRSurroundingText), result = sub_1C8BD507C(), !v2))
  {
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v13, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2F17C(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v53 - v4;
  v55 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v53 - v7;
  v59 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v53 - v12;
  v67 = sub_1C8BD493C();
  v66 = *(v67 - 8);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - v17;
  v19 = sub_1C8BD48FC();
  v63 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v53 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity;
  swift_beginAccess();
  v28 = a1 + v27;
  v29 = a1;
  sub_1C8786744(v28, v23, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C8778ED8(v23, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    v30 = v68;
  }

  else
  {
    sub_1C87A5594(v23, v26, type metadata accessor for Siri_Nlu_External_UsoGraph);
    v31 = v68;
    sub_1C8A32E88(v26);
    v30 = v31;
    result = sub_1C87A9A38(v26, type metadata accessor for Siri_Nlu_External_UsoGraph);
    if (v31)
    {
      return result;
    }
  }

  v33 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score;
  swift_beginAccess();
  sub_1C8786744(a1 + v33, v18, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1C8778ED8(v18, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  }

  else
  {
    v34 = v63;
    v35 = v62;
    (*(v63 + 32))();
    sub_1C8A33908(v35, 2, MEMORY[0x1E69AA960], &qword_1EDACA320, MEMORY[0x1E69AA960], MEMORY[0x1E69AA958]);
    if (v30)
    {
      return (*(v34 + 8))(v35, v19);
    }

    (*(v34 + 8))(v35, v19);
  }

  v36 = v64;
  v37 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID;
  swift_beginAccess();
  sub_1C8786744(a1 + v37, v36, &qword_1EC2B6110, &qword_1C8BF5070);
  v38 = v67;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v67);
  v40 = v66;
  v41 = v65;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v36, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    v42 = v61;
    (*(v66 + 32))(v61, v36, v38);
    sub_1C8A33908(v42, 3, MEMORY[0x1E69AA9A0], &qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
    if (v30)
    {
      return (*(v40 + 8))(v42, v38);
    }

    (*(v40 + 8))(v42, v38);
  }

  v43 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID;
  swift_beginAccess();
  sub_1C8786744(v29 + v43, v41, &qword_1EC2B6110, &qword_1C8BF5070);
  if (__swift_getEnumTagSinglePayload(v41, 1, v38) == 1)
  {
    sub_1C8778ED8(v41, &qword_1EC2B6110, &qword_1C8BF5070);
    goto LABEL_18;
  }

  v42 = v58;
  (*(v40 + 32))(v58, v41, v38);
  sub_1C8A33908(v42, 4, MEMORY[0x1E69AA9A0], &qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  if (v30)
  {
    return (*(v40 + 8))(v42, v38);
  }

  (*(v40 + 8))(v42, v38);
LABEL_18:
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID;
  swift_beginAccess();
  v45 = v29 + v44;
  v46 = v60;
  sub_1C8786744(v45, v60, &qword_1EC2B8AA0, &qword_1C8BF50B8);
  if (__swift_getEnumTagSinglePayload(v46, 1, v59) == 1)
  {
    sub_1C8778ED8(v46, &qword_1EC2B8AA0, &qword_1C8BF50B8);
  }

  else
  {
    v47 = v57;
    sub_1C87A5594(v46, v57, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier);
    sub_1C8A339DC(v47);
    result = sub_1C87A9A38(v47, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier);
    if (v30)
    {
      return result;
    }
  }

  v48 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  swift_beginAccess();
  if (!*(*(v29 + v48) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_RRAnnotation(0), sub_1C87A4F90(qword_1EDACA548, v49, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EC2B8DF0, 255, type metadata accessor for Siri_Nlu_External_RRAnnotation, &protocol conformance descriptor for Siri_Nlu_External_RRAnnotation), , sub_1C8BD507C(), result = , !v30))
  {
    v50 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata;
    swift_beginAccess();
    v51 = v56;
    sub_1C8786744(v29 + v50, v56, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    if (__swift_getEnumTagSinglePayload(v51, 1, v55) == 1)
    {
      return sub_1C8778ED8(v51, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    }

    else
    {
      v52 = v54;
      sub_1C87A5594(v51, v54, type metadata accessor for Siri_Nlu_External_RRMetadata);
      sub_1C8A32D80();
      return sub_1C87A9A38(v52, type metadata accessor for Siri_Nlu_External_RRMetadata);
    }
  }

  return result;
}

uint64_t sub_1C8A2FCB0(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v27 - v4;
  v32 = sub_1C8BD48FC();
  v28 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v33 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_Task(0);
  sub_1C8786744(v2 + v16[5], v12, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v17 = v34;
  }

  else
  {
    sub_1C87A5594(v12, v15, type metadata accessor for Siri_Nlu_External_UUID);
    v18 = v34;
    sub_1C8A32CE4(v15, 1, type metadata accessor for Siri_Nlu_External_UUID);
    v17 = v18;
    result = sub_1C87A9A38(v15, type metadata accessor for Siri_Nlu_External_UUID);
    if (v18)
    {
      return result;
    }
  }

  sub_1C8786744(v2 + v16[6], v8, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  else
  {
    v20 = v29;
    sub_1C87A5594(v8, v29, type metadata accessor for Siri_Nlu_External_UsoGraph);
    sub_1C8A32E88(v20);
    result = sub_1C87A9A38(v20, type metadata accessor for Siri_Nlu_External_UsoGraph);
    if (v17)
    {
      return result;
    }
  }

  v21 = v32;
  v22 = v30;
  sub_1C8786744(v2 + v16[7], v30, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v21);
  v24 = v31;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v22, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  }

  else
  {
    v25 = v28;
    (*(v28 + 32))(v31, v22, v21);
    sub_1C8A33908(v24, 3, MEMORY[0x1E69AA960], &qword_1EDACA320, MEMORY[0x1E69AA960], MEMORY[0x1E69AA958]);
    if (v17)
    {
      return (*(v25 + 8))(v24, v21);
    }

    (*(v25 + 8))(v24, v21);
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v26, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A301E8(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v23 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v20 = v6;
    v21 = v1;
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    type metadata accessor for Siri_Nlu_External_Span(0);
    sub_1C87A4F90(qword_1EDACA548, v14, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C87A4F90(&qword_1EC2B4C10, 255, type metadata accessor for Siri_Nlu_External_Span, &protocol conformance descriptor for Siri_Nlu_External_Span);
    result = sub_1C8BD507C();
    if (v2)
    {
      return result;
    }

    v6 = v20;
    v3 = v21;
  }

  v16 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
  sub_1C8786744(v3 + *(v16 + 24), v10, &unk_1EC2B8A70, &qword_1C8BF5078);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C8778ED8(v10, &unk_1EC2B8A70, &qword_1C8BF5078);
  }

  else
  {
    sub_1C87A5594(v10, v13, type metadata accessor for Siri_Nlu_External_RewriteMessage);
    sub_1C8A32CE4(v13, 2, type metadata accessor for Siri_Nlu_External_RewriteMessage);
    result = sub_1C87A9A38(v13, type metadata accessor for Siri_Nlu_External_RewriteMessage);
    if (v2)
    {
      return result;
    }
  }

  sub_1C8786744(v3 + *(v16 + 28), v6, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  if (__swift_getEnumTagSinglePayload(v6, 1, v23) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  }

  else
  {
    v17 = v22;
    sub_1C87A5594(v6, v22, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
    sub_1C8A32CE4(v17, 3, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
    result = sub_1C87A9A38(v17, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
    if (v2)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v18, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A30610(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v22 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_Cdm_NluRequest(0);
  sub_1C8786744(v2 + *(v13 + 24), v9, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C8778ED8(v9, &qword_1EC2B64B0, &unk_1C8BF3F40);
    v14 = v23;
  }

  else
  {
    sub_1C87A5594(v9, v12, type metadata accessor for Siri_Nlu_External_RequestID);
    v15 = v23;
    sub_1C8A32D80();
    v14 = v15;
    result = sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_RequestID);
    if (v15)
    {
      return result;
    }
  }

  sub_1C8786744(v2 + *(v13 + 28), v5, &qword_1EC2B6038, &unk_1C8BE8850);
  if (__swift_getEnumTagSinglePayload(v5, 1, v22) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B6038, &unk_1C8BE8850);
  }

  else
  {
    v17 = v21;
    sub_1C87A5594(v5, v21, type metadata accessor for Siri_Nlu_External_TurnInput);
    sub_1C8A32DC0(v17, 2, type metadata accessor for Siri_Nlu_External_TurnInput, sub_1C8A2A314);
    result = sub_1C87A9A38(v17, type metadata accessor for Siri_Nlu_External_TurnInput);
    if (v14)
    {
      return result;
    }
  }

  if (!*(*v2 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v18, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACC908, 255, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput), result = sub_1C8BD507C(), !v14))
  {
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v19, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A30A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD908, &qword_1C8C0A960);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v36 - v3;
  v39 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD900, &unk_1C8C10590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v36 - v6;
  v41 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD8F8, &unk_1C8C0A950);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v44 = type metadata accessor for Siri_Nlu_External_ResponseStatus(0);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_Cdm_NluResponseP33_DE8F3D6875F9E356771375FBA7E1E6EF13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C8786744(a1 + v18, v14, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B64B0, &unk_1C8BF3F40);
    v19 = v45;
  }

  else
  {
    sub_1C87A5594(v14, v17, type metadata accessor for Siri_Nlu_External_RequestID);
    v20 = v45;
    sub_1C8A32D80();
    result = sub_1C87A9A38(v17, type metadata accessor for Siri_Nlu_External_RequestID);
    v19 = v20;
    if (v20)
    {
      return result;
    }
  }

  v22 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_Cdm_NluResponseP33_DE8F3D6875F9E356771375FBA7E1E6EF13_StorageClass__parses;
  swift_beginAccess();
  if (!*(*(a1 + v22) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C87A4F90(qword_1EDACA548, v23, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EC2B4B68, 255, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse), , sub_1C8BD507C(), result = , !v19))
  {
    v24 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_Cdm_NluResponseP33_DE8F3D6875F9E356771375FBA7E1E6EF13_StorageClass__responseStatus;
    swift_beginAccess();
    sub_1C8786744(a1 + v24, v10, &qword_1EC2BD8F8, &unk_1C8C0A950);
    if (__swift_getEnumTagSinglePayload(v10, 1, v44) == 1)
    {
      sub_1C8778ED8(v10, &qword_1EC2BD8F8, &unk_1C8C0A950);
    }

    else
    {
      v25 = v43;
      sub_1C87A5594(v10, v43, type metadata accessor for Siri_Nlu_External_ResponseStatus);
      sub_1C8A32CE4(v25, 3, type metadata accessor for Siri_Nlu_External_ResponseStatus);
      result = sub_1C87A9A38(v25, type metadata accessor for Siri_Nlu_External_ResponseStatus);
      if (v19)
      {
        return result;
      }
    }

    v26 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_Cdm_NluResponseP33_DE8F3D6875F9E356771375FBA7E1E6EF13_StorageClass__repetitionResults;
    swift_beginAccess();
    if (!*(*(a1 + v26) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_RepetitionResult(0), sub_1C87A4F90(qword_1EDACA548, v27, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACB260, 255, type metadata accessor for Siri_Nlu_External_RepetitionResult, &protocol conformance descriptor for Siri_Nlu_External_RepetitionResult), , sub_1C8BD507C(), result = , !v19))
    {
      v28 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_Cdm_NluResponseP33_DE8F3D6875F9E356771375FBA7E1E6EF13_StorageClass__languageVariantResult;
      swift_beginAccess();
      v29 = a1 + v28;
      v30 = v42;
      sub_1C8786744(v29, v42, &qword_1EC2BD900, &unk_1C8C10590);
      if (__swift_getEnumTagSinglePayload(v30, 1, v41) == 1)
      {
        sub_1C8778ED8(v30, &qword_1EC2BD900, &unk_1C8C10590);
      }

      else
      {
        v31 = v38;
        sub_1C87A5594(v30, v38, type metadata accessor for Siri_Nlu_External_LanguageVariantResult);
        sub_1C8A32D80();
        result = sub_1C87A9A38(v31, type metadata accessor for Siri_Nlu_External_LanguageVariantResult);
        if (v19)
        {
          return result;
        }
      }

      v32 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_Cdm_NluResponseP33_DE8F3D6875F9E356771375FBA7E1E6EF13_StorageClass__supplementaryOutput;
      swift_beginAccess();
      v33 = a1 + v32;
      v34 = v40;
      sub_1C8786744(v33, v40, &qword_1EC2BD908, &qword_1C8C0A960);
      if (__swift_getEnumTagSinglePayload(v34, 1, v39) == 1)
      {
        return sub_1C8778ED8(v34, &qword_1EC2BD908, &qword_1C8C0A960);
      }

      else
      {
        v35 = v37;
        sub_1C87A5594(v34, v37, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput);
        sub_1C8A32D80();
        return sub_1C87A9A38(v35, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput);
      }
    }
  }

  return result;
}

uint64_t sub_1C8A31260(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_Parser(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v15 = v1;
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
    sub_1C87A4F90(qword_1EDACA548, v10, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C87A4F90(&qword_1EC2B4808, 255, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant);
    result = sub_1C8BD507C();
    if (v2)
    {
      return result;
    }

    v3 = v15;
  }

  v12 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  sub_1C8786744(v3 + *(v12 + 24), v6, &qword_1EC2B6540, &unk_1C8BE7A40);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B6540, &unk_1C8BE7A40);
  }

  else
  {
    sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_Parser);
    sub_1C8A32CE4(v9, 2, type metadata accessor for Siri_Nlu_External_Parser);
    result = sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_Parser);
    if (v2)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v13, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A31530(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  if ((*(v1 + *(v3 + 24) + 4) & 1) != 0 || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v4, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), result = sub_1C8BD504C(), !v2))
  {
    if (!*(*v1 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_UtteranceSpan(0), sub_1C87A4F90(qword_1EDACA548, v6, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACBCB0, 255, type metadata accessor for Siri_Nlu_External_UtteranceSpan, &protocol conformance descriptor for Siri_Nlu_External_UtteranceSpan), result = sub_1C8BD507C(), !v2))
    {
      if ((*(v1 + *(v3 + 28) + 4) & 1) != 0 || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v7, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), result = sub_1C8BD504C(), !v2))
      {
        type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
        sub_1C87A4F90(qword_1EDACA548, v8, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

void static SiriNLUTypesPrintUtils.printableSpanMatchResponse(spanMatchResponse:)()
{
  v5 = OUTLINED_FUNCTION_42_8();
  v6 = OUTLINED_FUNCTION_80(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_112_0();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  sub_1C888D594(v4);
  OUTLINED_FUNCTION_13_5();
  if (!v13 & v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v10, v11);
    OUTLINED_FUNCTION_27_10();
    sub_1C87A4F90(v14, 255, v15, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
    OUTLINED_FUNCTION_15_13(v24, v23);
    if (v2)
    {

      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v1);
      sub_1C8778ED8(v0, &qword_1EC2B8718, &qword_1C8C102A0);
      OUTLINED_FUNCTION_26_10();
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
      OUTLINED_FUNCTION_25_12();
      sub_1C87A5594(v0, v3, v22);
      sub_1C8A34338(v3, 0, 1, 1);
      sub_1C87A9A38(v3, 0);
    }
  }
}

void static SiriNLUTypesPrintUtils.printableSpanMatchResponse(spanMatchResponse:withUSOGraph:)(uint64_t a1, char a2)
{
  v8 = OUTLINED_FUNCTION_42_8();
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_112_0();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  if (a2)
  {
    static SiriNLUTypesPrintUtils.printableSpanMatchResponse(spanMatchResponse:)();
LABEL_7:
    OUTLINED_FUNCTION_218();
    return;
  }

  sub_1C888D594(v6);
  OUTLINED_FUNCTION_13_5();
  if (!(!v16 & v15))
  {
    OUTLINED_FUNCTION_10_17(v13, v14);
    OUTLINED_FUNCTION_27_10();
    sub_1C87A4F90(v17, 255, v18, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
    OUTLINED_FUNCTION_15_13(v27, v26);
    if (v4)
    {

      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v3);
      sub_1C8778ED8(v2, &qword_1EC2B8718, &qword_1C8C102A0);
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v3);
      OUTLINED_FUNCTION_25_12();
      sub_1C87A5594(v2, v5, v25);
      sub_1C8A34338(v5, 0, 1, 0);
      sub_1C87A9A38(v5, 0);
    }

    goto LABEL_7;
  }

  __break(1u);
}

void static SiriNLUTypesPrintUtils.printableResponse(response:)()
{
  v3 = OUTLINED_FUNCTION_42_8();
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE798, &qword_1C8C102A8);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_Cdm_NluResponse(v7);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_13_5();
  if (!v12 & v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v9, v10);
    sub_1C87A4F90(&qword_1EC2B44E8, 255, type metadata accessor for Siri_Nlu_External_Cdm_NluResponse, &protocol conformance descriptor for Siri_Nlu_External_Cdm_NluResponse);
    OUTLINED_FUNCTION_5_18();
    if (v1)
    {

      OUTLINED_FUNCTION_18_16();
      sub_1C8778ED8(v2, &qword_1EC2BE798, &qword_1C8C102A8);
      OUTLINED_FUNCTION_12_19();
    }

    else
    {
      OUTLINED_FUNCTION_17_15();
      sub_1C87A5594(v2, v0, type metadata accessor for Siri_Nlu_External_Cdm_NluResponse);
      v13 = OUTLINED_FUNCTION_9_21();
      sub_1C8A357A8(v13, v14, v15, v16, v17, v18, v19, v20, type metadata accessor for Siri_Nlu_External_Cdm_NluResponse, sub_1C8A30A50);
      OUTLINED_FUNCTION_14_14();
    }

    OUTLINED_FUNCTION_16_13();
  }
}

void static SiriNLUTypesPrintUtils.printableRequest(request:)()
{
  v3 = OUTLINED_FUNCTION_42_8();
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7A0, &qword_1C8C102B0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_Cdm_NluRequest(v7);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_13_5();
  if (!v12 & v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v9, v10);
    sub_1C87A4F90(&qword_1EC2B4520, 255, type metadata accessor for Siri_Nlu_External_Cdm_NluRequest, &protocol conformance descriptor for Siri_Nlu_External_Cdm_NluRequest);
    OUTLINED_FUNCTION_5_18();
    if (v1)
    {

      OUTLINED_FUNCTION_18_16();
      sub_1C8778ED8(v2, &qword_1EC2BE7A0, &qword_1C8C102B0);
    }

    else
    {
      OUTLINED_FUNCTION_17_15();
      sub_1C87A5594(v2, v0, type metadata accessor for Siri_Nlu_External_Cdm_NluRequest);
      v13 = OUTLINED_FUNCTION_9_21();
      sub_1C8A34F98(v13, v14, v15, v16, v17, v18, v19, v20, type metadata accessor for Siri_Nlu_External_Cdm_NluRequest, sub_1C8A30610);
      OUTLINED_FUNCTION_14_14();
    }

    OUTLINED_FUNCTION_16_13();
  }
}

void static SiriNLUTypesPrintUtils.printableTask(task:)()
{
  v3 = OUTLINED_FUNCTION_42_8();
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7A8, &qword_1C8C102B8);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_Task(v7);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_13_5();
  if (!v12 & v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v9, v10);
    sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task);
    OUTLINED_FUNCTION_5_18();
    if (v1)
    {

      OUTLINED_FUNCTION_18_16();
      sub_1C8778ED8(v2, &qword_1EC2BE7A8, &qword_1C8C102B8);
      OUTLINED_FUNCTION_12_19();
    }

    else
    {
      OUTLINED_FUNCTION_17_15();
      sub_1C87A5594(v2, v0, type metadata accessor for Siri_Nlu_External_Task);
      v13 = OUTLINED_FUNCTION_9_21();
      sub_1C8A34F98(v13, v14, v15, v16, v17, v18, v19, v20, type metadata accessor for Siri_Nlu_External_Task, sub_1C8A2FCB0);
      OUTLINED_FUNCTION_14_14();
    }

    OUTLINED_FUNCTION_16_13();
  }
}

void static SiriNLUTypesPrintUtils.printableEntityCandidate(entityCandidate:)()
{
  v3 = OUTLINED_FUNCTION_42_8();
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B0, &unk_1C8C102C0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_EntityCandidate(v7);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_13_5();
  if (!v12 & v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v9, v10);
    sub_1C87A4F90(&qword_1EDACB7D8, 255, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate);
    OUTLINED_FUNCTION_5_18();
    if (v1)
    {

      OUTLINED_FUNCTION_18_16();
      sub_1C8778ED8(v2, &qword_1EC2BE7B0, &unk_1C8C102C0);
      OUTLINED_FUNCTION_12_19();
    }

    else
    {
      OUTLINED_FUNCTION_17_15();
      sub_1C87A5594(v2, v0, type metadata accessor for Siri_Nlu_External_EntityCandidate);
      v13 = OUTLINED_FUNCTION_9_21();
      sub_1C8A357A8(v13, v14, v15, v16, v17, v18, v19, v20, type metadata accessor for Siri_Nlu_External_EntityCandidate, sub_1C8A2F17C);
      OUTLINED_FUNCTION_14_14();
    }

    OUTLINED_FUNCTION_16_13();
  }
}

void static SiriNLUTypesPrintUtils.printableSystemDialogActGroup(systemDialogActGroup:)()
{
  v3 = OUTLINED_FUNCTION_42_8();
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v7);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_13_5();
  if (!v12 & v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v9, v10);
    sub_1C87A4F90(&qword_1EC2B8AC0, 255, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);
    OUTLINED_FUNCTION_5_18();
    if (v1)
    {

      OUTLINED_FUNCTION_18_16();
      sub_1C8778ED8(v2, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
      OUTLINED_FUNCTION_12_19();
    }

    else
    {
      OUTLINED_FUNCTION_17_15();
      sub_1C87A5594(v2, v0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
      v13 = OUTLINED_FUNCTION_9_21();
      sub_1C8A34F98(v13, v14, v15, v16, v17, v18, v19, v20, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, sub_1C8A2D458);
      OUTLINED_FUNCTION_14_14();
    }

    OUTLINED_FUNCTION_16_13();
  }
}

void static SiriNLUTypesPrintUtils.printableSystemDialogAct(systemDialogAct:)()
{
  v3 = OUTLINED_FUNCTION_42_8();
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE0, &unk_1C8C102D0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(v7);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_13_5();
  if (!v12 & v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v9, v10);
    sub_1C87A4F90(qword_1EDACB410, 255, type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    OUTLINED_FUNCTION_5_18();
    if (v1)
    {

      OUTLINED_FUNCTION_18_16();
      sub_1C8778ED8(v2, &qword_1EC2B5FE0, &unk_1C8C102D0);
      OUTLINED_FUNCTION_12_19();
    }

    else
    {
      OUTLINED_FUNCTION_17_15();
      sub_1C87A5594(v2, v0, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
      v13 = OUTLINED_FUNCTION_9_21();
      sub_1C8A357A8(v13, v14, v15, v16, v17, v18, v19, v20, type metadata accessor for Siri_Nlu_External_SystemDialogAct, sub_1C8A2D720);
      OUTLINED_FUNCTION_14_14();
    }

    OUTLINED_FUNCTION_16_13();
  }
}

void static SiriNLUTypesPrintUtils.printableUserParse(userParse:)()
{
  v3 = OUTLINED_FUNCTION_42_8();
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UserParse(v7);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_13_5();
  if (!v12 & v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_17(v9, v10);
    sub_1C87A4F90(&qword_1EC2B4B68, 255, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
    OUTLINED_FUNCTION_5_18();
    if (v1)
    {

      OUTLINED_FUNCTION_18_16();
      sub_1C8778ED8(v2, &qword_1EC2BE7B8, &qword_1C8C10AA0);
      OUTLINED_FUNCTION_12_19();
    }

    else
    {
      OUTLINED_FUNCTION_17_15();
      sub_1C87A5594(v2, v0, type metadata accessor for Siri_Nlu_External_UserParse);
      v13 = OUTLINED_FUNCTION_9_21();
      sub_1C8A34F98(v13, v14, v15, v16, v17, v18, v19, v20, type metadata accessor for Siri_Nlu_External_UserParse, sub_1C8A2B608);
      OUTLINED_FUNCTION_14_14();
    }

    OUTLINED_FUNCTION_16_13();
  }
}

id sub_1C8A32AB4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = a3;
  a4();

  v6 = sub_1C8BD518C();

  return v6;
}

uint64_t static SiriNLUTypesPrintUtils.printableProtoObject(object:vocabManager:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  OUTLINED_FUNCTION_44_12();

  return sub_1C87990F4(v3, v4, v5, v6, v7, v1, v2);
}

uint64_t static SiriNLUTypesPrintUtils.printableProtoObjects(objects:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for SiriNLUTypesPrintUtils();
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C8799CAC(v3, v20);
      v5 = v21;
      v6 = v22;
      __swift_project_boxed_opaque_existential_1Tm(v20, v21);
      OUTLINED_FUNCTION_44_12();
      v12 = sub_1C87990F4(v7, v8, v9, v10, v11, v5, v6);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1C88DB338(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_1C88DB338((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v20[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7C0, &unk_1C8C102E0);
  sub_1C8A36008();
  v18 = sub_1C8BD516C();

  return v18;
}

uint64_t sub_1C8A32CE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  (a3)(0, a2);
  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  OUTLINED_FUNCTION_1_19();
  sub_1C87A4F90(v3, v4, v5, &unk_1C8C10348);

  v6 = sub_1C8BD49DC();
  return OUTLINED_FUNCTION_69_5(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t sub_1C8A32D80()
{
  OUTLINED_FUNCTION_65_8();
  v1 = v0(&v11);
  return OUTLINED_FUNCTION_69_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t sub_1C8A32DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t *))
{
  v7 = v5;
  v13 = v4;
  v8 = *(a1 + *((a3)(0, a2) + 20));

  a4(v8, &v13);
  if (!v7)
  {
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    OUTLINED_FUNCTION_1_19();
    sub_1C87A4F90(v9, v10, v11, &unk_1C8C10348);
    sub_1C8BD49DC();
  }
}

uint64_t sub_1C8A32E88(uint64_t a1)
{
  v3 = sub_1C8BD51CC();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C8BD4A8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8A3606C(a1, v12, type metadata accessor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4A7C();
  sub_1C87A4F90(&qword_1EDACCCE0, 255, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  v13 = sub_1C8BD4C9C();
  if (v1)
  {

    (*(v7 + 8))(v9, v6);
    return sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_UsoGraph);
  }

  else
  {
    v15 = v13;
    v16 = v14;
    (*(v7 + 8))(v9, v6);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
    swift_initStackObject();
    sub_1C87A5614(v12);
    v19 = v18;
    v36 = 2570;
    v37 = 0xE200000000000000;
    v20 = sub_1C8BD426C();
    MEMORY[0x1CCA7E2D0](v20);

    MEMORY[0x1CCA7E2D0](2570, 0xE200000000000000);
    sub_1C8BD51BC();
    v33 = sub_1C8BD519C();
    v22 = v21;

    (*(v35 + 8))(v5, v3);
    if (v22 >> 60 == 15)
    {
      sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_UsoGraph);

      return sub_1C87A997C(v15, v16);
    }

    else
    {
      v36 = 0x7061726723232322;
      v37 = 0xE900000000000068;
      v35 = v19;
      v24 = v33;
      v23 = v34;
      v38 = *(v34 + 24);
      v25 = sub_1C8BD527C();
      MEMORY[0x1CCA7E2D0](v25);

      MEMORY[0x1CCA7E2D0](572728099, 0xE400000000000000);
      v31 = v37;
      v32 = v36;
      swift_beginAccess();
      sub_1C87A8FA8(v24, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v23 + 16);
      sub_1C87A9014(v32, v31, v24, v22, v15, v16, isUniquelyReferenced_nonNull_native);
      *(v23 + 16) = v38;
      sub_1C87A997C(v15, v16);
      swift_endAccess();

      sub_1C87A9A24(v24, v22);
      result = sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_UsoGraph);
      v27 = *(v23 + 24);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
      }

      else
      {
        *(v23 + 24) = v29;
      }
    }
  }

  return result;
}

uint64_t sub_1C8A33324()
{
  OUTLINED_FUNCTION_65_8();
  v1 = sub_1C8A2E6F8(&v11, v0);
  return OUTLINED_FUNCTION_69_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t sub_1C8A33364(uint64_t *a1)
{
  if (!*(*a1 + 16))
  {

LABEL_5:
    type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v3, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C8BD49DC();
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  sub_1C87A4F90(qword_1EDACA548, v2, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
  sub_1C87A4F90(&qword_1EDACBDF8, 255, type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);

  sub_1C8BD507C();
  if (!v1)
  {
    goto LABEL_5;
  }
}

uint64_t sub_1C8A334E8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61F0, &qword_1C8BF50B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1;
  v10 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  sub_1C8786744(a1 + *(v10 + 20), v6, &unk_1EC2B61F0, &qword_1C8BF50B0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_1C8778ED8(v6, &unk_1EC2B61F0, &qword_1C8BF50B0);
LABEL_4:
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v11, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C8BD49DC();
  }

  sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_UserDialogAct);

  sub_1C8A32DC0(v9, 1, type metadata accessor for Siri_Nlu_External_UserDialogAct, sub_1C8A2BCD8);
  sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_UserDialogAct);
  if (!v2)
  {
    goto LABEL_4;
  }
}

uint64_t sub_1C8A3370C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1;
  v10 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  sub_1C8786744(a1 + *(v10 + 20), v6, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_1C8778ED8(v6, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_4:
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v11, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C8BD49DC();
  }

  sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_UsoGraph);

  sub_1C8A32E88(v9);
  sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_UsoGraph);
  if (!v2)
  {
    goto LABEL_4;
  }
}

uint64_t sub_1C8A33908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  (a3)(0, a2);
  sub_1C87A4F90(a4, 255, a5, a6);
  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  OUTLINED_FUNCTION_1_19();
  sub_1C87A4F90(v9, v10, v11, &unk_1C8C10348);

  v12 = sub_1C8BD4C8C();
  return OUTLINED_FUNCTION_69_5(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
}

uint64_t sub_1C8A339DC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1C8BD493C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1;
  v11 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  v12 = *(v11 + 20);
  v17 = a1;
  sub_1C8786744(a1 + v12, v6, &qword_1EC2B6110, &qword_1C8BF5070);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_1C8778ED8(v6, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);

    sub_1C8A33908(v10, 1, MEMORY[0x1E69AA9A0], &qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
    if (v2)
    {
      (*(v8 + 8))(v10, v7);
    }

    (*(v8 + 8))(v10, v7);
  }

  if ((*(v17 + *(v11 + 24) + 4) & 1) != 0 || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v13, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C8BD4F9C(), !v2))
  {
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v14, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C8BD49DC();
  }
}

uint64_t sub_1C8A33CF0(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for Siri_Nlu_External_RepetitionResult(0) + 20) + 4))
  {

LABEL_4:
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v3, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C8BD49DC();
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v2, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);

  sub_1C8BD504C();
  if (!v1)
  {
    goto LABEL_4;
  }
}

id SiriNLUTypesPrintUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriNLUTypesPrintUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriNLUTypesPrintUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriNLUTypesPrintUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriNLUTypesPrintUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C8A34338(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v90 = a4;
  v93 = a2;
  v107 = *MEMORY[0x1E69E9840];
  v95 = sub_1C8BD51CC();
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C8BD4A8C();
  v94 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v87 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  v106 = sub_1C87A4F90(&qword_1EC2B45A0, 255, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  sub_1C8A3606C(a1, boxed_opaque_existential_1, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
  sub_1C8799CAC(v104, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7D8, &qword_1C8C10538);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_1C8778ED8(v11, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    __swift_project_boxed_opaque_existential_1Tm(v104, matched);
    sub_1C8BD4A7C();
    v16 = sub_1C8BD4C9C();
    v18 = v17;
    v89 = 0;
    (*(v94 + 8))(v8, v6);
    v100 = v16;
    v101 = v18;
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    v19 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7E0, &unk_1C8C10540);
    sub_1C87A4F3C();
    *(v19 + 16) = sub_1C8BD513C();
    *(v19 + 24) = 0;
    v98 = v19;
    if (*(*boxed_opaque_existential_1 + 16))
    {
      type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
      sub_1C87A4F90(qword_1EDACA548, v21, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
      sub_1C87A4F90(&qword_1EC2B4A28, 255, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
      v22 = v89;
      sub_1C8BD507C();
      if (v22)
      {
        v23 = v92;
        goto LABEL_8;
      }
    }

    else
    {
      v22 = v89;
    }

    v23 = v92;
    sub_1C87A4F90(qword_1EDACA548, v20, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C8BD49DC();
    if (!v22)
    {
      v89 = 0;
LABEL_10:
      v25 = v98;
      swift_beginAccess();
      v88 = v25;
      v26 = *(v25 + 16);
      v27 = v26 + 64;
      v28 = 1 << *(v26 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & *(v26 + 64);
      v31 = (v28 + 63) >> 6;
      v92 = v23 + 1;
      v91 = v26;

      v32 = 0;
      if (!v30)
      {
        while (1)
        {
LABEL_13:
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_51:
            __break(1u);
          }

          if (v33 >= v31)
          {
            break;
          }

          v30 = *(v27 + 8 * v33);
          ++v32;
          if (v30)
          {
            v32 = v33;
            goto LABEL_17;
          }
        }

        v45 = objc_opt_self();
        v46 = v100;
        v47 = v101;
        v48 = sub_1C8BD3FEC();
        v97 = 0;
        v49 = [v45 JSONObjectWithData:v48 options:0 error:&v97];

        v50 = v97;
        if (v49)
        {
          sub_1C8BD523C();
          swift_unknownObjectRelease();
          sub_1C87A9D30(v99, &v102);
          __swift_project_boxed_opaque_existential_1Tm(&v102, v103);
          v51 = sub_1C8BD528C();
          v97 = 0;
          v52 = [v45 dataWithJSONObject:v51 options:1 error:&v97];
          swift_unknownObjectRelease();
          v53 = v97;
          if (v52)
          {
            v54 = sub_1C8BD400C();
            v56 = v55;

            *&v99[0] = v54;
            *(&v99[0] + 1) = v56;
            v57 = *(v88 + 16);
            v60 = *(v57 + 64);
            v59 = v57 + 64;
            v58 = v60;
            v61 = 1 << *(*(v88 + 16) + 32);
            v62 = -1;
            if (v61 < 64)
            {
              v62 = ~(-1 << v61);
            }

            v63 = v62 & v58;
            v64 = (v61 + 63) >> 6;
            v91 = *(v88 + 16);

            v65 = 0;
            v66 = v96;
            if (!v63)
            {
              while (1)
              {
LABEL_27:
                v67 = v65 + 1;
                if (__OFADD__(v65, 1))
                {
                  goto LABEL_51;
                }

                if (v67 >= v64)
                {
                  break;
                }

                v63 = *(v59 + 8 * v67);
                ++v65;
                if (v63)
                {
                  v65 = v67;
                  goto LABEL_31;
                }
              }

              v79 = v99[0];
              sub_1C8BD51BC();
              v80 = sub_1C8BD51AC();
              if (v81)
              {
                v24 = v80;
              }

              else
              {
                v24 = 0xD000000000000036;
              }

              sub_1C87A997C(v79, *(&v79 + 1));
              __swift_destroy_boxed_opaque_existential_1Tm(&v102);

              v82 = v100;
              v83 = v101;
              goto LABEL_45;
            }

LABEL_31:
            while (1)
            {
              v68 = __clz(__rbit64(v63)) | (v65 << 6);
              v69 = (*(v91 + 48) + 16 * v68);
              v70 = v69[1];
              v71 = *(v91 + 56) + 32 * v68;
              v72 = *(v71 + 16);
              v73 = *(v71 + 24);
              v93 = *v69;
              v94 = v70;
              sub_1C87A8FBC(v93, v70);

              sub_1C87A8FBC(v72, v73);
              sub_1C8BD51BC();
              v74 = sub_1C8BD519C();
              v76 = v75;
              (*v92)(v66, v95);
              if (v76 >> 60 == 15)
              {
                break;
              }

              type metadata accessor for SiriNLUTypesPrintUtils();
              if (v90)
              {
                  ;
                }
              }

              else
              {
                  ;
                }
              }

              v63 &= v63 - 1;
              sub_1C87A9A24(v74, v76);
              sub_1C87A997C(v93, v94);

              sub_1C87A997C(v72, v73);
              if (!v63)
              {
                goto LABEL_27;
              }
            }

            sub_1C87A997C(v93, v94);

            sub_1C87A997C(v72, v73);
            sub_1C87A997C(*&v99[0], *(&v99[0] + 1));
            __swift_destroy_boxed_opaque_existential_1Tm(&v102);
LABEL_49:

            sub_1C87A997C(v100, v101);
            v24 = 0xD000000000000022;
            goto LABEL_46;
          }

          v84 = v53;
          v24 = 0xD00000000000001ALL;
          v85 = sub_1C8BD3FCC();

          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1Tm(&v102);
        }

        else
        {
          v77 = v50;
          v24 = 0xD00000000000001ALL;
          v78 = sub_1C8BD3FCC();

          swift_willThrow();
        }

        v82 = v46;
        v83 = v47;
LABEL_45:
        sub_1C87A997C(v82, v83);
        goto LABEL_46;
      }

LABEL_17:
      while (1)
      {
        v34 = __clz(__rbit64(v30)) | (v32 << 6);
        v35 = (*(v91 + 48) + 16 * v34);
        v37 = *v35;
        v36 = v35[1];
        v38 = *(v91 + 56) + 32 * v34;
        v39 = *(v38 + 16);
        v40 = *(v38 + 24);
        sub_1C87A8FBC(*v35, v36);

        v94 = v39;
        v93 = v40;
        sub_1C87A8FBC(v39, v40);
        v41 = v96;
        sub_1C8BD51BC();
        v42 = sub_1C8BD519C();
        v44 = v43;
        (*v92)(v41, v95);
        if (v44 >> 60 == 15)
        {
          break;
        }

        type metadata accessor for SiriNLUTypesPrintUtils();
          ;
        }

        v30 &= v30 - 1;
        sub_1C87A9A24(v42, v44);
        sub_1C87A997C(v37, v36);

        sub_1C87A997C(v94, v93);
        if (!v30)
        {
          goto LABEL_13;
        }
      }

      sub_1C87A997C(v37, v36);

      sub_1C87A997C(v94, v93);
      goto LABEL_49;
    }

LABEL_8:

    v89 = 0;
    goto LABEL_10;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_1C87A5594(v11, v14, type metadata accessor for Siri_Nlu_External_UsoGraph);
  static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)(v14, v93);
  v24 = sub_1C8BD426C();

  sub_1C87A9A38(v14, type metadata accessor for Siri_Nlu_External_UsoGraph);
LABEL_46:
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  return v24;
}

id sub_1C8A34F98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(void), unint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(uint64_t *))
{
  OUTLINED_FUNCTION_60_8(a1, a2, a3, a4);
  v14 = v13;
  v15 = a9;
  v104[5] = *MEMORY[0x1E69E9840];
  sub_1C8BD51CC();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_53_6(v17);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v26 = a5(0);
  v104[4] = OUTLINED_FUNCTION_51_5(v26);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  sub_1C8A3606C(v14, boxed_opaque_existential_1, a9);
  sub_1C8799CAC(v104, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7D8, &qword_1C8C10538);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
    OUTLINED_FUNCTION_11_23();
    sub_1C87A5594(v11, v10, v31);
    OUTLINED_FUNCTION_54_7();
    if (!v14)
    {
      v39 = sub_1C8BD426C();

      OUTLINED_FUNCTION_0_27();
      sub_1C87A9A38(v10, v40);
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_0_27();
    sub_1C87A9A38(v10, v32);
  }

  else
  {
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v24);
    sub_1C8778ED8(v11, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  __swift_project_boxed_opaque_existential_1Tm(v104, v104[3]);
  sub_1C8BD4A7C();
  sub_1C8BD4C9C();
  OUTLINED_FUNCTION_56_7();
  v36 = OUTLINED_FUNCTION_33_10();
  v37(v36);
  v101 = v26;
  v102 = v10;
  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  v38 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7E0, &unk_1C8C10540);
  sub_1C87A4F3C();
  *(v38 + 16) = sub_1C8BD513C();
  *(v38 + 24) = 0;
  v98 = v38;
  a10(&v98);
  OUTLINED_FUNCTION_46_3();
  v95 = v38;
  v41 = *(v38 + 16) + 64;
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_37_7(v42);
  v43 = 0;
  if (boxed_opaque_existential_1)
  {
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_19_13();
      v21 = *v45;
      v46 = OUTLINED_FUNCTION_80_1();
      sub_1C87A8FBC(v46, v47);

      OUTLINED_FUNCTION_45_6();
      sub_1C8BD51BC();
      OUTLINED_FUNCTION_49_9();
      v48 = sub_1C8BD519C();
      v50 = v49;
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_61_10();
      v51();
      if (v50 >> 60 == 15)
      {
        break;
      }

      type metadata accessor for SiriNLUTypesPrintUtils();
      do
      {
        v52 = OUTLINED_FUNCTION_80_1();
      }

      while (sub_1C87A9AB4(v52, v53, v48, v50, v54));
      boxed_opaque_existential_1 &= boxed_opaque_existential_1 - 1;
      sub_1C87A9A24(v48, v50);
      v55 = OUTLINED_FUNCTION_80_1();
      sub_1C87A997C(v55, v56);

      OUTLINED_FUNCTION_30_10();
      if (!boxed_opaque_existential_1)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_48_10();
    OUTLINED_FUNCTION_26_10();
    v90 = OUTLINED_FUNCTION_80_1();
    sub_1C87A997C(v90, v91);

    OUTLINED_FUNCTION_30_10();
    goto LABEL_39;
  }

  while (1)
  {
LABEL_8:
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
    }

    if (v44 >= a9)
    {
      break;
    }

    boxed_opaque_existential_1 = *(v41 + 8 * v44);
    ++v43;
    if (boxed_opaque_existential_1)
    {
      v43 = v44;
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_48_10();
  objc_opt_self();
  v57 = v101;
  v58 = v102;
  OUTLINED_FUNCTION_230();
  v59 = sub_1C8BD3FEC();
  OUTLINED_FUNCTION_59_9();
  v60 = OUTLINED_FUNCTION_58_7();
  v39 = [v60 v61];

  OUTLINED_FUNCTION_68_7();
  if (v39)
  {
    sub_1C8BD523C();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_52_7();
    OUTLINED_FUNCTION_59_9();
    v62 = OUTLINED_FUNCTION_58_7();
    v64 = [v62 v63];
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_68_7();
    if (v64)
    {
      v39 = sub_1C8BD400C();
      v66 = v65;

      v99 = v39;
      v100 = v66;
      v67 = *(v95 + 16) + 64;
      OUTLINED_FUNCTION_7_26();
      OUTLINED_FUNCTION_55_8(v68);
      v69 = 0;
      if (a9)
      {
        goto LABEL_24;
      }

      do
      {
LABEL_20:
        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_41;
        }

        if (v70 >= v57)
        {
          v83 = OUTLINED_FUNCTION_48_10();
          OUTLINED_FUNCTION_67_8(v83);
          OUTLINED_FUNCTION_271();
          sub_1C8BD51AC();
          OUTLINED_FUNCTION_36_7();
          v84 = OUTLINED_FUNCTION_271();
          sub_1C87A997C(v84, v85);
          OUTLINED_FUNCTION_39_6();
          v86 = v101;
          v87 = v102;
          goto LABEL_35;
        }

        v15 = *(v67 + 8 * v70);
        ++v69;
      }

      while (!v15);
      v69 = v70;
LABEL_24:
      while (1)
      {
        OUTLINED_FUNCTION_19_13();
        OUTLINED_FUNCTION_38_12();

        v71 = OUTLINED_FUNCTION_104_0();
        sub_1C87A8FBC(v71, v72);
        v39 = v97;
        sub_1C8BD51BC();
        OUTLINED_FUNCTION_49_9();
        sub_1C8BD519C();
        OUTLINED_FUNCTION_56_7();
        OUTLINED_FUNCTION_32_12();
        OUTLINED_FUNCTION_61_10();
        v73();
        if (v66 >> 60 == 15)
        {
          break;
        }

        type metadata accessor for SiriNLUTypesPrintUtils();
        if (v96)
        {
          do
          {
            v74 = OUTLINED_FUNCTION_31_10();
          }

          while (sub_1C87A9AB4(v74, v75, v58, v21, v76));
        }

        else
        {
          do
          {
            v77 = OUTLINED_FUNCTION_31_10();
          }

          while (sub_1C87A9AB4(v77, v78, 0, 0xC000000000000000, v79));
        }

        v15 &= v15 - 1;
        sub_1C87A9A24(v64, v66);
        OUTLINED_FUNCTION_29_9();

        v80 = OUTLINED_FUNCTION_104_0();
        sub_1C87A997C(v80, v81);
        if (!v15)
        {
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_48_10();
      OUTLINED_FUNCTION_26_10();
      OUTLINED_FUNCTION_29_9();

      v92 = OUTLINED_FUNCTION_104_0();
      sub_1C87A997C(v92, v93);
      sub_1C87A997C(v99, v100);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
LABEL_39:
      OUTLINED_FUNCTION_47_9();
      sub_1C87A997C(v101, v102);
      OUTLINED_FUNCTION_64_7();
      v39 = (v94 + 8);
      goto LABEL_36;
    }

    v88 = OUTLINED_FUNCTION_41_9();

    swift_willThrow();
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_39_6();
  }

  else
  {
    v82 = OUTLINED_FUNCTION_41_9();

    swift_willThrow();
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_26_10();
  }

  v86 = OUTLINED_FUNCTION_230();
LABEL_35:
  sub_1C87A997C(v86, v87);
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  return v39;
}

id sub_1C8A357A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(void), unint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(void, uint64_t *))
{
  OUTLINED_FUNCTION_60_8(a1, a2, a3, a4);
  v14 = v13;
  v107[5] = *MEMORY[0x1E69E9840];
  sub_1C8BD51CC();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_53_6(v16);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v25 = a5(0);
  v107[4] = OUTLINED_FUNCTION_51_5(v25);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v107);
  sub_1C8A3606C(v14, boxed_opaque_existential_1, a9);
  sub_1C8799CAC(v107, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7D8, &qword_1C8C10538);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
    OUTLINED_FUNCTION_11_23();
    sub_1C87A5594(v11, v10, v30);
    OUTLINED_FUNCTION_54_7();
    if (!a9)
    {
      v39 = sub_1C8BD426C();

      OUTLINED_FUNCTION_0_27();
      sub_1C87A9A38(v10, v40);
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_0_27();
    sub_1C87A9A38(v10, v31);
  }

  else
  {
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v23);
    sub_1C8778ED8(v11, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  __swift_project_boxed_opaque_existential_1Tm(v107, v107[3]);
  sub_1C8BD4A7C();
  sub_1C8BD4C9C();
  OUTLINED_FUNCTION_56_7();
  v35 = OUTLINED_FUNCTION_33_10();
  v36(v35);
  v104 = v23;
  v105 = v10;
  v37 = type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  v38 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7E0, &unk_1C8C10540);
  sub_1C87A4F3C();
  *(v38 + 16) = sub_1C8BD513C();
  *(v38 + 24) = 0;
  v101 = v38;
  a10(*(boxed_opaque_existential_1 + *(v25 + 20)), &v101);
  OUTLINED_FUNCTION_1_19();
  sub_1C87A4F90(v41, v42, v43, &unk_1C8C10348);
  sub_1C8BD49DC();
  OUTLINED_FUNCTION_46_3();
  v98 = v37;
  v44 = *(v37 + 16) + 64;
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_37_7(v45);
  v46 = 0;
  if (boxed_opaque_existential_1)
  {
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_19_13();
      v20 = *v48;
      v49 = OUTLINED_FUNCTION_80_1();
      sub_1C87A8FBC(v49, v50);

      OUTLINED_FUNCTION_45_6();
      sub_1C8BD51BC();
      OUTLINED_FUNCTION_49_9();
      v51 = sub_1C8BD519C();
      v53 = v52;
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_61_10();
      v54();
      if (v53 >> 60 == 15)
      {
        break;
      }

      type metadata accessor for SiriNLUTypesPrintUtils();
      do
      {
        v55 = OUTLINED_FUNCTION_80_1();
      }

      while (sub_1C87A9AB4(v55, v56, v51, v53, v57));
      boxed_opaque_existential_1 &= boxed_opaque_existential_1 - 1;
      sub_1C87A9A24(v51, v53);
      v58 = OUTLINED_FUNCTION_80_1();
      sub_1C87A997C(v58, v59);

      OUTLINED_FUNCTION_30_10();
      if (!boxed_opaque_existential_1)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_48_10();
    OUTLINED_FUNCTION_26_10();
    v93 = OUTLINED_FUNCTION_80_1();
    sub_1C87A997C(v93, v94);

    OUTLINED_FUNCTION_30_10();
    goto LABEL_39;
  }

  while (1)
  {
LABEL_8:
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
    }

    if (v47 >= v25)
    {
      break;
    }

    boxed_opaque_existential_1 = *(v44 + 8 * v47);
    ++v46;
    if (boxed_opaque_existential_1)
    {
      v46 = v47;
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_48_10();
  objc_opt_self();
  v60 = v104;
  v61 = v105;
  OUTLINED_FUNCTION_230();
  v62 = sub_1C8BD3FEC();
  OUTLINED_FUNCTION_59_9();
  v63 = OUTLINED_FUNCTION_58_7();
  v39 = [v63 v64];

  OUTLINED_FUNCTION_68_7();
  if (v39)
  {
    sub_1C8BD523C();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_52_7();
    OUTLINED_FUNCTION_59_9();
    v65 = OUTLINED_FUNCTION_58_7();
    v67 = [v65 v66];
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_68_7();
    if (v67)
    {
      v39 = sub_1C8BD400C();
      v69 = v68;

      v102 = v39;
      v103 = v69;
      v70 = *(v98 + 16) + 64;
      OUTLINED_FUNCTION_7_26();
      OUTLINED_FUNCTION_55_8(v71);
      v72 = 0;
      if (v25)
      {
        goto LABEL_24;
      }

      do
      {
LABEL_20:
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_41;
        }

        if (v73 >= v60)
        {
          v86 = OUTLINED_FUNCTION_48_10();
          OUTLINED_FUNCTION_67_8(v86);
          OUTLINED_FUNCTION_271();
          sub_1C8BD51AC();
          OUTLINED_FUNCTION_36_7();
          v87 = OUTLINED_FUNCTION_271();
          sub_1C87A997C(v87, v88);
          OUTLINED_FUNCTION_39_6();
          v89 = v104;
          v90 = v105;
          goto LABEL_35;
        }

        v25 = *(v70 + 8 * v73);
        ++v72;
      }

      while (!v25);
      v72 = v73;
LABEL_24:
      while (1)
      {
        OUTLINED_FUNCTION_19_13();
        OUTLINED_FUNCTION_38_12();

        v74 = OUTLINED_FUNCTION_104_0();
        sub_1C87A8FBC(v74, v75);
        v39 = v100;
        sub_1C8BD51BC();
        OUTLINED_FUNCTION_49_9();
        sub_1C8BD519C();
        OUTLINED_FUNCTION_56_7();
        OUTLINED_FUNCTION_32_12();
        OUTLINED_FUNCTION_61_10();
        v76();
        if (v69 >> 60 == 15)
        {
          break;
        }

        type metadata accessor for SiriNLUTypesPrintUtils();
        if (v99)
        {
          do
          {
            v77 = OUTLINED_FUNCTION_31_10();
          }

          while (sub_1C87A9AB4(v77, v78, v61, v20, v79));
        }

        else
        {
          do
          {
            v80 = OUTLINED_FUNCTION_31_10();
          }

          while (sub_1C87A9AB4(v80, v81, 0, 0xC000000000000000, v82));
        }

        v25 &= v25 - 1;
        sub_1C87A9A24(v67, v69);
        OUTLINED_FUNCTION_29_9();

        v83 = OUTLINED_FUNCTION_104_0();
        sub_1C87A997C(v83, v84);
        if (!v25)
        {
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_48_10();
      OUTLINED_FUNCTION_26_10();
      OUTLINED_FUNCTION_29_9();

      v95 = OUTLINED_FUNCTION_104_0();
      sub_1C87A997C(v95, v96);
      sub_1C87A997C(v102, v103);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
LABEL_39:
      OUTLINED_FUNCTION_47_9();
      sub_1C87A997C(v104, v105);
      OUTLINED_FUNCTION_64_7();
      v39 = (v97 + 8);
      goto LABEL_36;
    }

    v91 = OUTLINED_FUNCTION_41_9();

    swift_willThrow();
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_39_6();
  }

  else
  {
    v85 = OUTLINED_FUNCTION_41_9();

    swift_willThrow();
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_26_10();
  }

  v89 = OUTLINED_FUNCTION_230();
LABEL_35:
  sub_1C87A997C(v89, v90);
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  return v39;
}

unint64_t sub_1C8A36008()
{
  result = qword_1EC2BE7C8;
  if (!qword_1EC2BE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2BE7C0, &unk_1C8C102E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BE7C8);
  }

  return result;
}

uint64_t sub_1C8A3606C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_30_10()
{
  v2 = *(v0 - 296);
  v3 = *(v0 - 304);

  return sub_1C87A997C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_37_7(uint64_t a1)
{
  *(v2 - 312) = v1 + 8;
  *(v2 - 320) = a1;
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return sub_1C8BD3FCC();
}

uint64_t OUTLINED_FUNCTION_52_7()
{
  sub_1C87A9D30((v0 - 248), (v0 - 176));
  __swift_project_boxed_opaque_existential_1Tm((v0 - 176), *(v0 - 152));

  return sub_1C8BD528C();
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return type metadata accessor for Siri_Nlu_External_UsoGraph(0);
}

id OUTLINED_FUNCTION_68_7()
{
  v2 = *(v0 - 272);

  return v2;
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.planText.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(0);
  OUTLINED_FUNCTION_8_0(*(v0 + 24));

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.planText.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

void (*Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.planText.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = OUTLINED_FUNCTION_20_11(v2);
  v4 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(v3) + 24);
  v2[8] = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v2 + 3) = v5;
  *v2 = v7;
  *(v2 + 1) = v8;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.clearPlanText()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.generatedTranscriptEventsJson.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(0);
  v1 = OUTLINED_FUNCTION_535(*(v0 + 28));
  sub_1C87A8FA8(v1, v2);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.generatedTranscriptEventsJson.setter()
{
  v0 = OUTLINED_FUNCTION_68();
  v1 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(v0);
  return OUTLINED_FUNCTION_1159(*(v1 + 28));
}

uint64_t (*Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.generatedTranscriptEventsJson.modify(uint64_t a1))(uint64_t *, char)
{
  v2 = OUTLINED_FUNCTION_20_11(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(v2) + 28);
  *(a1 + 24) = v3;
  v6 = OUTLINED_FUNCTION_535(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_1C87A8FA8(v6, v7);
  return sub_1C8A38304;
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.clearGeneratedTranscriptEventsJson()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(0) + 28);
  sub_1C87A9A24(*v1, *(v1 + 8));
  *v1 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.transcriptEvents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(v0);
  return nullsub_1;
}

double Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.init()@<D0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = (a1 + *(v2 + 24));
  *v3 = 0;
  v3[1] = 0;
  result = 0.0;
  *(a1 + *(v2 + 28)) = xmmword_1C8BFA8E0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.protoEncoding.getter()
{
  OUTLINED_FUNCTION_15_14();
  v1 = OUTLINED_FUNCTION_535(v0);
  sub_1C87A8FA8(v1, v2);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.protoEncoding.setter()
{
  v0 = OUTLINED_FUNCTION_68();
  v1 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(v0);
  return OUTLINED_FUNCTION_1159(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.protoEncoding.modify(uint64_t a1))(uint64_t *, char)
{
  *(a1 + 16) = v1;
  OUTLINED_FUNCTION_15_14();
  *(a1 + 24) = v3;
  v6 = OUTLINED_FUNCTION_535(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_1C87A8FA8(v6, v7);
  return sub_1C8A3684C;
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.clearProtoEncoding()()
{
  OUTLINED_FUNCTION_15_14();
  v2 = (v0 + v1);
  sub_1C87A9A24(*(v0 + v1), *(v0 + v1 + 8));
  *v2 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.runtimeEncoding.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(0);
  v1 = OUTLINED_FUNCTION_535(*(v0 + 24));
  sub_1C87A8FA8(v1, v2);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.runtimeEncoding.setter()
{
  v0 = OUTLINED_FUNCTION_68();
  v1 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(v0);
  return OUTLINED_FUNCTION_1159(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.runtimeEncoding.modify(uint64_t a1))(uint64_t *, char)
{
  v2 = OUTLINED_FUNCTION_20_11(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(v2) + 24);
  *(a1 + 24) = v3;
  v6 = OUTLINED_FUNCTION_535(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_1C87A8FA8(v6, v7);
  return sub_1C8A38304;
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.clearRuntimeEncoding()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(0) + 24);
  sub_1C87A9A24(*v1, *(v1 + 8));
  *v1 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.eventDescription.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(0);
  OUTLINED_FUNCTION_8_0(*(v0 + 28));

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.eventDescription.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(v3) + 28));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

void (*Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.eventDescription.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = OUTLINED_FUNCTION_20_11(v2);
  v4 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(v3) + 28);
  v2[8] = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v2 + 3) = v5;
  *v2 = v7;
  *(v2 + 1) = v8;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.clearEventDescription()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_5_0();

  return v1(v0);
}

double Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.init()@<D0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = OUTLINED_FUNCTION_15_14();
  result = 0.0;
  *(a2 + v5) = xmmword_1C8BFA8E0;
  *(a2 + *(v3 + 24)) = xmmword_1C8BFA8E0;
  v6 = (a2 + *(v3 + 28));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C8A36D08()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE7E8);
  __swift_project_value_buffer(v0, qword_1EC2BE7E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "plan_text";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "generated_transcript_events_json";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "transcript_events";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A36FE0(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_8();
        sub_1C8A378DC();
        break;
      case 1:
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_8();
        sub_1C8A37894();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A36FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(0);
  sub_1C8A37E44(&qword_1EC2BE818, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(0);
  if (!*(v3 + *(v6 + 24) + 8) || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), (v5 = v4) == 0))
  {
    v8 = v3 + *(v6 + 28);
    v9 = *(v8 + 8);
    if (v9 >> 60 == 15 || (v10 = *v8, sub_1C87A8FBC(*v8, *(v8 + 8)), OUTLINED_FUNCTION_210_1(), sub_1C8BD4D6C(), v5 = v4, result = sub_1C87A9A24(v10, v9), !v4))
    {
      if (!*(*v3 + 16))
      {
        return sub_1C8BD49DC();
      }

      type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(0);
      sub_1C8A37E44(&qword_1EC2BE818, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent);
      result = sub_1C8BD4E0C();
      if (!v5)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse(v4);
  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *v7 == *v8 && v5 == v6;
    if (!v9 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1036();
  if (!(!v9 & v12))
  {
    OUTLINED_FUNCTION_1154();
    if (!(!v13 & v12))
    {
      v18 = OUTLINED_FUNCTION_431();
      v19 = MEMORY[0x1CCA7D0F0](v18);
      v20 = OUTLINED_FUNCTION_516();
      sub_1C87A9A24(v20, v21);
      v22 = OUTLINED_FUNCTION_97();
      sub_1C87A9A24(v22, v23);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

LABEL_17:
    v14 = OUTLINED_FUNCTION_431();
    sub_1C87A9A24(v14, v15);
    v16 = OUTLINED_FUNCTION_516();
    sub_1C87A9A24(v16, v17);
    return 0;
  }

  OUTLINED_FUNCTION_1154();
  if (!(!v9 & v12))
  {
    goto LABEL_17;
  }

  v10 = OUTLINED_FUNCTION_431();
  sub_1C87A9A24(v10, v11);
LABEL_19:
  sub_1C87D2AEC(*v2, *a2);
  if (v24)
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_10_18();
    sub_1C8A37E44(v25, v26, MEMORY[0x1E69AAC10]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t sub_1C8A373DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A37E44(&qword_1EC2BE888, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A3745C(uint64_t a1)
{
  v2 = sub_1C8A37E44(&qword_1EC2BE838, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A374CC(uint64_t a1, uint64_t a2)
{
  sub_1C8A37E44(&qword_1EC2BE838, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CdmPlannerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A37558()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE800);
  __swift_project_value_buffer(v0, qword_1EC2BE800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "proto_encoding";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "runtime_encoding";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "event_description";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8_19();
        OUTLINED_FUNCTION_8();
        sub_1C8A378DC();
        break;
      case 2:
        OUTLINED_FUNCTION_8_19();
        OUTLINED_FUNCTION_8();
        sub_1C8A37894();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A37830(v3, v4);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A37894()
{
  v1 = OUTLINED_FUNCTION_9();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_22_16(*(v3 + 24));
  return v0(v4);
}

uint64_t sub_1C8A378DC()
{
  v1 = OUTLINED_FUNCTION_9();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_22_16(*(v3 + 28));
  return v0(v4);
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(v5);
  OUTLINED_FUNCTION_26_11();
  if (!v8 & v7 || (v9 = OUTLINED_FUNCTION_88(), sub_1C87A8FBC(v9, v10), OUTLINED_FUNCTION_88(), OUTLINED_FUNCTION_19_14(), sub_1C8BD4D6C(), v11 = OUTLINED_FUNCTION_88(), result = sub_1C87A9A24(v11, v12), !v4))
  {
    OUTLINED_FUNCTION_26_11();
    if (!v8 & v7 || (v14 = OUTLINED_FUNCTION_88(), sub_1C87A8FBC(v14, v15), OUTLINED_FUNCTION_88(), OUTLINED_FUNCTION_19_14(), sub_1C8BD4D6C(), v16 = OUTLINED_FUNCTION_88(), result = sub_1C87A9A24(v16, v17), !v4))
    {
      if (!*(v3 + *(v6 + 28) + 8))
      {
        return sub_1C8BD49DC();
      }

      OUTLINED_FUNCTION_19_14();
      result = sub_1C8BD4DDC();
      if (!v4)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(v0);
  OUTLINED_FUNCTION_1036();
  if (!v4 & v3)
  {
    OUTLINED_FUNCTION_1154();
    if (!(!v4 & v3))
    {
      goto LABEL_15;
    }

    v1 = OUTLINED_FUNCTION_431();
    sub_1C87A9A24(v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_1154();
    if (!v4 & v3)
    {
      goto LABEL_15;
    }

    v5 = OUTLINED_FUNCTION_431();
    v6 = MEMORY[0x1CCA7D0F0](v5);
    v7 = OUTLINED_FUNCTION_516();
    sub_1C87A9A24(v7, v8);
    v9 = OUTLINED_FUNCTION_97();
    sub_1C87A9A24(v9, v10);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_1036();
  if (!v4 & v3)
  {
    OUTLINED_FUNCTION_1154();
    if (!v4 & v3)
    {
      v11 = OUTLINED_FUNCTION_431();
      sub_1C87A9A24(v11, v12);
      goto LABEL_18;
    }

LABEL_15:
    v15 = OUTLINED_FUNCTION_431();
    sub_1C87A9A24(v15, v16);
    v17 = OUTLINED_FUNCTION_516();
    sub_1C87A9A24(v17, v18);
    return 0;
  }

  OUTLINED_FUNCTION_1154();
  if (!v14 & v13)
  {
    goto LABEL_15;
  }

  v20 = OUTLINED_FUNCTION_431();
  v21 = MEMORY[0x1CCA7D0F0](v20);
  v22 = OUTLINED_FUNCTION_516();
  sub_1C87A9A24(v22, v23);
  v24 = OUTLINED_FUNCTION_97();
  sub_1C87A9A24(v24, v25);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  OUTLINED_FUNCTION_1();
  if (v26)
  {
    if (v27)
    {
      v30 = *v28 == *v29 && v26 == v27;
      if (v30 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

  if (v27)
  {
    return 0;
  }

LABEL_27:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_10_18();
  sub_1C8A37E44(v31, v32, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_5_0();
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A37BF0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A37E44(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A37CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A37E44(&qword_1EC2BE880, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A37D54(uint64_t a1)
{
  v2 = sub_1C8A37E44(&qword_1EC2BE818, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A37DC4(uint64_t a1, uint64_t a2)
{
  sub_1C8A37E44(&qword_1EC2BE818, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A37E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C8A380F4(uint64_t a1)
{
  sub_1C8A381C8(319);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B4228, MEMORY[0x1E6969080]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8A381C8(uint64_t a1)
{
  if (!qword_1EC2BE868)
  {
    type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent(255);
    v1 = sub_1C8BD521C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2BE868);
    }
  }
}

void sub_1C8A38248(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EC2B4228, MEMORY[0x1E6969080]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_Internal_Cati_CATIResponse.hypotheses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse(uint64_t a1)
{
  result = qword_1EC2BE8C8;
  if (!qword_1EC2BE8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Cati_CATIResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8A38544()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE890);
  __swift_project_value_buffer(v0, qword_1EC2BE890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "hypotheses";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Cati_CATIResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8A387C0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A387C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A38D94(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Cati_CATIResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C8A38D94(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse), result = sub_1C8BD4E0C(), !v4))
  {
    type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse(0);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Cati_CATIResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C87D2A98(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse(0);
  sub_1C8BD49FC();
  sub_1C8A38D94(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Cati_CATIResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse(0);
  sub_1C8A38D94(&qword_1EC2BE8A8, type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A38ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A38D94(&qword_1EC2BE8D8, type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A38B5C(uint64_t a1)
{
  v2 = sub_1C8A38D94(&qword_1EC2BE8B8, type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A38BCC(uint64_t a1, uint64_t a2)
{
  sub_1C8A38D94(&qword_1EC2BE8B8, type metadata accessor for Siri_Nlu_Internal_Cati_CATIResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A38D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8A38E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A4AA38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8A38E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A4D4AC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_Internal_OverrideCollection.creationTimestampMsSinceUnixEpoch.getter()
{
  type metadata accessor for Siri_Nlu_Internal_OverrideCollection(0);
  OUTLINED_FUNCTION_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_Internal_OverrideCollection.creationTimestampMsSinceUnixEpoch.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_OverrideCollection(v1);
  OUTLINED_FUNCTION_26_3();
  *v2 = v0;
  *(v2 + 8) = 0;
}

uint64_t (*Siri_Nlu_Internal_OverrideCollection.creationTimestampMsSinceUnixEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for Siri_Nlu_Internal_OverrideCollection(0) + 28);
  OUTLINED_FUNCTION_0();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1C8821354;
}

BOOL Siri_Nlu_Internal_OverrideCollection.hasCreationTimestampMsSinceUnixEpoch.getter()
{
  type metadata accessor for Siri_Nlu_Internal_OverrideCollection(0);
  OUTLINED_FUNCTION_26_3();
  return OUTLINED_FUNCTION_25_9(*(v0 + 8));
}

Swift::Void __swiftcall Siri_Nlu_Internal_OverrideCollection.clearCreationTimestampMsSinceUnixEpoch()()
{
  type metadata accessor for Siri_Nlu_Internal_OverrideCollection(0);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_2_1(v0);
}

uint64_t sub_1C8A39060(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_OverrideCollection.assetID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_OverrideCollection.assetID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_OverrideCollection(v2);
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

uint64_t sub_1C8A39180(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_OverrideCollection.version.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_OverrideCollection.version.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_OverrideCollection(v2);
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

uint64_t Siri_Nlu_Internal_OverrideCollection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_OverrideCollection(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_Internal_OverrideCollection.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_OverrideCollection(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_2_1(a1 + v3[7]);
  OUTLINED_FUNCTION_18_2(v3[8]);
  OUTLINED_FUNCTION_18_2(v3[9]);
}

uint64_t Siri_Nlu_Internal_ParseOverride.id.getter()
{
  OUTLINED_FUNCTION_36_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 16, v3);
  if (!*(v2 + 24))
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_ParseOverride.id.setter()
{
  v4 = OUTLINED_FUNCTION_68();
  v5 = type metadata accessor for Siri_Nlu_Internal_ParseOverride(v4);
  v6 = OUTLINED_FUNCTION_41_1(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A408E0(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_178_0(v8 + 16, v7);
  *(v8 + 16) = v2;
  *(v8 + 24) = v0;
}

void (*Siri_Nlu_Internal_ParseOverride.id.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 64) = v0;
  OUTLINED_FUNCTION_36_8();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_121_1(v4 + 16);
  if (*(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  return sub_1C8A39564;
}

void sub_1C8A39564()
{
  OUTLINED_FUNCTION_925();
  v2 = *(v1 + 48);
  v3 = *(v0 + 56);
  if (v4)
  {

    OUTLINED_FUNCTION_184();
    Siri_Nlu_Internal_ParseOverride.id.setter();
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_40_8();
      v9 = OUTLINED_FUNCTION_2();
      v10 = sub_1C8A408E0(v9);
      OUTLINED_FUNCTION_90(v10);
    }

    OUTLINED_FUNCTION_37_0(v8 + 16, v0 + 24);
    *(v8 + 16) = v2;
    *(v8 + 24) = v3;
  }

  free(v0);
}

BOOL Siri_Nlu_Internal_ParseOverride.hasID.getter()
{
  OUTLINED_FUNCTION_36_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 16, v3);
  return *(v2 + 24) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_ParseOverride.clearID()()
{
  v2 = OUTLINED_FUNCTION_67_9();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v5 = OUTLINED_FUNCTION_223_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 16, v3);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t Siri_Nlu_Internal_ParseOverride.enabled.getter()
{
  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_54_6(*(v0 + v1) + 32, v2);
  OUTLINED_FUNCTION_114_2();
  return v3 & 1;
}

uint64_t Siri_Nlu_Internal_ParseOverride.enabled.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_67_9();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C8A408E0(v7);
    OUTLINED_FUNCTION_264_1(v8);
  }

  result = OUTLINED_FUNCTION_178_0(v6 + 32, v5);
  *(v6 + 32) = a1 & 1;
  return result;
}

uint64_t Siri_Nlu_Internal_ParseOverride.enabled.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_36_8();
  *(v1 + 80) = v3;
  OUTLINED_FUNCTION_121_1(*(v0 + v3) + 32);
  OUTLINED_FUNCTION_114_2();
  *(v1 + 84) = v4 & 1;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A397CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A408E0(v9);
    OUTLINED_FUNCTION_90(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_37_0(v8 + 32, v3 + v11);
  *(v8 + 32) = v6;

  free(v3);
}

BOOL Siri_Nlu_Internal_ParseOverride.hasEnabled.getter()
{
  OUTLINED_FUNCTION_36_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 32, v3);
  return *(v2 + 32) != 2;
}

Swift::Void __swiftcall Siri_Nlu_Internal_ParseOverride.clearEnabled()()
{
  v2 = OUTLINED_FUNCTION_67_9();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v5 = OUTLINED_FUNCTION_223_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 32, v3);
  *(v4 + 32) = 2;
}

uint64_t Siri_Nlu_Internal_ParseOverride.creationTimestampMsSinceUnixEpoch.getter()
{
  OUTLINED_FUNCTION_36_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 40, v3);
  if (*(v2 + 48))
  {
    return 0;
  }

  else
  {
    return *(v2 + 40);
  }
}

uint64_t Siri_Nlu_Internal_ParseOverride.creationTimestampMsSinceUnixEpoch.setter()
{
  v3 = OUTLINED_FUNCTION_241();
  v4 = type metadata accessor for Siri_Nlu_Internal_ParseOverride(v3);
  v5 = OUTLINED_FUNCTION_436(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C8A408E0(v8);
    OUTLINED_FUNCTION_264_1(v9);
  }

  result = OUTLINED_FUNCTION_178_0(v7 + 40, v6);
  *(v7 + 40) = v0;
  *(v7 + 48) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_ParseOverride.creationTimestampMsSinceUnixEpoch.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_36_8();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_121_1(v4 + 40);
  v5 = *(v4 + 40);
  if (*(v4 + 48))
  {
    v5 = 0;
  }

  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A39A24(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_925();
  v5 = *(v4 + 72);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C8A408E0(v10);
    OUTLINED_FUNCTION_90(v11);
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  OUTLINED_FUNCTION_37_0(v9 + 40, v2 + v12);
  *(v9 + 40) = v5;
  *(v9 + 48) = 0;

  free(v2);
}

BOOL Siri_Nlu_Internal_ParseOverride.hasCreationTimestampMsSinceUnixEpoch.getter()
{
  OUTLINED_FUNCTION_36_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 40, v3);
  return OUTLINED_FUNCTION_25_9(*(v2 + 48));
}

Swift::Void __swiftcall Siri_Nlu_Internal_ParseOverride.clearCreationTimestampMsSinceUnixEpoch()()
{
  v2 = OUTLINED_FUNCTION_67_9();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v5 = OUTLINED_FUNCTION_223_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 40, v3);
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
}

uint64_t Siri_Nlu_Internal_ParseOverride.parserIdentifier.getter@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_36_8();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_54_6(v4 + 49, v5);
  v7 = *(v4 + 49);
  if (v7 == 10)
  {
    LOBYTE(v7) = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1C8A39BA4@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_ParseOverride.parserIdentifier.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_ParseOverride.parserIdentifier.setter(char *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = OUTLINED_FUNCTION_67_9();
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C8A408E0(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_178_0(v7 + 49, v6);
  *(v7 + 49) = v4;
  return result;
}

uint64_t Siri_Nlu_Internal_ParseOverride.parserIdentifier.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_36_8();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_121_1(v4 + 49);
  v5 = *(v4 + 49);
  if (v5 == 10)
  {
    LOBYTE(v5) = 1;
  }

  *(v1 + 84) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A39CF0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_925();
  v5 = *(v4 + 84);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C8A408E0(v10);
    OUTLINED_FUNCTION_90(v11);
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  OUTLINED_FUNCTION_37_0(v9 + 49, v2 + v12);
  *(v9 + 49) = v5;

  free(v2);
}

BOOL Siri_Nlu_Internal_ParseOverride.hasParserIdentifier.getter()
{
  OUTLINED_FUNCTION_36_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 49, v3);
  return *(v2 + 49) != 10;
}

Swift::Void __swiftcall Siri_Nlu_Internal_ParseOverride.clearParserIdentifier()()
{
  v2 = OUTLINED_FUNCTION_67_9();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v5 = OUTLINED_FUNCTION_223_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 49, v3);
  *(v4 + 49) = 10;
}

void Siri_Nlu_Internal_ParseOverride.parse.modify()
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
  v10 = type metadata accessor for Siri_Nlu_External_UserParse(v9);
  OUTLINED_FUNCTION_21();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_11_0(v10[7]);
    OUTLINED_FUNCTION_26(v10[8]);
    type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    type metadata accessor for Siri_Nlu_External_Parser(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_11_0(v10[11]);
    type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
    v27 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_109_4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_ParseOverride.nluRequestRules.getter()
{
  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_54_6(*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules, v2);
}

uint64_t Siri_Nlu_Internal_ParseOverride.nluRequestRules.setter()
{
  v3 = OUTLINED_FUNCTION_241();
  v4 = type metadata accessor for Siri_Nlu_Internal_ParseOverride(v3);
  v5 = OUTLINED_FUNCTION_436(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C8A408E0(v8);
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules;
  OUTLINED_FUNCTION_178_0(v7 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules, v6);
  *(v7 + v10) = v0;
}

uint64_t Siri_Nlu_Internal_ParseOverride.nluRequestRules.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_36_8();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules;
  OUTLINED_FUNCTION_121_1(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A3A218()
{
  OUTLINED_FUNCTION_925();
  v2 = *(v1 + 48);
  if (v3)
  {

    Siri_Nlu_Internal_ParseOverride.nluRequestRules.setter();
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
      OUTLINED_FUNCTION_40_8();
      v10 = OUTLINED_FUNCTION_2();
      v7 = sub_1C8A408E0(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules;
    OUTLINED_FUNCTION_37_0(v7 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules, v0 + 24);
    *(v7 + v11) = v2;
  }

  free(v0);
}

uint64_t Siri_Nlu_Internal_ParseOverride.serializedParse.getter()
{
  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_277(*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse, v5);
  OUTLINED_FUNCTION_13_5();
  sub_1C87A8FA8(v2, v3);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_ParseOverride.serializedParse.setter()
{
  v4 = OUTLINED_FUNCTION_68();
  v5 = type metadata accessor for Siri_Nlu_Internal_ParseOverride(v4);
  v6 = OUTLINED_FUNCTION_41_1(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C8A408E0(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  v10 = (v7 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse);
  OUTLINED_FUNCTION_37_0(v10, v14);
  v11 = *v10;
  v12 = v10[1];
  *v10 = v2;
  v10[1] = v0;
  return sub_1C87A9A24(v11, v12);
}

uint64_t Siri_Nlu_Internal_ParseOverride.serializedParse.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 64) = v0;
  OUTLINED_FUNCTION_36_8();
  *(v1 + 72) = v3;
  OUTLINED_FUNCTION_121_1(*(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse);
  OUTLINED_FUNCTION_13_5();
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  sub_1C87A8FA8(v6, v7);
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A3A484()
{
  OUTLINED_FUNCTION_925();
  v2 = *(v1 + 48);
  v3 = *(v0 + 56);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_184();
    sub_1C87A8FBC(v5, v6);
    OUTLINED_FUNCTION_184();
    Siri_Nlu_Internal_ParseOverride.serializedParse.setter();
    sub_1C87A997C(*(v0 + 48), *(v0 + 56));
  }

  else
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_40_8();
      v11 = OUTLINED_FUNCTION_2();
      v12 = sub_1C8A408E0(v11);
      OUTLINED_FUNCTION_90(v12);
    }

    v13 = (v10 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse);
    OUTLINED_FUNCTION_37_0(v13, v0 + 24);
    v14 = *v13;
    v15 = v13[1];
    *v13 = v2;
    v13[1] = v3;
    sub_1C87A9A24(v14, v15);
  }

  free(v0);
}

BOOL Siri_Nlu_Internal_ParseOverride.hasSerializedParse.getter()
{
  OUTLINED_FUNCTION_36_8();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse;
  OUTLINED_FUNCTION_277(v2, v4);
  return *(v2 + 8) >> 60 != 15;
}

Swift::Void __swiftcall Siri_Nlu_Internal_ParseOverride.clearSerializedParse()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_ParseOverride(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_40_8();
    v5 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A408E0(v5);
    *(v1 + v2) = v4;
  }

  v6 = (v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse);
  OUTLINED_FUNCTION_37_0(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse, v9);
  v7 = *v6;
  v8 = v6[1];
  *v6 = xmmword_1C8BFA8E0;
  sub_1C87A9A24(v7, v8);
}

uint64_t sub_1C8A3A6A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_ComponentOverride.id.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_ComponentOverride.id.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v2);
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

void Siri_Nlu_Internal_ComponentOverride.overrideNamespace.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v1);
  OUTLINED_FUNCTION_134_4();
  if (v2 == 7)
  {
    LOBYTE(v2) = 0;
  }

  *v0 = v2;
}

uint64_t (*Siri_Nlu_Internal_ComponentOverride.overrideNamespace.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v3) + 28);
  *(v1 + 8) = v4;
  v5 = *(v2 + v4);
  if (v5 == 7)
  {
    LOBYTE(v5) = 0;
  }

  *(v1 + 12) = v5;
  return j_j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_Internal_ComponentOverride.hasOverrideNamespace.getter()
{
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride(0);
  OUTLINED_FUNCTION_134_4();
  return v0 != 7;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.enabled.getter()
{
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride(0);
  OUTLINED_FUNCTION_114_2();
  return v0 & 1;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.enabled.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_ComponentOverride.enabled.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v1);
  OUTLINED_FUNCTION_133_1(*(v2 + 32));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.creationTimestampMsSinceUnixEpoch.getter()
{
  OUTLINED_FUNCTION_188_2();
  OUTLINED_FUNCTION_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_Internal_ComponentOverride.creationTimestampMsSinceUnixEpoch.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v2);
  v4 = v1 + *(result + 36);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_ComponentOverride.creationTimestampMsSinceUnixEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  OUTLINED_FUNCTION_188_2();
  *(a1 + 16) = v3;
  OUTLINED_FUNCTION_0();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1C8820288;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 40));
  OUTLINED_FUNCTION_167_3(v9, v10);
  v11 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v11 + 20);
    if (qword_1EC2B5D28 != -1)
    {
      OUTLINED_FUNCTION_112_4(&qword_1EC2B5D28);
    }

    *(a1 + v13) = qword_1EC2BE9A0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v11);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BEB60, &qword_1C8C10AA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_121();
    return sub_1C8791864();
  }

  return result;
}

uint64_t sub_1C8A3AC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_253();
  sub_1C8A4312C();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_ComponentOverride.value.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2BEB60, &qword_1C8C10AA8);
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_200();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C8A3AD54@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_184();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Siri_Nlu_Internal_ComponentOverride.value.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v15);
  OUTLINED_FUNCTION_49(*(v16 + 40));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v9 + 20);
    if (qword_1EC2B5D28 != -1)
    {
      OUTLINED_FUNCTION_112_4(&qword_1EC2B5D28);
    }

    *(v11 + v18) = qword_1EC2BE9A0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v7, &qword_1EC2BEB60, &qword_1C8C10AA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_174_3();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.hasValue.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 40));
  OUTLINED_FUNCTION_190_3(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_ComponentOverride.clearValue()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(0);
  sub_1C8778ED8(v0 + *(v1 + 40), &qword_1EC2BEB60, &qword_1C8C10AA8);
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_ComponentOverride.serializedValue.getter()
{
  OUTLINED_FUNCTION_189_3();
  OUTLINED_FUNCTION_13_5();
  sub_1C87A8FA8(v0, v1);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.serializedValue.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = v1 + *(type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v3) + 44);
  result = sub_1C87A9A24(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_ComponentOverride.serializedValue.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  OUTLINED_FUNCTION_189_3();
  *(a1 + 24) = v3;
  OUTLINED_FUNCTION_13_5();
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_1C87A8FA8(v6, v7);
  return sub_1C89F3FAC;
}

Swift::Void __swiftcall Siri_Nlu_Internal_ComponentOverride.clearSerializedValue()()
{
  OUTLINED_FUNCTION_189_3();
  v2 = (v0 + v1);
  sub_1C87A9A24(*(v0 + v1), *(v0 + v1 + 8));
  *v2 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.ccqrOverrideTemplate.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_65_9(v6);
  OUTLINED_FUNCTION_28(v1 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate);
  OUTLINED_FUNCTION_232();
  sub_1C87867A0(v7, v8, v9, &qword_1C8C10AB0);
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  OUTLINED_FUNCTION_65(v0);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BEB68, &qword_1C8C10AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_11();
    return OUTLINED_FUNCTION_227_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.ccqrOverrideTemplate.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB68, &qword_1C8C10AB0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8A432C4(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_31_11();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v10, v11, v12, v13);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.ccqrOverrideTemplate.modify()
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
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(v9);
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
    v14 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2BEB68, &qword_1C8C10AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_174_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8A3B5E8()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_97();
    sub_1C8A4312C();
    v2(v3);
    sub_1C8A43180();
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

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.hasCcqrOverrideTemplate.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_65_9(v5);
  v6 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate;
  OUTLINED_FUNCTION_28(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate);
  OUTLINED_FUNCTION_108_2(v0 + v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_Internal_ComponentOverride.OverrideValue.clearCcqrOverrideTemplate()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB68, &qword_1C8C10AB0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8A432C4(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v10, v11, v12, v13);
  swift_endAccess();
}

void sub_1C8A3B82C()
{
  OUTLINED_FUNCTION_261();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_230();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_45();
  v11 = v5(v10);
  v12 = OUTLINED_FUNCTION_211_4(v11);
  OUTLINED_FUNCTION_277(v12, &v14);
  sub_1C87867A0(v0 + v3, v1, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  OUTLINED_FUNCTION_65(v1);
  if (v13)
  {
    Siri_Nlu_External_UserParse.init()();
    OUTLINED_FUNCTION_65(v1);
    if (!v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    }
  }

  else
  {
    sub_1C8791864();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C8A3B984()
{
  OUTLINED_FUNCTION_261();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_46_0();
  v14 = *(v9(v13) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_2();
    v16 = v5(v17);
    *(v10 + v14) = v16;
  }

  OUTLINED_FUNCTION_184();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v3;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C878656C(v1, v16 + v22, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.userParse.modify()
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
  v10 = type metadata accessor for Siri_Nlu_External_UserParse(v9);
  OUTLINED_FUNCTION_21();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_11_0(v10[7]);
    OUTLINED_FUNCTION_26(v10[8]);
    type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    type metadata accessor for Siri_Nlu_External_Parser(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_11_0(v10[11]);
    type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
    v27 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_109_4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A3BC9C(uint64_t (*a1)(void), uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  v8 = a1(0);
  v9 = OUTLINED_FUNCTION_211_4(v8);
  OUTLINED_FUNCTION_28(v9);
  sub_1C87867A0(v2 + a2, v3, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  v10 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  __swift_getEnumTagSinglePayload(v3, 1, v10);
  sub_1C8778ED8(v3, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  return OUTLINED_FUNCTION_268_1();
}

void sub_1C8A3BDBC()
{
  OUTLINED_FUNCTION_261();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_46_0();
  v14 = *(v9(v13) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_2();
    v16 = v5(v17);
    *(v10 + v14) = v16;
  }

  type metadata accessor for Siri_Nlu_External_UserParse(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v3;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C878656C(v1, v16 + v22, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.lvcOverrideValue.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_65_9(v6);
  OUTLINED_FUNCTION_28(v1 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue);
  OUTLINED_FUNCTION_232();
  sub_1C87867A0(v7, v8, v9, &qword_1C8C10AB8);
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  OUTLINED_FUNCTION_65(v0);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BEB80, &qword_1C8C10AB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    return OUTLINED_FUNCTION_227_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.lvcOverrideValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB80, &qword_1C8C10AB8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8A432C4(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_29_10();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v10, v11, v12, v13);
  return swift_endAccess();
}

uint64_t sub_1C8A3C108(void (*a1)(void), void (*a2)(void))
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  a1(0);
  a2(0);
  v4 = OUTLINED_FUNCTION_73_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.lvcOverrideValue.modify()
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
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(v9);
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
    v14 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2BEB80, &qword_1C8C10AB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_174_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.hasLvcOverrideValue.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_65_9(v5);
  v6 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue;
  OUTLINED_FUNCTION_28(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue);
  OUTLINED_FUNCTION_108_2(v0 + v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_Internal_ComponentOverride.OverrideValue.clearLvcOverrideValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB80, &qword_1C8C10AB8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8A432C4(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v10, v11, v12, v13);
  swift_endAccess();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.planOverrideValue.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_65_9(v6);
  v7 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  OUTLINED_FUNCTION_28(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue);
  OUTLINED_FUNCTION_167_3(v0 + v7, v1);
  v8 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v8 + 20));
    result = OUTLINED_FUNCTION_65(v1);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BEB90, &unk_1C8C10AC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_15();
    OUTLINED_FUNCTION_121();
    return sub_1C8791864();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.planOverrideValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB90, &unk_1C8C10AC0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8A432C4(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_28_15();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v10, v11, v12, v13);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  OUTLINED_FUNCTION_18_2(*(v1 + 20));
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.planOverrideValue.modify()
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
  v10 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(v9);
  OUTLINED_FUNCTION_21();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v10 + 20));
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BEB90, &unk_1C8C10AC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_15();
    OUTLINED_FUNCTION_174_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.hasPlanOverrideValue.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_65_9(v5);
  v6 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  OUTLINED_FUNCTION_28(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue);
  OUTLINED_FUNCTION_108_2(v0 + v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_Internal_ComponentOverride.OverrideValue.clearPlanOverrideValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB90, &unk_1C8C10AC0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8A432C4(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v10, v11, v12, v13);
  swift_endAccess();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate.rewriteMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 20));
  OUTLINED_FUNCTION_167_3(v9, v10);
  v11 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v11 + 20)) = 4;
    OUTLINED_FUNCTION_18_2(*(v11 + 24));
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_11();
    OUTLINED_FUNCTION_121();
    return sub_1C8791864();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate.rewriteMessage.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_200();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate.rewriteMessage.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = *(type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(v15) + 20);
  *(v0 + 40) = v16;
  v17 = OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_166_4(v17, v18);
  OUTLINED_FUNCTION_73(v7);
  if (v19)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v11 + *(v9 + 20)) = 4;
    OUTLINED_FUNCTION_26(*(v9 + 24));
    OUTLINED_FUNCTION_73(v7);
    if (!v19)
    {
      sub_1C8778ED8(v7, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_11();
    OUTLINED_FUNCTION_184();
    sub_1C8791864();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue.lvcValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 20));
  OUTLINED_FUNCTION_167_3(v9, v10);
  v11 = type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v11 + 20));
    v13 = a1 + *(v11 + 24);
    *v13 = 0;
    *(v13 + 8) = 1;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BEBA0, &qword_1C8C10AD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_121();
    return sub_1C8791864();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue.lvcValue.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BEBA0, &qword_1C8C10AD0);
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_200();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue.lvcValue.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_MultilingualVariant(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = *(type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(v14) + 20);
  *(v0 + 40) = v15;
  v16 = OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_166_4(v16, v17);
  OUTLINED_FUNCTION_73(v7);
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v9 + 20));
    OUTLINED_FUNCTION_11_0(*(v9 + 24));
    OUTLINED_FUNCTION_73(v7);
    if (!v18)
    {
      sub_1C8778ED8(v7, &qword_1EC2BEBA0, &qword_1C8C10AD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_184();
    sub_1C8791864();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

BOOL sub_1C8A3CF94()
{
  OUTLINED_FUNCTION_50();
  v6 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  v10 = v2(0);
  sub_1C87867A0(v1 + *(v10 + 20), v4, v6, v3);
  v11 = v0(0);
  v12 = __swift_getEnumTagSinglePayload(v4, 1, v11) != 1;
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v13, v14, v15);
  return v12;
}

uint64_t sub_1C8A3D08C()
{
  OUTLINED_FUNCTION_50();
  v4 = OUTLINED_FUNCTION_167();
  v6 = v5(v4);
  sub_1C8778ED8(v1 + *(v6 + 20), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C8A3D13C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.plan.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.plan.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(v2);
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

double Siri_Nlu_Internal_ComponentOverride.init()@<D0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v4 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v3);
  OUTLINED_FUNCTION_702(v4);
  OUTLINED_FUNCTION_18_2(v1[6]);
  *(a1 + v1[7]) = 7;
  OUTLINED_FUNCTION_206_2(v1[8]);
  OUTLINED_FUNCTION_2_1(a1 + v1[9]);
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  result = 0.0;
  *(a1 + v1[11]) = xmmword_1C8BFA8E0;
  return result;
}

uint64_t sub_1C8A3D30C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_NluRequestRule.id.setter(v1, v2);
}

uint64_t sub_1C8A3D364()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_NluRequestRule.id.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_NluRequestRule(v2);
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

uint64_t sub_1C8A3D450()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_NluRequestRule.localeID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_NluRequestRule(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_NluRequestRule.localeID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_NluRequestRule(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
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

Swift::Void __swiftcall Siri_Nlu_Internal_NluRequestRule.clearLocaleID()()
{
  type metadata accessor for Siri_Nlu_Internal_NluRequestRule(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t sub_1C8A3D5B8()
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

uint64_t sub_1C8A3D600(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_NluRequestRule.deviceType.setter(v1, v2);
}

uint64_t sub_1C8A3D658()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_NluRequestRule.deviceType.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_NluRequestRule(v2);
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

uint64_t sub_1C8A3D720()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1C8A3D754(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_NluRequestRule.userInterfaceIdiom.setter(v1, v2);
}

uint64_t sub_1C8A3D7AC()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_NluRequestRule.userInterfaceIdiom.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_NluRequestRule(v2);
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

uint64_t sub_1C8A3D874()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1C8A3D8E0()
{
  v0 = OUTLINED_FUNCTION_207();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_196();

  return v3(v2);
}

uint64_t sub_1C8A3D96C()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Siri_Nlu_Internal_NluRequestRule.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_NluRequestRule(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.utteranceRule.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6020, &qword_1C8BE6CD8);
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_200();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_TurnInputRule.utteranceRule.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v15);
  OUTLINED_FUNCTION_49(*(v16 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_26(*(v9 + 24));
    *(v11 + *(v9 + 28)) = 3;
    type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
    v18 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_0_0();
    if (!v17)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6020, &qword_1C8BE6CD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_13();
    OUTLINED_FUNCTION_174_3();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.hasUtteranceRule.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 28));
  OUTLINED_FUNCTION_190_3(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_TurnInputRule.clearUtteranceRule()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6020, &qword_1C8BE6CD8);
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_TurnInputRule.negativeContextRules.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1C8A3DD60()
{
  v0 = OUTLINED_FUNCTION_207();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_196();

  return v3(v2);
}

uint64_t sub_1C8A3DDEC()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Siri_Nlu_Internal_TurnInputRule.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.turnContext.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_200();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_TurnInputRule.ContextRule.turnContext.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  *(v0 + 16) = type metadata accessor for Siri_Nlu_External_TurnContext(v8);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v13);
  OUTLINED_FUNCTION_49(*(v14 + 24));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NLContext(0);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
    v20 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_174_3();
  }

  OUTLINED_FUNCTION_260();
}

Swift::Void __swiftcall Siri_Nlu_Internal_TurnInputRule.ContextRule.clearTurnContext()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B6010, &unk_1C8BF5040);
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.matchingSpans.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.applyToPromptScenarios.getter()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(0);
  OUTLINED_FUNCTION_134_4();
  return v0 & 1;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.applyToPromptScenarios.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v0);
  return OUTLINED_FUNCTION_216_2(v1);
}

uint64_t (*Siri_Nlu_Internal_TurnInputRule.ContextRule.applyToPromptScenarios.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 28));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C8A3E1F8@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_TurnInputRule.ContextRule.sdaComparisonMode.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.sdaComparisonMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_TurnInputRule.ContextRule.sdaComparisonMode.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8A3E3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C879EEEC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8A3E414@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_TurnInputRule.ContextRule.SDAContextComparisonMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.pattern.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v2);
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

uint64_t (*Siri_Nlu_Internal_TurnInputRule.UtteranceRule.type.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v3) + 28);
  *(v1 + 8) = v4;
  v5 = *(v2 + v4);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *(v1 + 12) = v5;
  return j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_Internal_TurnInputRule.UtteranceRule.hasType.getter()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  OUTLINED_FUNCTION_134_4();
  return v0 != 3;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.compareOptions.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2BEBA8, &qword_1C8C10AD8);
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_200();
  sub_1C8791864();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_206_2(v3);
  *(a2 + *(v4 + 24)) = v5;
  *(a2 + *(v4 + 28)) = v5;
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.compareOptions.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v15) + 32);
  *(v0 + 40) = v16;
  v17 = OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_166_4(v17, v18);
  OUTLINED_FUNCTION_73(v7);
  if (v19)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v11 + v9[5]) = 2;
    *(v11 + v9[6]) = 2;
    *(v11 + v9[7]) = 2;
    OUTLINED_FUNCTION_73(v7);
    if (!v19)
    {
      sub_1C8778ED8(v7, &qword_1EC2BEBA8, &qword_1C8C10AD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_11();
    OUTLINED_FUNCTION_184();
    sub_1C8791864();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8A3E89C()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_1C8A4312C();
    sub_1C8778ED8(v10 + v5, v3, v2);
    sub_1C8791864();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_253();
    sub_1C8A43180();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v0, v1);
    sub_1C8791864();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v18);
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.hasCompareOptions.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 32));
  OUTLINED_FUNCTION_190_3(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_TurnInputRule.UtteranceRule.clearCompareOptions()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2BEBA8, &qword_1C8C10AD8);
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8A3EB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8782BA4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.caseInsensitive.setter(char a1)
{
  result = OUTLINED_FUNCTION_128_4();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.caseInsensitive.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v1);
  OUTLINED_FUNCTION_133_1(*(v2 + 20));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.diacriticInsensitive.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.diacriticInsensitive.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 24));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.widthInsensitive.getter()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  OUTLINED_FUNCTION_134_4();
  return v0 & 1;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.widthInsensitive.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v0);
  return OUTLINED_FUNCTION_216_2(v1);
}

uint64_t (*Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.widthInsensitive.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 28));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.captureGroupName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v2);
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

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8A3EF68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.label.setter(v1, v2);
}

uint64_t sub_1C8A3EFC0()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.label.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v2);
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

uint64_t sub_1C8A3F088()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetNodeIdx.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v1);
  OUTLINED_FUNCTION_25_0();
  *v2 = v0;
  *(v2 + 4) = 0;
}

uint64_t (*Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetNodeIdx.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 12) = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v2) + 24);
  OUTLINED_FUNCTION_4();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 8) = v5;
  return sub_1C8801920;
}

BOOL Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.hasTargetNodeIdx.getter()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_25_0();
  return OUTLINED_FUNCTION_25_9(*(v0 + 4));
}

Swift::Void __swiftcall Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.clearTargetNodeIdx()()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_16_3(v0);
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetUdaIdx.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v1);
  OUTLINED_FUNCTION_26_3();
  *v2 = v0;
  *(v2 + 4) = 0;
}

uint64_t (*Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetUdaIdx.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 12) = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v2) + 28);
  OUTLINED_FUNCTION_4();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 8) = v5;
  return sub_1C87FE8F0;
}

BOOL Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.hasTargetUdaIdx.getter()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_26_3();
  return OUTLINED_FUNCTION_25_9(*(v0 + 4));
}

Swift::Void __swiftcall Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.clearTargetUdaIdx()()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_16_3(v0);
}

uint64_t sub_1C8A3F2CC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE8E0);
  __swift_project_value_buffer(v0, qword_1EC2BE8E0);
  return sub_1C8BD511C();
}

uint64_t Siri_Nlu_Internal_OverrideMetadata.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_121();
    result = sub_1C8BD4AFC();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static Siri_Nlu_Internal_OverrideMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  v2 = sub_1C8776B78(v0, v1, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v2) & 1;
}

uint64_t sub_1C8A3F48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE50, type metadata accessor for Siri_Nlu_Internal_OverrideMetadata, &protocol conformance descriptor for Siri_Nlu_Internal_OverrideMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A3F50C(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2BECA8, type metadata accessor for Siri_Nlu_Internal_OverrideMetadata, &protocol conformance descriptor for Siri_Nlu_Internal_OverrideMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A3F57C(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2BECA8, type metadata accessor for Siri_Nlu_Internal_OverrideMetadata, &protocol conformance descriptor for Siri_Nlu_Internal_OverrideMetadata);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A3F5FC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE8F8);
  __swift_project_value_buffer(v0, qword_1EC2BE8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OVERRIDE_NAMESPACE_UNSPECIFIED";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OVERRIDE_NAMESPACE_NLX";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OVERRIDE_NAMESPACE_CCQR";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "OVERRIDE_NAMESPACE_MDS_UAAP";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "OVERRIDE_NAMESPACE_LVC";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "OVERRIDE_NAMESPACE_NLv4";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "OVERRIDE_NAMESPACE_PLANNER";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A3F91C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE910);
  __swift_project_value_buffer(v0, qword_1EC2BE910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OVERRIDE_SOURCE_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OVERRIDE_SOURCE_TRIAL_NAMESPACE_SIRI_UNDERSTANDING_NL";
  *(v10 + 8) = 53;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OVERRIDE_SOURCE_TRIAL_NAMESPACE_SIRI_UNDERSTANDING_NL_OVERRIDES";
  *(v12 + 1) = 63;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "OVERRIDE_SOURCE_TESTING";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A3FB9C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE928);
  __swift_project_value_buffer(v0, qword_1EC2BE928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "creation_timestamp_ms_since_unix_epoch";
  *(v6 + 8) = 38;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "asset_id";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "version";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parse_overrides";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "component_overrides";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_OverrideCollection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A3FFBC(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A46EDC();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87A4D90();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C878301C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C87A309C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_OverrideCollection.traverse<A>(visitor:)()
{
  v3 = OUTLINED_FUNCTION_53_7();
  type metadata accessor for Siri_Nlu_Internal_OverrideCollection(v3);
  OUTLINED_FUNCTION_26_3();
  if ((*(v4 + 8) & 1) != 0 || (v1 = v0, result = sub_1C8BD4DFC(), !v0))
  {
    OUTLINED_FUNCTION_513();
    if (!v6 || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v1))
    {
      OUTLINED_FUNCTION_513();
      if (!v7 || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v1))
      {
        OUTLINED_FUNCTION_514();
        if (!v8 || (type metadata accessor for Siri_Nlu_Internal_ParseOverride(0), sub_1C8776B78(&qword_1EC2B41A8, type metadata accessor for Siri_Nlu_Internal_ParseOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ParseOverride), v9 = OUTLINED_FUNCTION_117(), result = OUTLINED_FUNCTION_69_6(v9, 4, v10, v11), !v1))
        {
          if (!*(*(v2 + 8) + 16) || (type metadata accessor for Siri_Nlu_Internal_ComponentOverride(0), sub_1C8776B78(&qword_1EC2B4058, type metadata accessor for Siri_Nlu_Internal_ComponentOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride), v12 = OUTLINED_FUNCTION_117(), result = OUTLINED_FUNCTION_69_6(v12, 5, v13, v14), !v1))
          {
            OUTLINED_FUNCTION_119();
            return sub_1C8BD49DC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_OverrideCollection.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_OverrideCollection(v2) + 28);
  v4 = *(v1 + v3 + 8);
  v5 = *(v0 + v3 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_1();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v8);
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v14);
    v18 = v12 && v16 == v17;
    if (!v18 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_204_2();
  sub_1C87DD108();
  if (v19)
  {
    sub_1C87DD15C();
    if (v20)
    {
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_28();
      v23 = sub_1C8776B78(v21, v22, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_64_0(v23) & 1;
    }
  }

  return 0;
}

uint64_t sub_1C8A40378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE48, type metadata accessor for Siri_Nlu_Internal_OverrideCollection, &protocol conformance descriptor for Siri_Nlu_Internal_OverrideCollection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A403F8(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2BECB8, type metadata accessor for Siri_Nlu_Internal_OverrideCollection, &protocol conformance descriptor for Siri_Nlu_Internal_OverrideCollection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A40468(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2BECB8, type metadata accessor for Siri_Nlu_Internal_OverrideCollection, &protocol conformance descriptor for Siri_Nlu_Internal_OverrideCollection);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A40500()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE940);
  __swift_project_value_buffer(v0, qword_1EC2BE940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C8BE7150;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "enabled";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "creation_timestamp_ms_since_unix_epoch";
  *(v10 + 1) = 38;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "parser_identifier";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "parse";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "nlu_request_rules";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "serialized_parse";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A4085C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 2561;
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse;
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse) = xmmword_1C8BFA8E0;
  return v0;
}

uint64_t sub_1C8A408E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v24 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 2561;
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse;
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules) = MEMORY[0x1E69E7CC0];
  v8 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse);
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse) = xmmword_1C8BFA8E0;
  swift_beginAccess();
  v10 = *(a1 + 16);
  v25 = *(a1 + 24);
  v9 = v25;
  swift_beginAccess();
  *(v1 + 16) = v10;
  *(v1 + 24) = v9;
  swift_beginAccess();
  v11 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v11;
  swift_beginAccess();
  v12 = *(a1 + 40);
  LOBYTE(v10) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v12;
  *(v1 + 48) = v10;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v12;
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse;
  swift_beginAccess();
  v14 = v27;
  sub_1C87867A0(a1 + v13, v27, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  v15 = v26;
  swift_beginAccess();

  sub_1C878656C(v14, v1 + v15, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_beginAccess();
  *(v1 + v7) = v17;

  v18 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  sub_1C87A8FA8(v20, v19);

  swift_beginAccess();
  v21 = *v8;
  v22 = v8[1];
  *v8 = v20;
  v8[1] = v19;
  sub_1C87A9A24(v21, v22);
  return v1;
}

uint64_t sub_1C8A40C30()
{

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse, &qword_1EC2BE7B8, &qword_1C8C10AA0);

  sub_1C87A9A24(*(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse), *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse + 8));
  return v0;
}

uint64_t sub_1C8A40D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1C8793380(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C8A40E4C(a2, a1);
        break;
      case 3:
        sub_1C8A40ED0(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C8A40F54(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C8A43AE8();
        break;
      case 7:
        sub_1C8A40FE8(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C8A410C4(a2, a1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A40E4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C8BD4B2C();
  return swift_endAccess();
}

uint64_t sub_1C8A40ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}

uint64_t sub_1C8A40F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C88D086C();
  sub_1C8BD4B4C();
  return swift_endAccess();
}

uint64_t sub_1C8A40FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NluRequestRule(0);
  sub_1C8776B78(&qword_1EC2B3050, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, &protocol conformance descriptor for Siri_Nlu_Internal_NluRequestRule);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A410C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C8BD4B7C();
  return swift_endAccess();
}

uint64_t sub_1C8A41180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-v7];
  v9 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  if (!*(a1 + 24) || (, sub_1C8BD4DDC(), result = , !v4))
  {
    swift_beginAccess();
    if (*(a1 + 32) == 2 || (result = sub_1C8BD4D3C(), !v4))
    {
      swift_beginAccess();
      if ((*(a1 + 48) & 1) != 0 || (result = sub_1C8BD4DFC(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 49) == 10 || (v16[48] = *(a1 + 49), sub_1C88D086C(), result = sub_1C8BD4D4C(), !v4))
        {
          v11 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse;
          swift_beginAccess();
          sub_1C87867A0(a1 + v11, v8, &qword_1EC2BE7B8, &qword_1C8C10AA0);
          if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
          {
            sub_1C8778ED8(v8, &qword_1EC2BE7B8, &qword_1C8C10AA0);
          }

          else
          {
            sub_1C8791864();
            sub_1C8776B78(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
            sub_1C8BD4E2C();
            result = sub_1C8A43180();
            if (v4)
            {
              return result;
            }
          }

          v12 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules;
          swift_beginAccess();
          if (!*(*(a1 + v12) + 16) || (type metadata accessor for Siri_Nlu_Internal_NluRequestRule(0), sub_1C8776B78(&qword_1EC2B3050, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, &protocol conformance descriptor for Siri_Nlu_Internal_NluRequestRule), , sub_1C8BD4E0C(), result = , !v4))
          {
            v13 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse);
            result = swift_beginAccess();
            v14 = v13[1];
            if (v14 >> 60 != 15)
            {
              v15 = *v13;
              sub_1C87A8FBC(v15, v14);
              sub_1C8BD4D6C();
              return sub_1C87A9A24(v15, v14);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C8A415C8()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_102();
  type metadata accessor for Siri_Nlu_External_UserParse(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEE70, &qword_1C8C12918);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  v8 = OUTLINED_FUNCTION_80(v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - v12;
  OUTLINED_FUNCTION_277(v1 + 16, &v79);
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  OUTLINED_FUNCTION_277(v0 + 16, &v78);
  v16 = *(v0 + 24);
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_44;
    }

    v17 = v15 == *(v0 + 16) && v14 == v16;
    if (!v17 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v16)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_277(v1 + 32, &v77);
  v18 = *(v1 + 32);
  OUTLINED_FUNCTION_277(v0 + 32, &v76);
  v19 = *(v0 + 32);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      goto LABEL_44;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_277(v1 + 40, &v75);
  v20 = *(v1 + 40);
  v21 = *(v1 + 48);
  OUTLINED_FUNCTION_277(v0 + 40, &v74);
  v22 = *(v0 + 48);
  if (v21)
  {
    if (!*(v0 + 48))
    {
      goto LABEL_44;
    }

LABEL_21:
    OUTLINED_FUNCTION_277(v1 + 49, &v73);
    v23 = *(v1 + 49);
    OUTLINED_FUNCTION_277(v0 + 49, &v72);
    v24 = *(v0 + 49);
    if (v23 == 10)
    {
      if (v24 != 10)
      {
        goto LABEL_44;
      }
    }

    else if (v24 == 10 || v23 != v24)
    {
      goto LABEL_44;
    }

    v26 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse;
    OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse, &v71);
    sub_1C87867A0(v1 + v26, v13, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    v27 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse;
    OUTLINED_FUNCTION_277(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__parse, &v70);
    v28 = *(v4 + 48);
    v29 = v65;
    sub_1C87867A0(v13, v65, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    sub_1C87867A0(v0 + v27, v29 + v28, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    OUTLINED_FUNCTION_43_1(v29);
    if (v17)
    {

      sub_1C8778ED8(v13, &qword_1EC2BE7B8, &qword_1C8C10AA0);
      OUTLINED_FUNCTION_43_1(v29 + v28);
      if (v17)
      {
        sub_1C8778ED8(v29, &qword_1EC2BE7B8, &qword_1C8C10AA0);
LABEL_39:
        OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules, &v69);
        OUTLINED_FUNCTION_277(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__nluRequestRules, &v68);

        v35 = OUTLINED_FUNCTION_253();
        v36 = sub_1C87DD404(v35);

        if (v36)
        {
          OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse, &v67);
          v37 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse;
          OUTLINED_FUNCTION_277(v0 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_Internal_ParseOverrideP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__serializedParse, &v66);
          v38 = *(v37 + 8);
          v39 = OUTLINED_FUNCTION_97();
          if (v41 <= 0xE)
          {
            sub_1C87A8FA8(v39, v40);
            v46 = OUTLINED_FUNCTION_230();
            sub_1C87A8FA8(v46, v47);
            if (v38 >> 60 != 15)
            {
              v52 = OUTLINED_FUNCTION_97();
              sub_1C87A8FA8(v52, v53);
              v54 = OUTLINED_FUNCTION_230();
              sub_1C87A8FA8(v54, v55);
              v56 = OUTLINED_FUNCTION_97();
              MEMORY[0x1CCA7D0F0](v56);
              v57 = OUTLINED_FUNCTION_230();
              sub_1C87A9A24(v57, v58);
              v59 = OUTLINED_FUNCTION_97();
              sub_1C87A9A24(v59, v60);

              v61 = OUTLINED_FUNCTION_230();
              sub_1C87A9A24(v61, v62);
              v63 = OUTLINED_FUNCTION_97();
              sub_1C87A9A24(v63, v64);
              goto LABEL_44;
            }
          }

          else
          {
            sub_1C87A8FA8(v39, v40);
            v42 = OUTLINED_FUNCTION_230();
            sub_1C87A8FA8(v42, v43);

            if (v38 >> 60 == 15)
            {
              v44 = OUTLINED_FUNCTION_97();
              sub_1C87A9A24(v44, v45);
              goto LABEL_44;
            }
          }

          v48 = OUTLINED_FUNCTION_97();
          sub_1C87A9A24(v48, v49);
          v50 = OUTLINED_FUNCTION_230();
          sub_1C87A9A24(v50, v51);
          goto LABEL_44;
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      sub_1C87867A0(v29, v11, &qword_1EC2BE7B8, &qword_1C8C10AA0);
      OUTLINED_FUNCTION_43_1(v29 + v28);
      if (!v30)
      {
        sub_1C8791864();

        static Siri_Nlu_External_UserParse.== infix(_:_:)();
        v32 = v31;
        OUTLINED_FUNCTION_97();
        sub_1C8A43180();
        sub_1C8778ED8(v13, &qword_1EC2BE7B8, &qword_1C8C10AA0);
        OUTLINED_FUNCTION_246();
        sub_1C8A43180();
        v33 = OUTLINED_FUNCTION_206_1();
        sub_1C8778ED8(v33, v34, &qword_1C8C10AA0);
        if ((v32 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      sub_1C8778ED8(v13, &qword_1EC2BE7B8, &qword_1C8C10AA0);
      OUTLINED_FUNCTION_202_3();
    }

    sub_1C8778ED8(v29, &qword_1EC2BEE70, &qword_1C8C12918);
    goto LABEL_43;
  }

  if (v20 != *(v0 + 40))
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_44:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A41C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE40, type metadata accessor for Siri_Nlu_Internal_ParseOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ParseOverride);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A41C8C(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B41A8, type metadata accessor for Siri_Nlu_Internal_ParseOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ParseOverride);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A41CFC(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B41A8, type metadata accessor for Siri_Nlu_Internal_ParseOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ParseOverride);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A41D94()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE960);
  __swift_project_value_buffer(v0, qword_1EC2BE960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "override_namespace";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enabled";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "creation_timestamp_ms_since_unix_epoch";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "value";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nlu_request_rules";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "serialized_value";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_ComponentOverride.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8782FD4();
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C8782B1C(v13, v14, v15, v16, v17, v18, &type metadata for Siri_Nlu_Internal_OverrideMetadata.OverrideNamespace);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8A42224(v7, v8);
        break;
      case 4:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C8A42288(v9, v10, v11, v12);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A422EC(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C878301C();
        break;
      case 7:
        v19 = OUTLINED_FUNCTION_8();
        sub_1C8A423A0(v19, v20);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A422EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride(0);
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(0);
  sub_1C8776B78(&qword_1EC2B4080, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_ComponentOverride.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB60, &qword_1C8C10AA8);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v9 = OUTLINED_FUNCTION_127_2();
  v10 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v9);
  OUTLINED_FUNCTION_513();
  if (!v12 || (OUTLINED_FUNCTION_120_2(v11), sub_1C8BD4DDC(), (v0 = v1) == 0))
  {
    if (*(v3 + v10[7]) == 7 || (sub_1C8A4AA38(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), (v0 = v1) == 0))
    {
      if (*(v3 + v10[8]) == 2 || (OUTLINED_FUNCTION_170_3(), sub_1C8BD4D3C(), (v0 = v1) == 0))
      {
        if ((*(v3 + v10[9] + 8) & 1) != 0 || (OUTLINED_FUNCTION_170_3(), sub_1C8BD4DFC(), (v0 = v1) == 0))
        {
          sub_1C87867A0(v3 + v10[10], v2, &qword_1EC2BEB60, &qword_1C8C10AA8);
          if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
          {
            sub_1C8778ED8(v2, &qword_1EC2BEB60, &qword_1C8C10AA8);
          }

          else
          {
            OUTLINED_FUNCTION_3_22();
            sub_1C8791864();
            sub_1C8776B78(&qword_1EC2B4080, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue);
            OUTLINED_FUNCTION_445();
            sub_1C8BD4E2C();
            v0 = v1;
            sub_1C8A43180();
            if (v1)
            {
              goto LABEL_17;
            }
          }

          OUTLINED_FUNCTION_514();
          if (!v13 || (type metadata accessor for Siri_Nlu_Internal_NluRequestRule(0), sub_1C8776B78(&qword_1EC2B3050, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, &protocol conformance descriptor for Siri_Nlu_Internal_NluRequestRule), OUTLINED_FUNCTION_117(), sub_1C8BD4E0C(), !v0))
          {
            if (*(v3 + v10[11] + 8) >> 60 == 15 || (v14 = OUTLINED_FUNCTION_136(), sub_1C87A8FBC(v14, v15), OUTLINED_FUNCTION_136(), sub_1C8BD4D6C(), v16 = OUTLINED_FUNCTION_136(), sub_1C87A9A24(v16, v17), !v0))
            {
              OUTLINED_FUNCTION_212_2();
              OUTLINED_FUNCTION_206_1();
              sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_ComponentOverride.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_68();
  v5 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB60, &qword_1C8C10AA8);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_212();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEBC8, &unk_1C8C10AE0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride(v14);
  v16 = v15[6];
  v17 = *(v0 + v16 + 8);
  if (*(v1 + v16 + 8))
  {
    if (!v17)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v1 + v16);
    v20 = v20 && v18 == v19;
    if (!v20 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v17)
  {
    goto LABEL_42;
  }

  v21 = v15[7];
  v22 = *(v1 + v21);
  v23 = *(v0 + v21);
  if (v22 == 7)
  {
    if (v23 != 7)
    {
      goto LABEL_42;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_42;
  }

  v24 = v15[8];
  v25 = *(v1 + v24);
  v26 = *(v0 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_42;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_42;
  }

  v27 = v15[9];
  v28 = *(v1 + v27 + 8);
  v29 = *(v0 + v27 + 8);
  if (v28)
  {
    if (!v29)
    {
      goto LABEL_42;
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
    if (v30)
    {
      goto LABEL_42;
    }
  }

  v31 = v15[10];
  v32 = *(v12 + 48);
  sub_1C87867A0(v1 + v31, v2, &qword_1EC2BEB60, &qword_1C8C10AA8);
  sub_1C87867A0(v0 + v31, v2 + v32, &qword_1EC2BEB60, &qword_1C8C10AA8);
  v33 = OUTLINED_FUNCTION_19(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_226_3(v33, v34, &qword_1EC2BEB60, &qword_1C8C10AA8);
    OUTLINED_FUNCTION_19(v2 + v32);
    if (!v35)
    {
      OUTLINED_FUNCTION_3_22();
      sub_1C8791864();
      v38 = *(v5 + 20);
      v39 = *(v3 + v38);
      v40 = *(v9 + v38);
      if (v39 == v40 || (, , v41 = sub_1C8A445EC(v39, v40), , , v41))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_28();
        sub_1C8776B78(v42, v43, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_516();
        v44 = sub_1C8BD517C();
        sub_1C8A43180();
        OUTLINED_FUNCTION_104_0();
        sub_1C8A43180();
        sub_1C8778ED8(v2, &qword_1EC2BEB60, &qword_1C8C10AA8);
        if ((v44 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      sub_1C8A43180();
      sub_1C8A43180();
      v36 = &qword_1EC2BEB60;
      v37 = &qword_1C8C10AA8;
LABEL_32:
      sub_1C8778ED8(v2, v36, v37);
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_202_3();
LABEL_31:
    v36 = &qword_1EC2BEBC8;
    v37 = &unk_1C8C10AE0;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_19(v2 + v32);
  if (!v20)
  {
    goto LABEL_31;
  }

  sub_1C8778ED8(v2, &qword_1EC2BEB60, &qword_1C8C10AA8);
LABEL_36:
  if (sub_1C87DD404(*v1))
  {
    v45 = v15[11];
    v47 = *(v1 + v45);
    v46 = *(v1 + v45 + 8);
    v48 = *(v0 + v45 + 8);
    if (v46 >> 60 == 15)
    {
      if (v48 >> 60 == 15)
      {
        v49 = OUTLINED_FUNCTION_90_4();
        sub_1C87A9A24(v49, v50);
LABEL_46:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_28();
        sub_1C8776B78(v60, v61, MEMORY[0x1E69AAC10]);
        v55 = sub_1C8BD517C();
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (v48 >> 60 == 15)
    {
LABEL_41:
      v51 = OUTLINED_FUNCTION_90_4();
      sub_1C87A9A24(v51, v52);
      v53 = OUTLINED_FUNCTION_516();
      sub_1C87A9A24(v53, v54);
      goto LABEL_42;
    }

    v56 = OUTLINED_FUNCTION_90_4();
    v57 = MEMORY[0x1CCA7D0F0](v56);
    v58 = OUTLINED_FUNCTION_516();
    sub_1C87A9A24(v58, v59);
    sub_1C87A9A24(v47, v46);
    if (v57)
    {
      goto LABEL_46;
    }
  }

LABEL_42:
  v55 = 0;
LABEL_43:
  OUTLINED_FUNCTION_157(v55);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A42C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE38, type metadata accessor for Siri_Nlu_Internal_ComponentOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A42CB8(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4058, type metadata accessor for Siri_Nlu_Internal_ComponentOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A42D28(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B4058, type metadata accessor for Siri_Nlu_Internal_ComponentOverride, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A42DA8()
{
  result = MEMORY[0x1CCA7E2D0](0x6469727265764F2ELL, 0xEE0065756C615665);
  qword_1EC2BE978 = 0xD000000000000023;
  unk_1EC2BE980 = 0x80000001C8C275A0;
  return result;
}

uint64_t sub_1C8A42E40()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE988);
  __swift_project_value_buffer(v0, qword_1EC2BE988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ccqr_override_template";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "user_parse";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "lvc_override_value";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "plan_override_value";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A430DC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_218_2();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1C8A4312C()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8A43180()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A43214()
{
  v1 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate;
  v2 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__userParse;
  v4 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue;
  v6 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  v8 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_1C8A432C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB90, &unk_1C8C10AC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB80, &qword_1C8C10AB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB68, &qword_1C8C10AB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate;
  v14 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__userParse;
  v16 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue;
  v18 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  v20 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate;
  swift_beginAccess();
  sub_1C87867A0(a1 + v21, v12, &qword_1EC2BEB68, &qword_1C8C10AB0);
  swift_beginAccess();
  sub_1C878656C(v12, v1 + v13, &qword_1EC2BEB68, &qword_1C8C10AB0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__userParse;
  swift_beginAccess();
  sub_1C87867A0(a1 + v22, v9, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  swift_beginAccess();
  sub_1C878656C(v9, v1 + v15, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue;
  swift_beginAccess();
  v24 = v29;
  sub_1C87867A0(a1 + v23, v29, &qword_1EC2BEB80, &qword_1C8C10AB8);
  swift_beginAccess();
  sub_1C878656C(v24, v1 + v17, &qword_1EC2BEB80, &qword_1C8C10AB8);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  swift_beginAccess();
  v26 = v30;
  sub_1C87867A0(a1 + v25, v30, &qword_1EC2BEB90, &unk_1C8C10AC0);

  swift_beginAccess();
  sub_1C878656C(v26, v1 + v19, &qword_1EC2BEB90, &unk_1C8C10AC0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8A43704()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate, &qword_1EC2BEB68, &qword_1C8C10AB0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__userParse, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue, &qword_1EC2BEB80, &qword_1C8C10AB8);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue, &qword_1EC2BEB90, &unk_1C8C10AC0);
  return v0;
}

uint64_t sub_1C8A437B4(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1C8A43864()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v18 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_2();
    v16 = v18(v17);
    *(v6 + v14) = v16;
  }

  v2(v16, v12, v10, v8);
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8A43918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1C8A43A0C(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C8A43AE8();
        break;
      case 3:
        sub_1C8A43BA4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C8A43C80(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A43A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  sub_1C8776B78(&qword_1EC2B40A8, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A43AE8()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8776B78(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  OUTLINED_FUNCTION_195();
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A43BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  sub_1C8776B78(&qword_1EC2BECF0, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A43C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  sub_1C8776B78(&qword_1EC2BED08, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A43D8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_119();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A43E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB90, &unk_1C8C10AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = v33 - v6;
  v35 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  MEMORY[0x1EEE9AC00](v35);
  v33[0] = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB80, &qword_1C8C10AB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = v33 - v9;
  v39 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  MEMORY[0x1EEE9AC00](v39);
  v33[1] = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v33 - v12;
  v36 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  MEMORY[0x1EEE9AC00](v36);
  v33[2] = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB68, &qword_1C8C10AB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v33 - v16;
  v18 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  MEMORY[0x1EEE9AC00](v18);
  v19 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate;
  swift_beginAccess();
  v38 = a1;
  sub_1C87867A0(a1 + v19, v17, &qword_1EC2BEB68, &qword_1C8C10AB0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C8778ED8(v17, &qword_1EC2BEB68, &qword_1C8C10AB0);
    v20 = v40;
  }

  else
  {
    sub_1C8791864();
    sub_1C8776B78(&qword_1EC2B40A8, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate);
    v21 = v40;
    sub_1C8BD4E2C();
    v20 = v21;
    result = sub_1C8A43180();
    if (v21)
    {
      return result;
    }
  }

  v23 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__userParse;
  v24 = v38;
  swift_beginAccess();
  sub_1C87867A0(v24 + v23, v13, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v36);
  v26 = v39;
  v27 = v37;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v13, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  }

  else
  {
    sub_1C8791864();
    sub_1C8776B78(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
    sub_1C8BD4E2C();
    result = sub_1C8A43180();
    if (v20)
    {
      return result;
    }

    v26 = v39;
  }

  v28 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue;
  swift_beginAccess();
  sub_1C87867A0(v24 + v28, v27, &qword_1EC2BEB80, &qword_1C8C10AB8);
  v29 = __swift_getEnumTagSinglePayload(v27, 1, v26);
  v31 = v34;
  v30 = v35;
  if (v29 == 1)
  {
    sub_1C8778ED8(v27, &qword_1EC2BEB80, &qword_1C8C10AB8);
  }

  else
  {
    sub_1C8791864();
    sub_1C8776B78(&qword_1EC2BECF0, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue);
    sub_1C8BD4E2C();
    result = sub_1C8A43180();
    if (v20)
    {
      return result;
    }
  }

  v32 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  swift_beginAccess();
  sub_1C87867A0(v24 + v32, v31, &qword_1EC2BEB90, &unk_1C8C10AC0);
  if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
  {
    return sub_1C8778ED8(v31, &qword_1EC2BEB90, &unk_1C8C10AC0);
  }

  sub_1C8791864();
  sub_1C8776B78(&qword_1EC2BED08, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue);
  sub_1C8BD4E2C();
  return sub_1C8A43180();
}

uint64_t sub_1C8A44528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_84();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_253();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  v14 = sub_1C8776B78(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v14) & 1;
}

BOOL sub_1C8A445EC(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(0);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEE60, &qword_1C8C12908);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB90, &unk_1C8C10AC0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v83 - v9;
  v94 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  MEMORY[0x1EEE9AC00](v94);
  v86 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEE68, &qword_1C8C12910);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB80, &qword_1C8C10AB8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v83 - v15;
  v100 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  MEMORY[0x1EEE9AC00](v100);
  v92 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEE70, &qword_1C8C12918);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7B8, &qword_1C8C10AA0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v96 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v83 - v21;
  v22 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEE78, &unk_1C8C12920);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB68, &qword_1C8C10AB0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v103 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v83 - v31;
  v33 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate;
  swift_beginAccess();
  sub_1C87867A0(a1 + v33, v32, &qword_1EC2BEB68, &qword_1C8C10AB0);
  v34 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__ccqrOverrideTemplate;
  swift_beginAccess();
  v35 = *(v25 + 56);
  sub_1C87867A0(v32, v27, &qword_1EC2BEB68, &qword_1C8C10AB0);
  sub_1C87867A0(a2 + v34, &v27[v35], &qword_1EC2BEB68, &qword_1C8C10AB0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v22) == 1)
  {

    sub_1C8778ED8(v32, &qword_1EC2BEB68, &qword_1C8C10AB0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v27[v35], 1, v22);
    v37 = a2;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v27, &qword_1EC2BEB68, &qword_1C8C10AB0);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &qword_1EC2BEE78;
    v39 = &unk_1C8C12920;
    v40 = v27;
LABEL_21:
    sub_1C8778ED8(v40, v38, v39);
    goto LABEL_22;
  }

  sub_1C87867A0(v27, v103, &qword_1EC2BEB68, &qword_1C8C10AB0);
  if (__swift_getEnumTagSinglePayload(&v27[v35], 1, v22) == 1)
  {

    sub_1C8778ED8(v32, &qword_1EC2BEB68, &qword_1C8C10AB0);
    sub_1C8A43180();
    goto LABEL_6;
  }

  sub_1C8791864();

  v37 = a2;

  static Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate.== infix(_:_:)();
  v42 = v41;
  sub_1C8A43180();
  sub_1C8778ED8(v32, &qword_1EC2BEB68, &qword_1C8C10AB0);
  sub_1C8A43180();
  sub_1C8778ED8(v27, &qword_1EC2BEB68, &qword_1C8C10AB0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v43 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__userParse;
  swift_beginAccess();
  v44 = v99;
  sub_1C87867A0(a1 + v43, v99, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  v45 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__userParse;
  swift_beginAccess();
  v46 = *(v98 + 48);
  v47 = v101;
  sub_1C87867A0(v44, v101, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  sub_1C87867A0(v37 + v45, v47 + v46, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  v48 = v100;
  if (__swift_getEnumTagSinglePayload(v47, 1, v100) == 1)
  {
    sub_1C8778ED8(v44, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    v49 = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
    v50 = v102;
    if (v49 == 1)
    {
      sub_1C8778ED8(v47, &qword_1EC2BE7B8, &qword_1C8C10AA0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_1C87867A0(v47, v96, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  v51 = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
  v50 = v102;
  if (v51 == 1)
  {
    sub_1C8778ED8(v44, &qword_1EC2BE7B8, &qword_1C8C10AA0);
    sub_1C8A43180();
LABEL_13:
    v38 = &qword_1EC2BEE70;
    v39 = &qword_1C8C12918;
    v40 = v47;
    goto LABEL_21;
  }

  sub_1C8791864();
  static Siri_Nlu_External_UserParse.== infix(_:_:)();
  v53 = v52;
  sub_1C8A43180();
  sub_1C8778ED8(v44, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  sub_1C8A43180();
  sub_1C8778ED8(v47, &qword_1EC2BE7B8, &qword_1C8C10AA0);
  if ((v53 & 1) == 0)
  {
LABEL_22:

    return 0;
  }

LABEL_15:
  v54 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue;
  swift_beginAccess();
  sub_1C87867A0(a1 + v54, v50, &qword_1EC2BEB80, &qword_1C8C10AB8);
  v55 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__lvcOverrideValue;
  swift_beginAccess();
  v56 = *(v93 + 48);
  v57 = v95;
  sub_1C87867A0(v50, v95, &qword_1EC2BEB80, &qword_1C8C10AB8);
  sub_1C87867A0(v37 + v55, v57 + v56, &qword_1EC2BEB80, &qword_1C8C10AB8);
  v58 = v94;
  if (__swift_getEnumTagSinglePayload(v57, 1, v94) == 1)
  {
    sub_1C8778ED8(v50, &qword_1EC2BEB80, &qword_1C8C10AB8);
    if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v58) == 1)
    {
      sub_1C8778ED8(v57, &qword_1EC2BEB80, &qword_1C8C10AB8);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  sub_1C87867A0(v57, v90, &qword_1EC2BEB80, &qword_1C8C10AB8);
  if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v58) == 1)
  {
    sub_1C8778ED8(v50, &qword_1EC2BEB80, &qword_1C8C10AB8);
    sub_1C8A43180();
LABEL_20:
    v38 = &qword_1EC2BEE68;
    v39 = &qword_1C8C12910;
    v40 = v57;
    goto LABEL_21;
  }

  sub_1C8791864();
  static Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue.== infix(_:_:)();
  v61 = v60;
  sub_1C8A43180();
  sub_1C8778ED8(v50, &qword_1EC2BEB80, &qword_1C8C10AB8);
  sub_1C8A43180();
  sub_1C8778ED8(v57, &qword_1EC2BEB80, &qword_1C8C10AB8);
  if ((v61 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v62 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  swift_beginAccess();
  v63 = v91;
  sub_1C87867A0(a1 + v62, v91, &qword_1EC2BEB90, &unk_1C8C10AC0);
  v64 = OBJC_IVAR____TtCVV12SiriNLUTypes35Siri_Nlu_Internal_ComponentOverride13OverrideValueP33_547E1FDA7FB929EBB369B4D8DD44934613_StorageClass__planOverrideValue;
  swift_beginAccess();
  v65 = *(v87 + 48);
  v66 = v89;
  sub_1C87867A0(v63, v89, &qword_1EC2BEB90, &unk_1C8C10AC0);
  v67 = v37 + v64;
  v68 = v66;
  sub_1C87867A0(v67, v66 + v65, &qword_1EC2BEB90, &unk_1C8C10AC0);
  v69 = v88;
  if (__swift_getEnumTagSinglePayload(v66, 1, v88) == 1)
  {

    sub_1C8778ED8(v63, &qword_1EC2BEB90, &unk_1C8C10AC0);
    if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v69) == 1)
    {
      sub_1C8778ED8(v66, &qword_1EC2BEB90, &unk_1C8C10AC0);
      return 1;
    }

    goto LABEL_32;
  }

  v70 = v85;
  sub_1C87867A0(v66, v85, &qword_1EC2BEB90, &unk_1C8C10AC0);
  if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v69) == 1)
  {

    sub_1C8778ED8(v91, &qword_1EC2BEB90, &unk_1C8C10AC0);
    sub_1C8A43180();
LABEL_32:
    v71 = &qword_1EC2BEE60;
    v72 = &qword_1C8C12908;
    v73 = v66;
LABEL_44:
    sub_1C8778ED8(v73, v71, v72);
    return 0;
  }

  v74 = v84;
  sub_1C8791864();
  v75 = *(v69 + 20);
  v76 = (v70 + v75);
  v77 = *(v70 + v75 + 8);
  v78 = &v74[v75];
  v79 = *(v78 + 1);
  if (!v77)
  {
    v80 = v91;
    if (!v79)
    {
      goto LABEL_40;
    }

LABEL_43:

    sub_1C8778ED8(v80, &qword_1EC2BEB90, &unk_1C8C10AC0);
    sub_1C8A43180();
    sub_1C8A43180();
    v73 = v68;
    v71 = &qword_1EC2BEB90;
    v72 = &unk_1C8C10AC0;
    goto LABEL_44;
  }

  v80 = v91;
  if (!v79)
  {
    goto LABEL_43;
  }

  v81 = *v76 == *v78 && v77 == v79;
  if (!v81 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_40:
  sub_1C8BD49FC();
  sub_1C8776B78(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v82 = sub_1C8BD517C();

  sub_1C8778ED8(v80, &qword_1EC2BEB90, &unk_1C8C10AC0);
  sub_1C8A43180();
  sub_1C8A43180();
  sub_1C8778ED8(v68, &qword_1EC2BEB90, &unk_1C8C10AC0);
  return (v82 & 1) != 0;
}

uint64_t sub_1C8A45568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE30, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A455E8(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4080, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A45658(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B4080, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A456D8()
{
  if (qword_1EC2B5D18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BE978;
  v2 = unk_1EC2BE980;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000015, 0x80000001C8C27AF0);

  qword_1EC2BE9A8 = v1;
  unk_1EC2BE9B0 = v2;
  return result;
}

uint64_t sub_1C8A45810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  sub_1C8776B78(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33();
  v21 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(0);
  OUTLINED_FUNCTION_173_4(v21);
  OUTLINED_FUNCTION_17_6(v11);
  if (v22)
  {
    v24 = sub_1C8778ED8(v11, &unk_1EC2B8A70, &qword_1C8BF5078);
    v23 = a10;
LABEL_6:
    OUTLINED_FUNCTION_144(v24, v25, v23);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_98_2();
  sub_1C8791864();
  sub_1C8776B78(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);
  OUTLINED_FUNCTION_328();
  sub_1C8BD4E2C();
  v24 = sub_1C8A43180();
  if (!v10)
  {
    v23 = a10;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v5 = OUTLINED_FUNCTION_104_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B58, &qword_1C8BF50F0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_74();
  v12 = *(type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate(v11) + 20);
  v13 = *(v9 + 56);
  OUTLINED_FUNCTION_166_4(v1 + v12, v2);
  OUTLINED_FUNCTION_166_4(v0 + v12, v2 + v13);
  OUTLINED_FUNCTION_73(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_73(v2 + v13);
    if (v18)
    {
      sub_1C8778ED8(v2, &unk_1EC2B8A70, &qword_1C8BF5078);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_28();
      v23 = sub_1C8776B78(v21, v22, MEMORY[0x1E69AAC10]);
      v19 = OUTLINED_FUNCTION_159(v23);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v14 = OUTLINED_FUNCTION_268();
  sub_1C87867A0(v14, v15, v16, v17);
  OUTLINED_FUNCTION_73(v2 + v13);
  if (v18)
  {
    sub_1C8A43180();
LABEL_9:
    sub_1C8778ED8(v2, &qword_1EC2B8B58, &qword_1C8BF50F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_98_2();
  sub_1C8791864();
  v20 = static Siri_Nlu_External_RewriteMessage.== infix(_:_:)();
  OUTLINED_FUNCTION_220();
  sub_1C8A43180();
  sub_1C8A43180();
  sub_1C8778ED8(v2, &unk_1EC2B8A70, &qword_1C8BF5078);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}