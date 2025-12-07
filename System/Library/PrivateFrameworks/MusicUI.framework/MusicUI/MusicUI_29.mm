uint64_t sub_2169705F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_216970674@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  sub_21700D7A4();
  sub_21700CE04();
  v18 = *(v41 + 16);
  v39 = v4;
  v18(v8, v42, v4);
  sub_21700D734();
  v40 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v38 = v11 + 8;
  v22(v14, v9);
  if (v21)
  {
    v23 = type metadata accessor for LinkComponentModel(0);
    v43 = v19;
    v44 = v21;
    v24 = v45;
    sub_21700F364();
    v25 = v40;
    sub_21700CE04();
    v26 = v42;
    sub_21700D2E4();
    v22(v17, v9);
    sub_21700CE04();
    v27 = sub_21700CDB4();
    v37 = v28;
    (*(v41 + 8))(v26, v39);
    v22(v25, v9);
    result = (v22)(v17, v9);
    v30 = (v24 + *(v23 + 28));
    v31 = v37;
    *v30 = v27;
    v30[1] = v31;
  }

  else
  {
    v32 = sub_21700E2E4();
    sub_2166D4F74(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v34 = v33;
    v35 = type metadata accessor for LinkComponentModel(0);
    *v34 = 25705;
    v34[1] = 0xE200000000000000;
    v34[2] = v35;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v41 + 8))(v42, v39);
    v22(v40, v9);
    return sub_2167B0250(v45);
  }

  return result;
}

uint64_t sub_216970AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Link(0);
  if (*(a1 + *(v4 + 20) + 8))
  {
    v5 = v4;
    v6 = type metadata accessor for LinkComponentModel(0);
    sub_21700DF14();
    sub_21700F364();
    v7 = (a1 + *(v5 + 24));
    v9 = *v7;
    v8 = v7[1];
    sub_21700DF14();
    sub_216970C44(a1);
    v10 = (a2 + *(v6 + 28));
    *v10 = v9;
    v10[1] = v8;
    v11 = a2 + *(v6 + 24);
    v12 = sub_21700D7A4();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0;
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F58, &qword_21701C130);
    sub_2167880BC();
    swift_allocError();
    *v15 = xmmword_217014E10;
    *(v15 + 16) = v14;
    swift_willThrow();
    return sub_216970C44(a1);
  }
}

uint64_t sub_216970C44(uint64_t a1)
{
  v2 = type metadata accessor for Link(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216970CA0()
{
  v203 = type metadata accessor for GradientListRowModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_0();
  v204 = v1;
  v2 = OUTLINED_FUNCTION_4_1();
  v201 = type metadata accessor for VerticalArtworkListItem(v2);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v202 = v4;
  v5 = OUTLINED_FUNCTION_4_1();
  v199 = type metadata accessor for Spacer(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v200 = v7;
  v8 = OUTLINED_FUNCTION_4_1();
  v197 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v198 = v10;
  v11 = OUTLINED_FUNCTION_4_1();
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v196 = v13;
  v14 = OUTLINED_FUNCTION_4_1();
  v193 = type metadata accessor for SocialProfileEditorHeaderLockup(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v194 = v16;
  v17 = OUTLINED_FUNCTION_4_1();
  v191 = type metadata accessor for SocialProfileDetailHeaderLockup(v17);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v192 = v19;
  v20 = OUTLINED_FUNCTION_4_1();
  v189 = type metadata accessor for SocialOnboardingWelcomePageLockup(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v190 = v22;
  v23 = OUTLINED_FUNCTION_4_1();
  v187 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(v23);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v188 = v25;
  v26 = OUTLINED_FUNCTION_4_1();
  v185 = type metadata accessor for SocialProfileFollowRequestResponseHeader(v26);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v186 = v28;
  v29 = OUTLINED_FUNCTION_4_1();
  v30 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(v29);
  v31 = OUTLINED_FUNCTION_1_77(v30, &v212);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  v33 = OUTLINED_FUNCTION_8_0(v32);
  v34 = type metadata accessor for SocialProfileHorizontalLockupSection(v33);
  v35 = OUTLINED_FUNCTION_1_77(v34, &v209);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v37 = OUTLINED_FUNCTION_8_0(v36);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v37);
  v39 = OUTLINED_FUNCTION_1_77(FriendsPageSectionLockup, &v210);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_0();
  v41 = OUTLINED_FUNCTION_8_0(v40);
  v42 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v41);
  v43 = OUTLINED_FUNCTION_1_77(v42, &v207);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  v45 = OUTLINED_FUNCTION_8_0(v44);
  v46 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(v45);
  v47 = OUTLINED_FUNCTION_1_77(v46, &v206);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  v49 = OUTLINED_FUNCTION_8_0(v48);
  v50 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v49);
  v51 = OUTLINED_FUNCTION_1_77(v50, &v205);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_0();
  v53 = OUTLINED_FUNCTION_8_0(v52);
  v54 = type metadata accessor for ListSection(v53);
  v55 = OUTLINED_FUNCTION_1_77(v54, &v204);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_0();
  v57 = OUTLINED_FUNCTION_8_0(v56);
  v58 = type metadata accessor for MappedSearchResultsList(v57);
  MEMORY[0x28223BE20](v58 - 8);
  OUTLINED_FUNCTION_6_0();
  v60 = OUTLINED_FUNCTION_8_0(v59);
  ContextLockup = type metadata accessor for SearchQueryContextLockup(v60);
  v62 = OUTLINED_FUNCTION_1_77(ContextLockup, &v201);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_0();
  v64 = OUTLINED_FUNCTION_8_0(v63);
  v65 = type metadata accessor for PopoverSelector(v64);
  v66 = OUTLINED_FUNCTION_1_77(v65, &v198);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  v178 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
  v69 = OUTLINED_FUNCTION_1_77(v68, &FriendsButtonComponentModel);
  MEMORY[0x28223BE20](v69);
  v71 = OUTLINED_FUNCTION_8_0(&v170[-v70]);
  v72 = type metadata accessor for ParagraphComponentModel(v71);
  v73 = OUTLINED_FUNCTION_1_77(v72, &v196);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  v75 = OUTLINED_FUNCTION_8_0(v74);
  v76 = type metadata accessor for LandingUpsell(v75);
  v77 = OUTLINED_FUNCTION_1_77(v76, &v192);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_0();
  v79 = OUTLINED_FUNCTION_8_0(v78);
  v80 = type metadata accessor for InlineUpsell(v79);
  v81 = OUTLINED_FUNCTION_1_77(v80, &v190);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_6_0();
  v83 = OUTLINED_FUNCTION_8_0(v82);
  v84 = type metadata accessor for GroupedTextListLockup(v83);
  v85 = OUTLINED_FUNCTION_1_77(v84, &v188);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_6_0();
  v87 = OUTLINED_FUNCTION_8_0(v86);
  v88 = type metadata accessor for EmptyStateLockup(v87);
  v89 = OUTLINED_FUNCTION_1_77(v88, &v186);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_0();
  v91 = OUTLINED_FUNCTION_8_0(v90);
  v92 = type metadata accessor for CuratorDetailHeaderComponentModel(v91);
  v93 = OUTLINED_FUNCTION_1_77(v92, &v184);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_6_0();
  v95 = OUTLINED_FUNCTION_8_0(v94);
  v96 = type metadata accessor for ContainerDetailTracklistFooterLockup(v95);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_7();
  v100 = v99 - v98;
  v101 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_7();
  v105 = v104 - v103;
  v106 = type metadata accessor for AnimatedTextListItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_7();
  v110 = v109 - v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938, &unk_217017C10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v111);
  v113 = &v170[-v112];
  type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_7();
  v117 = v116 - v115;
  sub_2169728B8(v205, v116 - v115);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v146 = &qword_27CAB7938;
      v147 = &unk_217017C10;
      sub_216972A6C(v117, v113, &qword_27CAB7938, &unk_217017C10);
      sub_2169F16FC();
      v119 = v151;
      v150 = v113;
      goto LABEL_33;
    case 2u:
      v125 = type metadata accessor for AnimatedTextListItem;
      sub_2169729C8(v117, v110, type metadata accessor for AnimatedTextListItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v106;
      v126 = &qword_27CABE138;
      v127 = type metadata accessor for AnimatedTextListItem;
      v128 = &unk_217044FC0;
      goto LABEL_67;
    case 3u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F172C();
      goto LABEL_71;
    case 4u:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CABB1B0;
      v121 = &qword_217023310;
      v143 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v143, v144);
      v124 = qword_280E3D9E8;
      v145 = &unk_217063310;
      goto LABEL_58;
    case 5u:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CABB7D0;
      v121 = &qword_2170479B0;
      v155 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v155, v156);
      v124 = &qword_280E457D8;
      goto LABEL_57;
    case 6u:
      sub_2169729C8(v117, v105, type metadata accessor for MappedArtistLatestReleaseAndTopSongs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v101;
      *(v119 + 64) = sub_216972A24(&qword_27CABE130, type metadata accessor for MappedArtistLatestReleaseAndTopSongs, &unk_21706B500);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v119 + 32));
      v160 = v105;
      v161 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs;
      goto LABEL_69;
    case 7u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1874();
      goto LABEL_71;
    case 8u:
      v125 = type metadata accessor for ContainerDetailTracklistFooterLockup;
      sub_2169729C8(v117, v100, type metadata accessor for ContainerDetailTracklistFooterLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v96;
      *(v119 + 64) = sub_216972A24(&qword_280E2E290, type metadata accessor for ContainerDetailTracklistFooterLockup, &unk_21701A7C0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v119 + 32));
      v160 = v100;
      goto LABEL_68;
    case 9u:
      v125 = type metadata accessor for CuratorDetailHeaderComponentModel;
      v110 = v171;
      sub_2169729C8(v117, v171, type metadata accessor for CuratorDetailHeaderComponentModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v184);
      v126 = &unk_280E2F350;
      v127 = type metadata accessor for CuratorDetailHeaderComponentModel;
      v128 = &unk_21703772C;
      goto LABEL_67;
    case 0xAu:
      v125 = type metadata accessor for EmptyStateLockup;
      v110 = v172;
      sub_2169729C8(v117, v172, type metadata accessor for EmptyStateLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v186);
      v126 = &unk_280E41380;
      v127 = type metadata accessor for EmptyStateLockup;
      v128 = &unk_2170201A4;
      goto LABEL_67;
    case 0xBu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1AA8();
      goto LABEL_71;
    case 0xCu:
      v125 = type metadata accessor for GroupedTextListLockup;
      v110 = v173;
      sub_2169729C8(v117, v173, type metadata accessor for GroupedTextListLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v188);
      v126 = &unk_280E3A888;
      v127 = type metadata accessor for GroupedTextListLockup;
      v128 = &unk_217066438;
      goto LABEL_67;
    case 0xDu:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CAB9728;
      v121 = &unk_217060FC0;
      v157 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v157, v158);
      v124 = &qword_280E45808;
      goto LABEL_57;
    case 0xEu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1AD8();
      goto LABEL_71;
    case 0xFu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1B08();
      goto LABEL_71;
    case 0x10u:
      v125 = type metadata accessor for InlineUpsell;
      v110 = v174;
      sub_2169729C8(v117, v174, type metadata accessor for InlineUpsell);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v190);
      v126 = &unk_280E44CE0;
      v127 = type metadata accessor for InlineUpsell;
      v128 = &unk_2170351D4;
      goto LABEL_67;
    case 0x11u:
      v125 = type metadata accessor for LandingUpsell;
      v110 = v175;
      sub_2169729C8(v117, v175, type metadata accessor for LandingUpsell);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v192);
      v126 = &unk_280E43EB0;
      v127 = type metadata accessor for LandingUpsell;
      v128 = &unk_21704DB30;
      goto LABEL_67;
    case 0x12u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1B38();
      goto LABEL_71;
    case 0x13u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1C80();
      goto LABEL_71;
    case 0x14u:
      v152 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v152, &v203, v153);
      sub_2169F1EB8();
      v119 = v154;
      v135 = type metadata accessor for ListSection;
      goto LABEL_47;
    case 0x15u:
      v125 = type metadata accessor for GradientListRowModel;
      v110 = v204;
      sub_2169729C8(v117, v204, type metadata accessor for GradientListRowModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v203;
      v126 = &unk_27CABE108;
      v127 = type metadata accessor for GradientListRowModel;
      v128 = &unk_21701FE64;
      goto LABEL_67;
    case 0x16u:
      v125 = type metadata accessor for ParagraphComponentModel;
      v110 = v177;
      sub_2169729C8(v117, v177, type metadata accessor for ParagraphComponentModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v196);
      v126 = &unk_280E37B38;
      v127 = type metadata accessor for ParagraphComponentModel;
      v128 = &unk_21702E9C0;
      goto LABEL_67;
    case 0x17u:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CABB7C8;
      v121 = &unk_21703D570;
      v167 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v167, v168);
      v124 = &qword_27CABE120;
      goto LABEL_57;
    case 0x18u:
      v146 = &qword_27CAB7940;
      v147 = &unk_21701C440;
      v148 = v176;
      sub_216972A6C(v117, v176, &qword_27CAB7940, &unk_21701C440);
      sub_2169F1CB0();
      v119 = v149;
      v150 = v148;
LABEL_33:
      sub_216697664(v150, v146, v147);
      return v119;
    case 0x19u:
      v125 = type metadata accessor for PopoverSelector;
      v110 = v178;
      sub_2169729C8(v117, v178, type metadata accessor for PopoverSelector);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v198);
      v126 = &unk_27CAB9C38;
      v127 = type metadata accessor for PopoverSelector;
      v128 = &unk_217015F18;
      goto LABEL_67;
    case 0x1Au:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1CE0();
      goto LABEL_71;
    case 0x1Bu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1E58();
      goto LABEL_71;
    case 0x1Cu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1D10();
      goto LABEL_71;
    case 0x1Du:
      v125 = type metadata accessor for SearchQueryContextLockup;
      v110 = v179;
      sub_2169729C8(v117, v179, type metadata accessor for SearchQueryContextLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v201);
      v126 = &unk_280E36308;
      v127 = type metadata accessor for SearchQueryContextLockup;
      v128 = &unk_21702D7E0;
      goto LABEL_67;
    case 0x1Eu:
      v162 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v162, &v200, v163);
      sub_2169F1E88();
      v119 = v164;
      v135 = type metadata accessor for MappedSearchResultsList;
      goto LABEL_47;
    case 0x1Fu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2000();
      goto LABEL_71;
    case 0x20u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2030();
      goto LABEL_71;
    case 0x21u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2178();
      goto LABEL_71;
    case 0x22u:
      v125 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      v110 = v180;
      sub_2169729C8(v117, v180, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v205);
      v126 = &unk_280E2CAC0;
      v127 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      v128 = &unk_21702A6E8;
      goto LABEL_67;
    case 0x23u:
      v125 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      v110 = v181;
      sub_2169729C8(v117, v181, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v206);
      v126 = &unk_280E2D280;
      v127 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      v128 = &unk_217033C64;
      goto LABEL_67;
    case 0x24u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F22C0();
      goto LABEL_71;
    case 0x25u:
      v125 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      v110 = v188;
      sub_2169729C8(v117, v188, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v187;
      v126 = &unk_280E2D5F8;
      v127 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      v128 = &unk_21702D594;
      goto LABEL_67;
    case 0x26u:
      v125 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      v110 = v190;
      sub_2169729C8(v117, v190, type metadata accessor for SocialOnboardingWelcomePageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v189;
      v126 = &unk_280E2EF10;
      v127 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      v128 = &unk_21706AAFC;
      goto LABEL_67;
    case 0x27u:
      v125 = type metadata accessor for SocialProfileDetailHeaderLockup;
      v110 = v192;
      sub_2169729C8(v117, v192, type metadata accessor for SocialProfileDetailHeaderLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v191;
      v126 = &unk_280E2FEC8;
      v127 = type metadata accessor for SocialProfileDetailHeaderLockup;
      v128 = &unk_2170374D0;
      goto LABEL_67;
    case 0x28u:
      v125 = type metadata accessor for SocialProfileEditorHeaderLockup;
      v110 = v194;
      sub_2169729C8(v117, v194, type metadata accessor for SocialProfileEditorHeaderLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v193;
      v126 = &unk_280E2FE08;
      v127 = type metadata accessor for SocialProfileEditorHeaderLockup;
      v128 = &unk_21702BE64;
      goto LABEL_67;
    case 0x29u:
      v125 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      v110 = v196;
      sub_2169729C8(v117, v196, type metadata accessor for SocialProfileFindFriendsButtonComponentModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = FriendsButtonComponentModel;
      v126 = &unk_280E2CDC8;
      v127 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      v128 = &unk_2170508E0;
      goto LABEL_67;
    case 0x2Au:
      v125 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      v110 = v198;
      sub_2169729C8(v117, v198, type metadata accessor for SocialProfileDetailViewFollowRequestsHeader);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v197;
      v126 = &unk_280E2CFC0;
      v127 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      v128 = &unk_2170197B4;
      goto LABEL_67;
    case 0x2Bu:
      v125 = type metadata accessor for SocialProfileFollowRequestResponseHeader;
      v110 = v186;
      sub_2169729C8(v117, v186, type metadata accessor for SocialProfileFollowRequestResponseHeader);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v185;
      v126 = &unk_280E2D540;
      v127 = type metadata accessor for SocialProfileFollowRequestResponseHeader;
      v128 = &unk_21703A100;
      goto LABEL_67;
    case 0x2Cu:
      v132 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v132, &v211, v133);
      sub_2169F2468();
      v119 = v134;
      v135 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel;
      goto LABEL_47;
    case 0x2Du:
      OUTLINED_FUNCTION_7_47();
      sub_2169F22F0();
      goto LABEL_71;
    case 0x2Eu:
      v125 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
      v110 = v182;
      sub_2169729C8(v117, v182, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v207);
      v126 = &unk_280E2D6A8;
      v127 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
      v128 = &unk_21704A380;
      goto LABEL_67;
    case 0x2Fu:
      v125 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
      v110 = v183;
      sub_2169729C8(v117, v183, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v119, &v210);
      v126 = &unk_280E2CE80;
      v127 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
      v128 = &unk_21704BAB0;
      goto LABEL_67;
    case 0x30u:
      v136 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v136, &v208, v137);
      sub_2169F2320();
      v119 = v138;
      v135 = type metadata accessor for SocialProfileHorizontalLockupSection;
LABEL_47:
      sub_21697291C(v105, v135);
      return v119;
    case 0x31u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = &type metadata for MappedSongDetailList;
      *(v119 + 64) = sub_216972974();
      OUTLINED_FUNCTION_5_46();
      v141 = swift_allocObject();
      *(v119 + 32) = v141;
      v142 = *(v117 + 16);
      *(v141 + 16) = *v117;
      *(v141 + 32) = v142;
      *(v141 + 48) = *(v117 + 32);
      *(v141 + 64) = *(v117 + 48);
      return v119;
    case 0x32u:
      v125 = type metadata accessor for Spacer;
      v110 = v200;
      sub_2169729C8(v117, v200, type metadata accessor for Spacer);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v199;
      v126 = &unk_280E2C268;
      v127 = type metadata accessor for Spacer;
      v128 = &unk_217030350;
      goto LABEL_67;
    case 0x33u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F28D0();
      goto LABEL_71;
    case 0x34u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F25B0();
      goto LABEL_71;
    case 0x35u:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CAB97E0;
      v121 = &unk_21701E200;
      v129 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v129, v130);
      v124 = &qword_280E45870;
      goto LABEL_57;
    case 0x36u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F25E0();
      goto LABEL_71;
    case 0x37u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2728();
      goto LABEL_71;
    case 0x38u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1E88();
      goto LABEL_71;
    case 0x39u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2870();
      goto LABEL_71;
    case 0x3Au:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CABB7B0;
      v121 = &qword_2170360E0;
      v139 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
      v124 = &qword_27CABE118;
      goto LABEL_57;
    case 0x3Bu:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CABB7A8;
      v121 = &qword_21705EDD0;
      v165 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v165, v166);
      v124 = &qword_280E457C0;
      goto LABEL_57;
    case 0x3Cu:
      v125 = type metadata accessor for VerticalArtworkListItem;
      v110 = v202;
      sub_2169729C8(v117, v202, type metadata accessor for VerticalArtworkListItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      *(v119 + 56) = v201;
      v126 = &unk_27CABE110;
      v127 = type metadata accessor for VerticalArtworkListItem;
      v128 = &unk_2170509A8;
LABEL_67:
      *(v119 + 64) = sub_216972A24(v126, v127, v128);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v119 + 32));
      v160 = v110;
LABEL_68:
      v161 = v125;
LABEL_69:
      sub_2169729C8(v160, boxed_opaque_existential_1, v161);
      break;
    case 0x3Du:
      OUTLINED_FUNCTION_7_47();
      sub_2169F28A0();
LABEL_71:
      v119 = v131;

      break;
    default:
      v118 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      OUTLINED_FUNCTION_5_46();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_217013DA0;
      v120 = &qword_27CABB418;
      v121 = &qword_21704BD50;
      v122 = OUTLINED_FUNCTION_8();
      *(v119 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);
      v124 = &qword_27CABE140;
LABEL_57:
      v145 = &unk_2170633A4;
LABEL_58:
      *(v119 + 64) = sub_2166D9530(v124, v120, v121, v145);
      *(v119 + 32) = v118;
      break;
  }

  return v119;
}

uint64_t sub_2169728B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedSection.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697291C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216972974()
{
  result = qword_27CABE128;
  if (!qword_27CABE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE128);
  }

  return result;
}

uint64_t sub_2169729C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216972A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216972A6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216972AC8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE148);
  __swift_project_value_buffer(v0, qword_27CABE148);
  return sub_217007C94();
}

id sub_216972B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_process] = a1;
  *&v3[OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_accounts] = a2;
  v8 = OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_bag;
  v9 = sub_21700DFD4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a3, v9);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a3, v9);
  return v11;
}

uint64_t sub_216972C3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_216685F4C(0, &qword_280E29AF8, 0x277CD4640);
  v13 = sub_21700F124();
  v14 = *(v3 + OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_process);
  v15 = *(v3 + OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_accounts);
  (*(v9 + 16))(v12, v3 + OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_bag, v7);
  v19 = a1;
  v20 = a2;
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = ObjectType;
  v16 = sub_21700F134();

  (*(v9 + 8))(v12, v7);
  return v16;
}

char *sub_216972DB4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v48 = a1;
  v49 = a7;
  v51 = a5;
  v52 = a6;
  v45 = a4;
  v56 = a2;
  v57 = a3;
  v54 = sub_21700DFD4();
  v46 = *(v54 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700E314();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v58 = sub_217005EF4();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v58);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  sub_21700D904();
  v55 = MEMORY[0x21CE9E710]();
  if (v55)
  {
    sub_217005ED4();
    if (__swift_getEnumTagSinglePayload(v13, 1, v58) == 1)
    {
      sub_2166997CC(v13, &qword_27CABA820, &unk_217018CE0);
      v20 = sub_21700E0D4();
      sub_216973E30();
      swift_allocError();
      sub_21700E0A4();
      swift_willThrow();
    }

    else
    {
      v39 = v9;
      v40 = v8;
      v21 = v14;
      v42 = *(v14 + 32);
      v22 = v58;
      v42(v19, v13, v58);
      v43 = v19;
      v44 = v21;
      (*(v21 + 16))(v16, v19, v22);
      v23 = v46;
      (*(v46 + 16))(v53, v45, v54);
      v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
      v25 = (v15 + *(v23 + 80) + v24) & ~*(v23 + 80);
      v45 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      v42(&v20[v24], v16, v58);
      (*(v23 + 32))(&v20[v25], v53, v54);
      v29 = v51;
      v28 = v52;
      *&v20[v45] = v51;
      *&v20[v41] = v28;
      v30 = &v20[v26];
      v31 = v57;
      *v30 = v56;
      v30[1] = v31;
      *&v20[v27] = v55;
      v32 = v48;
      *&v20[(v27 + 15) & 0xFFFFFFFFFFFFFFF8] = v49;
      v33 = v32;
      v34 = v29;

      sub_21700DF14();

      v35 = v50;
      v36 = v47;
      sub_21700E2F4();
      if (!v36)
      {
        v20 = sub_21700E304();

        (*(v39 + 8))(v35, v40);
        (*(v44 + 8))(v43, v58);
        return v20;
      }

      (*(v44 + 8))(v43, v58);
    }
  }

  else
  {
    v20 = "gnAttributionService";
    sub_21700E0D4();
    sub_216973E30();
    swift_allocError();
    sub_21700E0A4();
    swift_willThrow();
  }

  return v20;
}

uint64_t sub_216973330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a8;
  v55 = a3;
  v52 = a7;
  v56 = a11;
  v57 = a10;
  v59 = a9;
  v14 = sub_21700CCA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = v16;
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC0, &qword_21702DD80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - v19;
  v21 = sub_217005EF4();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, a4, v22);
  v26 = sub_21700DF34();
  v27 = objc_allocWithZone(MEMORY[0x277CEE440]);
  v28 = sub_216973FC8(v24, v26);
  MEMORY[0x21CE9F090]([v28 setClientInfo_]);
  v29 = sub_21700E264();
  if (__swift_getEnumTagSinglePayload(v20, 1, v29) == 1)
  {
    sub_2166997CC(v20, &qword_27CABACC0, &qword_21702DD80);
    v30 = 0;
  }

  else
  {
    v30 = sub_21700E254();
    (*(*(v29 - 8) + 8))(v20, v29);
  }

  [v28 setAccount_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE190, &qword_21702DD88);
  v31 = [v28 perform];
  v32 = sub_21700E234();
  v51 = *(v15 + 16);
  v52 = v32;
  v51(v17, a2, v14);
  v33 = *(v15 + 80);
  v49 = v14;
  v34 = &v53[(v33 + 16) & ~v33];
  v50 = (v33 + 16) & ~v33;
  v53 = v28;
  v35 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = *(v15 + 32);
  v38 = v17;
  v39 = v17;
  v40 = v49;
  v37(v36 + ((v33 + 16) & ~v33), v39, v49);
  v41 = v36;
  v42 = (v36 + v35);
  v43 = v55;
  v44 = v59;
  *v42 = v54;
  v42[1] = v44;
  v45 = v56;
  *(v41 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
  v51(v38, v43, v40);
  v46 = swift_allocObject();
  v37(v46 + v50, v38, v40);
  *(v46 + v35) = v45;
  v58[3] = sub_21700D904();
  v58[4] = MEMORY[0x277D22078];
  v58[0] = v57;
  sub_21700DF14();

  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

void sub_2169737A4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_217013DA0;
  v15 = [v13 redirectURL];
  if (v15)
  {
    v16 = v15;
    sub_217005E64();

    v17 = sub_217005EF4();
    v18 = 0;
  }

  else
  {
    v17 = sub_217005EF4();
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v18, 1, v17);
  sub_2166CF4DC(v9, v12);
  sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
  {
    sub_2166997CC(v12, &qword_27CABA820, &unk_217018CE0);
    *(v14 + 56) = MEMORY[0x277D837D0];
LABEL_8:
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    sub_21700DF14();
    goto LABEL_9;
  }

  v19 = sub_217005DE4();
  v21 = v20;
  (*(*(v17 - 8) + 8))(v12, v17);
  *(v14 + 56) = MEMORY[0x277D837D0];
  if (!v21)
  {
    goto LABEL_8;
  }

  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
LABEL_9:
  v22 = sub_21700CC94();
}

void sub_216973A8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_217013DA0;
  swift_getErrorValue();
  *(v1 + 56) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  v3 = sub_21700CC94();
}

uint64_t sub_216973D60(uint64_t a1)
{
  result = sub_21700DFD4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_216973E30()
{
  result = qword_27CABE188;
  if (!qword_27CABE188)
  {
    sub_21700E0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE188);
  }

  return result;
}

uint64_t sub_216973E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_217005EF4();
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = sub_21700DFD4();
  OUTLINED_FUNCTION_2(v10);
  OUTLINED_FUNCTION_26_2();
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_216973330(a1, a2, a3, v3 + v9, v3 + v13, *(v3 + v11), *(v3 + v12), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_216973FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_217005E04();
  v7 = [v3 initWithURL:v6 bag:a2];
  swift_unknownObjectRelease();

  v8 = sub_217005EF4();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

void sub_216974064(void **a1)
{
  v3 = sub_21700CCA4();
  OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_26_2();
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];

  sub_2169737A4(a1, v1 + v4, v7, v8);
}

void sub_216974100(uint64_t a1)
{
  v2 = sub_21700CCA4();
  OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_26_2();

  sub_216973A8C(a1);
}

uint64_t sub_2169741C4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v96 = a2;
  v4 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v85 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v89 = v84 - v7;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v94 = v9;
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v84[1] = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v87 = v84 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_12_34();
  v15 = _s7SectionVMa(v14);
  MEMORY[0x28223BE20](v15 - 8);
  v90 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v84[0] = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v86 = v84 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v27 = v84 - v26;
  v97 = a1;
  sub_21700CE04();
  v28 = sub_21700CDB4();
  v30 = v29;
  v88 = v19;
  v31 = v27;
  v32 = v17;
  v33 = v17;
  v34 = *(v19 + 8);
  v34(v31, v33);
  if (!v30)
  {
    v89 = v34;
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_93();
    v39 = sub_21668F060(v37, v38, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v39);
    *v40 = 0x7463757274736E69;
    v40[1] = 0xEB000000006E6F69;
    v40[2] = v4;
    OUTLINED_FUNCTION_2_12();
    (*(v41 + 104))();
    swift_willThrow();
    goto LABEL_10;
  }

  v91 = v4;
  v35 = v28 == 0x74617265704F6F6ELL && v30 == 0xEB000000006E6F69;
  if (v35 || (OUTLINED_FUNCTION_5_1(0x74617265704F6F6ELL, 0xEB000000006E6F69) & 1) != 0)
  {

    (*(v94 + 8))(v96, v95);
    v34(v97, v32);
    return swift_storeEnumTagMultiPayload();
  }

  v46 = v28 == 0x536563616C706572 && v30 == 0xEE006E6F69746365;
  v47 = v95;
  if (v46 || (OUTLINED_FUNCTION_5_1(0x536563616C706572, 0xEE006E6F69746365) & 1) != 0)
  {
    v89 = v34;

    sub_21700CE04();
    v48 = OUTLINED_FUNCTION_4_48();
    v49(v48);
    v50 = v90;
    v51 = v93;
    sub_216C26B08();
    if (!v51)
    {
      v52 = OUTLINED_FUNCTION_8_41();
      v53(v52);
      v54 = OUTLINED_FUNCTION_9_42();
      v55(v54);
      sub_216975284(v50, v92, _s7SectionVMa);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_10;
  }

  v56 = v28 == 0x5364726163736964 && v30 == 0xEE006E6F69746365;
  if (v56 || (OUTLINED_FUNCTION_5_1(0x5364726163736964, 0xEE006E6F69746365) & 1) != 0)
  {

    (*(v94 + 8))(v96, v47);
    v34(v97, v32);
    return swift_storeEnumTagMultiPayload();
  }

  v57 = v28 == 0x496563616C706572 && v30 == 0xEC000000736D6574;
  if (v57 || (OUTLINED_FUNCTION_5_1(0x496563616C706572, 0xEC000000736D6574) & 1) != 0 || (v28 == 0x7449657461647075 ? (v58 = v30 == 0xEB00000000736D65) : (v58 = 0), v58 || (OUTLINED_FUNCTION_5_1(0x7449657461647075, 0xEB00000000736D65) & 1) != 0))
  {

    v59 = OUTLINED_FUNCTION_11_36();
    v60(v59);
    v61 = v94;
    v62 = OUTLINED_FUNCTION_4_48();
    v63(v62);
    v64 = v93;
    sub_21699CE4C();
    if (v64)
    {
      v89 = v34;
      goto LABEL_10;
    }

    (*(v61 + 8))(0xEE006E6F69746365, v47);
    v34(v30, v32);
    v65 = v89;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_78();
    v67 = v65;
  }

  else
  {
    v89 = v34;
    v68 = v28 == 0x7449646E65707061 && v30 == 0xEB00000000736D65;
    if (!v68 && (OUTLINED_FUNCTION_5_1(0x7449646E65707061, 0xEB00000000736D65) & 1) == 0)
    {
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_93();
      v81 = sub_21668F060(v79, v80, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_4(v81);
      *v82 = v28;
      v82[1] = v30;
      v82[2] = v91;
      OUTLINED_FUNCTION_2_12();
      (*(v83 + 104))();
      swift_willThrow();
      goto LABEL_10;
    }

    v69 = OUTLINED_FUNCTION_11_36();
    v70(v69);
    v71 = OUTLINED_FUNCTION_4_48();
    v72(v71);
    v73 = v85;
    v74 = v93;
    sub_21699CE4C();
    if (v74)
    {
LABEL_10:
      v42 = OUTLINED_FUNCTION_8_41();
      v43(v42);
      v44 = OUTLINED_FUNCTION_9_42();
      return v45(v44);
    }

    v75 = OUTLINED_FUNCTION_8_41();
    v76(v75);
    v77 = OUTLINED_FUNCTION_9_42();
    v78(v77);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_78();
    v67 = v73;
  }

  return sub_216975284(v67, v92, v66);
}

uint64_t sub_2169749B4(uint64_t a1, char *a2)
{
  v47 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v44 = v4;
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v42 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v48 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v46 = v9;
  v23 = v9;
  v24 = v22;
  v43 = v11 + 8;
  v22(v18, v23);
  if (!v21)
  {
    v19 = 0x6F6974617265706FLL;
    v34 = 0xE90000000000006ELL;
LABEL_10:
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_93();
    v37 = sub_21668F060(v35, v36, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v37);
    *v38 = v19;
    v38[1] = v34;
    v38[2] = &type metadata for SectionChangeInstruction.InvalidationRulesChange;
    OUTLINED_FUNCTION_2_12();
    (*(v39 + 104))();
    swift_willThrow();
    (*(v44 + 8))(v47, v45);
    v24(v48, v46);
    return v19;
  }

  v25 = v19 == 6579297 && v21 == 0xE300000000000000;
  if (!v25 && (sub_21700F7D4() & 1) == 0)
  {
    v34 = v21;
    goto LABEL_10;
  }

  v26 = v47;
  v41 = v24;
  v27 = v45;
  sub_21700CE04();
  v28 = v44;
  v29 = *(v44 + 16);
  v29(v8, v26, v27);
  sub_21700CE04();
  v29(v42, v8, v27);
  sub_216AC70E4();
  v19 = v30;
  v31 = *(v28 + 8);
  v31(v8, v27);
  v32 = v46;
  v33 = v41;
  v41(v15, v46);
  v31(v26, v27);
  v33(v48, v32);
  return v19;
}

uint64_t sub_216974DB8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2169749B4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_216974DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v32 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v35 = v16;
  v36 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v31[1] = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_12_34();
  v20 = type metadata accessor for SectionChangeInstruction.Instruction(v19);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = type metadata accessor for SectionChangeInstruction(0);
  v23 = *(v31[0] + 24);
  v33 = a3;
  v24 = (a3 + v23);
  *v24 = 0;
  v24[1] = 0;
  v37 = a1;
  sub_21700CE04();
  v25 = *(v9 + 16);
  v26 = v7;
  v25(v14, a2, v7);
  v27 = v34;
  sub_2169741C4(v3, v14, v22);
  if (v27)
  {
    (*(v9 + 8))(a2, v7);
    return (*(v35 + 8))(v37, v36);
  }

  else
  {
    OUTLINED_FUNCTION_1_78();
    sub_216975284(v22, v33, v29);
    v30 = v37;
    sub_21700CE04();
    v25(v32, a2, v26);
    sub_216975230();
    sub_21700D734();
    (*(v9 + 8))(a2, v26);
    result = (*(v35 + 8))(v30, v36);
    *(v33 + *(v31[0] + 20)) = v38;
  }

  return result;
}

uint64_t sub_216975108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_2169751D8(uint64_t a1)
{
  result = sub_21668F060(qword_280E360E8, type metadata accessor for SectionChangeInstruction, &unk_21702DEB4);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216975230()
{
  result = qword_280E361A0[0];
  if (!qword_280E361A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E361A0);
  }

  return result;
}

uint64_t sub_216975284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LibraryImportWebViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2169753C8(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216975414(char a1)
{
  result = 0x577373696D736964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x72656C41776F6873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2169754D4(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 11;
  }

  else
  {
    return byte_21702E07E[a1];
  }
}

uint64_t sub_216975508(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    default:
      result = 7;
      break;
  }

  return result;
}

unint64_t sub_21697559C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2169753C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2169755CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216975414(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2169755FC()
{
  result = qword_27CABE198;
  if (!qword_27CABE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE198);
  }

  return result;
}

uint64_t sub_216975674@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2169754D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2169756A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169754F4(*v1);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicNotice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibraryImportDismissReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216975834()
{
  result = qword_27CABE1A0;
  if (!qword_27CABE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE1A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI19LibraryImportStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2169758A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2169758F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_216975954(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SearchLandingBrickLockupView(uint64_t a1)
{
  result = qword_280E31E50;
  if (!qword_280E31E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169759EC(uint64_t a1)
{
  type metadata accessor for SearchLandingBrickLockup(319);
  if (v1 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
    if (v2 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216975AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchLandingBrickLockupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1A8, &unk_21702E250);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v21 - v9);
  v11 = type metadata accessor for SearchLandingBrickLockup(0);
  sub_216681B04(v2 + *(v11 + 24), v10, &qword_27CAB6DB0, &qword_217016C00);
  v12 = v8[13];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v10 + v12, 1, 1, v13);
  sub_216976B20(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchLandingBrickLockupView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_216976B80(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SearchLandingBrickLockupView);
  v16 = v8[14];
  *(v10 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v17 = v10 + v8[15];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  v10[5] = sub_216976BE0;
  v10[6] = v15;
  v10[7] = 0;
  v10[8] = 0;
  sub_216E316D4();
  sub_21671A6A0(v10);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1B0, &qword_21702E2F8);
  v20 = a1 + *(result + 36);
  *v20 = KeyPath;
  *(v20 + 8) = 0;
  return result;
}

uint64_t sub_216975D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v83 = sub_217008B44();
  MEMORY[0x28223BE20](v83);
  v84 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v64 - v5;
  v6 = sub_21700C444();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2170090F4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  v20 = sub_217007474();
  v73 = *(v20 - 8);
  v74 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v64 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v64 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1B8, &qword_21702E300);
  v80 = *(v26 - 8);
  v81 = v26;
  MEMORY[0x28223BE20](v26);
  v76 = &v64 - v27;
  v69 = *(type metadata accessor for SearchLandingBrickLockup(0) + 40);
  sub_216681B04(a1 + v69, v16, &qword_27CAB6D60, &qword_217014E40);
  v28 = type metadata accessor for Artwork(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v28);
  v71 = v22;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v16, &qword_27CAB6D60, &qword_217014E40);
    v30 = sub_21700C4B4();
    v31 = v19;
    v32 = 1;
  }

  else
  {
    v33 = sub_21700C4B4();
    (*(*(v33 - 8) + 16))(v19, v16, v33);
    sub_216976C58(v16, type metadata accessor for Artwork);
    v31 = v19;
    v32 = 0;
    v30 = v33;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  v34 = a1 + *(type metadata accessor for SearchLandingBrickLockupView(0) + 24);
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    sub_21700ED94();
    v36 = sub_217009C34();
    v66 = v6;
    v37 = v36;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v35, 0);
    v65 = v8;
    v64 = a1;
    v38 = *(v67 + 8);
    v39 = v68;
    v38(v10, v68);

    sub_21700ED94();
    v40 = sub_217009C34();
    v6 = v66;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v35, 0);
    v38(v10, v39);
    a1 = v64;
    v8 = v65;
  }

  v41 = v71;
  sub_217007434();
  sub_216681B04(a1 + v69, v13, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v13, 1, v28) == 1)
  {
    sub_216697664(v13, &qword_27CAB6D60, &qword_217014E40);
    v42 = v78;
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v6);
    sub_21700C404();
    v43 = __swift_getEnumTagSinglePayload(v42, 1, v6);
    v44 = v82;
    v45 = v75;
    if (v43 != 1)
    {
      sub_216697664(v42, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v44 = v82;
    v46 = v78;
    (*(v82 + 16))(v78, &v13[*(v28 + 20)], v6);
    sub_216976C58(v13, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v6);
    (*(v44 + 32))(v8, v46, v6);
    v45 = v75;
  }

  v47 = v72;
  sub_2170073E4();
  (*(v44 + 8))(v8, v6);
  v48 = v74;
  v49 = *(v73 + 8);
  v49(v41, v74);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v49(v47, v48);
  v50 = *(v83 + 20);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_217009294();
  v53 = v84;
  (*(*(v52 - 8) + 104))(&v84[v50], v51, v52);
  __asm { FMOV            V0.2D, #14.0 }

  *v53 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v59 = v76;
  sub_216E2FB34();
  sub_216976C58(v53, MEMORY[0x277CDFC08]);
  (*(v77 + 8))(v45, v79);
  v60 = sub_21700B374();
  MEMORY[0x28223BE20](v60);
  *(&v64 - 2) = a1;
  sub_216CB72C8(v61, v62, sub_216976C50, v70);
  return (*(v80 + 8))(v59, v81);
}

void *sub_216976720@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SearchLandingBrickLockup(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    KeyPath = swift_getKeyPath();
    v7 = qword_280E2C360;
    sub_21700DF14();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_280E2C368;
    v9 = swift_getKeyPath();
    v28 = 0;

    v10 = sub_21700ACF4();
    v11 = swift_getKeyPath();
    v12 = sub_217009C74();
    sub_217007F24();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v29 = 0;
    v21 = sub_217009CA4();
    sub_217007F24();
    v30 = 0;
    v27[0] = v5;
    v27[1] = v4;
    LOBYTE(v27[2]) = 0;
    v27[3] = MEMORY[0x277D84F90];
    v27[4] = KeyPath;
    LOBYTE(v27[5]) = 0;
    v27[6] = v9;
    v27[7] = v8;
    v27[8] = v11;
    v27[9] = v10;
    LOBYTE(v27[10]) = v12;
    v27[11] = v14;
    v27[12] = v16;
    v27[13] = v18;
    v27[14] = v20;
    LOBYTE(v27[15]) = 0;
    LOBYTE(v27[16]) = v21;
    v27[17] = v22;
    v27[18] = v23;
    v27[19] = v24;
    v27[20] = v25;
    LOWORD(v27[21]) = 256;
    nullsub_1();
    memcpy(__dst, v27, 0xAAuLL);
  }

  else
  {
    sub_216976CB0(__dst);
  }

  return memcpy(a2, __dst, 0xAAuLL);
}

uint64_t sub_2169768CC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_79();
  sub_216976B80(v2, v4, v3);
  v5 = type metadata accessor for SearchLandingBrickLockupView(0);
  v6 = a1 + *(v5 + 20);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + *(v5 + 24);
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_216976994(uint64_t a1)
{
  result = sub_216976E30(qword_280E31E78, type metadata accessor for SearchLandingBrickLockupView, &unk_21702E190);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169769EC()
{
  v0 = sub_217009E44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009EA4();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  v4 = sub_217009E74();

  result = (*(v1 + 8))(v3, v0);
  qword_280E2C368 = v4;
  return result;
}

uint64_t sub_216976B20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216976B80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216976BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchLandingBrickLockupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216975D14(v4, a1);
}

uint64_t sub_216976C58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216976CB8()
{
  result = qword_280E2B180;
  if (!qword_280E2B180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE1B0, &qword_21702E2F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE1A8, &unk_21702E250);
    type metadata accessor for ActionButtonStyle(255);
    sub_2166D9530(&qword_280E44E00, &qword_27CABE1A8, &unk_21702E250, &unk_21702C8E0);
    sub_216976E30(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B180);
  }

  return result;
}

uint64_t sub_216976E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216976E78()
{
  v1 = OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel;
  if (*(v0 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel);
  }

  else
  {
    v2 = sub_216976F08(v0, *v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_216976F08(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1E0, &qword_21702E438);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v52 = v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1E8, &unk_21702E440);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v53 = v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F8, &qword_21702E450);
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE200, &qword_21702E458);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE208, qword_21702E460);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v45 - v23;
  v25 = sub_217007814();
  v51 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  sub_216978224();
  sub_217007804();
  sub_216697664(v24, &qword_27CABE208, qword_21702E460);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v25);
  sub_216978278(v21, v24);
  v26 = a1;
  v47 = a1;
  v27 = *(a1 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_account);
  v28 = *(a1 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_clientOptions);
  v29 = *(v26 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_metricsOverlay);
  sub_2169782E8(v24, v21);
  sub_2170077A4();
  swift_allocObject();
  v30 = v29;
  v31 = v27;
  v32 = v28;
  v33 = sub_217007794();

  sub_217007604();
  sub_2166AF2EC();
  v34 = sub_21700EE84();
  v59 = v34;
  v46 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v46);
  v35 = MEMORY[0x277CBCEC8];
  sub_2166D9530(&unk_27CABE220, &qword_27CABE1F8, &qword_21702E450, MEMORY[0x277CBCEC8]);
  v45[1] = sub_2166C0E74();
  sub_217007E54();
  v36 = v11;
  sub_216697664(v11, &qword_27CABE1F0, &qword_217023920);

  (*(v48 + 8))(v14, v12);
  *(swift_allocObject() + 16) = v58;
  v48 = MEMORY[0x277CBCD60];
  sub_2166D9530(&qword_27CABE230, &qword_27CABE200, &qword_21702E458, MEMORY[0x277CBCD60]);
  v37 = v49;
  sub_217007E84();

  (*(v50 + 8))(v18, v37);
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  v38 = v52;
  sub_2170075F4();

  v39 = sub_21700EE84();
  v59 = v39;
  v40 = v36;
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v46);
  sub_2166D9530(&qword_27CABE238, &qword_27CABE1E0, &qword_21702E438, v35);
  v42 = v53;
  v41 = v54;
  sub_217007E54();
  sub_216697664(v40, &qword_27CABE1F0, &qword_217023920);

  (*(v55 + 8))(v38, v41);
  *(swift_allocObject() + 16) = v58;
  sub_2166D9530(&qword_27CABE240, &qword_27CABE1E8, &unk_21702E440, v48);
  v43 = v56;
  sub_217007E84();

  (*(v57 + 8))(v42, v43);
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  sub_216697664(v51, &qword_27CABE208, qword_21702E460);
  return v33;
}

uint64_t sub_2169776BC@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 32))
  {
    v5 = [a1 view];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *a3;
    v9 = *(a3 + 8);
    v11 = *(a3 + 16);
    v13 = *(a3 + 24);
  }

  type metadata accessor for MarketingAlbumArtworkGridModel();
  swift_allocObject();
  v14 = sub_21700DF14();
  result = sub_216A39FE4(v14, v7, v9, v11, v13);
  *a4 = result;
  return result;
}

void sub_216977780(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 255)
  {
    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v12 = sub_217007CA4();
    __swift_project_value_buffer(v12, qword_27CABE1C0);
    oslog = sub_217007C84();
    v13 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_216679000, oslog, v13, "Result nil", v14, 2u);
    v15 = v14;
  }

  else
  {
    v2 = *a1;
    if (v1)
    {
      if (qword_27CAB5AE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_27CABE1C0);
      sub_21671A778(v2);
      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v22 = v7;
        *v6 = 136446210;
        swift_getErrorValue();
        v8 = sub_21700F884();
        v10 = v9;
        sub_21671A784(v2, v1);
        v11 = sub_2166A85FC(v8, v10, &v22);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_216679000, v4, v5, "Result failure: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x21CEA1440](v7, -1, -1);
        MEMORY[0x21CEA1440](v6, -1, -1);

        return;
      }

      goto LABEL_23;
    }

    v16 = [objc_opt_self() defaultCenter];
    if (qword_280E29C48 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:qword_280E29C50 object:0];

    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v17 = sub_217007CA4();
    __swift_project_value_buffer(v17, qword_27CABE1C0);
    sub_21671A778(v2);
    oslog = sub_217007C84();
    v18 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v18))
    {

LABEL_23:

      sub_21671A784(v2, v1);
      return;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138739971;
    *(v19 + 4) = v2;
    *v20 = v2;
    _os_log_impl(&dword_216679000, oslog, v18, "Result success: %{sensitive}@", v19, 0xCu);
    sub_216697664(v20, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v20, -1, -1);
    v15 = v19;
  }

  MEMORY[0x21CEA1440](v15, -1, -1);
LABEL_18:
}

void sub_216977BA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 255)
  {
    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v12 = sub_217007CA4();
    __swift_project_value_buffer(v12, qword_27CABE1C0);
    oslog = sub_217007C84();
    v13 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_216679000, oslog, v13, "Carrier Link nil", v14, 2u);
    v15 = v14;
  }

  else
  {
    v2 = *a1;
    if (v1)
    {
      if (qword_27CAB5AE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_27CABE1C0);
      sub_21671A778(v2);
      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v22 = v7;
        *v6 = 136446210;
        swift_getErrorValue();
        v8 = sub_21700F884();
        v10 = v9;
        sub_21671A784(v2, v1);
        v11 = sub_2166A85FC(v8, v10, &v22);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_216679000, v4, v5, "Carrier Link failure: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x21CEA1440](v7, -1, -1);
        MEMORY[0x21CEA1440](v6, -1, -1);

        return;
      }

      goto LABEL_23;
    }

    v16 = [objc_opt_self() defaultCenter];
    if (qword_280E29C48 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:qword_280E29C50 object:0];

    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v17 = sub_217007CA4();
    __swift_project_value_buffer(v17, qword_27CABE1C0);
    sub_21671A778(v2);
    oslog = sub_217007C84();
    v18 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v18))
    {

LABEL_23:

      sub_21671A784(v2, v1);
      return;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138739971;
    *(v19 + 4) = v2;
    *v20 = v2;
    _os_log_impl(&dword_216679000, oslog, v18, "Carrier Link success: %{sensitive}@", v19, 0xCu);
    sub_216697664(v20, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v20, -1, -1);
    v15 = v19;
  }

  MEMORY[0x21CEA1440](v15, -1, -1);
LABEL_18:
}

uint64_t sub_216977FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel) = 0;
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v5 + 16) = a1;
  v10 = OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url;
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v11 + 32))(v5 + v10, a2);
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_account) = a3;
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_clientOptions) = a4;
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_metricsOverlay) = a5;
  return v5;
}

uint64_t sub_216978094()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE1C0);
  __swift_project_value_buffer(v0, qword_27CABE1C0);
  return sub_217007C94();
}

uint64_t sub_216978114()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url;
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2169781C4()
{
  sub_216978114();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_216978224()
{
  result = qword_27CABE210;
  if (!qword_27CABE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE210);
  }

  return result;
}

uint64_t sub_216978278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE208, qword_21702E460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169782E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE208, qword_21702E460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697842C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = (v6 - v5);
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = type metadata accessor for FlowAction(0);
  sub_21697A49C(v1 + *(v12 + 20), v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
      OUTLINED_FUNCTION_3_68(v24);
      sub_2168ED900(v11, v7);
      v25 = *v7;
      if (v25 != 14 && v25 != 4)
      {
        v16 = type metadata accessor for ContentDescriptor;
        v17 = v7;
        goto LABEL_4;
      }

      v27 = v7;
      goto LABEL_24;
    case 4:
      v27 = v11;
LABEL_24:
      sub_2168ED900(v27, a1);
      v14 = 0;
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v3);
    case 6:
      sub_21700C084();
      goto LABEL_20;
    case 13:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0);
      OUTLINED_FUNCTION_3_68(v29);
      goto LABEL_19;
    case 14:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000);
      OUTLINED_FUNCTION_3_68(v19);
      goto LABEL_7;
    case 15:
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v21 + 8))(v11 + v20);
      v15 = type metadata accessor for ContentDescriptor;
      goto LABEL_3;
    case 16:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050);
      sub_2166997CC(v11 + *(v28 + 48), &qword_27CAB6AE8, qword_217014050);
LABEL_19:
      sub_21700C1E4();
      goto LABEL_20;
    case 17:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0);
      sub_2166997CC(v11 + *(v18 + 48), qword_27CAB6AF0, &unk_21701D840);
LABEL_7:
      sub_21700C924();
LABEL_20:
      OUTLINED_FUNCTION_9_0();
      (*(v30 + 8))(v11);
      goto LABEL_21;
    case 19:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v3);
    case 24:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v23 + 8))(v11 + v22);
      goto LABEL_21;
    default:
      v15 = type metadata accessor for FlowAction.Destination;
LABEL_3:
      v16 = v15;
      v17 = v11;
LABEL_4:
      sub_21697A500(v17, v16);
LABEL_21:
      v14 = 1;
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v3);
  }
}

uint64_t sub_21697873C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = *(type metadata accessor for FlowAction(0) + 20);
  sub_21697A49C(v2 + v9, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      if (*(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010) + 48) + 8))
      {
        v12 = sub_21700BA64();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      sub_2169798F8(a1, v12, v14, a2);

      v11 = type metadata accessor for ContentDescriptor;
      return sub_21697A500(v8, v11);
    case 4u:
      sub_216978AD8(a1, a2);
      v11 = type metadata accessor for FlowAction.Destination;
      return sub_21697A500(v8, v11);
    case 6u:
      sub_21700C084();
      goto LABEL_16;
    case 0xDu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0);

      goto LABEL_10;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000);

      goto LABEL_13;
    case 0xFu:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v8 + v19);
      v10 = type metadata accessor for ContentDescriptor;
      goto LABEL_3;
    case 0x10u:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050);
      sub_2166997CC(v8 + *(v16 + 48), &qword_27CAB6AE8, qword_217014050);
LABEL_10:
      sub_21700C1E4();
      goto LABEL_16;
    case 0x11u:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0);
      sub_2166997CC(v8 + *(v15 + 48), qword_27CAB6AF0, &unk_21701D840);
LABEL_13:
      sub_21700C924();
LABEL_16:
      OUTLINED_FUNCTION_9_0();
      (*(v21 + 8))(v8);
      break;
    case 0x13u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
      break;
    case 0x18u:

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v18 + 8))(v8 + v17);
      break;
    default:
      v10 = type metadata accessor for FlowAction.Destination;
LABEL_3:
      sub_21697A500(v8, v10);
      break;
  }

  type metadata accessor for FlowActionMappingError(0);
  sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError, &unk_21702E4E8);
  swift_allocError();
  sub_21697A49C(v2 + v9, v22);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_216978AD8@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v107 = a2;
  v111 = a1;
  v103 = sub_21700C734();
  v100 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700C924();
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v114 = &v98 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v98 - v9;
  v108 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v108);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_21700D284();
  v12 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21700C1E4();
  v15 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2170067A4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v19 + 16);
  v106(v22, v111, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 != *MEMORY[0x277D2A400])
  {
    v109 = v14;
    v99 = v11;
    v43 = v12;
    v44 = v116;
    v45 = v110;
    if (v23 != *MEMORY[0x277D2A418] && v23 != *MEMORY[0x277D2A438] && v23 != *MEMORY[0x277D2A3C8] && v23 != *MEMORY[0x277D2A428] && v23 != *MEMORY[0x277D2A388] && v23 != *MEMORY[0x277D2A408] && v23 != *MEMORY[0x277D2A3B0] && v23 != *MEMORY[0x277D2A3B8])
    {
      if (v23 == *MEMORY[0x277D2A440])
      {
        (*(v19 + 96))(v22, v18);
        v55 = v102;
        v56 = v104;
        v57 = v22;
        v58 = v105;
        (*(v102 + 32))(v104, v57, v105);
        v98 = v43;
        v106 = *(v43 + 16);
        v59 = v45;
        (v106)(v109, v45, v44);
        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0) + 48);
        v61 = v99;
        (*(v55 + 16))(v99, v56, v58);
        v62 = sub_21700C8E4();
        __swift_storeEnumTagSinglePayload(v61 + v60, 1, 1, v62);
        swift_storeEnumTagMultiPayload();
        v63 = type metadata accessor for FlowAction(0);
        v64 = (v59 + v63[6]);
        v65 = v64[1];
        v111 = *v64;
        sub_2166A6E54(v59 + v63[10], v115, &qword_27CABF7B0, &qword_217016E20);
        v66 = sub_217005EF4();
        __swift_storeEnumTagSinglePayload(v112, 1, 1, v66);
        v67 = type metadata accessor for Page.Header(0);
        __swift_storeEnumTagSinglePayload(v113, 1, 1, v67);
        sub_2166A6E54(v59 + v63[9], v114, &qword_27CAB6FD0, &qword_21701D5F0);
        v68 = v107;
        v69 = &v107[v63[10]];
        *(v69 + 32) = 0;
        *v69 = 0u;
        *(v69 + 16) = 0u;
        v70 = v109;
        v71 = v116;
        (v106)(v68, v109, v116);
        sub_21697A49C(v61, &v68[v63[5]]);
        sub_21700DF14();
        sub_21697A500(v61, type metadata accessor for FlowAction.Destination);
        (*(v98 + 8))(v70, v71);
        (*(v55 + 8))(v104, v105);
        v72 = &v68[v63[6]];
        *v72 = v111;
        v72[1] = v65;
LABEL_31:
        v68[v63[7]] = 0;
        sub_2167A66B4(v115, v69);
        sub_21678818C(v112, &v68[v63[8]], &qword_27CABA820, &unk_217018CE0);
        sub_21678818C(v113, &v68[v63[11]], &qword_27CAB6BF0, &unk_217015620);
        v42 = &v68[v63[9]];
        return sub_21678818C(v114, v42, &qword_27CAB6FD0, &qword_21701D5F0);
      }

      if (v23 == *MEMORY[0x277D2A3E8])
      {
        (*(v19 + 96))(v22, v18);
        v74 = v100;
        v73 = v101;
        v75 = v22;
        v76 = v103;
        (*(v100 + 32))(v101, v75, v103);
        v106 = *(v43 + 16);
        (v106)(v109, v45, v44);
        v77 = v99;
        (*(v74 + 16))(v99, v73, v76);
        swift_storeEnumTagMultiPayload();
        v78 = v45;
        v63 = type metadata accessor for FlowAction(0);
        v79 = (v78 + v63[6]);
        v81 = *v79;
        v80 = v79[1];
        v111 = v81;
        v108 = v80;
        sub_2166A6E54(v78 + v63[10], v115, &qword_27CABF7B0, &qword_217016E20);
        v82 = sub_217005EF4();
        __swift_storeEnumTagSinglePayload(v112, 1, 1, v82);
        v83 = type metadata accessor for Page.Header(0);
        __swift_storeEnumTagSinglePayload(v113, 1, 1, v83);
        sub_2166A6E54(v78 + v63[9], v114, &qword_27CAB6FD0, &qword_21701D5F0);
        v68 = v107;
        v69 = &v107[v63[10]];
        *(v69 + 32) = 0;
        *v69 = 0u;
        *(v69 + 16) = 0u;
        v84 = v109;
        (v106)(v68, v109, v44);
        sub_21697A49C(v77, &v68[v63[5]]);
        v85 = v108;
        sub_21700DF14();
        sub_21697A500(v77, type metadata accessor for FlowAction.Destination);
        (*(v43 + 8))(v84, v44);
        (*(v74 + 8))(v101, v103);
        v86 = &v68[v63[6]];
        *v86 = v111;
        v86[1] = v85;
        goto LABEL_31;
      }

      if (v23 != *MEMORY[0x277D2A450] && v23 != *MEMORY[0x277D2A3C0] && v23 != *MEMORY[0x277D2A3D0] && v23 != *MEMORY[0x277D2A3F8] && v23 != *MEMORY[0x277D2A430] && v23 != *MEMORY[0x277D2A458] && v23 != *MEMORY[0x277D2A448] && v23 != *MEMORY[0x277D2A420] && v23 != *MEMORY[0x277D2A3D8] && v23 != *MEMORY[0x277D2A3E0] && v23 != *MEMORY[0x277D2A410])
      {
        type metadata accessor for FlowActionMappingError(0);
        sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError, &unk_21702E4E8);
        swift_allocError();
        (v106)(v97, v111, v18);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (*(v19 + 8))(v22, v18);
      }
    }

    (*(v19 + 8))(v22, v18);
    type metadata accessor for FlowActionMappingError(0);
    sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError, &unk_21702E4E8);
    swift_allocError();
    (v106)(v53, v111, v18);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v19 + 96))(v22, v18);
  v24 = *(v15 + 32);
  v25 = v17;
  v99 = v17;
  v26 = v22;
  v27 = v109;
  v24(v17, v26, v109);
  v111 = *(v12 + 16);
  v28 = v110;
  v111(v14, v110, v116);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050) + 48);
  (*(v15 + 16))(v11, v25, v27);
  v30 = sub_21700C2F4();
  __swift_storeEnumTagSinglePayload(&v11[v29], 1, 1, v30);
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for FlowAction(0);
  v32 = (v28 + v31[6]);
  v34 = *v32;
  v33 = v32[1];
  v108 = v34;
  v106 = v33;
  sub_2166A6E54(v28 + v31[10], v115, &qword_27CABF7B0, &qword_217016E20);
  v35 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(v112, 1, 1, v35);
  v36 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v36);
  sub_2166A6E54(v28 + v31[9], v114, &qword_27CAB6FD0, &qword_21701D5F0);
  v37 = v107;
  v38 = &v107[v31[10]];
  *(v38 + 32) = 0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  v39 = v116;
  v111(v37, v14, v116);
  sub_21697A49C(v11, &v37[v31[5]]);
  v40 = v106;
  sub_21700DF14();
  sub_21697A500(v11, type metadata accessor for FlowAction.Destination);
  (*(v12 + 8))(v14, v39);
  (*(v15 + 8))(v99, v109);
  v41 = &v37[v31[6]];
  *v41 = v108;
  v41[1] = v40;
  v37[v31[7]] = 0;
  sub_2167A66B4(v115, v38);
  sub_21678818C(v112, &v37[v31[8]], &qword_27CABA820, &unk_217018CE0);
  sub_21678818C(v113, &v37[v31[11]], &qword_27CAB6BF0, &unk_217015620);
  v42 = &v37[v31[9]];
  return sub_21678818C(v114, v42, &qword_27CAB6FD0, &qword_21701D5F0);
}

uint64_t sub_2169798F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v94 = a4;
  v97 = a3;
  v93 = a2;
  v101 = a1;
  v92 = sub_21700C924();
  v90 = *(v92 - 1);
  MEMORY[0x28223BE20](v92);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v5 - 8);
  v98 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v86 - v10;
  v11 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_21700D284();
  v104 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700C1E4();
  v16 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2170067A4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(v20 + 16);
  v91(v23, v101, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == *MEMORY[0x277D2A400])
  {
    (*(v20 + 96))(v23, v19);
    v25 = *(v16 + 32);
    v88 = v15;
    v87 = v18;
    v26 = v23;
    v27 = v95;
    v25(v18, v26, v95);
    v92 = *(v104 + 16);
    v28 = v96;
    v92(v15, v96, v102);
    v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0) + 48)];
    (*(v16 + 16))(v13, v18, v27);
    v30 = v97;
    *v29 = v93;
    v29[1] = v30;
    swift_storeEnumTagMultiPayload();
    v31 = type metadata accessor for FlowAction(0);
    v32 = (v28 + v31[6]);
    v33 = v32[1];
    v101 = *v32;
    sub_2166A6E54(v28 + v31[10], v103, &qword_27CABF7B0, &qword_217016E20);
    v34 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v34);
    v35 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v35);
    sub_2166A6E54(v28 + v31[9], v98, &qword_27CAB6FD0, &qword_21701D5F0);
    v36 = v94;
    v37 = &v94[v31[10]];
    *(v37 + 32) = 0;
    *v37 = 0u;
    *(v37 + 16) = 0u;
    v38 = v88;
    v39 = v102;
    v92(v36, v88, v102);
    sub_21697A49C(v13, &v36[v31[5]]);
    sub_21700DF14();
    sub_21700DF14();
    sub_21697A500(v13, type metadata accessor for FlowAction.Destination);
    (*(v104 + 8))(v38, v39);
    (*(v16 + 8))(v87, v95);
    v40 = &v36[v31[6]];
    *v40 = v101;
    v40[1] = v33;
    v36[v31[7]] = 0;
    sub_2167A66B4(v103, v37);
    sub_21678818C(v99, &v36[v31[8]], &qword_27CABA820, &unk_217018CE0);
    sub_21678818C(v100, &v36[v31[11]], &qword_27CAB6BF0, &unk_217015620);
    v41 = &v36[v31[9]];
    v42 = v98;
    return sub_21678818C(v42, v41, &qword_27CAB6FD0, &qword_21701D5F0);
  }

  v95 = v11;
  v44 = v13;
  v45 = v104;
  v46 = v102;
  v47 = v96;
  if (v24 == *MEMORY[0x277D2A418] || v24 == *MEMORY[0x277D2A438] || v24 == *MEMORY[0x277D2A3C8] || v24 == *MEMORY[0x277D2A428] || v24 == *MEMORY[0x277D2A388] || v24 == *MEMORY[0x277D2A408] || v24 == *MEMORY[0x277D2A3B0] || v24 == *MEMORY[0x277D2A3B8])
  {
    goto LABEL_27;
  }

  if (v24 == *MEMORY[0x277D2A440])
  {
    (*(v20 + 96))(v23, v19);
    v57 = v89;
    v56 = v90;
    (*(v90 + 32))(v89, v23, v92);
    v58 = *(v45 + 16);
    v87 = (v45 + 16);
    v91 = v58;
    v88 = v15;
    v59 = v47;
    v60 = v47;
    v61 = v46;
    (v58)(v15, v60, v46);
    v62 = v44;
    v63 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000) + 48)];
    (*(v56 + 16))(v44, v57, v92);
    v64 = v97;
    *v63 = v93;
    v63[1] = v64;
    swift_storeEnumTagMultiPayload();
    v65 = type metadata accessor for FlowAction(0);
    v66 = (v59 + v65[6]);
    v67 = v66[1];
    v101 = *v66;
    sub_2166A6E54(v59 + v65[10], v103, &qword_27CABF7B0, &qword_217016E20);
    v68 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v68);
    v69 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v69);
    v70 = v98;
    sub_2166A6E54(v59 + v65[9], v98, &qword_27CAB6FD0, &qword_21701D5F0);
    v71 = v94;
    v72 = &v94[v65[10]];
    *(v72 + 32) = 0;
    *v72 = 0u;
    *(v72 + 16) = 0u;
    v73 = v88;
    (v91)(v71, v88, v61);
    sub_21697A49C(v62, &v71[v65[5]]);
    sub_21700DF14();
    sub_21700DF14();
    sub_21697A500(v62, type metadata accessor for FlowAction.Destination);
    (*(v104 + 8))(v73, v61);
    (*(v90 + 8))(v89, v92);
    v74 = &v71[v65[6]];
    *v74 = v101;
    v74[1] = v67;
    v71[v65[7]] = 0;
    sub_2167A66B4(v103, v72);
    sub_21678818C(v99, &v71[v65[8]], &qword_27CABA820, &unk_217018CE0);
    sub_21678818C(v100, &v71[v65[11]], &qword_27CAB6BF0, &unk_217015620);
    v41 = &v71[v65[9]];
    v42 = v70;
    return sub_21678818C(v42, v41, &qword_27CAB6FD0, &qword_21701D5F0);
  }

  v75 = v24 == *MEMORY[0x277D2A450] || v24 == *MEMORY[0x277D2A3C0];
  v76 = v75 || v24 == *MEMORY[0x277D2A3D0];
  v77 = v76 || v24 == *MEMORY[0x277D2A3F8];
  v78 = v77 || v24 == *MEMORY[0x277D2A430];
  v79 = v78 || v24 == *MEMORY[0x277D2A458];
  v80 = v79 || v24 == *MEMORY[0x277D2A448];
  v81 = v80 || v24 == *MEMORY[0x277D2A420];
  v82 = v81 || v24 == *MEMORY[0x277D2A3D8];
  v83 = v82 || v24 == *MEMORY[0x277D2A3E0];
  if (v83 || v24 == *MEMORY[0x277D2A410])
  {
LABEL_27:
    (*(v20 + 8))(v23, v19);
    type metadata accessor for FlowActionMappingError(0);
    sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError, &unk_21702E4E8);
    swift_allocError();
    (v91)(v55, v101, v19);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for FlowActionMappingError(0);
    sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError, &unk_21702E4E8);
    swift_allocError();
    (v91)(v85, v101, v19);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_21697A49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697A500(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for FlowActionMappingError(uint64_t a1)
{
  result = qword_27CABE250;
  if (!qword_27CABE250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21697A5A0(uint64_t a1)
{
  result = type metadata accessor for FlowAction.Destination(319);
  if (v2 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *BannerView.init(banner:)()
{
  v1 = v0;
  v2 = sub_217007754();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_280E73D20);
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2166A85FC(0x6E61622874696E69, 0xED0000293A72656ELL, &v17);
    _os_log_impl(&dword_216679000, v4, v5, "💬 %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x21CEA1440](v7, -1, -1);
    MEMORY[0x21CEA1440](v6, -1, -1);
  }

  sub_217007744();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE260, &unk_21702E528));
  *&v1[OBJC_IVAR____TtC7MusicUI10BannerView_contentView] = sub_2170087C4();
  v9 = type metadata accessor for BannerView();
  v18.receiver = v1;
  v18.super_class = v9;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC7MusicUI10BannerView_contentView;
  v12 = *&v10[OBJC_IVAR____TtC7MusicUI10BannerView_contentView];
  v13 = v10;
  [v13 addSubview_];
  v14 = *&v10[v11];
  [v13 bounds];
  [v14 setFrame_];

  v15 = *&v10[v11];
  [v15 setAutoresizingMask_];

  return v13;
}

void sub_21697AA6C(void *a1)
{
  v2 = v1;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73D20);
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_2166A85FC(0x654372656E6E6162, 0xEE00776569566C6CLL, &v16);
    _os_log_impl(&dword_216679000, v5, v6, "💬 %{public}s: trying to set bannerCellView", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  [a1 removeFromSuperview];
  v9 = *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView];
  if (v9)
  {
    v10 = v9;
    v11 = sub_217007C84();
    v12 = sub_21700EDA4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x654372656E6E6162, 0xEE00776569566C6CLL, &v16);
      _os_log_impl(&dword_216679000, v11, v12, "💬 %{public}s: adding bannerCellView", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v15 = [v2 contentView];
    [v15 addSubview_];
  }
}

void sub_21697AD14(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView);
  *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView) = a1;
  v2 = a1;
  sub_21697AA6C(v3);
}

uint64_t sub_21697AD74(uint64_t result)
{
  if (!*(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner))
  {
    return result;
  }

  if (result)
  {
    type metadata accessor for BannerProvider.Banner();
    swift_retain_n();
    v2 = static BannerProvider.Banner.== infix(_:_:)();

    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_2170076B4();

  v3 = objc_allocWithZone(type metadata accessor for BannerView());

  v4 = BannerView.init(banner:)();
  sub_21697AD14(v4);
LABEL_8:
}

uint64_t sub_21697AE54(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner);
  *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner) = a1;

  sub_21697AD74(v2);
}

uint64_t sub_21697AEB4()
{

  return sub_21697AE54(v0);
}

void *sub_21697AEDC(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    [v5 setNeedsLayout];
    [v4 bounds];
    Width = CGRectGetWidth(v19);
    v7 = OUTLINED_FUNCTION_5_47();
    [v7 layoutMargins];
    v9 = v8;

    v10 = Width - v9;
    v11 = OUTLINED_FUNCTION_5_47();
    [v11 layoutMargins];
    v13 = v12;

    [v5 sizeThatFits_];
    v14 = OUTLINED_FUNCTION_5_47();
    [v14 layoutMargins];

    v15 = OUTLINED_FUNCTION_5_47();
    OUTLINED_FUNCTION_2_62(v15);

    [a1 frame];
    [a1 setFrame_];
    v16 = a1;
  }

  else
  {
    v17 = a1;
  }

  return a1;
}

void sub_21697B094()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for BannerCell();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView;
  v2 = *&v0[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView];
  if (v2)
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_1_80();
    [v4 bounds];

    v5 = OUTLINED_FUNCTION_0_94();
    [v6 v7];

    v8 = *&v0[v1];
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_1_80();
      [v10 layoutMargins];

      v11 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v11);

      [v0 bounds];
      CGRectGetWidth(v20);
      v12 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v12);

      v13 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v13);

      [v0 bounds];
      CGRectGetHeight(v21);
      v14 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v14);

      v15 = OUTLINED_FUNCTION_1_80();
      [v15 layoutMargins];

      v16 = OUTLINED_FUNCTION_0_94();
      [v17 v18];
    }
  }
}

id BannerCell.init(frame:)()
{
  OUTLINED_FUNCTION_4_15();
  *(v0 + OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView) = 0;
  *(v0 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner) = 0;
  v5 = type metadata accessor for BannerCell();
  v1 = OUTLINED_FUNCTION_3_13();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id BannerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BannerCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView] = 0;
  *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_banner] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BannerCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_21697B430(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21697B5C0(uint64_t a1)
{
  result = type metadata accessor for TextListComponentModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21697B648@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE290, &qword_21702E600);
  return sub_21697B698(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_21697B698@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE298, &qword_21702E608);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v39 = &v31[-v5];
  v6 = type metadata accessor for TextListComponentModel(0);
  v37 = a1;
  v7 = qword_27CAB5AF0;
  sub_21700DF14();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_21700A094();
  v10 = v9;
  v12 = v11;

  if (qword_27CAB5AF8 != -1)
  {
    swift_once();
  }

  v13 = sub_217009FA4();
  v33 = v14;
  v34 = v13;
  v15 = v14;
  v17 = v16;
  v35 = v18;
  sub_21678817C(v8, v10, v12 & 1);

  sub_21700B3C4();
  sub_217008BB4();
  v19 = v17 & 1;
  v49[128] = v17 & 1;
  v32 = v17 & 1;
  v45[0] = *(v37 + *(v6 + 28));
  swift_getKeyPath();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2A0, &unk_217040220);
  type metadata accessor for TextListView.Subsection(0);
  sub_2166D9530(&qword_27CABE2A8, &qword_27CABE2A0, &unk_217040220, MEMORY[0x277D83980]);
  sub_21697CE20(&qword_27CABE2B0, type metadata accessor for TextListView.Subsection, &unk_21702E6C0);
  v20 = v39;
  sub_21700B154();
  v21 = v38;
  v22 = *(v38 + 16);
  v23 = v40;
  v24 = v36;
  v22(v40, v20, v36);
  v44[0] = v13;
  v44[1] = v15;
  LOBYTE(v44[2]) = v19;
  *(&v44[2] + 1) = *v43;
  HIDWORD(v44[2]) = *&v43[3];
  v25 = v21;
  v26 = v35;
  v44[3] = v35;
  memcpy(&v44[4], v42, 0x70uLL);
  v27 = v41;
  memcpy(v41, v44, 0x90uLL);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2B8, &qword_21702E638);
  v22(&v27[*(v28 + 48)], v23, v24);
  sub_216681B64(v44, v45, &qword_27CABE2C0, &qword_21702E640);
  v29 = *(v25 + 8);
  v29(v20, v24);
  v29(v23, v24);
  v45[0] = v34;
  v45[1] = v33;
  v46 = v32;
  *v47 = *v43;
  *&v47[3] = *&v43[3];
  v48 = v26;
  memcpy(v49, v42, 0x70uLL);
  return sub_21669987C(v45, &qword_27CABE2C0, &qword_21702E640);
}

double sub_21697BB3C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for TextListView.Subsection(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + v8[6]);
  *v10 = v4;
  v10[1] = v3;
  *(a2 + v8[7]) = v7;
  v11 = (a2 + v8[8]);
  *v11 = v6;
  v11[1] = v5;
  sub_21700DF14();

  sub_21700DF14();
  return result;
}

void *sub_21697BC34@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TextListView.Subsection(0);
  v3 = (v1 + v2[6]);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v1 + v2[7]);
  v7 = (v1 + v2[8]);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_21700DF14();
  v11 = sub_21700AD34();
  if (sub_21697C0B0())
  {
    v55[0] = v9;
    v55[1] = v8;
    v55[2] = 0;
    v55[3] = v10;
    v55[4] = v11;
    v12 = OUTLINED_FUNCTION_0_95();
    sub_2167770D0(v12, v13, v14, v10);

    sub_21697C580(v5, v4, v6, v55, v56);
    v15 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v15, v16, v17, v10);

    v18 = sub_217009D54();
    KeyPath = swift_getKeyPath();
    sub_21700B3C4();
    OUTLINED_FUNCTION_3_69();
    __src[0] = v56[0];
    __src[1] = v56[1];
    __src[2] = v56[2];
    __src[3] = v56[3];
    *&__src[4] = KeyPath;
    *(&__src[4] + 1) = v18;
    memcpy(__dst, __src, 0xC0uLL);
    sub_21697D368(__dst);
    memcpy(v57, __dst, 0x159uLL);
    v20 = &qword_21702E750;
    sub_216681B64(__src, v49, &qword_27CABE2F8, &qword_21702E750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F8, &qword_21702E750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F0, &qword_21702E748);
    OUTLINED_FUNCTION_2_63();
    sub_21697D200(v21, &qword_27CABE2F8, &qword_21702E750, v22);
    OUTLINED_FUNCTION_1_81();
    sub_21697D200(v23, &qword_27CABE2F0, &qword_21702E748, v24);
    OUTLINED_FUNCTION_4_49();
    sub_217009554();
    v25 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v25, v26, v27, v10);

    v28 = &qword_27CABE2F8;
  }

  else
  {
    v29 = sub_217009184();
    v52[0] = v9;
    v52[1] = v8;
    v52[2] = 0;
    v52[3] = v10;
    v52[4] = v11;
    v54 = 1;
    v30 = OUTLINED_FUNCTION_0_95();
    sub_2167770D0(v30, v31, v32, v10);

    sub_21697C648(v5, v4, v6, v52, v57);
    memcpy(v55, v57, sizeof(v55));
    memcpy(v56, v57, sizeof(v56));
    v47 = v10;
    sub_216681B64(v55, __dst, &qword_27CABE2E8, &qword_21702E710);
    sub_21669987C(v56, &qword_27CABE2E8, &qword_21702E710);
    v33 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v33, v34, v35, v10);

    memcpy(&v53[7], v55, 0xC0uLL);
    v36 = v54;
    v37 = sub_217009D54();
    v38 = swift_getKeyPath();
    sub_21700B3C4();
    OUTLINED_FUNCTION_3_69();
    __src[0] = v29;
    LOBYTE(__src[1]) = v36;
    memcpy(&__src[1] + 1, v53, 0xC7uLL);
    *(&__src[13] + 1) = v38;
    *&__src[14] = v37;
    memcpy(__dst, __src, 0x158uLL);
    sub_21697D08C(__dst);
    memcpy(v57, __dst, 0x159uLL);
    v20 = &qword_21702E748;
    sub_216681B64(__src, v49, &qword_27CABE2F0, &qword_21702E748);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F8, &qword_21702E750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F0, &qword_21702E748);
    OUTLINED_FUNCTION_2_63();
    sub_21697D200(v39, &qword_27CABE2F8, &qword_21702E750, v40);
    OUTLINED_FUNCTION_1_81();
    sub_21697D200(v41, &qword_27CABE2F0, &qword_21702E748, v42);
    OUTLINED_FUNCTION_4_49();
    sub_217009554();
    v43 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v43, v44, v45, v47);

    v28 = &qword_27CABE2F0;
  }

  sub_21669987C(__src, v28, v20);
  memcpy(v57, v49, 0x159uLL);
  return memcpy(a1, v57, 0x159uLL);
}

uint64_t sub_21697C0B0()
{
  v0 = sub_2170098A4();
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = sub_217008844();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216C0C570(v17, v18, v19, v20, v21, v22, v23, v24, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v25 = sub_217008834();
  (*(v14 + 8))(v16, v13);
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for TextListView.Subsection(0);
  sub_216C0C900();
  v26 = v36;
  (*(v36 + 104))(v9, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v0);
  v27 = *(v2 + 48);
  sub_216681B64(v12, v4, &qword_27CAB8600, &qword_217020AD0);
  sub_216681B64(v9, &v4[v27], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) != 1)
  {
    v29 = v35;
    sub_216681B64(v4, v35, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v4[v27], 1, v0) != 1)
    {
      v31 = v34;
      (*(v26 + 32))(v34, &v4[v27], v0);
      sub_21697CE20(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v28 = sub_21700E494();
      v32 = *(v26 + 8);
      v32(v31, v0);
      sub_21669987C(v9, &qword_27CAB8600, &qword_217020AD0);
      sub_21669987C(v12, &qword_27CAB8600, &qword_217020AD0);
      v32(v29, v0);
      sub_21669987C(v4, &qword_27CAB8600, &qword_217020AD0);
      return v28 & 1;
    }

    sub_21669987C(v9, &qword_27CAB8600, &qword_217020AD0);
    sub_21669987C(v12, &qword_27CAB8600, &qword_217020AD0);
    (*(v26 + 8))(v29, v0);
    goto LABEL_7;
  }

  sub_21669987C(v9, &qword_27CAB8600, &qword_217020AD0);
  sub_21669987C(v12, &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(&v4[v27], 1, v0) != 1)
  {
LABEL_7:
    sub_21669987C(v4, &qword_27CAB8708, &qword_21701A3E0);
LABEL_8:
    v28 = 0;
    return v28 & 1;
  }

  sub_21669987C(v4, &qword_27CAB8600, &qword_217020AD0);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_21697C580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = a4[2];
  v8 = a4[3];
  v9 = a4[4];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *(a5 + 32) = v6;
  *(a5 + 40) = v7;
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  sub_21700DF14();
  sub_2167770D0(v5, v6, v7, v8);

  sub_21700DF14();
  sub_2167770D0(v5, v6, v7, v8);

  sub_2167C4DF0(v5, v6, v7, v8);
}

uint64_t sub_21697C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_21700B3D4();
  sub_2170083C4();
  *&v17[7] = v18;
  *&v17[23] = v19;
  *&v17[39] = v20;
  KeyPath = swift_getKeyPath();
  sub_21700DF14();
  sub_21700B3B4();
  sub_2170083C4();
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  v13 = a4[4];
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3;
  __src[8] = *(&v20 + 1);
  __src[9] = KeyPath;
  *(&__src[6] + 1) = *&v17[32];
  *(&__src[4] + 1) = *&v17[16];
  *(&__src[2] + 1) = *v17;
  LOBYTE(__src[10]) = 2;
  memcpy(__dst, __src, 0x51uLL);
  memcpy(a5, __dst, 0x58uLL);
  *(a5 + 88) = 0;
  *(a5 + 96) = 1;
  *(a5 + 104) = v21;
  *(a5 + 112) = v22;
  *(a5 + 120) = v23;
  *(a5 + 128) = v24;
  *(a5 + 136) = v25;
  *(a5 + 152) = v9;
  *(a5 + 160) = v10;
  *(a5 + 168) = v11;
  *(a5 + 176) = v12;
  *(a5 + 184) = v13;
  sub_2167770D0(v9, v10, v11, v12);

  sub_216681B64(__src, v28, &qword_27CABE360, &qword_21702E7B0);
  sub_2167770D0(v9, v10, v11, v12);

  sub_2167C4DF0(v9, v10, v11, v12);

  v28[0] = a1;
  v28[1] = a2;
  v29 = a3;
  v30 = *v17;
  v31 = *&v17[16];
  *v32 = *&v17[32];
  *&v32[15] = *(&v20 + 1);
  v33 = KeyPath;
  v34 = 2;
  return sub_21669987C(v28, &qword_27CABE360, &qword_21702E7B0);
}

void sub_21697C8A4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_217005C64();
  MEMORY[0x28223BE20](v8 - 8);
  if (a2)
  {
    sub_21700DF14();
    if (a3)
    {
      sub_21697CA00(a1, a2);

      sub_21700A164();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
    sub_2167C4D74();
    sub_217009554();
    v11 = v13;
    v9 = v12;
    v10 = v14;
  }

  else
  {
    v9 = 0uLL;
    v10 = -1;
    v11 = 0uLL;
  }

  *a4 = v9;
  *(a4 + 16) = v11;
  *(a4 + 32) = v10;
}

uint64_t sub_21697CA00(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE378, &qword_21702E840);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE380, &unk_2170699F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE388, &qword_21702E848);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE390, &unk_217069A00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE398, &qword_21702E850);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = sub_217005CC4();
  MEMORY[0x28223BE20](v20 - 8);
  sub_21700DF14();
  sub_217005CB4();
  sub_217005C74();
  v21 = sub_217009FC4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v21);
  v22 = sub_217009FD4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v22);
  v23 = sub_217009FE4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v23);
  v24 = sub_217009FB4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
  sub_217009FF4();
  v25 = sub_21700A004();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v25);
  sub_216681B64(v19, v16, &qword_27CABE398, &qword_21702E850);
  sub_21697D480();
  sub_217005C84();
  return sub_21669987C(v19, &qword_27CABE398, &qword_21702E850);
}

uint64_t sub_21697CDC8(uint64_t a1)
{
  result = sub_21697CE20(qword_280E444E0, type metadata accessor for TextListView, &unk_21702E590);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21697CE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21697CE68()
{
  result = sub_217009E14();
  qword_27CABE280 = result;
  return result;
}

uint64_t sub_21697CEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextListComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697CF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextListComponentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21697CFC4(uint64_t a1)
{
  sub_216833F44(319);
  if (v1 <= 0x3F)
  {
    sub_2167FCA6C(319);
    if (v2 <= 0x3F)
    {
      sub_216688154();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21697D098()
{
  result = qword_27CABE308;
  if (!qword_27CABE308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE310, &qword_21702E758);
    sub_21697D150();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE308);
  }

  return result;
}

unint64_t sub_21697D150()
{
  result = qword_27CABE318;
  if (!qword_27CABE318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE320, &qword_21702E760);
    sub_2166D9530(&qword_27CABE328, &qword_27CABE330, &qword_21702E768, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE318);
  }

  return result;
}

uint64_t sub_21697D200(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21697D284()
{
  result = qword_27CABE340;
  if (!qword_27CABE340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE348, &qword_21702E770);
    sub_2166D9530(&qword_27CABE350, &qword_27CABE358, &qword_21702E778, MEMORY[0x277CE1138]);
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE340);
  }

  return result;
}

unint64_t sub_21697D380()
{
  result = qword_27CABE368;
  if (!qword_27CABE368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE370, qword_21702E7E8);
    sub_21697D200(&qword_27CABE300, &qword_27CABE2F8, &qword_21702E750, sub_21697D098);
    sub_21697D200(&qword_27CABE338, &qword_27CABE2F0, &qword_21702E748, sub_21697D284);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE368);
  }

  return result;
}

unint64_t sub_21697D480()
{
  result = qword_27CABE3A0;
  if (!qword_27CABE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3A0);
  }

  return result;
}

unint64_t sub_21697D4D4()
{
  result = qword_27CABE3A8;
  if (!qword_27CABE3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE3B0, &qword_21702E858);
    sub_21697D558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3A8);
  }

  return result;
}

unint64_t sub_21697D558()
{
  result = qword_27CABE3B8;
  if (!qword_27CABE3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE3C0, qword_21702E860);
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3B8);
  }

  return result;
}

uint64_t ReferrerInfo.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  sub_21700CD34();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_21700CE04();
  v11 = sub_21700CDB4();
  v13 = v12;
  v14 = sub_21700CF34();
  (*(*(v14 - 8) + 8))(a2, v14);
  v10(a1, v6);
  v10(v9, v6);
  result = type metadata accessor for ReferrerInfo(0);
  v16 = (a3 + *(result + 20));
  *v16 = v11;
  v16[1] = v13;
  return result;
}

JSValue __swiftcall ReferrerInfo.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_2167DE934(v2, v6);
    v9 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
    {
      sub_216846CF0(v6);
      v10 = 0;
    }

    else
    {
      v11 = sub_217005DE4();
      v13 = v12;
      (*(*(v9 - 8) + 8))(v6, v9);
      v17 = v11;
      v18 = v13;
      v10 = sub_21700DD04();
    }

    sub_2166F1F64(v10, 0xD000000000000013, 0x80000002170855E0);
    v14 = (v2 + *(type metadata accessor for ReferrerInfo(0) + 20));
    v15 = v14[1];
    if (v15)
    {
      v17 = *v14;
      v18 = v15;
      sub_21700DF14();
      v16 = sub_21700DD04();
    }

    else
    {
      v16 = 0;
    }

    sub_2166F1F64(v16, 0x707041666572, 0xE600000000000000);
    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for TextAlignment()
{
  return &type metadata for TextAlignment;
}

{
  return &type metadata for TextAlignment;
}

uint64_t sub_21697DAF8(char a1, char a2)
{
  v5 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_82();
  if (a2)
  {
    return 0x2010000u >> (8 * a1);
  }

  sub_217007C94();
  v10 = sub_217007C84();
  v11 = sub_21700ED84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    v14 = sub_21700F784();
    v16 = sub_2166A85FC(v14, v15, &v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE3D8, &unk_21702EB10);
    v17 = sub_21700E594();
    v19 = sub_2166A85FC(v17, v18, &v20);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_216679000, v10, v11, "Unrecognized value '%s' for type '%s'", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v13, -1, -1);
    MEMORY[0x21CEA1440](v12, -1, -1);
  }

  (*(v7 + 8))(v2, v5);
  return 0;
}

uint64_t sub_21697DD50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_82();
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  sub_21700D7A4();
  sub_21700CE04();
  v38 = v7;
  v39 = v5;
  v18 = v7;
  v19 = v9;
  v20 = a1;
  (*(v18 + 16))(v3, v40, v5);
  sub_21700D734();
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v11 + 8);
  v25 = v19;
  v24(v14, v19);
  if (v23)
  {
    v26 = type metadata accessor for ParagraphComponentModel(0);
    v41 = v21;
    v42 = v23;
    v27 = v43;
    sub_21700F364();
    sub_21700CE04();
    sub_21700CDB4();
    v28 = OUTLINED_FUNCTION_2_64();
    (v24)(v28);
    v29 = (v27 + v26[6]);
    *v29 = v17;
    v29[1] = v23;
    sub_21700CE04();
    sub_21700CDB4();
    v30 = OUTLINED_FUNCTION_2_64();
    (v24)(v30);
    v31 = (v27 + v26[7]);
    *v31 = v17;
    v31[1] = v23;
    sub_21700CE04();
    sub_21691E918();
    sub_21700CCC4();
    (*(v38 + 8))(v40, v39);
    v24(v20, v25);
    result = (v24)(v17, v25);
    *(v27 + v26[8]) = v41;
  }

  else
  {
    v33 = sub_21700E2E4();
    sub_21697E4C4(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v35 = v34;
    v36 = type metadata accessor for ParagraphComponentModel(0);
    *v35 = 25705;
    v35[1] = 0xE200000000000000;
    v35[2] = v36;
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    (*(v38 + 8))(v40, v39);
    v24(v20, v19);
    return sub_2167B0250(v43);
  }

  return result;
}

unint64_t sub_21697E208(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21697E254(char a1)
{
  if (!a1)
  {
    return 0x676E696461656CLL;
  }

  if (a1 == 1)
  {
    return 0x676E696C69617274;
  }

  return 0x64657265746E6563;
}

unint64_t sub_21697E2D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21697E208(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21697E300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21697E254(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21697E3E0()
{
  result = qword_27CABE3C8;
  if (!qword_27CABE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3C8);
  }

  return result;
}

unint64_t sub_21697E438()
{
  result = qword_27CABE3D0;
  if (!qword_27CABE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3D0);
  }

  return result;
}

uint64_t sub_21697E48C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21697DAF8(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21697E4C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for MusicMetrics(_BYTE *result, int a2, int a3)
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

uint64_t sub_21697E5D8(uint64_t a1)
{
  result = type metadata accessor for LinkComponentModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21697E648(uint64_t a1, char a2)
{
  v7 = sub_217009254();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v9 = type metadata accessor for LinkComponentModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_37();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v3, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v18, v2);
    if (!*(v2 + *(v9 + 28) + 8))
    {
      if (qword_27CAB5B00 != -1)
      {
        OUTLINED_FUNCTION_6_44(&qword_27CAB5B00);
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_217009244();
    OUTLINED_FUNCTION_14_32();
    sub_21700ADB4();
    sub_217009214();

    sub_217009234();
    sub_217009224();

    OUTLINED_FUNCTION_14_32();
    sub_217009274();
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v2 = v12;
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v18, v12);
    if (!*&v12[*(v9 + 28) + 8])
    {
      sub_21697EA28();
    }

    sub_21700DF14();
    if ((a2 & 1) == 0)
    {

      if (a1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
        inited = swift_initStackObject();
        v21 = MEMORY[0x277D83B88];
        *(inited + 16) = xmmword_217013DA0;
        v22 = MEMORY[0x277D83C10];
        *(inited + 56) = v21;
        *(inited + 64) = v22;
        *(inited + 32) = a1;
        sub_216983808(30, inited);
      }

      else
      {
        sub_21697EA28();
      }
    }

    sub_217009264();
LABEL_23:
    OUTLINED_FUNCTION_4_50();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v18, v4);
  if (!OUTLINED_FUNCTION_7_7(*(v9 + 28)))
  {
    if (qword_27CAB5B08 != -1)
    {
      OUTLINED_FUNCTION_7_48(&qword_27CAB5B08);
    }

    sub_21700DF14();
  }

  sub_21700DF14();
  sub_217009244();
  OUTLINED_FUNCTION_14_32();
  sub_21700ADB4();
  sub_217009214();

  sub_217009234();
  sub_217009224();

  OUTLINED_FUNCTION_14_32();
  sub_217009274();
  OUTLINED_FUNCTION_4_50();
  v2 = v4;
LABEL_24:
  sub_216980254(v2, type metadata accessor for LinkComponentModel);
  return OUTLINED_FUNCTION_10_41();
}

uint64_t sub_21697EA28()
{
  v3[3] = &unk_28293AC68;
  v3[4] = sub_2169802AC();
  v0 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  if ((v0 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_27CAB5F70 != -1)
  {
    swift_once();
  }

  if (byte_27CB22A28)
  {
    v1 = 56;
  }

  else
  {
LABEL_6:
    v1 = 322;
  }

  return sub_216983738(v1);
}

uint64_t sub_21697EAC4(uint64_t a1, char a2)
{
  v6 = OUTLINED_FUNCTION_110();
  v7 = type metadata accessor for LinkComponentModel(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_37();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v16, v2);
    if (!*(v2 + *(v7 + 28) + 8))
    {
      if (qword_27CAB5B00 != -1)
      {
        OUTLINED_FUNCTION_6_44(&qword_27CAB5B00);
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v2 = v10;
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v16, v10);
    if (!*&v10[*(v7 + 28) + 8])
    {
      sub_21697EA28();
    }

    sub_21700DF14();
    if ((a2 & 1) == 0)
    {

      if (v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
        inited = swift_initStackObject();
        v19 = MEMORY[0x277D83B88];
        *(inited + 16) = xmmword_217013DA0;
        v20 = MEMORY[0x277D83C10];
        *(inited + 56) = v19;
        *(inited + 64) = v20;
        *(inited + 32) = v3;
        sub_216983808(30, inited);
      }

      else
      {
        sub_21697EA28();
      }
    }

LABEL_22:
    sub_217009264();
    OUTLINED_FUNCTION_4_50();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v16, v4);
  if (!OUTLINED_FUNCTION_7_7(*(v7 + 28)))
  {
    if (qword_27CAB5B08 != -1)
    {
      OUTLINED_FUNCTION_7_48(&qword_27CAB5B08);
    }

    sub_21700DF14();
  }

  sub_21700DF14();
  sub_217009264();
  OUTLINED_FUNCTION_4_50();
  v2 = v4;
LABEL_23:
  sub_216980254(v2, type metadata accessor for LinkComponentModel);
  return OUTLINED_FUNCTION_10_41();
}

uint64_t sub_21697EDA8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkComponentModel(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = type metadata accessor for MediaButtonType(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v1, v12);
  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v12, v7);
  sub_21692E9E8(v7 + *(v4 + 32), a1);
  return OUTLINED_FUNCTION_5_48();
}

uint64_t sub_21697EE88@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkComponentModel(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = type metadata accessor for MediaButtonType(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v1, v12);
  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v12, v7);
  sub_216788294(v7 + *(v4 + 28), a1);
  return OUTLINED_FUNCTION_5_48();
}

uint64_t sub_21697EF68()
{
  type metadata accessor for MediaButtonType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x42656C6666756873;
  if (EnumCaseMultiPayload != 1)
  {
    v6 = 0x74747542676E6973;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7474754279616C70;
  }

  sub_216980254(v4, type metadata accessor for MediaButtonType);
  return v7;
}

uint64_t sub_21697F06C()
{
  result = sub_216983738(189);
  qword_27CABE3E0 = result;
  *algn_27CABE3E8 = v1;
  return result;
}

uint64_t sub_21697F094()
{
  result = sub_216983738(318);
  qword_27CABE3F0 = result;
  *algn_27CABE3F8 = v1;
  return result;
}

uint64_t sub_21697F0EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v40 = sub_21700D8E4();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7();
  v37 = v4 - v3;
  v5 = type metadata accessor for ContainerDetailMediaButton(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33[1] = v8;
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE488, &qword_21702EC98);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = (v33 - v12);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE490, &qword_21702ECA0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE498, &qword_21702ECA8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v34 = v33 - v18;
  sub_21697EDA8(v13);
  v19 = v10[11];
  v20 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v13 + v19, 1, 1, v20);
  v33[2] = type metadata accessor for ContainerDetailMediaButton;
  sub_21697FE50(v2, v9);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v33[0] = type metadata accessor for ContainerDetailMediaButton;
  sub_21697FEAC(v9, v22 + v21);
  v23 = v10[12];
  *(v13 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v24 = v13 + v10[13];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v13[5] = sub_21697FF08;
  v13[6] = v22;
  v13[7] = 0;
  v13[8] = 0;
  v25 = v2 + *(v6 + 28);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v42[0]) = v26;
  *(&v42[0] + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  LOBYTE(v42[0]) = v41[0];
  sub_2166D9530(&qword_27CABE4A0, &qword_27CABE488, &qword_21702EC98, &unk_21702C8E0);
  sub_21697FF74();
  sub_21700A374();
  sub_216697664(v13, &qword_27CABE488, &qword_21702EC98);
  sub_21697FE50(v2, v9);
  v28 = swift_allocObject();
  sub_21697FEAC(v9, v28 + v21);
  v29 = &v16[*(v35 + 36)];
  *v29 = sub_21697FFC8;
  v29[1] = v28;
  sub_21697EAC4(0, 1);
  sub_216980034();
  v30 = v34;
  sub_21700A694();

  sub_216697664(v16, &qword_27CABE490, &qword_21702ECA0);
  sub_21697EF68();
  memset(v42, 0, sizeof(v42));
  memset(v41, 0, sizeof(v41));
  v31 = v37;
  sub_21700D854();

  sub_216697664(v41, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(v42, &unk_27CABF7A0, &unk_217014D20);
  sub_216980198();
  sub_21700A204();
  (*(v38 + 8))(v31, v40);
  return sub_216697664(v30, &qword_27CABE498, &qword_21702ECA8);
}

void *sub_21697F64C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2170091A4();
  sub_21697E648(0, 1);
  v4 = sub_21700A154();
  v6 = v5;
  v8 = v7;
  v10 = v9 & 1;
  sub_216777114(v4, v5, v9 & 1);
  sub_21700DF14();
  sub_21678817C(v4, v6, v10);

  sub_21700B3B4();
  sub_217008BB4();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v4;
  *(a2 + 48) = v6;
  *(a2 + 56) = v10;
  *(a2 + 64) = v8;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  return memcpy((a2 + 88), __src, 0x70uLL);
}

uint64_t sub_21697F790(char a1, uint64_t a2)
{
  type metadata accessor for ContainerDetailMediaButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  return sub_21700AEC4();
}

uint64_t sub_21697F808@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1;
  sub_217009944();
  v4 = sub_217009954();
  v5 = sub_21697F954(v2, v4 & 1);
  v6 = sub_217009C84();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE4D0, &qword_21702ED80) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;
  v8 = sub_217009954();
  v9 = sub_21697FA34(v2, v8 & 1);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE4D8, &qword_21702ED88) + 36)) = v9;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE4E0, qword_21702ED90) + 36));
  v11 = *(sub_217008B44() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_217009294();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #10.0 }

  *v10 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  *&v10[*(result + 36)] = 256;
  return result;
}

uint64_t sub_21697F954(char a1, char a2)
{
  if (a1)
  {
    if (qword_27CAB5B20 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_27CAB5B10 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (qword_27CAB5B18 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_8:
}

uint64_t sub_21697FA34(char a1, char a2)
{
  if (a1)
  {
    if (qword_27CAB5B38 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_27CAB5B28 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (qword_27CAB5B30 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_8:
}

uint64_t sub_21697FB1C@<X0>(uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE440, &qword_21702EC10);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE448, &qword_21702EC18);
  v5 = OUTLINED_FUNCTION_110();
  type metadata accessor for ContainerDetailMediaButton(v5);
  sub_2166D9530(&qword_27CABE450, &qword_27CABE448, &qword_21702EC18, MEMORY[0x277D83980]);
  sub_21697FD40(&qword_27CABE458, type metadata accessor for ContainerDetailMediaButton, &unk_21702EC48);
  sub_21697FD40(&qword_27CABE460, type metadata accessor for MediaButtonType, &unk_21702EB48);
  return sub_21700B164();
}

void *sub_21697FC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21697FE50(a1, a2);
  v3 = a2 + *(type metadata accessor for ContainerDetailMediaButton(0) + 20);
  result = sub_21700AEA4();
  *v3 = v5;
  *(v3 + 8) = v6;
  return result;
}

uint64_t sub_21697FD40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21697FDB0(uint64_t a1)
{
  type metadata accessor for MediaButtonType(319);
  if (v1 <= 0x3F)
  {
    sub_216854FAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21697FE50(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_21697FEAC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, v2);
  return a2;
}

void *sub_21697FF08@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContainerDetailMediaButton(0);
  OUTLINED_FUNCTION_36(v2);

  return sub_21697F64C(a1);
}

unint64_t sub_21697FF74()
{
  result = qword_27CABE4A8;
  if (!qword_27CABE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4A8);
  }

  return result;
}

uint64_t sub_21697FFC8(char a1)
{
  v3 = type metadata accessor for ContainerDetailMediaButton(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_21697F790(a1, v5);
}

unint64_t sub_216980034()
{
  result = qword_27CABE4B0;
  if (!qword_27CABE4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE490, &qword_21702ECA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE488, &qword_21702EC98);
    sub_2166D9530(&qword_27CABE4A0, &qword_27CABE488, &qword_21702EC98, &unk_21702C8E0);
    sub_21697FF74();
    swift_getOpaqueTypeConformance2();
    sub_216980144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4B0);
  }

  return result;
}

unint64_t sub_216980144()
{
  result = qword_27CABE4B8;
  if (!qword_27CABE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4B8);
  }

  return result;
}

unint64_t sub_216980198()
{
  result = qword_27CABE4C0;
  if (!qword_27CABE4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE498, &qword_21702ECA8);
    sub_216980034();
    sub_21697FD40(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4C0);
  }

  return result;
}

uint64_t sub_216980254(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2169802AC()
{
  result = qword_27CABE4C8;
  if (!qword_27CABE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4C8);
  }

  return result;
}

uint64_t sub_21698033C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_21700AC44();
  *a3 = result;
  return result;
}

uint64_t sub_216980384(uint64_t a1)
{
  result = sub_21700AC54();
  qword_27CABE418 = result;
  return result;
}

uint64_t sub_2169803A4()
{
  result = sub_21700AD64();
  qword_27CABE420 = result;
  return result;
}

uint64_t sub_2169803E0()
{
  result = sub_21700AD64();
  qword_27CABE428 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2169805AC()
{
  result = qword_27CABE4E8;
  if (!qword_27CABE4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE4E0, qword_21702ED90);
    sub_216980664();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4E8);
  }

  return result;
}

unint64_t sub_216980664()
{
  result = qword_27CABE4F0;
  if (!qword_27CABE4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE4D8, &qword_21702ED88);
    sub_21698071C();
    sub_2166D9530(&qword_280E2A828, &qword_27CABA400, &qword_217020410, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4F0);
  }

  return result;
}

unint64_t sub_21698071C()
{
  result = qword_27CABE4F8;
  if (!qword_27CABE4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE4D0, &qword_21702ED80);
    sub_21697FD40(qword_27CABE500, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4F8);
  }

  return result;
}

uint64_t sub_216980804(uint64_t a1)
{
  sub_21700F8F4();
  sub_2167758CC(v3, *v1);
  return sub_21700F944();
}

uint64_t sub_216980844(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216980980(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216980B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for MusicAppDestinationContext(0);
  v5[8] = swift_task_alloc();
  v7 = *(a4 + 16);
  v5[9] = v7;
  v8 = *(a4 + 24);
  v5[10] = v8;
  v10 = type metadata accessor for PresentationItem.Destination(0, v7, v8, v9);
  v5[11] = v10;
  v5[12] = *(v10 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for ModalActionModelDestinations.Destination(0);
  v5[15] = swift_task_alloc();
  sub_21700EA34();
  v5[16] = sub_21700EA24();
  v12 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216980CBC, v12, v11);
}

uint64_t sub_216980CBC()
{
  v1 = v0[15];
  v2 = v0[3];

  v3 = type metadata accessor for PresentFullScreenCoverAction(0);
  sub_216981160(v2 + *(v3 + 20), v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 3u:
    case 5u:
      OUTLINED_FUNCTION_0_97();
      v11 = v0[12];
      v12 = v0[13];
      v13 = v0[11];
      v15 = v0[7];
      v14 = v0[8];
      v26 = v0[2];
      *v12 = v2;
      v12[1] = v16;
      swift_storeEnumTagMultiPayload();
      *(v14 + 32) = 0;
      *v14 = 0u;
      *(v14 + 16) = 0u;
      v17 = *(v15 + 20);
      v18 = sub_217005EF4();
      __swift_storeEnumTagSinglePayload(v14 + v17, 1, 1, v18);

      sub_216AF39A4(v12, v14, 0, 0, v19, v20, v21, v22, v26);

      sub_2169811DC(v14, type metadata accessor for MusicAppDestinationContext);
      (*(v11 + 8))(v12, v13);
      v23 = *MEMORY[0x277D21CA8];
      v24 = sub_21700D2A4();
      (*(*(v24 - 8) + 104))(v27, v23, v24);

      v10 = v0[1];
      break;
    case 6u:
      type metadata accessor for PresentFullScreenCoverActionImplementation.Error(0, v0[9], v0[10], v4);
      v8 = 1;
      goto LABEL_4;
    default:
      v5 = v0[9];
      v6 = v0[10];
      sub_2169811DC(v0[15], type metadata accessor for ModalActionModelDestinations.Destination);
      type metadata accessor for PresentFullScreenCoverActionImplementation.Error(0, v5, v6, v7);
      v8 = 0;
LABEL_4:
      swift_getWitnessTable();
      swift_allocError();
      *v9 = v8;
      swift_willThrow();

      v10 = v0[1];
      break;
  }

  return v10();
}

uint64_t sub_216980F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2166DFAC0;

  return sub_216980B4C(a1, a2, a3, a4);
}

uint64_t sub_21698105C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21698109C()
{
  result = qword_27CAB8298;
  if (!qword_27CAB8298)
  {
    type metadata accessor for PresentFullScreenCoverAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8298);
  }

  return result;
}

uint64_t sub_2169810F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216981160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalActionModelDestinations.Destination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169811DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_21698123C(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_216981324@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v38 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(a4 + 8);
  v12 = *(v11 + 24);
  v13 = OUTLINED_FUNCTION_74_0();
  v14 = v12(v13);
  v15 = type metadata accessor for MappedSection(0);
  (*(a6 + 16))(v48, v14, *&a2[*(v15 + 32)], &a2[*(v15 + 24)], AssociatedTypeWitness, a6);

  v16 = OUTLINED_FUNCTION_74_0();
  v12(v16);
  v35 = AssociatedTypeWitness;
  v17 = a6;
  v18 = (*(a6 + 24))();
  v41 = v19;
  v42 = v18;
  v40 = v20;
  v39 = v21;

  v22 = OUTLINED_FUNCTION_74_0();
  v47 = v12(v22);
  sub_2167B7D58(v48, v46);
  v23 = *(a2 + 1);
  v49[0] = *a2;
  v49[1] = v23;
  v49[2] = 0;
  v49[3] = 0;
  v50 = 0;
  v24 = *(v11 + 32);
  sub_21700DF14();
  v25 = OUTLINED_FUNCTION_74_0();
  v45 = v24(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = *(v38 + 80);
  v26[4] = a4;
  v26[5] = *(v38 + 88);
  v26[6] = a5;
  v26[7] = v17;
  swift_getAssociatedTypeWitness();
  v27 = sub_21700E984();
  WitnessTable = swift_getWitnessTable();
  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  *(&v34 + 1) = AssociatedConformanceWitness;
  *(&v33 + 1) = WitnessTable;
  *&v34 = v29;
  *&v33 = v35;
  *&result = sub_216830064(&v47, v46, v42, v41, v40, v39, v49, v45, a7, sub_216981838, v26, v27, v33, v34, *(v31 + 16)).n128_u64[0];
  return result;
}

uint64_t sub_216981660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v20 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 40);
  swift_unknownObjectRetain();
  v15(&v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(AssociatedConformanceWitness + 8);
  sub_2166C24DC(v10, AssociatedTypeWitness, v16);
  v17 = *(v8 + 8);
  v17(v10, AssociatedTypeWitness);
  sub_2166C24DC(v13, AssociatedTypeWitness, v16);
  return (v17)(v13, AssociatedTypeWitness);
}

uint64_t sub_216981864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216981958();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2169818C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216981958();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21698192C(uint64_t a1)
{
  sub_216981958();
  sub_217009AF4();
  __break(1u);
}

unint64_t sub_216981958()
{
  result = qword_27CABE588;
  if (!qword_27CABE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE588);
  }

  return result;
}

void sub_2169819C0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5B0, &unk_21702F228);
    v7 = sub_21700E594();
    v12[3] = MEMORY[0x277D837D0];
    v12[0] = v7;
    v12[1] = v8;
    v9 = a1;
    v10 = sub_2166F1E10(v12, a1);
    sub_2166F1F64(v10, 0x646E696B24, 0xE500000000000000);
    v11 = MEMORY[0x277D225C8];
    a2[3] = v6;
    a2[4] = v11;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216981AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v138 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  v143 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v148 = (v127 - v12);
  v151 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v146 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v135 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v136 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v140 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v141 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v145 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v149 = v127 - v25;
  v26 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  v134 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  v139 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  v144 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  v37 = v127 - v36;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v153 = v38;
  v154 = v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v137 = v40;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  v142 = v42;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_4();
  v147 = v44;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_57();
  v47 = type metadata accessor for UserSocialProfileDescriptor(v46);
  v48 = OUTLINED_FUNCTION_36(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7();
  v51 = v50 - v49;
  v155 = a1;
  sub_21700CE04();
  v52 = a2;
  v53 = *(v28 + 16);
  (v53)(v37, v52, v26);
  v54 = v152;
  sub_2169827B4(v3, v37, v51);
  if (v54)
  {
    (*(v28 + 8))(v52, v26);
    return (*(v154 + 8))(v155, v153);
  }

  v130 = v53;
  v131 = v28 + 16;
  v133 = v26;
  v132 = v28;
  v152 = v52;
  sub_2169834C0(v51, v150, type metadata accessor for UserSocialProfileDescriptor);
  v56 = v147;
  sub_21700CE04();
  v57 = v148;
  sub_21700CD74();
  v59 = v154 + 8;
  v58 = *(v154 + 8);
  v60 = v56;
  v61 = v153;
  (v58)(v60, v153);
  OUTLINED_FUNCTION_20_24(v57);
  if (v62)
  {
    sub_216697664(v57, &qword_27CAB78D0, &unk_21701A800);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_98();
    v65 = sub_21668F0A8(v63, v64, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v65);
    v67 = v66;
    v68 = type metadata accessor for UserSocialProfileGraph(0);
    *v67 = 0x6565776F6C6C6F66;
    v67[1] = 0xE900000000000073;
    v67[2] = v68;
    OUTLINED_FUNCTION_2_12();
    (*(v69 + 104))(v67);
    swift_willThrow();
    v70 = OUTLINED_FUNCTION_8_42();
    v71(v70, v133);
    (v58)(v155, v61);
    v72 = 0;
    v73 = 0;
LABEL_11:
    v88 = v150;
    goto LABEL_12;
  }

  v147 = v58;
  v154 = v59;
  v129 = 0;
  v74 = v146;
  v75 = v146 + 32;
  v76 = v149;
  v77 = v57;
  v78 = v151;
  v148 = *(v146 + 32);
  v148(v149, v77, v151);
  v128 = *(v74 + 16);
  v128(v145, v76, v78);
  v79 = v133;
  (v130)(v144, v152, v133);
  v80 = type metadata accessor for ContentDescriptor(0);
  v81 = sub_21668F0A8(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
  v82 = v129;
  v83 = sub_21700E934();
  if (v82)
  {
    v84 = OUTLINED_FUNCTION_8_42();
    v85(v84, v79);
    v86 = OUTLINED_FUNCTION_6_45();
    v87(v86);
    (*(v74 + 8))(v149, v151);
    v72 = 0;
    v73 = 0;
    v88 = v150;
    goto LABEL_12;
  }

  v89 = v83;
  v129 = v81;
  v127[1] = v80;
  v144 = v74 + 16;
  v145 = v75;
  v90 = v148;
  v91 = type metadata accessor for UserSocialProfileGraph(0);
  *(v150 + *(v91 + 20)) = v89;
  v92 = v142;
  v93 = v155;
  sub_21700CE04();
  v94 = v143;
  sub_21700CD74();
  v95 = v153;
  v96 = v147;
  v147(v92);
  OUTLINED_FUNCTION_20_24(v94);
  if (v62)
  {
    sub_216697664(v94, &qword_27CAB78D0, &unk_21701A800);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_98();
    v99 = sub_21668F0A8(v97, v98, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v99);
    *v100 = 0xD000000000000010;
    v100[1] = 0x8000000217082700;
    v100[2] = v91;
    OUTLINED_FUNCTION_2_12();
    (*(v101 + 104))();
    swift_willThrow();
    v102 = OUTLINED_FUNCTION_8_42();
    v103(v102, v133);
    v96(v93, v95);
    (*(v146 + 8))(v149, v151);
    v73 = 0;
    v72 = 1;
    goto LABEL_11;
  }

  v142 = v91;
  v104 = v141;
  v105 = v151;
  v90(v141, v94, v151);
  v128(v140, v104, v105);
  OUTLINED_FUNCTION_13_30();
  v130();
  v106 = sub_21700E934();
  v107 = v132;
  v108 = v142;
  v88 = v150;
  *(v150 + *(v142 + 24)) = v106;
  v109 = v137;
  v110 = v155;
  sub_21700CE04();
  v111 = v138;
  sub_21700CD74();
  v112 = v147;
  (v147)(v109, v153);
  OUTLINED_FUNCTION_20_24(v111);
  if (!v62)
  {
    v120 = v136;
    v121 = v151;
    v148(v136, v111, v151);
    v128(v135, v120, v121);
    OUTLINED_FUNCTION_13_30();
    v130();
    v122 = sub_21700E934();
    (*(v107 + 8))(v112, v110);
    v123 = OUTLINED_FUNCTION_6_45();
    v124(v123);
    v125 = *(v146 + 8);
    v126 = v151;
    v125(v120, v151);
    v125(v141, v126);
    result = (v125)(v149, v126);
    *(v88 + *(v142 + 28)) = v122;
    return result;
  }

  sub_216697664(v111, &qword_27CAB78D0, &unk_21701A800);
  sub_21700E2E4();
  OUTLINED_FUNCTION_0_98();
  v115 = sub_21668F0A8(v113, v114, MEMORY[0x277D22550]);
  OUTLINED_FUNCTION_4(v115);
  *v116 = 0x7265776F6C6C6F66;
  v116[1] = 0xE900000000000073;
  v116[2] = v108;
  OUTLINED_FUNCTION_2_12();
  (*(v117 + 104))();
  swift_willThrow();
  (*(v107 + 8))(v152, v133);
  v112(v110, v153);
  v118 = *(v146 + 8);
  v119 = v151;
  v118(v141, v151);
  v118(v149, v119);
  v72 = 1;
  v73 = 1;
LABEL_12:
  result = sub_216983468(v88, type metadata accessor for UserSocialProfileDescriptor);
  if (v72)
  {
    type metadata accessor for UserSocialProfileGraph(0);
  }

  if (v73)
  {
    type metadata accessor for UserSocialProfileGraph(0);
  }

  return result;
}

uint64_t sub_2169827B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v72 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_57();
  v79 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v76 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v74 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v73 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v71 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  v70 = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v69 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v29 = type metadata accessor for ContentDescriptor(0);
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  sub_21700CE04();
  v78 = v8;
  v34 = *(v8 + 16);
  v80 = v6;
  v34(v3, a2, v6);
  v35 = v77;
  ContentDescriptor.init(deserializing:using:)(v28, v3, v36, v37, v38, v39, v40, v41, v66, v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67), v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v42 = (v76 + 8);
  if (v35)
  {
    (*(v78 + 8))(a2, v80);
    return (*v42)(a1, v79);
  }

  else
  {
    v44 = v75;
    sub_2169834C0(v33, v75, type metadata accessor for ContentDescriptor);
    v67 = a1;
    v68 = a2;
    sub_21700CE04();
    v45 = sub_21700CDB4();
    v76 = 0;
    v46 = v45;
    v48 = v47;
    v77 = *v42;
    v77(v25, v79);
    if (!v48)
    {
      v46 = 0;
      v48 = 0xE000000000000000;
    }

    v49 = type metadata accessor for UserSocialProfileDescriptor(0);
    v50 = (v44 + v49[5]);
    *v50 = v46;
    v50[1] = v48;
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v34(v72, v68, v80);
    sub_21668F0A8(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    v51 = v44;
    sub_21700D734();
    v52 = v70;
    sub_21700CE04();
    v53 = sub_21700CD44();
    v54 = v79;
    v55 = v77;
    v77(v52, v79);
    *(v51 + v49[7]) = v53 & 1;
    v56 = v71;
    sub_21700CE04();
    v57 = sub_21700CD44();
    v55(v56, v54);
    v58 = v55;
    v59 = v75;
    *(v75 + v49[8]) = v57 & 1;
    v60 = v73;
    v61 = v67;
    sub_21700CE04();
    v62 = sub_21700CD44();
    v58(v60, v54);
    *(v59 + v49[9]) = v62 & 1;
    sub_21700CE04();
    v63 = sub_21700CD44();
    (*(v78 + 8))(v68, v80);
    v64 = v77;
    v77(v61, v54);
    v65 = OUTLINED_FUNCTION_39();
    result = (v64)(v65);
    *(v59 + v49[10]) = v63 & 1;
  }

  return result;
}

void *sub_216982D68()
{
  v1 = type metadata accessor for ContentDescriptor(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700E384();
  v7 = *(v0 + *(type metadata accessor for UserSocialProfileGraph(0) + 20));
  v8 = *(v7 + 16);
  if (!v8)
  {
    return v6;
  }

  v9 = 0;
  v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v31 = *(v7 + 16);
  v32 = v7;
  v30 = v10;
  while (v9 < *(v7 + 16))
  {
    sub_21695BC04(v10 + *(v2 + 72) * v9, v5);
    v12 = *(v5 + 24);
    v11 = *(v5 + 32);
    sub_21700DF14();
    sub_216983468(v5, type metadata accessor for ContentDescriptor);
    if (v11)
    {
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v2;
        swift_isUniquelyReferenced_nonNull_native();
        v15 = OUTLINED_FUNCTION_39();
        v17 = sub_2166AF66C(v15, v16);
        if (__OFADD__(v6[2], (v18 & 1) == 0))
        {
          goto LABEL_21;
        }

        v19 = v17;
        v20 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD118, &qword_217029E20);
        if (sub_21700F554())
        {
          v21 = OUTLINED_FUNCTION_39();
          v23 = sub_2166AF66C(v21, v22);
          if ((v20 & 1) != (v24 & 1))
          {
            goto LABEL_23;
          }

          v19 = v23;
        }

        if (v20)
        {

          *(v6[7] + v19) = 0;
        }

        else
        {
          v6[(v19 >> 6) + 8] |= 1 << v19;
          v25 = (v6[6] + 16 * v19);
          *v25 = v12;
          v25[1] = v11;
          *(v6[7] + v19) = 0;
          v26 = v6[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_22;
          }

          v6[2] = v28;
        }

        v2 = v14;
        v8 = v31;
        v7 = v32;
        v10 = v30;
      }

      else
      {
      }
    }

    if (v8 == ++v9)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216983010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598, qword_217037510);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  if ((static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = type metadata accessor for UserSocialProfileDescriptor(0);
  v18 = v17[6];
  v19 = *(v13 + 48);
  sub_2169833F8(a1 + v18, v16);
  sub_2169833F8(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_19_4(v16);
  if (v26)
  {
    OUTLINED_FUNCTION_19_4(&v16[v19]);
    if (v26)
    {
      sub_216697664(v16, &qword_27CAB6D60, &qword_217014E40);
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  sub_2169833F8(v16, v12);
  OUTLINED_FUNCTION_19_4(&v16[v19]);
  if (v26)
  {
    sub_216983468(v12, type metadata accessor for Artwork);
LABEL_22:
    v27 = &qword_27CABE598;
    v28 = qword_217037510;
LABEL_23:
    sub_216697664(v16, v27, v28);
LABEL_24:
    v25 = 0;
    return v25 & 1;
  }

  sub_2169834C0(&v16[v19], v8, type metadata accessor for Artwork);
  OUTLINED_FUNCTION_39();
  v30 = sub_21700C4A4();
  if ((v30 & 1) == 0)
  {
    sub_216983468(v8, type metadata accessor for Artwork);
    sub_216983468(v12, type metadata accessor for Artwork);
    v27 = &qword_27CAB6D60;
    v28 = &qword_217014E40;
    goto LABEL_23;
  }

  v31 = sub_21688ADC8(&v12[*(v4 + 20)], v8 + *(v4 + 20));
  sub_216983468(v8, type metadata accessor for Artwork);
  sub_216983468(v12, type metadata accessor for Artwork);
  sub_216697664(v16, &qword_27CAB6D60, &qword_217014E40);
  if ((v31 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v20 = v17[5];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v21 == *v23 && v22 == v23[1];
  if (!v24 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_12_35();
  if (!v26)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_12_35();
  if (!v26)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_12_35();
  if (!v26)
  {
    goto LABEL_24;
  }

  v25 = *(a1 + v17[10]) ^ *(a2 + v17[10]) ^ 1;
  return v25 & 1;
}

uint64_t sub_216983380(uint64_t a1)
{
  result = sub_21668F0A8(&qword_27CABE590, type metadata accessor for UserSocialProfileGraph, &unk_21702F0C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169833F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216983468(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169834C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_216983558(uint64_t a1)
{
  type metadata accessor for UserSocialProfileDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_216690CDC(319, &qword_280E29F58, type metadata accessor for ContentDescriptor, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21698365C(uint64_t a1)
{
  *(a1 + 8) = sub_21698368C();
  result = sub_2169836E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21698368C()
{
  result = qword_280E37320[0];
  if (!qword_280E37320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E37320);
  }

  return result;
}

unint64_t sub_2169836E0()
{
  result = qword_27CABE5A8;
  if (!qword_27CABE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE5A8);
  }

  return result;
}

uint64_t sub_216983738(__int16 a1)
{
  sub_216C62094(a1);
  if (qword_280E29B20 != -1)
  {
    OUTLINED_FUNCTION_0_99(&qword_280E29B20);
  }

  sub_217005CA4();

  return sub_21700E724();
}

uint64_t sub_216983808(uint64_t a1, uint64_t a2)
{
  sub_216C640C8(a1);
  if (qword_280E29B20 != -1)
  {
    OUTLINED_FUNCTION_0_99(&qword_280E29B20);
  }

  v2 = sub_217005CA4();
  v4 = v3;

  v12[3] = sub_217006274();
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_217006254();
  v5 = sub_21700F9D4();

  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = sub_216983A5C(v2, v4, v12, v5);
  v8 = sub_21700E514();
  v10 = v9;

  v12[0] = v8;
  v12[1] = v10;
  return sub_21700E724();
}

id sub_216983944()
{
  sub_216983A18();
  result = sub_2169839B4(0xD000000000000015, 0x8000000217081950);
  if (!result)
  {
    result = [objc_opt_self() mainBundle];
  }

  qword_280E739D0 = result;
  return result;
}

id sub_2169839B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21700E4D4();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

unint64_t sub_216983A18()
{
  result = qword_280E29B10;
  if (!qword_280E29B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B10);
  }

  return result;
}

id sub_216983A5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_21700E4D4();

  v8 = a3[3];
  if (v8)
  {
    v9 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_21700F7B4();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 initWithFormat:v7 locale:v14 arguments:a4];

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_216983BF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v80 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v76 = v6;
  v21 = *(v6 + 16);
  v82 = v4;
  v77 = v21;
  v78 = v6 + 16;
  v21(v9, v85, v4);
  v79 = v9;
  sub_21700D734();
  v22 = a1;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v27 = *(v12 + 8);
  v26 = v12 + 8;
  v81 = v10;
  v28 = v27;
  v27(v17, v10);
  if (v25)
  {
    v29 = type metadata accessor for FlowcaseLockup(0);
    v83 = v23;
    v84 = v25;
    v30 = v80;
    sub_21700F364();
    OUTLINED_FUNCTION_6_46(1969710451);
    v31 = v85;
    sub_21700D2E4();
    v74 = v26;
    v28(v20, v81);
    v32 = type metadata accessor for Artwork(0);
    sub_21700CE04();
    v77(v79, v31, v82);
    v33 = sub_2166D4668(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    v70 = v32;
    v71 = v33;
    sub_21700D734();
    OUTLINED_FUNCTION_6_46(1819568500);
    sub_21700CDB4();
    v34 = OUTLINED_FUNCTION_0_100();
    v35 = v81;
    v28(v34, v81);
    OUTLINED_FUNCTION_2_65(v29[7]);
    sub_21700CE04();
    sub_21700CDB4();
    v36 = OUTLINED_FUNCTION_0_100();
    v28(v36, v35);
    OUTLINED_FUNCTION_2_65(v29[8]);
    v73 = v22;
    sub_21700CE04();
    sub_21700CDB4();
    v37 = OUTLINED_FUNCTION_0_100();
    v28(v37, v35);
    v75 = v28;
    OUTLINED_FUNCTION_2_65(v29[13]);
    sub_21700CE04();
    sub_21700CDB4();
    v38 = OUTLINED_FUNCTION_0_100();
    v28(v38, v35);
    OUTLINED_FUNCTION_2_65(v29[9]);
    sub_21700CE04();
    v77(v79, v85, v82);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    v39 = OUTLINED_FUNCTION_0_100();
    v40 = v35;
    v41 = v35;
    v42 = v75;
    v75(v39, v41);
    v43 = v29[11];
    v69 = v29;
    OUTLINED_FUNCTION_2_65(v43);
    sub_21700CE04();
    v44 = v85;
    sub_21700D2E4();
    v42(v20, v40);
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_1_84();
    v45 = v73;
    sub_21700CE04();
    v77(v79, v44, v82);
    v46 = v69;
    sub_2166D4668(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    sub_21700D734();
    sub_21700CE04();
    v47 = sub_21700CDB4();
    v48 = v75;
    v50 = v49;
    v51 = v81;
    v75(v20, v81);
    v52 = (v30 + v46[14]);
    *v52 = v47;
    v52[1] = v50;
    v53 = v72;
    sub_21700CE04();
    LOBYTE(v47) = sub_21700CD44();
    v48(v53, v51);
    *(v30 + v46[12]) = v47 & 1;
    sub_21700CE04();
    v54 = sub_21700CDB4();
    v56 = v55;
    v57 = OUTLINED_FUNCTION_5_49();
    v58(v57);
    v48(v45, v51);
    result = (v48)(v20, v51);
    v60 = (v30 + v46[17]);
    *v60 = v54;
    v60[1] = v56;
  }

  else
  {
    v61 = sub_21700E2E4();
    sub_2166D4668(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v28;
    v64 = v63;
    v65 = type metadata accessor for FlowcaseLockup(0);
    *v64 = 25705;
    v64[1] = 0xE200000000000000;
    v64[2] = v65;
    (*(*(v61 - 8) + 104))(v64, *MEMORY[0x277D22530], v61);
    swift_willThrow();
    v66 = OUTLINED_FUNCTION_5_49();
    v67(v66);
    v62(v22, v81);
    return sub_2167B0250(v80);
  }

  return result;
}

uint64_t sub_216984490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PageChangeInstruction(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_216984590()
{
  v1 = *v0;

  v2 = *(*v0 + 112);
  v4 = type metadata accessor for PageChangeInstruction(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_216984640()
{
  sub_216984590();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216984700(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21698473C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OpenSocialProfilePageAction.init(actionMetrics:destination:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(type metadata accessor for OpenSocialProfilePageAction(0) + 20);
  v8 = sub_21700D284();
  result = (*(*(v8 - 8) + 32))(&a3[v7], a1, v8);
  *a3 = v5;
  *(a3 + 1) = v6;
  return result;
}

double OpenSocialProfilePageAction.destination.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  sub_21700DF14();
  return result;
}

uint64_t OpenSocialProfilePageAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenSocialProfilePageAction(0) + 20);
  v4 = sub_21700D284();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2169848B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216984900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_216984AD8(uint64_t a1)
{
  sub_2166880FC(319);
  if (v1 <= 0x3F)
  {
    sub_21700C444();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216984B6C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unsigned __int8 *sub_216984BF4(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = result[v8];
        if (!result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *&result[v8];
        if (!*&result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&result[v8];
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v16 = *((&result[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_216984D48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216984F84(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    OUTLINED_FUNCTION_7();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return sub_21700B4F4();
}

uint64_t sub_216985108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_21700A3D4();
}

uint64_t sub_216985178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v222 = a3;
  v215 = a1;
  v220 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80, &qword_217024F80);
  v5 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v211 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v207 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  v206 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78, &unk_2170708C0);
  v11 = sub_2170089F4();
  v225 = v5;
  v12 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v209 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v208 = v15;
  v227 = v11;
  v210 = *(v11 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v203 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  v202 = v19;
  v20 = OUTLINED_FUNCTION_4_1();
  v21 = type metadata accessor for Artwork(v20);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v201 = v24 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70, &unk_217024F70);
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v198 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v200 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  v199 = v29;
  OUTLINED_FUNCTION_4_1();
  v31 = v30;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v205 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  v204 = v34;
  OUTLINED_FUNCTION_4_1();
  v219 = v35;
  v226 = v12;
  v36 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v213 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  v212 = v39;
  v214 = *(a2 - 8);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v194 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  v48 = OUTLINED_FUNCTION_36(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v194 - v53;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v217 = v56;
  v218 = v55;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_105();
  v224 = v58;
  sub_2166A6EA4();
  v59 = type metadata accessor for BackgroundConfiguration(0);
  v60 = OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_31_2(v60, v61, v59);
  v62 = v223;
  v228 = v36;
  v216 = v54;
  v221 = v31;
  if (v63)
  {
LABEL_3:
    v64 = v222;
    sub_2166C24DC(v62, a2, v222);
    sub_2166C24DC(v46, a2, v64);
    OUTLINED_FUNCTION_2_66();
    v69 = sub_2166D9530(v65, v66, v67, v68);
    v255[53] = v64;
    v255[54] = v69;
    OUTLINED_FUNCTION_1_85();
    WitnessTable = swift_getWitnessTable();
    v255[51] = v64;
    v255[52] = WitnessTable;
    OUTLINED_FUNCTION_42_3();
    v223 = swift_getWitnessTable();
    v71 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v51);
    v255[49] = v64;
    v255[50] = v71;
    v72 = swift_getWitnessTable();
    v73 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v51);
    v255[47] = v64;
    v255[48] = v73;
    v74 = swift_getWitnessTable();
    v255[45] = v72;
    v255[46] = v74;
    v75 = swift_getWitnessTable();
    v255[43] = v223;
    v255[44] = v75;
    swift_getWitnessTable();
    sub_2166C2CB0();
    v77 = (v214 + 8);
    v76 = *(v214 + 8);
    v76(v43, a2);
    v76(v46, a2);
    v78 = v64;
  }

  else
  {
    v79 = v222;
    sub_2166A6EA4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v81 = *(v51 + 40);
        v82 = *(v51 + 48);
        sub_2166A0F18(v51, v255);
        sub_2167B7D58(v255, v253);
        v253[5] = v81;
        v254 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE710, &qword_21702F868);
        OUTLINED_FUNCTION_31_9();
        sub_2166D9530(v83, v84, v85, v86);
        sub_21700B3B4();
        v87 = v200;
        v197 = a2;
        sub_21700A2F4();
        OUTLINED_FUNCTION_31_9();
        sub_216697664(v88, v89, v90);
        v91 = MEMORY[0x277CE0328];
        v92 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, MEMORY[0x277CE0328]);
        v251 = v79;
        v252 = v92;
        v93 = v221;
        v94 = swift_getWitnessTable();
        v95 = v199;
        sub_2166C24DC(v87, v93, v94);
        v223 = *(v198 + 8);
        v223(v87, v93);
        sub_2166C24DC(v95, v93, v94);
        v96 = v204;
        sub_2166C2CB0();
        v249 = v79;
        v250 = v94;
        v97 = MEMORY[0x277CE0340];
        v98 = v219;
        v215 = swift_getWitnessTable();
        v99 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v91);
        v247 = v79;
        v248 = v99;
        v100 = swift_getWitnessTable();
        v101 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v91);
        v245 = v79;
        v246 = v101;
        v102 = swift_getWitnessTable();
        v243 = v100;
        v244 = v102;
        v103 = swift_getWitnessTable();
        v104 = v212;
        v105 = v215;
        sub_2166C2718();
        (*(v205 + 8))(v96, v98);
        v241 = v105;
        v242 = v103;
        v78 = v79;
        OUTLINED_FUNCTION_52_12(v97);
        sub_2166C2718();
        OUTLINED_FUNCTION_48_13();
        v106(v104, v79);
        v77 = v223;
        v223(v200, v93);
        v77(v199, v93);
        __swift_destroy_boxed_opaque_existential_1Tm(v255);
        break;
      case 2:
        OUTLINED_FUNCTION_3_70();
        v133 = v201;
        v134 = sub_21698B990();
        MEMORY[0x28223BE20](v134);
        *(&v194 - 2) = v133;
        type metadata accessor for FullScreenArtworkView(0);
        sub_21698C470(&qword_27CABE708, type metadata accessor for FullScreenArtworkView, &unk_21702F6A8);
        v135 = sub_21700B3B4();
        OUTLINED_FUNCTION_30_22(v135, v136, sub_21698C9B0);
        OUTLINED_FUNCTION_2_66();
        v141 = sub_2166D9530(v137, v138, v139, v140);
        v255[15] = v79;
        v255[16] = v141;
        OUTLINED_FUNCTION_1_85();
        v142 = v227;
        v143 = swift_getWitnessTable();
        v144 = v202;
        sub_2166C24DC(v46, v142, v143);
        v145 = *(v210 + 8);
        v210 += 8;
        v223 = v145;
        v145(v46, v142);
        sub_2166C24DC(v144, v142, v143);
        v146 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, (&v194 - 4));
        v255[13] = v43;
        v255[14] = v146;
        v147 = swift_getWitnessTable();
        v148 = v208;
        sub_2166C2718();
        v149 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, (&v194 - 4));
        v255[11] = v43;
        v255[12] = v149;
        v150 = swift_getWitnessTable();
        v255[9] = v43;
        v255[10] = v150;
        OUTLINED_FUNCTION_23_25();
        v151 = swift_getWitnessTable();
        v255[7] = v143;
        v255[8] = v147;
        v152 = v226;
        v153 = swift_getWitnessTable();
        v154 = v212;
        OUTLINED_FUNCTION_51_6(v148);
        (*(v209 + 8))(v148, v152);
        v255[5] = v151;
        v255[6] = v153;
        v78 = v222;
        v155 = OUTLINED_FUNCTION_52_12(v43);
        OUTLINED_FUNCTION_37_22(v155);
        OUTLINED_FUNCTION_48_13();
        v156(v154, v152);
        v77 = v223;
        v223(v203, v142);
        v77(v202, v142);
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v201, v157);
        break;
      case 3:
        *(&v194 - 2) = MEMORY[0x28223BE20](EnumCaseMultiPayload);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE6D8, &qword_21702F850);
        sub_21698C7E0();
        v107 = sub_21700B3B4();
        OUTLINED_FUNCTION_30_22(v107, v108, sub_21698C7D8);
        OUTLINED_FUNCTION_2_66();
        v113 = sub_2166D9530(v109, v110, v111, v112);
        v255[27] = v79;
        v255[28] = v113;
        OUTLINED_FUNCTION_1_85();
        v114 = v225;
        v115 = swift_getWitnessTable();
        v116 = v206;
        v117 = OUTLINED_FUNCTION_47_17();
        sub_2166C24DC(v117, v118, v115);
        v119 = *(v211 + 8);
        v211 += 8;
        v223 = v119;
        v120 = OUTLINED_FUNCTION_47_17();
        v121(v120);
        sub_2166C24DC(v116, v114, v115);
        v122 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, (&v194 - 4));
        v255[25] = v43;
        v255[26] = v122;
        v123 = swift_getWitnessTable();
        v124 = v208;
        sub_2166C2CB0();
        v125 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, (&v194 - 4));
        v255[23] = v43;
        v255[24] = v125;
        v126 = swift_getWitnessTable();
        v255[21] = v43;
        v255[22] = v126;
        OUTLINED_FUNCTION_23_25();
        v127 = swift_getWitnessTable();
        v255[19] = v123;
        v255[20] = v115;
        v128 = v226;
        v129 = swift_getWitnessTable();
        v130 = v212;
        OUTLINED_FUNCTION_51_6(v124);
        (*(v209 + 8))(v124, v128);
        v255[17] = v127;
        v255[18] = v129;
        v78 = v222;
        v131 = OUTLINED_FUNCTION_52_12(v43);
        OUTLINED_FUNCTION_37_22(v131);
        OUTLINED_FUNCTION_48_13();
        v132(v130, v128);
        v77 = v223;
        v223(v207, v114);
        v77(v206, v114);
        break;
      case 5:
        v158 = v46;
        v196 = v46;
        v159 = v79;
        sub_2166C24DC(v223, a2, v79);
        v195 = v43;
        sub_2166C24DC(v158, a2, v79);
        OUTLINED_FUNCTION_2_66();
        v164 = sub_2166D9530(v160, v161, v162, v163);
        v239 = v79;
        v240 = v164;
        OUTLINED_FUNCTION_1_85();
        v165 = swift_getWitnessTable();
        v166 = v204;
        sub_2166C2718();
        v237 = v159;
        v238 = v165;
        OUTLINED_FUNCTION_42_3();
        v167 = v219;
        v168 = swift_getWitnessTable();
        v169 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v51);
        v235 = v159;
        v236 = v169;
        v170 = swift_getWitnessTable();
        v171 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v51);
        v233 = v159;
        v234 = v171;
        v172 = swift_getWitnessTable();
        v231 = v170;
        v232 = v172;
        v173 = swift_getWitnessTable();
        v174 = v212;
        sub_2166C2718();
        (*(v205 + 8))(v166, v167);
        v229 = v168;
        v230 = v173;
        OUTLINED_FUNCTION_52_12(v165);
        sub_2166C2718();
        OUTLINED_FUNCTION_48_13();
        v175(v174, v166);
        v176 = *(v214 + 8);
        v176(v195, a2);
        v77 = v159;
        v176(v196, a2);
        v78 = v159;
        break;
      default:
        OUTLINED_FUNCTION_4_51();
        sub_21698B938(v51, v193);
        v62 = v223;
        goto LABEL_3;
    }
  }

  sub_216697664(v216, &qword_27CABBAA8, &unk_2170575E0);
  OUTLINED_FUNCTION_2_66();
  v181 = sub_2166D9530(v177, v178, v179, v180);
  v255[41] = v78;
  v255[42] = v181;
  OUTLINED_FUNCTION_1_85();
  v182 = swift_getWitnessTable();
  v255[39] = v78;
  v255[40] = v182;
  v183 = swift_getWitnessTable();
  v184 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v77);
  v255[37] = v78;
  v255[38] = v184;
  v185 = swift_getWitnessTable();
  v186 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v77);
  v255[35] = v78;
  v255[36] = v186;
  v187 = swift_getWitnessTable();
  v255[33] = v185;
  v255[34] = v187;
  v188 = swift_getWitnessTable();
  v255[31] = v183;
  v255[32] = v188;
  v255[29] = swift_getWitnessTable();
  v255[30] = v78;
  v189 = v218;
  v190 = swift_getWitnessTable();
  v191 = v224;
  sub_2166C24DC(v224, v189, v190);
  return (*(v217 + 8))(v191, v189);
}

uint64_t sub_216986480()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for CuratorDetailHeaderComponentModel(v0);
  return sub_2166A6EA4();
}

uint64_t sub_2169864C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = (&v30 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E0, &qword_21702F798);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  type metadata accessor for CuratorDetailHeaderComponentModel(0);
  OUTLINED_FUNCTION_31_9();
  sub_2166A6EA4();
  v10 = type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_31_2(v5, 1, v10);
  if (v17)
  {
    v11 = &qword_27CABBEA8;
    v12 = &unk_217026710;
    v13 = v5;
  }

  else
  {
    v14 = *v5;
    sub_21700DF14();
    OUTLINED_FUNCTION_10_42();
    sub_21698B938(v5, v15);
    sub_216CE0C2C(v14, v9);

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8, &unk_21702F7A0);
    OUTLINED_FUNCTION_31_2(v9, 1, v16);
    if (!v17)
    {
      v22 = *(v16 + 48);
      v23 = sub_2170071B4();
      OUTLINED_FUNCTION_34();
      (*(v24 + 32))(a1, v9, v23);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
      sub_217006EC4();
      OUTLINED_FUNCTION_34();
      return (*(v28 + 8))(&v9[v22]);
    }

    v11 = &qword_27CABE5E0;
    v12 = &qword_21702F798;
    v13 = v9;
  }

  sub_216697664(v13, v11, v12);
  sub_2170071B4();
  v18 = OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

uint64_t sub_216986724()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ArtistDetailHeaderLockup(v0);
  return sub_2166A6EA4();
}

uint64_t sub_216986768()
{
  OUTLINED_FUNCTION_8_1();
  sub_2170071B4();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2169867B8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];
  if (!v3)
  {
    return sub_21700F9C4();
  }

  v4 = *v2;
  sub_21700F9C4();
  OUTLINED_FUNCTION_50_12();
  MEMORY[0x21CE9F490](v4, v3);
  return v6;
}

uint64_t sub_216986864()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  type metadata accessor for TVMovieDetailHeaderLockup(0);
  OUTLINED_FUNCTION_51();
  sub_2166A6EA4();
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_24_3(v3);
  if (v5)
  {
    sub_2166A6EA4();
    result = OUTLINED_FUNCTION_24_3(v3);
    if (!v5)
    {
      return sub_216697664(v3, &qword_27CAB6D60, &qword_217014E40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_70();
    sub_21698B990();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  }

  return result;
}

uint64_t sub_216986984()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for VideoArtwork(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2169869BC()
{
  v1 = (v0 + *(type metadata accessor for TVMovieDetailHeaderLockup(0) + 32));
  v2 = v1[1];
  if (!v2)
  {
    return sub_21700F9C4();
  }

  v3 = *v1;
  sub_21700F9C4();
  OUTLINED_FUNCTION_50_12();
  MEMORY[0x21CE9F490](v3, v2);
  return v5;
}

uint64_t sub_216986A8C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  type metadata accessor for BackgroundConfiguration(0);
  v4 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_216986B1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  __swift_project_value_buffer(v6, a4);
  OUTLINED_FUNCTION_71_0();
  return sub_2166A6EA4();
}

void sub_216986B94(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v34 = a5;
  v37 = a1;
  v8 = sub_2170084B4();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2170085B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE780, &qword_21702FB18);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v18 = v32 - v17;
  v36 = a2;
  if (a2 & 1) != 0 || (a4)
  {
    v32[3] = a4;
    v33 = a3;
    (*(v12 + 16))(v14, v34, v11, v16);
    v19 = MEMORY[0x277CDF7F8];
    sub_21698C470(&qword_27CABE788, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
    sub_21700E754();
    v20 = *(v15 + 36);
    sub_21698C470(&qword_27CABE790, v19, MEMORY[0x277CDF820]);
    v21 = (v35 + 16);
    v22 = (v35 + 8);
    v23 = 0.0;
    v24 = 0.0;
    while (1)
    {
      sub_21700EC94();
      if (*&v18[v20] == v39[0])
      {
        break;
      }

      v25 = sub_21700ECE4();
      (*v21)(v10);
      v25(v39, 0);
      sub_21700ECA4();
      sub_217008B14();
      LOBYTE(v39[0]) = v26 & 1;
      v38 = v27 & 1;
      sub_217008484();
      v29 = v28;
      v31 = v30;
      (*v22)(v10, v8);
      if (v23 <= v29)
      {
        v23 = v29;
      }

      if (v24 <= v31)
      {
        v24 = v31;
      }
    }

    sub_216697664(v18, &qword_27CABE780, &qword_21702FB18);
  }
}

uint64_t sub_216986F18(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = sub_2170084B4();
  v11 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2170085B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE780, &qword_21702FB18);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v31 - v21;
  (*(v15 + 16))(v17, a9, v14, v20);
  v23 = MEMORY[0x277CDF7F8];
  sub_21698C470(&qword_27CABE788, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
  sub_21700E754();
  v24 = *(v19 + 44);
  sub_21698C470(&qword_27CABE790, v23, MEMORY[0x277CDF820]);
  v25 = v11;
  v26 = (v11 + 16);
  *&v31[1] = a3;
  v27 = (v25 + 8);
  for (i = v32; ; (*v27)(v13, i))
  {
    sub_21700EC94();
    if (*&v22[v24] == v34[0])
    {
      break;
    }

    v29 = sub_21700ECE4();
    (*v26)(v13);
    v29(v34, 0);
    sub_21700ECA4();
    sub_21700F054();
    sub_21700B564();
    LOBYTE(v34[0]) = 0;
    v33 = 0;
    sub_217008494();
  }

  return sub_216697664(v22, &qword_27CABE780, &qword_21702FB18);
}

void (*sub_216987370(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_2169873E4(uint64_t a1)
{
  v3 = *(a1 + 24);
  v18 = *(a1 + 16);
  v2 = v18;
  v19 = v3;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE678, &qword_21702F818);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE680, &qword_21702F820);
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  swift_getWitnessTable();
  v4 = sub_21700B0A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v15 = v2;
  v16 = v3;
  v17 = v1;
  sub_21700B3B4();
  sub_21700B094();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_2166C24DC(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_21698761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE678, &qword_21702F818);
  MEMORY[0x28223BE20](v48);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v39 - v9;
  v10 = sub_217006624();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2170064D4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v47 = MEMORY[0x277D26A10];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v39 = &v39 - v21;
  v44 = a1;
  sub_21700A2A4();
  v43 = type metadata accessor for MaterialOverlayBackground(0, a2, a3, v22);
  *v13 = *(a1 + *(v43 + 40));
  (*(v11 + 104))(v13, *MEMORY[0x277D26AA0], v10);
  sub_217006494();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  *&v60 = a2;
  *(&v60 + 1) = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v39;
  v24 = OpaqueTypeMetadata2;
  sub_2166C24DC(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v25 = v40;
  v47 = *(v40 + 8);
  v47(v19, v24);
  v26 = v46;
  sub_21700B2B4();
  *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE688, &qword_21702F828) + 56)) = 256;
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE690, &qword_21702F830) + 36);
  *v27 = 0;
  *(v27 + 8) = 257;
  v28 = sub_217008A34();
  LOBYTE(a2) = sub_217009C84();
  v29 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE698, &qword_21702F838) + 36);
  *v29 = v28;
  *(v29 + 8) = a2;
  v30 = v43;
  v31 = v48;
  *(v26 + *(v48 + 36)) = *(v44 + *(v43 + 36));
  v32 = sub_216987C8C(v30);
  v33 = sub_217008A34();
  v34 = sub_217009C84();
  LOBYTE(v57[0]) = 1;
  *&v58 = v32;
  WORD4(v58) = 256;
  *(&v58 + 10) = v60;
  HIWORD(v58) = WORD2(v60);
  *v59 = 0;
  *&v59[8] = 257;
  *&v59[10] = v55;
  *&v59[14] = WORD2(v55);
  *&v59[16] = v33;
  v59[24] = v34;
  v35 = *(v25 + 16);
  v42 = v19;
  v35(v19, v23, v24);
  v57[0] = v19;
  v36 = v49;
  sub_2166A6EA4();
  v55 = v58;
  v56[0] = *v59;
  *(v56 + 9) = *&v59[9];
  v57[1] = v36;
  v57[2] = &v55;
  sub_2166A6EA4();
  v54[0] = v24;
  v54[1] = v31;
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE680, &qword_21702F820);
  v51 = OpaqueTypeConformance2;
  v52 = sub_21698C4C4();
  v53 = sub_21698C694();
  sub_216984F84(v57, 3, v54);
  sub_216697664(&v58, &qword_27CABE680, &qword_21702F820);
  sub_216697664(v26, &qword_27CABE678, &qword_21702F818);
  v37 = v47;
  v47(v23, v24);
  v60 = v55;
  *v61 = v56[0];
  *&v61[9] = *(v56 + 9);
  sub_216697664(&v60, &qword_27CABE680, &qword_21702F820);
  sub_216697664(v36, &qword_27CABE678, &qword_21702F818);
  return v37(v42, v24);
}

uint64_t sub_216987C8C(uint64_t a1)
{
  sub_21700ACC4();
  v1 = sub_21700AD04();

  return v1;
}

uint64_t sub_216987CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE610, &qword_21702F7C8);
  MEMORY[0x28223BE20](v112);
  v4 = v84 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE618, &unk_21702F7D0);
  v104 = *(v5 - 8);
  v105 = v5;
  MEMORY[0x28223BE20](v5);
  v103 = v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = v84 - v10;
  v101 = sub_2170063E4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE620, &qword_21702F7E0);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = v84 - v12;
  v13 = sub_217005EF4();
  MEMORY[0x28223BE20](v13 - 8);
  v88 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE628, &qword_21702F7E8);
  MEMORY[0x28223BE20](v109);
  v89 = v84 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE630, &qword_21702F7F0);
  v92 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v91 = v84 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE638, &qword_21702F7F8);
  v102 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v98 = v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE640, &qword_21702F800);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v84 - v19;
  v21 = sub_2170071B4();
  v106 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  MEMORY[0x28223BE20](v24 - 8);
  v87 = v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v84 - v30;
  v32 = sub_217006EC4();
  v108 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v107 = v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1[3];
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v35);
  (*(*(v34 + 16) + 8))(v35);
  v36 = type metadata accessor for VideoArtwork(0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v36) == 1)
  {
    v37 = v2;
    sub_216697664(v28, &qword_27CABBEA8, &unk_217026710);
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
LABEL_8:
    sub_216697664(v31, &qword_27CABBF10, &qword_2170532E0);
    sub_2167B7D58(v37, &v117);
    sub_21698C22C(&v117, v4);
    swift_storeEnumTagMultiPayload();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
    v45 = sub_21698C264();
    v114 = v109;
    v115 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v114 = v110;
    v115 = v44;
    v116 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21698C31C();
    sub_217009554();
    return sub_21698C370(&v117);
  }

  v85 = v36;
  v90 = v32;
  v86 = v4;
  v38 = v2[3];
  v39 = v2[4];
  v37 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v38);
  (*(v39 + 32))(v38, v39);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_2170071A4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
    v41 = v106;
    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v20, &qword_27CABE640, &qword_21702F800);
    }
  }

  else
  {
    v41 = v106;
    (*(v106 + 32))(v23, v20, v21);
  }

  sub_216DEE900(v31);
  (*(v41 + 8))(v23, v21);
  sub_21698B938(v28, type metadata accessor for VideoArtwork);
  v42 = v90;
  v43 = __swift_getEnumTagSinglePayload(v31, 1, v90);
  v4 = v86;
  if (v43 == 1)
  {
    goto LABEL_8;
  }

  (*(v108 + 32))(v107, v31, v42);
  v48 = sub_217006EB4();
  v84[1] = v84;
  MEMORY[0x28223BE20](v48);
  v49 = v37;
  MEMORY[0x28223BE20](v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE668, &qword_21702F810);
  sub_21698C3B4();
  v106 = sub_21698C31C();
  v51 = v89;
  sub_2170063A4();
  v52 = sub_217008A34();
  v53 = sub_217009C84();
  v54 = v109;
  v55 = v51 + *(v109 + 36);
  *v55 = v52;
  *(v55 + 8) = v53;
  v56 = sub_21698C264();
  v57 = v93;
  sub_21700A2A4();
  sub_216697664(v51, &qword_27CABE628, &qword_21702F7E8);
  v59 = v49[3];
  v58 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v59);
  v60 = v87;
  (*(*(v58 + 16) + 8))(v59);
  v61 = v85;
  if (__swift_getEnumTagSinglePayload(v60, 1, v85) == 1)
  {
    sub_216697664(v60, &qword_27CABBEA8, &unk_217026710);
    v62 = sub_21700C444();
    v63 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v62);
    v64 = v99;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v63, 1, v62) != 1)
    {
      sub_216697664(v63, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v65 = *(v61 + 20);
    v62 = sub_21700C444();
    v66 = *(v62 - 8);
    v67 = v60 + v65;
    v68 = v60;
    v69 = v94;
    (*(v66 + 16))(v94, v67, v62);
    sub_21698B938(v68, type metadata accessor for VideoArtwork);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v62);
    v64 = v99;
    (*(v66 + 32))(v99, v69, v62);
  }

  sub_21700C444();
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v62);
  v70 = v97;
  sub_216B50CD4(v64, v97);
  v71 = v91;
  v72 = v96;
  sub_217006454();
  (*(v100 + 8))(v70, v101);
  (*(v95 + 8))(v57, v72);
  v117 = v54;
  v118 = v56;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v103;
  v75 = v110;
  sub_21700A2A4();
  (*(v92 + 8))(v71, v75);
  v76 = v49[3];
  v77 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v76);
  v117 = (*(v77 + 40))(v76, v77);
  v118 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  v80 = v98;
  v81 = v105;
  sub_217006464();

  (*(v104 + 8))(v74, v81);
  v82 = v102;
  v83 = v111;
  (*(v102 + 16))(v4, v80, v111);
  swift_storeEnumTagMultiPayload();
  v117 = v75;
  v118 = v79;
  v119 = v73;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v82 + 8))(v80, v83);
  return (*(v108 + 8))(v107, v90);
}

uint64_t sub_216988B84@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - v7;
  v8 = sub_21700C444();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v34 = sub_217007474();
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  sub_217006EA4();
  v20 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v20);
  sub_217007464();
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 24))(v21, v22);
  v23 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v23) == 1)
  {
    sub_216697664(v5, &qword_27CAB6D60, &qword_217014E40);
    v24 = v36;
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v8);
    sub_21700C404();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v8);
    v26 = v35;
    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v24, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v27 = *(v23 + 20);
    v29 = v35;
    v28 = v36;
    (*(v35 + 16))(v36, &v5[v27], v8);
    sub_21698B938(v5, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
    (*(v29 + 32))(v10, v28, v8);
    v26 = v29;
  }

  sub_2170073E4();
  (*(v26 + 8))(v10, v8);
  v30 = v34;
  (*(v14 + 8))(v16, v34);
  v31 = v37;
  (*(v14 + 32))(v37, v19, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE668, &qword_21702F810);
  v33 = v31 + *(result + 36);
  *v33 = 0x3FFC71C71C71C71CLL;
  *(v33 + 8) = 0;
  return result;
}

uint64_t sub_216988FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_21700C444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700C4B4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a3, a1, v13);
  __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21700C404();
    sub_216697664(a2, &qword_27CAB7530, &unk_21701A660);
    (*(v14 + 8))(a1, v13);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_216697664(v8, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    sub_216697664(a2, &qword_27CAB7530, &unk_21701A660);
    (*(v14 + 8))(a1, v13);
    (*(v10 + 32))(v12, v8, v9);
  }

  v15 = type metadata accessor for FullScreenArtworkView(0);
  return (*(v10 + 32))(a3 + *(v15 + 20), v12, v9);
}

void *sub_21698928C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for FullScreenArtworkView(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_21700C4B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v22 = v2;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CABF770, &unk_21701A670);
    sub_21698C0EC(__dst);
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    sub_21698C0F4();
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v20((v16 + v15), v11, v8);
    sub_21698B990();
    sub_21700B3B4();
    sub_217008BB4();
    v17 = sub_217008A34();
    v18 = sub_217009C84();
    (*(v9 + 8))(v14, v8);
    v26[0] = sub_21698C14C;
    v26[1] = v16;
    memcpy(&v26[2], v25, 0x70uLL);
    v26[16] = v17;
    LOBYTE(v26[17]) = v18;
    nullsub_1();
    memcpy(__dst, v26, 0x89uLL);
  }

  return memcpy(v24, __dst, 0x89uLL);
}

uint64_t sub_21698963C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35[1] = a2;
  v41 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE608, &qword_217053450);
  MEMORY[0x28223BE20](v39);
  v40 = v35 - v4;
  v5 = sub_21700C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_217007474();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v38 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v37 = v35 - v16;
  v17 = sub_21700C474();
  v18 = v17 / sub_21700C484();
  sub_217008444();
  v20 = v19;
  sub_217008444();
  v22 = (*&v18 >> 52) & 0x7FFLL;
  if (!v22 || ((v23 = v20 / v21, v22 != 2047) ? (v24 = v18 < v23) : (v24 = 0), (v25 = (*&v23 >> 52) & 0x7FFLL, v24) ? (v26 = v25 == 0) : (v26 = 1), v26 || v25 == 2047))
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_217008444();
    sub_2170074A4();
    type metadata accessor for FullScreenArtworkView(0);
    sub_2170073E4();
    v27 = *(v9 + 8);
    v28 = v36;
    v27(v11, v36);
    *(swift_allocObject() + 16) = xmmword_217016ED0;
    v29 = sub_2167C505C();
    v30 = v37;
    sub_2170073F4();

    v27(v14, v28);
    v31 = v38;
    (*(v38 + 16))(v40, v30, v15);
  }

  else
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_217008444();
    sub_217007494();
    type metadata accessor for FullScreenArtworkView(0);
    sub_2170073E4();
    v33 = *(v9 + 8);
    v34 = v36;
    v33(v11, v36);
    *(swift_allocObject() + 16) = xmmword_217016ED0;
    v29 = sub_2167C505C();
    v30 = v37;
    sub_2170073F4();

    v33(v14, v34);
    v31 = v38;
    (*(v38 + 16))(v40, v30, v15);
  }

  swift_storeEnumTagMultiPayload();
  v42 = &type metadata for ArtworkPlaceholderView;
  v43 = v29;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  return (*(v31 + 8))(v30, v15);
}

uint64_t sub_216989B84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE778, &qword_21702FAC0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[3];
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v12);
  (*(v13 + 24))(v12, v13);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216697664(v8, &qword_27CAB6D60, &qword_217014E40);
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    sub_21698B990();
    sub_216989DB4(v11);
    v15 = sub_217008A34();
    v16 = sub_217009C84();
    v17 = &v5[*(v3 + 36)];
    *v17 = v15;
    v17[8] = v16;
    sub_21671BBB0();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
    return sub_21698B938(v11, type metadata accessor for Artwork);
  }
}

uint64_t sub_216989DB4(uint64_t a1)
{
  v2 = sub_21700C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217007474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = [objc_opt_self() mainScreen];
  [v13 applicationFrame];

  (*(v3 + 16))(v5, a1, v2);
  sub_217007484();
  type metadata accessor for Artwork(0);
  sub_2170073E4();
  v14 = *(v7 + 8);
  v14(v9, v6);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  return (v14)(v12, v6);
}

uint64_t sub_21698A02C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = type metadata accessor for Artwork(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_34_18();
  sub_21698C0F4();
  v15 = OUTLINED_FUNCTION_47_17();
  v16(v15);
  v17 = *(v11 + 28);
  v18 = sub_21700C444();
  OUTLINED_FUNCTION_34();
  (*(v19 + 16))(v5, v14 + v17, v18);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  sub_216988FFC(v9, v5, a1);
  OUTLINED_FUNCTION_0_101();
  return sub_21698B938(v14, v23);
}

uint64_t sub_21698A1F0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE688, &qword_21702F828);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &__src[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE700, &qword_21702F860);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &__src[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE6F0, &qword_21702F858);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &__src[-v14];
  if (qword_27CAB5B48 != -1)
  {
    swift_once();
  }

  v16 = sub_21700B2F4();
  v17 = __swift_project_value_buffer(v16, qword_27CABE5B8);
  (*(*(v16 - 8) + 16))(v7, v17, v16);
  *&v7[*(v4 + 56)] = 256;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  memcpy(&v11[*(v8 + 36)], __src, 0x70uLL);
  sub_2167A4788();
  v18 = &v15[*(v12 + 36)];
  *v18 = 0.0;
  v18[1] = a2;
  v19 = sub_217008A34();
  v20 = sub_217009C84();
  sub_2167A4788();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE6D8, &qword_21702F850);
  v22 = a1 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20;
  return result;
}

uint64_t sub_21698A498(uint64_t a1, uint64_t a2)
{
  v276 = a1;
  v277 = a2;
  v261 = type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v4);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5F0, &unk_21702F7B0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  v263 = v15;
  v16 = OUTLINED_FUNCTION_4_1();
  v275 = type metadata accessor for Artwork(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = v259 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v259 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v25);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598, qword_217037510);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v269 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v31 = OUTLINED_FUNCTION_36(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  v272 = v33;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  v273 = v35;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  v270 = v38;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47_1();
  v271 = v40;
  v41 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for BackgroundConfiguration(v41);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77();
  v45 = (v43 - v44);
  MEMORY[0x28223BE20](v46);
  v48 = (v259 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = v259 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = (v259 - v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5F8, &qword_21702F7C0);
  OUTLINED_FUNCTION_36(v55);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  v58 = v259 - v57;
  v60 = v259 + *(v59 + 56) - v57;
  sub_21698C0F4();
  sub_21698C0F4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_29;
    case 2u:
      OUTLINED_FUNCTION_5_50();
      sub_21698C0F4();
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v51, v103);
        goto LABEL_29;
      }

      sub_21698B990();
      sub_21698B990();
      if (sub_21700C4A4())
      {
        v101 = sub_21688ADC8(&v23[*(v275 + 20)], &v20[*(v275 + 20)]);
      }

      else
      {
        v101 = 0;
      }

      sub_21698B938(v20, type metadata accessor for Artwork);
      sub_21698B938(v23, type metadata accessor for Artwork);
      goto LABEL_83;
    case 3u:
      OUTLINED_FUNCTION_5_50();
      sub_21698C0F4();
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_29;
      }

      v101 = *v48 == *v60;
      goto LABEL_83;
    case 4u:
      OUTLINED_FUNCTION_5_50();
      v63 = v58;
      sub_21698C0F4();
      v65 = *(v45 + 5);
      v64 = *(v45 + 6);
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        v58 = v63;
        goto LABEL_29;
      }

      v66 = *(v60 + 6);
      v276 = *(v60 + 5);
      v277 = v66;
      sub_2166A0F18(v45, &v279);
      sub_2166A0F18(v60, v278);
      OUTLINED_FUNCTION_36_17();
      OUTLINED_FUNCTION_29_22();
      v67 = v273;
      v68 = OUTLINED_FUNCTION_47();
      v69(v68);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_29_22();
      v70 = v272;
      v71 = OUTLINED_FUNCTION_47();
      v72(v71);
      v73 = *(v274 + 48);
      v74 = v269;
      OUTLINED_FUNCTION_38_16(v67, v269);
      OUTLINED_FUNCTION_38_16(v70, v74 + v73);
      v75 = OUTLINED_FUNCTION_49_1();
      v76 = v275;
      OUTLINED_FUNCTION_31_2(v75, v77, v275);
      if (v138)
      {
        OUTLINED_FUNCTION_191();
        sub_216697664(v78, v79, v80);
        v81 = OUTLINED_FUNCTION_12_36();
        sub_216697664(v81, v82, v83);
        OUTLINED_FUNCTION_31_2(v74 + v73, 1, v76);
        v84 = v268;
        v85 = v267;
        v86 = v265;
        if (v138)
        {
          sub_216697664(v74, &qword_27CAB6D60, &qword_217014E40);
          goto LABEL_10;
        }

LABEL_44:
        v146 = &qword_27CABE598;
        v147 = qword_217037510;
        v148 = v74;
        goto LABEL_76;
      }

      v137 = v259[8];
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v74 + v73, 1, v76);
      v84 = v268;
      v85 = v267;
      if (v138)
      {
        OUTLINED_FUNCTION_191();
        sub_216697664(v139, v140, v141);
        OUTLINED_FUNCTION_191();
        sub_216697664(v142, v143, v144);
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v137, v145);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_3_70();
      v161 = v259[6];
      sub_21698B990();
      v162 = sub_21700C4A4();
      if ((v162 & 1) == 0)
      {
        sub_21698B938(v161, type metadata accessor for Artwork);
        OUTLINED_FUNCTION_42();
        sub_216697664(v198, v199, v200);
        OUTLINED_FUNCTION_42();
        sub_216697664(v201, v202, v203);
        sub_21698B938(v137, type metadata accessor for Artwork);
        OUTLINED_FUNCTION_42();
        goto LABEL_76;
      }

      LODWORD(v275) = sub_21688ADC8(v137 + *(v275 + 20), v161 + *(v275 + 20));
      OUTLINED_FUNCTION_21_28();
      sub_21698B938(v161, v163);
      OUTLINED_FUNCTION_31_9();
      sub_216697664(v164, v165, v166);
      OUTLINED_FUNCTION_31_9();
      sub_216697664(v167, v168, v169);
      v170 = OUTLINED_FUNCTION_8();
      sub_21698B938(v170, v171);
      OUTLINED_FUNCTION_31_9();
      v86 = v265;
      sub_216697664(v172, v173, v174);
      if ((v275 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_10:
      OUTLINED_FUNCTION_36_17();
      OUTLINED_FUNCTION_29_22();
      v87 = OUTLINED_FUNCTION_47();
      v88(v87);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_29_22();
      v89 = OUTLINED_FUNCTION_47();
      v90(v89);
      v91 = *(v260 + 48);
      OUTLINED_FUNCTION_38_16(v85, v84);
      OUTLINED_FUNCTION_38_16(v86, v84 + v91);
      v92 = v261;
      OUTLINED_FUNCTION_31_2(v84, 1, v261);
      if (!v138)
      {
        v189 = v259[4];
        sub_2166A6EA4();
        OUTLINED_FUNCTION_31_2(v84 + v91, 1, v92);
        if (!v190)
        {
          OUTLINED_FUNCTION_20_25();
          v219 = v259[2];
          sub_21698B990();
          sub_21698B9E8(*v189, *v219);
          if (v220)
          {
            v221 = sub_21688ADC8(v189 + *(v92 + 20), v219 + *(v92 + 20));
            OUTLINED_FUNCTION_42();
            sub_216697664(v222, v223, v224);
            OUTLINED_FUNCTION_42();
            sub_216697664(v225, v226, v227);
            sub_21698B938(v219, type metadata accessor for VideoArtwork);
            sub_21698B938(v189, type metadata accessor for VideoArtwork);
            OUTLINED_FUNCTION_42();
            sub_216697664(v228, v229, v230);
            v99 = v277;
            if ((v221 & 1) == 0)
            {
              v101 = 0;
              goto LABEL_78;
            }

            goto LABEL_15;
          }

          OUTLINED_FUNCTION_191();
          sub_216697664(v244, v245, v246);
          OUTLINED_FUNCTION_191();
          sub_216697664(v247, v248, v249);
          sub_21698B938(v219, type metadata accessor for VideoArtwork);
          sub_21698B938(v189, type metadata accessor for VideoArtwork);
          v148 = OUTLINED_FUNCTION_12_36();
LABEL_76:
          sub_216697664(v148, v146, v147);
LABEL_77:
          v101 = 0;
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_191();
        sub_216697664(v191, v192, v193);
        OUTLINED_FUNCTION_191();
        sub_216697664(v194, v195, v196);
        OUTLINED_FUNCTION_10_42();
        sub_21698B938(v189, v197);
LABEL_60:
        v146 = &qword_27CABE5F0;
        v147 = &unk_21702F7B0;
        v148 = v84;
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_191();
      sub_216697664(v93, v94, v95);
      OUTLINED_FUNCTION_191();
      sub_216697664(v96, v97, v98);
      OUTLINED_FUNCTION_31_2(v84 + v91, 1, v92);
      if (!v138)
      {
        goto LABEL_60;
      }

      sub_216697664(v84, &qword_27CABBEA8, &unk_217026710);
      v99 = v277;
LABEL_15:
      if (v65 == v276 && v64 == v99)
      {
        v101 = 1;
      }

      else
      {
        v101 = sub_21700F7D4();
      }

LABEL_78:

      __swift_destroy_boxed_opaque_existential_1Tm(v278);
      __swift_destroy_boxed_opaque_existential_1Tm(&v279);
      OUTLINED_FUNCTION_4_51();
      v251 = v63;
LABEL_84:
      sub_21698B938(v251, v250);
      return v101 & 1;
    case 5u:
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_51();
      sub_21698B938(v58, v102);
      v101 = 1;
      return v101 & 1;
    default:
      OUTLINED_FUNCTION_5_50();
      sub_21698C0F4();
      v61 = v54[5];
      v62 = *(v54 + 48);
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
LABEL_29:
        sub_216697664(v58, &qword_27CABE5F8, &qword_21702F7C0);
        v101 = 0;
        return v101 & 1;
      }

      v104 = *(v60 + 5);
      LODWORD(v277) = v60[48];
      sub_2166A0F18(v54, &v279);
      sub_2166A0F18(v60, v278);
      OUTLINED_FUNCTION_36_17();
      OUTLINED_FUNCTION_29_22();
      v105 = v271;
      v106 = OUTLINED_FUNCTION_47();
      v107(v106);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_29_22();
      v108 = v270;
      v109 = OUTLINED_FUNCTION_47();
      v110(v109);
      v111 = *(v274 + 48);
      v112 = v262;
      OUTLINED_FUNCTION_38_16(v105, v262);
      OUTLINED_FUNCTION_38_16(v108, v112 + v111);
      v113 = v275;
      OUTLINED_FUNCTION_31_2(v112, 1, v275);
      if (v138)
      {
        v114 = OUTLINED_FUNCTION_12_36();
        sub_216697664(v114, v115, v116);
        OUTLINED_FUNCTION_191();
        sub_216697664(v117, v118, v119);
        OUTLINED_FUNCTION_24_3(v112 + v111);
        v120 = v264;
        v121 = v263;
        v122 = v266;
        if (v138)
        {
          sub_216697664(v112, &qword_27CAB6D60, &qword_217014E40);
LABEL_35:
          OUTLINED_FUNCTION_36_17();
          OUTLINED_FUNCTION_29_22();
          v123 = OUTLINED_FUNCTION_47();
          v124(v123);
          OUTLINED_FUNCTION_35_20();
          OUTLINED_FUNCTION_29_22();
          v125 = OUTLINED_FUNCTION_47();
          v126(v125);
          v127 = *(v260 + 48);
          OUTLINED_FUNCTION_38_16(v121, v120);
          OUTLINED_FUNCTION_38_16(v122, v120 + v127);
          v128 = OUTLINED_FUNCTION_49_1();
          v129 = v261;
          OUTLINED_FUNCTION_31_2(v128, v130, v261);
          if (v138)
          {
            OUTLINED_FUNCTION_191();
            sub_216697664(v131, v132, v133);
            v134 = OUTLINED_FUNCTION_12_36();
            sub_216697664(v134, v135, v136);
            OUTLINED_FUNCTION_24_3(v120 + v127);
            if (v138)
            {
              sub_216697664(v120, &qword_27CABBEA8, &unk_217026710);
              if (v61 == v104)
              {
                goto LABEL_73;
              }

LABEL_81:
              v101 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v204 = v259[3];
            sub_2166A6EA4();
            OUTLINED_FUNCTION_31_2(v120 + v127, 1, v129);
            if (!v205)
            {
              OUTLINED_FUNCTION_20_25();
              v231 = v259[1];
              sub_21698B990();
              sub_21698B9E8(*v204, *v231);
              if (v232)
              {
                v233 = v231;
                v234 = sub_21688ADC8(v204 + *(v129 + 20), v231 + *(v129 + 20));
                OUTLINED_FUNCTION_71_0();
                sub_216697664(v235, v236, v237);
                OUTLINED_FUNCTION_71_0();
                sub_216697664(v238, v239, v240);
                sub_21698B938(v233, type metadata accessor for VideoArtwork);
                sub_21698B938(v204, type metadata accessor for VideoArtwork);
                OUTLINED_FUNCTION_71_0();
                sub_216697664(v241, v242, v243);
                v101 = 0;
                if ((v234 & 1) == 0 || v61 != v104)
                {
LABEL_82:
                  __swift_destroy_boxed_opaque_existential_1Tm(v278);
                  __swift_destroy_boxed_opaque_existential_1Tm(&v279);
LABEL_83:
                  OUTLINED_FUNCTION_4_51();
                  v251 = v58;
                  goto LABEL_84;
                }

LABEL_73:
                v101 = v62 ^ v277 ^ 1;
                goto LABEL_82;
              }

              OUTLINED_FUNCTION_191();
              sub_216697664(v252, v253, v254);
              v255 = OUTLINED_FUNCTION_12_36();
              sub_216697664(v255, v256, v257);
              sub_21698B938(v231, type metadata accessor for VideoArtwork);
              sub_21698B938(v204, type metadata accessor for VideoArtwork);
              OUTLINED_FUNCTION_191();
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_191();
            sub_216697664(v206, v207, v208);
            v209 = OUTLINED_FUNCTION_12_36();
            sub_216697664(v209, v210, v211);
            OUTLINED_FUNCTION_10_42();
            sub_21698B938(v204, v212);
          }

          v158 = &qword_27CABE5F0;
          v159 = &unk_21702F7B0;
          v160 = v120;
LABEL_80:
          sub_216697664(v160, v158, v159);
          goto LABEL_81;
        }
      }

      else
      {
        v149 = v259[7];
        sub_2166A6EA4();
        OUTLINED_FUNCTION_24_3(v112 + v111);
        v120 = v264;
        v121 = v263;
        v122 = v266;
        if (!v150)
        {
          OUTLINED_FUNCTION_3_70();
          v175 = v259[5];
          sub_21698B990();
          v176 = sub_21700C4A4();
          if ((v176 & 1) == 0)
          {
            sub_21698B938(v175, type metadata accessor for Artwork);
            OUTLINED_FUNCTION_42();
            sub_216697664(v213, v214, v215);
            OUTLINED_FUNCTION_42();
            sub_216697664(v216, v217, v218);
            sub_21698B938(v149, type metadata accessor for Artwork);
            OUTLINED_FUNCTION_42();
            goto LABEL_80;
          }

          LODWORD(v276) = sub_21688ADC8(v149 + *(v113 + 20), v175 + *(v113 + 20));
          OUTLINED_FUNCTION_21_28();
          sub_21698B938(v175, v177);
          OUTLINED_FUNCTION_51();
          sub_216697664(v178, v179, v180);
          OUTLINED_FUNCTION_51();
          sub_216697664(v181, v182, v183);
          v184 = OUTLINED_FUNCTION_8();
          sub_21698B938(v184, v185);
          OUTLINED_FUNCTION_51();
          sub_216697664(v186, v187, v188);
          if ((v276 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_35;
        }

        OUTLINED_FUNCTION_191();
        sub_216697664(v151, v152, v153);
        OUTLINED_FUNCTION_191();
        sub_216697664(v154, v155, v156);
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v149, v157);
      }

      v158 = &qword_27CABE598;
      v159 = qword_217037510;
      v160 = v112;
      goto LABEL_80;
  }
}