uint64_t sub_1B9371DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDED8, type metadata accessor for Searchfoundation_NamedProtobufMessage, protocol conformance descriptor for Searchfoundation_NamedProtobufMessage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9371E28(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCFD8, type metadata accessor for Searchfoundation_NamedProtobufMessage, protocol conformance descriptor for Searchfoundation_NamedProtobufMessage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9371E98(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCFD8, type metadata accessor for Searchfoundation_NamedProtobufMessage, protocol conformance descriptor for Searchfoundation_NamedProtobufMessage);

  return sub_1B964C5D0();
}

uint64_t sub_1B9371F24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB53A8);
  __swift_project_value_buffer(v0, qword_1EBAB53A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1B96B9490;
  v4 = v76 + v3 + v1[14];
  *(v76 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v76 + v3 + v2 + v1[14];
  *(v76 + v3 + v2) = 2;
  *v8 = "value";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v76 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "nextCard";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v76 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "commands";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v76 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "parameterKeyPaths";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v76 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cardSectionId";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v76 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "resultIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v7();
  v19 = (v76 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "userReportRequest";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v76 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "command";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v7();
  v23 = (v76 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "previewCommand";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v76 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "previewButtonItems";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v7();
  v27 = (v76 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "cardSectionDetail";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v76 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "previewButtonItemsTitle";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v76 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "backgroundColor";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v7();
  v33 = (v76 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "shouldHideInAmbientMode";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v76 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "leadingSwipeButtonItems";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v7();
  v37 = (v76 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "trailingSwipeButtonItems";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v76 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "punchoutOptions";
  *(v40 + 1) = 15;
  v40[16] = 2;
  v7();
  v41 = (v76 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 20;
  *v42 = "punchoutPickerTitle";
  *(v42 + 1) = 19;
  v42[16] = 2;
  v7();
  v43 = (v76 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 21;
  *v44 = "punchoutPickerDismissText";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v76 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 22;
  *v46 = "canBeHidden";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v76 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 23;
  *v48 = "hasTopPadding";
  *(v48 + 1) = 13;
  v48[16] = 2;
  v7();
  v49 = (v76 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 24;
  *v50 = "hasBottomPadding";
  *(v50 + 1) = 16;
  v50[16] = 2;
  v7();
  v51 = (v76 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 25;
  *v52 = "separatorStyle";
  *(v52 + 1) = 14;
  v52[16] = 2;
  v7();
  v53 = (v76 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 26;
  *v54 = "referencedCommands";
  *(v54 + 1) = 18;
  v54[16] = 2;
  v7();
  v55 = (v76 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 27;
  *v56 = "forceEnable3DTouch";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v76 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 28;
  *v58 = "shouldShowInSmartDialog";
  *(v58 + 1) = 23;
  v58[16] = 2;
  v7();
  v59 = (v76 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 29;
  *v60 = "appEntityAnnotation";
  *(v60 + 1) = 19;
  v60[16] = 2;
  v7();
  v61 = (v76 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 30;
  *v62 = "emphasisSubjectId";
  *(v62 + 1) = 17;
  v62[16] = 2;
  v7();
  v63 = (v76 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 31;
  *v64 = "increasedContrastMode";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v7();
  v65 = (v76 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 32;
  *v66 = "secondaryCommand";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v76 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 33;
  *v68 = "requiredLevelOfDetail";
  *(v68 + 1) = 21;
  v68[16] = 2;
  v7();
  v69 = (v76 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "racFeedbackSubfeatureId";
  *(v70 + 1) = 23;
  v70[16] = 2;
  v7();
  v71 = (v76 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "racFeedbackLoggingContent";
  *(v72 + 1) = 25;
  v72[16] = 2;
  v7();
  v73 = (v76 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "copyableItems";
  *(v74 + 1) = 13;
  v74[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9372924(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B9372974()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v2 = type metadata accessor for Searchfoundation_CardSectionValue(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__nextCard;
  v4 = type metadata accessor for Searchfoundation_Card(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__commands) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths) = v5;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionID);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__resultIdentifier);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__userReportRequest;
  v9 = type metadata accessor for Searchfoundation_UserReportRequest(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__command;
  v11 = type metadata accessor for Searchfoundation_Command(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewCommand, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItems) = v5;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionDetail);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItemsTitle);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v15 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldHideInAmbientMode) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingSwipeButtonItems) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingSwipeButtonItems) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutOptions) = v5;
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerTitle);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerDismissText);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__canBeHidden) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasTopPadding_p) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasBottomPadding_p) = 0;
  v18 = v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__separatorStyle;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__referencedCommands) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__forceEnable3Dtouch) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldShowInSmartDialog) = 0;
  v19 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__appEntityAnnotation;
  v20 = type metadata accessor for Searchfoundation_AppEntityAnnotation(0);
  __swift_storeEnumTagSinglePayload(v0 + v19, 1, 1, v20);
  v21 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__emphasisSubjectID);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__increasedContrastMode;
  *v22 = 0;
  *(v22 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryCommand, 1, 1, v11);
  v23 = v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__requiredLevelOfDetail;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackSubfeatureID);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackLoggingContent;
  *(v0 + v25) = sub_1B964C7B0();
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__copyableItems) = v5;
  return v0;
}

uint64_t sub_1B9372C5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1D8, &qword_1B96B94F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v154 = v120 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v141 = v120 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v132 = v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1D0, &unk_1B96B94E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v128 = v120 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D58, &unk_1B9689680);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v122 = v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1C8, &unk_1B96B94D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v120[1] = v120 - v14;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v15 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v120[0] = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v16 = type metadata accessor for Searchfoundation_CardSectionValue(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__nextCard;
  v120[2] = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__nextCard;
  v18 = type metadata accessor for Searchfoundation_Card(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v121 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__commands;
  v19 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__commands) = MEMORY[0x1E69E7CC0];
  v123 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths) = v19;
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__resultIdentifier);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__userReportRequest;
  v124 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__userReportRequest;
  v23 = type metadata accessor for Searchfoundation_UserReportRequest(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__command;
  v125 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__command;
  v25 = type metadata accessor for Searchfoundation_Command(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v126 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewCommand;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewCommand, 1, 1, v25);
  v127 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItems) = v19;
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionDetail);
  v129 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionDetail);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItemsTitle);
  v130 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItemsTitle);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v131 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v29 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v133 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldHideInAmbientMode;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldHideInAmbientMode) = 0;
  v134 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingSwipeButtonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingSwipeButtonItems) = v19;
  v135 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingSwipeButtonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingSwipeButtonItems) = v19;
  v136 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutOptions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutOptions) = v19;
  v30 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerTitle);
  v137 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerTitle);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerDismissText);
  v138 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerDismissText);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v139 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__canBeHidden;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__canBeHidden) = 0;
  v140 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasTopPadding_p;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasTopPadding_p) = 0;
  v142 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasBottomPadding_p;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasBottomPadding_p) = 0;
  v32 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__separatorStyle;
  v143 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__separatorStyle;
  *v32 = 0;
  *(v32 + 8) = 1;
  v144 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__referencedCommands;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__referencedCommands) = v19;
  v145 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__forceEnable3Dtouch;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__forceEnable3Dtouch) = 0;
  v146 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldShowInSmartDialog;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldShowInSmartDialog) = 0;
  v33 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__appEntityAnnotation;
  v147 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__appEntityAnnotation;
  v34 = type metadata accessor for Searchfoundation_AppEntityAnnotation(0);
  __swift_storeEnumTagSinglePayload(v1 + v33, 1, 1, v34);
  v35 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__emphasisSubjectID);
  v148 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__emphasisSubjectID);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__increasedContrastMode;
  v149 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__increasedContrastMode;
  *v36 = 0;
  *(v36 + 8) = 1;
  v150 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryCommand;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryCommand, 1, 1, v25);
  v37 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__requiredLevelOfDetail;
  v151 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__requiredLevelOfDetail;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackSubfeatureID);
  v152 = (v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackSubfeatureID);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackLoggingContent;
  *(v1 + v39) = sub_1B964C7B0();
  v153 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__copyableItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__copyableItems) = v19;
  swift_beginAccess();
  v40 = *(a1 + 16);
  v41 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v40;
  *(v1 + 24) = v41;
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
  v42 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__commands;
  swift_beginAccess();
  v43 = *(a1 + v42);
  v44 = v121;
  swift_beginAccess();
  *(v1 + v44) = v43;

  v45 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v123;
  swift_beginAccess();
  *(v1 + v47) = v46;

  v48 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionID);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  swift_beginAccess();
  *v20 = v50;
  v20[1] = v49;

  v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__resultIdentifier);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  swift_beginAccess();
  *v21 = v53;
  v21[1] = v52;

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
  v54 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItems;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = v127;
  swift_beginAccess();
  *(v1 + v56) = v55;

  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionDetail);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v129;
  swift_beginAccess();
  *v60 = v59;
  v60[1] = v58;

  v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItemsTitle);
  swift_beginAccess();
  v63 = *v61;
  v62 = v61[1];
  v64 = v130;
  swift_beginAccess();
  *v64 = v63;
  v64[1] = v62;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldHideInAmbientMode;
  swift_beginAccess();
  LOBYTE(v65) = *(a1 + v65);
  v66 = v133;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingSwipeButtonItems;
  swift_beginAccess();
  v68 = *(a1 + v67);
  v69 = v134;
  swift_beginAccess();
  *(v1 + v69) = v68;

  v70 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingSwipeButtonItems;
  swift_beginAccess();
  v71 = *(a1 + v70);
  v72 = v135;
  swift_beginAccess();
  *(v1 + v72) = v71;

  v73 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutOptions;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = v136;
  swift_beginAccess();
  *(v1 + v75) = v74;

  v76 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerTitle);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  v79 = v137;
  swift_beginAccess();
  *v79 = v78;
  v79[1] = v77;

  v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerDismissText);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v138;
  swift_beginAccess();
  *v83 = v82;
  v83[1] = v81;

  v84 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__canBeHidden;
  swift_beginAccess();
  LOBYTE(v84) = *(a1 + v84);
  v85 = v139;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasTopPadding_p;
  swift_beginAccess();
  LOBYTE(v86) = *(a1 + v86);
  v87 = v140;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasBottomPadding_p;
  swift_beginAccess();
  LOBYTE(v88) = *(a1 + v88);
  v89 = v142;
  swift_beginAccess();
  *(v1 + v89) = v88;
  v90 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__separatorStyle);
  swift_beginAccess();
  v91 = *v90;
  LOBYTE(v90) = *(v90 + 8);
  v92 = v143;
  swift_beginAccess();
  *v92 = v91;
  *(v92 + 8) = v90;
  v93 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__referencedCommands;
  swift_beginAccess();
  v94 = *(a1 + v93);
  v95 = v144;
  swift_beginAccess();
  *(v1 + v95) = v94;

  v96 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__forceEnable3Dtouch;
  swift_beginAccess();
  LOBYTE(v96) = *(a1 + v96);
  v97 = v145;
  swift_beginAccess();
  *(v1 + v97) = v96;
  v98 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldShowInSmartDialog;
  swift_beginAccess();
  LOBYTE(v98) = *(a1 + v98);
  v99 = v146;
  swift_beginAccess();
  *(v1 + v99) = v98;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v100 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__emphasisSubjectID);
  swift_beginAccess();
  v102 = *v100;
  v101 = v100[1];
  v103 = v148;
  swift_beginAccess();
  *v103 = v102;
  v103[1] = v101;

  v104 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__increasedContrastMode);
  swift_beginAccess();
  v105 = *v104;
  LOBYTE(v104) = *(v104 + 8);
  v106 = v149;
  swift_beginAccess();
  *v106 = v105;
  *(v106 + 8) = v104;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v107 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__requiredLevelOfDetail);
  swift_beginAccess();
  v108 = *v107;
  LOBYTE(v107) = *(v107 + 8);
  v109 = v151;
  swift_beginAccess();
  *v109 = v108;
  *(v109 + 8) = v107;
  v110 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackSubfeatureID);
  swift_beginAccess();
  v112 = *v110;
  v111 = v110[1];
  v113 = v152;
  swift_beginAccess();
  *v113 = v112;
  v113[1] = v111;

  v114 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackLoggingContent;
  swift_beginAccess();
  v115 = *(a1 + v114);
  swift_beginAccess();
  *(v1 + v39) = v115;

  v116 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__copyableItems;
  swift_beginAccess();
  v117 = *(a1 + v116);

  v118 = v153;
  swift_beginAccess();
  *(v1 + v118) = v117;

  return v1;
}

uint64_t sub_1B9373D4C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &qword_1EBACC1C8, &unk_1B96B94D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__nextCard, &qword_1EBAC3D58, &unk_1B9689680);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__userReportRequest, &qword_1EBACC1D0, &unk_1B96B94E0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__command, &qword_1EBAB8E98, &qword_1B964D698);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewCommand, &qword_1EBAB8E98, &qword_1B964D698);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__appEntityAnnotation, &unk_1EBACC1D8, &qword_1B96B94F0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryCommand, &qword_1EBAB8E98, &qword_1B964D698);

  return v0;
}

void sub_1B937400C()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v10 = v3;
  v5 = v4;
  v7 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = v10(v8);
  }

  v9 = OUTLINED_FUNCTION_176_1();
  v2(v9);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B93740BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B93744B4(a2, a1, a3, a4);
        continue;
      case 2:
        sub_1B9374548(a2, a1, a3, a4);
        continue;
      case 3:
        sub_1B9374624(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B9374700(a2, a1, a3, a4);
        continue;
      case 5:
        sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths, MEMORY[0x1E69AACB8]);
        continue;
      case 6:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionID;
        goto LABEL_32;
      case 7:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__resultIdentifier;
        goto LABEL_32;
      case 8:
        sub_1B93747DC(a2, a1, a3, a4);
        continue;
      case 9:
        sub_1B93748B8(a2, a1, a3, a4);
        continue;
      case 10:
        sub_1B9374994(a2, a1, a3, a4);
        continue;
      case 11:
        sub_1B9374A70(a2, a1, a3, a4);
        continue;
      case 13:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionDetail;
        goto LABEL_32;
      case 14:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItemsTitle;
        goto LABEL_32;
      case 15:
        sub_1B9374B4C(a2, a1, a3, a4);
        continue;
      case 16:
      case 22:
      case 23:
      case 24:
      case 27:
      case 28:
        sub_1B9442234();
        continue;
      case 17:
        sub_1B9374C28(a2, a1, a3, a4);
        continue;
      case 18:
        sub_1B9374D04(a2, a1, a3, a4);
        continue;
      case 19:
        sub_1B9374DE0(a2, a1, a3, a4);
        continue;
      case 20:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerTitle;
        goto LABEL_32;
      case 21:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerDismissText;
        goto LABEL_32;
      case 25:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__separatorStyle;
        v13 = &type metadata for Searchfoundation_SeparatorStyle;
        v14 = sub_1B92C8A2C;
        goto LABEL_34;
      case 26:
        sub_1B9374EBC(a2, a1, a3, a4);
        continue;
      case 29:
        sub_1B9374F98(a2, a1, a3, a4);
        continue;
      case 30:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__emphasisSubjectID;
        goto LABEL_32;
      case 31:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__increasedContrastMode;
        v13 = &type metadata for Searchfoundation_HierarchicalIncreasedContrastModeType;
        v14 = sub_1B946335C;
        goto LABEL_34;
      case 32:
        sub_1B9375074(a2, a1, a3, a4);
        continue;
      case 33:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__requiredLevelOfDetail;
        v13 = &type metadata for Searchfoundation_RFLevelOfDetail;
        v14 = sub_1B9463500;
LABEL_34:
        sub_1B9441F68(a2, a1, a3, a4, v12, v14, v13);
        break;
      case 34:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackSubfeatureID;
LABEL_32:
        sub_1B94420D8(a2, a1, a3, a4, v11, MEMORY[0x1E69AACE0]);
        break;
      case 35:
        sub_1B9375150(a2, a1, a3, a4);
        break;
      case 36:
        sub_1B93751FC(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B93744B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B92DF6FC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B9374548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CardSectionValue(0);
  sub_1B8CD3068(&qword_1ED9D2A50, type metadata accessor for Searchfoundation_CardSectionValue, protocol conformance descriptor for Searchfoundation_CardSectionValue);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9374624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Card(0);
  sub_1B8CD3068(&qword_1EBAB5708, type metadata accessor for Searchfoundation_Card, protocol conformance descriptor for Searchfoundation_Card);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9374700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AbstractCommand(0);
  sub_1B8CD3068(qword_1ED9D2B20, type metadata accessor for Searchfoundation_AbstractCommand, protocol conformance descriptor for Searchfoundation_AbstractCommand);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93747DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_UserReportRequest(0);
  sub_1B8CD3068(&qword_1EBAB4DD0, type metadata accessor for Searchfoundation_UserReportRequest, protocol conformance descriptor for Searchfoundation_UserReportRequest);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93748B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Command(0);
  sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9374994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Command(0);
  sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9374A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9374B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9374C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9374D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9374DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9374EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Command(0);
  sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9374F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AppEntityAnnotation(0);
  sub_1B8CD3068(&qword_1EBACB0B0, type metadata accessor for Searchfoundation_AppEntityAnnotation, protocol conformance descriptor for Searchfoundation_AppEntityAnnotation);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9375074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Command(0);
  sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9375150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C3B0();
  return swift_endAccess();
}

uint64_t sub_1B93751FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CopyItem(0);
  sub_1B8CD3068(&qword_1EBACC978, type metadata accessor for Searchfoundation_CopyItem, protocol conformance descriptor for Searchfoundation_CopyItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9375308(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9375380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v150 = a3;
  v151 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1D8, &qword_1B96B94F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v136 = &v132 - v6;
  v135 = type metadata accessor for Searchfoundation_AppEntityAnnotation(0);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v139 = &v132 - v9;
  v137 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v133 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v141 = &v132 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v143 = &v132 - v16;
  v146 = type metadata accessor for Searchfoundation_Command(0);
  v17 = MEMORY[0x1EEE9AC00](v146);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v148 = &v132 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v132 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1D0, &unk_1B96B94E0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v144 = &v132 - v24;
  v145 = type metadata accessor for Searchfoundation_UserReportRequest(0);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D58, &unk_1B9689680);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v132 - v27;
  v149 = type metadata accessor for Searchfoundation_Card(0);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1C8, &unk_1B96B94D0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v132 - v31;
  v33 = type metadata accessor for Searchfoundation_CardSectionValue(0);
  MEMORY[0x1EEE9AC00](v33);
  swift_beginAccess();
  v34 = *(a1 + 24);
  v158 = *(a1 + 16);
  v159 = v34;
  if (Searchfoundation_CardSectionType.rawValue.getter())
  {
    v35 = *(a1 + 24);
    v158 = *(a1 + 16);
    v159 = v35;
    sub_1B92DF6FC();
    v36 = v160;
    result = sub_1B964C680();
    if (v36)
    {
      return result;
    }

    v132 = v19;
    v160 = 0;
  }

  else
  {
    v132 = v19;
  }

  swift_beginAccess();
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v33);
  v150 = a1;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v32, &qword_1EBACC1C8, &unk_1B96B94D0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2A50, type metadata accessor for Searchfoundation_CardSectionValue, protocol conformance descriptor for Searchfoundation_CardSectionValue);
    v39 = v160;
    sub_1B964C740();
    if (v39)
    {
      return sub_1B944B0D4();
    }

    v160 = 0;
    sub_1B944B0D4();
    a1 = v150;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v28, 1, v149) == 1)
  {
    sub_1B8D9207C(v28, &qword_1EBAC3D58, &unk_1B9689680);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB5708, type metadata accessor for Searchfoundation_Card, protocol conformance descriptor for Searchfoundation_Card);
    v40 = v160;
    sub_1B964C740();
    if (v40)
    {
      return sub_1B944B0D4();
    }

    v160 = 0;
    sub_1B944B0D4();
    a1 = v150;
  }

  v41 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__commands;
  swift_beginAccess();
  if (*(*(a1 + v41) + 16))
  {
    type metadata accessor for Searchfoundation_AbstractCommand(0);
    sub_1B8CD3068(qword_1ED9D2B20, type metadata accessor for Searchfoundation_AbstractCommand, protocol conformance descriptor for Searchfoundation_AbstractCommand);

    v42 = v160;
    sub_1B964C730();
    if (v42)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v43 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths;
  swift_beginAccess();
  if (*(*(a1 + v43) + 16))
  {

    v44 = v160;
    sub_1B964C6E0();
    if (v44)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionID);
  swift_beginAccess();
  v46 = v45[1];
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = *v45 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {

    v48 = v160;
    sub_1B964C700();
    if (!v48)
    {
      v160 = 0;

      a1 = v150;
      goto LABEL_25;
    }
  }

LABEL_25:
  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__resultIdentifier);
  swift_beginAccess();
  v50 = v49[1];
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = *v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {

    v52 = v160;
    sub_1B964C700();
    if (v52)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  swift_beginAccess();
  v53 = v144;
  sub_1B8D92024();
  v54 = __swift_getEnumTagSinglePayload(v53, 1, v145);
  v55 = v146;
  if (v54 == 1)
  {
    sub_1B8D9207C(v53, &qword_1EBACC1D0, &unk_1B96B94E0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB4DD0, type metadata accessor for Searchfoundation_UserReportRequest, protocol conformance descriptor for Searchfoundation_UserReportRequest);
    v56 = v160;
    sub_1B964C740();
    if (v56)
    {
      return sub_1B944B0D4();
    }

    v160 = 0;
    sub_1B944B0D4();
    a1 = v150;
  }

  swift_beginAccess();
  v57 = v143;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v57, 1, v55) == 1)
  {
    sub_1B8D9207C(v57, &qword_1EBAB8E98, &qword_1B964D698);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
    v58 = v160;
    sub_1B964C740();
    if (v58)
    {
      return sub_1B944B0D4();
    }

    v160 = 0;
    sub_1B944B0D4();
    a1 = v150;
  }

  swift_beginAccess();
  v59 = v141;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v59, 1, v55) == 1)
  {
    sub_1B8D9207C(v59, &qword_1EBAB8E98, &qword_1B964D698);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
    v60 = v160;
    sub_1B964C740();
    if (v60)
    {
      return sub_1B944B0D4();
    }

    v160 = 0;
    sub_1B944B0D4();
    a1 = v150;
  }

  v61 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItems;
  swift_beginAccess();
  if (*(*(a1 + v61) + 16))
  {
    type metadata accessor for Searchfoundation_ButtonItem(0);
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);

    v62 = v160;
    sub_1B964C730();
    if (v62)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionDetail);
  swift_beginAccess();
  v64 = v63[1];
  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = *v63 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {

    v66 = v160;
    sub_1B964C700();
    if (v66)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItemsTitle);
  swift_beginAccess();
  v68 = v67[1];
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = *v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    v70 = v160;
    sub_1B964C700();
    if (v70)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  swift_beginAccess();
  v71 = v139;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v71, 1, v137) == 1)
  {
    sub_1B8D9207C(v139, &qword_1EBACB050, &unk_1B96B7BD0);
    goto LABEL_61;
  }

  sub_1B944B02C();
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  v72 = v160;
  sub_1B964C740();
  if (v72)
  {
    return sub_1B944B0D4();
  }

  v160 = 0;
  sub_1B944B0D4();
  a1 = v150;
LABEL_61:
  v73 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldHideInAmbientMode;
  swift_beginAccess();
  if (*(a1 + v73) == 1)
  {
    v74 = v160;
    result = sub_1B964C670();
    if (v74)
    {
      return result;
    }

    v160 = 0;
    a1 = v150;
  }

  v75 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingSwipeButtonItems;
  swift_beginAccess();
  if (*(*(a1 + v75) + 16))
  {
    type metadata accessor for Searchfoundation_ButtonItem(0);
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);

    v76 = v160;
    sub_1B964C730();
    if (v76)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v77 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingSwipeButtonItems;
  swift_beginAccess();
  if (*(*(a1 + v77) + 16))
  {
    type metadata accessor for Searchfoundation_ButtonItem(0);
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);

    v78 = v160;
    sub_1B964C730();
    if (v78)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v79 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutOptions;
  swift_beginAccess();
  if (*(*(a1 + v79) + 16))
  {
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    v80 = v160;
    sub_1B964C730();
    if (v80)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v81 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerTitle);
  swift_beginAccess();
  v82 = v81[1];
  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = *v81 & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {

    v84 = v160;
    sub_1B964C700();
    if (v84)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v85 = (a1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerDismissText);
  swift_beginAccess();
  v86 = v85[1];
  v87 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v87 = *v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v87)
  {

    v88 = v160;
    sub_1B964C700();
    if (v88)
    {
    }

    v160 = 0;

    a1 = v150;
  }

  v89 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__canBeHidden;
  swift_beginAccess();
  if (*(a1 + v89) != 1 || (v90 = v160, result = sub_1B964C670(), (v160 = v90) == 0))
  {
    v91 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasTopPadding_p;
    v92 = v150;
    swift_beginAccess();
    if (*(v92 + v91) != 1 || (v93 = v160, result = sub_1B964C670(), (v160 = v93) == 0))
    {
      v94 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasBottomPadding_p;
      v95 = v150;
      swift_beginAccess();
      if (*(v95 + v94) != 1 || (v96 = v160, result = sub_1B964C670(), (v160 = v96) == 0))
      {
        v97 = v150 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__separatorStyle;
        swift_beginAccess();
        if (!*v97 || (v98 = *(v97 + 8), v156 = *v97, v157 = v98, sub_1B92C8A2C(), v99 = v160, result = sub_1B964C680(), (v160 = v99) == 0))
        {
          v100 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__referencedCommands;
          v101 = v150;
          swift_beginAccess();
          if (*(*(v101 + v100) + 16))
          {
            sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);

            v102 = v160;
            sub_1B964C730();
            v160 = v102;
            if (v102)
            {
            }
          }

          v103 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__forceEnable3Dtouch;
          v104 = v150;
          swift_beginAccess();
          if (*(v104 + v103) != 1 || (v105 = v160, result = sub_1B964C670(), (v160 = v105) == 0))
          {
            v106 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldShowInSmartDialog;
            v107 = v150;
            swift_beginAccess();
            if (*(v107 + v106) != 1 || (v108 = v160, result = sub_1B964C670(), (v160 = v108) == 0))
            {
              swift_beginAccess();
              v109 = v136;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v109, 1, v135) == 1)
              {
                sub_1B8D9207C(v136, &unk_1EBACC1D8, &qword_1B96B94F0);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1EBACB0B0, type metadata accessor for Searchfoundation_AppEntityAnnotation, protocol conformance descriptor for Searchfoundation_AppEntityAnnotation);
                v110 = v160;
                sub_1B964C740();
                v160 = v110;
                if (v110)
                {
                  return sub_1B944B0D4();
                }

                sub_1B944B0D4();
              }

              v111 = (v150 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__emphasisSubjectID);
              swift_beginAccess();
              v112 = v111[1];
              v113 = HIBYTE(v112) & 0xF;
              if ((v112 & 0x2000000000000000) == 0)
              {
                v113 = *v111 & 0xFFFFFFFFFFFFLL;
              }

              if (v113)
              {

                v114 = v160;
                sub_1B964C700();
                v160 = v114;
                if (v114)
                {
                }
              }

              v115 = v150 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__increasedContrastMode;
              swift_beginAccess();
              if (!*v115 || (v116 = *(v115 + 8), v154 = *v115, v155 = v116, sub_1B946335C(), v117 = v160, result = sub_1B964C680(), (v160 = v117) == 0))
              {
                swift_beginAccess();
                v118 = v133;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v118, 1, v146) == 1)
                {
                  sub_1B8D9207C(v133, &qword_1EBAB8E98, &qword_1B964D698);
LABEL_116:
                  v120 = v150 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__requiredLevelOfDetail;
                  swift_beginAccess();
                  if (!*v120 || (v121 = *(v120 + 8), v152 = *v120, v153 = v121, sub_1B9463500(), v122 = v160, result = sub_1B964C680(), (v160 = v122) == 0))
                  {
                    v123 = (v150 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackSubfeatureID);
                    swift_beginAccess();
                    v124 = v123[1];
                    v125 = HIBYTE(v124) & 0xF;
                    if ((v124 & 0x2000000000000000) == 0)
                    {
                      v125 = *v123 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v125)
                    {

                      v126 = v160;
                      sub_1B964C700();
                      v160 = v126;
                      if (v126)
                      {
                      }
                    }

                    v127 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackLoggingContent;
                    v128 = v150;
                    swift_beginAccess();
                    if (!*(*(v128 + v127) + 16) || (sub_1B964C280(), , v129 = v160, sub_1B964C5F0(), result = , (v160 = v129) == 0))
                    {
                      v130 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__copyableItems;
                      v131 = v150;
                      result = swift_beginAccess();
                      if (*(*(v131 + v130) + 16))
                      {
                        type metadata accessor for Searchfoundation_CopyItem(0);
                        sub_1B8CD3068(&qword_1EBACC978, type metadata accessor for Searchfoundation_CopyItem, protocol conformance descriptor for Searchfoundation_CopyItem);

                        sub_1B964C730();
                      }
                    }
                  }

                  return result;
                }

                sub_1B944B02C();
                sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
                v119 = v160;
                sub_1B964C740();
                v160 = v119;
                if (!v119)
                {
                  sub_1B944B0D4();
                  goto LABEL_116;
                }

                return sub_1B944B0D4();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B9376F2C()
{
  OUTLINED_FUNCTION_284();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_1177();
  v298 = type metadata accessor for Searchfoundation_AppEntityAnnotation(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC668, &qword_1B96B99E0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v299 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1D8, &qword_1B96B94F0);
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_266_0();
  v297 = v14;
  v15 = OUTLINED_FUNCTION_201();
  v306 = type metadata accessor for Searchfoundation_Color(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21();
  v303 = v17;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v309 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v21 = OUTLINED_FUNCTION_183(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v305 = v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_266_0();
  v308 = v24;
  v25 = OUTLINED_FUNCTION_201();
  v313 = type metadata accessor for Searchfoundation_Command(v25);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44_0();
  v302 = v27;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_266_0();
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8EA0, &unk_1B964D6A0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_266_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  v34 = OUTLINED_FUNCTION_183(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_0();
  v301 = v35;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_682();
  v300 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_682();
  v311 = v40;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_266_0();
  v324 = v43;
  v44 = OUTLINED_FUNCTION_201();
  v316 = type metadata accessor for Searchfoundation_UserReportRequest(v44);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_21();
  v310 = v46;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A0, &unk_1B96B9900);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_185();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1D0, &unk_1B96B94E0);
  v49 = OUTLINED_FUNCTION_183(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44_0();
  v314 = v50;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_266_0();
  v318 = v52;
  v53 = OUTLINED_FUNCTION_201();
  v322 = type metadata accessor for Searchfoundation_Card(v53);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_21();
  v317 = v55;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D88, &unk_1B96B98E0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_185();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D58, &unk_1B9689680);
  v58 = OUTLINED_FUNCTION_183(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44_0();
  v320 = v59;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_266_0();
  v323 = v61;
  v62 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_CardSectionValue(v62);
  OUTLINED_FUNCTION_163_4();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_21();
  v319 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE788, &qword_1B96CA710);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_79();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1C8, &unk_1B96B94D0);
  v67 = OUTLINED_FUNCTION_183(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_44_0();
  v325 = v68;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_521(v1 + 16, &v399);
  v70 = *(v1 + 16);
  v71 = *(v1 + 24);
  OUTLINED_FUNCTION_521(v6 + 16, &v398);
  v72 = *(v6 + 16);
  v73 = *(v6 + 24);
  v396 = v70;
  v397 = v71;
  v394 = v72;
  v395 = v73;
  v74 = Searchfoundation_CardSectionType.rawValue.getter();
  if (v74 == Searchfoundation_CardSectionType.rawValue.getter())
  {
    v295 = v4;
    v307 = v6;
    OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &v396);
    OUTLINED_FUNCTION_481();
    sub_1B8D92024();
    v75 = v6;
    OUTLINED_FUNCTION_521(v6 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &v394);
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_84_0();
    v76 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v76, v77, v3);
    if (v84)
    {

      sub_1B8D9207C(v2, &qword_1EBACC1C8, &unk_1B96B94D0);
      OUTLINED_FUNCTION_749();
      OUTLINED_FUNCTION_178(v78, v79, v80);
      if (v84)
      {
        sub_1B8D9207C(v0, &qword_1EBACC1C8, &unk_1B96B94D0);
        goto LABEL_14;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_749();
      OUTLINED_FUNCTION_178(v81, v82, v83);
      if (!v84)
      {
        OUTLINED_FUNCTION_339_1();
        sub_1B944B02C();
        v87 = *(v3 + 20);
        v88 = *(v325 + v87);
        v89 = *(v319 + v87);

        if (v88 != v89)
        {

          v90 = OUTLINED_FUNCTION_616();
          v91 = sub_1B9396BFC(v90);

          if ((v91 & 1) == 0)
          {
            sub_1B944B0D4();
            v132 = &unk_1B96B94D0;
            OUTLINED_FUNCTION_176_2();
            sub_1B8D9207C(v133, v134, v135);
            goto LABEL_49;
          }
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v92, v93, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_709_0();
        v94 = sub_1B964C850();
        sub_1B944B0D4();
        v95 = OUTLINED_FUNCTION_275();
        sub_1B8D9207C(v95, v96, &unk_1B96B94D0);
        sub_1B944B0D4();
        v97 = OUTLINED_FUNCTION_186();
        sub_1B8D9207C(v97, v98, &unk_1B96B94D0);
        if ((v94 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_14:
        OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__nextCard, &v393);
        OUTLINED_FUNCTION_84_0();
        v0 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__nextCard;
        OUTLINED_FUNCTION_521(v6 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__nextCard, &v392);
        v99 = *(v321 + 48);
        OUTLINED_FUNCTION_481();
        sub_1B8D92024();
        OUTLINED_FUNCTION_870_0();
        v100 = OUTLINED_FUNCTION_538();
        OUTLINED_FUNCTION_178(v100, v101, v322);
        if (v84)
        {
          sub_1B8D9207C(v323, &qword_1EBAC3D58, &unk_1B9689680);
          OUTLINED_FUNCTION_57(v0 + v99);
          v102 = v324;
          v103 = v318;
          if (v84)
          {
            sub_1B8D9207C(v0, &qword_1EBAC3D58, &unk_1B9689680);
LABEL_30:
            OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__commands, &v391);
            OUTLINED_FUNCTION_521(v75 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__commands, &v390);

            v112 = OUTLINED_FUNCTION_543();
            sub_1B8D902C4(v112, v113);
            OUTLINED_FUNCTION_743_0();

            if ((v99 & 1) == 0)
            {
              goto LABEL_25;
            }

            v114 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths;
            OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths, &v389);
            v115 = *(v1 + v114);
            v116 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths;
            OUTLINED_FUNCTION_521(v75 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__parameterKeyPaths, &v388);
            v117 = sub_1B8D6123C(v115, *(v75 + v116));
            if ((v117 & 1) == 0)
            {
              goto LABEL_25;
            }

            v118 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionID;
            v119 = OUTLINED_FUNCTION_26_6(v117, &v387);
            v120 = *(v118 + 8);
            OUTLINED_FUNCTION_505_0(v119, &v386);
            OUTLINED_FUNCTION_714_0();
            if (!v84 || v120 != v122)
            {
              OUTLINED_FUNCTION_543();
              v121 = sub_1B964C9F0();
              if ((v121 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            v124 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__resultIdentifier;
            v125 = OUTLINED_FUNCTION_26_6(v121, &v385);
            v126 = *(v124 + 8);
            OUTLINED_FUNCTION_505_0(v125, &v384);
            OUTLINED_FUNCTION_714_0();
            if (!v84 || v126 != v127)
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__userReportRequest, &v383);
            OUTLINED_FUNCTION_84_0();
            v0 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__userReportRequest;
            OUTLINED_FUNCTION_521(v75 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__userReportRequest, &v382);
            v129 = *(v315 + 48);
            OUTLINED_FUNCTION_481();
            sub_1B8D92024();
            OUTLINED_FUNCTION_870_0();
            v130 = OUTLINED_FUNCTION_538();
            OUTLINED_FUNCTION_178(v130, v131, v316);
            if (v84)
            {
              sub_1B8D9207C(v103, &qword_1EBACC1D0, &unk_1B96B94E0);
              OUTLINED_FUNCTION_57(v0 + v129);
              if (v84)
              {
                sub_1B8D9207C(v0, &qword_1EBACC1D0, &unk_1B96B94E0);
                goto LABEL_57;
              }
            }

            else
            {
              sub_1B8D92024();
              OUTLINED_FUNCTION_57(v0 + v129);
              if (!v139)
              {
                OUTLINED_FUNCTION_48_14();
                sub_1B944B02C();
                if (*(v314 + *(v316 + 20)) == *(v310 + *(v316 + 20)) || (, , v140 = OUTLINED_FUNCTION_543(), sub_1B9633DD0(v140, v141), OUTLINED_FUNCTION_649(), , (v129 & 1) != 0))
                {
                  sub_1B964C2B0();
                  OUTLINED_FUNCTION_0_84();
                  sub_1B8CD3068(v142, v143, MEMORY[0x1E69AAC10]);
                  OUTLINED_FUNCTION_481();
                  v144 = sub_1B964C850();
                  sub_1B944B0D4();
                  sub_1B8D9207C(v318, &qword_1EBACC1D0, &unk_1B96B94E0);
                  OUTLINED_FUNCTION_461();
                  sub_1B944B0D4();
                  sub_1B8D9207C(v0, &qword_1EBACC1D0, &unk_1B96B94E0);
                  if ((v144 & 1) == 0)
                  {
                    goto LABEL_25;
                  }

LABEL_57:
                  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__command, &v381);
                  OUTLINED_FUNCTION_89_10();
                  sub_1B8D92024();
                  v0 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__command;
                  OUTLINED_FUNCTION_521(v75 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__command, &v380);
                  v145 = *(v312 + 48);
                  OUTLINED_FUNCTION_481();
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_870_0();
                  v146 = OUTLINED_FUNCTION_538();
                  OUTLINED_FUNCTION_81(v146, v147);
                  if (v84)
                  {
                    sub_1B8D9207C(v102, &qword_1EBAB8E98, &qword_1B964D698);
                    OUTLINED_FUNCTION_37_0(v0 + v145);
                    v148 = v311;
                    if (!v84)
                    {
                      goto LABEL_78;
                    }

                    sub_1B8D9207C(v0, &qword_1EBAB8E98, &qword_1B964D698);
                  }

                  else
                  {
                    sub_1B8D92024();
                    OUTLINED_FUNCTION_37_0(v0 + v145);
                    v148 = v311;
                    if (v149)
                    {
                      v150 = v102;
LABEL_77:
                      sub_1B8D9207C(v150, &qword_1EBAB8E98, &qword_1B964D698);
                      OUTLINED_FUNCTION_190_4();
                      sub_1B944B0D4();
LABEL_78:
                      v85 = &dword_1EBAB8EA0;
                      v86 = &unk_1B964D6A0;
                      goto LABEL_23;
                    }

                    OUTLINED_FUNCTION_17_24();
                    sub_1B944B02C();
                    OUTLINED_FUNCTION_1335();
                    if (!v151)
                    {

                      OUTLINED_FUNCTION_543();
                      sub_1B93EDA54();
                      OUTLINED_FUNCTION_649();

                      if ((v145 & 1) == 0)
                      {
LABEL_98:
                        OUTLINED_FUNCTION_341_0();
                        sub_1B944B0D4();
                        v132 = &qword_1B964D698;
                        OUTLINED_FUNCTION_176_2();
                        sub_1B8D9207C(v190, v191, v192);
                        goto LABEL_49;
                      }
                    }

                    sub_1B964C2B0();
                    OUTLINED_FUNCTION_0_84();
                    sub_1B8CD3068(v152, v153, MEMORY[0x1E69AAC10]);
                    OUTLINED_FUNCTION_481();
                    v327 = sub_1B964C850();
                    OUTLINED_FUNCTION_630_1();
                    sub_1B944B0D4();
                    v154 = OUTLINED_FUNCTION_128();
                    sub_1B8D9207C(v154, v155, &qword_1B964D698);
                    sub_1B944B0D4();
                    sub_1B8D9207C(v0, &qword_1EBAB8E98, &qword_1B964D698);
                    if ((v327 & 1) == 0)
                    {
                      goto LABEL_25;
                    }
                  }

                  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewCommand, &v379);
                  OUTLINED_FUNCTION_84_0();
                  v0 = OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewCommand;
                  OUTLINED_FUNCTION_521(v75 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewCommand, &v378);
                  v156 = *(v312 + 48);
                  OUTLINED_FUNCTION_481();
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_870_0();
                  v157 = OUTLINED_FUNCTION_538();
                  OUTLINED_FUNCTION_81(v157, v158);
                  if (v84)
                  {
                    sub_1B8D9207C(v148, &qword_1EBAB8E98, &qword_1B964D698);
                    OUTLINED_FUNCTION_37_0(v156 + v0);
                    if (v84)
                    {
                      sub_1B8D9207C(v0, &qword_1EBAB8E98, &qword_1B964D698);
LABEL_82:
                      OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItems, &v377);
                      OUTLINED_FUNCTION_521(v75 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItems, &v376);

                      v173 = OUTLINED_FUNCTION_543();
                      sub_1B8D6B7F8(v173, v174);
                      OUTLINED_FUNCTION_743_0();

                      if ((v156 & 1) == 0)
                      {
                        goto LABEL_25;
                      }

                      v176 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSectionDetail;
                      v177 = OUTLINED_FUNCTION_26_6(v175, &v375);
                      v178 = *(v176 + 8);
                      OUTLINED_FUNCTION_505_0(v177, &v374);
                      OUTLINED_FUNCTION_714_0();
                      if (!v84 || v178 != v180)
                      {
                        OUTLINED_FUNCTION_543();
                        v179 = sub_1B964C9F0();
                        if ((v179 & 1) == 0)
                        {
                          goto LABEL_25;
                        }
                      }

                      v182 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__previewButtonItemsTitle;
                      v183 = OUTLINED_FUNCTION_26_6(v179, &v373);
                      v184 = *(v182 + 8);
                      OUTLINED_FUNCTION_505_0(v183, &v372);
                      OUTLINED_FUNCTION_714_0();
                      if (!v84 || v184 != v185)
                      {
                        OUTLINED_FUNCTION_543();
                        if ((sub_1B964C9F0() & 1) == 0)
                        {
                          goto LABEL_25;
                        }
                      }

                      OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &v371);
                      OUTLINED_FUNCTION_84_0();
                      OUTLINED_FUNCTION_521(v75 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &v370);
                      v187 = *(v304 + 48);
                      OUTLINED_FUNCTION_84_0();
                      OUTLINED_FUNCTION_84_0();
                      v188 = OUTLINED_FUNCTION_602();
                      OUTLINED_FUNCTION_81(v188, v189);
                      if (v84)
                      {
                        sub_1B8D9207C(v308, &qword_1EBACB050, &unk_1B96B7BD0);
                        OUTLINED_FUNCTION_37_0(v187 + v309);
                        if (v84)
                        {
                          sub_1B8D9207C(v309, &qword_1EBACB050, &unk_1B96B7BD0);
                          goto LABEL_107;
                        }
                      }

                      else
                      {
                        sub_1B8D92024();
                        OUTLINED_FUNCTION_37_0(v187 + v309);
                        if (!v193)
                        {
                          OUTLINED_FUNCTION_5_36();
                          sub_1B944B02C();
                          if (*(v305 + *(v306 + 20)) != *(v303 + *(v306 + 20)))
                          {

                            OUTLINED_FUNCTION_543();
                            sub_1B947FDE4();
                            OUTLINED_FUNCTION_649();

                            if ((v187 & 1) == 0)
                            {
                              OUTLINED_FUNCTION_1002();
                              sub_1B944B0D4();
                              OUTLINED_FUNCTION_176_2();
                              sub_1B8D9207C(v238, v239, v240);
                              sub_1B944B0D4();
LABEL_133:
                              OUTLINED_FUNCTION_176_2();
                              goto LABEL_24;
                            }
                          }

                          v194 = sub_1B964C2B0();
                          OUTLINED_FUNCTION_0_84();
                          sub_1B8CD3068(v195, v196, MEMORY[0x1E69AAC10]);
                          OUTLINED_FUNCTION_225_4();
                          sub_1B964C850();
                          OUTLINED_FUNCTION_78_7();
                          sub_1B944B0D4();
                          v187 = &qword_1EBACB050;
                          OUTLINED_FUNCTION_466();
                          sub_1B8D9207C(v197, v198, v199);
                          OUTLINED_FUNCTION_196();
                          sub_1B944B0D4();
                          OUTLINED_FUNCTION_466();
                          sub_1B8D9207C(v200, v201, v202);
                          if ((v194 & 1) == 0)
                          {
                            goto LABEL_25;
                          }

LABEL_107:
                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldHideInAmbientMode, &v369);
                          v203 = OUTLINED_FUNCTION_1211();
                          OUTLINED_FUNCTION_521(v203, &v368);
                          OUTLINED_FUNCTION_78_0();
                          if (!v84)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingSwipeButtonItems, &v367);
                          v204 = OUTLINED_FUNCTION_1262();
                          OUTLINED_FUNCTION_521(v204, &v366);
                          OUTLINED_FUNCTION_79_3();

                          v205 = OUTLINED_FUNCTION_543();
                          sub_1B8D6B7F8(v205, v206);
                          OUTLINED_FUNCTION_743_0();

                          if ((v187 & 1) == 0)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingSwipeButtonItems, &v365);
                          v207 = OUTLINED_FUNCTION_1262();
                          OUTLINED_FUNCTION_521(v207, &v364);
                          OUTLINED_FUNCTION_79_3();

                          v208 = OUTLINED_FUNCTION_543();
                          sub_1B8D6B7F8(v208, v209);
                          OUTLINED_FUNCTION_743_0();

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutOptions, &v363);
                          v210 = OUTLINED_FUNCTION_1262();
                          OUTLINED_FUNCTION_521(v210, &v362);
                          OUTLINED_FUNCTION_79_3();

                          v211 = OUTLINED_FUNCTION_543();
                          sub_1B8D67B1C(v211, v212);
                          OUTLINED_FUNCTION_743_0();

                          v214 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerTitle;
                          OUTLINED_FUNCTION_26_6(v213, &v361);
                          v215 = *(v214 + 8);
                          OUTLINED_FUNCTION_1172();
                          OUTLINED_FUNCTION_505_0(v216, &v360);
                          OUTLINED_FUNCTION_714_0();
                          if (!v84 || v215 != v218)
                          {
                            OUTLINED_FUNCTION_543();
                            v217 = sub_1B964C9F0();
                            if ((v217 & 1) == 0)
                            {
                              goto LABEL_25;
                            }
                          }

                          v220 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__punchoutPickerDismissText;
                          OUTLINED_FUNCTION_26_6(v217, &v359);
                          v221 = *(v220 + 8);
                          OUTLINED_FUNCTION_1172();
                          OUTLINED_FUNCTION_505_0(v222, &v358);
                          OUTLINED_FUNCTION_714_0();
                          if (!v84 || v221 != v223)
                          {
                            OUTLINED_FUNCTION_543();
                            if ((sub_1B964C9F0() & 1) == 0)
                            {
                              goto LABEL_25;
                            }
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__canBeHidden, &v357);
                          v225 = OUTLINED_FUNCTION_1211();
                          OUTLINED_FUNCTION_521(v225, &v356);
                          OUTLINED_FUNCTION_78_0();
                          if (!v84)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasTopPadding_p, &v355);
                          v226 = OUTLINED_FUNCTION_1211();
                          OUTLINED_FUNCTION_521(v226, &v354);
                          OUTLINED_FUNCTION_78_0();
                          if (!v84)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hasBottomPadding_p, &v353);
                          v227 = OUTLINED_FUNCTION_1211();
                          OUTLINED_FUNCTION_521(v227, &v352);
                          OUTLINED_FUNCTION_78_0();
                          if (!v84)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_7_7(v228, &v351);
                          OUTLINED_FUNCTION_1172();
                          OUTLINED_FUNCTION_505_0(v229, &v350);
                          v230 = OUTLINED_FUNCTION_220_1();
                          if (!sub_1B8D92198(v230, v231, v232))
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__referencedCommands, &v349);
                          v233 = OUTLINED_FUNCTION_1262();
                          OUTLINED_FUNCTION_521(v233, &v348);
                          OUTLINED_FUNCTION_79_3();

                          v234 = OUTLINED_FUNCTION_543();
                          sub_1B8D9109C(v234, v235);
                          OUTLINED_FUNCTION_743_0();

                          if ((qword_1ED9E1000 & 1) == 0)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__forceEnable3Dtouch, &v347);
                          v236 = OUTLINED_FUNCTION_1211();
                          OUTLINED_FUNCTION_521(v236, &v346);
                          OUTLINED_FUNCTION_78_0();
                          if (!v84)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldShowInSmartDialog, &v345);
                          v237 = OUTLINED_FUNCTION_1211();
                          OUTLINED_FUNCTION_521(v237, &v344);
                          OUTLINED_FUNCTION_78_0();
                          if (!v84)
                          {
                            goto LABEL_25;
                          }

                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__appEntityAnnotation, &v343);
                          OUTLINED_FUNCTION_89_10();
                          sub_1B8D92024();
                          OUTLINED_FUNCTION_521(v307 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__appEntityAnnotation, &v342);
                          v241 = *(v296 + 48);
                          OUTLINED_FUNCTION_89_10();
                          sub_1B8D92024();
                          OUTLINED_FUNCTION_84_0();
                          v242 = OUTLINED_FUNCTION_355();
                          OUTLINED_FUNCTION_178(v242, v243, v298);
                          if (v84)
                          {
                            sub_1B8D9207C(v297, &unk_1EBACC1D8, &qword_1B96B94F0);
                            OUTLINED_FUNCTION_178(v299 + v241, 1, v298);
                            if (v84)
                            {
                              v244 = sub_1B8D9207C(v299, &unk_1EBACC1D8, &qword_1B96B94F0);
                              goto LABEL_144;
                            }
                          }

                          else
                          {
                            sub_1B8D92024();
                            OUTLINED_FUNCTION_178(v299 + v241, 1, v298);
                            if (!v245)
                            {
                              OUTLINED_FUNCTION_47_13();
                              sub_1B944B02C();
                              v246 = OUTLINED_FUNCTION_502();
                              static Searchfoundation_AppEntityAnnotation.== infix(_:_:)(v246, v247);
                              OUTLINED_FUNCTION_992();
                              sub_1B944B0D4();
                              OUTLINED_FUNCTION_466();
                              sub_1B8D9207C(v248, v249, v250);
                              sub_1B944B0D4();
                              v251 = OUTLINED_FUNCTION_541_0();
                              v244 = sub_1B8D9207C(v251, v252, &qword_1B96B94F0);
                              if ((v299 & 1) == 0)
                              {
                                goto LABEL_25;
                              }

LABEL_144:
                              v253 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__emphasisSubjectID;
                              OUTLINED_FUNCTION_26_6(v244, &v341);
                              v254 = *(v253 + 8);
                              OUTLINED_FUNCTION_1172();
                              OUTLINED_FUNCTION_505_0(v255, &v340);
                              OUTLINED_FUNCTION_714_0();
                              if (v84)
                              {
                                v258 = v254 == v257;
                              }

                              else
                              {
                                v258 = 0;
                              }

                              if (!v258)
                              {
                                OUTLINED_FUNCTION_543();
                                v256 = sub_1B964C9F0();
                                if ((v256 & 1) == 0)
                                {
                                  goto LABEL_25;
                                }
                              }

                              OUTLINED_FUNCTION_7_7(v256, &v339);
                              OUTLINED_FUNCTION_1172();
                              OUTLINED_FUNCTION_505_0(v259, &v338);
                              v260 = OUTLINED_FUNCTION_220_1();
                              if (!sub_1B8D92198(v260, v261, v262))
                              {
                                goto LABEL_25;
                              }

                              OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryCommand, &v337);
                              OUTLINED_FUNCTION_89_10();
                              sub_1B8D92024();
                              OUTLINED_FUNCTION_521(v307 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryCommand, &v336);
                              v263 = *(v312 + 48);
                              OUTLINED_FUNCTION_89_10();
                              sub_1B8D92024();
                              OUTLINED_FUNCTION_84_0();
                              v264 = OUTLINED_FUNCTION_355();
                              OUTLINED_FUNCTION_178(v264, v265, v313);
                              if (v84)
                              {
                                sub_1B8D9207C(v300, &qword_1EBAB8E98, &qword_1B964D698);
                                OUTLINED_FUNCTION_178(v295 + v263, 1, v313);
                                if (v84)
                                {
                                  v266 = sub_1B8D9207C(v295, &qword_1EBAB8E98, &qword_1B964D698);
LABEL_162:
                                  OUTLINED_FUNCTION_7_7(v266, &v335);
                                  OUTLINED_FUNCTION_1172();
                                  OUTLINED_FUNCTION_505_0(v277, &v334);
                                  v278 = OUTLINED_FUNCTION_220_1();
                                  v281 = sub_1B8D92198(v278, v279, v280);
                                  if (v281)
                                  {
                                    v282 = v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackSubfeatureID;
                                    OUTLINED_FUNCTION_26_6(v281, &v333);
                                    v283 = *(v282 + 8);
                                    OUTLINED_FUNCTION_1172();
                                    OUTLINED_FUNCTION_505_0(v284, &v332);
                                    OUTLINED_FUNCTION_714_0();
                                    v286 = v84 && v283 == v285;
                                    if (v286 || (OUTLINED_FUNCTION_543(), (sub_1B964C9F0() & 1) != 0))
                                    {
                                      OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__racFeedbackLoggingContent, &v331);
                                      v287 = OUTLINED_FUNCTION_1262();
                                      OUTLINED_FUNCTION_521(v287, &v330);
                                      OUTLINED_FUNCTION_79_3();

                                      v288 = OUTLINED_FUNCTION_543();
                                      sub_1B8DB02F8(v288, v289);
                                      OUTLINED_FUNCTION_743_0();

                                      if (qword_1ED9E1000)
                                      {
                                        OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__copyableItems, &v329);
                                        OUTLINED_FUNCTION_521(v307 + OBJC_IVAR____TtCV10PegasusAPI28Searchfoundation_CardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__copyableItems, &v328);

                                        v290 = OUTLINED_FUNCTION_303();
                                        sub_1B8D7A8D4(v290, v291);

                                        goto LABEL_26;
                                      }
                                    }
                                  }

                                  goto LABEL_25;
                                }
                              }

                              else
                              {
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_178(v295 + v263, 1, v313);
                                if (!v267)
                                {
                                  OUTLINED_FUNCTION_17_24();
                                  sub_1B944B02C();
                                  if (*(v301 + *(v313 + 20)) == *(v302 + *(v313 + 20)) || (, , OUTLINED_FUNCTION_543(), sub_1B93EDA54(), OUTLINED_FUNCTION_649(), , (v263 & 1) != 0))
                                  {
                                    sub_1B964C2B0();
                                    OUTLINED_FUNCTION_0_84();
                                    sub_1B8CD3068(v268, v269, MEMORY[0x1E69AAC10]);
                                    OUTLINED_FUNCTION_541_0();
                                    v270 = sub_1B964C850();
                                    OUTLINED_FUNCTION_630_1();
                                    sub_1B944B0D4();
                                    OUTLINED_FUNCTION_466();
                                    sub_1B8D9207C(v271, v272, v273);
                                    OUTLINED_FUNCTION_196();
                                    sub_1B944B0D4();
                                    OUTLINED_FUNCTION_466();
                                    v266 = sub_1B8D9207C(v274, v275, v276);
                                    if (v270)
                                    {
                                      goto LABEL_162;
                                    }

LABEL_25:

                                    goto LABEL_26;
                                  }

                                  OUTLINED_FUNCTION_341_0();
                                  sub_1B944B0D4();
                                  OUTLINED_FUNCTION_176_2();
                                  sub_1B8D9207C(v292, v293, v294);
                                  sub_1B944B0D4();
                                  goto LABEL_133;
                                }

                                sub_1B8D9207C(v300, &qword_1EBAB8E98, &qword_1B964D698);
                                OUTLINED_FUNCTION_190_4();
                                sub_1B944B0D4();
                              }

                              v85 = &dword_1EBAB8EA0;
                              v86 = &unk_1B964D6A0;
                              v105 = v295;
                              goto LABEL_24;
                            }

                            sub_1B8D9207C(v297, &unk_1EBACC1D8, &qword_1B96B94F0);
                            OUTLINED_FUNCTION_271_2();
                            sub_1B944B0D4();
                          }

                          v85 = &qword_1EBACC668;
                          v86 = &qword_1B96B99E0;
                          v105 = v299;
                          goto LABEL_24;
                        }

                        sub_1B8D9207C(v308, &qword_1EBACB050, &unk_1B96B7BD0);
                        OUTLINED_FUNCTION_32_19();
                        sub_1B944B0D4();
                      }

                      v85 = &qword_1EBACB058;
                      v86 = &unk_1B96CA9D0;
                      v105 = v309;
LABEL_24:
                      sub_1B8D9207C(v105, v85, v86);
                      goto LABEL_25;
                    }

                    goto LABEL_78;
                  }

                  sub_1B8D92024();
                  OUTLINED_FUNCTION_37_0(v156 + v0);
                  if (!v162)
                  {
                    OUTLINED_FUNCTION_17_24();
                    sub_1B944B02C();
                    OUTLINED_FUNCTION_1335();
                    if (v163 || (, , OUTLINED_FUNCTION_543(), sub_1B93EDA54(), OUTLINED_FUNCTION_649(), , (v156 & 1) != 0))
                    {
                      sub_1B964C2B0();
                      OUTLINED_FUNCTION_0_84();
                      sub_1B8CD3068(v164, v165, MEMORY[0x1E69AAC10]);
                      OUTLINED_FUNCTION_481();
                      v166 = sub_1B964C850();
                      OUTLINED_FUNCTION_630_1();
                      sub_1B944B0D4();
                      v156 = &qword_1EBAB8E98;
                      OUTLINED_FUNCTION_466();
                      sub_1B8D9207C(v167, v168, v169);
                      sub_1B944B0D4();
                      OUTLINED_FUNCTION_466();
                      sub_1B8D9207C(v170, v171, v172);
                      if ((v166 & 1) == 0)
                      {
                        goto LABEL_25;
                      }

                      goto LABEL_82;
                    }

                    goto LABEL_98;
                  }

                  v150 = v148;
                  goto LABEL_77;
                }

                sub_1B944B0D4();
                v132 = &unk_1B96B94E0;
                OUTLINED_FUNCTION_176_2();
                sub_1B8D9207C(v159, v160, v161);
LABEL_49:
                sub_1B944B0D4();
                v105 = OUTLINED_FUNCTION_246();
                v86 = v132;
                goto LABEL_24;
              }

              sub_1B8D9207C(v318, &qword_1EBACC1D0, &unk_1B96B94E0);
              OUTLINED_FUNCTION_273_1();
              sub_1B944B0D4();
            }

            v85 = &qword_1EBACC5A0;
            v86 = &unk_1B96B9900;
LABEL_23:
            v105 = v0;
            goto LABEL_24;
          }
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_57(v0 + v99);
          v102 = v324;
          if (!v104)
          {
            OUTLINED_FUNCTION_49_15();
            sub_1B944B02C();
            if (*(v320 + *(v322 + 20)) != *(v317 + *(v322 + 20)))
            {

              OUTLINED_FUNCTION_113_0();
              sub_1B936C76C();
              v107 = v106;

              if ((v107 & 1) == 0)
              {
                sub_1B944B0D4();
                v132 = &unk_1B9689680;
                OUTLINED_FUNCTION_176_2();
                sub_1B8D9207C(v136, v137, v138);
                goto LABEL_49;
              }
            }

            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v108, v109, MEMORY[0x1E69AAC10]);
            LOBYTE(v99) = v1;
            OUTLINED_FUNCTION_867_0();
            v326 = sub_1B964C850();
            sub_1B944B0D4();
            sub_1B8D9207C(v323, &qword_1EBAC3D58, &unk_1B9689680);
            sub_1B944B0D4();
            v110 = OUTLINED_FUNCTION_311();
            sub_1B8D9207C(v110, v111, &unk_1B9689680);
            v103 = v318;
            if ((v326 & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_30;
          }

          sub_1B8D9207C(v323, &qword_1EBAC3D58, &unk_1B9689680);
          OUTLINED_FUNCTION_274_2();
          sub_1B944B0D4();
        }

        v85 = &qword_1EBAC3D88;
        v86 = &unk_1B96B98E0;
        goto LABEL_23;
      }

      sub_1B8D9207C(v2, &qword_1EBACC1C8, &unk_1B96B94D0);
      OUTLINED_FUNCTION_222();
      sub_1B944B0D4();
    }

    v85 = &qword_1EBACE788;
    v86 = &qword_1B96CA710;
    goto LABEL_23;
  }

LABEL_26:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9378F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDED0, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9378FF8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9379068(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93790F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4E80);
  __swift_project_value_buffer(v0, qword_1EBAB4E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1B96B8DB0;
  v4 = v228 + v3 + v1[14];
  *(v228 + v3) = 1;
  *v4 = "appLinkCardSection";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v228 + v3 + v2 + v1[14];
  *(v228 + v3 + v2) = 2;
  *v8 = "descriptionCardSection";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v228 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "keyValueDataCardSection";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v7();
  v11 = (v228 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "mapCardSection";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v228 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "mediaInfoCardSection";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v228 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "mediaPlayerCardSection";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v228 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "nowPlayingCardSection";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  v19 = (v228 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "richTitleCardSection";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v7();
  v21 = (v228 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "rowCardSection";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v228 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "scoreboardCardSection";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v7();
  v25 = (v228 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "socialMediaPostCardSection";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v7();
  v27 = (v228 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "stockChartCardSection";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v7();
  v29 = (v228 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "tableHeaderRowCardSection";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v228 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "tableRowCardSection";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v7();
  v33 = (v228 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "textColumnsCardSection";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v7();
  v35 = (v228 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "titleCardSection";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v7();
  v37 = (v228 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "trackListCardSection";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v228 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "audioPlaybackCardSection";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v228 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "flightCardSection";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v228 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "activityIndicatorCardSection";
  *(v44 + 1) = 28;
  v44[16] = 2;
  v7();
  v45 = (v228 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "webCardSection";
  *(v46 + 1) = 14;
  v46[16] = 2;
  v7();
  v47 = (v228 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "messageCardSection";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v7();
  v49 = (v228 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "detailedRowCardSection";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v7();
  v51 = (v228 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "imagesCardSection";
  *(v52 + 1) = 17;
  v52[16] = 2;
  v7();
  v53 = (v228 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "suggestionCardSection";
  *(v54 + 1) = 21;
  v54[16] = 2;
  v7();
  v55 = (v228 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "selectableGridCardSection";
  *(v56 + 1) = 25;
  v56[16] = 2;
  v7();
  v57 = (v228 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "sectionHeaderCardSection";
  *(v58 + 1) = 24;
  v58[16] = 2;
  v7();
  v59 = (v228 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "metaInfoCardSection";
  *(v60 + 1) = 19;
  v60[16] = 2;
  v7();
  v61 = (v228 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "watchListCardSection";
  *(v62 + 1) = 20;
  v62[16] = 2;
  v7();
  v63 = (v228 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "mapsDetailedRowCardSection";
  *(v64 + 1) = 26;
  v64[16] = 2;
  v7();
  v65 = (v228 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "buttonCardSection";
  *(v66 + 1) = 17;
  v66[16] = 2;
  v7();
  v67 = (v228 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "horizontalButtonCardSection";
  *(v68 + 1) = 27;
  v68[16] = 2;
  v7();
  v69 = (v228 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "verticalLayoutCardSection";
  *(v70 + 1) = 25;
  v70[16] = 2;
  v7();
  v71 = (v228 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "productCardSection";
  *(v72 + 1) = 18;
  v72[16] = 2;
  v7();
  v73 = (v228 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "horizontalScrollCardSection";
  *(v74 + 1) = 27;
  v74[16] = 2;
  v7();
  v75 = (v228 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "mediaRemoteControlCardSection";
  *(v76 + 1) = 29;
  v76[16] = 2;
  v7();
  v77 = (v228 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "mapPlaceCardSection";
  *(v78 + 1) = 19;
  v78[16] = 2;
  v7();
  v79 = (v228 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "compactRowCardSection";
  *(v80 + 1) = 21;
  v80[16] = 2;
  v7();
  v81 = (v228 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "worldMapCardSection";
  *(v82 + 1) = 19;
  v82[16] = 2;
  v7();
  v83 = (v228 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "attributionFooterCardSection";
  *(v84 + 1) = 28;
  v84[16] = 2;
  v7();
  v85 = (v228 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "gridCardSection";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v7();
  v87 = (v228 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "personHeaderCardSection";
  *(v88 + 1) = 23;
  v88[16] = 2;
  v7();
  v89 = (v228 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "colorBarCardSection";
  *(v90 + 1) = 19;
  v90[16] = 2;
  v7();
  v91 = (v228 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "splitCardSection";
  *(v92 + 1) = 16;
  v92[16] = 2;
  v7();
  v93 = (v228 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "linkPresentationCardSection";
  *(v94 + 1) = 27;
  v94[16] = 2;
  v7();
  v95 = (v228 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "findMyCardSection";
  *(v96 + 1) = 17;
  v96[16] = 2;
  v7();
  v97 = (v228 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "heroCardSection";
  *(v98 + 1) = 15;
  v98[16] = 2;
  v7();
  v99 = (v228 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "newsCardSection";
  *(v100 + 1) = 15;
  v100[16] = 2;
  v7();
  v101 = (v228 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "miniCardSection";
  *(v102 + 1) = 15;
  v102[16] = 2;
  v7();
  v103 = (v228 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "infoCardSection";
  *(v104 + 1) = 15;
  v104[16] = 2;
  v7();
  v105 = (v228 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "collectionCardSection";
  *(v106 + 1) = 21;
  v106[16] = 2;
  v7();
  v107 = (v228 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "combinedCardSection";
  *(v108 + 1) = 19;
  v108[16] = 2;
  v7();
  v109 = (v228 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "responseWrapperCardSection";
  *(v110 + 1) = 26;
  v110[16] = 2;
  v7();
  v111 = (v228 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "listenToCardSection";
  *(v112 + 1) = 19;
  v112[16] = 2;
  v7();
  v113 = (v228 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "watchNowCardSection";
  *(v114 + 1) = 19;
  v114[16] = 2;
  v7();
  v115 = (v228 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "strokeAnimationCardSection";
  *(v116 + 1) = 26;
  v116[16] = 2;
  v7();
  v117 = (v228 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "buttonListCardSection";
  *(v118 + 1) = 21;
  v118[16] = 2;
  v7();
  v119 = (v228 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "commandRowCardSection";
  *(v120 + 1) = 21;
  v120[16] = 2;
  v7();
  v121 = (v228 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "leadingTrailingCardSection";
  *(v122 + 1) = 26;
  v122[16] = 2;
  v7();
  v123 = (v228 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "heroTitleCardSection";
  *(v124 + 1) = 20;
  v124[16] = 2;
  v7();
  v125 = (v228 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "archiveViewCardSection";
  *(v126 + 1) = 22;
  v126[16] = 2;
  v7();
  v127 = (v228 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 63;
  *v128 = "appIconCardSection";
  *(v128 + 1) = 18;
  v128[16] = 2;
  v7();
  v129 = (v228 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 64;
  *v130 = "largeTitleDetailedRowCardSection";
  *(v130 + 1) = 32;
  v130[16] = 2;
  v7();
  v131 = (v228 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 90;
  *v132 = "safariTableOfContentsCardSection";
  *(v132 + 1) = 32;
  v132[16] = 2;
  v7();
  v133 = (v228 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 200;
  *v134 = "rfSummaryItemShortNumberCardSection";
  *(v134 + 1) = 35;
  v134[16] = 2;
  v7();
  v135 = (v228 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 201;
  *v136 = "rfSummaryItemTextCardSection";
  *(v136 + 1) = 28;
  v136[16] = 2;
  v7();
  v137 = (v228 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 202;
  *v138 = "rfSummaryItemStandardCardSection";
  *(v138 + 1) = 32;
  v138[16] = 2;
  v7();
  v139 = (v228 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 203;
  *v140 = "rfFactItemShortNumberCardSection";
  *(v140 + 1) = 32;
  v140[16] = 2;
  v7();
  v141 = (v228 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 204;
  *v142 = "rfFactItemStandardCardSection";
  *(v142 + 1) = 29;
  v142[16] = 2;
  v7();
  v143 = (v228 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 205;
  *v144 = "rfLongItemStandardCardSection";
  *(v144 + 1) = 29;
  v144[16] = 2;
  v7();
  v145 = (v228 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 206;
  *v146 = "rfPrimaryHeaderRichCardSection";
  *(v146 + 1) = 30;
  v146[16] = 2;
  v7();
  v147 = (v228 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 207;
  *v148 = "rfPrimaryHeaderStandardCardSection";
  *(v148 + 1) = 34;
  v148[16] = 2;
  v7();
  v149 = (v228 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 208;
  *v150 = "rfReferenceFootnoteCardSection";
  *(v150 + 1) = 30;
  v150[16] = 2;
  v7();
  v151 = (v228 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 209;
  *v152 = "rfReferenceRichCardSection";
  *(v152 + 1) = 26;
  v152[16] = 2;
  v7();
  v153 = (v228 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 210;
  *v154 = "rfSimpleItemRichCardSection";
  *(v154 + 1) = 27;
  v154[16] = 2;
  v7();
  v155 = (v228 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 211;
  *v156 = "rfSimpleItemStandardCardSection";
  *(v156 + 1) = 31;
  v156[16] = 2;
  v7();
  v157 = (v228 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 212;
  *v158 = "rfSummaryItemAlignedTextCardSection";
  *(v158 + 1) = 35;
  v158[16] = 2;
  v7();
  v159 = (v228 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 213;
  *v160 = "rfExpandableStandardCardSection";
  *(v160 + 1) = 31;
  v160[16] = 2;
  v7();
  v161 = (v228 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 214;
  *v162 = "rfFactItemButtonCardSection";
  *(v162 + 1) = 27;
  v162[16] = 2;
  v7();
  v163 = (v228 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 215;
  *v164 = "rfFactItemHeroNumberCardSection";
  *(v164 + 1) = 31;
  v164[16] = 2;
  v7();
  v165 = (v228 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 216;
  *v166 = "rfPrimaryHeaderMarqueeCardSection";
  *(v166 + 1) = 33;
  v166[16] = 2;
  v7();
  v167 = (v228 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 217;
  *v168 = "rfSummaryItemDetailedTextCardSection";
  *(v168 + 1) = 36;
  v168[16] = 2;
  v7();
  v169 = (v228 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 218;
  *v170 = "rfSimpleItemPlayerCardSection";
  *(v170 + 1) = 29;
  v170[16] = 2;
  v7();
  v171 = (v228 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 219;
  *v172 = "rfSummaryItemPairCardSection";
  *(v172 + 1) = 28;
  v172[16] = 2;
  v7();
  v173 = (v228 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 220;
  *v174 = "rfSummaryItemPairNumberCardSection";
  *(v174 + 1) = 34;
  v174[16] = 2;
  v7();
  v175 = (v228 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 221;
  *v176 = "rfFactItemShortHeroNumberCardSection";
  *(v176 + 1) = 36;
  v176[16] = 2;
  v7();
  v177 = (v228 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 222;
  *v178 = "rfFactItemDetailedNumberCardSection";
  *(v178 + 1) = 35;
  v178[16] = 2;
  v7();
  v179 = (v228 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 223;
  *v180 = "rfFactItemHeroButtonCardSection";
  *(v180 + 1) = 31;
  v180[16] = 2;
  v7();
  v181 = (v228 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 224;
  *v182 = "rfFactItemImageRightCardSection";
  *(v182 + 1) = 31;
  v182[16] = 2;
  v7();
  v183 = (v228 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 225;
  *v184 = "rfSummaryItemSwitchV2CardSection";
  *(v184 + 1) = 32;
  v184[16] = 2;
  v7();
  v185 = (v228 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 226;
  *v186 = "rfTableHeaderCardSection";
  *(v186 + 1) = 24;
  v186[16] = 2;
  v7();
  v187 = (v228 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 227;
  *v188 = "rfTableRowCardSection";
  *(v188 + 1) = 21;
  v188[16] = 2;
  v7();
  v189 = (v228 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 228;
  *v190 = "rfSimpleItemVisualElementCardSection";
  *(v190 + 1) = 36;
  v190[16] = 2;
  v7();
  v191 = (v228 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 229;
  *v192 = "rfSummaryItemPlayerCardSection";
  *(v192 + 1) = 30;
  v192[16] = 2;
  v7();
  v193 = (v228 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 230;
  *v194 = "rfSummaryItemImageRightCardSection";
  *(v194 + 1) = 34;
  v194[16] = 2;
  v7();
  v195 = (v228 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 231;
  *v196 = "rfSummaryItemButtonCardSection";
  *(v196 + 1) = 30;
  v196[16] = 2;
  v7();
  v197 = (v228 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 232;
  *v198 = "rfSimpleItemReverseRichCardSection";
  *(v198 + 1) = 34;
  v198[16] = 2;
  v7();
  v199 = (v228 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 233;
  *v200 = "rfSimpleItemRichSearchResultCardSection";
  *(v200 + 1) = 39;
  v200[16] = 2;
  v7();
  v201 = (v228 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 234;
  *v202 = "rfPrimaryHeaderStackedImageCardSection";
  *(v202 + 1) = 38;
  v202[16] = 2;
  v7();
  v203 = (v228 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 235;
  *v204 = "rfReferenceItemLogoCardSection";
  *(v204 + 1) = 30;
  v204[16] = 2;
  v7();
  v205 = (v228 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 236;
  *v206 = "rfReferenceItemButtonCardSection";
  *(v206 + 1) = 32;
  v206[16] = 2;
  v7();
  v207 = (v228 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 237;
  *v208 = "rfButtonCardSection";
  *(v208 + 1) = 19;
  v208[16] = 2;
  v7();
  v209 = (v228 + v3 + 102 * v2);
  v210 = v209 + v1[14];
  *v209 = 238;
  *v210 = "rfBinaryButtonCardSection";
  *(v210 + 1) = 25;
  v210[16] = 2;
  v7();
  v211 = (v228 + v3 + 103 * v2);
  v212 = v211 + v1[14];
  *v211 = 239;
  *v212 = "rfReferenceCenteredCardSection";
  *(v212 + 1) = 30;
  v212[16] = 2;
  v7();
  v213 = (v228 + v3 + 104 * v2);
  v214 = v213 + v1[14];
  *v213 = 240;
  *v214 = "rfSecondaryHeaderStandardCardSection";
  *(v214 + 1) = 36;
  v214[16] = 2;
  v7();
  v215 = (v228 + v3 + 105 * v2);
  v216 = v215 + v1[14];
  *v215 = 241;
  *v216 = "rfSecondaryHeaderEmphasizedCardSection";
  *(v216 + 1) = 38;
  v216[16] = 2;
  v7();
  v217 = (v228 + v3 + 106 * v2);
  v218 = v217 + v1[14];
  *v217 = 242;
  *v218 = "rfMapCardSection";
  *(v218 + 1) = 16;
  v218[16] = 2;
  v7();
  v219 = (v228 + v3 + 107 * v2);
  v220 = v219 + v1[14];
  *v219 = 243;
  *v220 = "rfReferenceStandardCardSection";
  *(v220 + 1) = 30;
  v220[16] = 2;
  v7();
  v221 = (v228 + v3 + 108 * v2);
  v222 = v221 + v1[14];
  *v221 = 744;
  *v222 = "rfMultiButtonCardSection";
  *(v222 + 1) = 24;
  v222[16] = 2;
  v7();
  v223 = (v228 + v3 + 109 * v2);
  v224 = v223 + v1[14];
  *v223 = 745;
  *v224 = "rfDisambiguationTitleCardSection";
  *(v224 + 1) = 32;
  v224[16] = 2;
  v7();
  v225 = (v228 + v3 + 110 * v2);
  v226 = v225 + v1[14];
  *v225 = 246;
  *v226 = "rfSummaryItemExpandableCardSection";
  *(v226 + 1) = 34;
  v226[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B937AD5C()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__appLinkCardSection;
  v2 = type metadata accessor for Searchfoundation_AppLinkCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionCardSection;
  v4 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__keyValueDataCardSection;
  v6 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapCardSection;
  v8 = type metadata accessor for Searchfoundation_MapCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaInfoCardSection;
  v10 = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaPlayerCardSection;
  v12 = type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__nowPlayingCardSection;
  v14 = type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTitleCardSection;
  v16 = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rowCardSection;
  v18 = type metadata accessor for Searchfoundation_RowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__scoreboardCardSection;
  v20 = type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__socialMediaPostCardSection;
  v22 = type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__stockChartCardSection;
  v24 = type metadata accessor for Searchfoundation_StockChartCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableHeaderRowCardSection;
  v26 = type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableRowCardSection;
  v28 = type metadata accessor for Searchfoundation_TableRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__textColumnsCardSection;
  v30 = type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleCardSection;
  v32 = type metadata accessor for Searchfoundation_TitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__trackListCardSection;
  v34 = type metadata accessor for Searchfoundation_TrackListCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioPlaybackCardSection;
  v36 = type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__flightCardSection;
  v38 = type metadata accessor for Searchfoundation_FlightCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__activityIndicatorCardSection;
  v40 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__webCardSection;
  v42 = type metadata accessor for Searchfoundation_WebCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__messageCardSection;
  v44 = type metadata accessor for Searchfoundation_MessageCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__detailedRowCardSection;
  v46 = type metadata accessor for Searchfoundation_DetailedRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__imagesCardSection;
  v48 = type metadata accessor for Searchfoundation_ImagesCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__suggestionCardSection;
  v50 = type metadata accessor for Searchfoundation_SuggestionCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__selectableGridCardSection;
  v52 = type metadata accessor for Searchfoundation_SelectableGridCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionHeaderCardSection;
  v54 = type metadata accessor for Searchfoundation_SectionHeaderCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__metaInfoCardSection;
  v56 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v55, 1, 1, v56);
  v57 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListCardSection;
  v58 = type metadata accessor for Searchfoundation_WatchListCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v57, 1, 1, v58);
  v59 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapsDetailedRowCardSection;
  v60 = type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v59, 1, 1, v60);
  v61 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonCardSection;
  v62 = type metadata accessor for Searchfoundation_ButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v61, 1, 1, v62);
  v63 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalButtonCardSection;
  v64 = type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v63, 1, 1, v64);
  v65 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__verticalLayoutCardSection;
  v66 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__productCardSection;
  v68 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v67, 1, 1, v68);
  v69 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalScrollCardSection;
  v70 = type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v69, 1, 1, v70);
  v71 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaRemoteControlCardSection;
  v72 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapPlaceCardSection;
  v74 = type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__compactRowCardSection;
  v76 = type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v75, 1, 1, v76);
  v77 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__worldMapCardSection;
  v78 = type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v77, 1, 1, v78);
  v79 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__attributionFooterCardSection;
  v80 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v79, 1, 1, v80);
  v81 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__gridCardSection;
  v82 = type metadata accessor for Searchfoundation_GridCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v81, 1, 1, v82);
  v83 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__personHeaderCardSection;
  v84 = type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v83, 1, 1, v84);
  v85 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__colorBarCardSection;
  v86 = type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__splitCardSection;
  v88 = type metadata accessor for Searchfoundation_SplitCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v87, 1, 1, v88);
  v89 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__linkPresentationCardSection;
  v90 = type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v89, 1, 1, v90);
  v91 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__findMyCardSection;
  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v91, 1, 1, MyCardSection);
  v93 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroCardSection;
  v94 = type metadata accessor for Searchfoundation_HeroCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v93, 1, 1, v94);
  v95 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__newsCardSection;
  v96 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v95, 1, 1, v96);
  v97 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__miniCardSection;
  v98 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v97, 1, 1, v98);
  v99 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__infoCardSection;
  v100 = type metadata accessor for Searchfoundation_InfoCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionCardSection;
  v102 = type metadata accessor for Searchfoundation_CollectionCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v101, 1, 1, v102);
  v103 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__combinedCardSection;
  v104 = type metadata accessor for Searchfoundation_CombinedCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v103, 1, 1, v104);
  v105 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__responseWrapperCardSection;
  v106 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v105, 1, 1, v106);
  v107 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__listenToCardSection;
  v108 = type metadata accessor for Searchfoundation_ListenToCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v107, 1, 1, v108);
  v109 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchNowCardSection;
  v110 = type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v109, 1, 1, v110);
  v111 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__strokeAnimationCardSection;
  v112 = type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v111, 1, 1, v112);
  v113 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonListCardSection;
  v114 = type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v113, 1, 1, v114);
  v115 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandRowCardSection;
  v116 = type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v115, 1, 1, v116);
  v117 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingTrailingCardSection;
  v118 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v117, 1, 1, v118);
  v119 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroTitleCardSection;
  v120 = type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v119, 1, 1, v120);
  v121 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__archiveViewCardSection;
  v122 = type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v121, 1, 1, v122);
  v123 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__appIconCardSection;
  v124 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v123, 1, 1, v124);
  v125 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__largeTitleDetailedRowCardSection;
  v126 = type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v125, 1, 1, v126);
  v127 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__safariTableOfContentsCardSection;
  v128 = type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v127, 1, 1, v128);
  v129 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemShortNumberCardSection;
  v130 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v129, 1, 1, v130);
  v131 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemTextCardSection;
  v132 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v131, 1, 1, v132);
  v133 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemStandardCardSection;
  v134 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v133, 1, 1, v134);
  v135 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortNumberCardSection;
  v136 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v135, 1, 1, v136);
  v137 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemStandardCardSection;
  v138 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v137, 1, 1, v138);
  v139 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfLongItemStandardCardSection;
  v140 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v139, 1, 1, v140);
  v141 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderRichCardSection;
  v142 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v141, 1, 1, v142);
  v143 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStandardCardSection;
  v144 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v143, 1, 1, v144);
  v145 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceFootnoteCardSection;
  v146 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v145, 1, 1, v146);
  v147 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceRichCardSection;
  v148 = type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v147, 1, 1, v148);
  v149 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichCardSection;
  v150 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v149, 1, 1, v150);
  v151 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemStandardCardSection;
  v152 = type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v151, 1, 1, v152);
  v153 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemAlignedTextCardSection;
  v154 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v153, 1, 1, v154);
  v155 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfExpandableStandardCardSection;
  v156 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v155, 1, 1, v156);
  v157 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemButtonCardSection;
  v158 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v157, 1, 1, v158);
  v159 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroNumberCardSection;
  v160 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v159, 1, 1, v160);
  v161 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderMarqueeCardSection;
  v162 = type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v161, 1, 1, v162);
  v163 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemDetailedTextCardSection;
  v164 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v163, 1, 1, v164);
  v165 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemPlayerCardSection;
  v166 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v165, 1, 1, v166);
  v167 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairCardSection;
  v168 = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v167, 1, 1, v168);
  v169 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairNumberCardSection;
  v170 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v169, 1, 1, v170);
  v171 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortHeroNumberCardSection;
  v172 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v171, 1, 1, v172);
  v173 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemDetailedNumberCardSection;
  v174 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v173, 1, 1, v174);
  v175 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroButtonCardSection;
  v176 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v175, 1, 1, v176);
  v177 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemImageRightCardSection;
  v178 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v177, 1, 1, v178);
  v179 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemSwitchV2CardSection;
  v180 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v179, 1, 1, v180);
  v181 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableHeaderCardSection;
  v182 = type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v181, 1, 1, v182);
  v183 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableRowCardSection;
  v184 = type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v183, 1, 1, v184);
  v185 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemVisualElementCardSection;
  v186 = type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v185, 1, 1, v186);
  v187 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPlayerCardSection;
  v188 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v187, 1, 1, v188);
  v189 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemImageRightCardSection;
  v190 = type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v189, 1, 1, v190);
  v191 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemButtonCardSection;
  v192 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v191, 1, 1, v192);
  v193 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemReverseRichCardSection;
  v194 = type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v193, 1, 1, v194);
  v195 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichSearchResultCardSection;
  v196 = type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v195, 1, 1, v196);
  v197 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStackedImageCardSection;
  v198 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v197, 1, 1, v198);
  v199 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemLogoCardSection;
  v200 = type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v199, 1, 1, v200);
  v201 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemButtonCardSection;
  v202 = type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v201, 1, 1, v202);
  v203 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfButtonCardSection;
  v204 = type metadata accessor for Searchfoundation_RFButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v203, 1, 1, v204);
  v205 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfBinaryButtonCardSection;
  v206 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v205, 1, 1, v206);
  v207 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceCenteredCardSection;
  v208 = type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v207, 1, 1, v208);
  v209 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderStandardCardSection;
  v210 = type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v209, 1, 1, v210);
  v211 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderEmphasizedCardSection;
  v212 = type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v211, 1, 1, v212);
  v213 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMapCardSection;
  v214 = type metadata accessor for Searchfoundation_RFMapCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v213, 1, 1, v214);
  v215 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceStandardCardSection;
  v216 = type metadata accessor for Searchfoundation_RFReferenceStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v215, 1, 1, v216);
  v217 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMultiButtonCardSection;
  v218 = type metadata accessor for Searchfoundation_RFMultiButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v217, 1, 1, v218);
  v219 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfDisambiguationTitleCardSection;
  v220 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v219, 1, 1, v220);
  v221 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemExpandableCardSection;
  v222 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v221, 1, 1, v222);
  return v0;
}

uint64_t sub_1B937BD18(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC550, &qword_1B96B9868);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v445[216] = v445 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC548, &qword_1B96B9860);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v445[215] = v445 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC540, &qword_1B96B9858);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v445[214] = v445 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC538, &qword_1B96B9850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v445[213] = v445 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC530, &qword_1B96B9848);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v445[212] = v445 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC528, &qword_1B96B9840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v445[211] = v445 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC520, &qword_1B96B9838);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v445[210] = v445 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC518, &qword_1B96B9830);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v445[209] = v445 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC510, &qword_1B96B9828);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v445[208] = v445 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC508, &qword_1B96B9820);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v445[207] = v445 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC500, &qword_1B96B9818);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v445[206] = v445 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4F8, &qword_1B96B9810);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v445[205] = v445 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC4F0, &qword_1B96B9808);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v445[204] = v445 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4E8, &qword_1B96B9800);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v445[203] = v445 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4E0, &qword_1B96B97F8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v445[202] = v445 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4D8, &qword_1B96B97F0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v445[201] = v445 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC4D0, &qword_1B96B97E8);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v445[200] = v445 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4C8, &qword_1B96B97E0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v445[199] = v445 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC4C0, &qword_1B96B97D8);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v445[198] = v445 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4B8, &qword_1B96B97D0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v445[197] = v445 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4B0, &qword_1B96B97C8);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v445[196] = v445 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4A8, &qword_1B96B97C0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v445[195] = v445 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4A0, &qword_1B96B97B8);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v445[194] = v445 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC498, &qword_1B96B97B0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v445[193] = v445 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC490, &qword_1B96B97A8);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v445[192] = v445 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC488, &qword_1B96B97A0);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v445[191] = v445 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC480, &qword_1B96B9798);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v445[190] = v445 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC478, &qword_1B96B9790);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v445[189] = v445 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC470, &qword_1B96B9788);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v445[188] = v445 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC468, &qword_1B96B9780);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v445[187] = v445 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC460, &qword_1B96B9778);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v445[186] = v445 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC458, &qword_1B96B9770);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v445[185] = v445 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC450, &qword_1B96B9768);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v445[184] = v445 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC448, &qword_1B96B9760);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v445[183] = v445 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC440, &qword_1B96B9758);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v445[182] = v445 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC438, &qword_1B96B9750);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v445[181] = v445 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC430, &unk_1B96DFD00);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v445[180] = v445 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC428, &unk_1B96B9740);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v445[179] = v445 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC420, &unk_1B96D9370);
  MEMORY[0x1EEE9AC00](v78 - 8);
  v445[178] = v445 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC418, &unk_1B96B9730);
  MEMORY[0x1EEE9AC00](v80 - 8);
  v445[177] = v445 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC410, &qword_1B96B9728);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v445[176] = v445 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC408, &qword_1B96B9720);
  MEMORY[0x1EEE9AC00](v84 - 8);
  v445[175] = v445 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC400, &qword_1B96B9718);
  MEMORY[0x1EEE9AC00](v86 - 8);
  v445[174] = v445 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F8, &qword_1B96B9710);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v445[173] = v445 - v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F0, &qword_1B96B9708);
  MEMORY[0x1EEE9AC00](v90 - 8);
  v445[172] = v445 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3E8, &qword_1B96B9700);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v445[171] = v445 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3E0, &qword_1B96B96F8);
  MEMORY[0x1EEE9AC00](v94 - 8);
  v445[170] = v445 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D8, &qword_1B96B96F0);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v445[169] = v445 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D0, &qword_1B96B96E8);
  MEMORY[0x1EEE9AC00](v98 - 8);
  v445[168] = v445 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3C8, &qword_1B96B96E0);
  MEMORY[0x1EEE9AC00](v100 - 8);
  v445[167] = v445 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3C0, &qword_1B96B96D8);
  MEMORY[0x1EEE9AC00](v102 - 8);
  v445[166] = v445 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3B8, &qword_1B96B96D0);
  MEMORY[0x1EEE9AC00](v104 - 8);
  v445[165] = v445 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3B0, &qword_1B96B96C8);
  MEMORY[0x1EEE9AC00](v106 - 8);
  v445[164] = v445 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3A8, &qword_1B96B96C0);
  MEMORY[0x1EEE9AC00](v108 - 8);
  v445[163] = v445 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3A0, &qword_1B96B96B8);
  MEMORY[0x1EEE9AC00](v110 - 8);
  v445[162] = v445 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC398, &qword_1B96B96B0);
  MEMORY[0x1EEE9AC00](v112 - 8);
  v445[161] = v445 - v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC390, &qword_1B96B96A8);
  MEMORY[0x1EEE9AC00](v114 - 8);
  v445[160] = v445 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC388, &qword_1B96B96A0);
  MEMORY[0x1EEE9AC00](v116 - 8);
  v445[159] = v445 - v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC380, &qword_1B96B9698);
  MEMORY[0x1EEE9AC00](v118 - 8);
  v445[158] = v445 - v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC378, &qword_1B96B9690);
  MEMORY[0x1EEE9AC00](v120 - 8);
  v445[157] = v445 - v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC370, &qword_1B96B9688);
  MEMORY[0x1EEE9AC00](v122 - 8);
  v445[156] = v445 - v123;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC368, &qword_1B96B9680);
  MEMORY[0x1EEE9AC00](v124 - 8);
  v445[155] = v445 - v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC360, &qword_1B96B9678);
  MEMORY[0x1EEE9AC00](v126 - 8);
  v445[154] = v445 - v127;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC358, &qword_1B96B9670);
  MEMORY[0x1EEE9AC00](v128 - 8);
  v445[153] = v445 - v129;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC350, &qword_1B96B9668);
  MEMORY[0x1EEE9AC00](v130 - 8);
  v445[152] = v445 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC348, &qword_1B96B9660);
  MEMORY[0x1EEE9AC00](v132 - 8);
  v445[151] = v445 - v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC340, &qword_1B96B9658);
  MEMORY[0x1EEE9AC00](v134 - 8);
  v445[150] = v445 - v135;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC338, &qword_1B96B9650);
  MEMORY[0x1EEE9AC00](v136 - 8);
  v445[149] = v445 - v137;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC330, &qword_1B96B9648);
  MEMORY[0x1EEE9AC00](v138 - 8);
  v445[147] = v445 - v139;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC328, &qword_1B96B9640);
  MEMORY[0x1EEE9AC00](v140 - 8);
  v445[143] = v445 - v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC320, &qword_1B96B9638);
  MEMORY[0x1EEE9AC00](v142 - 8);
  v445[139] = v445 - v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC318, &qword_1B96B9630);
  MEMORY[0x1EEE9AC00](v144 - 8);
  v445[136] = v445 - v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC310, &qword_1B96B9628);
  MEMORY[0x1EEE9AC00](v146 - 8);
  v445[132] = v445 - v147;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC308, &qword_1B96B9620);
  MEMORY[0x1EEE9AC00](v148 - 8);
  v445[129] = v445 - v149;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC300, &qword_1B96B9618);
  MEMORY[0x1EEE9AC00](v150 - 8);
  v445[125] = v445 - v151;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2F8, &qword_1B96B9610);
  MEMORY[0x1EEE9AC00](v152 - 8);
  v445[121] = v445 - v153;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2F0, &qword_1B96B9608);
  MEMORY[0x1EEE9AC00](v154 - 8);
  v445[118] = v445 - v155;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E8, &qword_1B96B9600);
  MEMORY[0x1EEE9AC00](v156 - 8);
  v445[114] = v445 - v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E0, &qword_1B96B95F8);
  MEMORY[0x1EEE9AC00](v158 - 8);
  v445[111] = v445 - v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2D8, &qword_1B96B95F0);
  MEMORY[0x1EEE9AC00](v160 - 8);
  v445[107] = v445 - v161;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2D0, &qword_1B96B95E8);
  MEMORY[0x1EEE9AC00](v162 - 8);
  v445[103] = v445 - v163;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C8, &qword_1B96B95E0);
  MEMORY[0x1EEE9AC00](v164 - 8);
  v445[100] = v445 - v165;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C0, &qword_1B96B95D8);
  MEMORY[0x1EEE9AC00](v166 - 8);
  v445[96] = v445 - v167;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2B8, &qword_1B96B95D0);
  MEMORY[0x1EEE9AC00](v168 - 8);
  v445[93] = v445 - v169;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2B0, &qword_1B96B95C8);
  MEMORY[0x1EEE9AC00](v170 - 8);
  v445[89] = v445 - v171;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2A8, &qword_1B96B95C0);
  MEMORY[0x1EEE9AC00](v172 - 8);
  v445[85] = v445 - v173;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2A0, &qword_1B96B95B8);
  MEMORY[0x1EEE9AC00](v174 - 8);
  v445[82] = v445 - v175;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC298, &qword_1B96B95B0);
  MEMORY[0x1EEE9AC00](v176 - 8);
  v445[78] = v445 - v177;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC290, &qword_1B96B95A8);
  MEMORY[0x1EEE9AC00](v178 - 8);
  v445[75] = v445 - v179;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC288, &qword_1B96B95A0);
  MEMORY[0x1EEE9AC00](v180 - 8);
  v445[71] = v445 - v181;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC280, &qword_1B96B9598);
  MEMORY[0x1EEE9AC00](v182 - 8);
  v445[68] = v445 - v183;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC278, &qword_1B96B9590);
  MEMORY[0x1EEE9AC00](v184 - 8);
  v445[64] = v445 - v185;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC270, &qword_1B96B9588);
  MEMORY[0x1EEE9AC00](v186 - 8);
  v445[60] = v445 - v187;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC268, &qword_1B96B9580);
  MEMORY[0x1EEE9AC00](v188 - 8);
  v445[57] = v445 - v189;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC260, &qword_1B96B9578);
  MEMORY[0x1EEE9AC00](v190 - 8);
  v445[53] = v445 - v191;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC258, &qword_1B96B9570);
  MEMORY[0x1EEE9AC00](v192 - 8);
  v445[50] = v445 - v193;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC250, &qword_1B96B9568);
  MEMORY[0x1EEE9AC00](v194 - 8);
  v445[46] = v445 - v195;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC248, &qword_1B96B9560);
  MEMORY[0x1EEE9AC00](v196 - 8);
  v445[42] = v445 - v197;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC240, &qword_1B96B9558);
  MEMORY[0x1EEE9AC00](v198 - 8);
  v445[39] = v445 - v199;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC238, &qword_1B96B9550);
  MEMORY[0x1EEE9AC00](v200 - 8);
  v445[35] = v445 - v201;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC230, &qword_1B96B9548);
  MEMORY[0x1EEE9AC00](v202 - 8);
  v445[32] = v445 - v203;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC228, &qword_1B96B9540);
  MEMORY[0x1EEE9AC00](v204 - 8);
  v445[28] = v445 - v205;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC220, &qword_1B96B9538);
  MEMORY[0x1EEE9AC00](v206 - 8);
  v445[24] = v445 - v207;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC218, &qword_1B96B9530);
  MEMORY[0x1EEE9AC00](v208 - 8);
  v445[21] = v445 - v209;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC210, &qword_1B96B9528);
  MEMORY[0x1EEE9AC00](v210 - 8);
  v445[17] = v445 - v211;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC208, &qword_1B96B9520);
  MEMORY[0x1EEE9AC00](v212 - 8);
  v445[14] = v445 - v213;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC200, &qword_1B96B9518);
  MEMORY[0x1EEE9AC00](v214 - 8);
  v445[10] = v445 - v215;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1F8, &qword_1B96B9510);
  MEMORY[0x1EEE9AC00](v216 - 8);
  v445[6] = v445 - v217;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1F0, &qword_1B96B9508);
  MEMORY[0x1EEE9AC00](v218 - 8);
  v445[3] = v445 - v219;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1E8, &qword_1B96B9500);
  MEMORY[0x1EEE9AC00](v220 - 8);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1E0, &qword_1B96B94F8);
  MEMORY[0x1EEE9AC00](v221 - 8);
  v222 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__appLinkCardSection;
  v223 = type metadata accessor for Searchfoundation_AppLinkCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v222, 1, 1, v223);
  v224 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionCardSection;
  v225 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v224, 1, 1, v225);
  v226 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__keyValueDataCardSection;
  v227 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v226, 1, 1, v227);
  v228 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapCardSection;
  v445[0] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapCardSection;
  v229 = type metadata accessor for Searchfoundation_MapCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v228, 1, 1, v229);
  v230 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaInfoCardSection;
  v445[1] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaInfoCardSection;
  v231 = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v230, 1, 1, v231);
  v232 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaPlayerCardSection;
  v445[2] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaPlayerCardSection;
  v233 = type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v232, 1, 1, v233);
  v234 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__nowPlayingCardSection;
  v445[4] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__nowPlayingCardSection;
  v235 = type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v234, 1, 1, v235);
  v236 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTitleCardSection;
  v445[5] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTitleCardSection;
  v237 = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v236, 1, 1, v237);
  v238 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rowCardSection;
  v445[7] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rowCardSection;
  v239 = type metadata accessor for Searchfoundation_RowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v238, 1, 1, v239);
  v240 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__scoreboardCardSection;
  v445[8] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__scoreboardCardSection;
  v241 = type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v240, 1, 1, v241);
  v242 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__socialMediaPostCardSection;
  v445[9] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__socialMediaPostCardSection;
  v243 = type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v242, 1, 1, v243);
  v244 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__stockChartCardSection;
  v445[11] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__stockChartCardSection;
  v245 = type metadata accessor for Searchfoundation_StockChartCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v244, 1, 1, v245);
  v246 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableHeaderRowCardSection;
  v445[12] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableHeaderRowCardSection;
  v247 = type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v246, 1, 1, v247);
  v248 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableRowCardSection;
  v445[13] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableRowCardSection;
  v249 = type metadata accessor for Searchfoundation_TableRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v248, 1, 1, v249);
  v250 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__textColumnsCardSection;
  v445[15] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__textColumnsCardSection;
  v251 = type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v250, 1, 1, v251);
  v252 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleCardSection;
  v445[16] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleCardSection;
  v253 = type metadata accessor for Searchfoundation_TitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v252, 1, 1, v253);
  v254 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__trackListCardSection;
  v445[18] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__trackListCardSection;
  v255 = type metadata accessor for Searchfoundation_TrackListCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v254, 1, 1, v255);
  v256 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioPlaybackCardSection;
  v445[19] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioPlaybackCardSection;
  v257 = type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v256, 1, 1, v257);
  v258 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__flightCardSection;
  v445[20] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__flightCardSection;
  v259 = type metadata accessor for Searchfoundation_FlightCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v258, 1, 1, v259);
  v260 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__activityIndicatorCardSection;
  v445[22] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__activityIndicatorCardSection;
  v261 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v260, 1, 1, v261);
  v262 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__webCardSection;
  v445[23] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__webCardSection;
  v263 = type metadata accessor for Searchfoundation_WebCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v262, 1, 1, v263);
  v264 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__messageCardSection;
  v445[25] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__messageCardSection;
  v265 = type metadata accessor for Searchfoundation_MessageCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v264, 1, 1, v265);
  v266 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__detailedRowCardSection;
  v445[26] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__detailedRowCardSection;
  v267 = type metadata accessor for Searchfoundation_DetailedRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v266, 1, 1, v267);
  v268 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__imagesCardSection;
  v445[27] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__imagesCardSection;
  v269 = type metadata accessor for Searchfoundation_ImagesCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v268, 1, 1, v269);
  v270 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__suggestionCardSection;
  v445[29] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__suggestionCardSection;
  v271 = type metadata accessor for Searchfoundation_SuggestionCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v270, 1, 1, v271);
  v272 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__selectableGridCardSection;
  v445[30] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__selectableGridCardSection;
  v273 = type metadata accessor for Searchfoundation_SelectableGridCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v272, 1, 1, v273);
  v274 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionHeaderCardSection;
  v445[31] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionHeaderCardSection;
  v275 = type metadata accessor for Searchfoundation_SectionHeaderCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v274, 1, 1, v275);
  v276 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__metaInfoCardSection;
  v445[33] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__metaInfoCardSection;
  v277 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v276, 1, 1, v277);
  v278 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListCardSection;
  v445[34] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListCardSection;
  v279 = type metadata accessor for Searchfoundation_WatchListCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v278, 1, 1, v279);
  v280 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapsDetailedRowCardSection;
  v445[36] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapsDetailedRowCardSection;
  v281 = type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v280, 1, 1, v281);
  v282 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonCardSection;
  v445[37] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonCardSection;
  v283 = type metadata accessor for Searchfoundation_ButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v282, 1, 1, v283);
  v284 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalButtonCardSection;
  v445[38] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalButtonCardSection;
  v285 = type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v284, 1, 1, v285);
  v286 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__verticalLayoutCardSection;
  v445[40] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__verticalLayoutCardSection;
  v287 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v286, 1, 1, v287);
  v288 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__productCardSection;
  v445[41] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__productCardSection;
  v289 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v288, 1, 1, v289);
  v290 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalScrollCardSection;
  v445[43] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalScrollCardSection;
  v291 = type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v290, 1, 1, v291);
  v292 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaRemoteControlCardSection;
  v445[44] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaRemoteControlCardSection;
  v293 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v292, 1, 1, v293);
  v294 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapPlaceCardSection;
  v445[45] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapPlaceCardSection;
  v295 = type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v294, 1, 1, v295);
  v296 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__compactRowCardSection;
  v445[47] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__compactRowCardSection;
  v297 = type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v296, 1, 1, v297);
  v298 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__worldMapCardSection;
  v445[48] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__worldMapCardSection;
  v299 = type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v298, 1, 1, v299);
  v300 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__attributionFooterCardSection;
  v445[49] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__attributionFooterCardSection;
  v301 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v300, 1, 1, v301);
  v302 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__gridCardSection;
  v445[51] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__gridCardSection;
  v303 = type metadata accessor for Searchfoundation_GridCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v302, 1, 1, v303);
  v304 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__personHeaderCardSection;
  v445[52] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__personHeaderCardSection;
  v305 = type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v304, 1, 1, v305);
  v306 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__colorBarCardSection;
  v445[54] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__colorBarCardSection;
  v307 = type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v306, 1, 1, v307);
  v308 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__splitCardSection;
  v445[55] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__splitCardSection;
  v309 = type metadata accessor for Searchfoundation_SplitCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v308, 1, 1, v309);
  v310 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__linkPresentationCardSection;
  v445[56] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__linkPresentationCardSection;
  v311 = type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v310, 1, 1, v311);
  v312 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__findMyCardSection;
  v445[58] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__findMyCardSection;
  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v312, 1, 1, MyCardSection);
  v314 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroCardSection;
  v445[59] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroCardSection;
  v315 = type metadata accessor for Searchfoundation_HeroCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v314, 1, 1, v315);
  v316 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__newsCardSection;
  v445[61] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__newsCardSection;
  v317 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v316, 1, 1, v317);
  v318 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__miniCardSection;
  v445[62] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__miniCardSection;
  v319 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v318, 1, 1, v319);
  v320 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__infoCardSection;
  v445[63] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__infoCardSection;
  v321 = type metadata accessor for Searchfoundation_InfoCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v320, 1, 1, v321);
  v322 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionCardSection;
  v445[65] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionCardSection;
  v323 = type metadata accessor for Searchfoundation_CollectionCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v322, 1, 1, v323);
  v324 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__combinedCardSection;
  v445[66] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__combinedCardSection;
  v325 = type metadata accessor for Searchfoundation_CombinedCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v324, 1, 1, v325);
  v326 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__responseWrapperCardSection;
  v445[67] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__responseWrapperCardSection;
  v327 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v326, 1, 1, v327);
  v328 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__listenToCardSection;
  v445[69] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__listenToCardSection;
  v329 = type metadata accessor for Searchfoundation_ListenToCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v328, 1, 1, v329);
  v330 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchNowCardSection;
  v445[70] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchNowCardSection;
  v331 = type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v330, 1, 1, v331);
  v332 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__strokeAnimationCardSection;
  v445[72] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__strokeAnimationCardSection;
  v333 = type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v332, 1, 1, v333);
  v334 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonListCardSection;
  v445[73] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonListCardSection;
  v335 = type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v334, 1, 1, v335);
  v336 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandRowCardSection;
  v445[74] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandRowCardSection;
  v337 = type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v336, 1, 1, v337);
  v338 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingTrailingCardSection;
  v445[76] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingTrailingCardSection;
  v339 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v338, 1, 1, v339);
  v340 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroTitleCardSection;
  v445[77] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroTitleCardSection;
  v341 = type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v340, 1, 1, v341);
  v342 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__archiveViewCardSection;
  v445[79] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__archiveViewCardSection;
  v343 = type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v342, 1, 1, v343);
  v344 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__appIconCardSection;
  v445[80] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__appIconCardSection;
  v345 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v344, 1, 1, v345);
  v346 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__largeTitleDetailedRowCardSection;
  v445[81] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__largeTitleDetailedRowCardSection;
  v347 = type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v346, 1, 1, v347);
  v348 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__safariTableOfContentsCardSection;
  v445[83] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__safariTableOfContentsCardSection;
  v349 = type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v348, 1, 1, v349);
  v350 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemShortNumberCardSection;
  v445[84] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemShortNumberCardSection;
  v351 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v350, 1, 1, v351);
  v352 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemTextCardSection;
  v445[86] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemTextCardSection;
  v353 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v352, 1, 1, v353);
  v354 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemStandardCardSection;
  v445[87] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemStandardCardSection;
  v355 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v354, 1, 1, v355);
  v356 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortNumberCardSection;
  v445[88] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortNumberCardSection;
  v357 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v356, 1, 1, v357);
  v358 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemStandardCardSection;
  v445[90] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemStandardCardSection;
  v359 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v358, 1, 1, v359);
  v360 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfLongItemStandardCardSection;
  v445[91] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfLongItemStandardCardSection;
  v361 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v360, 1, 1, v361);
  v362 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderRichCardSection;
  v445[92] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderRichCardSection;
  v363 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v362, 1, 1, v363);
  v364 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStandardCardSection;
  v445[94] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStandardCardSection;
  v365 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v364, 1, 1, v365);
  v366 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceFootnoteCardSection;
  v445[95] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceFootnoteCardSection;
  v367 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v366, 1, 1, v367);
  v368 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceRichCardSection;
  v445[97] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceRichCardSection;
  v369 = type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v368, 1, 1, v369);
  v370 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichCardSection;
  v445[98] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichCardSection;
  v371 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v370, 1, 1, v371);
  v372 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemStandardCardSection;
  v445[99] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemStandardCardSection;
  v373 = type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v372, 1, 1, v373);
  v374 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemAlignedTextCardSection;
  v445[101] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemAlignedTextCardSection;
  v375 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v374, 1, 1, v375);
  v376 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfExpandableStandardCardSection;
  v445[102] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfExpandableStandardCardSection;
  v377 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v376, 1, 1, v377);
  v378 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemButtonCardSection;
  v445[104] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemButtonCardSection;
  v379 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v378, 1, 1, v379);
  v380 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroNumberCardSection;
  v445[105] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroNumberCardSection;
  v381 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v380, 1, 1, v381);
  v382 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderMarqueeCardSection;
  v445[106] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderMarqueeCardSection;
  v383 = type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v382, 1, 1, v383);
  v384 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemDetailedTextCardSection;
  v445[108] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemDetailedTextCardSection;
  v385 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v384, 1, 1, v385);
  v386 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemPlayerCardSection;
  v445[109] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemPlayerCardSection;
  v387 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v386, 1, 1, v387);
  v388 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairCardSection;
  v445[110] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairCardSection;
  v389 = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v388, 1, 1, v389);
  v390 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairNumberCardSection;
  v445[112] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairNumberCardSection;
  v391 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v390, 1, 1, v391);
  v392 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortHeroNumberCardSection;
  v445[113] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortHeroNumberCardSection;
  v393 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v392, 1, 1, v393);
  v394 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemDetailedNumberCardSection;
  v445[115] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemDetailedNumberCardSection;
  v395 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v394, 1, 1, v395);
  v396 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroButtonCardSection;
  v445[116] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroButtonCardSection;
  v397 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v396, 1, 1, v397);
  v398 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemImageRightCardSection;
  v445[117] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemImageRightCardSection;
  v399 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v398, 1, 1, v399);
  v400 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemSwitchV2CardSection;
  v445[119] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemSwitchV2CardSection;
  v401 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v400, 1, 1, v401);
  v402 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableHeaderCardSection;
  v445[120] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableHeaderCardSection;
  v403 = type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v402, 1, 1, v403);
  v404 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableRowCardSection;
  v445[122] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableRowCardSection;
  v405 = type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v404, 1, 1, v405);
  v406 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemVisualElementCardSection;
  v445[123] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemVisualElementCardSection;
  v407 = type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v406, 1, 1, v407);
  v408 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPlayerCardSection;
  v445[124] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPlayerCardSection;
  v409 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v408, 1, 1, v409);
  v410 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemImageRightCardSection;
  v445[126] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemImageRightCardSection;
  v411 = type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v410, 1, 1, v411);
  v412 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemButtonCardSection;
  v445[127] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemButtonCardSection;
  v413 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v412, 1, 1, v413);
  v414 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemReverseRichCardSection;
  v445[128] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemReverseRichCardSection;
  v415 = type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v414, 1, 1, v415);
  v416 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichSearchResultCardSection;
  v445[130] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichSearchResultCardSection;
  v417 = type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v416, 1, 1, v417);
  v418 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStackedImageCardSection;
  v445[131] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStackedImageCardSection;
  v419 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v418, 1, 1, v419);
  v420 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemLogoCardSection;
  v445[133] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemLogoCardSection;
  v421 = type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v420, 1, 1, v421);
  v422 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemButtonCardSection;
  v445[134] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemButtonCardSection;
  v423 = type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v422, 1, 1, v423);
  v424 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfButtonCardSection;
  v445[135] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfButtonCardSection;
  v425 = type metadata accessor for Searchfoundation_RFButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v424, 1, 1, v425);
  v426 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfBinaryButtonCardSection;
  v445[137] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfBinaryButtonCardSection;
  v427 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v426, 1, 1, v427);
  v428 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceCenteredCardSection;
  v445[138] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceCenteredCardSection;
  v429 = type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v428, 1, 1, v429);
  v430 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderStandardCardSection;
  v445[140] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderStandardCardSection;
  v431 = type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v430, 1, 1, v431);
  v432 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderEmphasizedCardSection;
  v445[141] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderEmphasizedCardSection;
  v433 = type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v432, 1, 1, v433);
  v434 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMapCardSection;
  v445[142] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMapCardSection;
  v435 = type metadata accessor for Searchfoundation_RFMapCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v434, 1, 1, v435);
  v436 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceStandardCardSection;
  v445[144] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceStandardCardSection;
  v437 = type metadata accessor for Searchfoundation_RFReferenceStandardCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v436, 1, 1, v437);
  v438 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMultiButtonCardSection;
  v445[145] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMultiButtonCardSection;
  v439 = type metadata accessor for Searchfoundation_RFMultiButtonCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v438, 1, 1, v439);
  v440 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfDisambiguationTitleCardSection;
  v445[146] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfDisambiguationTitleCardSection;
  v441 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v440, 1, 1, v441);
  v442 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemExpandableCardSection;
  v445[148] = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemExpandableCardSection;
  v443 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v442, 1, 1, v443);
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
  return v1;
}

uint64_t sub_1B93825B4()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__appLinkCardSection, &unk_1EBACC1E0, &qword_1B96B94F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionCardSection, &qword_1EBACC1E8, &qword_1B96B9500);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__keyValueDataCardSection, &qword_1EBACC1F0, &qword_1B96B9508);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapCardSection, &unk_1EBACC1F8, &qword_1B96B9510);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaInfoCardSection, &qword_1EBACC200, &qword_1B96B9518);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaPlayerCardSection, &unk_1EBACC208, &qword_1B96B9520);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__nowPlayingCardSection, &unk_1EBACC210, &qword_1B96B9528);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTitleCardSection, &qword_1EBACC218, &qword_1B96B9530);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rowCardSection, &qword_1EBACC220, &qword_1B96B9538);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__scoreboardCardSection, &unk_1EBACC228, &qword_1B96B9540);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__socialMediaPostCardSection, &unk_1EBACC230, &qword_1B96B9548);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__stockChartCardSection, &unk_1EBACC238, &qword_1B96B9550);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableHeaderRowCardSection, &unk_1EBACC240, &qword_1B96B9558);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__tableRowCardSection, &qword_1EBACC248, &qword_1B96B9560);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__textColumnsCardSection, &unk_1EBACC250, &qword_1B96B9568);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleCardSection, &unk_1EBACC258, &qword_1B96B9570);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__trackListCardSection, &qword_1EBACC260, &qword_1B96B9578);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioPlaybackCardSection, &qword_1EBACC268, &qword_1B96B9580);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__flightCardSection, &qword_1EBACC270, &qword_1B96B9588);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__activityIndicatorCardSection, &unk_1EBACC278, &qword_1B96B9590);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__webCardSection, &unk_1EBACC280, &qword_1B96B9598);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__messageCardSection, &qword_1EBACC288, &qword_1B96B95A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__detailedRowCardSection, &qword_1EBACC290, &qword_1B96B95A8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__imagesCardSection, &unk_1EBACC298, &qword_1B96B95B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__suggestionCardSection, &unk_1EBACC2A0, &qword_1B96B95B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__selectableGridCardSection, &qword_1EBACC2A8, &qword_1B96B95C0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionHeaderCardSection, &unk_1EBACC2B0, &qword_1B96B95C8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__metaInfoCardSection, &qword_1EBACC2B8, &qword_1B96B95D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListCardSection, &qword_1EBACC2C0, &qword_1B96B95D8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapsDetailedRowCardSection, &qword_1EBACC2C8, &qword_1B96B95E0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonCardSection, &unk_1EBACC2D0, &qword_1B96B95E8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalButtonCardSection, &qword_1EBACC2D8, &qword_1B96B95F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__verticalLayoutCardSection, &qword_1EBACC2E0, &qword_1B96B95F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__productCardSection, &qword_1EBACC2E8, &qword_1B96B9600);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__horizontalScrollCardSection, &unk_1EBACC2F0, &qword_1B96B9608);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaRemoteControlCardSection, &qword_1EBACC2F8, &qword_1B96B9610);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__mapPlaceCardSection, &qword_1EBACC300, &qword_1B96B9618);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__compactRowCardSection, &qword_1EBACC308, &qword_1B96B9620);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__worldMapCardSection, &qword_1EBACC310, &qword_1B96B9628);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__attributionFooterCardSection, &unk_1EBACC318, &qword_1B96B9630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__gridCardSection, &qword_1EBACC320, &qword_1B96B9638);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__personHeaderCardSection, &unk_1EBACC328, &qword_1B96B9640);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__colorBarCardSection, &qword_1EBACC330, &qword_1B96B9648);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__splitCardSection, &qword_1EBACC338, &qword_1B96B9650);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__linkPresentationCardSection, &unk_1EBACC340, &qword_1B96B9658);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__findMyCardSection, &unk_1EBACC348, &qword_1B96B9660);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroCardSection, &qword_1EBACC350, &qword_1B96B9668);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__newsCardSection, &qword_1EBACC358, &qword_1B96B9670);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__miniCardSection, &unk_1EBACC360, &qword_1B96B9678);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__infoCardSection, &unk_1EBACC368, &qword_1B96B9680);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionCardSection, &unk_1EBACC370, &qword_1B96B9688);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__combinedCardSection, &qword_1EBACC378, &qword_1B96B9690);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__responseWrapperCardSection, &unk_1EBACC380, &qword_1B96B9698);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__listenToCardSection, &qword_1EBACC388, &qword_1B96B96A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchNowCardSection, &qword_1EBACC390, &qword_1B96B96A8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__strokeAnimationCardSection, &unk_1EBACC398, &qword_1B96B96B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonListCardSection, &unk_1EBACC3A0, &qword_1B96B96B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandRowCardSection, &qword_1EBACC3A8, &qword_1B96B96C0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingTrailingCardSection, &qword_1EBACC3B0, &qword_1B96B96C8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__heroTitleCardSection, &unk_1EBACC3B8, &qword_1B96B96D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__archiveViewCardSection, &qword_1EBACC3C0, &qword_1B96B96D8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__appIconCardSection, &unk_1EBACC3C8, &qword_1B96B96E0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__largeTitleDetailedRowCardSection, &qword_1EBACC3D0, &qword_1B96B96E8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__safariTableOfContentsCardSection, &qword_1EBACC3D8, &qword_1B96B96F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemShortNumberCardSection, &unk_1EBACC3E0, &qword_1B96B96F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemTextCardSection, &qword_1EBACC3E8, &qword_1B96B9700);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemStandardCardSection, &qword_1EBACC3F0, &qword_1B96B9708);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortNumberCardSection, &qword_1EBACC3F8, &qword_1B96B9710);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemStandardCardSection, &qword_1EBACC400, &qword_1B96B9718);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfLongItemStandardCardSection, &unk_1EBACC408, &qword_1B96B9720);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderRichCardSection, &dword_1EBACC410, &qword_1B96B9728);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStandardCardSection, &qword_1EBACC418, &unk_1B96B9730);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceFootnoteCardSection, &qword_1EBACC420, &unk_1B96D9370);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceRichCardSection, &dword_1EBACC428, &unk_1B96B9740);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichCardSection, &qword_1EBACC430, &unk_1B96DFD00);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemStandardCardSection, &dword_1EBACC438, &qword_1B96B9750);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemAlignedTextCardSection, &unk_1EBACC440, &qword_1B96B9758);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfExpandableStandardCardSection, &qword_1EBACC448, &qword_1B96B9760);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemButtonCardSection, &qword_1EBACC450, &qword_1B96B9768);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroNumberCardSection, &unk_1EBACC458, &qword_1B96B9770);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderMarqueeCardSection, &dword_1EBACC460, &qword_1B96B9778);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemDetailedTextCardSection, &qword_1EBACC468, &qword_1B96B9780);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemPlayerCardSection, &qword_1EBACC470, &qword_1B96B9788);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairCardSection, &qword_1EBACC478, &qword_1B96B9790);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPairNumberCardSection, &dword_1EBACC480, &qword_1B96B9798);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemShortHeroNumberCardSection, &unk_1EBACC488, &qword_1B96B97A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemDetailedNumberCardSection, &unk_1EBACC490, &qword_1B96B97A8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemHeroButtonCardSection, &qword_1EBACC498, &qword_1B96B97B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfFactItemImageRightCardSection, &qword_1EBACC4A0, &qword_1B96B97B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemSwitchV2CardSection, &dword_1EBACC4A8, &qword_1B96B97C0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableHeaderCardSection, &dword_1EBACC4B0, &qword_1B96B97C8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfTableRowCardSection, &dword_1EBACC4B8, &qword_1B96B97D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemVisualElementCardSection, &unk_1EBACC4C0, &qword_1B96B97D8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemPlayerCardSection, &qword_1EBACC4C8, &qword_1B96B97E0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemImageRightCardSection, &unk_1EBACC4D0, &qword_1B96B97E8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemButtonCardSection, &qword_1EBACC4D8, &qword_1B96B97F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemReverseRichCardSection, &dword_1EBACC4E0, &qword_1B96B97F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSimpleItemRichSearchResultCardSection, &dword_1EBACC4E8, &qword_1B96B9800);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfPrimaryHeaderStackedImageCardSection, &unk_1EBACC4F0, &qword_1B96B9808);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemLogoCardSection, &dword_1EBACC4F8, &qword_1B96B9810);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceItemButtonCardSection, &unk_1EBACC500, &qword_1B96B9818);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfButtonCardSection, &dword_1EBACC508, &qword_1B96B9820);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfBinaryButtonCardSection, &unk_1EBACC510, &qword_1B96B9828);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceCenteredCardSection, &dword_1EBACC518, &qword_1B96B9830);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderStandardCardSection, &qword_1EBACC520, &qword_1B96B9838);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSecondaryHeaderEmphasizedCardSection, &dword_1EBACC528, &qword_1B96B9840);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMapCardSection, &qword_1EBACC530, &qword_1B96B9848);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfReferenceStandardCardSection, &unk_1EBACC538, &qword_1B96B9850);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfMultiButtonCardSection, &qword_1EBACC540, &qword_1B96B9858);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfDisambiguationTitleCardSection, &qword_1EBACC548, &qword_1B96B9860);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_CardSectionValueP33_8B6B46006750B7327475329E07D4337013_StorageClass__rfSummaryItemExpandableCardSection, &qword_1EBACC550, &qword_1B96B9868);
  return v0;
}

uint64_t sub_1B938341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B93840EC(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B93841C8(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B93842A4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B9384380(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B938445C(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B9384538(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B9384614(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B93846F0(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B93847CC(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B93848A8(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B9384984(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B9384A60(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B9384B3C(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B9384C18(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B9384CF4(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B9384DD0(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B9384EAC(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B9384F88(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B9385064(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B9385140(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B938521C(a2, a1, a3, a4);
        break;
      case 22:
        sub_1B93852F8(a2, a1, a3, a4);
        break;
      case 23:
        sub_1B93853D4(a2, a1, a3, a4);
        break;
      case 24:
        sub_1B93854B0(a2, a1, a3, a4);
        break;
      case 25:
        sub_1B938558C(a2, a1, a3, a4);
        break;
      case 26:
        sub_1B9385668(a2, a1, a3, a4);
        break;
      case 27:
        sub_1B9385744(a2, a1, a3, a4);
        break;
      case 28:
        sub_1B9385820(a2, a1, a3, a4);
        break;
      case 29:
        sub_1B93858FC(a2, a1, a3, a4);
        break;
      case 30:
        sub_1B93859D8(a2, a1, a3, a4);
        break;
      case 31:
        sub_1B9385AB4(a2, a1, a3, a4);
        break;
      case 32:
        sub_1B9385B90(a2, a1, a3, a4);
        break;
      case 33:
        sub_1B9385C6C(a2, a1, a3, a4);
        break;
      case 34:
        sub_1B9385D48(a2, a1, a3, a4);
        break;
      case 35:
        sub_1B9385E24(a2, a1, a3, a4);
        break;
      case 36:
        sub_1B9385F00(a2, a1, a3, a4);
        break;
      case 37:
        sub_1B9385FDC(a2, a1, a3, a4);
        break;
      case 38:
        sub_1B93860B8(a2, a1, a3, a4);
        break;
      case 39:
        sub_1B9386194(a2, a1, a3, a4);
        break;
      case 40:
        sub_1B9386270(a2, a1, a3, a4);
        break;
      case 41:
        sub_1B938634C(a2, a1, a3, a4);
        break;
      case 42:
        sub_1B9386428(a2, a1, a3, a4);
        break;
      case 43:
        sub_1B9386504(a2, a1, a3, a4);
        break;
      case 44:
        sub_1B93865E0(a2, a1, a3, a4);
        break;
      case 45:
        sub_1B93866BC(a2, a1, a3, a4);
        break;
      case 46:
        sub_1B9386798(a2, a1, a3, a4);
        break;
      case 47:
        sub_1B9386874(a2, a1, a3, a4);
        break;
      case 48:
        sub_1B9386950(a2, a1, a3, a4);
        break;
      case 49:
        sub_1B9386A2C(a2, a1, a3, a4);
        break;
      case 50:
        sub_1B9386B08(a2, a1, a3, a4);
        break;
      case 51:
        sub_1B9386BE4(a2, a1, a3, a4);
        break;
      case 52:
        sub_1B9386CC0(a2, a1, a3, a4);
        break;
      case 53:
        sub_1B9386D9C(a2, a1, a3, a4);
        break;
      case 54:
        sub_1B9386E78(a2, a1, a3, a4);
        break;
      case 55:
        sub_1B9386F54(a2, a1, a3, a4);
        break;
      case 56:
        sub_1B9387030(a2, a1, a3, a4);
        break;
      case 57:
        sub_1B938710C(a2, a1, a3, a4);
        break;
      case 58:
        sub_1B93871E8(a2, a1, a3, a4);
        break;
      case 59:
        sub_1B93872C4(a2, a1, a3, a4);
        break;
      case 60:
        sub_1B93873A0(a2, a1, a3, a4);
        break;
      case 61:
        sub_1B938747C(a2, a1, a3, a4);
        break;
      case 63:
        sub_1B9387558(a2, a1, a3, a4);
        break;
      case 64:
        sub_1B9387634(a2, a1, a3, a4);
        break;
      case 90:
        sub_1B9387710(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case 200:
            sub_1B93877EC(a2, a1, a3, a4);
            break;
          case 201:
            sub_1B93878C8(a2, a1, a3, a4);
            break;
          case 202:
            sub_1B93879A4(a2, a1, a3, a4);
            break;
          case 203:
            sub_1B9387A80(a2, a1, a3, a4);
            break;
          case 204:
            sub_1B9387B5C(a2, a1, a3, a4);
            break;
          case 205:
            sub_1B9387C38(a2, a1, a3, a4);
            break;
          case 206:
            sub_1B9387D14(a2, a1, a3, a4);
            break;
          case 207:
            sub_1B9387DF0(a2, a1, a3, a4);
            break;
          case 208:
            sub_1B9387ECC(a2, a1, a3, a4);
            break;
          case 209:
            sub_1B9387FA8(a2, a1, a3, a4);
            break;
          case 210:
            sub_1B9388084(a2, a1, a3, a4);
            break;
          case 211:
            sub_1B9388160(a2, a1, a3, a4);
            break;
          case 212:
            sub_1B938823C(a2, a1, a3, a4);
            break;
          case 213:
            sub_1B9388318(a2, a1, a3, a4);
            break;
          case 214:
            sub_1B93883F4(a2, a1, a3, a4);
            break;
          case 215:
            sub_1B93884D0(a2, a1, a3, a4);
            break;
          case 216:
            sub_1B93885AC(a2, a1, a3, a4);
            break;
          case 217:
            sub_1B9388688(a2, a1, a3, a4);
            break;
          case 218:
            sub_1B9388764(a2, a1, a3, a4);
            break;
          case 219:
            sub_1B9388840(a2, a1, a3, a4);
            break;
          case 220:
            sub_1B938891C(a2, a1, a3, a4);
            break;
          case 221:
            sub_1B93889F8(a2, a1, a3, a4);
            break;
          case 222:
            sub_1B9388AD4(a2, a1, a3, a4);
            break;
          case 223:
            sub_1B9388BB0(a2, a1, a3, a4);
            break;
          case 224:
            sub_1B9388C8C(a2, a1, a3, a4);
            break;
          case 225:
            sub_1B9388D68(a2, a1, a3, a4);
            break;
          case 226:
            sub_1B9388E44(a2, a1, a3, a4);
            break;
          case 227:
            sub_1B9388F20(a2, a1, a3, a4);
            break;
          case 228:
            sub_1B9388FFC(a2, a1, a3, a4);
            break;
          case 229:
            sub_1B93890D8(a2, a1, a3, a4);
            break;
          case 230:
            sub_1B93891B4(a2, a1, a3, a4);
            break;
          case 231:
            sub_1B9389290(a2, a1, a3, a4);
            break;
          case 232:
            sub_1B938936C(a2, a1, a3, a4);
            break;
          case 233:
            sub_1B9389448(a2, a1, a3, a4);
            break;
          case 234:
            sub_1B9389524(a2, a1, a3, a4);
            break;
          case 235:
            sub_1B9389600(a2, a1, a3, a4);
            break;
          case 236:
            sub_1B93896DC(a2, a1, a3, a4);
            break;
          case 237:
            sub_1B93897B8(a2, a1, a3, a4);
            break;
          case 238:
            sub_1B9389894(a2, a1, a3, a4);
            break;
          case 239:
            sub_1B9389970(a2, a1, a3, a4);
            break;
          case 240:
            sub_1B9389A4C(a2, a1, a3, a4);
            break;
          case 241:
            sub_1B9389B28(a2, a1, a3, a4);
            break;
          case 242:
            sub_1B9389C04(a2, a1, a3, a4);
            break;
          case 243:
            sub_1B9389CE0(a2, a1, a3, a4);
            break;
          case 244:
          case 245:
            continue;
          case 246:
            sub_1B9389DBC(a2, a1, a3, a4);
            break;
          default:
            if (result == 744)
            {
              sub_1B9389E98(a2, a1, a3, a4);
            }

            else if (result == 745)
            {
              sub_1B9389F74(a2, a1, a3, a4);
            }

            break;
        }

        break;
    }
  }
}

uint64_t sub_1B93840EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AppLinkCardSection(0);
  sub_1B8CD3068(&qword_1EBACB0F8, type metadata accessor for Searchfoundation_AppLinkCardSection, protocol conformance descriptor for Searchfoundation_AppLinkCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93841C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  sub_1B8CD3068(&qword_1EBACE780, type metadata accessor for Searchfoundation_DescriptionCardSection, protocol conformance descriptor for Searchfoundation_DescriptionCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93842A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  sub_1B8CD3068(&qword_1EBACE778, type metadata accessor for Searchfoundation_KeyValueDataCardSection, protocol conformance descriptor for Searchfoundation_KeyValueDataCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MapCardSection(0);
  sub_1B8CD3068(&qword_1EBACE770, type metadata accessor for Searchfoundation_MapCardSection, protocol conformance descriptor for Searchfoundation_MapCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  sub_1B8CD3068(&qword_1EBACE768, type metadata accessor for Searchfoundation_MediaInfoCardSection, protocol conformance descriptor for Searchfoundation_MediaInfoCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  sub_1B8CD3068(&qword_1EBACE760, type metadata accessor for Searchfoundation_MediaPlayerCardSection, protocol conformance descriptor for Searchfoundation_MediaPlayerCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  sub_1B8CD3068(&qword_1EBACE758, type metadata accessor for Searchfoundation_NowPlayingCardSection, protocol conformance descriptor for Searchfoundation_NowPlayingCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93846F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  sub_1B8CD3068(&qword_1EBACDA68, type metadata accessor for Searchfoundation_RichTitleCardSection, protocol conformance descriptor for Searchfoundation_RichTitleCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93847CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RowCardSection(0);
  sub_1B8CD3068(&qword_1EBACE750, type metadata accessor for Searchfoundation_RowCardSection, protocol conformance descriptor for Searchfoundation_RowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93848A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  sub_1B8CD3068(&qword_1EBACD958, type metadata accessor for Searchfoundation_ScoreboardCardSection, protocol conformance descriptor for Searchfoundation_ScoreboardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  sub_1B8CD3068(&qword_1EBACE748, type metadata accessor for Searchfoundation_SocialMediaPostCardSection, protocol conformance descriptor for Searchfoundation_SocialMediaPostCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_StockChartCardSection(0);
  sub_1B8CD3068(&qword_1EBACE740, type metadata accessor for Searchfoundation_StockChartCardSection, protocol conformance descriptor for Searchfoundation_StockChartCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  sub_1B8CD3068(&qword_1EBACE738, type metadata accessor for Searchfoundation_TableHeaderRowCardSection, protocol conformance descriptor for Searchfoundation_TableHeaderRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_TableRowCardSection(0);
  sub_1B8CD3068(&qword_1EBACE730, type metadata accessor for Searchfoundation_TableRowCardSection, protocol conformance descriptor for Searchfoundation_TableRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  sub_1B8CD3068(&qword_1EBACE728, type metadata accessor for Searchfoundation_TextColumnsCardSection, protocol conformance descriptor for Searchfoundation_TextColumnsCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_TitleCardSection(0);
  sub_1B8CD3068(&qword_1EBACE720, type metadata accessor for Searchfoundation_TitleCardSection, protocol conformance descriptor for Searchfoundation_TitleCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_TrackListCardSection(0);
  sub_1B8CD3068(&qword_1EBACE718, type metadata accessor for Searchfoundation_TrackListCardSection, protocol conformance descriptor for Searchfoundation_TrackListCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9384F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  sub_1B8CD3068(&qword_1EBACB210, type metadata accessor for Searchfoundation_AudioPlaybackCardSection, protocol conformance descriptor for Searchfoundation_AudioPlaybackCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightCardSection(0);
  sub_1B8CD3068(&qword_1EBACE710, type metadata accessor for Searchfoundation_FlightCardSection, protocol conformance descriptor for Searchfoundation_FlightCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ActivityIndicatorCardSection(0);
  sub_1B8CD3068(&qword_1EBACB070, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection, protocol conformance descriptor for Searchfoundation_ActivityIndicatorCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_WebCardSection(0);
  sub_1B8CD3068(&qword_1EBACE708, type metadata accessor for Searchfoundation_WebCardSection, protocol conformance descriptor for Searchfoundation_WebCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93852F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MessageCardSection(0);
  sub_1B8CD3068(&qword_1EBACE700, type metadata accessor for Searchfoundation_MessageCardSection, protocol conformance descriptor for Searchfoundation_MessageCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93853D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_DetailedRowCardSection(0);
  sub_1B8CD3068(&qword_1ED9CA2C8, type metadata accessor for Searchfoundation_DetailedRowCardSection, protocol conformance descriptor for Searchfoundation_DetailedRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93854B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ImagesCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6F8, type metadata accessor for Searchfoundation_ImagesCardSection, protocol conformance descriptor for Searchfoundation_ImagesCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SuggestionCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6F0, type metadata accessor for Searchfoundation_SuggestionCardSection, protocol conformance descriptor for Searchfoundation_SuggestionCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SelectableGridCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6E8, type metadata accessor for Searchfoundation_SelectableGridCardSection, protocol conformance descriptor for Searchfoundation_SelectableGridCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SectionHeaderCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6E0, type metadata accessor for Searchfoundation_SectionHeaderCardSection, protocol conformance descriptor for Searchfoundation_SectionHeaderCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6D8, type metadata accessor for Searchfoundation_MetaInfoCardSection, protocol conformance descriptor for Searchfoundation_MetaInfoCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93858FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_WatchListCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6D0, type metadata accessor for Searchfoundation_WatchListCardSection, protocol conformance descriptor for Searchfoundation_WatchListCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93859D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6C8, type metadata accessor for Searchfoundation_MapsDetailedRowCardSection, protocol conformance descriptor for Searchfoundation_MapsDetailedRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACB2A0, type metadata accessor for Searchfoundation_ButtonCardSection, "A(}5h.\b");
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACD000, type metadata accessor for Searchfoundation_HorizontalButtonCardSection, protocol conformance descriptor for Searchfoundation_HorizontalButtonCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6C0, type metadata accessor for Searchfoundation_VerticalLayoutCardSection, protocol conformance descriptor for Searchfoundation_VerticalLayoutCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ProductCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6B8, type metadata accessor for Searchfoundation_ProductCardSection, protocol conformance descriptor for Searchfoundation_ProductCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  sub_1B8CD3068(&qword_1EBACD048, type metadata accessor for Searchfoundation_HorizontalScrollCardSection, protocol conformance descriptor for Searchfoundation_HorizontalScrollCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6B0, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, protocol conformance descriptor for Searchfoundation_MediaRemoteControlCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9385FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  sub_1B8CD3068(&qword_1EBAB4A58, type metadata accessor for Searchfoundation_MapPlaceCardSection, protocol conformance descriptor for Searchfoundation_MapPlaceCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93860B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  sub_1B8CD3068(&qword_1EBAB4728, type metadata accessor for Searchfoundation_CompactRowCardSection, protocol conformance descriptor for Searchfoundation_CompactRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6A8, type metadata accessor for Searchfoundation_WorldMapCardSection, protocol conformance descriptor for Searchfoundation_WorldMapCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  sub_1B8CD3068(&qword_1ED9C9BD8, type metadata accessor for Searchfoundation_AttributionFooterCardSection, protocol conformance descriptor for Searchfoundation_AttributionFooterCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_GridCardSection(0);
  sub_1B8CD3068(&qword_1EBACD068, type metadata accessor for Searchfoundation_GridCardSection, protocol conformance descriptor for Searchfoundation_GridCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  sub_1B8CD3068(&qword_1EBACE6A0, type metadata accessor for Searchfoundation_PersonHeaderCardSection, protocol conformance descriptor for Searchfoundation_PersonHeaderCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  sub_1B8CD3068(&qword_1EBACE698, type metadata accessor for Searchfoundation_ColorBarCardSection, protocol conformance descriptor for Searchfoundation_ColorBarCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93865E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SplitCardSection(0);
  sub_1B8CD3068(&qword_1EBACE690, type metadata accessor for Searchfoundation_SplitCardSection, protocol conformance descriptor for Searchfoundation_SplitCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93866BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  sub_1B8CD3068(&qword_1EBACE688, type metadata accessor for Searchfoundation_LinkPresentationCardSection, protocol conformance descriptor for Searchfoundation_LinkPresentationCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FindMyCardSection(0);
  sub_1B8CD3068(&qword_1EBACE680, type metadata accessor for Searchfoundation_FindMyCardSection, protocol conformance descriptor for Searchfoundation_FindMyCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_HeroCardSection(0);
  sub_1B8CD3068(&qword_1EBACD080, type metadata accessor for Searchfoundation_HeroCardSection, protocol conformance descriptor for Searchfoundation_HeroCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_NewsCardSection(0);
  sub_1B8CD3068(&qword_1EBACE678, type metadata accessor for Searchfoundation_NewsCardSection, protocol conformance descriptor for Searchfoundation_NewsCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MiniCardSection(0);
  sub_1B8CD3068(&qword_1EBACE670, type metadata accessor for Searchfoundation_MiniCardSection, protocol conformance descriptor for Searchfoundation_MiniCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_InfoCardSection(0);
  sub_1B8CD3068(&qword_1EBACD0C0, type metadata accessor for Searchfoundation_InfoCardSection, protocol conformance descriptor for Searchfoundation_InfoCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CollectionCardSection(0);
  sub_1B8CD3068(&qword_1ED9CA440, type metadata accessor for Searchfoundation_CollectionCardSection, protocol conformance descriptor for Searchfoundation_CollectionCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CombinedCardSection(0);
  sub_1B8CD3068(&qword_1EBACD030, type metadata accessor for Searchfoundation_CombinedCardSection, protocol conformance descriptor for Searchfoundation_CombinedCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B8CD3068(&qword_1EBACE668, type metadata accessor for Searchfoundation_ResponseWrapperCardSection, protocol conformance descriptor for Searchfoundation_ResponseWrapperCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ListenToCardSection(0);
  sub_1B8CD3068(&qword_1EBACD688, type metadata accessor for Searchfoundation_ListenToCardSection, protocol conformance descriptor for Searchfoundation_ListenToCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9386F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  sub_1B8CD3068(&qword_1EBACD6A0, type metadata accessor for Searchfoundation_WatchNowCardSection, protocol conformance descriptor for Searchfoundation_WatchNowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  sub_1B8CD3068(&qword_1EBACE660, type metadata accessor for Searchfoundation_StrokeAnimationCardSection, protocol conformance descriptor for Searchfoundation_StrokeAnimationCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  sub_1B8CD3068(&qword_1EBACD018, type metadata accessor for Searchfoundation_ButtonListCardSection, protocol conformance descriptor for Searchfoundation_ButtonListCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93871E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  sub_1B8CD3068(&qword_1EBACD138, type metadata accessor for Searchfoundation_CommandRowCardSection, protocol conformance descriptor for Searchfoundation_CommandRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93872C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  sub_1B8CD3068(&qword_1EBACD0E0, type metadata accessor for Searchfoundation_LeadingTrailingCardSection, protocol conformance descriptor for Searchfoundation_LeadingTrailingCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93873A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  sub_1B8CD3068(&qword_1EBACD098, type metadata accessor for Searchfoundation_HeroTitleCardSection, protocol conformance descriptor for Searchfoundation_HeroTitleCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  sub_1B8CD3068(&qword_1EBACB178, type metadata accessor for Searchfoundation_ArchiveViewCardSection, protocol conformance descriptor for Searchfoundation_ArchiveViewCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AppIconCardSection(0);
  sub_1B8CD3068(&qword_1EBACD150, type metadata accessor for Searchfoundation_AppIconCardSection, protocol conformance descriptor for Searchfoundation_AppIconCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  sub_1B8CD3068(&qword_1EBACD168, type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection, protocol conformance descriptor for Searchfoundation_LargeTitleDetailedRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  sub_1B8CD3068(&qword_1EBACE658, type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection, protocol conformance descriptor for Searchfoundation_SafariTableOfContentsCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93877EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  sub_1B8CD3068(&qword_1EBACE650, type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemShortNumberCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93878C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  sub_1B8CD3068(&qword_1EBAB41E0, type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemTextCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93879A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  sub_1B8CD3068(&qword_1EBACE648, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortNumberCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBACE640, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  sub_1B8CD3068(&qword_1EBACE638, type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderRichCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBACE630, type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  sub_1B8CD3068(&qword_1EBACE628, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceFootnoteCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9387FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  sub_1B8CD3068(&qword_1EBACE620, type metadata accessor for Searchfoundation_RFReferenceRichCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceRichCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  sub_1B8CD3068(&qword_1ED9C9CA0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemRichCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBACE618, type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  sub_1B8CD3068(&qword_1EBACE610, type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemAlignedTextCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBACE608, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection, protocol conformance descriptor for Searchfoundation_RFExpandableStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93883F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBAB42F0, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemButtonCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93884D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  sub_1B8CD3068(&qword_1EBACE600, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemHeroNumberCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93885AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5F8, type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5F0, type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemDetailedTextCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  sub_1B8CD3068(&qword_1EBACD990, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection, "IO|5xl\a");
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5E8, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPairCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  sub_1B8CD3068(&qword_1EBACD9F0, type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPairNumberCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93889F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5E0, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortHeroNumberCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  sub_1B8CD3068(qword_1ED9C9008, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemDetailedNumberCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACD9C0, type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemHeroButtonCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5D8, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemImageRightCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  sub_1B8CD3068(&qword_1EBACE5D0, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemSwitchV2CardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5C8, type metadata accessor for Searchfoundation_RFTableHeaderCardSection, protocol conformance descriptor for Searchfoundation_RFTableHeaderCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5C0, type metadata accessor for Searchfoundation_RFTableRowCardSection, protocol conformance descriptor for Searchfoundation_RFTableRowCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9388FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5B8, type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemVisualElementCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93890D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  sub_1B8CD3068(&qword_1EBACD9A8, type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPlayerCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93891B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5B0, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemImageRightCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACD9D8, type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemButtonCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5A8, type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemReverseRichCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection(0);
  sub_1B8CD3068(&qword_1EBACE5A0, type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemRichSearchResultCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection(0);
  sub_1B8CD3068(&qword_1EBACE598, type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection(0);
  sub_1B8CD3068(&qword_1EBACE590, type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceItemLogoCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93896DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACDA08, type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection, "AH|58f\a");
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93897B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACDA20, type metadata accessor for Searchfoundation_RFButtonCardSection, protocol conformance descriptor for Searchfoundation_RFButtonCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACDA38, type metadata accessor for Searchfoundation_RFBinaryButtonCardSection, protocol conformance descriptor for Searchfoundation_RFBinaryButtonCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection(0);
  sub_1B8CD3068(&qword_1EBACE588, type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceCenteredCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBACE580, type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSecondaryHeaderStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection(0);
  sub_1B8CD3068(&qword_1EBACE578, type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection, protocol conformance descriptor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFMapCardSection(0);
  sub_1B8CD3068(&qword_1EBACE570, type metadata accessor for Searchfoundation_RFMapCardSection, protocol conformance descriptor for Searchfoundation_RFMapCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFReferenceStandardCardSection(0);
  sub_1B8CD3068(&qword_1EBACE568, type metadata accessor for Searchfoundation_RFReferenceStandardCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceStandardCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  sub_1B8CD3068(&qword_1EBACE560, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFMultiButtonCardSection(0);
  sub_1B8CD3068(&qword_1EBACDA50, type metadata accessor for Searchfoundation_RFMultiButtonCardSection, "\tD|5xb\a");
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9389F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  sub_1B8CD3068(&qword_1ED9C9510, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, protocol conformance descriptor for Searchfoundation_RFDisambiguationTitleCardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B938A080(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v786 = v1;
  v788 = v3;
  v789 = v4;
  v787 = v5;
  v6 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC548, &qword_1B96B9860);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v654 = v458 - v8;
  v655 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  MEMORY[0x1EEE9AC00](v655);
  v656 = v458 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC540, &qword_1B96B9858);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v651 = v458 - v11;
  v652 = type metadata accessor for Searchfoundation_RFMultiButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v652);
  v653 = v458 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC550, &qword_1B96B9868);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v648 = v458 - v14;
  v649 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  MEMORY[0x1EEE9AC00](v649);
  v650 = v458 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC538, &qword_1B96B9850);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v645 = v458 - v17;
  v646 = type metadata accessor for Searchfoundation_RFReferenceStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v646);
  v647 = v458 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC530, &qword_1B96B9848);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v642 = v458 - v20;
  v643 = type metadata accessor for Searchfoundation_RFMapCardSection(0);
  MEMORY[0x1EEE9AC00](v643);
  v644 = v458 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC528, &qword_1B96B9840);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v639 = v458 - v23;
  v640 = type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection(0);
  MEMORY[0x1EEE9AC00](v640);
  v641 = v458 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC520, &qword_1B96B9838);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v636 = v458 - v26;
  v637 = type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v637);
  v638 = v458 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC518, &qword_1B96B9830);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v633 = v458 - v29;
  v634 = type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection(0);
  MEMORY[0x1EEE9AC00](v634);
  v635 = v458 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC510, &qword_1B96B9828);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v630 = v458 - v32;
  v631 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v631);
  v632 = v458 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC508, &qword_1B96B9820);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v627 = v458 - v35;
  v628 = type metadata accessor for Searchfoundation_RFButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v628);
  v629 = v458 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC500, &qword_1B96B9818);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v624 = v458 - v38;
  v625 = type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v625);
  v626 = v458 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4F8, &qword_1B96B9810);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v621 = v458 - v41;
  v622 = type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection(0);
  MEMORY[0x1EEE9AC00](v622);
  v623 = v458 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC4F0, &qword_1B96B9808);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v618 = v458 - v44;
  v619 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection(0);
  MEMORY[0x1EEE9AC00](v619);
  v620 = v458 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4E8, &qword_1B96B9800);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v615 = v458 - v47;
  v616 = type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection(0);
  MEMORY[0x1EEE9AC00](v616);
  v617 = v458 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4E0, &qword_1B96B97F8);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v612 = v458 - v50;
  v613 = type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection(0);
  MEMORY[0x1EEE9AC00](v613);
  v614 = v458 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4D8, &qword_1B96B97F0);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v609 = v458 - v53;
  v610 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v610);
  v611 = v458 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC4D0, &qword_1B96B97E8);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v606 = v458 - v56;
  v607 = type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0);
  MEMORY[0x1EEE9AC00](v607);
  v608 = v458 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4C8, &qword_1B96B97E0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v603 = v458 - v59;
  v604 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  MEMORY[0x1EEE9AC00](v604);
  v605 = v458 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC4C0, &qword_1B96B97D8);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v600 = v458 - v62;
  v601 = type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection(0);
  MEMORY[0x1EEE9AC00](v601);
  v602 = v458 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4B8, &qword_1B96B97D0);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v597 = v458 - v65;
  v598 = type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  MEMORY[0x1EEE9AC00](v598);
  v599 = v458 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4B0, &qword_1B96B97C8);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v594 = v458 - v68;
  v595 = type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  MEMORY[0x1EEE9AC00](v595);
  v596 = v458 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4A8, &qword_1B96B97C0);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v591 = v458 - v71;
  v592 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  MEMORY[0x1EEE9AC00](v592);
  v593 = v458 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4A0, &qword_1B96B97B8);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v588 = v458 - v74;
  v589 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  MEMORY[0x1EEE9AC00](v589);
  v590 = v458 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC498, &qword_1B96B97B0);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v585 = v458 - v77;
  v586 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v586);
  v587 = v458 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC490, &qword_1B96B97A8);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v582 = v458 - v80;
  v583 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  MEMORY[0x1EEE9AC00](v583);
  v584 = v458 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC488, &qword_1B96B97A0);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v579 = v458 - v83;
  v580 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  MEMORY[0x1EEE9AC00](v580);
  v581 = v458 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC480, &qword_1B96B9798);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v576 = v458 - v86;
  v577 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  MEMORY[0x1EEE9AC00](v577);
  v578 = v458 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC478, &qword_1B96B9790);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v573 = v458 - v89;
  v574 = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  MEMORY[0x1EEE9AC00](v574);
  v575 = v458 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC470, &qword_1B96B9788);
  MEMORY[0x1EEE9AC00](v91 - 8);
  v570 = v458 - v92;
  v571 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  MEMORY[0x1EEE9AC00](v571);
  v572 = v458 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC468, &qword_1B96B9780);
  MEMORY[0x1EEE9AC00](v94 - 8);
  v567 = v458 - v95;
  v568 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  MEMORY[0x1EEE9AC00](v568);
  v569 = v458 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC460, &qword_1B96B9778);
  MEMORY[0x1EEE9AC00](v97 - 8);
  v564 = v458 - v98;
  v565 = type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  MEMORY[0x1EEE9AC00](v565);
  v566 = v458 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC458, &qword_1B96B9770);
  MEMORY[0x1EEE9AC00](v100 - 8);
  v561 = v458 - v101;
  v562 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  MEMORY[0x1EEE9AC00](v562);
  v563 = v458 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC450, &qword_1B96B9768);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v558 = v458 - v104;
  v559 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v559);
  v560 = v458 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC448, &qword_1B96B9760);
  MEMORY[0x1EEE9AC00](v106 - 8);
  v555 = v458 - v107;
  v556 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v556);
  v557 = v458 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC440, &qword_1B96B9758);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v552 = v458 - v110;
  v553 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  MEMORY[0x1EEE9AC00](v553);
  v554 = v458 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC438, &qword_1B96B9750);
  MEMORY[0x1EEE9AC00](v112 - 8);
  v549 = v458 - v113;
  v550 = type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v550);
  v551 = v458 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC430, &unk_1B96DFD00);
  MEMORY[0x1EEE9AC00](v115 - 8);
  v546 = v458 - v116;
  v547 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  MEMORY[0x1EEE9AC00](v547);
  v548 = v458 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC428, &unk_1B96B9740);
  MEMORY[0x1EEE9AC00](v118 - 8);
  v543 = v458 - v119;
  v544 = type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  MEMORY[0x1EEE9AC00](v544);
  v545 = v458 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC420, &unk_1B96D9370);
  MEMORY[0x1EEE9AC00](v121 - 8);
  v540 = v458 - v122;
  v541 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  MEMORY[0x1EEE9AC00](v541);
  v542 = v458 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC418, &unk_1B96B9730);
  MEMORY[0x1EEE9AC00](v124 - 8);
  v537 = v458 - v125;
  v538 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v538);
  v539 = v458 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC410, &qword_1B96B9728);
  MEMORY[0x1EEE9AC00](v127 - 8);
  v534 = v458 - v128;
  v535 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  MEMORY[0x1EEE9AC00](v535);
  v536 = v458 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC408, &qword_1B96B9720);
  MEMORY[0x1EEE9AC00](v130 - 8);
  v531 = v458 - v131;
  v532 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v532);
  v533 = v458 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC400, &qword_1B96B9718);
  MEMORY[0x1EEE9AC00](v133 - 8);
  v528 = v458 - v134;
  v529 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v529);
  v530 = v458 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F8, &qword_1B96B9710);
  MEMORY[0x1EEE9AC00](v136 - 8);
  v525 = v458 - v137;
  v526 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  MEMORY[0x1EEE9AC00](v526);
  v527 = v458 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F0, &qword_1B96B9708);
  MEMORY[0x1EEE9AC00](v139 - 8);
  v522 = v458 - v140;
  v523 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v523);
  v524 = v458 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3E8, &qword_1B96B9700);
  MEMORY[0x1EEE9AC00](v142 - 8);
  v519 = v458 - v143;
  v520 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  MEMORY[0x1EEE9AC00](v520);
  v521 = v458 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3E0, &qword_1B96B96F8);
  MEMORY[0x1EEE9AC00](v145 - 8);
  v516 = v458 - v146;
  v517 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  MEMORY[0x1EEE9AC00](v517);
  v518 = v458 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D8, &qword_1B96B96F0);
  MEMORY[0x1EEE9AC00](v148 - 8);
  v513 = v458 - v149;
  v514 = type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  MEMORY[0x1EEE9AC00](v514);
  v515 = v458 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D0, &qword_1B96B96E8);
  MEMORY[0x1EEE9AC00](v151 - 8);
  v510 = v458 - v152;
  v511 = type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  MEMORY[0x1EEE9AC00](v511);
  v512 = v458 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3C8, &qword_1B96B96E0);
  MEMORY[0x1EEE9AC00](v154 - 8);
  v507 = v458 - v155;
  v508 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  MEMORY[0x1EEE9AC00](v508);
  v509 = v458 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3C0, &qword_1B96B96D8);
  MEMORY[0x1EEE9AC00](v157 - 8);
  v504 = v458 - v158;
  v505 = type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  MEMORY[0x1EEE9AC00](v505);
  v506 = v458 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3B8, &qword_1B96B96D0);
  MEMORY[0x1EEE9AC00](v160 - 8);
  v501 = v458 - v161;
  v502 = type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  MEMORY[0x1EEE9AC00](v502);
  v503 = v458 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3B0, &qword_1B96B96C8);
  MEMORY[0x1EEE9AC00](v163 - 8);
  v498 = v458 - v164;
  v499 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  MEMORY[0x1EEE9AC00](v499);
  v500 = v458 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3A8, &qword_1B96B96C0);
  MEMORY[0x1EEE9AC00](v166 - 8);
  v495 = v458 - v167;
  v496 = type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  MEMORY[0x1EEE9AC00](v496);
  v497 = v458 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3A0, &qword_1B96B96B8);
  MEMORY[0x1EEE9AC00](v169 - 8);
  v492 = v458 - v170;
  v493 = type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  MEMORY[0x1EEE9AC00](v493);
  v494 = v458 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC398, &qword_1B96B96B0);
  MEMORY[0x1EEE9AC00](v172 - 8);
  v489 = v458 - v173;
  v490 = type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  MEMORY[0x1EEE9AC00](v490);
  v491 = v458 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC390, &qword_1B96B96A8);
  MEMORY[0x1EEE9AC00](v175 - 8);
  v486 = v458 - v176;
  v487 = type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  MEMORY[0x1EEE9AC00](v487);
  v488 = v458 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC388, &qword_1B96B96A0);
  MEMORY[0x1EEE9AC00](v178 - 8);
  v483 = v458 - v179;
  v484 = type metadata accessor for Searchfoundation_ListenToCardSection(0);
  MEMORY[0x1EEE9AC00](v484);
  v485 = v458 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC380, &qword_1B96B9698);
  MEMORY[0x1EEE9AC00](v181 - 8);
  v480 = v458 - v182;
  v481 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  MEMORY[0x1EEE9AC00](v481);
  v482 = v458 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC378, &qword_1B96B9690);
  MEMORY[0x1EEE9AC00](v184 - 8);
  v477 = v458 - v185;
  v478 = type metadata accessor for Searchfoundation_CombinedCardSection(0);
  MEMORY[0x1EEE9AC00](v478);
  v479 = v458 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC370, &qword_1B96B9688);
  MEMORY[0x1EEE9AC00](v187 - 8);
  v474 = v458 - v188;
  v475 = type metadata accessor for Searchfoundation_CollectionCardSection(0);
  MEMORY[0x1EEE9AC00](v475);
  v476 = v458 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC368, &qword_1B96B9680);
  MEMORY[0x1EEE9AC00](v190 - 8);
  v471 = v458 - v191;
  v472 = type metadata accessor for Searchfoundation_InfoCardSection(0);
  MEMORY[0x1EEE9AC00](v472);
  v473 = v458 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC360, &qword_1B96B9678);
  MEMORY[0x1EEE9AC00](v193 - 8);
  v468 = v458 - v194;
  v469 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  MEMORY[0x1EEE9AC00](v469);
  v470 = v458 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC358, &qword_1B96B9670);
  MEMORY[0x1EEE9AC00](v196 - 8);
  v465 = v458 - v197;
  v466 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  MEMORY[0x1EEE9AC00](v466);
  v467 = v458 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC350, &qword_1B96B9668);
  MEMORY[0x1EEE9AC00](v199 - 8);
  v462 = v458 - v200;
  v463 = type metadata accessor for Searchfoundation_HeroCardSection(0);
  MEMORY[0x1EEE9AC00](v463);
  v464 = v458 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC348, &qword_1B96B9660);
  MEMORY[0x1EEE9AC00](v202 - 8);
  v459 = v458 - v203;
  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection(0);
  MEMORY[0x1EEE9AC00](MyCardSection);
  v461 = v458 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC340, &qword_1B96B9658);
  MEMORY[0x1EEE9AC00](v205 - 8);
  v660 = v458 - v206;
  v661 = type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  MEMORY[0x1EEE9AC00](v661);
  v458[2] = v458 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC338, &qword_1B96B9650);
  MEMORY[0x1EEE9AC00](v208 - 8);
  v658 = v458 - v209;
  v659 = type metadata accessor for Searchfoundation_SplitCardSection(0);
  MEMORY[0x1EEE9AC00](v659);
  v458[1] = v458 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC330, &qword_1B96B9648);
  MEMORY[0x1EEE9AC00](v211 - 8);
  v666 = v458 - v212;
  v664 = type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  MEMORY[0x1EEE9AC00](v664);
  v657 = v458 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC328, &qword_1B96B9640);
  MEMORY[0x1EEE9AC00](v214 - 8);
  v669 = v458 - v215;
  v665 = type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  MEMORY[0x1EEE9AC00](v665);
  v663 = v458 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC320, &qword_1B96B9638);
  MEMORY[0x1EEE9AC00](v217 - 8);
  v670 = v458 - v218;
  v668 = type metadata accessor for Searchfoundation_GridCardSection(0);
  MEMORY[0x1EEE9AC00](v668);
  v662 = v458 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC318, &qword_1B96B9630);
  MEMORY[0x1EEE9AC00](v220 - 8);
  v675 = v458 - v221;
  v672 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  MEMORY[0x1EEE9AC00](v672);
  v667 = v458 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC310, &qword_1B96B9628);
  MEMORY[0x1EEE9AC00](v223 - 8);
  v676 = v458 - v224;
  v674 = type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  MEMORY[0x1EEE9AC00](v674);
  v671 = v458 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC308, &qword_1B96B9620);
  MEMORY[0x1EEE9AC00](v226 - 8);
  v680 = v458 - v227;
  v678 = type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  MEMORY[0x1EEE9AC00](v678);
  v673 = v458 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC300, &qword_1B96B9618);
  MEMORY[0x1EEE9AC00](v229 - 8);
  v682 = v458 - v230;
  v681 = type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  MEMORY[0x1EEE9AC00](v681);
  v677 = v458 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2F8, &qword_1B96B9610);
  MEMORY[0x1EEE9AC00](v232 - 8);
  v685 = v458 - v233;
  v684 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  MEMORY[0x1EEE9AC00](v684);
  v679 = v458 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2F0, &qword_1B96B9608);
  MEMORY[0x1EEE9AC00](v235 - 8);
  v688 = v458 - v236;
  v687 = type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  MEMORY[0x1EEE9AC00](v687);
  v683 = v458 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E8, &qword_1B96B9600);
  MEMORY[0x1EEE9AC00](v238 - 8);
  v691 = v458 - v239;
  v690 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  MEMORY[0x1EEE9AC00](v690);
  v686 = v458 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E0, &qword_1B96B95F8);
  MEMORY[0x1EEE9AC00](v241 - 8);
  v694 = v458 - v242;
  v693 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  MEMORY[0x1EEE9AC00](v693);
  v689 = v458 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2D8, &qword_1B96B95F0);
  MEMORY[0x1EEE9AC00](v244 - 8);
  v697 = v458 - v245;
  v696 = type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v696);
  v692 = v458 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2D0, &qword_1B96B95E8);
  MEMORY[0x1EEE9AC00](v247 - 8);
  v700 = v458 - v248;
  v699 = type metadata accessor for Searchfoundation_ButtonCardSection(0);
  MEMORY[0x1EEE9AC00](v699);
  v695 = v458 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C8, &qword_1B96B95E0);
  MEMORY[0x1EEE9AC00](v250 - 8);
  v703 = v458 - v251;
  v702 = type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  MEMORY[0x1EEE9AC00](v702);
  v698 = v458 - ((v252 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C0, &qword_1B96B95D8);
  MEMORY[0x1EEE9AC00](v253 - 8);
  v706 = v458 - v254;
  v705 = type metadata accessor for Searchfoundation_WatchListCardSection(0);
  MEMORY[0x1EEE9AC00](v705);
  v701 = v458 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2B8, &qword_1B96B95D0);
  MEMORY[0x1EEE9AC00](v256 - 8);
  v710 = v458 - v257;
  v708 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  MEMORY[0x1EEE9AC00](v708);
  v704 = v458 - ((v258 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2B0, &qword_1B96B95C8);
  MEMORY[0x1EEE9AC00](v259 - 8);
  v716 = v458 - v260;
  v714 = type metadata accessor for Searchfoundation_SectionHeaderCardSection(0);
  MEMORY[0x1EEE9AC00](v714);
  v707 = v458 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2A8, &qword_1B96B95C0);
  MEMORY[0x1EEE9AC00](v262 - 8);
  v712 = v458 - v263;
  v713 = type metadata accessor for Searchfoundation_SelectableGridCardSection(0);
  MEMORY[0x1EEE9AC00](v713);
  v711 = v458 - ((v264 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2A0, &qword_1B96B95B8);
  MEMORY[0x1EEE9AC00](v265 - 8);
  v717 = v458 - v266;
  v718 = type metadata accessor for Searchfoundation_SuggestionCardSection(0);
  MEMORY[0x1EEE9AC00](v718);
  v709 = v458 - ((v267 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC298, &qword_1B96B95B0);
  MEMORY[0x1EEE9AC00](v268 - 8);
  v720 = v458 - v269;
  v721 = type metadata accessor for Searchfoundation_ImagesCardSection(0);
  MEMORY[0x1EEE9AC00](v721);
  v715 = v458 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC290, &qword_1B96B95A8);
  MEMORY[0x1EEE9AC00](v271 - 8);
  v747 = v458 - v272;
  v723 = type metadata accessor for Searchfoundation_DetailedRowCardSection(0);
  MEMORY[0x1EEE9AC00](v723);
  v719 = v458 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC288, &qword_1B96B95A0);
  MEMORY[0x1EEE9AC00](v274 - 8);
  v751 = v458 - v275;
  v725 = type metadata accessor for Searchfoundation_MessageCardSection(0);
  MEMORY[0x1EEE9AC00](v725);
  v722 = v458 - ((v276 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC280, &qword_1B96B9598);
  MEMORY[0x1EEE9AC00](v277 - 8);
  v727 = v458 - v278;
  v728 = type metadata accessor for Searchfoundation_WebCardSection(0);
  MEMORY[0x1EEE9AC00](v728);
  v724 = v458 - ((v279 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC278, &qword_1B96B9590);
  MEMORY[0x1EEE9AC00](v280 - 8);
  v730 = v458 - v281;
  v731 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection(0);
  MEMORY[0x1EEE9AC00](v731);
  v726 = v458 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC270, &qword_1B96B9588);
  MEMORY[0x1EEE9AC00](v283 - 8);
  v733 = v458 - v284;
  v734 = type metadata accessor for Searchfoundation_FlightCardSection(0);
  MEMORY[0x1EEE9AC00](v734);
  v729 = v458 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC268, &qword_1B96B9580);
  MEMORY[0x1EEE9AC00](v286 - 8);
  v736 = v458 - v287;
  v737 = type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  MEMORY[0x1EEE9AC00](v737);
  v732 = v458 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC260, &qword_1B96B9578);
  MEMORY[0x1EEE9AC00](v289 - 8);
  v739 = v458 - v290;
  v740 = type metadata accessor for Searchfoundation_TrackListCardSection(0);
  MEMORY[0x1EEE9AC00](v740);
  v735 = v458 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC258, &qword_1B96B9570);
  MEMORY[0x1EEE9AC00](v292 - 8);
  v742 = v458 - v293;
  v743 = type metadata accessor for Searchfoundation_TitleCardSection(0);
  MEMORY[0x1EEE9AC00](v743);
  v738 = v458 - ((v294 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC250, &qword_1B96B9568);
  MEMORY[0x1EEE9AC00](v295 - 8);
  v745 = v458 - v296;
  v746 = type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  MEMORY[0x1EEE9AC00](v746);
  v741 = v458 - ((v297 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC248, &qword_1B96B9560);
  MEMORY[0x1EEE9AC00](v298 - 8);
  v749 = v458 - v299;
  v750 = type metadata accessor for Searchfoundation_TableRowCardSection(0);
  MEMORY[0x1EEE9AC00](v750);
  v744 = v458 - ((v300 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC240, &qword_1B96B9558);
  MEMORY[0x1EEE9AC00](v301 - 8);
  v753 = v458 - v302;
  v754 = type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  MEMORY[0x1EEE9AC00](v754);
  v748 = v458 - ((v303 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC238, &qword_1B96B9550);
  MEMORY[0x1EEE9AC00](v304 - 8);
  v756 = v458 - v305;
  v757 = type metadata accessor for Searchfoundation_StockChartCardSection(0);
  MEMORY[0x1EEE9AC00](v757);
  v752 = v458 - ((v306 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC230, &qword_1B96B9548);
  MEMORY[0x1EEE9AC00](v307 - 8);
  v759 = v458 - v308;
  v760 = type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  MEMORY[0x1EEE9AC00](v760);
  v755 = v458 - ((v309 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC228, &qword_1B96B9540);
  MEMORY[0x1EEE9AC00](v310 - 8);
  v770 = v458 - v311;
  v762 = type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  MEMORY[0x1EEE9AC00](v762);
  v758 = v458 - ((v312 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC220, &qword_1B96B9538);
  MEMORY[0x1EEE9AC00](v313 - 8);
  v764 = v458 - v314;
  v765 = type metadata accessor for Searchfoundation_RowCardSection(0);
  MEMORY[0x1EEE9AC00](v765);
  v761 = v458 - ((v315 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC218, &qword_1B96B9530);
  MEMORY[0x1EEE9AC00](v316 - 8);
  v767 = v458 - v317;
  v768 = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  MEMORY[0x1EEE9AC00](v768);
  v763 = v458 - ((v318 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC210, &qword_1B96B9528);
  MEMORY[0x1EEE9AC00](v319 - 8);
  v771 = v458 - v320;
  v772 = type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  MEMORY[0x1EEE9AC00](v772);
  v766 = v458 - ((v321 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC208, &qword_1B96B9520);
  MEMORY[0x1EEE9AC00](v322 - 8);
  v774 = v458 - v323;
  v775 = type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  MEMORY[0x1EEE9AC00](v775);
  v769 = v458 - ((v324 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC200, &qword_1B96B9518);
  MEMORY[0x1EEE9AC00](v325 - 8);
  v785 = v458 - v326;
  v777 = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  MEMORY[0x1EEE9AC00](v777);
  v773 = v458 - ((v327 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1F8, &qword_1B96B9510);
  MEMORY[0x1EEE9AC00](v328 - 8);
  v784 = v458 - v329;
  v779 = type metadata accessor for Searchfoundation_MapCardSection(0);
  MEMORY[0x1EEE9AC00](v779);
  v776 = v458 - ((v330 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1F0, &qword_1B96B9508);
  MEMORY[0x1EEE9AC00](v331 - 8);
  v781 = v458 - v332;
  v782 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  MEMORY[0x1EEE9AC00](v782);
  v778 = v458 - ((v333 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1E8, &qword_1B96B9500);
  MEMORY[0x1EEE9AC00](v334 - 8);
  v336 = v458 - v335;
  v783 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  MEMORY[0x1EEE9AC00](v783);
  v780 = v458 - ((v337 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1E0, &qword_1B96B94F8);
  MEMORY[0x1EEE9AC00](v338 - 8);
  v340 = v458 - v339;
  v341 = type metadata accessor for Searchfoundation_AppLinkCardSection(0);
  MEMORY[0x1EEE9AC00](v341);
  swift_beginAccess();
  v790 = v6;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v340, 1, v341) == 1)
  {
    sub_1B8D9207C(v340, &unk_1EBACC1E0, &qword_1B96B94F8);
    v342 = v786;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB0F8, type metadata accessor for Searchfoundation_AppLinkCardSection, protocol conformance descriptor for Searchfoundation_AppLinkCardSection);
    v343 = v786;
    sub_1B964C740();
    v342 = v343;
    if (v343)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v336, 1, v783);
  v345 = v784;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v336, &qword_1EBACC1E8, &qword_1B96B9500);
    v346 = v785;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE780, type metadata accessor for Searchfoundation_DescriptionCardSection, protocol conformance descriptor for Searchfoundation_DescriptionCardSection);
    sub_1B964C740();
    v346 = v785;
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v347 = v781;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v347, 1, v782) == 1)
  {
    sub_1B8D9207C(v347, &qword_1EBACC1F0, &qword_1B96B9508);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE778, type metadata accessor for Searchfoundation_KeyValueDataCardSection, protocol conformance descriptor for Searchfoundation_KeyValueDataCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v345, 1, v779) == 1)
  {
    sub_1B8D9207C(v345, &unk_1EBACC1F8, &qword_1B96B9510);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE770, type metadata accessor for Searchfoundation_MapCardSection, protocol conformance descriptor for Searchfoundation_MapCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v346, 1, v777) == 1)
  {
    sub_1B8D9207C(v346, &qword_1EBACC200, &qword_1B96B9518);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE768, type metadata accessor for Searchfoundation_MediaInfoCardSection, protocol conformance descriptor for Searchfoundation_MediaInfoCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v348 = v774;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v348, 1, v775) == 1)
  {
    sub_1B8D9207C(v348, &unk_1EBACC208, &qword_1B96B9520);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE760, type metadata accessor for Searchfoundation_MediaPlayerCardSection, protocol conformance descriptor for Searchfoundation_MediaPlayerCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v349 = v771;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v349, 1, v772) == 1)
  {
    sub_1B8D9207C(v349, &unk_1EBACC210, &qword_1B96B9528);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE758, type metadata accessor for Searchfoundation_NowPlayingCardSection, protocol conformance descriptor for Searchfoundation_NowPlayingCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v350 = v767;
  sub_1B8D92024();
  v351 = __swift_getEnumTagSinglePayload(v350, 1, v768);
  v352 = v770;
  if (v351 == 1)
  {
    sub_1B8D9207C(v350, &qword_1EBACC218, &qword_1B96B9530);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACDA68, type metadata accessor for Searchfoundation_RichTitleCardSection, protocol conformance descriptor for Searchfoundation_RichTitleCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v353 = v764;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v353, 1, v765) == 1)
  {
    sub_1B8D9207C(v353, &qword_1EBACC220, &qword_1B96B9538);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE750, type metadata accessor for Searchfoundation_RowCardSection, protocol conformance descriptor for Searchfoundation_RowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
    v352 = v770;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v352, 1, v762) == 1)
  {
    sub_1B8D9207C(v352, &unk_1EBACC228, &qword_1B96B9540);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD958, type metadata accessor for Searchfoundation_ScoreboardCardSection, protocol conformance descriptor for Searchfoundation_ScoreboardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v354 = v759;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v354, 1, v760) == 1)
  {
    sub_1B8D9207C(v354, &unk_1EBACC230, &qword_1B96B9548);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE748, type metadata accessor for Searchfoundation_SocialMediaPostCardSection, protocol conformance descriptor for Searchfoundation_SocialMediaPostCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v355 = v756;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v355, 1, v757) == 1)
  {
    sub_1B8D9207C(v355, &unk_1EBACC238, &qword_1B96B9550);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE740, type metadata accessor for Searchfoundation_StockChartCardSection, protocol conformance descriptor for Searchfoundation_StockChartCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v356 = v753;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v356, 1, v754) == 1)
  {
    sub_1B8D9207C(v356, &unk_1EBACC240, &qword_1B96B9558);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE738, type metadata accessor for Searchfoundation_TableHeaderRowCardSection, protocol conformance descriptor for Searchfoundation_TableHeaderRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v357 = v749;
  sub_1B8D92024();
  v358 = __swift_getEnumTagSinglePayload(v357, 1, v750);
  v359 = v751;
  if (v358 == 1)
  {
    sub_1B8D9207C(v357, &qword_1EBACC248, &qword_1B96B9560);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE730, type metadata accessor for Searchfoundation_TableRowCardSection, protocol conformance descriptor for Searchfoundation_TableRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v360 = v745;
  sub_1B8D92024();
  v361 = __swift_getEnumTagSinglePayload(v360, 1, v746);
  v362 = v747;
  if (v361 == 1)
  {
    sub_1B8D9207C(v360, &unk_1EBACC250, &qword_1B96B9568);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE728, type metadata accessor for Searchfoundation_TextColumnsCardSection, protocol conformance descriptor for Searchfoundation_TextColumnsCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v363 = v742;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v363, 1, v743) == 1)
  {
    sub_1B8D9207C(v363, &unk_1EBACC258, &qword_1B96B9570);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE720, type metadata accessor for Searchfoundation_TitleCardSection, protocol conformance descriptor for Searchfoundation_TitleCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v364 = v739;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v364, 1, v740) == 1)
  {
    sub_1B8D9207C(v364, &qword_1EBACC260, &qword_1B96B9578);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE718, type metadata accessor for Searchfoundation_TrackListCardSection, protocol conformance descriptor for Searchfoundation_TrackListCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v365 = v736;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v365, 1, v737) == 1)
  {
    sub_1B8D9207C(v365, &qword_1EBACC268, &qword_1B96B9580);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB210, type metadata accessor for Searchfoundation_AudioPlaybackCardSection, protocol conformance descriptor for Searchfoundation_AudioPlaybackCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v366 = v733;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v366, 1, v734) == 1)
  {
    sub_1B8D9207C(v366, &qword_1EBACC270, &qword_1B96B9588);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE710, type metadata accessor for Searchfoundation_FlightCardSection, protocol conformance descriptor for Searchfoundation_FlightCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v367 = v730;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v367, 1, v731) == 1)
  {
    sub_1B8D9207C(v367, &unk_1EBACC278, &qword_1B96B9590);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB070, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection, protocol conformance descriptor for Searchfoundation_ActivityIndicatorCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v368 = v727;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v368, 1, v728) == 1)
  {
    sub_1B8D9207C(v368, &unk_1EBACC280, &qword_1B96B9598);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE708, type metadata accessor for Searchfoundation_WebCardSection, protocol conformance descriptor for Searchfoundation_WebCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v359, 1, v725) == 1)
  {
    sub_1B8D9207C(v359, &qword_1EBACC288, &qword_1B96B95A0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE700, type metadata accessor for Searchfoundation_MessageCardSection, protocol conformance descriptor for Searchfoundation_MessageCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v362, 1, v723) == 1)
  {
    sub_1B8D9207C(v362, &qword_1EBACC290, &qword_1B96B95A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9CA2C8, type metadata accessor for Searchfoundation_DetailedRowCardSection, protocol conformance descriptor for Searchfoundation_DetailedRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v369 = v720;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v369, 1, v721) == 1)
  {
    sub_1B8D9207C(v369, &unk_1EBACC298, &qword_1B96B95B0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6F8, type metadata accessor for Searchfoundation_ImagesCardSection, protocol conformance descriptor for Searchfoundation_ImagesCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v370 = v717;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v370, 1, v718) == 1)
  {
    sub_1B8D9207C(v370, &unk_1EBACC2A0, &qword_1B96B95B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6F0, type metadata accessor for Searchfoundation_SuggestionCardSection, protocol conformance descriptor for Searchfoundation_SuggestionCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v372 = v712;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v372, 1, v713) == 1)
  {
    sub_1B8D9207C(v372, &qword_1EBACC2A8, &qword_1B96B95C0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6E8, type metadata accessor for Searchfoundation_SelectableGridCardSection, protocol conformance descriptor for Searchfoundation_SelectableGridCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v373 = v716;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v373, 1, v714) == 1)
  {
    sub_1B8D9207C(v716, &unk_1EBACC2B0, &qword_1B96B95C8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6E0, type metadata accessor for Searchfoundation_SectionHeaderCardSection, protocol conformance descriptor for Searchfoundation_SectionHeaderCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v374 = v710;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v374, 1, v708) == 1)
  {
    sub_1B8D9207C(v710, &qword_1EBACC2B8, &qword_1B96B95D0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6D8, type metadata accessor for Searchfoundation_MetaInfoCardSection, protocol conformance descriptor for Searchfoundation_MetaInfoCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v375 = v706;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v375, 1, v705) == 1)
  {
    sub_1B8D9207C(v706, &qword_1EBACC2C0, &qword_1B96B95D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6D0, type metadata accessor for Searchfoundation_WatchListCardSection, protocol conformance descriptor for Searchfoundation_WatchListCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v376 = v703;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v376, 1, v702) == 1)
  {
    sub_1B8D9207C(v703, &qword_1EBACC2C8, &qword_1B96B95E0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6C8, type metadata accessor for Searchfoundation_MapsDetailedRowCardSection, protocol conformance descriptor for Searchfoundation_MapsDetailedRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v377 = v700;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v377, 1, v699) == 1)
  {
    sub_1B8D9207C(v700, &unk_1EBACC2D0, &qword_1B96B95E8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB2A0, type metadata accessor for Searchfoundation_ButtonCardSection, "A(}5h.\b");
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v378 = v697;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v378, 1, v696) == 1)
  {
    sub_1B8D9207C(v697, &qword_1EBACC2D8, &qword_1B96B95F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD000, type metadata accessor for Searchfoundation_HorizontalButtonCardSection, protocol conformance descriptor for Searchfoundation_HorizontalButtonCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v379 = v694;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v379, 1, v693) == 1)
  {
    sub_1B8D9207C(v694, &qword_1EBACC2E0, &qword_1B96B95F8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6C0, type metadata accessor for Searchfoundation_VerticalLayoutCardSection, protocol conformance descriptor for Searchfoundation_VerticalLayoutCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v380 = v691;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v380, 1, v690) == 1)
  {
    sub_1B8D9207C(v691, &qword_1EBACC2E8, &qword_1B96B9600);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6B8, type metadata accessor for Searchfoundation_ProductCardSection, protocol conformance descriptor for Searchfoundation_ProductCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v381 = v688;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v381, 1, v687) == 1)
  {
    sub_1B8D9207C(v688, &unk_1EBACC2F0, &qword_1B96B9608);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD048, type metadata accessor for Searchfoundation_HorizontalScrollCardSection, protocol conformance descriptor for Searchfoundation_HorizontalScrollCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v382 = v685;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v382, 1, v684) == 1)
  {
    sub_1B8D9207C(v685, &qword_1EBACC2F8, &qword_1B96B9610);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6B0, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, protocol conformance descriptor for Searchfoundation_MediaRemoteControlCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v383 = v682;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v383, 1, v681) == 1)
  {
    sub_1B8D9207C(v682, &qword_1EBACC300, &qword_1B96B9618);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB4A58, type metadata accessor for Searchfoundation_MapPlaceCardSection, protocol conformance descriptor for Searchfoundation_MapPlaceCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v384 = v680;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v384, 1, v678) == 1)
  {
    sub_1B8D9207C(v680, &qword_1EBACC308, &qword_1B96B9620);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB4728, type metadata accessor for Searchfoundation_CompactRowCardSection, protocol conformance descriptor for Searchfoundation_CompactRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v385 = v676;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v385, 1, v674) == 1)
  {
    sub_1B8D9207C(v676, &qword_1EBACC310, &qword_1B96B9628);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6A8, type metadata accessor for Searchfoundation_WorldMapCardSection, protocol conformance descriptor for Searchfoundation_WorldMapCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v386 = v675;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v386, 1, v672) == 1)
  {
    sub_1B8D9207C(v675, &unk_1EBACC318, &qword_1B96B9630);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9C9BD8, type metadata accessor for Searchfoundation_AttributionFooterCardSection, protocol conformance descriptor for Searchfoundation_AttributionFooterCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v387 = v670;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v387, 1, v668) == 1)
  {
    sub_1B8D9207C(v670, &qword_1EBACC320, &qword_1B96B9638);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD068, type metadata accessor for Searchfoundation_GridCardSection, protocol conformance descriptor for Searchfoundation_GridCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v388 = v669;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v388, 1, v665) == 1)
  {
    sub_1B8D9207C(v669, &unk_1EBACC328, &qword_1B96B9640);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE6A0, type metadata accessor for Searchfoundation_PersonHeaderCardSection, protocol conformance descriptor for Searchfoundation_PersonHeaderCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v389 = v666;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v389, 1, v664) == 1)
  {
    sub_1B8D9207C(v666, &qword_1EBACC330, &qword_1B96B9648);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE698, type metadata accessor for Searchfoundation_ColorBarCardSection, protocol conformance descriptor for Searchfoundation_ColorBarCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v390 = v658;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v390, 1, v659) == 1)
  {
    sub_1B8D9207C(v658, &qword_1EBACC338, &qword_1B96B9650);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE690, type metadata accessor for Searchfoundation_SplitCardSection, protocol conformance descriptor for Searchfoundation_SplitCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v391 = v660;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v391, 1, v661) == 1)
  {
    sub_1B8D9207C(v660, &unk_1EBACC340, &qword_1B96B9658);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE688, type metadata accessor for Searchfoundation_LinkPresentationCardSection, protocol conformance descriptor for Searchfoundation_LinkPresentationCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v392 = v459;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v392, 1, MyCardSection) == 1)
  {
    sub_1B8D9207C(v459, &unk_1EBACC348, &qword_1B96B9660);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE680, type metadata accessor for Searchfoundation_FindMyCardSection, protocol conformance descriptor for Searchfoundation_FindMyCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v393 = v462;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v393, 1, v463) == 1)
  {
    sub_1B8D9207C(v462, &qword_1EBACC350, &qword_1B96B9668);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD080, type metadata accessor for Searchfoundation_HeroCardSection, protocol conformance descriptor for Searchfoundation_HeroCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v394 = v465;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v394, 1, v466) == 1)
  {
    sub_1B8D9207C(v465, &qword_1EBACC358, &qword_1B96B9670);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE678, type metadata accessor for Searchfoundation_NewsCardSection, protocol conformance descriptor for Searchfoundation_NewsCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v395 = v468;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v395, 1, v469) == 1)
  {
    sub_1B8D9207C(v468, &unk_1EBACC360, &qword_1B96B9678);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE670, type metadata accessor for Searchfoundation_MiniCardSection, protocol conformance descriptor for Searchfoundation_MiniCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v396 = v471;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v396, 1, v472) == 1)
  {
    sub_1B8D9207C(v471, &unk_1EBACC368, &qword_1B96B9680);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD0C0, type metadata accessor for Searchfoundation_InfoCardSection, protocol conformance descriptor for Searchfoundation_InfoCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v397 = v474;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v397, 1, v475) == 1)
  {
    sub_1B8D9207C(v474, &unk_1EBACC370, &qword_1B96B9688);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9CA440, type metadata accessor for Searchfoundation_CollectionCardSection, protocol conformance descriptor for Searchfoundation_CollectionCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v398 = v477;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v398, 1, v478) == 1)
  {
    sub_1B8D9207C(v477, &qword_1EBACC378, &qword_1B96B9690);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD030, type metadata accessor for Searchfoundation_CombinedCardSection, protocol conformance descriptor for Searchfoundation_CombinedCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v399 = v480;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v399, 1, v481) == 1)
  {
    sub_1B8D9207C(v480, &unk_1EBACC380, &qword_1B96B9698);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE668, type metadata accessor for Searchfoundation_ResponseWrapperCardSection, protocol conformance descriptor for Searchfoundation_ResponseWrapperCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v400 = v483;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v400, 1, v484) == 1)
  {
    sub_1B8D9207C(v483, &qword_1EBACC388, &qword_1B96B96A0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD688, type metadata accessor for Searchfoundation_ListenToCardSection, protocol conformance descriptor for Searchfoundation_ListenToCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v401 = v486;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v401, 1, v487) == 1)
  {
    sub_1B8D9207C(v486, &qword_1EBACC390, &qword_1B96B96A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD6A0, type metadata accessor for Searchfoundation_WatchNowCardSection, protocol conformance descriptor for Searchfoundation_WatchNowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v402 = v489;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v402, 1, v490) == 1)
  {
    sub_1B8D9207C(v489, &unk_1EBACC398, &qword_1B96B96B0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE660, type metadata accessor for Searchfoundation_StrokeAnimationCardSection, protocol conformance descriptor for Searchfoundation_StrokeAnimationCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v403 = v492;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v403, 1, v493) == 1)
  {
    sub_1B8D9207C(v492, &unk_1EBACC3A0, &qword_1B96B96B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD018, type metadata accessor for Searchfoundation_ButtonListCardSection, protocol conformance descriptor for Searchfoundation_ButtonListCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v404 = v495;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v404, 1, v496) == 1)
  {
    sub_1B8D9207C(v495, &qword_1EBACC3A8, &qword_1B96B96C0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD138, type metadata accessor for Searchfoundation_CommandRowCardSection, protocol conformance descriptor for Searchfoundation_CommandRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v405 = v498;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v405, 1, v499) == 1)
  {
    sub_1B8D9207C(v498, &qword_1EBACC3B0, &qword_1B96B96C8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD0E0, type metadata accessor for Searchfoundation_LeadingTrailingCardSection, protocol conformance descriptor for Searchfoundation_LeadingTrailingCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v406 = v501;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v406, 1, v502) == 1)
  {
    sub_1B8D9207C(v501, &unk_1EBACC3B8, &qword_1B96B96D0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD098, type metadata accessor for Searchfoundation_HeroTitleCardSection, protocol conformance descriptor for Searchfoundation_HeroTitleCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v407 = v504;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v407, 1, v505) == 1)
  {
    sub_1B8D9207C(v504, &qword_1EBACC3C0, &qword_1B96B96D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB178, type metadata accessor for Searchfoundation_ArchiveViewCardSection, protocol conformance descriptor for Searchfoundation_ArchiveViewCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v408 = v507;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v408, 1, v508) == 1)
  {
    sub_1B8D9207C(v507, &unk_1EBACC3C8, &qword_1B96B96E0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD150, type metadata accessor for Searchfoundation_AppIconCardSection, protocol conformance descriptor for Searchfoundation_AppIconCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v409 = v510;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v409, 1, v511) == 1)
  {
    sub_1B8D9207C(v510, &qword_1EBACC3D0, &qword_1B96B96E8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD168, type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection, protocol conformance descriptor for Searchfoundation_LargeTitleDetailedRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v410 = v513;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v410, 1, v514) == 1)
  {
    sub_1B8D9207C(v513, &qword_1EBACC3D8, &qword_1B96B96F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE658, type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection, protocol conformance descriptor for Searchfoundation_SafariTableOfContentsCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v411 = v516;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v411, 1, v517) == 1)
  {
    sub_1B8D9207C(v516, &unk_1EBACC3E0, &qword_1B96B96F8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE650, type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemShortNumberCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v412 = v519;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v412, 1, v520) == 1)
  {
    sub_1B8D9207C(v519, &qword_1EBACC3E8, &qword_1B96B9700);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB41E0, type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemTextCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v413 = v522;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v413, 1, v523) == 1)
  {
    sub_1B8D9207C(v522, &qword_1EBACC3F0, &qword_1B96B9708);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v414 = v525;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v414, 1, v526) == 1)
  {
    sub_1B8D9207C(v525, &qword_1EBACC3F8, &qword_1B96B9710);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE648, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortNumberCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v415 = v528;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v415, 1, v529) == 1)
  {
    sub_1B8D9207C(v528, &qword_1EBACC400, &qword_1B96B9718);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE640, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v416 = v531;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v416, 1, v532) == 1)
  {
    sub_1B8D9207C(v531, &unk_1EBACC408, &qword_1B96B9720);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v417 = v534;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v417, 1, v535) == 1)
  {
    sub_1B8D9207C(v534, &dword_1EBACC410, &qword_1B96B9728);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE638, type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderRichCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v418 = v537;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v418, 1, v538) == 1)
  {
    sub_1B8D9207C(v537, &qword_1EBACC418, &unk_1B96B9730);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE630, type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v419 = v540;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v419, 1, v541) == 1)
  {
    sub_1B8D9207C(v540, &qword_1EBACC420, &unk_1B96D9370);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE628, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceFootnoteCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v420 = v543;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v420, 1, v544) == 1)
  {
    sub_1B8D9207C(v543, &dword_1EBACC428, &unk_1B96B9740);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE620, type metadata accessor for Searchfoundation_RFReferenceRichCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceRichCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v421 = v546;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v421, 1, v547) == 1)
  {
    sub_1B8D9207C(v546, &qword_1EBACC430, &unk_1B96DFD00);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9C9CA0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemRichCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v422 = v549;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v422, 1, v550) == 1)
  {
    sub_1B8D9207C(v549, &dword_1EBACC438, &qword_1B96B9750);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE618, type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v423 = v552;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v423, 1, v553) == 1)
  {
    sub_1B8D9207C(v552, &unk_1EBACC440, &qword_1B96B9758);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE610, type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemAlignedTextCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v424 = v555;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v424, 1, v556) == 1)
  {
    sub_1B8D9207C(v555, &qword_1EBACC448, &qword_1B96B9760);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE608, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection, protocol conformance descriptor for Searchfoundation_RFExpandableStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v425 = v558;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v425, 1, v559) == 1)
  {
    sub_1B8D9207C(v558, &qword_1EBACC450, &qword_1B96B9768);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB42F0, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemButtonCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v426 = v561;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v426, 1, v562) == 1)
  {
    sub_1B8D9207C(v561, &unk_1EBACC458, &qword_1B96B9770);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE600, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemHeroNumberCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v427 = v564;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v427, 1, v565) == 1)
  {
    sub_1B8D9207C(v564, &dword_1EBACC460, &qword_1B96B9778);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5F8, type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v428 = v567;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v428, 1, v568) == 1)
  {
    sub_1B8D9207C(v567, &qword_1EBACC468, &qword_1B96B9780);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5F0, type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemDetailedTextCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v429 = v570;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v429, 1, v571) == 1)
  {
    sub_1B8D9207C(v570, &qword_1EBACC470, &qword_1B96B9788);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD990, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection, "IO|5xl\a");
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v430 = v573;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v430, 1, v574) == 1)
  {
    sub_1B8D9207C(v573, &qword_1EBACC478, &qword_1B96B9790);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5E8, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPairCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v431 = v576;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v431, 1, v577) == 1)
  {
    sub_1B8D9207C(v576, &dword_1EBACC480, &qword_1B96B9798);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD9F0, type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPairNumberCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v432 = v579;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v432, 1, v580) == 1)
  {
    sub_1B8D9207C(v579, &unk_1EBACC488, &qword_1B96B97A0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5E0, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortHeroNumberCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v433 = v582;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v433, 1, v583) == 1)
  {
    sub_1B8D9207C(v582, &unk_1EBACC490, &qword_1B96B97A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(qword_1ED9C9008, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemDetailedNumberCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v434 = v585;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v434, 1, v586) == 1)
  {
    sub_1B8D9207C(v585, &qword_1EBACC498, &qword_1B96B97B0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD9C0, type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemHeroButtonCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v435 = v588;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v435, 1, v589) == 1)
  {
    sub_1B8D9207C(v588, &qword_1EBACC4A0, &qword_1B96B97B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5D8, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemImageRightCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v436 = v591;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v436, 1, v592) == 1)
  {
    sub_1B8D9207C(v591, &dword_1EBACC4A8, &qword_1B96B97C0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5D0, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemSwitchV2CardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v437 = v594;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v437, 1, v595) == 1)
  {
    sub_1B8D9207C(v594, &dword_1EBACC4B0, &qword_1B96B97C8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5C8, type metadata accessor for Searchfoundation_RFTableHeaderCardSection, protocol conformance descriptor for Searchfoundation_RFTableHeaderCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v438 = v597;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v438, 1, v598) == 1)
  {
    sub_1B8D9207C(v597, &dword_1EBACC4B8, &qword_1B96B97D0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5C0, type metadata accessor for Searchfoundation_RFTableRowCardSection, protocol conformance descriptor for Searchfoundation_RFTableRowCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v439 = v600;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v439, 1, v601) == 1)
  {
    sub_1B8D9207C(v600, &unk_1EBACC4C0, &qword_1B96B97D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5B8, type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemVisualElementCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v440 = v603;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v440, 1, v604) == 1)
  {
    sub_1B8D9207C(v603, &qword_1EBACC4C8, &qword_1B96B97E0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD9A8, type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPlayerCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v441 = v606;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v441, 1, v607) == 1)
  {
    sub_1B8D9207C(v606, &unk_1EBACC4D0, &qword_1B96B97E8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5B0, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemImageRightCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v442 = v609;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v442, 1, v610) == 1)
  {
    sub_1B8D9207C(v609, &qword_1EBACC4D8, &qword_1B96B97F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD9D8, type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemButtonCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v443 = v612;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v443, 1, v613) == 1)
  {
    sub_1B8D9207C(v612, &dword_1EBACC4E0, &qword_1B96B97F8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5A8, type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemReverseRichCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v444 = v615;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v444, 1, v616) == 1)
  {
    sub_1B8D9207C(v615, &dword_1EBACC4E8, &qword_1B96B9800);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE5A0, type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemRichSearchResultCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v445 = v618;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v445, 1, v619) == 1)
  {
    sub_1B8D9207C(v618, &unk_1EBACC4F0, &qword_1B96B9808);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE598, type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection, protocol conformance descriptor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v446 = v621;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v446, 1, v622) == 1)
  {
    sub_1B8D9207C(v621, &dword_1EBACC4F8, &qword_1B96B9810);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE590, type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceItemLogoCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v447 = v624;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v447, 1, v625) == 1)
  {
    sub_1B8D9207C(v624, &unk_1EBACC500, &qword_1B96B9818);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACDA08, type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection, "AH|58f\a");
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v448 = v627;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v448, 1, v628) == 1)
  {
    sub_1B8D9207C(v627, &dword_1EBACC508, &qword_1B96B9820);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACDA20, type metadata accessor for Searchfoundation_RFButtonCardSection, protocol conformance descriptor for Searchfoundation_RFButtonCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v449 = v630;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v449, 1, v631) == 1)
  {
    sub_1B8D9207C(v630, &unk_1EBACC510, &qword_1B96B9828);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACDA38, type metadata accessor for Searchfoundation_RFBinaryButtonCardSection, protocol conformance descriptor for Searchfoundation_RFBinaryButtonCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v450 = v633;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v450, 1, v634) == 1)
  {
    sub_1B8D9207C(v633, &dword_1EBACC518, &qword_1B96B9830);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE588, type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceCenteredCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v451 = v636;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v451, 1, v637) == 1)
  {
    sub_1B8D9207C(v636, &qword_1EBACC520, &qword_1B96B9838);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE580, type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSecondaryHeaderStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v452 = v639;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v452, 1, v640) == 1)
  {
    sub_1B8D9207C(v639, &dword_1EBACC528, &qword_1B96B9840);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE578, type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection, protocol conformance descriptor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v453 = v642;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v453, 1, v643) == 1)
  {
    sub_1B8D9207C(v642, &qword_1EBACC530, &qword_1B96B9848);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE570, type metadata accessor for Searchfoundation_RFMapCardSection, protocol conformance descriptor for Searchfoundation_RFMapCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v454 = v645;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v454, 1, v646) == 1)
  {
    sub_1B8D9207C(v645, &unk_1EBACC538, &qword_1B96B9850);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE568, type metadata accessor for Searchfoundation_RFReferenceStandardCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceStandardCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v455 = v648;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v455, 1, v649) == 1)
  {
    sub_1B8D9207C(v648, &qword_1EBACC550, &qword_1B96B9868);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACE560, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableCardSection);
    sub_1B964C740();
    if (v342)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v456 = v651;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v456, 1, v652) == 1)
  {
    sub_1B8D9207C(v651, &qword_1EBACC540, &qword_1B96B9858);
    goto LABEL_442;
  }

  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBACDA50, type metadata accessor for Searchfoundation_RFMultiButtonCardSection, "\tD|5xb\a");
  sub_1B964C740();
  if (v342)
  {
    return sub_1B944B0D4();
  }

  sub_1B944B0D4();
LABEL_442:
  swift_beginAccess();
  v457 = v654;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v457, 1, v655) != 1)
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9C9510, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, protocol conformance descriptor for Searchfoundation_RFDisambiguationTitleCardSection);
    sub_1B964C740();
    return sub_1B944B0D4();
  }

  return sub_1B8D9207C(v654, &qword_1EBACC548, &qword_1B96B9860);
}

uint64_t sub_1B93AD6D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDEC8, type metadata accessor for Searchfoundation_CardSectionValue, protocol conformance descriptor for Searchfoundation_CardSectionValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93AD754(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9D2A50, type metadata accessor for Searchfoundation_CardSectionValue, protocol conformance descriptor for Searchfoundation_CardSectionValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93AD7C4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1ED9D2A50, type metadata accessor for Searchfoundation_CardSectionValue, protocol conformance descriptor for Searchfoundation_CardSectionValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B93AD850()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB5C8);
  __swift_project_value_buffer(v0, qword_1EBACB5C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "punchoutOptions";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "punchoutPickerTitle";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "punchoutPickerDismissText";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "canBeHidden";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hasTopPadding";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasBottomPadding";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "separatorStyle";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "backgroundColor";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 51;
  *v26 = "buttonCardSections";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B93ADD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDEC0, type metadata accessor for Searchfoundation_HorizontalButtonCardSection, protocol conformance descriptor for Searchfoundation_HorizontalButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93ADDDC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD000, type metadata accessor for Searchfoundation_HorizontalButtonCardSection, protocol conformance descriptor for Searchfoundation_HorizontalButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93ADE4C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD000, type metadata accessor for Searchfoundation_HorizontalButtonCardSection, protocol conformance descriptor for Searchfoundation_HorizontalButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93ADED8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB5E0);
  __swift_project_value_buffer(v0, qword_1EBACB5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 50;
  *v24 = "SectionTitle";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 51;
  *v26 = "buttons";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 52;
  *v28 = "showMoreButtonTitle";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_ButtonListCardSection.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        continue;
      case 2:
      case 3:
      case 7:
        goto LABEL_14;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        continue;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8D22150();
        continue;
      case 9:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B93AE480(v7, v8, v9, v10);
        continue;
      default:
        switch(v1)
        {
          case '2':
            goto LABEL_14;
          case '3':
            v3 = OUTLINED_FUNCTION_9();
            sub_1B93AE534(v3, v4, v5, v6);
            break;
          case '4':
LABEL_14:
            OUTLINED_FUNCTION_12();
            sub_1B964C530();
            break;
        }

        break;
    }
  }
}