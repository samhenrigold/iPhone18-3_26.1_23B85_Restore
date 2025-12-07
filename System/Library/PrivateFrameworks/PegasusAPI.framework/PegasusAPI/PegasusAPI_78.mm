uint64_t static Searchfoundation_MediaInfoCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_69();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B94FD3D4(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B94FD3D4(uint64_t a1, uint64_t a2)
{
  v134 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v134);
  v130 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  MEMORY[0x1EEE9AC00](v132);
  v135 = &v129 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v131 = (&v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v133 = &v129 - v9;
  v139 = type metadata accessor for Searchfoundation_ActionItem(0);
  MEMORY[0x1EEE9AC00](v139);
  v136 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFC0, &qword_1B96CA0E0);
  MEMORY[0x1EEE9AC00](v138);
  v140 = &v129 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v137 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v129 - v15;
  v145 = type metadata accessor for Searchfoundation_MediaItem(0);
  MEMORY[0x1EEE9AC00](v145);
  v141 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFE10, &unk_1B96D4040);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v129 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFDE8, &qword_1B96D3DF8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v143 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v148 = &v129 - v21;
  v22 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v24);
  v149 = &v129 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v129 - v30;
  swift_beginAccess();
  v32 = *(a1 + 16);
  swift_beginAccess();
  v33 = *(a2 + 16);

  sub_1B8D67B1C(v32, v33);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v37 = *(a1 + 24);
  v36 = *(a1 + 32);
  swift_beginAccess();
  v38 = v37 == *(a2 + 24) && v36 == *(a2 + 32);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = v39 == *(a2 + 40) && v40 == *(a2 + 48);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v42 = *(a1 + 56);
  swift_beginAccess();
  if (v42 != *(a2 + 56))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v43 = *(a1 + 57);
  swift_beginAccess();
  if (v43 != *(a2 + 57))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v44 = *(a1 + 58);
  swift_beginAccess();
  if (v44 != *(a2 + 58))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  swift_beginAccess();
  v47 = v45 == *(a2 + 64) && v46 == *(a2 + 72);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v48 = *(a1 + 80);
  v49 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v48, v49, *(a2 + 80)))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v50 = *(v24 + 48);
  v51 = v149;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51, 1, v22) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v22) == 1)
    {
      sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v52 = &qword_1EBACB058;
    v53 = &unk_1B96CA9D0;
    v54 = v51;
LABEL_49:
    sub_1B8D9207C(v54, v52, v53);
    goto LABEL_50;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v22) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B94FEC20();
    goto LABEL_26;
  }

  v55 = v142;
  sub_1B94FEB70();
  if (*&v29[*(v22 + 20)] != *&v55[*(v22 + 20)])
  {

    sub_1B947FDE4();
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      sub_1B94FEC20();
      v81 = &qword_1EBACB050;
      v82 = &unk_1B96B7BD0;
      sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B94FEC20();
      v54 = v51;
      goto LABEL_48;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v58 = sub_1B964C850();
  sub_1B94FEC20();
  sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B94FEC20();
  sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_30:
  swift_beginAccess();
  v59 = v148;
  sub_1B8D92024();
  swift_beginAccess();
  v60 = *(v144 + 48);
  v61 = v146;
  sub_1B8D92024();
  sub_1B8D92024();
  v62 = v145;
  if (__swift_getEnumTagSinglePayload(v61, 1, v145) == 1)
  {
    sub_1B8D9207C(v59, &qword_1EBACFDE8, &qword_1B96D3DF8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61 + v60, 1, v62);
    v64 = v147;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v61, &qword_1EBACFDE8, &qword_1B96D3DF8);
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v65 = v143;
  sub_1B8D92024();
  v66 = __swift_getEnumTagSinglePayload(v61 + v60, 1, v62);
  v64 = v147;
  if (v66 == 1)
  {
    sub_1B8D9207C(v148, &qword_1EBACFDE8, &qword_1B96D3DF8);
    sub_1B94FEC20();
LABEL_35:
    v52 = &qword_1EBACFE10;
    v53 = &unk_1B96D4040;
    v54 = v61;
    goto LABEL_49;
  }

  v67 = v141;
  sub_1B94FEB70();
  if (*&v65[*(v62 + 20)] != *&v67[*(v62 + 20)])
  {

    sub_1B95049EC();
    v69 = v68;

    if ((v69 & 1) == 0)
    {
      sub_1B94FEC20();
      v81 = &qword_1EBACFDE8;
      v82 = &qword_1B96D3DF8;
      sub_1B8D9207C(v148, &qword_1EBACFDE8, &qword_1B96D3DF8);
      sub_1B94FEC20();
      v54 = v61;
      goto LABEL_48;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v70 = sub_1B964C850();
  sub_1B94FEC20();
  sub_1B8D9207C(v148, &qword_1EBACFDE8, &qword_1B96D3DF8);
  sub_1B94FEC20();
  sub_1B8D9207C(v61, &qword_1EBACFDE8, &qword_1B96D3DF8);
  if ((v70 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  v71 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__details;
  swift_beginAccess();
  v72 = *(a1 + v71);
  v73 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__details;
  swift_beginAccess();
  v74 = *(a2 + v73);

  sub_1B8D915B8(v72, v74);
  v76 = v75;

  if ((v76 & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v77 = *(v138 + 48);
  v78 = v140;
  sub_1B8D92024();
  v79 = v78;
  sub_1B8D92024();
  v80 = v139;
  if (__swift_getEnumTagSinglePayload(v78, 1, v139) != 1)
  {
    v83 = v137;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v79 + v77, 1, v80) == 1)
    {
      sub_1B8D9207C(v64, &qword_1EBACAFA8, &qword_1B96B9880);
      sub_1B94FEC20();
      goto LABEL_46;
    }

    v86 = v136;
    sub_1B94FEB70();
    if (*&v83[*(v80 + 20)] == *&v86[*(v80 + 20)] || (, , sub_1B92C3040(), v88 = v87, , , (v88 & 1) != 0))
    {
      sub_1B964C2B0();
      sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v89 = sub_1B964C850();
      sub_1B94FEC20();
      sub_1B8D9207C(v64, &qword_1EBACAFA8, &qword_1B96B9880);
      sub_1B94FEC20();
      sub_1B8D9207C(v140, &qword_1EBACAFA8, &qword_1B96B9880);
      if ((v89 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }

    sub_1B94FEC20();
    v81 = &qword_1EBACAFA8;
    v82 = &qword_1B96B9880;
    sub_1B8D9207C(v64, &qword_1EBACAFA8, &qword_1B96B9880);
    sub_1B94FEC20();
    v54 = v140;
LABEL_48:
    v52 = v81;
    v53 = v82;
    goto LABEL_49;
  }

  sub_1B8D9207C(v64, &qword_1EBACAFA8, &qword_1B96B9880);
  if (__swift_getEnumTagSinglePayload(v78 + v77, 1, v80) != 1)
  {
LABEL_46:
    v52 = &qword_1EBACAFC0;
    v53 = &qword_1B96CA0E0;
    v54 = v79;
    goto LABEL_49;
  }

  sub_1B8D9207C(v78, &qword_1EBACAFA8, &qword_1B96B9880);
LABEL_55:
  v90 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__offers;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__offers;
  swift_beginAccess();
  v93 = *(a2 + v92);

  sub_1B8D91510(v91, v93);
  v95 = v94;

  if ((v95 & 1) == 0)
  {
    goto LABEL_50;
  }

  v96 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListIdentifier);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListIdentifier);
  swift_beginAccess();
  v100 = v97 == *v99 && v98 == v99[1];
  if (!v100 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v101 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListButtonLabel);
  swift_beginAccess();
  v102 = *v101;
  v103 = v101[1];
  v104 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListButtonLabel);
  swift_beginAccess();
  v105 = v102 == *v104 && v103 == v104[1];
  if (!v105 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v106 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListContinuationText);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  v109 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListContinuationText);
  swift_beginAccess();
  v110 = v107 == *v109 && v108 == v109[1];
  if (!v110 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v111 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListConfirmationText);
  swift_beginAccess();
  v112 = *v111;
  v113 = v111[1];
  v114 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListConfirmationText);
  swift_beginAccess();
  v115 = v112 == *v114 && v113 == v114[1];
  if (!v115 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v116 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__isMediaContainer;
  swift_beginAccess();
  LODWORD(v116) = *(a1 + v116);
  v117 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__isMediaContainer;
  swift_beginAccess();
  if (v116 != *(a2 + v117))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v118 = *(v132 + 48);
  v119 = v135;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v119, 1, v134) == 1)
  {
    sub_1B8D9207C(v133, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v135 + v118, 1, v134) == 1)
    {
      sub_1B8D9207C(v135, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_85:
      v124 = a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListItemType;
      swift_beginAccess();
      v125 = *v124;
      v126 = *(v124 + 8);

      v127 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListItemType);
      swift_beginAccess();
      v128 = *v127;

      return sub_1B8D92198(v125, v126, v128);
    }

    goto LABEL_83;
  }

  v120 = v135;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v120 + v118, 1, v134) == 1)
  {
    sub_1B8D9207C(v133, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B94FEC20();
LABEL_83:
    v52 = &qword_1EBACB230;
    v53 = &unk_1B96B8870;
    v54 = v135;
    goto LABEL_49;
  }

  v121 = v135;
  v122 = v130;
  sub_1B94FEB70();
  v123 = static Searchfoundation_RichText.== infix(_:_:)(v131, v122);
  sub_1B94FEC20();
  sub_1B8D9207C(v133, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B94FEC20();
  sub_1B8D9207C(v121, &qword_1EBACB1D0, &qword_1B96B9870);
  if (v123)
  {
    goto LABEL_85;
  }

LABEL_50:

  return 0;
}

uint64_t Searchfoundation_MediaInfoCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  sub_1B8CD34A0(&qword_1EBACFDF0, type metadata accessor for Searchfoundation_MediaInfoCardSection, protocol conformance descriptor for Searchfoundation_MediaInfoCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94FEA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD34A0(&qword_1EBACFE08, type metadata accessor for Searchfoundation_MediaInfoCardSection, protocol conformance descriptor for Searchfoundation_MediaInfoCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94FEA80(uint64_t a1)
{
  v2 = sub_1B8CD34A0(&qword_1EBACE768, type metadata accessor for Searchfoundation_MediaInfoCardSection, protocol conformance descriptor for Searchfoundation_MediaInfoCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94FEAF0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD34A0(&qword_1EBACE768, type metadata accessor for Searchfoundation_MediaInfoCardSection, protocol conformance descriptor for Searchfoundation_MediaInfoCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B94FEB70()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B94FEBC8()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B94FEC20()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B94FEDBC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MediaInfoCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B94FEE48(uint64_t a1)
{
  sub_1B94FF04C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B94FF04C(319, &qword_1ED9F2680, type metadata accessor for Searchfoundation_MediaItem);
    if (v2 <= 0x3F)
    {
      sub_1B94FF04C(319, &qword_1ED9F2328, type metadata accessor for Searchfoundation_ActionItem);
      if (v3 <= 0x3F)
      {
        sub_1B94FF04C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B94FF04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B94FF0A0()
{
  result = qword_1EBACFE20;
  if (!qword_1EBACFE20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_WatchListItemType, &type metadata for Searchfoundation_WatchListItemType, v0, v1);
    atomic_store(result, &qword_1EBACFE20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_100(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_44()
{
  type metadata accessor for Searchfoundation_MediaInfoCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_34()
{
  type metadata accessor for Searchfoundation_MediaInfoCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_17()
{
  type metadata accessor for Searchfoundation_MediaInfoCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_65_11()
{

  return sub_1B94FEB70();
}

uint64_t OUTLINED_FUNCTION_67_7()
{

  return sub_1B94FEB70();
}

uint64_t Searchfoundation_MediaItem.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  if (qword_1EBAB85A8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBACFE60;
}

uint64_t Searchfoundation_MediaDetail.title.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_MediaDetail.content.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MediaDetail(v3);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_Text(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_67_8(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t Searchfoundation_MediaDetail.content.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_MediaDetail(v1) + 24);
  sub_1B8D9207C(v0 + v2, &qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_122_0();
  sub_1B9503174();
  v3 = type metadata accessor for Searchfoundation_Text(0);

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

uint64_t Searchfoundation_MediaDetail.content.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Text(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_MediaDetail(0) + 24);
  sub_1B8D92024();
  v11 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v11, v12, v7) == 1)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 4) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v13, v14, v7) != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_461();
    sub_1B9503174();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94FF698(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B95031CC();
    sub_1B8D9207C(v7 + v3, &qword_1EBAB8E40, &unk_1B964D640);
    sub_1B9503174();
    OUTLINED_FUNCTION_43_1();
    sub_1B9503224();
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAB8E40, &unk_1B964D640);
    OUTLINED_FUNCTION_1_84();
    sub_1B9503174();
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Searchfoundation_MediaDetail.hasContent.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MediaDetail(v4);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Text(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &unk_1B964D640);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_MediaDetail.clearContent()()
{
  v1 = type metadata accessor for Searchfoundation_MediaDetail(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB8E40, &unk_1B964D640);
  type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MediaDetail.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaDetail(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_MediaDetail.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MediaDetail(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_MediaDetail.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_MediaDetail(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_MediaDetail.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Searchfoundation_MediaDetail(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Searchfoundation_MediaItem.title.getter()
{
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521(v0 + 16, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaItem.title.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_29_31();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9502AF0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_18(v5 + 16, v9);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

uint64_t Searchfoundation_MediaItem.title.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521(v4 + 16, v1);
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94FFBB0()
{
  OUTLINED_FUNCTION_58_0();
  if (v3)
  {

    OUTLINED_FUNCTION_461();
    Searchfoundation_MediaItem.title.setter();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 64);
      OUTLINED_FUNCTION_16_32();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B9502AF0(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_18(v7 + 16, v0 + 24);
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
  }

  free(v0);
}

uint64_t Searchfoundation_MediaItem.subtitleText.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText, v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_Text(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_67_8(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t sub_1B94FFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B95031CC();
  return a7(v11);
}

uint64_t Searchfoundation_MediaItem.subtitleText.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_29_31() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B9502AF0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_69_8();
  v4 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.subtitleText.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_Text(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    *(v11 + 4) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MediaItem.thumbnail.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_29_31() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B9502AF0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.thumbnail.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B95002E4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13 - 8];
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521(v5 + *a3, v19);
  sub_1B8D92024();
  v15 = a4(0);
  v16 = __swift_getEnumTagSinglePayload(v14, 1, v15) != 1;
  sub_1B8D9207C(v14, v6, v4);
  return v16;
}

uint64_t sub_1B95003E8(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v11 = OUTLINED_FUNCTION_40_0();
    *(v4 + v10) = sub_1B9502AF0(v11);
  }

  a3(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B95004F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521(v2 + *a1, v15);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *(a2 + v10) = qword_1EBAB5608;
    v11 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t Searchfoundation_MediaItem.reviewGlyph.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_29_31() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B9502AF0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.reviewGlyph.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MediaItem.overlayImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_29_31() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B9502AF0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.overlayImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9500B9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MediaItem.reviewText.setter(v1, v2);
}

uint64_t Searchfoundation_MediaItem.reviewText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  v5 = OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521(v5, v6);
  v7 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v7;

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_MediaItem.punchout.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout, v8);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    Searchfoundation_Punchout.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v2, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_35();
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t Searchfoundation_MediaItem.punchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_29_31() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B9502AF0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_12_35();
  OUTLINED_FUNCTION_69_8();
  v4 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.punchout.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_Punchout(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = 0;
    v11[5] = 0xE000000000000000;
    v11[6] = MEMORY[0x1E69E7CC0];
    v11[7] = 0;
    v11[8] = 0xE000000000000000;
    *(v11 + 36) = 0;
    *(v11 + 74) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_UserActivityData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_35();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MediaItem.subtitleCustomLineBreaking.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9501124(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521(v1 + *a1, v4);
}

uint64_t sub_1B95011A0(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *a2;
  OUTLINED_FUNCTION_18(v7 + v10, v12);
  *(v7 + v10) = a1;
}

uint64_t Searchfoundation_MediaItem.buyOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B95012BC(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {

    a4(v7);
  }

  else
  {
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 64);
      v14 = *(v4 + 56);
      OUTLINED_FUNCTION_16_32();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B9502AF0(v15);
      *(v14 + v13) = v12;
    }

    v16 = *a3;
    OUTLINED_FUNCTION_18(v12 + v16, v4 + 24);
    *(v12 + v16) = v5;
  }

  free(v4);
}

uint64_t sub_1B950138C(void *a1)
{
  OUTLINED_FUNCTION_13_32();
  OUTLINED_FUNCTION_521(*(v1 + v3) + *a1, v5);

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B95013E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MediaItem.contentAdvisory.setter(v1, v2);
}

uint64_t sub_1B950142C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9502AF0(v11);
    *(v7 + v8) = v10;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_18(v12, v14);
  *v12 = v5;
  v12[1] = v3;
}

uint64_t Searchfoundation_MediaItem.contentAdvisory.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  v5 = OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521(v5, v6);
  v7 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v7;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9501560()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = v4;

    v7 = OUTLINED_FUNCTION_461();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_16_32();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B9502AF0(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  free(v0);
}

uint64_t Searchfoundation_MediaItem.contentAdvisoryImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_29_31() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B9502AF0(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.contentAdvisoryImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B950187C(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B95031CC();
    a3(v6);
    sub_1B9503224();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t Searchfoundation_MediaItem.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_MediaItem.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t sub_1B9501A78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFE30);
  __swift_project_value_buffer(v0, qword_1EBACFE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_MediaDetail.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v8 = OUTLINED_FUNCTION_288();
      sub_1B9501CE4(v8, v9, a2, a3);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9501CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MediaDetail(0);
  type metadata accessor for Searchfoundation_Text(0);
  sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text, protocol conformance descriptor for Searchfoundation_Text);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MediaDetail.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v11 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v13 = v5[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_1B964C700(), !v4))
  {
    v16[1] = a1;
    type metadata accessor for Searchfoundation_MediaDetail(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB8E40, &unk_1B964D640);
    }

    else
    {
      sub_1B9503174();
      sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text, protocol conformance descriptor for Searchfoundation_Text);
      sub_1B964C740();
      result = sub_1B9503224();
      if (v4)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

void static Searchfoundation_MediaDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = *v1 == *v0 && v1[1] == v0[1];
  if (v13 || (sub_1B964C9F0() & 1) != 0)
  {
    v24[1] = type metadata accessor for Searchfoundation_MediaDetail(0);
    v14 = *(v11 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2);
    if (v13)
    {
      OUTLINED_FUNCTION_37_0(v2 + v14);
      if (v13)
      {
        sub_1B8D9207C(v2, &qword_1EBAB8E40, &unk_1B964D640);
LABEL_11:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_66();
        sub_1B9505FC8(v15, v16, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
        goto LABEL_26;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(v2 + v14);
      if (!v17)
      {
        OUTLINED_FUNCTION_1_84();
        sub_1B9503174();
        v20 = *v10 == *v6 && *(v10 + 1) == *(v6 + 8);
        if (v20 || (sub_1B964C9F0()) && *(v10 + 4) == *(v6 + 16))
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_2_66();
          sub_1B9505FC8(v21, v22, MEMORY[0x1E69AAC10]);
          v23 = sub_1B964C850();
          sub_1B9503224();
          sub_1B9503224();
          sub_1B8D9207C(v2, &qword_1EBAB8E40, &unk_1B964D640);
          if ((v23 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_11;
        }

        sub_1B9503224();
        sub_1B9503224();
        v18 = &qword_1EBAB8E40;
        v19 = &unk_1B964D640;
LABEL_25:
        sub_1B8D9207C(v2, v18, v19);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_35_16();
      sub_1B9503224();
    }

    v18 = &qword_1EBAB8E48;
    v19 = &unk_1B96CCC40;
    goto LABEL_25;
  }

LABEL_26:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95023B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9505FC8(&qword_1EBACFEB0, type metadata accessor for Searchfoundation_MediaDetail, protocol conformance descriptor for Searchfoundation_MediaDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9502438(uint64_t a1)
{
  v2 = sub_1B9505FC8(&qword_1EBACFE18, type metadata accessor for Searchfoundation_MediaDetail, protocol conformance descriptor for Searchfoundation_MediaDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95024A8(uint64_t a1, uint64_t a2)
{
  sub_1B9505FC8(&qword_1EBACFE18, type metadata accessor for Searchfoundation_MediaDetail, protocol conformance descriptor for Searchfoundation_MediaDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B9502544()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFE48);
  __swift_project_value_buffer(v0, qword_1EBACFE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subtitleText";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "thumbnail";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "reviewGlyph";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "overlayImage";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "reviewText";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "punchout";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "subtitleCustomLineBreaking";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "buyOptions";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "contentAdvisory";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "contentAdvisoryImage";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B950294C()
{
  OUTLINED_FUNCTION_16_32();
  result = sub_1B95029BC();
  qword_1EBACFE60 = result;
  return result;
}

uint64_t sub_1B95029BC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText;
  v2 = type metadata accessor for Searchfoundation_Text(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail;
  v4 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout;
  v7 = type metadata accessor for Searchfoundation_Punchout(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions) = v8;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, 1, 1, v4);
  return v0;
}

uint64_t sub_1B9502AF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34[2] = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText;
  v9 = type metadata accessor for Searchfoundation_Text(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail;
  v11 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v34[1] = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, 1, 1, v11);
  v34[3] = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout;
  v34[4] = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout;
  v14 = type metadata accessor for Searchfoundation_Punchout(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v35 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
  v15 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking) = MEMORY[0x1E69E7CC0];
  v16 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions) = v15;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  v36 = v16;
  v37 = v17;
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, 1, 1, v11);
  swift_beginAccess();
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v19;
  *(v1 + 24) = v18;
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
  v20 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  swift_beginAccess();
  *v12 = v22;
  v12[1] = v21;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = v35;
  swift_beginAccess();
  *(v1 + v25) = v24;

  v26 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v36;
  swift_beginAccess();
  *(v1 + v28) = v27;

  v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  v32 = v37;
  swift_beginAccess();
  *v32 = v31;
  v32[1] = v30;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B9503174()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B95031CC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B9503224()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B9503278()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText, &qword_1EBAB8E40, &unk_1B964D640);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, &qword_1EBAB8EA8, &unk_1B96B77D0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout, &qword_1EBACAF90, &unk_1B96B77C0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return v0;
}

uint64_t sub_1B95033A0()
{
  v0 = sub_1B9503278();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_MediaItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MediaItem._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9502AF0(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B9503494(v10, a1, a2, a3);
}

uint64_t sub_1B9503494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        break;
      case 2:
        sub_1B9503650(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B950372C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B9503808(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B95038E4(a2, a1, a3, a4);
        break;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText;
        goto LABEL_12;
      case 7:
        sub_1B95039C0(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B9503A9C(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B9503B28(a2, a1, a3, a4);
        break;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory;
LABEL_12:
        sub_1B8EB8AB0(v11, v12, v13, v14, v15);
        break;
      case 11:
        sub_1B9503C04(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9503650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Text(0);
  sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text, protocol conformance descriptor for Searchfoundation_Text);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B950372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9503808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95038E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95039C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B9505FC8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9503A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B9503B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaOffer(0);
  sub_1B9505FC8(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer, protocol conformance descriptor for Searchfoundation_MediaOffer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9503C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_MediaItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_MediaItem(0);
  result = sub_1B9503D48(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9503D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a4;
  v67 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v54 - v8;
  v59 = type metadata accessor for Searchfoundation_Punchout(0);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v54 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v54 - v18;
  v65 = type metadata accessor for Searchfoundation_Image(0);
  v19 = MEMORY[0x1EEE9AC00](v65);
  v56 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v54 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v60 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v62 = &v54 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v54 - v27;
  v29 = type metadata accessor for Searchfoundation_Text(0);
  MEMORY[0x1EEE9AC00](v29);
  swift_beginAccess();
  v30 = a1;
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v55 = v13;
  }

  else
  {
    v55 = v13;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1B8D9207C(v28, &qword_1EBAB8E40, &unk_1B964D640);
    v35 = v5;
  }

  else
  {
    sub_1B9503174();
    sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text, protocol conformance descriptor for Searchfoundation_Text);
    sub_1B964C740();
    v35 = v5;
    if (v5)
    {
      return sub_1B9503224();
    }

    sub_1B9503224();
  }

  v36 = v30;
  swift_beginAccess();
  v37 = v64;
  sub_1B8D92024();
  v38 = v65;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v65);
  v40 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v37, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B9503174();
    sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
    sub_1B964C740();
    if (v35)
    {
      return sub_1B9503224();
    }

    sub_1B9503224();
  }

  swift_beginAccess();
  v41 = v63;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v41, 1, v38) == 1)
  {
    sub_1B8D9207C(v41, &qword_1EBAB8EA8, &unk_1B96B77D0);
    goto LABEL_22;
  }

  sub_1B9503174();
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C740();
  if (v35)
  {
    return sub_1B9503224();
  }

  sub_1B9503224();
LABEL_22:
  swift_beginAccess();
  v42 = v61;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v42, 1, v38) == 1)
  {
    sub_1B8D9207C(v42, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B9503174();
    sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
    sub_1B964C740();
    result = sub_1B9503224();
    if (v35)
    {
      return result;
    }

    v40 = v66;
  }

  v43 = (v36 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  swift_beginAccess();
  v44 = *v43;
  v45 = v43[1];
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46 || (, sub_1B964C700(), result = , !v35))
  {
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v40, 1, v59) == 1)
    {
      sub_1B8D9207C(v40, &qword_1EBACAF90, &unk_1B96B77C0);
    }

    else
    {
      sub_1B9503174();
      sub_1B9505FC8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
      sub_1B964C740();
      result = sub_1B9503224();
      if (v35)
      {
        return result;
      }
    }

    v47 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
    swift_beginAccess();
    if (!*(*(v36 + v47) + 16) || (, sub_1B964C6E0(), result = , !v35))
    {
      v48 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
      swift_beginAccess();
      if (!*(*(v36 + v48) + 16) || (type metadata accessor for Searchfoundation_MediaOffer(0), sub_1B9505FC8(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer, protocol conformance descriptor for Searchfoundation_MediaOffer), , sub_1B964C730(), result = , !v35))
      {
        v49 = (v36 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
        swift_beginAccess();
        v50 = *v49;
        v51 = v49[1];
        v52 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v52 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (!v52 || (, sub_1B964C700(), result = , !v35))
        {
          swift_beginAccess();
          v53 = v55;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v53, 1, v38) == 1)
          {
            return sub_1B8D9207C(v53, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          sub_1B9503174();
          sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
          sub_1B964C740();
          return sub_1B9503224();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MediaItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_13_32();
  if (*(v1 + v2) != *(v0 + v2))
  {

    sub_1B95049EC();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_66();
  sub_1B9505FC8(v5, v6, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B95049EC()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v176 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v172 = v6 - v5;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB028, &unk_1B96B98F0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v177 = &v167 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v173 = v11 - v12;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_266_0();
  v179 = v14;
  v193 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_66();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_682();
  v174 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_682();
  v180 = v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_266_0();
  v184 = v24;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_66();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_682();
  v182 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_682();
  v186 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_266_0();
  v190 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v36 = OUTLINED_FUNCTION_183(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_66();
  v171 = v37 - v38;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_682();
  v178 = v40;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_682();
  v181 = v42;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_682();
  v183 = v44;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_682();
  v185 = v46;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_682();
  v187 = v48;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_682();
  v188 = v50;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_266_0();
  v195 = v52;
  v194 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_62();
  v189 = v55 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v167 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v61 = OUTLINED_FUNCTION_183(v60);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_66();
  v192 = v62 - v63;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v167 - v65;
  OUTLINED_FUNCTION_521(v3 + 16, &v217);
  v68 = *(v3 + 16);
  v67 = *(v3 + 24);
  OUTLINED_FUNCTION_521(v1 + 16, &v216);
  v69 = v68 == *(v1 + 16) && v67 == *(v1 + 24);
  if (v69 || (sub_1B964C9F0() & 1) != 0)
  {
    v169 = v18;
    v170 = v28;
    v70 = v1;
    OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText, &v215);
    sub_1B8D92024();
    OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText, &v214);
    v71 = *(v56 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v59, 1, v194) == 1)
    {

      sub_1B8D9207C(v66, &qword_1EBAB8E40, &unk_1B964D640);
      OUTLINED_FUNCTION_37_0(&v59[v71]);
      v72 = v195;
      if (!v69)
      {
        goto LABEL_18;
      }

      sub_1B8D9207C(v59, &qword_1EBAB8E40, &unk_1B964D640);
    }

    else
    {
      v76 = v192;
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(&v59[v71]);
      v72 = v195;
      if (v69)
      {

        sub_1B8D9207C(v66, &qword_1EBAB8E40, &unk_1B964D640);
        OUTLINED_FUNCTION_35_16();
        sub_1B9503224();
LABEL_18:
        v77 = &qword_1EBAB8E48;
        v78 = &unk_1B96CCC40;
        v79 = v59;
LABEL_57:
        sub_1B8D9207C(v79, v77, v78);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_1_84();
      v80 = v189;
      sub_1B9503174();
      v81 = *v76 == *v80 && *(v76 + 8) == *(v80 + 8);
      if (!v81 && (sub_1B964C9F0() & 1) == 0 || *(v76 + 16) != *(v80 + 16))
      {

        v91 = &unk_1B964D640;
        sub_1B8D9207C(v66, &qword_1EBAB8E40, &unk_1B964D640);
        OUTLINED_FUNCTION_36_10();
        sub_1B9503224();
        sub_1B9503224();
        v79 = v59;
        v77 = &qword_1EBAB8E40;
LABEL_28:
        v78 = v91;
        goto LABEL_57;
      }

      v168 = v70;
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_66();
      sub_1B9505FC8(v82, v83, MEMORY[0x1E69AAC10]);

      v84 = sub_1B964C850();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v85, v86, v87);
      OUTLINED_FUNCTION_36_10();
      sub_1B9503224();
      v70 = v168;
      sub_1B9503224();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v88, v89, v90);
      if ((v84 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail, &v213);
    OUTLINED_FUNCTION_485();
    sub_1B8D92024();
    OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail, &v212);
    OUTLINED_FUNCTION_59_14();
    v73 = v72;
    v74 = v190;
    OUTLINED_FUNCTION_485();
    sub_1B8D92024();
    v75 = v74;
    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_8_43(v74);
    if (v69)
    {
      sub_1B8D9207C(v73, &qword_1EBAB8EA8, &unk_1B96B77D0);
      OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v74);
      if (!v69)
      {
        goto LABEL_56;
      }

      sub_1B8D9207C(v74, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }

    else
    {
      v92 = v188;
      sub_1B8D92024();
      OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v74);
      if (v93)
      {
        v94 = v195;
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_0_101();
      v95 = v184;
      sub_1B9503174();
      OUTLINED_FUNCTION_58_14();
      if (v92 != *(v95 + v96))
      {

        OUTLINED_FUNCTION_543();
        sub_1B94C6890();
        OUTLINED_FUNCTION_649();

        if ((&unk_1ED9E3000 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_66();
      sub_1B9505FC8(v97, v98, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_485();
      LODWORD(v194) = sub_1B964C850();
      OUTLINED_FUNCTION_4_57();
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v195);
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v75);
      if ((v194 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, &v211);
    v99 = v187;
    OUTLINED_FUNCTION_485();
    sub_1B8D92024();
    OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, &v210);
    OUTLINED_FUNCTION_59_14();
    v100 = v186;
    OUTLINED_FUNCTION_84_0();
    v75 = v100;
    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_8_43(v100);
    if (v69)
    {
      sub_1B8D9207C(v99, &qword_1EBAB8EA8, &unk_1B96B77D0);
      OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v100);
      if (!v69)
      {
        goto LABEL_56;
      }

      sub_1B8D9207C(v100, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_46;
    }

    v101 = v185;
    sub_1B8D92024();
    OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v100);
    if (v102)
    {
      v94 = v187;
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_0_101();
    v103 = v180;
    sub_1B9503174();
    OUTLINED_FUNCTION_58_14();
    if (v101 == *(v103 + v104) || (, , OUTLINED_FUNCTION_543(), sub_1B94C6890(), OUTLINED_FUNCTION_649(), , (&unk_1ED9E3000 & 1) != 0))
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_66();
      sub_1B9505FC8(v105, v106, MEMORY[0x1E69AAC10]);
      v107 = sub_1B964C850();
      OUTLINED_FUNCTION_4_57();
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v187);
      OUTLINED_FUNCTION_461();
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v75);
      if (v107)
      {
LABEL_46:
        OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, &v209);
        v108 = v183;
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, &v208);
        v109 = *(v191 + 48);
        v75 = v182;
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_8_43(v75);
        if (v69)
        {
          sub_1B8D9207C(v108, &qword_1EBAB8EA8, &unk_1B96B77D0);
          OUTLINED_FUNCTION_8_43(v75 + v109);
          if (v69)
          {
            sub_1B8D9207C(v75, &qword_1EBAB8EA8, &unk_1B96B77D0);
            goto LABEL_63;
          }

LABEL_56:
          v77 = &qword_1EBAB8EB0;
          v78 = &qword_1B964D6B0;
          v79 = v75;
          goto LABEL_57;
        }

        v110 = v181;
        sub_1B8D92024();
        OUTLINED_FUNCTION_8_43(v75 + v109);
        if (!v111)
        {
          OUTLINED_FUNCTION_0_101();
          v112 = v174;
          sub_1B9503174();
          OUTLINED_FUNCTION_58_14();
          if (v110 == *(v112 + v113) || (, , OUTLINED_FUNCTION_543(), sub_1B94C6890(), OUTLINED_FUNCTION_649(), , (v109 & 1) != 0))
          {
            sub_1B964C2B0();
            OUTLINED_FUNCTION_2_66();
            sub_1B9505FC8(v114, v115, MEMORY[0x1E69AAC10]);
            OUTLINED_FUNCTION_485();
            v116 = sub_1B964C850();
            OUTLINED_FUNCTION_4_57();
            sub_1B9503224();
            OUTLINED_FUNCTION_485();
            sub_1B8D9207C(v117, v118, v119);
            OUTLINED_FUNCTION_461();
            sub_1B9503224();
            OUTLINED_FUNCTION_485();
            sub_1B8D9207C(v120, v121, v122);
            if ((v116 & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_63:
            v123 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText, &v207);
            v124 = *v123;
            v125 = v123[1];
            v126 = (v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
            OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText, &v206);
            if (v124 != *v126 || v125 != v126[1])
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout, &v205);
            v128 = v179;
            OUTLINED_FUNCTION_485();
            sub_1B8D92024();
            OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout, &v204);
            v129 = *(v175 + 48);
            v130 = v177;
            OUTLINED_FUNCTION_84_0();
            OUTLINED_FUNCTION_84_0();
            if (__swift_getEnumTagSinglePayload(v130, 1, v176) == 1)
            {
              sub_1B8D9207C(v128, &qword_1EBACAF90, &unk_1B96B77C0);
              OUTLINED_FUNCTION_37_0(v130 + v129);
              v131 = v178;
              if (!v69)
              {
                goto LABEL_76;
              }

              sub_1B8D9207C(v130, &qword_1EBACAF90, &unk_1B96B77C0);
            }

            else
            {
              sub_1B8D92024();
              OUTLINED_FUNCTION_37_0(v130 + v129);
              v131 = v178;
              if (v69)
              {
                sub_1B8D9207C(v179, &qword_1EBACAF90, &unk_1B96B77C0);
                sub_1B9503224();
LABEL_76:
                v77 = &qword_1EBACB028;
                v78 = &unk_1B96B98F0;
                v79 = v130;
                goto LABEL_57;
              }

              sub_1B9503174();
              OUTLINED_FUNCTION_186();
              v135 = static Searchfoundation_Punchout.== infix(_:_:)();
              sub_1B9503224();
              sub_1B8D9207C(v179, &qword_1EBACAF90, &unk_1B96B77C0);
              sub_1B9503224();
              sub_1B8D9207C(v130, &qword_1EBACAF90, &unk_1B96B77C0);
              if ((v135 & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            v136 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking, &v203);
            v137 = *(v3 + v136);
            v138 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
            OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking, &v202);
            if ((sub_1B8D6123C(v137, *(v70 + v138)) & 1) == 0)
            {
              goto LABEL_58;
            }

            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions, &v201);
            OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions, &v200);

            v139 = OUTLINED_FUNCTION_543();
            sub_1B8D91510(v139, v140);
            v142 = v141;

            if ((v142 & 1) == 0)
            {
              goto LABEL_58;
            }

            v143 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory, &v199);
            v144 = *v143;
            v145 = v143[1];
            v146 = (v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
            OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory, &v198);
            if (v144 != *v146 || v145 != v146[1])
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, &v197);
            OUTLINED_FUNCTION_485();
            sub_1B8D92024();
            OUTLINED_FUNCTION_521(v70 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, &v196);
            OUTLINED_FUNCTION_59_14();
            v148 = v170;
            OUTLINED_FUNCTION_84_0();
            v149 = v148;
            sub_1B8D92024();
            OUTLINED_FUNCTION_8_43(v148);
            if (v69)
            {

              sub_1B8D9207C(v131, &qword_1EBAB8EA8, &unk_1B96B77D0);
              OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v148);
              if (v69)
              {
                sub_1B8D9207C(v148, &qword_1EBAB8EA8, &unk_1B96B77D0);
                goto LABEL_59;
              }
            }

            else
            {
              v150 = v171;
              sub_1B8D92024();
              OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v149);
              if (!v151)
              {
                OUTLINED_FUNCTION_0_101();
                v155 = v169;
                sub_1B9503174();
                if (*(v150 + *(v193 + 20)) == *(v155 + *(v193 + 20)) || (, , OUTLINED_FUNCTION_543(), sub_1B94C6890(), OUTLINED_FUNCTION_649(), , (&unk_1ED9E3000 & 1) != 0))
                {
                  sub_1B964C2B0();
                  OUTLINED_FUNCTION_2_66();
                  sub_1B9505FC8(v156, v157, MEMORY[0x1E69AAC10]);
                  sub_1B964C850();

                  OUTLINED_FUNCTION_4_57();
                  sub_1B9503224();
                  OUTLINED_FUNCTION_466();
                  sub_1B8D9207C(v158, v159, v160);
                  sub_1B9503224();
                  OUTLINED_FUNCTION_466();
                  sub_1B8D9207C(v161, v162, v163);
                  goto LABEL_59;
                }

                OUTLINED_FUNCTION_5_45();
                sub_1B9503224();
                OUTLINED_FUNCTION_176_2();
                sub_1B8D9207C(v164, v165, v166);
                sub_1B9503224();
                OUTLINED_FUNCTION_176_2();
                goto LABEL_95;
              }

              sub_1B8D9207C(v131, &qword_1EBAB8EA8, &unk_1B96B77D0);
              OUTLINED_FUNCTION_37_14();
              sub_1B9503224();
            }

            v152 = &qword_1EBAB8EB0;
            v153 = &qword_1B964D6B0;
            v154 = v149;
LABEL_95:
            sub_1B8D9207C(v154, v152, v153);
            goto LABEL_59;
          }

          goto LABEL_77;
        }

        v94 = v183;
LABEL_55:
        sub_1B8D9207C(v94, &qword_1EBAB8EA8, &unk_1B96B77D0);
        OUTLINED_FUNCTION_37_14();
        sub_1B9503224();
        goto LABEL_56;
      }

LABEL_58:

      goto LABEL_59;
    }

LABEL_77:
    OUTLINED_FUNCTION_5_45();
    sub_1B9503224();
    v91 = &unk_1B96B77D0;
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v132, v133, v134);
    sub_1B9503224();
    v79 = OUTLINED_FUNCTION_246();
    goto LABEL_28;
  }

LABEL_59:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9505D78(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B9505FC8(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9505E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9505FC8(&qword_1EBACFEA8, type metadata accessor for Searchfoundation_MediaItem, protocol conformance descriptor for Searchfoundation_MediaItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9505ED8(uint64_t a1)
{
  v2 = sub_1B9505FC8(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem, protocol conformance descriptor for Searchfoundation_MediaItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9505F48(uint64_t a1, uint64_t a2)
{
  sub_1B9505FC8(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem, protocol conformance descriptor for Searchfoundation_MediaItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9505FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B9506278(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9506560(319, &qword_1ED9F31F0, type metadata accessor for Searchfoundation_Text);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9506350(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MediaItem._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B95063DC(uint64_t a1)
{
  sub_1B9506560(319, &qword_1ED9F31F0, type metadata accessor for Searchfoundation_Text);
  if (v1 <= 0x3F)
  {
    sub_1B9506560(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
    if (v2 <= 0x3F)
    {
      sub_1B9506560(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9506560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_16_32()
{
  type metadata accessor for Searchfoundation_MediaItem._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_31()
{
  type metadata accessor for Searchfoundation_MediaItem(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_67_8(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_69_8()
{

  return sub_1B9503174();
}

uint64_t OUTLINED_FUNCTION_80_8(uint64_t a1)
{

  return sub_1B8D9207C(a1, v1, v2);
}

uint64_t Searchfoundation_MediaPlayerCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = v2;
  v3 = type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Searchfoundation_MediaPlayerCardSection(uint64_t a1)
{
  result = qword_1ED9F0A58;
  if (!qword_1ED9F0A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_MediaPlayerCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MediaPlayerCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  sub_1B92C7198(v1 + *(v6 + 64), v2);
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v8 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v8, v9, v7) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v7 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
  }

  *(a1 + v10) = qword_1ED9CD1C8;
  v11 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v7);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B9506CC4(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v4);
  return Searchfoundation_MediaPlayerCardSection.backgroundColor.setter(v4);
}

uint64_t Searchfoundation_MediaPlayerCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection(0) + 64);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_MediaPlayerCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection(0) + 64);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_MediaPlayerCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  sub_1B92C7198(v0 + *(v4 + 64), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_MediaPlayerCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection(0) + 64);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_MediaPlayerCardSection.title.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.mediaItems.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_MediaPlayerCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B950731C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFEB8);
  __swift_project_value_buffer(v0, qword_1EBACFEB8);
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
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "mediaItems";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MediaPlayerCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACFEB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MediaPlayerCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B950791C(v6, v7, v8, v9);
        break;
      case 2:
      case 3:
      case 7:
        goto LABEL_13;
      case 4:
      case 5:
      case 6:
        sub_1B964C400();
        break;
      case 8:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B92C7E00(v14, v15, v16, v17);
        break;
      case 9:
        v18 = OUTLINED_FUNCTION_9();
        sub_1B95079BC(v18, v19, v20, v21);
        break;
      default:
        if (result == 51 || result == 52)
        {
LABEL_13:
          sub_1B964C530();
        }

        else if (result == 53)
        {
          v10 = OUTLINED_FUNCTION_9();
          sub_1B9507A70(v10, v11, v12, v13);
        }

        break;
    }
  }
}

uint64_t sub_1B950791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B950887C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B95079BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B950887C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B9507A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MediaItem(0);
  sub_1B950887C(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem, protocol conformance descriptor for Searchfoundation_MediaItem);
  return sub_1B964C570();
}

uint64_t Searchfoundation_MediaPlayerCardSection.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v32 = v1;
    type metadata accessor for Searchfoundation_Punchout(0);
    OUTLINED_FUNCTION_14_24();
    sub_1B950887C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_5_34();
    result = sub_1B964C730();
    if (v2)
    {
      return result;
    }

    v3 = v32;
  }

  OUTLINED_FUNCTION_1();
  if (!v15 || (result = OUTLINED_FUNCTION_6_32(v13, v14, 2), !v2))
  {
    OUTLINED_FUNCTION_1();
    if (!v18 || (result = OUTLINED_FUNCTION_6_32(v16, v17, 3), !v2))
    {
      if (*(v3 + 40) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 4), !v2))
      {
        if (*(v3 + 41) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 5), !v2))
        {
          if (*(v3 + 42) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 6), !v2))
          {
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_6_32(v19, v20, 7), !v2))
            {
              v22 = v2;
              if (*(v3 + 64))
              {
                v23 = *(v3 + 72);
                v30 = *(v3 + 64);
                v31 = v23;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_5_34();
                result = sub_1B964C680();
                if (v2)
                {
                  return result;
                }

                v22 = 0;
              }

              v32 = type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
              sub_1B92C7198(v3 + *(v32 + 64), v7);
              if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
              {
                sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
                v2 = v22;
              }

              else
              {
                sub_1B92C8908(v7, v11);
                sub_1B950887C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
                OUTLINED_FUNCTION_5_34();
                sub_1B964C740();
                result = sub_1B92C89D0(v11);
                if (v2)
                {
                  return result;
                }
              }

              OUTLINED_FUNCTION_1();
              if (!v26 || (result = OUTLINED_FUNCTION_6_32(v24, v25, 51), !v2))
              {
                OUTLINED_FUNCTION_1();
                if (!v29 || (result = OUTLINED_FUNCTION_6_32(v27, v28, 52), !v2))
                {
                  if (!*(*(v3 + 112) + 16))
                  {
                    return sub_1B964C290();
                  }

                  type metadata accessor for Searchfoundation_MediaItem(0);
                  OUTLINED_FUNCTION_14_24();
                  sub_1B950887C(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem, protocol conformance descriptor for Searchfoundation_MediaItem);
                  OUTLINED_FUNCTION_5_34();
                  result = sub_1B964C730();
                  if (!v2)
                  {
                    return sub_1B964C290();
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

uint64_t static Searchfoundation_MediaPlayerCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  sub_1B8D67B1C(*v1, *v0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_28;
  }

  v14 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_28;
  }

  v16 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v16 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)))
  {
    goto LABEL_28;
  }

  v17 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection(0) + 64);
  v18 = *(v11 + 48);
  sub_1B92C7198(v1 + v17, v2);
  sub_1B92C7198(v0 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v19, v20, v3) != 1)
  {
    sub_1B92C7198(v2, v10);
    if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
    {
      sub_1B92C8908(v2 + v18, v6);
      if (*&v10[*(v3 + 20)] == *&v6[*(v3 + 20)] || (, , sub_1B947FDE4(), v26 = v25, , , (v26 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_71();
        sub_1B950887C(v27, v28, MEMORY[0x1E69AAC10]);
        v29 = sub_1B964C850();
        sub_1B92C89D0(v6);
        sub_1B92C89D0(v10);
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_1B92C89D0(v6);
      sub_1B92C89D0(v10);
      v21 = &qword_1EBACB050;
      v22 = &unk_1B96B7BD0;
LABEL_27:
      sub_1B8D9207C(v2, v21, v22);
      goto LABEL_28;
    }

    sub_1B92C89D0(v10);
LABEL_26:
    v21 = &qword_1EBACB058;
    v22 = &unk_1B96CA9D0;
    goto LABEL_27;
  }

  if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_33:
  v30 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (v30 || (sub_1B964C9F0() & 1) != 0)
  {
    v31 = *(v1 + 96) == *(v0 + 96) && *(v1 + 104) == *(v0 + 104);
    if (v31 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B8D6E1DC(*(v1 + 112), *(v0 + 112));
      if (v32)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_71();
        sub_1B950887C(v33, v34, MEMORY[0x1E69AAC10]);
        v23 = sub_1B964C850();
        return v23 & 1;
      }
    }
  }

LABEL_28:
  v23 = 0;
  return v23 & 1;
}

uint64_t Searchfoundation_MediaPlayerCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MediaPlayerCardSection(0);
  sub_1B950887C(&qword_1EBACFED0, type metadata accessor for Searchfoundation_MediaPlayerCardSection, protocol conformance descriptor for Searchfoundation_MediaPlayerCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95083EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B950887C(&qword_1EBACFEE8, type metadata accessor for Searchfoundation_MediaPlayerCardSection, protocol conformance descriptor for Searchfoundation_MediaPlayerCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B950846C(uint64_t a1)
{
  v2 = sub_1B950887C(&qword_1EBACE760, type metadata accessor for Searchfoundation_MediaPlayerCardSection, protocol conformance descriptor for Searchfoundation_MediaPlayerCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95084DC(uint64_t a1, uint64_t a2)
{
  sub_1B950887C(&qword_1EBACE760, type metadata accessor for Searchfoundation_MediaPlayerCardSection, protocol conformance descriptor for Searchfoundation_MediaPlayerCardSection);

  return sub_1B964C5D0();
}

void sub_1B95086A4(uint64_t a1)
{
  sub_1B9508818(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B9508818(319, &qword_1ED9D3A48, type metadata accessor for Searchfoundation_MediaItem, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B9508818(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9508818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B950887C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 64);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(uint64_t a1)
{
  result = qword_1ED9EFE88;
  if (!qword_1ED9EFE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_MediaRemoteControlCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  sub_1B92C7198(v1 + *(v6 + 64), v2);
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v8 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v8, v9, v7) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v7 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
  }

  *(a1 + v10) = qword_1ED9CD1C8;
  v11 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v7);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B9508D9C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v4);
  return Searchfoundation_MediaRemoteControlCardSection.backgroundColor.setter(v4);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0) + 64);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_MediaRemoteControlCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0) + 64);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_MediaRemoteControlCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  sub_1B92C7198(v0 + *(v4 + 64), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_MediaRemoteControlCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0) + 64);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.playbackRouteUniqueIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.playbackBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B95093D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFEF0);
  __swift_project_value_buffer(v0, qword_1EBACFEF0);
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
  *v23 = 51;
  *v24 = "playbackRouteUniqueIdentifier";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "playbackRouteUniqueIdentifierIsEncrypted";
  *(v26 + 1) = 40;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "playbackBundleIdentifier";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MediaRemoteControlCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACFEF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B95099D0(v6, v7, v8, v9);
        continue;
      case 2:
      case 3:
      case 7:
        goto LABEL_13;
      case 4:
      case 5:
      case 6:
        goto LABEL_12;
      case 8:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B92C7E00(v10, v11, v12, v13);
        continue;
      case 9:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B9509A70(v14, v15, v16, v17);
        continue;
      default:
        switch(result)
        {
          case '3':
            goto LABEL_13;
          case '4':
LABEL_12:
            sub_1B964C400();
            break;
          case '5':
LABEL_13:
            sub_1B964C530();
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B95099D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B950A7B8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B9509A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B950A7B8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v34 = v1;
    v12 = v7;
    v13 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B950A7B8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_5_34();
    result = sub_1B964C730();
    if (v2)
    {
      return result;
    }

    v11 = v13;
    v7 = v12;
    v3 = v34;
  }

  OUTLINED_FUNCTION_1();
  if (!v17 || (result = OUTLINED_FUNCTION_6_32(v15, v16, 2), !v2))
  {
    OUTLINED_FUNCTION_1();
    if (!v20 || (result = OUTLINED_FUNCTION_6_32(v18, v19, 3), !v2))
    {
      if (*(v3 + 40) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v2))
      {
        if (*(v3 + 41) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v2))
        {
          if (*(v3 + 42) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v2))
          {
            OUTLINED_FUNCTION_1();
            if (!v23 || (result = OUTLINED_FUNCTION_6_32(v21, v22, 7), !v2))
            {
              v24 = v2;
              if (*(v3 + 64))
              {
                v25 = *(v3 + 72);
                v32 = *(v3 + 64);
                v33 = v25;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_5_34();
                result = sub_1B964C680();
                if (v2)
                {
                  return result;
                }

                v24 = 0;
              }

              v34 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
              sub_1B92C7198(v3 + *(v34 + 64), v7);
              if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
              {
                sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
                v2 = v24;
              }

              else
              {
                sub_1B92C8908(v7, v11);
                sub_1B950A7B8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
                OUTLINED_FUNCTION_5_34();
                sub_1B964C740();
                result = sub_1B92C89D0(v11);
                if (v2)
                {
                  return result;
                }
              }

              OUTLINED_FUNCTION_1();
              if (!v28 || (result = OUTLINED_FUNCTION_6_32(v26, v27, 51), !v2))
              {
                if (*(v3 + 96) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v2))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v31)
                  {
                    return sub_1B964C290();
                  }

                  result = OUTLINED_FUNCTION_6_32(v29, v30, 53);
                  if (!v2)
                  {
                    return sub_1B964C290();
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

uint64_t static Searchfoundation_MediaRemoteControlCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  sub_1B8D67B1C(*v1, *v0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_28;
  }

  v14 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_28;
  }

  v16 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v16 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)))
  {
    goto LABEL_28;
  }

  v17 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0) + 64);
  v18 = *(v11 + 48);
  sub_1B92C7198(v1 + v17, v2);
  sub_1B92C7198(v0 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v19, v20, v3) != 1)
  {
    sub_1B92C7198(v2, v10);
    if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
    {
      sub_1B92C8908(v2 + v18, v6);
      if (*&v10[*(v3 + 20)] == *&v6[*(v3 + 20)] || (, , sub_1B947FDE4(), v26 = v25, , , (v26 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_67();
        sub_1B950A7B8(v27, v28, MEMORY[0x1E69AAC10]);
        v29 = sub_1B964C850();
        sub_1B92C89D0(v6);
        sub_1B92C89D0(v10);
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_1B92C89D0(v6);
      sub_1B92C89D0(v10);
      v21 = &qword_1EBACB050;
      v22 = &unk_1B96B7BD0;
LABEL_27:
      sub_1B8D9207C(v2, v21, v22);
      goto LABEL_28;
    }

    sub_1B92C89D0(v10);
LABEL_26:
    v21 = &qword_1EBACB058;
    v22 = &unk_1B96CA9D0;
    goto LABEL_27;
  }

  if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_33:
  v30 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (v30 || (sub_1B964C9F0()) && *(v1 + 96) == *(v0 + 96))
  {
    v31 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
    if (v31 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_67();
      sub_1B950A7B8(v32, v33, MEMORY[0x1E69AAC10]);
      v23 = sub_1B964C850();
      return v23 & 1;
    }
  }

LABEL_28:
  v23 = 0;
  return v23 & 1;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  sub_1B950A7B8(&qword_1EBACFF08, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, protocol conformance descriptor for Searchfoundation_MediaRemoteControlCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B950A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B950A7B8(&qword_1EBACFF20, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, protocol conformance descriptor for Searchfoundation_MediaRemoteControlCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B950A44C(uint64_t a1)
{
  v2 = sub_1B950A7B8(&qword_1EBACE6B0, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, protocol conformance descriptor for Searchfoundation_MediaRemoteControlCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B950A4BC(uint64_t a1, uint64_t a2)
{
  sub_1B950A7B8(&qword_1EBACE6B0, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, protocol conformance descriptor for Searchfoundation_MediaRemoteControlCardSection);

  return sub_1B964C5D0();
}

void sub_1B950A684(uint64_t a1)
{
  sub_1B92C8CF4(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B92C8CF4(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B950A7B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Searchfoundation_MessageCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  if (qword_1EBAB85E8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBACFFB8;
}

uint64_t sub_1B950A8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9513208();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_MessageStatus.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B950A9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_MessageStatus.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B950AA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95131B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_MessageServiceType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B950AAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_MessageServiceType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B950AB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95101F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_MessageAttachmentType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B950AC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_MessageAttachmentType.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Searchfoundation_MessageAttachment.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MessageAttachment.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_MessageAttachment.url.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MessageAttachment(v3);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_URL(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_158_4(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageAttachment.url.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MessageAttachment(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_122_0();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_MessageAttachment.url.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_URL(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    OUTLINED_FUNCTION_461();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_MessageAttachment.hasURL.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_MessageAttachment(v4);
  OUTLINED_FUNCTION_115(*(v5 + 28));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_URL(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B964D620);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_MessageAttachment.clearURL()()
{
  v1 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MessageAttachment.linkMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MessageAttachment.linkMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Searchfoundation_MessageAttachment.photosLibraryImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MessageAttachment(v5);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = MEMORY[0x1E69E7CC0];
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_42();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageAttachment.photosLibraryImage.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MessageAttachment(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_6_42();
  OUTLINED_FUNCTION_122_0();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_MessageAttachment.photosLibraryImage.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 16) = 0;
    v10[3] = MEMORY[0x1E69E7CC0];
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_42();
    OUTLINED_FUNCTION_461();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B950B3F0()
{
  OUTLINED_FUNCTION_284();
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
    sub_1B950F9A8();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B950F950();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_1B950FA00();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B950F950();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Searchfoundation_MessageAttachment.hasPhotosLibraryImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_MessageAttachment(v4);
  OUTLINED_FUNCTION_115(*(v5 + 32));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B96B9990);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_MessageAttachment.clearPhotosLibraryImage()()
{
  v1 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBACC618, &unk_1B96B9990);
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MessageAttachment.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_MessageAttachment.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MessageAttachment(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_MessageAttachment.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_MessageAttachment(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_MessageAttachment.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  type metadata accessor for Searchfoundation_MessageAttachment(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Searchfoundation_MessageCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);
}

uint64_t Searchfoundation_MessageCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MessageCardSection(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B950FB70(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_MessageCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B950B90C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Searchfoundation_MessageCardSection.punchoutOptions.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_9_38();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B950FB70(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_18(v7 + 16, v2 + 24);
    *(v7 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 24, v2);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_MessageCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_28();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B950FB70(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 24, v5);
  *(v6 + 24) = v2;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 24);
  v6 = *(v5 + 32);
  *(v1 + 48) = *(v5 + 24);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B950BB14()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_MessageCardSection.punchoutPickerTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_38();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B950FB70(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 24, v0 + 24);
    *(v7 + 24) = v3;
    *(v7 + 32) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 40, v2);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_MessageCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_28();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B950FB70(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v2;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerDismissText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 40);
  v6 = *(v5 + 48);
  *(v1 + 48) = *(v5 + 40);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B950BD00()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_MessageCardSection.punchoutPickerDismissText.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_38();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B950FB70(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 40, v0 + 24);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_MessageCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 56, v3);
  return *(v2 + 56);
}

uint64_t Searchfoundation_MessageCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_43_17();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 56, v4);
  *(v5 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MessageCardSection.canBeHidden.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 56);
  *(v1 + 84) = *(v4 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950BE98(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B950FB70(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 56, v1 + v10);
  *(v7 + 56) = v4;

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 57, v3);
  return *(v2 + 57);
}

uint64_t Searchfoundation_MessageCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_43_17();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 57, v4);
  *(v5 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MessageCardSection.hasTopPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 57);
  *(v1 + 84) = *(v4 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950C01C(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B950FB70(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 57, v1 + v10);
  *(v7 + 57) = v4;

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 58, v3);
  return *(v2 + 58);
}

uint64_t Searchfoundation_MessageCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_43_17();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 58, v4);
  *(v5 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MessageCardSection.hasBottomPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 58);
  *(v1 + 84) = *(v4 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950C1A0(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B950FB70(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 58, v1 + v10);
  *(v7 + 58) = v4;

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.type.getter()
{
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_MessageCardSection.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_28();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B950FB70(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.type.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B950C378()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_MessageCardSection.type.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_38();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B950FB70(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 64, v0 + 24);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_MessageCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_72();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4(v4 + 80, v5);
  v7 = *(v4 + 88);
  *a1 = *(v4 + 80);
  *(a1 + 8) = v7;
  return result;
}

void Searchfoundation_MessageCardSection.separatorStyle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_16_33();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B950FB70(v9);
    *(v2 + v1) = v8;
  }

  OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950C538()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_9_38();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B950FB70(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v1)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_18(v9 + 80, v3 + v13);
  *(v9 + 80) = v4;
  *(v9 + 88) = v7;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Searchfoundation_MessageCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_521(*(v1 + v6) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor, v14);
  OUTLINED_FUNCTION_106_0();
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *(a1 + v9) = qword_1ED9CD1C8;
    v10 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v7);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageCardSection.backgroundColor.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_16_33() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B950FB70(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_7_43();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MessageCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = *(v9 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v2 + 48) = v11;
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_521(*(v0 + v12) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v11[v14] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_43();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MessageCardSection.messageText.getter()
{
  v0 = OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_6_2(v0);

  return OUTLINED_FUNCTION_288();
}

void Searchfoundation_MessageCardSection.messageText.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_14_28();
  v27 = *(v21 + v23);
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v28 = OUTLINED_FUNCTION_40_0();
    v29 = sub_1B950FB70(v28);
    OUTLINED_FUNCTION_135(v29);
  }

  v30 = (v27 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  OUTLINED_FUNCTION_18(v30, &a10);
  *v30 = v22;
  v30[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.messageText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  OUTLINED_FUNCTION_62_0(v5);
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_MessageCardSection.messageStatus.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus);
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B950CCD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_3_72();
  v7 = *(v2 + v6) + *a1;
  result = OUTLINED_FUNCTION_6_2(v5);
  v9 = *(v7 + 8);
  *a2 = *v7;
  *(a2 + 8) = v9;
  return result;
}

void *sub_1B950CD30@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B950CD78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void sub_1B950CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = v20;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v20 + v29);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v32 = OUTLINED_FUNCTION_40_0();
    v31 = sub_1B950FB70(v32);
    *(v25 + v29) = v31;
  }

  v33 = v31 + *v24;
  OUTLINED_FUNCTION_18(v33, &a10);
  *v33 = v27;
  *(v33 + 8) = v28;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.messageServiceType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType);
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950CED4()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(*v4 + 72);
  v7 = *(*v4 + 84);
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v5 + 84);
    v13 = *(v5 + 88);
    OUTLINED_FUNCTION_9_38();
    v14 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B950FB70(v14);
    *(v13 + v12) = v11;
  }

  v15 = 48;
  if (v3)
  {
    v15 = 24;
  }

  v16 = v11 + *v1;
  OUTLINED_FUNCTION_18(v16, v5 + v15);
  *v16 = v6;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Searchfoundation_MessageCardSection.audioMessageURL.getter()
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_521(*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL, v8);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_URL(0);
  v5 = OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_158_4(v5);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageCardSection.audioMessageURL.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_16_33() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B950FB70(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_102();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MessageCardSection.audioMessageURL.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_URL(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_521(*(v0 + v11) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B950D2D0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    sub_1B950F9A8();
    v2(v3);
    sub_1B950FA00();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B950D3A8(uint64_t *a1, uint64_t *a2, void *a3, void (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11 - 8];
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_521(*(v4 + v13) + *a3, v19);
  sub_1B8D92024();
  v14 = (a4)(0);
  OUTLINED_FUNCTION_178(v12, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_1B8D9207C(v12, a1, a2);
  return v16;
}

void sub_1B950D4B0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B950FB70(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_MessageCardSection.messageAttachment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5 - 8];
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment, v20);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_URL(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_178(v6, 1, v8);
    if (!v9)
    {
      return sub_1B8D9207C(v6, &qword_1EBACFFC0, "Z\b");
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_46();
    return sub_1B950F950();
  }

  return result;
}

uint64_t sub_1B950D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B950F9A8();
  return a7(v7);
}

uint64_t Searchfoundation_MessageCardSection.messageAttachment.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_16_33() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B950FB70(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_5_46();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_MessageAttachment(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MessageCardSection.messageAttachment.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_MessageAttachment(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_521(*(v0 + v11) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v10 = 0;
    v10[8] = 1;
    *(v10 + 1) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_URL(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v1, &qword_1EBACFFC0, "Z\b");
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_46();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MessageCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_MessageCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t sub_1B950DB7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF40);
  __swift_project_value_buffer(v0, qword_1EBACFF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MessageStatusUnknown";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MessageStatusUnsent";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MessageStatusSent";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MessageStatusSending";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B950DDE4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF58);
  __swift_project_value_buffer(v0, qword_1EBACFF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MessageServiceTypeUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MessageServiceTypeiMessage";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MessageServiceTypeSMS";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MessageServiceTypeOther";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B950E04C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF70);
  __swift_project_value_buffer(v0, qword_1EBACFF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MessageAttachmentTypeUnknown";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MessageAttachmentTypePhoto";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MessageAttachmentTypeLivePhoto";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MessageAttachmentTypeVideo";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MessageAttachmentTypeWeb";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B950E30C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF88);
  __swift_project_value_buffer(v0, qword_1EBACFF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 56;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 57;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 58;
  *v12 = "linkMetadata";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 59;
  *v14 = "photosLibraryImage";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_MessageAttachment.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case '8':
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B950E63C(v6, v7, v8, v9);
        break;
      case '9':
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B950E6A4(v14, v15, v16, v17);
        break;
      case ':':
        sub_1B964C470();
        break;
      case ';':
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B950E758(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B950E6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MessageAttachment(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t sub_1B950E758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MessageAttachment(0);
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  sub_1B9510248(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage, protocol conformance descriptor for Searchfoundation_PhotosLibraryImage);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MessageAttachment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v25 - v8;
  v9 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v28 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_22_3();
  v16 = type metadata accessor for Searchfoundation_URL(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  if (!*v3 || (v18 = *(v3 + 8), v29 = *v3, v30 = v18, sub_1B95101F4(), result = sub_1B964C680(), !v4))
  {
    v26 = v9;
    v20 = type metadata accessor for Searchfoundation_MessageAttachment(0);
    sub_1B8D92024();
    v21 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, v16);
    v27 = v20;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8E20, &unk_1B964D620);
    }

    else
    {
      sub_1B950F950();
      sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
      sub_1B964C740();
      result = sub_1B950FA00();
      if (v4)
      {
        return result;
      }
    }

    if (sub_1B8D99EA8(v3[2], v3[3]) || (result = sub_1B964C6A0(), !v4))
    {
      v24 = v31;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v24, 1, v26) == 1)
      {
        sub_1B8D9207C(v24, &qword_1EBACC618, &unk_1B96B9990);
      }

      else
      {
        sub_1B950F950();
        sub_1B9510248(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage, protocol conformance descriptor for Searchfoundation_PhotosLibraryImage);
        sub_1B964C740();
        result = sub_1B950FA00();
        if (v4)
        {
          return result;
        }
      }

      return sub_1B964C290();
    }
  }

  return result;
}

void static Searchfoundation_MessageAttachment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v50 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v49 = v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC620, &unk_1B96D4760);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v15 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v20);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_88();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v46 - v24;
  v26 = *v5;
  v27 = *v3;
  if (*(v3 + 8) != 1)
  {
    if (v26 != v27)
    {
      goto LABEL_36;
    }

LABEL_6:
    v47 = v1;
    v46[0] = v9;
    v46[1] = type metadata accessor for Searchfoundation_MessageAttachment(0);
    v28 = *(v22 + 48);
    v48 = v5;
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v25, 1, v15);
    if (v29)
    {
      OUTLINED_FUNCTION_178(&v25[v28], 1, v15);
      if (v29)
      {
        sub_1B8D9207C(v25, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_23:
        if ((MEMORY[0x1BFADC060](v48[2], v48[3], v3[2], v3[3]) & 1) == 0)
        {
          goto LABEL_36;
        }

        v37 = v47;
        v38 = *(v13 + 48);
        sub_1B8D92024();
        v39 = v37;
        sub_1B8D92024();
        v40 = v50;
        OUTLINED_FUNCTION_178(v37, 1, v50);
        if (v29)
        {
          OUTLINED_FUNCTION_178(v37 + v38, 1, v40);
          if (v29)
          {
            sub_1B8D9207C(v37, &qword_1EBACC618, &unk_1B96B9990);
            goto LABEL_43;
          }
        }

        else
        {
          v41 = v49;
          sub_1B8D92024();
          OUTLINED_FUNCTION_178(v39 + v38, 1, v40);
          if (!v42)
          {
            sub_1B950F950();
            v43 = static Searchfoundation_PhotosLibraryImage.== infix(_:_:)(v41);
            sub_1B950FA00();
            sub_1B950FA00();
            sub_1B8D9207C(v39, &qword_1EBACC618, &unk_1B96B9990);
            if ((v43 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_43:
            sub_1B964C2B0();
            OUTLINED_FUNCTION_8_44();
            sub_1B9510248(v44, v45, MEMORY[0x1E69AAC10]);
            sub_1B964C850();
            goto LABEL_36;
          }

          sub_1B950FA00();
        }

        v30 = &unk_1EBACC620;
        v31 = &unk_1B96D4760;
        v32 = v39;
LABEL_16:
        sub_1B8D9207C(v32, v30, v31);
        goto LABEL_36;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(&v25[v28], 1, v15);
      if (!v29)
      {
        OUTLINED_FUNCTION_0_102();
        sub_1B950F950();
        v33 = *v0 == *v19 && v0[1] == v19[1];
        if (v33 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_8_44();
          sub_1B9510248(v34, v35, MEMORY[0x1E69AAC10]);
          v36 = sub_1B964C850();
          sub_1B950FA00();
          sub_1B950FA00();
          sub_1B8D9207C(v25, &qword_1EBAB8E20, &unk_1B964D620);
          if ((v36 & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_23;
        }

        sub_1B950FA00();
        OUTLINED_FUNCTION_182();
        sub_1B950FA00();
        v30 = &qword_1EBAB8E20;
        v31 = &unk_1B964D620;
LABEL_15:
        v32 = v25;
        goto LABEL_16;
      }

      sub_1B950FA00();
    }

    v30 = &qword_1EBAB8E28;
    v31 = &unk_1B96B7BB0;
    goto LABEL_15;
  }

  switch(v27)
  {
    case 1:
      if (v26 == 1)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      if (v26 == 2)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v26 == 3)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v26 == 4)
      {
        goto LABEL_6;
      }

      break;
    default:
      if (!v26)
      {
        goto LABEL_6;
      }

      break;
  }

LABEL_36:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B950F2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9510248(&qword_1EBAD0088, type metadata accessor for Searchfoundation_MessageAttachment, protocol conformance descriptor for Searchfoundation_MessageAttachment);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B950F320(uint64_t a1)
{
  v2 = sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment, protocol conformance descriptor for Searchfoundation_MessageAttachment);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B950F390(uint64_t a1, uint64_t a2)
{
  sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment, protocol conformance descriptor for Searchfoundation_MessageAttachment);

  return sub_1B964C5D0();
}

uint64_t sub_1B950F42C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFFA0);
  __swift_project_value_buffer(v0, qword_1EBACFFA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B9656D00;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "messageText";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "messageStatus";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "messageServiceType";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "audioMessageURL";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "messageAttachment";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B950F900()
{
  OUTLINED_FUNCTION_9_38();
  result = sub_1B950FA74();
  qword_1EBACFFB8 = result;
  return result;
}

uint64_t sub_1B950F950()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B950F9A8()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B950FA00()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B950FA74()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL;
  v7 = type metadata accessor for Searchfoundation_URL(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
  v9 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  return v0;
}

uint64_t sub_1B950FB70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v39 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v39 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v40 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v41 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
  v42 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  v44 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  v45 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL;
  v46 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL;
  v15 = type metadata accessor for Searchfoundation_URL(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
  v47 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
  v17 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v18;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v20;
  *(v1 + 32) = v19;

  swift_beginAccess();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v22;
  *(v1 + 48) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 58);
  v23 = v39;
  swift_beginAccess();
  *v23 = v21;
  swift_beginAccess();
  v25 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = v40;
  swift_beginAccess();
  *v26 = v25;
  *(v1 + 72) = v24;

  swift_beginAccess();
  v27 = *(a1 + 80);
  LOBYTE(v23) = *(a1 + 88);
  v28 = v41;
  swift_beginAccess();
  *v28 = v27;
  *(v1 + 88) = v23;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  swift_beginAccess();
  *v11 = v31;
  v11[1] = v30;

  v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v34 = v44;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  v37 = v45;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
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

unint64_t sub_1B95101F4()
{
  result = qword_1EBACFFC8;
  if (!qword_1EBACFFC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageAttachmentType, &type metadata for Searchfoundation_MessageAttachmentType, v0, v1);
    atomic_store(result, &qword_1EBACFFC8);
  }

  return result;
}

uint64_t sub_1B9510248(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1B9510290()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL[0], &qword_1EBAB8E20, &unk_1B964D620);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment, &qword_1EBACFFC0, "Z\b");
  return v0;
}

uint64_t sub_1B951033C()
{
  v0 = sub_1B9510290();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_MessageCardSection.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MessageCardSection._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_40_0();
    *(v0 + v1) = sub_1B950FB70(v2);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B951042C(v3, v4, v5, v6);
}

uint64_t sub_1B951042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B95106B0(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8FD77E8(a2, a1);
        break;
      case 3:
        sub_1B8FD786C(a2, a1);
        break;
      case 4:
        sub_1B92D3D10(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B92D3D94(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B92D3E18(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8E16ACC(a2, a1);
        break;
      case 8:
        sub_1B92D3E9C(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B951077C(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B9510858(a2, a1);
            break;
          case '4':
            v11 = sub_1B9513208;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
            v17 = &type metadata for Searchfoundation_MessageStatus;
            goto LABEL_16;
          case '5':
            v11 = sub_1B95131B4;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
            v17 = &type metadata for Searchfoundation_MessageServiceType;
LABEL_16:
            sub_1B95108E4(v12, v13, v14, v15, v16, v11, v17);
            break;
          case '6':
            sub_1B9510988(a2, a1, a3, a4);
            break;
          case '7':
            sub_1B9510A64(a2, a1, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B95106B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B9510248(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B951077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B9510248(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9510858(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B95108E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B9510988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9510A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MessageAttachment(0);
  sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment, protocol conformance descriptor for Searchfoundation_MessageAttachment);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_MessageCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_MessageCardSection(0);
  result = sub_1B9510BAC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9510BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v42 - v8;
  v10 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = v42 - v12;
  v44 = type metadata accessor for Searchfoundation_URL(0);
  MEMORY[0x1EEE9AC00](v44);
  v42[1] = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = v42 - v15;
  v47 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v47);
  v45 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v54 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v42[0] = v9;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B9510248(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    v9 = v42[0];
  }

  v17 = v54;
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(v17 + 32);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1B964C700();
  if (v5)
  {
  }

LABEL_9:
  v21 = v54;
  swift_beginAccess();
  v22 = *(v21 + 40);
  v23 = *(v21 + 48);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v26 = v54;
  swift_beginAccess();
  if (*(v26 + 56) != 1 || (result = sub_1B964C670(), !v5))
  {
    swift_beginAccess();
    if (*(v26 + 57) != 1 || (result = sub_1B964C670(), !v5))
    {
      swift_beginAccess();
      if (*(v26 + 58) != 1 || (result = sub_1B964C670(), !v5))
      {
        swift_beginAccess();
        v27 = *(v26 + 64);
        v28 = *(v26 + 72);
        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {

          sub_1B964C700();
          if (v5)
          {
          }
        }

        v30 = v54;
        swift_beginAccess();
        if (!*(v30 + 80) || (v31 = *(v30 + 88), v52 = *(v30 + 80), v53 = v31, sub_1B92C8A2C(), result = sub_1B964C680(), !v5))
        {
          v42[0] = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
          swift_beginAccess();
          v32 = v46;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v32, 1, v47) == 1)
          {
            sub_1B8D9207C(v32, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            v42[0] = type metadata accessor for Searchfoundation_Color;
            sub_1B950F950();
            sub_1B9510248(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
            sub_1B964C740();
            result = sub_1B950FA00();
            if (v5)
            {
              return result;
            }
          }

          v33 = (v54 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
          swift_beginAccess();
          v34 = *v33;
          v35 = v33[1];
          v36 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v36 = v34 & 0xFFFFFFFFFFFFLL;
          }

          if (!v36 || (, sub_1B964C700(), result = , !v5))
          {
            v37 = v54 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
            swift_beginAccess();
            if (!*v37 || (v38 = *(v37 + 8), v50 = *v37, v51 = v38, sub_1B9513208(), result = sub_1B964C680(), !v5))
            {
              v39 = v54 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
              swift_beginAccess();
              if (!*v39 || (v40 = *(v39 + 8), v48 = *v39, v49 = v40, sub_1B95131B4(), result = sub_1B964C680(), !v5))
              {
                v47 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL[0];
                swift_beginAccess();
                v41 = v43;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v41, 1, v44) == 1)
                {
                  sub_1B8D9207C(v41, &qword_1EBAB8E20, &unk_1B964D620);
                }

                else
                {
                  v47 = type metadata accessor for Searchfoundation_URL;
                  sub_1B950F950();
                  sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
                  sub_1B964C740();
                  result = sub_1B950FA00();
                  if (v5)
                  {
                    return result;
                  }
                }

                v47 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
                swift_beginAccess();
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
                {
                  return sub_1B8D9207C(v9, &qword_1EBACFFC0, "Z\b");
                }

                else
                {
                  sub_1B950F950();
                  sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment, protocol conformance descriptor for Searchfoundation_MessageAttachment);
                  sub_1B964C740();
                  return sub_1B950FA00();
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

uint64_t static Searchfoundation_MessageCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_72();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B951161C(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_8_44();
  sub_1B9510248(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B951161C(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  MEMORY[0x1EEE9AC00](v88);
  v85[1] = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD00A0, &unk_1B96D5000);
  MEMORY[0x1EEE9AC00](v87);
  v89 = v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v85[2] = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = v85 - v9;
  v92 = type metadata accessor for Searchfoundation_URL(0);
  MEMORY[0x1EEE9AC00](v92);
  v86 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  MEMORY[0x1EEE9AC00](v91);
  v93 = v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = v85 - v15;
  v16 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v18);
  v97 = v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v85 - v24;
  swift_beginAccess();
  v26 = *(a1 + 16);
  swift_beginAccess();
  v27 = *(a2 + 16);

  sub_1B8D67B1C(v26, v27);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v31 = *(a1 + 24);
  v30 = *(a1 + 32);
  swift_beginAccess();
  v32 = v31 == *(a2 + 24) && v30 == *(a2 + 32);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  swift_beginAccess();
  v35 = v33 == *(a2 + 40) && v34 == *(a2 + 48);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v36 = *(a1 + 56);
  swift_beginAccess();
  if (v36 != *(a2 + 56))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v37 = *(a1 + 57);
  swift_beginAccess();
  if (v37 != *(a2 + 57))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v38 = *(a1 + 58);
  swift_beginAccess();
  if (v38 != *(a2 + 58))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v39 = *(a1 + 64);
  v40 = *(a1 + 72);
  swift_beginAccess();
  v41 = v39 == *(a2 + 64) && v40 == *(a2 + 72);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v42 = *(a1 + 80);
  v43 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v42, v43, *(a2 + 80)))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v44 = *(v18 + 48);
  v45 = v97;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v45, 1, v16) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v16) == 1)
    {
      sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_34;
    }

LABEL_26:
    v46 = &qword_1EBACB058;
    v47 = &unk_1B96CA9D0;
    v48 = v45;
LABEL_27:
    sub_1B8D9207C(v48, v46, v47);
    goto LABEL_28;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v16) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B950FA00();
    goto LABEL_26;
  }

  v50 = v96;
  sub_1B950F950();
  if (*&v23[*(v16 + 20)] != *&v50[*(v16 + 20)])
  {

    sub_1B947FDE4();
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      sub_1B950FA00();
      v73 = &qword_1EBACB050;
      v74 = &unk_1B96B7BD0;
      sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B950FA00();
      v48 = v45;
LABEL_45:
      v46 = v73;
      v47 = v74;
      goto LABEL_27;
    }
  }

  sub_1B964C2B0();
  sub_1B9510248(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v53 = sub_1B964C850();
  sub_1B950FA00();
  sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B950FA00();
  sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_34:
  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  v57 = (a2 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  swift_beginAccess();
  v58 = v55 == *v57 && v56 == v57[1];
  if (!v58 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v59 = a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  swift_beginAccess();
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = (a2 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus);
  swift_beginAccess();
  if (!sub_1B8D92198(v60, v61, *v62))
  {
    goto LABEL_28;
  }

  v63 = a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  swift_beginAccess();
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = (a2 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType);
  swift_beginAccess();
  if (!sub_1B8D92198(v64, v65, *v66))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v67 = v95;
  sub_1B8D92024();
  swift_beginAccess();
  v68 = *(v91 + 48);
  v69 = v93;
  sub_1B8D92024();
  sub_1B8D92024();
  v70 = v92;
  if (__swift_getEnumTagSinglePayload(v69, 1, v92) != 1)
  {
    v75 = v90;
    sub_1B8D92024();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69 + v68, 1, v70);
    v72 = v94;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v95, &qword_1EBAB8E20, &unk_1B964D620);
      sub_1B950FA00();
      goto LABEL_48;
    }

    v77 = v86;
    sub_1B950F950();
    v78 = *v75 == *v77 && v75[1] == v77[1];
    if (v78 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      sub_1B9510248(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v79 = sub_1B964C850();
      sub_1B950FA00();
      sub_1B8D9207C(v95, &qword_1EBAB8E20, &unk_1B964D620);
      sub_1B950FA00();
      sub_1B8D9207C(v69, &qword_1EBAB8E20, &unk_1B964D620);
      if (v79)
      {
        goto LABEL_55;
      }

LABEL_28:

      return 0;
    }

    sub_1B950FA00();
    v73 = &qword_1EBAB8E20;
    v74 = &unk_1B964D620;
    sub_1B8D9207C(v95, &qword_1EBAB8E20, &unk_1B964D620);
    sub_1B950FA00();
    v48 = v69;
    goto LABEL_45;
  }

  sub_1B8D9207C(v67, &qword_1EBAB8E20, &unk_1B964D620);
  v71 = __swift_getEnumTagSinglePayload(v69 + v68, 1, v70);
  v72 = v94;
  if (v71 != 1)
  {
LABEL_48:
    v46 = &qword_1EBAB8E28;
    v47 = &unk_1B96B7BB0;
    v48 = v69;
    goto LABEL_27;
  }

  sub_1B8D9207C(v69, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_55:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v80 = *(v87 + 48);
  v81 = v89;
  sub_1B8D92024();
  sub_1B8D92024();
  v82 = v88;
  if (__swift_getEnumTagSinglePayload(v81, 1, v88) == 1)
  {

    sub_1B8D9207C(v72, &qword_1EBACFFC0, "Z\b");
    if (__swift_getEnumTagSinglePayload(v81 + v80, 1, v82) == 1)
    {
      sub_1B8D9207C(v81, &qword_1EBACFFC0, "Z\b");
      return 1;
    }

    goto LABEL_60;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v81 + v80, 1, v82) == 1)
  {

    sub_1B8D9207C(v72, &qword_1EBACFFC0, "Z\b");
    sub_1B950FA00();
LABEL_60:
    sub_1B8D9207C(v81, &qword_1EBAD00A0, &unk_1B96D5000);
    return 0;
  }

  sub_1B950F950();
  static Searchfoundation_MessageAttachment.== infix(_:_:)();
  v84 = v83;

  sub_1B950FA00();
  sub_1B8D9207C(v72, &qword_1EBACFFC0, "Z\b");
  sub_1B950FA00();
  sub_1B8D9207C(v81, &qword_1EBACFFC0, "Z\b");
  return (v84 & 1) != 0;
}

uint64_t sub_1B9512598(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B9510248(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9512678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9510248(&qword_1EBAD0080, type metadata accessor for Searchfoundation_MessageCardSection, protocol conformance descriptor for Searchfoundation_MessageCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95126F8(uint64_t a1)
{
  v2 = sub_1B9510248(&qword_1EBACE700, type metadata accessor for Searchfoundation_MessageCardSection, protocol conformance descriptor for Searchfoundation_MessageCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9512768(uint64_t a1, uint64_t a2)
{
  sub_1B9510248(&qword_1EBACE700, type metadata accessor for Searchfoundation_MessageCardSection, protocol conformance descriptor for Searchfoundation_MessageCardSection);

  return sub_1B964C5D0();
}

unint64_t sub_1B95127EC()
{
  result = qword_1EBACFFE0;
  if (!qword_1EBACFFE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageStatus, &type metadata for Searchfoundation_MessageStatus, v0, v1);
    atomic_store(result, &qword_1EBACFFE0);
  }

  return result;
}

unint64_t sub_1B9512844()
{
  result = qword_1EBACFFE8;
  if (!qword_1EBACFFE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageStatus, &type metadata for Searchfoundation_MessageStatus, v0, v1);
    atomic_store(result, &qword_1EBACFFE8);
  }

  return result;
}

unint64_t sub_1B951289C()
{
  result = qword_1EBACFFF0;
  if (!qword_1EBACFFF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageStatus, &type metadata for Searchfoundation_MessageStatus, v0, v1);
    atomic_store(result, &qword_1EBACFFF0);
  }

  return result;
}

unint64_t sub_1B9512924()
{
  result = qword_1EBAD0008;
  if (!qword_1EBAD0008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageServiceType, &type metadata for Searchfoundation_MessageServiceType, v0, v1);
    atomic_store(result, &qword_1EBAD0008);
  }

  return result;
}

unint64_t sub_1B951297C()
{
  result = qword_1EBAD0010;
  if (!qword_1EBAD0010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageServiceType, &type metadata for Searchfoundation_MessageServiceType, v0, v1);
    atomic_store(result, &qword_1EBAD0010);
  }

  return result;
}

unint64_t sub_1B95129D4()
{
  result = qword_1EBAD0018;
  if (!qword_1EBAD0018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageServiceType, &type metadata for Searchfoundation_MessageServiceType, v0, v1);
    atomic_store(result, &qword_1EBAD0018);
  }

  return result;
}

unint64_t sub_1B9512A5C()
{
  result = qword_1EBAD0030;
  if (!qword_1EBAD0030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageAttachmentType, &type metadata for Searchfoundation_MessageAttachmentType, v0, v1);
    atomic_store(result, &qword_1EBAD0030);
  }

  return result;
}

unint64_t sub_1B9512AB4()
{
  result = qword_1EBAD0038;
  if (!qword_1EBAD0038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageAttachmentType, &type metadata for Searchfoundation_MessageAttachmentType, v0, v1);
    atomic_store(result, &qword_1EBAD0038);
  }

  return result;
}

unint64_t sub_1B9512B0C()
{
  result = qword_1EBAD0040;
  if (!qword_1EBAD0040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageAttachmentType, &type metadata for Searchfoundation_MessageAttachmentType, v0, v1);
    atomic_store(result, &qword_1EBAD0040);
  }

  return result;
}

void sub_1B9512E28(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9512F14(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL);
    if (v2 <= 0x3F)
    {
      sub_1B9512F14(319, &qword_1ED9F89D8, type metadata accessor for Searchfoundation_PhotosLibraryImage);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9512F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9512F90(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MessageCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B951301C(uint64_t a1)
{
  sub_1B9512F14(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B9512F14(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL);
    if (v2 <= 0x3F)
    {
      sub_1B9512F14(319, &qword_1ED9F1960, type metadata accessor for Searchfoundation_MessageAttachment);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B95131B4()
{
  result = qword_1EBAD0090;
  if (!qword_1EBAD0090)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageServiceType, &type metadata for Searchfoundation_MessageServiceType, v0, v1);
    atomic_store(result, &qword_1EBAD0090);
  }

  return result;
}

unint64_t sub_1B9513208()
{
  result = qword_1EBAD0098;
  if (!qword_1EBAD0098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MessageStatus, &type metadata for Searchfoundation_MessageStatus, v0, v1);
    atomic_store(result, &qword_1EBAD0098);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_38()
{
  type metadata accessor for Searchfoundation_MessageCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_28()
{
  type metadata accessor for Searchfoundation_MessageCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_16_33()
{
  type metadata accessor for Searchfoundation_MessageCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_43_17()
{
  type metadata accessor for Searchfoundation_MessageCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_MetaInfoCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t type metadata accessor for Searchfoundation_MetaInfoCardSection(uint64_t a1)
{
  result = qword_1ED9F12A0;
  if (!qword_1ED9F12A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_MetaInfoCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MetaInfoCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_9_39();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 56));
  OUTLINED_FUNCTION_28_2(v6, v7);
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *(a1 + v10) = qword_1ED9CD1C8;
    v11 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_85();
    v14 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v14, v15, v16);
  }

  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.backgroundColor.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MetaInfoCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 56), &qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_51_15(v3, v4, v5);
  type metadata accessor for Searchfoundation_Color(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Searchfoundation_MetaInfoCardSection.backgroundColor.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Searchfoundation_Color(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_30_30(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 56));
  OUTLINED_FUNCTION_178(v5, 1, v7);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_85();
    sub_1B9514524(v5, v9, v15);
  }

  return sub_1B9513AB4;
}

uint64_t Searchfoundation_MetaInfoCardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_39();
  v3 = OUTLINED_FUNCTION_115(*(v2 + 56));
  OUTLINED_FUNCTION_63_4(v3, v4);
  v5 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearBackgroundColor()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBACB050, &unk_1B96B7BD0);
  type metadata accessor for Searchfoundation_Color(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.contentURL.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_9_39();
  v4 = OUTLINED_FUNCTION_115(*(v3 + 60));
  OUTLINED_FUNCTION_28_2(v4, v5);
  type metadata accessor for Searchfoundation_URL(0);
  v6 = OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_158_4(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1B9513CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B9514768(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t Searchfoundation_MetaInfoCardSection.contentURL.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MetaInfoCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 60), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_0_103();
  OUTLINED_FUNCTION_51_15(v3, v4, v5);
  type metadata accessor for Searchfoundation_URL(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Searchfoundation_MetaInfoCardSection.contentURL.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Searchfoundation_URL(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = *(OUTLINED_FUNCTION_30_30(v12) + 60);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_115(v13);
  sub_1B8DD9078(v14, v15, &qword_1EBAB8E20, &unk_1B964D620);
  v16 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v16, v17, v7);
  if (v18)
  {
    OUTLINED_FUNCTION_157_6();
    v19 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v19, v20, v7);
    if (!v18)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    sub_1B9514524(v5, v9, v21);
  }

  return sub_1B9513EE4;
}

void sub_1B9513F0C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = **a1;
  if (a2)
  {
    sub_1B9514768((*a1)[4], v10, a5);
    sub_1B8D9207C(v13 + v9, a3, a4);
    sub_1B9514524(v10, v13 + v9, a5);
    OUTLINED_FUNCTION_187_1();
    sub_1B95147C4();
  }

  else
  {
    sub_1B8D9207C(v13 + v9, a3, a4);
    sub_1B9514524(v11, v13 + v9, a5);
    OUTLINED_FUNCTION_187_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t Searchfoundation_MetaInfoCardSection.hasContentURL.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_39();
  v3 = OUTLINED_FUNCTION_115(*(v2 + 60));
  OUTLINED_FUNCTION_63_4(v3, v4);
  v5 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearContentURL()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.hostPageURL.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_9_39();
  v4 = OUTLINED_FUNCTION_115(*(v3 + 64));
  OUTLINED_FUNCTION_28_2(v4, v5);
  type metadata accessor for Searchfoundation_URL(0);
  v6 = OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_158_4(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v8, v9, v10);
  }

  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.hostPageURL.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MetaInfoCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 64), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_0_103();
  OUTLINED_FUNCTION_51_15(v3, v4, v5);
  type metadata accessor for Searchfoundation_URL(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t (*Searchfoundation_MetaInfoCardSection.hostPageURL.modify())(uint64_t, uint64_t)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Searchfoundation_URL(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = *(OUTLINED_FUNCTION_30_30(v12) + 64);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_115(v13);
  sub_1B8DD9078(v14, v15, &qword_1EBAB8E20, &unk_1B964D620);
  v16 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v16, v17, v7);
  if (v18)
  {
    OUTLINED_FUNCTION_157_6();
    v19 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v19, v20, v7);
    if (!v18)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    sub_1B9514524(v5, v9, v21);
  }

  return sub_1B9516DA8;
}

uint64_t Searchfoundation_MetaInfoCardSection.hasHostPageURL.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_39();
  v3 = OUTLINED_FUNCTION_115(*(v2 + 64));
  OUTLINED_FUNCTION_63_4(v3, v4);
  v5 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearHostPageURL()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 64), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_9_39();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 68));
  OUTLINED_FUNCTION_28_2(v6, v7);
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *(a1 + v10) = qword_1EBAB5608;
    v11 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_73();
    v14 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v14, v15, v16);
  }

  return result;
}

uint64_t sub_1B9514524(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

uint64_t Searchfoundation_MetaInfoCardSection.badge.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MetaInfoCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 68), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_3_73();
  OUTLINED_FUNCTION_51_15(v3, v4, v5);
  type metadata accessor for Searchfoundation_Image(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Searchfoundation_MetaInfoCardSection.badge.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Searchfoundation_Image(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_30_30(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 68));
  OUTLINED_FUNCTION_178(v5, 1, v7);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_73();
    sub_1B9514524(v5, v9, v15);
  }

  return sub_1B9514740;
}

uint64_t sub_1B9514768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

uint64_t sub_1B95147C4()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_MetaInfoCardSection.hasBadge.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_39();
  v3 = OUTLINED_FUNCTION_115(*(v2 + 68));
  OUTLINED_FUNCTION_63_4(v3, v4);
  v5 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearBadge()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 68), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_MetaInfoCardSection.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection(v2) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_MetaInfoCardSection.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_MetaInfoCardSection(v0);
  return nullsub_1;
}

uint64_t sub_1B9514A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD00A8);
  __swift_project_value_buffer(v0, qword_1EBAD00A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "trending";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "contentURL";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "hostPageURL";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "badge";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MetaInfoCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD00A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MetaInfoCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B9515098(v6, v7, v8, v9);
        break;
      case 2:
      case 3:
      case 7:
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
LABEL_10:
        sub_1B964C400();
        break;
      case 8:
        v18 = OUTLINED_FUNCTION_9();
        sub_1B92C7E00(v18, v19, v20, v21);
        break;
      case 9:
        v26 = OUTLINED_FUNCTION_9();
        sub_1B9515138(v26, v27, v28, v29);
        break;
      default:
        switch(result)
        {
          case '3':
            goto LABEL_10;
          case '4':
            v22 = OUTLINED_FUNCTION_9();
            sub_1B95151EC(v22, v23, v24, v25);
            break;
          case '5':
            v10 = OUTLINED_FUNCTION_9();
            sub_1B95152A0(v10, v11, v12, v13);
            break;
          case '6':
            v14 = OUTLINED_FUNCTION_9();
            sub_1B9515354(v14, v15, v16, v17);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B9515098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B9516D60(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B9515138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B9516D60(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B95151EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B9516D60(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t sub_1B95152A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B9516D60(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t sub_1B9515354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9516D60(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MetaInfoCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v16 = OUTLINED_FUNCTION_183(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v72 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v65 - v19;
  v20 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v68 = v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v65 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v25);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v73 = &v65 - v27;
  v74 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v70 = v30 - v29;
  if (*(*v3 + 16))
  {
    v67 = v20;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B9516D60(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    v31 = v77;
    result = sub_1B964C730();
    if (v31)
    {
      return result;
    }

    v4 = v3;
    v20 = v67;
  }

  else
  {
    v31 = v77;
  }

  OUTLINED_FUNCTION_1();
  if (!v35 || (result = OUTLINED_FUNCTION_37_15(v33, v34, 2), !v31))
  {
    OUTLINED_FUNCTION_1();
    if (!v38 || (result = OUTLINED_FUNCTION_37_15(v36, v37, 3), !v31))
    {
      if (*(v4 + 40) != 1 || (result = OUTLINED_FUNCTION_38_12(1, 4), !v31))
      {
        if (*(v4 + 41) != 1 || (result = OUTLINED_FUNCTION_38_12(1, 5), !v31))
        {
          if (*(v4 + 42) != 1 || (result = OUTLINED_FUNCTION_38_12(1, 6), !v31))
          {
            OUTLINED_FUNCTION_1();
            if (!v41 || (result = OUTLINED_FUNCTION_37_15(v39, v40, 7), !v31))
            {
              v67 = v20;
              v42 = v31;
              if (*(v4 + 64))
              {
                v43 = *(v4 + 72);
                v75 = *(v4 + 64);
                v76 = v43;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_34_14();
                result = sub_1B964C680();
                if (v31)
                {
                  return result;
                }

                v42 = 0;
              }

              v77 = a3;
              v66 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
              v44 = v73;
              sub_1B8DD9078(v4 + v66[14], v73, &qword_1EBACB050, &unk_1B96B7BD0);
              v45 = OUTLINED_FUNCTION_443();
              if (__swift_getEnumTagSinglePayload(v45, v46, v74) == 1)
              {
                v74 = v9;
                sub_1B8D9207C(v44, &qword_1EBACB050, &unk_1B96B7BD0);
                v31 = v42;
              }

              else
              {
                OUTLINED_FUNCTION_1_85();
                v65 = v47;
                sub_1B9514524(v44, v70, v48);
                sub_1B9516D60(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
                OUTLINED_FUNCTION_34_14();
                sub_1B964C740();
                result = sub_1B95147C4();
                if (v31)
                {
                  return result;
                }

                v74 = v9;
              }

              v50 = v71;
              v49 = v72;
              v51 = v77;
              if (*(v4 + 73) != 1 || (result = sub_1B964C670(), !v31))
              {
                v77 = v51;
                v52 = v31;
                sub_1B8DD9078(v4 + v66[15], v50, &qword_1EBAB8E20, &unk_1B964D620);
                v53 = OUTLINED_FUNCTION_443();
                if (__swift_getEnumTagSinglePayload(v53, v54, v67) == 1)
                {
                  sub_1B8D9207C(v50, &qword_1EBAB8E20, &unk_1B964D620);
                }

                else
                {
                  v73 = v14;
                  v71 = v10;
                  sub_1B9514524(v50, v69, type metadata accessor for Searchfoundation_URL);
                  OUTLINED_FUNCTION_17_28();
                  sub_1B9516D60(v55, v56, protocol conformance descriptor for Searchfoundation_URL);
                  OUTLINED_FUNCTION_34_14();
                  sub_1B964C740();
                  result = sub_1B95147C4();
                  if (v31)
                  {
                    return result;
                  }

                  v52 = 0;
                  v10 = v71;
                  v14 = v73;
                }

                sub_1B8DD9078(v4 + v66[16], v49, &qword_1EBAB8E20, &unk_1B964D620);
                OUTLINED_FUNCTION_31_25();
                if (__swift_getEnumTagSinglePayload(v57, v58, v59) == 1)
                {
                  sub_1B8D9207C(v49, &qword_1EBAB8E20, &unk_1B964D620);
                }

                else
                {
                  sub_1B9514524(v49, v68, type metadata accessor for Searchfoundation_URL);
                  OUTLINED_FUNCTION_17_28();
                  sub_1B9516D60(v60, v61, protocol conformance descriptor for Searchfoundation_URL);
                  sub_1B964C740();
                  result = sub_1B95147C4();
                  if (v52)
                  {
                    return result;
                  }

                  v52 = 0;
                }

                v62 = v74;
                sub_1B8DD9078(v4 + v66[17], v74, &qword_1EBAB8EA8, &unk_1B96B77D0);
                v63 = OUTLINED_FUNCTION_443();
                if (__swift_getEnumTagSinglePayload(v63, v64, v10) == 1)
                {
                  sub_1B8D9207C(v62, &qword_1EBAB8EA8, &unk_1B96B77D0);
                }

                else
                {
                  sub_1B9514524(v62, v14, type metadata accessor for Searchfoundation_Image);
                  sub_1B9516D60(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
                  sub_1B964C740();
                  result = sub_1B95147C4();
                  if (v52)
                  {
                    return result;
                  }
                }

                OUTLINED_FUNCTION_186();
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

uint64_t static Searchfoundation_MetaInfoCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v122 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v118 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v116 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v116 - v9;
  v127 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v119 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  v125 = (&v116 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v15 = OUTLINED_FUNCTION_183(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v124 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v116 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v126 = v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v116 - v24;
  v26 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v31);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v116 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v116 - v37;
  sub_1B8D67B1C(*v1, *v0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_32;
  }

  v40 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v41 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_32;
  }

  v42 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v42 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)))
  {
    goto LABEL_32;
  }

  v43 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  v44 = *(v43 + 56);
  v116 = v43;
  v117 = v44;
  v45 = *(v35 + 48);
  sub_1B8DD9078(v1 + v44, v38, &qword_1EBACB050, &unk_1B96B7BD0);
  v46 = v0 + v117;
  v117 = v45;
  sub_1B8DD9078(v46, &v38[v45], &qword_1EBACB050, &unk_1B96B7BD0);
  v47 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v47, v48, v26);
  if (v40)
  {
    OUTLINED_FUNCTION_178(&v38[v117], 1, v26);
    if (v40)
    {
      sub_1B8D9207C(v38, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  sub_1B8DD9078(v38, v34, &qword_1EBACB050, &unk_1B96B7BD0);
  v49 = v117;
  OUTLINED_FUNCTION_178(&v38[v117], 1, v26);
  if (v50)
  {
    sub_1B95147C4();
LABEL_29:
    v51 = &qword_1EBACB058;
    v52 = &unk_1B96CA9D0;
LABEL_30:
    v53 = v38;
LABEL_31:
    sub_1B8D9207C(v53, v51, v52);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_85();
  sub_1B9514524(&v38[v49], v30, v56);
  if (*&v34[*(v26 + 20)] != *(v30 + *(v26 + 20)))
  {

    sub_1B947FDE4();
    LODWORD(v117) = v57;

    if ((v117 & 1) == 0)
    {
      sub_1B95147C4();
      sub_1B95147C4();
      v51 = &qword_1EBACB050;
      v52 = &unk_1B96B7BD0;
      goto LABEL_30;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v58, v59, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_186();
  v60 = sub_1B964C850();
  sub_1B95147C4();
  sub_1B95147C4();
  sub_1B8D9207C(v38, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_37:
  if (*(v1 + 73) != *(v0 + 73))
  {
    goto LABEL_32;
  }

  v61 = v116[15];
  v62 = *(v20 + 48);
  OUTLINED_FUNCTION_36_11(v1 + v61, v25);
  OUTLINED_FUNCTION_36_11(v0 + v61, &v25[v62]);
  OUTLINED_FUNCTION_178(v25, 1, v127);
  if (v40)
  {
    OUTLINED_FUNCTION_31_25();
    OUTLINED_FUNCTION_178(v63, v64, v65);
    if (v40)
    {
      sub_1B8D9207C(v25, &qword_1EBAB8E20, &unk_1B964D620);
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  sub_1B8DD9078(v25, v19, &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v66, v67, v68);
  if (v69)
  {
    OUTLINED_FUNCTION_19_27();
    sub_1B95147C4();
LABEL_46:
    v51 = &qword_1EBAB8E28;
    v52 = &unk_1B96B7BB0;
LABEL_47:
    v53 = v25;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_103();
  v70 = &v25[v62];
  v71 = v125;
  sub_1B9514524(v70, v125, v72);
  v73 = *v19 == *v71 && v19[1] == v71[1];
  if (!v73 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_18_27();
    sub_1B95147C4();
    sub_1B95147C4();
    v51 = &qword_1EBAB8E20;
    v52 = &unk_1B964D620;
    goto LABEL_47;
  }

  v74 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v75, v76, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_16_34();
  sub_1B95147C4();
  sub_1B95147C4();
  sub_1B8D9207C(v25, &qword_1EBAB8E20, &unk_1B964D620);
  if ((v74 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_55:
  v77 = v116[16];
  v78 = *(v20 + 48);
  v79 = v126;
  OUTLINED_FUNCTION_36_11(v1 + v77, v126);
  OUTLINED_FUNCTION_36_11(v0 + v77, v79 + v78);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v80, v81, v82);
  if (v40)
  {
    OUTLINED_FUNCTION_31_25();
    OUTLINED_FUNCTION_178(v83, v84, v85);
    if (v40)
    {
      sub_1B8D9207C(v79, &qword_1EBAB8E20, &unk_1B964D620);
      goto LABEL_71;
    }

    goto LABEL_63;
  }

  v86 = v124;
  sub_1B8DD9078(v79, v124, &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v87, v88, v89);
  if (v90)
  {
    OUTLINED_FUNCTION_19_27();
    sub_1B95147C4();
LABEL_63:
    v51 = &qword_1EBAB8E28;
    v52 = &unk_1B96B7BB0;
LABEL_64:
    v53 = v79;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_103();
  v91 = v79 + v78;
  v92 = v119;
  sub_1B9514524(v91, v119, v93);
  v94 = *v86 == *v92 && v86[1] == v92[1];
  if (!v94 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_18_27();
    sub_1B95147C4();
    sub_1B95147C4();
    v51 = &qword_1EBAB8E20;
    v52 = &unk_1B964D620;
    goto LABEL_64;
  }

  v95 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v96, v97, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_16_34();
  sub_1B95147C4();
  sub_1B95147C4();
  sub_1B8D9207C(v79, &qword_1EBAB8E20, &unk_1B964D620);
  if ((v95 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_71:
  v98 = v116[17];
  v99 = *(v121 + 48);
  v100 = v123;
  OUTLINED_FUNCTION_36_11(v1 + v98, v123);
  v101 = v0 + v98;
  v102 = v100;
  OUTLINED_FUNCTION_36_11(v101, v100 + v99);
  v103 = v122;
  OUTLINED_FUNCTION_178(v100, 1, v122);
  if (v40)
  {
    OUTLINED_FUNCTION_178(v100 + v99, 1, v103);
    if (v40)
    {
      sub_1B8D9207C(v100, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_85:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_68();
      sub_1B9516D60(v114, v115, MEMORY[0x1E69AAC10]);
      v54 = sub_1B964C850();
      return v54 & 1;
    }

    goto LABEL_80;
  }

  v104 = v120;
  sub_1B8DD9078(v100, v120, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_178(v100 + v99, 1, v103);
  if (v105)
  {
    sub_1B95147C4();
LABEL_80:
    v51 = &qword_1EBAB8EB0;
    v52 = &qword_1B964D6B0;
LABEL_81:
    v53 = v102;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_3_73();
  v106 = v100 + v99;
  v107 = v118;
  sub_1B9514524(v106, v118, v108);
  if (*(v104 + *(v103 + 20)) != *(v107 + *(v103 + 20)))
  {

    sub_1B94C6890();
    v110 = v109;

    if ((v110 & 1) == 0)
    {
      sub_1B95147C4();
      sub_1B95147C4();
      v51 = &qword_1EBAB8EA8;
      v52 = &unk_1B96B77D0;
      goto LABEL_81;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v111, v112, MEMORY[0x1E69AAC10]);
  v113 = sub_1B964C850();
  sub_1B95147C4();
  OUTLINED_FUNCTION_186();
  sub_1B95147C4();
  sub_1B8D9207C(v102, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v113)
  {
    goto LABEL_85;
  }

LABEL_32:
  v54 = 0;
  return v54 & 1;
}

uint64_t Searchfoundation_MetaInfoCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  sub_1B9516D60(&qword_1EBAD00C0, type metadata accessor for Searchfoundation_MetaInfoCardSection, protocol conformance descriptor for Searchfoundation_MetaInfoCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9516888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9516D60(&qword_1EBAD00D8, type metadata accessor for Searchfoundation_MetaInfoCardSection, protocol conformance descriptor for Searchfoundation_MetaInfoCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9516908(uint64_t a1)
{
  v2 = sub_1B9516D60(&qword_1EBACE6D8, type metadata accessor for Searchfoundation_MetaInfoCardSection, protocol conformance descriptor for Searchfoundation_MetaInfoCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9516978(uint64_t a1, uint64_t a2)
{
  sub_1B9516D60(&qword_1EBACE6D8, type metadata accessor for Searchfoundation_MetaInfoCardSection, protocol conformance descriptor for Searchfoundation_MetaInfoCardSection);

  return sub_1B964C5D0();
}

void sub_1B9516B40(uint64_t a1)
{
  sub_1B9516CFC(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9516CFC(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9516CFC(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B9516CFC(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}