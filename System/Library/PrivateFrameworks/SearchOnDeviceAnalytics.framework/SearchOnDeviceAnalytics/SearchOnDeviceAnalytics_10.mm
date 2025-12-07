uint64_t sub_21B06D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C58, &qword_21B127BD8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_21AF99BE0(v24, &qword_27CD46C58, &qword_21B127BD8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B28, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C58, &qword_21B127BD8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C58, &qword_21B127BD8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C58, &qword_21B127BD8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C58, &qword_21B127BD8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C60, &qword_21B127BE0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_21AF99BE0(v24, &qword_27CD46C60, &qword_21B127BE0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C60, &qword_21B127BE0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C60, &qword_21B127BE0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C60, &qword_21B127BE0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C60, &qword_21B127BE0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C68, &qword_21B127BE8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_21AF99BE0(v24, &qword_27CD46C68, &qword_21B127BE8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B70, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C68, &qword_21B127BE8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C68, &qword_21B127BE8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C68, &qword_21B127BE8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C68, &qword_21B127BE8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06E790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C70, &qword_21B127BF0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_21AF99BE0(v24, &qword_27CD46C70, &qword_21B127BF0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C10, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C70, &qword_21B127BF0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C70, &qword_21B127BF0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C70, &qword_21B127BF0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C70, &qword_21B127BF0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06EC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C78, &qword_21B127BF8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_21AF99BE0(v24, &qword_27CD46C78, &qword_21B127BF8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C40, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C78, &qword_21B127BF8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C78, &qword_21B127BF8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C78, &qword_21B127BF8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C78, &qword_21B127BF8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C80, &qword_21B127C00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_21AF99BE0(v24, &qword_27CD46C80, &qword_21B127C00);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C58, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C80, &qword_21B127C00);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C80, &qword_21B127C00);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C80, &qword_21B127C00);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C80, &qword_21B127C00);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](started);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C88, &qword_21B127C08);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, started);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_21AF99BE0(v24, &qword_27CD46C88, &qword_21B127C08);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, started);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C70, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C88, &qword_21B127C08);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, started) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C88, &qword_21B127C08);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C88, &qword_21B127C08);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C88, &qword_21B127C08);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B06FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C90, &qword_21B127C10);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_21AF99BE0(v24, &qword_27CD46C90, &qword_21B127C10);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C88, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C90, &qword_21B127C10);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C90, &qword_21B127C10);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C90, &qword_21B127C10);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C90, &qword_21B127C10);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B070068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](started);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C98, &qword_21B127C18);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, started);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_21AF99BE0(v24, &qword_27CD46C98, &qword_21B127C18);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, started);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45CA0, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C98, &qword_21B127C18);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, started) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C98, &qword_21B127C18);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C98, &qword_21B127C18);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C98, &qword_21B127C18);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B070560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CA0, &qword_21B127C20);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_21AF99BE0(v24, &qword_27CD46CA0, &qword_21B127C20);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45CB8, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CA0, &qword_21B127C20);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CA0, &qword_21B127C20);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CA0, &qword_21B127C20);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CA0, &qword_21B127C20);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B070A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](started);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CA8, &qword_21B127C28);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, started);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_21AF99BE0(v24, &qword_27CD46CA8, &qword_21B127C28);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, started);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D00, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CA8, &qword_21B127C28);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, started) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CA8, &qword_21B127C28);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CA8, &qword_21B127C28);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CA8, &qword_21B127C28);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B070F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CB0, &qword_21B127C30);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_21AF99BE0(v24, &qword_27CD46CB0, &qword_21B127C30);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CB0, &qword_21B127C30);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CB0, &qword_21B127C30);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CB0, &qword_21B127C30);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CB0, &qword_21B127C30);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B071448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CB8, &qword_21B127C38);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_21AF99BE0(v24, &qword_27CD46CB8, &qword_21B127C38);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CB8, &qword_21B127C38);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CB8, &qword_21B127C38);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CB8, &qword_21B127C38);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CB8, &qword_21B127C38);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B071940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CC0, &qword_21B127C40);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_21AF99BE0(v24, &qword_27CD46CC0, &qword_21B127C40);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CC0, &qword_21B127C40);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CC0, &qword_21B127C40);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CC0, &qword_21B127C40);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CC0, &qword_21B127C40);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B071E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CC8, &qword_21B127C48);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_21AF99BE0(v24, &qword_27CD46CC8, &qword_21B127C48);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CC8, &qword_21B127C48);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CC8, &qword_21B127C48);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CC8, &qword_21B127C48);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CC8, &qword_21B127C48);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B072330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CD0, &qword_21B127C50);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_21AF99BE0(v24, &qword_27CD46CD0, &qword_21B127C50);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CD0, &qword_21B127C50);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CD0, &qword_21B127C50);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CD0, &qword_21B127C50);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CD0, &qword_21B127C50);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B072828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CD8, &qword_21B127C58);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_21AF99BE0(v24, &qword_27CD46CD8, &qword_21B127C58);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CD8, &qword_21B127C58);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CD8, &qword_21B127C58);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CD8, &qword_21B127C58);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CD8, &qword_21B127C58);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B072D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CE0, &qword_21B127C60);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_21AF99BE0(v24, &qword_27CD46CE0, &qword_21B127C60);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CE0, &qword_21B127C60);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CE0, &qword_21B127C60);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CE0, &qword_21B127C60);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CE0, &qword_21B127C60);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B073218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CE8, &qword_21B127C68);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_21AF99BE0(v24, &qword_27CD46CE8, &qword_21B127C68);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CE8, &qword_21B127C68);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CE8, &qword_21B127C68);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CE8, &qword_21B127C68);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CE8, &qword_21B127C68);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B073710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CF0, &qword_21B127C70);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_21AF99BE0(v24, &qword_27CD46CF0, &qword_21B127C70);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CF0, &qword_21B127C70);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CF0, &qword_21B127C70);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CF0, &qword_21B127C70);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CF0, &qword_21B127C70);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B073C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CF8, &qword_21B127C78);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_21AF99BE0(v24, &qword_27CD46CF8, &qword_21B127C78);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46CF8, &qword_21B127C78);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46CF8, &qword_21B127C78);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46CF8, &qword_21B127C78);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46CF8, &qword_21B127C78);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B074100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D00, &qword_21B127C80);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_21AF99BE0(v24, &qword_27CD46D00, &qword_21B127C80);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D00, &qword_21B127C80);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D00, &qword_21B127C80);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D00, &qword_21B127C80);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D00, &qword_21B127C80);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B0745F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D08, &qword_21B127C88);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_21AF99BE0(v24, &qword_27CD46D08, &qword_21B127C88);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D08, &qword_21B127C88);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D08, &qword_21B127C88);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D08, &qword_21B127C88);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D08, &qword_21B127C88);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B074AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D10, &qword_21B127C90);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_21AF99BE0(v24, &qword_27CD46D10, &qword_21B127C90);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D10, &qword_21B127C90);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D10, &qword_21B127C90);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D10, &qword_21B127C90);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D10, &qword_21B127C90);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B074FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D18, &qword_21B127C98);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_21AF99BE0(v24, &qword_27CD46D18, &qword_21B127C98);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D18, &qword_21B127C98);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D18, &qword_21B127C98);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D18, &qword_21B127C98);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D18, &qword_21B127C98);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B0754E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D20, &qword_21B127CA0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_21AF99BE0(v24, &qword_27CD46D20, &qword_21B127CA0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D20, &qword_21B127CA0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D20, &qword_21B127CA0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D20, &qword_21B127CA0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D20, &qword_21B127CA0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B0759D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D28, &qword_21B127CA8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_21AF99BE0(v24, &qword_27CD46D28, &qword_21B127CA8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D28, &qword_21B127CA8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D28, &qword_21B127CA8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D28, &qword_21B127CA8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D28, &qword_21B127CA8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B075ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D30, &qword_21B127CB0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_21AF99BE0(v24, &qword_27CD46D30, &qword_21B127CB0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D30, &qword_21B127CB0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D30, &qword_21B127CB0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D30, &qword_21B127CB0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D30, &qword_21B127CB0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B0763C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D38, &qword_21B127CB8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_21AF99BE0(v24, &qword_27CD46D38, &qword_21B127CB8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D38, &qword_21B127CB8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D38, &qword_21B127CB8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D38, &qword_21B127CB8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D38, &qword_21B127CB8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B0768C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D40, &qword_21B127CC0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_21AF99BE0(v24, &qword_27CD46D40, &qword_21B127CC0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C28, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D40, &qword_21B127CC0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D40, &qword_21B127CC0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D40, &qword_21B127CC0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D40, &qword_21B127CC0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B076DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D48, &qword_21B127CC8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_21AF99BE0(v24, &qword_27CD46D48, &qword_21B127CC8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D48, &qword_21B127CC8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D48, &qword_21B127CC8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D48, &qword_21B127CC8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D48, &qword_21B127CC8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B0772B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D50, &qword_21B127CD0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_21AF99BE0(v24, &qword_27CD46D50, &qword_21B127CD0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D50, &qword_21B127CD0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D50, &qword_21B127CD0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D50, &qword_21B127CD0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D50, &qword_21B127CD0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B0777A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D58, &qword_21B127CD8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_21AF99BE0(v24, &qword_27CD46D58, &qword_21B127CD8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D58, &qword_21B127CD8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D58, &qword_21B127CD8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D58, &qword_21B127CD8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D58, &qword_21B127CD8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B077CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D60, &qword_21B127CE0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_21AF99BE0(v24, &qword_27CD46D60, &qword_21B127CE0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D60, &qword_21B127CE0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D60, &qword_21B127CE0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D60, &qword_21B127CE0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D60, &qword_21B127CE0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B078198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D68, &qword_21B127CE8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_21AF99BE0(v24, &qword_27CD46D68, &qword_21B127CE8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD46008, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D68, &qword_21B127CE8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D68, &qword_21B127CE8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D68, &qword_21B127CE8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D68, &qword_21B127CE8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B078690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D70, &qword_21B127CF0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_21AF99BE0(v24, &qword_27CD46D70, &qword_21B127CF0);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D70, &qword_21B127CF0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D70, &qword_21B127CF0);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D70, &qword_21B127CF0);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D70, &qword_21B127CF0);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B078B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D78, &qword_21B127CF8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_21AF99BE0(v24, &qword_27CD46D78, &qword_21B127CF8);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B58, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D78, &qword_21B127CF8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D78, &qword_21B127CF8);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D78, &qword_21B127CF8);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D78, &qword_21B127CF8);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B079080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D80, &qword_21B127D00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_21AF99BE0(v24, &qword_27CD46D80, &qword_21B127D00);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B88, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D80, &qword_21B127D00);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D80, &qword_21B127D00);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D80, &qword_21B127D00);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D80, &qword_21B127D00);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B079578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D88, &qword_21B127D08);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_21AF99BE0(v24, &qword_27CD46D88, &qword_21B127D08);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45BB0, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46D88, &qword_21B127D08);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46D88, &qword_21B127D08);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46D88, &qword_21B127D08);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46D88, &qword_21B127D08);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_703();
  sub_21B0AA940();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  OUTLINED_FUNCTION_37_1(v3, 1, v9);
  if (!v10)
  {
    OUTLINED_FUNCTION_52();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v99 = OUTLINED_FUNCTION_30_3();
        sub_21B07A000(v99, v100, v101, v102);
        break;
      case 2u:
        v83 = OUTLINED_FUNCTION_30_3();
        sub_21B07A214(v83, v84, v85, v86);
        break;
      case 3u:
        v91 = OUTLINED_FUNCTION_30_3();
        sub_21B07A428(v91, v92, v93, v94);
        break;
      case 4u:
        v59 = OUTLINED_FUNCTION_30_3();
        sub_21B07A63C(v59, v60, v61, v62);
        break;
      case 5u:
        v119 = OUTLINED_FUNCTION_30_3();
        sub_21B07A850(v119, v120, v121, v122);
        break;
      case 6u:
        v131 = OUTLINED_FUNCTION_30_3();
        sub_21B07AA64(v131, v132, v133, v134);
        break;
      case 7u:
        v95 = OUTLINED_FUNCTION_30_3();
        sub_21B07AC78(v95, v96, v97, v98);
        break;
      case 8u:
        v143 = OUTLINED_FUNCTION_30_3();
        sub_21B07AE8C(v143, v144, v145, v146);
        break;
      case 9u:
        v71 = OUTLINED_FUNCTION_30_3();
        sub_21B07B0A0(v71, v72, v73, v74);
        break;
      case 0xAu:
        v139 = OUTLINED_FUNCTION_30_3();
        sub_21B07B2B4(v139, v140, v141, v142);
        break;
      case 0xBu:
        v55 = OUTLINED_FUNCTION_30_3();
        sub_21B07B4C8(v55, v56, v57, v58);
        break;
      case 0xCu:
        v67 = OUTLINED_FUNCTION_30_3();
        sub_21B07B6DC(v67, v68, v69, v70);
        break;
      case 0xDu:
        v127 = OUTLINED_FUNCTION_30_3();
        sub_21B07B8F0(v127, v128, v129, v130);
        break;
      case 0xEu:
        v47 = OUTLINED_FUNCTION_30_3();
        sub_21B07BB04(v47, v48, v49, v50);
        break;
      case 0xFu:
        v87 = OUTLINED_FUNCTION_30_3();
        sub_21B07BD18(v87, v88, v89, v90);
        break;
      case 0x10u:
        v39 = OUTLINED_FUNCTION_30_3();
        sub_21B07BF2C(v39, v40, v41, v42);
        break;
      case 0x11u:
        v107 = OUTLINED_FUNCTION_30_3();
        sub_21B07C140(v107, v108, v109, v110);
        break;
      case 0x12u:
        v135 = OUTLINED_FUNCTION_30_3();
        sub_21B07C354(v135, v136, v137, v138);
        break;
      case 0x13u:
        v163 = OUTLINED_FUNCTION_30_3();
        sub_21B07C568(v163, v164, v165, v166);
        break;
      case 0x14u:
        v115 = OUTLINED_FUNCTION_30_3();
        sub_21B07C77C(v115, v116, v117, v118);
        break;
      case 0x15u:
        v123 = OUTLINED_FUNCTION_30_3();
        sub_21B07C990(v123, v124, v125, v126);
        break;
      case 0x16u:
        v155 = OUTLINED_FUNCTION_30_3();
        sub_21B07CBA4(v155, v156, v157, v158);
        break;
      case 0x17u:
        v171 = OUTLINED_FUNCTION_30_3();
        sub_21B07CDB8(v171, v172, v173, v174);
        break;
      case 0x18u:
        v79 = OUTLINED_FUNCTION_30_3();
        sub_21B07CFCC(v79, v80, v81, v82);
        break;
      case 0x19u:
        v75 = OUTLINED_FUNCTION_30_3();
        sub_21B07D1E0(v75, v76, v77, v78);
        break;
      case 0x1Au:
        v187 = OUTLINED_FUNCTION_30_3();
        sub_21B07D3F4(v187, v188, v189, v190);
        break;
      case 0x1Bu:
        v31 = OUTLINED_FUNCTION_30_3();
        sub_21B07D608(v31, v32, v33, v34);
        break;
      case 0x1Cu:
        v175 = OUTLINED_FUNCTION_30_3();
        sub_21B07D81C(v175, v176, v177, v178);
        break;
      case 0x1Du:
        v179 = OUTLINED_FUNCTION_30_3();
        sub_21B07DA30(v179, v180, v181, v182);
        break;
      case 0x1Eu:
        v147 = OUTLINED_FUNCTION_30_3();
        sub_21B07DC44(v147, v148, v149, v150);
        break;
      case 0x1Fu:
        v103 = OUTLINED_FUNCTION_30_3();
        sub_21B07DE58(v103, v104, v105, v106);
        break;
      case 0x20u:
        v151 = OUTLINED_FUNCTION_30_3();
        sub_21B07E06C(v151, v152, v153, v154);
        break;
      case 0x21u:
        v51 = OUTLINED_FUNCTION_30_3();
        sub_21B07E280(v51, v52, v53, v54);
        break;
      case 0x22u:
        v35 = OUTLINED_FUNCTION_30_3();
        sub_21B07E494(v35, v36, v37, v38);
        break;
      case 0x23u:
        v23 = OUTLINED_FUNCTION_30_3();
        sub_21B07E6A8(v23, v24, v25, v26);
        break;
      case 0x24u:
        v27 = OUTLINED_FUNCTION_30_3();
        sub_21B07E8BC(v27, v28, v29, v30);
        break;
      case 0x25u:
        v19 = OUTLINED_FUNCTION_30_3();
        sub_21B07EAD0(v19, v20, v21, v22);
        break;
      case 0x26u:
        v183 = OUTLINED_FUNCTION_30_3();
        sub_21B07ECE4(v183, v184, v185, v186);
        break;
      case 0x27u:
        v159 = OUTLINED_FUNCTION_30_3();
        sub_21B07EEF8(v159, v160, v161, v162);
        break;
      case 0x28u:
        v63 = OUTLINED_FUNCTION_30_3();
        sub_21B07F10C(v63, v64, v65, v66);
        break;
      case 0x29u:
        v111 = OUTLINED_FUNCTION_30_3();
        sub_21B07F320(v111, v112, v113, v114);
        break;
      case 0x2Au:
        v167 = OUTLINED_FUNCTION_30_3();
        sub_21B07F534(v167, v168, v169, v170);
        break;
      case 0x2Bu:
        v15 = OUTLINED_FUNCTION_30_3();
        sub_21B07F748(v15, v16, v17, v18);
        break;
      case 0x2Cu:
        v43 = OUTLINED_FUNCTION_30_3();
        sub_21B07F95C(v43, v44, v45, v46);
        break;
      default:
        v11 = OUTLINED_FUNCTION_30_3();
        sub_21B079DF0(v11, v12, v13, v14);
        break;
    }

    v6 = v5;
    if (v5)
    {
      OUTLINED_FUNCTION_23_4();
      return sub_21B03183C();
    }

    OUTLINED_FUNCTION_23_4();
    sub_21B03183C();
  }

  if (!*(v4 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0) + 20)))
  {
    return sub_21B111EA4();
  }

  OUTLINED_FUNCTION_445();
  result = sub_21B112204();
  if (!v6)
  {
    return sub_21B111EA4();
  }

  return result;
}

uint64_t sub_21B079DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45AA8, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45AF0, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD44DD8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD44DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45B28, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07AE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45B70, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45C10, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45C40, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45C58, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  MEMORY[0x28223BE20](started);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45C70, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45C88, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07BB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  MEMORY[0x28223BE20](started);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45CA0, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45CB8, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07BF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  MEMORY[0x28223BE20](started);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45D00, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07DA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07DE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45C28, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07EEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD46008, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45B58, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45B88, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45BB0, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07FE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46940, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B07FECC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F50, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B07FF3C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45F50, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return sub_21B112114();
}

uint64_t sub_21B07FFC8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44580);
  __swift_project_value_buffer(v0, qword_27CD44580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "experimentId";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "treatmentId";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "experimentNamespaceId";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF84A5C();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SkipSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v18))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v20 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v18))
    {
      if (!*(v19 + 24) || (OUTLINED_FUNCTION_472(), sub_21B09A730(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v21 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
        {
          OUTLINED_FUNCTION_10_4();
          if (!v22 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
          {
            OUTLINED_FUNCTION_10_4();
            if (!v23 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
              OUTLINED_FUNCTION_27_2();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B08050C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46938, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B08058C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0805FC(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B080694()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44598);
  __swift_project_value_buffer(v0, qword_27CD44598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uuid";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF84A5C();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CacheHitFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v18))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v20 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v18))
    {
      if (!*(v19 + 24) || (OUTLINED_FUNCTION_472(), sub_21B09A730(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v21 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B080B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46930, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B080B88(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B080BF8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return sub_21B112114();
}

uint64_t sub_21B080C84()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD445B0);
  __swift_project_value_buffer(v0, qword_27CD445B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namespaceId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experimentId";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "treatmentId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deploymentId";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FF4();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_10_4();
  if (!v3 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v5 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v6 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
      {
        if (!*(v2 + 48) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v1))
        {
          if (!*(v2 + 52) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v1))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
            return OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ExperimentInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_629();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_21B112D04() & 1) == 0 || *(v2 + 48) != *(v1 + 48) || *(v2 + 52) != *(v1 + 52))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  OUTLINED_FUNCTION_830();
  OUTLINED_FUNCTION_0_15();
  v14 = sub_21B099CBC(v12, v13, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v14) & 1;
}

uint64_t sub_21B081218(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46928, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B081298(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F98, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B081308(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45F98, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return sub_21B112114();
}

uint64_t sub_21B081394()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD445C8);
  __swift_project_value_buffer(v0, qword_27CD445C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_21B117F80;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "agent";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "userGuidString";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "resourceVersions";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sessionStart";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "previousSessionEndReason";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "removeTimestamps";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "parsecDeveloperID";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "duEnabled";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 14;
  *v22 = "countryCode";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 15;
  *v24 = "locale";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 16;
  *v26 = "usageSinceLookback";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 17;
  *v28 = "cohortsFeedback";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 18;
  *v30 = "devicePersistentD20";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 19;
  *v32 = "privateRelayStatus";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 20;
  *v34 = "isInternalCarry";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 21;
  *v36 = "experimentInfo";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 22;
  *v38 = "searchOptOut";
  *(v38 + 1) = 12;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 101;
  *v40 = "jsonFeedback";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 200;
  *v42 = "feedback";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B0819D4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_21B112334();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usageSinceLookback;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cohortsFeedback;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20) = 0;
  v7 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo) = v1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback) = xmmword_21B117F10;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback) = v1;
  return v0;
}

uint64_t sub_21B081AF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44BB0, &unk_21B118228);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44BA0, &qword_21B118220);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v53 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = sub_21B112334();
  *(v1 + 64) = 0;
  v54 = (v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v55 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v56 = (v1 + 96);
  *(v1 + 104) = 0;
  v57 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v58 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usageSinceLookback;
  v59 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usageSinceLookback;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cohortsFeedback;
  v60 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cohortsFeedback;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v62 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20) = 0;
  v11 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus;
  v63 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus;
  *v11 = 0;
  *(v11 + 8) = 1;
  v64 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry) = 0;
  v65 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo;
  v12 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo) = MEMORY[0x277D84F90];
  v67 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut) = 0;
  v68 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback);
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback) = xmmword_21B117F10;
  v69 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback) = v12;
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;

  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v15;
  *(v1 + 40) = v16;

  swift_beginAccess();
  v17 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v17;

  swift_beginAccess();
  v18 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v18;
  swift_beginAccess();
  v19 = *(a1 + 64);
  LOBYTE(v15) = *(a1 + 72);
  v20 = v54;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 72) = v15;
  swift_beginAccess();
  LOBYTE(v19) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v19;
  swift_beginAccess();
  v22 = *(a1 + 80);
  v21 = *(a1 + 88);
  v23 = v55;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 88) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 96);
  v24 = v56;
  swift_beginAccess();
  *v24 = v21;
  swift_beginAccess();
  v26 = *(a1 + 104);
  v25 = *(a1 + 112);
  v27 = v57;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 112) = v25;

  swift_beginAccess();
  v29 = *(a1 + 120);
  v28 = *(a1 + 128);
  v30 = v58;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 128) = v28;

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20;
  swift_beginAccess();
  LODWORD(v31) = *(a1 + v31);
  v32 = v62;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v63;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v64;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v65;
  swift_beginAccess();
  *(v1 + v40) = v39;

  v41 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v67;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  v46 = v68;
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  *v46 = v45;
  v46[1] = v44;
  sub_21AF99818(v45, v44);
  sub_21AF99728(v47, v48);
  v49 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback;
  swift_beginAccess();
  v50 = *(a1 + v49);

  v51 = v69;
  swift_beginAccess();
  *(v1 + v51) = v50;

  return v1;
}

void *sub_21B0822DC()
{

  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usageSinceLookback, &qword_27CD44BA0, &qword_21B118220);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cohortsFeedback, &unk_27CD44BB0, &unk_21B118228);

  sub_21AF99728(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback + 8));

  return v0;
}

void sub_21B082764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B112074();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B0827B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_21B082810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111E94();
  sub_21B111F54();
  return swift_endAccess();
}

void sub_21B0828B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_21B08290C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B09A6DC();
  sub_21B111FB4();
  return swift_endAccess();
}

void sub_21B0829A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111F94();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_21B0829F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B082A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B082AFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B082B80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B082C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  sub_21B099CBC(&qword_27CD46048, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B082CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  sub_21B099CBC(&qword_27CD460F0, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B082DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  sub_21B099CBC(&qword_27CD45F98, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);
  sub_21B1120A4();
  return swift_endAccess();
}

uint64_t sub_21B082E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
  sub_21B099CBC(&qword_27CD45F50, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  sub_21B1120A4();
  return swift_endAccess();
}

uint64_t sub_21B082FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44BB0, &unk_21B118228);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = v37 - v7;
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  MEMORY[0x28223BE20](v43);
  v37[1] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44BA0, &qword_21B118220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - v10;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  MEMORY[0x28223BE20](v12);
  v37[2] = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(a1 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_21B1121E4();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_21B1121E4();
    if (!v4)
    {

      goto LABEL_11;
    }
  }

LABEL_11:
  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    sub_21B111E94();

    sub_21B112134();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) == 0.0 || (result = sub_21B1121D4(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 64) || (v19 = *(a1 + 72), v41 = *(a1 + 64), v42 = v19, sub_21B09A6DC(), result = sub_21B112174(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 73) != 1 || (result = sub_21B112164(), !v4))
      {
        swift_beginAccess();
        v20 = *(a1 + 88);
        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {

          sub_21B1121E4();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (*(a1 + 96) != 1 || (result = sub_21B112164(), !v4))
        {
          swift_beginAccess();
          v22 = *(a1 + 112);
          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
          }

          if (v23)
          {

            sub_21B1121E4();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          v24 = *(a1 + 128);
          v25 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v25 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
          }

          if (v25)
          {

            sub_21B1121E4();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          sub_21B0AA940();
          if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
          {
            sub_21AF99BE0(v11, &qword_27CD44BA0, &qword_21B118220);
          }

          else
          {
            sub_21B03179C(v11);
            sub_21B099CBC(&qword_27CD46048, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
            sub_21B112224();
            if (v4)
            {
              return sub_21B03183C();
            }

            sub_21B03183C();
          }

          swift_beginAccess();
          v26 = v38;
          sub_21B0AA940();
          if (__swift_getEnumTagSinglePayload(v26, 1, v43) == 1)
          {
            sub_21AF99BE0(v26, &unk_27CD44BB0, &unk_21B118228);
          }

          else
          {
            sub_21B03179C(v26);
            sub_21B099CBC(&qword_27CD460F0, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);
            sub_21B112224();
            result = sub_21B03183C();
            if (v4)
            {
              return result;
            }
          }

          v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20;
          swift_beginAccess();
          if (!*(a1 + v27) || (result = sub_21B1121F4(), !v4))
          {
            v28 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus);
            swift_beginAccess();
            if (!*v28 || (v29 = *(v28 + 8), v39 = *v28, v40 = v29, sub_21B0AA4A8(), result = sub_21B112174(), !v4))
            {
              v30 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry;
              swift_beginAccess();
              if (*(a1 + v30) != 1 || (result = sub_21B112164(), !v4))
              {
                v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo;
                swift_beginAccess();
                if (!*(*(a1 + v31) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0), sub_21B099CBC(&qword_27CD45F98, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo), , sub_21B112214(), result = , !v4))
                {
                  v32 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut;
                  swift_beginAccess();
                  if (*(a1 + v32) != 1 || (result = sub_21B112164(), !v4))
                  {
                    v33 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback;
                    swift_beginAccess();
                    if (sub_21AFD45D8(*v33, *(v33 + 8)) || (v35 = *v33, v34 = *(v33 + 8), sub_21AF99818(v35, v34), sub_21B112184(), result = sub_21AF99728(v35, v34), !v4))
                    {
                      v36 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback;
                      result = swift_beginAccess();
                      if (*(*(a1 + v36) + 16))
                      {
                        type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
                        sub_21B099CBC(&qword_27CD45F50, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

                        sub_21B112214();
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

uint64_t sub_21B083A0C(uint64_t a1, uint64_t a2)
{
  v107 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  MEMORY[0x28223BE20](v107);
  v103 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C18, &qword_21B127B98);
  MEMORY[0x28223BE20](v106);
  v6 = &v101 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44BB0, &unk_21B118228);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v104 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v108 = &v101 - v10;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  MEMORY[0x28223BE20](v11);
  v105 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C20, &qword_21B127BA0);
  MEMORY[0x28223BE20](v13);
  v109 = &v101 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44BA0, &qword_21B118220);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v101 - v19;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  v23 = v22 == *(a2 + 16) && v21 == *(a2 + 24);
  if (!v23 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_57;
  }

  swift_beginAccess();
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  swift_beginAccess();
  v26 = v24 == *(a2 + 32) && v25 == *(a2 + 40);
  if (!v26 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_57;
  }

  v102 = v6;
  swift_beginAccess();
  v27 = *(a1 + 48);
  swift_beginAccess();
  v28 = *(a2 + 48);

  v29 = sub_21B09984C(v27, v28);

  if ((v29 & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v30 = *(a1 + 56);
  swift_beginAccess();
  if (v30 != *(a2 + 56))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v31 = *(a1 + 64);
  v32 = *(a1 + 72);
  swift_beginAccess();
  if (!sub_21AFB4A88(v31, v32, *(a2 + 64)))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v33 = *(a1 + 73);
  swift_beginAccess();
  if (v33 != *(a2 + 73))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v34 = *(a1 + 80);
  v35 = *(a1 + 88);
  swift_beginAccess();
  v36 = v34 == *(a2 + 80) && v35 == *(a2 + 88);
  if (!v36 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v37 = *(a1 + 96);
  swift_beginAccess();
  if (v37 != *(a2 + 96))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v38 = *(a1 + 104);
  v39 = *(a1 + 112);
  swift_beginAccess();
  v40 = v38 == *(a2 + 104) && v39 == *(a2 + 112);
  if (!v40 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v41 = *(a1 + 120);
  v42 = *(a1 + 128);
  swift_beginAccess();
  v43 = v41 == *(a2 + 120) && v42 == *(a2 + 128);
  if (!v43 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  v44 = *(v13 + 48);
  v45 = v109;
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v45, 1, v11) == 1)
  {
    sub_21AF99BE0(v20, &qword_27CD44BA0, &qword_21B118220);
    if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v11) == 1)
    {
      sub_21AF99BE0(v45, &qword_27CD44BA0, &qword_21B118220);
      goto LABEL_40;
    }

LABEL_36:
    v46 = &qword_27CD46C20;
    v47 = &qword_21B127BA0;
    v48 = v45;
LABEL_55:
    sub_21AF99BE0(v48, v46, v47);
    goto LABEL_56;
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v11) == 1)
  {
    sub_21AF99BE0(v20, &qword_27CD44BA0, &qword_21B118220);
    sub_21B03183C();
    goto LABEL_36;
  }

  v49 = v105;
  sub_21B03179C(v45 + v44);
  v50 = *(v11 + 20);
  v51 = *&v18[v50];
  v52 = *&v49[v50];
  if (v51 != v52)
  {

    v53 = sub_21B08CC54(v51, v52);

    if (!v53)
    {
      sub_21B03183C();
      sub_21AF99BE0(v20, &qword_27CD44BA0, &qword_21B118220);
      sub_21B03183C();
      v48 = v45;
      v46 = &qword_27CD44BA0;
      v47 = &qword_21B118220;
      goto LABEL_55;
    }
  }

  sub_21B111EC4();
  sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v54 = sub_21B1123C4();
  sub_21B03183C();
  sub_21AF99BE0(v20, &qword_27CD44BA0, &qword_21B118220);
  sub_21B03183C();
  sub_21AF99BE0(v45, &qword_27CD44BA0, &qword_21B118220);
  if ((v54 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_40:
  swift_beginAccess();
  v55 = v108;
  sub_21B0AA940();
  swift_beginAccess();
  v56 = *(v106 + 48);
  v57 = v102;
  sub_21B0AA940();
  sub_21B0AA940();
  v58 = v107;
  if (__swift_getEnumTagSinglePayload(v57, 1, v107) != 1)
  {
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v58) == 1)
    {
      sub_21AF99BE0(v108, &unk_27CD44BB0, &unk_21B118228);
      sub_21B03183C();
      goto LABEL_45;
    }

    sub_21B03179C(v57 + v56);
    static Apple_Parsec_Feedback_V2_UsageEnvelope.== infix(_:_:)();
    v60 = v59;
    sub_21B03183C();
    sub_21AF99BE0(v108, &unk_27CD44BB0, &unk_21B118228);
    sub_21B03183C();
    sub_21AF99BE0(v57, &unk_27CD44BB0, &unk_21B118228);
    if (v60)
    {
      goto LABEL_47;
    }

LABEL_56:

LABEL_57:
    v99 = 0;
    return v99 & 1;
  }

  sub_21AF99BE0(v55, &unk_27CD44BB0, &unk_21B118228);
  if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v58) != 1)
  {
LABEL_45:
    v46 = &qword_27CD46C18;
    v47 = &qword_21B127B98;
    v48 = v57;
    goto LABEL_55;
  }

  sub_21AF99BE0(v57, &unk_27CD44BB0, &unk_21B118228);
LABEL_47:
  v61 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20;
  swift_beginAccess();
  LODWORD(v61) = *(a1 + v61);
  v62 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20;
  swift_beginAccess();
  if (v61 != *(a2 + v62))
  {
    goto LABEL_56;
  }

  v63 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus;
  swift_beginAccess();
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus);
  swift_beginAccess();
  if (!sub_21AFB4A88(v64, v65, *v66))
  {
    goto LABEL_56;
  }

  v67 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry;
  swift_beginAccess();
  LODWORD(v67) = *(a1 + v67);
  v68 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry;
  swift_beginAccess();
  if (v67 != *(a2 + v68))
  {
    goto LABEL_56;
  }

  v69 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo;
  swift_beginAccess();
  v72 = *(a2 + v71);

  sub_21AFC1864(v70, v72, v73, v74, v75, v76, v77);
  v79 = v78;

  if ((v79 & 1) == 0)
  {
    goto LABEL_56;
  }

  v80 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut;
  swift_beginAccess();
  LODWORD(v80) = *(a1 + v80);
  v81 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut;
  swift_beginAccess();
  if (v80 != *(a2 + v81))
  {
    goto LABEL_56;
  }

  v82 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  v85 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback);
  swift_beginAccess();
  v87 = *v85;
  v86 = v85[1];
  sub_21AF99818(v84, v83);
  sub_21AF99818(v87, v86);
  v88 = MEMORY[0x21CEE80C0](v84, v83, v87, v86);
  sub_21AF99728(v87, v86);
  sub_21AF99728(v84, v83);
  if ((v88 & 1) == 0)
  {
    goto LABEL_56;
  }

  v89 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback;
  swift_beginAccess();
  v90 = *(a1 + v89);
  v91 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback;
  swift_beginAccess();
  v92 = *(a2 + v91);

  v99 = sub_21AFC1A80(v90, v92, v93, v94, v95, v96, v97, v98, v101, v102, v103, v104);

  return v99 & 1;
}

uint64_t sub_21B0847F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46920, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientSession);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B084870(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45FB0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientSession);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0848E0(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45FB0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientSession);

  return sub_21B112114();
}

uint64_t sub_21B084978()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD445E8);
  __swift_project_value_buffer(v0, qword_27CD445E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stringKeyFields";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intKeyFields";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_Struct.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_10_2();
      sub_21B084CC0(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_10_2();
      sub_21B084BC8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_21B084BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B111E94();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  sub_21B099CBC(&qword_27CD450B0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  sub_21B099CBC(&qword_27CD450B8, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  return sub_21B111F44();
}

uint64_t sub_21B084CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B111E84();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  sub_21B099CBC(&qword_27CD450B0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  sub_21B099CBC(&qword_27CD450B8, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  return sub_21B111F44();
}

void Apple_Parsec_Feedback_V2_Struct.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_857();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_838();
  if (!v8 || (sub_21B111E94(), type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_21B099CBC(&qword_27CD450B0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_561(), sub_21B099CBC(v9, type metadata accessor for Apple_Parsec_Feedback_V2_Value, v10), OUTLINED_FUNCTION_470(), sub_21B112124(), !v7))
  {
    OUTLINED_FUNCTION_660();
    if (!v11 || (sub_21B111E84(), type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_21B099CBC(&qword_27CD450B0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_561(), sub_21B099CBC(v12, type metadata accessor for Apple_Parsec_Feedback_V2_Value, v13), sub_21B112124(), !v7))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
      OUTLINED_FUNCTION_184();
      sub_21B111EA4();
    }
  }

  OUTLINED_FUNCTION_746();
}

uint64_t sub_21B085034(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46918, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0850B4(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B085124(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);

  return sub_21B112114();
}

uint64_t sub_21B0851BC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44600);
  __swift_project_value_buffer(v0, qword_27CD44600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21B117FD0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null_value";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "number_value";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "string_value";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "BOOL_value";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "struct_value";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "list_value";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "bytes_value";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0855A0(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_10_2();
        sub_21B08575C(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_10_2();
        sub_21B0858F4(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_10_2();
        sub_21B085A98(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_129();
        sub_21B085C24(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_129();
        sub_21B08611C(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_10_2();
        sub_21B086614(v27, v28, v29, v30);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0855A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v14 = 0;
  v15 = 256;
  sub_21B0AA454();
  result = sub_21B111FA4();
  if (!v4 && (v15 & 0x100) == 0)
  {
    v16 = v14;
    v13 = v15;
    sub_21B0AA940();
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
    sub_21AF99BE0(v8, &qword_27CD434C8, &qword_21B116AA0);
    if (EnumTagSinglePayload != 1)
    {
      sub_21B111F74();
    }

    sub_21AF99BE0(a2, &qword_27CD434C8, &qword_21B116AA0);
    *a2 = v16;
    *(a2 + 8) = v13 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_21B08575C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 1;
  result = sub_21B112044();
  if (!v4 && (v14 & 1) == 0)
  {
    v10 = v13;
    sub_21B0AA940();
    v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_21AF99BE0(v8, &qword_27CD434C8, &qword_21B116AA0);
    if (EnumTagSinglePayload != 1)
    {
      sub_21B111F74();
    }

    sub_21AF99BE0(a2, &qword_27CD434C8, &qword_21B116AA0);
    *a2 = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_21B0858F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0;
  result = sub_21B112064();
  if (v4)
  {
  }

  v10 = v14;
  if (v14)
  {
    v15 = v13;
    sub_21B0AA940();
    v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_21AF99BE0(v8, &qword_27CD434C8, &qword_21B116AA0);
    if (EnumTagSinglePayload != 1)
    {
      sub_21B111F74();
    }

    sub_21AF99BE0(a2, &qword_27CD434C8, &qword_21B116AA0);
    *a2 = v15;
    a2[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_21B085A98(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v14 = 2;
  result = sub_21B111F84();
  if (!v4)
  {
    v10 = v14;
    if (v14 != 2)
    {
      sub_21B0AA940();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
      sub_21AF99BE0(v8, &qword_27CD434C8, &qword_21B116AA0);
      if (EnumTagSinglePayload != 1)
      {
        sub_21B111F74();
      }

      sub_21AF99BE0(a2, &qword_27CD434C8, &qword_21B116AA0);
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t sub_21B085C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21AF99BE0(v24, &qword_27CD44858, &qword_21B118120);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD44858, &qword_21B118120);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD44858, &qword_21B118120);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD44858, &qword_21B118120);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD44858, &qword_21B118120);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434C8, &qword_21B116AA0);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B08611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C10, &qword_21B127B90);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21AF99BE0(v24, &qword_27CD46C10, &qword_21B127B90);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45FF0, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C10, &qword_21B127B90);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C10, &qword_21B127B90);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C10, &qword_21B127B90);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C10, &qword_21B127B90);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD434C8, &qword_21B116AA0);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B086614(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = xmmword_21B1180D0;
  sub_21B111FC4();
  v9 = v13;
  if (v4 || *(&v13 + 1) >> 60 == 15)
  {
    return sub_21AFC5440(v13, *(&v13 + 1));
  }

  sub_21B0AA940();
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v14);
  sub_21AF99818(v9, *(&v9 + 1));
  sub_21AF99BE0(v8, &qword_27CD434C8, &qword_21B116AA0);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  sub_21AFC5440(v9, *(&v9 + 1));
  sub_21AF99BE0(a2, &qword_27CD434C8, &qword_21B116AA0);
  *a2 = v9;
  v12 = v14;
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
}

uint64_t Apple_Parsec_Feedback_V2_Value.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_404();
  v2 = OUTLINED_FUNCTION_684();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_470();
  sub_21B0AA940();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v7 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v7, v8, v6);
  if (!v9)
  {
    OUTLINED_FUNCTION_79();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v27 = OUTLINED_FUNCTION_162();
        result = sub_21B086AC8(v27, v28, v29, v30);
        goto LABEL_12;
      case 2u:
        OUTLINED_FUNCTION_32_3();
        sub_21B03183C();
        v19 = OUTLINED_FUNCTION_162();
        result = sub_21B086C08(v19, v20, v21, v22);
        goto LABEL_12;
      case 3u:
        v23 = OUTLINED_FUNCTION_162();
        result = sub_21B086D5C(v23, v24, v25, v26);
        goto LABEL_12;
      case 4u:
        v15 = OUTLINED_FUNCTION_162();
        sub_21B086E9C(v15, v16, v17, v18);
        goto LABEL_9;
      case 5u:
        v31 = OUTLINED_FUNCTION_162();
        sub_21B0870B0(v31, v32, v33, v34);
LABEL_9:
        OUTLINED_FUNCTION_32_3();
        result = sub_21B03183C();
        if (!v1)
        {
          break;
        }

        return result;
      case 6u:
        OUTLINED_FUNCTION_32_3();
        sub_21B03183C();
        v35 = OUTLINED_FUNCTION_162();
        result = sub_21B0872C4(v35, v36, v37, v38);
        goto LABEL_12;
      default:
        v10 = OUTLINED_FUNCTION_162();
        result = sub_21B086968(v10, v11, v12, v13);
LABEL_12:
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  OUTLINED_FUNCTION_49_1();
  return sub_21B111EA4();
}

uint64_t sub_21B086968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21B0AA940();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_21B0AA454();
      return sub_21B112174();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B086AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_21B0AA940();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_21B1121D4();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B086C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_21B0AA940();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21B1121E4();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B086D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_21B0AA940();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_21B112164();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B086E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0870B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD45FF0, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0872C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v11 - v5);
  sub_21B0AA940();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD434C8, &qword_21B116AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v9 = *v6;
      v8 = v6[1];
      sub_21B112184();
      return sub_21AF99728(v9, v8);
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Feedback_V2_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_267();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_108();
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_73();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D0, &qword_21B116AA8);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_188();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_863();
  OUTLINED_FUNCTION_202(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_202(v0 + v10);
    if (v11)
    {
      sub_21AF99BE0(v0, &qword_27CD434C8, &qword_21B116AA0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
      OUTLINED_FUNCTION_870();
      OUTLINED_FUNCTION_0_15();
      v17 = sub_21B099CBC(v15, v16, MEMORY[0x277D216D0]);
      v12 = OUTLINED_FUNCTION_40_1(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_90();
  sub_21B0AA940();
  OUTLINED_FUNCTION_202(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_32_3();
    sub_21B03183C();
LABEL_9:
    sub_21AF99BE0(v0, &qword_27CD434D0, &qword_21B116AA8);
    goto LABEL_10;
  }

  sub_21B03179C(v0 + v10);
  OUTLINED_FUNCTION_440();
  static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)();
  v14 = v13;
  sub_21B03183C();
  OUTLINED_FUNCTION_26();
  sub_21B03183C();
  sub_21AF99BE0(v0, &qword_27CD434C8, &qword_21B116AA0);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_498(v12);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0876E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46910, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B087764(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD450B0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0877D4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD450B0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);

  return sub_21B112114();
}

void sub_21B087888()
{
  OUTLINED_FUNCTION_115();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_21B112254();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_625();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21B113D90;
  v14 = v13 + v12 + v11[14];
  *(v13 + v12) = v5;
  *v14 = v3;
  *(v14 + 8) = v1;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  sub_21B112234();
  OUTLINED_FUNCTION_163();
  (*(v16 + 104))(v14, v15);
  sub_21B112244();
  OUTLINED_FUNCTION_114();
}

void Apple_Parsec_Feedback_V2_ListValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_10_2();
      sub_21B087AA4();
    }
  }
}

void sub_21B087AA4()
{
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_234();
  v3(v2);
  v4 = OUTLINED_FUNCTION_75();
  v6 = sub_21B099CBC(v4, v5, v0);
  OUTLINED_FUNCTION_505(v1, v7, v6);
  OUTLINED_FUNCTION_13();
}

void Apple_Parsec_Feedback_V2_ListValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_838();
  if (!v4 || (type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_21B099CBC(&qword_27CD450B0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_750(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v3))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
    OUTLINED_FUNCTION_27_2();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B087C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46908, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B087CC4(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45FF0, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B087D34(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45FF0, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);

  return sub_21B112114();
}

uint64_t sub_21B087DC0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44630);
  __swift_project_value_buffer(v0, qword_27CD44630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryId";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cbaType";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0880C4(v3, v4);
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CBAEngagementFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v18))
  {
    if (!*(v19 + 8) || (OUTLINED_FUNCTION_36_1(), sub_21B112204(), !v18))
    {
      if (!*(v19 + 16) || (OUTLINED_FUNCTION_472(), sub_21B09A784(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v20 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B0882A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46900, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B088320(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD46008, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B088390(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD46008, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B08841C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44648);
  __swift_project_value_buffer(v0, qword_27CD44648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21B117FC0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21B112234();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "result";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "userSelection";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "cardSection";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "uuidBytes";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sections";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "uploadedDataIdentifier";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "reportType";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_21B112244();
}

uint64_t sub_21B0887BC()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__result;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userSelection;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes) = xmmword_21B117F10;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sections) = MEMORY[0x277D84F90];
  v7 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uploadedDataIdentifier);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__reportType;
  *v8 = 0;
  *(v8 + 8) = 1;
  return v0;
}

uint64_t sub_21B0888A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v5 - 8);
  v33[2] = v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  MEMORY[0x28223BE20](v7 - 8);
  *(v1 + 16) = 0;
  v8 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__result;
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userSelection;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v33[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes);
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes) = xmmword_21B117F10;
  v34 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sections;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sections) = MEMORY[0x277D84F90];
  v15 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uploadedDataIdentifier);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__reportType;
  v36 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__reportType;
  *v16 = 0;
  *(v16 + 8) = 1;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v18 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  v21 = *v14;
  v22 = v14[1];
  *v14 = v20;
  v14[1] = v19;
  sub_21AF99818(v20, v19);
  sub_21AF99728(v21, v22);
  v23 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sections;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = v34;
  swift_beginAccess();
  *(v1 + v25) = v24;

  v26 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uploadedDataIdentifier);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  swift_beginAccess();
  *v15 = v27;
  v15[1] = v28;

  v29 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__reportType);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);

  v31 = v36;
  swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = v29;
  return v1;
}

uint64_t sub_21B088D90()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__result, &qword_27CD434D8, &qword_21B116AB0);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userSelection, &qword_27CD44830, &qword_21B118110);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cardSection, &qword_27CD44A60, &qword_21B118168);
  sub_21AF99728(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes + 8));

  return v0;
}

uint64_t sub_21B089098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B089174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B089250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B08932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  sub_21B1120A4();
  return swift_endAccess();
}

void sub_21B089408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_817();
  v23 = v22;
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v24 = v23();
  OUTLINED_FUNCTION_666(v24);
  OUTLINED_FUNCTION_816();
}

uint64_t sub_21B089468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_393();
  v8 = swift_beginAccess();
  a6(v8);
  OUTLINED_FUNCTION_605();
  v9 = sub_21B111FB4();
  return OUTLINED_FUNCTION_666(v9);
}

uint64_t sub_21B089534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = v37 - v7;
  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x28223BE20](v38);
  v37[1] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = v37 - v10;
  v40 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x28223BE20](v40);
  v37[2] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v37 - v13;
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x28223BE20](v15);
  swift_beginAccess();
  v16 = a1;
  if (!*(a1 + 16) || (result = sub_21B112204(), !v4))
  {
    v44 = v4;
    swift_beginAccess();
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_21AF99BE0(v14, &qword_27CD434D8, &qword_21B116AB0);
    }

    else
    {
      sub_21B03179C(v14);
      sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
      v18 = v44;
      sub_21B112224();
      result = sub_21B03183C();
      if (v18)
      {
        return result;
      }

      v44 = 0;
    }

    swift_beginAccess();
    v19 = v39;
    sub_21B0AA940();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v40);
    v21 = v41;
    if (EnumTagSinglePayload == 1)
    {
      sub_21AF99BE0(v19, &qword_27CD44830, &qword_21B118110);
    }

    else
    {
      sub_21B03179C(v19);
      sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
      v22 = v44;
      sub_21B112224();
      result = sub_21B03183C();
      if (v22)
      {
        return result;
      }

      v44 = 0;
    }

    swift_beginAccess();
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v21, 1, v38) == 1)
    {
      sub_21AF99BE0(v21, &qword_27CD44A60, &qword_21B118168);
      v23 = v44;
    }

    else
    {
      sub_21B03179C(v21);
      sub_21B099CBC(&qword_27CD44E80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
      v24 = v44;
      sub_21B112224();
      v23 = v24;
      result = sub_21B03183C();
      if (v24)
      {
        return result;
      }
    }

    v25 = v16 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes;
    swift_beginAccess();
    if (sub_21AFD45D8(*v25, *(v25 + 8)) || (v27 = *v25, v26 = *(v25 + 8), sub_21AF99818(v27, v26), sub_21B112184(), result = sub_21AF99728(v27, v26), !v23))
    {
      v28 = v23;
      v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sections;
      swift_beginAccess();
      if (*(*(v16 + v29) + 16))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
        sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

        sub_21B112214();
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

      v31 = (v16 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uploadedDataIdentifier);
      swift_beginAccess();
      v32 = *v31;
      v33 = v31[1];
      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v34 || (, sub_21B1121E4(), result = , !v30))
      {
        v35 = v16 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__reportType;
        result = swift_beginAccess();
        if (*v35)
        {
          v36 = *(v35 + 8);
          v42 = *v35;
          v43 = v36;
          sub_21B0AA3AC();
          return sub_21B112174();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B089D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_267();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_90();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v12, v13, MEMORY[0x277D216D0]);
  v14 = OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_653(v14, v15, v16, v17) & 1;
}

BOOL sub_21B089DF4(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x28223BE20](v84);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B50, &qword_21B1181D0);
  MEMORY[0x28223BE20](v83);
  v7 = &v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v79 - v11;
  v89 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x28223BE20](v89);
  v82 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B58, &qword_21B1181D8);
  MEMORY[0x28223BE20](v88);
  v93 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v79 - v17;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x28223BE20](v18);
  v87 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434E0, &qword_21B116AB8);
  MEMORY[0x28223BE20](v20);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v91 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
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
  sub_21B0AA940();
  swift_beginAccess();
  v30 = *(v20 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v18) == 1)
  {

    sub_21AF99BE0(v27, &qword_27CD434D8, &qword_21B116AB0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v22[v30], 1, v18);
    v32 = v93;
    if (EnumTagSinglePayload == 1)
    {
      sub_21AF99BE0(v22, &qword_27CD434D8, &qword_21B116AB0);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v33 = v91;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(&v22[v30], 1, v18) == 1)
  {

    sub_21AF99BE0(v27, &qword_27CD434D8, &qword_21B116AB0);
    sub_21B03183C();
LABEL_7:
    v34 = &qword_27CD434E0;
    v35 = &qword_21B116AB8;
    v36 = v22;
LABEL_26:
    sub_21AF99BE0(v36, v34, v35);
    goto LABEL_27;
  }

  v37 = v87;
  sub_21B03179C(&v22[v30]);
  v38 = *(v18 + 20);
  v39 = *&v33[v38];
  v40 = *&v37[v38];

  if (v39 != v40)
  {

    v41 = sub_21B03D03C(v39, v40);

    if (!v41)
    {
      sub_21B03183C();
      sub_21AF99BE0(v27, &qword_27CD434D8, &qword_21B116AB0);
      sub_21B03183C();
      v36 = v22;
      v34 = &qword_27CD434D8;
      v35 = &qword_21B116AB0;
      goto LABEL_26;
    }
  }

  sub_21B111EC4();
  sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v42 = sub_21B1123C4();
  sub_21B03183C();
  sub_21AF99BE0(v27, &qword_27CD434D8, &qword_21B116AB0);
  sub_21B03183C();
  v29 = v86;
  sub_21AF99BE0(v22, &qword_27CD434D8, &qword_21B116AB0);
  v32 = v93;
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  swift_beginAccess();
  v43 = v92;
  sub_21B0AA940();
  swift_beginAccess();
  v44 = *(v88 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  v45 = v89;
  if (__swift_getEnumTagSinglePayload(v32, 1, v89) != 1)
  {
    v48 = v85;
    sub_21B0AA940();
    v49 = __swift_getEnumTagSinglePayload(v32 + v44, 1, v45);
    v47 = v90;
    if (v49 != 1)
    {
      sub_21B03179C(v32 + v44);
      v50 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v48);
      sub_21B03183C();
      sub_21AF99BE0(v92, &qword_27CD44830, &qword_21B118110);
      sub_21B03183C();
      sub_21AF99BE0(v32, &qword_27CD44830, &qword_21B118110);
      if ((v50 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    sub_21AF99BE0(v92, &qword_27CD44830, &qword_21B118110);
    sub_21B03183C();
LABEL_16:
    v34 = &qword_27CD44B58;
    v35 = &qword_21B1181D8;
LABEL_25:
    v36 = v32;
    goto LABEL_26;
  }

  sub_21AF99BE0(v43, &qword_27CD44830, &qword_21B118110);
  v46 = __swift_getEnumTagSinglePayload(v32 + v44, 1, v45);
  v47 = v90;
  if (v46 != 1)
  {
    goto LABEL_16;
  }

  sub_21AF99BE0(v32, &qword_27CD44830, &qword_21B118110);
LABEL_18:
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  v51 = *(v83 + 48);
  v32 = v80;
  sub_21B0AA940();
  sub_21B0AA940();
  v52 = v84;
  if (__swift_getEnumTagSinglePayload(v32, 1, v84) == 1)
  {
    sub_21AF99BE0(v47, &qword_27CD44A60, &qword_21B118168);
    if (__swift_getEnumTagSinglePayload(v32 + v51, 1, v52) == 1)
    {
      sub_21AF99BE0(v32, &qword_27CD44A60, &qword_21B118168);
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v32 + v51, 1, v52) == 1)
  {
    sub_21AF99BE0(v47, &qword_27CD44A60, &qword_21B118168);
    sub_21B03183C();
LABEL_24:
    v34 = &qword_27CD44B50;
    v35 = &qword_21B1181D0;
    goto LABEL_25;
  }

  sub_21B03179C(v32 + v51);
  v55 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
  sub_21B03183C();
  sub_21AF99BE0(v47, &qword_27CD44A60, &qword_21B118168);
  sub_21B03183C();
  sub_21AF99BE0(v32, &qword_27CD44A60, &qword_21B118168);
  if (v55)
  {
LABEL_31:
    v56 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes);
    swift_beginAccess();
    v58 = *v56;
    v57 = v56[1];
    v59 = (v29 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uuidBytes);
    swift_beginAccess();
    v61 = *v59;
    v60 = v59[1];
    sub_21AF99818(v58, v57);
    sub_21AF99818(v61, v60);
    v62 = MEMORY[0x21CEE80C0](v58, v57, v61, v60);
    sub_21AF99728(v61, v60);
    sub_21AF99728(v58, v57);
    if (v62)
    {
      v63 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sections;
      swift_beginAccess();
      v64 = *(a1 + v63);
      v65 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sections;
      swift_beginAccess();
      v66 = *(v29 + v65);

      sub_21AFBE2F0(v64, v66);
      v68 = v67;

      if (v68)
      {
        v69 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uploadedDataIdentifier);
        swift_beginAccess();
        v70 = *v69;
        v71 = v69[1];
        v72 = (v29 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__uploadedDataIdentifier);
        swift_beginAccess();
        v73 = v70 == *v72 && v71 == v72[1];
        if (v73 || (sub_21B112D04() & 1) != 0)
        {
          v74 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__reportType;
          swift_beginAccess();
          v75 = *v74;
          v76 = *(v74 + 8);

          v77 = (v29 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__reportType);
          swift_beginAccess();
          v78 = *v77;

          return sub_21AFB4A88(v75, v76, v78);
        }
      }
    }
  }

LABEL_27:

  return 0;
}

uint64_t sub_21B08ABB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468F8, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B08AC30(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD46020, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B08ACA0(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD46020, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return sub_21B112114();
}

uint64_t sub_21B08AD2C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44668);
  __swift_project_value_buffer(v0, qword_27CD44668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "country";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
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
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
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
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_10_4();
  if (!v2 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v5 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v6 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_629();
  v9 = v3 && v7 == v8;
  if (!v9 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_851();
  v12 = v3 && v10 == v11;
  if (!v12 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_15();
  v15 = sub_21B099CBC(v13, v14, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v15) & 1;
}

uint64_t sub_21B08B254(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468F0, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B08B2D4(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45128, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B08B344(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45128, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);

  return sub_21B112114();
}

uint64_t sub_21B08B3D0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44680);
  __swift_project_value_buffer(v0, qword_27CD44680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21B118070;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "collectionStartTimestamp";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21B112234();
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
  return sub_21B112244();
}

uint64_t sub_21B08B944()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 44) = 0;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__context;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__configuredLookbackTimeInDays) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__activeDaysInCollectionPeriod) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalEngagements) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isDiagnosticsAndUsageEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__invokedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__zkwEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__suggestionOrAppleResultEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__webEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__voiceSearchDays) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__numSearchEngagements) = 0;
  return v0;
}

uint64_t sub_21B08BA20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
  MEMORY[0x28223BE20](v3 - 8);
  v34[1] = v34 - v4;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  v5 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__context;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__configuredLookbackTimeInDays;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__configuredLookbackTimeInDays) = 0;
  v35 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__activeDaysInCollectionPeriod;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__activeDaysInCollectionPeriod) = 0;
  v36 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalEngagements;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalEngagements) = 0;
  v37 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isDiagnosticsAndUsageEnabled;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isDiagnosticsAndUsageEnabled) = 0;
  v38 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__invokedDays;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__invokedDays) = 0;
  v39 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__zkwEngagedDays;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__zkwEngagedDays) = 0;
  v40 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchedDays;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchedDays) = 0;
  v41 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__suggestionOrAppleResultEngagedDays;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__suggestionOrAppleResultEngagedDays) = 0;
  v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__webEngagedDays;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__webEngagedDays) = 0;
  v43 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__voiceSearchDays;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__voiceSearchDays) = 0;
  v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__numSearchEngagements;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__numSearchEngagements) = 0;
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
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__configuredLookbackTimeInDays;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + v12);
  swift_beginAccess();
  *(v1 + v7) = v12;
  v13 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__activeDaysInCollectionPeriod;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + v13);
  v14 = v35;
  swift_beginAccess();
  *(v1 + v14) = v13;
  v15 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalEngagements;
  swift_beginAccess();
  LODWORD(v15) = *(a1 + v15);
  v16 = v36;
  swift_beginAccess();
  *(v1 + v16) = v15;
  v17 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isDiagnosticsAndUsageEnabled;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + v17);
  v18 = v37;
  swift_beginAccess();
  *(v1 + v18) = v17;
  v19 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__invokedDays;
  swift_beginAccess();
  LODWORD(v19) = *(a1 + v19);
  v20 = v38;
  swift_beginAccess();
  *(v1 + v20) = v19;
  v21 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__zkwEngagedDays;
  swift_beginAccess();
  LODWORD(v21) = *(a1 + v21);
  v22 = v39;
  swift_beginAccess();
  *(v1 + v22) = v21;
  v23 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchedDays;
  swift_beginAccess();
  LODWORD(v23) = *(a1 + v23);
  v24 = v40;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__suggestionOrAppleResultEngagedDays;
  swift_beginAccess();
  LODWORD(v25) = *(a1 + v25);
  v26 = v41;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__webEngagedDays;
  swift_beginAccess();
  LODWORD(v27) = *(a1 + v27);
  v28 = v42;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__voiceSearchDays;
  swift_beginAccess();
  LODWORD(v29) = *(a1 + v29);
  v30 = v43;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__numSearchEngagements;
  swift_beginAccess();
  LODWORD(v31) = *(a1 + v31);

  v32 = v44;
  swift_beginAccess();
  *(v1 + v32) = v31;
  return v1;
}

uint64_t sub_21B08BF8C()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__context, &qword_27CD44C38, &qword_21B118240);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21B08C3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

void sub_21B08C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

void sub_21B08C4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_817();
  v23 = v22;
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_393();
  v24 = swift_beginAccess();
  v23(v24);
  OUTLINED_FUNCTION_605();
  v25 = sub_21B111FB4();
  OUTLINED_FUNCTION_666(v25);
  OUTLINED_FUNCTION_816();
}

uint64_t sub_21B08C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  sub_21B099CBC(&qword_27CD45128, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
  sub_21B1120B4();
  return swift_endAccess();
}

void sub_21B08C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111F94();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_21B08C690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  MEMORY[0x28223BE20](v10);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_21B1121B4(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_21B1121B4(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (v12 = *(a1 + 40), v24[37] = *(a1 + 32), v25 = v12, sub_21B0AA358(), result = sub_21B112174(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 44) || (result = sub_21B1121A4(), !v4))
        {
          v26 = a4;
          swift_beginAccess();
          sub_21B0AA940();
          if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
          {
            sub_21AF99BE0(v9, &qword_27CD44C38, &qword_21B118240);
          }

          else
          {
            sub_21B03179C(v9);
            sub_21B099CBC(&qword_27CD45128, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
            sub_21B112224();
            result = sub_21B03183C();
            if (v4)
            {
              return result;
            }
          }

          v13 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__configuredLookbackTimeInDays;
          swift_beginAccess();
          if (!*(a1 + v13) || (result = sub_21B1121A4(), !v4))
          {
            v14 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__activeDaysInCollectionPeriod;
            swift_beginAccess();
            if (!*(a1 + v14) || (result = sub_21B1121A4(), !v4))
            {
              v15 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalEngagements;
              swift_beginAccess();
              if (!*(a1 + v15) || (result = sub_21B1121A4(), !v4))
              {
                v16 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isDiagnosticsAndUsageEnabled;
                swift_beginAccess();
                if (*(a1 + v16) != 1 || (result = sub_21B112164(), !v4))
                {
                  v17 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__invokedDays;
                  swift_beginAccess();
                  if (!*(a1 + v17) || (result = sub_21B1121A4(), !v4))
                  {
                    v18 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__zkwEngagedDays;
                    swift_beginAccess();
                    if (!*(a1 + v18) || (result = sub_21B1121A4(), !v4))
                    {
                      v19 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchedDays;
                      swift_beginAccess();
                      if (!*(a1 + v19) || (result = sub_21B1121A4(), !v4))
                      {
                        v20 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__suggestionOrAppleResultEngagedDays;
                        swift_beginAccess();
                        if (!*(a1 + v20) || (result = sub_21B1121A4(), !v4))
                        {
                          v21 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__webEngagedDays;
                          swift_beginAccess();
                          if (!*(a1 + v21) || (result = sub_21B1121A4(), !v4))
                          {
                            v22 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__voiceSearchDays;
                            swift_beginAccess();
                            if (!*(a1 + v22) || (result = sub_21B1121A4(), !v4))
                            {
                              v23 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__numSearchEngagements;
                              swift_beginAccess();
                              result = *(a1 + v23);
                              if (result)
                              {
                                return sub_21B1121A4();
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

BOOL sub_21B08CC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD45130, &qword_21B118280);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
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
  if (!sub_21AFB4A88(v16, v17, *(a2 + 32)))
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
  sub_21B0AA940();
  swift_beginAccess();
  v19 = *(v5 + 48);
  v20 = v45[0];
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v4) == 1)
  {

    sub_21AF99BE0(v13, &qword_27CD44C38, &qword_21B118240);
    if (__swift_getEnumTagSinglePayload(v20 + v19, 1, v4) == 1)
    {
      sub_21AF99BE0(v20, &qword_27CD44C38, &qword_21B118240);
LABEL_12:
      v22 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__configuredLookbackTimeInDays;
      swift_beginAccess();
      LODWORD(v22) = *(a1 + v22);
      v23 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__configuredLookbackTimeInDays;
      swift_beginAccess();
      if (v22 == *(a2 + v23))
      {
        v24 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__activeDaysInCollectionPeriod;
        swift_beginAccess();
        LODWORD(v24) = *(a1 + v24);
        v25 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__activeDaysInCollectionPeriod;
        swift_beginAccess();
        if (v24 == *(a2 + v25))
        {
          v26 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalEngagements;
          swift_beginAccess();
          LODWORD(v26) = *(a1 + v26);
          v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalEngagements;
          swift_beginAccess();
          if (v26 == *(a2 + v27))
          {
            v28 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isDiagnosticsAndUsageEnabled;
            swift_beginAccess();
            LODWORD(v28) = *(a1 + v28);
            v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isDiagnosticsAndUsageEnabled;
            swift_beginAccess();
            if (v28 == *(a2 + v29))
            {
              v30 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__invokedDays;
              swift_beginAccess();
              LODWORD(v30) = *(a1 + v30);
              v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__invokedDays;
              swift_beginAccess();
              if (v30 == *(a2 + v31))
              {
                v32 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__zkwEngagedDays;
                swift_beginAccess();
                LODWORD(v32) = *(a1 + v32);
                v33 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__zkwEngagedDays;
                swift_beginAccess();
                if (v32 == *(a2 + v33))
                {
                  v34 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchedDays;
                  swift_beginAccess();
                  LODWORD(v34) = *(a1 + v34);
                  v35 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchedDays;
                  swift_beginAccess();
                  if (v34 == *(a2 + v35))
                  {
                    v36 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__suggestionOrAppleResultEngagedDays;
                    swift_beginAccess();
                    LODWORD(v36) = *(a1 + v36);
                    v37 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__suggestionOrAppleResultEngagedDays;
                    swift_beginAccess();
                    if (v36 == *(a2 + v37))
                    {
                      v38 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__webEngagedDays;
                      swift_beginAccess();
                      LODWORD(v38) = *(a1 + v38);
                      v39 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__webEngagedDays;
                      swift_beginAccess();
                      if (v38 == *(a2 + v39))
                      {
                        v40 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__voiceSearchDays;
                        swift_beginAccess();
                        LODWORD(v40) = *(a1 + v40);
                        v41 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__voiceSearchDays;
                        swift_beginAccess();
                        if (v40 == *(a2 + v41))
                        {
                          v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__numSearchEngagements;
                          swift_beginAccess();
                          LODWORD(v42) = *(a1 + v42);

                          v43 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__numSearchEngagements;
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

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20 + v19, 1, v4) == 1)
  {

    sub_21AF99BE0(v13, &qword_27CD44C38, &qword_21B118240);
    sub_21B03183C();
LABEL_10:
    sub_21AF99BE0(v20, &qword_27CD45130, &qword_21B118280);
    goto LABEL_23;
  }

  sub_21B03179C(v20 + v19);

  v21 = static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(v11);
  sub_21B03183C();
  sub_21AF99BE0(v13, &qword_27CD44C38, &qword_21B118240);
  sub_21B03183C();
  sub_21AF99BE0(v20, &qword_27CD44C38, &qword_21B118240);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_23:

  return 0;
}

uint64_t sub_21B08D490(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468E8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B08D510(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD46048, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B08D580(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD46048, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return sub_21B112114();
}

uint64_t sub_21B08D60C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD446A0);
  __swift_project_value_buffer(v0, qword_27CD446A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_21B1180E0;
  v4 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v4 = "localGoto";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
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
  return sub_21B112244();
}

uint64_t sub_21B08DCB4()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements) = 0;
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__engagementShareRatio;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_21B08DD38(_DWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CB8, &qword_21B118250);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CA0, &qword_21B118248);
  MEMORY[0x28223BE20](v5 - 8);
  v32[1] = v32 - v6;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v33 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements) = 0;
  v9 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__engagementShareRatio;
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
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v29) = *(a1 + v29);
  v30 = v33;
  swift_beginAccess();
  *(v1 + v30) = v29;
  swift_beginAccess();
  sub_21B0AA940();

  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  return v1;
}

uint64_t sub_21B08E340()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio, &qword_27CD44CA0, &qword_21B118248);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__engagementShareRatio, &qword_27CD44CB8, &qword_21B118250);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21B08E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B08E874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  sub_21B099CBC(&qword_27CD460D8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B08E990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CB8, &qword_21B118250);
  MEMORY[0x28223BE20](v6 - 8);
  v17 = v16 - v7;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x28223BE20](v18);
  v16[2] = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CA0, &qword_21B118248);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  MEMORY[0x28223BE20](v12);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0 || (result = sub_21B112194(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 20) == 0.0 || (result = sub_21B112194(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 24) == 0.0 || (result = sub_21B112194(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 28) == 0.0 || (result = sub_21B112194(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 32) == 0.0 || (result = sub_21B112194(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 36) == 0.0 || (result = sub_21B112194(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 40) == 0.0 || (result = sub_21B112194(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 44) == 0.0 || (result = sub_21B112194(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 48) == 0.0 || (result = sub_21B112194(), !v4))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 84) || (result = sub_21B1121A4(), !v4))
                    {
                      swift_beginAccess();
                      if (*(a1 + 52) == 0.0 || (result = sub_21B112194(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 56) == 0.0 || (result = sub_21B112194(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 60) == 0.0 || (result = sub_21B112194(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 64) == 0.0 || (result = sub_21B112194(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 68) == 0.0 || (result = sub_21B112194(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 72) == 0.0 || (result = sub_21B112194(), !v4))
                                {
                                  swift_beginAccess();
                                  if (*(a1 + 76) == 0.0 || (result = sub_21B112194(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 80) == 0.0 || (result = sub_21B112194(), !v4))
                                    {
                                      v16[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
                                      swift_beginAccess();
                                      sub_21B0AA940();
                                      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
                                      {
                                        sub_21AF99BE0(v11, &qword_27CD44CA0, &qword_21B118248);
                                      }

                                      else
                                      {
                                        sub_21B03179C(v11);
                                        sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                                        sub_21B112224();
                                        result = sub_21B03183C();
                                        if (v4)
                                        {
                                          return result;
                                        }
                                      }

                                      v14 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
                                      swift_beginAccess();
                                      if (!*(a1 + v14) || (result = sub_21B1121A4(), !v4))
                                      {
                                        swift_beginAccess();
                                        v15 = v17;
                                        sub_21B0AA940();
                                        if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
                                        {
                                          return sub_21AF99BE0(v15, &qword_27CD44CB8, &qword_21B118250);
                                        }

                                        else
                                        {
                                          sub_21B03179C(v15);
                                          sub_21B099CBC(&qword_27CD460D8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
                                          sub_21B112224();
                                          return sub_21B03183C();
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

BOOL sub_21B08F1F8(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x28223BE20](v61);
  v58 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D90, &qword_21B127D10);
  MEMORY[0x28223BE20](v5);
  v62 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CB8, &qword_21B118250);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v59 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - v10;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D98, &qword_21B127D18);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CA0, &qword_21B118248);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
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
  LODWORD(v57) = *(a1 + 84);
  swift_beginAccess();
  if (v57 != *(a2 + 84))
  {
    return 0;
  }

  v57 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  sub_21B0AA940();
  v57 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  v40 = *(v14 + 48);
  sub_21B0AA940();
  v57 = v40;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
  {

    sub_21AF99BE0(v22, &qword_27CD44CA0, &qword_21B118248);
    if (__swift_getEnumTagSinglePayload(&v16[v57], 1, v11) == 1)
    {
      sub_21AF99BE0(v16, &qword_27CD44CA0, &qword_21B118248);
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  sub_21B0AA940();
  v46 = v57;
  if (__swift_getEnumTagSinglePayload(&v16[v57], 1, v11) == 1)
  {

    sub_21AF99BE0(v22, &qword_27CD44CA0, &qword_21B118248);
    sub_21B03183C();
LABEL_29:
    v47 = &qword_27CD46D98;
    v48 = &qword_21B127D18;
    v49 = v16;
LABEL_36:
    sub_21AF99BE0(v49, v47, v48);
    goto LABEL_37;
  }

  sub_21B03179C(&v16[v46]);
  if (*v20 != *v13 || v20[1] != v13[1] || *(v20 + 2) != *(v13 + 2))
  {

    sub_21B03183C();
    sub_21AF99BE0(v22, &qword_27CD44CA0, &qword_21B118248);
    sub_21B03183C();
    v49 = v16;
    v47 = &qword_27CD44CA0;
    v48 = &qword_21B118248;
    goto LABEL_36;
  }

  sub_21B111EC4();
  v57 = sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  LODWORD(v57) = sub_21B1123C4();
  sub_21B03183C();
  sub_21AF99BE0(v22, &qword_27CD44CA0, &qword_21B118248);
  sub_21B03183C();
  sub_21AF99BE0(v16, &qword_27CD44CA0, &qword_21B118248);
  if ((v57 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_22:
  v41 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v41) = *(a1 + v41);
  v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  if (v41 != *(a2 + v42))
  {
LABEL_37:

    return 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  v43 = *(v5 + 48);
  v44 = v62;
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v44, 1, v61) == 1)
  {

    sub_21AF99BE0(v60, &qword_27CD44CB8, &qword_21B118250);
    if (__swift_getEnumTagSinglePayload(v62 + v43, 1, v61) == 1)
    {
      sub_21AF99BE0(v62, &qword_27CD44CB8, &qword_21B118250);
      return 1;
    }

    goto LABEL_41;
  }

  v50 = v62;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v50 + v43, 1, v61) == 1)
  {

    sub_21AF99BE0(v60, &qword_27CD44CB8, &qword_21B118250);
    sub_21B03183C();
LABEL_41:
    v51 = &qword_27CD46D90;
    v52 = &qword_21B127D10;
    v53 = v62;
LABEL_47:
    sub_21AF99BE0(v53, v51, v52);
    return 0;
  }

  v54 = v58;
  sub_21B03179C(v62 + v43);
  if (*v59 != *v54 || v59[1] != v58[1])
  {

    sub_21B03183C();
    sub_21AF99BE0(v60, &qword_27CD44CB8, &qword_21B118250);
    sub_21B03183C();
    v53 = v62;
    v51 = &qword_27CD44CB8;
    v52 = &qword_21B118250;
    goto LABEL_47;
  }

  sub_21B111EC4();
  sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v55 = sub_21B1123C4();

  sub_21B03183C();
  sub_21AF99BE0(v60, &qword_27CD44CB8, &qword_21B118250);
  sub_21B03183C();
  sub_21AF99BE0(v62, &qword_27CD44CB8, &qword_21B118250);
  return (v55 & 1) != 0;
}