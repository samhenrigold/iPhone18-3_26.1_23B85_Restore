uint64_t sub_26BCEB58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_2804495A8, type metadata accessor for AllSolutionsResponse, &protocol conformance descriptor for AllSolutionsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCEB60C(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804491D0, type metadata accessor for AllSolutionsResponse, &protocol conformance descriptor for AllSolutionsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCEB67C(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_2804491D0, type metadata accessor for AllSolutionsResponse, &protocol conformance descriptor for AllSolutionsResponse);

  return sub_26BDA0A00();
}

uint64_t sub_26BCEB720()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B18);
  __swift_project_value_buffer(v0, qword_280448B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_26BDA19B0;
  v4 = v88 + v3;
  v5 = v88 + v3 + v1[14];
  *(v88 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  *(v5 + 24) = "solutionType";
  *(v5 + 32) = 12;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sub_type_string";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  *(v9 + 24) = "solutionSubType";
  *(v9 + 32) = 15;
  *(v9 + 40) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rank";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = v1[14];
  v13 = (v4 + 3 * v2);
  *v13 = 4;
  v14 = v13 + v12;
  *v14 = "call_to_action_title";
  *(v14 + 1) = 20;
  v14[16] = 2;
  *(v14 + 3) = "ctaTitle";
  *(v14 + 4) = 8;
  v14[40] = 2;
  v8();
  v15 = v1[14];
  v16 = (v4 + 4 * v2);
  *v16 = 5;
  v17 = v16 + v15;
  *v17 = "is_eligible";
  *(v17 + 1) = 11;
  v17[16] = 2;
  *(v17 + 3) = "eligible";
  *(v17 + 4) = 8;
  v17[40] = 2;
  v8();
  v18 = v1[14];
  v19 = (v4 + 5 * v2);
  *v19 = 6;
  v20 = v19 + v18;
  *v20 = "image_url_string";
  *(v20 + 1) = 16;
  v20[16] = 2;
  *(v20 + 3) = "imageUrl";
  *(v20 + 4) = 8;
  v20[40] = 2;
  v8();
  v21 = (v4 + 6 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "is_for_premium_advisor";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v8();
  v23 = v1[14];
  v24 = (v4 + 7 * v2);
  *v24 = 8;
  v25 = v24 + v23;
  *v25 = "is_serial_required";
  *(v25 + 1) = 18;
  v25[16] = 2;
  *(v25 + 3) = "serialRequired";
  *(v25 + 4) = 14;
  v25[40] = 2;
  v8();
  v26 = v1[14];
  v27 = (v4 + 8 * v2);
  *v27 = 9;
  v28 = v27 + v26;
  *v28 = "localized_description";
  *(v28 + 1) = 21;
  v28[16] = 2;
  *(v28 + 3) = "description";
  *(v28 + 4) = 11;
  v28[40] = 2;
  v8();
  v29 = v1[14];
  v30 = (v4 + 9 * v2);
  *v30 = 10;
  v31 = v30 + v29;
  *v31 = "localized_title";
  *(v31 + 1) = 15;
  v31[16] = 2;
  *(v31 + 3) = "title";
  *(v31 + 4) = 5;
  v31[40] = 2;
  v8();
  v32 = (v4 + 10 * v2);
  v33 = v32 + v1[14];
  *v32 = 11;
  *v33 = "localized_footer";
  *(v33 + 1) = 16;
  v33[16] = 2;
  v8();
  v34 = (v4 + 11 * v2);
  v35 = v34 + v1[14];
  *v34 = 12;
  *v35 = "footer_article";
  *(v35 + 1) = 14;
  v35[16] = 2;
  v8();
  v36 = (v4 + 12 * v2);
  v37 = v36 + v1[14];
  *v36 = 13;
  *v37 = "application_data";
  *(v37 + 1) = 16;
  v37[16] = 2;
  v8();
  v38 = (v4 + 13 * v2);
  v39 = v38 + v1[14];
  *v38 = 14;
  *v39 = "pricing";
  *(v39 + 1) = 7;
  v39[16] = 2;
  v8();
  v40 = (v4 + 14 * v2);
  v41 = v40 + v1[14];
  *v40 = 15;
  *v41 = "localized_details";
  *(v41 + 1) = 17;
  v41[16] = 2;
  v8();
  v42 = v1[14];
  v43 = (v4 + 15 * v2);
  *v43 = 16;
  v44 = v43 + v42;
  *v44 = "display_style";
  *(v44 + 1) = 13;
  v44[16] = 2;
  *(v44 + 3) = "style";
  *(v44 + 4) = 5;
  v44[40] = 2;
  v8();
  v45 = (v4 + 16 * v2);
  v46 = v45 + v1[14];
  *v45 = 17;
  *v46 = "eligible_product_ids";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v8();
  v47 = (v4 + 17 * v2);
  v48 = v47 + v1[14];
  *v47 = 18;
  *v48 = "is_enabled_in_store_demo_mode";
  *(v48 + 1) = 29;
  v48[16] = 2;
  v8();
  v49 = (v4 + 18 * v2);
  v50 = v49 + v1[14];
  *v49 = 19;
  *v50 = "alignment";
  *(v50 + 1) = 9;
  v50[16] = 2;
  v8();
  v51 = v1[14];
  v52 = (v4 + 19 * v2);
  *v52 = 20;
  v53 = v52 + v51;
  *v53 = "deprecated_v3_product_coverage_selection_details";
  *(v53 + 1) = 48;
  v53[16] = 2;
  *(v53 + 3) = "productCoverageSelectionDetails";
  *(v53 + 4) = 31;
  v53[40] = 2;
  v8();
  v54 = v1[14];
  v55 = (v4 + 20 * v2);
  *v55 = 21;
  v56 = v55 + v54;
  *v56 = "product_coverage_selection_details";
  *(v56 + 1) = 34;
  v56[16] = 2;
  *(v56 + 3) = "productCoverageSelectionDetailsV4";
  *(v56 + 4) = 33;
  v56[40] = 2;
  v8();
  v57 = (v4 + 21 * v2);
  v58 = v57 + v1[14];
  *v57 = 100;
  *v58 = "cin";
  *(v58 + 1) = 3;
  v58[16] = 2;
  v8();
  v59 = (v4 + 22 * v2);
  v60 = v59 + v1[14];
  *v59 = 101;
  *v60 = "c2c";
  *(v60 + 1) = 3;
  v60[16] = 2;
  v8();
  v61 = (v4 + 23 * v2);
  v62 = v61 + v1[14];
  *v61 = 102;
  *v62 = "scb";
  *(v62 + 1) = 3;
  v62[16] = 2;
  v8();
  v63 = (v4 + 24 * v2);
  v64 = v63 + v1[14];
  *v63 = 103;
  *v64 = "phone";
  *(v64 + 1) = 5;
  v64[16] = 2;
  v8();
  v65 = (v4 + 25 * v2);
  v66 = v65 + v1[14];
  *v65 = 104;
  *v66 = "c2ch";
  *(v66 + 1) = 4;
  v66[16] = 2;
  v8();
  v67 = (v4 + 26 * v2);
  v68 = v67 + v1[14];
  *v67 = 105;
  *v68 = "bzcht";
  *(v68 + 1) = 5;
  v68[16] = 2;
  v8();
  v69 = (v4 + 27 * v2);
  v70 = v69 + v1[14];
  *v69 = 106;
  *v70 = "eml";
  *(v70 + 1) = 3;
  v70[16] = 2;
  v8();
  v71 = (v4 + 28 * v2);
  v72 = v71 + v1[14];
  *v71 = 107;
  *v72 = "bcs";
  *(v72 + 1) = 3;
  v72[16] = 2;
  v8();
  v73 = (v4 + 29 * v2);
  v74 = v73 + v1[14];
  *v73 = 108;
  *v74 = "kb";
  *(v74 + 1) = 2;
  v74[16] = 2;
  v8();
  v75 = (v4 + 30 * v2);
  v76 = v75 + v1[14];
  *v75 = 109;
  *v76 = "cas";
  *(v76 + 1) = 3;
  v76[16] = 2;
  v8();
  v77 = (v4 + 31 * v2);
  v78 = v77 + v1[14];
  *v77 = 110;
  *v78 = "ers";
  *(v78 + 1) = 3;
  v78[16] = 2;
  v8();
  v79 = (v4 + 32 * v2);
  v80 = v79 + v1[14];
  *v79 = 111;
  *v80 = "smb";
  *(v80 + 1) = 3;
  v80[16] = 2;
  v8();
  v81 = (v4 + 33 * v2);
  v82 = v81 + v1[14];
  *v81 = 112;
  *v82 = "maasp";
  *(v82 + 1) = 5;
  v82[16] = 2;
  v8();
  v83 = (v4 + 34 * v2);
  v84 = v83 + v1[14];
  *v83 = 113;
  *v84 = "contact_options";
  *(v84 + 1) = 15;
  v84[16] = 2;
  v8();
  v85 = (v4 + 35 * v2);
  v86 = v85 + v1[14];
  *v85 = 114;
  *v86 = "mcr";
  *(v86 + 1) = 3;
  v86[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCEC25C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_119();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26BCEC2AC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  v2 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData) = xmmword_26BDA19C0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle) = 0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode) = 0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails, 1, 1, v2);
  v4 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  v5 = type metadata accessor for SupportOption.OneOf_Details(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

uint64_t sub_26BCEC404(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v61 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v62 = (v1 + 72);
  *(v1 + 80) = 0;
  v63 = (v1 + 80);
  *(v1 + 96) = 0;
  v64 = (v1 + 96);
  *(v1 + 104) = 0;
  v65 = (v1 + 104);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v66 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  v67 = (v1 + 136);
  *(v1 + 144) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  v8 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v68 = (v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData) = xmmword_26BDA19C0;
  v70 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  v71 = (v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v72 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle) = 0;
  v73 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds) = MEMORY[0x277D84F90];
  v74 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode) = 0;
  v75 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment) = 0;
  v76 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails, 1, 1, v8);
  v77 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  v78 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  v11 = type metadata accessor for SupportOption.OneOf_Details(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  swift_beginAccess();
  v12 = *(a1 + 16);
  LOBYTE(v8) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v12;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v14;
  *(v1 + 40) = v13;
  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v15;
  swift_beginAccess();
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v16;
  *(v1 + 64) = v17;

  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 72);
  v18 = v62;
  swift_beginAccess();
  *v18 = v13;
  swift_beginAccess();
  v20 = *(a1 + 80);
  v19 = *(a1 + 88);
  v21 = v63;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 88) = v19;

  swift_beginAccess();
  LOBYTE(v19) = *(a1 + 96);
  v22 = v64;
  swift_beginAccess();
  *v22 = v19;
  swift_beginAccess();
  LOBYTE(v19) = *(a1 + 97);
  swift_beginAccess();
  *(v1 + 97) = v19;
  swift_beginAccess();
  v24 = *(a1 + 104);
  v23 = *(a1 + 112);
  v25 = v65;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 112) = v23;

  swift_beginAccess();
  v27 = *(a1 + 120);
  v26 = *(a1 + 128);
  v28 = v66;
  swift_beginAccess();
  *v28 = v27;
  *(v1 + 128) = v26;

  swift_beginAccess();
  v30 = *(a1 + 136);
  v29 = *(a1 + 144);
  v31 = v67;
  swift_beginAccess();
  *v31 = v30;
  *(v1 + 144) = v29;

  v32 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  swift_beginAccess();
  v33 = v69;
  sub_26BD04E2C(a1 + v32);
  swift_beginAccess();
  v34 = v33;
  sub_26BCFF2C8(v33);
  swift_endAccess();
  v35 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  v38 = v68;
  swift_beginAccess();
  v39 = v38;
  v40 = *v38;
  v41 = v39[1];
  *v39 = v37;
  v39[1] = v36;
  sub_26BCFEFC4(v37, v36);
  sub_26BCFF01C(v40, v41);
  v42 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v42);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  swift_endAccess();
  v43 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  v46 = v71;
  swift_beginAccess();
  *v46 = v45;
  v46[1] = v44;

  v47 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  LODWORD(v47) = *(a1 + v47);
  v48 = v72;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v73;
  swift_beginAccess();
  *(v1 + v51) = v50;

  v52 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v74;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + v54);
  v55 = v75;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v56);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v57);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v59 = v79;
  sub_26BD04E2C(a1 + v58);

  swift_beginAccess();
  sub_26BCFF2C8(v59);
  swift_endAccess();
  return v1;
}

void *sub_26BCECD48()
{

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle, &qword_280448F88, &qword_26BDA5440);
  sub_26BCFF01C(*(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData), *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData + 8));
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details, &qword_2804490B0, &qword_26BDA1A58);
  return v0;
}

uint64_t sub_26BCECE80(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_26BCECF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_246();
  v6 = v5;
  v22 = v7;
  v9 = v8;
  v10 = v4;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = *(v17(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + v18);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_36();
    v20 = v22(v21);
    *(v10 + v18) = v20;
  }

  v6(v20, v16, v14, v12);
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCECFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        sub_26BD04DD8();
        sub_26BDA0930();
        goto LABEL_31;
      case 2:
      case 4:
      case 6:
      case 9:
      case 10:
      case 11:
      case 15:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_31;
      case 3:
        swift_beginAccess();
        sub_26BDA0980();
        goto LABEL_31;
      case 5:
      case 7:
      case 8:
      case 18:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_31;
      case 12:
      case 14:
      case 20:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA09B0();
        goto LABEL_31;
      case 13:
        swift_beginAccess();
        sub_26BDA0940();
        goto LABEL_31;
      case 16:
      case 19:
        swift_beginAccess();
        sub_26BDA0950();
        goto LABEL_31;
      case 17:
        swift_beginAccess();
        sub_26BDA0970();
LABEL_31:
        v5 = 0;
        swift_endAccess();
        break;
      case 21:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        switch(result)
        {
          case 'd':
            sub_26BCED6F8(a1, a2, a3, a4);
            goto LABEL_27;
          case 'e':
            sub_26BCEDC4C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'f':
            sub_26BCEE1BC(a1, a2, a3, a4);
            goto LABEL_27;
          case 'g':
            sub_26BCEE72C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'h':
            sub_26BCEEC9C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'i':
            sub_26BCEF20C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'j':
            sub_26BCEF77C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'k':
            sub_26BCEFCF0(a1, a2, a3, a4);
            goto LABEL_27;
          case 'l':
            sub_26BCF0260(a1, a2, a3, a4);
            goto LABEL_27;
          case 'm':
            sub_26BCF07D0(a1, a2, a3, a4);
            goto LABEL_27;
          case 'n':
            sub_26BCF0D40(a1, a2, a3, a4);
            goto LABEL_27;
          case 'o':
            sub_26BCF12B4(a1, a2, a3, a4);
            goto LABEL_27;
          case 'p':
            sub_26BCF1828(a1, a2, a3, a4);
            goto LABEL_27;
          case 'q':
            sub_26BCF1D9C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'r':
            sub_26BCF230C(a1, a2, a3, a4);
LABEL_27:
            v5 = 0;
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_26BCED6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v42 = a3;
  v41 = a2;
  v5 = type metadata accessor for SupportOption.CINDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495F0, &qword_26BDA3528);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v34 - v24;
  __swift_storeEnumTagSinglePayload(&v34 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v36 = a1;
  v34 = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26BCFEEB0(v17);
    }

    else
    {
      sub_26BD04E80(v25, &qword_2804495F0, &qword_26BDA3528);
      v28 = v37;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v28);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails, &protocol conformance descriptor for SupportOption.CINDetails);
  v29 = v39;
  sub_26BDA09B0();
  if (v29)
  {
    v30 = v25;
    return sub_26BD04E80(v30, &qword_2804495F0, &qword_26BDA3528);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_2804495F0, &qword_26BDA3528);
    v30 = v23;
    return sub_26BD04E80(v30, &qword_2804495F0, &qword_26BDA3528);
  }

  v32 = v38;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v25, &qword_2804495F0, &qword_26BDA3528);
  v33 = v35;
  sub_26BCFEE08(v32);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
  swift_beginAccess();
  sub_26BCFF2C8(v33);
  return swift_endAccess();
}

uint64_t sub_26BCEDC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.C2CDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495F8, &qword_26BDA3530);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BD04E80(v25, &qword_2804495F8, &qword_26BDA3530);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails, &protocol conformance descriptor for SupportOption.C2CDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_2804495F8, &qword_26BDA3530);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_2804495F8, &qword_26BDA3530);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_2804495F8, &qword_26BDA3530);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_2804495F8, &qword_26BDA3530);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCEE1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.SCBDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449600, &qword_26BDA3538);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BD04E80(v25, &qword_280449600, &qword_26BDA3538);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails, &protocol conformance descriptor for SupportOption.SCBDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449600, &qword_26BDA3538);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449600, &qword_26BDA3538);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449600, &qword_26BDA3538);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449600, &qword_26BDA3538);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCEE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.PhoneDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449608, &qword_26BDA3540);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26BD04E80(v25, &qword_280449608, &qword_26BDA3540);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails, &protocol conformance descriptor for SupportOption.PhoneDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449608, &qword_26BDA3540);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449608, &qword_26BDA3540);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449608, &qword_26BDA3540);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449608, &qword_26BDA3540);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCEEC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.C2CHDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449610, &qword_26BDA3548);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26BD04E80(v25, &qword_280449610, &qword_26BDA3548);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails, &protocol conformance descriptor for SupportOption.C2CHDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449610, &qword_26BDA3548);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449610, &qword_26BDA3548);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449610, &qword_26BDA3548);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449610, &qword_26BDA3548);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCEF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.BZCHTDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449618, &qword_26BDA3550);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26BD04E80(v25, &qword_280449618, &qword_26BDA3550);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails, &protocol conformance descriptor for SupportOption.BZCHTDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449618, &qword_26BDA3550);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449618, &qword_26BDA3550);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449618, &qword_26BDA3550);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449618, &qword_26BDA3550);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCEF77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a4;
  v42 = a3;
  v5 = sub_26BDA0810();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v34 - v24;
  __swift_storeEnumTagSinglePayload(v34 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v34[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v34[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v39 + 32);
      v28 = v37;
      v27(v37, v17, v5);
      v27(v25, v28, v5);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v29 = v40;
  sub_26BDA09B0();
  if (v29)
  {
    v30 = v25;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
    v30 = v23;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  v32 = *(v39 + 32);
  v32(v38, v23, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
  v33 = v35;
  v32(v35, v38, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
  swift_beginAccess();
  sub_26BCFF2C8(v33);
  return swift_endAccess();
}

uint64_t sub_26BCEFCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.BCSDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449620, &qword_26BDA3558);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26BD04E80(v25, &qword_280449620, &qword_26BDA3558);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails, &protocol conformance descriptor for SupportOption.BCSDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449620, &qword_26BDA3558);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449620, &qword_26BDA3558);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449620, &qword_26BDA3558);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449620, &qword_26BDA3558);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCF0260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.KBDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449628, &qword_26BDA3560);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26BD04E80(v25, &qword_280449628, &qword_26BDA3560);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails, &protocol conformance descriptor for SupportOption.KBDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449628, &qword_26BDA3560);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449628, &qword_26BDA3560);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449628, &qword_26BDA3560);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449628, &qword_26BDA3560);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCF07D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.CASDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449630, &qword_26BDA3568);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_26BD04E80(v25, &qword_280449630, &qword_26BDA3568);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails, &protocol conformance descriptor for SupportOption.CASDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449630, &qword_26BDA3568);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449630, &qword_26BDA3568);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449630, &qword_26BDA3568);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449630, &qword_26BDA3568);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCF0D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a4;
  v42 = a3;
  v5 = sub_26BDA0810();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v34 - v24;
  __swift_storeEnumTagSinglePayload(v34 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v34[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v34[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v39 + 32);
      v28 = v37;
      v27(v37, v17, v5);
      v27(v25, v28, v5);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v29 = v40;
  sub_26BDA09B0();
  if (v29)
  {
    v30 = v25;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
    v30 = v23;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  v32 = *(v39 + 32);
  v32(v38, v23, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
  v33 = v35;
  v32(v35, v38, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
  swift_beginAccess();
  sub_26BCFF2C8(v33);
  return swift_endAccess();
}

uint64_t sub_26BCF12B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a4;
  v42 = a3;
  v5 = sub_26BDA0810();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v34 - v24;
  __swift_storeEnumTagSinglePayload(v34 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v34[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v34[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v39 + 32);
      v28 = v37;
      v27(v37, v17, v5);
      v27(v25, v28, v5);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v29 = v40;
  sub_26BDA09B0();
  if (v29)
  {
    v30 = v25;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
    v30 = v23;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  v32 = *(v39 + 32);
  v32(v38, v23, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
  v33 = v35;
  v32(v35, v38, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
  swift_beginAccess();
  sub_26BCFF2C8(v33);
  return swift_endAccess();
}

uint64_t sub_26BCF1828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a4;
  v42 = a3;
  v5 = sub_26BDA0810();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v34 - v24;
  __swift_storeEnumTagSinglePayload(v34 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v34[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v34[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v39 + 32);
      v28 = v37;
      v27(v37, v17, v5);
      v27(v25, v28, v5);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v29 = v40;
  sub_26BDA09B0();
  if (v29)
  {
    v30 = v25;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
    v30 = v23;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  v32 = *(v39 + 32);
  v32(v38, v23, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
  v33 = v35;
  v32(v35, v38, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
  swift_beginAccess();
  sub_26BCFF2C8(v33);
  return swift_endAccess();
}

uint64_t sub_26BCF1D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for SupportOption.ContactOptionsDetails(0);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449638, &qword_26BDA3570);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  __swift_storeEnumTagSinglePayload(v35 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v35[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v38 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v35[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_26BD04E80(v25, &qword_280449638, &qword_26BDA3570);
      v27 = v40;
      sub_26BCFEE08(v17);
      sub_26BCFEE08(v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails, &protocol conformance descriptor for SupportOption.ContactOptionsDetails);
  v28 = v41;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_280449638, &qword_26BDA3570);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449638, &qword_26BDA3570);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_280449638, &qword_26BDA3570);
  }

  v31 = v39;
  sub_26BCFEE08(v23);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v38;
  sub_26BD04E80(v25, &qword_280449638, &qword_26BDA3570);
  v33 = v31;
  v34 = v36;
  sub_26BCFEE08(v33);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  swift_beginAccess();
  sub_26BCFF2C8(v34);
  return swift_endAccess();
}

uint64_t sub_26BCF230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a4;
  v42 = a3;
  v5 = sub_26BDA0810();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v14 = type metadata accessor for SupportOption.OneOf_Details(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v34 - v24;
  __swift_storeEnumTagSinglePayload(v34 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v34[1] = v26;
  sub_26BD04E2C(a1 + v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v34[0] = a1;
    sub_26BCFEE08(v13);
    sub_26BCFEE08(v19);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v39 + 32);
      v28 = v37;
      v27(v37, v17, v5);
      v27(v25, v28, v5);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v17);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v29 = v40;
  sub_26BDA09B0();
  if (v29)
  {
    v30 = v25;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
    v30 = v23;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  v32 = *(v39 + 32);
  v32(v38, v23, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
  v33 = v35;
  v32(v35, v38, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
  swift_beginAccess();
  sub_26BCFF2C8(v33);
  return swift_endAccess();
}

uint64_t sub_26BCF28B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_129();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_167();
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BCF2928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v83 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v89 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v90 = &v83 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v83 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v83 - v20;
  v96 = sub_26BDA0810();
  v93 = *(v96 - 8);
  v22 = MEMORY[0x28223BE20](v96);
  v87 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v88 = &v83 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v91 = &v83 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v83 - v28;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v30 = *(a1 + 24);
    v94 = *(a1 + 16);
    v95 = v30;
    sub_26BD04DD8();
    result = sub_26BDA0A50();
    if (v4)
    {
      return result;
    }
  }

  v86 = v12;
  swift_beginAccess();
  v32 = *(a1 + 40);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) != 0.0)
  {
    result = sub_26BDA0AA0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 64);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 72) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 88);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 96) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 97) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 112);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 128);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    goto LABEL_35;
  }

  sub_26BDA0AB0();
  if (v4)
  {
  }

LABEL_35:
  swift_beginAccess();
  v42 = *(a1 + 144);
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = *(a1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  v44 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v44);
  v45 = v96;
  if (__swift_getEnumTagSinglePayload(v21, 1, v96) == 1)
  {
    sub_26BD04E80(v21, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    (*(v93 + 32))(v29, v21, v45);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    sub_26BDA0AD0();
    if (v4)
    {
      return (*(v93 + 8))(v29, v45);
    }

    (*(v93 + 8))(v29, v45);
  }

  v46 = a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData;
  swift_beginAccess();
  v47 = sub_26BD50FE4(*v46, *(v46 + 8));
  v48 = v92;
  if (!v47)
  {
    v49 = *v46;
    v50 = *(v46 + 8);
    sub_26BCFEFC4(v49, v50);
    sub_26BDA0A60();
    if (v4)
    {
      return sub_26BCFF01C(v49, v50);
    }

    sub_26BCFF01C(v49, v50);
  }

  v51 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v51);
  v52 = v96;
  v53 = a3;
  if (__swift_getEnumTagSinglePayload(v48, 1, v96) == 1)
  {
    v54 = v52;
    sub_26BD04E80(v48, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v85 = a3;
    v55 = v93;
    v56 = v91;
    (*(v93 + 32))(v91, v48, v52);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v57 = v85;
    sub_26BDA0AD0();
    if (v4)
    {
      return (*(v55 + 8))(v56, v52);
    }

    v58 = v56;
    v54 = v52;
    (*(v55 + 8))(v58, v52);
    v53 = v57;
  }

  v59 = a4;
  v60 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {

    sub_26BDA0AB0();
    if (v5)
    {
    }
  }

  v64 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  if (!*(a1 + v64) || (result = sub_26BDA0A70(), !v5))
  {
    v65 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
    swift_beginAccess();
    if (*(*(a1 + v65) + 16))
    {

      sub_26BDA0A90();
      if (v5)
      {
      }
    }

    v66 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
    swift_beginAccess();
    if (*(a1 + v66) != 1 || (result = sub_26BDA0A40(), !v5))
    {
      v67 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
      swift_beginAccess();
      if (!*(a1 + v67) || (result = sub_26BDA0A70(), !v5))
      {
        v68 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails;
        swift_beginAccess();
        v69 = a1 + v68;
        v70 = v90;
        sub_26BD04E2C(v69);
        v71 = v54;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v54);
        v84 = v59;
        v85 = v53;
        if (EnumTagSinglePayload == 1)
        {
          sub_26BD04E80(v70, &qword_280448F88, &qword_26BDA5440);
        }

        else
        {
          v73 = v93;
          v74 = v88;
          (*(v93 + 32))(v88, v70, v71);
          sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
          sub_26BDA0AD0();
          if (v5)
          {
            return (*(v73 + 8))(v74, v71);
          }

          (*(v73 + 8))(v74, v71);
        }

        v75 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails;
        swift_beginAccess();
        v76 = v89;
        sub_26BD04E2C(a1 + v75);
        v77 = v96;
        if (__swift_getEnumTagSinglePayload(v76, 1, v96) == 1)
        {
          sub_26BD04E80(v76, &qword_280448F88, &qword_26BDA5440);
        }

        else
        {
          v78 = v93;
          v79 = v87;
          (*(v93 + 32))();
          sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
          sub_26BDA0AD0();
          if (v5)
          {
            return (*(v78 + 8))(v79, v77);
          }

          (*(v78 + 8))(v79, v77);
        }

        v80 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
        swift_beginAccess();
        v81 = v86;
        sub_26BD04E2C(a1 + v80);
        v82 = type metadata accessor for SupportOption.OneOf_Details(0);
        result = __swift_getEnumTagSinglePayload(v81, 1, v82);
        if (result != 1)
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_26BCF3A64(a1, a2, v85, v84);
              break;
            case 2u:
              sub_26BCF3C98(a1, a2, v85, v84);
              break;
            case 3u:
              sub_26BCF3ECC(a1, a2, v85, v84);
              break;
            case 4u:
              sub_26BCF4100(a1, a2, v85, v84);
              break;
            case 5u:
              sub_26BCF4334(a1, a2, v85, v84);
              break;
            case 6u:
              sub_26BCF4568(a1, a2, v85, v84);
              break;
            case 7u:
              sub_26BCF47BC(a1, a2, v85, v84);
              break;
            case 8u:
              sub_26BCF49F0(a1, a2, v85, v84);
              break;
            case 9u:
              sub_26BCF4C24(a1, a2, v85, v84);
              break;
            case 0xAu:
              sub_26BCF4E58(a1, a2, v85, v84);
              break;
            case 0xBu:
              sub_26BCF50AC(a1, a2, v85, v84);
              break;
            case 0xCu:
              sub_26BCF5300(a1, a2, v85, v84);
              break;
            case 0xDu:
              sub_26BCF5554(a1, a2, v85, v84);
              break;
            case 0xEu:
              sub_26BCF5788(a1, a2, v85, v84);
              break;
            default:
              sub_26BCF3834(a1, a2, v85, v84);
              break;
          }

          return sub_26BCFEEB0(v81);
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BCF3834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.CINDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails, &protocol conformance descriptor for SupportOption.CINDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF3A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.C2CDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails, &protocol conformance descriptor for SupportOption.C2CDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF3C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.SCBDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails, &protocol conformance descriptor for SupportOption.SCBDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF3ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.PhoneDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails, &protocol conformance descriptor for SupportOption.PhoneDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.C2CHDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails, &protocol conformance descriptor for SupportOption.C2CHDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.BZCHTDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails, &protocol conformance descriptor for SupportOption.BZCHTDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v12);
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF47BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.BCSDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails, &protocol conformance descriptor for SupportOption.BCSDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF49F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.KBDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails, &protocol conformance descriptor for SupportOption.KBDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.CASDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails, &protocol conformance descriptor for SupportOption.CASDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v12);
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v12);
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v12);
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.ContactOptionsDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails, &protocol conformance descriptor for SupportOption.ContactOptionsDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v12);
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_184();
  v8 = v7(0);
  if (*(v5 + *(v8 + 20)) != *(v4 + *(v8 + 20)))
  {

    v9 = OUTLINED_FUNCTION_173();
    v10 = a4(v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v11, v12, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_242();
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BCF5AE0(uint64_t a1, uint64_t a2)
{
  v151 = type metadata accessor for SupportOption.OneOf_Details(0);
  MEMORY[0x28223BE20](v151);
  v148 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495E0, &qword_26BDA3520);
  MEMORY[0x28223BE20](v149);
  v6 = &v145 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v150 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v152 = &v145 - v10;
  v163 = sub_26BDA0810();
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v160 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v12 = MEMORY[0x28223BE20](v162);
  v156 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v158 = &v145 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v159 = &v145 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v145 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v153 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v154 = &v145 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v155 = &v145 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v157 = &v145 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v145 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v145 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v145 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v145 - v38;
  swift_beginAccess();
  v40 = *(a1 + 16);
  swift_beginAccess();
  v41 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v41)
    {
      case 1:
        if (v40 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v40 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v40 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v40 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v40 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v40 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v40 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v40 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v40 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v40 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v40)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v40 != v41)
  {
    return 0;
  }

LABEL_6:
  v147 = v6;
  swift_beginAccess();
  v42 = *(a1 + 32);
  v43 = *(a1 + 40);
  swift_beginAccess();
  v44 = v42 == *(a2 + 32) && v43 == *(a2 + 40);
  if (!v44 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 48);
  swift_beginAccess();
  if (v45 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 56);
  v47 = *(a1 + 64);
  swift_beginAccess();
  v48 = v46 == *(a2 + 56) && v47 == *(a2 + 64);
  if (!v48 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 72);
  swift_beginAccess();
  if (v49 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 80);
  v51 = *(a1 + 88);
  swift_beginAccess();
  v52 = v50 == *(a2 + 80) && v51 == *(a2 + 88);
  if (!v52 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v53 = *(a1 + 96);
  swift_beginAccess();
  if (v53 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v54 = *(a1 + 97);
  swift_beginAccess();
  if (v54 != *(a2 + 97))
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 104);
  v56 = *(a1 + 112);
  swift_beginAccess();
  v57 = v55 == *(a2 + 104) && v56 == *(a2 + 112);
  if (!v57 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v58 = *(a1 + 120);
  v59 = *(a1 + 128);
  swift_beginAccess();
  v60 = v58 == *(a2 + 120) && v59 == *(a2 + 128);
  if (!v60 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v61 = *(a1 + 136);
  v62 = *(a1 + 144);
  swift_beginAccess();
  v63 = v61 == *(a2 + 136) && v62 == *(a2 + 144);
  if (!v63 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v64 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v64);
  v65 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  swift_beginAccess();
  v66 = *(v162 + 48);
  sub_26BD04E2C(v39);
  v146 = v66;
  sub_26BD04E2C(a2 + v65);
  v67 = v163;
  if (__swift_getEnumTagSinglePayload(v19, 1, v163) == 1)
  {

    sub_26BD04E80(v39, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v19[v146], 1, v67) != 1)
    {
      goto LABEL_65;
    }

    sub_26BD04E80(v19, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    sub_26BD04E2C(v19);
    v68 = v146;
    if (__swift_getEnumTagSinglePayload(&v19[v146], 1, v67) == 1)
    {

      sub_26BD04E80(v39, &qword_280448F88, &qword_26BDA5440);
      (*(v161 + 8))(v37, v67);
      goto LABEL_65;
    }

    (*(v161 + 32))(v160, &v19[v68], v67);
    v146 = sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);

    HIDWORD(v145) = sub_26BDA0BB0();
    v146 = *(v161 + 8);
    (v146)(v160, v67);
    sub_26BD04E80(v39, &qword_280448F88, &qword_26BDA5440);
    (v146)(v37, v67);
    sub_26BD04E80(v19, &qword_280448F88, &qword_26BDA5440);
    if ((v145 & 0x100000000) == 0)
    {
      goto LABEL_101;
    }
  }

  v70 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  swift_beginAccess();
  v72 = *v70;
  v71 = v70[1];
  v73 = (a2 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  sub_26BCFEFC4(v72, v71);
  sub_26BCFEFC4(v75, v74);
  v76 = MEMORY[0x26D695520](v72, v71, v75, v74);
  sub_26BCFF01C(v75, v74);
  sub_26BCFF01C(v72, v71);
  if ((v76 & 1) == 0)
  {
    goto LABEL_101;
  }

  v77 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v77);
  v78 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing;
  swift_beginAccess();
  v79 = *(v162 + 48);
  v19 = v159;
  sub_26BD04E2C(v34);
  sub_26BD04E2C(a2 + v78);
  v80 = v163;
  if (__swift_getEnumTagSinglePayload(v19, 1, v163) == 1)
  {
    sub_26BD04E80(v34, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v19[v79], 1, v80) == 1)
    {
      sub_26BD04E80(v19, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_75;
    }

LABEL_65:
    v69 = v19;
LABEL_66:
    sub_26BD04E80(v69, &qword_2804490C8, &qword_26BDA7780);
LABEL_101:

    return 0;
  }

  sub_26BD04E2C(v19);
  if (__swift_getEnumTagSinglePayload(&v19[v79], 1, v80) == 1)
  {
    sub_26BD04E80(v34, &qword_280448F88, &qword_26BDA5440);
    (*(v161 + 8))(v31, v80);
    goto LABEL_65;
  }

  v81 = v160;
  v82 = v161;
  (*(v161 + 32))(v160, &v19[v79], v80);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  LODWORD(v146) = sub_26BDA0BB0();
  v83 = *(v82 + 8);
  v83(v81, v80);
  sub_26BD04E80(v34, &qword_280448F88, &qword_26BDA5440);
  v83(v31, v80);
  sub_26BD04E80(v19, &qword_280448F88, &qword_26BDA5440);
  if ((v146 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_75:
  v84 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = (a2 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v88 = v85 == *v87 && v86 == v87[1];
  if (!v88 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_101;
  }

  v89 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  LODWORD(v89) = *(a1 + v89);
  v90 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  if (v89 != *(a2 + v90))
  {
    goto LABEL_101;
  }

  v91 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  swift_beginAccess();
  v92 = *(a1 + v91);
  v93 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  swift_beginAccess();
  if ((sub_26BCFF1F4(v92, *(a2 + v93)) & 1) == 0)
  {
    goto LABEL_101;
  }

  v94 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  swift_beginAccess();
  LODWORD(v94) = *(a1 + v94);
  v95 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  swift_beginAccess();
  if (v94 != *(a2 + v95))
  {
    goto LABEL_101;
  }

  v96 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  swift_beginAccess();
  LODWORD(v96) = *(a1 + v96);
  v97 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  swift_beginAccess();
  if (v96 != *(a2 + v97))
  {
    goto LABEL_101;
  }

  v98 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails;
  swift_beginAccess();
  v99 = v157;
  sub_26BD04E2C(a1 + v98);
  v100 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails;
  swift_beginAccess();
  v101 = *(v162 + 48);
  v102 = v99;
  v103 = v158;
  sub_26BD04E2C(v102);
  sub_26BD04E2C(a2 + v100);
  if (__swift_getEnumTagSinglePayload(v103, 1, v163) == 1)
  {
    sub_26BD04E80(v157, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v158 + v101, 1, v163) == 1)
    {
      sub_26BD04E80(v158, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v104 = v158;
  sub_26BD04E2C(v158);
  if (__swift_getEnumTagSinglePayload(v104 + v101, 1, v163) == 1)
  {
    sub_26BD04E80(v157, &qword_280448F88, &qword_26BDA5440);
    (*(v161 + 8))(v155, v163);
LABEL_89:
    v69 = v158;
    goto LABEL_66;
  }

  v105 = v160;
  v106 = v161;
  v107 = v158;
  v108 = v163;
  (*(v161 + 32))(v160, v158 + v101, v163);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v109 = v155;
  v110 = sub_26BDA0BB0();
  v111 = *(v106 + 8);
  v111(v105, v108);
  sub_26BD04E80(v157, &qword_280448F88, &qword_26BDA5440);
  v111(v109, v108);
  sub_26BD04E80(v107, &qword_280448F88, &qword_26BDA5440);
  if ((v110 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_91:
  v112 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails;
  swift_beginAccess();
  v113 = v154;
  sub_26BD04E2C(a1 + v112);
  v114 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails;
  swift_beginAccess();
  v115 = *(v162 + 48);
  v116 = v113;
  v117 = v156;
  sub_26BD04E2C(v116);
  sub_26BD04E2C(a2 + v114);
  if (__swift_getEnumTagSinglePayload(v117, 1, v163) == 1)
  {
    sub_26BD04E80(v154, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v156 + v115, 1, v163) == 1)
    {
      sub_26BD04E80(v156, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v118 = v156;
  sub_26BD04E2C(v156);
  if (__swift_getEnumTagSinglePayload(v118 + v115, 1, v163) == 1)
  {
    sub_26BD04E80(v154, &qword_280448F88, &qword_26BDA5440);
    (*(v161 + 8))(v153, v163);
LABEL_96:
    v69 = v156;
    goto LABEL_66;
  }

  v119 = v160;
  v120 = v161;
  v121 = v156;
  v122 = v163;
  (*(v161 + 32))(v160, v156 + v115, v163);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v123 = v153;
  v124 = sub_26BDA0BB0();
  v125 = *(v120 + 8);
  v125(v119, v122);
  sub_26BD04E80(v154, &qword_280448F88, &qword_26BDA5440);
  v125(v123, v122);
  sub_26BD04E80(v121, &qword_280448F88, &qword_26BDA5440);
  if ((v124 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_98:
  v126 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v127 = v152;
  sub_26BD04E2C(a1 + v126);
  v128 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v129 = *(v149 + 48);
  v130 = v127;
  v131 = v147;
  sub_26BD04E2C(v130);
  sub_26BD04E2C(a2 + v128);
  if (__swift_getEnumTagSinglePayload(v131, 1, v151) != 1)
  {
    v133 = v147;
    sub_26BD04E2C(v147);
    if (__swift_getEnumTagSinglePayload(v133 + v129, 1, v151) == 1)
    {

      sub_26BD04E80(v152, &qword_2804490B0, &qword_26BDA1A58);
      sub_26BCFEEB0(v150);
      goto LABEL_105;
    }

    v135 = v147;
    v134 = v148;
    sub_26BCFEE08(&v147[v129]);
    v136 = v150;
    static SupportOption.OneOf_Details.== infix(_:_:)(v150, v134, v137, v138, v139, v140, v141, v142, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
    v144 = v143;

    sub_26BCFEEB0(v134);
    sub_26BD04E80(v152, &qword_2804490B0, &qword_26BDA1A58);
    sub_26BCFEEB0(v136);
    sub_26BD04E80(v135, &qword_2804490B0, &qword_26BDA1A58);
    return (v144 & 1) != 0;
  }

  sub_26BD04E80(v152, &qword_2804490B0, &qword_26BDA1A58);
  if (__swift_getEnumTagSinglePayload(&v147[v129], 1, v151) != 1)
  {
LABEL_105:
    sub_26BD04E80(v147, &qword_2804495E0, &qword_26BDA3520);
    return 0;
  }

  sub_26BD04E80(v147, &qword_2804490B0, &qword_26BDA1A58);
  return 1;
}

uint64_t sub_26BCF7138(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_2804495A0, type metadata accessor for SupportOption, &protocol conformance descriptor for SupportOption);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF71B8(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption, &protocol conformance descriptor for SupportOption);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF7228(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption, &protocol conformance descriptor for SupportOption);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF72B4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B48);
  __swift_project_value_buffer(v0, qword_280448B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "repair_label_type";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "localized_store_selection_disclaimer_header";
  *(v10 + 1) = 43;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.CINDetails.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 3)
    {
      type metadata accessor for SupportOption.CINDetails(0);
      sub_26BDA0810();
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_280449130, v4, MEMORY[0x277D215C0]);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
LABEL_8:
      v1 = 0;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_116();
      sub_26BDA0990();
      goto LABEL_8;
    }
  }
}

uint64_t sub_26BCF7668(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449598, type metadata accessor for SupportOption.CINDetails, &protocol conformance descriptor for SupportOption.CINDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF76E8(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails, &protocol conformance descriptor for SupportOption.CINDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF7758(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails, &protocol conformance descriptor for SupportOption.CINDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF77E4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B68);
  __swift_project_value_buffer(v0, qword_280448B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_itcc_list";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "estimated_wait_time";
  *(v12 + 1) = 19;
  v12[16] = 2;
  *(v12 + 3) = "ewt";
  *(v12 + 4) = 3;
  v12[40] = 2;
  v9();
  v13 = v1[14];
  v14 = (v5 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "estimated_wait_time_id";
  *(v15 + 1) = 22;
  v15[16] = 2;
  *(v15 + 3) = "ewtId";
  *(v15 + 4) = 5;
  v15[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.C2CDetails.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        goto LABEL_7;
      case 2:
        type metadata accessor for SupportOption.C2CDetails(0);
        sub_26BDA0810();
        OUTLINED_FUNCTION_3();
        sub_26BCFF280(&qword_280449130, v4, MEMORY[0x277D215C0]);
        OUTLINED_FUNCTION_87();
        sub_26BDA09B0();
LABEL_7:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void SupportOption.C2CDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_246();
  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v7);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_267();
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_29();
  if (!v13 || (OUTLINED_FUNCTION_288(v11, v12, 1), (v6 = v4) == 0))
  {
    v29 = type metadata accessor for SupportOption.C2CDetails(0);
    sub_26BD04E2C(v3 + *(v29 + 32));
    OUTLINED_FUNCTION_112(v5, 1, v9);
    if (v14)
    {
      sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v15 = OUTLINED_FUNCTION_294();
      v16(v15);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v17, v18, MEMORY[0x277D215C0]);
      v4 = v6;
      sub_26BDA0AD0();
      if (v6)
      {
        v19 = OUTLINED_FUNCTION_224();
        v20(v19);
        goto LABEL_14;
      }

      v21 = OUTLINED_FUNCTION_224();
      v22(v21);
    }

    OUTLINED_FUNCTION_29();
    if (!v25 || (OUTLINED_FUNCTION_288(v23, v24, 3), !v4))
    {
      OUTLINED_FUNCTION_29();
      if (!v28 || (OUTLINED_FUNCTION_288(v26, v27, 4), !v4))
      {
        sub_26BDA0830();
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCF7E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449590, type metadata accessor for SupportOption.C2CDetails, &protocol conformance descriptor for SupportOption.C2CDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF7F0C(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails, &protocol conformance descriptor for SupportOption.C2CDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF7F7C(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails, &protocol conformance descriptor for SupportOption.C2CDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF8008()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B88);
  __swift_project_value_buffer(v0, qword_280448B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_itcc_list";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCF82FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449588, type metadata accessor for SupportOption.SCBDetails, &protocol conformance descriptor for SupportOption.SCBDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF837C(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails, &protocol conformance descriptor for SupportOption.SCBDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF83EC(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails, &protocol conformance descriptor for SupportOption.SCBDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF8484()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448BA8);
  __swift_project_value_buffer(v0, qword_280448BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phone_number";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  *(v6 + 24) = "phone";
  *(v6 + 32) = 5;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localized_operating_hours";
  *(v10 + 1) = 25;
  v10[16] = 2;
  *(v10 + 3) = "hours";
  *(v10 + 4) = 5;
  v10[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCF87A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449580, type metadata accessor for SupportOption.PhoneDetails, &protocol conformance descriptor for SupportOption.PhoneDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF8824(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails, &protocol conformance descriptor for SupportOption.PhoneDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF8894(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails, &protocol conformance descriptor for SupportOption.PhoneDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF892C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448BC8);
  __swift_project_value_buffer(v0, qword_280448BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26BDA19E0;
  v4 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v17 + v3 + v2 + v1[14];
  *(v17 + v3 + v2) = 2;
  *v8 = "transaction_id";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v17 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "estimated_wait_time";
  *(v10 + 1) = 19;
  v10[16] = 2;
  *(v10 + 3) = "ewt";
  *(v10 + 4) = 3;
  v10[40] = 2;
  v7();
  v11 = v1[14];
  v12 = (v17 + v3 + 3 * v2);
  *v12 = 4;
  v13 = v12 + v11;
  *v13 = "estimated_wait_time_id";
  *(v13 + 1) = 22;
  v13[16] = 2;
  *(v13 + 3) = "ewtId";
  *(v13 + 4) = 5;
  v13[40] = 2;
  v7();
  v14 = (v17 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rtct_opted";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.C2CHDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
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
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t SupportOption.C2CHDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v11 || (result = OUTLINED_FUNCTION_103(v9, v10, 3), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v14 || (result = OUTLINED_FUNCTION_103(v12, v13, 4), !v0))
        {
          if (*(v1 + 64) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v0))
          {
            type metadata accessor for SupportOption.C2CHDetails(0);
            return OUTLINED_FUNCTION_104();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BCF8E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449578, type metadata accessor for SupportOption.C2CHDetails, &protocol conformance descriptor for SupportOption.C2CHDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF8EDC(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails, &protocol conformance descriptor for SupportOption.C2CHDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF8F4C(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails, &protocol conformance descriptor for SupportOption.C2CHDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF8FE4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448BE8);
  __swift_project_value_buffer(v0, qword_280448BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "transaction_id";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rtct_opted";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "raw_url";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.BZCHTDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 3:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t SupportOption.BZCHTDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 2), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v11 || (result = OUTLINED_FUNCTION_103(v9, v10, 4), !v0))
        {
          type metadata accessor for SupportOption.BZCHTDetails(0);
          return OUTLINED_FUNCTION_104();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BCF9488(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449570, type metadata accessor for SupportOption.BZCHTDetails, &protocol conformance descriptor for SupportOption.BZCHTDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF9508(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails, &protocol conformance descriptor for SupportOption.BZCHTDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF9578(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails, &protocol conformance descriptor for SupportOption.BZCHTDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF9604()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C08);
  __swift_project_value_buffer(v0, qword_280448C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26BDA19F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "bcs_type";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "should_create_case";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "call_to_action";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "diagnostics_consideration";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "trigger_solution";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "adaptive_content";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.BCSDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 2:
        OUTLINED_FUNCTION_117();
        sub_26BCF9A24(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      case 5:
        OUTLINED_FUNCTION_117();
        sub_26BCF9F44(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_117();
        sub_26BCFA468(v11, v12, v13, v14);
        break;
      case 7:
        OUTLINED_FUNCTION_117();
        sub_26BCFA96C(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BCF9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = sub_26BDA0810();
  v40 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v13 = MEMORY[0x28223BE20](Step);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  __swift_storeEnumTagSinglePayload(&v34 - v22, 1, 1, v5);
  v35 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v36 = a1;
  sub_26BD04E2C(a1 + v35);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, Step);
  v38 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v11, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08(v11);
    sub_26BCFEE08(v17);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26BCFEEB0(v15);
    }

    else
    {
      sub_26BD04E80(v23, &qword_280448F88, &qword_26BDA5440);
      v25 = *(v40 + 32);
      v26 = v37;
      v25(v37, v15, v5);
      v25(v23, v26, v5);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v27 = v41;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v23);
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_26BD04E80(v23, &qword_280448F88, &qword_26BDA5440);
    v28 = v21;
    return sub_26BD04E80(v28, &qword_280448F88, &qword_26BDA5440);
  }

  v30 = *(v40 + 32);
  v30(v39, v21, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v31 = v38;
  sub_26BD04E80(v23, &qword_280448F88, &qword_26BDA5440);
  v33 = v35;
  v32 = v36;
  sub_26BD04E80(v36 + v35, &qword_2804490D8, &qword_26BDA1A70);
  v30((v32 + v33), v39, v5);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v32 + v33, 0, 1, v31);
}

uint64_t sub_26BCF9F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v43 = a3;
  v42 = a2;
  v5 = sub_26BDA0810();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v14 = MEMORY[0x28223BE20](Step);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  __swift_storeEnumTagSinglePayload(&v33 - v23, 1, 1, v5);
  v34 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v35 = a1;
  sub_26BD04E2C(a1 + v34);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, Step);
  v37 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v12, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08(v12);
    sub_26BCFEE08(v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
      v25 = *(v39 + 32);
      v25(v9, v16, v5);
      v25(v24, v9, v5);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v16);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v26 = v40;
  sub_26BDA09B0();
  if (v26)
  {
    v27 = v24;
    return sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v24);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
    v27 = v22;
    return sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  }

  v29 = *(v39 + 32);
  v29(v38, v22, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v37;
  sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
  v32 = v34;
  v31 = v35;
  sub_26BD04E80(v35 + v34, &qword_2804490D8, &qword_26BDA1A70);
  v29((v31 + v32), v38, v5);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v31 + v32, 0, 1, v30);
}

uint64_t sub_26BCFA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v14 = MEMORY[0x28223BE20](Step);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D8, &qword_26BDA3518);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v32 - v23;
  __swift_storeEnumTagSinglePayload(&v32 - v23, 1, 1, v5);
  v32 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v33 = a1;
  sub_26BD04E2C(a1 + v32);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, Step);
  v35 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v12, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08(v12);
    sub_26BCFEE08(v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BD04E80(v24, &qword_2804495D8, &qword_26BDA3518);
      sub_26BCFEE08(v16);
      sub_26BCFEE08(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v16);
    }
  }

  sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution, &protocol conformance descriptor for SupportOption.BCSDetails.TriggerSolution);
  v25 = v37;
  sub_26BDA09B0();
  if (v25)
  {
    v26 = v24;
    return sub_26BD04E80(v26, &qword_2804495D8, &qword_26BDA3518);
  }

  sub_26BD04E2C(v24);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26BD04E80(v24, &qword_2804495D8, &qword_26BDA3518);
    v26 = v22;
    return sub_26BD04E80(v26, &qword_2804495D8, &qword_26BDA3518);
  }

  v28 = v36;
  sub_26BCFEE08(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v29 = v35;
  sub_26BD04E80(v24, &qword_2804495D8, &qword_26BDA3518);
  v31 = v32;
  v30 = v33;
  sub_26BD04E80(v33 + v32, &qword_2804490D8, &qword_26BDA1A70);
  sub_26BCFEE08(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30 + v31, 0, 1, v29);
}

uint64_t sub_26BCFA96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v43 = a3;
  v42 = a2;
  v5 = sub_26BDA0810();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v14 = MEMORY[0x28223BE20](Step);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  __swift_storeEnumTagSinglePayload(&v33 - v23, 1, 1, v5);
  v34 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v35 = a1;
  sub_26BD04E2C(a1 + v34);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, Step);
  v37 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v12, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08(v12);
    sub_26BCFEE08(v18);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
      v25 = *(v39 + 32);
      v25(v9, v16, v5);
      v25(v24, v9, v5);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0(v16);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v26 = v40;
  sub_26BDA09B0();
  if (v26)
  {
    v27 = v24;
    return sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C(v24);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
    v27 = v22;
    return sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  }

  v29 = *(v39 + 32);
  v29(v38, v22, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v37;
  sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
  v32 = v34;
  v31 = v35;
  sub_26BD04E80(v35 + v34, &qword_2804490D8, &qword_26BDA1A70);
  v29((v31 + v32), v38, v5);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v31 + v32, 0, 1, v30);
}

void SupportOption.BCSDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_246();
  v19 = v18;
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v23 = OUTLINED_FUNCTION_110(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_38();
  v63 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_193();
  v66 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  v30 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_29();
  if (!v37 || (sub_26BDA0AB0(), !v17))
  {
    v64 = v21;
    v65 = v19;
    v62 = type metadata accessor for SupportOption.BCSDetails(0);
    v38 = *(v62 + 28);
    sub_26BD04E2C(v16 + v38);
    Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
    OUTLINED_FUNCTION_112(v29, 1, Step);
    if (v40)
    {
      sub_26BD04E80(v29, &qword_2804490D8, &qword_26BDA1A70);
    }

    else if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_4();
      sub_26BCFEEB0(v29);
    }

    else
    {
      (*(v32 + 32))(v36, v29, v30);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v43, v44, MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v17)
      {
        v45 = OUTLINED_FUNCTION_167();
        v46(v45);
        goto LABEL_26;
      }

      v48 = OUTLINED_FUNCTION_167();
      v49(v48);
    }

    OUTLINED_FUNCTION_29();
    if (!v42 || (sub_26BDA0AB0(), !v17))
    {
      if (*(v16 + 32) != 1 || (sub_26BDA0A40(), !v17))
      {
        sub_26BD04E2C(v16 + v38);
        OUTLINED_FUNCTION_112(v66, 1, Step);
        if (v40)
        {
          goto LABEL_25;
        }

        sub_26BD04E2C(v66);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            OUTLINED_FUNCTION_117();
            sub_26BCFB29C(v58, v59, v60, v61);
            break;
          case 2:
            OUTLINED_FUNCTION_117();
            sub_26BCFB4E8(v50, v51, v52, v53);
            break;
          case 3:
            OUTLINED_FUNCTION_117();
            sub_26BCFB708(v54, v55, v56, v57);
            break;
          default:
            OUTLINED_FUNCTION_4();
            sub_26BCFEEB0(v63);
            goto LABEL_25;
        }

        OUTLINED_FUNCTION_4();
        sub_26BCFEEB0(v63);
        if (!v17)
        {
LABEL_25:
          sub_26BD04E80(v66, &qword_2804490D8, &qword_26BDA1A70);
          OUTLINED_FUNCTION_104();
        }

        else
        {
          sub_26BD04E80(v66, &qword_2804490D8, &qword_26BDA1A70);
        }
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCFB29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SupportOption.BCSDetails(0);
  sub_26BD04E2C(a1 + *(v12 + 28));
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, Step) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCFB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SupportOption.BCSDetails(0);
  sub_26BD04E2C(a1 + *(v11 + 28));
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, Step) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BCFEE08(v7);
      sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution, &protocol conformance descriptor for SupportOption.BCSDetails.TriggerSolution);
      sub_26BDA0AD0();
      return sub_26BCFEEB0(v10);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCFB708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SupportOption.BCSDetails(0);
  sub_26BD04E2C(a1 + *(v12 + 28));
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, Step) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_26BCFEEB0(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCFB9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449568, type metadata accessor for SupportOption.BCSDetails, &protocol conformance descriptor for SupportOption.BCSDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFBA78(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails, &protocol conformance descriptor for SupportOption.BCSDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFBAE8(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails, &protocol conformance descriptor for SupportOption.BCSDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFBB68()
{
  result = MEMORY[0x26D695B80](0xD000000000000010, 0x800000026BDAB500);
  qword_280448C28 = 0xD000000000000018;
  unk_280448C30 = 0x800000026BDAADC0;
  return result;
}

uint64_t static SupportOption.BCSDetails.TriggerSolution.protoMessageName.getter()
{
  if (qword_280448C20 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCFBC40()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C40);
  __swift_project_value_buffer(v0, qword_280448C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serial_number_collection_title";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serial_number_collection_my_devices_footer";
  *(v10 + 1) = 42;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BCFBE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_246();
  v6 = v5;
  v7 = v4;
  while (1)
  {
    v8 = sub_26BDA0900();
    if (v7 || (v9 & 1) != 0)
    {
      break;
    }

    if (v8 == 2)
    {
      v6(0);
      sub_26BDA0810();
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_280449130, v10, MEMORY[0x277D215C0]);
      sub_26BDA09B0();
LABEL_8:
      v7 = 0;
    }

    else if (v8 == 1)
    {
      sub_26BDA0990();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void sub_26BCFBF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_246();
  v37 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v22);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_267();
  v24 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_29();
  if (!v26 || (sub_26BDA0AB0(), !v19))
  {
    v27 = v37(0);
    sub_26BD04E2C(v18 + *(v27 + 24));
    OUTLINED_FUNCTION_112(v20, 1, v24);
    if (v28)
    {
      sub_26BD04E80(v20, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_294();
      v30(v29);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v31, v32, MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v19)
      {
        v33 = OUTLINED_FUNCTION_224();
        v34(v33);
        goto LABEL_10;
      }

      v35 = OUTLINED_FUNCTION_224();
      v36(v35);
    }

    sub_26BDA0830();
  }

LABEL_10:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCFC23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449560, type metadata accessor for SupportOption.BCSDetails.TriggerSolution, &protocol conformance descriptor for SupportOption.BCSDetails.TriggerSolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFC2BC(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution, &protocol conformance descriptor for SupportOption.BCSDetails.TriggerSolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFC32C(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution, &protocol conformance descriptor for SupportOption.BCSDetails.TriggerSolution);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFC3C4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C60);
  __swift_project_value_buffer(v0, qword_280448C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCFC5AC()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BCFC638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_29();
    if (!v12 || (result = OUTLINED_FUNCTION_103(v10, v11, 2), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t sub_26BCFC754(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449558, type metadata accessor for SupportOption.KBDetails, &protocol conformance descriptor for SupportOption.KBDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFC7D4(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails, &protocol conformance descriptor for SupportOption.KBDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFC844(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails, &protocol conformance descriptor for SupportOption.KBDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFC8D0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C80);
  __swift_project_value_buffer(v0, qword_280448C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localized_additional_info";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supported_language_codes";
  *(v10 + 1) = 24;
  v10[16] = 2;
  *(v10 + 3) = "supportedLocales";
  *(v10 + 4) = 16;
  v10[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.CASDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0970();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t SupportOption.CASDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A90(), !v0))
    {
      type metadata accessor for SupportOption.CASDetails(0);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t sub_26BCFCC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449550, type metadata accessor for SupportOption.CASDetails, &protocol conformance descriptor for SupportOption.CASDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFCCEC(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails, &protocol conformance descriptor for SupportOption.CASDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFCD5C(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails, &protocol conformance descriptor for SupportOption.CASDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFCDF4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448CA0);
  __swift_project_value_buffer(v0, qword_280448CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26BDA1A00;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "flow";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26BDA0AF0();
}

uint64_t SupportOption.ContactOptionsDetails.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for SupportOption.ContactOptionsDetails(0);
      sub_26BDA0810();
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_280449130, v4, MEMORY[0x277D215C0]);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
      v1 = 0;
    }
  }

  return result;
}

void SupportOption.ContactOptionsDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_246();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v22);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_229();
  v24 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_44();
  v28 = OUTLINED_FUNCTION_267();
  v29 = type metadata accessor for SupportOption.ContactOptionsDetails(v28);
  sub_26BD04E2C(v18 + *(v29 + 20));
  v30 = OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_112(v30, v31, v24);
  if (v32)
  {
    sub_26BD04E80(v21, &qword_280448F88, &qword_26BDA5440);
LABEL_7:
    sub_26BDA0830();
    goto LABEL_8;
  }

  (*(v26 + 32))(v20, v21, v24);
  OUTLINED_FUNCTION_3();
  sub_26BCFF280(v33, v34, MEMORY[0x277D215C0]);
  sub_26BDA0AD0();
  if (!v19)
  {
    (*(v26 + 8))(v20, v24);
    goto LABEL_7;
  }

  (*(v26 + 8))(v20, v24);
LABEL_8:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCFD2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449548, type metadata accessor for SupportOption.ContactOptionsDetails, &protocol conformance descriptor for SupportOption.ContactOptionsDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFD354(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails, &protocol conformance descriptor for SupportOption.ContactOptionsDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFD3C4(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails, &protocol conformance descriptor for SupportOption.ContactOptionsDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFD45C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448CC0);
  __swift_project_value_buffer(v0, qword_280448CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26BDA1A10;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v4 = "call_support_options";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 2;
  *v8 = "chat_support_option";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "contact_apple_support_option";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rank";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "should_hide_by_default";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "locale";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "localized_language_detail_info";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "other_support_options";
  *(v20 + 1) = 21;
  v20[16] = 2;
  *(v20 + 3) = "otherSolutions";
  *(v20 + 4) = 14;
  v20[40] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t ContactSupportOptions.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 8:
        OUTLINED_FUNCTION_318();
        OUTLINED_FUNCTION_10();
        sub_26BCFF280(&qword_280449190, v4, &protocol conformance descriptor for SupportOption);
        OUTLINED_FUNCTION_87();
        sub_26BDA09A0();
        goto LABEL_10;
      case 2:
      case 3:
        type metadata accessor for ContactSupportOptions(0);
        OUTLINED_FUNCTION_318();
        OUTLINED_FUNCTION_10();
        sub_26BCFF280(&qword_280449190, v5, &protocol conformance descriptor for SupportOption);
        OUTLINED_FUNCTION_87();
        sub_26BDA09B0();
        goto LABEL_10;
      case 4:
        OUTLINED_FUNCTION_116();
        sub_26BDA0980();
        goto LABEL_10;
      case 5:
        OUTLINED_FUNCTION_116();
        sub_26BDA0920();
        goto LABEL_10;
      case 6:
      case 7:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
LABEL_10:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void ContactSupportOptions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_246();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  v22 = OUTLINED_FUNCTION_110(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_57();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_38();
  v51 = v30;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v31);
  v33 = &v50 - v32;
  if (!*(*v18 + 16) || (OUTLINED_FUNCTION_10(), sub_26BCFF280(v34, v35, &protocol conformance descriptor for SupportOption), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_223(), sub_26BDA0AC0(), !v19))
  {
    v50 = type metadata accessor for ContactSupportOptions(0);
    sub_26BD04E2C(v18 + *(v50 + 44));
    OUTLINED_FUNCTION_112(v28, 1, v20);
    if (v36)
    {
      sub_26BD04E80(v28, &qword_2804490F0, &qword_26BDA1A88);
    }

    else
    {
      OUTLINED_FUNCTION_5();
      v37 = OUTLINED_FUNCTION_167();
      sub_26BCFEE08(v37);
      OUTLINED_FUNCTION_10();
      sub_26BCFF280(v38, v39, &protocol conformance descriptor for SupportOption);
      OUTLINED_FUNCTION_223();
      sub_26BDA0AD0();
      OUTLINED_FUNCTION_25();
      sub_26BCFEEB0(v33);
      if (v19)
      {
        goto LABEL_22;
      }
    }

    sub_26BD04E2C(v18 + *(v50 + 48));
    v40 = OUTLINED_FUNCTION_244();
    OUTLINED_FUNCTION_112(v40, v41, v20);
    if (v36)
    {
      sub_26BD04E80(v25, &qword_2804490F0, &qword_26BDA1A88);
    }

    else
    {
      OUTLINED_FUNCTION_5();
      v42 = v25;
      v43 = v51;
      sub_26BCFEE08(v42);
      OUTLINED_FUNCTION_10();
      sub_26BCFF280(v44, v45, &protocol conformance descriptor for SupportOption);
      OUTLINED_FUNCTION_223();
      sub_26BDA0AD0();
      OUTLINED_FUNCTION_25();
      sub_26BCFEEB0(v43);
      if (v19)
      {
        goto LABEL_22;
      }
    }

    if (*(v18 + 8) == 0.0 || (OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_261(), sub_26BDA0AA0(), !v19))
    {
      if (*(v18 + 16) != 1 || (OUTLINED_FUNCTION_231(), sub_26BDA0A40(), !v19))
      {
        OUTLINED_FUNCTION_29();
        if (!v46 || (OUTLINED_FUNCTION_231(), sub_26BDA0AB0(), !v19))
        {
          OUTLINED_FUNCTION_29();
          if (!v47 || (OUTLINED_FUNCTION_231(), sub_26BDA0AB0(), !v19))
          {
            if (!*(*(v18 + 56) + 16) || (OUTLINED_FUNCTION_10(), sub_26BCFF280(v48, v49, &protocol conformance descriptor for SupportOption), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_223(), sub_26BDA0AC0(), !v19))
            {
              OUTLINED_FUNCTION_261();
              sub_26BDA0830();
            }
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static ContactSupportOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_181();
  v7 = type metadata accessor for SupportOption(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_263();
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  v13 = OUTLINED_FUNCTION_110(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449198, &qword_26BDA1AF8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  v70 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  if ((sub_26BD011F4(*v2, *v5) & 1) == 0)
  {
    goto LABEL_26;
  }

  v66 = v3;
  v67 = v16;
  v26 = type metadata accessor for ContactSupportOptions(0);
  v27 = *(v26 + 44);
  v28 = *(v20 + 48);
  v68 = v26;
  v69 = v2;
  sub_26BD04E2C(v2 + v27);
  v29 = v5 + v27;
  v30 = v5;
  sub_26BD04E2C(v29);
  OUTLINED_FUNCTION_56(v25);
  if (v32)
  {
    OUTLINED_FUNCTION_56(&v25[v28]);
    if (v32)
    {
      sub_26BD04E80(v25, &qword_2804490F0, &qword_26BDA1A88);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v31 = OUTLINED_FUNCTION_126();
  sub_26BD04E2C(v31);
  OUTLINED_FUNCTION_56(&v25[v28]);
  if (v32)
  {
    OUTLINED_FUNCTION_25();
    sub_26BCFEEB0(v19);
LABEL_10:
    v33 = &qword_280449198;
    v34 = &qword_26BDA1AF8;
LABEL_11:
    v35 = v25;
LABEL_25:
    sub_26BD04E80(v35, v33, v34);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5();
  sub_26BCFEE08(&v25[v28]);
  v36 = *(v7 + 20);
  v37 = *&v19[v36];
  v38 = *&v11[v36];
  if (v37 != v38)
  {

    v39 = sub_26BCF5AE0(v37, v38);

    if (!v39)
    {
      OUTLINED_FUNCTION_203();
      sub_26BCFEEB0(v11);
      v64 = OUTLINED_FUNCTION_147();
      sub_26BCFEEB0(v64);
      v33 = &qword_2804490F0;
      v34 = &qword_26BDA1A88;
      goto LABEL_11;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v40, v41, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_157();
  v42 = sub_26BDA0BB0();
  sub_26BCFEEB0(v11);
  v43 = OUTLINED_FUNCTION_128();
  sub_26BCFEEB0(v43);
  sub_26BD04E80(v25, &qword_2804490F0, &qword_26BDA1A88);
  if ((v42 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v44 = v69;
  v45 = *(v68 + 48);
  v46 = *(v20 + 48);
  v47 = v70;
  OUTLINED_FUNCTION_313(v69 + v45);
  OUTLINED_FUNCTION_313(v30 + v45);
  OUTLINED_FUNCTION_56(v47);
  if (!v32)
  {
    v48 = v67;
    sub_26BD04E2C(v47);
    OUTLINED_FUNCTION_56(v47 + v46);
    if (!v49)
    {
      OUTLINED_FUNCTION_5();
      v51 = v66;
      sub_26BCFEE08(v47 + v46);
      if (*(v48 + *(v7 + 20)) == *(v51 + *(v7 + 20)) || (, , v52 = OUTLINED_FUNCTION_147(), v54 = sub_26BCF5AE0(v52, v53), , , v54))
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(v55, v56, MEMORY[0x277D216D0]);
        v57 = v66;
        OUTLINED_FUNCTION_130();
        v58 = sub_26BDA0BB0();
        OUTLINED_FUNCTION_203();
        sub_26BCFEEB0(v57);
        v59 = OUTLINED_FUNCTION_170();
        sub_26BCFEEB0(v59);
        sub_26BD04E80(v47, &qword_2804490F0, &qword_26BDA1A88);
        if ((v58 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      sub_26BCFEEB0(v66);
      sub_26BCFEEB0(v67);
      v33 = &qword_2804490F0;
      v34 = &qword_26BDA1A88;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_25();
    sub_26BCFEEB0(v48);
LABEL_23:
    v33 = &qword_280449198;
    v34 = &qword_26BDA1AF8;
LABEL_24:
    v35 = v47;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_56(v47 + v46);
  if (!v32)
  {
    goto LABEL_23;
  }

  sub_26BD04E80(v47, &qword_2804490F0, &qword_26BDA1A88);
LABEL_31:
  if (*(v44 + 1) == *(v30 + 1) && *(v44 + 16) == *(v30 + 16))
  {
    v60 = v44[3] == v30[3] && v44[4] == v30[4];
    if (v60 || (sub_26BDA0FB0() & 1) != 0)
    {
      v61 = v44[5] == v30[5] && v44[6] == v30[6];
      if (v61 || (sub_26BDA0FB0()) && (sub_26BD011F4(v44[7], v30[7]))
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(v62, v63, MEMORY[0x277D216D0]);
        v50 = sub_26BDA0BB0();
        goto LABEL_27;
      }
    }
  }

LABEL_26:
  v50 = 0;
LABEL_27:
  OUTLINED_FUNCTION_258(v50);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCFE408(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449540, type metadata accessor for ContactSupportOptions, &protocol conformance descriptor for ContactSupportOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFE488(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449300, type metadata accessor for ContactSupportOptions, &protocol conformance descriptor for ContactSupportOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFE4F8(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449300, type metadata accessor for ContactSupportOptions, &protocol conformance descriptor for ContactSupportOptions);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFE590()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448CE0);
  __swift_project_value_buffer(v0, qword_280448CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "articles";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "limit";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCFE7BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_113();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t ArticleSupportOptions.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0950();
LABEL_10:
        v1 = 0;
        break;
      case 2:
        OUTLINED_FUNCTION_116();
        sub_26BDA0980();
        goto LABEL_10;
      case 1:
        sub_26BDA0810();
        OUTLINED_FUNCTION_3();
        sub_26BCFF280(&qword_280449130, v4, MEMORY[0x277D215C0]);
        OUTLINED_FUNCTION_87();
        sub_26BDA09A0();
        goto LABEL_10;
    }
  }
}

uint64_t ArticleSupportOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (!*(*v1 + 16) || (sub_26BDA0810(), OUTLINED_FUNCTION_3(), sub_26BCFF280(v4, v5, MEMORY[0x277D215C0]), OUTLINED_FUNCTION_242(), v2 = v0, result = sub_26BDA0AC0(), !v0))
  {
    if (*(v3 + 8) == 0.0 || (v2 = v0, OUTLINED_FUNCTION_129(), result = sub_26BDA0AA0(), !v0))
    {
      if (!*(v3 + 16) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A70(), !v2))
      {
        type metadata accessor for ArticleSupportOptions(0);
        return OUTLINED_FUNCTION_104();
      }
    }
  }

  return result;
}

uint64_t static ArticleSupportOptions.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_184();
  sub_26BD01478(*v3, *v4);
  if ((v5 & 1) == 0 || *(v2 + 8) != *(v1 + 8) || *(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for ArticleSupportOptions(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BCFEB10()
{
  OUTLINED_FUNCTION_177();
  v2 = v1;
  sub_26BDA1050();
  v2(0);
  v3 = OUTLINED_FUNCTION_130();
  sub_26BCFF280(v3, v4, v0);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BCFEBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449538, type metadata accessor for ArticleSupportOptions, &protocol conformance descriptor for ArticleSupportOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFEC68(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions, &protocol conformance descriptor for ArticleSupportOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFECD8(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions, &protocol conformance descriptor for ArticleSupportOptions);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26BDA1050();
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26BCFEE08(uint64_t a1)
{
  OUTLINED_FUNCTION_184();
  v2(0);
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  return v1;
}

uint64_t sub_26BCFEE5C(uint64_t a1)
{
  OUTLINED_FUNCTION_184();
  v2(0);
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  return v1;
}

uint64_t sub_26BCFEEB0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_26BCFEFC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26BCFF01C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26BCFF1F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_26BCFF280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BCFF2C8(uint64_t a1)
{
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  return v1;
}

uint64_t sub_26BCFF33C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_26BCFF3AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v6 = v5;
  v7 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  v12 = OUTLINED_FUNCTION_110(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38();
  v125 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_252();
  v124 = v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_38();
  v135 = v17;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_252();
  v136 = v19;
  v20 = OUTLINED_FUNCTION_176();
  v130 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  v131 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_252();
  v134 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
  v26 = OUTLINED_FUNCTION_110(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_38();
  v132 = v27;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_252();
  v127 = v29;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C0, &unk_26BDA3500);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_38();
  v129 = v31;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_252();
  v137 = v33;
  v34 = OUTLINED_FUNCTION_176();
  v35 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(v34);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_97();
  v139 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  v140 = &v116 - v40;
  v41 = *(v6 + 16);
  if (v41 == *(v4 + 16) && v41 && v6 != v4)
  {
    v119 = v2;
    OUTLINED_FUNCTION_96();
    v43 = v6 + v42;
    v44 = v4 + v42;
    v118 = v9 + 32;
    v120 = (v9 + 8);
    v122 = *(v45 + 72);
    v123 = v7;
    v47 = v129;
    v46 = v130;
    v126 = v35;
    while (1)
    {
      sub_26BCFEE5C(v43);
      if (!v41)
      {
        break;
      }

      v128 = v41;
      sub_26BCFEE5C(v44);
      OUTLINED_FUNCTION_233();
      v50 = v50 && v48 == v49;
      if (!v50 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_57;
      }

      v51 = *(v35 + 24);
      v52 = v137;
      v53 = *(v138 + 48);
      sub_26BD04E2C(v140 + v51);
      sub_26BD04E2C(v139 + v51);
      OUTLINED_FUNCTION_56(v52);
      if (v50)
      {
        OUTLINED_FUNCTION_56(v52 + v53);
        if (!v50)
        {
          goto LABEL_46;
        }

        sub_26BD04E80(v52, &qword_2804495B8, &qword_26BDA7810);
        v35 = v126;
      }

      else
      {
        v121 = v44;
        v54 = v127;
        sub_26BD04E2C(v52);
        OUTLINED_FUNCTION_56(v52 + v53);
        if (v55)
        {
          OUTLINED_FUNCTION_208();
          sub_26BCFEEB0(v54);
LABEL_46:
          v113 = &qword_2804495C0;
          v114 = &unk_26BDA3500;
          v115 = v52;
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_195();
        v56 = v52 + v53;
        v57 = v46;
        v58 = v134;
        sub_26BCFEE08(v56);
        v59 = *(v57 + 24);
        v60 = *(v133 + 48);
        sub_26BD04E2C(v54 + v59);
        sub_26BD04E2C(v58 + v59);
        v61 = OUTLINED_FUNCTION_244();
        v62 = v123;
        OUTLINED_FUNCTION_112(v61, v63, v123);
        if (v50)
        {
          OUTLINED_FUNCTION_20(v136 + v60);
          if (!v50)
          {
            goto LABEL_50;
          }

          sub_26BD04E80(v136, &qword_280449520, &unk_26BDA44F0);
          v64 = v134;
        }

        else
        {
          v65 = v136;
          v66 = v124;
          sub_26BD04E2C(v136);
          OUTLINED_FUNCTION_20(v65 + v60);
          if (v67)
          {
            (*v120)(v66, v62);
LABEL_50:
            sub_26BD04E80(v136, &qword_280449528, &unk_26BDA34F0);
            v64 = v134;
LABEL_51:
            OUTLINED_FUNCTION_209();
            sub_26BCFEEB0(v64);
            sub_26BCFEEB0(v54);
            v113 = &qword_2804495B8;
            v114 = &qword_26BDA7810;
            v115 = v137;
            goto LABEL_56;
          }

          v117 = v43;
          v68 = v136;
          v69 = OUTLINED_FUNCTION_296();
          v70(v69);
          OUTLINED_FUNCTION_24();
          sub_26BCFF280(&qword_280449530, v71, MEMORY[0x277D21578]);
          v72 = sub_26BDA0BB0();
          v73 = v66;
          v74 = *v120;
          v75 = OUTLINED_FUNCTION_281();
          (v74)(v75);
          v54 = v127;
          v74(v73, v62);
          v43 = v117;
          sub_26BD04E80(v68, &qword_280449520, &unk_26BDA44F0);
          v64 = v134;
          if ((v72 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        sub_26BD00960(*v54, *v64);
        if ((v76 & 1) == 0)
        {
          goto LABEL_51;
        }

        v77 = v130;
        v78 = sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(&qword_2804490C0, v79, MEMORY[0x277D216D0]);
        sub_26BDA0BB0();
        OUTLINED_FUNCTION_194();
        v80 = v64;
        v46 = v77;
        sub_26BCFEEB0(v80);
        v81 = OUTLINED_FUNCTION_281();
        sub_26BCFEEB0(v81);
        sub_26BD04E80(v137, &qword_2804495B8, &qword_26BDA7810);
        v47 = v129;
        v35 = v126;
        v44 = v121;
        if ((v78 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v82 = *(v35 + 28);
      v83 = *(v138 + 48);
      sub_26BD04E2C(v140 + v82);
      sub_26BD04E2C(v139 + v82);
      OUTLINED_FUNCTION_56(v47);
      if (v50)
      {
        OUTLINED_FUNCTION_56(v47 + v83);
        if (!v50)
        {
          goto LABEL_48;
        }

        sub_26BD04E80(v47, &qword_2804495B8, &qword_26BDA7810);
      }

      else
      {
        v84 = v132;
        sub_26BD04E2C(v47);
        OUTLINED_FUNCTION_56(v47 + v83);
        if (v85)
        {
          OUTLINED_FUNCTION_208();
          sub_26BCFEEB0(v84);
LABEL_48:
          v113 = &qword_2804495C0;
          v114 = &unk_26BDA3500;
LABEL_55:
          v115 = v47;
LABEL_56:
          sub_26BD04E80(v115, v113, v114);
LABEL_57:
          sub_26BCFEEB0(v139);
          sub_26BCFEEB0(v140);
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_195();
        v86 = v131;
        sub_26BCFEE08(v47 + v83);
        v87 = *(v46 + 24);
        v88 = *(v133 + 48);
        sub_26BD04E2C(v84 + v87);
        sub_26BD04E2C(v86 + v87);
        v89 = OUTLINED_FUNCTION_244();
        v90 = v123;
        OUTLINED_FUNCTION_112(v89, v91, v123);
        if (v50)
        {
          OUTLINED_FUNCTION_20(v135 + v88);
          if (!v50)
          {
            goto LABEL_53;
          }

          sub_26BD04E80(v135, &qword_280449520, &unk_26BDA44F0);
          v93 = v131;
          v92 = v132;
        }

        else
        {
          v94 = v135;
          v95 = v125;
          sub_26BD04E2C(v135);
          OUTLINED_FUNCTION_20(v94 + v88);
          if (v96)
          {
            (*v120)(v95, v90);
LABEL_53:
            sub_26BD04E80(v135, &qword_280449528, &unk_26BDA34F0);
            v93 = v131;
            v92 = v132;
LABEL_54:
            OUTLINED_FUNCTION_209();
            sub_26BCFEEB0(v93);
            sub_26BCFEEB0(v92);
            v113 = &qword_2804495B8;
            v114 = &qword_26BDA7810;
            goto LABEL_55;
          }

          v97 = v135;
          v98 = OUTLINED_FUNCTION_296();
          v99(v98);
          OUTLINED_FUNCTION_24();
          sub_26BCFF280(&qword_280449530, v100, MEMORY[0x277D21578]);
          OUTLINED_FUNCTION_304();
          LODWORD(v121) = sub_26BDA0BB0();
          v101 = *v120;
          v102 = v47;
          v47 = v129;
          v103 = v131;
          (*v120)(v102, v90);
          v101(v125, v90);
          v46 = v130;
          v104 = v97;
          v93 = v103;
          sub_26BD04E80(v104, &qword_280449520, &unk_26BDA44F0);
          v92 = v132;
          if ((v121 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        sub_26BD00960(*v92, *v93);
        if ((v105 & 1) == 0)
        {
          goto LABEL_54;
        }

        v106 = sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(&qword_2804490C0, v107, MEMORY[0x277D216D0]);
        sub_26BDA0BB0();
        OUTLINED_FUNCTION_194();
        sub_26BCFEEB0(v93);
        v108 = OUTLINED_FUNCTION_272();
        sub_26BCFEEB0(v108);
        sub_26BD04E80(v47, &qword_2804495B8, &qword_26BDA7810);
        v35 = v126;
        if ((v106 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v109, MEMORY[0x277D216D0]);
      v110 = v139;
      v111 = sub_26BDA0BB0();
      sub_26BCFEEB0(v110);
      v112 = OUTLINED_FUNCTION_272();
      sub_26BCFEEB0(v112);
      if (v111)
      {
        v41 = v128 - 1;
        v44 += v122;
        v43 += v122;
        if (v128 != 1)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    __break(1u);
  }

  else
  {
LABEL_58:
    OUTLINED_FUNCTION_225();
    OUTLINED_FUNCTION_188();
  }
}

void sub_26BCFFF00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v5 = v4;
  v7 = v6;
  v8 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  v47 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_280();
  v49 = v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  v15 = type metadata accessor for TriageRequest.HMTContext.UserAction(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_97();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v42 - v21);
  v23 = *(v7 + 16);
  if (v23 == *(v5 + 16) && v23 && v7 != v5)
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_305();
    v42 = v25;
    v43 = v24;
    v45 = *(v26 + 72);
    v46 = v2;
    v48 = v15;
    while (1)
    {
      sub_26BCFEE5C(v3);
      if (!v23)
      {
        break;
      }

      v51 = v23;
      v27 = OUTLINED_FUNCTION_131();
      sub_26BCFEE5C(v27);
      v28 = *(v15 + 28);
      v29 = *(v50 + 48);
      sub_26BD04E2C(v28 + v22);
      sub_26BD04E2C(v28 + v19);
      OUTLINED_FUNCTION_106(v2);
      if (v32)
      {
        OUTLINED_FUNCTION_106(v2 + v29);
        if (!v32)
        {
          goto LABEL_28;
        }

        v30 = OUTLINED_FUNCTION_167();
        sub_26BD04E80(v30, v31, &unk_26BDA44F0);
      }

      else
      {
        sub_26BD04E2C(v2);
        OUTLINED_FUNCTION_106(v2 + v29);
        if (v32)
        {
          (*v43)(v49, v8);
LABEL_28:
          sub_26BD04E80(v2, &qword_280449528, &unk_26BDA34F0);
LABEL_29:
          sub_26BCFEEB0(v19);
          sub_26BCFEEB0(v22);
          goto LABEL_30;
        }

        v33 = v2 + v29;
        v34 = v8;
        v8 = v49;
        v35 = v47;
        (*v42)(v47, v33, v34);
        OUTLINED_FUNCTION_24();
        sub_26BCFF280(&qword_280449530, v36, MEMORY[0x277D21578]);
        OUTLINED_FUNCTION_157();
        v44 = sub_26BDA0BB0();
        v37 = OUTLINED_FUNCTION_276();
        v28(v37);
        (v28)(v35, v34);
        sub_26BD04E80(v2, &qword_280449520, &unk_26BDA44F0);
        if ((v44 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v38 = *v22 == *v19 && v22[1] == v19[1];
      if (!v38 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_29;
      }

      v39 = v22[2] == v19[2] && v22[3] == v19[3];
      if (!v39 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_29;
      }

      v15 = v48;
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v40, MEMORY[0x277D216D0]);
      v41 = OUTLINED_FUNCTION_309();
      sub_26BCFEEB0(v19);
      sub_26BCFEEB0(v22);
      if (v41)
      {
        v23 = v51 - 1;
        v2 = v46;
        v7 += v45;
        v3 += v45;
        if (v51 != 1)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    OUTLINED_FUNCTION_225();
    OUTLINED_FUNCTION_188();
  }
}

void sub_26BD00458(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v59 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_181();
  v61 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  v55 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v15);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_280();
  v57 = v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v60 = v7(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_97();
  v24 = (v22 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = (&v50 - v26);
  v28 = *(v2 + 16);
  if (v28 != *(v9 + 16) || !v28 || v2 == v9)
  {
    goto LABEL_34;
  }

  v51 = v14;
  OUTLINED_FUNCTION_96();
  v30 = v2 + v29;
  v31 = v9 + v29;
  v50 = (v55 + 32);
  v52 = (v55 + 8);
  v55 = *(v32 + 72);
  v56 = v5;
  while (1)
  {
    sub_26BCFEE5C(v30);
    sub_26BCFEE5C(v31);
    v33 = *(v60 + 32);
    v34 = *(v58 + 48);
    sub_26BD04E2C(v27 + v33);
    sub_26BD04E2C(v24 + v33);
    OUTLINED_FUNCTION_112(v20, 1, v61);
    if (!v36)
    {
      break;
    }

    OUTLINED_FUNCTION_112(&v20[v34], 1, v61);
    if (!v36)
    {
      goto LABEL_32;
    }

    sub_26BD04E80(v20, &qword_280449520, &unk_26BDA44F0);
LABEL_12:
    v45 = *v27 == *v24 && v27[1] == v24[1];
    if (!v45 && (sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_33;
    }

    v46 = v27[2] == v24[2] && v27[3] == v24[3];
    if (!v46 && (sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_33;
    }

    v47 = v27[4] == v24[4] && v27[5] == v24[5];
    if (!v47 && (sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_26BDA0850();
    OUTLINED_FUNCTION_1();
    sub_26BCFF280(&qword_2804490C0, v48, MEMORY[0x277D216D0]);
    v49 = sub_26BDA0BB0();
    sub_26BCFEEB0(v24);
    sub_26BCFEEB0(v27);
    if (v49)
    {
      v31 += v55;
      v30 += v55;
      if (--v28)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  v35 = v57;
  sub_26BD04E2C(v20);
  OUTLINED_FUNCTION_112(&v20[v34], 1, v61);
  if (!v36)
  {
    v37 = v61;
    (*v50)(v51, &v20[v34], v61);
    OUTLINED_FUNCTION_24();
    sub_26BCFF280(&qword_280449530, v38, MEMORY[0x277D21578]);
    v53 = sub_26BDA0BB0();
    v54 = v31;
    v39 = v30;
    v40 = v20;
    v41 = v35;
    v42 = *v52;
    v43 = OUTLINED_FUNCTION_169();
    v42(v43);
    v44 = v41;
    v20 = v40;
    v30 = v39;
    v31 = v54;
    (v42)(v44, v37);
    sub_26BD04E80(v20, &qword_280449520, &unk_26BDA44F0);
    if ((v53 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  (*v52)(v35, v61);
LABEL_32:
  sub_26BD04E80(v20, &qword_280449528, &unk_26BDA34F0);
LABEL_33:
  sub_26BCFEEB0(v24);
  sub_26BCFEEB0(v27);
LABEL_34:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD00960(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v8 = OUTLINED_FUNCTION_218();
  type metadata accessor for TriageRequest.HMTContext.Setting(v8);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_149();
  if (v14 && v7 && v5 != v2)
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_268();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_167();
      sub_26BCFEE5C(v11);
      sub_26BCFEE5C(v6);
      OUTLINED_FUNCTION_266();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v15 = *(v4 + 16) == *(v3 + 16) && *(v4 + 24) == *(v3 + 24);
      if (!v15 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v16, MEMORY[0x277D216D0]);
      v17 = OUTLINED_FUNCTION_249();
      sub_26BCFEEB0(v3);
      v18 = OUTLINED_FUNCTION_279();
      sub_26BCFEEB0(v18);
      if (v17)
      {
        OUTLINED_FUNCTION_178();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_26BCFEEB0(v3);
    v19 = OUTLINED_FUNCTION_126();
    sub_26BCFEEB0(v19);
  }

LABEL_22:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD00B40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v5 = v4;
  v7 = v6;
  v8 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  v51 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_280();
  v57 = v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_228();
  v15 = type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_97();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v47 - v21);
  v23 = *(v7 + 16);
  if (v23 == *(v5 + 16) && v23 && v7 != v5)
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_305();
    v48 = v25;
    v49 = v24;
    v52 = *(v26 + 72);
    v53 = v15;
    v27 = &unk_26BDA44F0;
    v55 = v19;
    v56 = v2;
    v54 = v22;
    while (1)
    {
      sub_26BCFEE5C(v3);
      v28 = OUTLINED_FUNCTION_131();
      sub_26BCFEE5C(v28);
      v29 = *v22 == *v19 && v22[1] == v19[1];
      if (!v29 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v30 = v22[2] == v19[2] && v22[3] == v19[3];
      if (!v30 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v31 = *(v15 + 28);
      v32 = *(v58 + 48);
      v33 = v22 + v31;
      v34 = v56;
      v35 = v27;
      sub_26BD04E2C(v33);
      sub_26BD04E2C(v19 + v31);
      OUTLINED_FUNCTION_106(v34);
      if (v29)
      {
        OUTLINED_FUNCTION_106(v34 + v32);
        if (!v29)
        {
          goto LABEL_27;
        }

        v36 = OUTLINED_FUNCTION_216();
        sub_26BD04E80(v36, v37, v27);
        v15 = v53;
        v22 = v54;
        v19 = v55;
      }

      else
      {
        sub_26BD04E2C(v34);
        OUTLINED_FUNCTION_106(v34 + v32);
        if (v38)
        {
          (*v49)(v57, v8);
LABEL_27:
          sub_26BD04E80(v34, &qword_280449528, &unk_26BDA34F0);
          v22 = v54;
          v19 = v55;
          break;
        }

        v39 = v34 + v32;
        v40 = v8;
        v8 = v57;
        v41 = v51;
        (*v48)(v51, v39, v40);
        OUTLINED_FUNCTION_24();
        sub_26BCFF280(&qword_280449530, v42, MEMORY[0x277D21578]);
        OUTLINED_FUNCTION_157();
        v50 = sub_26BDA0BB0();
        v43 = OUTLINED_FUNCTION_276();
        qword_280449520(v43);
        v44 = v41;
        v27 = v35;
        qword_280449520(v44);
        sub_26BD04E80(v34, &qword_280449520, v35);
        v15 = v53;
        v22 = v54;
        v19 = v55;
        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v45, MEMORY[0x277D216D0]);
      v46 = OUTLINED_FUNCTION_309();
      sub_26BCFEEB0(v19);
      sub_26BCFEEB0(v22);
      if (v46)
      {
        v7 += v52;
        v3 += v52;
        if (--v23)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    sub_26BCFEEB0(v19);
    sub_26BCFEEB0(v22);
  }

LABEL_29:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD01014(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v8 = OUTLINED_FUNCTION_218();
  type metadata accessor for SupportOptionDetailsResponse.TimeSlot(v8);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_149();
  if (v14 && v7 && v5 != v2)
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_268();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_167();
      sub_26BCFEE5C(v11);
      sub_26BCFEE5C(v6);
      OUTLINED_FUNCTION_266();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_26BDA0FB0() & 1) == 0 || *(v4 + 16) != *(v3 + 16) || *(v4 + 24) != *(v3 + 24))
      {
        break;
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v15, MEMORY[0x277D216D0]);
      v16 = OUTLINED_FUNCTION_249();
      sub_26BCFEEB0(v3);
      v17 = OUTLINED_FUNCTION_279();
      sub_26BCFEEB0(v17);
      if (v16)
      {
        OUTLINED_FUNCTION_178();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    sub_26BCFEEB0(v3);
    v18 = OUTLINED_FUNCTION_126();
    sub_26BCFEEB0(v18);
  }

LABEL_19:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD011F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportOption(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_26BCFEE5C(v13);
      sub_26BCFEE5C(v14);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18)
      {

        v19 = sub_26BCF5AE0(v17, v18);

        if (!v19)
        {
          break;
        }
      }

      sub_26BDA0850();
      sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_26BDA0BB0();
      sub_26BCFEEB0(v7);
      sub_26BCFEEB0(v10);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_26BCFEEB0(v7);
    sub_26BCFEEB0(v10);
    goto LABEL_12;
  }

  v20 = 1;
  return v20 & 1;
}

void sub_26BD01478(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v5 = v4;
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(v5 + 16);
  if (v13 == *(v3 + 16) && v13 && v5 != v3)
  {
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = v5 + v14;
    v16 = v3 + v14;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v19 = (v17 - 8);
    v29 = *(v17 + 56);
    v30 = v18;
    while (1)
    {
      v20 = OUTLINED_FUNCTION_262();
      v21 = v30;
      v30(v20);
      if (!v13)
      {
        break;
      }

      v22 = OUTLINED_FUNCTION_275();
      v23 = v17;
      v21(v22);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_2804490D0, v24, MEMORY[0x277D215D8]);
      v25 = sub_26BDA0BB0();
      v26 = *v19;
      v27 = OUTLINED_FUNCTION_147();
      v26(v27);
      (v26)(v12, v6);
      if (v25)
      {
        v16 += v29;
        v15 += v29;
        v28 = v13-- == 1;
        v17 = v23;
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_188();
  }
}

uint64_t sub_26BD02860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_184();
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_175();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_26BD02960()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_184();
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_242();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_175();
    if (*(v8 + 84) == v3)
    {
      v6 = v7;
      v9 = *(v2 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
      v9 = *(v2 + 24);
    }

    v5 = v1 + v9;
  }

  return __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

void sub_26BD02A4C(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD02B48(319, &qword_280449340, type metadata accessor for TriageRequest.CaseMetaData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26BD02B48(319, &unk_280449348, type metadata accessor for TriageRequest.ClientContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD02B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_134();
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void __swift_store_extra_inhabitant_index_102Tm()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_184();
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_242();

    __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_26BD02D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26BDA0850();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD02DF0(uint64_t a1)
{
  v1 = type metadata accessor for SupportOption.CINDetails(319);
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for SupportOption.C2CDetails(319);
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for SupportOption.SCBDetails(319);
      if (v4 <= 0x3F)
      {
        v1 = type metadata accessor for SupportOption.PhoneDetails(319);
        if (v5 <= 0x3F)
        {
          v1 = type metadata accessor for SupportOption.C2CHDetails(319);
          if (v6 <= 0x3F)
          {
            v1 = type metadata accessor for SupportOption.BZCHTDetails(319);
            if (v7 <= 0x3F)
            {
              v1 = sub_26BDA0810();
              if (v8 <= 0x3F)
              {
                v9 = type metadata accessor for SupportOption.BCSDetails(319);
                if (v10 > 0x3F)
                {
                  return v9;
                }

                v9 = type metadata accessor for SupportOption.KBDetails(319);
                if (v11 > 0x3F)
                {
                  return v9;
                }

                v9 = type metadata accessor for SupportOption.CASDetails(319);
                if (v12 > 0x3F)
                {
                  return v9;
                }

                v9 = type metadata accessor for SupportOption.ContactOptionsDetails(319);
                if (v13 > 0x3F)
                {
                  return v9;
                }

                else
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

  return v1;
}

uint64_t sub_26BD02F90()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v6 = *(v2 + 32);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD03054()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v4 = *(v0 + 32);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD03108(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03244()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD032BC()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD0331C(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD033C0()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD03438()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD03498(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD03534()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 28);
  }

  else
  {
    sub_26BDA0850();
    v8 = *(v5 + 32);
  }

  v9 = OUTLINED_FUNCTION_174(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_26BD03604()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 28);
    }

    else
    {
      sub_26BDA0850();
      v4 = *(v0 + 32);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD036B8(uint64_t a1)
{
  sub_26BD02B48(319, &unk_280449420, type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03794(uint64_t a1)
{
  v1 = sub_26BDA0810();
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t __swift_get_extra_inhabitant_index_126Tm()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_127Tm()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v4 = *(v0 + 24);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD039A8()
{
  v12 = MEMORY[0x277D837D0];
  v0 = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    v13 = v0;
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_245(v2, v3, v4, v5, v6, v7, v8, v9, *v10, v10[4], 0, 0, v11, v12, v13, v14);
    }
  }
}

uint64_t sub_26BD03A74()
{
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D837D0];
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_245(result, v1, v2, v3, v4, v5, v6, v7, *v8, v8[4], 0, 0, v9, v10, v11, v12);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_153Tm()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_154Tm()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_26BD03BBC(uint64_t a1)
{
  sub_26BD04F78(319, &qword_280449480, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_184();
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_26BD03D34(uint64_t a1)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_184();
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v4)
  {
    v6 = OUTLINED_FUNCTION_242();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v6 = v2 + *(v3 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v6, v1, v1, v7);
}

void sub_26BD03DD4(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03E9C()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*v1);
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
    v6 = *(v2 + 44);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD03F60()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_237();
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
      v6 = *(v2 + 44);
    }

    v7 = OUTLINED_FUNCTION_107(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_26BD04018(uint64_t a1)
{
  sub_26BD02B48(319, &qword_2804494B0, type metadata accessor for SupportOption, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      sub_26BD02B48(319, &qword_2804494B8, type metadata accessor for SupportOption, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26BD0414C()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*v0);
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD041C4()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v4 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_26BD04228(uint64_t a1)
{
  sub_26BD02B48(319, &unk_2804494D0, MEMORY[0x277D215C8], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD042FC(uint64_t a1)
{
  sub_26BD02B48(319, &qword_2804494F0, type metadata accessor for ContactSupportOptions, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26BD02B48(319, &qword_2804494F8, type metadata accessor for ArticleSupportOptions, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26BD044EC(uint64_t a1)
{
  sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26BD02B48(319, &unk_280449510, type metadata accessor for SupportOption.OneOf_Details, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26BD04688(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v8 = OUTLINED_FUNCTION_218();
  type metadata accessor for AssociatedProductInfo(v8);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_149();
  if (v14 && v7 && v5 != v2)
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_268();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_167();
      sub_26BCFEE5C(v11);
      sub_26BCFEE5C(v6);
      OUTLINED_FUNCTION_266();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v15 = *(v4 + 16) == *(v3 + 16) && *(v4 + 24) == *(v3 + 24);
      if (!v15 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v16 = *(v4 + 32) == *(v3 + 32) && *(v4 + 40) == *(v3 + 40);
      if (!v16 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 48) == *(v3 + 48) && *(v4 + 56) == *(v3 + 56);
      if (!v17 && (sub_26BDA0FB0() & 1) == 0 || *(v4 + 64) != *(v3 + 64))
      {
        break;
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v18, MEMORY[0x277D216D0]);
      v19 = OUTLINED_FUNCTION_249();
      sub_26BCFEEB0(v3);
      v20 = OUTLINED_FUNCTION_279();
      sub_26BCFEEB0(v20);
      if (v19)
      {
        OUTLINED_FUNCTION_178();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    sub_26BCFEEB0(v3);
    v21 = OUTLINED_FUNCTION_126();
    sub_26BCFEEB0(v21);
  }

LABEL_33:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD04960(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0) - 8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_97();
  MEMORY[0x28223BE20](v10);
  v11 = *(v7 + 16);
  if (v11 == *(v5 + 16) && v11 && v7 != v5)
  {
    OUTLINED_FUNCTION_96();
    v13 = v7 + v12;
    v14 = v5 + v12;
    v16 = *(v15 + 72);
    do
    {
      v17 = OUTLINED_FUNCTION_204();
      sub_26BCFEE5C(v17);
      OUTLINED_FUNCTION_141();
      sub_26BCFEE5C(v18);
      v19 = OUTLINED_FUNCTION_167();
      v20 = v3(v19);
      v21 = OUTLINED_FUNCTION_126();
      sub_26BCFEEB0(v21);
      v22 = OUTLINED_FUNCTION_302();
      sub_26BCFEEB0(v22);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_188();
}

void sub_26BD04ACC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v5 = OUTLINED_FUNCTION_218();
  type metadata accessor for ExecuteResponse.Task(v5);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - v8);
  v10 = *(v4 + 16);
  if (v10 == *(v2 + 16) && v10 && v4 != v2)
  {
    v11 = 0;
    OUTLINED_FUNCTION_96();
    v29 = v4 + v12;
    v13 = v2 + v12;
    v15 = *(v14 + 72);
    while (1)
    {
      sub_26BCFEE5C(v29 + v15 * v11);
      if (v11 == v10)
      {
        break;
      }

      sub_26BCFEE5C(v13 + v15 * v11);
      v16 = *v9;
      v17 = *v3;
      v18 = *(*v9 + 16);
      if (v18 != *(*v3 + 16))
      {
        goto LABEL_34;
      }

      if (v18)
      {
        v19 = v16 == v17;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v16 + 40);
        v21 = (v17 + 40);
        while (v18)
        {
          v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
          if (!v22 && (sub_26BDA0FB0() & 1) == 0)
          {
            goto LABEL_34;
          }

          v20 += 2;
          v21 += 2;
          if (!--v18)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        break;
      }

LABEL_19:
      v23 = v9[1] == v3[1] && v9[2] == v3[2];
      if (!v23 && (sub_26BDA0FB0() & 1) == 0 || v9[3] != v3[3] || (v9[4] == v3[4] ? (v24 = v9[5] == v3[5]) : (v24 = 0), !v24 && (sub_26BDA0FB0() & 1) == 0))
      {
LABEL_34:
        sub_26BCFEEB0(v3);
        v27 = OUTLINED_FUNCTION_126();
        sub_26BCFEEB0(v27);
        goto LABEL_35;
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v25, MEMORY[0x277D216D0]);
      v26 = sub_26BDA0BB0();
      sub_26BCFEEB0(v3);
      sub_26BCFEEB0(v9);
      if ((v26 & 1) != 0 && ++v11 != v10)
      {
        continue;
      }

      goto LABEL_35;
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    OUTLINED_FUNCTION_225();
    OUTLINED_FUNCTION_188();
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_26BD04DD8()
{
  result = qword_2804495E8;
  if (!qword_2804495E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804495E8);
  }

  return result;
}

uint64_t sub_26BD04E2C(uint64_t a1)
{
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  return v1;
}

uint64_t sub_26BD04E80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_26BD04F78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_26BD04E80(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for SupportOption(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for AllSolutionsResponse(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_46@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58()
{
  type metadata accessor for SupportOption(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_59(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{
  type metadata accessor for SupportOption._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_26BD04E2C(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_65()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_26BD04E2C(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_82()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_26BD04E2C(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_93()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_94()
{
  type metadata accessor for AllSolutionsResponse._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_26BCFEE08(v0);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_26BD04E2C(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_26BDA0830();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_108@<X0>(uint64_t a1@<X8>)
{

  return sub_26BD04E2C(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_120()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_125@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 48) = a1;

  return sub_26BD04E2C(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1)
{

  return sub_26BD04E2C(a1);
}

uint64_t OUTLINED_FUNCTION_135@<X0>(uint64_t a1@<X8>)
{

  return sub_26BD04E2C(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1)
{

  return sub_26BD04E2C(a1);
}

void OUTLINED_FUNCTION_146()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_154(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_160()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_163()
{
  type metadata accessor for SupportOption(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1)
{
  type metadata accessor for AllSolutionsResponse(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_191(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_210()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_211()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_212()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_220(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_226(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_230(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_232(uint64_t a1)
{
  type metadata accessor for SupportOption(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_235(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_236(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_240()
{
  result = *(v0 + v2);
  *(v1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_248@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_249()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_250()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_251()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_255(uint64_t a1)
{

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_260(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_282()
{
}

uint64_t OUTLINED_FUNCTION_288(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_291(uint64_t a1)
{

  return sub_26BD04E2C(a1);
}

uint64_t OUTLINED_FUNCTION_292()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_293(uint64_t a1)
{

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_297()
{
  result = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_301@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  type metadata accessor for SupportOption.C2CHDetails(0);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_308()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_309()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_310@<X0>(uint64_t a1@<X8>)
{

  return sub_26BD04E2C(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_311()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_312()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_313(uint64_t a1)
{

  return sub_26BD04E2C(a1);
}

uint64_t OUTLINED_FUNCTION_314()
{

  return sub_26BCFEE08(v0);
}

uint64_t OUTLINED_FUNCTION_315()
{
}

uint64_t OUTLINED_FUNCTION_319(uint64_t a1)
{

  return sub_26BCFEE08(a1);
}

uint64_t OUTLINED_FUNCTION_320@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = a1;
  type metadata accessor for SupportOption.BZCHTDetails(0);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_321@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  type metadata accessor for SupportOption.C2CDetails(0);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD06C6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = MEMORY[0x277D84F90];
  *(a1 + 96) = 0;
  v2 = type metadata accessor for AuthResponse.Account(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v3 = *(v2 + 52);
  v4 = type metadata accessor for PhoneNumber(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 56);
  v6 = type metadata accessor for AuthResponse.AuthenticationToken(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t sub_26BD06D24@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD06D64@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for AuthResponse.AuthenticationToken(0);
  a1[2] = 0;
  a1[3] = 0;
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD06DA4@<X0>(uint64_t a2@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v3 = *(type metadata accessor for AuthResponse(0) + 20);
  if (qword_280448D00 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_280449790;
}

uint64_t sub_26BD06E20()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459EE0);
  __swift_project_value_buffer(v0, qword_280459EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26BDA3640;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 9;
  *v5 = "primary_account";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 10;
  *v9 = "smb_account";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 11;
  *v11 = "improve_search_consent";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 1;
  *v13 = "deprecated_uses_phone_number_for_apple_id";
  *(v13 + 1) = 41;
  v13[16] = 2;
  *(v13 + 3) = "usesPhoneNumberForAppleID";
  *(v13 + 4) = 25;
  v13[40] = 2;
  v8();
  v14 = v1[14];
  v15 = (v4 + 4 * v2);
  *v15 = 2;
  v16 = v15 + v14;
  *v16 = "deprecated_given_name";
  *(v16 + 1) = 21;
  v16[16] = 2;
  *(v16 + 3) = "firstName";
  *(v16 + 4) = 9;
  v16[40] = 2;
  v8();
  v17 = v1[14];
  v18 = (v4 + 5 * v2);
  *v18 = 3;
  v19 = v18 + v17;
  *v19 = "deprecated_family_name";
  *(v19 + 1) = 22;
  v19[16] = 2;
  *(v19 + 3) = "lastName";
  *(v19 + 4) = 8;
  v19[40] = 2;
  v8();
  v20 = v1[14];
  v21 = (v4 + 6 * v2);
  *v21 = 4;
  v22 = v21 + v20;
  *v22 = "deprecated_nickname";
  *(v22 + 1) = 19;
  v22[16] = 2;
  *(v22 + 3) = "nickName";
  *(v22 + 4) = 8;
  v22[40] = 2;
  v8();
  v23 = v1[14];
  v24 = (v4 + 7 * v2);
  *v24 = 5;
  v25 = v24 + v23;
  *v25 = "deprecated_email_address";
  *(v25 + 1) = 24;
  v25[16] = 2;
  *(v25 + 3) = "email";
  *(v25 + 4) = 5;
  v25[40] = 2;
  v8();
  v26 = v1[14];
  v27 = (v4 + 8 * v2);
  *v27 = 6;
  v28 = v27 + v26;
  *v28 = "deprecated_region_code";
  *(v28 + 1) = 22;
  v28[16] = 2;
  *(v28 + 3) = "regionCode";
  *(v28 + 4) = 10;
  v28[40] = 2;
  v8();
  v29 = v1[14];
  v30 = (v4 + 9 * v2);
  *v30 = 7;
  v31 = v30 + v29;
  *v31 = "deprecated_phone";
  *(v31 + 1) = 16;
  v31[16] = 2;
  *(v31 + 3) = "phone";
  *(v31 + 4) = 5;
  v31[40] = 2;
  v8();
  v32 = v1[14];
  v33 = (v4 + 10 * v2);
  *v33 = 8;
  v34 = v33 + v32;
  *v34 = "deprecated_auth_token";
  *(v34 + 1) = 21;
  v34[16] = 2;
  *(v34 + 3) = "authToken";
  *(v34 + 4) = 9;
  v34[40] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD072B8()
{
  type metadata accessor for AuthResponse._StorageClass(0);
  swift_allocObject();
  result = sub_26BD072F8();
  qword_280449790 = result;
  return result;
}

uint64_t sub_26BD072F8()
{
  v1 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  v2 = type metadata accessor for AuthResponse.Account(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent;
  v4 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone;
  v11 = type metadata accessor for PhoneNumber(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken;
  v13 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  return v0;
}

uint64_t sub_26BD07430(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449900, &unk_26BDA3CA0);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  v11 = type metadata accessor for AuthResponse.Account(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v43[1] = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent;
  v43[2] = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent;
  v13 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v44 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  *(v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID) = 0;
  v14 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  v46 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone;
  v47 = v18;
  v48 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone;
  v20 = type metadata accessor for PhoneNumber(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken;
  v49 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken;
  v22 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v44;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  swift_beginAccess();
  *v14 = v26;
  v14[1] = v27;

  v28 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  swift_beginAccess();
  *v15 = v29;
  v15[1] = v30;

  v31 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  swift_beginAccess();
  *v16 = v32;
  v16[1] = v33;

  v34 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  v37 = v46;
  swift_beginAccess();
  *v37 = v35;
  v37[1] = v36;

  v38 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  v41 = v47;
  swift_beginAccess();
  *v41 = v40;
  v41[1] = v39;

  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD0D868();

  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  return v1;
}

uint64_t sub_26BD07B00()
{
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent, &qword_280449900, &unk_26BDA3CA0);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone, &qword_280449840, &qword_26BDA36D8);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken, &qword_280449848, &qword_26BDA36E0);
  return v0;
}

uint64_t sub_26BD07C2C()
{
  v0 = sub_26BD07B00();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26BD07CA8(uint64_t a1)
{
  sub_26BD07EE4(319, &qword_280449800, type metadata accessor for AuthResponse.Account, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26BD07EE4(319, &qword_280449808, type metadata accessor for AuthResponse.ImproveSearchConsent, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26BD07EE4(319, &qword_280449810, type metadata accessor for PhoneNumber, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26BD07EE4(319, &qword_280449818, type metadata accessor for AuthResponse.AuthenticationToken, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26BD07EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BD07F9C()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD08014()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_174(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BD08084(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD08124()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD0819C()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_174(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BD0820C(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD0829C()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 16));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[12];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
    OUTLINED_FUNCTION_175();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[13];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
      v6 = v2[14];
    }
  }

  v8 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD083AC()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
      OUTLINED_FUNCTION_175();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
        v8 = v5[14];
      }
    }

    v10 = OUTLINED_FUNCTION_174(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

void sub_26BD084B8(uint64_t a1)
{
  sub_26BD07EE4(319, &qword_280449860, type metadata accessor for PhoneNumber, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      sub_26BD07EE4(319, &qword_280449810, type metadata accessor for PhoneNumber, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26BD07EE4(319, &qword_280449818, type metadata accessor for AuthResponse.AuthenticationToken, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26BD08634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_26BD086E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_26BD087A8(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AuthResponse._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD0882C()
{
  v3 = v0;
  OUTLINED_FUNCTION_17_0();
  v5 = v4;
  v6 = *(type metadata accessor for AuthResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AuthResponse._StorageClass(0);
    swift_allocObject();
    v8 = sub_26BD07430(v8);
    *(v3 + v6) = v8;
  }

  return sub_26BD088D0(v8, v5, v2, v1);
}

uint64_t sub_26BD088D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_8;
      case 2:
      case 3:
      case 4:
      case 5:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_8;
      case 6:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_8;
      case 7:
        swift_beginAccess();
        type metadata accessor for PhoneNumber(0);
        sub_26BD0D430(&qword_280449910, type metadata accessor for PhoneNumber, &protocol conformance descriptor for PhoneNumber);
        goto LABEL_13;
      case 8:
        swift_beginAccess();
        type metadata accessor for AuthResponse.AuthenticationToken(0);
        sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken, &unk_26BDA3958);
        goto LABEL_13;
      case 9:
      case 10:
        swift_beginAccess();
        type metadata accessor for AuthResponse.Account(0);
        sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account, &unk_26BDA3AC0);
LABEL_13:
        sub_26BDA09B0();
LABEL_8:
        v5 = 0;
        swift_endAccess();
        break;
      case 11:
        swift_beginAccess();
        type metadata accessor for AuthResponse.ImproveSearchConsent(0);
        sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent, &unk_26BDA37F0);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD08D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AuthResponse(0);
  OUTLINED_FUNCTION_129();
  result = sub_26BD08D90(v5, v6, v7, a3);
  if (!v3)
  {
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD08D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449900, &unk_26BDA3CA0);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v58 - v9;
  v61 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  MEMORY[0x28223BE20](v61);
  v58 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v58 - v14;
  v65 = type metadata accessor for AuthResponse.Account(0);
  v15 = MEMORY[0x28223BE20](v65);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  MEMORY[0x28223BE20](v18 - 8);
  v66 = &v58 - v19;
  v67 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  MEMORY[0x28223BE20](v67);
  v64 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v58 - v22;
  v69 = type metadata accessor for PhoneNumber(0);
  MEMORY[0x28223BE20](v69);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  swift_beginAccess();
  if (*(a1 + v26) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  v70 = a4;
  v28 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    sub_26BDA0AB0();
    if (v5)
    {
    }
  }

  v32 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_26BDA0AB0();
    if (!v5)
    {

      goto LABEL_13;
    }
  }

LABEL_13:
  v36 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_26BDA0AB0();
    if (v5)
    {
    }
  }

  v40 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43 || (, sub_26BDA0AB0(), result = , !v5))
  {
    v44 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
    swift_beginAccess();
    v45 = *v44;
    v46 = v44[1];
    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47 || (, sub_26BDA0AB0(), result = , !v5))
    {
      swift_beginAccess();
      sub_26BD0D868();
      if (__swift_getEnumTagSinglePayload(v23, 1, v69) == 1)
      {
        sub_26BD04E80(v23, &qword_280449840, &qword_26BDA36D8);
      }

      else
      {
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_280449910, type metadata accessor for PhoneNumber, &protocol conformance descriptor for PhoneNumber);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v25, type metadata accessor for PhoneNumber);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      v48 = v66;
      sub_26BD0D868();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v67);
      v50 = v68;
      if (EnumTagSinglePayload == 1)
      {
        sub_26BD04E80(v48, &qword_280449848, &qword_26BDA36E0);
      }

      else
      {
        v51 = v64;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken, &unk_26BDA3958);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v51, type metadata accessor for AuthResponse.AuthenticationToken);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      sub_26BD0D868();
      v52 = v65;
      if (__swift_getEnumTagSinglePayload(v50, 1, v65) == 1)
      {
        sub_26BD04E80(v50, &qword_280449908, &unk_26BDA9DD0);
      }

      else
      {
        v53 = v62;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account, &unk_26BDA3AC0);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v53, type metadata accessor for AuthResponse.Account);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      v54 = v63;
      sub_26BD0D868();
      if (__swift_getEnumTagSinglePayload(v54, 1, v52) == 1)
      {
        sub_26BD04E80(v54, &qword_280449908, &unk_26BDA9DD0);
      }

      else
      {
        v55 = v59;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account, &unk_26BDA3AC0);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v55, type metadata accessor for AuthResponse.Account);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      v56 = v60;
      sub_26BD0D868();
      if (__swift_getEnumTagSinglePayload(v56, 1, v61) == 1)
      {
        return sub_26BD04E80(v56, &qword_280449900, &unk_26BDA3CA0);
      }

      else
      {
        v57 = v58;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent, &unk_26BDA37F0);
        sub_26BDA0AD0();
        return sub_26BD0D920(v57, type metadata accessor for AuthResponse.ImproveSearchConsent);
      }
    }
  }

  return result;
}