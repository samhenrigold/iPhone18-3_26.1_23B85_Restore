uint64_t sub_267D1CEEC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D1CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v13 = v10[26];
  if (v13)
  {
    v14 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v17, v18, "#ShareThisFlow found and fetched on screen file using onscreen app entity");
      OUTLINED_FUNCTION_26();
    }

    v19 = v10[14];

    v20 = v13;
    MEMORY[0x26D608F90]();
    sub_267BDECD0();
    sub_267EF9368();

    v19(v21, 0);
  }

  else
  {
    OUTLINED_FUNCTION_73_5();
    v22 = [objc_allocWithZone(MEMORY[0x277D7A070]) init];
    OUTLINED_FUNCTION_65_3();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_27_14(v23);
    v10[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_29_14(COERCE_DOUBLE(1107296256));
    v10[4] = v24;
    v10[5] = &block_descriptor_11;
    v25 = _Block_copy(v12);

    [v11 getOnScreenContentWithOptions:v22 completionHandler:v25];

    _Block_release(v25);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_267D1D1C0()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

void sub_267D1D230(void (*a1)(char *, char *, uint64_t), void *a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6)
{
  v182 = a6;
  v183 = a4;
  v184 = a5;
  v181 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v171 - v11);
  v13 = sub_267EF2BA8();
  v180 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v171 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v171 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v171 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v171 - v26;
  sub_267C7B358();
  if (a2)
  {
    v28 = a2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v30 = a2;
    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      aBlock[6] = a2;
      v35 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v36 = sub_267EF9098();
      v38 = sub_267BA33E8(v36, v37, aBlock);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_267B93000, v31, v32, "#ShareThisFlow WFOnScreenContentService returned an error: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x26D60A7B0](v34, -1, -1);
      MEMORY[0x26D60A7B0](v33, -1, -1);
    }

    v39 = a2;
    v183(a2, 1);

    return;
  }

  v175 = v10;
  v178 = v12;
  v172 = v19;
  v173 = v16;
  v174 = v25;
  v176 = v22;
  v177 = v27;
  v179 = v13;
  v40 = v181;
  if (!v181)
  {
    v70 = v178;
    __swift_storeEnumTagSinglePayload(v178, 1, 1, v179);
LABEL_22:
    sub_267B9F98C(v70, &qword_280229E20, &unk_267EFDCC0);
    v76 = v182;
    swift_beginAccess();
    if (!sub_267BAF0DC(*(v76 + 16)))
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v77 = sub_267EF8A08();
      __swift_project_value_buffer(v77, qword_280240FB0);
      v78 = sub_267EF89F8();
      v79 = sub_267EF95C8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_267B93000, v78, v79, "#ShareThisFlow attachmentList is empty after calling WFOnScreenContentService, no on screen content found", v80, 2u);
        MEMORY[0x26D60A7B0](v80, -1, -1);
      }
    }

    swift_beginAccess();

    v183(v81, 0);

    return;
  }

  v41 = [v181 file];
  v42 = v179;
  v43 = v180;
  if (v41)
  {
    v44 = v41;
    v45 = [v41 fileURL];
    if (v45)
    {
      v46 = v45;
      v47 = v177;
      sub_267EF2B48();

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v48 = sub_267EF8A08();
      v49 = __swift_project_value_buffer(v48, qword_280240FB0);
      v50 = v44;
      v51 = sub_267EF89F8();
      v52 = sub_267EF95D8();
      v178 = v50;

      v53 = os_log_type_enabled(v51, v52);
      v176 = v49;
      v54 = v174;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v178;
        *(v55 + 4) = v178;
        *v56 = v44;
        v58 = v57;
        _os_log_impl(&dword_267B93000, v51, v52, "#ShareThisFlow WFOnScreenContentService returned a file: %@", v55, 0xCu);
        sub_267B9F98C(v56, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v56, -1, -1);
        MEMORY[0x26D60A7B0](v55, -1, -1);
      }

      (*(v43 + 16))(v54, v47, v42);
      v59 = sub_267EF89F8();
      v60 = sub_267EF95C8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock[0] = v62;
        *v61 = 136380675;
        sub_267D2483C(&qword_28022AE70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v63 = sub_267EF9E58();
        v64 = v42;
        v66 = v65;
        v67 = v54;
        v68 = *(v43 + 8);
        v68(v67, v64);
        v69 = sub_267BA33E8(v63, v66, aBlock);
        v42 = v64;
        v47 = v177;

        *(v61 + 4) = v69;
        _os_log_impl(&dword_267B93000, v59, v60, "#ShareThisFlow adding an attachment with a URL of:%{private}s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x26D60A7B0](v62, -1, -1);
        MEMORY[0x26D60A7B0](v61, -1, -1);
      }

      else
      {

        v97 = v54;
        v68 = *(v43 + 8);
        v68(v97, v42);
      }

      v98 = v178;
      [v178 _setMarkedForDeletionOnDeallocation_];
      v99 = swift_allocObject();
      *(v99 + 16) = [objc_opt_self() attachmentWithFile_];
      v100 = sub_267D50E80();
      sub_267CFDB98(v100);
      v101 = [v40 contentItem];
      if (v101)
      {
        v102 = v101;
        objc_opt_self();
        v103 = swift_dynamicCastObjCClass();
        if (v103)
        {
          v104 = v103;
          v181 = v102;
          v105 = [v103 asset];
          v106 = sub_267EF89F8();
          v107 = sub_267EF95C8();

          v108 = os_log_type_enabled(v106, v107);
          v175 = v104;
          if (v108)
          {
            v109 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            aBlock[0] = v174;
            *v109 = 136380675;
            v110 = [v105 localIdentifier];
            v111 = v42;
            v112 = sub_267EF9028();
            v113 = v105;
            v114 = v68;
            v116 = v115;

            v117 = v112;
            v42 = v111;
            v47 = v177;
            v118 = sub_267BA33E8(v117, v116, aBlock);
            v68 = v114;
            v105 = v113;

            *(v109 + 4) = v118;
            _os_log_impl(&dword_267B93000, v106, v107, "#ShareThisFlow onScreenContent.contentItem was WFPhotoMediaContentItem and has asset identifier %{private}s", v109, 0xCu);
            v119 = v174;
            __swift_destroy_boxed_opaque_existential_0(v174);
            MEMORY[0x26D60A7B0](v119, -1, -1);
            MEMORY[0x26D60A7B0](v109, -1, -1);
          }

          if ([v105 hasAdjustments])
          {
            v120 = [objc_allocWithZone(MEMORY[0x277CD9850]) init];
            [v120 setNetworkAccessAllowed_];
            [v120 setSkipDisplaySizeImage_];
            v121 = swift_allocObject();
            v123 = v182;
            v122 = v183;
            v121[2] = v99;
            v121[3] = v123;
            v124 = v184;
            v121[4] = v122;
            v121[5] = v124;
            aBlock[4] = sub_267D24488;
            aBlock[5] = v121;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_267D1ED68;
            aBlock[3] = &block_descriptor_105;
            v125 = _Block_copy(aBlock);
            v126 = v120;

            [v105 requestContentEditingInputWithOptions:v126 completionHandler:v125];
            _Block_release(v125);

LABEL_57:
            goto LABEL_58;
          }

          v140 = *(v99 + 16);
          swift_beginAccess();
          v141 = v140;
          MEMORY[0x26D608F90]();
          sub_267BDECD0();
          sub_267EF9368();
          swift_endAccess();
          v142 = v181;
          v143 = sub_267EF89F8();
          v144 = sub_267EF95C8();
          v181 = v142;

          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            aBlock[0] = v174;
            *v145 = 136315138;
            v146 = [v175 asset];
            v147 = v42;
            v148 = [v146 localIdentifier];

            v149 = sub_267EF9028();
            v150 = v105;
            v151 = v68;
            v153 = v152;

            v42 = v147;
            v47 = v177;
            v154 = sub_267BA33E8(v149, v153, aBlock);
            v68 = v151;
            v105 = v150;
            v155 = v175;

            *(v145 + 4) = v154;
            v156 = &selRef_personTypes;
            _os_log_impl(&dword_267B93000, v143, v144, "#ShareThisFlow onScreenContent.contentItem was WFPhotoMediaContentItem and has asset identifier %s", v145, 0xCu);
            v157 = v174;
            __swift_destroy_boxed_opaque_existential_0(v174);
            MEMORY[0x26D60A7B0](v157, -1, -1);
            MEMORY[0x26D60A7B0](v145, -1, -1);
          }

          else
          {

            v155 = v175;
            v156 = &selRef_personTypes;
          }

          v158 = [v155 v156[204]];
          v159 = sub_267CFD844(v158);

          v160 = sub_267EF89F8();
          v161 = sub_267EF95D8();
          if (os_log_type_enabled(v160, v161))
          {
            v162 = v155;
            v163 = swift_slowAlloc();
            *v163 = 67109120;
            *(v163 + 4) = v159;
            _os_log_impl(&dword_267B93000, v160, v161, "#ShareThisFlow is asset available locally: %{BOOL}d", v163, 8u);
            v164 = v163;
            v155 = v162;
            v156 = &selRef_personTypes;
            MEMORY[0x26D60A7B0](v164, -1, -1);
          }

          if (!v159)
          {
            v166 = sub_267EF89F8();
            v167 = sub_267EF95C8();
            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              *v168 = 0;
              _os_log_impl(&dword_267B93000, v166, v167, "#ShareThisFlow starting download of remote PHAsset", v168, 2u);
              MEMORY[0x26D60A7B0](v168, -1, -1);
            }

            v126 = [v155 v156[204]];
            v169 = v182;

            v170 = v184;

            sub_267CFC89C(v126, v183, v170, v169);

            goto LABEL_57;
          }

          swift_beginAccess();

          v183(v165, 0);

          v139 = v181;
LABEL_46:

LABEL_58:
          v68(v47, v42);

          return;
        }
      }

      v133 = sub_267EF89F8();
      v134 = sub_267EF95C8();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_267B93000, v133, v134, "#ShareThisFlow file was not a mediaItem, completing with file attachments", v135, 2u);
        MEMORY[0x26D60A7B0](v135, -1, -1);
      }

      v136 = *(v99 + 16);
      swift_beginAccess();
      v137 = v136;
      MEMORY[0x26D608F90]();
      sub_267BDECD0();
      sub_267EF9368();
      swift_endAccess();

      v183(v138, 0);
      v139 = v178;
      goto LABEL_46;
    }
  }

  v71 = [v40 URL];
  if (v71)
  {
    v72 = v71;
    v73 = v175;
    sub_267EF2B48();

    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v175;
  }

  __swift_storeEnumTagSinglePayload(v73, v74, 1, v42);
  v75 = v73;
  v70 = v178;
  sub_267C26704(v75, v178);
  if (__swift_getEnumTagSinglePayload(v70, 1, v42) == 1)
  {
    goto LABEL_22;
  }

  v82 = v176;
  (*(v43 + 32))(v176, v70, v42);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v83 = sub_267EF8A08();
  __swift_project_value_buffer(v83, qword_280240FB0);
  v84 = *(v43 + 16);
  v85 = v172;
  v84(v172, v82, v42);
  v86 = sub_267EF89F8();
  v87 = sub_267EF95C8();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v181 = v84;
    v89 = v88;
    v178 = swift_slowAlloc();
    aBlock[0] = v178;
    *v89 = 136380675;
    sub_267D2483C(&qword_28022AE70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v90 = sub_267EF9E58();
    v92 = v91;
    v93 = *(v43 + 8);
    v93(v85, v179);
    v94 = sub_267BA33E8(v90, v92, aBlock);

    *(v89 + 4) = v94;
    _os_log_impl(&dword_267B93000, v86, v87, "#ShareThisFlow WFOnScreenContentService returned a url: %{private}s, building a sharedLink attachment", v89, 0xCu);
    v95 = v178;
    __swift_destroy_boxed_opaque_existential_0(v178);
    v42 = v179;
    MEMORY[0x26D60A7B0](v95, -1, -1);
    v96 = v89;
    v84 = v181;
    MEMORY[0x26D60A7B0](v96, -1, -1);
  }

  else
  {

    v93 = *(v43 + 8);
    v93(v85, v42);
  }

  v127 = v173;
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v128 = v176;
  v84(v127, v176, v42);
  v129 = sub_267E80978(v127);
  swift_beginAccess();
  v130 = v129;
  MEMORY[0x26D608F90]();
  sub_267BDECD0();
  sub_267EF9368();
  swift_endAccess();
  v131 = sub_267D50E80();
  sub_267CFDB98(v131);
  swift_beginAccess();

  v183(v132, 0);

  v93(v128, v42);
}

uint64_t sub_267D1E504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v92 = a5;
  v90 = a3;
  v9 = sub_267EF8818();
  v87 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_267EF2BA8();
  v12 = *(v91 - 8);
  v13 = MEMORY[0x28223BE20](v91);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v78 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v78 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v78 - v24;
  if (a1)
  {
    v88 = v23;
    v89 = a4;
    v26 = a1;
    v27 = [v26 fullSizeImageURL];
    if (v27)
    {
      v28 = v27;
      v86 = a6;
      sub_267EF2B48();

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v87 = v26;
      v29 = sub_267EF8A08();
      __swift_project_value_buffer(v29, qword_280240FB0);
      v30 = v91;
      v85 = *(v12 + 16);
      v85(v22, v25, v91);
      v31 = sub_267EF89F8();
      v32 = sub_267EF95D8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v93[0] = v84;
        *v33 = 136315138;
        v34 = sub_267EF2AC8();
        v36 = v35;
        v37 = *(v12 + 8);
        v37(v22, v91);
        v38 = sub_267BA33E8(v34, v36, v93);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_267B93000, v31, v32, "#ShareThisFlow asset.requestContentEditingInput with imageURL: %s", v33, 0xCu);
        v39 = v84;
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x26D60A7B0](v39, -1, -1);
        v40 = v33;
        v30 = v91;
        MEMORY[0x26D60A7B0](v40, -1, -1);
      }

      else
      {

        v37 = *(v12 + 8);
        v37(v22, v30);
      }

      sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
      v55 = v88;
      v85(v88, v25, v30);
      v56 = sub_267EF2AE8();
      v58 = sub_267E0C800(v55, v56, v57, 0x692E63696C627570, 0xEC0000006567616DLL);
      v59 = [objc_opt_self() attachmentWithFile_];

      v60 = v90;
      swift_beginAccess();
      v61 = *(v60 + 16);
      *(v60 + 16) = v59;

      swift_beginAccess();
      v62 = v59;
      MEMORY[0x26D608F90]();
      sub_267BDECD0();
      sub_267EF9368();
      swift_endAccess();

      v37(v25, v30);
    }

    else
    {

      v41 = v26;
      v42 = [v41 videoURL];
      if (v42)
      {
        v43 = v42;
        v85 = v41;
        sub_267EF2B48();

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v86 = a6;
        v44 = sub_267EF8A08();
        __swift_project_value_buffer(v44, qword_280240FB0);
        v45 = v91;
        v82 = *(v12 + 16);
        v82(v15, v18, v91);
        v46 = sub_267EF89F8();
        v47 = sub_267EF95D8();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v80 = v48;
          v81 = swift_slowAlloc();
          v93[0] = v81;
          *v48 = 136315138;
          v79 = sub_267EF2AC8();
          v50 = v49;
          v51 = *(v12 + 8);
          v83 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v84 = v51;
          (v51)(v15, v45);
          v52 = sub_267BA33E8(v79, v50, v93);

          v53 = v80;
          *(v80 + 1) = v52;
          _os_log_impl(&dword_267B93000, v46, v47, "#SharethisFlow asset.requestContentEditingInput with videoURL: %s", v53, 0xCu);
          v54 = v81;
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x26D60A7B0](v54, -1, -1);
          MEMORY[0x26D60A7B0](v53, -1, -1);
        }

        else
        {

          v63 = *(v12 + 8);
          v83 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v84 = v63;
          (v63)(v15, v45);
        }

        sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
        v64 = v88;
        v82(v88, v18, v45);
        v65 = sub_267EF2AE8();
        v67 = v66;
        sub_267EF87E8();
        v68 = sub_267EF8768();
        v70 = v69;
        (*(v87 + 1))(v11, v9);
        v71 = sub_267E0C800(v64, v65, v67, v68, v70);
        v72 = [objc_opt_self() attachmentWithFile_];

        v73 = v90;
        swift_beginAccess();
        v74 = *(v73 + 16);
        *(v73 + 16) = v72;

        swift_beginAccess();
        v75 = v72;
        MEMORY[0x26D608F90]();
        sub_267BDECD0();
        sub_267EF9368();
        swift_endAccess();

        (v84)(v18, v45);
      }

      else
      {
      }
    }
  }

  swift_beginAccess();

  v92(v76, 0);
}

void sub_267D1ED68(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_267EF8EF8();

  v6 = a2;
  v4(a2, v5);
}

void sub_267D1EE0C()
{
  OUTLINED_FUNCTION_48_0();
  v47 = v1;
  v48 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC8, &unk_267F030E0);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  sub_267BB170C(v5, &v44 - v16, &qword_28022ABC8, &unk_267F030E0);
  OUTLINED_FUNCTION_66();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = v17[8];
    v20 = v17[9];
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v21 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v23))
    {
      v24 = OUTLINED_FUNCTION_32();
      *v24 = 0;
      _os_log_impl(&dword_267B93000, v22, v23, "#ShareThisFlow SharableMediaAttachmentUtils returned error downloading asset", v24, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v25 = sub_267D24494();
    v26 = OUTLINED_FUNCTION_61_1(&type metadata for SharingMediaAttachmentError, v25);
    *v27 = v18;
    *(v27 + 8) = v19;
    *(v27 + 9) = v20;
    v3(v26, 1);
  }

  else
  {
    (*(v8 + 32))(v14, v17, v6);
    v28 = v6;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    (*(v8 + 16))(v12, v14, v6);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_48();
      v45 = v14;
      v33 = v32;
      v34 = OUTLINED_FUNCTION_52();
      v49 = v34;
      *v33 = 136315138;
      sub_267EF2AC8();
      v46 = v3;
      v35 = OUTLINED_FUNCTION_75_4();
      v36(v35, v6);
      v37 = OUTLINED_FUNCTION_108();
      v40 = sub_267BA33E8(v37, v38, v39);
      v28 = v6;
      v3 = v46;

      *(v33 + 4) = v40;
      _os_log_impl(&dword_267B93000, v30, v31, "#ShareThisFlow SharableMediaAttachmentUtils downloaded asset with URL: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_32_0();
      v14 = v45;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v41 = OUTLINED_FUNCTION_75_4();
      v42(v41, v6);
    }

    swift_beginAccess();

    v3(v43, 0);

    (v12)(v14, v28);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D1F1DC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_267EF93F8();
  OUTLINED_FUNCTION_79_5(v8, v11, v12, v10);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = sub_267D242D4;
  v13[5] = v9;
  v13[6] = &unk_267F04228;
  v13[7] = v2;

  OUTLINED_FUNCTION_10_5();
  sub_267E8FA18();
}

uint64_t sub_267D1F300(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v2[12] = swift_task_alloc();
  v3 = sub_267EF2BA8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_267EF8A08();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D1F46C, 0, 0);
}

uint64_t sub_267D1F46C()
{
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    v7 = v0[11];
    v8 = __swift_project_value_buffer(v6, qword_280240FB0);
    v0[21] = v8;
    (*(v5 + 16))(v4, v8, v6);
    sub_267EF3838();
    v9 = type metadata accessor for MessagesSELFPerformanceLogger(0);
    OUTLINED_FUNCTION_97(v9);
    v0[22] = OUTLINED_FUNCTION_96_3(104, v10, v11, v12, v0 + 2);
    __swift_project_boxed_opaque_existential_0((v7 + 224), *(v7 + 248));
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_267D1F5CC;

    return sub_267D65298();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267D1F5CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *(v1 + 72) = v3;
  *(v1 + 56) = v0;
  *(v1 + 64) = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v8 + 200) = v7;

  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D1F6B4()
{
  v1 = *(v0 + 200);
  sub_267C7B358();
  if (v1)
  {
    v2 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v4);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#ShareThisFlow getNowPlayingiTunesStoreIdentifier failed");
      OUTLINED_FUNCTION_26();
    }

    v7 = *(v0 + 80);

    *v7 = 0;
    OUTLINED_FUNCTION_99_3();

    OUTLINED_FUNCTION_17();

    return v8();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((*(v0 + 88) + 224), *(*(v0 + 88) + 248));
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_267D1F824;

    return sub_267D63778();
  }
}

uint64_t sub_267D1F824()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267D1F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t (*a11)(uint64_t), void (*a12)(uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_41();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = v24[12];
  v27 = v24[13];
  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    sub_267B9F98C(v28, &qword_280229E20, &unk_267EFDCC0);
    v29 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v31);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v32, v33, "#ShareThisFlow getProductPageURL failed");
      OUTLINED_FUNCTION_26();
    }

    v34 = v24[10];

    *v34 = 0;
  }

  else
  {
    v35 = v24[14];
    (*(v35 + 32))(v24[17], v28, v27);
    v36 = *(v35 + 16);
    v37 = OUTLINED_FUNCTION_91_1();
    v36(v37);
    v38 = sub_267EF89F8();
    v39 = sub_267EF95C8();
    v40 = OUTLINED_FUNCTION_78_7(v39);
    v41 = v24[16];
    if (v40)
    {
      v42 = OUTLINED_FUNCTION_48();
      a10 = OUTLINED_FUNCTION_52();
      a13 = a10;
      *v42 = 136380675;
      a9 = sub_267EF2AC8();
      a11 = v36;
      v44 = v43;
      v45 = OUTLINED_FUNCTION_66_9();
      v46(v45);
      sub_267BA33E8(a9, v44, &a13);
      OUTLINED_FUNCTION_61_2();
      v36 = a11;

      *(v42 + 4) = v41;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v47, v48, "#ShareThisFlow fetchNowPlayingAttachment returning %{private}s");
      __swift_destroy_boxed_opaque_existential_0(a10);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v49 = OUTLINED_FUNCTION_66_9();
      v50(v49);
    }

    v51 = v24[15];
    v52 = v24[10];
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v53 = OUTLINED_FUNCTION_108();
    v36(v53);
    v54 = sub_267E80978(v51);

    v55 = OUTLINED_FUNCTION_37_1();
    a12(v55);
    *v52 = v54;
  }

  OUTLINED_FUNCTION_99_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_267D1FB88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v148 = a2;
  v10 = sub_267EF6288();
  v149 = *(v10 - 8);
  v150 = v10;
  MEMORY[0x28223BE20](v10);
  v147 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v147 - v13;
  v164 = sub_267EF8AE8();
  v158 = *(v164 - 8);
  v15 = MEMORY[0x28223BE20](v164);
  v17 = (&v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v151 = &v147 - v19;
  MEMORY[0x28223BE20](v18);
  v155 = &v147 - v20;
  v21 = qword_280228818;

  if (v21 != -1)
  {
    swift_once();
  }

  v163 = v17;
  v22 = sub_267EF8A08();
  v165 = __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_267B93000, v23, v24, "#ShareThisFlow ContextualScreenResolution is enabled and there is a MentionResolver span match, checking for context entities", v25, 2u);
    MEMORY[0x26D60A7B0](v25, -1, -1);
  }

  v26 = a3[41];
  v27 = a3[42];
  __swift_project_boxed_opaque_existential_0(a3 + 38, v26);
  v28 = sub_267EF56B8();
  sub_267EBD060(v28, v26, v27);
  v30 = v29;

  v31 = sub_267EF89F8();
  v32 = sub_267EF95C8();
  v33 = os_log_type_enabled(v31, v32);
  v152 = a4;
  v153 = v14;
  v156 = a6;
  v154 = a5;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 134349056;
    *(v34 + 4) = *(v30 + 16);

    _os_log_impl(&dword_267B93000, v31, v32, "#ShareThisFlow RRAAS returned %{public}ld results", v34, 0xCu);
    MEMORY[0x26D60A7B0](v34, -1, -1);
  }

  else
  {
  }

  v36 = v163;
  v37 = v164;
  v157 = v30;
  v38 = *(v30 + 16);
  if (v38)
  {
    v39 = *(v158 + 16);
    v40 = v157 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v41 = *(v158 + 72);
    v162 = (v158 + 8);
    *&v35 = 136315138;
    v159 = v35;
    v160 = v41;
    v161 = v158 + 16;
    do
    {
      v39(v36, v40, v37);
      v42 = sub_267EF89F8();
      v43 = sub_267EF95D8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = v39;
        v46 = swift_slowAlloc();
        v166[0] = v46;
        *v44 = v159;
        sub_267EF8AD8();
        v47 = sub_267EF66B8();
        v49 = v48;

        (*v162)(v163, v164);
        v50 = v47;
        v37 = v164;
        v51 = sub_267BA33E8(v50, v49, v166);
        v36 = v163;

        *(v44 + 4) = v51;
        _os_log_impl(&dword_267B93000, v42, v43, "#ShareThisFlow rraasResult was %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        v52 = v46;
        v39 = v45;
        v41 = v160;
        MEMORY[0x26D60A7B0](v52, -1, -1);
        MEMORY[0x26D60A7B0](v44, -1, -1);
      }

      else
      {

        (*v162)(v36, v37);
      }

      v40 += v41;
      --v38;
    }

    while (v38);
  }

  v53 = v153;
  sub_267BBE6E0(v157, v153);

  if (__swift_getEnumTagSinglePayload(v53, 1, v37) != 1)
  {
    v56 = v158;
    v57 = v155;
    (*(v158 + 32))(v155, v53, v37);
    v58 = v151;
    (*(v56 + 16))(v151, v57, v37);
    v59 = sub_267EF89F8();
    v60 = sub_267EF95D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v166[0] = v62;
      *v61 = 136315138;
      sub_267EF8AD8();
      v63 = sub_267EF66B8();
      v65 = v64;

      v66 = *(v56 + 8);
      v66(v58, v164);
      v67 = sub_267BA33E8(v63, v65, v166);
      v37 = v164;

      *(v61 + 4) = v67;
      _os_log_impl(&dword_267B93000, v59, v60, "#ShareThisFlow first rraasResult was %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      v68 = v62;
      v57 = v155;
      MEMORY[0x26D60A7B0](v68, -1, -1);
      MEMORY[0x26D60A7B0](v61, -1, -1);
    }

    else
    {

      v66 = *(v56 + 8);
      v66(v58, v37);
    }

    sub_267EF8AD8();
    sub_267EF5B98();
    sub_267EF5E08();

    v69 = MEMORY[0x277D5EEF0];
    if (v166[0])
    {
      if (!sub_267EF5B78() || (v70 = sub_267EF6298(), v72 = v71, , !v72))
      {
LABEL_43:
        v54 = sub_267EF5B78();
        if (!v54)
        {
          v66(v57, v37);

LABEL_93:
          v55 = v152;
          goto LABEL_94;
        }

        v110 = sub_267EF6298();
        v104 = v111;

        if (v104)
        {
          if (!sub_267EF5B78())
          {
LABEL_51:

            v66(v57, v37);
LABEL_79:
            v54 = 0;
            goto LABEL_93;
          }

          sub_267EF56B8();

          v112 = sub_267EF66B8();
          v114 = v113;

          if (v112 == 0xD000000000000013 && 0x8000000267F17810 == v114)
          {

            v57 = v155;
          }

          else
          {
            v116 = sub_267EF9EA8();

            v57 = v155;
            if ((v116 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          v164 = v110;
          v127 = v149;
          v126 = v150;
          v128 = v147;
          (*(v149 + 104))(v147, *MEMORY[0x277D5EF28], v150);
          v129 = sub_267C28EF0(v148, v128);
          (*(v127 + 8))(v128, v126);
          if (v129)
          {

            v130 = sub_267EF89F8();
            v131 = sub_267EF95D8();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v166[0] = v133;
              *v132 = 136315138;
              v103 = v164;
              *(v132 + 4) = sub_267BA33E8(v164, v104, v166);
              _os_log_impl(&dword_267B93000, v130, v131, "#ShareThisFlow resolved common_Agent with value %s", v132, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v133);
              MEMORY[0x26D60A7B0](v133, -1, -1);
              v134 = v132;
              v57 = v155;
              MEMORY[0x26D60A7B0](v134, -1, -1);
            }

            else
            {

              v103 = v164;
            }

            v54 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
            if (!v54)
            {

              goto LABEL_91;
            }

LABEL_85:
            sub_267D142A4(v103, v104, &unk_28022AD50);
LABEL_91:

            goto LABEL_92;
          }

          v66(v57, v37);
        }

        else
        {
          v66(v57, v37);
        }

        goto LABEL_79;
      }

      if (sub_267EF5B78())
      {
        sub_267EF56B8();

        v73 = sub_267EF66B8();
        v75 = v74;

        if (v73 == 0xD000000000000012 && 0x8000000267F17830 == v75)
        {

          v37 = v164;
          v57 = v155;
        }

        else
        {
          v77 = sub_267EF9EA8();

          v37 = v164;
          v57 = v155;
          if ((v77 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v94 = *v69;
        v96 = v149;
        v95 = v150;
        v97 = v72;
        v98 = v66;
        v99 = v70;
        v100 = v147;
        (*(v149 + 104))(v147, v94, v150);
        v101 = sub_267C28EF0(v148, v100);
        v102 = v100;
        v103 = v99;
        v66 = v98;
        v104 = v97;
        (*(v96 + 8))(v102, v95);
        if (v101)
        {

          v105 = sub_267EF89F8();
          v106 = sub_267EF95D8();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v166[0] = v108;
            *v107 = 136315138;
            *(v107 + 4) = sub_267BA33E8(v103, v97, v166);
            _os_log_impl(&dword_267B93000, v105, v106, "#ShareThisFlow resolved common_Agent with value %s", v107, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v108);
            MEMORY[0x26D60A7B0](v108, -1, -1);
            v109 = v107;
            v57 = v155;
            MEMORY[0x26D60A7B0](v109, -1, -1);
          }

          v54 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
          if (!v54)
          {

LABEL_92:
            v66(v57, v37);
            goto LABEL_93;
          }

          goto LABEL_85;
        }
      }

LABEL_42:

      goto LABEL_43;
    }

    sub_267EF8AD8();
    sub_267EF5FC8();
    sub_267EF5E08();

    v163 = v66;
    if (v166[0])
    {
      v78 = sub_267EF5FB8();
      v55 = v152;
      if (v79)
      {
        v80 = v79;
        v162 = v78;
        v81 = *v69;
        v83 = v149;
        v82 = v150;
        v84 = v147;
        (*(v149 + 104))(v147, v81, v150);
        v85 = sub_267C28EF0(v148, v84);
        (*(v83 + 8))(v84, v82);
        if (v85)
        {

          v86 = sub_267EF89F8();
          v87 = sub_267EF95D8();

          v88 = os_log_type_enabled(v86, v87);
          v89 = v163;
          if (v88)
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v166[0] = v91;
            *v90 = 136315138;
            v92 = v162;
            *(v90 + 4) = sub_267BA33E8(v162, v80, v166);
            v93 = "#ShareThisFlow resolved common_PhoneNumber with value %s";
LABEL_60:
            _os_log_impl(&dword_267B93000, v86, v87, v93, v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v91);
            v124 = v91;
            v37 = v164;
            MEMORY[0x26D60A7B0](v124, -1, -1);
            MEMORY[0x26D60A7B0](v90, -1, -1);

            v125 = v155;
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        v66 = v163;
      }

      else
      {
      }
    }

    else
    {
      v55 = v152;
    }

    sub_267EF8AD8();
    sub_267EF6078();
    sub_267EF5E08();

    if (v166[0])
    {
      v117 = sub_267EF6068();
      if (v118)
      {
        v80 = v118;
        v162 = v117;
        v120 = v149;
        v119 = v150;
        v121 = v147;
        (*(v149 + 104))(v147, *MEMORY[0x277D5EF28], v150);
        v122 = sub_267C28EF0(v148, v121);
        (*(v120 + 8))(v121, v119);
        if (v122)
        {

          v86 = sub_267EF89F8();
          v87 = sub_267EF95D8();

          v123 = os_log_type_enabled(v86, v87);
          v89 = v163;
          if (v123)
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v166[0] = v91;
            *v90 = 136315138;
            v92 = v162;
            *(v90 + 4) = sub_267BA33E8(v162, v80, v166);
            v93 = "#ShareThisFlow resolved common_EmailAddress with value %s";
            goto LABEL_60;
          }

LABEL_66:

          v125 = v155;
          v92 = v162;
LABEL_67:
          v54 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
          if (v54)
          {
LABEL_68:
            sub_267D142A4(v92, v80, &unk_28022AD50);
LABEL_89:

            v89(v125, v37);
            goto LABEL_94;
          }

LABEL_88:

          goto LABEL_89;
        }

        v66 = v163;
      }

      else
      {
      }
    }

    sub_267EF8AD8();
    sub_267EF6198();
    sub_267EF5E08();

    if (v166[0])
    {
      v135 = sub_267EF6188();
      if (v136)
      {
        v80 = v136;
        v162 = v135;
        v138 = v149;
        v137 = v150;
        v139 = v147;
        (*(v149 + 104))(v147, *MEMORY[0x277D5EF70], v150);
        v140 = sub_267C28EF0(v148, v139);
        (*(v138 + 8))(v139, v137);
        if (v140)
        {

          v141 = sub_267EF89F8();
          v142 = sub_267EF95D8();

          v143 = os_log_type_enabled(v141, v142);
          v89 = v163;
          if (v143)
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v166[0] = v145;
            *v144 = 136315138;
            v92 = v162;
            *(v144 + 4) = sub_267BA33E8(v162, v80, v166);
            _os_log_impl(&dword_267B93000, v141, v142, "#ShareThisFlow resolved common_PostalAddress with value %s", v144, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v145);
            v146 = v145;
            v37 = v164;
            MEMORY[0x26D60A7B0](v146, -1, -1);
            MEMORY[0x26D60A7B0](v144, -1, -1);
          }

          else
          {

            v92 = v162;
          }

          v54 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
          v125 = v155;
          if (v54)
          {
            goto LABEL_68;
          }

          goto LABEL_88;
        }

        v163(v57, v37);
      }

      else
      {
        v66(v57, v37);
      }
    }

    else
    {
      v66(v57, v37);
    }

    v54 = 0;
    goto LABEL_94;
  }

  sub_267B9F98C(v53, &qword_2802294B0, &qword_267F001F0);
  v54 = 0;
  v55 = v152;
LABEL_94:

  sub_267D1949C(v54, v55, v154);
}

void sub_267D20DF0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v10))
  {
    v11 = OUTLINED_FUNCTION_32();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "#ShareThisFlow sharingAttachments is empty", v11, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267B9AFEC(v1 + 168, v86);
  v12 = v87;
  v13 = v88;
  __swift_project_boxed_opaque_existential_0(v86, v87);
  v14 = (*(v13 + 360))(v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0(v86);
  v87 = &type metadata for Features;
  v88 = sub_267BAFCAC();
  LOBYTE(v86[0]) = 16;
  v17 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v86);
  if (v17)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    OUTLINED_FUNCTION_89_6();
    v20 = v7 == v19 && v18 == v5;
    if (v20 || (v21 = OUTLINED_FUNCTION_95_0(), (OUTLINED_FUNCTION_80_3(v21, v22) & 1) != 0))
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_28:

    v69 = sub_267EF89F8();
    v70 = sub_267EF95D8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = OUTLINED_FUNCTION_48();
      v72 = OUTLINED_FUNCTION_52();
      v86[0] = v72;
      *v71 = 136315138;
      if (v5)
      {
      }

      v73 = OUTLINED_FUNCTION_95_0();
      v14 = sub_267BA33E8(v73, v74, v75);

      *(v71 + 4) = v14;
      OUTLINED_FUNCTION_30_11();
      _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {
    }

    v81 = OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v81);
    OUTLINED_FUNCTION_89_6();
    *v83 = v82 + 31;
    v83[1] = v69;
    OUTLINED_FUNCTION_2_34(v84);
    OUTLINED_FUNCTION_94();
    v85 = swift_allocObject();
    OUTLINED_FUNCTION_19_14(v85);

    goto LABEL_34;
  }

  if (v16)
  {
    goto LABEL_28;
  }

LABEL_13:
  v24 = *(v1 + 192);
  v23 = *(v1 + 200);
  OUTLINED_FUNCTION_48_15((v1 + 168), v24);
  OUTLINED_FUNCTION_23();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v30 = v29 - v28;
  (*(v26 + 16))(v29 - v28);
  LOBYTE(v23) = sub_267E59398(v24, v23);
  (*(v26 + 8))(v30, v24);
  if (v23)
  {
    v31 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v14))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v32);
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    v38 = OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v38);
    OUTLINED_FUNCTION_89_6();
    *v40 = v39 + 70;
    v40[1] = v31;
    OUTLINED_FUNCTION_2_34(v41);
    OUTLINED_FUNCTION_94();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_19_14(v42);

LABEL_34:
    v59 = sub_267D248A8;
    v57 = 0;
    v58 = 0;
LABEL_35:
    sub_267D21690(v57, v58, 0, v59, v14);
    goto LABEL_36;
  }

  if (v3)
  {
    if (qword_280228738 != -1)
    {
      swift_once();
    }

    v43 = OUTLINED_FUNCTION_91_1();
    if (sub_267BC2F78(v43, v44, v45))
    {

      v46 = sub_267EF89F8();
      v14 = sub_267EF95D8();

      if (os_log_type_enabled(v46, v14))
      {
        v47 = OUTLINED_FUNCTION_48();
        v48 = OUTLINED_FUNCTION_52();
        v86[0] = v48;
        *v47 = 136315138;
        v49 = OUTLINED_FUNCTION_91_1();
        *(v47 + 4) = sub_267BA33E8(v49, v50, v51);
        _os_log_impl(&dword_267B93000, v46, v14, "#ShareThisFlow we don't have a sharing attachment but the foreground app is known: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_45_2();
      }

      v52 = OUTLINED_FUNCTION_81_6();
      OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v52);
      OUTLINED_FUNCTION_89_6();
      *v54 = v53 + 68;
      v54[1] = v46;
      OUTLINED_FUNCTION_2_34(v55);
      OUTLINED_FUNCTION_94();
      v56 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v56);

      v57 = OUTLINED_FUNCTION_91_1();
      goto LABEL_35;
    }
  }

  v60 = sub_267EF89F8();
  v61 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v61))
  {
    v62 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v62);
    OUTLINED_FUNCTION_52_8();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  *(v1 + 208) = 1;
  OUTLINED_FUNCTION_94();
  v68 = swift_allocObject();
  OUTLINED_FUNCTION_19_14(v68);

  sub_267D215F8(sub_267D241DC, v61);
LABEL_36:

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D21444(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{

  return sub_267D21BA0(a1, 1, a2, a2, a3, a4);
}

uint64_t sub_267D214B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if ((*(a2 + 65) & 1) == 0)
  {
    v6 = *(a2 + 56);
    if (v6 >= 3 && (*(a2 + 64) & 1) == 0)
    {
      sub_267D240AC(v6);
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v7 = sub_267EF8A08();
      __swift_project_value_buffer(v7, qword_280240FB0);
      v8 = sub_267EF89F8();
      v9 = sub_267EF95C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_267B93000, v8, v9, "#ShareThisFlow updating exitValue with screenshotFallback: true", v10, 2u);
        MEMORY[0x26D60A7B0](v10, -1, -1);
      }

      v11 = *(a2 + 56);
      v12 = *(a2 + 65);
      *(a2 + 56) = v6;
      v13 = *(a2 + 64);
      *(a2 + 64) = 1;
      sub_267D240BC(v11, v13, v12);
    }
  }

  return a3(a1);
}

uint64_t sub_267D215F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_94();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;

  sub_267E4B280();
}

void sub_267D21850()
{
  OUTLINED_FUNCTION_48_0();
  v18[1] = v0;
  v2 = v1;
  v3 = sub_267EF4228();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v12);
  v14 = (v18 - v13);
  v15 = OUTLINED_FUNCTION_63();
  sub_267BB170C(v15, v16, &qword_2802295B8, &qword_267EFDCB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v19[0] = *v14;
  }

  else
  {
    (*(v5 + 32))(v9, v14, v3);
    sub_267D219F0();
    (*(v5 + 8))(v9, v3);
  }

  v20 = EnumCaseMultiPayload == 1;
  v2(v19);
  sub_267B9F98C(v19, &unk_28022A480, &unk_267F029F0);
  OUTLINED_FUNCTION_47();
}

void sub_267D219F0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_26_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v10 = OUTLINED_FUNCTION_61_4();
  v11(v10);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v12 = OUTLINED_FUNCTION_61_4();
  v13(v12);
  __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v14 = sub_267EF4158();
  OUTLINED_FUNCTION_79_5(v9, v15, v16, v14);
  v17 = sub_267EF4CC8();
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18 = MEMORY[0x277D5C1D8];
  v3[3] = v17;
  v3[4] = v18;
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_267EF3F48();
  sub_267B9F98C(v19, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v9, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v21);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D21BA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v12 = sub_267EF4028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  sub_267BB170C(a1, v47, &unk_28022A480, &unk_267F029F0);
  if (v48)
  {
    v42 = v13;
    v43 = a5;
    v17 = *&v47[0];
    v18 = *(a3 + 56);
    v19 = *(a3 + 65);
    *(a3 + 56) = *&v47[0];
    v20 = a6;
    v21 = *(a3 + 64);
    *(a3 + 64) = 256;

    v44 = v20;

    v22 = v17;
    sub_267D240BC(v18, v21, v19);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    v24 = v17;
    v25 = sub_267EF89F8();
    v26 = sub_267EF95E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v27 = 136315138;
      v45[0] = v17;
      v28 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v29 = sub_267EF9098();
      v31 = sub_267BA33E8(v29, v30, v46);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_267B93000, v25, v26, "#ShareThisFlow failed to make output: %s", v27, 0xCu);
      v32 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x26D60A7B0](v32, -1, -1);
      MEMORY[0x26D60A7B0](v27, -1, -1);
    }

    v33 = v43;
    v34 = v42;
    sub_267EF4018();
    sub_267D214B0(v15, a4, v33);

    (*(v34 + 8))(v15, v12);
  }

  else
  {
    sub_267B9A5E8(v47, v46);
    v35 = *(a3 + 40);
    v36 = *(a3 + 48);
    __swift_project_boxed_opaque_existential_0((a3 + 16), v35);
    v37 = *(v36 + 32);

    v37(v45, v35, v36);
    __swift_project_boxed_opaque_existential_0(v45, v45[3]);
    v38 = swift_allocObject();
    *(v38 + 16) = a2 & 1;
    *(v38 + 24) = a3;
    *(v38 + 32) = sub_267D241E8;
    *(v38 + 40) = v16;

    sub_267EF4168();

    __swift_destroy_boxed_opaque_existential_0(v46);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }
}

void sub_267D21FA8()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_267EF4028();
  OUTLINED_FUNCTION_58();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  sub_267BB170C(v9, v37, &unk_28022A480, &unk_267F029F0);
  if (v38)
  {
    v17 = *&v37[0];
    v18 = *(v1 + 56);
    v19 = *(v1 + 65);
    *(v1 + 56) = *&v37[0];
    v20 = *(v1 + 64);
    *(v1 + 64) = 256;
    v21 = v17;
    sub_267D240BC(v18, v20, v19);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v23 = v17;
    v24 = sub_267EF89F8();
    v25 = sub_267EF95E8();

    if (os_log_type_enabled(v24, v25))
    {
      v33 = OUTLINED_FUNCTION_48();
      v34 = OUTLINED_FUNCTION_52();
      v35[0] = v17;
      v36[0] = v34;
      *v33 = 136315138;
      v26 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v27 = sub_267EF9098();
      v29 = sub_267BA33E8(v27, v28, v36);

      *(v33 + 4) = v29;
      _os_log_impl(&dword_267B93000, v24, v25, "#ShareThisFlow failed to make output: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    sub_267EF4018();
    v5(v16);

    (*(v12 + 8))(v16, v10);
  }

  else
  {
    sub_267B9A5E8(v37, v36);
    v30 = *(v1 + 40);
    v31 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), v30);
    (*(v31 + 32))(v35, v30, v31);
    __swift_project_boxed_opaque_existential_0(v35, v35[3]);
    OUTLINED_FUNCTION_65_3();
    v32 = swift_allocObject();
    *(v32 + 16) = v7 & 1;
    *(v32 + 24) = v1;
    *(v32 + 32) = v5;
    *(v32 + 40) = v3;

    sub_267EF4168();

    __swift_destroy_boxed_opaque_existential_0(v36);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267D222E8(void *a1, char a2, char a3, uint64_t a4, void (*a5)(void))
{
  v10 = sub_267EF4028();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = *(a4 + 56);
    v15 = *(a4 + 65);
    *(a4 + 56) = a1;
    v16 = *(a4 + 64);
    *(a4 + 64) = 256;
    v17 = a1;
    sub_267D240BC(v14, v16, v15);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = a1;
    v20 = sub_267EF89F8();
    v21 = sub_267EF95E8();
    sub_267C16E28(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = a1;
      v32 = v30;
      *v22 = 136315138;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v24 = sub_267EF9098();
      v26 = a5;
      v27 = sub_267BA33E8(v24, v25, &v32);

      *(v22 + 4) = v27;
      a5 = v26;
      _os_log_impl(&dword_267B93000, v20, v21, "#ShareThisFlow error prompting for screenshot: %s", v22, 0xCu);
      v28 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v22, -1, -1);
    }
  }

  else if (a3)
  {
    sub_267D14DAC();
    return;
  }

  sub_267EF4018();
  a5(v13);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_267D22594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_45_2();
  }

  v87 = &type metadata for Features;
  v88 = sub_267BAFCAC();
  LOBYTE(v86) = 16;
  v14 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v86);
  if (v14)
  {
    goto LABEL_20;
  }

  sub_267B9AFEC((v3 + 21), &v86);
  __swift_project_boxed_opaque_existential_0(&v86, v87);
  v15 = OUTLINED_FUNCTION_63();
  v16(v15);
  if (!v17)
  {
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0(&v86);
  sub_267B9AFEC((v3 + 21), &v86);
  __swift_project_boxed_opaque_existential_0(&v86, v87);
  v18 = OUTLINED_FUNCTION_63();
  v20 = v19(v18);
  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_0(&v86);
    goto LABEL_15;
  }

  if (v20 == 0xD000000000000013 && v21 == 0x8000000267F10280)
  {

LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(&v86);
LABEL_20:
    v38 = [objc_allocWithZone(MEMORY[0x277D79EA0]) initWithSurface_];
    v39 = [objc_allocWithZone(MEMORY[0x277D7A170]) init];
    v40 = sub_267EF89F8();
    v41 = sub_267EF95D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *&v86 = swift_slowAlloc();
      *v42 = 136315394;
      v82 = a1;
      v43 = [v39 identifier];
      v81 = v38;
      v44 = a2;
      v45 = sub_267EF9028();
      v47 = v46;

      v48 = sub_267BA33E8(v45, v47, &v86);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = [v39 displayString];
      v50 = sub_267EF9028();
      v52 = v51;

      v53 = v50;
      a2 = v44;
      v38 = v81;
      v54 = sub_267BA33E8(v53, v52, &v86);
      a1 = v82;

      *(v42 + 14) = v54;
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    v60 = swift_allocObject();
    v61 = sub_267BA9F38(0, &unk_28022ADF0, 0x277D79EC8);
    v62 = v39;
    v63 = v38;
    v64 = OUTLINED_FUNCTION_73();
    v60[2] = sub_267D22C98(v64, v65);
    v60[5] = v61;
    v60[6] = &off_2878D2818;
    sub_267BB170C((v3 + 10), &v84, &qword_28022ADD8, &unk_267F04200);
    if (v85)
    {
      sub_267B9A5E8(&v84, &v86);
      __swift_destroy_boxed_opaque_existential_0(v60 + 2);
      sub_267B9A5E8(&v86, (v60 + 2));
    }

    else
    {
      sub_267B9F98C(&v84, &qword_28022ADD8, &unk_267F04200);
    }

    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    OUTLINED_FUNCTION_94();
    v66 = swift_allocObject();
    *(v66 + 2) = v3;
    *(v66 + 3) = a1;
    *(v66 + 4) = a2;
    v67 = a2;
    v68 = type metadata accessor for ScreenshotDelegate();
    v69 = objc_allocWithZone(v68);
    v70 = &v69[OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback];
    *v70 = sub_267D24160;
    v70[1] = v66;
    v83.receiver = v69;
    v83.super_class = v68;

    v71 = objc_msgSendSuper2(&v83, sel_init);
    swift_unownedRelease();
    v72 = v3[27];
    v3[27] = v71;
    v73 = v71;

    __swift_mutable_project_boxed_opaque_existential_1((v60 + 2), v60[5]);
    v74 = OUTLINED_FUNCTION_54_0();
    v75(v74);
    v76 = [objc_allocWithZone(MEMORY[0x277D47B18]) init];
    [v76 setShouldHideSiri_];
    __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
    v77 = OUTLINED_FUNCTION_54_0();
    v78(v77);
    __swift_project_boxed_opaque_existential_0(&v86, v87);
    OUTLINED_FUNCTION_65_3();
    v79 = swift_allocObject();
    v79[2] = v60;
    v79[3] = v3;
    v79[4] = a1;
    v79[5] = v67;
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);

    sub_267EF4268();

    __swift_destroy_boxed_opaque_existential_0(&v86);
  }

  v23 = OUTLINED_FUNCTION_80_3(v20, v21);

  __swift_destroy_boxed_opaque_existential_0(&v86);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_15:
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v25))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_18_2();
  }

  v31 = OUTLINED_FUNCTION_81_6();
  v32 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v31);
  *v33 = 0xD000000000000032;
  v33[1] = v24;
  OUTLINED_FUNCTION_2_34(v32);
  OUTLINED_FUNCTION_94();
  v34 = swift_allocObject();
  v34[2] = v3;
  v34[3] = a1;
  v34[4] = a2;

  v35 = OUTLINED_FUNCTION_10_5();
  sub_267D21690(v35, v36, 0, v37, v34);
}

id sub_267D22C98(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContextualAction:a1 actionContext:a2];

  return v4;
}

uint64_t sub_267D22CF4(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v81 = a4;
  v9 = sub_267EF8818();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_267EF2BA8();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v69 - v15;
  v16 = sub_267EF4028();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v19 = *(a3 + 40);
  v20 = *(a3 + 48);
  __swift_project_boxed_opaque_existential_0((a3 + 16), v19);
  (*(v20 + 16))(v82, v19, v20);

  __swift_project_boxed_opaque_existential_0(v82, v82[3]);
  v21 = [objc_allocWithZone(MEMORY[0x277D47B18]) init];
  sub_267EF4248();

  __swift_destroy_boxed_opaque_existential_0(v82);
  swift_unownedRetainStrong();
  v22 = *(a3 + 216);
  *(a3 + 216) = 0;

  if (a2)
  {
    swift_unownedRetainStrong();
    v23 = *(a3 + 56);
    v24 = *(a3 + 65);
    *(a3 + 56) = a1;
    v25 = *(a3 + 64);
    *(a3 + 64) = 256;
    v26 = a1;
    sub_267D240BC(v23, v25, v24);

    sub_267EF4018();
    v81(v18);
  }

  else
  {
    v72 = v18;
    v27 = v81;
    if (a1 && sub_267BAF0DC(a1))
    {
      sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
      v71 = a5;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x26D609870](0, a1);
      }

      else
      {
        v28 = *(a1 + 32);
      }

      v29 = v28;
      v30 = v78;
      v31 = v74;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v32 = sub_267EF8A08();
      __swift_project_value_buffer(v32, qword_280240FB0);
      v33 = v29;
      v34 = sub_267EF89F8();
      v35 = sub_267EF95D8();

      v36 = &off_279C2E000;
      if (os_log_type_enabled(v34, v35))
      {
        v37 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v82[0] = v70;
        *v37 = 136315138;
        v38 = v35;
        v39 = [v33 fileURL];
        sub_267EF2B48();

        v40 = sub_267EF2AC8();
        v42 = v41;
        v43 = v73;
        (*(v73 + 8))(v78, v31);
        v44 = sub_267BA33E8(v40, v42, v82);
        v30 = v78;

        *(v37 + 4) = v44;
        v45 = v38;
        v36 = &off_279C2E000;
        _os_log_impl(&dword_267B93000, v34, v45, "#ShareThisFlow got contextual action output file with URL: %s", v37, 0xCu);
        v46 = v70;
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x26D60A7B0](v46, -1, -1);
        MEMORY[0x26D60A7B0](v37, -1, -1);
      }

      else
      {

        v43 = v73;
      }

      sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
      v52 = [v33 v36[436]];
      sub_267EF2B48();

      v53 = [v33 v36[436]];
      sub_267EF2B48();

      v54 = v30;
      v55 = sub_267EF2AE8();
      v57 = v56;
      (*(v43 + 8))(v14, v31);
      v58 = v75;
      sub_267EF87D8();
      v59 = sub_267EF8768();
      v61 = v60;
      (*(v76 + 8))(v58, v77);
      v62 = sub_267E0C800(v54, v55, v57, v59, v61);
      v63 = [objc_opt_self() attachmentWithFile_];
      swift_unownedRetainStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_267EFCA40;
      *(v64 + 32) = v63;
      v65 = *(a3 + 56);
      LOBYTE(v55) = *(a3 + 65);
      *(a3 + 56) = v64;
      v66 = *(a3 + 64);
      *(a3 + 64) = 0;
      v67 = v63;
      sub_267D240BC(v65, v66, v55);

      v18 = v72;
      sub_267EF4018();
      v81(v18);
    }

    else
    {
      swift_unownedRetainStrong();
      sub_267C266B0();
      v47 = swift_allocError();
      *v48 = 0xD000000000000040;
      v48[1] = 0x8000000267F17580;
      v49 = *(a3 + 56);
      v50 = *(a3 + 65);
      *(a3 + 56) = v47;
      v51 = *(a3 + 64);
      *(a3 + 64) = 0;
      *(a3 + 65) = 1;
      sub_267D240BC(v49, v51, v50);

      v18 = v72;
      sub_267EF4018();
      v27(v18);
    }
  }

  return (*(v79 + 8))(v18, v80);
}

uint64_t sub_267D23404(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v56 = a5;
  v53 = a3;
  v51 = a2;
  v7 = sub_267EF4028();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267EF43D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  sub_267BB170C(a1, &v47 - v17, &qword_28022AE08, &unk_267F04210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = a4;
    (*(v10 + 32))(v15, v18, v9);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = *(v10 + 16);
    v20(v13, v15, v9);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v49 = v23;
      v50 = swift_slowAlloc();
      *v23 = 138412290;
      sub_267D2483C(&unk_28022AE10, MEMORY[0x277D5BE90], MEMORY[0x277D5BE98]);
      swift_allocError();
      v20(v24, v13, v9);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v10 + 8);
      v48 = v20;
      v26(v13, v9);
      v27 = v49;
      v28 = v50;
      *(v49 + 1) = v25;
      *v28 = v25;
      v29 = v22;
      v30 = v27;
      _os_log_impl(&dword_267B93000, v21, v29, "#ShareThisFlow SAUISetUpdateMask returned error: %@", v27, 0xCu);
      sub_267B9F98C(v28, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v30, -1, -1);

      v31 = v48;
    }

    else
    {

      v26 = *(v10 + 8);
      v31 = v20;
      v26(v13, v9);
    }

    sub_267D2483C(&unk_28022AE10, MEMORY[0x277D5BE90], MEMORY[0x277D5BE98]);
    v40 = swift_allocError();
    v31(v41, v15, v9);
    v42 = v53;
    v43 = *(v53 + 56);
    v44 = *(v53 + 65);
    *(v53 + 56) = v40;
    v45 = *(v42 + 64);
    *(v42 + 64) = 256;
    sub_267D240BC(v43, v45, v44);
    v46 = v52;
    sub_267EF4018();
    v51(v46);
    (*(v54 + 8))(v46, v55);
    return (v26)(v15, v9);
  }

  else
  {
    sub_267B9F98C(v18, &qword_28022AE08, &unk_267F04210);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v32 = sub_267EF8A08();
    __swift_project_value_buffer(v32, qword_280240FB0);
    v33 = sub_267EF89F8();
    v34 = sub_267EF95D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_267B93000, v33, v34, "#ShareThisFlow SAUISetUpdateMask to hide succeeded", v35, 2u);
      MEMORY[0x26D60A7B0](v35, -1, -1);
    }

    v36 = v51;
    swift_beginAccess();
    sub_267B9AFEC(v36 + 16, v57);
    v37 = v58;
    v38 = v59;
    __swift_project_boxed_opaque_existential_0(v57, v58);
    (*(v38 + 32))(v37, v38);
    return __swift_destroy_boxed_opaque_existential_0(v57);
  }
}

void sub_267D239F0()
{
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_54_0();
  v2(v1);
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  OUTLINED_FUNCTION_54_0();
  sub_267EF45A8();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    v4 = OUTLINED_FUNCTION_108();
    v5(v4);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_267D23B2C()
{
  sub_267D240BC(*(v0 + 56), *(v0 + 64), *(v0 + 65));

  sub_267B9F98C(v0 + 80, &qword_28022ADD8, &unk_267F04200);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9F98C(v0 + 344, &unk_28022ADE0, &qword_267F0AA60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 384));
  return __swift_destroy_boxed_opaque_existential_0((v0 + 424));
}

uint64_t sub_267D23BD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267D240BC(*(v0 + 56), *(v0 + 64), *(v0 + 65));

  sub_267B9F98C(v0 + 80, &qword_28022ADD8, &unk_267F04200);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9F98C(v0 + 344, &unk_28022ADE0, &qword_267F0AA60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 384));
  __swift_destroy_boxed_opaque_existential_0((v0 + 424));
  return v0;
}

uint64_t sub_267D23C80()
{
  sub_267D23BD0();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ShareThisFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShareThisFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow15ShareThisResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267D23E54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 9))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267D23EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_267D23F04(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_267D23F38()
{
  result = qword_28022ADD0;
  if (!qword_28022ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ADD0);
  }

  return result;
}

uint64_t sub_267D23FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BAEBEC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

id sub_267D24080@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 65);
  *a1 = v3;
  v5 = *(v2 + 64);
  *(a1 + 8) = v5;
  *(a1 + 9) = v4;
  return sub_267D240A0(v3, v5, v4);
}

id sub_267D240A0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_267D240AC(a1);
  }
}

unint64_t sub_267D240AC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void sub_267D240BC(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_267D240C8(a1);
  }
}

unint64_t sub_267D240C8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

id sub_267D240D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_267EF8FF8();

  v6 = sub_267EF8FF8();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

uint64_t objectdestroy_49Tm()
{

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_46Tm()
{

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_267D24244()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v4[1] = sub_267BBD07C;

  return sub_267D1F300(v2, v0);
}

uint64_t sub_267D24300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_12_19(v11);
  OUTLINED_FUNCTION_36_0();

  return sub_267E99430();
}

uint64_t sub_267D24398()
{
  OUTLINED_FUNCTION_31_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_19(v3);

  return sub_267D1C930(v5, v6, v7, v8, v9, v1);
}

uint64_t objectdestroy_40Tm()
{

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

unint64_t sub_267D24494()
{
  result = qword_28022AE80;
  if (!qword_28022AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AE80);
  }

  return result;
}

uint64_t sub_267D244E8(void *a1)
{
  v2 = [a1 associatedBundleIdentifier];

  if (v2)
  {
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_108();
}

uint64_t sub_267D24554(void *a1)
{
  v1 = [a1 associatedBundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267D245B4(void *a1)
{
  v2 = [a1 applicationContexts];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022AEE8, 0x277CEF170);
  v3 = sub_267EF92F8();

  return v3;
}

unint64_t sub_267D2462C()
{
  result = qword_28022AEB0;
  if (!qword_28022AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AEA8, &qword_267F04270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AEB0);
  }

  return result;
}

uint64_t objectdestroy_85Tm()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v0, v1, 7);
}

uint64_t sub_267D246E0()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_19(v1);
  OUTLINED_FUNCTION_36_0();

  return sub_267D16210(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_37Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267D2483C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for EditMessageCATs(uint64_t a1)
{
  result = qword_28022AFD0;
  if (!qword_28022AFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267D24940()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BF1CB4;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D249F0(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267D24A08()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x6552656E4F736168;
  *(v2 + 40) = 0xEF746E6569706963;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BF0];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_1_5(v3);
  *(v0 + 32) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_267D24B30;
  v6 = *(v0 + 16);

  return v8(v6, 0xD00000000000002DLL, 0x8000000267F179C0, v2);
}

uint64_t sub_267D24B30()
{
  OUTLINED_FUNCTION_12();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v2 = v5;
  *(v5 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB73B4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v3();
  }
}

uint64_t sub_267D24C5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267D24C74()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_267D24DBC;
  v5 = v0[2];

  return v7(v5, 0xD00000000000002DLL, 0x8000000267F17990, v2);
}

uint64_t sub_267D24DBC()
{
  OUTLINED_FUNCTION_12();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v2 = v5;
  *(v5 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CE920C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v3();
  }
}

uint64_t sub_267D24EE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D24F98()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D25048()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D250F8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D251A8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D252AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF7B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_267EF78B8();
  (*(v6 + 8))(a2, v5);
  sub_267BB2D24(a1);
  return v11;
}

id sub_267D25420()
{
  v0 = sub_267EF67F8();
  result = [objc_allocWithZone(v0) init];
  qword_280240AD8 = v0;
  unk_280240AE0 = &off_2878D78B8;
  qword_280240AC0 = result;
  return result;
}

id sub_267D25470()
{
  result = sub_267D25490();
  qword_280240AE8 = result;
  return result;
}

id sub_267D25490()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  [v0 setCountLimit_];
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277CBD140];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_267D25914;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_267D256EC;
  v8[3] = &block_descriptor_12;
  v4 = _Block_copy(v8);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();

  return v5;
}

id sub_267D255F4(uint64_t a1, void *a2)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267B93000, v4, v5, "#INObjects+DialogObjectConversion received a contact change notification, clearing cache", v6, 2u);
    MEMORY[0x26D60A7B0](v6, -1, -1);
  }

  return [a2 removeAllObjects];
}

uint64_t sub_267D256EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_267EF2748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_267EF2738();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_267D257E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  result = [v0 setCountLimit_];
  qword_280240AF0 = v0;
  return result;
}

uint64_t sub_267D25830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 1;
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
    case 8:
      sub_267EF90F8();
      v3 = 0;
      break;
    default:
      break;
  }

  v4 = sub_267EF79B8();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

_BYTE *storeEnumTagSinglePayload for NetworkErrors(_BYTE *result, int a2, int a3)
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

unint64_t sub_267D259CC()
{
  result = qword_28022AFE0;
  if (!qword_28022AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AFE0);
  }

  return result;
}

uint64_t type metadata accessor for MessageEntityRepresentation(uint64_t a1)
{
  result = qword_28022AFE8;
  if (!qword_28022AFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267D25AAC(uint64_t a1)
{
  v2 = sub_267EF7F68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_267EF7FC8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_267D25BB4()
{
  sub_267EF7FB8();

  return swift_deallocClassInstance();
}

uint64_t sub_267D25CC0(uint64_t a1)
{
  v3 = sub_267D26000(&qword_28022B038, &unk_267F0453C);

  return MEMORY[0x28213DE00](a1, v1, v3);
}

uint64_t sub_267D25D1C()
{
  v1 = sub_267D26000(&qword_28022B028, &unk_267F045C4);

  return MEMORY[0x28213DB58](v0, v1);
}

uint64_t sub_267D25D8C(uint64_t a1)
{
  v3 = sub_267D26000(&qword_28022B038, &unk_267F0453C);

  return MEMORY[0x28213DDE8](a1, v1, v3);
}

uint64_t sub_267D25DE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267EF7F88();
  *a1 = result;
  return result;
}

uint64_t sub_267D26000(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessageEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267D26048(uint64_t a1)
{
  if ((a1 - 2000) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 2000;
  }
}

_BYTE *storeEnumTagSinglePayload for TapbackRepresentation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267D26144()
{
  result = qword_28022B040;
  if (!qword_28022B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B040);
  }

  return result;
}

uint64_t sub_267D261BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267D26048(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_267D261E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267D2605C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_267D2623C(uint64_t a1)
{
  v2 = sub_267D26690();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_267D26278(uint64_t a1)
{
  v2 = sub_267D26690();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_267D262B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267D26528();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_267D26300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267D26690();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_267D26368(uint64_t a1, uint64_t a2)
{
  v4 = sub_267D26528();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_267D263B8()
{
  result = qword_28022B048;
  if (!qword_28022B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B048);
  }

  return result;
}

unint64_t sub_267D26410()
{
  result = qword_28022B050;
  if (!qword_28022B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B050);
  }

  return result;
}

unint64_t sub_267D26468()
{
  result = qword_28022B058;
  if (!qword_28022B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022B060, &qword_267F04798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B058);
  }

  return result;
}

unint64_t sub_267D264D0()
{
  result = qword_28022B068;
  if (!qword_28022B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B068);
  }

  return result;
}

unint64_t sub_267D26528()
{
  result = qword_28022B070;
  if (!qword_28022B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B070);
  }

  return result;
}

unint64_t sub_267D26580()
{
  result = qword_28022B078;
  if (!qword_28022B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B078);
  }

  return result;
}

unint64_t sub_267D265D8()
{
  result = qword_28022B080;
  if (!qword_28022B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B080);
  }

  return result;
}

unint64_t sub_267D2663C()
{
  result = qword_28022B088;
  if (!qword_28022B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B088);
  }

  return result;
}

unint64_t sub_267D26690()
{
  result = qword_28022B090;
  if (!qword_28022B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B090);
  }

  return result;
}

uint64_t sub_267D266E8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);

  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    *v3 = 136315138;
    v9 = v4;
    sub_267EF7C38();
    sub_267D2707C(&qword_28022A060, 255, MEMORY[0x277D55380], MEMORY[0x277D55390]);
    v5 = sub_267EF9E58();
    v7 = sub_267BA33E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_267B93000, v1, v2, "#FixedAppResolutionOnDeviceFlowStrategy selecting %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4458();
  return sub_267EF4438();
}

void sub_267D2687C()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD000000000000059, 0x8000000267F17C40, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_2_35("Fatal error", 11, 2, 89, 0x8000000267F17C40, "SiriMessagesFlow/FixedAppResolutionOnDeviceFlowStrategy.swift");
  __break(1u);
}

uint64_t sub_267D269B0()
{
  v10 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000056, 0x8000000267F17BE0, &v9);
    OUTLINED_FUNCTION_8_26(&dword_267B93000, v6, v7, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_2_35("Fatal error", 11, 2, 86, 0x8000000267F17BE0, "SiriMessagesFlow/FixedAppResolutionOnDeviceFlowStrategy.swift");
}

void sub_267D26AF4()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD00000000000005BLL, 0x8000000267F17B80, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_2_35("Fatal error", 11, 2, 91, 0x8000000267F17B80, "SiriMessagesFlow/FixedAppResolutionOnDeviceFlowStrategy.swift");
  __break(1u);
}

uint64_t sub_267D26C28()
{
  v10 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000058, 0x8000000267F17AE0, &v9);
    OUTLINED_FUNCTION_8_26(&dword_267B93000, v6, v7, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_2_35("Fatal error", 11, 2, 88, 0x8000000267F17AE0, "SiriMessagesFlow/FixedAppResolutionOnDeviceFlowStrategy.swift");
}

uint64_t sub_267D26D90()
{
  v1 = sub_267D266E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_267D26DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BA008](a1, a2, a3, a4);
}

uint64_t sub_267D26EC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267D2699C();
}

uint64_t sub_267D26F60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267D26C14();
}

uint64_t sub_267D2707C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267D270C4(uint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0A8, &qword_267F04AE8);
  OUTLINED_FUNCTION_58();
  v84 = v7;
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v79 - v10;
  v12 = sub_267EF8AE8();
  OUTLINED_FUNCTION_58();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v86 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v17 = sub_267EF8A08();
  v18 = __swift_project_value_buffer(v17, qword_280240FB0);

  v87 = v18;
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v81 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v82 = v2;
    v80 = v23;
    v89 = v23;
    *v22 = 136315138;
    v24 = sub_267EF66B8();
    v26 = v11;
    v27 = a1;
    v28 = a2;
    v29 = v14;
    v30 = sub_267BA33E8(v24, v25, &v89);

    *(v22 + 4) = v30;
    v14 = v29;
    a2 = v28;
    a1 = v27;
    v11 = v26;
    _os_log_impl(&dword_267B93000, v19, v20, "#ReferenceResolution calling SRR for resolving %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    v3 = v82;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    v12 = v81;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v31);
  sub_267EBD060(a1, v31, v32);
  sub_267BBE6E0(v33, v11);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_267D279A4(v11);
LABEL_7:
    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v35))
    {
      OUTLINED_FUNCTION_14_0();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v36);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v37, v38, "#ReferenceResolution reference not found");
      v39 = OUTLINED_FUNCTION_3_35();
      MEMORY[0x26D60A7B0](v39);
    }

    return 1;
  }

  v41 = v86;
  (*(v14 + 32))(v86, v11, v12);
  sub_267BCA2C8();
  v42 = sub_267EF8A98();
  if (v3)
  {
  }

  else
  {
    v40 = v42;
    if (v42)
    {
      v49 = sub_267EF89F8();
      v50 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v50))
      {
        OUTLINED_FUNCTION_14_0();
        v51 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v51);
        OUTLINED_FUNCTION_4_5(&dword_267B93000, v52, v53, "#ReferenceResolution calling SRR resolved to an INPerson");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      [v40 setCustomIdentifier_];
      v54 = OUTLINED_FUNCTION_1_40();
      v55(v54);
      return v40;
    }
  }

  sub_267EF8AD8();
  sub_267EF5C28();
  OUTLINED_FUNCTION_6_26();

  if (v89)
  {
    v43 = sub_267EF89F8();
    v44 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v44))
    {
      OUTLINED_FUNCTION_14_0();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v45);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v46, v47, "#ReferenceResolution calling SRR resolved to a common_Person");
      v48 = OUTLINED_FUNCTION_3_35();
      MEMORY[0x26D60A7B0](v48);

      (*(v14 + 8))(v41, v12);
    }

    else
    {

      v62 = OUTLINED_FUNCTION_1_40();
      v64(v62, v63);
    }

    return 0;
  }

  sub_267EF8AD8();
  sub_267EF5BC8();
  OUTLINED_FUNCTION_6_26();

  if (v89)
  {
    v56 = sub_267EF89F8();
    v57 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v57))
    {
      OUTLINED_FUNCTION_14_0();
      v58 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v58);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v59, v60, "#ReferenceResolution calling SRR resolved to a common_Group");
      v61 = OUTLINED_FUNCTION_3_35();
      MEMORY[0x26D60A7B0](v61);
    }

    (*(v14 + 8))(v86, v12);
    return 0;
  }

  else
  {
    sub_267EF8AD8();
    sub_267EF5B98();
    OUTLINED_FUNCTION_6_26();

    v65 = v89;
    if (!v89)
    {
      v75 = OUTLINED_FUNCTION_1_40();
      v76(v75);
      goto LABEL_7;
    }

    v66 = sub_267EF89F8();
    v67 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v67))
    {
      OUTLINED_FUNCTION_14_0();
      v68 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v68);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v69, v70, "#ReferenceResolution calling SRR resolved to a common_Agent");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v71 = v83;
    sub_267EF7018();
    v72 = v85;
    v73 = sub_267EF7068();
    (*(v84 + 8))(v71, v72);
    v89 = v65;
    v73(&v88, &v89);

    v77 = OUTLINED_FUNCTION_1_40();
    v78(v77);

    return 0;
  }
}

uint64_t sub_267D27798@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
    sub_267EF97D8();

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (a2)
  {

    sub_267EF5BE8();

    goto LABEL_5;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95E8();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_14_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v12);
    _os_log_impl(&dword_267B93000, v10, v11, "#ReferenceResolution not resolved to person", v3, 2u);
    v13 = OUTLINED_FUNCTION_3_35();
    MEMORY[0x26D60A7B0](v13);
  }

  v6 = 1;
LABEL_6:
  v7 = sub_267EF6A08();

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t sub_267D278C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5FEE0];
  v3 = sub_267EF8AF8();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_267D279A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_267D27A0C(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = a1;
  v2[6] = a2;
  return v2;
}

uint64_t sub_267D27A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v8 = v6[8];
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v9);
  v11 = *(v10 + 16);
  v12 = v8;
  v11(v15, v9, v10);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v3;

  sub_267C86088(v7, v12, v15, sub_267D28AB8, v13);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_267D27B20(void *a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    v4 = qword_280240FC8;
    v5 = sub_267EF95E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_267EFC020;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    sub_267EF9C58();
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_267BFBEB4();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_267EF8998("Failed to append new messages with error:", 41, 2, &dword_267B93000, v4, v5, v6);
  }

  else
  {
    sub_267D27C88(a1);
  }

  return a3(0);
}

uint64_t sub_267D27C88(void *a1)
{
  v2 = v1;
  v3 = sub_267D27D3C(a1);
  sub_267E2D070(v3, MEMORY[0x277D84F90]);
  if (sub_267BAF0DC(v3))
  {
    sub_267BBD0EC(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D609870](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }
  }

  else
  {

    v4 = 0;
  }

  *(v2 + 32) = v4;
}

uint64_t sub_267D27D3C(void *a1)
{
  v2 = v1;
  v4 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_267C86CD0(a1);
  if (v10)
  {
    v11 = v10;
    v12 = sub_267BAF0DC(v10);
    if (v12)
    {
      v13 = v12;
      v44 = v9;
      v45 = v6;
      v46 = v4;
      v14 = 0;
      v49[0] = MEMORY[0x277D84F90];
      v47 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v13 == v14)
        {
          v23 = v49[0];
          if (qword_280228820 != -1)
          {
            OUTLINED_FUNCTION_0_6(&qword_280228820);
          }

          v24 = qword_280240FC8;
          sub_267EF95D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_267EFCC90;
          v26 = sub_267BAF0DC(v23);
          v27 = MEMORY[0x277D83B88];
          v28 = MEMORY[0x277D83C10];
          *(v25 + 56) = MEMORY[0x277D83B88];
          *(v25 + 64) = v28;
          *(v25 + 32) = v26;
          v29 = sub_267BAF0DC(v11);

          *(v25 + 96) = v27;
          *(v25 + 104) = v28;
          *(v25 + 72) = v29;
          sub_267EF8998("Found %d messages to append as new conversation out of %d retrieved messages", v43, v44);

          if (sub_267BAF0DC(v23))
          {
            v30 = *(v2 + 48);
            v31 = *(*(v2 + 40) + 128);
            v32 = v30[5];
            v33 = v30[6];
            __swift_project_boxed_opaque_existential_0(v30 + 2, v32);
            v34 = *(v33 + 8);

            v34(v49, v32, v33);
            __swift_project_boxed_opaque_existential_0(v49, v49[3]);
            v35 = v44;
            sub_267EF3B68();
            LOBYTE(v30) = v30[11] != 0;
            sub_267EF42D8();
            sub_267EF6FF8();
            sub_267EF6FE8();
            sub_267EF6FB8();

            sub_267EF42C8();

            v36 = sub_267BDD444(v23, v31, v48, 0, 2u, 0, 0, v35, 0, 0, v30);

            __swift_destroy_boxed_opaque_existential_0(v48);
            (*(v45 + 8))(v35, v46);
            __swift_destroy_boxed_opaque_existential_0(v49);
            sub_267EF95D8();
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_267EFC020;
            v38 = sub_267BAF0DC(v36);
            *(v37 + 56) = MEMORY[0x277D83B88];
            *(v37 + 64) = MEMORY[0x277D83C10];
            *(v37 + 32) = v38;
            sub_267EF8998("Found %d new conversations to append to the request", v43);
          }

          else
          {

            v42 = sub_267EF95D8();
            v36 = MEMORY[0x277D84F90];
            sub_267EF8998("Found no valid messages to append, moving on..", 46, 2, &dword_267B93000, v24, v42, MEMORY[0x277D84F90]);
          }

          return v36;
        }

        if (v47)
        {
          v15 = MEMORY[0x26D609870](v14, v11);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v17 = *(v2 + 48);
        swift_beginAccess();
        v18 = *(v17 + 144);

        v19 = [v16 identifier];
        sub_267EF9028();

        if (*(v18 + 16))
        {
          sub_267BA9948();
          v21 = v20;

          if (v21)
          {

            goto LABEL_17;
          }
        }

        else
        {
        }

        sub_267D282B4(v16);
        if ((v22 & 1) != 0 && [v16 messageType] != 1000)
        {
          sub_267EF9BD8();
          sub_267EF9C08();
          sub_267EF9C18();
          sub_267EF9BE8();
        }

        else
        {
        }

LABEL_17:
        ++v14;
      }
    }
  }

  if (qword_280228820 != -1)
  {
LABEL_30:
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v39 = qword_280240FC8;
  v40 = sub_267EF95D8();
  v36 = MEMORY[0x277D84F90];
  sub_267EF8998("Found no new messages to append, moving on..", 44, 2, &dword_267B93000, v39, v40, MEMORY[0x277D84F90]);
  return v36;
}

void sub_267D282B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v38 - v6;
  v7 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v43 = a1;
  sub_267BDC968(a1);
  if (v21)
  {
    sub_267E2C8B0();
    v23 = v22;

    v24 = sub_267BAF0DC(v23);
    if (v24)
    {
      v25 = v24;
      v47 = MEMORY[0x277D84F90];
      sub_267C725A4(0, v24 & ~(v24 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
        return;
      }

      v39 = v20;
      v40 = v15;
      v41 = v5;
      v26 = 0;
      v27 = v47;
      v45 = v23 & 0xC000000000000001;
      v46 = v25;
      v28 = v7;
      v29 = v23;
      do
      {
        if (v45)
        {
          MEMORY[0x26D609870](v26, v23);
        }

        else
        {
        }

        sub_267DE0D58(v18);

        v47 = v27;
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_267C725A4(v30 > 1, v31 + 1, 1);
          v27 = v47;
        }

        ++v26;
        *(v27 + 16) = v31 + 1;
        v7 = v28;
        (*(v9 + 32))(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v18, v28);
        v23 = v29;
      }

      while (v46 != v26);

      v15 = v40;
      v5 = v41;
      v20 = v39;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    v32 = v44;
    sub_267D286FC(v27, v44);

    if (__swift_getEnumTagSinglePayload(v32, 1, v7) == 1)
    {
      sub_267C1D46C(v32);
    }

    else
    {
      v33 = *(v9 + 32);
      v33(v20, v32, v7);
      v34 = [v43 dateSent];
      if (v34)
      {
        v35 = v34;
        v36 = v42;
        sub_267EF2C98();

        v33(v5, v36, v7);
        __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
        v33(v15, v5, v7);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
        sub_267EF2C28();
        if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
        {
          sub_267C1D46C(v5);
        }
      }

      sub_267EF2C58();
      v37 = *(v9 + 8);
      v37(v15, v7);
      v37(v20, v7);
    }
  }
}

uint64_t sub_267D286FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267EF2CC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v19 = a2;
    v11 = *(v5 + 16);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11(&v19 - v9, v12, v4);
    v13 = (v5 + 32);
    for (i = 1; v20 != i; ++i)
    {
      v11(v8, v12 + *(v5 + 72) * i, v4);
      sub_267D28A70(&qword_28022B0C0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v15 = sub_267EF8FD8();
      v16 = *(v5 + 8);
      if (v15)
      {
        v16(v10, v4);
        (*v13)(v10, v8, v4);
      }

      else
      {
        v16(v8, v4);
      }
    }

    v17 = v19;
    (*v13)(v19, v10, v4);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_267D28A70(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_267D28AC8()
{
  v1 = sub_267E76140(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_267BAF0DC(v1);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
LABEL_11:

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D609870](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = [v5 currentLocation];

      ++v4;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_267D28BAC()
{
  v1 = sub_267BE28D0(v0, &selRef_conversationIdentifier);
  v3 = v2;
  v4 = sub_267EF9028();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_267EF9EA8();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_267D28C4C(void *a1, unint64_t a2)
{
  sub_267ECEE14(a2);

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v3 = sub_267EF92D8();

  v4 = [a1 outgoingMessageType];
  sub_267ED9A2C(a1);
  if (v5)
  {
    v6 = sub_267EF8FF8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 speakableGroupName];
  sub_267BE28D0(a1, &selRef_conversationIdentifier);
  if (v8)
  {
    v9 = sub_267EF8FF8();
  }

  else
  {
    v9 = 0;
  }

  sub_267BE28D0(a1, &selRef_serviceName);
  if (v10)
  {
    v11 = sub_267EF8FF8();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 sender];
  if (sub_267E76140(a1))
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v13 = sub_267EF92D8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v3 outgoingMessageType:v4 content:v6 speakableGroupName:v7 conversationIdentifier:v9 serviceName:v11 sender:v12 attachments:v13];

  v15 = v14;
  v16 = [a1 _metadata];
  [v15 _setMetadata_];

  return v15;
}

uint64_t sub_267D28E98(uint64_t a1)
{
  OUTLINED_FUNCTION_1_41(a1, v21);
  v1 = OUTLINED_FUNCTION_66();
  v3 = objc_getAssociatedObject(v1, v2);
  swift_endAccess();
  if (v3)
  {
    OUTLINED_FUNCTION_8_27();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21[0], v21[1], v22);
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D88, &qword_267EFF528);
    if (OUTLINED_FUNCTION_3_36(&v20, v14, v15, v13, v16, v17))
    {
      return v20;
    }
  }

  else
  {
    sub_267B9FF34(v23, &qword_28022AEF0, &qword_267EFCDE0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267D28F5C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_41(a1, v21);
  v1 = OUTLINED_FUNCTION_66();
  v3 = objc_getAssociatedObject(v1, v2);
  swift_endAccess();
  if (v3)
  {
    OUTLINED_FUNCTION_8_27();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21[0], v21[1], v22);
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0E0, &unk_267F04BE0);
    if (OUTLINED_FUNCTION_3_36(&v20, v14, v15, v13, v16, v17))
    {
      return v20;
    }
  }

  else
  {
    sub_267B9FF34(v23, &qword_28022AEF0, &qword_267EFCDE0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D8, &unk_267F0AC70);
  return sub_267EF8F28();
}

uint64_t sub_267D2904C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_41(a1, v21);
  v1 = OUTLINED_FUNCTION_66();
  v3 = objc_getAssociatedObject(v1, v2);
  swift_endAccess();
  if (v3)
  {
    OUTLINED_FUNCTION_8_27();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  *&v16 = OUTLINED_FUNCTION_0_27(v4, v5, v6, v7, v8, v9, v10, v11, v19[0], v19[1], v19[2], v19[3], v20).n128_u64[0];
  if (v17)
  {
    if (OUTLINED_FUNCTION_3_36(v19, v12, v13, MEMORY[0x277D837D0], v14, v15, v16))
    {
      return v19[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9FF34(v21, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D29108(uint64_t a1)
{
  OUTLINED_FUNCTION_1_41(a1, v22);
  v1 = OUTLINED_FUNCTION_66();
  v3 = objc_getAssociatedObject(v1, v2);
  swift_endAccess();
  if (v3)
  {
    OUTLINED_FUNCTION_8_27();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20[0], v20[1], v20[2], v21);
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D0, &qword_267F04BD8);
    if (OUTLINED_FUNCTION_3_36(v20, v14, v15, v13, v16, v17))
    {
      return v20[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9FF34(v22, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D291CC(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
    sub_267EF8EE8();
  }

  OUTLINED_FUNCTION_4_34(a1);
  OUTLINED_FUNCTION_5_32();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267D29264(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D8, &unk_267F0AC70);
  v1 = sub_267EF8EE8();

  OUTLINED_FUNCTION_1_41(v2, v5);
  v3 = OUTLINED_FUNCTION_66();
  objc_setAssociatedObject(v3, v4, v1, 1);
  swift_endAccess();
}

uint64_t sub_267D292FC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_41(a1, v22);
  v1 = OUTLINED_FUNCTION_66();
  v3 = objc_getAssociatedObject(v1, v2);
  swift_endAccess();
  if (v3)
  {
    OUTLINED_FUNCTION_8_27();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  *&v16 = OUTLINED_FUNCTION_0_27(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20[0], v20[1], v20[2], v21).n128_u64[0];
  if (v17)
  {
    result = OUTLINED_FUNCTION_3_36(v20 + 7, v12, v13, MEMORY[0x277D839B0], v14, v15, v16);
    if (result)
    {
      return HIBYTE(v20[0]);
    }
  }

  else
  {
    sub_267B9FF34(v22, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }

  return result;
}

uint64_t sub_267D293AC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &unk_28022B0CC);
  swift_endAccess();
  if (v3)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v4 = sub_267EF2D28();
    v5 = swift_dynamicCast() ^ 1;
    v6 = a1;
    v7 = v4;
  }

  else
  {
    sub_267B9FF34(v11, &qword_28022AEF0, &qword_267EFCDE0);
    v7 = sub_267EF2D28();
    v6 = a1;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v6, v5, 1, v7);
}

uint64_t sub_267D294C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_267EF8FF8();
  }

  OUTLINED_FUNCTION_4_34(a1);
  OUTLINED_FUNCTION_5_32();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267D2952C(uint64_t a1)
{
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  v1 = sub_267EF92D8();

  OUTLINED_FUNCTION_1_41(v2, v5);
  v3 = OUTLINED_FUNCTION_66();
  objc_setAssociatedObject(v3, v4, v1, 1);
  swift_endAccess();
}

void sub_267D295A8()
{
  v0 = sub_267EF9378();
  OUTLINED_FUNCTION_4_34(v0);
  OUTLINED_FUNCTION_5_32();
  swift_endAccess();
}

uint64_t sub_267D295F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_267C3348C(a1, &v10 - v5);
  v7 = sub_267EF2D28();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v8 = sub_267EF2CF8();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_28022B0CC, v8, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_267B9FF34(a1, &qword_280229430, &qword_267EFD2C0);
}

void *sub_267D29748()
{
  v1 = sub_267BCEA0C(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_267BAF0DC(v1))
    {
      return v2;
    }
  }

  v3 = [v0 speakableGroupName];
  if (v3)
  {
    v2 = v3;
    v4 = [v3 spokenPhrases];
    v5 = sub_267EF92F8();

    v6 = *(v5 + 16);

    if (v6)
    {
      return v2;
    }
  }

  v7 = sub_267BE28D0(v0, &selRef_groupName);
  if (!v8)
  {
    return 0;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
  }

  return 0;
}

uint64_t sub_267D29870()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E18, &unk_267F0D0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_267EF8818();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  result = sub_267E76140(v1);
  if (result)
  {
    v16 = result;
    if (!sub_267BAF0DC(result))
    {

      return 0;
    }

    sub_267BBD0EC(0, (v16 & 0xC000000000000001) == 0, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D609870](0, v16);
    }

    else
    {
      v17 = *(v16 + 32);
    }

    v18 = v17;

    v19 = [v18 audioMessageFile];
    if (v19)
    {
      v20 = v19;

      return 0;
    }

    if ([v18 currentLocation])
    {

      return OUTLINED_FUNCTION_7_26();
    }

    v21 = [v18 sharedLink];
    if (v21)
    {
      v22 = v21;
      sub_267EF2B48();

      v23 = sub_267EF2BA8();
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v23);
      sub_267B9FF34(v14, &qword_280229E20, &unk_267EFDCC0);

      return 0x65676170626577;
    }

    v24 = sub_267EF2BA8();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v24);
    sub_267B9FF34(v14, &qword_280229E20, &unk_267EFDCC0);
    v25 = [v18 file];
    if (v25)
    {
      v26 = v25;
      sub_267E761B0(v25);
      if (v27)
      {
        sub_267EF8828();
        if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
        {

          sub_267B9FF34(v4, &qword_280229E18, &unk_267F0D0C0);
          return 0;
        }

        (*(v6 + 32))(v11, v4, v5);
        sub_267EF87D8();
        v28 = sub_267EF8808();
        v29 = *(v6 + 8);
        v29(v9, v5);
        if (v28)
        {

          v30 = OUTLINED_FUNCTION_66();
          (v29)(v30);
          v31 = 1953458288;
          return v31 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        }

        sub_267EF87E8();
        v32 = sub_267EF8808();
        v29(v9, v5);
        if (v32)
        {

          v33 = OUTLINED_FUNCTION_66();
          (v29)(v33);
          v31 = 1701079414;
          return v31 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        }

        v34 = OUTLINED_FUNCTION_66();
        (v29)(v34);
      }
    }

    return 0;
  }

  return result;
}

id sub_267D29C90(void *a1, void *a2)
{
  if (sub_267BCEA0C(a1))
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v4 = sub_267EF92D8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 outgoingMessageType];
  sub_267ED9A2C(a1);
  if (v6)
  {
    v7 = sub_267EF8FF8();
  }

  else
  {
    v7 = 0;
  }

  sub_267BE28D0(a1, &selRef_conversationIdentifier);
  if (v8)
  {
    v9 = sub_267EF8FF8();
  }

  else
  {
    v9 = 0;
  }

  sub_267BE28D0(a1, &selRef_serviceName);
  if (v10)
  {
    v11 = sub_267EF8FF8();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 sender];
  if (sub_267E76140(a1))
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v13 = sub_267EF92D8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v4 outgoingMessageType:v5 content:v7 speakableGroupName:a2 conversationIdentifier:v9 serviceName:v11 sender:v12 attachments:v13];

  v15 = v14;
  v16 = [a1 _metadata];
  [v15 _setMetadata_];

  return v15;
}

uint64_t sub_267D29ED4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_267D29F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_267D29F84(uint64_t a1, void *a2)
{
  v3 = 0;
  v22 = *(a1 + 16);
  v20 = a1 + 32;
  while (v3 != v22)
  {
    v4 = *(v20 + 8 * v3++);
    v5 = a2[1];
    if (!*(v5 + 16))
    {
      v7 = v4;
      goto LABEL_17;
    }

    sub_267EF9FC8();
    sub_267EF9FE8();
    if (v4)
    {
      v6 = v4;
      sub_267EF9828();
    }

    v8 = sub_267EFA018();
    v9 = -1 << *(v5 + 32);
    v10 = v8 & ~v9;
    if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v19 = v3;
      v11 = ~v9;
      while (1)
      {
        v12 = *(*(v5 + 48) + 8 * v10);
        if (v12)
        {
          break;
        }

        if (!v4)
        {
          goto LABEL_20;
        }

LABEL_14:
        v10 = (v10 + 1) & v11;
        if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          v7 = v4;
          v3 = v19;
          goto LABEL_17;
        }
      }

      if (!v4)
      {
        goto LABEL_14;
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = v4;
      v14 = v12;
      v15 = sub_267EF9818();

      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_20:
      v3 = v19;
    }

    else
    {
      v7 = v4;
LABEL_17:
      v16 = v7;
      MEMORY[0x26D608F90]();
      if (*(*a2 + 16) >= *(*a2 + 24) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v17 = v16;
      sub_267D2FF84(&v21, v4);
      v18 = v21;
    }
  }
}

uint64_t sub_267D2A194(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x656E696C6E69;
  }

  else
  {
    return 0x6F6C61646E617473;
  }
}

uint64_t sub_267D2A1CC()
{
  OUTLINED_FUNCTION_12();
  v1[84] = v0;
  v1[83] = v2;
  v1[82] = v3;
  v1[81] = v4;
  v1[80] = v5;
  v6 = sub_267EF2E38();
  v1[85] = v6;
  v1[86] = *(v6 - 8);
  v1[87] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267D2A290()
{
  v4 = *(v1 + 672);
  if (!v4[1])
  {
    memcpy((v1 + 16), v4, 0x71uLL);
    *(v1 + 496) = 0u;
    *(v1 + 512) = 0u;
    *(v1 + 528) = 0;
    OUTLINED_FUNCTION_10(&unk_267F062D8);
    v23 = swift_task_alloc();
    *(v1 + 704) = v23;
    *v23 = v1;
    v23[1] = sub_267D2A49C;
    OUTLINED_FUNCTION_89();

    __asm { BR              X2 }
  }

  v5 = 0;
  v6 = v4[9];
  v7 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_13();
LABEL_3:
  *(v1 + 736) = v7;
  while (v0 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v3 + 8 * v5++);
    if (v8)
    {
      OUTLINED_FUNCTION_16_17();
      v9 = OUTLINED_FUNCTION_23_13();
      v10(v9);
      OUTLINED_FUNCTION_17_15();

      v2 = OUTLINED_FUNCTION_25_15();

      v11 = OUTLINED_FUNCTION_35_13();
      v12(v11);
      v13 = __swift_destroy_boxed_opaque_existential_0((v1 + 536));
      MEMORY[0x26D608F90](v13);
      OUTLINED_FUNCTION_34_3();
      if (v14)
      {
        OUTLINED_FUNCTION_30_16();
      }

      sub_267EF9368();
      v7 = v26;
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_28_19();
  v15 = sub_267D2B0D4(v2);
  OUTLINED_FUNCTION_27_15(v15);
  v16 = swift_task_alloc();
  *(v1 + 744) = v16;
  *v16 = v1;
  OUTLINED_FUNCTION_5_33(v16);
  OUTLINED_FUNCTION_89();

  sub_267C756EC(v17, v18, v19, v20, v21);
}

uint64_t sub_267D2A49C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v7 + 712) = v2;

  if (v2)
  {
    sub_267B9F98C(v7 + 496, &qword_28022B0F0, &qword_267F0E670);
    v10 = sub_267D2B078;
  }

  else
  {
    *(v7 + 720) = a2;
    *(v7 + 728) = a1;
    *(v7 + 624) = *(v7 + 16);
    sub_267B9F98C(v7 + 496, &qword_28022B0F0, &qword_267F0E670);
    v10 = sub_267D2A5F4;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

void sub_267D2A5F4()
{
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[84];
  sub_267B9F98C((v0 + 78), &qword_28022A300, &qword_267EFEEE0);
  v6 = 0;
  *v5 = v3;
  v5[1] = v4;
  v7 = *(v0[84] + 72);
  v8 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_13();
LABEL_2:
  v0[92] = v8;
  while (v5 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    v9 = *(v2 + 8 * v6++);
    if (v9)
    {
      OUTLINED_FUNCTION_16_17();
      v10 = OUTLINED_FUNCTION_23_13();
      v11(v10);
      OUTLINED_FUNCTION_17_15();

      v1 = OUTLINED_FUNCTION_25_15();

      v12 = OUTLINED_FUNCTION_35_13();
      v13(v12);
      v14 = __swift_destroy_boxed_opaque_existential_0(v0 + 67);
      MEMORY[0x26D608F90](v14);
      OUTLINED_FUNCTION_34_3();
      if (v15)
      {
        OUTLINED_FUNCTION_30_16();
      }

      sub_267EF9368();
      v8 = v24;
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_28_19();
  v16 = sub_267D2B0D4(v1);
  OUTLINED_FUNCTION_27_15(v16);
  v17 = swift_task_alloc();
  v0[93] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_5_33(v17);
  OUTLINED_FUNCTION_89();

  sub_267C756EC(v18, v19, v20, v21, v22);
}

uint64_t sub_267D2A784()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 752) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D2A86C()
{
  v1 = *(v0 + 640);
  if (*(v1 + 88))
  {
    memcpy((v0 + 376), *(v0 + 672), 0x71uLL);
    OUTLINED_FUNCTION_10(&unk_267F08D28);
    v15 = v2;
    v3 = swift_task_alloc();
    *(v0 + 760) = v3;
    *v3 = v0;
    v3[1] = sub_267D2AA30;
    v4 = *(v0 + 648);
    v5 = *(v0 + 640);

    return v15(v0 + 376, v5, v4);
  }

  else
  {
    v7 = *(v0 + 752);
    v8 = *(v0 + 672);
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = __swift_project_boxed_opaque_existential_0(*(v0 + 664), *(*(v0 + 664) + 24));
    sub_267BB8364(v11);
    v12 = swift_task_alloc();
    *(v0 + 800) = v12;
    v12[2] = v9;
    v12[3] = v7;
    v12[4] = v10;
    v12[5] = v1;
    v12[6] = v8;
    v13 = swift_task_alloc();
    *(v0 + 808) = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_37_9(v13);
    OUTLINED_FUNCTION_18_17();

    return sub_267D4474C();
  }
}

uint64_t sub_267D2AA30()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 768) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D2AB18()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 672);
  v4 = *(v0 + 656);
  v5 = *(v0 + 640);
  v6 = __swift_project_boxed_opaque_existential_0(*(v0 + 664), *(*(v0 + 664) + 24));
  sub_267BB8364(v6);
  v7 = swift_task_alloc();
  *(v0 + 776) = v7;
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v5;
  v7[6] = v3;
  v8 = swift_task_alloc();
  *(v0 + 784) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_37_9(v8);
  OUTLINED_FUNCTION_18_17();

  return sub_267D46EDC();
}

uint64_t sub_267D2AC34()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[72] = v1;
  v2[73] = v4;
  v2[74] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 792) = v0;

  if (v0)
  {
    v8 = sub_267D2ADF0;
  }

  else
  {
    v8 = sub_267D2AD80;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267D2AD80()
{
  OUTLINED_FUNCTION_12();

  v0 = OUTLINED_FUNCTION_18_7();

  return v1(v0);
}

uint64_t sub_267D2ADF0()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D2AE60()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[75] = v1;
  v2[76] = v4;
  v2[77] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 816) = v0;

  if (v0)
  {
    v8 = sub_267D2B014;
  }

  else
  {
    v8 = sub_267D2AFAC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267D2AFAC()
{
  OUTLINED_FUNCTION_12();

  v0 = OUTLINED_FUNCTION_18_7();

  return v1(v0);
}

uint64_t sub_267D2B014()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D2B078()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D2B0D4(uint64_t a1)
{
  v2 = sub_267EF2E98();
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_267EF2778();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_267EF2CC8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  sub_267BEB520(a1 + 152, v45);
  v42 = xmmword_267F00630;
  v43 = xmmword_267F00630;
  v44 = 0;
  sub_267C5DD80(&v43, v18, v19, v20, v21, v22, v23, v24, v36, v37, v38);
  v26 = v25;
  sub_267B9EF14(v45);
  if (!v26)
  {
    sub_267BEB520(a1 + 152, v45);
    v43 = v42;
    v44 = 0;
    sub_267EF2CB8();
    sub_267C5BD60(&v43, v15);
    (*(v12 + 8))(v15, v11);
    sub_267B9EF14(v45);
    return 1;
  }

  result = 0;
  if (v26 != 1)
  {
    return result;
  }

  sub_267BEB520(a1 + 152, v45);
  v43 = v42;
  v44 = 0;
  sub_267C5C400(&v43, v10);
  sub_267B9EF14(v45);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v37 = a1;
  v38 = v2;
  if (EnumTagSinglePayload == 1)
  {
    sub_267EF2CB8();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_267B9F98C(v10, &qword_28022BD90, &unk_267EFCDD0);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_267EF2E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
  v29 = sub_267EF2E88();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_267EFC020;
  (*(v30 + 104))(v32 + v31, *MEMORY[0x277CC9968], v29);
  sub_267E6EAA0();
  sub_267EF2CB8();
  sub_267EF2E48();

  v33 = *(v12 + 8);
  v33(v15, v11);
  (*(v41 + 8))(v4, v38);
  v34 = sub_267EF2758();
  LOBYTE(v30) = v35;
  (*(v39 + 8))(v7, v40);
  if ((v30 & 1) == 0 && v34 >= 14)
  {
    sub_267BEB520(v37 + 152, v45);
    v43 = v42;
    v44 = 0;
    sub_267EF2CB8();
    sub_267C5BD60(&v43, v15);
    v33(v15, v11);
    sub_267B9EF14(v45);
    v33(v17, v11);
    return 1;
  }

  v33(v17, v11);
  return 0;
}

uint64_t sub_267D2B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  v7 = sub_267EF8248();
  v6[43] = v7;
  v6[44] = *(v7 - 8);
  v6[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D2B748, 0, 0);
}

void sub_267D2B748()
{
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  SpokenReactionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenReactionComponentParameters(0);
  *(v0 + 408) = SpokenReactionComponentParameters;
  sub_267B9F98C(v2 + SpokenReactionComponentParameters[6], &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v6 = sub_267EF79B8();
  *(v0 + 416) = v6;
  OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_36_12();
  v8(v7);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  *(v0 + 256) = *(v3 + ComponentPatternCommonParameters[6]);
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(SpokenReactionComponentParameters[11]);
  *(v0 + 272) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(SpokenReactionComponentParameters[12]);
  *(v0 + 280) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_0();
  v12 = *(v0 + 376);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(SpokenReactionComponentParameters[16]);
  *(v0 + 288) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_0();
  v30 = *(v0 + 376);
  v31 = *(v0 + 296);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v30, v31 + SpokenReactionComponentParameters[18]);
  OUTLINED_FUNCTION_33_9();
  v13 = SpokenReactionComponentParameters[10];

  *(v12 + v13) = v6;
  v14 = SpokenReactionComponentParameters[17];
  v15 = *(v12 + v14);

  *(v12 + v14) = v30;
  v16 = sub_267EF7998();
  OUTLINED_FUNCTION_21_13(v16, v17);
  sub_267C772E8(v0 + 16, v0 + 136);
  *(v0 + 456) = sub_267DB3E10();
  sub_267C77240(v0 + 16);
  v18 = sub_267BDAF74(v15);
  *(v0 + 129) = v18 & 1;
  if (v18)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v19 = swift_task_alloc();
    *(v0 + 464) = v19;
    *v19 = v0;
    v19[1] = sub_267D2BC48;
    OUTLINED_FUNCTION_15();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v31)
  {
    OUTLINED_FUNCTION_3_37();
    (*(v22 + 8))(v12);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_1_42();
    v24(v23);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v25, v26, v27);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D2BC48()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 130) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D2BD30(uint64_t a1)
{
  v2 = *(v1 + 130);
  v11 = *(v1 + 424);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v11)
  {
    OUTLINED_FUNCTION_3_37();
    (*(v3 + 8))(v2);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_1_42();
    v6(v5);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v7, v8, v9);
  }

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267D2BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  v7 = sub_267EF8248();
  v6[43] = v7;
  v6[44] = *(v7 - 8);
  v6[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D2BFFC, 0, 0);
}

void sub_267D2BFFC()
{
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  ReactionComponentParameters = type metadata accessor for SearchForMessagesReadReactionComponentParameters(0);
  *(v0 + 408) = ReactionComponentParameters;
  sub_267B9F98C(v2 + ReactionComponentParameters[6], &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v6 = sub_267EF79B8();
  *(v0 + 416) = v6;
  OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_36_12();
  v8(v7);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  *(v0 + 256) = *(v3 + ComponentPatternCommonParameters[6]);
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(ReactionComponentParameters[12]);
  *(v0 + 272) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(ReactionComponentParameters[13]);
  *(v0 + 280) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_0();
  v12 = *(v0 + 376);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(ReactionComponentParameters[17]);
  *(v0 + 288) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_0();
  v30 = *(v0 + 376);
  v31 = *(v0 + 296);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v30, v31 + ReactionComponentParameters[18]);
  OUTLINED_FUNCTION_33_9();
  v13 = ReactionComponentParameters[11];

  *(v12 + v13) = v6;
  v14 = ReactionComponentParameters[7];
  v15 = *(v12 + v14);

  *(v12 + v14) = v30;
  v16 = sub_267EF7998();
  OUTLINED_FUNCTION_21_13(v16, v17);
  sub_267C772E8(v0 + 16, v0 + 136);
  *(v0 + 456) = sub_267DB3E10();
  sub_267C77240(v0 + 16);
  v18 = sub_267BDAF74(v15);
  *(v0 + 129) = v18 & 1;
  if (v18)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v19 = swift_task_alloc();
    *(v0 + 464) = v19;
    *v19 = v0;
    v19[1] = sub_267D2C4FC;
    OUTLINED_FUNCTION_15();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v31)
  {
    OUTLINED_FUNCTION_3_37();
    (*(v22 + 8))(v12);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_1_42();
    v24(v23);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v25, v26, v27);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D2C4FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 130) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D2C5E4(uint64_t a1)
{
  v2 = v1;
  sub_267BE4994(a1, v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x71uLL);
      v3 = *(v1 + 88);
      if (v3)
      {
        v4 = __dst[11];
        if (__dst[11])
        {
          sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
          v5 = v3;
          v6 = v4;
          v7 = sub_267EF9818();

          if (v7)
          {
            v8 = *(v2 + 40);
            if (sub_267BAF0DC(v8))
            {
              sub_267BBD0EC(0, (v8 & 0xC000000000000001) == 0, v8);
              v9 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x26D609870](0, v8) : *(v8 + 32);
              v10 = v9;
              v11 = [v9 reaction];

              if (v11)
              {
                v12 = __dst[5];
                if (sub_267BAF0DC(__dst[5]) && ((sub_267BBD0EC(0, (v12 & 0xC000000000000001) == 0, v12), (v12 & 0xC000000000000001) != 0) ? (v13 = MEMORY[0x26D609870](0, v12)) : (v13 = *(v12 + 32)), v14 = v13, v15 = [v13 reaction], v14, v15))
                {
                  sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
                  if (sub_267EF9818())
                  {
                    sub_267BE22E4(v12, (v2 + 40));
                    sub_267D29F84(__dst[9], (v2 + 72));

                    sub_267C77240(__dst);
                    return 1;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }

      sub_267C77240(__dst);
    }
  }

  else
  {
    sub_267B9F98C(v19, &qword_280229910, &unk_267EFEB70);
  }

  return 0;
}

uint64_t sub_267D2C830()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_267D2C870()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267D2A1CC();
}

unint64_t sub_267D2C970(uint64_t a1)
{
  result = sub_267C77294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D2C998(uint64_t a1)
{
  result = sub_267D2C9C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D2C9C0()
{
  result = qword_28022B0E8;
  if (!qword_28022B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B0E8);
  }

  return result;
}

uint64_t sub_267D2CA4C()
{
  OUTLINED_FUNCTION_38_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_14_23(v1);

  return sub_267D2BECC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_267D2CAE8()
{
  OUTLINED_FUNCTION_38_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_14_23(v1);

  return sub_267D2B618(v2, v3, v4, v5, v6, v7);
}

uint64_t getEnumTagSinglePayload for ReactionType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ReactionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_267D2CC30(uint64_t a1, void *a2)
{
  v25 = a2;
  v2 = a1;
  v3 = sub_267BAF0DC(a1);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v18 = v2 & 0xFFFFFFFFFFFFFF8;
  v19 = v2;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x26D609870](v4, v2);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v9 = sub_267EF8FF8();
    v10 = [v8 valueForKey_];

    if (v10)
    {
      sub_267EF99B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24[0] = v22;
    v24[1] = v23;
    if (!*(&v23 + 1))
    {
      sub_267C0BFFC(v24);
LABEL_18:

      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v11 = v25;
    v12 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_267BF4EE8();
      v12 = v16;
      *v25 = v16;
    }

    v14 = *(v12 + 16);
    if (v14 >= *(v12 + 24) >> 1)
    {
      sub_267BF4EE8();
      v12 = v17;
      *v25 = v17;
    }

    *(v12 + 16) = v14 + 1;
    v15 = v12 + 16 * v14;
    *(v15 + 32) = v20;
    *(v15 + 40) = v21;

    v6 = v18;
    v2 = v19;
LABEL_19:
    ++v4;
  }
}

void sub_267D2CE50(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_267EF8FF8();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v12;
      v7 = v13;
      goto LABEL_13;
    }
  }

  else
  {
    sub_267C0BFFC(v16);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "#SearchForMessagesFlowSource: Does not contain sessionId field", v11, 2u);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_13:
  *a2 = v6;
  a2[1] = v7;
}

void sub_267D2D004(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21[0] = MEMORY[0x277D84F90];
  v6 = sub_267BAF0DC(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = sub_267EF8FF8();
    v4 = [v9 valueForKey_];

    if (v4)
    {
      sub_267EF99B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && (v22 & 0x8000000000000000) == 0 && v22 == 2)
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        v4 = v21;
        sub_267EF9BE8();
      }

      else
      {
      }
    }

    else
    {

      sub_267C0BFFC(&v25);
    }
  }

  v4 = v21[0];
  if (!sub_267BAF0DC(v21[0]))
  {

    sub_267D2CC30(a3, a4);
    return;
  }

  sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v11 = *(v4 + 32);
    goto LABEL_22;
  }

LABEL_34:
  v11 = MEMORY[0x26D609870](0, v4);
LABEL_22:
  v12 = v11;

  v13 = sub_267EF8FF8();
  v14 = [v12 valueForKey_];

  if (v14)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v15 = v21[0];
      v16 = v21[1];
      sub_267C705CC();
      v17 = *(*a4 + 16);
      sub_267BE55DC(v17);

      v18 = *a4;
      *(v18 + 16) = v17 + 1;
      v19 = v18 + 16 * v17;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
    }

    else
    {
    }
  }

  else
  {

    sub_267C0BFFC(&v25);
  }
}

unint64_t sub_267D2D32C()
{
  result = qword_28022B0F8;
  if (!qword_28022B0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022B0F8);
  }

  return result;
}

char *sub_267D2D370()
{
  v1 = sub_267C86CD0(v0);
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v3 = sub_267BAF0DC(v1);
  if (!v3)
  {

    v7 = MEMORY[0x277D84F90];
LABEL_13:
    v2 = *(sub_267D2F824(v7) + 16);

    return v2;
  }

  v4 = v3;
  v17 = MEMORY[0x277D84F90];
  result = sub_267BC7934(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v17;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D609870](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_267EF9028();
      v13 = v12;

      v15 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_267BC7934((v14 > 1), v15 + 1, 1);
      }

      ++v6;
      *(v17 + 16) = v15 + 1;
      v16 = v17 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v6);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_267D2D4D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v63 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = sub_267BBD380(a1);
  if (v15)
  {
    v16 = v15;
    v64 = v14;
    v17 = [a1 nameComponents];
    if (v17)
    {
      v18 = v17;
      sub_267EF2A18();

      v19 = sub_267EF2A58();
      v20 = 0;
    }

    else
    {
      v19 = sub_267EF2A58();
      v20 = 1;
    }

    __swift_storeEnumTagSinglePayload(v11, v20, 1, v19);
    sub_267D2E49C(v11, v13);
    sub_267EF2A58();
    if (__swift_getEnumTagSinglePayload(v13, 1, v19))
    {
      sub_267B9FF34(v13, &unk_28022BCA0, &unk_267EFD990);
    }

    else
    {
      v32 = sub_267EF2A28();
      v34 = v33;
      sub_267B9FF34(v13, &unk_28022BCA0, &unk_267EFD990);
      if (v34)
      {
        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          v36 = swift_allocObject();
          v36[2] = v64;
          v36[3] = v16;
          v36[4] = v32;
          v36[5] = v34;

          v37 = sub_267D2DA70(v32, v34, sub_267D2E51C, v36);

          if (v37)
          {

            if (qword_280228818 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_280228818);
            }

            v38 = sub_267EF8A08();
            OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
            v39 = sub_267EF89F8();
            v40 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_36(v40))
            {
              v41 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v41);
              OUTLINED_FUNCTION_17_0(&dword_267B93000, v42, v43, "#ContactsUtils canUseConversationalName for nickname - true");
              OUTLINED_FUNCTION_26();
            }

            goto LABEL_36;
          }
        }

        else
        {
        }
      }
    }

    v29 = [a1 nameComponents];
    if (v29)
    {
      v30 = v29;
      sub_267EF2A18();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v31, 1, v19);
    sub_267D2E49C(v5, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v19))
    {

      sub_267B9FF34(v8, &unk_28022BCA0, &unk_267EFD990);
LABEL_42:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v59);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v60, v61, "#ContactsUtils canUseConversationalName failed to determine - returning false");
        OUTLINED_FUNCTION_26();
      }

      v28 = 0;
      goto LABEL_47;
    }

    v44 = sub_267EF2988();
    v46 = v45;
    sub_267B9FF34(v8, &unk_28022BCA0, &unk_267EFD990);
    if (v46)
    {
      v47 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        v48 = swift_allocObject();
        v48[2] = v64;
        v48[3] = v16;
        v48[4] = v44;
        v48[5] = v46;
        v48[6] = a1;

        v49 = a1;
        v50 = sub_267D2DA70(v44, v46, sub_267D2E50C, v48);

        if ((v50 & 1) == 0)
        {

          goto LABEL_42;
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v51 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v51, qword_280240FB0);
        v39 = sub_267EF89F8();
        v52 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v52))
        {
          v53 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v53);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v54, v55, "#ContactsUtils canUseConversationalName for givenName - true");
          OUTLINED_FUNCTION_26();
        }

LABEL_36:

        v28 = 1;
LABEL_47:
        v27 = 256;
        return v27 | v28;
      }
    }

    goto LABEL_42;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v23))
  {
    v24 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v24);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v25, v26, "#ContactsUtils canUseConversationalName failed to get contactIdentifier - returning false");
    OUTLINED_FUNCTION_26();
  }

  v27 = 0;
  v28 = 0;
  return v27 | v28;
}

uint64_t sub_267D2DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_267BA9F38(0, &qword_28022B138, 0x277CBDA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267EFCA40;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v7 = sub_267D2DD64(v6);
  v8 = objc_opt_self();
  v9 = sub_267EF8FF8();
  v10 = [v8 predicateForContactsMatchingName_];

  [v7 setPredicate_];
  v22 = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  OUTLINED_FUNCTION_94();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = &v22;
  v13 = swift_allocObject();
  v13[2] = sub_267D2E528;
  v13[3] = v12;
  aBlock[4] = sub_267D2E574;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267D2DDE8;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v15 = [v11 enumerateContactsWithFetchRequest:v7 error:aBlock usingBlock:v14];
  _Block_release(v14);

  v16 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v15)
  {

    v18 = v22;
  }

  else
  {
    v19 = sub_267EF2A78();

    swift_willThrow();
    v18 = 0;
  }

  return v18;
}

id sub_267D2DD64(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B110, &qword_267F04E38);
  v2 = sub_267EF92D8();

  v3 = [v1 initWithKeysToFetch_];

  return v3;
}

void sub_267D2DDE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

BOOL sub_267D2DE44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 identifier];
  v11 = sub_267EF9028();
  v13 = v12;

  if (v11 == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = sub_267EF9EA8();

    if ((v15 & 1) == 0)
    {
      v16 = [a1 nickname];
      v17 = sub_267EF9028();
      v19 = v18;

      sub_267BB5034();
      v20 = sub_267EF9948();

      if (!v20)
      {
        return 1;
      }

      v21 = [a1 givenName];
      v22 = sub_267EF9028();
      v24 = v23;

      v25 = sub_267EF9948();

      if (!v25)
      {
        return 1;
      }

      v26 = [a1 givenName];
      v27 = sub_267EF9028();
      v29 = v28;

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {
        v31 = [a1 familyName];
        sub_267EF9028();

        v32 = sub_267EF9948();

        return v32 == 0;
      }
    }
  }

  return 0;
}

BOOL sub_267D2E084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v60 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = [a1 identifier];
  v18 = sub_267EF9028();
  v20 = v19;

  if (v18 == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = sub_267EF9EA8();

    if ((v22 & 1) == 0)
    {
      v23 = [a1 nickname];
      v24 = sub_267EF9028();
      v26 = v25;

      v27 = v60;
      v63 = a4;
      v64 = v60;
      v61 = v24;
      v62 = v26;
      sub_267BB5034();
      v28 = sub_267EF9948();

      if (!v28)
      {
        return 1;
      }

      v59 = a6;
      v29 = [a1 givenName];
      v30 = sub_267EF9028();
      v32 = v31;

      v58 = a4;
      v63 = a4;
      v64 = v27;
      v61 = v30;
      v62 = v32;
      v33 = sub_267EF9948();

      if (v33)
      {
        goto LABEL_8;
      }

      v45 = [a1 familyName];
      v46 = sub_267EF9028();
      v48 = v47;

      v49 = [v59 nameComponents];
      if (v49)
      {
        v50 = v49;
        sub_267EF2A18();

        v51 = 0;
      }

      else
      {
        v51 = 1;
      }

      v52 = sub_267EF2A58();
      __swift_storeEnumTagSinglePayload(v14, v51, 1, v52);
      sub_267D2E49C(v14, v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v52))
      {
        sub_267B9FF34(v16, &unk_28022BCA0, &unk_267EFD990);
      }

      else
      {
        v53 = sub_267EF29A8();
        v54 = v55;
        sub_267B9FF34(v16, &unk_28022BCA0, &unk_267EFD990);
        if (v54)
        {
LABEL_22:
          v63 = v53;
          v64 = v54;
          v61 = v46;
          v62 = v48;
          v56 = sub_267EF9948();

          if (!v56)
          {
LABEL_8:
            v34 = [a1 givenName];
            v35 = sub_267EF9028();
            v37 = v36;

            v38 = HIBYTE(v37) & 0xF;
            if ((v37 & 0x2000000000000000) == 0)
            {
              v38 = v35 & 0xFFFFFFFFFFFFLL;
            }

            if (!v38)
            {
              v39 = [a1 familyName];
              v40 = sub_267EF9028();
              v42 = v41;

              v63 = v58;
              v64 = v60;
              v61 = v40;
              v62 = v42;
              v43 = sub_267EF9948();

              return v43 == 0;
            }

            return 0;
          }

          return 1;
        }
      }

      v53 = 0;
      v54 = 0xE000000000000000;
      goto LABEL_22;
    }
  }

  return 0;
}

uint64_t sub_267D2E49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D2E528(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 32);
  result = (*(v2 + 16))(a1);
  if (result)
  {
    *a2 = 1;
    *v4 = 0;
  }

  return result;
}

unint64_t sub_267D2E59C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_267BAF0DC(a2);
  v5 = sub_267C74150(v4, -a1, 0, a2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_267C74A48();
  result = sub_267C74A48();
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_267CF6EB4();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_267EF9B98();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_267EF9CC8();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL sub_267D2E6EC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    }

    if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for MessageReadingQualifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageReadingQualifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_267D2E7DC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_267D2E7F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_267D2E81C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_267EF9BF8();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267D2E924(void (*a1)(char **__return_ptr, id *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v17 = a6 >> 1;
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v6;
  result = MEMORY[0x277D84F90];
  if (!v8)
  {
    return result;
  }

  v7 = a4;
  v20 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = &v7[8 * a5];
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((a5 + v12) >= v17 || v12 >= v8)
      {
        goto LABEL_15;
      }

      v18 = *&v13[8 * v12];
      v7 = v18;
      a1(&v19, &v18);
      if (v9)
      {
        goto LABEL_18;
      }

      v9 = 0;

      v7 = v19;
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      ++v12;
      if (v14 == v8)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

uint64_t sub_267D2EA6C(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v14 = MEMORY[0x277D84F90];
    result = sub_267EF9BF8();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D609870](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v12 = v9;
      a1(&v13, &v12, &v11);

      if (v3)
      {
      }

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      if (v8 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

void sub_267D2EBEC(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v99 - v7;
  v9 = sub_267EF6EA8();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B140, &qword_267F04E80);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  v104 = v99 - v17;
  v18 = a1[15];
  v111 = v8;
  v106 = v14;
  v107 = v11;
  if (v18)
  {
    v19 = [v18 spokenPhrase];
    v20 = sub_267EF9028();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = *(v15 + 48);
  v24 = v104;
  v25 = sub_267C160C8(&v104[v23], v20, v22);

  v26 = v25;
  *v24 = v25;
  v27 = a1[2];
  swift_bridgeObjectRetain_n();
  sub_267C6F008(3, v27);
  OUTLINED_FUNCTION_11_25();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_16();
  v29 = OUTLINED_FUNCTION_19_15();
  v30 = 0;
  v108 = sub_267D2E924(v29, v31, v32, v33, v34, v35);
  swift_unknownObjectRelease();
  v103 = a3;
  v102 = a1;
  v110 = v23;
  LODWORD(v109) = v26;
  if (a2)
  {
    v101 = 0;
    v105 = v9;
    v36 = a2;
    v113[0] = MEMORY[0x277D84F90];
    v37 = sub_267BAF0DC(v27);
    for (i = 0; v37 != i; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x26D609870](i, v27);
      }

      else
      {
        if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v39 = *(v27 + 8 * i + 32);
      }

      v40 = v39;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v41 = v40;
      v42 = v36;
      v43 = sub_267EF9818();

      if (v43)
      {
      }

      else
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    v44 = v113[0];
    a3 = v103;
    a2 = v36;
    a1 = v102;
    v9 = v105;
    v30 = v101;
  }

  else
  {

    v44 = sub_267D2FC10(v45);
  }

  sub_267C6F008(3, v44);
  OUTLINED_FUNCTION_11_25();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_16();
  v47 = OUTLINED_FUNCTION_19_15();
  v53 = sub_267D2E924(v47, v48, v49, v50, v51, v52);
  swift_unknownObjectRelease();
  v54 = v111;
  sub_267EF6E98();
  if (v30)
  {

    __swift_storeEnumTagSinglePayload(v54, 1, 1, v9);
    sub_267B9F98C(v54, &unk_28022BD40, &unk_267F003E0);
    v55 = 0;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v9);
    v57 = v106;
    v56 = v107;
    (*(v107 + 32))(v106, v54, v9);
    v58 = sub_267DA98DC(a1[13], a1[14], v57);
    v59 = v9;
    v55 = v58;
    (*(v56 + 8))(v57, v59);
  }

  v60 = type metadata accessor for MessagesGroup.Builder(0);
  v61 = OUTLINED_FUNCTION_97(v60);
  v62 = sub_267D55A88();
  sub_267BAF0DC(v27);
  OUTLINED_FUNCTION_43();

  if (__OFADD__(v61, 1))
  {
    goto LABEL_70;
  }

  *(v62 + 16) = (v61 + 1);
  *(v62 + 24) = 0;
  *(v62 + 32) = v61;
  *(v62 + 40) = 0;
  if (__OFSUB__(v61, 1))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v62 + 48) = (v61 - 1);
  *(v62 + 56) = 0;
  if (__OFSUB__(v61, 2))
  {
LABEL_72:
    __break(1u);
    return;
  }

  *(v62 + 64) = (v61 - 2);
  *(v62 + 72) = 0;
  *(v62 + 73) = sub_267BF4920();
  *(v62 + 74) = v55 & 1;
  if (a2)
  {
    v63 = a2;

    v64 = sub_267BC20F4(a3, 0, 0, a1, v63);
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_267D55B40(v64);

  v66 = OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_speakableGroupName;
  swift_beginAccess();
  sub_267BE855C(&v104[v110], v65 + v66);
  swift_endAccess();
  *(v65 + OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_hasLongEmojiOnlyGroupName) = v109;
  sub_267D55B84(v108);
  OUTLINED_FUNCTION_58_1();

  v67 = v66;
  v101 = sub_267D55B90(v53);

  swift_beginAccess();
  v68 = a1[3];
  v69 = *(v68 + 16);
  if (v69)
  {
    v100 = a2;
    v110 = v68 + 32;
    v99[1] = v68;

    v70 = 0;
    v71 = MEMORY[0x277D84F90];
    v105 = v69;
    while (1)
    {
      sub_267B9AFEC(v110 + 40 * v70, v113);
      v72 = v113[4];
      __swift_project_boxed_opaque_existential_0(v113, v113[3]);
      v73 = OUTLINED_FUNCTION_43();
      v67 = v74(v73, v72);

      __swift_destroy_boxed_opaque_existential_0(v113);
      if (v67 >> 62)
      {
        v75 = sub_267EF9A68();
      }

      else
      {
        v75 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v76 = v71 >> 62;
      if (v71 >> 62)
      {
        v77 = sub_267EF9A68();
      }

      else
      {
        v77 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v78 = v77 + v75;
      if (__OFADD__(v77, v75))
      {
        goto LABEL_64;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v76)
      {
        goto LABEL_39;
      }

LABEL_40:
      v71 = sub_267EF9BB8();
      v79 = v71 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
      v80 = *(v79 + 16);
      v81 = (*(v79 + 24) >> 1) - v80;
      v82 = v79 + 8 * v80;
      v111 = v79;
      if (v67 >> 62)
      {
        v84 = sub_267EF9A68();
        if (!v84)
        {
LABEL_55:

          if (v75 > 0)
          {
            goto LABEL_65;
          }

          goto LABEL_56;
        }

        v85 = v84;
        v109 = sub_267EF9A68();
        if (v81 < v109)
        {
          goto LABEL_67;
        }

        if (v85 < 1)
        {
          goto LABEL_69;
        }

        v106 = v75;
        v107 = v70;
        v108 = v71;
        v86 = v82 + 32;
        sub_267CF6EF8();
        for (j = 0; j != v85; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v88 = sub_267C73FD8(v112, j, v67);
          v90 = *v89;
          v88(v112, 0);
          *(v86 + 8 * j) = v90;
        }

        v70 = v107;
        v71 = v108;
        v69 = v105;
        v75 = v106;
        v83 = v109;
      }

      else
      {
        v83 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v83)
        {
          goto LABEL_55;
        }

        if (v81 < v83)
        {
          goto LABEL_68;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        swift_arrayInitWithCopy();
      }

      if (v83 < v75)
      {
        goto LABEL_65;
      }

      if (v83 > 0)
      {
        v91 = *(v111 + 2);
        v92 = __OFADD__(v91, v83);
        v93 = v91 + v83;
        if (v92)
        {
          goto LABEL_66;
        }

        *(v111 + 2) = v93;
      }

LABEL_56:
      if (++v70 == v69)
      {

        a3 = v103;
        a2 = v100;
        goto LABEL_61;
      }
    }

    if (!v76)
    {
      v79 = v71 & 0xFFFFFFFFFFFFFF8;
      if (v78 <= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

LABEL_39:
    sub_267EF9A68();
    goto LABEL_40;
  }

  v71 = MEMORY[0x277D84F90];
LABEL_61:
  v94 = sub_267D2F69C(v71);
  sub_267D2F9D8(v94);
  OUTLINED_FUNCTION_43();

  v95 = v101 + OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_numberOfMessages;
  *v95 = v67;
  *(v95 + 8) = 0;
  v96 = type metadata accessor for MessagesGroup(0);
  OUTLINED_FUNCTION_97(v96);
  v97 = OUTLINED_FUNCTION_43();
  sub_267D55C70(v97);

  sub_267B9F98C(v104, &qword_28022B140, &qword_267F04E80);
  sub_267EF2E38();
  OUTLINED_FUNCTION_22();
  (*(v98 + 8))(a3);
}

uint64_t sub_267D2F790(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_267D327B0();
  v8 = MEMORY[0x26D6091A0](v2, &type metadata for SmsReferenceValue, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_267D30128(&v7, *(a1 + v5++));
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_43();
  }

  return v2;
}

uint64_t sub_267D2F824(uint64_t a1)
{
  result = MEMORY[0x26D6091A0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_267D302A8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_267D2F9D8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_267EF9A68();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_267D2F9F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_267BCEA0C(a1);
  if (v5)
  {
    v6 = sub_267BAF0DC(v5);

    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [a1 speakableGroupName];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 spokenPhrase];

    sub_267EF9028();
    sub_267EF90F8();

    v11 = sub_267EF79B8();
    v12 = 0;
  }

  else
  {
    v11 = sub_267EF79B8();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v12, 1, v11);
  if (v7 < 2.0 && (v13 = sub_267EF79B8(), __swift_getEnumTagSinglePayload(v4, 1, v13) == 1))
  {

    v14 = 0;
  }

  else
  {
    v15 = type metadata accessor for MessagesGroup.Builder(0);
    OUTLINED_FUNCTION_97(v15);
    v16 = sub_267D55A88();
    *(v16 + 16) = v7;
    *(v16 + 24) = 0;
    v17 = OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_speakableGroupName;
    swift_beginAccess();
    sub_267BE855C(v4, v16 + v17);
    swift_endAccess();
    v18 = type metadata accessor for MessagesGroup(0);
    OUTLINED_FUNCTION_97(v18);
    v14 = sub_267D55C70(v16);
  }

  sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
  return v14;
}

uint64_t sub_267D2FE30(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_267EF7C38();
      result = sub_267EF9358();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_267D2FEA0(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_267BA9F38(0, a2, a3);
      result = sub_267EF9358();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_267D2FEFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_267EFC050;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_267D2FF84(void *a1, void *a2)
{
  v4 = *v2;
  sub_267EF9FC8();
  sub_267EF9FE8();
  if (a2)
  {
    v5 = a2;
    sub_267EF9828();
  }

  sub_267EFA018();
  OUTLINED_FUNCTION_16_18();
  v8 = v7 & ~v6;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v15 = a2;
    sub_267D31220(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    *a1 = a2;
    return 1;
  }

  v9 = ~v6;
  while (1)
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (a2)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v11 = a2;
      v12 = v10;
      v13 = sub_267EF9818();

      if (v13)
      {

        v17 = *(*(v4 + 48) + 8 * v8);
        goto LABEL_13;
      }
    }

LABEL_10:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v17 = 0;
LABEL_13:
  *a1 = v17;
  v18 = v17;
  return 0;
}

BOOL sub_267D30128(_BYTE *a1, unint64_t a2)
{
  v4 = *v2;
  sub_267EF9FC8();
  sub_267D6C0D4(a2);
  sub_267EF9128();

  v5 = sub_267EFA018();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v19;
      sub_267D31400(a2, v7, isUniquelyReferenced_nonNull_native);
      *v19 = v21;
      goto LABEL_12;
    }

    sub_267D6C0D4(*(*(v4 + 48) + v7));
    v10 = v9;
    v12 = v11;
    sub_267D6C0D4(a2);
    if (v10 == v14 && v12 == v13)
    {
      break;
    }

    v16 = sub_267EF9EA8();

    if (v16)
    {
      goto LABEL_11;
    }

    v5 = v7 + 1;
  }

LABEL_11:
  LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_12:
  result = v8 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_267D302A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_267EF9FC8();
  sub_267EF9128();
  sub_267EFA018();
  OUTLINED_FUNCTION_16_18();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_267EF9EA8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_267D315C0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_267D303F0(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_267EF9FB8();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_267D31728(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_267D304C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_267EF9B18();
    v23 = v10;
    sub_267EF9A28();
    while (1)
    {
      if (!sub_267EF9A98())
      {

        return v10;
      }

      sub_267BA9F38(0, a5, a6);
      swift_dynamicCast();
      v11 = *(v10 + 16);
      if (*(v10 + 24) <= v11)
      {
        sub_267D30FF8(v11 + 1, a3, a4);
      }

      v10 = v23;
      result = sub_267EF9808();
      v13 = v23 + 56;
      v14 = -1 << *(v23 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v23 + 56 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v23 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v23 + 48) + 8 * v17) = v22;
      ++*(v23 + 16);
    }

    v18 = 0;
    v19 = (63 - v14) >> 6;
    while (++v16 != v19 || (v18 & 1) == 0)
    {
      v20 = v16 == v19;
      if (v16 == v19)
      {
        v16 = 0;
      }

      v18 |= v20;
      v21 = *(v13 + 8 * v16);
      if (v21 != -1)
      {
        v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_267D306A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B180, &qword_267F04EA0);
  result = sub_267EF9B08();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v27 = v1;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_267D2FEFC(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_267EF9FC8();
    sub_267EF9FE8();
    if (v16)
    {
      v17 = v16;
      sub_267EF9828();
    }

    result = sub_267EFA018();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_267D30910(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B178, &qword_267F04E98);
  result = sub_267EF9B08();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_267D2FEFC(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_267EF9FC8();
    sub_267D6C0D4(v16);
    sub_267EF9128();

    result = sub_267EFA018();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_267D30B78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050);
  result = sub_267EF9B08();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_267D2FEFC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_267EF9FC8();
    sub_267EF9128();
    result = sub_267EFA018();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_267D30DD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B190, &unk_267F04EB0);
  result = sub_267EF9B08();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_267D2FEFC(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_267EF9FB8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_267D30FF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_15_19(a1, a2, a3);
  v5 = sub_267EF9B08();
  v6 = v5;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v3 = v6;
    return;
  }

  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v14;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_12_5();
        v11 = v16 & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v4 + 32);
    if (v25 >= 64)
    {
      sub_267D2FEFC(0, (v25 + 63) >> 6, v4 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_16_18();
      *v8 = v26;
    }

    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_4_35();
LABEL_12:
    v17 = sub_267EF9808() & ~(-1 << *(v6 + 32));
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_21:
    OUTLINED_FUNCTION_22_16();
    *(v13 + v22) |= v23;
    OUTLINED_FUNCTION_18_18(v24);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v13 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_267D311A0(uint64_t a1, void *a2)
{
  sub_267EF9808();
  OUTLINED_FUNCTION_16_18();
  result = sub_267EF9A08();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_267D31220(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_267D306A0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_267D3182C();
        goto LABEL_18;
      }

      sub_267D31DC4(v7 + 1);
    }

    v9 = *v3;
    sub_267EF9FC8();
    sub_267EF9FE8();
    if (a1)
    {
      v10 = a1;
      sub_267EF9828();
    }

    v11 = sub_267EFA018();
    v12 = -1 << *(v9 + 32);
    a2 = v11 & ~v12;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(v9 + 48) + 8 * a2);
        if (v14)
        {
          if (a1)
          {
            sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
            v15 = a1;
            v16 = v14;
            v17 = sub_267EF9818();

            if (v17)
            {
              goto LABEL_21;
            }
          }
        }

        else if (!a1)
        {
          goto LABEL_21;
        }

        a2 = (a2 + 1) & v13;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_18:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229790, &qword_267EFE4C0);
    sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

unint64_t sub_267D31400(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_267D30910(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_267D32008(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_267EF9FC8();
      sub_267D6C0D4(v5);
      sub_267EF9128();

      result = sub_267EFA018();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_267D6C0D4(*(*(v12 + 48) + a2));
        v15 = v14;
        v17 = v16;
        sub_267D6C0D4(v5);
        if (v15 == v19 && v17 == v18)
        {
          goto LABEL_19;
        }

        v21 = sub_267EF9EA8();

        if (v21)
        {
          goto LABEL_20;
        }

        result = a2 + 1;
      }
    }

    result = sub_267D3197C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}