uint64_t Searchfoundation_RFSymbolImage.backgroundColor.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_RFSymbolImage(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B956DF58(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_162_4();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSymbolImage.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RFColor(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    v12 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v12);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSymbolImage.hasBackgroundColor.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFSymbolImage(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__backgroundColor);
  OUTLINED_FUNCTION_147_2();
  v6 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSymbolImage.clearBackgroundColor()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_RFSymbolImage(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B956DF58(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B95638FC(void (*a1)(void), uint64_t *a2)
{
  a1(0);
  OUTLINED_FUNCTION_77_0();
  v4 = *a2;
  OUTLINED_FUNCTION_521(v2 + v4, v6);
  return *(v2 + v4);
}

uint64_t sub_1B9563994(char a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v13 = a4(v14);
    *(v9 + v11) = v13;
  }

  v15 = OUTLINED_FUNCTION_271_0();
  result = OUTLINED_FUNCTION_18(v15, v17);
  *(v13 + a5) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_RFSymbolImage.punchesThroughBackground.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_39_16();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9563AEC()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = *(*v6 + 80);
  v9 = *(*v6 + 72);
  v10 = *(*v6 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 80);
    v14 = *(v7 + 72);
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v12 = v3(v15);
    *(v14 + v13) = v12;
  }

  v16 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v16, v7 + v17);
  *(v12 + v1) = v10;
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Searchfoundation_RFSymbolImage.vibrancy.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void *sub_1B9563C44@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B9563C8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_RFSymbolImage.cornerRoundingMode.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RFAspectRatio.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFAspectRatio(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9563E40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5258);
  __swift_project_value_buffer(v0, qword_1EBAB5258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1B96880C0;
  v4 = v88 + v3 + v1[14];
  *(v88 + v3) = 0;
  *v4 = "RF_IMAGE_STYLE_DEFAULT";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v88 + v3 + v2 + v1[14];
  *(v88 + v3 + v2) = 1;
  *v8 = "RF_IMAGE_STYLE_IMAGE_1";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v88 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "RF_IMAGE_STYLE_IMAGE_2";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v88 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RF_IMAGE_STYLE_IMAGE_3";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v88 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RF_IMAGE_STYLE_IMAGE_4";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v88 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RF_IMAGE_STYLE_IMAGE_5";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v88 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "RF_IMAGE_STYLE_IMAGE_6";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v88 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "RF_IMAGE_STYLE_IMAGE_7";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v88 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "RF_IMAGE_STYLE_IMAGE_8";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v88 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "RF_IMAGE_STYLE_IMAGE_9";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v88 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "RF_IMAGE_STYLE_FULL_WIDTH";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v88 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "RF_IMAGE_STYLE_FULL_BLEED";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v7();
  v29 = (v88 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "RF_IMAGE_STYLE_APP_ICON_1";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v88 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "RF_IMAGE_STYLE_APP_ICON_2";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v88 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "RF_IMAGE_STYLE_APP_ICON_3";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v7();
  v35 = (v88 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "RF_IMAGE_STYLE_APP_ICON_4";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v7();
  v37 = (v88 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "RF_IMAGE_STYLE_APP_ICON_5";
  *(v38 + 1) = 25;
  v38[16] = 2;
  v7();
  v39 = (v88 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "RF_IMAGE_STYLE_CONTACT_IMAGE_1";
  *(v40 + 1) = 30;
  v40[16] = 2;
  v7();
  v41 = (v88 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "RF_IMAGE_STYLE_CONTACT_IMAGE_2";
  *(v42 + 1) = 30;
  v42[16] = 2;
  v7();
  v43 = (v88 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "RF_IMAGE_STYLE_CONTACT_IMAGE_3";
  *(v44 + 1) = 30;
  v44[16] = 2;
  v7();
  v45 = (v88 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "RF_IMAGE_STYLE_CONTACT_IMAGE_4";
  *(v46 + 1) = 30;
  v46[16] = 2;
  v7();
  v47 = (v88 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "RF_IMAGE_STYLE_CONTACT_IMAGE_5";
  *(v48 + 1) = 30;
  v48[16] = 2;
  v7();
  v49 = (v88 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_1";
  *(v50 + 1) = 32;
  v50[16] = 2;
  v7();
  v51 = (v88 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_2";
  *(v52 + 1) = 32;
  v52[16] = 2;
  v7();
  v53 = (v88 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_3";
  *(v54 + 1) = 32;
  v54[16] = 2;
  v7();
  v55 = (v88 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_4";
  *(v56 + 1) = 32;
  v56[16] = 2;
  v7();
  v57 = (v88 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "RF_IMAGE_STYLE_CONTACT_IMAGE_6";
  *(v58 + 1) = 30;
  v58[16] = 2;
  v7();
  v59 = (v88 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "RF_IMAGE_STYLE_IMAGE_2_A";
  *(v60 + 1) = 24;
  v60[16] = 2;
  v7();
  v61 = (v88 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "RF_IMAGE_STYLE_CONTACT_IMAGE_2_A";
  *(v62 + 1) = 32;
  v62[16] = 2;
  v7();
  v63 = (v88 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "RF_IMAGE_STYLE_CONTACT_IMAGE_7";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v88 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "RF_IMAGE_STYLE_CONTACT_IMAGE_8";
  *(v66 + 1) = 30;
  v66[16] = 2;
  v7();
  v67 = (v88 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "RF_IMAGE_STYLE_CONTACT_IMAGE_9";
  *(v68 + 1) = 30;
  v68[16] = 2;
  v7();
  v69 = (v88 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "RF_IMAGE_STYLE_IMAGE_1_W";
  *(v70 + 1) = 24;
  v70[16] = 2;
  v7();
  v71 = (v88 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "RF_IMAGE_STYLE_IMAGE_2_W";
  *(v72 + 1) = 24;
  v72[16] = 2;
  v7();
  v73 = (v88 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "RF_IMAGE_STYLE_IMAGE_3_W";
  *(v74 + 1) = 24;
  v74[16] = 2;
  v7();
  v75 = (v88 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "RF_IMAGE_STYLE_IMAGE_4_W";
  *(v76 + 1) = 24;
  v76[16] = 2;
  v7();
  v77 = (v88 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "RF_IMAGE_STYLE_IMAGE_5_W";
  *(v78 + 1) = 24;
  v78[16] = 2;
  v7();
  v79 = (v88 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "RF_IMAGE_STYLE_IMAGE_6_W";
  *(v80 + 1) = 24;
  v80[16] = 2;
  v7();
  v81 = (v88 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "RF_IMAGE_STYLE_IMAGE_7_W";
  *(v82 + 1) = 24;
  v82[16] = 2;
  v7();
  v83 = (v88 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "RF_IMAGE_STYLE_IMAGE_8_W";
  *(v84 + 1) = 24;
  v84[16] = 2;
  v7();
  v85 = (v88 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "RF_IMAGE_STYLE_IMAGE_9_W";
  *(v86 + 1) = 24;
  v86[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B95648F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0D68);
  __swift_project_value_buffer(v0, qword_1EBAD0D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_IMAGE_SIZING_MODE_DEFAULT";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_IMAGE_SIZING_MODE_FIXED_WIDTH";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_IMAGE_SIZING_MODE_FIXED_HEIGHT";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9564B24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0D80);
  __swift_project_value_buffer(v0, qword_1EBAD0D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_RENDERING_MODE_DEFAULT";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_RENDERING_MODE_ORIGINAL";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_RENDERING_MODE_TEMPLATE";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9564D4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0D98);
  __swift_project_value_buffer(v0, qword_1EBAD0D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_IMAGE_CORNER_ROUNDING_DEFAULT";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_IMAGE_CORNER_ROUNDING_DISABLED";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_IMAGE_CORNER_ROUNDING_CIRCLE";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9564F78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4708);
  __swift_project_value_buffer(v0, qword_1EBAB4708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_SYMBOL_RENDERING_MODE_DEFAULT";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_SYMBOL_RENDERING_MODE_MONOCHROME";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_SYMBOL_RENDERING_MODE_MULTICOLOR";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_SYMBOL_RENDERING_MODE_PALETTE";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RF_SYMBOL_RENDERING_MODE_HIERARCHICAL";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95652A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFImageSource(0);
  sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource, protocol conformance descriptor for Searchfoundation_RFImageSource);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFImageElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_RFImageSource(0), OUTLINED_FUNCTION_93_11(), sub_1B8CD3770(v2, v3, protocol conformance descriptor for Searchfoundation_RFImageSource), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Searchfoundation_RFImageElement(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9565518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1040, type metadata accessor for Searchfoundation_RFImageElement, protocol conformance descriptor for Searchfoundation_RFImageElement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9565598(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2D28, type metadata accessor for Searchfoundation_RFImageElement, protocol conformance descriptor for Searchfoundation_RFImageElement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9565608(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1ED9D2D28, type metadata accessor for Searchfoundation_RFImageElement, protocol conformance descriptor for Searchfoundation_RFImageElement);

  return sub_1B964C5D0();
}

uint64_t sub_1B9565694()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5188);
  __swift_project_value_buffer(v0, qword_1EBAB5188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "url";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "symbol";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "app_icon";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "avatar";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "monogram";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "badged_image";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "default_browser_app_icon";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "do_not_show_loading_placeholder";
  *(v21 + 1) = 31;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B9565A00()
{
  type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  v2 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  result = __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder) = 0;
  qword_1ED9D2DC8 = v0;
  return result;
}

uint64_t sub_1B9565A6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  v5 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v7 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + v7);

  swift_beginAccess();
  *(v1 + v6) = v7;
  return v1;
}

uint64_t sub_1B9565C54()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B9565CC8()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value, &qword_1EBAB8DE0, &unk_1B964D5E0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B9565D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9565EF8(a1, a2, a3, a4);
        break;
      case 2:
        sub_1B956644C(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B95669BC(a1, a2, a3, a4);
        break;
      case 4:
        sub_1B9566F2C(a1, a2, a3, a4);
        break;
      case 5:
        sub_1B956749C(a1, a2, a3, a4);
        break;
      case 6:
        sub_1B9567A0C(a1, a2, a3, a4);
        break;
      case 7:
        sub_1B9567F7C(a1, a2, a3, a4);
        break;
      case 8:
        sub_1B8ED5EB0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9565EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1050, &qword_1B96DB7A0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  __swift_storeEnumTagSinglePayload(&v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v30 = a1;
  v28 = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9565C54();
    }

    else
    {
      sub_1B8D9207C(v21, &qword_1EBAD1050, &qword_1B96DB7A0);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage, protocol conformance descriptor for Searchfoundation_RFUrlImage);
  v24 = v33;
  sub_1B964C580();
  if (v24)
  {
    v25 = v21;
    return sub_1B8D9207C(v25, &qword_1EBAD1050, &qword_1B96DB7A0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAD1050, &qword_1B96DB7A0);
    v25 = v19;
    return sub_1B8D9207C(v25, &qword_1EBAD1050, &qword_1B96DB7A0);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v21, &qword_1EBAD1050, &qword_1B96DB7A0);
  v27 = v29;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B956644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1048, &unk_1B96DB790);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v28[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBAD1048, &unk_1B96DB790);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage, protocol conformance descriptor for Searchfoundation_RFSymbolImage);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAD1048, &unk_1B96DB790);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAD1048, &unk_1B96DB790);
  v27 = v29;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B95669BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFAppIconImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1058, &qword_1B96DB7A8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v28[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v21, &qword_1EBAD1058, &qword_1B96DB7A8);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage, protocol conformance descriptor for Searchfoundation_RFAppIconImage);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAD1058, &qword_1B96DB7A8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAD1058, &qword_1B96DB7A8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAD1058, &qword_1B96DB7A8);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAD1058, &qword_1B96DB7A8);
  v27 = v29;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9566F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFAvatarImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1060, &qword_1B96DB7B0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v28[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v21, &qword_1EBAD1060, &qword_1B96DB7B0);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage, protocol conformance descriptor for Searchfoundation_RFAvatarImage);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAD1060, &qword_1B96DB7B0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAD1060, &qword_1B96DB7B0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAD1060, &qword_1B96DB7B0);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAD1060, &qword_1B96DB7B0);
  v27 = v29;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B956749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFMonogramImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1068, &qword_1B96DB7B8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v28[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v21, &qword_1EBAD1068, &qword_1B96DB7B8);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage, protocol conformance descriptor for Searchfoundation_RFMonogramImage);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAD1068, &qword_1B96DB7B8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAD1068, &qword_1B96DB7B8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAD1068, &qword_1B96DB7B8);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAD1068, &qword_1B96DB7B8);
  v27 = v29;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9567A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1070, &qword_1B96DB7C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v28[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v21, &qword_1EBAD1070, &qword_1B96DB7C0);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage, protocol conformance descriptor for Searchfoundation_RFBadgedImage);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAD1070, &qword_1B96DB7C0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAD1070, &qword_1B96DB7C0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAD1070, &qword_1B96DB7C0);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAD1070, &qword_1B96DB7C0);
  v27 = v29;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9567F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1078, &qword_1B96DB7C8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v28[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v21, &qword_1EBAD1078, &qword_1B96DB7C8);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage, protocol conformance descriptor for Searchfoundation_RFDefaultBrowserAppIconImage);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAD1078, &qword_1B96DB7C8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAD1078, &qword_1B96DB7C8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAD1078, &qword_1B96DB7C8);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAD1078, &qword_1B96DB7C8);
  v27 = v29;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B956851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15[-v10];
  swift_beginAccess();
  sub_1B8D92024();
  v12 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    goto LABEL_11;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B95689A8(a1, a2, a3, a4);
      break;
    case 2u:
      sub_1B9568BDC(a1, a2, a3, a4);
      break;
    case 3u:
      sub_1B9568E10(a1, a2, a3, a4);
      break;
    case 4u:
      sub_1B9569044(a1, a2, a3, a4);
      break;
    case 5u:
      sub_1B9569278(a1, a2, a3, a4);
      break;
    case 6u:
      sub_1B95694AC(a1, a2, a3, a4);
      break;
    default:
      sub_1B9568778(a1, a2, a3, a4);
      break;
  }

  result = sub_1B9565C54();
  if (!v4)
  {
LABEL_11:
    v14 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
    result = swift_beginAccess();
    if (*(a1 + v14) == 1)
    {
      return sub_1B964C670();
    }
  }

  return result;
}

uint64_t sub_1B9568778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage, protocol conformance descriptor for Searchfoundation_RFUrlImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95689A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage, protocol conformance descriptor for Searchfoundation_RFSymbolImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9568BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFAppIconImage(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage, protocol conformance descriptor for Searchfoundation_RFAppIconImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9568E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFAvatarImage(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage, protocol conformance descriptor for Searchfoundation_RFAvatarImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9569044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFMonogramImage(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage, protocol conformance descriptor for Searchfoundation_RFMonogramImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9569278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage, protocol conformance descriptor for Searchfoundation_RFBadgedImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95694AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage, protocol conformance descriptor for Searchfoundation_RFDefaultBrowserAppIconImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B956970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = v7(0);
  if (*(v5 + *(v8 + 20)) != *(v4 + *(v8 + 20)))
  {

    v9 = OUTLINED_FUNCTION_177_1();
    v10 = a4(v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  sub_1B8CD3770(v11, v12, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B95697E4()
{
  OUTLINED_FUNCTION_284();
  v20 = v1;
  v3 = v2;
  v4 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v19 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DD8, &qword_1B964D5D8) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_116();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = OUTLINED_FUNCTION_183(v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value, &v24);
  sub_1B8D92024();
  v14 = v20;
  OUTLINED_FUNCTION_521(v20 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value, &v23);
  v15 = *(v7 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0, 1, v4);
  if (v16)
  {

    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
    OUTLINED_FUNCTION_178(v0 + v15, 1, v4);
    if (v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_12:
      OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder, &v22);

      OUTLINED_FUNCTION_521(v14 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder, &v21);

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0 + v15, 1, v4);
  if (v16)
  {

    sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8DD8, &qword_1B964D5D8);
    goto LABEL_10;
  }

  sub_1B956DD18();

  static Searchfoundation_RFImageSource.OneOf_Value.== infix(_:_:)();
  v18 = v17;
  sub_1B9565C54();
  sub_1B8D9207C(v13, &qword_1EBAB8DE0, &unk_1B964D5E0);
  sub_1B9565C54();
  sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:

LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9569C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1038, type metadata accessor for Searchfoundation_RFImageSource, protocol conformance descriptor for Searchfoundation_RFImageSource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9569C8C(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource, protocol conformance descriptor for Searchfoundation_RFImageSource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9569CFC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource, protocol conformance descriptor for Searchfoundation_RFImageSource);

  return sub_1B964C5D0();
}

uint64_t sub_1B9569E04()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t Searchfoundation_RFDefaultBrowserAppIconImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (OUTLINED_FUNCTION_161_5() || (sub_1B9570294(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
  {
    type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B956A004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1030, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage, protocol conformance descriptor for Searchfoundation_RFDefaultBrowserAppIconImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956A084(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage, protocol conformance descriptor for Searchfoundation_RFDefaultBrowserAppIconImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956A0F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage, protocol conformance descriptor for Searchfoundation_RFDefaultBrowserAppIconImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956A1C4()
{
  type metadata accessor for Searchfoundation_RFBadgedImage._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__image;
  v2 = type metadata accessor for Searchfoundation_RFImageSource(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  result = __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__badge, 1, 1, v2);
  qword_1EBAD0DE0 = v0;
  return result;
}

uint64_t sub_1B956A24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__image;
  v4 = type metadata accessor for Searchfoundation_RFImageSource(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__badge, 1, 1, v4);
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

uint64_t sub_1B956A3F0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__image, &qword_1EBAD0E58, &qword_1B96D9DF0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__badge, &qword_1EBAD0E58, &qword_1B96D9DF0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B956A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1B956A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_1B956A654();
    }
  }

  return result;
}

uint64_t sub_1B956A654()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_93_11();
  sub_1B8CD3770(v0, v1, protocol conformance descriptor for Searchfoundation_RFImageSource);
  OUTLINED_FUNCTION_153_7();
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956A72C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
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

uint64_t sub_1B956A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[11] = a4;
  v15[2] = a2;
  v15[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = type metadata accessor for Searchfoundation_RFImageSource(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15[1] = v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAD0E58, &qword_1B96D9DF0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource, protocol conformance descriptor for Searchfoundation_RFImageSource);
    sub_1B964C740();
    result = sub_1B9565C54();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    return sub_1B8D9207C(v8, &qword_1EBAD0E58, &qword_1B96D9DF0);
  }

  sub_1B956DD18();
  sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource, protocol conformance descriptor for Searchfoundation_RFImageSource);
  sub_1B964C740();
  return sub_1B9565C54();
}

BOOL sub_1B956AAF4(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for Searchfoundation_RFImageSource(0);
  v2 = MEMORY[0x1EEE9AC00](v51);
  v45 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1080, &unk_1B96DB7D0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v49 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v43[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43[-v18];
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v48 = v5;
  v20 = *(v5 + 48);
  v21 = v51;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v9, 1, v21) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v21) != 1)
    {
      v25 = v47;
      sub_1B956DD18();
      v26 = *(v21 + 20);
      v27 = *&v17[v26];
      v28 = *&v25[v26];

      if (v27 == v28 || (, , sub_1B95697E4(), v30 = v29, , , (v30 & 1) != 0))
      {
        sub_1B964C2B0();
        sub_1B8CD3770(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v44 = sub_1B964C850();
        sub_1B9565C54();
        sub_1B8D9207C(v19, &qword_1EBAD0E58, &qword_1B96D9DF0);
        sub_1B9565C54();
        sub_1B8D9207C(v9, &qword_1EBAD0E58, &qword_1B96D9DF0);
        if (v44)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      sub_1B9565C54();
      sub_1B8D9207C(v19, &qword_1EBAD0E58, &qword_1B96D9DF0);
      sub_1B9565C54();
      v24 = v9;
      v22 = &qword_1EBAD0E58;
      v23 = &qword_1B96D9DF0;
LABEL_7:
      sub_1B8D9207C(v24, v22, v23);
      goto LABEL_8;
    }

    sub_1B8D9207C(v19, &qword_1EBAD0E58, &qword_1B96D9DF0);
    sub_1B9565C54();
LABEL_6:
    v22 = &qword_1EBAD1080;
    v23 = &unk_1B96DB7D0;
    v24 = v9;
    goto LABEL_7;
  }

  sub_1B8D9207C(v19, &qword_1EBAD0E58, &qword_1B96D9DF0);
  if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v21) != 1)
  {
    goto LABEL_6;
  }

  sub_1B8D9207C(v9, &qword_1EBAD0E58, &qword_1B96D9DF0);
LABEL_12:
  swift_beginAccess();
  v31 = v50;
  sub_1B8D92024();
  swift_beginAccess();
  v32 = v49;
  v33 = *(v48 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v32, 1, v21) == 1)
  {

    sub_1B8D9207C(v31, &qword_1EBAD0E58, &qword_1B96D9DF0);
    if (__swift_getEnumTagSinglePayload(v32 + v33, 1, v21) == 1)
    {
      sub_1B8D9207C(v32, &qword_1EBAD0E58, &qword_1B96D9DF0);
      return 1;
    }

    goto LABEL_17;
  }

  v34 = v46;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v32 + v33, 1, v21) == 1)
  {

    sub_1B8D9207C(v31, &qword_1EBAD0E58, &qword_1B96D9DF0);
    sub_1B9565C54();
LABEL_17:
    v35 = &qword_1EBAD1080;
    v36 = &unk_1B96DB7D0;
    v37 = v32;
LABEL_18:
    sub_1B8D9207C(v37, v35, v36);
    return 0;
  }

  v39 = v45;
  sub_1B956DD18();
  if (*&v34[*(v21 + 20)] != *&v39[*(v21 + 20)])
  {

    sub_1B95697E4();
    v41 = v40;

    if ((v41 & 1) == 0)
    {

      sub_1B9565C54();
      sub_1B8D9207C(v50, &qword_1EBAD0E58, &qword_1B96D9DF0);
      sub_1B9565C54();
      v37 = v32;
      v35 = &qword_1EBAD0E58;
      v36 = &qword_1B96D9DF0;
      goto LABEL_18;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3770(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v42 = sub_1B964C850();

  sub_1B9565C54();
  sub_1B8D9207C(v50, &qword_1EBAD0E58, &qword_1B96D9DF0);
  sub_1B9565C54();
  sub_1B8D9207C(v32, &qword_1EBAD0E58, &qword_1B96D9DF0);
  return (v42 & 1) != 0;
}

uint64_t sub_1B956B404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1028, type metadata accessor for Searchfoundation_RFBadgedImage, protocol conformance descriptor for Searchfoundation_RFBadgedImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956B484(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage, protocol conformance descriptor for Searchfoundation_RFBadgedImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956B4F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage, protocol conformance descriptor for Searchfoundation_RFBadgedImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956B58C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0DE8);
  __swift_project_value_buffer(v0, qword_1EBAD0DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "letters";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_style";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B956B87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1020, type metadata accessor for Searchfoundation_RFMonogramImage, protocol conformance descriptor for Searchfoundation_RFMonogramImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956B8FC(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage, protocol conformance descriptor for Searchfoundation_RFMonogramImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956B96C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage, protocol conformance descriptor for Searchfoundation_RFMonogramImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956BA10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D060;
  v14 = (v13 + v12);
  v15 = v13 + v12 + v10[14];
  *v14 = 1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v11 + v10[14];
  *(v14 + v11) = 2;
  *v20 = "image_style";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v19();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFAvatarImage.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_9();
      sub_1B956BC50(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFAvatarImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6E0(), !v1))
  {
    if (OUTLINED_FUNCTION_161_5() || (sub_1B9570294(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      type metadata accessor for Searchfoundation_RFAvatarImage(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B956BE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1018, type metadata accessor for Searchfoundation_RFAvatarImage, protocol conformance descriptor for Searchfoundation_RFAvatarImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956BE9C(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage, protocol conformance descriptor for Searchfoundation_RFAvatarImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956BF0C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage, protocol conformance descriptor for Searchfoundation_RFAvatarImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956C00C()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B956C0B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v7 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
  {
    if (sub_1B8D580F8(*(v5 + 16), *(v5 + 24), 0, 1) || (sub_1B9570294(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B956C230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1010, type metadata accessor for Searchfoundation_RFAppIconImage, protocol conformance descriptor for Searchfoundation_RFAppIconImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956C2B0(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage, protocol conformance descriptor for Searchfoundation_RFAppIconImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956C320(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage, protocol conformance descriptor for Searchfoundation_RFAppIconImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956C3B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB53F0);
  __swift_project_value_buffer(v0, qword_1EBAB53F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "url";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "dark_mode_url";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "symbol_placeholder_image";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "image_style";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "aspect_ratio";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sizing_mode";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "image_rendering_mode";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "background_color";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "corner_rounding_mode";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "inset_padding";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFUrlImage.decodeMessage<A>(decoder:)()
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
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_432();
        sub_1B956C89C(v13, v14, v2, v1);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B956CD54(v15, v16, v17, v18);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_9();
        sub_1B956CDC8(v5, v6, v7, v8);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_9();
        sub_1B956CE7C(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_9();
        sub_1B956CEF0(v27, v28, v29, v30);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B956CF64(v19, v20, v21, v22);
        break;
      case 9:
        v31 = OUTLINED_FUNCTION_9();
        sub_1B956D018(v31, v32, v33, v34);
        break;
      case 10:
        v9 = OUTLINED_FUNCTION_9();
        sub_1B956D08C(v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B956C89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1048, &unk_1B96DB790);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  __swift_storeEnumTagSinglePayload(&v26 - v17, 1, 1, v5);
  v19 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 24);
  v29 = a1;
  v27 = v19;
  sub_1B8D92024();
  v28 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAD0E48, &qword_1B96D9DE0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B956DD18();
    sub_1B8D9207C(v18, &qword_1EBAD1048, &unk_1B96DB790);
    sub_1B956DD18();
    sub_1B956DD18();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage, protocol conformance descriptor for Searchfoundation_RFSymbolImage);
  v21 = v31;
  sub_1B964C580();
  if (v21)
  {
    v22 = v18;
    return sub_1B8D9207C(v22, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAD1048, &unk_1B96DB790);
    v22 = v16;
    return sub_1B8D9207C(v22, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBAD1048, &unk_1B96DB790);
  v24 = v29;
  v25 = v27;
  sub_1B8D9207C(v29 + v27, &qword_1EBAD0E48, &qword_1B96D9DE0);
  sub_1B956DD18();
  return __swift_storeEnumTagSinglePayload(v24 + v25, 0, 1, v28);
}

uint64_t sub_1B956CD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B9570294();
  return sub_1B964C420();
}

uint64_t sub_1B956CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFUrlImage(0);
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio, protocol conformance descriptor for Searchfoundation_RFAspectRatio);
  return sub_1B964C580();
}

uint64_t sub_1B956CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B95702E8();
  return sub_1B964C420();
}

uint64_t sub_1B956CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B957033C();
  return sub_1B964C420();
}

uint64_t sub_1B956CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFUrlImage(0);
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
  return sub_1B964C580();
}

uint64_t sub_1B956D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B9570390();
  return sub_1B964C420();
}

uint64_t Searchfoundation_RFUrlImage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v10;
  v11 = OUTLINED_FUNCTION_201();
  v46 = type metadata accessor for Searchfoundation_RFColor(v11);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v44 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E38, &qword_1B96D9DD0);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_22_3();
  v50 = type metadata accessor for Searchfoundation_RFAspectRatio(v16);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v45 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  type metadata accessor for Searchfoundation_RFSymbolImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_1();
  if (!v24 || (result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v26 || (result = sub_1B964C700(), !v4))
    {
      v43 = type metadata accessor for Searchfoundation_RFUrlImage(0);
      sub_1B8D92024();
      v27 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
      if (__swift_getEnumTagSinglePayload(v22, 1, v27) == 1)
      {
        sub_1B8D9207C(v22, &qword_1EBAD0E48, &qword_1B96D9DE0);
      }

      else
      {
        OUTLINED_FUNCTION_3_82();
        sub_1B956DD18();
        sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage, protocol conformance descriptor for Searchfoundation_RFSymbolImage);
        sub_1B964C740();
        OUTLINED_FUNCTION_37_16();
        result = sub_1B9565C54();
        if (v4)
        {
          return result;
        }
      }

      v28 = v43;
      v29 = v3 + *(v43 + 28);
      v30 = sub_1B8D580F8(*v29, *(v29 + 8), 0, 1);
      v31 = v50;
      if (v30 || (v32 = *(v29 + 8), v48 = *v29, v49 = v32, sub_1B9570294(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v6 = v4) == 0))
      {
        sub_1B8D92024();
        v33 = OUTLINED_FUNCTION_493();
        if (__swift_getEnumTagSinglePayload(v33, v34, v31) == 1)
        {
          sub_1B8D9207C(v5, &qword_1EBAD0E38, &qword_1B96D9DD0);
          v35 = v47;
        }

        else
        {
          OUTLINED_FUNCTION_5_52();
          sub_1B956DD18();
          sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio, protocol conformance descriptor for Searchfoundation_RFAspectRatio);
          OUTLINED_FUNCTION_57_16();
          sub_1B964C740();
          v6 = v4;
          OUTLINED_FUNCTION_32_25();
          result = sub_1B9565C54();
          v35 = v47;
          if (v4)
          {
            return result;
          }
        }

        v36 = (v7 + v28[8]);
        if (!*v36 || (OUTLINED_FUNCTION_135_9(v36), sub_1B95702E8(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v6 = v4) == 0))
        {
          v37 = (v7 + v28[9]);
          if (!*v37 || (OUTLINED_FUNCTION_135_9(v37), sub_1B957033C(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v6 = v4) == 0))
          {
            sub_1B8D92024();
            v38 = OUTLINED_FUNCTION_25_23();
            if (__swift_getEnumTagSinglePayload(v38, v39, v40) == 1)
            {
              sub_1B8D9207C(v35, &qword_1EBAB8DB8, &unk_1B96D9DC0);
            }

            else
            {
              OUTLINED_FUNCTION_2_76();
              sub_1B956DD18();
              sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
              OUTLINED_FUNCTION_57_16();
              sub_1B964C740();
              v6 = v4;
              OUTLINED_FUNCTION_30_32();
              result = sub_1B9565C54();
              if (v4)
              {
                return result;
              }
            }

            v41 = (v7 + v28[10]);
            if (!*v41 || (OUTLINED_FUNCTION_135_9(v41), sub_1B9570390(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v6 = v4) == 0))
            {
              if (*(v7 + v28[11]) == 0.0)
              {
                return sub_1B964C290();
              }

              result = sub_1B964C6B0();
              if (!v6)
              {
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B956D7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1008, type metadata accessor for Searchfoundation_RFUrlImage, protocol conformance descriptor for Searchfoundation_RFUrlImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956D82C(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage, protocol conformance descriptor for Searchfoundation_RFUrlImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956D89C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage, protocol conformance descriptor for Searchfoundation_RFUrlImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956D928()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5168);
  __swift_project_value_buffer(v0, qword_1EBAB5168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primary_color";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "secondary_color";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image_style";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "symbol_rendering_mode";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "background_color";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "punches_through_background";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "vibrancy";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "corner_rounding_mode";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B956DCD8()
{
  type metadata accessor for Searchfoundation_RFSymbolImage._StorageClass(0);
  swift_allocObject();
  result = sub_1B956DE68();
  qword_1ED9D2DA8 = result;
  return result;
}

uint64_t sub_1B956DD18()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B956DD70()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B956DE68()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__primaryColor;
  v2 = type metadata accessor for Searchfoundation_RFColor(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__secondaryColor, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
  *v4 = 0;
  *(v4 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__backgroundColor, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground) = 0;
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
  *v6 = 0;
  *(v6 + 8) = 1;
  return v0;
}

uint64_t sub_1B956DF58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__primaryColor;
  v5 = type metadata accessor for Searchfoundation_RFColor(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__secondaryColor, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
  *v7 = 0;
  *(v7 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__backgroundColor, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground) = 0;
  v8 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
  v23 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
  v24 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
  *v9 = 0;
  *(v9 + 8) = 1;
  swift_beginAccess();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v10;
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
  v12 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle);
  swift_beginAccess();
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  swift_beginAccess();
  *v6 = v13;
  *(v6 + 8) = v12;
  v14 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode);
  swift_beginAccess();
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  swift_beginAccess();
  *v7 = v15;
  *(v7 + 8) = v14;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + v16);
  swift_beginAccess();
  *(v1 + v22) = v16;
  v17 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  swift_beginAccess();
  *v23 = v18;
  *(v23 + 8) = v17;
  v19 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode);
  swift_beginAccess();
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);

  swift_beginAccess();
  *v24 = v20;
  *(v24 + 8) = v19;
  return v1;
}

uint64_t sub_1B956E3B0()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__primaryColor, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__secondaryColor, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__backgroundColor, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  return v0;
}

uint64_t sub_1B956E438()
{
  v0 = sub_1B956E3B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B956E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B956E6FC(a2, a1, a3, a4);
        continue;
      case 3:
        sub_1B956E7D8(a2, a1, a3, a4);
        continue;
      case 4:
        v11 = sub_1B9570294;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle;
        v17 = &type metadata for Searchfoundation_RFImageStyle;
        goto LABEL_13;
      case 5:
        v11 = sub_1B9572110;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
        v17 = &type metadata for Searchfoundation_RFSymbolRenderingMode;
        goto LABEL_13;
      case 6:
        sub_1B956E8B4(a2, a1, a3, a4);
        continue;
      case 7:
        sub_1B8ED5EB0();
        continue;
      case 8:
        v11 = sub_1B9548DB0;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
        v17 = &type metadata for Searchfoundation_RFVibrancy;
        goto LABEL_13;
      case 9:
        v11 = sub_1B9570390;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
        v17 = &type metadata for Searchfoundation_RFImageCornerRoundingMode;
LABEL_13:
        sub_1B956E990(v12, v13, v14, v15, v16, v11, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B956E6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956E7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956E990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B956EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - v12;
  v43 = type metadata accessor for Searchfoundation_RFColor(0);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v32[1] = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v34 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16);
  swift_beginAccess();
  v18 = *(a1 + 24);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v13, 1, v43) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
    sub_1B964C740();
    result = sub_1B9565C54();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  v21 = v43;
  if (__swift_getEnumTagSinglePayload(v11, 1, v43) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
    sub_1B964C740();
    result = sub_1B9565C54();
    if (v4)
    {
      return result;
    }
  }

  v22 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle[0];
  swift_beginAccess();
  if (sub_1B8D580F8(*v22, *(v22 + 8), 0, 1) || (v23 = *(v22 + 8), v41 = *v22, v42 = v23, sub_1B9570294(), result = sub_1B964C680(), !v4))
  {
    v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode);
    swift_beginAccess();
    if (!*v24 || (v25 = *(v24 + 8), v39 = *v24, v40 = v25, sub_1B9572110(), result = sub_1B964C680(), !v4))
    {
      swift_beginAccess();
      v26 = v33;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v26, 1, v21) == 1)
      {
        sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      }

      else
      {
        sub_1B956DD18();
        sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
        sub_1B964C740();
        result = sub_1B9565C54();
        if (v4)
        {
          return result;
        }
      }

      v27 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
      swift_beginAccess();
      if (*(a1 + v27) != 1 || (result = sub_1B964C670(), !v4))
      {
        v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy);
        swift_beginAccess();
        if (!*v28 || (v29 = *(v28 + 8), v37 = *v28, v38 = v29, sub_1B9548DB0(), result = sub_1B964C680(), !v4))
        {
          v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode);
          result = swift_beginAccess();
          if (*v30)
          {
            v31 = *(v30 + 8);
            v35 = *v30;
            v36 = v31;
            sub_1B9570390();
            return sub_1B964C680();
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B956F188(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for Searchfoundation_RFColor(0);
  MEMORY[0x1EEE9AC00](v70);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC0, &unk_1B964D5C0);
  v6 = MEMORY[0x1EEE9AC00](v69);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v68 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = &v62 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v65 = &v62 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v62 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v62 - v25;
  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  swift_beginAccess();
  v29 = v27 == *(a2 + 16) && v28 == *(a2 + 24);
  if (v29 || (v30 = sub_1B964C9F0(), v31 = 0, (v30 & 1) != 0))
  {
    v64 = v5;
    v62 = v8;
    swift_beginAccess();
    sub_1B8D92024();
    swift_beginAccess();
    v32 = *(v69 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v33 = v70;
    if (__swift_getEnumTagSinglePayload(v12, 1, v70) == 1)
    {

      sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      if (__swift_getEnumTagSinglePayload(&v12[v32], 1, v33) != 1)
      {
        goto LABEL_17;
      }

      sub_1B8D9207C(v12, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      v34 = v64;
    }

    else
    {
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(&v12[v32], 1, v33) == 1)
      {

        goto LABEL_16;
      }

      v34 = v64;
      sub_1B956DD18();

      v35 = static Searchfoundation_RFColor.== infix(_:_:)(v24, v34);
      sub_1B9565C54();
      sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      sub_1B9565C54();
      sub_1B8D9207C(v12, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    swift_beginAccess();
    v26 = v67;
    sub_1B8D92024();
    swift_beginAccess();
    v12 = v68;
    v36 = *(v69 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v37 = v70;
    if (__swift_getEnumTagSinglePayload(v12, 1, v70) == 1)
    {
      sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v12[v36], 1, v37);
      v26 = v66;
      if (EnumTagSinglePayload == 1)
      {
        sub_1B8D9207C(v12, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        goto LABEL_21;
      }

LABEL_17:
      sub_1B8D9207C(v12, &qword_1EBAB8DC0, &unk_1B964D5C0);
      goto LABEL_18;
    }

    v39 = v65;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(&v12[v36], 1, v37) != 1)
    {
      sub_1B956DD18();
      LODWORD(v64) = static Searchfoundation_RFColor.== infix(_:_:)(v39, v34);
      sub_1B9565C54();
      sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      sub_1B9565C54();
      sub_1B8D9207C(v12, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      v26 = v66;
      if ((v64 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_21:
      v41 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle[0];
      swift_beginAccess();
      v42 = *v41;
      LOBYTE(v41) = *(v41 + 8);
      v43 = a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle[0];
      swift_beginAccess();
      if (!sub_1B8D580F8(v42, v41, *v43, *(v43 + 8)))
      {
        goto LABEL_18;
      }

      v44 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
      swift_beginAccess();
      v45 = *v44;
      v46 = *(v44 + 8);
      v47 = (a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode);
      swift_beginAccess();
      if (!sub_1B8D92198(v45, v46, *v47))
      {
        goto LABEL_18;
      }

      swift_beginAccess();
      sub_1B8D92024();
      swift_beginAccess();
      v48 = *(v69 + 48);
      v12 = v62;
      sub_1B8D92024();
      sub_1B8D92024();
      v49 = v70;
      if (__swift_getEnumTagSinglePayload(v12, 1, v70) == 1)
      {
        sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        if (__swift_getEnumTagSinglePayload(&v12[v48], 1, v49) == 1)
        {
          sub_1B8D9207C(v12, &qword_1EBAB8DB8, &unk_1B96D9DC0);
LABEL_28:
          v51 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
          swift_beginAccess();
          LODWORD(v51) = *(a1 + v51);
          v52 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
          swift_beginAccess();
          if (v51 == *(a2 + v52))
          {
            v53 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
            swift_beginAccess();
            v54 = *v53;
            v55 = *(v53 + 8);
            v56 = (a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy);
            swift_beginAccess();
            if (sub_1B8D92198(v54, v55, *v56))
            {
              v57 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
              swift_beginAccess();
              v58 = *v57;
              v59 = *(v57 + 8);

              v60 = (a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode);
              swift_beginAccess();
              v61 = *v60;

              return sub_1B8D92198(v58, v59, v61);
            }
          }

          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v50 = v63;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(&v12[v48], 1, v49) != 1)
      {
        sub_1B956DD18();
        LODWORD(v70) = static Searchfoundation_RFColor.== infix(_:_:)(v50, v34);
        sub_1B9565C54();
        sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        sub_1B9565C54();
        sub_1B8D9207C(v12, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        if (v70)
        {
          goto LABEL_28;
        }

LABEL_18:

        return 0;
      }
    }

LABEL_16:
    sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    sub_1B9565C54();
    goto LABEL_17;
  }

  return v31;
}

uint64_t sub_1B956FC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1000, type metadata accessor for Searchfoundation_RFSymbolImage, protocol conformance descriptor for Searchfoundation_RFSymbolImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956FCF0(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage, protocol conformance descriptor for Searchfoundation_RFSymbolImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956FD60(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage, protocol conformance descriptor for Searchfoundation_RFSymbolImage);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_RFAspectRatio.decodeMessage<A>(decoder:)()
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
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFAspectRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      type metadata accessor for Searchfoundation_RFAspectRatio(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFAspectRatio.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  v6 = sub_1B8CD3770(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9570004(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD3770(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95700E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD0FF8, type metadata accessor for Searchfoundation_RFAspectRatio, protocol conformance descriptor for Searchfoundation_RFAspectRatio);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9570164(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio, protocol conformance descriptor for Searchfoundation_RFAspectRatio);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95701D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio, protocol conformance descriptor for Searchfoundation_RFAspectRatio);

  return sub_1B964C5D0();
}

unint64_t sub_1B9570294()
{
  result = qword_1ED9CC3C8;
  if (!qword_1ED9CC3C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageStyle, &type metadata for Searchfoundation_RFImageStyle, v0, v1);
    atomic_store(result, &qword_1ED9CC3C8);
  }

  return result;
}

unint64_t sub_1B95702E8()
{
  result = qword_1EBAD0EB0;
  if (!qword_1EBAD0EB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageSizingMode, &type metadata for Searchfoundation_RFImageSizingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0EB0);
  }

  return result;
}

unint64_t sub_1B957033C()
{
  result = qword_1EBAB4908;
  if (!qword_1EBAB4908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageRenderingMode, &type metadata for Searchfoundation_RFImageRenderingMode, v0, v1);
    atomic_store(result, &qword_1EBAB4908);
  }

  return result;
}

unint64_t sub_1B9570390()
{
  result = qword_1EBAD0EB8;
  if (!qword_1EBAD0EB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageCornerRoundingMode, &type metadata for Searchfoundation_RFImageCornerRoundingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0EB8);
  }

  return result;
}

unint64_t sub_1B95703E8()
{
  result = qword_1ED9CC3C0;
  if (!qword_1ED9CC3C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageStyle, &type metadata for Searchfoundation_RFImageStyle, v0, v1);
    atomic_store(result, &qword_1ED9CC3C0);
  }

  return result;
}

unint64_t sub_1B9570440()
{
  result = qword_1ED9CC3B0;
  if (!qword_1ED9CC3B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageStyle, &type metadata for Searchfoundation_RFImageStyle, v0, v1);
    atomic_store(result, &qword_1ED9CC3B0);
  }

  return result;
}

unint64_t sub_1B9570498()
{
  result = qword_1ED9CC3B8;
  if (!qword_1ED9CC3B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageStyle, &type metadata for Searchfoundation_RFImageStyle, v0, v1);
    atomic_store(result, &qword_1ED9CC3B8);
  }

  return result;
}

unint64_t sub_1B9570520()
{
  result = qword_1EBAD0EE8;
  if (!qword_1EBAD0EE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageSizingMode, &type metadata for Searchfoundation_RFImageSizingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0EE8);
  }

  return result;
}

unint64_t sub_1B9570578()
{
  result = qword_1EBAD0EF0;
  if (!qword_1EBAD0EF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageSizingMode, &type metadata for Searchfoundation_RFImageSizingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0EF0);
  }

  return result;
}

unint64_t sub_1B95705D0()
{
  result = qword_1EBAD0EF8;
  if (!qword_1EBAD0EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageSizingMode, &type metadata for Searchfoundation_RFImageSizingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0EF8);
  }

  return result;
}

unint64_t sub_1B9570658()
{
  result = qword_1EBAB4900;
  if (!qword_1EBAB4900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageRenderingMode, &type metadata for Searchfoundation_RFImageRenderingMode, v0, v1);
    atomic_store(result, &qword_1EBAB4900);
  }

  return result;
}

unint64_t sub_1B95706B0()
{
  result = qword_1EBAB48F0;
  if (!qword_1EBAB48F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageRenderingMode, &type metadata for Searchfoundation_RFImageRenderingMode, v0, v1);
    atomic_store(result, &qword_1EBAB48F0);
  }

  return result;
}

unint64_t sub_1B9570708()
{
  result = qword_1EBAB48F8;
  if (!qword_1EBAB48F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageRenderingMode, &type metadata for Searchfoundation_RFImageRenderingMode, v0, v1);
    atomic_store(result, &qword_1EBAB48F8);
  }

  return result;
}

unint64_t sub_1B9570790()
{
  result = qword_1EBAD0F20;
  if (!qword_1EBAD0F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageCornerRoundingMode, &type metadata for Searchfoundation_RFImageCornerRoundingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0F20);
  }

  return result;
}

unint64_t sub_1B95707E8()
{
  result = qword_1EBAD0F28;
  if (!qword_1EBAD0F28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageCornerRoundingMode, &type metadata for Searchfoundation_RFImageCornerRoundingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0F28);
  }

  return result;
}

unint64_t sub_1B9570840()
{
  result = qword_1EBAD0F30;
  if (!qword_1EBAD0F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFImageCornerRoundingMode, &type metadata for Searchfoundation_RFImageCornerRoundingMode, v0, v1);
    atomic_store(result, &qword_1EBAD0F30);
  }

  return result;
}

unint64_t sub_1B95708C8()
{
  result = qword_1ED9CA428;
  if (!qword_1ED9CA428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFSymbolRenderingMode, &type metadata for Searchfoundation_RFSymbolRenderingMode, v0, v1);
    atomic_store(result, &qword_1ED9CA428);
  }

  return result;
}

unint64_t sub_1B9570920()
{
  result = qword_1ED9CA418;
  if (!qword_1ED9CA418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFSymbolRenderingMode, &type metadata for Searchfoundation_RFSymbolRenderingMode, v0, v1);
    atomic_store(result, &qword_1ED9CA418);
  }

  return result;
}

unint64_t sub_1B9570978()
{
  result = qword_1ED9CA420;
  if (!qword_1ED9CA420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFSymbolRenderingMode, &type metadata for Searchfoundation_RFSymbolRenderingMode, v0, v1);
    atomic_store(result, &qword_1ED9CA420);
  }

  return result;
}

void sub_1B95715B4(uint64_t a1)
{
  sub_1B9571B18(319, &qword_1ED9D3A00, type metadata accessor for Searchfoundation_RFImageSource, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95716A8(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RFUrlImage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_RFSymbolImage(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_RFAppIconImage(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_RFAvatarImage(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_RFMonogramImage(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Searchfoundation_RFBadgedImage(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(319);
              if (v8 <= 0x3F)
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

  return result;
}

uint64_t sub_1B95717A8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B95718B4(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9571990(uint64_t a1)
{
  sub_1B9571B18(319, &qword_1ED9F22F0, type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9571B18(319, &qword_1ED9F1EF0, type metadata accessor for Searchfoundation_RFAspectRatio, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9571B18(319, &qword_1ED9F2C70, type metadata accessor for Searchfoundation_RFColor, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9571B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9571B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFSymbolImage(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_115Tm_14_0);
}

uint64_t sub_1B9571BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_RFSymbolImage(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_90Tm_0);
}

uint64_t sub_1B9571C3C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFSymbolImage(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void __swift_store_extra_inhabitant_index_90Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_1B9571DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
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

void sub_1B9571E90(uint64_t a1)
{
  sub_1B9571B18(319, &qword_1ED9F1EB8, type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B9571F60(uint64_t a1)
{
  sub_1B9571B18(319, &qword_1ED9CC028, type metadata accessor for Searchfoundation_RFImageSource, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B9572028(uint64_t a1)
{
  sub_1B9571B18(319, &qword_1ED9F2C70, type metadata accessor for Searchfoundation_RFColor, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B9572110()
{
  result = qword_1ED9CA430;
  if (!qword_1ED9CA430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFSymbolRenderingMode, &type metadata for Searchfoundation_RFSymbolRenderingMode, v0, v1);
    atomic_store(result, &qword_1ED9CA430);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_17(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_43_20(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_50_16()
{
  type metadata accessor for Searchfoundation_RFSymbolImage._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_12()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_59_16(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_97_7()
{

  return sub_1B956DD18();
}

uint64_t OUTLINED_FUNCTION_103_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_105_10(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void OUTLINED_FUNCTION_109_5(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v1;
  *(v4 + 8) = v3;
}

void OUTLINED_FUNCTION_110_9(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_129_7(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_130_7()
{

  return type metadata accessor for Searchfoundation_RFUrlImage(0);
}

void OUTLINED_FUNCTION_135_9(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v2 - 96) = v1;
  *(v2 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_145_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_160_5()
{

  return sub_1B8D92024();
}

BOOL OUTLINED_FUNCTION_161_5()
{

  return sub_1B8D580F8(v0, v1, 0, 1);
}

uint64_t OUTLINED_FUNCTION_162_4()
{

  return sub_1B956DD18();
}

uint64_t OUTLINED_FUNCTION_164_3()
{

  return type metadata accessor for Searchfoundation_RFOptionalFloat(0);
}

uint64_t OUTLINED_FUNCTION_165_7()
{
  *(v0 + 8) = 1;
  type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Searchfoundation_RFLevelOfDetail.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B957280C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFLevelOfDetail.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9572840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9463500();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFLevelOfDetail.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD1088 = a1;
}

uint64_t sub_1B9572988@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFLevelOfDetail.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95729B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1090);
  __swift_project_value_buffer(v0, qword_1EBAD1090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_LEVEL_OF_DETAIL_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_LEVEL_OF_DETAIL_DECREASED";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_LEVEL_OF_DETAIL_STANDARD";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_LEVEL_OF_DETAIL_INCREASED";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFLevelOfDetail._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8830 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD1090);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9572C98()
{
  result = qword_1EBAD10A8;
  if (!qword_1EBAD10A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFLevelOfDetail, &type metadata for Searchfoundation_RFLevelOfDetail, v0, v1);
    atomic_store(result, &qword_1EBAD10A8);
  }

  return result;
}

unint64_t sub_1B9572CF0()
{
  result = qword_1EBAD10B0;
  if (!qword_1EBAD10B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFLevelOfDetail, &type metadata for Searchfoundation_RFLevelOfDetail, v0, v1);
    atomic_store(result, &qword_1EBAD10B0);
  }

  return result;
}

unint64_t sub_1B9572D48()
{
  result = qword_1EBAD10B8;
  if (!qword_1EBAD10B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFLevelOfDetail, &type metadata for Searchfoundation_RFLevelOfDetail, v0, v1);
    atomic_store(result, &qword_1EBAD10B8);
  }

  return result;
}

unint64_t sub_1B9572DA0()
{
  result = qword_1EBAD10C0;
  if (!qword_1EBAD10C0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD10C8, &qword_1B96DBA18);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD10C0);
  }

  return result;
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.init()@<X0>(_WORD *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Searchfoundation_RFTextProperty(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(uint64_t a1)
{
  result = qword_1ED9EFE58;
  if (!qword_1ED9EFE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Searchfoundation_RFLongItemStandardCardSection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = *(OUTLINED_FUNCTION_2_77() + 28);
  v16 = *(v13 + 56);
  sub_1B95740FC(&a1[v15], v2);
  sub_1B95740FC(&a2[v15], v2 + v16);
  v17 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v17, v18, v5);
  if (v22)
  {
    OUTLINED_FUNCTION_178(v2 + v16, 1, v5);
    if (v22)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_12:
    v23 = &qword_1EBAB8E00;
    v24 = &qword_1B964D600;
LABEL_16:
    sub_1B8D9207C(v2, v23, v24);
LABEL_17:
    v21 = 0;
    return v21 & 1;
  }

  sub_1B95740FC(v2, v12);
  OUTLINED_FUNCTION_178(v2 + v16, 1, v5);
  if (v22)
  {
    sub_1B957416C(v12);
    goto LABEL_12;
  }

  sub_1B95741C8(v2 + v16, v8);
  sub_1B8D5BA08(*v12, *v8);
  if ((v25 & 1) == 0 || v12[8] != v8[8])
  {
    sub_1B957416C(v8);
    sub_1B957416C(v12);
    v23 = &qword_1EBAB8DF8;
    v24 = &qword_1B96B9A80;
    goto LABEL_16;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_92();
  sub_1B8CD37B8(v27, v28, MEMORY[0x1E69AAC10]);
  v29 = sub_1B964C850();
  sub_1B957416C(v8);
  sub_1B957416C(v12);
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_17;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_92();
  sub_1B8CD37B8(v19, v20, MEMORY[0x1E69AAC10]);
  v21 = sub_1B964C850();
  return v21 & 1;
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.text1.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_2_77();
  sub_1B95740FC(v1 + *(v6 + 28), v2);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (!v10)
  {
    return sub_1B95741C8(v2, a1);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v11, v12, v7);
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  return result;
}

uint64_t sub_1B95732A8(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B957422C(a1, v4);
  return Searchfoundation_RFLongItemStandardCardSection.text1.setter(v4);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.text1.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95741C8(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_RFTextProperty(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_RFLongItemStandardCardSection.text1.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0) + 28);
  *(v3 + 10) = v11;
  sub_1B95740FC(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v10[8] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    sub_1B95741C8(v6, v10);
  }

  return sub_1B957350C;
}

void sub_1B957350C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B957422C((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95741C8(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B957416C(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95741C8(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.hasText1.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_2_77();
  sub_1B95740FC(v0 + *(v4 + 28), v1);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
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

  sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_RFLongItemStandardCardSection.clearText1()()
{
  v1 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0) + 28);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B95738A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD10D0);
  __swift_project_value_buffer(v0, qword_1EBAD10D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_quote";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "has_background_platter";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFLongItemStandardCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8838 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD10D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1B964C400();
    }

    else if (result == 1)
    {
      sub_1B9573BF0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B9573BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD37B8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  sub_1B95740FC(&v4[*(v13 + 28)], v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95741C8(v8, v12);
    sub_1B8CD37B8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B957416C(v12);
    if (v3)
    {
      return result;
    }
  }

  if (*v4 != 1 || (result = OUTLINED_FUNCTION_0_31(1, 2), !v3))
  {
    if (v4[1] != 1)
    {
      return sub_1B964C290();
    }

    result = OUTLINED_FUNCTION_0_31(1, 3);
    if (!v3)
    {
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  sub_1B8CD37B8(&qword_1EBAD10E8, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9573F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD37B8(&qword_1EBAD10F8, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957400C(uint64_t a1)
{
  v2 = sub_1B8CD37B8(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957407C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD37B8(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95740FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B957416C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B95741C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B957422C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B95743D8(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B957446C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B957446C(uint64_t a1)
{
  if (!qword_1ED9F1E00)
  {
    type metadata accessor for Searchfoundation_RFTextProperty(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9F1E00);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_77()
{

  return type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
}

uint64_t Searchfoundation_RFMapCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  type metadata accessor for Searchfoundation_RFMapCardSection(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Searchfoundation_RFMapSizeFormat.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Searchfoundation_RFMapSizeFormat.rawValue.getter()
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

uint64_t sub_1B95745C8@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFMapSizeFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95745FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B957ED58();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFMapSizeFormat.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD1100 = a1;
}

uint64_t (*static Searchfoundation_RFMapSizeFormat.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9574740@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFMapSizeFormat.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_RFMapPoint.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapPoint(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapPoint.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFMapPoint(v1);
  *v0 = 0;
  v0[1] = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Searchfoundation_RFMapMarkerText.coordinate.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_LatLng(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFMapMarkerText(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFMapMarkerText.monogram.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFMapMarkerText(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 28));
  OUTLINED_FUNCTION_166_1(v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t sub_1B9574D18()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B9574D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9574F78();
  return a7(v7);
}

uint64_t Searchfoundation_RFMapMarkerText.monogram.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapMarkerText(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_83();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapMarkerText.monogram.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFTextProperty(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFMapMarkerText(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9574F78()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B9574FD0()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFMapMarkerText.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapMarkerText(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapMarkerText.init()()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v1 = type metadata accessor for Searchfoundation_RFMapMarkerText(v0);
  OUTLINED_FUNCTION_200_3(v1);
  v2 = OUTLINED_FUNCTION_104_5();
  type metadata accessor for Searchfoundation_LatLng(v2);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_RFTextProperty(v7);
  v8 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Searchfoundation_RFMapMarkerImage.coordinate.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFMapMarkerImage(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 28));
  OUTLINED_FUNCTION_166_1(v5, v6);
  type metadata accessor for Searchfoundation_LatLng(0);
  v7 = OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_113_12(v7);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapMarkerImage.coordinate.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapMarkerImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_2_78();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_LatLng(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapMarkerImage.coordinate.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_LatLng(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFMapMarkerImage(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9575408()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_60();
  v1(v6);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v7 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return v11;
}

uint64_t sub_1B95754F4()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Searchfoundation_RFMapMarkerImage.systemImage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B9575624()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B95756AC()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_RFMapMarkerImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapMarkerImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapMarkerImage.init()()
{
  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_LatLng(v0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B95757EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Searchfoundation_RFMapMarker.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_94_14();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DC8, &unk_1B96DBC80);
LABEL_6:
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B9574FD0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_30_33();
  OUTLINED_FUNCTION_288();
  return sub_1B9574D18();
}

void Searchfoundation_RFMapMarker.identifier.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v1[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v1[3] = v10;
  OUTLINED_FUNCTION_56_13();
  v1[4] = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_30_33();
      OUTLINED_FUNCTION_128();
      sub_1B9574D18();
      goto LABEL_7;
    }

    sub_1B9574FD0();
  }

  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  *(v10 + 32) = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFMapMarker.text.getter()
{
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = OUTLINED_FUNCTION_94_14();
  OUTLINED_FUNCTION_57(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_29_35();
      OUTLINED_FUNCTION_288();
      return sub_1B9574D18();
    }

    sub_1B9574FD0();
  }

  v9 = OUTLINED_FUNCTION_61_3();
  v10 = type metadata accessor for Searchfoundation_RFMapMarkerText(v9);
  OUTLINED_FUNCTION_200_3(v10);
  v11 = OUTLINED_FUNCTION_104_5();
  type metadata accessor for Searchfoundation_LatLng(v11);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_RFTextProperty(v16);
  v17 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void Searchfoundation_RFMapMarker.text.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Searchfoundation_RFMapMarkerText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v1[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v1[3] = v10;
  OUTLINED_FUNCTION_56_13();
  v1[4] = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
LABEL_7:
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9574FD0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_35();
  OUTLINED_FUNCTION_128();
  sub_1B9574D18();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFMapMarker.image.getter()
{
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = OUTLINED_FUNCTION_94_14();
  OUTLINED_FUNCTION_57(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_27_19();
      OUTLINED_FUNCTION_288();
      return sub_1B9574D18();
    }

    sub_1B9574FD0();
  }

  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_LatLng(v9);
  v10 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B9575F60(uint64_t a1, uint64_t a2)
{
  sub_1B8D9207C(v2, &qword_1EBAB8DC8, &unk_1B96DBC80);
  OUTLINED_FUNCTION_128();
  sub_1B9574D18();
  OUTLINED_FUNCTION_94_14();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v2, 0, 1, a2);
}

void Searchfoundation_RFMapMarker.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Searchfoundation_RFMapMarkerImage(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v1[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v1[3] = v10;
  OUTLINED_FUNCTION_56_13();
  v1[4] = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
LABEL_7:
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B9574FD0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_128();
  sub_1B9574D18();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9576198()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[1];
  v3 = (*v0)[2];
  v4 = **v0;
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9574F78();
    sub_1B8D9207C(v4, &qword_1EBAB8DC8, &unk_1B96DBC80);
    sub_1B9574D18();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_132_9();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
    sub_1B9574D18();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_132_9();
  }

  free(v1);
  free(v3);
  free(v2);
  OUTLINED_FUNCTION_283();

  free(v6);
}

uint64_t Searchfoundation_RFMapMarker.tint.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Searchfoundation_RFMapMarker(0);
  OUTLINED_FUNCTION_166_1(v0 + *(v5 + 24), v4);
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v4);
  if (v6)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    v7 = OUTLINED_FUNCTION_493();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_57(v4);
    if (!v6)
    {
      return sub_1B8D9207C(v4, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_63();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapMarker.tint.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapMarker(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_4_63();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFColor(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapMarker.tint.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 8) = v5;
  v6 = type metadata accessor for Searchfoundation_RFColor(0);
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_202_0(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  *(v0 + 40) = *(type metadata accessor for Searchfoundation_RFMapMarker(v11) + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v5, 1, v6);
  if (v12)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_178(v5, 1, v6);
    if (!v12)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_63();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B95765CC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_25_24();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B95766DC()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_60();
  v1(v6);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v7 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return v11;
}

uint64_t sub_1B95767C8()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B957685C()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B95768E4()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_RFMapMarker.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapMarker(v0);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFMapMarker.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v26[2] = v1;
  v26[3] = v2;
  v3 = type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  v4 = OUTLINED_FUNCTION_183(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v26[1] = v5;
  v6 = OUTLINED_FUNCTION_201();
  v7 = type metadata accessor for Searchfoundation_RFMapMarkerText(v6);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v9 = OUTLINED_FUNCTION_60();
  type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(v11);
  OUTLINED_FUNCTION_59_1();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11C8, &unk_1B96DBC90);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - v19;
  sub_1B9574F78();
  sub_1B9574F78();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_24_29();
      sub_1B9574F78();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_29_35();
        sub_1B9574D18();
        static Searchfoundation_RFMapMarkerText.== infix(_:_:)();
        sub_1B9574FD0();
LABEL_9:
        sub_1B9574FD0();
        OUTLINED_FUNCTION_8_48();
        sub_1B9574FD0();
        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_29();
      sub_1B9574F78();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_27_19();
        sub_1B9574D18();
        static Searchfoundation_RFMapMarkerImage.== infix(_:_:)();
        sub_1B9574FD0();
        goto LABEL_9;
      }
    }

LABEL_10:
    sub_1B9574FD0();
    sub_1B8D9207C(v20, &qword_1EBAD11C8, &unk_1B96DBC90);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_29();
  sub_1B9574F78();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_30_33();
  sub_1B9574D18();
  v22 = *v16 == *v0 && *(v16 + 1) == *(v0 + 8);
  if (v22 || (sub_1B964C9F0() & 1) != 0)
  {
    v23 = *(v16 + 2) == *(v0 + 16) && *(v16 + 3) == *(v0 + 24);
    if (v23 || (sub_1B964C9F0()) && v16[32] == *(v0 + 32))
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_93();
      sub_1B8CD3800(v24, v25, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
    }
  }

  OUTLINED_FUNCTION_65_12();
  sub_1B9574FD0();
  OUTLINED_FUNCTION_128();
  sub_1B9574FD0();
  OUTLINED_FUNCTION_8_48();
  sub_1B9574FD0();
LABEL_11:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFMapMarkerIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  v8 = sub_1B8CD3800(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

void static Searchfoundation_RFMapMarkerText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v43 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v40 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v41 = v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v44 = v12;
  v13 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_LatLng(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v18);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_79();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_159();
  type metadata accessor for Searchfoundation_RFMapMarkerText(0);
  v22 = *(v20 + 56);
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_37_0(v1);
  if (v28)
  {
    OUTLINED_FUNCTION_37_0(v1 + v22);
    if (v28)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v22);
  if (v28)
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
LABEL_19:
    v29 = &qword_1EBACB018;
    v30 = &unk_1B96B9910;
LABEL_26:
    v34 = v1;
LABEL_27:
    sub_1B8D9207C(v34, v29, v30);
LABEL_28:
    v27 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_2_78();
  sub_1B9574D18();
  if (*v0 != *v17 || v0[1] != v17[1])
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    goto LABEL_25;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v31, v32, MEMORY[0x1E69AAC10]);
  v33 = sub_1B964C850();
  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
  if ((v33 & 1) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    v29 = &qword_1EBACAFA0;
    v30 = &unk_1B96CB440;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
LABEL_5:
  sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
  v23 = *v5 == *v3 && v5[1] == v3[1];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v24 = *(v42 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_44(v44, 1);
  if (v28)
  {
    OUTLINED_FUNCTION_48(v44 + v24);
    if (v28)
    {
      sub_1B8D9207C(v44, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_15;
    }

LABEL_33:
    v29 = &qword_1EBAB8E00;
    v30 = &qword_1B964D600;
LABEL_37:
    v34 = v44;
    goto LABEL_27;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v44 + v24);
  if (v35)
  {
    OUTLINED_FUNCTION_11_44();
    sub_1B9574FD0();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_3_83();
  sub_1B9574D18();
  sub_1B8D5BA08(*v41, *v40);
  if ((v36 & 1) == 0 || *(v41 + 8) != *(v40 + 8))
  {
    OUTLINED_FUNCTION_67_9();
    sub_1B9574FD0();
    sub_1B9574FD0();
    v29 = &qword_1EBAB8DF8;
    v30 = &qword_1B96B9A80;
    goto LABEL_37;
  }

  v37 = *(v43 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v38, v39, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_60_14();
  sub_1B9574FD0();
  sub_1B9574FD0();
  sub_1B8D9207C(v44, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v37 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v25, v26, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_612();
  v27 = sub_1B964C850();
LABEL_29:
  OUTLINED_FUNCTION_264(v27);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_RFMapMarkerImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v27[1] = type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  v15 = *(v13 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v21)
  {
    OUTLINED_FUNCTION_37_0(v0 + v15);
    if (v21)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v15);
  if (v21)
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
LABEL_19:
    v22 = &qword_1EBACB018;
    v23 = &unk_1B96B9910;
LABEL_26:
    sub_1B8D9207C(v0, v22, v23);
LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_78();
  sub_1B9574D18();
  if (*v12 != *v8 || v12[1] != v8[1])
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    goto LABEL_25;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v24, v25, MEMORY[0x1E69AAC10]);
  v26 = sub_1B964C850();
  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
  if ((v26 & 1) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    v22 = &qword_1EBACAFA0;
    v23 = &unk_1B96CB440;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
LABEL_5:
  sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
  v16 = *v4 == *v2 && v4[1] == v2[1];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = v4[2] == v2[2] && v4[3] == v2[3];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v18, v19, MEMORY[0x1E69AAC10]);
  v20 = sub_1B964C850();
LABEL_28:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFMapMarker.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(v0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for Searchfoundation_RFMapMarker(0);
  OUTLINED_FUNCTION_200_3(v5);
  type metadata accessor for Searchfoundation_RFColor(0);
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B95777A8(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = a1(v5);
  OUTLINED_FUNCTION_115(*(v6 + 24));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_LatLng(0);
  v7 = OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_113_12(v7);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t sub_1B95778B0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_2_78();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_LatLng(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_RFMapAnnotation.coordinate.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_LatLng(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFMapAnnotation(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9577A24()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFMapAnnotation.content.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFMapAnnotation(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 28));
  OUTLINED_FUNCTION_166_1(v5, v6);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapAnnotation.content.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapAnnotation.content.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFVisualProperty(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFMapAnnotation(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9577DB8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_28_25();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFMapAnnotation.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_RFMapAnnotation.anchor.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFMapAnnotation(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 32));
  OUTLINED_FUNCTION_166_1(v5, v6);
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  v7 = OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_113_12(v7);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBAD11D0, &qword_1B96DBCA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapAnnotation.anchor.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAD11D0, &qword_1B96DBCA0);
  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapAnnotation.anchor.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFMapPoint(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFMapAnnotation(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 32));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAD11D0, &qword_1B96DBCA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95781C0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBAD11D0, &qword_1B96DBCA0);
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_5_53();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAD11D0, &qword_1B96DBCA0);
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFMapAnnotation.hasAnchor.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11D0, &qword_1B96DBCA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Searchfoundation_RFMapAnnotation(v2);
  OUTLINED_FUNCTION_115(*(v3 + 32));
  OUTLINED_FUNCTION_161_2();
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &qword_1B96DBCA0);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_RFMapAnnotation.clearAnchor()()
{
  v1 = type metadata accessor for Searchfoundation_RFMapAnnotation(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAD11D0, &qword_1B96DBCA0);
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFMapAnnotation.label.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFMapAnnotation(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 36));
  OUTLINED_FUNCTION_166_1(v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapAnnotation.label.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_83();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapAnnotation.label.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFTextProperty(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFMapAnnotation(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95785E4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_11_44();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFMapAnnotation.hasLabel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Searchfoundation_RFMapAnnotation(v2);
  OUTLINED_FUNCTION_115(*(v3 + 36));
  OUTLINED_FUNCTION_161_2();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &qword_1B96B9A80);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_RFMapAnnotation.clearLabel()()
{
  v1 = type metadata accessor for Searchfoundation_RFMapAnnotation(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFMapAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapAnnotation(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapAnnotation.init()()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v1 = type metadata accessor for Searchfoundation_RFMapAnnotation(v0);
  OUTLINED_FUNCTION_200_3(v1);
  v2 = OUTLINED_FUNCTION_104_5();
  type metadata accessor for Searchfoundation_LatLng(v2);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v15 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void Searchfoundation_RFMapCardSection.sizeFormat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_RFMapCardSection.sizeFormat.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_RFMapCardSection.markers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Searchfoundation_RFMapCardSection.annotations.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_RFMapCardSection.polyline.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Searchfoundation_RFMapCardSection.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFMapCardSection(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_RFMapCardSection.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapCardSection(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_RFMapCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMapCardSection(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9578B7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1108);
  __swift_project_value_buffer(v0, qword_1EBAD1108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RFMapSizeFormatCompact";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RFMapSizeFormatFull";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9578D84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1120);
  __swift_project_value_buffer(v0, qword_1EBAD1120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFMapPoint.decodeMessage<A>(decoder:)()
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
      sub_1B964C510();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFMapPoint.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
    {
      type metadata accessor for Searchfoundation_RFMapPoint(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFMapPoint.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFMapPoint(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  v6 = sub_1B8CD3800(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B95791AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3800(&qword_1EBAD1318, type metadata accessor for Searchfoundation_RFMapPoint, protocol conformance descriptor for Searchfoundation_RFMapPoint);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957922C(uint64_t a1)
{
  v2 = sub_1B8CD3800(&qword_1EBAD1200, type metadata accessor for Searchfoundation_RFMapPoint, protocol conformance descriptor for Searchfoundation_RFMapPoint);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957929C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3800(&qword_1EBAD1200, type metadata accessor for Searchfoundation_RFMapPoint, protocol conformance descriptor for Searchfoundation_RFMapPoint);

  return sub_1B964C5D0();
}

uint64_t sub_1B9579334()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1138);
  __swift_project_value_buffer(v0, qword_1EBAD1138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "muid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultProviderID";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isForCameraPositionOnly";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.decodeMessage<A>(decoder:)()
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
      sub_1B964C400();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v0))
      {
        type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t sub_1B9579750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3800(&qword_1EBAD1310, type metadata accessor for Searchfoundation_RFMapMarkerIdentifier, protocol conformance descriptor for Searchfoundation_RFMapMarkerIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95797D0(uint64_t a1)
{
  v2 = sub_1B8CD3800(&qword_1EBAD1278, type metadata accessor for Searchfoundation_RFMapMarkerIdentifier, protocol conformance descriptor for Searchfoundation_RFMapMarkerIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9579840(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3800(&qword_1EBAD1278, type metadata accessor for Searchfoundation_RFMapMarkerIdentifier, protocol conformance descriptor for Searchfoundation_RFMapMarkerIdentifier);

  return sub_1B964C5D0();
}

uint64_t sub_1B95798F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B964C780();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_461();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964EE60;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = "coordinate";
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = "title";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v17();
  v19 = v8[14];
  v20 = (v12 + 2 * v9);
  *v20 = 3;
  v21 = v20 + v19;
  *v21 = a3;
  *(v21 + 1) = a4;
  v21[16] = 2;
  v17();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFMapMarkerText.decodeMessage<A>(decoder:)()
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
        v8 = OUTLINED_FUNCTION_9();
        sub_1B9579B9C(v8, v9, v10, v11);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B957CCCC(v3, v4, v5, v6, v7);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9579B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapMarkerText(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3800(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFMapMarkerText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_185();
  v24 = v4;
  v5 = OUTLINED_FUNCTION_201();
  v23 = type metadata accessor for Searchfoundation_RFTextProperty(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Searchfoundation_LatLng(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Searchfoundation_RFMapMarkerText(0);
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v11, v12, v13);
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    sub_1B9574D18();
    OUTLINED_FUNCTION_10_44();
    sub_1B8CD3800(v15, v16, protocol conformance descriptor for Searchfoundation_LatLng);
    sub_1B964C740();
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_1();
  if (v17)
  {
    sub_1B964C700();
    v18 = v24;
    if (v0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = v24;
  }

  sub_1B8D92024();
  v19 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v19, v20, v23);
  if (v14)
  {
    sub_1B8D9207C(v18, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_13:
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_83();
  sub_1B9574D18();
  OUTLINED_FUNCTION_63_9();
  sub_1B8CD3800(v21, v22, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  sub_1B964C740();
  OUTLINED_FUNCTION_11_44();
  sub_1B9574FD0();
  if (!v0)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B957A024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3800(&qword_1EBAD1308, type metadata accessor for Searchfoundation_RFMapMarkerText, protocol conformance descriptor for Searchfoundation_RFMapMarkerText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957A0A4(uint64_t a1)
{
  v2 = sub_1B8CD3800(&qword_1EBAD1290, type metadata accessor for Searchfoundation_RFMapMarkerText, protocol conformance descriptor for Searchfoundation_RFMapMarkerText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957A114(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3800(&qword_1EBAD1290, type metadata accessor for Searchfoundation_RFMapMarkerText, protocol conformance descriptor for Searchfoundation_RFMapMarkerText);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_RFMapMarkerImage.decodeMessage<A>(decoder:)()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B957A260(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B957A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B8CD3800(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
  return sub_1B964C580();
}

void Searchfoundation_RFMapMarkerImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_159();
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    sub_1B9574D18();
    OUTLINED_FUNCTION_10_44();
    sub_1B8CD3800(v11, v12, protocol conformance descriptor for Searchfoundation_LatLng);
    sub_1B964C740();
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    if (v0)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_137_6(v13, v14, 2), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_137_6(v16, v17, 3), !v0))
    {
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B957A5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3800(&qword_1EBAD1300, type metadata accessor for Searchfoundation_RFMapMarkerImage, protocol conformance descriptor for Searchfoundation_RFMapMarkerImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957A620(uint64_t a1)
{
  v2 = sub_1B8CD3800(&qword_1EBAD12A8, type metadata accessor for Searchfoundation_RFMapMarkerImage, protocol conformance descriptor for Searchfoundation_RFMapMarkerImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957A690(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3800(&qword_1EBAD12A8, type metadata accessor for Searchfoundation_RFMapMarkerImage, protocol conformance descriptor for Searchfoundation_RFMapMarkerImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B957A728()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1180);
  __swift_project_value_buffer(v0, qword_1EBAD1180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "tint";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFMapMarker.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B957AA38(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B957AF30(v15, v16, v17, v18);
        break;
      case 3:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B957B428(v7, v8, v9, v10);
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B957B920(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B957AA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1320, &qword_1B96DCA08);
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
    sub_1B8D9207C(v10, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    sub_1B9574D18();
    sub_1B9574D18();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9574FD0();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAD1320, &qword_1B96DCA08);
      sub_1B9574D18();
      sub_1B9574D18();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD3800(&qword_1EBAD1278, type metadata accessor for Searchfoundation_RFMapMarkerIdentifier, protocol conformance descriptor for Searchfoundation_RFMapMarkerIdentifier);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAD1320, &qword_1B96DCA08);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAD1320, &qword_1B96DCA08);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAD1320, &qword_1B96DCA08);
  }

  sub_1B9574D18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAD1320, &qword_1B96DCA08);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8DC8, &unk_1B96DBC80);
  sub_1B9574D18();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B957AF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFMapMarkerText(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1328, &qword_1B96DCA10);
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
    sub_1B8D9207C(v10, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    sub_1B9574D18();
    sub_1B9574D18();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAD1328, &qword_1B96DCA10);
      sub_1B9574D18();
      sub_1B9574D18();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9574FD0();
    }
  }

  sub_1B8CD3800(&qword_1EBAD1290, type metadata accessor for Searchfoundation_RFMapMarkerText, protocol conformance descriptor for Searchfoundation_RFMapMarkerText);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAD1328, &qword_1B96DCA10);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAD1328, &qword_1B96DCA10);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAD1328, &qword_1B96DCA10);
  }

  sub_1B9574D18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAD1328, &qword_1B96DCA10);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8DC8, &unk_1B96DBC80);
  sub_1B9574D18();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B957B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1330, &qword_1B96DCA18);
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
    sub_1B8D9207C(v10, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    sub_1B9574D18();
    sub_1B9574D18();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBAD1330, &qword_1B96DCA18);
      sub_1B9574D18();
      sub_1B9574D18();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9574FD0();
    }
  }

  sub_1B8CD3800(&qword_1EBAD12A8, type metadata accessor for Searchfoundation_RFMapMarkerImage, protocol conformance descriptor for Searchfoundation_RFMapMarkerImage);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAD1330, &qword_1B96DCA18);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAD1330, &qword_1B96DCA18);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAD1330, &qword_1B96DCA18);
  }

  sub_1B9574D18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAD1330, &qword_1B96DCA18);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8DC8, &unk_1B96DBC80);
  sub_1B9574D18();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B957B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapMarker(0);
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3800(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
  return sub_1B964C580();
}

void Searchfoundation_RFMapMarker.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v27[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_458();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v8 = OUTLINED_FUNCTION_177_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_159();
  sub_1B8D92024();
  v12 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  OUTLINED_FUNCTION_178(v2, 1, v12);
  if (v13)
  {
    goto LABEL_3;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_99_13();
    sub_1B957BCA8(v21, v22, v23, v27[0]);
    OUTLINED_FUNCTION_8_48();
    sub_1B9574FD0();
    if (v0)
    {
      goto LABEL_15;
    }

LABEL_3:
    type metadata accessor for Searchfoundation_RFMapMarker(0);
    sub_1B8D92024();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v14, v15, v16);
    if (v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }

    else
    {
      OUTLINED_FUNCTION_4_63();
      sub_1B9574D18();
      sub_1B8CD3800(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);
      sub_1B964C740();
      OUTLINED_FUNCTION_25_24();
      sub_1B9574FD0();
      if (v3)
      {
        goto LABEL_15;
      }
    }

    sub_1B964C290();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_99_13();
    sub_1B957BEB8(v18, v19, v20, v27[0]);
  }

  else
  {
    OUTLINED_FUNCTION_99_13();
    sub_1B957C0CC(v24, v25, v26, v27[0]);
  }

  v3 = v0;
  OUTLINED_FUNCTION_8_48();
  sub_1B9574FD0();
  if (!v0)
  {
    goto LABEL_3;
  }

LABEL_15:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B957BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9574D18();
      sub_1B8CD3800(&qword_1EBAD1278, type metadata accessor for Searchfoundation_RFMapMarkerIdentifier, protocol conformance descriptor for Searchfoundation_RFMapMarkerIdentifier);
      sub_1B964C740();
      return sub_1B9574FD0();
    }

    result = sub_1B9574FD0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B957BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFMapMarkerText(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9574D18();
      sub_1B8CD3800(&qword_1EBAD1290, type metadata accessor for Searchfoundation_RFMapMarkerText, protocol conformance descriptor for Searchfoundation_RFMapMarkerText);
      sub_1B964C740();
      return sub_1B9574FD0();
    }

    result = sub_1B9574FD0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B957C0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9574D18();
      sub_1B8CD3800(&qword_1EBAD12A8, type metadata accessor for Searchfoundation_RFMapMarkerImage, protocol conformance descriptor for Searchfoundation_RFMapMarkerImage);
      sub_1B964C740();
      return sub_1B9574FD0();
    }

    result = sub_1B9574FD0();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_RFMapMarker.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21();
  v32 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_185();
  v33 = v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC0, &unk_1B964D5C0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_543();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_159();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DD0, &qword_1B964D5D0);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_458();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_48(v1);
  if (v18)
  {
    OUTLINED_FUNCTION_48(v1 + v17);
    if (v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8DC8, &unk_1B96DBC80);
      goto LABEL_11;
    }

LABEL_9:
    v19 = &qword_1EBAB8DD0;
    v20 = &qword_1B964D5D0;
    v21 = v1;
LABEL_20:
    sub_1B8D9207C(v21, v19, v20);
    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v1 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_8_48();
    sub_1B9574FD0();
    goto LABEL_9;
  }

  sub_1B9574D18();
  static Searchfoundation_RFMapMarker.OneOf_Value.== infix(_:_:)();
  v23 = v22;
  sub_1B9574FD0();
  sub_1B9574FD0();
  sub_1B8D9207C(v1, &qword_1EBAB8DC8, &unk_1B96DBC80);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for Searchfoundation_RFMapMarker(0);
  v24 = *(v34 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v25 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_44(v25, v26);
  if (v18)
  {
    OUTLINED_FUNCTION_48(v0 + v24);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
LABEL_24:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_93();
      sub_1B8CD3800(v30, v31, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_612();
      v28 = sub_1B964C850();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0 + v24);
  if (v27)
  {
    OUTLINED_FUNCTION_25_24();
    sub_1B9574FD0();
LABEL_19:
    v19 = &qword_1EBAB8DC0;
    v20 = &unk_1B964D5C0;
    v21 = v0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_4_63();
  sub_1B9574D18();
  v29 = static Searchfoundation_RFColor.== infix(_:_:)(v33, v32);
  sub_1B9574FD0();
  sub_1B9574FD0();
  sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  if (v29)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B957C7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3800(&qword_1EBAD12F8, type metadata accessor for Searchfoundation_RFMapMarker, protocol conformance descriptor for Searchfoundation_RFMapMarker);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957C85C(uint64_t a1)
{
  v2 = sub_1B8CD3800(&qword_1EBAD1220, type metadata accessor for Searchfoundation_RFMapMarker, protocol conformance descriptor for Searchfoundation_RFMapMarker);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957C8CC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3800(&qword_1EBAD1220, type metadata accessor for Searchfoundation_RFMapMarker, protocol conformance descriptor for Searchfoundation_RFMapMarker);

  return sub_1B964C5D0();
}

uint64_t sub_1B957C964()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1198);
  __swift_project_value_buffer(v0, qword_1EBAD1198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "coordinate";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "title";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "anchor";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "label";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFMapAnnotation.decodeMessage<A>(decoder:)()
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
        sub_1B957CCCC(v3, v4, v5, v6, v7);
        break;
      case 2:
        v16 = OUTLINED_FUNCTION_9();
        sub_1B957CD74(v16, v17, v18, v19);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v12 = OUTLINED_FUNCTION_9();
        sub_1B957CE28(v12, v13, v14, v15);
        break;
      case 5:
        v8 = OUTLINED_FUNCTION_9();
        sub_1B957CEDC(v8, v9, v10, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B957CCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_10_44();
  sub_1B8CD3800(v5, v6, protocol conformance descriptor for Searchfoundation_LatLng);
  return sub_1B964C580();
}

uint64_t sub_1B957CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapAnnotation(0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3800(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t sub_1B957CE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapAnnotation(0);
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  sub_1B8CD3800(&qword_1EBAD1200, type metadata accessor for Searchfoundation_RFMapPoint, protocol conformance descriptor for Searchfoundation_RFMapPoint);
  return sub_1B964C580();
}

uint64_t sub_1B957CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapAnnotation(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3800(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFMapAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_185();
  v45 = v5;
  v6 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v41 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11D0, &qword_1B96DBCA0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v44 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v43 = type metadata accessor for Searchfoundation_RFMapPoint(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v42 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v15);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_79();
  v17 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_60();
  type metadata accessor for Searchfoundation_LatLng(v21);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v23 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Searchfoundation_RFMapAnnotation(v23);
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v24, v25, v26);
  if (v27)
  {
    sub_1B8D9207C(v2, &qword_1EBACAFA0, &unk_1B96CB440);
    v30 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    sub_1B9574D18();
    OUTLINED_FUNCTION_10_44();
    sub_1B8CD3800(v28, v29, protocol conformance descriptor for Searchfoundation_LatLng);
    sub_1B964C740();
    v30 = v0;
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    if (v0)
    {
      goto LABEL_20;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v1, 1, v17);
  if (v27)
  {
    sub_1B8D9207C(v1, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    OUTLINED_FUNCTION_7_49();
    sub_1B9574D18();
    sub_1B8CD3800(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
    v0 = v30;
    sub_1B964C740();
    OUTLINED_FUNCTION_28_25();
    sub_1B9574FD0();
    if (v30)
    {
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v31 || (v0 = v30, sub_1B964C700(), !v30))
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v44, 1, v43);
    if (v27)
    {
      sub_1B8D9207C(v44, &qword_1EBAD11D0, &qword_1B96DBCA0);
    }

    else
    {
      OUTLINED_FUNCTION_6_48();
      sub_1B9574D18();
      v32 = sub_1B8CD3800(&qword_1EBAD1200, type metadata accessor for Searchfoundation_RFMapPoint, protocol conformance descriptor for Searchfoundation_RFMapPoint);
      OUTLINED_FUNCTION_112_9(v42, 4, v33, v32);
      OUTLINED_FUNCTION_5_53();
      sub_1B9574FD0();
      if (v0)
      {
        goto LABEL_20;
      }
    }

    sub_1B8D92024();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v34, v35, v36);
    if (v27)
    {
      sub_1B8D9207C(v45, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_19:
      sub_1B964C290();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_3_83();
    sub_1B9574D18();
    OUTLINED_FUNCTION_63_9();
    v39 = sub_1B8CD3800(v37, v38, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_112_9(v41, 5, v40, v39);
    OUTLINED_FUNCTION_11_44();
    sub_1B9574FD0();
    if (!v0)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFMapAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v76 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v72 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v73 = v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v77 = v12;
  v13 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFMapPoint(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v74 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11D0, &qword_1B96DBCA0);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v78 = v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1208, &unk_1B96DBCA8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_185();
  v80 = v20;
  v21 = OUTLINED_FUNCTION_201();
  v84 = type metadata accessor for Searchfoundation_RFVisualProperty(v21);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21();
  v81 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v24);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_185();
  v82 = v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_185();
  v85 = v28;
  v29 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_LatLng(v29);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  v33 = (v32 - v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v34);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_458();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFMapAnnotation(v38);
  v39 = *(v36 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v51)
  {
    OUTLINED_FUNCTION_37_0(v0 + v39);
    if (v51)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v39);
  if (v51)
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
LABEL_28:
    v52 = &qword_1EBACB018;
    v53 = &unk_1B96B9910;
LABEL_35:
    v57 = v0;
LABEL_44:
    sub_1B8D9207C(v57, v52, v53);
LABEL_45:
    v50 = 0;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_2_78();
  sub_1B9574D18();
  if (*v1 != *v33 || v1[1] != v33[1])
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_104_5();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v54, v55, MEMORY[0x1E69AAC10]);
  v56 = sub_1B964C850();
  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
  if ((v56 & 1) == 0)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    v52 = &qword_1EBACAFA0;
    v53 = &unk_1B96CB440;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
LABEL_5:
  sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
  v40 = *(v83 + 48);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_178(v85, 1, v84);
  if (v51)
  {
    OUTLINED_FUNCTION_37_0(v85 + v40);
    if (v51)
    {
      sub_1B8D9207C(v85, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_10;
    }

LABEL_39:
    v52 = &qword_1EBACCC18;
    v53 = &unk_1B96D8D70;
LABEL_43:
    v57 = v85;
    goto LABEL_44;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v85 + v40);
  if (v58)
  {
    OUTLINED_FUNCTION_28_25();
    sub_1B9574FD0();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_7_49();
  sub_1B9574D18();
  sub_1B8D5D124(*v82, *v81);
  if ((v59 & 1) == 0 || *(v82 + 8) != *(v81 + 8))
  {
    sub_1B9574FD0();
    sub_1B9574FD0();
    v52 = &qword_1EBACC708;
    v53 = &unk_1B96D92F0;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_104_5();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v61, v62, MEMORY[0x1E69AAC10]);
  v63 = sub_1B964C850();
  sub_1B9574FD0();
  sub_1B9574FD0();
  sub_1B8D9207C(v85, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_10:
  v41 = *v5 == *v3 && v5[1] == v3[1];
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v42 = *(v79 + 48);
  OUTLINED_FUNCTION_235_1();
  v0 = v80;
  OUTLINED_FUNCTION_235_1();
  v43 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v43, v44);
  if (v51)
  {
    OUTLINED_FUNCTION_48(v80 + v42);
    if (v51)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v80 + v42);
  if (v60)
  {
    OUTLINED_FUNCTION_5_53();
    sub_1B9574FD0();
LABEL_50:
    v52 = &qword_1EBAD1208;
    v53 = &unk_1B96DBCA8;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_6_48();
  sub_1B9574D18();
  if (*v78 != *v74 || v78[1] != v74[1])
  {
    OUTLINED_FUNCTION_5_53();
    sub_1B9574FD0();
    goto LABEL_58;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v64, v65, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_612();
  v66 = sub_1B964C850();
  OUTLINED_FUNCTION_5_53();
  sub_1B9574FD0();
  if ((v66 & 1) == 0)
  {
LABEL_58:
    OUTLINED_FUNCTION_5_53();
    sub_1B9574FD0();
    v52 = &qword_1EBAD11D0;
    v53 = &qword_1B96DBCA0;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_5_53();
  sub_1B9574FD0();
LABEL_19:
  sub_1B8D9207C(v80, &qword_1EBAD11D0, &qword_1B96DBCA0);
  v45 = *(v75 + 48);
  OUTLINED_FUNCTION_235_1();
  v0 = v77;
  OUTLINED_FUNCTION_235_1();
  v46 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v46, v47);
  if (v51)
  {
    OUTLINED_FUNCTION_48(v77 + v45);
    if (v51)
    {
      sub_1B8D9207C(v77, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_24;
    }

    goto LABEL_62;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v77 + v45);
  if (v67)
  {
    OUTLINED_FUNCTION_11_44();
    sub_1B9574FD0();
LABEL_62:
    v52 = &qword_1EBAB8E00;
    v53 = &qword_1B964D600;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_3_83();
  sub_1B9574D18();
  sub_1B8D5BA08(*v73, *v72);
  if ((v68 & 1) == 0 || *(v73 + 8) != *(v72 + 8))
  {
    OUTLINED_FUNCTION_67_9();
    sub_1B9574FD0();
    sub_1B9574FD0();
    v52 = &qword_1EBAB8DF8;
    v53 = &qword_1B96B9A80;
    goto LABEL_35;
  }

  v69 = *(v76 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v70, v71, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_612();
  sub_1B964C850();
  OUTLINED_FUNCTION_60_14();
  sub_1B9574FD0();
  sub_1B9574FD0();
  sub_1B8D9207C(v77, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v69 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_24:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v48, v49, MEMORY[0x1E69AAC10]);
  v50 = sub_1B964C850();
LABEL_46:
  OUTLINED_FUNCTION_264(v50);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B957E000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3800(&qword_1EBAD12F0, type metadata accessor for Searchfoundation_RFMapAnnotation, protocol conformance descriptor for Searchfoundation_RFMapAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957E080(uint64_t a1)
{
  v2 = sub_1B8CD3800(&qword_1EBAD1228, type metadata accessor for Searchfoundation_RFMapAnnotation, protocol conformance descriptor for Searchfoundation_RFMapAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957E0F0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3800(&qword_1EBAD1228, type metadata accessor for Searchfoundation_RFMapAnnotation, protocol conformance descriptor for Searchfoundation_RFMapAnnotation);

  return sub_1B964C5D0();
}

uint64_t sub_1B957E188()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD11B0);
  __swift_project_value_buffer(v0, qword_1EBAD11B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sizeFormat";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "markers";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "annotations";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "polyline";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "cameraDistance";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "showsUserLocation";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFMapCardSection.decodeMessage<A>(decoder:)()
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
        sub_1B957E538(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B957E5A0(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B957E640(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B957E6E0(v11, v12, v13, v14);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B957E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapMarker(0);
  sub_1B8CD3800(&qword_1EBAD1220, type metadata accessor for Searchfoundation_RFMapMarker, protocol conformance descriptor for Searchfoundation_RFMapMarker);
  return sub_1B964C570();
}

uint64_t sub_1B957E640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFMapAnnotation(0);
  sub_1B8CD3800(&qword_1EBAD1228, type metadata accessor for Searchfoundation_RFMapAnnotation, protocol conformance descriptor for Searchfoundation_RFMapAnnotation);
  return sub_1B964C570();
}

uint64_t sub_1B957E6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B8CD3800(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFMapCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B957ED58(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Searchfoundation_RFMapMarker(0), sub_1B8CD3800(&qword_1EBAD1220, type metadata accessor for Searchfoundation_RFMapMarker, protocol conformance descriptor for Searchfoundation_RFMapMarker), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (type metadata accessor for Searchfoundation_RFMapAnnotation(0), sub_1B8CD3800(&qword_1EBAD1228, type metadata accessor for Searchfoundation_RFMapAnnotation, protocol conformance descriptor for Searchfoundation_RFMapAnnotation), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (!*(*(v2 + 32) + 16) || (type metadata accessor for Searchfoundation_LatLng(0), OUTLINED_FUNCTION_10_44(), sub_1B8CD3800(v4, v5, protocol conformance descriptor for Searchfoundation_LatLng), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          if (*(v2 + 40) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
          {
            if (*(v2 + 48) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
            {
              type metadata accessor for Searchfoundation_RFMapCardSection(0);
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFMapCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  sub_1B8D75EEC(*(v1 + 16), *(v0 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D764B8(*(v1 + 24), *(v0 + 24));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7650C(*(v1 + 32), *(v0 + 32));
  if ((v8 & 1) == 0 || *(v1 + 40) != *(v0 + 40) || *(v1 + 48) != *(v0 + 48))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFMapCardSection(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  v12 = sub_1B8CD3800(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B957EAF0()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD3800(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B957EBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3800(&qword_1EBAD12E8, type metadata accessor for Searchfoundation_RFMapCardSection, protocol conformance descriptor for Searchfoundation_RFMapCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957EC48(uint64_t a1)
{
  v2 = sub_1B8CD3800(&qword_1EBACE570, type metadata accessor for Searchfoundation_RFMapCardSection, protocol conformance descriptor for Searchfoundation_RFMapCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957ECB8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3800(&qword_1EBACE570, type metadata accessor for Searchfoundation_RFMapCardSection, protocol conformance descriptor for Searchfoundation_RFMapCardSection);

  return sub_1B964C5D0();
}

unint64_t sub_1B957ED58()
{
  result = qword_1EBAD1218;
  if (!qword_1EBAD1218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFMapSizeFormat, &type metadata for Searchfoundation_RFMapSizeFormat, v0, v1);
    atomic_store(result, &qword_1EBAD1218);
  }

  return result;
}

unint64_t sub_1B957EDB0()
{
  result = qword_1EBAD1238;
  if (!qword_1EBAD1238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFMapSizeFormat, &type metadata for Searchfoundation_RFMapSizeFormat, v0, v1);
    atomic_store(result, &qword_1EBAD1238);
  }

  return result;
}

unint64_t sub_1B957EE08()
{
  result = qword_1EBAD1240;
  if (!qword_1EBAD1240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFMapSizeFormat, &type metadata for Searchfoundation_RFMapSizeFormat, v0, v1);
    atomic_store(result, &qword_1EBAD1240);
  }

  return result;
}

unint64_t sub_1B957EE60()
{
  result = qword_1EBAD1248;
  if (!qword_1EBAD1248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFMapSizeFormat, &type metadata for Searchfoundation_RFMapSizeFormat, v0, v1);
    atomic_store(result, &qword_1EBAD1248);
  }

  return result;
}

unint64_t sub_1B957EEB8()
{
  result = qword_1EBAD1250;
  if (!qword_1EBAD1250)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD1258, &qword_1B96DBDA0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD1250);
  }

  return result;
}

uint64_t sub_1B957F75C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B957F810(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B957F91C(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B957F91C(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B957F91C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B957F9A8(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B957F91C(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B957FA94(uint64_t a1)
{
  sub_1B957F91C(319, qword_1ED9E1268, type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B957F91C(319, &qword_1ED9F2C70, type metadata accessor for Searchfoundation_RFColor, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B957FB90(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_RFMapMarkerText(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_RFMapMarkerImage(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B957FC40(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B957F91C(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B957F91C(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B957F91C(319, qword_1ED9E1860, type metadata accessor for Searchfoundation_RFMapPoint, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B957F91C(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B957FE04(uint64_t a1)
{
  sub_1B957F91C(319, &qword_1ED9D3A28, type metadata accessor for Searchfoundation_RFMapMarker, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B957F91C(319, &qword_1ED9D39E0, type metadata accessor for Searchfoundation_RFMapAnnotation, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B957F91C(319, &qword_1ED9D3A70, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_56_13()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_93_12(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_108_9()
{

  return sub_1B9574D18();
}

uint64_t OUTLINED_FUNCTION_112_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_113_12(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_118_9()
{

  return sub_1B9574D18();
}

uint64_t OUTLINED_FUNCTION_119_7()
{

  return sub_1B9574D18();
}

uint64_t OUTLINED_FUNCTION_132_9()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t Searchfoundation_RFOptionalFloat.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFOptionalBool.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9580484@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B9580518(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t Searchfoundation_RFOptionalBool.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFOptionalBool.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 != 1 || (result = sub_1B964C670(), !v0))
  {
    type metadata accessor for Searchfoundation_RFOptionalBool(0);
    return OUTLINED_FUNCTION_2_7();
  }

  return result;
}

uint64_t static Searchfoundation_RFOptionalBool.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_111();
  v5 = sub_1B8CD3848(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B958081C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3848(&qword_1EBAD1380, type metadata accessor for Searchfoundation_RFOptionalBool, protocol conformance descriptor for Searchfoundation_RFOptionalBool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B958089C(uint64_t a1)
{
  v2 = sub_1B8CD3848(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool, protocol conformance descriptor for Searchfoundation_RFOptionalBool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B958090C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3848(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool, protocol conformance descriptor for Searchfoundation_RFOptionalBool);

  return sub_1B964C5D0();
}

uint64_t sub_1B95809B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B964D050;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "value";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v9 + 104))(v7, v8);
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFOptionalFloat.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFOptionalFloat.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 == 0.0 || (result = sub_1B964C6B0(), !v0))
  {
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    return OUTLINED_FUNCTION_2_7();
  }

  return result;
}

uint64_t static Searchfoundation_RFOptionalFloat.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_111();
  v4 = sub_1B8CD3848(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B9580CD4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD3848(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9580DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3848(&qword_1EBAD1378, type metadata accessor for Searchfoundation_RFOptionalFloat, protocol conformance descriptor for Searchfoundation_RFOptionalFloat);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9580E38(uint64_t a1)
{
  v2 = sub_1B8CD3848(&qword_1EBAD0AA8, type metadata accessor for Searchfoundation_RFOptionalFloat, protocol conformance descriptor for Searchfoundation_RFOptionalFloat);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9580EA8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3848(&qword_1EBAD0AA8, type metadata accessor for Searchfoundation_RFOptionalFloat, protocol conformance descriptor for Searchfoundation_RFOptionalFloat);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_RFPrimaryHeaderRichCardSection.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_84_11(a1);
  v3 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v2);
  OUTLINED_FUNCTION_200_3(v3);
  OUTLINED_FUNCTION_123_8();
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_338_1(v1[7]);
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_338_1(v1[8]);
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_338_1(v1[9]);
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v20 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t Searchfoundation_RFPrimaryHeaderStandardCardSection.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_84_11(a1);
  v3 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(v2);
  OUTLINED_FUNCTION_200_3(v3);
  OUTLINED_FUNCTION_123_8();
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_338_1(*(v1 + 28));
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_338_1(*(v1 + 32));

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Searchfoundation_RFPrimaryHeaderMarqueeCardSection.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_84_11(a1);
  v3 = type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(v2);
  OUTLINED_FUNCTION_200_3(v3);
  OUTLINED_FUNCTION_123_8();
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_338_1(*(v1 + 28));
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v12 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Searchfoundation_RFPrimaryHeaderStackedImageCardSection.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection(0);
  OUTLINED_FUNCTION_200_3(v2);
  OUTLINED_FUNCTION_123_8();
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_338_1(*(v1 + 28));

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B9581484(void (*a1)(void))
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  a1(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v2 = OUTLINED_FUNCTION_59_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_RFPrimaryHeaderRichCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFPrimaryHeaderRichCardSection.text2.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFPrimaryHeaderRichCardSection.text3.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFPrimaryHeaderRichCardSection.text4.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 36));
  sub_1B8DD9078(v5, v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t Searchfoundation_RFPrimaryHeaderRichCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFPrimaryHeaderRichCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFPrimaryHeaderRichCardSection.hasText4.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v4);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 36));
  sub_1B8DD9078(v6, v7, &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &qword_1B96B9A80);
  return v12;
}