void sub_2706D6A60()
{
  OUTLINED_FUNCTION_21_0();
  sub_2706E592C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  v3 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_queue);
  v14[4] = sub_2706DA228;
  v15 = v0;
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_4_10(COERCE_DOUBLE(1107296256));
  v14[2] = v4;
  v14[3] = &block_descriptor_2;
  v5 = _Block_copy(v14);
  v6 = v3;

  sub_2706E593C();
  OUTLINED_FUNCTION_6_11();
  sub_2706DA580(v7, v8, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  OUTLINED_FUNCTION_8_11();
  sub_2706E5D7C();
  v9 = OUTLINED_FUNCTION_18_7();
  MEMORY[0x2743A60D0](v9);
  _Block_release(v5);

  v10 = OUTLINED_FUNCTION_14_9();
  v11(v10);
  v12 = OUTLINED_FUNCTION_19_10();
  v13(v12);

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706D6C64(uint64_t a1)
{
  v2 = sub_2706E592C();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2706E594C();
  result = MEMORY[0x28223BE20](v5);
  if (!*(a1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state))
  {
    v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v8;
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v9 = sub_2706E58DC();
    __swift_project_value_buffer(v9, qword_28081DC28);

    v10 = sub_2706E58BC();
    v11 = sub_2706E5BEC();

    v12 = os_log_type_enabled(v10, v11);
    v36 = v4;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v5;
      v15 = v2;
      v16 = v14;
      aBlock[0] = v14;
      *v13 = 136446210;
      v17 = sub_2706D62F0();
      v19 = sub_2706C83E8(v17, v18, aBlock);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_270680000, v10, v11, "%{public}s: starting archive destination", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v20 = v16;
      v2 = v15;
      v5 = v33;
      MEMORY[0x2743A75B0](v20, -1, -1);
      MEMORY[0x2743A75B0](v13, -1, -1);
    }

    sub_2706D65FC(1);
    sub_2706D7538();

    v21 = sub_2706E58BC();
    v22 = sub_2706E5BEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446210;
      v25 = sub_2706D62F0();
      v27 = sub_2706C83E8(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_270680000, v21, v22, "%{public}s: archive complete", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2743A75B0](v24, -1, -1);
      MEMORY[0x2743A75B0](v23, -1, -1);
    }

    v28 = v36;
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v29 = sub_2706E5C4C();
    aBlock[4] = sub_2706DA248;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_92;
    v30 = _Block_copy(aBlock);

    v31 = v34;
    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
    sub_2706E5D7C();
    MEMORY[0x2743A60D0](0, v31, v28, v30);
    _Block_release(v30);

    (*(v37 + 8))(v28, v2);
    return (*(v35 + 8))(v31, v5);
  }

  return result;
}

double sub_2706D7438(uint64_t a1)
{

  sub_2706DAAE8(0);

  return result;
}

double sub_2706D7484()
{

  sub_2706D1BF8();

  return result;
}

double sub_2706D74D8()
{

  sub_2706D1BF8();

  return result;
}

void sub_2706D7538()
{
  v106 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_32_3();
  v4 = sub_2706E565C();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v95 = (v8 - v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v89[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v89[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v89[-v17];
  v19 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_1();
  v98 = (v21 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v89[-v24];
  v96 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode;
  v101 = v0;
  sub_2706D98BC(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode, &v89[-v24]);
  v97 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v99 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v6 + 32))(v18, v25, v4);
    if (qword_28081C748 != -1)
    {
      OUTLINED_FUNCTION_2_8(&qword_28081C748);
    }

    v27 = sub_2706E58DC();
    __swift_project_value_buffer(v27, qword_28081DC28);
    (*(v6 + 16))(v16, v18, v4);
    v28 = v101;

    v29 = sub_2706E58BC();
    v30 = sub_2706E5BEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_27_1();
      v94 = v13;
      v32 = v31;
      v92 = OUTLINED_FUNCTION_26_1();
      *&v104 = v92;
      *v32 = 136446467;
      v91 = v29;
      v33 = sub_2706D62F0();
      v35 = sub_2706C83E8(v33, v34, &v104);
      v93 = v6;
      v36 = v35;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2081;
      OUTLINED_FUNCTION_1_12();
      sub_2706DA580(v37, v38, MEMORY[0x277CC9290]);
      v39 = sub_2706E611C();
      v41 = v40;
      v90 = v30;
      v42 = *(v93 + 8);
      (v42)(v16, v4);
      v43 = sub_2706C83E8(v39, v41, &v104);
      v6 = v93;

      *(v32 + 14) = v43;
      v44 = v91;
      _os_log_impl(&dword_270680000, v91, v90, "%{public}s: creating unarchiver: dest=%{private}s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      v13 = v94;
      OUTLINED_FUNCTION_12_0();

      v45 = OUTLINED_FUNCTION_22_6();
      v42(v45);
      v46 = v100;
      v28 = v101;
      goto LABEL_13;
    }

    v57 = *(v6 + 8);
    (v57)(v16, v4);
    v58 = OUTLINED_FUNCTION_22_6();
    v57(v58);
  }

  else
  {
    sub_2706D993C(v25);
    if (qword_28081C748 != -1)
    {
      OUTLINED_FUNCTION_2_8(&qword_28081C748);
    }

    v47 = sub_2706E58DC();
    __swift_project_value_buffer(v47, qword_28081DC28);
    v28 = v101;

    v48 = sub_2706E58BC();
    v49 = sub_2706E5BEC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v94 = v13;
      v52 = v51;
      *&v104 = v51;
      *v50 = 136446210;
      v53 = sub_2706D62F0();
      v55 = v6;
      v56 = sub_2706C83E8(v53, v54, &v104);

      *(v50 + 4) = v56;
      v6 = v55;
      _os_log_impl(&dword_270680000, v48, v49, "%{public}s: creating unarchiver: output=callback", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      v13 = v94;
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }
  }

  v46 = v100;
LABEL_13:
  type metadata accessor for ArchiveReader();
  OUTLINED_FUNCTION_21_7();

  v59 = sub_2706D0750(2, sub_2706D9920, v28);

  if (v46)
  {
    return;
  }

  v60 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v61 = (v6 + 32);
  v100 = (v6 + 8);
  v62 = v99;
  while (1)
  {
    v63 = sub_2706D0F34();
    if (!v63)
    {
      break;
    }

    sub_2706D0260(v1);
    if (__swift_getEnumTagSinglePayload(v1, 1, v62) == 1)
    {

      sub_2706ADE58(v1);
    }

    else
    {
      v64 = (*v61)(v13, v1, v62);
      v65 = v62;
      v66 = v13;
      v67 = MEMORY[0x2743A6D20](v64);
      sub_2706D80E4(v101, v59, v66, v63, v60, &v104);
      objc_autoreleasePoolPop(v67);

      v68 = OUTLINED_FUNCTION_30_1();
      v69(v68);
      v13 = v66;
      v62 = v65;
    }
  }

  v70 = v98;
  sub_2706D98BC(v101 + v96, v98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v71 = v95;
    (*v61)(v95, v70, v62);
    v72 = v71;
    sub_2706E564C();
    sub_2706E5A0C();
    OUTLINED_FUNCTION_23_5();

    *&v104 = 0;
    v73 = [v60 attributesOfItemAtPath:v70 error:&v104];

    v74 = v104;
    if (v73)
    {
      type metadata accessor for FileAttributeKey(0);
      OUTLINED_FUNCTION_12_9();
      sub_2706DA580(v75, v76, &unk_2706E7E30);
      v101 = v60;
      v77 = sub_2706E599C();
      v78 = v74;

      v79 = *MEMORY[0x277CCA100];
      v80 = sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
      v81 = v79;
      v82 = sub_2706E5D0C();
      v105 = v80;
      *&v104 = v82;
      sub_270690AAC(&v104, v103);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v77;
      sub_270690038(v103, v81, isUniquelyReferenced_nonNull_native);

      v60 = v101;
      sub_2706E598C();
      OUTLINED_FUNCTION_23_5();

      sub_2706E564C();
      v84 = sub_2706E5A0C();

      *&v104 = 0;
      LODWORD(v77) = [v60 setAttributes:v81 ofItemAtPath:v84 error:&v104];

      if (v77)
      {
        v85 = *v100;
        v86 = v104;
        v85(v72, v62);

        return;
      }

      v88 = v104;
      OUTLINED_FUNCTION_23_5();
      sub_2706E558C();
    }

    else
    {
      v87 = v104;
      OUTLINED_FUNCTION_21_7();
      sub_2706E558C();
    }

    swift_willThrow();

    (*v100)(v72, v62);
  }

  else
  {

    sub_2706D993C(v70);
  }
}

uint64_t sub_2706D7EA4(uint64_t a1)
{

  sub_2706D1D04(&v16);

  v1 = v17;
  if ((~v17 & 0x3000000000000000) == 0)
  {
    return 0;
  }

  v2 = v16;
  if ((v17 & 0x2000000000000000) != 0 && v16)
  {
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v3 = sub_2706E58DC();
    __swift_project_value_buffer(v3, qword_28081DC28);

    sub_2706DA1D8(v2, v1);
    v4 = sub_2706E58BC();
    v5 = sub_2706E5BFC();

    sub_2706DA1B8(v2, v1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446466;
      v8 = sub_2706D62F0();
      v10 = sub_2706C83E8(v8, v9, &v15);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2082;
      sub_2706DA1AC(v2, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
      v11 = sub_2706E5A4C();
      v13 = sub_2706C83E8(v11, v12, &v15);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_270680000, v4, v5, "%{public}s: error during data read, error=%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v7, -1, -1);
      MEMORY[0x2743A75B0](v6, -1, -1);
    }

    swift_willThrow();
  }

  return v2;
}

void sub_2706D80E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v138 = a6;
  v133 = a5;
  v146 = *MEMORY[0x277D85DE8];
  v10 = sub_2706E565C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v131 = &v124[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v135 = &v124[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v136 = &v124[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v134 = &v124[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v140 = &v124[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v124[-v22];
  v24 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v124[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2706D98BC(a1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode, v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = a3;
    v32 = *v26;
    v33 = v141;
    v34 = sub_2706D1010();
    v141 = v33;
    if (!v33)
    {
      v76 = v34;
      v77 = v35;
      v32(v31, v34, v35);

      sub_270688E88(v76, v77);
      v141 = 0;
      return;
    }

    v36 = v138;
    goto LABEL_51;
  }

  v127 = a2;
  v139 = v11;
  (*(v11 + 4))(v23, v26, v10);
  v130 = a4;
  v137 = sub_2706D0038();
  v28 = sub_2706E55AC() == 46 && v27 == 0xE100000000000000;
  v132 = v23;
  if (v28)
  {
  }

  else
  {
    v29 = sub_2706E631C();

    if ((v29 & 1) == 0)
    {
      sub_2706E55AC();
      sub_2706E55EC();

      v30 = v10;
      goto LABEL_12;
    }
  }

  v30 = v10;
  (*(v139 + 2))(v140, v23, v10);
  v37 = *MEMORY[0x277CCA100];
  v38 = sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
  v39 = v37;
  v40 = sub_2706E5D0C();
  v145 = v38;
  *&v144 = v40;
  sub_270690AAC(&v144, v143);
  v41 = v137;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v142 = v41;
  sub_270690038(v143, v39, isUniquelyReferenced_nonNull_native);

  v137 = v142;
LABEL_12:
  v43 = a3;
  v44 = v134;
  if (qword_28081C748 != -1)
  {
    swift_once();
  }

  v45 = sub_2706E58DC();
  __swift_project_value_buffer(v45, qword_28081DC28);
  v46 = v139;
  v48 = v139 + 16;
  v47 = *(v139 + 2);
  v47(v44, v43, v30);
  v49 = v136;
  v129 = v48;
  v128 = v47;
  v47(v136, v140, v30);

  v50 = sub_2706E58BC();
  v51 = sub_2706E5BEC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *&v144 = v126;
    *v52 = 136446723;
    v125 = v51;
    v53 = sub_2706D62F0();
    v55 = sub_2706C83E8(v53, v54, &v144);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2081;
    v56 = sub_2706E55BC();
    v58 = v57;
    v59 = *(v46 + 1);
    (v59)(v44, v30);
    v60 = sub_2706C83E8(v56, v58, &v144);

    *(v52 + 14) = v60;
    *(v52 + 22) = 2081;
    v61 = v136;
    v62 = sub_2706E564C();
    v64 = v63;
    (v59)(v61, v30);
    v65 = v132;
    v66 = sub_2706C83E8(v62, v64, &v144);

    *(v52 + 24) = v66;
    _os_log_impl(&dword_270680000, v50, v125, "%{public}s: archive entry: src=%{private}s dest=%{private}s", v52, 0x20u);
    v67 = v126;
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v67, -1, -1);
    MEMORY[0x2743A75B0](v52, -1, -1);
  }

  else
  {
    v68 = v44;
    v65 = v132;

    v59 = *(v46 + 1);
    (v59)(v49, v30);
    (v59)(v68, v30);
  }

  v70 = sub_2706CFF10(v69);
  v36 = v138;
  v71 = v135;
  switch(v70)
  {
    case 6:

      sub_2706D0234();
      if (!v83)
      {
        (v59)(v140, v30);
        goto LABEL_44;
      }

      sub_2706E559C();
      sub_2706E564C();
      v84 = v30;
      (v59)(v71, v30);
      v85 = sub_2706E5A0C();

      v86 = sub_2706E5A0C();

      *&v144 = 0;
      v87 = [v133 createSymbolicLinkAtPath:v85 withDestinationPath:v86 error:&v144];

      if (v87)
      {
        v88 = v144;
        (v59)(v140, v84);
        v30 = v84;
        v89 = v132;
LABEL_45:
        (v59)(v89, v30);
        return;
      }

      v101 = v144;
      v102 = sub_2706E558C();

      v141 = v102;
      swift_willThrow();
      (v59)(v140, v84);
      (v59)(v132, v84);
      break;
    case 4:
      v78 = v140;
      sub_2706E559C();
      sub_2706E564C();
      (v59)(v71, v30);
      v79 = sub_2706E5A0C();

      [v133 createFileAtPath:v79 contents:0 attributes:0];

      sub_270690D44(0, &qword_28081D258, 0x277CCA9F8);
      v80 = v131;
      v128(v131, v78, v30);
      v81 = v141;
      v82 = sub_2706D5F9C(v80, &selRef_fileHandleForWritingToURL_error_);
      v141 = v81;
      if (v81)
      {
        (v59)(v140, v30);

        (v59)(v132, v30);
      }

      else
      {
        v95 = v82;
        v139 = v59;
        v96 = [v82 fileDescriptor];

        v98 = v96;
        v99 = v141;
        sub_2706D0908(v97, v97, v98);
        v141 = v99;
        if (v99)
        {

          v100 = v139;
          (v139)(v140, v30);

          v100(v132, v30);
        }

        else
        {
          *&v144 = 0;
          v110 = [v95 closeAndReturnError_];
          v111 = v144;
          if (v110)
          {
            type metadata accessor for FileAttributeKey(0);
            sub_2706DA580(&qword_28081C858, type metadata accessor for FileAttributeKey, &unk_2706E7E30);
            v112 = v30;
            v113 = v111;
            v114 = sub_2706E598C();

            sub_2706E559C();
            sub_2706E564C();
            v115 = v139;
            (v139)(v71, v30);
            v116 = sub_2706E5A0C();

            *&v144 = 0;
            v117 = [v133 setAttributes:v114 ofItemAtPath:v116 error:&v144];

            if (v117)
            {
              v118 = v144;

              v115(v140, v112);
              v115(v132, v112);
              return;
            }

            v122 = v144;
            v123 = sub_2706E558C();

            v141 = v123;
            swift_willThrow();

            v115(v140, v112);
            v115(v132, v112);
          }

          else
          {
            v119 = v144;

            v120 = sub_2706E558C();

            v141 = v120;
            swift_willThrow();

            v121 = v139;
            (v139)(v140, v30);
            v121(v132, v30);
          }
        }
      }

      break;
    case 2:
      if (sub_2706E55AC() == 46 && v72 == 0xE100000000000000)
      {

        v75 = v133;
      }

      else
      {
        v74 = sub_2706E631C();

        v75 = v133;
        if ((v74 & 1) == 0)
        {
LABEL_42:
          v105 = sub_2706E55DC();
          *&v144 = 0;
          v106 = sub_2706DA010(v105, 0, v137, &v144, v75);

          if (v106)
          {
            v107 = v144;
            (v59)(v140, v30);
            goto LABEL_44;
          }

          v108 = v144;
          v109 = sub_2706E558C();

          v141 = v109;
          swift_willThrow();
          (v59)(v140, v30);
          (v59)(v65, v30);
          break;
        }
      }

      sub_2706E564C();
      v90 = sub_2706E5A0C();

      v91 = [v75 fileExistsAtPath_];

      if (v91)
      {
        v92 = sub_2706E55DC();
        *&v144 = 0;
        v93 = [v75 removeItemAtURL:v92 error:&v144];

        if (v93)
        {
          v94 = v144;
        }

        else
        {
          v103 = v144;
          v104 = sub_2706E558C();

          swift_willThrow();
          v141 = 0;
        }
      }

      goto LABEL_42;
    default:
      (v59)(v140, v30);

LABEL_44:
      v89 = v65;
      goto LABEL_45;
  }

LABEL_51:
  *v36 = v141;
  v141 = 1;
}

uint64_t sub_2706D8E60()
{
  sub_2706D993C(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode);

  v1 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_id;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2706D8F10(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2706D8F94(uint64_t a1)
{
  result = type metadata accessor for ArchiveTransferDestination.Mode(319);
  if (v2 <= 0x3F)
  {
    result = sub_2706E576C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ArchiveTransferDestination.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706D9174);
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

uint64_t sub_2706D91B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 16))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
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

uint64_t sub_2706D9204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_2706D9284(uint64_t a1)
{
  result = sub_2706D92F8();
  if (v2 <= 0x3F)
  {
    result = sub_2706E565C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2706D92F8()
{
  result = qword_28081DD48[0];
  if (!qword_28081DD48[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_28081DD48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag21ArchiveTransferSourceC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2706D9358(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706D93AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_2706D9420(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2706D947C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2706D9604(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2706D9824);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

unint64_t sub_2706D9868()
{
  result = qword_28081DDD0;
  if (!qword_28081DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DDD0);
  }

  return result;
}

uint64_t sub_2706D98BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706D993C(uint64_t a1)
{
  v2 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2706D9998(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF70, &qword_2706E9180);
  v2 = sub_2706E5FCC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2706DA138(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_27068F7E8(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_270690AAC(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2706D9AD0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2706D9CE8(result, 1, sub_2706E2A8C);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8B0, &qword_2706EBB40);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2706C21FC(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2706D9BD0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2706D9CE8(result, 1, sub_2706E29D0);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DDF0, &unk_2706EE6F0);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2706BF75C((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2706D9CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_2706D9D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    archive_entry_set_pathname_utf8();
  }

  else
  {
    sub_2706E5E2C();
  }
}

uint64_t sub_2706D9E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = archive_write_data();
  if (v3 < 0)
  {
    v4 = archive_errno();
    if (archive_error_string())
    {
      v5 = sub_2706E5A9C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2706D9F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2706E552C();
  if (result)
  {
    result = sub_2706E554C();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_11;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  sub_2706E553C();
  v7 = archive_write_data();
  if (v7 < 0)
  {
    v8 = archive_errno();
    if (archive_error_string())
    {
      v9 = sub_2706E5A9C();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11;
    swift_willThrow();
  }

  return v7;
}

id sub_2706DA010(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for FileAttributeKey(0);
  sub_2706DA580(&qword_28081C858, type metadata accessor for FileAttributeKey, &unk_2706E7E30);
  v9 = sub_2706E598C();

  v10 = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 & 1 attributes:v9 error:a4];

  return v10;
}

unint64_t sub_2706DA0E4()
{
  result = qword_28081DDD8;
  if (!qword_28081DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DDD8);
  }

  return result;
}

uint64_t sub_2706DA138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DDE8, &unk_2706EDCA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2706DA1AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = a1;
  }

  else
  {
    sub_270692D3C(a1, a2);
  }
}

void sub_2706DA1B8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_2706DA1CC(a1, a2);
  }
}

void sub_2706DA1CC(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_270688E88(result, a2);
  }
}

void sub_2706DA1D8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_2706DA1AC(a1, a2);
  }
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2706DA264()
{

  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2706DA2FC()
{

  v1 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2706DA348@<X0>(_DWORD *a2@<X8>)
{
  result = archive_read_disk_open();
  *a2 = result;
  return result;
}

id sub_2706DA380(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_2706DA390(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t objectdestroy_101Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v3);
}

uint64_t sub_2706DA454()
{

  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706DA498()
{

  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706DA4FC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706DA580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2706DA5C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706DA61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_2706E594C();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;

  return swift_willThrow();
}

uint64_t sub_2706DA8BC(void *a1)
{
  type metadata accessor for PropertyListTypeEncoder();
  swift_initStackObject();
  v4 = sub_2706DAC7C(a1);
  if (!v1)
  {
    NSData = OPACKEncoderCreateNSData(v4);
    if (NSData)
    {
      v6 = NSData;
      v2 = sub_2706E56BC();
      v8 = v7;
    }

    else
    {
      v2 = 0;
      v8 = 0xF000000000000000;
    }

    if (sub_2706E590C())
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 60 == 15;
    }

    if (v9)
    {
      v10 = sub_2706E5A3C();
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      *(inited + 32) = sub_2706E5A3C();
      *(inited + 40) = v14;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0xD000000000000014;
      *(inited + 56) = 0x80000002706F1220;
      v15 = sub_2706E59AC();
      v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_2706C82B8(v10, v12, 0, v15);
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_2706A3BA4(v2, v8);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v2;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x2743A6CA0]();

  return v2;
}

void sub_2706DAAE8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    return;
  }

  v3 = sub_2706E5F9C();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A62C0](i, v2);
      }

      else
      {
      }

      sub_2706DD768();
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2706DABF8()
{
  if (*(v0 + 24))
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

uint64_t sub_2706DAC24()
{
  sub_2706DABF8();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2706DAC7C(void *a1)
{
  v3 = sub_2706E5EAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2706DBB8C(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DE30, &qword_2706EDEF0);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    return v20[6];
  }

  v19 = v4;
  v8 = type metadata accessor for PropertyListTypeEncoder.RootEncoder();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20[3] = v8;
  v20[4] = sub_2706DBB48(&qword_28081DE28, &unk_2706EDEA4);
  v20[0] = v9;

  v7 = v10;
  sub_2706E59BC();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v7 = *(v9 + 16);
    if (v7)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_2706E5E6C();
      v7 = sub_2706E5EBC();
      swift_allocError();
      v13 = v12;
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_28081DE38, &qword_2706EDEF8) + 48);
      v15 = a1[3];
      v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
      v13[3] = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
      (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
      v18 = v19;
      (*(v19 + 16))(v13 + v14, v6, v3);
      (*(*(v7 - 8) + 104))(v13, *MEMORY[0x277D841A8], v7);
      swift_willThrow();

      (*(v18 + 8))(v6, v3);
    }
  }

  return v7;
}

uint64_t sub_2706DAFC0()
{
  sub_2706E5F3C();

  return sub_2706E59AC();
}

uint64_t sub_2706DB00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  *(v3 + 16) = v6;
  v6;
  swift_unknownObjectRelease();
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder(0, a2, a3, v7);
  swift_getWitnessTable();
  return sub_2706E60EC();
}

unint64_t sub_2706DB0D0@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  *(v1 + 16) = v3;
  v4 = v3;
  swift_unknownObjectRelease();
  a1[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  result = sub_2706DBA98();
  a1[4] = result;
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v4;
  return result;
}

double sub_2706DB148@<D0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_2706DBB48(&qword_28081DE18, &unk_2706EDDEC);
  *a1 = v1;

  return result;
}

uint64_t sub_2706DB1CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

void sub_2706DB20C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2706DB1CC(v0);
}

void sub_2706DB254()
{
  v0 = sub_2706E5B5C();
  sub_2706DB1CC(v0);
}

void sub_2706DB288(uint64_t a1, uint64_t a2)
{
  v2 = sub_2706E5A0C();
  sub_2706DB1CC(v2);
}

void sub_2706DB2BC()
{
  v0 = sub_2706E5B6C();
  sub_2706DB1CC(v0);
}

void sub_2706DB2F0()
{
  v0 = sub_2706E5B8C();
  sub_2706DB1CC(v0);
}

void sub_2706DB324()
{
  v0 = sub_2706E5BAC();
  sub_2706DB1CC(v0);
}

void sub_2706DB358()
{
  v0 = sub_2706E650C();
  sub_2706DB1CC(v0);
}

void sub_2706DB38C()
{
  v0 = sub_2706E658C();
  sub_2706DB1CC(v0);
}

void sub_2706DB3C0()
{
  v0 = sub_2706E659C();
  sub_2706DB1CC(v0);
}

void sub_2706DB3F4()
{
  v0 = sub_2706E65AC();
  sub_2706DB1CC(v0);
}

void sub_2706DB428()
{
  v0 = sub_2706E5D4C();
  sub_2706DB1CC(v0);
}

void sub_2706DB45C()
{
  v0 = sub_2706E65BC();
  sub_2706DB1CC(v0);
}

void sub_2706DB490()
{
  v0 = sub_2706E664C();
  sub_2706DB1CC(v0);
}

void sub_2706DB4C4()
{
  v0 = sub_2706E665C();
  sub_2706DB1CC(v0);
}

void sub_2706DB4F8()
{
  v0 = sub_2706E666C();
  sub_2706DB1CC(v0);
}

void sub_2706DB52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v5;
  MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    v11 = v15[0];
    sub_2706DB1CC(v11);
  }

  else
  {
    v12 = swift_allocObject();
    v12[2] = 0;
    v15[3] = v8;
    v15[4] = sub_2706DBB48(&qword_28081DE28, &unk_2706EDEA4);
    v15[0] = v12;

    sub_2706E59BC();
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      v13 = v12[2];
      swift_unknownObjectRetain();

      *(v5 + 16) = v13;
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2706DB718()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2706DBA98()
{
  result = qword_28081DE20;
  if (!qword_28081DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DE20);
  }

  return result;
}

unint64_t sub_2706DBB04()
{
  result = qword_28081D4D8;
  if (!qword_28081D4D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28081D4D8);
  }

  return result;
}

uint64_t sub_2706DBB48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PropertyListTypeEncoder.RootEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2706DBB8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2706DBBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2706DBC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v8 = sub_2706E66CC();
  [v5 __swift_setObject_forKeyedSubscript_];
  return swift_unknownObjectRelease();
}

void sub_2706DBCC0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2706DBC44(v4, a1, a2);
}

void sub_2706DBD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E5B5C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2706E5A0C();
  sub_2706DBC44(v6, a3, a4);
}

void sub_2706DBDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E5B6C();
  sub_2706DBC44(v4, a1, a2);
}

void sub_2706DBE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E5B8C();
  sub_2706DBC44(v4, a1, a2);
}

void sub_2706DBE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E5BAC();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E650C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E658C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E659C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E65AC();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E5D4C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E65BC();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E664C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E665C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E666C();
  sub_2706DBC44(v5, a2, a3);
}

uint64_t sub_2706DC148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = *(v11 + 16);
  v13(&v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    v15 = v19[0];
  }

  else
  {
    type metadata accessor for PropertyListTypeEncoder();
    swift_initStackObject();
    v19[3] = a4;
    v19[4] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    v13(boxed_opaque_existential_1, a1, a4);
    v15 = sub_2706DAC7C(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    if (v5)
    {
      return result;
    }
  }

  sub_2706DBC44(v15, a2, a3);
  return swift_unknownObjectRelease();
}

void sub_2706DC2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  sub_2706DBC44(v9, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v11 = *(a3 + 16);
  *(inited + 56) = v11;
  *(inited + 64) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2, v11);
  v13 = v9;

  sub_2706DD674(inited);
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder(0, a4, a5, v14);

  v15 = v13;
  swift_getWitnessTable();
  sub_2706E60EC();
}

void sub_2706DC450(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  sub_2706DBC44(v7, a1, a2);
  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v10 = *(a2 + 16);
  *(inited + 56) = v10;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a1, v10);
  v12 = v7;

  sub_2706DD674(inited);
  a3[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a3[4] = sub_2706DBA98();

  *a3 = v8;
  a3[1] = v12;
}

void sub_2706DCB30()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  [*(v0 + 8) addObject_];
}

void sub_2706DCB88()
{
  v1 = sub_2706E5B5C();
  [*(v0 + 8) addObject_];
}

void sub_2706DCBCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2706E5A0C();
  [*(v2 + 8) addObject_];
}

void sub_2706DCC10()
{
  v1 = sub_2706E5B6C();
  [*(v0 + 8) addObject_];
}

void sub_2706DCC54()
{
  v1 = sub_2706E5B8C();
  [*(v0 + 8) addObject_];
}

void sub_2706DCC98(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  [OUTLINED_FUNCTION_0_10() addObject_];
}

void sub_2706DCCDC(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  [OUTLINED_FUNCTION_0_10() addObject_];
}

void sub_2706DCD20(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  [OUTLINED_FUNCTION_0_10() addObject_];
}

void sub_2706DCD64(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  [OUTLINED_FUNCTION_0_10() addObject_];
}

uint64_t sub_2706DCDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = *(v8 + 16);
  v10(&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    v11 = v15[0];
  }

  else
  {
    type metadata accessor for PropertyListTypeEncoder();
    swift_initStackObject();
    v15[3] = a2;
    v15[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    v10(boxed_opaque_existential_1, a1, a2);
    v11 = sub_2706DAC7C(v15);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    if (v4)
    {
      return result;
    }
  }

  [*(v3 + 8) addObject_];
  return swift_unknownObjectRelease();
}

uint64_t sub_2706DCF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(v3 + 8) addObject_];
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder(0, a2, a3, v6);

  swift_getWitnessTable();
  return sub_2706E60EC();
}

uint64_t sub_2706DCFDC@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  [v1[1] addObject_];
  v4 = *v1;
  a1[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a1[4] = sub_2706DBA98();
  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_2706DD674(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2706D9CD0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEC0, qword_2706EEF70);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2706DD768()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      sub_2706E5E3C();

      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_0_11("Fatal error", v4, v5, 0, 0xE000000000000000, "UniversalDrag/Completion.swift", v6, v7, 67, 0);
      __break(1u);
    }

    else
    {
      v3 = *(v0 + 24);
      *(v1 + 16) = xmmword_2706EE270;
      v2();

      sub_2706DDB64(v2, v3);
    }
  }

  else
  {
    *(v0 + 16) = xmmword_2706EE270;
  }
}

void *sub_2706DD84C()
{
  OUTLINED_FUNCTION_1_13();
  v1 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v1);

  v0[4] = v3;
  v0[5] = v4;
  v0[2] = 0;
  v0[3] = 0;
  return v0;
}

void *sub_2706DD8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_13();
  v8 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v8);

  v5[4] = v11;
  v5[5] = v12;
  if (a4)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0;
  }

  v5[2] = a4;
  v5[3] = v9;
  return v5;
}

void *sub_2706DD954()
{
  sub_2706DD980();
  sub_2706DDB64(*(v0 + 16), *(v0 + 24));

  return v0;
}

void sub_2706DD980()
{
  if (*(v0 + 16) != 1)
  {
    sub_2706E5E3C();

    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_11("Fatal error", v1, v2, 0, 0xE000000000000000, "UniversalDrag/Completion.swift", v3, v4, 52, 0);
    __break(1u);
  }
}

uint64_t sub_2706DDA14()
{
  sub_2706DD954();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag10CompletionC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2706DDA84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2706DDAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2706DDB34(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

double sub_2706DDB64(unint64_t a1, uint64_t a2)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_2706E5F8C();
}

void OUTLINED_FUNCTION_1_13()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_2_9()
{

  JUMPOUT(0x2743A5EF0);
}

double sub_2706DDBD8(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v3);
  sub_2706E2658(*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  return result;
}

double sub_2706DDC74(uint64_t a1)
{

  sub_2706DAAE8(a1);

  return result;
}

uint64_t sub_2706DDCBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000002706F1E90 == a2;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000002706F1EB0 == a2;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000002706F1ED0 == a2;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
          if (v9 || (sub_2706E631C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
            if (v10 || (sub_2706E631C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
              if (v11 || (sub_2706E631C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x616F626574736170 && a2 == 0xEA00000000006472)
              {

                return 7;
              }

              else
              {
                v13 = sub_2706E631C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2706DDF44(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0x6C65636E6163;
      break;
    case 6:
      result = 0x7465736572;
      break;
    case 7:
      result = 0x616F626574736170;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2706DE054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2706E631C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2706DE170(char a1)
{
  if (!a1)
  {
    return 0x61746E6573657270;
  }

  if (a1 == 1)
  {
    return 0x73746E65746E6F63;
  }

  return 0x6E6F697461636F6CLL;
}

uint64_t sub_2706DE1D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF90, &qword_2706EE680);
  OUTLINED_FUNCTION_4();
  v86 = v4;
  v87 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  v85 = v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF98, &qword_2706EE688);
  OUTLINED_FUNCTION_4();
  v70 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v69 = v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFA0, &qword_2706EE690);
  OUTLINED_FUNCTION_4();
  v67 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  v66 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFA8, &qword_2706EE698);
  OUTLINED_FUNCTION_4();
  v73 = v14;
  v74 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v72 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFB0, &qword_2706EE6A0);
  OUTLINED_FUNCTION_4();
  v76 = v18;
  v77 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13();
  v75 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFB8, &qword_2706EE6A8);
  OUTLINED_FUNCTION_4();
  v79 = v22;
  v80 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13();
  v78 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFC0, &qword_2706EE6B0);
  OUTLINED_FUNCTION_4();
  v81 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFC8, &qword_2706EE6B8);
  OUTLINED_FUNCTION_4();
  v83 = v31;
  v84 = v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  v82 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFD0, &qword_2706EE6C0);
  OUTLINED_FUNCTION_4();
  v89 = v34;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_13();
  v36 = *v1;
  v37 = v1[1];
  v38 = v1[2];
  *&v88 = v1[3];
  *(&v88 + 1) = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E24EC();
  sub_2706E66AC();
  switch((v37 >> 60) & 3)
  {
    case 1uLL:
      LOBYTE(v91) = 1;
      sub_2706E2F30();
      OUTLINED_FUNCTION_17_7(&type metadata for PeerDeviceEvent.UpdatePresentationCodingKeys);
      v91 = v36;
      LOBYTE(v92) = v37;
      sub_2706E302C();
      sub_2706E60DC();
      v48 = v81;
      goto LABEL_11;
    case 2uLL:
      LOBYTE(v91) = 7;
      sub_2706E2D38();
      v29 = v85;
      OUTLINED_FUNCTION_17_7(&type metadata for PeerDeviceEvent.PasteboardCodingKeys);
      v91 = v36;
      v92 = v37 & 0xCFFFFFFFFFFFFFFFLL;
      sub_270688EE0();
      v25 = v87;
      sub_2706E60DC();
      v48 = v86;
LABEL_11:
      (*(v48 + 8))(v29, v25);
      goto LABEL_12;
    case 3uLL:
      if (v37 == 0x3000000000000000 && !(v88 | *(&v88 + 1) | v36))
      {
        LOBYTE(v91) = 2;
        sub_2706E2EDC();
        v49 = v78;
        OUTLINED_FUNCTION_12_10(&type metadata for PeerDeviceEvent.SurrogateBeganTrackingCodingKeys);
        v51 = v79;
        v50 = v80;
LABEL_27:
        v57 = *(v51 + 8);
        v58 = v49;
        goto LABEL_28;
      }

      v55 = v37 == 0x3000000000000000 && v36 == 1;
      if (v55 && v88 == 0)
      {
        LOBYTE(v91) = 3;
        sub_2706E2E88();
        v49 = v75;
        OUTLINED_FUNCTION_12_10(&type metadata for PeerDeviceEvent.SuccessCodingKeys);
        v51 = v76;
        v50 = v77;
        goto LABEL_27;
      }

      v56 = v37 == 0x3000000000000000 && v36 == 2;
      if (v56 && v88 == 0)
      {
        LOBYTE(v91) = 4;
        sub_2706E2E34();
        v49 = v72;
        OUTLINED_FUNCTION_12_10(&type metadata for PeerDeviceEvent.FailureCodingKeys);
        v51 = v73;
        v50 = v74;
        goto LABEL_27;
      }

      v61 = v37 == 0x3000000000000000 && v36 == 3;
      if (v61 && v88 == 0)
      {
        LOBYTE(v91) = 5;
        sub_2706E2DE0();
        v62 = v66;
        OUTLINED_FUNCTION_12_10(&type metadata for PeerDeviceEvent.CancelCodingKeys);
        OUTLINED_FUNCTION_11();
        v58 = v62;
        v63 = &v94;
      }

      else
      {
        LOBYTE(v91) = 6;
        sub_2706E2D8C();
        v64 = v69;
        OUTLINED_FUNCTION_12_10(&type metadata for PeerDeviceEvent.ResetCodingKeys);
        OUTLINED_FUNCTION_11();
        v58 = v64;
        v63 = &v95;
      }

      v50 = *(v63 - 32);
LABEL_28:
      v57(v58, v50);
      v59 = OUTLINED_FUNCTION_44_2();
      return v60(v59);
    default:
      LOBYTE(v91) = 0;
      sub_2706E2FD8();
      v39 = v82;
      OUTLINED_FUNCTION_17_7(&type metadata for PeerDeviceEvent.PrepareSurrogateCodingKeys);
      v91 = v36;
      v93 = 0;
      type metadata accessor for DragPresentation(0);
      OUTLINED_FUNCTION_20_7();
      sub_2706E3080(v40, v41, &unk_2706E97F4);
      v42 = v84;
      v43 = v90;
      sub_2706E60DC();
      if (!v43)
      {
        v91 = v37;
        v93 = 1;
        type metadata accessor for PasteboardContents(0);
        OUTLINED_FUNCTION_19_11();
        sub_2706E3080(v44, v45, &unk_2706EB924);
        OUTLINED_FUNCTION_33_5();
        v91 = *(&v88 + 1);
        v92 = v88;
        v93 = 2;
        type metadata accessor for CGPoint(0);
        OUTLINED_FUNCTION_18_8();
        sub_2706E3080(v46, v47, MEMORY[0x277CBF2A8]);
        OUTLINED_FUNCTION_33_5();
      }

      (*(v83 + 8))(v39, v42);
LABEL_12:
      v52 = OUTLINED_FUNCTION_44_2();
      return v53(v52);
  }
}

uint64_t sub_2706DEA18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEE8, &qword_2706EE630);
  OUTLINED_FUNCTION_4();
  v107 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13();
  v125 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEF0, &qword_2706EE638);
  OUTLINED_FUNCTION_4();
  v117 = v7;
  v118 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v123 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEF8, &qword_2706EE640);
  OUTLINED_FUNCTION_4();
  v115 = v11;
  v116 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13();
  v122 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF00, &qword_2706EE648);
  OUTLINED_FUNCTION_4();
  v113 = v15;
  v114 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13();
  v121 = v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF08, &qword_2706EE650);
  OUTLINED_FUNCTION_4();
  v111 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13();
  v120 = v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF10, &qword_2706EE658);
  OUTLINED_FUNCTION_4();
  v108 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13();
  v119 = v23;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF18, &qword_2706EE660);
  OUTLINED_FUNCTION_4();
  v105 = v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  v27 = &v101 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF20, &qword_2706EE668);
  OUTLINED_FUNCTION_4();
  v106 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  v32 = &v101 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF28, &unk_2706EE670);
  OUTLINED_FUNCTION_4();
  v35 = v34;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  v37 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_2706E24EC();
  v38 = v128;
  sub_2706E668C();
  if (v38)
  {
    goto LABEL_9;
  }

  v102 = v27;
  v103 = v32;
  v40 = v125;
  v39 = v126;
  v128 = v35;
  v41 = sub_2706E606C();
  sub_270698614(v41, 0);
  if (v43 == v44 >> 1)
  {
LABEL_8:
    v57 = sub_2706E5E8C();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v59 = &type metadata for PeerDeviceEvent;
    sub_2706E600C();
    sub_2706E5E6C();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_4_11();
    v61(v60, v33);
LABEL_9:
    v62 = v127;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v104 = v33;
  v101 = 0;
  if (v43 >= (v44 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2706DF72CLL);
  }

  v45 = *(v42 + v43);
  v46 = sub_270698610(v43 + 1);
  v48 = v47;
  v50 = v49;
  swift_unknownObjectRelease();
  v51 = v46;
  if (v48 != v50 >> 1)
  {
    v33 = v104;
    goto LABEL_8;
  }

  v52 = v101;
  v53 = v124;
  switch(v45)
  {
    case 1:
      LOBYTE(v131) = 1;
      sub_2706E2F30();
      v71 = v102;
      v72 = v104;
      sub_2706E5FFC();
      if (v52)
      {
        v73 = OUTLINED_FUNCTION_4_11();
        v74(v73, v72);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      sub_2706E2F84();
      v82 = v110;
      sub_2706E605C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11();
      v92(v71, v82);
      v93 = OUTLINED_FUNCTION_4_11();
      v94(v93, v104);
      v88 = v131;
      v95 = BYTE8(v131) | 0x1000000000000000;
      goto LABEL_20;
    case 2:
      LOBYTE(v131) = 2;
      sub_2706E2EDC();
      v95 = v119;
      OUTLINED_FUNCTION_3_10(&type metadata for PeerDeviceEvent.SurrogateBeganTrackingCodingKeys, &v131);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11();
      v79(v95, v109);
      v80 = OUTLINED_FUNCTION_2_10();
      v81(v80);
      v88 = 0;
      *&v100 = OUTLINED_FUNCTION_41_2();
      break;
    case 3:
      v95 = v51;
      LOBYTE(v131) = 3;
      sub_2706E2E88();
      v67 = v120;
      OUTLINED_FUNCTION_3_10(&type metadata for PeerDeviceEvent.SuccessCodingKeys, &v131);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11();
      v68(v67, v112);
      v69 = OUTLINED_FUNCTION_2_10();
      v70(v69);
      *&v100 = OUTLINED_FUNCTION_41_2();
      v88 = 1;
      break;
    case 4:
      v95 = v51;
      LOBYTE(v131) = 4;
      sub_2706E2E34();
      v64 = v121;
      OUTLINED_FUNCTION_3_10(&type metadata for PeerDeviceEvent.FailureCodingKeys, &v131);
      swift_unknownObjectRelease();
      (*(v113 + 8))(v64, v114);
      v65 = OUTLINED_FUNCTION_2_10();
      v66(v65);
      *&v100 = OUTLINED_FUNCTION_41_2();
      v88 = 2;
      break;
    case 5:
      v95 = v51;
      LOBYTE(v131) = 5;
      sub_2706E2DE0();
      v75 = v122;
      OUTLINED_FUNCTION_3_10(&type metadata for PeerDeviceEvent.CancelCodingKeys, &v131);
      swift_unknownObjectRelease();
      (*(v115 + 8))(v75, v116);
      v76 = OUTLINED_FUNCTION_2_10();
      v77(v76);
      *&v100 = OUTLINED_FUNCTION_41_2();
      v88 = 3;
      break;
    case 6:
      v95 = v51;
      LOBYTE(v131) = 6;
      sub_2706E2D8C();
      v78 = v123;
      OUTLINED_FUNCTION_3_10(&type metadata for PeerDeviceEvent.ResetCodingKeys, &v131);
      swift_unknownObjectRelease();
      (*(v117 + 8))(v78, v118);
      v83 = OUTLINED_FUNCTION_2_10();
      v84(v83);
      *&v100 = OUTLINED_FUNCTION_41_2();
      v88 = 4;
      break;
    case 7:
      LOBYTE(v131) = 7;
      sub_2706E2D38();
      OUTLINED_FUNCTION_3_10(&type metadata for PeerDeviceEvent.PasteboardCodingKeys, &v131);
      sub_2706874EC();
      sub_2706E605C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11();
      v85(v40, v39);
      v86 = OUTLINED_FUNCTION_47_3();
      v87(v86);
      v88 = v131;
      v95 = *(&v131 + 1) | 0x2000000000000000;
LABEL_20:
      v100 = 0uLL;
      break;
    default:
      LOBYTE(v131) = 0;
      sub_2706E2FD8();
      OUTLINED_FUNCTION_3_10(&type metadata for PeerDeviceEvent.PrepareSurrogateCodingKeys, &v131);
      type metadata accessor for DragPresentation(0);
      LOBYTE(v131) = 0;
      OUTLINED_FUNCTION_20_7();
      sub_2706E3080(v54, v55, &unk_2706E981C);
      v56 = v28;
      sub_2706E605C();
      v88 = v132;
      type metadata accessor for PasteboardContents(0);
      LOBYTE(v131) = 1;
      OUTLINED_FUNCTION_19_11();
      sub_2706E3080(v89, v90, &unk_2706EB94C);
      sub_2706E605C();
      v91 = v106;
      v95 = v130;
      type metadata accessor for CGPoint(0);
      v129 = 2;
      OUTLINED_FUNCTION_18_8();
      sub_2706E3080(v96, v97, MEMORY[0x277CBF2B8]);
      sub_2706E605C();
      swift_unknownObjectRelease();
      (*(v91 + 8))(v103, v56);
      v98 = OUTLINED_FUNCTION_4_11();
      v99(v98, v104);
      v100 = v131;
      break;
  }

  v62 = v127;
  *v53 = v88;
  *(v53 + 8) = v95;
  *(v53 + 16) = v100;
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_2706DF74C(uint64_t a1)
{
  v2 = sub_2706E2DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF788(uint64_t a1)
{
  v2 = sub_2706E2DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706DDCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706DF7F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706DDF3C();
  *a1 = result;
  return result;
}

uint64_t sub_2706DF81C(uint64_t a1)
{
  v2 = sub_2706E24EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF858(uint64_t a1)
{
  v2 = sub_2706E24EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF894(uint64_t a1)
{
  v2 = sub_2706E2E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF8D0(uint64_t a1)
{
  v2 = sub_2706E2E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF90C(uint64_t a1)
{
  v2 = sub_2706E2D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF948(uint64_t a1)
{
  v2 = sub_2706E2D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706DE054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706DF9B4(uint64_t a1)
{
  v2 = sub_2706E2FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF9F0(uint64_t a1)
{
  v2 = sub_2706E2FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFA2C(uint64_t a1)
{
  v2 = sub_2706E2D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFA68(uint64_t a1)
{
  v2 = sub_2706E2D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFAA4(uint64_t a1)
{
  v2 = sub_2706E2E88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFAE0(uint64_t a1)
{
  v2 = sub_2706E2E88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFB1C(uint64_t a1)
{
  v2 = sub_2706E2EDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFB58(uint64_t a1)
{
  v2 = sub_2706E2EDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFB94(uint64_t a1)
{
  v2 = sub_2706E2F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFBD0(uint64_t a1)
{
  v2 = sub_2706E2F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFC3C()
{
  v0 = sub_2706E58DC();
  __swift_allocate_value_buffer(v0, qword_2808293C8);
  v1 = __swift_project_value_buffer(v0, qword_2808293C8);
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2808292D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_2706DFD04()
{
  v1 = sub_2706E576C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_2706E5E3C();

  v7 = 0xD000000000000029;
  v8 = 0x80000002706F1BE0;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_target, v1);
  sub_2706E3080(&qword_28081D200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v5 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v5);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x2743A5EF0](8233, 0xE200000000000000);
  return v7;
}

uint64_t sub_2706DFE94(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_queuedPresentationUpdates;
  swift_beginAccess();

  sub_2706E25FC(sub_2706E2714);
  v5 = *(*(v1 + v4) + 16);
  sub_2706E26CC(v5, sub_2706E2714);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v1 + v4) = v6;
  return swift_endAccess();
}

uint64_t sub_2706DFF5C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_target;
  v2 = sub_2706E576C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2706DFFDC()
{
  v0 = sub_2706DFF5C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2706E0054(unint64_t a1)
{
  v2 = v1;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292D8);
  sub_2706E31A8(a1);

  v5 = sub_2706E58BC();
  v6 = sub_2706E5BEC();
  sub_2706E3200(a1);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v19 = &type metadata for DragForwardingCoordinator.State;
    v20 = v8;
    v18[0] = a1;
    sub_2706E31A8(a1);
    v9 = sub_2706CB238(v18);
    v11 = sub_2706C83E8(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = *(v2 + 40);
    v19 = &type metadata for DragForwardingCoordinator.State;
    v18[0] = v12;
    sub_2706E31A8(v12);
    v13 = sub_2706CB238(v18);
    v15 = sub_2706C83E8(v13, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_270680000, v5, v6, "DragForwardingCoordinator: %{public}s → %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v8, -1, -1);
    MEMORY[0x2743A75B0](v7, -1, -1);
  }

  if (*(v2 + 40) == 0xA000000000000008)
  {
    v16 = *(v2 + 48) + 1;
    do
    {
      v17 = v16;
      v16 = 1;
    }

    while (!v17);
    *(v2 + 48) = v17;
  }
}

void sub_2706E0250(unint64_t a1)
{
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  sub_2706E31A8(a1);
  sub_2706E0054(v3);
  sub_2706E3200(v3);

  sub_2706E3200(a1);
}

uint64_t sub_2706E02A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  type metadata accessor for DragForwardingCoordinator.Event(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFF8, &unk_2706EE6D0);
  v17 = *(v16 + 80);
  v18 = *(v16 + 96);
  *v15 = a1;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v19 + 16))(v15 + v17, a2);
  *(v15 + v18) = a3;
  swift_storeEnumTagMultiPayload();

  sub_2706E05C8(v15);
  return sub_2706E314C(v15);
}

uint64_t sub_2706E03D4(uint64_t *a1)
{
  type metadata accessor for DragForwardingCoordinator.Event(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  LOBYTE(v3) = *(a1 + 8);
  *v5 = *a1;
  *(v5 + 8) = v3;
  swift_storeEnumTagMultiPayload();

  sub_2706E05C8(v5);
  return sub_2706E314C(v5);
}

uint64_t sub_2706E0470(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = v4 | 0x1000000000000000;
    v6 = type metadata accessor for Completion();
    v15 = 0;
    v16 = 0;
    OUTLINED_FUNCTION_39_2(v6);

    OUTLINED_FUNCTION_24_5();
    v7 = sub_2706DD84C();
    sub_2706C77D8(v2, &v13, v7, v8, v9, v10, v11, v12, v3);

    swift_unknownObjectRelease();
    return sub_2706B2C20(v13, v14);
  }

  return result;
}

uint64_t sub_2706E0538(void *a1)
{
  type metadata accessor for DragForwardingCoordinator.Event(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = (v4 - v3);
  *(v4 - v3) = a1;
  swift_storeEnumTagMultiPayload();
  v6 = a1;
  sub_2706E05C8(v5);
  return sub_2706E314C(v5);
}

void sub_2706E05C8(void *Description)
{
  v2 = v1;
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v292 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v289 = v287 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v291 = v287 - v9;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFF0, &qword_2706EE6C8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = v287 - v11;
  v13 = type metadata accessor for DragForwardingCoordinator.Event(0);
  OUTLINED_FUNCTION_6_0();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v287 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v288 = (v287 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = v287 - v20;
  if (qword_28081C730 != -1)
  {
    goto LABEL_141;
  }

LABEL_2:
  v295 = sub_2706E58DC();
  __swift_project_value_buffer(v295, qword_2808292D8);
  v297 = Description;
  sub_2706E30E8(Description, v21);

  v22 = sub_2706E58BC();
  Description = sub_2706E5BEC();

  v23 = os_log_type_enabled(v22, Description);
  v290 = v4;
  v293 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v294 = v13;
    v25 = v24;
    v299[0] = swift_slowAlloc();
    *v25 = 136315394;
    v26 = *(v2 + 40);
    v302 = &type metadata for DragForwardingCoordinator.State;
    *&v300 = v26;
    sub_2706E31A8(v26);
    v27 = sub_2706CB238(&v300);
    v29 = v2;
    v30 = sub_2706C83E8(v27, v28, v299);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v302 = v294;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v300);
    sub_2706E30E8(v21, boxed_opaque_existential_1);
    v32 = sub_2706CB238(&v300);
    v34 = v33;
    sub_2706E314C(v21);
    v35 = sub_2706C83E8(v32, v34, v299);
    v2 = v29;

    *(v25 + 14) = v35;
    OUTLINED_FUNCTION_40_2();
    _os_log_impl(v36, v37, v38, v39, v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    v13 = v294;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    sub_2706E314C(v21);
  }

  v17 = *(v2 + 40);
  v40 = &v12[*(v296 + 48)];
  sub_2706E30E8(v297, v40);
  switch(v17 >> 61)
  {
    case 0uLL:
      OUTLINED_FUNCTION_35_4();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v41 = *v40;
          v42 = *(v40 + 8);
          OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v43 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v43, qword_2808293C8);

          v44 = sub_2706E58BC();
          v45 = sub_2706E5C1C();
          sub_2706E3200(v17);
          if (os_log_type_enabled(v44, v45))
          {
            OUTLINED_FUNCTION_29_1();
            v46 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v46);
            *v12 = 136446210;
            *(v12 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_40_2();
            OUTLINED_FUNCTION_52_2(v47, v48, v49, v50);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          *&v300 = v41;
          BYTE8(v300) = v42;
          sub_2706DFE94(&v300);
          goto LABEL_83;
        case 3u:
          v107 = *v40;
          OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v108 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v108, qword_2808293C8);
          sub_2706E31A8(v17);
          v109 = v107;
          v110 = sub_2706E58BC();
          v111 = sub_2706E5C1C();
          sub_2706E3200(v17);

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            OUTLINED_FUNCTION_30_2(v113);
            *v112 = 136446466;
            *(v112 + 4) = OUTLINED_FUNCTION_14_10();
            *(v112 + 12) = 2082;
            v299[0] = v107;
            v114 = v107;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
            v115 = sub_2706E5A4C();
            v117 = sub_2706C83E8(v115, v116, &v300);

            *(v112 + 14) = v117;
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v118, v119, v120, v121, v112, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_12_0();
            OUTLINED_FUNCTION_8_0();
          }

          OUTLINED_FUNCTION_21_8();
          v122 = v107;
          sub_2706DDC74(v107);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v300 = xmmword_2706EAA60;
            v123 = type metadata accessor for Completion();
            v301 = 0;
            v302 = 0;
            OUTLINED_FUNCTION_39_2(v123);
            OUTLINED_FUNCTION_24_5();
            sub_2706DD84C();
            v124 = OUTLINED_FUNCTION_9_9();
            sub_2706C77D8(v124, v125, v126, v127, v128, v129, v130, v131, v287[0]);

            swift_unknownObjectRelease();
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v132 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v132, v133, v107);

            swift_unknownObjectRelease();
            sub_2706E3200(v17);
            v134 = v107;
            goto LABEL_90;
          }

          v209 = v107;
          goto LABEL_107;
        case 5u:
          sub_2706E31A8(v17);
          OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v97 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v97, qword_2808293C8);

          v98 = sub_2706E58BC();
          v99 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v99))
          {
            OUTLINED_FUNCTION_29_1();
            v100 = OUTLINED_FUNCTION_34_5();
            *&v300 = v100;
            *Description = 136446210;
            *(Description + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v101, v102, v103, v104, Description, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v100);
            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_12_0();
          }

          sub_2706E0250(v17 | 0x2000000000000000);
          sub_2706DDC74(0);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_2706C77F8();
            swift_unknownObjectRelease();
          }

          v12 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_queuedPresentationUpdates;
          swift_beginAccess();
          v21 = *&v12[v17];
          v4 = *(v21 + 2);

          v105 = 0;
          v13 = (v21 + 40);
          while (2)
          {
            if (v4 != v105)
            {
              if (v105 < *(v21 + 2))
              {
                ++v105;
                Kind = v13->Kind;
                Description = v13[-1].Description;
                v299[0] = Description;
                LOBYTE(v299[1]) = Kind;

                sub_2706E0470(v299);

                ++v13;
                continue;
              }

              __break(1u);
LABEL_141:
              swift_once();
              goto LABEL_2;
            }

            break;
          }

          sub_2706E3200(v17);
          *&v12[v17] = MEMORY[0x277D84F90];

LABEL_109:
          sub_2706E3200(v17);
          return;
        case 6u:
          OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v135 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v135, qword_2808293C8);

          v136 = sub_2706E58BC();
          v137 = sub_2706E5C1C();
          sub_2706E3200(v17);
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            *&v300 = swift_slowAlloc();
            *v138 = 136446466;
            *(v138 + 4) = OUTLINED_FUNCTION_14_10();
            *(v138 + 12) = 2082;
            *(v138 + 14) = sub_2706C83E8(7104878, 0xE300000000000000, &v300);
            OUTLINED_FUNCTION_40_2();
            _os_log_impl(v139, v140, v141, v142, v138, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_12_0();
          }

          OUTLINED_FUNCTION_21_8();
          sub_2706DDC74(0);
          v143 = sub_2706E5A3C();
          v145 = v144;
          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
          v147 = OUTLINED_FUNCTION_51_3(v146);
          *(v147 + 16) = xmmword_2706E8FC0;
          *(v147 + 32) = sub_2706E5A3C();
          *(v147 + 40) = v148;
          OUTLINED_FUNCTION_46_3();
          *(v147 + 72) = MEMORY[0x277D837D0];
          *(v147 + 48) = 0xD000000000000044;
          *(v147 + 56) = v149;
          v150 = sub_2706E59AC();
          v151 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v152 = sub_2706C82B8(v143, v145, -6723, v150);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v300 = xmmword_2706EAA40;
            v153 = type metadata accessor for Completion();
            v301 = 0;
            v302 = 0;
            OUTLINED_FUNCTION_39_2(v153);
            OUTLINED_FUNCTION_24_5();
            sub_2706DD84C();
            v154 = OUTLINED_FUNCTION_9_9();
            sub_2706C77D8(v154, v155, v156, v157, v158, v159, v160, v161, v287[0]);

            swift_unknownObjectRelease();
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v162 = v152;
            v163 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v163, v164, v152);
            swift_unknownObjectRelease();

            sub_2706E3200(v17);
            return;
          }

          goto LABEL_109;
        default:
          goto LABEL_28;
      }

    case 1uLL:
      v51 = v17 & 0x1FFFFFFFFFFFFFFFLL;
      OUTLINED_FUNCTION_35_4();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v68 = *(v40 + 8);

          if (v68 == 5 || !swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_109;
          }

          LOBYTE(v300) = v68;
          sub_2706C997C(v2);
          goto LABEL_81;
        case 2u:
          v198 = *(v40 + 8);
          *&v300 = *v40;
          BYTE8(v300) = v198;

          sub_2706E0470(&v300);
LABEL_83:
          sub_2706E3200(v17);

          return;
        case 3u:
          v93 = *v40;
          OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v199 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v199, qword_2808293C8);

          v95 = sub_2706E58BC();
          v200 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v200))
          {
            goto LABEL_87;
          }

          goto LABEL_88;
        case 4u:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_2706C7804();
          break;
        case 5u:
          sub_2706E31A8(v17);
          OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v210 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v210, qword_2808293C8);

          v211 = sub_2706E58BC();
          v212 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v212))
          {
            OUTLINED_FUNCTION_29_1();
            v213 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v213);
            *v12 = 136446210;
            *(v12 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            OUTLINED_FUNCTION_52_2(v214, v215, v216, v217);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          sub_2706E0250(v51 | 0x4000000000000000);
          sub_2706E3200(v17);
          goto LABEL_109;
        case 6u:
          OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v218 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v218, qword_2808293C8);

          v219 = sub_2706E58BC();
          v220 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v220))
          {
            OUTLINED_FUNCTION_29_1();
            v221 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v221);
            *v12 = 136446210;
            *(v12 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            OUTLINED_FUNCTION_52_2(v222, v223, v224, v225);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          OUTLINED_FUNCTION_21_8();
          sub_2706DBB8C(v51 + 24, &v300);
          __swift_project_boxed_opaque_existential_1(&v300, v302);
          v61 = type metadata accessor for Completion();
          OUTLINED_FUNCTION_39_2(v61);
          OUTLINED_FUNCTION_10_9();
          sub_2706DD84C();
          sub_27068A0A4();

          __swift_destroy_boxed_opaque_existential_1(&v300);
          sub_2706E5A3C();
          v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
          v227 = OUTLINED_FUNCTION_51_3(v226);
          *(v227 + 16) = xmmword_2706E8FC0;
          *(v227 + 32) = sub_2706E5A3C();
          *(v227 + 40) = v228;
          OUTLINED_FUNCTION_46_3();
          *(v227 + 72) = MEMORY[0x277D837D0];
          *(v227 + 48) = 0xD000000000000040;
          *(v227 + 56) = v229;
          sub_2706E59AC();
          v230 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v67 = OUTLINED_FUNCTION_38_4();
          if (swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_102;
          }

          goto LABEL_103;
        default:
          goto LABEL_28;
      }

      goto LABEL_81;
    case 2uLL:
      v51 = v17 & 0x1FFFFFFFFFFFFFFFLL;
      OUTLINED_FUNCTION_35_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v93 = *v40;
          OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v94 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v94, qword_2808293C8);

          v95 = sub_2706E58BC();
          v96 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v96))
          {
LABEL_87:
            OUTLINED_FUNCTION_29_1();
            v201 = OUTLINED_FUNCTION_34_5();
            OUTLINED_FUNCTION_30_2(v201);
            *v51 = 136446210;
            *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v202, v203, v204, v205, v51, 0xCu);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_12_0();
          }

LABEL_88:

          OUTLINED_FUNCTION_21_8();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v206 = v93;
            v207 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v207, v208, v93);

            swift_unknownObjectRelease();
            sub_2706E3200(v17);
            v134 = v93;
LABEL_90:

            return;
          }

          v209 = v93;
LABEL_107:

          goto LABEL_109;
        case 5:
          OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v85 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v85, qword_2808293C8);

          v86 = sub_2706E58BC();
          v87 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v87))
          {
            OUTLINED_FUNCTION_29_1();
            v88 = OUTLINED_FUNCTION_34_5();
            *&v300 = v88;
            *v51 = 136446210;
            *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v89, v90, v91, v92, (v17 & 0x1FFFFFFFFFFFFFFFLL), 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v88);
            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_12_0();
          }

          OUTLINED_FUNCTION_21_8();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_2706C786C(v2, 1, 0);
LABEL_81:
            swift_unknownObjectRelease();
          }

          goto LABEL_109;
        case 6:
          OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v53 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
          }

          OUTLINED_FUNCTION_6_12(v53, qword_2808293C8);

          v54 = sub_2706E58BC();
          v55 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v55))
          {
            OUTLINED_FUNCTION_29_1();
            v56 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v56);
            *v12 = 136446210;
            *(v12 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            OUTLINED_FUNCTION_52_2(v57, v58, v59, v60);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          OUTLINED_FUNCTION_21_8();
          sub_2706DBB8C(v51 + 24, &v300);
          __swift_project_boxed_opaque_existential_1(&v300, v302);
          v61 = type metadata accessor for Completion();
          swift_initStackObject();
          OUTLINED_FUNCTION_10_9();
          sub_2706DD84C();
          sub_27068A0A4();

          __swift_destroy_boxed_opaque_existential_1(&v300);
          sub_2706E5A3C();
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
          v63 = OUTLINED_FUNCTION_51_3(v62);
          *(v63 + 16) = xmmword_2706E8FC0;
          *(v63 + 32) = sub_2706E5A3C();
          *(v63 + 40) = v64;
          OUTLINED_FUNCTION_46_3();
          *(v63 + 72) = MEMORY[0x277D837D0];
          *(v63 + 48) = 0xD000000000000043;
          *(v63 + 56) = v65;
          sub_2706E59AC();
          v66 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v67 = OUTLINED_FUNCTION_38_4();
          if (swift_unknownObjectWeakLoadStrong())
          {
LABEL_102:
            v300 = xmmword_2706EAA40;
            v301 = 0;
            v302 = 0;
            OUTLINED_FUNCTION_39_2(v61);
            OUTLINED_FUNCTION_10_9();
            v231 = sub_2706DD84C();
            sub_2706C77D8(v2, &v300, v231, v232, v233, v234, v235, v236, v287[0]);

            swift_unknownObjectRelease();
          }

LABEL_103:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v237 = v67;
            v238 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v238, v239, v67);
            swift_unknownObjectRelease();

            sub_2706E3200(v17);
            return;
          }

          goto LABEL_109;
      }

LABEL_28:
      OUTLINED_FUNCTION_35_4();
      if (swift_getEnumCaseMultiPayload() - 1 > 1)
      {
        *&v300 = 0;
        *(&v300 + 1) = 0xE000000000000000;
        sub_2706E31A8(v17);
        sub_2706E5E3C();
        MEMORY[0x2743A5EF0](0xD00000000000001DLL, 0x80000002706F1C40);
        v299[0] = *(v2 + 40);
        sub_2706E5F2C();
        MEMORY[0x2743A5EF0](2108704, 0xE300000000000000);
        sub_2706E5F2C();
        sub_2706E5F8C();
        __break(1u);
        JUMPOUT(0x2706E21E0);
      }

      v70 = sub_2706E314C(v40);
      v71 = v297;
      if (qword_28081C750 != -1)
      {
        goto LABEL_144;
      }

      goto LABEL_30;
    case 5uLL:
      if (v17 != 0xA000000000000000)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_35_4();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2706E0250(0xA000000000000000);
        v69 = v40;
        goto LABEL_33;
      }

      v294 = v13;
      v165 = *(v40 + 8);
      v297 = *v40;
      v166 = *(v40 + 16);
      v167 = *(v40 + 24);
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFF8, &unk_2706EE6D0);
      v169 = *(v168 + 80);
      v296 = *(v40 + *(v168 + 96));
      v170 = v290;
      (*(v292 + 32))(v291, v40 + v169, v290);
      if (qword_28081C750 != -1)
      {
        OUTLINED_FUNCTION_0_12(&qword_28081C750);
      }

      v287[1] = __swift_project_value_buffer(v295, qword_2808293C8);
      v171 = sub_2706E58BC();
      v172 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_13_0(v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        OUTLINED_FUNCTION_22_7();
        _os_log_impl(v174, v175, v176, v177, v173, 2u);
        OUTLINED_FUNCTION_12_0();
      }

      v178 = *(v2 + 32);
      v179 = objc_allocWithZone(type metadata accessor for DragForwarder_iOS(0));

      v180 = v297;

      v181 = sub_2706E3448(v178, v180, v2, v179, v167);
      v182 = v289;
      (*(v292 + 16))(v289, v291, v170);
      v71 = v181;
      v183 = sub_2706E332C(v71, v182);
      sub_2706DDBD8(v296);

      v293 = v183;
      sub_2706E0250(v184);
      v295 = v71;
      v185 = sub_270689978();
      if (!v185)
      {
        goto LABEL_112;
      }

      v186 = v185;
      v187 = *&v295[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardContents];
      if (v187)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v289 = v186;
        v287[0] = v187;
        if (Strong)
        {
          v71 = Strong;
          *&v300 = v186;
          *(&v300 + 1) = v187;
          v301 = v165;
          v302 = v166;
          v189 = type metadata accessor for Completion();
          OUTLINED_FUNCTION_39_2(v189);
          swift_retain_n();

          v186 = v289;
          OUTLINED_FUNCTION_24_5();
          sub_2706DD84C();
          v190 = OUTLINED_FUNCTION_9_9();
          sub_2706C77D8(v190, v191, v192, v193, v194, v195, v196, v197, v287[0]);

          swift_unknownObjectRelease();
          sub_2706B2C20(v300, *(&v300 + 1));
        }

        else
        {
        }

        v259 = *&v186[OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items];
        v260 = sub_2706C2200();
        v13 = (v259 & 0xC000000000000001);

        v261 = 0;
        v294 = MEMORY[0x277D84F90];
        while (v260 != v261)
        {
          if (v13)
          {
            v262 = v2;
            v71 = MEMORY[0x2743A62C0](v261, v259);
          }

          else
          {
            if (v261 >= *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_143;
            }

            v262 = v2;
            v71 = *(v259 + 8 * v261 + 32);
          }

          if (__OFADD__(v261, 1))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            v70 = OUTLINED_FUNCTION_0_12(&qword_28081C750);
LABEL_30:
            OUTLINED_FUNCTION_6_12(v70, qword_2808293C8);
            v72 = v293;
            sub_2706E30E8(v71, v293);
            v73 = sub_2706E58BC();
            v74 = sub_2706E5BEC();
            if (OUTLINED_FUNCTION_13_0(v74))
            {
              v75 = OUTLINED_FUNCTION_29_1();
              v299[0] = swift_slowAlloc();
              *v75 = 136315138;
              v302 = v13;
              v76 = __swift_allocate_boxed_opaque_existential_1(&v300);
              sub_2706E30E8(v72, v76);
              v77 = sub_2706CB238(&v300);
              v79 = v78;
              sub_2706E314C(v72);
              v80 = sub_2706C83E8(v77, v79, v299);

              *(v75 + 4) = v80;
              OUTLINED_FUNCTION_40_2();
              _os_log_impl(v81, v82, v83, v84, v75, 0xCu);
              OUTLINED_FUNCTION_8_12();
              OUTLINED_FUNCTION_12_0();

              return;
            }

            v69 = v72;
LABEL_33:
            sub_2706E314C(v69);
            return;
          }

          v263 = *(v71 + 7);
          if (v263)
          {
            v298[80] = 1;
            v298[72] = 1;
            v299[0] = v261;
            v299[1] = 0;
            v299[2] = 0;
            LOBYTE(v299[3]) = 1;
            v299[4] = 0;
            v299[5] = 0;
            LOBYTE(v299[6]) = 1;
            v299[7] = 0;
            v299[8] = v263;
            v300 = v261;
            v301 = 0;
            LOBYTE(v302) = 1;
            v303 = 0;
            v304 = 0;
            v305 = 1;
            v306 = 0;
            v307 = v263;

            sub_27069111C(v299, v298);
            sub_270691178(&v300);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v294 = sub_2706E2814(0, v294[1].Kind + 1, 1, v294);
            }

            v265 = v294[1].Kind;
            v264 = v294[1].Description;
            if (v265 >= v264 >> 1)
            {
              v294 = sub_2706E2814((v264 > 1), v265 + 1, 1, v294);
            }

            v266 = v294;
            v294[1].Kind = v265 + 1;
            memcpy(&v266[2] + 72 * v265, v299, 0x48uLL);
            ++v261;
            v2 = v262;
            v186 = v289;
          }

          else
          {

            ++v261;
            v2 = v262;
          }
        }

        if (v294[1].Kind || v186[OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle] != 5)
        {
          v268 = sub_2706E58BC();
          v269 = sub_2706E5C1C();
          v270 = OUTLINED_FUNCTION_13_0(v269);
          v267 = v290;
          if (v270)
          {
            v271 = swift_slowAlloc();
            *v271 = 0;
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v272, v273, v274, v275, v271, 2u);
            OUTLINED_FUNCTION_12_0();
          }

          v276 = v186[OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle];
          if (swift_unknownObjectWeakLoadStrong())
          {
            *&v300 = v294;
            *(&v300 + 1) = v276 | 0x1000000000000000;
            v277 = type metadata accessor for Completion();
            v301 = 0;
            v302 = 0;
            OUTLINED_FUNCTION_39_2(v277);
            OUTLINED_FUNCTION_24_5();
            sub_2706DD84C();
            v278 = OUTLINED_FUNCTION_9_9();
            sub_2706C77D8(v278, v279, v280, v281, v282, v283, v284, v285, v287[0]);

            swift_unknownObjectRelease();
            sub_2706B2C20(v300, *(&v300 + 1));
          }

          else
          {
          }
        }

        else
        {

          v267 = v290;
        }

        v286 = swift_unknownObjectWeakLoadStrong();

        sub_2706E3200(0xA000000000000000);

        (*(v292 + 8))(v291, v267);
        if (v286)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {

LABEL_112:
        v240 = sub_2706E5A3C();
        v242 = v241;
        v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
        v244 = OUTLINED_FUNCTION_51_3(v243);
        *(v244 + 16) = xmmword_2706E8FC0;
        *(v244 + 32) = sub_2706E5A3C();
        *(v244 + 40) = v245;
        OUTLINED_FUNCTION_46_3();
        *(v244 + 72) = MEMORY[0x277D837D0];
        *(v244 + 48) = 0xD00000000000004DLL;
        *(v244 + 56) = v246;
        v247 = sub_2706E59AC();
        v248 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v249 = sub_2706C82B8(v240, v242, -6709, v247);
        v250 = sub_2706E58BC();
        v251 = sub_2706E5BFC();
        if (OUTLINED_FUNCTION_13_0(v251))
        {
          v252 = swift_slowAlloc();
          *v252 = 0;
          OUTLINED_FUNCTION_40_2();
          _os_log_impl(v253, v254, v255, v256, v252, 2u);
          OUTLINED_FUNCTION_8_0();
        }

        v257 = v288;
        *v288 = v249;
        swift_storeEnumTagMultiPayload();
        v258 = v249;
        sub_2706E05C8(v257);

        sub_2706E3200(0xA000000000000000);

        sub_2706E314C(v257);
        (*(v292 + 8))(v291, v170);
      }

      return;
    default:
      goto LABEL_28;
  }
}

uint64_t sub_2706E2228()
{
  sub_2706A59B4(v0 + 16);

  sub_2706E3200(*(v0 + 40));
  return v0;
}

uint64_t sub_2706E2258()
{
  sub_2706E2228();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2706E22D8(uint64_t a1)
{
  result = sub_2706E576C();
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

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B21ForwardingCoordinatorC5State33_783013B8C6E53A71170330565A32ABC8LLO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_2706E23A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
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

uint64_t sub_2706E23FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2706E244C(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag15PeerDeviceEventO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

void *sub_2706E24B0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0x3000000000000000;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

unint64_t sub_2706E24EC()
{
  result = qword_28081DF30;
  if (!qword_28081DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF30);
  }

  return result;
}

uint64_t sub_2706E2540@<X0>(void *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2706C9980(a1, v1);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t sub_2706E25FC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2706E2658(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_2706E5B2C();
  }

  return result;
}

uint64_t sub_2706E26CC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_2706E2714(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E000, &qword_2706EE6E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2706BF75C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2706E2814(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A0, &qword_2706EBB30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_2706BF77C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2706E291C()
{
  OUTLINED_FUNCTION_49_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_27_5(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_25_4();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D238, &qword_2706EA060);
      v8 = OUTLINED_FUNCTION_42_3(v7);
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_13_11(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_23_6();
        sub_2706BF75C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v8 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2706E29D0()
{
  OUTLINED_FUNCTION_49_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_27_5(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_25_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E008, &qword_2706EE6E8);
      v7 = OUTLINED_FUNCTION_42_3(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_13_11(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_23_6();
        sub_2706BF75C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DDF0, &unk_2706EE6F0);
    OUTLINED_FUNCTION_31_5(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v4)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2706E2A8C()
{
  OUTLINED_FUNCTION_49_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_27_5(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_25_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A8, &qword_2706EBB38);
      v7 = OUTLINED_FUNCTION_42_3(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_13_11(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_23_6();
        sub_2706C21FC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8B0, &qword_2706EBB40);
    OUTLINED_FUNCTION_31_5(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v4)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_2706E2B48(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E010, &qword_2706EE700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2706C21FC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E018, &qword_2706EE708);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2706E2C58()
{
  OUTLINED_FUNCTION_49_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_27_5(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_25_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_23_6();
        sub_2706BF7C4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEC0, qword_2706EEF70);
    OUTLINED_FUNCTION_31_5(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_2706E2D38()
{
  result = qword_28081DF38;
  if (!qword_28081DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF38);
  }

  return result;
}

unint64_t sub_2706E2D8C()
{
  result = qword_28081DF40;
  if (!qword_28081DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF40);
  }

  return result;
}

unint64_t sub_2706E2DE0()
{
  result = qword_28081DF48;
  if (!qword_28081DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF48);
  }

  return result;
}

unint64_t sub_2706E2E34()
{
  result = qword_28081DF50;
  if (!qword_28081DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF50);
  }

  return result;
}

unint64_t sub_2706E2E88()
{
  result = qword_28081DF58;
  if (!qword_28081DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF58);
  }

  return result;
}

unint64_t sub_2706E2EDC()
{
  result = qword_28081DF60;
  if (!qword_28081DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF60);
  }

  return result;
}

unint64_t sub_2706E2F30()
{
  result = qword_28081DF68;
  if (!qword_28081DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF68);
  }

  return result;
}

unint64_t sub_2706E2F84()
{
  result = qword_28081DF70;
  if (!qword_28081DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF70);
  }

  return result;
}

unint64_t sub_2706E2FD8()
{
  result = qword_28081DF78;
  if (!qword_28081DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF78);
  }

  return result;
}

unint64_t sub_2706E302C()
{
  result = qword_28081DFD8;
  if (!qword_28081DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DFD8);
  }

  return result;
}

uint64_t sub_2706E3080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2706E30E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragForwardingCoordinator.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706E314C(uint64_t a1)
{
  v2 = type metadata accessor for DragForwardingCoordinator.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2706E31A8(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    case 4uLL:
      v1 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
      break;
    default:
      return;
  }
}

void sub_2706E3200(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    case 4uLL:

      break;
    default:
      return;
  }
}

uint64_t sub_2706E3258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = type metadata accessor for DragForwarder_iOS(0);
  v13 = &off_28806B728;
  *&v11 = a1;
  type metadata accessor for Completions();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(a3 + 16) = v6;
  *(a3 + OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_queuedPresentationUpdates) = v7;
  sub_2706E368C(&v11, a3 + 24);
  v8 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_target;
  v9 = sub_2706E576C();
  (*(*(v9 - 8) + 32))(a3 + v8, a2, v9);
  return a3;
}

uint64_t sub_2706E332C(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for DragForwarder_iOS(0);
  v14 = &off_28806B728;
  v12[0] = a1;
  type metadata accessor for DragForwardingCoordinator.Context(0);
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_2706E3258(*v7, a2, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

char *sub_2706E3448(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation] = 0;
  v10 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy;
  *&a4[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy] = 0;
  v11 = &a4[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardContents;
  *&a4[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardContents] = 0;
  if (a5 != 1.0)
  {
    goto LABEL_9;
  }

  *&a4[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardController] = a1;
  v13 = *(a1 + 88);
  if (!v13)
  {
    __break(1u);
LABEL_9:
    result = sub_2706E5F8C();
    __break(1u);
    return result;
  }

  v14 = ObjectType;
  *&a4[v12] = v13;
  v15 = *(a2 + 16);
  *&a4[v10] = v15;
  v16 = qword_28081C730;

  v17 = v15;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_2706E58DC();
  v19 = __swift_project_value_buffer(v18, qword_2808292D8);
  (*(*(v18 - 8) + 16))(&a4[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_logger], v19, v18);
  *&a4[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_delegate + 8] = &off_28806E630;
  swift_unknownObjectUnownedInit();
  v24.receiver = a4;
  v24.super_class = v14;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy];
  if (v21)
  {
    [v21 setDelegate_];
  }

  v22 = v20;
  sub_2706986E4(v20, &off_28806B718);

  return v22;
}

uint64_t sub_2706E368C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2706E36A4(uint64_t a1)
{
  sub_2706E3724(319);
  if (v1 <= 0x3F)
  {
    sub_2706E3864();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2706E3724(uint64_t a1)
{
  if (!qword_28081E030)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for DragController.DragSessionProxy();
    type metadata accessor for CGPoint(255);
    sub_2706E576C();
    type metadata accessor for Completion();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28081E030);
    }
  }
}

unint64_t sub_2706E3864()
{
  result = qword_28081E038;
  if (!qword_28081E038)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28081E038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeerDeviceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PeerDeviceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x2706E3A14);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PeerDeviceEvent.PrepareSurrogateCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706E3B18);
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

_BYTE *sub_2706E3BB8(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2706E3C54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2706E3C90()
{
  result = qword_28081E040;
  if (!qword_28081E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E040);
  }

  return result;
}

unint64_t sub_2706E3CE8()
{
  result = qword_28081E048;
  if (!qword_28081E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E048);
  }

  return result;
}

unint64_t sub_2706E3D40()
{
  result = qword_28081E050;
  if (!qword_28081E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E050);
  }

  return result;
}

unint64_t sub_2706E3D98()
{
  result = qword_28081E058;
  if (!qword_28081E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E058);
  }

  return result;
}

unint64_t sub_2706E3DF0()
{
  result = qword_28081E060;
  if (!qword_28081E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E060);
  }

  return result;
}

unint64_t sub_2706E3E48()
{
  result = qword_28081E068;
  if (!qword_28081E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E068);
  }

  return result;
}

unint64_t sub_2706E3EA0()
{
  result = qword_28081E070;
  if (!qword_28081E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E070);
  }

  return result;
}

unint64_t sub_2706E3EF8()
{
  result = qword_28081E078;
  if (!qword_28081E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E078);
  }

  return result;
}

unint64_t sub_2706E3F50()
{
  result = qword_28081E080;
  if (!qword_28081E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E080);
  }

  return result;
}

unint64_t sub_2706E3FA8()
{
  result = qword_28081E088;
  if (!qword_28081E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E088);
  }

  return result;
}

unint64_t sub_2706E4000()
{
  result = qword_28081E090;
  if (!qword_28081E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E090);
  }

  return result;
}

unint64_t sub_2706E4058()
{
  result = qword_28081E098;
  if (!qword_28081E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E098);
  }

  return result;
}

unint64_t sub_2706E40B0()
{
  result = qword_28081E0A0;
  if (!qword_28081E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0A0);
  }

  return result;
}

unint64_t sub_2706E4108()
{
  result = qword_28081E0A8;
  if (!qword_28081E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0A8);
  }

  return result;
}

unint64_t sub_2706E4160()
{
  result = qword_28081E0B0;
  if (!qword_28081E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0B0);
  }

  return result;
}

unint64_t sub_2706E41B8()
{
  result = qword_28081E0B8;
  if (!qword_28081E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0B8);
  }

  return result;
}

unint64_t sub_2706E4210()
{
  result = qword_28081E0C0;
  if (!qword_28081E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0C0);
  }

  return result;
}

unint64_t sub_2706E4268()
{
  result = qword_28081E0C8;
  if (!qword_28081E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0C8);
  }

  return result;
}

unint64_t sub_2706E42C0()
{
  result = qword_28081E0D0;
  if (!qword_28081E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0D0);
  }

  return result;
}

unint64_t sub_2706E4318()
{
  result = qword_28081E0D8;
  if (!qword_28081E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0D8);
  }

  return result;
}

unint64_t sub_2706E4370()
{
  result = qword_28081E0E0;
  if (!qword_28081E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0E0);
  }

  return result;
}

unint64_t sub_2706E43C8()
{
  result = qword_28081E0E8;
  if (!qword_28081E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2)
{

  return sub_2706E5FFC();
}

BOOL OUTLINED_FUNCTION_5_11(os_log_type_t a1)
{
  sub_2706E3200(v2);

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_8_12()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x2743A75B0);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

unint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_2706C83E8(45, 0xE100000000000000, (v0 - 224));
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1)
{

  return sub_2706E608C();
}

void OUTLINED_FUNCTION_21_8()
{

  sub_2706E0250(0xA000000000000008);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_38_4()
{

  return sub_2706C82B8(v0, v1, -6723, v2);
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_43_3()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_52_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

double OUTLINED_FUNCTION_53_2()
{

  return result;
}

id sub_2706E4848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a1;
  v11 = sub_2706E5A3C();
  return sub_2706E4FD0(v11, v12, v10, a2, a3, 0);
}

uint64_t sub_2706E48CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2706E4990(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_2706E49C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706E48CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706E49EC(uint64_t a1)
{
  v2 = sub_2706E4F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706E4A28(uint64_t a1)
{
  v2 = sub_2706E4F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2706E4A64(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E0F0, &qword_2706EEFF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E4F7C();
  sub_2706E668C();
  if (!v1)
  {
    v5 = sub_2706E603C();
    v7 = v6;
    v9 = sub_2706E604C();
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v4 = sub_2706C82B8(v5, v7, v9, 0);
    v11 = OUTLINED_FUNCTION_0_13();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void sub_2706E4C34(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E100, &qword_2706EEFF8);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E4F7C();
  sub_2706E66AC();
  v10 = sub_2706E557C();
  v11 = [v10 domain];
  sub_2706E5A3C();

  v12[15] = 0;
  sub_2706E60BC();
  if (v2)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {

    [v10 code];
    v12[14] = 1;
    sub_2706E60CC();
    (*(v6 + 8))(v9, v4);
  }
}

void *sub_2706E4E04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2706E4A64(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_2706E4E4C(uint64_t a1)
{
  v1 = sub_2706E557C();
  result = [v1 domain];
  if (result)
  {
    v3 = result;

    v4 = [v3 description];
    v5 = sub_2706E5A3C();
    v7 = v6;

    MEMORY[0x2743A5EF0](v5, v7);

    MEMORY[0x2743A5EF0](10272, 0xE200000000000000);
    v8 = sub_2706E557C();
    [v8 code];

    v9 = sub_2706E611C();
    MEMORY[0x2743A5EF0](v9);

    MEMORY[0x2743A5EF0](41, 0xE100000000000000);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2706E4F7C()
{
  result = qword_28081E0F8;
  if (!qword_28081E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0F8);
  }

  return result;
}

id sub_2706E4FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = MEMORY[0x277D837D0];
  sub_2706E59AC();
  if (a5)
  {
    v10 = sub_2706E5A3C();
    v12 = v11;
    v29 = v9;
    *&v28 = a4;
    *(&v28 + 1) = a5;
    sub_270690AAC(&v28, v25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_27068FE04(v25, v10, v12);
  }

  if (a6)
  {
    v13 = sub_2706E5A3C();
    v15 = v14;
    swift_getErrorValue();
    v16 = v26;
    v17 = v27;
    v29 = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v16, v17);
    sub_270690AAC(&v28, v25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_27068FE04(v25, v13, v15);
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2706E5A0C();

  v21 = sub_2706E598C();

  v22 = [v19 initWithDomain:v20 code:a3 userInfo:v21];

  return v22;
}

_BYTE *storeEnumTagSinglePayload for P2PError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706E52C0);
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

uint64_t sub_2706E52F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706E5338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2706E5388()
{
  result = qword_28081E108;
  if (!qword_28081E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E108);
  }

  return result;
}

unint64_t sub_2706E53E0()
{
  result = qword_28081E110;
  if (!qword_28081E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E110);
  }

  return result;
}

unint64_t sub_2706E5438()
{
  result = qword_28081E118;
  if (!qword_28081E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E118);
  }

  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}