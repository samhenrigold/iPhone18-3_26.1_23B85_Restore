void sub_257E67C9C(uint64_t a1, int a2)
{
  v164 = a2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECF120();
  v169 = *(v4 - 8);
  v170 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v167 = &v153[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v168 = sub_257ECF190();
  v166 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v10, v11, v12, v13);
  v165 = &v153[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_257ECDA30();
  v171 = *(v15 - 8);
  v172 = v15;
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v163 = &v153[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v27 = &v153[-v26];
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v34 = &v153[-v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v35 - 8, v36, v37, v38, v39);
  v41 = &v153[-v40];
  v42 = sub_257ECCB70();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v44, v45, v46, v47);
  v49 = &v153[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
  v162 = &v153[-v55];
  MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
  v62 = &v153[-v61];
  MEMORY[0x28223BE20](v63, v64, v65, v66, v67);
  v173 = &v153[-v68];
  MEMORY[0x28223BE20](v69, v70, v71, v72, v73);
  v75 = &v153[-v74];
  sub_257C1C614(a1, v41);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_257BE4084(v41, &qword_27F8F5F30, &qword_257EDA9E0);
    return;
  }

  v160 = v34;
  (*(v43 + 32))(v75, v41, v42);
  v76 = objc_opt_self();
  v77 = [v76 defaultManager];
  aBlock[0] = 0;
  v78 = v42;
  v79 = [v77 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:aBlock];

  if (!v79)
  {
    v99 = aBlock[0];
    v100 = sub_257ECC9F0();

    swift_willThrow();
    (*(v43 + 8))(v75, v78);
    return;
  }

  v161 = v78;
  v158 = v2;
  v80 = aBlock[0];
  sub_257ECCAD0();
  v81 = sub_257ECF4C0();

  v82 = [v79 URLByAppendingPathComponent_];

  if (!v82)
  {
    (*(v43 + 8))(v75, v161);

    return;
  }

  v156 = v79;
  v159 = v75;
  v157 = v43;
  v83 = v173;
  sub_257ECCB20();

  v84 = [v76 defaultManager];
  sub_257ECCB40();
  v85 = sub_257ECF4C0();

  v86 = [v84 fileExistsAtPath_];

  if (v86)
  {
    sub_257ECD420();
    v87 = v157;
    v88 = v161;
    (*(v157 + 16))(v49, v159, v161);
    v89 = sub_257ECDA20();
    v90 = sub_257ECFBD0();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock[0] = v92;
      *v91 = 136315138;
      sub_257E69AC0(&qword_27F8FAC90, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v93 = sub_257ED0600();
      v95 = v94;
      v163 = *(v87 + 8);
      (v163)(v49, v88);
      v96 = sub_257BF1FC8(v93, v95, aBlock);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_257BAC000, v89, v90, "File: %s already saved in app container", v91, 0xCu);
      v97 = __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x259C74820](v92, -1, -1, v97);
      v98 = v91;
      v83 = v173;
      MEMORY[0x259C74820](v98, -1, -1);
    }

    else
    {

      v163 = *(v87 + 8);
      (v163)(v49, v88);
    }

    (*(v171 + 8))(v27, v172);
LABEL_20:
    v141 = v164;
    if (v164 == 3)
    {
      _s16MagnifierSupport013MAGAutomationB0V19setFreezeFramePhoto2toy10Foundation3URLV_tFZ_0();
    }

    else if (v164 == 2)
    {
      _s16MagnifierSupport013MAGAutomationB0V9setReplay2toy10Foundation3URLV_tFZ_0();
    }

    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v142 = sub_257ECFD30();
    v143 = swift_allocObject();
    v144 = v158;
    *(v143 + 16) = v158;
    *(v143 + 24) = v141;
    aBlock[4] = sub_257E699E4;
    aBlock[5] = v143;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_22_0;
    v145 = _Block_copy(aBlock);
    v146 = v144;

    v147 = v165;
    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E69AC0(&qword_281544090, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v148 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    v149 = v167;
    v150 = v170;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v147, v149, v145);
    _Block_release(v145);

    (*(v169 + 8))(v149, v150);
    (*(v166 + 8))(v147, v168);
    v151 = v161;
    v152 = v163;
    (v163)(v148, v161);
    v152(v159, v151);
    return;
  }

  v101 = [v76 defaultManager];
  v102 = v159;
  v103 = sub_257ECCAE0();
  v104 = sub_257ECCAE0();
  aBlock[0] = 0;
  v105 = [v101 copyItemAtURL:v103 toURL:v104 error:aBlock];

  v106 = v157;
  if (v105)
  {
    v107 = aBlock[0];
    v108 = v160;
    sub_257ECD420();
    v109 = *(v106 + 16);
    v110 = v161;
    v109(v62, v102, v161);
    v111 = v162;
    v109(v162, v83, v110);
    v112 = sub_257ECDA20();
    v113 = sub_257ECFBD0();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock[0] = v155;
      *v114 = 136315394;
      sub_257E69AC0(&qword_27F8FAC90, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v115 = v111;
      v116 = sub_257ED0600();
      v118 = v117;
      v154 = v113;
      v119 = *(v157 + 8);
      (v119)(v62, v110);
      v120 = sub_257BF1FC8(v116, v118, aBlock);

      *(v114 + 4) = v120;
      *(v114 + 12) = 2080;
      v121 = sub_257ED0600();
      v123 = v122;
      v163 = v119;
      (v119)(v115, v110);
      v124 = sub_257BF1FC8(v121, v123, aBlock);

      *(v114 + 14) = v124;
      _os_log_impl(&dword_257BAC000, v112, v154, "Copied %s to %s", v114, 0x16u);
      v125 = v155;
      swift_arrayDestroy();
      MEMORY[0x259C74820](v125, -1, -1);
      MEMORY[0x259C74820](v114, -1, -1);

      (*(v171 + 8))(v160, v172);
    }

    else
    {

      v140 = *(v106 + 8);
      (v140)(v111, v110);
      v163 = v140;
      (v140)(v62, v110);
      (*(v171 + 8))(v108, v172);
    }

    v83 = v173;
    goto LABEL_20;
  }

  v126 = aBlock[0];
  v127 = sub_257ECC9F0();

  swift_willThrow();
  v128 = v163;
  sub_257ECD420();
  v129 = v127;
  v130 = sub_257ECDA20();
  v131 = sub_257ECFBD0();

  v132 = os_log_type_enabled(v130, v131);
  v133 = v156;
  if (v132)
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v134 = 138412290;
    v136 = v127;
    v137 = _swift_stdlib_bridgeErrorToNSError();
    *(v134 + 4) = v137;
    *v135 = v137;
    _os_log_impl(&dword_257BAC000, v130, v131, "Internal Setting Asset Loading Error: %@", v134, 0xCu);
    sub_257BE4084(v135, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v135, -1, -1);
    MEMORY[0x259C74820](v134, -1, -1);
  }

  (*(v171 + 8))(v128, v172);
  v138 = *(v106 + 8);
  v139 = v161;
  v138(v83, v161);
  v138(v102, v139);
}

uint64_t sub_257E68A9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v18 - v11;
  v13 = *(a1 + 32);
  if (a2)
  {
    sub_257ECCB20();
    v14 = sub_257ECCB70();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = sub_257ECCB70();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  sub_257ECC3F0();
  v16 = a3;
  v13(v12, a3);

  return sub_257BE4084(v12, &qword_27F8F5F30, &qword_257EDA9E0);
}

void sub_257E68BF0(char *a1, unsigned __int8 a2)
{
  v4 = sub_257ECCDF0();
  v5 = *(v4 - 8);
  *&v10 = MEMORY[0x28223BE20](v4, v6, v7, v8, v9).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 dismissViewControllerAnimated:1 completion:{0, v10}];
  v13 = *&a1[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6960, &unk_257EDD3F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257ED6D30;
  *(v14 + 32) = a2;
  v16[1] = v14;
  sub_257E69AC0(&qword_27F8F58A0, 255, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
  sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80, &qword_257EDD430, MEMORY[0x277D83970]);
  sub_257ED0180();
  v15 = sub_257ECCDE0();
  (*(v5 + 8))(v12, v4);
  [v13 reloadSections:v15 withRowAnimation:100];
}

unint64_t sub_257E68EFC()
{
  result = qword_27F8FAC60;
  if (!qword_27F8FAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC60);
  }

  return result;
}

unint64_t sub_257E68F98()
{
  result = qword_27F8FAC78;
  if (!qword_27F8FAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC78);
  }

  return result;
}

void sub_257E68FEC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_recordedFileArray) = MEMORY[0x277D84F90];
  v3 = AXIsInternalInstall();
  v4 = &unk_2869062D0;
  if (!v3)
  {
    v4 = v2;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections) = v4;
  v5 = OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  [v8 setClipsToBounds_];
  *(v1 + v5) = v8;
  sub_257ED0410();
  __break(1u);
}

void sub_257E6913C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v13 - v8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections);
  if (*(v10 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v11 = *(v10 + a1 + 32);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
    }

    else if (v11 == 3)
    {
      if (os_variant_has_internal_ui())
      {
        static MAGAutomationSupport.freezeFrameAutomationURL.getter(v9);
        v12 = sub_257ECCB70();
        (*(*(v12 - 8) + 48))(v9, 1, v12);
        sub_257BE4084(v9, &qword_27F8F5F30, &qword_257EDA9E0);
      }
    }
  }
}

double sub_257E692B8(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  *&v8 = MEMORY[0x28223BE20](v2, v4, v5, v6, v7).n128_u64[0];
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 isOn])
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__magnifierInDebugState;
    swift_beginAccess();
    v19 = 1;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

LABEL_10:
    swift_once();
    goto LABEL_9;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v11 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__magnifierInDebugState;
  swift_beginAccess();
  v19 = 0;
  if (qword_2815447E0 != -1)
  {
    goto LABEL_10;
  }

LABEL_9:
  v12 = sub_257ECF110();
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  *&v18[-16] = &v19;
  *&v18[-8] = v11;
  sub_257ECFD40();
  (*(v3 + 8))(v10, v2);
  swift_endAccess();
  return result;
}

id sub_257E69570(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECD8B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF280();
  v13 = *(v12 - 8);
  v18 = MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v20 = &aBlock - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    (*(v13 + 16))(v20, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12, v18);
    v21 = sub_257ECF270();
    sub_257BD2C2C(0, &unk_27F8FAC80, 0x277CD98C8);
    v22 = [v21 canLoadObjectOfClass_];

    if ((v22 & 1) != 0 || (v23 = sub_257ECF270(), sub_257BD2C2C(0, &qword_281543DF0, 0x277D755B8), v24 = [v23 canLoadObjectOfClass_], v23, v24))
    {
      v25 = sub_257ECF270();
      v26 = sub_257ECF4C0();
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      v38 = sub_257E699BC;
      v39 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v28 = &block_descriptor_16_1;
    }

    else
    {
      v25 = sub_257ECF270();
      sub_257ECD890();
      sub_257ECD870();
      (*(v5 + 8))(v11, v4);
      v26 = sub_257ECF4C0();

      v30 = swift_allocObject();
      *(v30 + 16) = v2;
      v38 = sub_257E6997C;
      v39 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v28 = &block_descriptor_61;
    }

    v36 = sub_257E68A9C;
    v37 = v28;
    v31 = _Block_copy(&aBlock);
    v32 = v2;

    v33 = [v25 loadFileRepresentationForTypeIdentifier:v26 completionHandler:{v31, aBlock, v35}];
    _Block_release(v31);

    return (*(v13 + 8))(v20, v12);
  }

  else
  {

    return [v2 dismissViewControllerAnimated:1 completion:{0, v18.n128_f64[0]}];
  }
}

double block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

unint64_t sub_257E699F0()
{
  result = qword_27F8FAC98;
  if (!qword_27F8FAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC98);
  }

  return result;
}

unint64_t sub_257E69A44()
{
  result = qword_27F8FACA0;
  if (!qword_27F8FACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACA0);
  }

  return result;
}

uint64_t sub_257E69AC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_257E69C28()
{
  result = qword_27F8FACC0;
  if (!qword_27F8FACC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FACC8, qword_257EEE490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACC0);
  }

  return result;
}

unint64_t sub_257E69C90()
{
  result = qword_27F8FACD0;
  if (!qword_27F8FACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACD0);
  }

  return result;
}

unint64_t sub_257E69CE4()
{
  result = qword_27F8FACD8;
  if (!qword_27F8FACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACD8);
  }

  return result;
}

uint64_t type metadata accessor for MFSnapshotProvider(uint64_t a1)
{
  result = qword_27F8FACE8;
  if (!qword_27F8FACE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257E69FB4(uint64_t a1)
{
  result = sub_257ECCB70();
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

id sub_257E6A058()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v3 = sub_257ECF4C0();
  [v2 setTitle_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_url;
  v5 = sub_257ECCAE0();
  [v2 setOriginalURL_];

  v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_image);
  v7 = v6;
  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  v7 = sub_257C76CCC((v1 + v4));
  if (v7)
  {
LABEL_5:
    v8 = objc_allocWithZone(MEMORY[0x277CCAA88]);
    v9 = v6;
    v10 = [v8 initWithObject_];
    [v2 setImageProvider_];
  }

  if (qword_27F8F46E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257C76CCC((v1 + v4));
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];
    [v2 setIconProvider_];
  }

  return v2;
}

void *MAGVQATranscriptView.init(messages:showingTranscriptView:forLiveRecognition:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FACF8, &qword_257EEE5C0);
  result = sub_257ECEE50();
  *a6 = v12;
  *(a6 + 8) = v13;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 33) = a5;
  return result;
}

uint64_t MAGMessageSender.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t MAGMessage.init(content:sender:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  sub_257ECCCE0();
  result = type metadata accessor for MAGMessage(0);
  v9 = (a4 + *(result + 20));
  *v9 = a1;
  v9[1] = a2;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t static MAGMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_257ECCCC0() & 1) != 0 && ((v4 = type metadata accessor for MAGMessage(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (sub_257ED0640()))
  {
    v10 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t MAGMessage.hash(into:)(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  v2 = type metadata accessor for MAGMessage(0);
  sub_257ECF5D0();
  return MEMORY[0x259C732E0](*(v1 + *(v2 + 24)));
}

uint64_t MAGMessage.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  v1 = type metadata accessor for MAGMessage(0);
  sub_257ECF5D0();
  MEMORY[0x259C732E0](*(v0 + *(v1 + 24)));
  return sub_257ED0800();
}

uint64_t sub_257E6A5C0(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  sub_257ECF5D0();
  MEMORY[0x259C732E0](*(v1 + *(a1 + 24)));
  return sub_257ED0800();
}

uint64_t sub_257E6A678(uint64_t a1, uint64_t a2)
{
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  sub_257ECF5D0();
  return MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
}

uint64_t sub_257E6A718(uint64_t a1, uint64_t a2)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  sub_257ECF5D0();
  MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
  return sub_257ED0800();
}

uint64_t sub_257E6A7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_257ECCCC0() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_257ED0640()))
  {
    v11 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_257E6A850@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FADD8, &qword_257EEE8E0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v45 = v44 - v7;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  *&v50 = *v1;
  *(&v50 + 1) = v8;
  v10 = sub_257BDAB08();

  v44[1] = v10;
  v11 = sub_257ECEAF0();
  v13 = v12;
  LOBYTE(v10) = v14;
  v16 = v15;
  sub_257ECF070();
  sub_257ECE2F0();
  v17 = v10 & 1;
  v62 = v10 & 1;
  if (v9)
  {
    v18 = sub_257ECEA30();
  }

  else
  {
    v18 = sub_257ECE9C0();
  }

  v19 = v18;
  KeyPath = swift_getKeyPath();
  if (v9)
  {
    v21 = sub_257ECEDB0();
  }

  else
  {
    v21 = sub_257ECEDC0();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  *&v50 = v11;
  *(&v50 + 1) = v13;
  LOBYTE(v51) = v17;
  v56 = v61[4];
  v57 = v61[5];
  v58 = v61[6];
  v52 = v61[0];
  v53 = v61[1];
  v54 = v61[2];
  v55 = v61[3];
  *(&v51 + 1) = v16;
  *&v59 = KeyPath;
  *(&v59 + 1) = v19;
  *&v60 = v23;
  *(&v60 + 1) = v22;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_257ECF4C0();
  v27 = sub_257ECF4C0();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  v29 = sub_257ECF500();
  v31 = v30;

  v47 = v29;
  v48 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FADE0, &qword_257EEE948);
  sub_257E6DCD8();
  v32 = v45;
  sub_257ECEBD0();

  v49[8] = v58;
  v49[9] = v59;
  v49[10] = v60;
  v49[4] = v54;
  v49[5] = v55;
  v49[6] = v56;
  v49[7] = v57;
  v49[0] = v50;
  v49[1] = v51;
  v49[2] = v52;
  v49[3] = v53;
  sub_257BE4084(v49, &qword_27F8FADE0, &qword_257EEE948);
  LOBYTE(v29) = sub_257ECE950();
  sub_257ECDF40();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v46;
  sub_257C0DD14(v32, v46, &qword_27F8FADD8, &qword_257EEE8E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE10, &unk_257EEE960);
  v43 = v41 + *(result + 36);
  *v43 = v29;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_257E6AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_257ECE750();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptCollapseButton(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14, v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA360, &qword_257EECEA0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v60 - v23;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA368, &qword_257EECEA8);
  MEMORY[0x28223BE20](v61, v25, v26, v27, v28);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v60 - v36;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA370, &qword_257EECEB0);
  MEMORY[0x28223BE20](v62, v38, v39, v40, v41);
  v43 = &v60 - v42;
  sub_257E6DECC(a1, &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v45 = swift_allocObject();
  sub_257E6DF30(&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA380, &qword_257EECEC0);
  sub_257BD2D4C(&qword_27F8FA388, &qword_27F8FA380, &qword_257EECEC0, MEMORY[0x277CE11A8]);
  sub_257ECEEA0();
  v46 = sub_257ECED80();
  v47 = sub_257ECE930();
  v48 = &v24[*(v18 + 36)];
  *v48 = v46;
  v48[8] = v47;
  sub_257E47960();
  sub_257ECEC90();
  sub_257BE4084(v24, &qword_27F8FA360, &qword_257EECEA0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = [objc_opt_self() bundleForClass_];
  v51 = sub_257ECF4C0();
  v52 = sub_257ECF4C0();
  v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

  v54 = sub_257ECF500();
  v56 = v55;

  v66 = v54;
  v67 = v56;
  sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v30, &qword_27F8FA368, &qword_257EECEA8);
  sub_257ECE740();
  sub_257E6DFF4(&qword_27F8FA3A8, &qword_27F8FA368, &qword_257EECEA8, sub_257E47960);
  sub_257E6D430(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v57 = v63;
  sub_257ECEB60();
  (*(v64 + 8))(v10, v57);
  sub_257BE4084(v37, &qword_27F8FA368, &qword_257EECEA8);
  v58 = &v43[*(v62 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
  sub_257ECE310();
  *v58 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28, &qword_257EECED0);
  sub_257E47B00();
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28, &qword_257EECED0, MEMORY[0x277CE1198]);
  sub_257ECECA0();
  return sub_257BE4084(v43, &qword_27F8FA370, &qword_257EECEB0);
}

uint64_t sub_257E6B298(uint64_t *a1)
{
  v2 = sub_257ECE0C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  v11 = *(a1 + 16);
  v14 = *a1;
  v15 = v10;
  v16 = v11;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720, &qword_257EECF30);
  sub_257ECEF40();
  type metadata accessor for TranscriptCollapseButton(0);
  sub_257E6DA80(v9);
  sub_257ECE0B0();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_257E6B3B8@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_257ECF060();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3B8, &qword_257EECED8);
  return sub_257E6B400(a2 + *(v4 + 44));
}

uint64_t sub_257E6B400@<X0>(char *a1@<X8>)
{
  v48 = a1;
  v1 = sub_257ECEE20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C0, &qword_257EECEE0);
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v10, v11, v12, v13);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v44 = &v43 - v20;
  v21 = [objc_opt_self() grayColor];
  sub_257ECED30();
  v45 = sub_257ECEDA0();

  sub_257ECF060();
  sub_257ECE080();
  *&v52[3] = *&v52[27];
  *&v52[11] = *&v52[35];
  *&v52[19] = *&v52[43];
  sub_257ECEE30();
  (*(v2 + 104))(v8, *MEMORY[0x277CE0FE0], v1);
  v22 = sub_257ECEE40();

  (*(v2 + 8))(v8, v1);
  sub_257ECF060();
  sub_257ECE080();
  v23 = v53;
  LOBYTE(v8) = v54;
  v24 = v55;
  v25 = v56;
  v26 = v57;
  v27 = v58;
  v28 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  v61[0] = v8;
  v51 = v25;
  *&v49[0] = v22;
  *(&v49[0] + 1) = v23;
  LOBYTE(v49[1]) = v8;
  *(&v49[1] + 1) = v24;
  LOBYTE(v49[2]) = v25;
  *(&v49[2] + 1) = v26;
  *&v49[3] = v27;
  *(&v49[3] + 1) = KeyPath;
  v50 = v28;
  sub_257ECE9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C8, &qword_257EECF18);
  sub_257E47C44();
  v30 = v44;
  sub_257ECEB40();
  v59[2] = v49[2];
  v59[3] = v49[3];
  v60 = v50;
  v59[0] = v49[0];
  v59[1] = v49[1];
  sub_257BE4084(v59, &qword_27F8FA3C8, &qword_257EECF18);
  v31 = *(v9 + 16);
  v33 = v46;
  v32 = v47;
  v34 = v30;
  v31(v46, v30, v47);
  v35 = v45;
  *v61 = v45;
  *&v61[8] = 256;
  *&v61[10] = *v52;
  *&v61[26] = *&v52[8];
  *&v61[42] = *&v52[16];
  *&v61[56] = *&v52[23];
  v36 = *&v61[16];
  v37 = v48;
  *v48 = *v61;
  *(v37 + 1) = v36;
  v38 = *&v61[48];
  *(v37 + 2) = *&v61[32];
  *(v37 + 3) = v38;
  v39 = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3D8, &unk_257EECF20);
  v31(&v39[*(v40 + 48)], v33, v32);
  sub_257BE401C(v61, v49, &qword_27F8F6830, &qword_257EDD220);
  v41 = *(v9 + 8);
  v41(v34, v32);
  v41(v33, v32);
  *&v49[0] = v35;
  WORD4(v49[0]) = 256;
  *(v49 + 10) = *v52;
  *(&v49[1] + 10) = *&v52[8];
  *(&v49[2] + 10) = *&v52[16];
  *(&v49[3] + 1) = *&v52[23];
  return sub_257BE4084(v49, &qword_27F8F6830, &qword_257EDD220);
}

__n128 sub_257E6B888@<Q0>(__n128 *a9@<X8>)
{
  v10 = sub_257ECE5B0();
  sub_257E6B8F4(&v15);
  v11 = v15;
  v12 = v17;
  v13 = v18;
  result = v16;
  a9->n128_u64[0] = v10;
  a9->n128_u64[1] = 0;
  a9[1].n128_u8[0] = 1;
  a9[1].n128_u64[1] = v11;
  a9[2] = result;
  a9[3].n128_u8[0] = v12;
  a9[3].n128_u64[1] = v13;
  return result;
}

double sub_257E6B8F4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE10();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  LOBYTE(v7) = v11 & 1;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v12;
  sub_257ECC3F0();
  sub_257BD1B90(v8, v10, v7);

  sub_257C0300C(v8, v10, v7);

  return result;
}

double sub_257E6BA90@<D0>(uint64_t *a9@<X8>)
{
  v10 = a9;
  *a9 = sub_257ECE5B0();
  v10[1] = 0;
  *(v10 + 16) = 1;
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA348, &qword_257EECE88) + 44);
  *v11 = sub_257ECE500();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA350, &qword_257EECE90);
  sub_257E6AC80(v9, &v11[*(v12 + 44)]);
  LOBYTE(v10) = sub_257ECE930();
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA358, &qword_257EECE98) + 36)];
  *v13 = v10;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  return result;
}

uint64_t MAGVQATranscriptView.messages.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00, &qword_257EEE5C8);
  sub_257ECEE60();
  return v1;
}

void *sub_257E6BB9C@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00, &qword_257EEE5C8);
  result = sub_257ECEE60();
  *a2 = v4;
  return result;
}

uint64_t sub_257E6BBF4(uint64_t *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00, &qword_257EEE5C8);
  return sub_257ECEE70();
}

void (*MAGVQATranscriptView.messages.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;
  sub_257ECC3F0();

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00, &qword_257EEE5C8);
  sub_257ECEE60();
  return sub_257E4402C;
}

uint64_t MAGVQATranscriptView.$messages.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00, &qword_257EEE5C8);
  sub_257ECEE80();
  return v1;
}

uint64_t MAGVQATranscriptView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD08, &qword_257EEE5D0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v65 - v13;
  v15 = sub_257ECF020();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD10, &qword_257EEE5D8);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22, v24, v25, v26, v27);
  v29 = (&v65 - v28);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD18, &qword_257EEE5E0);
  MEMORY[0x28223BE20](v66, v30, v31, v32, v33);
  v35 = &v65 - v34;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD20, &qword_257EEE5E8);
  MEMORY[0x28223BE20](v67, v36, v37, v38, v39);
  v70 = &v65 - v40;
  v41 = *(v1 + 16);
  v74[0] = *v1;
  v74[1] = v41;
  v75 = *(v1 + 32);
  *v29 = sub_257ECF060();
  v29[1] = v42;
  v43 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD28, &qword_257EEE5F0) + 44);
  v73 = v74;
  sub_257ECE910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD30, &qword_257EEE5F8);
  sub_257BD2D4C(&qword_27F8FAD38, &qword_27F8FAD30, &qword_257EEE5F8, MEMORY[0x277CE14C0]);
  sub_257ECDF60();
  v44 = sub_257ECED80();
  v45 = sub_257ECE930();
  v46 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD40, &unk_257EEE600) + 36)];
  *v46 = v44;
  v46[8] = v45;
  v47 = *(v23 + 44);
  v48 = *MEMORY[0x277CDF3C0];
  v49 = sub_257ECDF90();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v29 + v47, v48, v49);
  (*(v50 + 56))(v29 + v47, 0, 1, v49);
  if (sub_257ECF030())
  {
    sub_257ECF000();
  }

  else
  {
    sub_257ECF010();
  }

  v51 = sub_257ECE930();
  v52 = &v35[*(v66 + 36)];
  (*(v68 + 32))(v52, v21, v69);
  v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2A0, &qword_257EECC58) + 36)] = v51;
  sub_257C0DD14(v29, v35, &qword_27F8FAD10, &qword_257EEE5D8);
  v53 = v70;
  sub_257C0DD14(v35, v70, &qword_27F8FAD18, &qword_257EEE5E0);
  *(v53 + *(v67 + 36)) = 0x3FF0000000000000;
  v69 = sub_257ECF060();
  v55 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD48, &qword_257EEE610);
  v57 = v72;
  v58 = v72 + *(v56 + 36);
  *v58 = sub_257ECE5B0();
  *(v58 + 8) = 0;
  *(v58 + 16) = 1;
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD50, &qword_257EEE618) + 44);
  *v14 = sub_257ECE500();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD58, &qword_257EEE620);
  sub_257E6D228(v74, &v14[*(v60 + 44)]);
  v61 = v71;
  sub_257BE401C(v14, v71, &qword_27F8FAD08, &qword_257EEE5D0);
  sub_257BE401C(v61, v59, &qword_27F8FAD08, &qword_257EEE5D0);
  v62 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD60, &qword_257EEE628) + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_257BE4084(v14, &qword_27F8FAD08, &qword_257EEE5D0);
  sub_257BE4084(v61, &qword_27F8FAD08, &qword_257EEE5D0);
  v63 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD68, &qword_257EEE630) + 36));
  *v63 = v69;
  v63[1] = v55;
  return sub_257C0DD14(v53, v57, &qword_27F8FAD20, &qword_257EEE5E8);
}

uint64_t sub_257E6C338@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE20, &qword_257EEE9A8);
  MEMORY[0x28223BE20](v55, v3, v4, v5, v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE28, &qword_257EEE9B0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE30, &qword_257EEE9B8);
  MEMORY[0x28223BE20](v24 - 8, v25, v26, v27, v28);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v54 - v36;
  if (*(a1 + 33))
  {
    *v23 = sub_257ECE500();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE80, &unk_257EEEA00);
    sub_257E6C7DC(&v23[*(v38 + 44)]);
    v39 = sub_257ECE930();
    sub_257ECDF40();
    v40 = &v23[*(v16 + 36)];
    *v40 = v39;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_257C0DD14(v23, v37, &qword_27F8FAE28, &qword_257EEE9B0);
    (*(v17 + 56))(v37, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(&v54 - v36, 1, 1, v16);
  }

  *v15 = sub_257ECE5B0();
  *(v15 + 1) = 0x402E000000000000;
  v15[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE38, &unk_257EEE9C0);
  v57 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00, &qword_257EEE5C8);
  sub_257ECEE60();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FACF8, &qword_257EEE5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE40, &qword_257EEE9E8);
  sub_257BD2D4C(&qword_27F8FAE48, &qword_27F8FACF8, &qword_257EEE5C0, MEMORY[0x277D83980]);
  sub_257E6D430(&qword_27F8FAE50, type metadata accessor for MAGMessage, &protocol conformance descriptor for MAGMessage);
  sub_257E6E104();
  sub_257ECEF80();
  v45 = sub_257ECE940();
  sub_257ECDF40();
  v46 = &v15[*(v55 + 36)];
  *v46 = v45;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  sub_257BE401C(v37, v30, &qword_27F8FAE30, &qword_257EEE9B8);
  sub_257BE401C(v15, v8, &qword_27F8FAE20, &qword_257EEE9A8);
  v51 = v56;
  sub_257BE401C(v30, v56, &qword_27F8FAE30, &qword_257EEE9B8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE78, &qword_257EEE9F8);
  sub_257BE401C(v8, v51 + *(v52 + 48), &qword_27F8FAE20, &qword_257EEE9A8);
  sub_257BE4084(v15, &qword_27F8FAE20, &qword_257EEE9A8);
  sub_257BE4084(v37, &qword_27F8FAE30, &qword_257EEE9B8);
  sub_257BE4084(v8, &qword_27F8FAE20, &qword_257EEE9A8);
  return sub_257BE4084(v30, &qword_27F8FAE30, &qword_257EEE9B8);
}

uint64_t sub_257E6C7DC@<X0>(uint64_t a2@<X8>)
{
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA470, &qword_257EECFD8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v48 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v45[-v13];
  v15 = sub_257ECF060();
  v17 = v16;
  sub_257E6CC68(&v70);
  v65 = v76;
  v66 = v77;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v59 = v70;
  v60 = v71;
  v68[6] = v76;
  v68[7] = v77;
  v68[2] = v72;
  v68[3] = v73;
  v68[4] = v74;
  v68[5] = v75;
  v67 = v78;
  v69 = v78;
  v68[0] = v70;
  v68[1] = v71;
  sub_257BE401C(&v59, &v49, &qword_27F8FA478, &qword_257EECFE0);
  sub_257BE4084(v68, &qword_27F8FA478, &qword_257EECFE0);
  v56 = v65;
  v57 = v66;
  v58 = v67;
  v52 = v61;
  v53 = v62;
  v55 = v64;
  v54 = v63;
  v51 = v60;
  v50 = v59;
  *&v49 = v15;
  *(&v49 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA480, &qword_257EECFE8);
  sub_257BD2D4C(&qword_27F8FA488, &qword_27F8FA480, &qword_257EECFE8, MEMORY[0x277CE11A8]);
  v18 = v14;
  sub_257ECEC20();
  v76 = v55;
  v77 = v56;
  v78 = v57;
  v79 = v58;
  v72 = v51;
  v73 = v52;
  v74 = v53;
  v75 = v54;
  v70 = v49;
  v71 = v50;
  sub_257BE4084(&v70, &qword_27F8FA480, &qword_257EECFE8);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_257ECF4C0();
  v22 = sub_257ECF4C0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  v24 = sub_257ECF500();
  v26 = v25;

  *&v49 = v24;
  *(&v49 + 1) = v26;
  sub_257BDAB08();
  v27 = sub_257ECEAF0();
  v29 = v28;
  v31 = v30;
  sub_257ECED90();
  v32 = sub_257ECEAA0();
  v34 = v33;
  v46 = v35;
  v37 = v36;

  sub_257C0300C(v27, v29, v31 & 1);

  v38 = v48;
  sub_257BE401C(v18, v48, &qword_27F8FA470, &qword_257EECFD8);
  v39 = v47;
  sub_257BE401C(v38, v47, &qword_27F8FA470, &qword_257EECFD8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE88, &unk_257EEEA10);
  v41 = v39 + *(v40 + 48);
  *v41 = v32;
  *(v41 + 8) = v34;
  v42 = v46 & 1;
  *(v41 + 16) = v46 & 1;
  *(v41 + 24) = v37;
  v43 = v39 + *(v40 + 64);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_257BD1B90(v32, v34, v42);

  sub_257BE4084(v18, &qword_27F8FA470, &qword_257EECFD8);
  sub_257C0300C(v32, v34, v42);

  return sub_257BE4084(v38, &qword_27F8FA470, &qword_257EECFD8);
}

uint64_t sub_257E6CC68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() systemBlueColor];
  v11 = sub_257ECED30();
  v33 = v11;
  sub_257ECF060();
  sub_257ECE080();
  *&v46[3] = *&v46[27];
  *&v46[11] = *&v46[35];
  *&v46[19] = *&v46[43];
  sub_257ECEE30();
  (*(v3 + 104))(v9, *MEMORY[0x277CE0FE0], v2);
  v30 = sub_257ECEE40();

  (*(v3 + 8))(v9, v2);
  sub_257ECF060();
  sub_257ECE080();
  v12 = v47;
  LOBYTE(v9) = v48;
  v13 = v49;
  v14 = v50;
  v31 = v52;
  v32 = v51;
  v15 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  *&v53[0] = v11;
  WORD4(v53[0]) = 256;
  *(v53 + 10) = *v46;
  *(&v53[1] + 10) = *&v46[8];
  *(&v53[2] + 10) = *&v46[16];
  *(&v53[3] + 1) = *&v46[23];
  *&v38[31] = v53[2];
  *&v38[39] = v53[3];
  *&v38[15] = v53[0];
  *&v38[23] = v53[1];
  v18 = v30;
  v17 = v31;
  *&v54 = v30;
  *(&v54 + 1) = v12;
  LOBYTE(v55) = v9;
  DWORD1(v55) = *&v45[3];
  *(&v55 + 1) = *v45;
  *(&v55 + 1) = v13;
  LOBYTE(v56) = v14;
  DWORD1(v56) = *&v44[3];
  v19 = *v44;
  *(&v56 + 1) = *v44;
  v20 = v32;
  *(&v56 + 1) = v32;
  *&v57 = v31;
  *(&v57 + 1) = KeyPath;
  v58 = v15;
  v43 = v15;
  v41 = v56;
  v42 = v57;
  v39 = v54;
  v40 = v55;
  v21 = v53[0];
  v22 = v53[1];
  v23 = v53[3];
  *(a1 + 32) = v53[2];
  *(a1 + 48) = v23;
  *a1 = v21;
  *(a1 + 16) = v22;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  *(a1 + 128) = v43;
  *(a1 + 96) = v26;
  *(a1 + 112) = v27;
  *(a1 + 64) = v24;
  *(a1 + 80) = v25;
  v59[0] = v18;
  v59[1] = v12;
  v60 = v9;
  *v61 = *v45;
  *&v61[3] = *&v45[3];
  v62 = v13;
  v63 = v14;
  *v64 = v19;
  *&v64[3] = *&v44[3];
  v65 = v20;
  v66 = v17;
  v67 = KeyPath;
  v68 = v15;
  sub_257BE401C(v53, &v34, &qword_27F8F6830, &qword_257EDD220);
  sub_257BE401C(&v54, &v34, &qword_27F8FA3C8, &qword_257EECF18);
  sub_257BE4084(v59, &qword_27F8FA3C8, &qword_257EECF18);
  v34 = v33;
  v35 = 256;
  v36 = *v46;
  v37 = *&v46[8];
  *v38 = *&v46[16];
  *&v38[7] = *&v46[23];
  return sub_257BE4084(&v34, &qword_27F8F6830, &qword_257EDD220);
}

void sub_257E6D00C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAGMessage(0);
  v5 = (a1 + *(v4 + 20));
  v7 = *v5;
  v6 = v5[1];
  v8 = *(a1 + *(v4 + 24));

  sub_257ECF060();
  sub_257ECE2F0();
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[103] = v25;
  *&v18[7] = v19;
  *&v18[23] = v20;
  *&v18[39] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA468, &qword_257EECFD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  v10 = sub_257ECE940();
  *(inited + 32) = v10;
  v11 = sub_257ECE960();
  *(inited + 33) = v11;
  v12 = sub_257ECE980();
  *(inited + 34) = v12;
  v13 = sub_257ECE970();
  sub_257ECE970();
  if (sub_257ECE970() != v10)
  {
    v13 = sub_257ECE970();
  }

  sub_257ECE970();
  if (sub_257ECE970() != v11)
  {
    v13 = sub_257ECE970();
  }

  sub_257ECE970();
  if (sub_257ECE970() != v12)
  {
    v13 = sub_257ECE970();
  }

  sub_257ECDF40();
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = *&v18[80];
  *(a2 + 113) = *&v18[96];
  *(a2 + 17) = *v18;
  *(a2 + 33) = *&v18[16];
  *(a2 + 49) = *&v18[32];
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 128) = *(&v25 + 1);
  *(a2 + 65) = *&v18[48];
  *(a2 + 136) = v13;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v17;
  *(a2 + 176) = 0;
}

uint64_t sub_257E6D228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptCollapseButton(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = v24 - v17;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720, &qword_257EECF30);
  sub_257ECEF50();
  v19 = v24[2];
  v20 = v25;
  *v18 = v24[1];
  *(v18 + 1) = v19;
  v18[16] = v20;
  v21 = *(v5 + 28);
  *&v18[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378, &qword_257EECEB8);
  swift_storeEnumTagMultiPayload();
  sub_257E6DECC(v18, v11);
  *a2 = 0;
  *(a2 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE18, &qword_257EEE9A0);
  sub_257E6DECC(v11, a2 + *(v22 + 48));
  sub_257E6E0A8(v18);
  return sub_257E6E0A8(v11);
}

unint64_t sub_257E6D394()
{
  result = qword_27F8FAD70;
  if (!qword_27F8FAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAD70);
  }

  return result;
}

uint64_t sub_257E6D430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257E6D4D0(uint64_t a1)
{
  result = sub_257ECCCF0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257E6D568(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257E6D5B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_257E6D604()
{
  result = qword_27F8FAD90;
  if (!qword_27F8FAD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD48, &qword_257EEE610);
    sub_257E6D6BC();
    sub_257BD2D4C(&qword_27F8FADC0, &qword_27F8FAD68, &qword_257EEE630, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAD90);
  }

  return result;
}

unint64_t sub_257E6D6BC()
{
  result = qword_27F8FAD98;
  if (!qword_27F8FAD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD20, &qword_257EEE5E8);
    sub_257E6D748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAD98);
  }

  return result;
}

unint64_t sub_257E6D748()
{
  result = qword_27F8FADA0;
  if (!qword_27F8FADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD18, &qword_257EEE5E0);
    sub_257E6D800();
    sub_257BD2D4C(&qword_27F8FA310, &qword_27F8FA2A0, &qword_257EECC58, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADA0);
  }

  return result;
}

unint64_t sub_257E6D800()
{
  result = qword_27F8FADA8;
  if (!qword_27F8FADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD10, &qword_257EEE5D8);
    sub_257BD2D4C(&qword_27F8FADB0, &qword_27F8FADB8, &unk_257EEE7D8, MEMORY[0x277CE11A8]);
    sub_257BD2D4C(&qword_27F8FA300, &qword_27F8FA308, &qword_257EECCF0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADA8);
  }

  return result;
}

uint64_t sub_257E6D8E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_257E6D92C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_257E6D9C4(uint64_t a1)
{
  sub_257E46200();
  if (v1 <= 0x3F)
  {
    sub_257E46554(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_257E6DA80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_257ECE4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378, &qword_257EECEB8);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v23 - v17;
  sub_257BE401C(v2, &v23 - v17, &qword_27F8FA378, &qword_257EECEB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECE0C0();
    return (*(*(v19 - 8) + 32))(a1, v18, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v11, v4);
  }
}

uint64_t sub_257E6DC80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECE410();
  *a1 = result;
  return result;
}

unint64_t sub_257E6DCD8()
{
  result = qword_27F8FADE8;
  if (!qword_27F8FADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FADE0, &qword_257EEE948);
    sub_257E6DD90();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADE8);
  }

  return result;
}

unint64_t sub_257E6DD90()
{
  result = qword_27F8FADF0;
  if (!qword_27F8FADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FADF8, &qword_257EEE950);
    sub_257E6DE48();
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0, &unk_257EEC100, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADF0);
  }

  return result;
}

unint64_t sub_257E6DE48()
{
  result = qword_27F8FAE00;
  if (!qword_27F8FAE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE08, &qword_257EEE958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE00);
  }

  return result;
}

uint64_t sub_257E6DECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptCollapseButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E6DF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptCollapseButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E6DF94()
{
  v1 = *(type metadata accessor for TranscriptCollapseButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_257E6B298(v2);
}

uint64_t sub_257E6DFF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_257E6D430(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257E6E0A8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptCollapseButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257E6E104()
{
  result = qword_27F8FAE58;
  if (!qword_27F8FAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE40, &qword_257EEE9E8);
    sub_257E6E190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE58);
  }

  return result;
}

unint64_t sub_257E6E190()
{
  result = qword_27F8FAE60;
  if (!qword_27F8FAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE68, &qword_257EEE9F0);
    sub_257E6E21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE60);
  }

  return result;
}

unint64_t sub_257E6E21C()
{
  result = qword_27F8FAE70;
  if (!qword_27F8FAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE70);
  }

  return result;
}

unint64_t sub_257E6E270()
{
  result = qword_27F8FAE90;
  if (!qword_27F8FAE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE10, &unk_257EEE960);
    sub_257E6DFF4(&qword_27F8FAE98, &qword_27F8FADD8, &qword_257EEE8E0, sub_257E6DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE90);
  }

  return result;
}

uint64_t sub_257E6E328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAEA0, &qword_257EEEAE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = v19 - v13;
  _s20ControlEventObserverCMa();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAEA8, qword_257EEEAF0);
  swift_allocObject();
  v16 = a2;
  v17 = sub_257ECDD10();
  v15[4] = v17;
  v19[1] = v17;
  sub_257E6E63C();
  swift_retain_n();
  sub_257ECC3F0();
  sub_257ECDDB0();

  sub_257ECDC80();

  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_257E6E588()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257E6E63C()
{
  result = qword_2815441A8;
  if (!qword_2815441A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAEA8, qword_257EEEAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815441A8);
  }

  return result;
}

void sub_257E6E6A0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate);
  swift_beginAccess();
  v2 = v1[3];
  if (!v2 || (__swift_project_boxed_opaque_existential_1(v1, v2), (Strong = swift_unknownObjectWeakLoadStrong()) == 0) || (v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle), v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8), , swift_unknownObjectRelease(), !v4))
  {
    swift_endAccess();
    return;
  }

  swift_endAccess();
  if (!v1[3])
  {

    return;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = v0;
  v7 = qword_281548348;
  swift_beginAccess();
  v8 = v7[12];
  v9 = v7[13];
  v22[0] = v7[11];
  v22[1] = v8;
  v22[2] = v9;
  v10 = qword_2815447E0;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  if (!*(v21[0] + 16))
  {

    goto LABEL_15;
  }

  v16 = sub_257C03F6C(v5, v4);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_15:

    sub_257C10998(v22);
    goto LABEL_16;
  }

  v19 = (*(v21[0] + 56) + 296 * v16);
  memcpy(v20, v19, sizeof(v20));
  memmove(v21, v19, 0x128uLL);
  CGSizeMake();
  sub_257C09C58(v20, v22);

  memcpy(v22, v21, sizeof(v22));
LABEL_16:
  memcpy(v21, (v6 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), 0x128uLL);
  memcpy((v6 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), v22, 0x128uLL);
  sub_257BE4084(v21, &unk_27F8F68B0, &unk_257EE22E0);
}

void sub_257E6E998()
{
  v1 = v0;
  v66.receiver = v0;
  v66.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v66, sel_viewDidLoad);
  v2 = [objc_opt_self() shared];
  v3 = [v2 doorAttributesClassifierProperties];

  if (v3)
  {
    *&v64 = 0xD000000000000017;
    *(&v64 + 1) = 0x8000000257EF93E0;
    v4 = [v3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v61 = v64;
    v62 = v65;
    if (!*(&v65 + 1))
    {

      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      return;
    }

    sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v60 = v1;
    v5 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAED0, &qword_257EDB558);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_257EDB2E0;
    *(v6 + 32) = 4;
    *&v61 = 0x746174536E65704FLL;
    *(&v61 + 1) = 0xE900000000000065;
    v7 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x746174536E65704FLL;
      *(&v61 + 1) = 0xE900000000000065;
      v8 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v8)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v9 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v9 = sub_257ECFF10();
    }

    v6[5] = v9;
    *(v6 + 48) = 5;
    *&v61 = 0x6570616853;
    *(&v61 + 1) = 0xE500000000000000;
    v10 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v10)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6570616853;
      *(&v61 + 1) = 0xE500000000000000;
      v11 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v11)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v12 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v12 = sub_257ECFF10();
    }

    v6[7] = v12;
    *(v6 + 64) = 0;
    *&v61 = 0x6863616F72707041;
    *(&v61 + 1) = 0xE800000000000000;
    v13 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v13)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6863616F72707041;
      *(&v61 + 1) = 0xE800000000000000;
      v14 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v14)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v15 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v15 = sub_257ECFF10();
    }

    v6[9] = v15;
    *(v6 + 80) = 3;
    *&v61 = 0x6874654D6E65704FLL;
    *(&v61 + 1) = 0xEA0000000000646FLL;
    v16 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    v59 = v5;
    if (v16)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6874654D6E65704FLL;
      *(&v61 + 1) = 0xEA0000000000646FLL;
      v17 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v17)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v18 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v18 = sub_257ECFF10();
    }

    v6[11] = v18;
    *(v6 + 96) = 6;
    *&v61 = 1702521171;
    *(&v61 + 1) = 0xE400000000000000;
    v19 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v19)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 1702521171;
      *(&v61 + 1) = 0xE400000000000000;
      v20 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v20)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v21 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v21 = sub_257ECFF10();
    }

    v6[13] = v21;
    *(v6 + 112) = 2;
    *&v61 = 0x646E6148726F6F44;
    *(&v61 + 1) = 0xEA0000000000656CLL;
    v22 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v22)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x646E6148726F6F44;
      *(&v61 + 1) = 0xEA0000000000656CLL;
      v23 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v23)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v24 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v24 = sub_257ECFF10();
    }

    v6[15] = v24;
    *(v6 + 128) = 7;
    *&v61 = 0x776F646E6957;
    *(&v61 + 1) = 0xE600000000000000;
    v25 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v25)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x776F646E6957;
      *(&v61 + 1) = 0xE600000000000000;
      v26 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v26)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v27 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v27 = sub_257ECFF10();
    }

    v6[17] = v27;
    *(v6 + 144) = 1;
    *&v61 = 0x726F6C6F43;
    *(&v61 + 1) = 0xE500000000000000;
    v28 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v28)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x726F6C6F43;
      *(&v61 + 1) = 0xE500000000000000;
      v29 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v29)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v30 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v30 = sub_257ECFF10();
    }

    v6[19] = v30;
    *(v6 + 160) = 8;
    *&v61 = 0x6C6169726574614DLL;
    *(&v61 + 1) = 0xE800000000000000;
    v31 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v31)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6C6169726574614DLL;
      *(&v61 + 1) = 0xE800000000000000;
      v32 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v32)
      {
LABEL_73:
        __break(1u);

        __break(1u);
        return;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v33 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v33 = sub_257ECFF10();
    }

    v34 = v1;
    v57 = v3;
    v6[21] = v33;
    v35 = sub_257BE82F8(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAEE0, &qword_257EDB560);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = *(v35 + 16);
    if (v37)
    {
      v6 = sub_257C63E00(*(v35 + 16), 0, v36);
      v38 = sub_257C6764C(&v61, (v6 + 4), v37, v35);
      v39 = v61;

      sub_257C02520(v39);
      if (v38 != v37)
      {
        __break(1u);
        goto LABEL_63;
      }

      v34 = v1;
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
    }

    *&v61 = v6;
    v6 = 0;
    sub_257C01A64(&v61);
    v58 = v61;
    v40 = *(v61 + 16);
    if (v40)
    {
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v41 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
      v6 = (v58 + 40);
      do
      {
        v42 = *(v6 - 8);
        v43 = *v6;
        v44 = sub_257ECFF10();
        v45 = sub_257ECFF50();

        if ((v45 & 1) == 0)
        {
          swift_beginAccess();
          v46 = *&v34[v41];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v34[v41] = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = sub_257BFCEF4(0, *(v46 + 2) + 1, 1, v46);
            *&v34[v41] = v46;
          }

          v49 = *(v46 + 2);
          v48 = *(v46 + 3);
          if (v49 >= v48 >> 1)
          {
            v46 = sub_257BFCEF4((v48 > 1), v49 + 1, 1, v46);
          }

          *(v46 + 2) = v49 + 1;
          v46[v49 + 32] = v42;
          v34 = v60;
          *&v60[v41] = v46;
          swift_endAccess();
        }

        v6 += 2;
        --v40;
      }

      while (v40);
    }

    v50 = *&v34[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_tableView];
    [v50 setDataSource_];
    [v50 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v52 = sub_257ECF4C0();
    [v50 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v52];

    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    v53 = [v34 view];
    if (v53)
    {
      v54 = v53;
      [v53 addSubview_];

      v55 = [v34 view];
      v6 = v57;
      if (v55)
      {
        v56 = v55;

        sub_257EB6FD8(v56, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

        return;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }
}

id sub_257E6FD4C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v12], __src, 0x128uLL);
  v13 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  if (a2)
  {
    v14 = sub_257ECF4C0();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_257E6FF44(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v9], __src, 0x128uLL);
  v10 = &v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_257E701F4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  sub_257E6E6A0();
  if (sub_257ECCEA0())
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_257ECCE60();
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
  result = swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(v2 + v8);
  if (v7 >= *(v10 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = *(v10 + v7 + 32);
  v12 = [v6 textLabel];
  if (v12)
  {
    v13 = v12;
    sub_257BFEC80(v11);
    v14 = sub_257ECF4C0();

    [v13 setText_];
  }

  v15 = (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity);
  memcpy(v17, v15, sizeof(v17));
  if (sub_257C108C4(v17) != 1)
  {
    if (sub_257C592D0(v11, v15[21]))
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    [v6 setAccessoryType_];
  }

  return v6;
}

double sub_257E7053C(uint64_t a1)
{
  sub_257E6E6A0();
  v8 = a1;

  sub_257D6D1CC(&v8);
  v3 = v8;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) != 1 && (sub_257D7430C() & 1) == 0)
  {
    v4 = (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate);
    swift_beginAccess();
    v5 = v4[3];
    if (v5)
    {
      __swift_project_boxed_opaque_existential_1(v4, v5);
      sub_257DCAC9C(v3);
    }
  }

  return result;
}

void sub_257E70624(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257E6E6A0();
  v12 = sub_257ECCE30();
  v13 = [a1 cellForRowAtIndexPath_];

  v49 = v13;
  if (v13)
  {
    v14 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v14 animated:1];

    if (sub_257ECCEA0())
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_257ECCE60();
    }

    v16 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
    swift_beginAccess();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v2 + v16);
      if (v15 < *(v17 + 16))
      {
        v18 = *(v17 + v15 + 32);
        v19 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity;
        memcpy(v52, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), 0x128uLL);
        if (sub_257C108C4(v52) == 1)
        {
LABEL_34:

          return;
        }

        v48 = v11;
        v20 = *(v19 + 168);
        if (sub_257C592D0(v18, v20))
        {
          v46 = v5;
          v21 = *(v20 + 16);
          if (v21)
          {
            v47 = v4;
            v45 = v2;

            v22 = MEMORY[0x277D84F90];
            v23 = 32;
            do
            {
              v26 = *(v20 + v23);
              if (v26 != v18)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v51 = v22;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_257BF2764(0, *(v22 + 16) + 1, 1);
                  v22 = v51;
                }

                v25 = *(v22 + 16);
                v24 = *(v22 + 24);
                if (v25 >= v24 >> 1)
                {
                  sub_257BF2764((v24 > 1), v25 + 1, 1);
                  v22 = v51;
                }

                *(v22 + 16) = v25 + 1;
                *(v22 + v25 + 32) = v26;
              }

              ++v23;
              --v21;
            }

            while (v21);

            v2 = v45;
            v4 = v47;
          }

          else
          {
            v22 = MEMORY[0x277D84F90];
          }

          sub_257ECC3F0();
          [v49 setAccessoryType_];
          v5 = v46;
        }

        else
        {

          [v49 setAccessoryType_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5AA0, &unk_257EDB100);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_257ED6D30;
          *(inited + 32) = v18;
          v51 = v20;
          sub_257EB0628(inited);
          v22 = v51;
        }

        v29 = v48;
        v30 = (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate);
        if (*(v22 + 16))
        {
          swift_beginAccess();
          v31 = v30[3];
          if (v31)
          {
            __swift_project_boxed_opaque_existential_1(v30, v31);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v32 = 1;
LABEL_29:
              sub_257CE146C(v32);
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          swift_beginAccess();
          v33 = v30[3];
          if (v33)
          {
            __swift_project_boxed_opaque_existential_1(v30, v33);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v32 = 0;
              goto LABEL_29;
            }
          }
        }

        sub_257ECD420();

        v34 = sub_257ECDA20();
        v35 = sub_257ECFBD0();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v50 = v37;
          *v36 = 136315138;
          v38 = v5;
          v39 = MEMORY[0x259C72340](v22, &type metadata for DoorAttribute);
          v47 = v4;
          v41 = v40;

          v42 = sub_257BF1FC8(v39, v41, &v50);

          *(v36 + 4) = v42;
          _os_log_impl(&dword_257BAC000, v34, v35, "New attributes: %s", v36, 0xCu);
          v43 = __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x259C74820](v37, -1, -1, v43);
          MEMORY[0x259C74820](v36, -1, -1);

          (*(v38 + 8))(v48, v47);
        }

        else
        {

          (*(v5 + 8))(v29, v4);
        }

        sub_257E7053C(v22);

        goto LABEL_34;
      }
    }

    __break(1u);
  }
}

id sub_257E70C48()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath];
  }

  else
  {
    [v0 bounds];
    v5 = v4 * 0.5 + (v4 * 0.5 - *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] - (*&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] + *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth])) / -1.41421356;
    [v0 bounds];
    v11 = CGRectInset(v10, v5, v5);
    v6 = [objc_opt_self() bezierPathWithRoundedRect:v11.origin.x cornerRadius:{v11.origin.y, v11.size.width, v11.size.height, 4.0}];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_257E70D50()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath];
  }

  else
  {
    [v0 bounds];
    v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] + v4 * 0.04;
    [v0 bounds];
    v11 = CGRectInset(v10, v5, v5);
    v6 = [objc_opt_self() bezierPathWithRoundedRect:v11.origin.x cornerRadius:{v11.origin.y, v11.size.width, v11.size.height, v11.size.width * 0.5}];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_257E70E54(void *a1)
{
  v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__animationDuration] = 0x3FD3333333333333;
  v3 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor;
  *&v1[v3] = [objc_opt_self() redColor];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RecordButton();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_257E712EC();
  }

  return v5;
}

id sub_257E70F6C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__animationDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor;
  *&v4[v9] = [objc_opt_self() redColor];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RecordButton();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_257E712EC();

  return v10;
}

void sub_257E711F0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for RecordButton();
  objc_msgSendSuper2(&v8, sel_setEnabled_, v3 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([v2 isEnabled])
    {
      v6 = [*&v2[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor] CGColor];
    }

    else
    {
      v7 = [objc_opt_self() grayColor];
      v6 = [v7 CGColor];
    }

    [v5 setFillColor_];
  }
}

void sub_257E712EC()
{
  [v0 bounds];
  v2 = v1 * 0.08;
  if (v1 * 0.08 > 6.0)
  {
    v2 = 6.0;
  }

  *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] = v2;
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] == 1)
  {
    v3 = sub_257E70C48();
  }

  else
  {
    v3 = sub_257E70D50();
  }

  v4 = v3;
  v5 = [v3 CGPath];

  v6 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v6 setPath_];
  [v6 setStrokeColor_];
  v7 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor] CGColor];
  [v6 setFillColor_];

  swift_unknownObjectWeakAssign();
  v8 = [v0 layer];
  [v8 addSublayer_];
}

void sub_257E71464()
{
  v1 = sub_257ECF4C0();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v10 = v2;
  [v10 setDuration_];
  v3 = [objc_opt_self() functionWithName_];
  [v10 setTimingFunction_];

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording) == 1)
  {
    v4 = sub_257E70C48();
  }

  else
  {
    v4 = sub_257E70D50();
  }

  v5 = v4;
  v6 = [v4 CGPath];

  [v10 setToValue_];
  [v10 setFillMode_];
  [v10 setRemovedOnCompletion_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_257ECF4C0();
    [v8 addAnimation:v10 forKey:v9];
  }
}

id sub_257E71628(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RecordButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_257E716EC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] * 0.5;
  [v0 bounds];
  v7 = CGRectInset(v6, v2, v2);
  v4 = [objc_opt_self() bezierPathWithOvalInRect_];
  [v4 setLineWidth_];
  v3 = [objc_opt_self() whiteColor];
  [v3 setStroke];

  [v4 stroke];
}

uint64_t MFMenu.init(position:subMenu:theme:backgroundColor:width:content:label:dismissAction:)@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v75 = a8;
  v76 = a7;
  v71 = a6;
  v72 = a5;
  v70 = a2;
  v78 = a12;
  v79 = a4;
  v77 = a11;
  v20 = sub_257ED00C0();
  v73 = *(v20 - 8);
  v74 = v20;
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v69 = &v60 - v25;
  v65 = sub_257ED00C0();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v26, v27, v28, v29);
  v63 = &v60 - v30;
  v62 = *a1;
  v31 = *a3;
  v67 = a3[1];
  v68 = v31;
  v66 = *(a3 + 16);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  swift_storeEnumTagMultiPayload();
  v80 = a13;
  v81 = a14;
  v82 = a15;
  v83 = a16;
  v32 = type metadata accessor for MFMenu(0, &v80);
  v33 = v32[13];
  *(a9 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  v34 = (a9 + v32[14]);
  *v34 = xmmword_257EDB760;
  v34[1] = xmmword_257EDB770;
  v35 = (a9 + v32[15]);
  v84 = 0;
  sub_257ECEE50();
  v36 = v81;
  *v35 = v80;
  v35[1] = v36;
  v37 = a9 + v32[16];
  LOBYTE(v84) = 0;
  sub_257ECEE50();
  v38 = v81;
  *v37 = v80;
  *(v37 + 1) = v38;
  v39 = (a9 + v32[17]);
  v84 = 0;
  sub_257ECEE50();
  v40 = v81;
  *v39 = v80;
  v39[1] = v40;
  v41 = (a9 + v32[18]);
  v84 = 0;
  sub_257ECEE50();
  v42 = v81;
  *v41 = v80;
  v41[1] = v42;
  v43 = v32[20];
  *(a9 + v43) = 2;
  v44 = v32[21];
  v61 = v32[22];
  v60 = a13;
  v45 = *(*(a13 - 8) + 56);
  v45(a9 + v61, 1, 1, a13);
  v46 = v32[23];
  v47 = *(*(a14 - 8) + 56);
  v48 = v47(a9 + v46, 1, 1, a14);
  *(a9 + v43) = v62;
  *(a9 + v44) = v70;
  v49 = v63;
  v72(v48);
  v47(v49, 0, 1, a14);
  v50 = (*(v64 + 40))(a9 + v46, v49, v65);
  v51 = v69;
  v76(v50);
  v45(v51, 0, 1, v60);
  result = (*(v73 + 40))(a9 + v61, v51, v74);
  v53 = a9 + v32[19];
  v54 = v67;
  *v53 = v68;
  *(v53 + 1) = v54;
  v53[16] = v66;
  v55 = 300.0;
  if (a10 > 0.0)
  {
    v55 = a10;
  }

  v56 = v32[25];
  v57 = (a9 + v32[24]);
  v58 = (a9 + v32[26]);
  *v57 = v55;
  *(v57 + 8) = 0;
  *(a9 + v56) = v79;
  v59 = v78;
  *v58 = v77;
  v58[1] = v59;
  return result;
}

uint64_t MFMenuDivider.init(height:width:color:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for MFMenuDivider(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  result = swift_storeEnumTagMultiPayload();
  v11 = v8[6];
  v12 = v8[7];
  v13 = v8[8];
  *(a2 + v13) = 0;
  *(a2 + v11) = a3;
  *(a2 + v12) = a4;
  if (a1)
  {
    *(a2 + v13) = a1;
  }

  return result;
}

uint64_t sub_257E71DDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_257ECE4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v23 - v17;
  sub_257BE401C(v2, &v23 - v17, &qword_27F8F5B90, &qword_257EEDFC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECDF90();
    return (*(*(v19 - 8) + 32))(a1, v18, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v11, v4);
  }
}

uint64_t sub_257E71FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for MFMenuDivider(0);
  sub_257BE401C(v1 + *(v18 + 20), v17, &qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECE1D0();
    return (*(*(v19 - 8) + 32))(a1, v17, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v10, v3);
  }
}

void sub_257E721E4()
{
  v1 = *v0;
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_opt_self() effectWithStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  objc_autoreleasePoolPop(v2);
  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_257E722C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E77F54();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_257E7232C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E77F54();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_257E72390(uint64_t a1)
{
  sub_257E77F54();
  sub_257ECE6C0();
  __break(1u);
}

double MFMenuDivider.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = sub_257ECE1D0();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v4, v5, v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_257ECED50();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v10, v11, v12, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECDF90();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v39 - v29;
  sub_257E71DDC(&v39 - v29);
  (*(v17 + 104))(v23, *MEMORY[0x277CDF3C0], v16);
  v31 = sub_257ECDF80();
  v32 = *(v17 + 8);
  v32(v23, v16);
  v32(v30, v16);
  v33 = *(v2 + *(type metadata accessor for MFMenuDivider(0) + 32));
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_257ECC3F0();
    goto LABEL_7;
  }

  if (v33)
  {
    goto LABEL_5;
  }

LABEL_6:
  (*(v39 + 104))(v15, *MEMORY[0x277CE0EE0], v40);
  v33 = sub_257ECEDD0();
LABEL_7:
  sub_257ECF060();
  sub_257ECE080();
  *&v46[6] = v47;
  *&v46[22] = v48;
  *&v46[38] = v49;
  sub_257E71FDC(v9);
  v34 = sub_257ECE1C0();
  (*(v41 + 8))(v9, v42);
  if (v34)
  {
    v35 = [objc_opt_self() mainScreen];
    [v35 bounds];
  }

  sub_257ECF060();
  sub_257ECE080();
  *a1 = v33;
  *(a1 + 8) = 256;
  v36 = *&v46[16];
  *(a1 + 10) = *v46;
  *(a1 + 26) = v36;
  *(a1 + 42) = *&v46[32];
  *(a1 + 56) = *&v46[46];
  v37 = v44;
  *(a1 + 64) = v43;
  *(a1 + 80) = v37;
  result = v45[0];
  *(a1 + 96) = *v45;
  return result;
}

uint64_t MFMenuPosition.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t sub_257E72888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_257ECE4D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v19 = &v24 - v18;
  sub_257BE401C(v2 + *(a1 + 52), &v24 - v18, &qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_257ECE1D0();
    return (*(*(v20 - 8) + 32))(a2, v19, v20);
  }

  else
  {
    v22 = sub_257ECFBF0();
    v23 = sub_257ECE900();
    sub_257ECD960(v22, &dword_257BAC000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v12, v5);
  }
}

double sub_257E72A8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB090, &qword_257EEEF28);
  sub_257ECEE60();
  return v2;
}

uint64_t sub_257E72B4C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
  sub_257ECEE60();
  return v2;
}

double sub_257E72C10(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB090, &qword_257EEEF28);
  sub_257ECEE60();
  return v2;
}

double sub_257E72CD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB090, &qword_257EEEF28);
  sub_257ECEE60();
  return v2;
}

double sub_257E72D90(char *a1, uint64_t a2)
{
  sub_257ECC3F0();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB158, &qword_257EEEFE8);
  sub_257ECEF40();

  return result;
}

uint64_t MFMenu.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v142 = a2;
  v151 = sub_257ECE750();
  v141 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v3, v4, v5, v6);
  v140 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = *(a1 - 1);
  v148 = *(v154 + 64);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v147 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v153 = a1[2];
  v134 = sub_257ED00C0();
  *&v152 = a1[4];
  v182 = v152;
  WitnessTable = swift_getWitnessTable();
  v149 = sub_257ECEEE0();
  v137 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v149, v14, v15, v16);
  v131 = &v110 - v17;
  v150 = sub_257ECE240();
  v138 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v18, v19, v20, v21);
  v132 = &v110 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF30, &qword_257EEEC40);
  v146 = sub_257ECE240();
  v139 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v23, v24, v25, v26);
  v135 = &v110 - v27;
  v145 = a1;
  v129 = a1[3];
  sub_257ED00C0();
  v128 = a1[5];
  v181 = v128;
  swift_getWitnessTable();
  sub_257ECEF20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF38, &qword_257EEEC48);
  sub_257ECE240();
  sub_257ECE240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF40, &qword_257EEEC50);
  sub_257ECE240();
  sub_257ED00C0();
  v28 = swift_getWitnessTable();
  v29 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38, &qword_257EEEC48, MEMORY[0x277CE0328]);
  v179 = v28;
  v180 = v29;
  v177 = swift_getWitnessTable();
  v178 = MEMORY[0x277CDF748];
  v30 = swift_getWitnessTable();
  v31 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40, &qword_257EEEC50, MEMORY[0x277CE04A0]);
  v175 = v30;
  v176 = v31;
  v174 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_257ECE130();
  v32 = sub_257ECE240();
  v172 = swift_getWitnessTable();
  v173 = MEMORY[0x277CDF678];
  v126 = v32;
  v127 = swift_getWitnessTable();
  sub_257ECE300();
  v33 = sub_257ECE240();
  v130 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v124 = &v110 - v38;
  v111 = swift_getWitnessTable();
  v170 = v111;
  v171 = MEMORY[0x277CE0790];
  v39 = swift_getWitnessTable();
  v112 = v39;
  v40 = sub_257BD2D4C(&qword_27F8FAF58, &qword_27F8FAF30, &qword_257EEEC40, MEMORY[0x277CDFC88]);
  v168 = v39;
  v169 = v40;
  v41 = swift_getWitnessTable();
  v115 = v41;
  v42 = swift_getWitnessTable();
  v166 = v41;
  v167 = v42;
  v43 = swift_getWitnessTable();
  *&v184 = v33;
  *(&v184 + 1) = MEMORY[0x277D839B0];
  v121 = v33;
  v44 = MEMORY[0x277D839B0];
  *&v185 = v43;
  *(&v185 + 1) = MEMORY[0x277D839C8];
  v45 = v43;
  v122 = v43;
  v46 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = OpaqueTypeMetadata2;
  v125 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2, v48, v49, v50, v51);
  v120 = &v110 - v52;
  *&v184 = v33;
  *(&v184 + 1) = v44;
  *&v185 = v45;
  *(&v185 + 1) = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v118 = OpaqueTypeConformance2;
  v117 = sub_257E78008(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  *&v184 = OpaqueTypeMetadata2;
  *(&v184 + 1) = v151;
  *&v185 = OpaqueTypeConformance2;
  *(&v185 + 1) = v117;
  v123 = swift_getOpaqueTypeMetadata2();
  v116 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v54, v55, v56, v57);
  v113 = &v110 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v59, v60, v61, v62, v63);
  v114 = &v110 - v65;
  v66 = v154;
  v143 = *(v154 + 16);
  v144 = v154 + 16;
  v67 = v147;
  v68 = v136;
  v69 = v145;
  v143(v147, v136, v145, v64);
  v70 = (*(v66 + 80) + 48) & ~*(v66 + 80);
  v110 = *(v66 + 80);
  v71 = swift_allocObject();
  *&v72 = v153;
  *(&v72 + 1) = v129;
  *&v73 = v152;
  *(&v73 + 1) = v128;
  v152 = v73;
  v153 = v72;
  *(v71 + 16) = v72;
  *(v71 + 32) = v73;
  v74 = *(v66 + 32);
  v74(v71 + v70, v67, v69);
  v154 = v66 + 32;
  v155 = v153;
  v156 = v152;
  v157 = v68;
  v75 = v131;
  sub_257ECEEA0();
  v76 = v67;
  v77 = v67;
  v78 = v145;
  (v143)(v77, v68, v145);
  v79 = swift_allocObject();
  v80 = v152;
  *(v79 + 16) = v153;
  *(v79 + 32) = v80;
  v81 = v79 + v70;
  v82 = v70;
  v83 = v78;
  v74(v81, v76, v78);
  v84 = v132;
  v85 = v149;
  sub_257ECECF0();

  (*(v137 + 8))(v75, v85);
  sub_257E73EB4(v83, v86, v87, v88, v89, v183);
  v184 = v183[0];
  v185 = v183[1];
  v186 = v183[2];
  v187 = v183[3];
  sub_257ECF060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAF60, &qword_257EEEC58);
  sub_257E76F50();
  v90 = v135;
  v91 = v150;
  sub_257ECECD0();
  sub_257BBAC08(v183);
  (*(v138 + 8))(v84, v91);
  sub_257E7404C(v83, &v162);
  v184 = v162;
  v185 = v163;
  v186 = v164;
  v187 = v165;
  v158 = v162;
  v159 = v163;
  v160 = v164;
  v161 = v165;
  sub_257ECF060();
  v92 = v124;
  v93 = v146;
  v94 = v126;
  sub_257ECECD0();
  (*(*(v94 - 8) + 8))(&v184, v94);
  (*(v139 + 8))(v90, v93);
  LOBYTE(v162) = sub_257E72B4C(v83) & 1;
  v95 = v147;
  (v143)(v147, v68, v83);
  v96 = swift_allocObject();
  v97 = v152;
  *(v96 + 16) = v153;
  *(v96 + 32) = v97;
  v74(v96 + v82, v95, v83);
  v99 = v120;
  v98 = v121;
  sub_257ECED00();

  (*(v130 + 8))(v92, v98);
  v100 = v140;
  sub_257ECE740();
  v101 = v113;
  v102 = v119;
  v103 = v151;
  sub_257ECEB60();
  (*(v141 + 8))(v100, v103);
  (*(v125 + 8))(v99, v102);
  v104 = v116;
  v105 = *(v116 + 16);
  v106 = v114;
  v107 = v123;
  v105(v114, v101, v123);
  v108 = *(v104 + 8);
  v108(v101, v107);
  v105(v142, v106, v107);
  return (v108)(v106, v107);
}

double sub_257E73B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a5;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v6 = type metadata accessor for MFMenu(0, &v10);
  v7 = a1 + *(v6 + 64);
  v8 = *(v7 + 8);
  LOBYTE(v10) = *v7;
  v11 = v8;
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
  sub_257ECEE60();
  v14 = (v15 & 1) == 0;
  sub_257ECEE70();

  if (*(a1 + *(v6 + 84)) == 1)
  {
    LOBYTE(v10) = 4;
    return sub_257E72D90(&v10, v6);
  }

  return result;
}

uint64_t sub_257E73C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_257ED00C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = v23 - v18;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v20 = *(type metadata accessor for MFMenu(0, v24) + 88);
  v23[1] = a4;
  swift_getWitnessTable();
  v21 = *(v13 + 16);
  v21(v19, a1 + v20, v12);
  v21(a6, v19, v12);
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_257E73DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = [v9 mainScreen];
  [v10 bounds];
  v12 = v11;

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v13 = type metadata accessor for MFMenu(0, v18);
  sub_257E72C70(v13, v12);
  v14 = [v9 mainScreen];
  [v14 bounds];
  v16 = v15;

  return sub_257E72D30(v13, v16 + v16);
}

double sub_257E73EB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v6, a1, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 32);
  *(v14 + 16) = *(a1 + 16);
  *(v14 + 32) = v15;
  (*(v9 + 32))(v14 + v13, v12, a1);
  sub_257E72C10(a1);
  sub_257E72CD0(a1);
  sub_257ECF060();
  sub_257ECE080();
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  *a6 = sub_257E782C8;
  *(a6 + 8) = v14;
  *(a6 + 16) = v16;
  *(a6 + 24) = v17;
  *(a6 + 32) = v18;
  *(a6 + 40) = v19;
  result = *&v25;
  *(a6 + 48) = v25;
  return result;
}

uint64_t sub_257E7404C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_257ECE1D0();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  v19 = MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  (*(v12 + 16))(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v19);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = *(a1 + 16);
  v37 = *(a1 + 24);
  *(v21 + 24) = v37;
  v22 = *(a1 + 40);
  *(v21 + 40) = v22;
  (*(v12 + 32))(v21 + v20, &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_257ED00C0();
  v58 = v22;
  *&v37 = MEMORY[0x277CE1550];
  swift_getWitnessTable();
  sub_257ECEF20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF38, &qword_257EEEC48);
  sub_257ECE240();
  sub_257ECE240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF40, &qword_257EEEC50);
  sub_257ECE240();
  sub_257ED00C0();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38, &qword_257EEEC48, MEMORY[0x277CE0328]);
  v56 = WitnessTable;
  v57 = v24;
  v54 = swift_getWitnessTable();
  v55 = MEMORY[0x277CDF748];
  v25 = swift_getWitnessTable();
  v26 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40, &qword_257EEEC50, MEMORY[0x277CE04A0]);
  v52 = v25;
  v53 = v26;
  v27 = v38;
  v51 = swift_getWitnessTable();
  swift_getWitnessTable();
  v49 = sub_257ECE120();
  v50 = v28;
  sub_257E72888(a1, v11);
  LOBYTE(v13) = sub_257ECE1C0();
  result = (*(v39 + 8))(v11, v40);
  if (v13)
  {
    sub_257E72C10(a1);
LABEL_4:
    sub_257E72A8C(a1);
    sub_257ECF060();
    sub_257ECE130();
    v30 = swift_getWitnessTable();
    sub_257ECECB0();

    v44[0] = v59;
    v44[1] = v60;
    v44[2] = v61;
    v44[3] = v62;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v31 = sub_257ECE240();
    v42 = v30;
    v43 = MEMORY[0x277CDF678];
    swift_getWitnessTable();
    v32 = *(v31 - 8);
    v33 = *(v32 + 16);
    v33(&v63, &v45, v31);
    v34 = *(v32 + 8);
    v34(v44, v31);
    v45 = v63;
    v46 = v64;
    v47 = v65;
    v48 = v66;
    v41[0] = v63;
    v41[1] = v64;
    v41[2] = v65;
    v41[3] = v66;
    v33(v36, v41, v31);
    return v34(&v45, v31);
  }

  if ((*(v27 + *(a1 + 96) + 8) & 1) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_257E745EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v14[0] = a4;
  v14[1] = a5;
  v14[2] = a6;
  v14[3] = a7;
  result = type metadata accessor for MFMenu(0, v14);
  v10 = a3 + *(result + 104);
  v11 = *v10;
  if (*v10)
  {
    if ((v8 & 1) == 0)
    {
      v12 = *(v10 + 8);
      v13 = sub_257ECC3F0();
      v11(v13);
      return sub_257BBD88C(v11, v12);
    }
  }

  return result;
}

uint64_t sub_257E74664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v166 = a1;
  v183 = a7;
  v167 = sub_257ECE4F0();
  v172 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v12, v13, v14, v15);
  v170 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_257ECE270();
  v169 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v17, v18, v19, v20);
  v168 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB098, &qword_257EEEF30);
  v173 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v22, v23, v24, v25);
  v171 = &v148 - v26;
  v161 = sub_257ECE760();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v27, v28, v29, v30);
  v159 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = a3;
  v208 = a4;
  v209 = a5;
  v210 = a6;
  v32 = type metadata accessor for MFMenu(0, &v207);
  v153 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v152 = &v148 - v37;
  sub_257ED00C0();
  v158 = a6;
  v206 = a6;
  swift_getWitnessTable();
  v38 = sub_257ECEF20();
  v155 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
  v154 = &v148 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF38, &qword_257EEEC48);
  v186 = v38;
  v44 = sub_257ECE240();
  v157 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v44, v45, v46, v47);
  v156 = &v148 - v48;
  v182 = v49;
  v50 = sub_257ECE240();
  v164 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
  v176 = &v148 - v55;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF40, &qword_257EEEC50);
  v181 = v50;
  v56 = sub_257ECE240();
  v177 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v56, v57, v58, v59);
  v165 = &v148 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v62, v63, v64, v65);
  v162 = &v148 - v66;
  MEMORY[0x28223BE20](v67, v68, v69, v70, v71);
  v163 = &v148 - v72;
  v185 = v73;
  v180 = sub_257ED00C0();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180, v74, v75, v76, v77);
  v184 = &v148 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79, v80, v81, v82, v83);
  v178 = &v148 - v84;
  v85 = a2;
  v86 = sub_257E72B4C(v32);
  if (v86)
  {
    MEMORY[0x28223BE20](v86, v87, v88, v89, v90);
    *(&v148 - 6) = a3;
    *(&v148 - 5) = a4;
    *(&v148 - 4) = a5;
    v150 = a4;
    v149 = a5;
    v91 = v158;
    *(&v148 - 3) = v158;
    *(&v148 - 2) = a2;
    v151 = a2;
    sub_257ECE5B0();
    v92 = v154;
    sub_257ECEF10();
    v93 = v153;
    v94 = v152;
    (*(v153 + 16))(v152, v85, v32);
    v95 = (*(v93 + 80) + 48) & ~*(v93 + 80);
    v96 = swift_allocObject();
    v97 = v150;
    *(v96 + 2) = a3;
    *(v96 + 3) = v97;
    *(v96 + 4) = v149;
    *(v96 + 5) = v91;
    (*(v93 + 32))(&v96[v95], v94, v32);
    v207 = sub_257E77FF0;
    v208 = v96;
    sub_257ECF060();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0A0, &qword_257EEEF38);
    v98 = v186;
    WitnessTable = swift_getWitnessTable();
    sub_257BD2D4C(&qword_27F8FB0A8, &qword_27F8FB0A0, &qword_257EEEF38, MEMORY[0x277CDF7D8]);
    v100 = v156;
    sub_257ECEB30();

    (*(v155 + 8))(v92, v98);
    v101 = [objc_opt_self() sharedApplication];
    v102 = [v101 userInterfaceLayoutDirection];

    v103 = v159;
    sub_257ECE800();
    v104 = v161;
    sub_257ECE0E0();
    v106 = v105;
    (*(v160 + 8))(v103, v104);
    v107 = -v106;
    if (v102 != 1)
    {
      v107 = v106;
    }

    sub_257E75E98(v32, v107);
    sub_257E7606C(v32);
    v108 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38, &qword_257EEEC48, MEMORY[0x277CE0328]);
    v191 = WitnessTable;
    v192 = v108;
    v109 = v182;
    v110 = swift_getWitnessTable();
    sub_257ECECC0();
    (*(v157 + 8))(v100, v109);
    sub_257ECF0F0();
    v111 = v168;
    sub_257ECE280();
    v112 = v170;
    sub_257ECE4E0();
    v113 = sub_257E78008(&qword_27F8FB0B0, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
    v114 = sub_257E78008(&qword_27F8FB0B8, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v115 = v171;
    v116 = v174;
    v117 = v167;
    sub_257ECDF70();
    (*(v172 + 8))(v112, v117);
    (*(v169 + 8))(v111, v116);
    v189 = v110;
    v190 = MEMORY[0x277CDF748];
    v118 = v181;
    v119 = swift_getWitnessTable();
    v207 = v116;
    v208 = v117;
    v209 = v113;
    v210 = v114;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = v162;
    v122 = v175;
    v123 = v176;
    v124 = sub_257E762DC(v115, v118, v175, v119, OpaqueTypeConformance2);
    (*(v173 + 8))(v115, v122, v124);
    (*(v164 + 8))(v123, v118);
    v125 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40, &qword_257EEEC50, MEMORY[0x277CE04A0]);
    v187 = v119;
    v188 = v125;
    v126 = v185;
    swift_getWitnessTable();
    v127 = v177;
    v128 = *(v177 + 16);
    v129 = v163;
    v128(v163, v121, v126);
    v130 = *(v127 + 8);
    v130(v121, v126);
    v131 = v165;
    v128(v165, v129, v126);
    v130(v129, v126);
    v132 = v184;
    (*(v127 + 32))(v184, v131, v126);
    (*(v127 + 56))(v132, 0, 1, v126);
  }

  else
  {
    (*(v177 + 56))(v184, 1, 1, v185);
    v133 = swift_getWitnessTable();
    v134 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38, &qword_257EEEC48, MEMORY[0x277CE0328]);
    v204 = v133;
    v205 = v134;
    v202 = swift_getWitnessTable();
    v203 = MEMORY[0x277CDF748];
    v135 = swift_getWitnessTable();
    v136 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40, &qword_257EEEC50, MEMORY[0x277CE04A0]);
    v200 = v135;
    v201 = v136;
    swift_getWitnessTable();
  }

  v137 = v179;
  v138 = *(v179 + 16);
  v139 = v178;
  v140 = v184;
  v141 = v180;
  v138(v178, v184, v180);
  v142 = *(v137 + 8);
  v142(v140, v141);
  v143 = swift_getWitnessTable();
  v144 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38, &qword_257EEEC48, MEMORY[0x277CE0328]);
  v198 = v143;
  v199 = v144;
  v196 = swift_getWitnessTable();
  v197 = MEMORY[0x277CDF748];
  v145 = swift_getWitnessTable();
  v146 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40, &qword_257EEEC50, MEMORY[0x277CE04A0]);
  v194 = v145;
  v195 = v146;
  v193 = swift_getWitnessTable();
  swift_getWitnessTable();
  v138(v183, v139, v141);
  return (v142)(v139, v141);
}

uint64_t sub_257E75688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_257ED00C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = v23 - v18;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v20 = *(type metadata accessor for MFMenu(0, v24) + 92);
  v23[1] = a5;
  swift_getWitnessTable();
  v21 = *(v13 + 16);
  v21(v19, a1 + v20, v12);
  v21(a6, v19, v12);
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_257E757E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v45 = a3;
  v49 = a1;
  v50 = sub_257ECE0F0();
  v13 = *(v50 - 8);
  v48 = *(v13 + 64);
  MEMORY[0x28223BE20](v50, v14, v15, v16, v17);
  v46 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[0] = a3;
  v51[1] = a4;
  v19 = a4;
  v42 = a4;
  v43 = a5;
  v51[2] = a5;
  v51[3] = a6;
  v44 = a6;
  v20 = type metadata accessor for MFMenu(0, v51);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23, v24, v25, v26);
  v28 = &v41 - v27;
  *a7 = sub_257ECF060();
  a7[1] = v29;
  v47 = a7;
  v30 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0C0, &qword_257EEEF40) + 44);
  v31 = v45;
  sub_257E75A9C(a2, v45, v19, a5, a6, v30);
  (*(v21 + 16))(v28, a2, v20);
  v32 = v46;
  (*(v13 + 16))(v46, v49, v50);
  v33 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v34 = (v22 + *(v13 + 80) + v33) & ~*(v13 + 80);
  v35 = swift_allocObject();
  v36 = v42;
  v37 = v43;
  *(v35 + 2) = v31;
  *(v35 + 3) = v36;
  v38 = v44;
  *(v35 + 4) = v37;
  *(v35 + 5) = v38;
  (*(v21 + 32))(&v35[v33], v28, v20);
  (*(v13 + 32))(&v35[v34], v32, v50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0C8, &qword_257EEEF48);
  v40 = (v47 + *(result + 36));
  *v40 = sub_257E78050;
  v40[1] = v35;
  v40[2] = 0;
  v40[3] = 0;
  return result;
}

uint64_t sub_257E75A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46[1] = a6;
  v46[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0D0, &qword_257EEEF50);
  MEMORY[0x28223BE20](v46[0], v11, v12, v13, v14);
  v16 = (v46 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0D8, &qword_257EEEF58);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0E0, &unk_257EEEF60);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = (v46 - v29);
  v47[0] = a2;
  v47[1] = a3;
  v47[2] = a4;
  v47[3] = a5;
  v31 = type metadata accessor for MFMenu(0, v47);
  v32 = *(a1 + *(v31 + 100));
  v33 = *(a1 + *(v31 + 56) + 8);
  if (v32)
  {
    v34 = v16 + *(v46[0] + 36);
    v35 = *(sub_257ECE2D0() + 20);
    v36 = *MEMORY[0x277CE0118];
    v37 = sub_257ECE570();
    (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
    *v34 = v33;
    *(v34 + 1) = v33;
    *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB68, &qword_257EEE018) + 36)] = 256;
    *v16 = v32;
    v38 = &qword_27F8FB0D0;
    v39 = &qword_257EEEF50;
    sub_257BE401C(v16, v23, &qword_27F8FB0D0, &qword_257EEEF50);
    swift_storeEnumTagMultiPayload();
    sub_257E78158();
    sub_257E78210();
    sub_257ECC3F0();
    sub_257ECE6F0();
    v40 = v16;
  }

  else
  {
    v41 = v30 + *(v24 + 36);
    v42 = *(sub_257ECE2D0() + 20);
    v43 = *MEMORY[0x277CE0118];
    v44 = sub_257ECE570();
    (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
    *v41 = v33;
    *(v41 + 1) = v33;
    *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB68, &qword_257EEE018) + 36)] = 256;
    *v30 = 18;
    v38 = &qword_27F8FB0E0;
    v39 = &unk_257EEEF60;
    sub_257BE401C(v30, v23, &qword_27F8FB0E0, &unk_257EEEF60);
    swift_storeEnumTagMultiPayload();
    sub_257E78158();
    sub_257E78210();
    sub_257ECE6F0();
    v40 = v30;
  }

  return sub_257BE4084(v40, v38, v39);
}

uint64_t sub_257E75E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_257ECE0D0();
  v11 = v10;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v12 = type metadata accessor for MFMenu(0, v14);
  return sub_257E72AEC(v12, v11);
}

void sub_257E75E98(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_257ECE1D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 84)))
  {
    v14 = 10.0;
  }

  else
  {
    v14 = 20.0;
  }

  sub_257E72888(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_257ECE1C0();
  (*(v7 + 8))(v13, v6);
  if (v15)
  {
    v16 = sub_257E72C10(a1) + -30.0;
  }

  else
  {
    v17 = v3 + *(a1 + 96);
    if (*(v17 + 8))
    {
      return;
    }

    v16 = *v17;
  }

  v18 = [objc_opt_self() sharedApplication];
  v19 = [v18 userInterfaceLayoutDirection];

  if (v19 != 1 && v14 <= a2 && sub_257E72C10(a1) - v14 < v16 + a2)
  {
    sub_257E72C10(a1);
  }
}

void sub_257E7606C(uint64_t a1)
{
  v2 = sub_257ECE1D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v20 - v15;
  sub_257E72888(a1, &v20 - v15);
  v17 = sub_257ECE1C0();
  v18 = *(v3 + 8);
  v18(v16, v2);
  if (v17)
  {
    sub_257E72888(a1, v9);
    v19 = (*(v3 + 88))(v9, v2);
    if (v19 != *MEMORY[0x277CDF988] && v19 != *MEMORY[0x277CDF998] && v19 != *MEMORY[0x277CDF9A8] && v19 != *MEMORY[0x277CDF9B8] && v19 != *MEMORY[0x277CDF9D0])
    {
      v18(v9, v2);
    }
  }

  sub_257E72A8C(a1);
}

double sub_257E762DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a1, a3, a4, a5);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_257ECE0A0();
  sub_257ECEB50();

  return result;
}

uint64_t sub_257E763D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  *a9 = sub_257ECE5B0();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0F8, &qword_257EEEF70);
  return sub_257E76470(a2, a1, a3, a4, a5, a6, a9 + *(v16 + 44));
}

uint64_t sub_257E76470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a2;
  v13 = sub_257ECE750();
  v103 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v101 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECE760();
  v97 = *(v19 - 8);
  v98 = v19;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a3;
  v111 = a3;
  v112 = a4;
  v92 = a4;
  v93 = a5;
  v113 = a5;
  v114 = a6;
  v94 = a6;
  v26 = type metadata accessor for MFMenu(0, &v111);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28, v29, v30, v31);
  v33 = &v90 - v32;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB100, &qword_257EEEF78);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v34, v35, v36, v37);
  v39 = &v90 - v38;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB108, &qword_257EEEF80);
  MEMORY[0x28223BE20](v102, v40, v41, v42, v43);
  v45 = &v90 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB110, &qword_257EEEF88);
  v105 = *(v46 - 8);
  v106 = v46;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v104 = &v90 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB118, &qword_257EEEF90);
  v107 = *(v52 - 8);
  v108 = v52;
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v100 = &v90 - v57;
  if (sub_257E72B4C(v26))
  {
    (*(v27 + 16))(v33, a1, v26);
    v58 = *(v27 + 80);
    v90 = v13;
    v59 = a7;
    v60 = (v58 + 48) & ~v58;
    v61 = swift_allocObject();
    v62 = v92;
    v61[2] = v91;
    v61[3] = v62;
    v63 = v94;
    v61[4] = v93;
    v61[5] = v63;
    v64 = v61 + v60;
    a7 = v59;
    (*(v27 + 32))(v64, v33, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB120, &qword_257EEEF98);
    sub_257E7877C();
    sub_257ECEEA0();
    v65 = [objc_opt_self() sharedApplication];
    v66 = [v65 userInterfaceLayoutDirection];

    sub_257ECE800();
    v67 = v98;
    sub_257ECE0E0();
    v69 = v68;
    (*(v97 + 8))(v25, v67);
    if (v66 != 1)
    {
      v69 = -v69;
    }

    (*(v95 + 32))(v45, v39, v96);
    v70 = v101;
    v71 = v102;
    v72 = &v45[*(v102 + 36)];
    *v72 = v69;
    *(v72 + 1) = 0;
    sub_257ECE740();
    v73 = sub_257E78940();
    v74 = sub_257E78008(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v75 = v104;
    v76 = v90;
    sub_257ECEB60();
    v77 = v76;
    (*(v103 + 8))(v70, v76);
    sub_257BE4084(v45, &qword_27F8FB108, &qword_257EEEF80);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v79 = [objc_opt_self() bundleForClass_];
    v80 = sub_257ECF4C0();
    v81 = sub_257ECF4C0();
    v82 = [v79 localizedStringForKey:v80 value:0 table:v81];

    v83 = sub_257ECF500();
    v85 = v84;

    v109 = v83;
    v110 = v85;
    v111 = v71;
    v112 = v77;
    v113 = v73;
    v114 = v74;
    swift_getOpaqueTypeConformance2();
    sub_257BDAB08();
    v86 = v100;
    v87 = v106;
    sub_257ECEBF0();

    (*(v105 + 8))(v75, v87);
    sub_257BBB6EC(v86, a7);
    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  return (*(v107 + 56))(a7, v88, 1, v108);
}

double sub_257E76C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for MFMenu(0, v7);
  sub_257ECF090();
  sub_257ECE110();

  return result;
}

uint64_t sub_257E76CD4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_257ECED80();
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_257E76D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v12 = MEMORY[0x28223BE20](v8, v9, v8, v10, v11);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1, v12);
  return a6(v14);
}

uint64_t type metadata accessor for MFMenuDivider(uint64_t a1)
{
  result = qword_27F8FAF88;
  if (!qword_27F8FAF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257E76EAC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for MFMenu(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_257E73DC4(v6, v1, v2, v3, v4);
}

unint64_t sub_257E76F50()
{
  result = qword_27F8FAF68;
  if (!qword_27F8FAF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF60, &qword_257EEEC58);
    sub_257BD2D4C(&qword_27F8FAF70, &qword_27F8FAF78, &qword_257EEEC60, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAF68);
  }

  return result;
}

uint64_t sub_257E77008(uint64_t a1, char *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for MFMenu(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_257E745EC(a1, a2, v10, v5, v6, v7, v8);
}

unint64_t sub_257E770E4()
{
  result = qword_27F8FAF80;
  if (!qword_27F8FAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAF80);
  }

  return result;
}

void sub_257E771A4(uint64_t a1)
{
  sub_257E772AC(319, &qword_27F8FA950, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_257E772AC(319, &qword_27F8F5B68, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_257E77CE4(319, qword_27F8FAF98, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257E772AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_257ECDFE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_257E77318(uint64_t a1)
{
  sub_257E772AC(319, &qword_27F8FA950, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_257E772AC(319, &qword_27F8F5B68, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_257E77CE4(319, &qword_27F8FB020, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_257E77CE4(319, &qword_27F8F6750, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_257E77CE4(319, &qword_27F8FB028, &type metadata for MFReaderFormatterTheme, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_257E77CE4(319, &qword_27F8FB030, &type metadata for MFMenuPosition, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_257ED00C0();
              if (v7 <= 0x3F)
              {
                sub_257ED00C0();
                if (v8 <= 0x3F)
                {
                  sub_257E77CE4(319, &qword_27F8FB038, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_257E77CE4(319, qword_27F8FAF98, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_257E77D34(319);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_257E775AC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_257ECDF90() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_257ECE1D0() - 8);
  v9 = *(*(a3 + 16) - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v8 + 64);
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v9 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a3 + 24);
  v15 = *(v14 - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v13 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v8 + 80);
  v22 = *(v9 + 80);
  if (v12)
  {
    v23 = *(v9 + 64);
  }

  else
  {
    v23 = *(v9 + 64) + 1;
  }

  v24 = *(v15 + 80);
  v25 = *(v15 + 64);
  if (v17)
  {
    v26 = 23;
  }

  else
  {
    v26 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v21 & 0xF8 | 7;
  v28 = v7 + v27 + 1;
  v29 = v10 + 8;
  v30 = v22 + 19;
  v31 = v23 + v24;
  if (v20 < a2)
  {
    v32 = ((((v26 + v25 + ((v31 + ((v30 + ((((((((((((v29 + (v28 & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v33 = a2 - v20;
    v34 = v32 & 0xFFFFFFF8;
    if ((v32 & 0xFFFFFFF8) != 0)
    {
      v35 = 2;
    }

    else
    {
      v35 = v33 + 1;
    }

    if (v35 >= 0x10000)
    {
      v36 = 4;
    }

    else
    {
      v36 = 2;
    }

    if (v35 < 0x100)
    {
      v36 = 1;
    }

    if (v35 >= 2)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v38 = *(a1 + v32);
        if (v38)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v38 = *(a1 + v32);
        if (v38)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v37)
    {
      v38 = *(a1 + v32);
      if (v38)
      {
LABEL_40:
        v39 = v38 - 1;
        if (v34)
        {
          v39 = 0;
          v40 = *a1;
        }

        else
        {
          v40 = 0;
        }

        return v20 + (v40 | v39) + 1;
      }
    }
  }

  v41 = (((((((((((v29 + ((a1 + v28) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if ((v19 & 0x80000000) != 0)
  {
    v44 = (v30 + v41) & ~v22;
    if (v13 == v20)
    {
      if (v12 >= 2)
      {
        v45 = (*(v11 + 48))(v44);
        goto LABEL_58;
      }
    }

    else if (v17 >= 2)
    {
      v45 = (*(v16 + 48))((v31 + v44) & ~v24, v17, v14);
LABEL_58:
      if (v45 >= 2)
      {
        return v45 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v42 = *(v41 + 8);
  if (v42 >= 0xFFFFFFFF)
  {
    LODWORD(v42) = -1;
  }

  return (v42 + 1);
}

void sub_257E7790C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_257ECDF90() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = 0;
  v11 = *(sub_257ECE1D0() - 8);
  v12 = *(*(a4 + 16) - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v11 + 64);
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + 24);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  v20 = *(v12 + 64);
  v21 = *(v11 + 80);
  v22 = *(v12 + 80);
  v23 = *(v18 + 80);
  v24 = *(v18 + 64);
  v25 = v19 - 1;
  if (!v19)
  {
    v25 = 0;
  }

  if (v16 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v16;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v26;
  }

  if (v15)
  {
    v28 = v20;
  }

  else
  {
    v28 = v20 + 1;
  }

  v29 = v21 & 0xF8 | 7;
  v30 = v9 + v29 + 1;
  v31 = v13 + 8;
  v32 = (v22 + 19 + ((((((((((((v13 + 8 + (v30 & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  v33 = v28 + v23;
  v34 = (v28 + v23 + v32) & ~v23;
  if (!v19)
  {
    ++v24;
  }

  v35 = ((((v24 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v27 < a3)
  {
    if (((((v24 + v34 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v36 = a3 - v27 + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v10 = v37;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v27)
  {
    if (v35)
    {
      v38 = 1;
    }

    else
    {
      v38 = a2 - v27;
    }

    if (v35)
    {
      v39 = ~v27 + a2;
      bzero(a1, v35);
      *a1 = v39;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v35) = v38;
      }

      else
      {
        *(a1 + v35) = v38;
      }
    }

    else if (v10)
    {
      *(a1 + v35) = v38;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    }

    *(a1 + v35) = 0;
LABEL_52:
    if (!a2)
    {
      return;
    }

    goto LABEL_53;
  }

  if (!v10)
  {
    goto LABEL_52;
  }

  *(a1 + v35) = 0;
  if (!a2)
  {
    return;
  }

LABEL_53:
  v40 = (((((((((((v31 + ((a1 + v30) & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if ((v26 & 0x80000000) != 0)
  {
    v41 = (v22 + 19 + v40) & ~v22;
    if (v16 == v27)
    {
      if (v15 >= 2)
      {
        v42 = *(v14 + 56);

        v42(v41, a2 + 1);
      }
    }

    else if (v19 >= 2)
    {
      v43 = *(v18 + 56);
      v44 = (v33 + v41) & ~v23;

      v43(v44, a2 + 1, v19, v17);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v40 + 16) = 0;
    *v40 = a2 & 0x7FFFFFFF;
    *(v40 + 8) = 0;
  }

  else
  {
    *(v40 + 8) = a2 - 1;
  }
}

void sub_257E77CE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_257E77D34(uint64_t a1)
{
  if (!qword_27F8FB040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB048, qword_257EEEDB0);
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8FB040);
    }
  }
}

unint64_t sub_257E77D98()
{
  result = qword_27F8FB050;
  if (!qword_27F8FB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB058, &qword_257EEEDC8);
    sub_257E77E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB050);
  }

  return result;
}

unint64_t sub_257E77E24()
{
  result = qword_27F8FB060;
  if (!qword_27F8FB060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB068, &qword_257EEEDD0);
    sub_257BD2D4C(&qword_27F8FB070, &qword_27F8FB078, &qword_257EEEDD8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB060);
  }

  return result;
}

unint64_t sub_257E77F00()
{
  result = qword_27F8FB080;
  if (!qword_27F8FB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB080);
  }

  return result;
}

unint64_t sub_257E77F54()
{
  result = qword_27F8FB088;
  if (!qword_27F8FB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB088);
  }

  return result;
}

uint64_t sub_257E78008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257E78050()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v5 = *(type metadata accessor for MFMenu(0, v11) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_257ECE0F0() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_257E75E1C(v0 + v6, v9, v1, v2, v3, v4);
}

unint64_t sub_257E78158()
{
  result = qword_27F8FB0E8;
  if (!qword_27F8FB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB0D0, &qword_257EEEF50);
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68, &qword_257EEE018, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB0E8);
  }

  return result;
}

unint64_t sub_257E78210()
{
  result = qword_27F8FB0F0;
  if (!qword_27F8FB0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB0E0, &unk_257EEEF60);
    sub_257E77F00();
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68, &qword_257EEE018, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB0F0);
  }

  return result;
}

uint64_t sub_257E782E0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v12[0] = v2[2];
  v4 = v12[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = *(type metadata accessor for MFMenu(0, v12) - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_9()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v15 = v1;
  v14 = *(v0 + 24);
  v16 = v14;
  v17 = v2;
  v3 = type metadata accessor for MFMenu(0, &v15);
  v4 = (*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80);
  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_257ECDF90();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  v7 = v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_257ECE1D0();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v3[22];
  v10 = *(v1 - 8);
  if (!(*(v10 + 48))(v5 + v9, 1, v1))
  {
    (*(v10 + 8))(v5 + v9, v1);
  }

  v11 = v3[23];
  v12 = *(v14 - 8);
  if (!(*(v12 + 48))(v5 + v11, 1, v14))
  {
    (*(v12 + 8))(v5 + v11, v14);
  }

  if (*(v5 + v3[26]))
  {
  }

  return swift_deallocObject();
}

double sub_257E786DC(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for MFMenu(0, v9) - 8);
  return sub_257E76C28(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

unint64_t sub_257E7877C()
{
  result = qword_27F8FB128;
  if (!qword_27F8FB128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB120, &qword_257EEEF98);
    sub_257E78834();
    sub_257BD2D4C(&qword_27F8F77E0, &qword_27F8F77E8, &qword_257EEEFB0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB128);
  }

  return result;
}

unint64_t sub_257E78834()
{
  result = qword_27F8FB130;
  if (!qword_27F8FB130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB138, &unk_257EEEFA0);
    sub_257E788EC();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB130);
  }

  return result;
}

unint64_t sub_257E788EC()
{
  result = qword_27F8FB140;
  if (!qword_27F8FB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB140);
  }

  return result;
}

unint64_t sub_257E78940()
{
  result = qword_27F8FB148;
  if (!qword_27F8FB148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB108, &qword_257EEEF80);
    sub_257BD2D4C(&qword_27F8FB150, &qword_27F8FB100, &qword_257EEEF78, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB148);
  }

  return result;
}

uint64_t sub_257E789F8()
{
  v1 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v1;
  v2 = type metadata accessor for MFMenu(0, v4);
  return sub_257E72BAC(0, v2);
}

id sub_257E78BD4()
{
  [v0 setContentMode_];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v2 setCornerCurve_];

  v3 = [v0 layer];
  [v3 setMasksToBounds_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = sub_257E790EC();
  [v0 setImage:v4 forState:0];

  [v0 setIsAccessibilityElement_];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_257ECF500();
    v9 = sub_257ECF4C0();
  }

  [v0 setAccessibilityLabel_];

  [v0 setShowsLargeContentViewer_];
  [v0 setScalesLargeContentImage_];
  v10 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v0 addInteraction_];

  return [v0 addTarget:v0 action:sel_didTapSettingsButton_ forControlEvents:64];
}

id SettingsButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_257E790EC()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

uint64_t sub_257E79238()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257E79340()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v29[0] = *v8;
  v29[1] = v9;
  v30 = v10;
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  *&v28[-16] = v29;
  sub_257ECFD50();

  v17 = v31;
  sub_257E79DDC(v31);
  sub_257E7A644(v17);
  sub_257ECD420();
  v18 = sub_257ECDA20();
  v19 = sub_257ECFBD0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[0] = v21;
    *v20 = 136315138;
    v22 = 0x656C6464696DLL;
    if (v17 != 1)
    {
      v22 = 0x6D6F74746F62;
    }

    if (v17)
    {
      v23 = v22;
    }

    else
    {
      v23 = 7368564;
    }

    if (v17)
    {
      v24 = 0xE600000000000000;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_257BF1FC8(v23, v24, v29);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_257BAC000, v18, v19, "Restored card position: %s", v20, 0xCu);
    v26 = __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x259C74820](v21, -1, -1, v26);
    MEMORY[0x259C74820](v20, -1, -1);
  }

  return (*(v1 + 8))(v7, v0);
}

id sub_257E79644(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView] = a1;
  v7 = a1;
  sub_257DD1E80(2);
  v9 = v8;
  sub_257DD1E80(0);
  v11 = v10;
  sub_257DD1E80(2);
  v13 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration];
  *v13 = v9;
  *(v13 + 1) = v11;
  *(v13 + 2) = v12 * 0.5;
  *(v13 + 3) = 0x3FD999999999999ALL;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_257E797F8();

  return v14;
}

void sub_257E797F8()
{
  v1 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v12 = v0;
  v2 = [v1 initWithTarget:v12 action:sel_handlePanGestureWithSender_];
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer;
  v4 = *&v12[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer];
  *&v12[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v5 setMaximumNumberOfTouches_];

  v6 = *&v12[v3];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v6 setDelegate_];
  v7 = *&v12[v3];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v7 _setHysteresis_];
  if (!*&v12[v3])
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [*(*&v12[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView] + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) addGestureRecognizer_];
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v12 action:sel_handleLongPress_];

    v10 = v9;
    [v10 setCancelsTouchesInView_];
    [v10 setMinimumPressDuration_];
    [v10 setDelegate_];

    [*(*&v12[v8] + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) addGestureRecognizer_];
    v11 = v10;
  }

  else
  {
    v11 = v12;
  }
}

void sub_257E79A04()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) heightAnchor];
  sub_257DD1E80(0);
  v2 = [v1 constraintEqualToConstant_];

  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint) = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setActive_];

    *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_257E79ACC(void *a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint;
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerTopConstraint);
    if (v6)
    {
      v7 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED9BE0;
      *(v8 + 32) = v5;
      *(v8 + 40) = v6;
      sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
      v9 = v5;
      v10 = v6;
      v11 = v9;
      v12 = v10;
      v13 = sub_257ECF7F0();

      [v7 deactivateConstraints_];
    }
  }

  v14 = [*(v1 + v3) heightAnchor];
  sub_257DD1E80(0);
  v16 = [v14 constraintEqualToConstant_];

  v17 = *(v1 + v4);
  *(v1 + v4) = v16;
  v18 = v16;

  if (v18)
  {
    [v18 setActive_];

    v19 = [*(v1 + v3) leadingAnchor];
    v20 = [a1 safeAreaLayoutGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:0.0];
    LODWORD(v23) = 1148829696;
    [v22 setPriority_];
    v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint) = v22;

    v25 = [*(v1 + v3) bottomAnchor];
    v26 = [a1 safeAreaLayoutGuide];
    v27 = [v26 bottomAnchor];

    v28 = [v25 constraintEqualToAnchor:v27 constant:0.0];
    LODWORD(v29) = 1148829696;
    [v28 setPriority_];
    v30 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint) = v28;
  }

  else
  {
    __break(1u);
  }
}

void sub_257E79DDC(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v4)
  {
    [v4 stopAnimation_];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = 0;

  sub_257DD1E80(a1);
  v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v6)
  {
    [v6 setConstant_];
  }

  v7 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
  [v7 layoutIfNeeded];

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition) = a1;
  v8 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
  *v8 = 0;
  *(v8 + 8) = 1;
  sub_257DD1E80(a1);
  sub_257E79EE0(v9);
  v10 = *MEMORY[0x277D76488];

  UIAccessibilityPostNotification(v10, 0);
}

void sub_257E79EE0(double a1)
{
  sub_257DD1E80(0);
  v4 = v3;
  sub_257DD1E80(1);
  v6 = v5;
  sub_257DD1E80(2);
  if (v6 != v4)
  {
    if (v7 <= a1)
    {
      if (v7 <= v6)
      {
        if (v7 > a1 || v6 <= a1)
        {
          if (v6 > v4)
          {
LABEL_27:
            __break(1u);
            return;
          }

          v8 = -0.8;
          if (v6 > a1 || v4 <= a1)
          {
            goto LABEL_22;
          }

          v9 = -(a1 - v6) / (v4 - v6);
        }

        else
        {
          v9 = 1.0 - (a1 - v7) / (v6 - v7);
        }

LABEL_17:
        if (v9 <= -1.0)
        {
          v8 = -0.8;
        }

        else
        {
          if (v9 > 1.0)
          {
            v9 = 1.0;
          }

          v8 = v9 * 0.8;
        }

        goto LABEL_22;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_8:
    v8 = 0.8;
    goto LABEL_22;
  }

  if (v7 > a1)
  {
    goto LABEL_8;
  }

  if (v7 > v4)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = -0.8;
  if (v7 <= a1 && v4 > a1)
  {
    v9 = (a1 - v7) / ((v4 - v7) * -0.5) + 1.0;
    goto LABEL_17;
  }

LABEL_22:
  v10 = *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
  sub_257DAA1B8(v8);
}

void sub_257E7A0AC(unsigned __int8 a1, double a2)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v6 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v6)
  {
    [v6 stopAnimation_];
    v7 = *(v2 + v5);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + v5) = 0;

  v8 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  [v8 setStiffness_];
  [v8 setDamping_];
  [v8 setInitialVelocity_];
  [v8 damping];
  v10 = v9;
  [v8 stiffness];
  v12 = sqrt(v11);
  v13 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithDampingRatio:v10 / (v12 + v12) initialVelocity:{a2, a2}];
  sub_257DD1E80(a1);
  v14 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v14)
  {
    [v14 setConstant_];
  }

  [v8 settlingDuration];
  v16 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v13 timingParameters:v15];
  v17 = *(v2 + v5);
  *(v2 + v5) = v16;
  v18 = v16;

  if (!v18)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_257E7CAAC;
  v42 = v19;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_257D231C0;
  v40 = &block_descriptor_23_1;
  v20 = _Block_copy(&v37);

  [v18 addAnimations_];
  _Block_release(v20);

  v21 = *(v2 + v5);
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a1;
  v41 = sub_257E7CAB4;
  v42 = v23;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_257E106F4;
  v40 = &block_descriptor_30_1;
  v24 = _Block_copy(&v37);
  v25 = v21;

  [v25 addCompletion_];
  _Block_release(v24);

  v26 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
  v27 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
  if (v27)
  {
    v28 = a1 ? sub_257ED0640() ^ 1 : 0;
    v29 = v27;

    [v29 setReversed_];

    v30 = *(v2 + v26);
    if (v30)
    {
      [v30 continueAnimationWithTimingParameters:v13 durationFactor:2.0];
    }
  }

  v31 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
  v32 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
  if (v32)
  {
    if (a1 > 1u)
    {
      v33 = 1;
    }

    else
    {
      v33 = sub_257ED0640();
    }

    v34 = v32;

    [v34 setReversed_];

    v35 = *(v2 + v31);
    if (v35)
    {
      [v35 continueAnimationWithTimingParameters:v13 durationFactor:2.0];
    }
  }

  v36 = *(v2 + v5);
  if (v36)
  {
    [v36 startAnimation];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_257E7A560(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(Strong + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
    [v3 layoutIfNeeded];
  }
}

void sub_257E7A5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_257E7A644(v3);
  }
}

id sub_257E7A644(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [*(*(*(*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) setAlpha_];
  v4 = dbl_257EEF060[a1];
  [*(*(*(*(v1 + v3) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) setAlpha_];
  v5 = *(*(*(v1 + v3) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView);

  return [v5 setAlpha_];
}

BOOL sub_257E7A744(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 velocityInView_];
    return fabs(v5) < fabs(v4);
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v10 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView);
  v11 = a1;
  [v8 locationInView_];
  v12 = [*(v1 + v9) hitTest:0 withEvent:?];
  if (!v12)
  {
    v13 = v11;
LABEL_10:

    return 1;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    goto LABEL_10;
  }

  v15 = v14;
  type metadata accessor for MFChevronView();
  LOBYTE(v15) = [v15 isKindOfClass_];

  return (v15 & 1) != 0;
}

void sub_257E7A908(void *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v13 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  [v13 alpha];
  if (v15 > 0.0)
  {

LABEL_4:
    [a1 velocityInView_];
    v17 = v16;
    v18 = [a1 state];
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        sub_257E7ADC4(a1);
      }

      else if (v18 == 4)
      {
        v21 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition;
        v22 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition);
        sub_257E7A0AC(v22, 0.4);
        *(v1 + v21) = v22;
        v23 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
        *v23 = 0;
        *(v23 + 8) = 1;
        sub_257DD1E80(v22);
        sub_257E79EE0(v24);
        UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
      }
    }

    else if (v18 == 1)
    {
      v28 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
      v29 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
      if (v29)
      {
        [v29 pauseAnimation];
        v30 = *(v1 + v28);
        if (v30)
        {
          [v30 setReversed_];
        }
      }

      v31 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
      v32 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
      if (v32)
      {
        [v32 pauseAnimation];
        v33 = *(v1 + v31);
        if (v33)
        {
          [v33 setReversed_];
        }
      }

      sub_257E7C4FC();
    }

    else if (v18 == 2)
    {
      v19 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
      if (v19)
      {
        [v19 setReversed_];
      }

      v20 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
      if (v20)
      {
        [v20 setReversed_];
      }

      sub_257E7ACD0(a1);
    }

    v34 = *(v1 + v12);
    v39 = sub_257E7B424();

    if (v39)
    {
      sub_257E071A8();
      v35 = *&v39[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
      if (v35)
      {
        v36 = v35;
        sub_257BDB830();
      }

      v37 = v39;
    }

    return;
  }

  sub_257ECD350();
  v25 = sub_257ECDA20();
  v26 = sub_257ECFBD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_257BAC000, v25, v26, "gnoring pan on card because alpha > 0.", v27, 2u);
    MEMORY[0x259C74820](v27, -1, -1);
  }

  (*(v4 + 8))(v11, v3);
  [a1 setState_];
  [a1 reset];
}

void sub_257E7ACD0(void *result)
{
  if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight + 8) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
    v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight);
    [result translationInView_];
    v5 = sub_257C33754(v3 - v4, *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration), *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 8), *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 16), *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 24));
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
    if (v7)
    {
      [v7 setConstant_];
    }

    [*(v1 + v2) setNeedsLayout];
    [*(v1 + v2) layoutIfNeeded];
    sub_257E79EE0(v6);
    sub_257E7BD4C();

    sub_257E7C100();
  }
}

void sub_257E7ADC4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v62 = *(v4 - 8);
  v63 = v4;
  *&v9 = MEMORY[0x28223BE20](v4, v5, v6, v7, v8).n128_u64[0];
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [a1 velocityInView_];
  v14 = v13;
  v15 = *(v2 + v12);
  v16 = *(v15 + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
  v17 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint;
  v18 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v18)
  {
    v19 = v16;
    [v18 constant];
  }

  else
  {
    v21 = *(v15 + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView);
    v22 = v16;
    [v21 frame];
    Height = CGRectGetHeight(v65);
  }

  sub_257DD257C(Height);
  v24 = v23;

  v25 = (*(v2 + v12) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_configuration);
  v27 = *v25;
  v26 = v25[1];
  v28 = sub_257ECFBC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_257ED9BD0;
  v30 = *(v2 + v17);
  if (v30)
  {
    [v30 constant];
  }

  else
  {
    [*(*(v2 + v12) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    v31 = CGRectGetHeight(v66);
  }

  v32 = v31;
  v33 = MEMORY[0x277D85048];
  *(v29 + 56) = MEMORY[0x277D85048];
  v34 = sub_257E7CA58();
  *(v29 + 64) = v34;
  *(v29 + 32) = v32;
  *(v29 + 96) = v33;
  *(v29 + 104) = v34;
  *(v29 + 72) = v14;
  sub_257BD2C2C(0, &unk_281543D30, 0x277D86200);
  v35 = sub_257ED00A0();
  sub_257ECD960(v28, &dword_257BAC000, v35, "MFCardContainerController: grabber didEnd cardHeight: %f, velocity: %f", v61, v62);

  v36 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition;
  if (!v24)
  {
    v37 = 0xE300000000000000;
    v38 = 7368564;
    if (!*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v37 = 0xE600000000000000;
  if (v24 != 1)
  {
    v38 = 0x6D6F74746F62;
    if (!*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition))
    {
      goto LABEL_16;
    }

LABEL_12:
    v39 = 0xE600000000000000;
    if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition) == 1)
    {
      if (v38 != 0x656C6464696DLL)
      {
        goto LABEL_21;
      }
    }

    else if (v38 != 0x6D6F74746F62)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v38 = 0x656C6464696DLL;
  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition))
  {
    goto LABEL_12;
  }

LABEL_16:
  v39 = 0xE300000000000000;
  if (v38 != 7368564)
  {
LABEL_21:
    v40 = sub_257ED0640();

    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v37 != v39)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v14 >= -v27)
  {
    if (v27 < v14)
    {
      v43 = sub_257ECFBC0();
      v44 = sub_257ED00A0();
      sub_257ECD960(v43, &dword_257BAC000, v44, "MFCardContainerController: previous card position", 49, 2, MEMORY[0x277D84F90]);

      if (*(v2 + v36))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }
    }
  }

  else
  {
    v41 = sub_257ECFBC0();
    v42 = sub_257ED00A0();
    sub_257ECD960(v41, &dword_257BAC000, v42, "MFCardContainerController: next card position", 45, 2, MEMORY[0x277D84F90]);

    v24 = *(v2 + v36) > 1u;
  }

LABEL_28:
  if (v14 >= -v26)
  {
    if (v26 >= v14)
    {
      goto LABEL_33;
    }

    v47 = sub_257ECFBC0();
    v46 = sub_257ED00A0();
    v24 = 2;
    sub_257ECD960(v47, &dword_257BAC000, v46, "MFCardContainerController: locking to bottom", 44, 2, MEMORY[0x277D84F90]);
  }

  else
  {
    v45 = sub_257ECFBC0();
    v46 = sub_257ED00A0();
    sub_257ECD960(v45, &dword_257BAC000, v46, "MFCardContainerController: locking to top", 41, 2, MEMORY[0x277D84F90]);
    v24 = 0;
  }

LABEL_33:
  sub_257DD1E80(v24);
  v49 = v48;
  v50 = *(v2 + v17);
  if (v50)
  {
    [v50 constant];
  }

  else
  {
    [*(*(v2 + v12) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    v51 = CGRectGetHeight(v67);
  }

  v52 = v49 + v51;
  if (v52 == 0.0)
  {
    v52 = 1.0;
  }

  sub_257E7A0AC(v24, v14 / v52);
  *(v2 + v36) = v24;
  v53 = v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_257DD1E80(v24);
  sub_257E79EE0(v54);
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v55 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v64 = v24;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v56 = sub_257ECF110();
  MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
  *(&v61 - 2) = &v64;
  *(&v61 - 1) = v55;
  sub_257ECFD40();
  (*(*&v62 + 8))(v11, v63);
  swift_endAccess();
}

id sub_257E7B424()
{
  v1 = [v0 nextResponder];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for AppViewController(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      v4 = [v0 superview];
      if (v4)
      {
        v5 = v4;
        v6 = sub_257E7B424();

        return v6;
      }

      goto LABEL_10;
    }
  }

  result = [v0 nextResponder];
  if (!result)
  {
    return result;
  }

  v2 = result;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = sub_257E7B424();

    return v7;
  }

LABEL_10:

  return 0;
}

void sub_257E7B59C(void *a1)
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
    v4 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) traitCollection];
    if (!*MEMORY[0x277D76620])
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = *MEMORY[0x277D76620];
    v7 = sub_257CA7574();
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;

      v13 = [v5 horizontalSizeClass];
      if (v13 == 1)
      {
        if (v10 <= 375.0)
        {
          return;
        }

        v14 = v10 / v12;
        if (v10 / v12 <= 0.42)
        {
          return;
        }
      }
    }

    else
    {
    }

    v15 = [a1 view];
    if (v15)
    {
      v30 = v15;
      v16 = [a1 state];
      if ((v16 - 3) < 2)
      {
        sub_257E7C7FC();

        v28 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation;
        *v28 = 0;
        *(v28 + 8) = 0;
        *(v28 + 16) = 1;
        v29 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame;
        *v29 = 0u;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 1;
      }

      else
      {
        if (v16 == 2)
        {
          sub_257E7C628(a1);
        }

        else if (v16 == 1)
        {
          v17 = [*(v1 + v3) superview];
          [a1 locationInView_];
          v19 = v18;
          v21 = v20;

          v22 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation;
          *v22 = v19;
          *(v22 + 8) = v21;
          *(v22 + 16) = 0;
          [*(v1 + v3) frame];
          v23 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame;
          *v23 = v24;
          *(v23 + 8) = v25;
          *(v23 + 16) = v26;
          *(v23 + 24) = v27;
          *(v23 + 32) = 0;
          sub_257E7B820(v30, a1);
        }
      }
    }
  }
}

id sub_257E7B820(void *a1, void *a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v14[4] = sub_257E7CA1C;
  v14[5] = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_257D231C0;
  v14[3] = &block_descriptor_62;
  v7 = _Block_copy(v14);
  v8 = v2;
  v9 = a1;
  v10 = a2;

  [v5 animateWithDuration:v7 animations:0.2];
  _Block_release(v7);
  v11 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer;
  result = *&v8[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = [result isEnabled];
  result = *&v8[v11];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [result setEnabled_];
  result = *&v8[v11];
  if (result)
  {
    return [result setEnabled_];
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_257E7B9F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v6 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView);
  CGAffineTransformMakeScale(&v7, 1.1, 1.1);
  [v6 setTransform_];
  [*(a1 + v5) setAlpha_];
  sub_257E7C628(a3);
}

void sub_257E7BA8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView);
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  [v3 setTransform_];
  [*(a1 + v2) setAlpha_];
  v4 = [*(a1 + v2) superview];
  [v4 layoutIfNeeded];
}

void sub_257E7BB20()
{
  [*(*(*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) setAlpha_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:0.2];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_257E7CA50;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_257D231C0;
  v5[3] = &block_descriptor_19_2;
  v3 = _Block_copy(v5);

  [v1 addAnimations_];
  _Block_release(v3);
  [v1 setScrubsLinearly_];
  [v1 setPausesOnCompletion_];
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator) = v1;
}

void sub_257E7BCAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(*(*(*(Strong + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) setAlpha_];
  }
}

void sub_257E7BD4C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
  if (!*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator))
  {
    sub_257E7BB20();
  }

  v3 = *(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
  sub_257DD0B68();
  v5 = v4;

  v6 = *(v1 + v2);
  if (v6)
  {
    if (v5 <= 0.999)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1.0;
    }

    if (v5 >= 0.001)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v6;
    v9 = [v11 isReversed];
    v10 = 1.0 - v8;
    if (!v9)
    {
      v10 = v8;
    }

    [v11 setFractionComplete_];
  }

  else
  {
    __break(1u);
  }
}

void sub_257E7BE44()
{
  [*(*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView) setAlpha_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:0.15];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_257E7CA48;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_257D231C0;
  v5[3] = &block_descriptor_15_0;
  v3 = _Block_copy(v5);

  [v1 addAnimations_];
  _Block_release(v3);
  [v1 setScrubsLinearly_];
  [v1 setPausesOnCompletion_];
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator) = v1;
}

void sub_257E7BFC4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(*(*(Strong + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView) setAlpha_];
  }
}

void sub_257E7C054()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v1)
  {
    [v1 constant];
  }

  else
  {
    [*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    CGRectGetHeight(v2);
  }

  sub_257DD1E80(2);
  sub_257DD1E80(1);
  sub_257DD1E80(2);
}

void sub_257E7C100()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
  if (!*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator))
  {
    sub_257E7BE44();
  }

  sub_257E7C054();
  v2 = 0.0;
  if (v3 >= 0.001)
  {
    sub_257E7C054();
    v2 = 1.0;
    if (v4 <= 0.999)
    {
      sub_257E7C054();
      v2 = v5;
    }
  }

  v6 = *(v0 + v1);
  if (v6)
  {
    v9 = v6;
    v7 = [v9 isReversed];
    v8 = 1.0 - v2;
    if (!v7)
    {
      v8 = v2;
    }

    [v9 setFractionComplete_];
  }

  else
  {
    __break(1u);
  }
}

void sub_257E7C1CC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
  }

  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
  if (v4)
  {
    [v4 stopAnimation_];
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
  if (v6)
  {
    [v6 stopAnimation_];
  }

  v7 = *(v0 + v3);
  if (v7)
  {
    [v7 finishAnimationAtPosition_];
  }

  v8 = *(v0 + v5);
  if (v8)
  {
    [v8 finishAnimationAtPosition_];
  }

  v9 = *(v0 + v1);
  *(v0 + v1) = 0;

  v10 = *(v0 + v3);
  *(v0 + v3) = 0;

  v11 = *(v0 + v5);
  *(v0 + v5) = 0;
}

id sub_257E7C2AC()
{
  ObjectType = swift_getObjectType();
  sub_257E7C1CC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_257E7C48C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D13998(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257E7C4C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D13998(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_257E7C4FC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v4)
  {
    [v4 constant];
  }

  else
  {
    [*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    Height = CGRectGetHeight(v14);
  }

  v6 = v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
  *v6 = Height;
  *(v6 + 8) = 0;
  v7 = v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 24) = 0x3FD999999999999ALL;
  v8 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  sub_257DD1E80(0);
  *(v7 + 8) = v9;
  v10 = [*(v0 + v8) superview];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;

    *(v7 + 16) = v13 * 0.5;
  }
}

void sub_257E7C628(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation);
  if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation + 16) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame);
    if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame + 32) & 1) == 0)
    {
      v5 = *v2;
      v4 = v2[1];
      v7 = v3[2];
      v6 = v3[3];
      v9 = *v3;
      v8 = v3[1];
      v11 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
      if (v11)
      {
        v22 = v11;
        [a1 locationInView_];
        v14 = v13;
        v15 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint);
        if (v15)
        {
          v16 = v12;
          v17 = v15;
          v24.origin.x = v9;
          v24.origin.y = v8;
          v24.size.width = v7;
          v24.size.height = v6;
          [v17 setConstant_];
        }

        v18 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint);
        if (v18)
        {
          v19 = v18;
          v25.origin.x = v9;
          v25.origin.y = v8;
          v25.size.width = v7;
          v25.size.height = v6;
          MaxY = CGRectGetMaxY(v25);
          [v22 bounds];
          [v19 setConstant_];
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_257EB370C();
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_257E7C7FC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  [v1 setStiffness_];
  [v1 setDamping_];
  [v1 setInitialVelocity_];
  [v1 damping];
  v3 = v2;
  [v1 stiffness];
  v5 = sqrt(v4);
  v6 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithDampingRatio:v3 / (v5 + v5) initialVelocity:{0.5, 0.5}];
  [v1 settlingDuration];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v6 timingParameters:v7];
  v9 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator;
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator] = v8;
  v11 = v8;

  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v16[4] = sub_257E7CA40;
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_257D231C0;
    v16[3] = &block_descriptor_9_1;
    v13 = _Block_copy(v16);
    v14 = v0;

    [v11 addAnimations_];
    _Block_release(v13);

    v15 = *&v0[v9];
    if (v15)
    {
      [v15 startAnimation];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

unint64_t sub_257E7CA58()
{
  result = qword_27F8FB1F8;
  if (!qword_27F8FB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB1F8);
  }

  return result;
}

uint64_t sub_257E7CAE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v3 = *(a1 + 16);
  *(v2 + 48) = *a1;
  *(v2 + 64) = v3;
  v4 = *(a1 + 48);
  *(v2 + 80) = *(a1 + 32);
  *(v2 + 96) = v4;
  *(v2 + 112) = *(a1 + 64);
  *(v2 + 128) = *(a1 + 80);
  *(v2 + 145) = *(a1 + 88);
  sub_257ECF900();
  *(v2 + 136) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E7CBA8, v6, v5);
}

uint64_t sub_257E7CBA8()
{
  v33 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 145) > 1u)
    {
      if (*(v0 + 145) == 2)
      {
        v9 = qword_281544FE0;
        v25 = *(v0 + 48);

        if (v9 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        v10 = *(v0 + 120);
        v11 = *(v0 + 128);
        v12 = *(v0 + 112);
        v29 = *(v0 + 96);
        v31 = *(v0 + 104);
        v27 = *(v0 + 88);
        v14 = *(v0 + 72);
        v13 = *(v0 + 80);
        v16 = *(v0 + 56);
        v15 = *(v0 + 64);
        v17 = *(v0 + 48);
        if (*(v0 + 144) == 1)
        {
          sub_257C15CBC(v25);
        }

        sub_257C58C58(v17, v16, v15, v14, v13, v27, v29, v31, v12, v10, v11, 2);
      }

      else
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(v0 + 144) == 1)
        {
          sub_257C1566C();
        }
      }
    }

    else
    {
      if (*(v0 + 145))
      {
        v19 = *(v0 + 48);
        v18 = *(v0 + 56);
        v20 = qword_281544FE0;

        if (v20 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(v0 + 144) == 1)
        {
          sub_257C15AA8(v19, v18);
        }
      }

      else
      {
        v28 = *(v0 + 72);
        v30 = *(v0 + 64);
        v3 = *(v0 + 80);
        v4 = *(v0 + 96);
        v24 = *(v0 + 104);
        v26 = *(v0 + 88);
        v5 = *(v0 + 112);
        v6 = *(v0 + 128);
        v23 = *(v0 + 120);
        v7 = qword_281544FE0;
        v8 = *(v0 + 48);

        if (v7 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(v0 + 144) == 1)
        {
          v32[0] = v8;
          v32[2] = v30;
          v32[3] = v28;
          v32[4] = v3;
          v32[5] = v26;
          v32[6] = v4;
          v32[7] = v24;
          v32[8] = v5;
          v32[9] = v23;
          sub_257C15868(v32, v6);

          goto LABEL_26;
        }
      }
    }
  }

LABEL_26:
  v21 = *(v0 + 8);

  return v21();
}

id sub_257E7CFB8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FocusReticleImage()) initWithFrame_];
    [v4 sizeToFit];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_257E7D06C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FocusIndicatorView();
  v2 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = sub_257E7CFB8();
  [v2 addSubview_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle;
  [*&v2[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  v9 = *&v2[v4];
  sub_257EB6FD8(v2, v5, v6, v7, v8);

  v10 = [v2 layer];
  [v10 setAllowsGroupOpacity_];

  return v2;
}

void sub_257E7D294()
{
  v1 = v0;
  v2 = sub_257ECF4C0();
  v31 = objc_opt_self();
  v3 = [v31 animationWithKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257ED9BD0;
  v5 = MEMORY[0x277D839F8];
  *(v4 + 32) = 0x3FF8000000000000;
  *(v4 + 88) = v5;
  *(v4 + 56) = v5;
  *(v4 + 64) = 0x3FF0000000000000;
  v6 = sub_257ECF7F0();

  [v3 setValues_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257ED9BE0;
  v8 = *MEMORY[0x277CDA7B0];
  v9 = objc_opt_self();
  *(v7 + 32) = [v9 functionWithName_];
  v10 = *MEMORY[0x277CDA7C0];
  *(v7 + 40) = [v9 &selRef_URLContexts + 5];
  sub_257BD2C2C(0, &unk_27F8FB208, 0x277CD9EF8);
  v11 = sub_257ECF7F0();

  [v3 setTimingFunctions_];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257ED9BE0;
  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  *(v12 + 32) = sub_257ECFF10();
  *(v12 + 40) = sub_257ECFF10();
  v13 = sub_257ECF7F0();

  [v3 setKeyTimes_];

  v14 = *MEMORY[0x277CDA070];
  [v3 setCalculationMode_];
  v15 = v3;
  [v15 setDuration_];
  v16 = [v1 layer];
  v17 = sub_257ECF4C0();
  [v16 addAnimation:v15 forKey:v17];

  v18 = sub_257ECF4C0();
  v19 = [v31 animationWithKeyPath_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_257ED9BD0;
  *(v20 + 32) = 0;
  v21 = MEMORY[0x277D839F8];
  *(v20 + 88) = MEMORY[0x277D839F8];
  *(v20 + 56) = v21;
  *(v20 + 64) = 0x3FF0000000000000;
  v22 = sub_257ECF7F0();

  [v19 setValues_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_257ED9BE0;
  *(v23 + 32) = [v9 functionWithName_];
  *(v23 + 40) = [v9 functionWithName_];
  v24 = sub_257ECF7F0();

  [v19 setTimingFunctions_];

  v25 = [v15 keyTimes];
  [v19 setKeyTimes_];

  [v19 setCalculationMode_];
  v32 = v19;
  [v15 duration];
  v27 = v26;

  [v32 setDuration_];
  v28 = [v30 layer];
  v29 = sub_257ECF4C0();
  [v28 addAnimation:v32 forKey:v29];

  [v30 setAlpha_];
}

void sub_257E7D810(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setAlpha_];
  }
}

id sub_257E7D8A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FocusIndicatorView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_257E7D908(char a1)
{
  v2 = v1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_2815447E0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  sub_257ECFD50();

  if (v14 == 1)
  {
    v10 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton;
    v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
    if (v11)
    {
      [v11 setHidden_];
      v12 = *(v2 + v10);
      if (v12)
      {
        [v12 setEnabled_];
      }
    }

    v13 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton);
    if (v13)
    {
      [v13 setHidden_];
    }
  }
}

void sub_257E7DAB4()
{
  v1 = [v0 superview];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    [v0 setFrame_];
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      [v3 setFrame_];
    }

    v4 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
    if (v4)
    {
      [v4 setFrame_];
    }

    v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
    if (v5)
    {
      v6 = v5;
      [v0 bounds];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      MidX = CGRectGetMidX(v20);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v12 = MidX + -48.0;
      [v0 bounds];
      v13 = v22.origin.x;
      v14 = v22.origin.y;
      v15 = v22.size.width;
      v16 = v22.size.height;
      CGRectGetMidX(v22);
      v23.origin.x = v13;
      v23.origin.y = v14;
      v23.size.width = v15;
      v23.size.height = v16;
      [v6 setFrame_];
    }
  }
}

id sub_257E7DDD0()
{
  v0 = [objc_opt_self() defaultConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0, &unk_257ED9DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  v2 = MEMORY[0x277D837D0];
  sub_257ED0280();
  *(inited + 96) = v2;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  sub_257ED0280();
  *(inited + 168) = MEMORY[0x277D83E88];
  *(inited + 144) = 29527;
  sub_257ED0280();
  v3 = sub_257BEA014(&unk_286905930);
  sub_257E81450(&unk_286905950);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB2E0, &unk_257EE23D0);
  *(inited + 216) = v3;
  sub_257BE88A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0, &qword_257EE0A60);
  swift_arrayDestroy();
  v4 = sub_257ECF3C0();

  v5 = [objc_opt_self() feedbackWithDictionaryRepresentation_];

  [v0 setFeedback_];
  [v0 setMinimumInterval_];
  v6 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithConfiguration_];
  [v6 _setOutputMode_];

  return v6;
}

uint64_t sub_257E7E048(void *a1)
{
  swift_getObjectType();
  v2 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonSize) = 0x4051800000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonMargin) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonMargin) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonSize) = 0x4048000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRestartButtonSize) = 0x4058000000000000;
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v3 = 96.0;
  if (byte_27F8F8D89)
  {
    v3 = 60.0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kDebugButtonsBottom) = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton) = 0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton) = 0;
  v6 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton) = 0;
  v7 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_edgeInsets);
  v8 = *(MEMORY[0x277D768C8] + 16);
  *v7 = *MEMORY[0x277D768C8];
  v7[1] = v8;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__rotationSubscription) = 0;
  v9 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture) = 0;
  v10 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor) = 0xBFF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) = 0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator;
  v12 = sub_257E7DDD0();

  *(v1 + v11) = v12;
  v13 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_pinchStartZoomFactor) = 0x3FF0000000000000;
  v14 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice) = 0;
  sub_257BB000C(v2);

  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_257E7E2C0(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonSize] = 0x4051800000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonMargin] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonMargin] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonSize] = 0x4048000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRestartButtonSize] = 0x4058000000000000;
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v7 = 96.0;
  if (byte_27F8F8D89)
  {
    v7 = 60.0;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kDebugButtonsBottom] = v7;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton] = 0;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_edgeInsets];
  v9 = *(MEMORY[0x277D768C8] + 16);
  *v8 = *MEMORY[0x277D768C8];
  v8[1] = v9;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__rotationSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor] = 0xBFF0000000000000;
  v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic] = 0;
  v10 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator;
  *&v3[v10] = sub_257E7DDD0();
  v11 = &v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor];
  *v11 = 0;
  v11[8] = 1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_pinchStartZoomFactor] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_detectionLabel] = a2;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [a1 addSubview_];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 blackColor];
  v17 = [v16 colorWithAlphaComponent_];

  [v15 setBackgroundColor_];
  sub_257E7E654();
  v18 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v15 action:sel_didPanPreviewView_];

  v19 = v15;
  [v18 setDelegate_];
  [v19 addGestureRecognizer_];
  v20 = *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture];
  *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture] = v18;
  v21 = v18;

  v22 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v19 action:sel_didPinchToZoom_];
  [v19 addGestureRecognizer_];

  v23 = *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture];
  *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture] = v22;

  return v19;
}

void sub_257E7E654()
{
  v1 = sub_257ECFDF0();
  v2 = *(v1 - 8);
  *&v7 = MEMORY[0x28223BE20](v1, v3, v4, v5, v6).n128_u64[0];
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 superview];
  if (v10)
  {
    v36 = v10;
    [v10 bounds];
    [v0 setFrame_];
    v11 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v12 = v0;
    v13 = [v11 initWithTarget:v12 action:sel_toggleDetection];
    [v13 setNumberOfTapsRequired_];
    v35 = v1;
    [v13 setNumberOfTouchesRequired_];
    [v12 addGestureRecognizer_];
    v14 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_pauseSpeech];

    [v14 setNumberOfTapsRequired_];
    [v14 setNumberOfTouchesRequired_];
    [v12 addGestureRecognizer_];
    [v14 requireGestureRecognizerToFail_];
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    v16 = v12;
    v17 = sub_257ECF4C0();
    CFNotificationCenterAddObserver(v15, v16, sub_257E7F150, v17, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    sub_257E7F158(v18);
    v19 = [objc_opt_self() defaultCenter];
    sub_257ECFE00();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257E814C0(&qword_281543EB0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v20 = v35;
    v21 = sub_257ECDE50();

    (*(v2 + 8))(v9, v20);
    *&v16[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__rotationSubscription] = v21;

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v22 = objc_opt_self();
      v23 = [v22 currentDevice];
      v24 = [v23 orientation];

      if (v24 == 3 || (v25 = [v22 currentDevice], v26 = objc_msgSend(v25, sel_orientation), v25, v26 == 4))
      {
        v27 = *&v16[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
        if (v27)
        {
          v28 = v27;
          v29 = [v22 currentDevice];
          v30 = [v29 orientation];

          [v28 rotateIfPossibleTo_];
        }

        v31 = *&v16[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
        if (v31)
        {
          v32 = v31;
          v33 = [v22 currentDevice];
          v34 = [v33 orientation];

          [v32 rotateIfPossibleTo_];
        }
      }
    }
  }
}

unint64_t sub_257E7EC98()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v20, sel_accessibilityCustomActions);
  if (v1)
  {
    v2 = v1;
    sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
    v3 = sub_257ECF810();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v21 = v3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  sub_257ECF500();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_allocWithZone(MEMORY[0x277D75088]);
  sub_257ECC3F0();
  v11 = sub_257ECF4C0();

  aBlock[4] = sub_257E81448;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D96328;
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);
  v13 = [v10 initWithName:v11 actionHandler:v12];

  _Block_release(v12);

  v14 = v13;
  MEMORY[0x259C72300]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  v15 = v21;
  if (v21 >> 62)
  {
    v18 = sub_257ED0210();

    if (v18)
    {
      return v15;
    }

    goto LABEL_10;
  }

  v16 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
LABEL_10:

    return 0;
  }

  return v15;
}

BOOL sub_257E7F0D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [DetectionModeView toggleDetection]_0();
  }

  return Strong != 0;
}

void sub_257E7F158(uint64_t a1)
{
  if (AXIsInternalInstall())
  {
    [v1 bounds];
    v2 = CGRectGetWidth(v43) + -70.0 + -20.0;
    v3 = [objc_allocWithZone(type metadata accessor for RecordButton()) initWithFrame_];
    [v3 addTarget:v1 action:sel_didTapRecordButton_ forControlEvents:64];
    [v3 setHidden_];
    v4 = v3;
    v5 = sub_257ECF4C0();
    [v4 setAccessibilityLabel_];

    v6 = sub_257ECF4C0();
    [v4 setAccessibilityHint_];

    [v4 setIsAccessibilityElement_];
    [v1 addSubview_];
    v7 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton] = v4;
    v40 = v4;

    v8 = [objc_allocWithZone(MEMORY[0x277D75220]) &selRef:20.0 setOriginalURL:{90.0, 48.0, 48.0}];
    v9 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v10 = sub_257ECF4C0();
    v11 = [v9 initWithPath_];

    v41 = v11;
    v12 = sub_257ECF4C0();
    v13 = objc_opt_self();
    v14 = [v13 imageNamed:v12 inBundle:v41];

    [v8 setBackgroundImage:v14 forState:0];
    [v8 addTarget:v1 action:sel_didTapTapToRadarButton_ forControlEvents:64];
    v15 = v8;
    v16 = sub_257ECF4C0();
    [v15 setAccessibilityLabel_];

    v17 = sub_257ECF4C0();
    [v15 setAccessibilityHint_];

    [v15 setIsAccessibilityElement_];
    [v15 setHidden_];
    [v1 addSubview_];
    v18 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton] = v15;
    v19 = v15;

    [v1 bounds];
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    MidX = CGRectGetMidX(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v25 = MidX + -48.0;
    [v1 bounds];
    v26 = v46.origin.x;
    v27 = v46.origin.y;
    v28 = v46.size.width;
    v29 = v46.size.height;
    CGRectGetMidX(v46);
    v47.origin.x = v26;
    v47.origin.y = v27;
    v47.size.width = v28;
    v47.size.height = v29;
    v30 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    v33 = sub_257ECF4C0();
    v34 = [v13 imageNamed:v33 inBundle:v32];

    [v30 setBackgroundImage:v34 forState:0];
    [v30 addTarget:v1 action:sel_didTapRestartButton_ forControlEvents:64];
    v35 = v30;
    v36 = sub_257ECF4C0();
    [v35 setAccessibilityLabel_];

    v37 = sub_257ECF4C0();
    [v35 setAccessibilityHint_];

    [v35 setHidden_];
    [v1 addSubview_];
    v38 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton] = v35;
    v39 = v35;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    sub_257D5854C(byte_286905968);
  }
}

void sub_257E7F7A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 orientation];

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v5;
    aBlock[4] = sub_257E81508;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_35_0;
    v9 = _Block_copy(aBlock);

    _Block_release(v9);
  }
}

id sub_257E7F92C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v2 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton;
  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton);
  if (v3)
  {
    result = [v3 isHidden];
    if (result)
    {
      if (!*(v0 + v2))
      {
        __break(1u);
        goto LABEL_11;
      }

      [v1 addObject_];
    }
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton;
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton);
  if (!v6)
  {
    goto LABEL_9;
  }

  result = [v6 isHidden];
  if (!result)
  {
    goto LABEL_9;
  }

  if (*(v0 + v5))
  {
    [v1 addObject_];
LABEL_9:
    v7 = v1;
    sub_257ECF800();

    return 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_257E7FA84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v5 = *&v4[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
      if (v5)
      {
        [v5 rotateIfPossibleTo_];
      }

      v6 = *&v4[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
      if (v6)
      {
        [v6 rotateIfPossibleTo_];
      }

      [*&v4[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_detectionLabel] rotateIfPossibleTo_];
    }
  }
}

void sub_257E7FB74(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECF190();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v11, v12, v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  aBlock[4] = sub_257E81428;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_63;
  v18 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E814C0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v9, v18);
  _Block_release(v18);

  (*(v3 + 8))(v9, v2);
  (*(v10 + 8))(v16, v24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
    if (v21)
    {
      v22 = v21;

      v20 = sub_257ECF4C0();
      [v22 setAccessibilityHint_];
    }
  }
}

void sub_257E7FE90(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
    if (v3)
    {
      v3[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
      v4 = v3;
      sub_257E71464();
      v5 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
      if (v5)
      {
        v6 = v5;
        [v6 setEnabled_];
      }
    }
  }
}

void sub_257E80114(void *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v11, v12, v13, v14, v15).n128_u64[0];
  v18 = &v68 - v17;
  v19 = [a1 state];
  if ((v19 - 3) < 2)
  {
    v28 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor;
    *v28 = 0;
    *(v28 + 8) = 1;
    return;
  }

  if (v19 != 2)
  {
    if (v19 != 1)
    {
      return;
    }

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    v20 = byte_27F8F8D88;
    [a1 velocityInView_];
    if (v20)
    {
      goto LABEL_31;
    }

    v23 = y;
    v24 = x;
    v25 = [objc_opt_self() currentDevice];
    v26 = [v25 orientation];

    if (v26 == 2)
    {
      v27 = 3.14159265;
    }

    else if (v26 == 4)
    {
      v27 = -1.57079633;
    }

    else
    {
      if (v26 != 3)
      {
        v45 = xmmword_257EEAFE0;
        v44 = xmmword_257EEAFF0;
        v46 = 0uLL;
        goto LABEL_30;
      }

      v27 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v69, v27);
    v44 = *&v69.a;
    v45 = *&v69.c;
    v46 = *&v69.tx;
LABEL_30:
    *&v69.a = v44;
    *&v69.c = v45;
    *&v69.tx = v46;
    CGAffineTransformInvert(&v68, &v69);
    v69 = v68;
    v70.x = v24;
    v70.y = v23;
    v47 = CGPointApplyAffineTransform(v70, &v69);
    y = v47.y;
    x = v47.x;
LABEL_31:
    if (fabs(x) < fabs(y))
    {
      v48 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
      if (v48)
      {
        v49 = v48;
        [v49 videoZoomFactor];
        v50 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor;
        *v50 = v51;
        *(v50 + 8) = 0;
        [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator) prepare];

        *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) = 1;
      }

      else
      {
        sub_257ECD430();
        v52 = sub_257ECDA20();
        v53 = sub_257ECFBD0();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_257BAC000, v52, v53, "No capture device", v54, 2u);
          MEMORY[0x259C74820](v54, -1, -1);
        }

        (*(v4 + 8))(v18, v3);
      }
    }

    return;
  }

  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor + 8))
  {
    return;
  }

  v29 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
  if (v29)
  {
    v30 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor);
    v31 = qword_27F8F4668;
    v32 = v29;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = byte_27F8F8D88;
    [a1 translationInView_];
    v36 = v35;
    if (v33)
    {
      goto LABEL_42;
    }

    v40 = v34;
    v41 = [objc_opt_self() currentDevice];
    v42 = [v41 orientation];

    if (v42 == 2)
    {
      v43 = 3.14159265;
    }

    else if (v42 == 4)
    {
      v43 = -1.57079633;
    }

    else
    {
      if (v42 != 3)
      {
        v56 = xmmword_257EEAFE0;
        v55 = xmmword_257EEAFF0;
        v57 = 0uLL;
        goto LABEL_41;
      }

      v43 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v69, v43);
    v55 = *&v69.a;
    v56 = *&v69.c;
    v57 = *&v69.tx;
LABEL_41:
    *&v69.a = v55;
    *&v69.c = v56;
    *&v69.tx = v57;
    CGAffineTransformInvert(&v68, &v69);
    v69 = v68;
    v71.x = v40;
    v71.y = v36;
    v36 = CGPointApplyAffineTransform(v71, &v69).y;
LABEL_42:
    v58 = [objc_opt_self() mainScreen];
    [v58 _referenceBounds];
    v60 = v59;

    LOBYTE(v69.a) = 0;
    v61 = v36 / v60;
    sub_257D15BB4();
    v63 = v62;
    v64 = [v32 activeFormat];
    [v64 videoMaxZoomFactor];
    v66 = v65;

    if (v66 < v63)
    {
      v63 = v66;
    }

    LOBYTE(v69.a) = 0;
    sub_257D15BB4();
    sub_257D334B0(0, v30 - v61 * (v63 - v67));
    sub_257E8070C(a1);

    return;
  }

  sub_257ECD430();
  v37 = sub_257ECDA20();
  v38 = sub_257ECFBD0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_257BAC000, v37, v38, "No capture device", v39, 2u);
    MEMORY[0x259C74820](v39, -1, -1);
  }

  (*(v4 + 8))(v10, v3);
}

void sub_257E8070C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v41 = v2;
  [v41 videoZoomFactor];
  v6 = v5;
  if (v5 != *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor) || *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) == 1)
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor) = v5;
    sub_257D15BB4();
    v8 = v7;
    sub_257D15BB4();
    v10 = v9;
    v11 = [v41 activeFormat];
    [v11 videoMaxZoomFactor];
    v13 = v12;

    if (v13 < v10)
    {
      v10 = v13;
    }

    if (v6 > v8 && v10 > v6)
    {
      [*(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator) prepare];
    }

    else
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture);
        if (v16)
        {
          v17 = v15;
          sub_257BD2C2C(0, &unk_27F8FB2C0, 0x277D757F8);
          v18 = a1;
          v19 = v16;
          v20 = sub_257ECFF50();

          if (v20)
          {
            v21 = [v17 view];
            [v17 velocityInView_];
            v23 = v22;
            v25 = v24;

            v26 = sqrt(v23 * v23 + v25 * v25);
            v27 = [objc_opt_self() mainScreen];
            [v27 _referenceBounds];
            v29 = v28;

            v30 = v26 / v29;
LABEL_22:
            if (v30 > 1.0)
            {
              v30 = 1.0;
            }

            if (v30 <= 0.7)
            {
              v30 = 0.7;
            }

            [*(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator) impactOccurredWithIntensity_];

            *(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) = 0;
            return;
          }
        }
      }

      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v32 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture);
        if (v32)
        {
          v33 = v31;
          sub_257BD2C2C(0, &unk_27F8F9CB0, 0x277D75848);
          v34 = a1;
          v35 = v32;
          v36 = sub_257ECFF50();

          if (v36)
          {
            if (([v33 velocity], v6 <= v8) && v37 < 0.0 || (objc_msgSend(v33, sel_velocity), v40 > 0.0) && v10 <= v6)
            {
              [v33 velocity];
              v39 = v38;

              v30 = fabs(v39) * 0.125;
              goto LABEL_22;
            }
          }
        }
      }
    }
  }
}

void sub_257E80AF0(void *a1)
{
  v3 = [a1 state];
  if (v3 == 2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_pinchStartZoomFactor);
      v9 = v6;
      [a1 scale];
      sub_257D334B0(0, v7 * v8);
      sub_257E8070C(a1);
    }
  }

  else if (v3 == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
    if (v4)
    {
      [v4 videoZoomFactor];
      *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_pinchStartZoomFactor) = v5;
    }

    else
    {
      [a1 setState_];
      [a1 reset];
    }

    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator) prepare];
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) = 1;
  }
}

void sub_257E80DC4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257E80E44(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

void sub_257E810DC(void *a1)
{
  if (a1)
  {
    v1 = qword_281544FE0;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

void sub_257E811EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton;
  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
  if (v3)
  {
    if (*(v3 + OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording) == 1)
    {
      [v3 setEnabled_];
      v4 = v0 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = *(v5 + 16);
        sub_257ECC3F0();
        v8(sub_257E81420, v7, ObjectType, v5);

        swift_unknownObjectRelease();
      }

      return;
    }

    *(v3 + OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording) = 1;
    v9 = v3;
    sub_257E71464();
    v10 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton);
    if (v10)
    {
      v11 = v10;
      [v11 setEnabled_];
    }
  }

  v12 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    v14 = swift_getObjectType();
    (*(v13 + 8))(v14, v13);
    swift_unknownObjectRelease();
  }

  v15 = *(v1 + v2);
  if (v15)
  {
    v16 = v15;
    v17 = sub_257ECF4C0();
    [v16 setAccessibilityHint_];
  }
}

double block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t sub_257E81450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EF0, &unk_257EEBE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257E814C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257E81524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v14 = v26 - v13;
  sub_257E83E30(a3, v26 - v13);
  v15 = sub_257ECF930();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);
  sub_257ECC3F0();
  if (v17 == 1)
  {
    sub_257BE4084(v14, &unk_27F8F5D70, &unk_257ED9DB0);
  }

  else
  {
    sub_257ECF920();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_257ECF8B0();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_257ECF590() + 32;
      sub_257ECC3F0();
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_257BE4084(a3, &unk_27F8F5D70, &unk_257ED9DB0);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_257BE4084(a3, &unk_27F8F5D70, &unk_257ED9DB0);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t MAGFrameProviderService.currentFrame.getter()
{
  v1[3] = v0;
  v2 = sub_257ECCB70();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[9] = swift_task_alloc();
  v3 = sub_257ECDA30();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_257ECCC80();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = sub_257ECF900();
  v1[17] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v1[18] = v6;
  v1[19] = v5;

  return MEMORY[0x2822009F8](sub_257E819EC, v6, v5);
}

uint64_t sub_257E819EC(uint64_t a1)
{
  sub_257ECCC70();
  sub_257ECD340();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFC00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Will request camera frame", v4, 2u);
    MEMORY[0x259C74820](v4, -1, -1);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[3];

  (*(v6 + 8))(v5, v8);
  v10 = swift_allocObject();
  v1[20] = v10;
  *(v10 + 16) = 0;
  v41 = v10 + 16;
  v11 = sub_257ECF930();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  sub_257ECC3F0();
  sub_257ECC3F0();
  v13 = sub_257ECF8F0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v10;
  v14[5] = v9;
  v16 = sub_257E81524(0, 0, v7, &unk_257EEF250, v14);
  v1[21] = v16;
  v12(v7, 1, 1, v11);
  sub_257ECC3F0();
  v17 = sub_257ECF8F0();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v15;
  v18[4] = v16;
  v19 = sub_257E81524(0, 0, v7, &unk_257EEF260, v18);
  v1[22] = v19;
  if (!os_variant_has_internal_ui())
  {
    goto LABEL_11;
  }

  v20 = v1[8];
  v22 = v1[4];
  v21 = v1[5];
  v23 = static MAGAutomationSupport.freezeFrameAutomationURL.getter(v20);
  v24 = *(v21 + 48);
  LODWORD(v22) = v24(v20, 1, v22, v23);
  sub_257BE4084(v20, &qword_27F8F5F30, &qword_257EDA9E0);
  if (v22 == 1)
  {
    goto LABEL_11;
  }

  v25 = v1[7];
  v26 = v1[4];
  v27 = static MAGAutomationSupport.freezeFrameAutomationURL.getter(v25);
  if (v24(v25, 1, v26, v27) == 1)
  {
    sub_257BE4084(v1[7], &qword_27F8F5F30, &qword_257EDA9E0);
LABEL_11:
    v35 = swift_task_alloc();
    v1[23] = v35;
    v35[2] = v16;
    v35[3] = v19;
    v35[4] = v41;
    v36 = swift_task_alloc();
    v1[24] = v36;
    *(v36 + 16) = v16;
    *(v36 + 24) = v19;
    v37 = sub_257ECF8F0();
    v1[25] = v37;
    v38 = swift_task_alloc();
    v1[26] = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F87F8, &qword_257EE59F0);
    *v38 = v1;
    v38[1] = sub_257E81EFC;
    v40 = MEMORY[0x277D85700];

    return MEMORY[0x282200830](v1 + 2, &unk_257EEF270, v35, sub_257E83CD0, v36, v37, v40, v39);
  }

  v28 = v1[5];
  v29 = v1[6];
  v30 = v1[4];
  (*(v28 + 32))(v29, v1[7], v30);
  v31 = _s16MagnifierSupport13MAGImageUtilsO20convertToPixelBuffer8imageURLSo11CVBufferRefaSg10Foundation0J0V_tFZ_0();
  (*(v28 + 8))(v29, v30);
  if (!v31)
  {
    goto LABEL_11;
  }

  v32 = v1[15];

  sub_257E824A4(v32);
  (*(v1[14] + 8))(v1[15], v1[13]);

  v33 = v1[1];

  return v33(v31);
}

uint64_t sub_257E81EFC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x2822009F8](sub_257E8205C, v4, v5);
  }
}

uint64_t sub_257E8205C()
{

  v1 = v0[2];
  v2 = v0[15];
  if (v1)
  {

    sub_257E824A4(v2);
    (*(v0[14] + 8))(v0[15], v0[13]);

    v3 = v0[1];

    return v3(v1);
  }

  else
  {
    v5 = v0[13];
    v6 = v0[14];
    sub_257BEBEF0();
    swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 4;
    *(v7 + 24) = 4;
    swift_willThrow();

    sub_257E824A4(v2);
    (*(v6 + 8))(v2, v5);

    v8 = v0[1];

    return v8();
  }
}

uint64_t MAGFrameProviderService.__allocating_init(arService:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 64) = sub_257E8235C;
  *(v2 + 72) = 0;
  *(v2 + 80) = a1;
  v3 = qword_281544FE0;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = xmmword_281548330;
  v6 = qword_281548340;
  v7 = qword_281548348;
  v8 = qword_281548350;
  v9 = qword_281548358;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();

  *(v2 + 16) = v5;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;
  *(v2 + 48) = v8;
  *(v2 + 56) = v9;
  return v2;
}

uint64_t sub_257E8235C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CapturedImage(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

uint64_t MAGFrameProviderService.init(arService:)(void *a1)
{
  *(v1 + 64) = sub_257E8235C;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  v2 = qword_281544FE0;
  v3 = a1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = xmmword_281548330;
  v5 = qword_281548340;
  v6 = qword_281548348;
  v7 = qword_281548350;
  v8 = qword_281548358;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();

  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  return v1;
}

uint64_t sub_257E824A4(uint64_t a1)
{
  v2 = sub_257ECCC80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v34 - v15;
  v17 = sub_257ECDA30();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD340();
  (*(v3 + 16))(v16, a1, v2);
  v25 = sub_257ECDA20();
  v26 = sub_257ECFC00();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = v17;
    v28 = v27;
    *v27 = 134217984;
    sub_257ECCC70();
    sub_257ECCBC0();
    v30 = v29;
    v31 = *(v3 + 8);
    v31(v9, v2);
    v31(v16, v2);
    *(v28 + 1) = v30;
    _os_log_impl(&dword_257BAC000, v25, v26, "Did request camera frame. t=%f", v28, 0xCu);
    v32 = v28;
    v17 = v35;
    MEMORY[0x259C74820](v32, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v16, v2);
  }

  return (*(v18 + 8))(v24, v17);
}

uint64_t sub_257E8272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v6 = sub_257ED03C0();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v7 = sub_257ED03D0();
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  sub_257ECF900();
  v5[42] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  v5[43] = v9;
  v5[44] = v8;

  return MEMORY[0x2822009F8](sub_257E82888, v9, v8);
}

uint64_t sub_257E82888()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (*(v1 + 16))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v2 = *(v0 + 225) ? 256 : 248;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v3 = *(v0 + 264);
  v4 = *(v3 + 16);
  *(v3 + 16) = *(v0 + v2);

  if (*(v3 + 16))
  {
    goto LABEL_14;
  }

  v5 = *(*(v0 + 272) + 80);
  v6 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame);
  if (v6)
  {
    v7 = *(v0 + 264);
    v8 = [v6 capturedImage];
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;
  }

  else
  {
    v13 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer;
    swift_beginAccess();
    v14 = *(v5 + v13);
    if (v14)
    {
      *(*(v0 + 264) + 16) = v14;
      v15 = v14;
      goto LABEL_14;
    }
  }

  if (!*(*(v0 + 264) + 16))
  {
    v10 = sub_257ED0860();
    v12 = v11;
    sub_257ED06F0();
    *(v0 + 232) = v10;
    *(v0 + 240) = v12;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 224) = 1;

    return MEMORY[0x2822009F8](sub_257E82B70, 0, 0);
  }

LABEL_14:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_257E82B70()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = sub_257E83EA0(&qword_27F8F6690, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_257ED06D0();
  sub_257E83EA0(&qword_27F8F6698, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_257ED03E0();
  v5 = *(v2 + 8);
  v0[45] = v5;
  v0[46] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = sub_257E82CF4;
  v8 = v0[38];
  v7 = v0[39];

  return MEMORY[0x2822008C8](v8, v0 + 26, v7, v4);
}

uint64_t sub_257E82CF4()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    (*(v2 + 360))(*(v2 + 304), *(v2 + 280));
    v3 = sub_257E830B0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 320);
    v6 = *(v2 + 328);
    v8 = *(v2 + 312);
    (*(v2 + 360))(*(v2 + 304), *(v2 + 280));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 344);
    v5 = *(v2 + 352);
    v3 = sub_257E82E54;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_257E82E54()
{
  if (*(*(v0 + 264) + 16))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = *(v0 + 225) ? 256 : 248;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v2 = *(v0 + 264);
  v3 = *(v2 + 16);
  *(v2 + 16) = *(v0 + v1);

  if (*(v2 + 16))
  {
    goto LABEL_14;
  }

  v4 = *(*(v0 + 272) + 80);
  v5 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame);
  if (v5)
  {
    v6 = *(v0 + 264);
    v7 = [v5 capturedImage];
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;
  }

  else
  {
    v12 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer;
    swift_beginAccess();
    v13 = *(v4 + v12);
    if (v13)
    {
      *(*(v0 + 264) + 16) = v13;
      v14 = v13;
      goto LABEL_14;
    }
  }

  if (!*(*(v0 + 264) + 16))
  {
    v9 = sub_257ED0860();
    v11 = v10;
    sub_257ED06F0();
    *(v0 + 232) = v9;
    *(v0 + 240) = v11;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 224) = 1;

    return MEMORY[0x2822009F8](sub_257E82B70, 0, 0);
  }

LABEL_14:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_257E830B0()
{
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_257E83124, v1, v2);
}

uint64_t sub_257E83124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257E831AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257E8272C(a1, v4, v5, v7, v6);
}

uint64_t sub_257E8326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_257ED03D0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_257ECF900();
  v4[6] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_257E83360, v7, v6);
}

uint64_t sub_257E83360()
{
  sub_257ED06F0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_257E8342C;

  return sub_257C5CFB8(4000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_257E8342C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_257E83668;
  }

  else
  {
    v8 = sub_257E835C4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_257E835C4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0, &unk_257ED9DF0);
  sub_257ECF9A0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257E83668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257E836D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257E8326C(a1, v4, v5, v6);
}

uint64_t sub_257E83788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = sub_257ECF900();
  v4[10] = sub_257ECF8F0();
  v6 = swift_task_alloc();
  v4[11] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0, &unk_257ED9DF0);
  v4[12] = v7;
  *v6 = v4;
  v6[1] = sub_257E83874;
  v8 = MEMORY[0x277D84950];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v7, a2, v9, v7, v8);
}

uint64_t sub_257E83874()
{
  *(*v1 + 104) = v0;

  v3 = sub_257ECF8B0();
  if (v0)
  {
    v4 = sub_257E83A88;
  }

  else
  {
    v4 = sub_257E839D0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_257E839D0()
{

  v1 = v0[8];
  v2 = v0[5];
  sub_257ECF9A0();
  swift_beginAccess();
  v3 = *v1;
  *v2 = *v1;
  v6 = v0[1];
  v4 = v3;

  return v6();
}

uint64_t sub_257E83A88()
{
  v1 = v0[13];

  sub_257ECF9A0();
  sub_257ECF9A0();

  v2 = v0[8];
  v3 = v0[5];
  sub_257ECF9A0();
  swift_beginAccess();
  v4 = *v2;
  *v3 = *v2;
  v7 = v0[1];
  v5 = v4;

  return v7();
}

uint64_t sub_257E83B8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257E83788(a1, v4, v5, v6);
}

uint64_t sub_257E83C40(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0, &unk_257ED9DF0);
  sub_257ECF9A0();

  return sub_257ECF9A0();
}

uint64_t MAGFrameProviderService.deinit()
{

  return v0;
}

uint64_t MAGFrameProviderService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257E83E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E83EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257E83EF4()
{
  v0 = sub_257ECCD90();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v5 = sub_257ECCA10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECF4B0();
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v18 = sub_257ECCA30();
  __swift_allocate_value_buffer(v18, qword_27F8FB2E8);
  __swift_project_value_buffer(v18, qword_27F8FB2E8);
  sub_257ECF460();
  if (qword_27F8F47C8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, qword_27F913318);
  (*(v6 + 16))(v12, v19, v5);
  sub_257ECCD80();
  return sub_257ECCA40();
}

uint64_t (*static MagnifierIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F8F47F0 != -1)
  {
    swift_once();
  }

  v1 = sub_257ECCA30();
  __swift_project_value_buffer(v1, qword_27F8FB2E8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_257E8420C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0, &qword_257EE7C00);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v33[0] = v33 - v5;
  v6 = sub_257ECCD90();
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v11 = sub_257ECCA10();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECF4B0();
  MEMORY[0x28223BE20](v19 - 8, v20, v21, v22, v23);
  v24 = sub_257ECCA30();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26, v27, v28, v29);
  v30 = sub_257ECC540();
  __swift_allocate_value_buffer(v30, qword_27F8FB300);
  __swift_project_value_buffer(v30, qword_27F8FB300);
  sub_257ECF460();
  if (qword_27F8F47C8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v11, qword_27F913318);
  (*(v12 + 16))(v18, v31, v11);
  sub_257ECCD80();
  sub_257ECCA40();
  (*(v25 + 56))(v33[0], 1, 1, v24);
  return sub_257ECC550();
}