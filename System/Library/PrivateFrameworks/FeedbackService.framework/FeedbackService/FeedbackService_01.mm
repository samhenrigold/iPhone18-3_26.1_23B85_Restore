char *FBKSDonation.__allocating_init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v80 = a8;
  v82 = a7;
  v79 = a4;
  v71 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v70 - v22;
  v24 = objc_allocWithZone(v13);
  v25 = a1[1];
  v73 = *a1;
  v72 = v25;
  v26 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(a5, 1, v26) == 1 && v28(a6, 1, v26) == 1 && !*(v82 + 16))
  {
    v81 = a6;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v29 = sub_1B014CB5C();
    __swift_project_value_buffer(v29, qword_1EDAE7828);
    v30 = sub_1B014CB3C();
    v31 = sub_1B014CF5C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B00C4000, v30, v31, "No AnnotatedContent passed into FBKSDonation initializer", v32, 2u);
      MEMORY[0x1B271F750](v32, -1, -1);
    }

    a6 = v81;
  }

  v78 = a13;
  v77 = a12;
  v76 = a11;
  v75 = a10;
  v74 = a9;
  v81 = a5;
  sub_1B00DE660(a5, v23, &qword_1EB6C3D68, &unk_1B0151240);
  v33 = a6;
  sub_1B00DE660(a6, v21, &qword_1EB6C3D68, &unk_1B0151240);
  v34 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v34 = 0;
  v34[1] = 0;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v35 = *(v27 + 56);
  v35(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent], 1, 1, v26);
  v35(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v26);
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v36 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v37 = type metadata accessor for FBKSInteraction.Content(0);
  v38 = *(*(v37 - 8) + 56);
  v38(&v24[v36], 1, 1, v37);
  v38(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v37);
  v39 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v40 = 0;
  v40[1] = 0;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v41 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v42 = sub_1B014CB1C();
  (*(*(v42 - 8) + 56))(&v24[v41], 1, 1, v42);
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v43 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v44 = v72;
  *v43 = v73;
  v43[1] = v44;
  v45 = type metadata accessor for FBKSInteraction(0);
  v83.receiver = v24;
  v83.super_class = v45;
  v46 = objc_msgSendSuper2(&v83, sel_init);
  v47 = v46;
  if (a3)
  {
    v48 = (v46 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v48 = v71;
    v48[1] = a3;
    v49 = v46;
  }

  else
  {
    v50 = objc_opt_self();
    v51 = v47;
    v52 = [v50 mainBundle];
    v53 = [v52 bundleIdentifier];

    if (v53)
    {
      v54 = sub_1B014CC1C();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v57 = (v51 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v57 = v54;
    v57[1] = v56;
  }

  v58 = v81;

  v59 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v47 + v59) = v79;

  v60 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v23, v47 + v60, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v61 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v21, v47 + v61, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v62 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v47 + v62) = v82;

  v63 = (v47 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  v64 = v74;
  *v63 = v80;
  v63[1] = v64;

  v65 = (v47 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  v66 = v76;
  *v65 = v75;
  v65[1] = v66;

  v67 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v47 + v67) = v77;

  v68 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v47 + v68) = v78 & 1;

  sub_1B00DE9C0(v58, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE9C0(v33, &qword_1EB6C3D68, &unk_1B0151240);
  return v47;
}

char *FBKSDonation.init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v14 = v13;
  v82 = a8;
  v84 = a7;
  v81 = a4;
  v73 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - v23;
  v25 = a1[1];
  v75 = *a1;
  v74 = v25;
  v26 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(a5, 1, v26) == 1 && v28(a6, 1, v26) == 1 && !*(v84 + 16))
  {
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v29 = sub_1B014CB5C();
    __swift_project_value_buffer(v29, qword_1EDAE7828);
    v30 = sub_1B014CB3C();
    v31 = sub_1B014CF5C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = v31;
      v34 = v32;
      _os_log_impl(&dword_1B00C4000, v30, v33, "No AnnotatedContent passed into FBKSDonation initializer", v32, 2u);
      MEMORY[0x1B271F750](v34, -1, -1);
    }
  }

  v80 = a13;
  v79 = a12;
  v78 = a11;
  v77 = a10;
  v76 = a9;
  v83 = a5;
  sub_1B00DE660(a5, v24, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE660(a6, v22, &qword_1EB6C3D68, &unk_1B0151240);
  v35 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v35 = 0;
  v35[1] = 0;
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v36 = *(v27 + 56);
  v36(&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent], 1, 1, v26);
  v36(&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v26);
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v37 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v38 = type metadata accessor for FBKSInteraction.Content(0);
  v39 = *(*(v38 - 8) + 56);
  v39(&v14[v37], 1, 1, v38);
  v39(&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v38);
  v40 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v41 = 0;
  v41[1] = 0;
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v42 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v43 = sub_1B014CB1C();
  (*(*(v43 - 8) + 56))(&v14[v42], 1, 1, v43);
  v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v44 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v45 = v74;
  *v44 = v75;
  v44[1] = v45;
  v46 = type metadata accessor for FBKSInteraction(0);
  v85.receiver = v14;
  v85.super_class = v46;
  v47 = objc_msgSendSuper2(&v85, sel_init);
  v48 = v47;
  if (a3)
  {
    v49 = (v47 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v49 = v73;
    v49[1] = a3;
    v50 = v47;
    v51 = a6;
    v52 = v83;
  }

  else
  {
    v53 = objc_opt_self();
    v54 = v48;
    v55 = [v53 mainBundle];
    v56 = [v55 bundleIdentifier];

    if (v56)
    {
      v57 = sub_1B014CC1C();
      v59 = v58;
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    v51 = a6;
    v60 = (v54 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v60 = v57;
    v60[1] = v59;
    v52 = v83;
  }

  v61 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v48 + v61) = v81;

  v62 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v24, v48 + v62, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v63 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v22, v48 + v63, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v64 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v48 + v64) = v84;

  v65 = (v48 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  v66 = v76;
  *v65 = v82;
  v65[1] = v66;

  v67 = (v48 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  v68 = v78;
  *v67 = v77;
  v67[1] = v68;

  v69 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v48 + v69) = v79;

  v70 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v48 + v70) = v80 & 1;

  sub_1B00DE9C0(v52, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE9C0(v51, &qword_1EB6C3D68, &unk_1B0151240);
  return v48;
}

void *FBKSDonation.__allocating_init(from:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B00E7864(a1, v6);
  v4 = FBKSInteraction.init(from:)(v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void *FBKSDonation.init(from:)(void *a1)
{
  sub_1B00E7864(a1, v4);
  v2 = FBKSInteraction.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_1B00E2DA4(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = v43 - v7;
  v8 = sub_1B014CB1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v43 - v12);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v14 = sub_1B014CB5C();
  __swift_project_value_buffer(v14, qword_1EDAE7828);
  v15 = sub_1B014CB3C();
  v16 = sub_1B014CF6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43[0] = a1;
    v43[1] = v11;
    v18 = v17;
    v19 = a2;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v18 = 136446210;
    *(v18 + 4) = sub_1B00E6C2C(0x5F286574616E6F64, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v15, v16, "%{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    a2 = v19;
    v3 = v2;
    MEMORY[0x1B271F750](v21, -1, -1);
    v22 = v18;
    a1 = v43[0];
    MEMORY[0x1B271F750](v22, -1, -1);
  }

  v47 = &type metadata for FeedbackFeatureFlags;
  v48 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v23 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v23 & 1) == 0)
  {
    sub_1B00DC9DC();
    v29 = swift_allocError();
    *v30 = 0;
LABEL_15:
    *v13 = v29;
    swift_storeEnumTagMultiPayload();
    a1(v13);
    return sub_1B00DE9C0(v13, &qword_1EB6C3C30, &qword_1B014F3F0);
  }

  if (qword_1EDAE7008 != -1)
  {
    swift_once();
  }

  if ((byte_1EDAE7010 & 1) == 0)
  {
    v31 = sub_1B014CB3C();
    v32 = sub_1B014CF2C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B00C4000, v31, v32, "Donation is not supported on FCS", v33, 2u);
      MEMORY[0x1B271F750](v33, -1, -1);
    }

    sub_1B00E78C8();
    v29 = swift_allocError();
    *v34 = 1;
    goto LABEL_15;
  }

  v24 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  v25 = v45;
  sub_1B00DE660(v3 + v24, v45, &qword_1EB6C3B98, &qword_1B014F360);
  if ((*(v9 + 48))(v25, 1, v8) == 1)
  {
    sub_1B00DE9C0(v25, &qword_1EB6C3B98, &qword_1B014F360);
    sub_1B014C88C();
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = v3;
    type metadata accessor for FBKSDonation(0);
    sub_1B00E8900(&qword_1EDAE7000, type metadata accessor for FBKSDonation, &protocol conformance descriptor for FBKSInteraction);
    v26 = sub_1B014C86C();
    v28 = v27;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = a2;

    v38 = sub_1B00FA9AC(sub_1B00E7968, v37);

    if (v38)
    {
      v39 = sub_1B014CA7C();
      v40 = swift_allocObject();
      v40[2] = a1;
      v40[3] = a2;
      v40[4] = v3;
      v48 = sub_1B00E7970;
      v49 = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v47 = &block_descriptor_1;
      v41 = _Block_copy(aBlock);

      v42 = v3;

      [v38 donateWithDonationJSON:v39 completion:v41];
      _Block_release(v41);
      swift_unknownObjectRelease();
    }

    return sub_1B00D2024(v26, v28);
  }

  else
  {
    v36 = v44;
    (*(v9 + 32))(v44, v25, v8);
    (*(v9 + 16))(v13, v36, v8);
    swift_storeEnumTagMultiPayload();
    a1(v13);
    sub_1B00DE9C0(v13, &qword_1EB6C3C30, &qword_1B014F3F0);
    return (*(v9 + 8))(v36, v8);
  }
}

uint64_t sub_1B00E34F4(void *a1, void (*a2)(uint64_t *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - v5);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v7 = sub_1B014CB5C();
  __swift_project_value_buffer(v7, qword_1EDAE7828);
  v8 = a1;
  v9 = sub_1B014CB3C();
  v10 = sub_1B014CF4C();

  v11 = os_log_type_enabled(v9, v10);
  v24 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = a1;
    v26 = v23;
    *v12 = 136315138;
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v14 = sub_1B014CC6C();
    v16 = sub_1B00E6C2C(v14, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B00C4000, v9, v10, "Failed to connect to centralized feedback daemon: %s", v12, 0xCu);
    v17 = v23;
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1B271F750](v17, -1, -1);
    MEMORY[0x1B271F750](v12, -1, -1);
  }

  if (a1)
  {
    v18 = v24;
    *v6 = v24;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
  }

  else
  {
    sub_1B00E78C8();
    v20 = swift_allocError();
    *v21 = 0;
    *v6 = v20;
    swift_storeEnumTagMultiPayload();
  }

  a2(v6);
  return sub_1B00DE9C0(v6, &qword_1EB6C3C30, &qword_1B014F3F0);
}

uint64_t sub_1B00E376C(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v28 - v15;
  v17 = sub_1B014CB1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    v21 = a2;
    a3(v10);
  }

  else
  {
    v28[1] = a4;
    v29 = a3;
    sub_1B00DE660(v31, v16, &qword_1EB6C3B98, &qword_1B014F360);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v20, v16, v17);
      v25 = *(v18 + 16);
      v25(v14, v20, v17);
      (*(v18 + 56))(v14, 0, 1, v17);
      v26 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
      v27 = v30;
      swift_beginAccess();
      sub_1B00DE71C(v14, v27 + v26, &qword_1EB6C3B98, &qword_1B014F360);
      swift_endAccess();
      v25(v10, v20, v17);
      swift_storeEnumTagMultiPayload();
      v29(v10);
      sub_1B00DE9C0(v10, &qword_1EB6C3C30, &qword_1B014F3F0);
      return (*(v18 + 8))(v20, v17);
    }

    sub_1B00DE9C0(v16, &qword_1EB6C3B98, &qword_1B014F360);
    sub_1B00E78C8();
    v22 = swift_allocError();
    *v23 = 0;
    *v10 = v22;
    swift_storeEnumTagMultiPayload();
    v29(v10);
  }

  return sub_1B00DE9C0(v10, &qword_1EB6C3C30, &qword_1B014F3F0);
}

uint64_t sub_1B00E3AF8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E3B18, 0, 0);
}

uint64_t sub_1B00E3B18()
{
  v20 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x29286574616E6F64, 0xE800000000000000, &v19);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    if (qword_1EDAE7008 != -1)
    {
      swift_once();
    }

    if (byte_1EDAE7010)
    {
      v7 = v0[8];
      sub_1B010291C();
      v8 = swift_task_alloc();
      v0[9] = v8;
      *(v8 + 16) = v7;
      v9 = swift_task_alloc();
      v0[10] = v9;
      v10 = sub_1B014CB1C();
      *v9 = v0;
      v9[1] = sub_1B00DA708;
      v11 = v0[7];

      return MEMORY[0x1EEE6DE38](v11, 0, 0, 0x29286574616E6F64, 0xE800000000000000, sub_1B00E7994, v8, v10);
    }

    v14 = sub_1B014CB3C();
    v15 = sub_1B014CF2C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B00C4000, v14, v15, "Donation is not supported on FCS", v16, 2u);
      MEMORY[0x1B271F750](v16, -1, -1);
    }

    sub_1B00E78C8();
    swift_allocError();
    v13 = 1;
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    v13 = 0;
  }

  *v12 = v13;
  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t sub_1B00E3E8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1B00E2DA4(sub_1B00E8984, v7);
}

uint64_t sub_1B00E3FD4(uint64_t a1)
{
  v2 = sub_1B014CB1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v13 - v10);
  sub_1B00DE660(a1, v13 - v10, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13[1] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    return sub_1B014CE7C();
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    sub_1B014CE8C();
    return (*(v3 + 8))(v8, v2);
  }
}

void sub_1B00E41E0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B00E6C2C(0x6164696C61766E69, 0xEE00293A5F286574, aBlock);
    _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B271F750](v10, -1, -1);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  v23 = &type metadata for FeedbackFeatureFlags;
  v24 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v11 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v11)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;

    v13 = sub_1B00FA9AC(sub_1B00E799C, v12);

    if (v13)
    {
      sub_1B014C88C();
      swift_allocObject();
      sub_1B014C87C();
      aBlock[0] = v3;
      type metadata accessor for FBKSDonation(0);
      sub_1B00E8900(&qword_1EDAE7000, type metadata accessor for FBKSDonation, &protocol conformance descriptor for FBKSInteraction);
      v14 = sub_1B014C86C();
      v16 = v15;

      v19 = sub_1B014CA7C();
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = a2;
      v24 = sub_1B00E79A4;
      v25 = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DFB7C;
      v23 = &block_descriptor_20;
      v21 = _Block_copy(aBlock);

      [v13 invalidateDonationWithDonationJSON:v19 completion:v21];
      _Block_release(v21);
      swift_unknownObjectRelease();

      sub_1B00D2024(v14, v16);
      return;
    }

    sub_1B00E78C8();
  }

  else
  {
    sub_1B00DC9DC();
  }

  v17 = swift_allocError();
  *v18 = 0;
  a1();
}

void sub_1B00E45D8(void *a1, void (*a2)(void *))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1);
  }

  else
  {
    sub_1B00E78C8();
    v15 = swift_allocError();
    *v16 = 0;
    (a2)(v15, v16);
  }
}

uint64_t sub_1B00E47D8()
{
  v15 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x6164696C61766E69, 0xEC00000029286574, &v14);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    v7 = v0[7];
    v8 = swift_task_alloc();
    v0[8] = v8;
    *(v8 + 16) = v7;
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1B00E4A7C;
    v10 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v9, 0, 0, 0x6164696C61766E69, 0xEC00000029286574, sub_1B00E79CC, v8, v10);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B00E4A7C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B00E4BB0;
  }

  else
  {

    v2 = sub_1B00E4B98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00E4BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B00E4C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1B00E41E0(sub_1B00E8980, v7);
}

uint64_t sub_1B00E4D5C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    return sub_1B014CE7C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    return sub_1B014CE8C();
  }
}

void sub_1B00E4DD4(void *a1, void (*a2)(void *, uint64_t))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1, 1);
  }

  else
  {
    sub_1B00E78C8();
    v15 = swift_allocError();
    *v16 = 0;
    a2(v15, 1);
  }
}

uint64_t static FBKSDonation.fetchMultiple(count:fromLatest:)(int a1, char a2)
{
  *(v3 + 64) = v2;
  *(v3 + 100) = a2;
  *(v3 + 96) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E4FE4, 0, 0);
}

uint64_t sub_1B00E4FE4()
{
  v17 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000020, 0x80000001B015C2F0, &v16);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 100);
    v9 = *(v0 + 96);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 28) = v8;
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D78, &qword_1B014FE48);
    *v11 = v0;
    v11[1] = sub_1B00E529C;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD000000000000020, 0x80000001B015C2F0, sub_1B00E7CE0, v10, v12);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1B00E529C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B00DA844;
  }

  else
  {

    v2 = sub_1B00E8C4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00E53B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D98, &qword_1B014FFA8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest10completionys6UInt32V_Sbys6ResultOySayACGs5Error_pGctFZ_0(a3, v4, sub_1B00E8C38, v12);
}

void sub_1B00E5510(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v23 = a3;
    a4(a3, 1);
    v6 = v23;

LABEL_4:

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B00E78C8();
    v7 = swift_allocError();
    *v8 = 0;
    a4(v7, 1);
    v6 = v7;

    goto LABEL_4;
  }

  sub_1B014C82C();
  swift_allocObject();
  sub_1B00DE8A4(a1, a2);
  sub_1B014C81C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D78, &qword_1B014FE48);
  sub_1B00E8A94(&qword_1EB6C3DA8, &qword_1EB6C3D78, &qword_1B014FE48, MEMORY[0x1E69E6330]);
  v24 = a2;
  sub_1B014C80C();

  v11 = v25;
  if (qword_1EDAE7070 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = sub_1B014CB5C();
    __swift_project_value_buffer(v12, qword_1EDAE7828);

    v13 = sub_1B014CB3C();
    v14 = sub_1B014CF3C();
    v15 = v11 >> 62;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      v17 = v15 ? sub_1B014D09C() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v16 + 4) = v17;

      _os_log_impl(&dword_1B00C4000, v13, v14, "Fetched %ld donations:", v16, 0xCu);
      MEMORY[0x1B271F750](v16, -1, -1);
    }

    else
    {
    }

    if (v15)
    {
      break;
    }

    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_17:
    v19 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1B271EB20](v19, v11);
      }

      else
      {
        if (v19 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v20 = *(v11 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v25 = v20;
      sub_1B00E58C8(&v25);

      ++v19;
      if (v22 == v18)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v18 = sub_1B014D09C();
  if (v18)
  {
    goto LABEL_17;
  }

LABEL_29:
  a4(v11, 0);
  sub_1B00DE9AC(a1, v24);
}

void sub_1B00E58C8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_1B014CB1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = *a1;
  v13 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE660(v12 + v13, v4, &qword_1EB6C3B98, &qword_1B014F360);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B00DE9C0(v4, &qword_1EB6C3B98, &qword_1B014F360);
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v14 = sub_1B014CB5C();
    __swift_project_value_buffer(v14, qword_1EDAE7828);
    v15 = sub_1B014CB3C();
    v16 = sub_1B014CF4C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B00C4000, v15, v16, "Fetched donation is missing evaluationID", v17, 2u);
      MEMORY[0x1B271F750](v17, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v18 = sub_1B014CB5C();
    __swift_project_value_buffer(v18, qword_1EDAE7828);
    (*(v6 + 16))(v9, v11, v5);
    v19 = sub_1B014CB3C();
    v20 = sub_1B014CF3C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = v21;
      v32 = swift_slowAlloc();
      v33 = v32;
      *v21 = 136315138;
      sub_1B00E8900(&qword_1EB6C3B90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v22 = sub_1B014D22C();
      v24 = v23;
      v25 = *(v6 + 8);
      v25(v9, v5);
      v26 = sub_1B00E6C2C(v22, v24, &v33);

      v27 = v31;
      *(v31 + 1) = v26;
      v28 = v27;
      _os_log_impl(&dword_1B00C4000, v19, v20, "Fetched donation ID: %s", v27, 0xCu);
      v29 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B271F750](v29, -1, -1);
      MEMORY[0x1B271F750](v28, -1, -1);

      v25(v11, v5);
    }

    else
    {

      v30 = *(v6 + 8);
      v30(v9, v5);
      v30(v11, v5);
    }
  }
}

void sub_1B00E5D34(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v16 = a3;
    a4(a3, 1);
    v6 = v16;

LABEL_4:

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B00E78C8();
    v7 = swift_allocError();
    *v8 = 0;
    a4(v7, 1);
    v6 = v7;

    goto LABEL_4;
  }

  sub_1B014C82C();
  swift_allocObject();
  sub_1B00DE8A4(a1, a2);
  sub_1B014C81C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D80, &qword_1B014FE60);
  sub_1B00E884C();
  v11 = a2;
  sub_1B014C80C();

  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v12 = sub_1B014CB5C();
  __swift_project_value_buffer(v12, qword_1EDAE7828);

  v13 = sub_1B014CB3C();
  v14 = sub_1B014CF3C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v17[2];

    _os_log_impl(&dword_1B00C4000, v13, v14, "Fetched %ld donations:", v15, 0xCu);
    MEMORY[0x1B271F750](v15, -1, -1);
  }

  else
  {
  }

  a4(v17, 0);
  sub_1B00DE9AC(a1, v11);
}

uint64_t static FBKSDonation.fetchMultiple(count:fromLatest:excludingEvaluationIDs:)(int a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 108) = a2;
  *(v4 + 104) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E6034, 0, 0);
}

uint64_t sub_1B00E6034()
{
  v18 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000037, 0x80000001B015C320, &v17);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 108);
    v10 = *(v0 + 104);
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    *(v11 + 28) = v9;
    *(v11 + 32) = v8;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D78, &qword_1B014FE48);
    *v12 = v0;
    v12[1] = sub_1B00D8FBC;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD000000000000037, 0x80000001B015C320, sub_1B00E8360, v11, v13);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1B00E62FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D98, &qword_1B014FFA8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest22excludingEvaluationIDs10completionys6UInt32V_SbSaySSGSgys6ResultOySayACGs5Error_pGctFZ_0(a3, v6, a5, sub_1B00E87A0, v14);
}

uint64_t static FBKSDonation.fetchMultipleIDs(count:fromLatest:excludingEvaluationIDs:)(int a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 108) = a2;
  *(v4 + 104) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E6488, 0, 0);
}

uint64_t sub_1B00E6488()
{
  v18 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD00000000000003ALL, 0x80000001B015C360, &v17);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 108);
    v10 = *(v0 + 104);
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    *(v11 + 28) = v9;
    *(v11 + 32) = v8;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D80, &qword_1B014FE60);
    *v12 = v0;
    v12[1] = sub_1B00DF6B4;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD00000000000003ALL, 0x80000001B015C360, sub_1B00E8374, v11, v13);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1B00E6750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D90, &qword_1B014FFA0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  _s15FeedbackService12FBKSDonationC16fetchMultipleIDs5count10fromLatest019excludingEvaluationF010completionys6UInt32V_SbSaySSGSgys6ResultOySay10Foundation4UUIDVGs5Error_pGctFZ_0(a3, v6, a5, sub_1B00E878C, v14);
}

uint64_t sub_1B00E68B4(void *a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1B014CE7C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1B014CE8C();
  }
}

BOOL sub_1B00E6934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE660(v0 + v7, v6, &qword_1EB6C3D68, &unk_1B0151240);
  v8 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = 1;
  v11 = v9(v6, 1, v8);
  sub_1B00DE9C0(v6, &qword_1EB6C3D68, &unk_1B0151240);
  if (v11 == 1)
  {
    v12 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
    swift_beginAccess();
    sub_1B00DE660(v0 + v12, v4, &qword_1EB6C3D68, &unk_1B0151240);
    v10 = 1;
    v13 = v9(v4, 1, v8);
    sub_1B00DE9C0(v4, &qword_1EB6C3D68, &unk_1B0151240);
    if (v13 == 1)
    {
      v14 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      return *(*(v0 + v14) + 16) != 0;
    }
  }

  return v10;
}

id FBKSDonation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSDonation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B00E6B5C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B00E6BD0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1B00E6C2C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1B00E6C2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B00E6CF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B00D20D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B00E6CF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B00E6E04(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B014D06C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1B00E6E04(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B00E6E50(a1, a2);
  sub_1B00E6F80(&unk_1F25D57E8);
  return v3;
}

void *sub_1B00E6E50(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B012E478(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B014D06C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B014CD2C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B012E478(v10, 0);
        result = sub_1B014D00C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B00E6F80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B00E706C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B00E706C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DD0, &unk_1B0158CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1B00E7160(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void _s15FeedbackService12FBKSDonationC9presented12evaluationID10completiony10Foundation4UUIDV_ys5Error_pSgctFZ_0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v5 = sub_1B014CB5C();
  __swift_project_value_buffer(v5, qword_1EDAE7828);
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0xD000000000000023, 0x80000001B015C4A0, v18);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v19 = &type metadata for FeedbackFeatureFlags;
  v20 = sub_1B00DC988();
  LOBYTE(v18[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v10)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_1B00FA9AC(sub_1B00E8B9C, v11);

    if (v12)
    {
      v13 = sub_1B014CAEC();
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v20 = sub_1B00E8C48;
      v21 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B00DFB7C;
      v19 = &block_descriptor_110;
      v15 = _Block_copy(v18);

      [v12 presentedDonationWithEvaluationID:v13 completion:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a2();
  }
}

void _s15FeedbackService12FBKSDonationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v5 = sub_1B014CB5C();
  __swift_project_value_buffer(v5, qword_1EDAE7828);
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0xD00000000000001FLL, 0x80000001B015C230, v18);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v19 = &type metadata for FeedbackFeatureFlags;
  v20 = sub_1B00DC988();
  LOBYTE(v18[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v10)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_1B00FA9AC(sub_1B00E8C44, v11);

    if (v12)
    {
      v13 = sub_1B014CAEC();
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v20 = sub_1B00E8A8C;
      v21 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B0145D1C;
      v19 = &block_descriptor_98;
      v15 = _Block_copy(v18);

      [v12 fetchDonationWithDonationID:v13 completion:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a2(v16, 1);
  }
}

uint64_t sub_1B00E77A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00E7808(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B00E7864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B00E78C8()
{
  result = qword_1EB6C3D70;
  if (!qword_1EB6C3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D70);
  }

  return result;
}

uint64_t type metadata accessor for FBKSDonation(uint64_t a1)
{
  result = qword_1EDAE7418;
  if (!qword_1EDAE7418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest10completionys6UInt32V_Sbys6ResultOySayACGs5Error_pGctFZ_0(uint64_t a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v8 = sub_1B014CB5C();
  __swift_project_value_buffer(v8, qword_1EDAE7828);
  v9 = sub_1B014CB3C();
  v10 = sub_1B014CF6C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B00E6C2C(0xD00000000000002BLL, 0x80000001B015C470, v20);
    _os_log_impl(&dword_1B00C4000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B271F750](v12, -1, -1);
    MEMORY[0x1B271F750](v11, -1, -1);
  }

  v21 = &type metadata for FeedbackFeatureFlags;
  v22 = sub_1B00DC988();
  LOBYTE(v20[0]) = 0;
  v13 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v20);
  if (v13)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    v15 = sub_1B00FA9AC(sub_1B00E8948, v14);

    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;
      v22 = sub_1B00E8964;
      v23 = v16;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = sub_1B0145D1C;
      v21 = &block_descriptor_80;
      v17 = _Block_copy(v20);

      [v15 fetchDonationsWithCount:a1 fromLatest:a2 & 1 completion:v17];
      swift_unknownObjectRelease();
      _Block_release(v17);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v18 = swift_allocError();
    *v19 = 0;
    a3(v18, 1);
  }
}

void _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest22excludingEvaluationIDs10completionys6UInt32V_SbSaySSGSgys6ResultOySayACGs5Error_pGctFZ_0(uint64_t a1, char a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v10 = sub_1B014CB5C();
  __swift_project_value_buffer(v10, qword_1EDAE7828);
  v11 = sub_1B014CB3C();
  v12 = sub_1B014CF6C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B00E6C2C(0xD000000000000042, 0x80000001B015C420, v22);
    _os_log_impl(&dword_1B00C4000, v11, v12, "%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B271F750](v14, -1, -1);
    MEMORY[0x1B271F750](v13, -1, -1);
  }

  v23 = &type metadata for FeedbackFeatureFlags;
  v24 = sub_1B00DC988();
  LOBYTE(v22[0]) = 0;
  v15 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v15)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v17 = sub_1B00FA9AC(sub_1B00E8C44, v16);

    if (v17)
    {
      if (a3)
      {
        a3 = sub_1B014CE0C();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;
      v24 = sub_1B00E8C40;
      v25 = v18;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1B0145D1C;
      v23 = &block_descriptor_68;
      v19 = _Block_copy(v22);

      [v17 fetchDonationsWithCount:a1 fromLatest:a2 & 1 excludingEvaluationIDs:a3 completion:v19];
      swift_unknownObjectRelease();
      _Block_release(v19);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v20 = swift_allocError();
    *v21 = 0;
    a4(v20, 1);
  }
}

void _s15FeedbackService12FBKSDonationC16fetchMultipleIDs5count10fromLatest019excludingEvaluationF010completionys6UInt32V_SbSaySSGSgys6ResultOySay10Foundation4UUIDVGs5Error_pGctFZ_0(uint64_t a1, char a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v10 = sub_1B014CB5C();
  __swift_project_value_buffer(v10, qword_1EDAE7828);
  v11 = sub_1B014CB3C();
  v12 = sub_1B014CF6C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B00E6C2C(0xD000000000000045, 0x80000001B015C3D0, v22);
    _os_log_impl(&dword_1B00C4000, v11, v12, "%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B271F750](v14, -1, -1);
    MEMORY[0x1B271F750](v13, -1, -1);
  }

  v23 = &type metadata for FeedbackFeatureFlags;
  v24 = sub_1B00DC988();
  LOBYTE(v22[0]) = 0;
  v15 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v15)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v17 = sub_1B00FA9AC(sub_1B00E8C44, v16);

    if (v17)
    {
      if (a3)
      {
        a3 = sub_1B014CE0C();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;
      v24 = sub_1B00E8844;
      v25 = v18;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1B0145D1C;
      v23 = &block_descriptor_59;
      v19 = _Block_copy(v22);

      [v17 fetchDonationIDsWithCount:a1 fromLatest:a2 & 1 excludingEvaluationIDs:a3 completion:v19];
      swift_unknownObjectRelease();
      _Block_release(v19);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v20 = swift_allocError();
    *v21 = 0;
    a4(v20, 1);
  }
}

unint64_t sub_1B00E838C()
{
  result = qword_1EB6C3D88;
  if (!qword_1EB6C3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D88);
  }

  return result;
}

uint64_t dispatch thunk of FBKSDonation.donate()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2F0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B00E8C18;

  return v7(a1);
}

uint64_t dispatch thunk of FBKSDonation.invalidate()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x300);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B00DCFAC;

  return v5();
}

unint64_t sub_1B00E884C()
{
  result = qword_1EB6C3DA0;
  if (!qword_1EB6C3DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3D80, &qword_1B014FE60);
    sub_1B00E8900(&qword_1EDAE6EA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DA0);
  }

  return result;
}

uint64_t sub_1B00E8900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B00E8984(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);

  return sub_1B00E3FD4(a1);
}

uint64_t sub_1B00E8A00(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0);

  return sub_1B00DF91C(a1, a2 & 1);
}

uint64_t sub_1B00E8A94(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1B00E8900(&qword_1EB6C3DB0, type metadata accessor for FBKSDonation, &protocol conformance descriptor for FBKSInteraction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B00E8BA4()
{
  result = qword_1EB6C3DD8;
  if (!qword_1EB6C3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DD8);
  }

  return result;
}

uint64_t FormItem.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormItem.platform.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormItem.signature.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormItem.formIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormItem.isSurvey.getter()
{
  if (*(v0 + 80) == 0x796576727553 && *(v0 + 88) == 0xE600000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1B014D25C();
  }
}

uint64_t sub_1B00E8D6C(uint64_t a1)
{
  sub_1B014CCAC();
}

unint64_t sub_1B00E8E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B00E9FF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B00E8EA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 7627124;
  v7 = 0xE800000000000000;
  if (v2 != 5)
  {
    v6 = 0x656C6F526D726F66;
    v5 = 0xE800000000000000;
  }

  v8 = 0x6D726F6674616C70;
  if (v2 != 3)
  {
    v8 = 0x727574616E676973;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000074616570;
  v10 = 0x6552646C756F6873;
  if (v2 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B00E8F6C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 7627124;
  if (v1 != 5)
  {
    v3 = 0x656C6F526D726F66;
  }

  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0x727574616E676973;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6552646C756F6873;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B00E9034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B00E9FF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B00E9068(uint64_t a1)
{
  v2 = sub_1B00E973C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00E90A4(uint64_t a1)
{
  v2 = sub_1B00E973C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00E90E0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = sub_1B014C7EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1B014D24C();
  *&v22[0] = 0;
  v11 = [v9 dataWithJSONObject:v10 options:1 error:v22];
  swift_unknownObjectRelease();
  v12 = *&v22[0];
  if (v11)
  {
    v13 = sub_1B014CA8C();
    v15 = v14;

    sub_1B014C82C();
    swift_allocObject();
    sub_1B014C81C();
    (*(v6 + 104))(v8, *MEMORY[0x1E6967EF8], v5);
    sub_1B014C7FC();
    sub_1B00EA044();
    sub_1B014C80C();

    result = sub_1B00D2024(v13, v15);
    if (!v2)
    {
      v17 = v22[3];
      a2[2] = v22[2];
      a2[3] = v17;
      v18 = v22[5];
      a2[4] = v22[4];
      a2[5] = v18;
      v19 = v22[1];
      *a2 = v22[0];
      a2[1] = v19;
    }
  }

  else
  {
    v20 = v12;
    sub_1B014C9CC();

    return swift_willThrow();
  }

  return result;
}

uint64_t FormItem.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](v2, v3);
  MEMORY[0x1B271E7F0](0x209380E220, 0xA500000000000000);
  v8 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v8);

  MEMORY[0x1B271E7F0](0x746E656469207C20, 0xEF203A7265696669);
  MEMORY[0x1B271E7F0](v6, v7);
  MEMORY[0x1B271E7F0](0x726F6674616C7020, 0xEB00000000203A6DLL);
  MEMORY[0x1B271E7F0](v4, v5);
  MEMORY[0x1B271E7F0](0x7374616570657220, 0xEA0000000000203ALL);
  if (v1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1B271E7F0](v9, v10);

  return 0;
}

uint64_t FormItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DE0, &qword_1B014FFB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v15 = *(v1 + 8);
  v7 = *(v1 + 16);
  v14[8] = *(v1 + 24);
  v14[9] = v7;
  v8 = *(v1 + 32);
  v14[6] = *(v1 + 40);
  v14[7] = v8;
  v9 = *(v1 + 56);
  v14[3] = *(v1 + 48);
  v14[4] = v9;
  v10 = *(v1 + 72);
  v14[1] = *(v1 + 64);
  v14[2] = v10;
  v11 = *(v1 + 88);
  v14[5] = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00E973C();
  sub_1B014D35C();
  v23 = 0;
  v12 = v16;
  sub_1B014D20C();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = v11;
  v22 = 1;
  sub_1B014D1EC();
  v21 = 2;
  sub_1B014D1DC();
  v20 = 3;
  sub_1B014D1DC();
  v19 = 4;
  sub_1B014D1DC();
  v18 = 5;
  sub_1B014D1DC();
  v17 = 6;
  sub_1B014D1DC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B00E973C()
{
  result = qword_1EB6C3DE8;
  if (!qword_1EB6C3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DE8);
  }

  return result;
}

uint64_t FormItem.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DF0, &qword_1B014FFC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00E973C();
  sub_1B014D34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v42) = 0;
  v9 = sub_1B014D16C();
  LOBYTE(v42) = 1;
  v10 = sub_1B014D14C();
  LOBYTE(v42) = 2;
  v33 = sub_1B014D13C();
  v35 = v11;
  LOBYTE(v42) = 3;
  v12 = sub_1B014D13C();
  v34 = v13;
  v30 = v12;
  LOBYTE(v42) = 4;
  v32 = 0;
  v29 = sub_1B014D13C();
  v31 = v14;
  LOBYTE(v42) = 5;
  v28 = sub_1B014D13C();
  v32 = v15;
  v55 = 6;
  v27 = sub_1B014D13C();
  v17 = v16;
  v18 = v10 & 1;
  v54 = v18;
  (*(v6 + 8))(v8, v5);
  *&v36 = v9;
  BYTE8(v36) = v18;
  *&v37 = v33;
  v19 = v35;
  *(&v37 + 1) = v35;
  *&v38 = v30;
  v20 = v34;
  *(&v38 + 1) = v34;
  *&v39 = v29;
  v21 = v31;
  *(&v39 + 1) = v31;
  *&v40 = v28;
  v22 = v27;
  *(&v40 + 1) = v32;
  *&v41 = v27;
  *(&v41 + 1) = v17;
  v23 = v39;
  a2[2] = v38;
  a2[3] = v23;
  v24 = v41;
  a2[4] = v40;
  a2[5] = v24;
  v25 = v37;
  *a2 = v36;
  a2[1] = v25;
  sub_1B00E9C38(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v42 = v9;
  v43 = v54;
  v44 = v33;
  v45 = v19;
  v46 = v30;
  v47 = v20;
  v48 = v29;
  v49 = v21;
  v50 = v28;
  v51 = v32;
  v52 = v22;
  v53 = v17;
  return sub_1B00E9C70(&v42);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B00E9CF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B00E9D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B00E9EF4()
{
  result = qword_1EB6C3DF8;
  if (!qword_1EB6C3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DF8);
  }

  return result;
}

unint64_t sub_1B00E9F4C()
{
  result = qword_1EB6C3E00;
  if (!qword_1EB6C3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E00);
  }

  return result;
}

unint64_t sub_1B00E9FA4()
{
  result = qword_1EB6C3E08;
  if (!qword_1EB6C3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E08);
  }

  return result;
}

unint64_t sub_1B00E9FF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B014D0DC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B00EA044()
{
  result = qword_1EB6C3E10;
  if (!qword_1EB6C3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E10);
  }

  return result;
}

uint64_t sub_1B00EA0D4(char a1, uint64_t *a2)
{
  v3 = *a2;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  result = swift_beginAccess();
  *(v2 + v3) = v4;
  return result;
}

uint64_t sub_1B00EA140(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = *a4;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  result = swift_beginAccess();
  *(a1 + v5) = v6;
  return result;
}

uint64_t FBKSLaunchConfiguration.asJSON.getter()
{
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  type metadata accessor for FBKSLaunchConfiguration();
  sub_1B00EA658(&qword_1EB6C3E18, &protocol conformance descriptor for FBKSLaunchConfiguration);
  v0 = sub_1B014C86C();

  return v0;
}

uint64_t _s15FeedbackService23FBKSLaunchConfigurationC8fromJSON4dataACSg10Foundation4DataV_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1B014C82C();
  swift_allocObject();
  sub_1B014C81C();
  type metadata accessor for FBKSLaunchConfiguration();
  sub_1B00EA658(&qword_1EB6C3E20, &protocol conformance descriptor for FBKSLaunchConfiguration);
  sub_1B014C80C();

  return v3;
}

uint64_t sub_1B00EA658(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSLaunchConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B00EA6D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1B014CB4C();
}

void static FBKSAdmin.reportFailureToLaunchForm(formIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1B00EA8E8(a3, a4);
  v7 = sub_1B00CF9D0(sub_1B00EBA30, v6);

  if (v7)
  {
    v8 = sub_1B014CC0C();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v11[4] = sub_1B00EAB08;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1B00DFB7C;
    v11[3] = &block_descriptor_2;
    v10 = _Block_copy(v11);
    sub_1B00EA8E8(a3, a4);

    [v7 reportFailureToLaunchFormWithFormIdentifier:v8 completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

uint64_t sub_1B00EA8E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1B00EA8F8(void *a1, void (*a2)(void *))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = qword_1EB6C3A60;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EB6C5248);
  v7 = v5;
  v8 = sub_1B014CB3C();
  v9 = sub_1B014CF4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v11 = v18;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B00E6C2C(0xD000000000000035, 0x80000001B015C5B0, &v18);
    *(v10 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1B014CC1C();
    v16 = v15;

    v17 = sub_1B00E6C2C(v14, v16, &v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v11, -1, -1);
    MEMORY[0x1B271F750](v10, -1, -1);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static FBKSAdmin.didFinishSubmission(formIdentifier:feedbackId:isSurvey:error:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, id a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;
  sub_1B00EA8E8(a6, a7);
  v13 = sub_1B00CF9D0(sub_1B00EAD0C, v12);

  if (v13)
  {
    v14 = sub_1B014CC0C();
    if (a5)
    {
      v15 = a5;
      a5 = _s15FeedbackService9FBKSErrorV14xpcSafeNSError5errorSo0F0Cs5Error_p_tFZ_0(v15);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = a6;
    *(v16 + 24) = a7;
    v18[4] = sub_1B00EAF38;
    v18[5] = v16;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1B00DFB7C;
    v18[3] = &block_descriptor_12_0;
    v17 = _Block_copy(v18);
    sub_1B00EA8E8(a6, a7);

    [v13 didFinishSubmissionWithFormIdentifier:v14 feedbackId:a3 isSurvey:a4 & 1 error:a5 completion:v17];
    swift_unknownObjectRelease();
    _Block_release(v17);
  }
}

void sub_1B00EAD28(void *a1, void (*a2)(void *))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = qword_1EB6C3A60;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EB6C5248);
  v7 = v5;
  v8 = sub_1B014CB3C();
  v9 = sub_1B014CF4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v11 = v18;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B00E6C2C(0xD000000000000049, 0x80000001B015C560, &v18);
    *(v10 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1B014CC1C();
    v16 = v15;

    v17 = sub_1B00E6C2C(v14, v16, &v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v11, -1, -1);
    MEMORY[0x1B271F750](v10, -1, -1);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

void static FBKSAdmin.clearCachedUserSession(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1B00EA8E8(a1, a2);
  v5 = sub_1B00CF9D0(sub_1B00EBA30, v4);

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v8[4] = sub_1B00EB9F0;
    v8[5] = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1B00DFB7C;
    v8[3] = &block_descriptor_21;
    v7 = _Block_copy(v8);
    sub_1B00EA8E8(a1, a2);

    [v5 clearCachedUserSessionWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

void sub_1B00EB0C0(void *a1, void (*a2)(void *))
{
  if (qword_1EB6C3A60 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EB6C5248);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a2)
  {
    a2(a1);
  }
}

void sub_1B00EB258(void *a1, void (*a2)(void *))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = qword_1EB6C3A60;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EB6C5248);
  v7 = v5;
  v8 = sub_1B014CB3C();
  v9 = sub_1B014CF4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v11 = v18;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B00E6C2C(0xD000000000000023, 0x80000001B015C530, &v18);
    *(v10 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1B014CC1C();
    v16 = v15;

    v17 = sub_1B00E6C2C(v14, v16, &v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v11, -1, -1);
    MEMORY[0x1B271F750](v10, -1, -1);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

uint64_t static FBKSAdmin.resetDaemon()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1B00CFA00(sub_1B00EB9F8, v0);

  if (v2)
  {
    v6[4] = sub_1B00EBA00;
    v6[5] = v0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B00DFB7C;
    v6[3] = &block_descriptor_27;
    v3 = _Block_copy(v6);

    [v2 resetDaemonWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v3);
  }

  swift_beginAccess();
  v4 = *v1;
  if (*v1)
  {
    swift_willThrow();
    v4;
  }
}

void sub_1B00EB600(void *a1, uint64_t a2)
{
  if (qword_1EB6C3A60 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EB6C5248);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  swift_beginAccess();
  v14 = *(a2 + 16);
  *(a2 + 16) = a1;
  v15 = v5;
}

void sub_1B00EB7A4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = qword_1EB6C3A60;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1B014CB5C();
    __swift_project_value_buffer(v6, qword_1EB6C5248);
    v7 = v5;
    v8 = sub_1B014CB3C();
    v9 = sub_1B014CF4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_1B00E6C2C(0x6561447465736572, 0xED000029286E6F6DLL, v19);
      *(v10 + 12) = 2080;
      v12 = v7;
      v13 = [v12 description];
      v14 = sub_1B014CC1C();
      v16 = v15;

      v17 = sub_1B00E6C2C(v14, v16, v19);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B271F750](v11, -1, -1);
      MEMORY[0x1B271F750](v10, -1, -1);
    }

    swift_beginAccess();
    v18 = *(a2 + 16);
    *(a2 + 16) = a1;
  }
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t JSONCodable.encode()(uint64_t a1, uint64_t a2)
{
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  v2 = sub_1B014C86C();

  return v2;
}

uint64_t static JSONCodable.decode(from:)()
{
  sub_1B014C82C();
  swift_allocObject();
  sub_1B014C81C();
  sub_1B014C80C();
}

uint64_t sub_1B00EBBE0(uint64_t a1)
{
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00EC108();
  v1 = sub_1B014C86C();

  return v1;
}

uint64_t sub_1B00EBC8C()
{
  sub_1B014C82C();
  swift_allocObject();
  sub_1B014C81C();
  sub_1B00EC0B4();
  sub_1B014C80C();
}

uint64_t sub_1B00EBD2C(uint64_t a1)
{
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00EC070(&qword_1EB6C3E40, &protocol conformance descriptor for FBKSEvaluation.Subject.RemoteEvaluation);
  v1 = sub_1B014C86C();

  return v1;
}

uint64_t sub_1B00EBDD0()
{
  sub_1B014C82C();
  swift_allocObject();
  sub_1B014C81C();
  sub_1B00EC070(&qword_1EB6C3E38, &protocol conformance descriptor for FBKSEvaluation.Subject.RemoteEvaluation);
  sub_1B014C80C();
}

uint64_t sub_1B00EBE8C(uint64_t a1)
{
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00EC01C();
  v1 = sub_1B014C86C();

  return v1;
}

uint64_t sub_1B00EBF28()
{
  sub_1B014C82C();
  swift_allocObject();
  sub_1B014C81C();
  sub_1B00EBFC8();
  sub_1B014C80C();
}

unint64_t sub_1B00EBFC8()
{
  result = qword_1EB6C3E28;
  if (!qword_1EB6C3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E28);
  }

  return result;
}

unint64_t sub_1B00EC01C()
{
  result = qword_1EB6C3E30;
  if (!qword_1EB6C3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E30);
  }

  return result;
}

uint64_t sub_1B00EC070(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B00EC0B4()
{
  result = qword_1EB6C3E48;
  if (!qword_1EB6C3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E48);
  }

  return result;
}

unint64_t sub_1B00EC108()
{
  result = qword_1EB6C3E50;
  if (!qword_1EB6C3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E50);
  }

  return result;
}

uint64_t sub_1B00EC15C()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3E58);
  __swift_project_value_buffer(v0, qword_1EB6C3E58);
  return sub_1B014CB4C();
}

uint64_t static FBKSExtendedAttributes.write(key:value:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B014CC5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B014CC4C();
  v12 = sub_1B014CC2C();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v16[-6] = a5;
    v16[-5] = a1;
    v16[-4] = a2;
    v16[-3] = v12;
    v16[-2] = v14;
    sub_1B00ED104(sub_1B00EC618, &v16[-8], v12, v14);
    return sub_1B00DE9AC(v12, v14);
  }

  return result;
}

void sub_1B00EC358(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a1)
  {
    sub_1B014CA2C();
    v11 = v10;
    v12 = a7 >> 62;
    if ((a7 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        goto LABEL_13;
      }

      v17 = *(a6 + 16);
      v16 = *(a6 + 24);
      v13 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
LABEL_13:
        v18 = sub_1B014CC7C();

        v19 = sub_1B014CC7C();
        v20 = setxattr((v18 + 32), (v19 + 32), a1, v13, 0, 0);

        if (!v20)
        {
          return;
        }

        v11 = *MEMORY[0x1E696A798];
        v21 = MEMORY[0x1B271E670]();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B014F1E0;
        *(inited + 32) = sub_1B014CC1C();
        *(inited + 40) = v23;
        v24 = MEMORY[0x1B271E670]();
        if (strerror(v24))
        {
          v25 = sub_1B014CD0C();
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v25;
          *(inited + 56) = v26;
          sub_1B011BEB4(inited);
          swift_setDeallocating();
          sub_1B00EDC14(inited + 32);
          v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v28 = sub_1B014CB9C();

          [v27 initWithDomain:v11 code:v21 userInfo:v28];

          goto LABEL_16;
        }

LABEL_19:

        __break(1u);
        return;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(a7);
      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(a6), a6))
    {
      __break(1u);
      goto LABEL_19;
    }

    v13 = HIDWORD(a6) - a6;
    goto LABEL_13;
  }

  sub_1B014D01C();

  sub_1B014CA4C();
  sub_1B00EDBBC();
  v14 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v14);

  sub_1B00EDAD0();
  swift_allocError();
  *v15 = 0xD00000000000001DLL;
  v15[1] = 0x80000001B015C6B0;
LABEL_16:
  swift_willThrow();
}

uint64_t sub_1B00EC654@<X0>(void *a1@<X0>, size_t a4@<X5>, ssize_t *a5@<X8>)
{
  sub_1B014CA2C();
  v8 = sub_1B014CC7C();

  v9 = sub_1B014CC7C();
  v10 = getxattr((v8 + 32), (v9 + 32), a1, a4, 0, 0);

  *a5 = v10;
  return result;
}

uint64_t static FBKSExtendedAttributes.tryReading(keys:url:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = (a1 + 40);
  v7 = *(a1 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {
      return 0;
    }

    v8 = *(v6 - 1);
    v9 = *v6;

    v10 = sub_1B00ED6FC(v8, v9, a2);
    if (v4)
    {
      break;
    }

    v3 = v10;
    v12 = v11;
    v6 += 2;

    if (v12)
    {
      return v3;
    }
  }

  return v3;
}

uint64_t *static FBKSExtendedAttributes.listKeys(domain:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  v6 = sub_1B014CC5C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B014CA2C();
  v7 = sub_1B014CC7C();

  v8 = listxattr((v7 + 32), 0, 0, 1);

  if (v8 >= 1)
  {
    v9 = 0xD000000000000026;
    v58 = sub_1B00ED65C(v8);
    v59 = v10;
    MEMORY[0x1EEE9AC00](v58);
    *(&v51 - 2) = a3;
    *(&v51 - 1) = v8;
    v11 = &v58;
    if (sub_1B00ED23C(sub_1B00EDAB4, (&v51 - 4)) == -1)
    {
      v35 = " string from keysBuffer";
    }

    else
    {
      v12 = v58;
      v11 = v59;
      sub_1B014CC4C();
      v13 = sub_1B014CC3C();
      if (v14)
      {
        v54 = v12;
        v55 = v11;
        v57[0] = 0;
        v57[1] = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v13);
        *(&v51 - 2) = v57;
        v17 = sub_1B00ECD44(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B00EDB24, (&v51 - 4), v15, v16, &v51);
        v18 = *(v17 + 16);
        v56 = v3;
        if (v18)
        {
          v57[0] = MEMORY[0x1E69E7CC0];
          sub_1B00D16F8(0, v18, 0);
          v19 = v57[0];
          v53 = v17;
          v20 = (v17 + 56);
          do
          {
            v22 = *(v20 - 3);
            v21 = *(v20 - 2);
            v23 = *(v20 - 1);
            v24 = *v20;

            v25 = MEMORY[0x1B271E780](v22, v21, v23, v24);
            v27 = v26;

            v57[0] = v19;
            v29 = *(v19 + 16);
            v28 = *(v19 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1B00D16F8((v28 > 1), v29 + 1, 1);
              v19 = v57[0];
            }

            *(v19 + 16) = v29 + 1;
            v30 = v19 + 16 * v29;
            *(v30 + 32) = v25;
            *(v30 + 40) = v27;
            v20 += 4;
            --v18;
          }

          while (v18);

          if (a2)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v19 = MEMORY[0x1E69E7CC0];
          if (a2)
          {
LABEL_16:
            v36 = *(v19 + 16);
            if (v36)
            {
              v37 = 0;
              v38 = v19 + 40;
              v52 = v36 - 1;
              v11 = MEMORY[0x1E69E7CC0];
              v53 = v19 + 40;
              do
              {
                v39 = (v38 + 16 * v37);
                v40 = v37;
                while (1)
                {
                  if (v40 >= *(v19 + 16))
                  {
                    __break(1u);
                    goto LABEL_37;
                  }

                  v42 = *(v39 - 1);
                  v41 = *v39;
                  v37 = v40 + 1;

                  if (sub_1B014CD7C())
                  {
                    break;
                  }

                  v39 += 2;
                  ++v40;
                  if (v36 == v37)
                  {
                    goto LABEL_34;
                  }
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v57[0] = v11;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1B00D16F8(0, v11[2] + 1, 1);
                  v11 = v57[0];
                }

                v45 = v11[2];
                v44 = v11[3];
                v46 = v45 + 1;
                if (v45 >= v44 >> 1)
                {
                  v51 = v45 + 1;
                  sub_1B00D16F8((v44 > 1), v45 + 1, 1);
                  v46 = v51;
                  v11 = v57[0];
                }

                v11[2] = v46;
                v47 = &v11[2 * v45];
                v47[4] = v42;
                v47[5] = v41;
                v38 = v53;
              }

              while (v52 != v40);
            }

            else
            {
              v11 = MEMORY[0x1E69E7CC0];
            }

LABEL_34:

            sub_1B00D2024(v54, v55);
            return v11;
          }
        }

        sub_1B00D2024(v54, v55);
        return v19;
      }

      v35 = "entifier:completion:)";
      v9 = 0xD000000000000027;
    }

    v48 = v35 | 0x8000000000000000;
    sub_1B00EDAD0();
    swift_allocError();
    *v49 = v9;
    v49[1] = v48;
    swift_willThrow();
    sub_1B00D2024(v58, v59);
    return v11;
  }

  if (qword_1EB6C3A68 != -1)
  {
LABEL_37:
    swift_once();
  }

  v31 = sub_1B014CB5C();
  __swift_project_value_buffer(v31, qword_1EB6C3E58);
  v32 = sub_1B014CB3C();
  v33 = sub_1B014CF6C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1B00C4000, v32, v33, "No extended attributes returned", v34, 2u);
    MEMORY[0x1B271F750](v34, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B00ECCC4@<X0>(char *a1@<X0>, size_t a2@<X3>, ssize_t *a3@<X8>)
{
  sub_1B014CA2C();
  v6 = sub_1B014CC7C();

  v7 = listxattr((v6 + 32), a1, a2, 1);

  *a3 = v7;
  return result;
}

unint64_t sub_1B00ECD44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B014CDAC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B00D13E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B00D13E8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B014CD8C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B014CCCC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B014CCCC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B014CDAC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B00D13E8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B014CDAC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B00D13E8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B00D13E8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B014CCCC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B00ED104(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1B0143A48(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1B0143A48(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

char *sub_1B00ED23C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1B00D2024(v7, v6);
      *&v18 = v7;
      WORD4(v18) = v6;
      BYTE10(v18) = BYTE2(v6);
      BYTE11(v18) = BYTE3(v6);
      BYTE12(v18) = BYTE4(v6);
      BYTE13(v18) = BYTE5(v6);
      BYTE14(v18) = BYTE6(v6);
      result = a1(&v17, &v18, &v18 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *v4 = v18;
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B00D2024(v7, v6);
    *v4 = xmmword_1B0150250;
    sub_1B00D2024(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1B014C95C() && __OFSUB__(v7, sub_1B014C98C()))
      {
LABEL_22:
        __break(1u);
      }

      sub_1B014C99C();
      swift_allocObject();
      v14 = sub_1B014C94C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1B00ED5AC(v7, v7 >> 32, a1);

      *v4 = v7;
      v4[1] = v12 | 0x4000000000000000;
      if (!v3)
      {
        return v15;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v8 == 2)
  {

    sub_1B00D2024(v7, v6);
    *&v18 = v7;
    *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1B0150250;
    sub_1B00D2024(0, 0xC000000000000000);
    sub_1B014CA5C();
    v11 = *(&v18 + 1);
    result = sub_1B00ED5AC(*(v18 + 16), *(v18 + 24), a1);
    *v4 = v18;
    v4[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    result = a1(&v17, &v18, &v18);
    if (!v3)
    {
      return v17;
    }
  }

  return result;
}

char *sub_1B00ED5AC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B014C95C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B014C98C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B014C97C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1B00ED65C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B014C99C();
      swift_allocObject();
      sub_1B014C96C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B014CA6C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B00ED6FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1B014CC5C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B014CA2C();
  v7 = sub_1B014CC7C();

  v8 = sub_1B014CC7C();
  v9 = getxattr((v7 + 32), (v8 + 32), 0, 0, 0, 0);

  if (v9 == -1)
  {
    if (MEMORY[0x1B271E670](v10) == 93)
    {
      if (qword_1EB6C3A68 != -1)
      {
        swift_once();
      }

      v15 = sub_1B014CB5C();
      __swift_project_value_buffer(v15, qword_1EB6C3E58);

      v16 = sub_1B014CB3C();
      v17 = sub_1B014CF6C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1B00E6C2C(a1, a2, &v26);
        _os_log_impl(&dword_1B00C4000, v16, v17, "No extended attribute not set with key %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1B271F750](v19, -1, -1);
        MEMORY[0x1B271F750](v18, -1, -1);
      }

      return 0;
    }

    else
    {
      sub_1B014D01C();

      v25[3] = MEMORY[0x1B271E670](v21);
      v22 = sub_1B014D22C();
      MEMORY[0x1B271E7F0](v22);

      MEMORY[0x1B271E7F0](93, 0xE100000000000000);
      v14 = 0xD000000000000028;
      sub_1B00EDAD0();
      swift_allocError();
      *v23 = 0xD000000000000028;
      v23[1] = 0x80000001B015C680;
      swift_willThrow();
    }
  }

  else
  {
    v26 = sub_1B00ED65C(v9);
    v27 = v11;
    MEMORY[0x1EEE9AC00](v26);
    *&v25[-8] = a3;
    *&v25[-6] = a1;
    *&v25[-4] = a2;
    *&v25[-2] = v9;
    if (sub_1B00ED23C(sub_1B00EDB9C, &v25[-12]) == -1)
    {
      v14 = 0x80000001B015C650;
      sub_1B00EDAD0();
      swift_allocError();
      *v20 = 0xD000000000000021;
      v20[1] = 0x80000001B015C650;
      swift_willThrow();
      sub_1B00D2024(v26, v27);
    }

    else
    {
      v12 = v26;
      v13 = v27;
      sub_1B014CC4C();
      v14 = sub_1B014CC3C();
      sub_1B00D2024(v12, v13);
    }
  }

  return v14;
}

unint64_t sub_1B00EDAD0()
{
  result = qword_1EB6C3E70;
  if (!qword_1EB6C3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E70);
  }

  return result;
}

uint64_t sub_1B00EDB24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B014D25C() & 1;
  }
}

unint64_t sub_1B00EDBBC()
{
  result = qword_1EB6C3E78;
  if (!qword_1EB6C3E78)
  {
    sub_1B014CA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E78);
  }

  return result;
}

uint64_t sub_1B00EDC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E88, &unk_1B0150310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B00EDC7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B00EDCC0()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3E90);
  __swift_project_value_buffer(v0, qword_1EB6C3E90);
  return sub_1B014CB4C();
}

id sub_1B00EDD40()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonConnection()) init];
  qword_1EB6C3EA8 = result;
  return result;
}

id static DaemonConnection.shared.getter()
{
  if (qword_1EB6C3A78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB6C3EA8;

  return v1;
}

id sub_1B00EDE18()
{
  v1 = OBJC_IVAR____TtC15FeedbackService16DaemonConnection____lazy_storage___xpcConnection;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService16DaemonConnection____lazy_storage___xpcConnection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService16DaemonConnection____lazy_storage___xpcConnection);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_1B00EDE88(v0, ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1B00EDE88(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6C3A70 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EB6C3E90);
  v5 = sub_1B014CB3C();
  v6 = sub_1B014CF6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_1B00CF694(a2);
    v11 = sub_1B00E6C2C(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B00C4000, v5, v6, "%s: Setting up connection to daemon", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B271F750](v8, -1, -1);
    MEMORY[0x1B271F750](v7, -1, -1);
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v13 = sub_1B014CC0C();
  v14 = [v12 initWithMachServiceName:v13 options:0];

  v15 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonInterface()) init];
  [v14 setRemoteObjectInterface_];

  [v14 setExportedObject_];
  v23 = sub_1B00EE1AC;
  v24 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00EDC7C;
  v22 = &block_descriptor_3;
  v16 = _Block_copy(&v19);
  [v14 setInterruptionHandler_];
  _Block_release(v16);
  v23 = sub_1B00EE308;
  v24 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00EDC7C;
  v22 = &block_descriptor_8;
  v17 = _Block_copy(&v19);
  [v14 setInvalidationHandler_];
  _Block_release(v17);
  [v14 resume];
  return v14;
}

id FeedbackDaemonInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B00EE1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C7B0;
  sub_1B014D2EC();

  if (qword_1EB6C3A70 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3E90);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon interrupted from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

void sub_1B00EE308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C770;
  sub_1B014D2EC();

  if (qword_1EB6C3A70 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3E90);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon invalidated from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

uint64_t sub_1B00EE464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B00EDE18();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  aBlock[4] = sub_1B00EEA38;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00FA1A0;
  aBlock[3] = &block_descriptor_13;
  v6 = _Block_copy(aBlock);

  v7 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  sub_1B014CFFC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3EC8, qword_1B01503A0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t FeedbackDaemonInterface.init()(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FeedbackDaemonInterface();
  [objc_msgSendSuper2(&v7 init)];
  sub_1B00D0014(0, &qword_1EB6C3AE8, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B014F1F0;
  v3 = sub_1B00D0014(0, &qword_1EB6C3AF8, 0x1E696ABC0);
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B00, &qword_1B014F208);
  *(v2 + 32) = v3;
  v4 = sub_1B00D0014(0, &qword_1EB6C3B08, 0x1E695DF20);
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B10, &qword_1B014F210);
  *(v2 + 64) = v4;
  v5 = sub_1B00D0014(0, &qword_1EB6C3B18, 0x1E696AEC0);
  *(v2 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B20, qword_1B014F218);
  *(v2 + 96) = v5;
  MEMORY[0x1B271EA70](v2);
  result = sub_1B014CECC();
  __break(1u);
  __break(1u);
  return result;
}

id sub_1B00EE9D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B00EEA50()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3ED0);
  __swift_project_value_buffer(v0, qword_1EB6C3ED0);
  return sub_1B014CB4C();
}

void sub_1B00EEAC0()
{
  type metadata accessor for SeedPortal();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 120) = [objc_allocWithZone(FBKSHTTPClient) init];
  v1 = [objc_allocWithZone(FBKSHTTPClient) init];
  v2 = [objc_allocWithZone(FBKSSeedPortalAPI) initClient_];

  *(v0 + 112) = v2;
  qword_1EB6C3EE8 = v0;
}

uint64_t static SeedPortal.shared.getter()
{
  if (qword_1EB6C3A88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B00EEBB8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00EEBD8, v1, 0);
}

uint64_t sub_1B00EEBD8(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = sub_1B00EEE10(a1, a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = type metadata accessor for User(0);
  *v5 = v2;
  v5[1] = sub_1B00EECC4;
  v7 = v2[2];
  v8 = v2[3];

  return MEMORY[0x1EEE6DE38](v7, v3, v4, 0xD000000000000016, 0x80000001B015C7F0, sub_1B00EF12C, v8, v6);
}

uint64_t sub_1B00EECC4()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1B00EEDF8, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

unint64_t sub_1B00EEE10(uint64_t a1, uint64_t a2)
{
  result = qword_1EB6C3EF0;
  if (!qword_1EB6C3EF0)
  {
    type metadata accessor for SeedPortal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3EF0);
  }

  return result;
}

void sub_1B00EEE88(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v18 = *(a2 + 112);
  v15 = *(v5 + 16);
  v15(&v13 - v6, a1, v4);
  v8 = *(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v14 = *(v5 + 32);
  v14(v9 + ((v8 + 24) & ~v8), v7, v4);
  v23 = sub_1B00F0F20;
  v24 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00EF134;
  v22 = &block_descriptor_38;
  v17 = _Block_copy(&aBlock);

  v15(v7, v16, v4);
  v10 = swift_allocObject();
  v14(v10 + ((v8 + 16) & ~v8), v7, v4);
  v23 = sub_1B00F1044;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00FA1A0;
  v22 = &block_descriptor_44;
  v11 = _Block_copy(&aBlock);

  v12 = v17;
  [v18 seedPortalLoginAsUnauthenticatedUserWithSuccessHandler:v17 error:v11];
  _Block_release(v11);
  _Block_release(v12);
}

void sub_1B00EF134(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B00EF19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B00EF1C0, v3, 0);
}

uint64_t sub_1B00EF1C0(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  v6 = sub_1B00EEE10(a1, a2);
  v7 = swift_task_alloc();
  v2[6] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[7] = v8;
  v9 = type metadata accessor for User(0);
  *v8 = v2;
  v8[1] = sub_1B00EF2D4;
  v10 = v2[2];

  return MEMORY[0x1EEE6DE38](v10, v3, v6, 0xD00000000000001CLL, 0x80000001B015C810, sub_1B00EF6D8, v7, v9);
}

uint64_t sub_1B00EF2D4()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1B00F1048, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

void sub_1B00EF410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v21 = *(a2 + 112);
  v20 = sub_1B014CC0C();
  v17 = *(v7 + 16);
  v17(v9, a1, v6);
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v16 = *(v7 + 32);
  v16(v11 + ((v10 + 24) & ~v10), v9, v6);
  v26 = sub_1B00F0D14;
  v27 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1B00EF134;
  v25 = &block_descriptor_26;
  v19 = _Block_copy(&aBlock);

  v17(v9, v18, v6);
  v12 = swift_allocObject();
  v16(v12 + ((v10 + 16) & ~v10), v9, v6);
  v26 = sub_1B00F0D1C;
  v27 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1B00FA1A0;
  v25 = &block_descriptor_32;
  v13 = _Block_copy(&aBlock);

  v14 = v20;
  v15 = v19;
  [v21 seedPortalLoginWithDeviceToken:v20 success:v19 error:v13];
  _Block_release(v13);
  _Block_release(v15);
}

uint64_t sub_1B00EF6E4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a4;
  v40 = a3;
  v6 = type metadata accessor for User(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F20, &qword_1B0150480);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = sub_1B014CADC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 participantID];
  if (v21)
  {
    v22 = v21;
    v41 = 0;
    v42 = 1;
    sub_1B014CEEC();

    if ((v42 & 1) == 0)
    {
      v23 = v41;
      v24 = [*(a2 + 112) seedPortalSession];
      if (v24)
      {
        v37 = v23;
        v25 = v24;
        v26 = [v24 expiresDate];

        if (v26)
        {
          sub_1B014CABC();

          (*(v18 + 56))(v14, 0, 1, v17);
        }

        else
        {
          (*(v18 + 56))(v14, 1, 1, v17);
        }

        sub_1B00F0D20(v14, v16);
        v27 = (*(v18 + 48))(v16, 1, v17);
        v28 = v37;
        if (v27 != 1)
        {
          (*(v18 + 32))(v20, v16, v17);
          sub_1B014CACC();
          (*(v18 + 16))(&v10[*(v6 + 28)], v20, v17);
          *v10 = v28;
          v10[8] = v39;
          sub_1B00F0D90(v10, v38);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
          sub_1B014CE8C();
          sub_1B00F0DF4(v10);
          return (*(v18 + 8))(v20, v17);
        }
      }

      else
      {
        (*(v18 + 56))(v16, 1, 1, v17);
      }

      sub_1B00DE9C0(v16, &qword_1EB6C3F20, &qword_1B0150480);
    }
  }

  if (qword_1EB6C3A80 != -1)
  {
    swift_once();
  }

  v29 = sub_1B014CB5C();
  __swift_project_value_buffer(v29, qword_1EB6C3ED0);
  v30 = a1;
  v31 = sub_1B014CB3C();
  v32 = sub_1B014CF6C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_1B00C4000, v31, v32, "No participant id in loginInfo %@", v33, 0xCu);
    sub_1B00DE9C0(v34, &qword_1EB6C3F28, &qword_1B0150488);
    MEMORY[0x1B271F750](v34, -1, -1);
    MEMORY[0x1B271F750](v33, -1, -1);
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.FeedbackService" code:-1001 userInfo:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  return sub_1B014CE7C();
}

uint64_t sub_1B00EFBF0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  return sub_1B014CE7C();
}

uint64_t sub_1B00EFC60(uint64_t a1, uint64_t a2)
{
  sub_1B00EEE10(a1, a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B00EFD48;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B00EFD48()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B00EFE58, v1, 0);
}

void sub_1B00EFE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F10, &qword_1B0150470);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1B00F0CA8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00EDC7C;
  aBlock[3] = &block_descriptor_20_0;
  v11 = _Block_copy(aBlock);

  [v8 logOutServerSideWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1B00F0028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B00F004C, v3, 0);
}

uint64_t sub_1B00F004C(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  v6 = sub_1B00EEE10(a1, a2);
  v7 = swift_task_alloc();
  v2[6] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3EF8, &qword_1B01503C8);
  *v8 = v2;
  v8[1] = sub_1B00F016C;
  v10 = v2[2];

  return MEMORY[0x1EEE6DE38](v10, v3, v6, 0xD00000000000001ALL, 0x80000001B015C850, sub_1B00F04E0, v7, v9);
}

uint64_t sub_1B00F016C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1B00F02A8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B00F02A8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B00F030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + 112);
  v11 = sub_1B014CC0C();
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_1B00F0C04;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00F060C;
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);

  [v10 loadFormItemWithFormTat:v11 withCompletion:v14];
  _Block_release(v14);
}

uint64_t sub_1B00F04EC(uint64_t a1, id a2)
{
  if (a2)
  {
    *&v6[0] = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
    return sub_1B014CE7C();
  }

  else
  {
    if (a1)
    {
      v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F08, &qword_1B0150468);
      v5[0] = a1;

      sub_1B00E90E0(v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
    }

    else
    {
      memset(v6, 0, sizeof(v6));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
    }

    return sub_1B014CE8C();
  }
}

uint64_t sub_1B00F060C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B014CBAC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t SeedPortal.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of SeedPortal.unauthenticatedLogin()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00E8C18;

  return v6(a1);
}

uint64_t dispatch thunk of SeedPortal.loginWithDeviceToken(token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B00E8C18;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of SeedPortal.logOutServerSide()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B00DCFAC;

  return v4();
}

uint64_t dispatch thunk of SeedPortal.fetchFormItem(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B00DCFAC;

  return v10(a1, a2, a3);
}

uint64_t sub_1B00F0C04(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);

  return sub_1B00F04EC(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B00F0D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F20, &qword_1B0150480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00F0D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for User(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00F0DF4(uint64_t a1)
{
  v2 = type metadata accessor for User(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_22Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id FBKSStrings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSStrings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSStrings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FBKSStrings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSStrings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FBKSFeedbackCount.asJSON.getter()
{
  swift_getObjectType();
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00F18E4(&qword_1EB6C3F30, &protocol conformance descriptor for FBKSFeedbackCount);
  v0 = sub_1B014C86C();

  return v0;
}

uint64_t _s15FeedbackService17FBKSFeedbackCountC8fromJSON4dataACSg10Foundation4DataV_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1B014C82C();
  swift_allocObject();
  sub_1B014C81C();
  type metadata accessor for FBKSFeedbackCount();
  sub_1B00F18E4(&qword_1EB6C3F38, &protocol conformance descriptor for FBKSFeedbackCount);
  sub_1B014C80C();

  return v3;
}

uint64_t sub_1B00F18E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSFeedbackCount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *FBKSRemoteEvaluationRequest.init(action:interaction:showFeedbackForm:associateWithAppleAccount:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = a4;
  return result;
}

unint64_t sub_1B00F1964()
{
  v1 = 0x6E6F69746361;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x7463617265746E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B00F19EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B00F4138(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B00F1A14(uint64_t a1)
{
  v2 = sub_1B00F1CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F1A50(uint64_t a1)
{
  v2 = sub_1B00F1CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSRemoteEvaluationRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F40, &qword_1B0150510);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 1);
  v9 = v1[16];
  v11[2] = v1[17];
  v11[3] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F1CC4();
  sub_1B014D35C();
  v18 = v8;
  v17 = 0;
  sub_1B00DCAC0();
  sub_1B014D21C();
  if (!v2)
  {
    v13 = v12;
    v16 = 1;
    type metadata accessor for FBKSInteraction(0);
    sub_1B00F3660(&qword_1EDAE6B20, type metadata accessor for FBKSInteraction, &protocol conformance descriptor for FBKSInteraction);
    sub_1B014D21C();
    v15 = 2;
    sub_1B014D1EC();
    v14 = 3;
    sub_1B014D1BC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B00F1CC4()
{
  result = qword_1EB6C3F48;
  if (!qword_1EB6C3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3F48);
  }

  return result;
}

void FBKSRemoteEvaluationRequest.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F50, &qword_1B0150518);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F1CC4();
  sub_1B014D34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v18 = 0;
    sub_1B00DCBAC();
    sub_1B014D17C();
    v9 = v19;
    type metadata accessor for FBKSInteraction(0);
    v17 = 1;
    sub_1B00F3660(&qword_1EB6C3BF0, type metadata accessor for FBKSInteraction, &protocol conformance descriptor for FBKSInteraction);
    sub_1B014D17C();
    v10 = v14;
    v16 = 2;
    HIDWORD(v13) = sub_1B014D14C();
    v15 = 3;
    v11 = sub_1B014D11C();
    HIDWORD(v13) = BYTE4(v13) & 1;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = BYTE4(v13);
    *(a2 + 17) = v11;
    v12 = v10;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_1B00F2018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B00F209C(uint64_t a1)
{
  v2 = sub_1B00F2370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F20D8(uint64_t a1)
{
  v2 = sub_1B00F2370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F2120(uint64_t a1)
{
  v2 = sub_1B00F23C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F215C(uint64_t a1)
{
  v2 = sub_1B00F23C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSRemoteEvaluationError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F58, &qword_1B0150520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F60, &qword_1B0150528);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2370();
  sub_1B014D35C();
  sub_1B00F23C4();
  sub_1B014D19C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1B00F2370()
{
  result = qword_1EB6C3F68;
  if (!qword_1EB6C3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3F68);
  }

  return result;
}

unint64_t sub_1B00F23C4()
{
  result = qword_1EB6C3F70;
  if (!qword_1EB6C3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3F70);
  }

  return result;
}

uint64_t FBKSRemoteEvaluationError.hashValue.getter()
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t FBKSRemoteEvaluationError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F78, &qword_1B0150530);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F80, &unk_1B0150538);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2370();
  sub_1B014D34C();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1B014D18C();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_1B00D4A3C() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1B014D05C();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
    *v16 = &type metadata for FBKSRemoteEvaluationError;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  sub_1B00F23C4();
  sub_1B014D0EC();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1B00F27E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F58, &qword_1B0150520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F60, &qword_1B0150528);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2370();
  sub_1B014D35C();
  sub_1B00F23C4();
  sub_1B014D19C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B00F29C0()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B00F29F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B00F2AD0(uint64_t a1)
{
  v2 = sub_1B00F2F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F2B0C(uint64_t a1)
{
  v2 = sub_1B00F2F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F2B48(uint64_t a1)
{
  v2 = sub_1B00F2FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F2B84(uint64_t a1)
{
  v2 = sub_1B00F2FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F2BC0(uint64_t a1)
{
  v2 = sub_1B00F3070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F2BFC(uint64_t a1)
{
  v2 = sub_1B00F3070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSRemoteEvaluationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F88, &qword_1B0150548);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F90, &qword_1B0150550);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F98, &qword_1B0150558);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2F74();
  sub_1B014D35C();
  if (v12 < 0)
  {
    v25 = 1;
    sub_1B00F2FC8();
    v14 = v18;
    sub_1B014D19C();
    sub_1B00F301C();
    v15 = v20;
    sub_1B014D21C();
    (*(v19 + 8))(v14, v15);
  }

  else
  {
    v24 = 0;
    sub_1B00F3070();
    sub_1B014D19C();
    v23 = v12;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00F3660(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
    v13 = v22;
    sub_1B014D21C();
    (*(v21 + 8))(v7, v13);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1B00F2F74()
{
  result = qword_1EB6C3FA0;
  if (!qword_1EB6C3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FA0);
  }

  return result;
}

unint64_t sub_1B00F2FC8()
{
  result = qword_1EB6C3FA8;
  if (!qword_1EB6C3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FA8);
  }

  return result;
}

unint64_t sub_1B00F301C()
{
  result = qword_1EB6C3FB0;
  if (!qword_1EB6C3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FB0);
  }

  return result;
}

unint64_t sub_1B00F3070()
{
  result = qword_1EB6C3FB8;
  if (!qword_1EB6C3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FB8);
  }

  return result;
}

uint64_t FBKSRemoteEvaluationResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3FC0, &qword_1B0150560);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3FC8, &qword_1B0150568);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3FD0, &qword_1B0150570);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B00F2F74();
  v15 = v35;
  sub_1B014D34C();
  if (!v15)
  {
    v30 = v7;
    v16 = v34;
    v35 = v11;
    v17 = sub_1B014D18C();
    v18 = (2 * *(v17 + 16)) | 1;
    v37 = v17;
    v38 = v17 + 32;
    v39 = 0;
    v40 = v18;
    v19 = sub_1B00DEA8C();
    v20 = v10;
    if (v19 == 2 || v39 != v40 >> 1)
    {
      v23 = sub_1B014D05C();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
      *v25 = &type metadata for FBKSRemoteEvaluationResponse;
      sub_1B014D0FC();
      sub_1B014D04C();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else if (v19)
    {
      LOBYTE(v41) = 1;
      sub_1B00F2FC8();
      sub_1B014D0EC();
      v21 = v35;
      sub_1B00F360C();
      v22 = v31;
      sub_1B014D17C();
      (*(v32 + 8))(v6, v22);
      (*(v21 + 8))(v13, v20);
      swift_unknownObjectRelease();
      *v16 = 0x8000000000000000;
    }

    else
    {
      LOBYTE(v41) = 0;
      sub_1B00F3070();
      sub_1B014D0EC();
      v27 = v35;
      type metadata accessor for FBKSEvaluation(0);
      sub_1B00F3660(&qword_1EB6C3D50, type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
      v28 = v30;
      sub_1B014D17C();
      (*(v33 + 8))(v9, v28);
      (*(v27 + 8))(v13, v20);
      swift_unknownObjectRelease();
      *v16 = v41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

unint64_t sub_1B00F360C()
{
  result = qword_1EB6C3FD8;
  if (!qword_1EB6C3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FD8);
  }

  return result;
}

uint64_t sub_1B00F3660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B00F3774(uint64_t a1)
{
  *(a1 + 8) = sub_1B00EC0B4();
  result = sub_1B00EC108();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B00F37A8()
{
  result = qword_1EB6C3FE0;
  if (!qword_1EB6C3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FE0);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B00F3810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B00F3858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B00F38D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B00F392C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSRemoteEvaluationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSRemoteEvaluationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B00F3B64()
{
  result = qword_1EB6C3FE8;
  if (!qword_1EB6C3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FE8);
  }

  return result;
}

unint64_t sub_1B00F3BBC()
{
  result = qword_1EB6C3FF0;
  if (!qword_1EB6C3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FF0);
  }

  return result;
}

unint64_t sub_1B00F3C14()
{
  result = qword_1EB6C3FF8;
  if (!qword_1EB6C3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FF8);
  }

  return result;
}

unint64_t sub_1B00F3C6C()
{
  result = qword_1EB6C4000;
  if (!qword_1EB6C4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4000);
  }

  return result;
}

unint64_t sub_1B00F3CC4()
{
  result = qword_1EB6C4008;
  if (!qword_1EB6C4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4008);
  }

  return result;
}

unint64_t sub_1B00F3D1C()
{
  result = qword_1EB6C4010;
  if (!qword_1EB6C4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4010);
  }

  return result;
}

unint64_t sub_1B00F3D74()
{
  result = qword_1EB6C4018;
  if (!qword_1EB6C4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4018);
  }

  return result;
}

unint64_t sub_1B00F3DCC()
{
  result = qword_1EB6C4020;
  if (!qword_1EB6C4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4020);
  }

  return result;
}

unint64_t sub_1B00F3E24()
{
  result = qword_1EB6C4028;
  if (!qword_1EB6C4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4028);
  }

  return result;
}

unint64_t sub_1B00F3E7C()
{
  result = qword_1EB6C4030;
  if (!qword_1EB6C4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4030);
  }

  return result;
}

unint64_t sub_1B00F3ED4()
{
  result = qword_1EB6C4038;
  if (!qword_1EB6C4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4038);
  }

  return result;
}

unint64_t sub_1B00F3F2C()
{
  result = qword_1EB6C4040;
  if (!qword_1EB6C4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4040);
  }

  return result;
}

unint64_t sub_1B00F3F84()
{
  result = qword_1EB6C4048;
  if (!qword_1EB6C4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4048);
  }

  return result;
}

unint64_t sub_1B00F3FDC()
{
  result = qword_1EB6C4050;
  if (!qword_1EB6C4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4050);
  }

  return result;
}

unint64_t sub_1B00F4034()
{
  result = qword_1EB6C4058;
  if (!qword_1EB6C4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4058);
  }

  return result;
}

unint64_t sub_1B00F408C()
{
  result = qword_1EB6C4060;
  if (!qword_1EB6C4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4060);
  }

  return result;
}

unint64_t sub_1B00F40E4()
{
  result = qword_1EB6C4068;
  if (!qword_1EB6C4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4068);
  }

  return result;
}

uint64_t sub_1B00F4138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015CCD0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015CCF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B00F42A8(uint64_t a1, unsigned __int8 a2)
{
  sub_1B014CCAC();
}

uint64_t sub_1B00F4400(uint64_t a1, unsigned __int8 a2)
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00F4528(uint64_t a1, unsigned __int8 a2)
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00F4694(uint64_t a1, unsigned __int8 a2)
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00F47A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 7627124;
  v7 = 0xE800000000000000;
  if (a1 != 5)
  {
    v6 = 0x656C6F526D726F66;
    v5 = 0xE800000000000000;
  }

  v8 = 0x6D726F6674616C70;
  if (a1 != 3)
  {
    v8 = 0x727574616E676973;
    v7 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6552646C756F6873;
  v10 = 0xEC00000074616570;
  if (a1 != 1)
  {
    v9 = 1701667182;
    v10 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xEC00000074616570;
        if (v11 != 0x6552646C756F6873)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v11 != 1701667182)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE300000000000000;
      if (v11 != 7627124)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656C6F526D726F66)
      {
LABEL_38:
        v14 = sub_1B014D25C();
        goto LABEL_39;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6D726F6674616C70)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE900000000000065;
    if (v11 != 0x727574616E676973)
    {
      goto LABEL_38;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_1B00F49C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656C79;
  if (a1 > 3u)
  {
    v3 = 0x80000001B015B930;
    v4 = 0xD000000000000019;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
      v3 = 0x80000001B015B950;
    }

    v5 = 0x80000001B015B8F0;
    v6 = 0x6F72507370696B73;
    if (a1 == 4)
    {
      v6 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xEB0000000074706DLL;
    }

    v7 = a1 <= 5u;
  }

  else
  {
    v3 = 0x80000001B015B8A0;
    v4 = 0xD000000000000016;
    if (a1 != 2)
    {
      v4 = 0xD000000000000024;
      v3 = 0x80000001B015B8C0;
    }

    v5 = 0x80000001B015B880;
    v6 = 0xD000000000000014;
    if (!a1)
    {
      v6 = 0x745374706D6F7270;
      v5 = 0xEB00000000656C79;
    }

    v7 = a1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001B015B880;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_43;
        }
      }

      else if (v8 != 0x745374706D6F7270)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001B015B8A0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v10 = "localizedAlertViewProceedButtonTitle";
LABEL_38:
    v2 = (v10 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000024)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v2 = 0xEB0000000074706DLL;
      if (v8 != 0x6F72507370696B73)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v10 = "localizedAlertViewDeclineButtonTitle";
    goto LABEL_38;
  }

  if (a2 == 6)
  {
    v2 = 0x80000001B015B930;
    if (v8 != 0xD000000000000019)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0x80000001B015B950;
    if (v8 != 0xD000000000000011)
    {
LABEL_43:
      v11 = sub_1B014D25C();
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_43;
  }

  v11 = 1;
LABEL_44:

  return v11 & 1;
}

uint64_t sub_1B00F4C30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E79616C70736964;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7470697263736564;
    }

    else
    {
      v5 = 0x4E79616C70736964;
    }

    if (v4)
    {
      v6 = 0xEB000000006E6F69;
    }

    else
    {
      v6 = 0xEB00000000656D61;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x70756F7267;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6E6F697469646461;
    }

    else
    {
      v5 = 0x657079546E6F6369;
    }

    if (v4 == 3)
    {
      v6 = 0xEE006F666E496C61;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  v9 = 0x6E6F697469646461;
  v10 = 0xEE006F666E496C61;
  if (a2 != 3)
  {
    v9 = 0x657079546E6F6369;
    v10 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x7470697263736564;
    v2 = 0xEB000000006E6F69;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B014D25C();
  }

  return v13 & 1;
}

uint64_t sub_1B00F4DD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0x752073626D756854;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0x2064696C61766E49;
  v8 = 0xEC00000061746164;
  if (a1 != 4)
  {
    v7 = 0x20746E65746E6F43;
    v8 = 0xEF646574656C6564;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x642073626D756854;
  v10 = 0xEB000000006E776FLL;
  if (a1 != 1)
  {
    v9 = 0x632074726F706552;
    v10 = 0xEE006E7265636E6FLL;
  }

  if (!a1)
  {
    v9 = 0x752073626D756854;
    v10 = 0xE900000000000070;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1885956947)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC00000061746164;
      if (v11 != 0x2064696C61766E49)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF646574656C6564;
      if (v11 != 0x20746E65746E6F43)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB000000006E776FLL;
        if (v11 != 0x642073626D756854)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x632074726F706552;
      v2 = 0xEE006E7265636E6FLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1B014D25C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t FBKSPromptStyle.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B00F501C()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

uint64_t sub_1B00F5090(uint64_t a1)
{
  v2 = *v1;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v2);
  return sub_1B014D33C();
}

uint64_t *sub_1B00F50D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B00F51F8()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5290(uint64_t a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B00F54FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1B014CC0C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1B00F5590(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1B00F55F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1B014CC1C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1B00F5678(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B00F56D4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

unint64_t sub_1B00F57C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B00F749C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B00F57F4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001B015B930;
    v9 = 0xD000000000000011;
    if (v2 == 6)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000001B015B950;
    }

    v10 = 0xD000000000000024;
    v11 = 0x80000001B015B8F0;
    if (v2 != 4)
    {
      v10 = 0x6F72507370696B73;
      v11 = 0xEB0000000074706DLL;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000656C79;
    v4 = 0x745374706D6F7270;
    v5 = 0x80000001B015B8A0;
    v6 = 0xD000000000000016;
    if (v2 != 2)
    {
      v6 = 0xD000000000000024;
      v5 = 0x80000001B015B8C0;
    }

    if (*v1)
    {
      v4 = 0xD000000000000014;
      v3 = 0x80000001B015B880;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_1B00F5920()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 == 6)
    {
      v5 = 0xD000000000000019;
    }

    v6 = 0xD000000000000024;
    if (v1 != 4)
    {
      v6 = 0x6F72507370696B73;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x745374706D6F7270;
    v3 = 0xD000000000000016;
    if (v1 != 2)
    {
      v3 = 0xD000000000000024;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_1B00F5A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B00F749C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B00F5A78(uint64_t a1)
{
  v2 = sub_1B00F6390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F5AB4(uint64_t a1)
{
  v2 = sub_1B00F6390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F5AF0()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5B34(char a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B00F5BE4()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5C28(char a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B00F5CD8()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5D1C(char a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id FBKSLaunchConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSLaunchConfiguration.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle] = 2;
  v2 = &v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptTitle];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptMessage];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewProceedButtonTitle];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewDeclineButtonTitle];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt] = 2;
  v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert] = 2;
  v1[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately] = 2;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FBKSLaunchConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

id FBKSLaunchConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSLaunchConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B00F5FA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C40B0, &qword_1B0150EA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F6390();
  sub_1B014D35C();
  v9 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  swift_beginAccess();
  v13 = *(v3 + v9);
  v12 = 0;
  sub_1B00F63E4();
  sub_1B014D21C();
  if (!v2)
  {
    swift_beginAccess();
    v12 = 1;

    sub_1B014D1AC();

    swift_beginAccess();
    v11[96] = 2;

    sub_1B014D1AC();

    swift_beginAccess();
    v11[72] = 3;

    sub_1B014D1AC();

    swift_beginAccess();
    v11[48] = 4;

    sub_1B014D1AC();

    swift_beginAccess();
    v11[24] = 5;
    sub_1B014D1BC();
    swift_beginAccess();
    v11[0] = 6;
    sub_1B014D1BC();
    swift_beginAccess();
    v14 = 7;
    sub_1B014D1BC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B00F6390()
{
  result = qword_1EB6C40B8;
  if (!qword_1EB6C40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40B8);
  }

  return result;
}

unint64_t sub_1B00F63E4()
{
  result = qword_1EB6C40C0;
  if (!qword_1EB6C40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40C0);
  }

  return result;
}

_BYTE *FBKSLaunchConfiguration.init(from:)(void *a1)
{
  v2 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C40C8, &qword_1B0150EA8);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v46 - v4;
  v6 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  *&v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle] = 2;
  v7 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptTitle];
  *v7 = 0;
  v7[1] = 0;
  v54 = v7;
  v8 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptMessage];
  *v8 = 0;
  v8[1] = 0;
  v53 = v8;
  v9 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewProceedButtonTitle];
  *v9 = 0;
  v9[1] = 0;
  v56 = v9;
  v10 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewDeclineButtonTitle];
  *v10 = 0;
  v10[1] = 0;
  v55 = v10;
  v11 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt;
  v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt] = 2;
  v12 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert;
  v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert] = 2;
  v13 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately;
  v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately] = 2;
  v14 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B00F6390();
  v51 = v5;
  v15 = v52;
  sub_1B014D34C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(v66);

    type metadata accessor for FBKSLaunchConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v52 = v11;
    v48 = v12;
    v47 = v13;
    v16 = v49;
    v65[0] = 0;
    sub_1B00F6A58();
    v17 = v50;
    sub_1B014D17C();
    v19 = v64;
    swift_beginAccess();
    *&v2[v6] = v19;
    LOBYTE(v64) = 1;
    v20 = v17;
    v21 = sub_1B014D10C();
    v22 = v54;
    v23 = v53;
    v24 = v21;
    v26 = v25;
    swift_beginAccess();
    *v22 = v24;
    v22[1] = v26;

    v63 = 2;
    v27 = v16;
    v28 = sub_1B014D10C();
    v30 = v29;
    swift_beginAccess();
    *v23 = v28;
    v23[1] = v30;

    v62 = 3;
    v31 = sub_1B014D10C();
    v32 = v56;
    v33 = v55;
    v34 = v31;
    v46 = v35;
    swift_beginAccess();
    v36 = v46;
    *v32 = v34;
    v32[1] = v36;

    v61 = 4;
    v37 = sub_1B014D10C();
    v46 = v38;
    swift_beginAccess();
    v39 = v46;
    *v33 = v37;
    v33[1] = v39;

    v60 = 5;
    v40 = sub_1B014D11C();
    v41 = v52;
    LODWORD(v46) = v40;
    swift_beginAccess();
    v2[v41] = v46;
    v59 = 6;
    v42 = sub_1B014D11C();
    v43 = v48;
    LODWORD(v52) = v42;
    swift_beginAccess();
    v2[v43] = v52;
    v58 = 7;
    LOBYTE(v43) = sub_1B014D11C();
    v44 = v47;
    swift_beginAccess();
    v2[v44] = v43;
    v45 = type metadata accessor for FBKSLaunchConfiguration();
    v57.receiver = v2;
    v57.super_class = v45;
    v2 = objc_msgSendSuper2(&v57, sel_init);
    (*(v27 + 8))(v51, v20);
    __swift_destroy_boxed_opaque_existential_0(v66);
  }

  return v2;
}

unint64_t sub_1B00F6A58()
{
  result = qword_1EB6C40D0;
  if (!qword_1EB6C40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40D0);
  }

  return result;
}

unint64_t sub_1B00F6AB0()
{
  result = qword_1EB6C40D8;
  if (!qword_1EB6C40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40D8);
  }

  return result;
}

_BYTE *sub_1B00F6B04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration());
  result = FBKSLaunchConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t keypath_get_6Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_14Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_15Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for FBKSLaunchConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSLaunchConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B00F7398()
{
  result = qword_1EB6C40E0;
  if (!qword_1EB6C40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40E0);
  }

  return result;
}

unint64_t sub_1B00F73F0()
{
  result = qword_1EB6C40E8;
  if (!qword_1EB6C40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40E8);
  }

  return result;
}

unint64_t sub_1B00F7448()
{
  result = qword_1EB6C40F0;
  if (!qword_1EB6C40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40F0);
  }

  return result;
}

unint64_t sub_1B00F749C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B014D0DC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B00F74E8()
{
  result = qword_1EB6C40F8;
  if (!qword_1EB6C40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40F8);
  }

  return result;
}

uint64_t static ReportAConcernObjCBridge.evaluate(interaction:action:showFeedbackForm:associateWithAppleAccount:sceneID:presentingBundleId:completion:)(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v27 = a7;
  v25 = a4;
  v26 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4100, &qword_1B01511B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - v18;
  type metadata accessor for FBKSInteraction(0);
  v20 = sub_1B00F76D4(a1);
  v21 = sub_1B014CEAC();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v11;
  *(v22 + 40) = a2;
  *(v22 + 48) = v20;
  *(v22 + 56) = a5;
  v23 = v27;
  *(v22 + 64) = a6;
  *(v22 + 72) = v23;
  *(v22 + 80) = a8;
  LOBYTE(v23) = v26;
  *(v22 + 88) = v25;
  *(v22 + 89) = v23;
  *(v22 + 96) = a9;
  *(v22 + 104) = a10;

  sub_1B00F8B5C(0, 0, v19, &unk_1B01511C0, v22);
}

char *sub_1B00F76D4(void *a1)
{
  v2 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  *&v112 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v109 = &v102 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v102 - v13;
  v15 = [a1 originalAnnotatedContent];
  if (v15)
  {
    v16 = v15;
    sub_1B00F926C(v16, v14);

    v17 = *(v3 + 56);
    v17(v14, 0, 1, v2);
  }

  else
  {
    v17 = *(v3 + 56);
    v17(v14, 1, 1, v2);
  }

  v18 = [a1 generatedAnnotatedContent];
  if (v18)
  {
    v19 = v18;
    sub_1B00F926C(v19, v12);

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v103 = v3 + 56;
  v17(v12, v20, 1, v2);
  v108 = a1;
  v21 = [a1 extraContent];
  v22 = MEMORY[0x1E69E7CC0];
  v107 = v12;
  v106 = v14;
  v105 = v2;
  v104 = v17;
  if (v21)
  {
    v23 = v21;
    sub_1B00FA08C();
    v24 = sub_1B014CE1C();

    v25 = v24;
    if (v24 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v25 = v35)
    {
      v111 = v3;
      v27 = 0;
      v28 = v25 & 0xC000000000000001;
      v29 = v25 & 0xFFFFFFFFFFFFFF8;
      v30 = i;
      while (1)
      {
        if (v28)
        {
          v31 = v25;
          v25 = MEMORY[0x1B271EB20](v27);
        }

        else
        {
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_23;
          }

          v31 = v25;
          v25 = *(v25 + 8 * v27 + 32);
        }

        v32 = v25;
        v33 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        sub_1B00F926C(v25, v112);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1B00D14F4(0, v22[2] + 1, 1, v22);
        }

        v3 = v22[2];
        v34 = v22[3];
        if (v3 >= v34 >> 1)
        {
          v22 = sub_1B00D14F4((v34 > 1), v3 + 1, 1, v22);
        }

        v22[2] = v3 + 1;
        sub_1B00FA138(v112, v22 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v3, type metadata accessor for FBKSInteraction.AnnotatedContent);
        ++v27;
        v25 = v31;
        if (v33 == v30)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v35 = v25;
      i = sub_1B014D09C();
    }

LABEL_25:

    v12 = v107;
    v14 = v106;
  }

  v36 = [v108 prefillQuestions];
  if (v36)
  {
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B80, qword_1B0151250);
    v38 = sub_1B014CBAC();
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_1B00F9BDC(v38);

  if (!v39)
  {
    v39 = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
  v40 = swift_allocObject();
  v112 = xmmword_1B014F1E0;
  *(v40 + 16) = xmmword_1B014F1E0;
  v41 = v108;
  v42 = [v108 featureDomain];
  v43 = sub_1B014CC1C();
  v45 = v44;

  *(v40 + 32) = v43;
  *(v40 + 40) = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113[0] = v39;
  sub_1B01184A8(v40, 0, 3uLL, isUniquelyReferenced_nonNull_native);
  v47 = v113[0];
  v48 = swift_allocObject();
  *(v48 + 16) = v112;
  v49 = [v41 feedbackTitle];
  v50 = sub_1B014CC1C();
  v52 = v51;

  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v113[0] = v47;
  v54 = v48;
  v55 = v41;
  sub_1B01184A8(v54, 0, 0, v53);
  v56 = v113[0];
  v57 = [v41 attributionBundleId];
  *&v112 = v56;
  if (v57)
  {
    v58 = v57;
    v59 = sub_1B014CC1C();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  sub_1B00DE660(v14, v109, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE660(v12, v110, &qword_1EB6C3D68, &unk_1B0151240);
  v62 = [v55 modelVersion];
  v103 = v59;
  if (v62)
  {
    v63 = v62;
    v111 = sub_1B014CC1C();
    v108 = v64;
  }

  else
  {
    v111 = 0;
    v108 = 0;
  }

  v65 = type metadata accessor for FBKSInteraction(0);
  v66 = objc_allocWithZone(v65);
  v67 = &v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v67 = 0;
  v67[1] = 0;
  *&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v68 = v105;
  v69 = v104;
  v104(&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent], 1, 1, v105);
  v69(&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v68);
  *&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v70 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v71 = type metadata accessor for FBKSInteraction.Content(0);
  v72 = *(*(v71 - 8) + 56);
  v72(&v66[v70], 1, 1, v71);
  v72(&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v71);
  v73 = &v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v73 = 0;
  v73[1] = 0;
  v74 = &v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v74 = 0;
  v74[1] = 0;
  *&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v75 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v76 = sub_1B014CB1C();
  (*(*(v76 - 8) + 56))(&v66[v75], 1, 1, v76);
  v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  *&v66[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain] = xmmword_1B01511A0;
  v114.receiver = v66;
  v114.super_class = v65;
  v77 = objc_msgSendSuper2(&v114, sel_init);
  v78 = v77;
  if (v61)
  {
    v79 = v61;
    v80 = v77;
    v81 = v107;
    v82 = v106;
    v83 = v111;
    v84 = v108;
    v85 = v103;
  }

  else
  {
    v86 = objc_opt_self();
    v87 = v78;
    v88 = [v86 mainBundle];
    v89 = [v88 bundleIdentifier];

    v81 = v107;
    v82 = v106;
    if (v89)
    {
      v90 = v107;
      v85 = sub_1B014CC1C();
      v79 = v91;

      v81 = v90;
    }

    else
    {
      v85 = 0;
      v79 = 0;
    }

    v83 = v111;
    v84 = v108;
  }

  sub_1B00DE9C0(v81, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE9C0(v82, &qword_1EB6C3D68, &unk_1B0151240);
  v92 = &v78[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v92 = v85;
  v92[1] = v79;

  v93 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *&v78[v93] = v112;

  v94 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00FA01C(v109, &v78[v94]);
  swift_endAccess();
  v95 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00FA01C(v110, &v78[v95]);
  swift_endAccess();
  v96 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *&v78[v96] = v22;

  v97 = &v78[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  *v97 = v83;
  v97[1] = v84;

  v98 = &v78[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  *v98 = 0;
  *(v98 + 1) = 0;

  v99 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *&v78[v99] = 0;

  v100 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v78[v100] = 0;

  return v78;
}

uint64_t sub_1B00F8238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = v11;
  *(v6 + 48) = v12;
  *(v6 + 90) = v10;
  *(v6 + 89) = v9;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  *(v6 + 56) = type metadata accessor for FBKSEvaluation.Subject(0);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B00F82EC, 0, 0);
}

uint64_t sub_1B00F82EC()
{
  v15 = v0;
  sub_1B00F88B4(*(v0 + 24), v14);
  v1 = *(v0 + 89);
  v2 = *(v0 + 32);
  v3 = v14[0];
  **(v0 + 64) = v2;
  swift_storeEnumTagMultiPayload();
  v4 = qword_1EDAE7070;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B00E6C2C(0xD000000000000053, 0x80000001B015CE00, v14);
    _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B271F750](v10, -1, -1);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  *(v0 + 88) = v3;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_1B00F8554;
  v12 = *(v0 + 90);

  return sub_1B00FBB5C((v0 + 88), v12, v1);
}

uint64_t sub_1B00F8554()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B00F86F8;
  }

  else
  {
    v2 = sub_1B00F8668;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00F8668()
{
  v1 = *(v0 + 64);
  (*(v0 + 40))(0);
  sub_1B00FA0D8(v1, type metadata accessor for FBKSEvaluation.Subject);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B00F86F8()
{
  sub_1B00FA0D8(v0[8], type metadata accessor for FBKSEvaluation.Subject);
  v1 = v0[10];
  v2 = v0[5];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B00F87A8(uint64_t a1)
{
  v11 = v1[2];
  v8 = v1[4];
  v9 = v1[3];
  v6 = v1[6];
  v7 = v1[5];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00E8C18;

  return sub_1B00F8238(a1, v11, v9, v8, v7, v6);
}

uint64_t sub_1B00F88B4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 2;
    goto LABEL_7;
  }

  if (result == 1)
  {
    v2 = 1;
LABEL_7:
    *a2 = v2;
    return result;
  }

  if (result)
  {
    v3 = result;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v4 = sub_1B014CB5C();
    __swift_project_value_buffer(v4, qword_1EDAE7828);
    v5 = sub_1B014CB3C();
    v6 = sub_1B014CF4C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1B00C4000, v5, v6, "Unknown FBKSEvaluationAction: %ld", v7, 0xCu);
      MEMORY[0x1B271F750](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B014F1E0;
    *(inited + 32) = sub_1B014CC1C();
    *(inited + 40) = v9;
    sub_1B014D01C();

    v10 = sub_1B014D22C();
    MEMORY[0x1B271E7F0](v10);

    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x80000001B015CE60;
    sub_1B011BEB4(inited);
    swift_setDeallocating();
    sub_1B00DE9C0(inited + 32, &qword_1EB6C3E88, &unk_1B0150310);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_1B014CC0C();
    v13 = sub_1B014CB9C();

    [v11 initWithDomain:v12 code:1001 userInfo:v13];

    return swift_willThrow();
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B00F8B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4100, &qword_1B01511B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B00DE660(a3, v25 - v10, &qword_1EB6C4100, &qword_1B01511B0);
  v12 = sub_1B014CEAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B00DE9C0(v11, &qword_1EB6C4100, &qword_1B01511B0);
  }

  else
  {
    sub_1B014CE9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B014CE6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B014CC7C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B00DE9C0(a3, &qword_1EB6C4100, &qword_1B01511B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B00DE9C0(a3, &qword_1EB6C4100, &qword_1B01511B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void static ReportAConcernObjCBridge.presented(interaction:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  type metadata accessor for FBKSInteraction(0);
  v6 = sub_1B00F76D4(a1);
  sub_1B0101878(a2, a3);
}

id ReportAConcernObjCBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReportAConcernObjCBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportAConcernObjCBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReportAConcernObjCBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportAConcernObjCBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

int *sub_1B00F926C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v57 - v8);
  v10 = [a1 payload];
  v11 = sub_1B014CA8C();
  v13 = v12;

  *v9 = v11;
  v9[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = [a1 iconType];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1B014CC1C();
    v18 = v17;

    static FBKSInteraction.AnnotatedContent.IconType.withString(value:)(v16, v18, &v63, v19);

    v20 = v63.n128_u64[1];
    v21 = v63.n128_u64[0];
  }

  else
  {
    v21 = 0;
    v20 = 38;
  }

  v62 = v20;
  sub_1B00E77A4(v9, v7);
  v22 = [a1 displayName];
  v23 = sub_1B014CC1C();
  v25 = v24;

  v26 = [a1 _description];
  v27 = sub_1B014CC1C();
  v60 = v28;
  v61 = v27;

  v29 = [a1 fileName];
  v30 = sub_1B014CC1C();
  v32 = v31;

  v33 = [a1 additionalInfo];
  v34 = sub_1B014CBAC();

  v35 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v35 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    v59 = v21;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v36 = sub_1B014CB5C();
    __swift_project_value_buffer(v36, qword_1EDAE7828);
    v37 = sub_1B014CB3C();
    v38 = sub_1B014CF5C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v58 = v34;
      v40 = v39;
      *v39 = 0;
      _os_log_impl(&dword_1B00C4000, v37, v38, "AnnotatedContent filename cannot be empty. It must have a name including the file extension.", v39, 2u);
      v41 = v40;
      v34 = v58;
      MEMORY[0x1B271F750](v41, -1, -1);
    }

    v21 = v59;
  }

  v42 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v42 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
    v59 = v21;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v43 = sub_1B014CB5C();
    __swift_project_value_buffer(v43, qword_1EDAE7828);
    v44 = sub_1B014CB3C();
    v45 = sub_1B014CF5C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v58 = v34;
      v47 = v46;
      *v46 = 0;
      _os_log_impl(&dword_1B00C4000, v44, v45, "AnnotatedContent display name cannot be empty. It must be a localized user friendly string", v46, 2u);
      v48 = v47;
      v34 = v58;
      MEMORY[0x1B271F750](v48, -1, -1);
    }

    v21 = v59;
  }

  sub_1B00FA0D8(v9, type metadata accessor for FBKSInteraction.Content);
  sub_1B00FA138(v7, a2, type metadata accessor for FBKSInteraction.Content);
  result = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v50 = (a2 + result[5]);
  *v50 = v23;
  v50[1] = v25;
  v51 = (a2 + result[6]);
  v52 = v60;
  *v51 = v61;
  v51[1] = v52;
  v53 = (a2 + result[7]);
  *v53 = v30;
  v53[1] = v32;
  v54 = (a2 + result[8]);
  *v54 = 0;
  v54[1] = 0;
  *(a2 + result[10]) = v34;
  v55 = (a2 + result[9]);
  v56 = v62;
  *v55 = v21;
  v55[1] = v56;
  return result;
}

uint64_t sub_1B00F96E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00F97D8;

  return v6(a1);
}

uint64_t sub_1B00F97D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B00F98D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B00F9960(uint64_t a1)
{
  v11 = v1[2];
  v8 = v1[4];
  v9 = v1[3];
  v6 = v1[6];
  v7 = v1[5];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00DCFAC;

  return sub_1B00F8238(a1, v11, v9, v8, v7, v6);
}

uint64_t sub_1B00F9A6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B00E8C18;

  return sub_1B00F96E0(a1, v4);
}

uint64_t sub_1B00F9B24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B00DCFAC;

  return sub_1B00F96E0(a1, v4);
}

void *sub_1B00F9BDC(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;

    v2 = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
    v3 = 0;
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v33 = v8;
    v34 = v1;
    while (v7)
    {
      v9 = v3;
LABEL_12:
      v10 = __clz(__rbit64(v7)) | (v9 << 6);
      v11 = (*(v1 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(v1 + 56) + 8 * v10);
      v15 = *v11 == 0x656C7469743ALL && v13 == 0xE600000000000000;
      if (v15 || (sub_1B014D25C() & 1) != 0)
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v30 = v12 == 0x616572613ALL && v13 == 0xE500000000000000;
        if (v30 || (sub_1B014D25C() & 1) != 0)
        {
          v12 = 0;
          v13 = 1;
        }

        else
        {
          v31 = v12 == 0x706972637365643ALL && v13 == 0xEC0000006E6F6974;
          if (v31 || (sub_1B014D25C() & 1) != 0)
          {
            v12 = 0;
            v13 = 2;
          }

          else if (v12 == 0x657275746165663ALL && v13 == 0xEF6E69616D6F645FLL || (sub_1B014D25C() & 1) != 0)
          {
            v12 = 0;
            v13 = 3;
          }

          else if (v12 == 0x6165665F6275733ALL && v13 == 0xEC00000065727574 || (sub_1B014D25C() & 1) != 0)
          {
            v12 = 0;
            v13 = 4;
          }

          else if (v12 == 0xD000000000000012 && 0x80000001B015C080 == v13 || (sub_1B014D25C() & 1) != 0)
          {
            v12 = 0;
            v13 = 5;
          }

          else
          {
          }
        }
      }

      v16 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_1B013E148(v12, v13);
      v20 = v2[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        result = sub_1B014D28C();
        __break(1u);
        return result;
      }

      v23 = v18;
      if (v2[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B013F46C();
        }
      }

      else
      {
        sub_1B013EAE4(v22, isUniquelyReferenced_nonNull_native);
        v24 = sub_1B013E148(v12, v13);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_59;
        }

        v19 = v24;
      }

      v7 &= v7 - 1;
      if (v23)
      {
        sub_1B00D2010(v12, v13);
        *(v2[7] + 8 * v19) = v16;
      }

      else
      {
        v2[(v19 >> 6) + 8] |= 1 << v19;
        v26 = (v2[6] + 16 * v19);
        *v26 = v12;
        v26[1] = v13;
        *(v2[7] + 8 * v19) = v16;
        v27 = v2[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_58;
        }

        v2[2] = v29;
      }

      v3 = v9;
      v8 = v33;
      v1 = v34;
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v9 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    if (v2[2])
    {
      return v2;
    }
  }

  return 0;
}

uint64_t sub_1B00FA01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B00FA08C()
{
  result = qword_1EB6C4108;
  if (!qword_1EB6C4108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6C4108);
  }

  return result;
}

uint64_t sub_1B00FA0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B00FA138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B00FA1A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B00FA208()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EDAE70E8);
  __swift_project_value_buffer(v0, qword_1EDAE70E8);
  return sub_1B014CB4C();
}

id sub_1B00FA288()
{
  result = [objc_allocWithZone(type metadata accessor for CFBDaemonConnection()) init];
  qword_1EDAE7108 = result;
  return result;
}

id static CFBDaemonConnection.shared.getter()
{
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAE7108;

  return v1;
}

id sub_1B00FA360()
{
  v1 = OBJC_IVAR____TtC15FeedbackService19CFBDaemonConnection____lazy_storage___xpcConnection;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService19CFBDaemonConnection____lazy_storage___xpcConnection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService19CFBDaemonConnection____lazy_storage___xpcConnection);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_1B00FA3D0(v0, ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1B00FA3D0(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAE70E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE70E8);
  v5 = sub_1B014CB3C();
  v6 = sub_1B014CF6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_1B00CF694(a2);
    v11 = sub_1B00E6C2C(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B00C4000, v5, v6, "%s: Setting up connection to centralized feedback daemon", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B271F750](v8, -1, -1);
    MEMORY[0x1B271F750](v7, -1, -1);
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v13 = sub_1B014CC0C();
  v14 = [v12 initWithMachServiceName:v13 options:0];

  v15 = [objc_allocWithZone(type metadata accessor for CentralizedFeedbackDaemonInterface()) init];
  [v14 setRemoteObjectInterface_];

  [v14 setExportedObject_];
  v23 = sub_1B00FA6F4;
  v24 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00EDC7C;
  v22 = &block_descriptor_8_0;
  v16 = _Block_copy(&v19);
  [v14 setInterruptionHandler_];
  _Block_release(v16);
  v23 = sub_1B00FA850;
  v24 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00EDC7C;
  v22 = &block_descriptor_11;
  v17 = _Block_copy(&v19);
  [v14 setInvalidationHandler_];
  _Block_release(v17);
  [v14 resume];
  return v14;
}

id CentralizedFeedbackDaemonInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B00FA6F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C7B0;
  sub_1B014D2EC();

  if (qword_1EDAE70E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE70E8);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon interrupted from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

void sub_1B00FA850()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C770;
  sub_1B014D2EC();

  if (qword_1EDAE70E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE70E8);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon invalidated from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

uint64_t sub_1B00FA9AC(uint64_t a1, uint64_t a2)
{
  v16 = &type metadata for FeedbackFeatureFlags;
  v17 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v4 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v4)
  {
    v5 = sub_1B00FA360();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v17 = sub_1B00FAE44;
    v18 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B00FA1A0;
    v16 = &block_descriptor_5;
    v7 = _Block_copy(aBlock);

    v8 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);

    sub_1B014CFFC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4110, &qword_1B0151268);
    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_1EDAE70E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1B014CB5C();
    __swift_project_value_buffer(v10, qword_1EDAE70E8);
    v11 = sub_1B014CB3C();
    v12 = sub_1B014CF4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B00C4000, v11, v12, "Centralized Feedback feature disabled", v13, 2u);
      MEMORY[0x1B271F750](v13, -1, -1);
    }

    return 0;
  }
}

void sub_1B00FABEC(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B014F1E0;
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](0xD000000000000032, 0x80000001B015CEF0);
  swift_getErrorValue();
  v4 = sub_1B014D29C();
  MEMORY[0x1B271E7F0](v4);

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1B014D2EC();

  v5 = sub_1B014C9BC();
  a2();
}

id CentralizedFeedbackDaemonInterface.init()(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CentralizedFeedbackDaemonInterface();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [v2 setProtocol_];
  return v2;
}

id sub_1B00FAE0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t FBKSEvaluation.Subject.remoteEvaluate(action:sceneID:bundleID:associateWithAppleAccount:showFeedbackForm:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 16) = v7;
  *(v8 + 42) = a7;
  *(v8 + 41) = a6;
  *(v8 + 43) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00FAF38, 0, 0);
}

uint64_t sub_1B00FAF38()
{
  v11 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000053, 0x80000001B015CE00, &v10);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = *(v0 + 43);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1B00FB0FC;
  v7 = *(v0 + 42);
  v8 = *(v0 + 41);

  return sub_1B00FBB5C((v0 + 40), v7, v8);
}

uint64_t sub_1B00FB0FC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FB230, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}