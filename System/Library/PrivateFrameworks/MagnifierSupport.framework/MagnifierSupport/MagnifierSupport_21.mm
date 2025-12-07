uint64_t sub_257DADC80(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257DADD08()
{
  v2 = v0;
  v176 = sub_257ECF130();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176, v3, v4, v5, v6);
  v174 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECFD10();
  v178 = *(v8 - 8);
  v179 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v177 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EC0, &unk_257EEBD20);
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v14, v15, v16, v17);
  v157 = &v149 - v18;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9330, &unk_257EE9590);
  v160 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v19, v20, v21, v22);
  v158 = &v149 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9ED0, qword_257EEBD30);
  v164 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v163 = &v149 - v29;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0, &qword_257EE4710);
  MEMORY[0x28223BE20](v167, v30, v31, v32, v33);
  v35 = &v149 - v34;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  MEMORY[0x28223BE20](v166, v36, v37, v38, v39);
  v181 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
  v180 = &v149 - v46;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9340, &qword_257EE95A0);
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v47, v48, v49, v50);
  v168 = &v149 - v51;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9348, qword_257EE95A8);
  v172 = *(v173 - 8);
  *&v56 = MEMORY[0x28223BE20](v173, v52, v53, v54, v55).n128_u64[0];
  v171 = &v149 - v57;
  v58 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) setControlsDelegate:v0 queue:{*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue), v56}];
  v59 = [*(v0 + v58) supportsControls];
  v60 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  v61 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  v165 = v24;
  if (!v59)
  {
    goto LABEL_33;
  }

  v62 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_controls;
  swift_beginAccess();
  v63 = *(v0 + v62);
  if (v63 >> 62)
  {
    v64 = sub_257ED0210();
    if (!v64)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
      goto LABEL_11;
    }
  }

  if (v64 < 1)
  {
    __break(1u);
LABEL_39:
    sub_257ECF830();
    goto LABEL_20;
  }

  for (i = 0; i != v64; ++i)
  {
    if ((v63 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x259C72E20](i, v63);
    }

    else
    {
      v66 = *(v63 + 8 * i + 32);
    }

    v67 = v66;
    [*(v2 + v58) removeControl_];
  }

  v61 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  v60 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
LABEL_11:
  v153 = v35;
  *(v2 + v62) = MEMORY[0x277D84F90];

  LOBYTE(v182) = 0;
  sub_257D15BB4();
  v69 = v68;
  v70 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v71 = v69;
  v156 = [v70 initWithFloat_];
  LOBYTE(v182) = 0;
  sub_257D15BB4();
  v73 = v72;
  v74 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v75 = v73;
  v155 = [v74 initWithFloat_];
  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  v154 = sub_257ECFF30();
  v76 = *(v2 + v60[48]);
  if (v76)
  {
    v152 = v62;
    v77 = objc_allocWithZone(MEMORY[0x277CE5B58]);
    v78 = v76;
    v79 = [v77 initWithDevice_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9388, &qword_257EE9680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BD0;
    v81 = v156;
    *(inited + 32) = v156;
    v82 = v154;
    v83 = v155;
    *(inited + 40) = v154;
    *(inited + 48) = v83;
    *(inited + 56) = v83;
    v84 = v83;
    v85 = v81;
    v86 = v82;
    sub_257BEA484(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9390, &qword_257EE9688);
    swift_arrayDestroy();
    sub_257CA64A0(&qword_27F8F6D58, &qword_281543DC0, 0x277CCABB0, MEMORY[0x277D85378]);
    v87 = sub_257ECF3C0();

    [v79 setDisplayValuesByZoomFactorValue_];

    v88 = *(v2 + v58);
    v89 = v79;
    if ([v88 canAddControl_])
    {
      [*(v2 + v58) addControl_];
      v62 = v152;
      v90 = swift_beginAccess();
      MEMORY[0x259C72300](v90);
      if (*((*(v2 + v62) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v62) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();
      swift_endAccess();
    }

    else
    {

      v78 = v89;
      v62 = v152;
    }
  }

  v91 = sub_257BD2C2C(0, &qword_27F8F9380, 0x277CE5B40);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v150 = objc_opt_self();
  v151 = ObjCClassFromMetadata;
  v93 = [v150 bundleForClass_];
  v94 = sub_257ECF4C0();
  v95 = sub_257ECF4C0();
  v96 = [v93 localizedStringForKey:v94 value:0 table:v95];

  *&v97 = COERCE_DOUBLE(sub_257ECF500());
  v99 = v98;

  v182 = *&v97;
  v183 = v99;
  sub_257BDAB08();
  sub_257ED0100();

  v152 = v91;
  v100 = sub_257ECFC40();
  v149 = *(v2 + v61[55]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  HIDWORD(v101) = HIDWORD(v182);
  v102 = v182;
  *&v101 = v102 / 2.5;
  [v100 setValue_];
  sub_257ECFC30();
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v103 = sub_257ECFD30();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECFC20();

  v104 = *(v2 + v58);
  v1 = v100;
  if (![v104 canAddControl_])
  {

    goto LABEL_22;
  }

  [*(v2 + v58) addControl_];
  v105 = swift_beginAccess();
  MEMORY[0x259C72300](v105);
  if (*((*(v2 + v62) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v62) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_39;
  }

LABEL_20:
  sub_257ECF860();
  swift_endAccess();
LABEL_22:
  v106 = v151;
  v107 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl) = v1;
  v108 = v1;

  v109 = [v150 bundleForClass_];
  v110 = sub_257ECF4C0();
  v111 = sub_257ECF4C0();
  v112 = [v109 localizedStringForKey:v110 value:0 table:v111];

  *&v113 = COERCE_DOUBLE(sub_257ECF500());
  v115 = v114;

  v182 = *&v113;
  v183 = v115;
  sub_257ED0100();

  v116 = sub_257ECFC40();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v117 = 0.0;
  if (v182 > 0.0)
  {
    v117 = v182;
  }

  if (v182 >= 1.0)
  {
    v118 = 1.0;
  }

  else
  {
    v118 = v117;
  }

  *&v118 = v118;
  [v116 setValue_];
  sub_257ECFC30();
  v119 = sub_257ECFD30();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECFC20();

  v120 = *(v2 + v58);
  v121 = v116;
  if ([v120 canAddControl_])
  {
    [*(v2 + v58) addControl_];
    v122 = swift_beginAccess();
    MEMORY[0x259C72300](v122);
    v60 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
    if (*((*(v2 + v62) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v62) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
  }

  else
  {

    v60 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  }

  v123 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl) = v121;
  v124 = v121;

  sub_257DAF9F8();
LABEL_33:
  v125 = *(v2 + v60[48]);
  if (v125)
  {
    swift_beginAccess();
    v126 = v125;
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
    sub_257ECDD30();
    swift_endAccess();

    swift_beginAccess();
    sub_257ECC3F0();
    sub_257ECDD30();
    swift_endAccess();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0, qword_257ED9EC0);
    sub_257ECDD30();
    swift_endAccess();
    swift_getKeyPath();
    v127 = v157;
    sub_257ECCA50();

    swift_allocObject();
    v156 = v126;
    swift_unknownObjectUnownedInit();
    sub_257BD2D4C(&unk_281543DB0, &unk_27F8F9EC0, &unk_257EEBD20, MEMORY[0x277CC9E08]);
    v128 = v158;
    v129 = v161;
    sub_257ECDDD0();

    (*(v159 + 8))(v127, v129);
    v130 = MEMORY[0x277CBCC08];
    sub_257BD2D4C(&qword_281544390, &unk_27F8F9330, &unk_257EE9590, MEMORY[0x277CBCC08]);
    v131 = v162;
    *&v132 = COERCE_DOUBLE(sub_257ECDD90());
    (*(v160 + 8))(v128, v131);
    v182 = *&v132;
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360, &qword_257EEC930);
    sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360, &qword_257EEC930, MEMORY[0x277CBCD90]);
    v133 = v163;
    sub_257ECDDD0();

    sub_257BD2D4C(&qword_2815443B0, &unk_27F8F9ED0, qword_257EEBD30, v130);
    v134 = v165;
    *&v135 = COERCE_DOUBLE(sub_257ECDD90());
    (*(v164 + 8))(v133, v134);
    v182 = *&v135;
    v136 = MEMORY[0x277CBCEC8];
    sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
    sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0, &qword_257EE4710, v136);
    v137 = v168;
    sub_257ECDC60();
    v138 = v177;
    sub_257ECFD00();
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v139 = v175;
    v140 = v174;
    v141 = v176;
    (*(v175 + 104))(v174, *MEMORY[0x277D851C0], v176);
    v142 = COERCE_DOUBLE(sub_257ECFD90());
    (*(v139 + 8))(v140, v141);
    v182 = v142;
    sub_257BD2D4C(&unk_27F8F9368, &qword_27F8F9340, &qword_257EE95A0, MEMORY[0x277CBCB00]);
    sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
    v143 = v171;
    v144 = v170;
    sub_257ECDE00();

    (*(v178 + 8))(v138, v179);
    (*(v169 + 8))(v137, v144);
    v145 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v146 = swift_allocObject();
    *(v146 + 16) = sub_257DB806C;
    *(v146 + 24) = v145;
    sub_257BD2D4C(&qword_27F8F9378, &qword_27F8F9348, qword_257EE95A8, MEMORY[0x277CBCD20]);
    v147 = v173;
    v148 = sub_257ECDE50();

    (*(v172 + 8))(v143, v147);
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_liveLensDisplayAppearanceSubscription) = v148;
  }
}

void sub_257DAF2F8(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

void sub_257DAF420(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

uint64_t sub_257DAF540(char *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_257ECF120();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_257ECF190();
  v15 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v16, v17, v18, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v23 = sub_257ECFD30();
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a4;
  *(v24 + 32) = a3;
  *(v24 + 40) = v22;
  aBlock[4] = sub_257DB80B8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_277;
  v25 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v21, v14, v25);
  _Block_release(v25);

  (*(v28 + 8))(v14, v8);
  return (*(v15 + 8))(v21, v27);
}

void sub_257DAF858(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl);
    if (v10)
    {
      *&v8 = a3;
      *&v8 = *&v8 / 2.5;
      [v10 setValue_];
    }

    v11 = *&v9[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl];
    if (v11)
    {
      v12 = 0.0;
      if (a4 > 0.0)
      {
        v12 = a4;
      }

      if (a4 >= 1.0)
      {
        v12 = 1.0;
      }

      *&v12 = v12;
      [v11 setValue_];
    }

    v13 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl;
    v14 = *&v9[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl];
    if (v14)
    {
      v15 = [v14 numberOfIndexes];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v16 = sub_257DB83D0(v4, v21);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        if (v15 < v16 || v16 < 0)
        {
          sub_257DAF9F8();
        }

        v19 = *&v9[v13];
        if (v19)
        {
          if (v15 >= v16)
          {
            v20 = v16;
          }

          else
          {
            v20 = v15;
          }

          [v19 setSelectedIndex_];
        }
      }
    }
  }
}

void sub_257DAF9F8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v3 = v42;
  v4 = *(v42 + 16);
  if (v4)
  {
    v38 = v2;
    v39 = v0;
    v43 = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v4, 0);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = 32;
    v40 = objc_opt_self();
    do
    {
      v6 = v3;
      v7 = [v40 bundleForClass_];
      v8 = sub_257ECF4C0();

      v9 = sub_257ECF4C0();
      v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

      v11 = sub_257ECF500();
      v13 = v12;

      v15 = *(v43 + 16);
      v14 = *(v43 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_257BF26A4((v14 > 1), v15 + 1, 1);
      }

      *(v43 + 16) = v15 + 1;
      v16 = v43 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      ++v5;
      --v4;
      v3 = v6;
    }

    while (v4);

    v1 = v39;
  }

  else
  {
  }

  type metadata accessor for MAGUtilities();
  v17 = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_257ECF4C0();
  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  v22 = sub_257ECF500();
  v44 = v22;
  sub_257BDAB08();
  sub_257ED0100();

  v23 = objc_allocWithZone(MEMORY[0x277CE5AE8]);
  v24 = sub_257ECF4C0();

  v25 = sub_257ECF4C0();
  v26 = sub_257ECF7F0();

  v27 = [v23 initWithLocalizedTitle:v24 symbolName:v25 localizedIndexTitles:v26];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v28 = sub_257DB83D0(v44, v44);
  LOBYTE(v23) = v29;

  if (v23)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  [v27 setSelectedIndex_];
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v31 = sub_257ECFD30();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECFDE0();

  v32 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  v33 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
  v34 = v27;
  if ([v33 canAddControl_])
  {
    [*(v1 + v32) addControl_];
    v35 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_controls;
    v36 = swift_beginAccess();
    MEMORY[0x259C72300](v36);
    if (*((*(v1 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
  }

  else
  {
  }

  v37 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl) = v34;
}

void sub_257DB0118(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v5 + 16) > a1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();

      return;
    }

    __break(1u);
  }
}

uint64_t sub_257DB0238()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_257CA930C();
  v10 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment + 24);
  if (*(v9 + 16))
  {
    v11 = *(v9 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
  swift_beginAccess();
  v27 = v11;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *&v26[-16] = &v27;
  *&v26[-8] = v12;
  sub_257ECFD40();
  (*(v2 + 8))(v8, v1);
  v18 = swift_endAccess();
  v19 = *(v12 + 8);
  v20 = *(v12 + 16);
  v28[0] = *v12;
  v28[1] = v19;
  v29 = v20;
  MEMORY[0x28223BE20](v18, v21, v22, v23, v24);
  *&v26[-16] = v28;

  sub_257ECFD50();

  LOBYTE(v19) = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v28[0]) = v19;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257DB04B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257DB053C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  a1;
  sub_257ECDD70();
  sub_257DAAB4C();
}

double sub_257DB05D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECF120();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_257ECF190();
  v13 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v14, v15, v16, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = a2;
  aBlock[4] = sub_257DB7F48;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_188;
  v22 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257BBD7E4(a1, a2);
  sub_257ECF150();
  v27 = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v19, v12, v22);
  _Block_release(v22);
  (*(v26 + 8))(v12, v6);
  (*(v13 + 8))(v19, v25);

  return result;
}

void sub_257DB08F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v43 - v10;
  v12 = sub_257ECDA30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
    if (([*(Strong + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] & 1) != 0 || (v23 = *&v21[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID], v24 = *&v21[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID + 8], , sub_257DB69CC(v23, v24), , !*&v21[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice]))
    {
    }

    else if (sub_257DAC004(a2, a3))
    {
      if (sub_257CA9238())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v43 == 2)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          v25 = v43;
          if (v43)
          {
            sub_257D33238();
            v27 = v26;
            sub_257D337D8(0, 0.01);
            sub_257D337D8(0, v27);
          }
        }
      }

      v28 = *&v21[v22];
      [v28 startRunning];
      if ([v28 supportsControls])
      {
        sub_257DADD08();
      }

      v29 = MEMORY[0x277D76620];
      if (*MEMORY[0x277D76620])
      {
        if (![*MEMORY[0x277D76620] shouldRecordExtendedLaunchTime])
        {
LABEL_16:
          v37 = sub_257ECF930();
          (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
          v38 = swift_allocObject();
          v38[2] = 0;
          v38[3] = 0;
          v38[4] = v21;
          v39 = v21;
          sub_257E81524(0, 0, v11, &unk_257EE9460, v38);

          return;
        }

        if (*v29)
        {
          v30 = *v29;
          v31 = [v30 _launchTestName];
          v32 = [v30 isRunningTest_];

          if (v32)
          {
            v33 = objc_opt_self();
            v34 = [v33 sharedApplication];
            v35 = [v33 sharedApplication];
            v36 = [v35 _launchTestName];

            [v34 finishedTest:v36 extraResults:0];
          }

          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      sub_257ECD460();
      v40 = sub_257ECDA20();
      v41 = sub_257ECFBE0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_257BAC000, v40, v41, "Failed to configure capture session", v42, 2u);
        MEMORY[0x259C74820](v42, -1, -1);
      }

      else
      {
      }

      (*(v13 + 8))(v19, v12);
    }
  }
}

uint64_t sub_257DB0E0C()
{
  *(v0 + 16) = xmmword_257EE4D00;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB0EC0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257DB8374, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

double sub_257DB0FF4(uint64_t a1, uint64_t a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECF190();
  v14 = *(v13 - 8);
  *&v19 = MEMORY[0x28223BE20](v13, v15, v16, v17, v18).n128_u64[0];
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*&v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning])
  {
    v29 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue];
    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = a1;
    v23[4] = a2;
    aBlock[4] = sub_257D4172C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_179;
    v24 = _Block_copy(aBlock);
    v28 = v13;
    v25 = v24;
    v26 = v2;
    sub_257BBD7E4(a1, a2);
    sub_257ECF150();
    v30 = MEMORY[0x277D84F90];
    sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v21, v12, v25);
    _Block_release(v25);
    (*(v6 + 8))(v12, v5);
    (*(v14 + 8))(v21, v28);
  }

  return result;
}

void sub_257DB12FC(uint64_t a1, void (*a2)(void))
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  if (([*(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] & 1) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  [*(a1 + v4) stopRunning];
  v5 = [*(a1 + v4) connections];
  sub_257BD2C2C(0, &qword_281543ED8, 0x277CE5AB0);
  v6 = sub_257ECF810();

  if (v6 >> 62)
  {
    v7 = sub_257ED0210();
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_35;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C72E20](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [*(a1 + v4) removeConnection_];
  }

LABEL_14:

  v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput) = 0;

  v12 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput) = 0;

  v13 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput) = 0;

  v14 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice) = 0;

  v15 = (a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID);
  *v15 = 0;
  v15[1] = 0;

  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors) = MEMORY[0x277D84F90];

  v16 = [*(a1 + v4) inputs];
  sub_257BD2C2C(0, &qword_27F8F9310, 0x277CE5AF0);
  v17 = sub_257ECF810();

  if (v17 >> 62)
  {
    v18 = sub_257ED0210();
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  if (v18 < 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  for (j = 0; j != v18; ++j)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x259C72E20](j, v17);
    }

    else
    {
      v20 = *(v17 + 8 * j + 32);
    }

    v21 = v20;
    [*(a1 + v4) removeInput_];
  }

LABEL_23:

  v22 = [*(a1 + v4) outputs];
  sub_257BD2C2C(0, &qword_27F8F9318, 0x277CE5B18);
  v23 = sub_257ECF810();

  if (v23 >> 62)
  {
    v24 = sub_257ED0210();
    if (!v24)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_32;
    }
  }

  if (v24 < 1)
  {
LABEL_36:
    __break(1u);
    return;
  }

  for (k = 0; k != v24; ++k)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x259C72E20](k, v23);
    }

    else
    {
      v26 = *(v23 + 8 * k + 32);
    }

    v27 = v26;
    [*(a1 + v4) removeOutput_];
  }

LABEL_32:

  if (a2)
  {
LABEL_11:
    a2();
  }
}

void sub_257DB16D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  if (([*(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] & 1) == 0 && (*(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession) & 1) == 0)
  {
    [*(a1 + v2) startRunning];
    if ([*(a1 + v2) supportsControls])
    {
      sub_257DADD08();
    }
  }
}

double sub_257DB1798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_257ECF190();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v15, v16, v17, v18);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = a3;
  v22 = _Block_copy(aBlock);
  v23 = v3;
  sub_257ECF150();
  v27 = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v20, v13, v22);
  _Block_release(v22);
  (*(v7 + 8))(v13, v6);
  (*(v14 + 8))(v20, v26);

  return result;
}

void sub_257DB1A58(void *a1)
{
  v48 = a1;
  v1 = sub_257ECF120();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_257ECF190();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v7, v8, v9, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB0, &qword_257EE97A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257EE23E0;
  v14 = *MEMORY[0x277CE5860];
  v15 = *MEMORY[0x277CE5840];
  v16 = MEMORY[0x277CE5878];
  *(v13 + 32) = *MEMORY[0x277CE5860];
  *(v13 + 40) = v15;
  v17 = *v16;
  v18 = *MEMORY[0x277CE5870];
  *(v13 + 48) = *v16;
  *(v13 + 56) = v18;
  v19 = *MEMORY[0x277CE5890];
  v20 = *MEMORY[0x277CE5888];
  *(v13 + 64) = *MEMORY[0x277CE5890];
  *(v13 + 72) = v20;
  v21 = *MEMORY[0x277CE5EA8];
  type metadata accessor for DeviceType(0);
  v22 = v14;
  v23 = v15;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = sub_257ECF7F0();

  v30 = [objc_opt_self() discoverySessionWithDeviceTypes:v29 mediaType:v28 position:0];

  v31 = swift_allocObject();
  *(v31 + 16) = MEMORY[0x277D84F90];
  v32 = (v31 + 16);
  v33 = [v30 devices];
  sub_257BD2C2C(0, &qword_281543F70, 0x277CE5AC8);
  v34 = sub_257ECF810();

  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_13:

    sub_257DB1FBC(v32);
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v39 = sub_257ECFD30();
    v40 = swift_allocObject();
    v41 = v48;
    *(v40 + 16) = v48;
    *(v40 + 24) = v31;
    aBlock[4] = sub_257DB82D0;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_342;
    v42 = _Block_copy(aBlock);
    v43 = v41;
    sub_257ECC3F0();

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    v44 = v30;
    v45 = v50;
    v46 = v53;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v12, v45, v42);
    _Block_release(v42);

    (*(v52 + 8))(v45, v46);
    (*(v49 + 8))(v12, v51);

    return;
  }

  v35 = sub_257ED0210();
  if (!v35)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v35 >= 1)
  {
    for (i = 0; i != v35; ++i)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x259C72E20](i, v34);
      }

      else
      {
        v37 = *(v34 + 8 * i + 32);
      }

      v38 = v37;
      MEMORY[0x259C72300]();
      if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_257DB1FBC(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_257C7E3B8();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_257DB5B50(v4);
  *a1 = v2;
}

void sub_257DB2034(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v4;

  v5 = a1;
  sub_257ECDD70();
  if (AXDeviceIsPad())
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_257CA97F8(v6);
    v8 = v7;

    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v8;
    sub_257ECC3F0();
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = sub_257CA930C();
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v9;
    sub_257ECC3F0();
  }

  sub_257ECDD70();
  v10 = *&v5[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  if (v10)
  {
    v11 = swift_beginAccess();
    v12 = *(a2 + 16);
    v20 = v10;
    MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
    v19[2] = &v20;
    v17 = v10;

    v18 = sub_257DFC4AC(sub_257DB82D8, v19, v12);

    if ((v18 & 1) == 0)
    {
      sub_257DB0238();
      sub_257DB69CC(0, 0);
    }
  }
}

void sub_257DB22A4(void *a1)
{
  v2 = sub_257ECF120();
  v79 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v78 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECDA30();
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v74 - v28;
  *&v35 = MEMORY[0x28223BE20](v30, v31, v32, v33, v34).n128_u64[0];
  v37 = &v74 - v36;
  v38 = [a1 userInfo];
  if (!v38)
  {
    goto LABEL_11;
  }

  v39 = v38;
  v76 = v2;
  v40 = sub_257ECF3D0();

  aBlock[6] = sub_257ECF500();
  aBlock[7] = v41;
  sub_257ED0280();
  if (!*(v40 + 16) || (v42 = sub_257C03F28(aBlock), (v43 & 1) == 0))
  {

    sub_257C09D10(aBlock);
LABEL_11:
    v83 = 0u;
    v84 = 0u;
    goto LABEL_12;
  }

  sub_257BE41F4(*(v40 + 56) + 32 * v42, &v83);
  sub_257C09D10(aBlock);

  if (!*(&v84 + 1))
  {
LABEL_12:
    sub_257BE4084(&v83, &unk_27F8F62F0, &unk_257ED9D30);
    goto LABEL_13;
  }

  sub_257BD2C2C(0, &unk_27F8F9320, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v44 = aBlock[0];
    type metadata accessor for AVError(0);
    sub_257DB7C60(&unk_27F8F4FD8, type metadata accessor for AVError, &unk_257ED989C);
    v45 = v44;
    sub_257ECC9B0();
    if (v83 == -11819)
    {
      v75 = v45;
      sub_257ECD460();
      v46 = sub_257ECDA20();
      v47 = sub_257ECFBE0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_257BAC000, v46, v47, "Capture session runtime error: mediaServicesWereReset", v48, 2u);
        MEMORY[0x259C74820](v48, -1, -1);
      }

      (*(v80 + 8))(v37, v81);
      v49 = v77;
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      aBlock[4] = sub_257DB7E10;
      aBlock[5] = v50;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_161;
      v51 = _Block_copy(aBlock);
      v52 = v49;
      sub_257ECF150();
      *&v83 = MEMORY[0x277D84F90];
      sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
      v53 = v76;
      sub_257ED0180();
      MEMORY[0x259C72880](0, v15, v8, v51);
      _Block_release(v51);
      v54 = v75;

      (*(v79 + 8))(v8, v53);
      (*(v78 + 8))(v15, v9);
    }

    else
    {
      sub_257ECD460();
      v67 = v45;
      v68 = sub_257ECDA20();
      v69 = sub_257ECFBE0();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412546;
        v72 = v67;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 4) = v73;
        *v71 = v73;
        *(v70 + 12) = 2048;
        aBlock[0] = v72;
        sub_257ECC9B0();

        *(v70 + 14) = v83;
        _os_log_impl(&dword_257BAC000, v68, v69, "Other capture session runtime error: %@ [code: %ld]", v70, 0x16u);
        sub_257BE4084(v71, &unk_27F8F5490, &unk_257EDC470);
        MEMORY[0x259C74820](v71, -1, -1);
        MEMORY[0x259C74820](v70, -1, -1);
      }

      else
      {

        v68 = v67;
      }

      (*(v80 + 8))(v29, v81);
    }

    return;
  }

LABEL_13:
  sub_257ECD460();
  v55 = a1;
  v56 = sub_257ECDA20();
  v57 = sub_257ECFBE0();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 136315138;
    v60 = [v55 userInfo];
    if (v60)
    {
      v61 = v60;
      sub_257ECF3D0();
    }

    else
    {
      sub_257BE88A0(MEMORY[0x277D84F90]);
    }

    v62 = sub_257ECF3E0();
    v64 = v63;

    v65 = sub_257BF1FC8(v62, v64, aBlock);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_257BAC000, v56, v57, "Unknown capture session runtime error. Notification userInfo: %s", v58, 0xCu);
    v66 = __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x259C74820](v59, -1, -1, v66);
    MEMORY[0x259C74820](v58, -1, -1);
  }

  (*(v80 + 8))(v22, v81);
}

void sub_257DB2B94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v82 - v7;
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v82 - v22;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v82 - v29;
  *&v36 = MEMORY[0x28223BE20](v31, v32, v33, v34, v35).n128_u64[0];
  v38 = &v82 - v37;
  v39 = [a1 userInfo];
  if (!v39)
  {
    v88 = 0u;
    v89 = 0u;
    goto LABEL_12;
  }

  v40 = v39;
  v41 = sub_257ECF3D0();

  v85 = sub_257ECF500();
  v86 = v42;
  sub_257ED0280();
  if (!*(v41 + 16) || (v43 = sub_257C03F28(v87), (v44 & 1) == 0))
  {

    sub_257C09D10(v87);
    v88 = 0u;
    v89 = 0u;
    goto LABEL_12;
  }

  sub_257BE41F4(*(v41 + 56) + 32 * v43, &v88);
  sub_257C09D10(v87);

  if (!*(&v89 + 1))
  {
LABEL_12:
    sub_257BE4084(&v88, &unk_27F8F62F0, &unk_257ED9D30);
    goto LABEL_13;
  }

  v45 = sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v83 = v87[0];
    v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v82 = v45;
    v47 = sub_257ECFF50();

    if (v47)
    {
      v48 = v83;
      sub_257ECD460();
      v49 = sub_257ECDA20();
      v50 = sub_257ECFC00();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_257BAC000, v49, v50, "Another app wants the capture session, not attempting resume", v51, 2u);
        MEMORY[0x259C74820](v51, -1, -1);
      }

      (*(v10 + 8))(v23, v9);
      v52 = sub_257ECF930();
      (*(*(v52 - 8) + 56))(v8, 1, 1, v52);
      v53 = swift_allocObject();
      v53[2] = 0;
      v53[3] = 0;
      v54 = v84;
      v53[4] = v84;
      v55 = v54;
      sub_257E81524(0, 0, v8, &unk_257EE9450, v53);

      return;
    }

    v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v70 = v83;
    v71 = sub_257ECFF50();

    if (v71)
    {
      sub_257ECD460();
      v72 = sub_257ECDA20();
      v73 = sub_257ECFC00();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_257BAC000, v72, v73, "App in background, not attempting resume", v74, 2u);
        MEMORY[0x259C74820](v74, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v30, v9);
      return;
    }

    sub_257ECD460();
    v75 = v70;
    v76 = sub_257ECDA20();
    v77 = sub_257ECFC00();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v75;
      *v79 = v75;
      v80 = v75;
      _os_log_impl(&dword_257BAC000, v76, v77, "Capture session interrupted reason: %@", v78, 0xCu);
      sub_257BE4084(v79, &unk_27F8F5490, &unk_257EDC470);
      MEMORY[0x259C74820](v79, -1, -1);
      MEMORY[0x259C74820](v78, -1, -1);
      v81 = v80;
    }

    else
    {
      v81 = v76;
      v76 = v75;
    }

    (*(v10 + 8))(v38, v9);
  }

LABEL_13:
  sub_257ECD460();
  v56 = a1;
  v57 = sub_257ECDA20();
  v58 = sub_257ECFC00();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v87[0] = v60;
    *v59 = 136315138;
    v61 = [v56 userInfo];
    if (v61)
    {
      v62 = v61;
      sub_257ECF3D0();
    }

    else
    {
      sub_257BE88A0(MEMORY[0x277D84F90]);
    }

    v63 = sub_257ECF3E0();
    v65 = v64;

    v66 = sub_257BF1FC8(v63, v65, v87);

    *(v59 + 4) = v66;
    _os_log_impl(&dword_257BAC000, v57, v58, "Capture session interrupted unknown reason: %s", v59, 0xCu);
    v67 = __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x259C74820](v60, -1, -1, v67);
    MEMORY[0x259C74820](v59, -1, -1);
  }

  (*(v10 + 8))(v16, v9);
  v68 = *&v84[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession];
  sub_257DB3860(v68, 0, 0);
}

uint64_t sub_257DB3360()
{
  *(v0 + 16) = xmmword_257EE4D30;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

double sub_257DB347C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v10 = &v30 - v9;
  v11 = sub_257ECDA30();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD460();
  v19 = a1;
  v20 = sub_257ECDA20();
  v21 = sub_257ECFC00();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_257BAC000, v20, v21, "Session ended interruption: %@", v22, 0xCu);
    sub_257BE4084(v23, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v23, -1, -1);
    MEMORY[0x259C74820](v22, -1, -1);
  }

  (*(v12 + 8))(v18, v11);
  v25 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession];
  sub_257DB3860(v25, 0, 0);

  v26 = sub_257ECF930();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v2;
  v28 = v2;
  sub_257E81524(0, 0, v10, &unk_257EE9440, v27);

  return result;
}

uint64_t sub_257DB3744()
{
  *(v0 + 16) = xmmword_257EE4D40;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

double sub_257DB3860(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_257ECF190();
  v15 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v16, v17, v18, v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  aBlock[4] = sub_257DB7C3C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_45;
  v23 = _Block_copy(aBlock);
  v24 = a1;
  sub_257BBD7E4(a2, a3);
  sub_257ECF150();
  v28 = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v21, v14, v23);
  _Block_release(v23);
  (*(v8 + 8))(v14, v7);
  (*(v15 + 8))(v21, v27);

  return result;
}

uint64_t sub_257DB3B4C(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v28 - v17;
  sub_257ECD460();
  v19 = sub_257ECDA20();
  v20 = sub_257ECFBD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_257BAC000, v19, v20, "Resuming interrupted session.", v21, 2u);
    MEMORY[0x259C74820](v21, -1, -1);
  }

  v22 = *(v5 + 8);
  v22(v18, v4);
  if (([a1 isRunning] & 1) == 0)
  {
    [a1 startRunning];
  }

  result = [a1 isRunning];
  if ((result & 1) == 0)
  {
    v24 = result;
    sub_257ECD460();
    v25 = sub_257ECDA20();
    v26 = sub_257ECFBE0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_257BAC000, v25, v26, "Unable to resume the session running", v27, 2u);
      MEMORY[0x259C74820](v27, -1, -1);
    }

    v22(v11, v4);
    result = v24;
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

id MAGCaptureService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGCaptureService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGCaptureService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257DB40CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MAGCaptureService(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall MAGCaptureService.captureOutput(_:didOutput:from:)(AVCaptureOutput _, CMSampleBufferRef didOutput, AVCaptureConnection from)
{
  outputInternal = _._outputInternal;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v17 - v10;
  type metadata accessor for MAGCMSampleBufferWrapper();
  v12 = swift_allocObject();
  *(v12 + 16) = outputInternal;
  v13 = sub_257ECF930();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v3;
  v15 = outputInternal;
  v16 = v3;
  sub_257E81524(0, 0, v11, &unk_257EE9280, v14);
}

uint64_t sub_257DB423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_257DB425C, 0, 0);
}

uint64_t sub_257DB425C()
{
  *(v0 + 16) = *(v0 + 32) | 0x4000000000000000;
  *(v0 + 24) = 0;
  sub_257ECC3F0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257DB4320;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4320()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257DB4498;
  }

  else
  {
    v2 = sub_257DB4434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DB4434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB4498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB4670()
{
  *(v0 + 16) = xmmword_257EE4D10;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

double sub_257DB4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v17 - v11;
  v13 = sub_257ECF930();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v15 = v4;
  sub_257E81524(0, 0, v12, a4, v14);

  return result;
}

uint64_t sub_257DB487C()
{
  *(v0 + 16) = xmmword_257EE4D20;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB4930;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4930()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  v3.n128_f64[0] = sub_257BEE3D0(*(v2 + 16), *(v2 + 24));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257DB4A6C, 0, 0);
  }

  else
  {
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

double sub_257DB4AA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v14 = &v19 - v13;
  v15 = sub_257ECF930();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v17 = a1;
  sub_257E81524(0, 0, v14, a6, v16);

  return result;
}

uint64_t sub_257DB4BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_257DB4BCC, 0, 0);
}

uint64_t sub_257DB4BCC()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_257DB4C8C;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4C8C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257DB8370;
  }

  else
  {
    v2 = sub_257DB83B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DB4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_257DB4DC0, 0, 0);
}

uint64_t sub_257DB4DC0()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = 1;
  *(v0 + 24) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_257DB4E84;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4E84()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257DB4FFC;
  }

  else
  {
    v2 = sub_257DB4F98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DB4F98()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB4FFC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB512C()
{
  *(v0 + 16) = xmmword_257EE4D50;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB5240()
{
  *(v0 + 16) = xmmword_257EE4D60;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB5354()
{
  *(v0 + 16) = xmmword_257EE4D70;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

double sub_257DB5448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v16 - v10;
  v12 = sub_257ECF930();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v14 = v3;
  sub_257E81524(0, 0, v11, a3, v13);

  return result;
}

uint64_t sub_257DB5560()
{
  *(v0 + 16) = xmmword_257EE4D80;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

double sub_257DB5634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v13 = &v18 - v12;
  v14 = sub_257ECF930();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v16 = a1;
  sub_257E81524(0, 0, v13, a5, v15);

  return result;
}

void sub_257DB5730(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257DB57B0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_257ECDD70();
}

void sub_257DB5828(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257DB58A8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  sub_257ECDD70();
  return sub_257DAAB4C();
}

uint64_t sub_257DB5928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DB423C(a1, v4, v5, v7, v6);
}

uint64_t sub_257DB59E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB4650(a1, v4, v5, v6);
}

uint64_t sub_257DB5A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB485C(a1, v4, v5, v6);
}

void sub_257DB5B50(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_257BD2C2C(0, &qword_281543F70, 0x277CE5AC8);
        v6 = sub_257ECF850();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_257DB5DE0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_257DB5C64(0, v2, 1, a1);
  }
}

void sub_257DB5C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localizedName];
      v11 = sub_257ECF500();
      v13 = v12;

      v14 = [v9 localizedName];
      v15 = sub_257ECF500();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v19 = sub_257ED0640();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_257DB5DE0(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_257DB65E0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_257C66E20(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_257C66D94(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_257C66E20(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 localizedName];
      v16 = sub_257ECF500();
      v18 = v17;

      v19 = [v14 localizedName];
      v20 = sub_257ECF500();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_257ED0640();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 localizedName];
          v5 = sub_257ECF500();
          v29 = v28;

          v30 = [v26 localizedName];
          v31 = sub_257ECF500();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_257ED0640();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_257BFCB00(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_257BFCB00((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_257DB65E0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_257C66E20(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_257C66D94(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 localizedName];
    v5 = sub_257ECF500();
    v51 = v50;

    v52 = [v48 localizedName];
    v53 = sub_257ECF500();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_257ED0640();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_257DB65E0(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 localizedName];
        v38 = sub_257ECF500();
        v40 = v39;

        v41 = [v36 localizedName];
        v42 = sub_257ECF500();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = sub_257ED0640();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 localizedName];
        v18 = sub_257ECF500();
        v20 = v19;

        v21 = [v16 localizedName];
        v22 = sub_257ECF500();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_257ED0640();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

uint64_t sub_257DB69CC(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v74 = a1;
  v73 = sub_257ECDA30();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v3, v4, v5, v6);
  v71 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF120();
  v87 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_257ECF190();
  v15 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v16, v17, v18, v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = &v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 4)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v78 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v23 = sub_257ECFD30();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v22;
  v93 = sub_257DB8008;
  v94 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = sub_257D231C0;
  v92 = &block_descriptor_206;
  v25 = _Block_copy(&aBlock);
  v86 = v2;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  v26 = sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  v28 = sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  v80 = v27;
  v79 = v28;
  v81 = v26;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v21, v14, v25);
  _Block_release(v25);

  v29 = *(v87 + 8);
  v85 = v14;
  v30 = v14;
  v31 = v76;
  v32 = v8;
  v87 += 8;
  v82 = v29;
  v29(v30, v8);
  v33 = *(v15 + 8);
  v83 = v21;
  v84 = v15 + 8;
  v34 = v21;
  v35 = v33;
  v33(v34, v31);
  v36 = *(v75 + 3) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
  swift_beginAccess();
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  aBlock = *v36;
  v90 = v37;
  LOBYTE(v91) = v38;
  v39 = qword_2815447E0;

  if (v39 != -1)
  {
    v40 = swift_once();
  }

  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  *(&v70 - 2) = &aBlock;
  sub_257ECFD50();

  if (v77)
  {
    v45 = sub_257ECF4C0();
    v46 = [objc_opt_self() deviceWithUniqueID_];
  }

  else
  {
    v46 = sub_257D3488C(v88);
  }

  v47 = v85;
  v48 = v86;
  v49 = [*&v86[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning];
  if (v49)
  {
    sub_257DB0FF4(0, 0);
  }

  if (!v46)
  {
    goto LABEL_14;
  }

  v50 = *&v48[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  *&v48[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice] = v46;
  v51 = v46;

  v52 = [v51 uniqueID];
  v53 = sub_257ECF500();
  v55 = v54;

  v56 = &v86[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID];
  *v56 = v53;
  v56[1] = v55;
  v48 = v86;

  if (sub_257DAB89C())
  {

LABEL_14:
    if (v49 && *&v48[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice])
    {
      sub_257DB05D0(0, 0);
    }

    v57 = sub_257ECFD30();
    v58 = swift_allocObject();
    *(v58 + 16) = v48;
    v93 = sub_257DB839C;
    v94 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v90 = 1107296256;
    v91 = sub_257D231C0;
    v92 = &block_descriptor_212;
    v59 = _Block_copy(&aBlock);
    v60 = v48;

    v61 = v83;
    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257ED0180();
    MEMORY[0x259C72880](0, v61, v47, v59);
    _Block_release(v59);

    goto LABEL_21;
  }

  v62 = v71;
  sub_257ECD430();
  v63 = sub_257ECDA20();
  v64 = sub_257ECFBE0();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_257BAC000, v63, v64, "Failed to configure camera", v65, 2u);
    MEMORY[0x259C74820](v65, -1, -1);
  }

  (*(v72 + 8))(v62, v73);
  v46 = sub_257ECFD30();
  v66 = swift_allocObject();
  *(v66 + 16) = v48;
  v93 = sub_257DB8010;
  v94 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = sub_257D231C0;
  v92 = &block_descriptor_218;
  v67 = _Block_copy(&aBlock);
  v68 = v48;

  v61 = v83;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257ED0180();
  MEMORY[0x259C72880](0, v61, v47, v67);
  _Block_release(v67);

LABEL_21:
  v82(v47, v32);
  return v35(v61, v31);
}

double sub_257DB72DC(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v48 - v11;
  v13 = sub_257ECDA30();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16, v17, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v27 = &v48 - v26;
  if (a2)
  {
    v49 = a1;
    sub_257ECD460();
    v28 = a2;
    v29 = sub_257ECDA20();
    v30 = sub_257ECFC00();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = v3;
      v32 = v31;
      v33 = swift_slowAlloc();
      v50 = a2;
      v51 = v33;
      *v32 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8160, &qword_257EE3C78);
      v34 = sub_257ED00B0();
      v36 = sub_257BF1FC8(v34, v35, &v51);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_257BAC000, v29, v30, "Could not capture photo: %s", v32, 0xCu);
      v37 = __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C74820](v33, -1, -1, v37);
      v38 = v32;
      v3 = v48;
      MEMORY[0x259C74820](v38, -1, -1);
    }

    (*(v14 + 8))(v27, v13);
    v39 = &unk_257EE9790;
    a1 = v49;
  }

  else
  {
    sub_257ECD460();
    v40 = sub_257ECDA20();
    v41 = sub_257ECFC00();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_257BAC000, v40, v41, "Successfully captured photo", v42, 2u);
      MEMORY[0x259C74820](v42, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
    v39 = &unk_257EE9780;
  }

  v43 = sub_257ECF930();
  (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = a1;
  v44[5] = v3;
  v45 = a1;
  v46 = v3;
  sub_257E81524(0, 0, v12, v39, v44);

  return result;
}

uint64_t sub_257DB7678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB510C(a1, v4, v5, v6);
}

uint64_t sub_257DB772C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB5220(a1, v4, v5, v6);
}

uint64_t sub_257DB77E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB5334(a1, v4, v5, v6);
}

uint64_t sub_257DB7894(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB5540(a1, v4, v5, v6);
}

void sub_257DB7950(uint64_t a1)
{
  sub_257D7085C(319, &unk_27F8F91D8, &qword_27F8F9168, &unk_257EF1C80);
  if (v1 <= 0x3F)
  {
    sub_257D7085C(319, &qword_2815440B0, &qword_27F8F9178, &qword_257EE9220);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_257DB7B40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257DB485C(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t sub_257DB7C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257DB7CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB3724(a1, v4, v5, v6);
}

uint64_t sub_257DB7D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB3340(a1, v4, v5, v6);
}

id sub_257DB7E10()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  result = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  if ((result & 1) == 0 && (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession) & 1) == 0)
  {
    v4 = *(v1 + v2);

    return [v4 startRunning];
  }

  return result;
}

id sub_257DB7E84()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  result = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  if (result && (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession) & 1) == 0)
  {
    v4 = *(v1 + v2);

    return [v4 stopRunning];
  }

  return result;
}

uint64_t objectdestroy_142Tm()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257DB7F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB0DEC(a1, v4, v5, v6);
}

uint64_t sub_257DB80D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DB4DA0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_305Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257DB81D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DB4BAC(a1, v4, v5, v7, v6);
}

uint64_t sub_257DB83D0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_257DB8418(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (result = 0; v2 != result; ++result)
    {
      v5 = *(a2 + 32 + result);
      if (v5 == 12)
      {
        if (a1 == 12)
        {
          return result;
        }
      }

      else if (v5 == a1)
      {
        return result;
      }
    }
  }

  return 0;
}

unint64_t sub_257DB8488(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_257ED0210();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C72E20](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a3(0);
    v10 = sub_257ECFF50();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_257DB859C(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_257ED0210();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C72E20](v9, a2);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_257BD2C2C(0, a3, a4);
    v12 = sub_257ECFF50();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_257DB86A4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    while (1)
    {
      v6 = *(v5 + v4);
      if (v6 == 1)
      {
        v7 = 0x6F685369746C756DLL;
      }

      else
      {
        v7 = 0x746E656D75636F64;
      }

      v8 = 0xE900000000000074;
      if (v6 != 1)
      {
        v8 = 0xE800000000000000;
      }

      if (*(v5 + v4))
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x6853656C676E6973;
      }

      if (*(v5 + v4))
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xEA0000000000746FLL;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0x6F685369746C756DLL;
        }

        else
        {
          v11 = 0x746E656D75636F64;
        }

        if (a1 == 1)
        {
          v12 = 0xE900000000000074;
        }

        else
        {
          v12 = 0xE800000000000000;
        }

        if (v9 != v11)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0xEA0000000000746FLL;
        if (v9 != 0x6853656C676E6973)
        {
          goto LABEL_25;
        }
      }

      if (v10 == v12)
      {

        return v4;
      }

LABEL_25:
      v13 = sub_257ED0640();

      if (v13)
      {
        return v4;
      }

      if (v2 == ++v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

unint64_t sub_257DB8820(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x259C72E20](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject subviews];
      sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
      v8 = sub_257ECF810();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_257ED0210();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_257ED0210();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_257ED0210();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_257ED0310();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_257ED0210();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_257BD2D4C(&qword_27F8F9430, &qword_27F8F9428, &qword_257EE9930, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9428, &qword_257EE9930);
              v19 = sub_257CA8910(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_257ED0210();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_257DB8BB4()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isGlowing];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 systemYellowColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

    v6 = v5;
  }

  [v0 setTintColor_];
}

uint64_t sub_257DB8CC4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) != 8)
  {
    goto LABEL_42;
  }

  v111 = MEMORY[0x277D84F90];
  sub_257BF26E4(0, 3, 0);
  v2 = 0;
  v0 = v111;
  v101 = *MEMORY[0x277D740A8];
  v3 = &unk_279854000;
  while (1)
  {
    v4 = byte_286904040[v2 + 32];
    v5 = sub_257ECF4C0();
    v6 = [objc_opt_self() systemImageNamed_];

    if (v6)
    {
      break;
    }

    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9418, &unk_257EE9890);
    *&aBlock = MEMORY[0x277D84F90];
LABEL_35:
    v111 = v0;
    v97 = *(v0 + 16);
    v96 = *(v0 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_257BF26E4((v96 > 1), v97 + 1, 1);
      v0 = v111;
    }

    ++v2;
    *(v0 + 16) = v97 + 1;
    sub_257BEBE08(&aBlock, (v0 + 32 * v97 + 32));
    if (v2 == 3)
    {
      return v0;
    }
  }

  v105 = v2;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  if (v4)
  {
    if (v4 == 1)
    {
      v10 = sub_257ECF4C0();
      v11 = sub_257ECF4C0();
      v12 = v3;
      v13 = [v9 v3[453]];

      v14 = v13;
      if (!v13)
      {
        sub_257ECF500();
        v14 = sub_257ECF4C0();
      }

      v15 = sub_257ECF500();
      v102 = v16;
      v17 = [v8 bundleForClass_];
      v18 = sub_257ECF4C0();
      v19 = sub_257ECF4C0();
      v20 = [v17 v12 + 3668];

      if (!v20)
      {
        sub_257ECF500();
        v20 = sub_257ECF4C0();
      }

      v21 = [objc_opt_self() systemFontOfSize_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v101;
      *(inited + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0, 0x277D74300);
      *(inited + 40) = v21;
      v23 = v101;
      v24 = v21;
      sub_257BE8668(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &qword_27F8F9420, &qword_257EDA500);
      _s3__C3KeyVMa_0(0);
      sub_257D3FC9C();
      v25 = sub_257ECF3C0();

      [v14 sizeWithAttributes_];
      v27 = v26;
      v29 = v28;

      [v6 size];
      v31 = v27 + v30 + 5.0;
      [v6 size];
      if (v29 > v32)
      {
        v33 = v29;
      }

      else
      {
        v33 = v32;
      }

      v34 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v1 = swift_allocObject();
      *(v1 + 16) = v33;
      *(v1 + 24) = v27;
      *(v1 + 32) = v29;
      *(v1 + 40) = 1;
      *(v1 + 48) = v6;
      *(v1 + 56) = v15;
      *(v1 + 64) = v102;
      *(v1 + 72) = v24;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_257DBCE68;
      *(v35 + 24) = v1;
      v109 = sub_257DBCE6C;
      v110 = v35;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v107 = sub_257E9A0D4;
      v108 = &block_descriptor_23_0;
      v36 = _Block_copy(&aBlock);
      v37 = v6;
      v38 = v24;
      sub_257ECC3F0();

      v39 = [v34 imageWithActions_];
      _Block_release(v36);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if (v36)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v104 = v0;
      v71 = sub_257ECF4C0();
      v72 = sub_257ECF4C0();
      v73 = v3;
      v74 = [v9 v3[453]];

      v75 = v74;
      if (!v74)
      {
        sub_257ECF500();
        v75 = sub_257ECF4C0();
      }

      v76 = sub_257ECF500();
      v100 = v77;
      v78 = [v8 bundleForClass_];
      v79 = sub_257ECF4C0();
      v80 = sub_257ECF4C0();
      v20 = [v78 v73 + 3668];

      if (!v20)
      {
        sub_257ECF500();
        v20 = sub_257ECF4C0();
      }

      v81 = [objc_opt_self() systemFontOfSize_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
      v82 = swift_initStackObject();
      *(v82 + 16) = xmmword_257ED6D30;
      *(v82 + 32) = v101;
      *(v82 + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0, 0x277D74300);
      *(v82 + 40) = v81;
      v83 = v101;
      v84 = v81;
      sub_257BE8668(v82);
      swift_setDeallocating();
      sub_257BE4084(v82 + 32, &qword_27F8F9420, &qword_257EDA500);
      _s3__C3KeyVMa_0(0);
      sub_257D3FC9C();
      v85 = sub_257ECF3C0();

      [v75 sizeWithAttributes_];
      v87 = v86;
      v89 = v88;

      [v6 size];
      v91 = v87 + v90 + 5.0;
      [v6 size];
      if (v89 > v92)
      {
        v93 = v89;
      }

      else
      {
        v93 = v92;
      }

      v34 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v1 = swift_allocObject();
      *(v1 + 16) = v93;
      *(v1 + 24) = v87;
      *(v1 + 32) = v89;
      *(v1 + 40) = 1;
      *(v1 + 48) = v6;
      *(v1 + 56) = v76;
      *(v1 + 64) = v100;
      *(v1 + 72) = v84;
      v94 = swift_allocObject();
      *(v94 + 16) = sub_257DBC89C;
      *(v94 + 24) = v1;
      v109 = sub_257DBC8A0;
      v110 = v94;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v107 = sub_257E9A0D4;
      v108 = &block_descriptor_46;
      v95 = _Block_copy(&aBlock);
      v37 = v6;
      v38 = v84;
      sub_257ECC3F0();

      v39 = [v34 imageWithActions_];
      _Block_release(v95);
      LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

      v0 = v104;
      if (v95)
      {
        goto LABEL_40;
      }
    }

    v70 = v39;
    [v70 setAccessibilityLabel_];

    v108 = sub_257BD2C2C(0, &qword_281543DF0, 0x277D755B8);
    goto LABEL_34;
  }

  v103 = v0;
  v40 = sub_257ECF4C0();
  v41 = sub_257ECF4C0();
  v42 = v3;
  v43 = [v9 v3[453]];

  v44 = v43;
  if (!v43)
  {
    sub_257ECF500();
    v44 = sub_257ECF4C0();
  }

  v99 = sub_257ECF500();
  v46 = v45;
  v47 = [v8 bundleForClass_];
  v48 = sub_257ECF4C0();
  v49 = sub_257ECF4C0();
  v50 = [v47 v42 + 3668];

  if (!v50)
  {
    sub_257ECF500();
    v50 = sub_257ECF4C0();
  }

  v51 = [objc_opt_self() systemFontOfSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_257ED6D30;
  *(v52 + 32) = v101;
  *(v52 + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0, 0x277D74300);
  *(v52 + 40) = v51;
  v53 = v101;
  v54 = v51;
  sub_257BE8668(v52);
  swift_setDeallocating();
  sub_257BE4084(v52 + 32, &qword_27F8F9420, &qword_257EDA500);
  _s3__C3KeyVMa_0(0);
  sub_257D3FC9C();
  v55 = sub_257ECF3C0();

  [v44 sizeWithAttributes_];
  v57 = v56;
  v59 = v58;

  [v6 size];
  v61 = v57 + v60 + 5.0;
  [v6 size];
  if (v59 > v62)
  {
    v63 = v59;
  }

  else
  {
    v63 = v62;
  }

  v64 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v1 = swift_allocObject();
  *(v1 + 16) = v63;
  *(v1 + 24) = v57;
  *(v1 + 32) = v59;
  *(v1 + 40) = 1;
  *(v1 + 48) = v6;
  *(v1 + 56) = v99;
  *(v1 + 64) = v46;
  *(v1 + 72) = v54;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_257DBCE68;
  *(v65 + 24) = v1;
  v109 = sub_257DBCE6C;
  v110 = v65;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v107 = sub_257E9A0D4;
  v108 = &block_descriptor_34;
  v66 = _Block_copy(&aBlock);
  v67 = v54;
  v68 = v6;
  sub_257ECC3F0();

  v69 = [v64 imageWithActions_];
  _Block_release(v66);
  LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

  v0 = v103;
  if ((v66 & 1) == 0)
  {
    v70 = v69;
    [v70 setAccessibilityLabel_];

    v108 = sub_257BD2C2C(0, &qword_281543DF0, 0x277D755B8);
LABEL_34:
    *&aBlock = v70;
    v2 = v105;
    v3 = &unk_279854000;
    goto LABEL_35;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_257ED02D0();
  MEMORY[0x259C72150](0xD000000000000027, 0x8000000257F04E80);
  LOBYTE(v111) = *(v0 + v1);
  sub_257ED0400();
  MEMORY[0x259C72150](0x6C6F72746E6F6320, 0xE90000000000002ELL);
  result = sub_257ED0410();
  __break(1u);
  return result;
}

id sub_257DB9C8C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_257DB9CFC(v0, ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_257DB9CFC(uint64_t a1, uint64_t a2)
{
  sub_257DB8CC4();
  v3 = objc_allocWithZone(MEMORY[0x277D75A08]);
  v4 = sub_257ECF7F0();

  v5 = [v3 initWithItems_];

  [v5 setAlpha_];
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) == 8)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = sub_257DB86A4(v12, &unk_286904068);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v6;
    }

    [v5 setSelectedSegmentIndex_];
    v9 = [objc_opt_self() clearColor];
    [v5 _setBackgroundTintColor_];

    [v5 addTarget:a1 action:sel_didSelectSegment_ forControlEvents:4096];
    return v5;
  }

  else
  {
    sub_257ED02D0();
    MEMORY[0x259C72150](0xD000000000000017, 0x8000000257F04E60);
    v11 = sub_257ED08A0();
    MEMORY[0x259C72150](v11);

    MEMORY[0x259C72150](8250, 0xE200000000000000);
    sub_257ED0400();
    MEMORY[0x259C72150](46, 0xE100000000000000);
    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257DB9F9C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v5;
    v8 = v0;
    v9 = sub_257D47B08(v4, v7);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    [v11 setBackgroundColor_];

    v13 = *(v8 + v1);
    *(v8 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

uint64_t sub_257DBA080()
{
  v0 = sub_257DB9C8C();
  v1 = [v0 subviews];

  sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
  v2 = sub_257ECF810();

  v3 = sub_257DB8820(v2);

  v11 = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_257ED0210();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C72E20](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v6 = v11;
  }

  while (v5 != v4);
LABEL_21:

  return v6;
}

void sub_257DBA25C(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_257DB9C8C();
  v5 = v4;
  v6 = 0.0;
  if (*(v1 + v3) == 1)
  {
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed))
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];
}

uint64_t (*sub_257DBA2F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257DBA37C;
}

void sub_257DBA37C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257DB9C8C();
    v7 = v6;
    v8 = 0.0;
    if (*(v4 + v5) == 1)
    {
      v8 = 1.0;
      if (*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed))
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];
  }

  free(v3);
}

id sub_257DBA418()
{
  v1 = sub_257DB9C8C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257DB8BB4();
  v4 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
  v5 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed;
  result = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl) setUserInteractionEnabled_];
  if (*(v0 + v5) == 1)
  {
    return [*(v0 + v4) setSelectedSegmentIndex_];
  }

  return result;
}

_BYTE *sub_257DBA4F4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_detectionModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_expandsWithClickInteractionOnly] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control] = a1;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config];
  *v8 = a2;
  v8[1] = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257DBA618();
  sub_257DBAC18();
  return v9;
}

double sub_257DBA618()
{
  v1 = v0;
  if (qword_281544A78 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    [v1 setBackgroundColor_];
    v2 = [objc_opt_self() whiteColor];
    [v1 setTintColor_];

    v3 = sub_257D14B7C();
    v4 = sub_257DB9F9C();
    [v4 setImage:v3 forState:0];

    v5 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
    swift_beginAccess();
    v1[v5] = 0;
    v6 = sub_257DB9C8C();
    v7 = v6;
    v8 = 0.0;
    if (v1[v5] == 1)
    {
      v8 = 1.0;
      if (v1[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed])
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];

    v9 = sub_257DBA080();
    v10 = v9;
    if (v9 >> 62)
    {
      break;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_7:
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x259C72E20](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 image];
      if (v16)
      {

        [v14 setContentMode_];
      }

      ++v12;
      if (v15 == v11)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v11 = sub_257ED0210();
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_20:

  v17 = &selRef_imageByApplyingSymbolConfiguration_;
  v18 = [v1 layer];
  v19 = &selRef_imageByApplyingSymbolConfiguration_;
  [v18 setCornerRadius_];

  v20 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    goto LABEL_45;
  }

LABEL_21:
  [v20 setCornerCurve_];

  v21 = [v1 v17[2]];
  [v21 setMasksToBounds_];

  v22 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl] setAlpha_];
  v23 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton;
  v24 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton] v17[2]];
  [v24 v19[6]];

  v25 = [*&v1[v23] v17[2]];
  [v25 setMasksToBounds_];

  [*&v1[v23] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  [v1 addSubview_];
  [v1 addSubview_];
  sub_257DBB040();
  v26 = [*&v1[v22] subviews];
  sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
  v27 = sub_257ECF810();

  v40 = v27;
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_47;
    }

    goto LABEL_23;
  }

  v28 = sub_257ED0210();
  if (v28)
  {
LABEL_23:
    v17 = 0;
    v41 = v27 & 0xC000000000000001;
    v38 = v27 + 32;
    v39 = v27 & 0xFFFFFFFFFFFFFF8;
    v20 = 0x277D75000;
    v1 = &unk_279854000;
    do
    {
      if (v41)
      {
        v29 = MEMORY[0x259C72E20](v17, v40);
      }

      else
      {
        if (v17 >= *(v39 + 16))
        {
          goto LABEL_44;
        }

        v29 = *(v38 + 8 * v17);
      }

      v19 = v29;
      v30 = __OFADD__(v17, 1);
      v17 = (v17 + 1);
      if (v30)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
        goto LABEL_21;
      }

      v31 = [(SEL *)v29 subviews];
      v32 = sub_257ECF810();

      if (v32 >> 62)
      {
        v33 = sub_257ED0210();
        if (!v33)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_24;
        }
      }

      if (v33 < 1)
      {
        goto LABEL_43;
      }

      for (i = 0; i != v33; ++i)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x259C72E20](i, v32);
        }

        else
        {
          v35 = *(v32 + 8 * i + 32);
        }

        v36 = v35;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setNumberOfLines_];
        }
      }

LABEL_24:
    }

    while (v17 != v28);
  }

LABEL_47:

  return result;
}

double sub_257DBAC18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  *&result = MEMORY[0x28223BE20](v17, v18, v19, v20, v21).n128_u64[0];
  v25 = v29 - v24;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) == 8)
  {
    v29[0] = v22;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
    sub_257ECDD30();
    swift_endAccess();
    v26 = [objc_opt_self() mainRunLoop];
    v29[1] = v26;
    v27 = sub_257ED0080();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
    sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
    sub_257BD2C74();
    sub_257ECDDF0();
    sub_257BE4084(v8, &unk_27F8F4DB0, &unk_257ED8210);

    (*(v10 + 8))(v16, v9);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
    v28 = sub_257ECDE50();

    (*(v29[0] + 8))(v25, v17);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_detectionModeSubscription) = v28;
  }

  return result;
}

void sub_257DBB040()
{
  v1 = v0;
  v2 = sub_257DB9F9C();
  [v2 setIsAccessibilityElement_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton);
  sub_257D14A40(v4);
  v5 = sub_257ECF4C0();

  [v4 setAccessibilityLabel_];

  v6 = *(v1 + v3);
  Control.rawValue.getter();
  v7 = v6;
  v8 = sub_257ECF4C0();

  [v7 setAccessibilityIdentifier_];

  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    v11 = v9;
    v12 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();
    v11 = v9;
    v15 = [v14 bundleForClass_];
    v16 = sub_257ECF4C0();
    v17 = sub_257ECF4C0();
    v12 = [v15 localizedStringForKey:v16 value:0 table:v17];

    if (!v12)
    {
      sub_257ECF500();
      v12 = sub_257ECF4C0();
    }
  }

  [v11 setAccessibilityHint_];
}

void sub_257DBB27C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] = v4;
    sub_257DBA418();
  }
}

void sub_257DBB364()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - v6 - v15 - v16;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v6;
    v23.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v23);
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v20 = sub_257DB9F9C();
  [v20 setFrame_];

  v21 = sub_257DB9C8C();
  [v21 setFrame_];
}

void sub_257DBB670(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
  v3 = sub_257DB9C8C();
  v4 = sub_257ECFF50();

  if (v4)
  {
    if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) != 8)
    {
      sub_257ED02D0();
      MEMORY[0x259C72150](0xD000000000000017, 0x8000000257F04E60);
      v6 = sub_257ED08A0();
      MEMORY[0x259C72150](v6);

      MEMORY[0x259C72150](8250, 0xE200000000000000);
      sub_257ED0400();
      MEMORY[0x259C72150](46, 0xE100000000000000);
      sub_257ED0410();
      __break(1u);
      return;
    }

    v5 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
    if ([*(v2 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl) selectedSegmentIndex])
    {
      if ([*(v2 + v5) selectedSegmentIndex] == 1)
      {
        if (qword_281544FE0 == -1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if ([*(v2 + v5) selectedSegmentIndex] != 2)
        {
          return;
        }

        if (qword_281544FE0 == -1)
        {
          goto LABEL_11;
        }
      }
    }

    else if (qword_281544FE0 == -1)
    {
      goto LABEL_11;
    }

    swift_once();
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

id sub_257DBBA54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v3 = sub_257D53928();
  v4 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control;
  v5 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control], v3);

  if (v5)
  {
    v15 = v0[v4];
    sub_257D56A50(&v15);
    v6 = v0[v4];
    v7 = sub_257DB9C8C();
    v8 = v7;
    if (v6 == 8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v9 = sub_257DB86A4(v15, &unk_286905C58);
      if (v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = v9;
      }

      [v8 setSelectedSegmentIndex_];
    }

    else
    {
      [v7 setSelectedSegmentIndex_];
    }

    v14.receiver = v1;
    v12 = &v14;
  }

  else
  {
    v16 = v0;
    v12 = &v16;
  }

  v12->super_class = ObjectType;
  return [(objc_super *)v12 removeFromSuperview];
}

uint64_t sub_257DBBCFC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_257DBBD44(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_257DBA2F4(v2);
  return sub_257CA4CF4;
}

uint64_t sub_257DBBDEC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_257DBBE38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257DB9F9C();
  return v0;
}

void sub_257DBBF04(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction;
  v13 = *&v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (v13)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v14 = v13;
    v15 = a1;
    v16 = sub_257ECFF50();

    if (v16)
    {
      v17 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
      swift_beginAccess();
      v18 = v2[v17];
      sub_257ECD350();
      v19 = v2;
      v20 = sub_257ECDA20();
      v21 = sub_257ECFBD0();
      if (os_log_type_enabled(v20, v21))
      {
        v31 = v19;
        v22 = v18 ^ 1;
        v23 = swift_slowAlloc();
        v30 = v18;
        v24 = v23;
        *v23 = 67109632;
        *(v23 + 4) = v22;
        v19 = v31;
        *(v23 + 8) = 1024;
        *(v23 + 10) = v2[v17];
        *(v23 + 14) = 1024;
        *(v23 + 16) = *(&v19->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v20, v21, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v24, 0x14u);
        v25 = v24;
        v18 = v30;
        MEMORY[0x259C74820](v25, -1, -1);
      }

      else
      {

        v20 = v19;
      }

      (*(v5 + 8))(v11, v4);
      if (v18)
      {
        v26 = *&v2[v12];
        if (v26)
        {
          [v26 cancelInteraction];
          v27 = *&v2[v12];
          if (v27)
          {
            v28 = v27;
            sub_257DBCC98(1);

            if (*&v2[v12])
            {
              [v19 removeInteraction:?];
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_257DBC1E8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v31 - v17;
  v19 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction;
  v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (v20)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v21 = v20;
    v22 = a1;
    v23 = sub_257ECFF50();

    if (v23)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v27 = sub_257ECDA20();
        v30 = sub_257ECFBD0();
        if (!os_log_type_enabled(v27, v30))
        {
          goto LABEL_15;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_257BAC000, v27, v30, "will present", v29, 2u);
        goto LABEL_12;
      }

      v24 = *&v2[v19];
      if (v24)
      {
        [v24 cancelInteraction];
        v25 = *&v2[v19];
        if (v25)
        {
          v26 = v25;
          sub_257DBCC98(1);

          if (*&v2[v19])
          {
            [v2 removeInteraction_];
            sub_257ECD350();
            v27 = sub_257ECDA20();
            v28 = sub_257ECFBD0();
            if (!os_log_type_enabled(v27, v28))
            {
              v18 = v11;
              goto LABEL_15;
            }

            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_257BAC000, v27, v28, "will not present", v29, 2u);
            v18 = v11;
LABEL_12:
            MEMORY[0x259C74820](v29, -1, -1);
LABEL_15:

            (*(v5 + 8))(v18, v4);
            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

id sub_257DBC568(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *&v4[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (!v14)
  {
    return 0;
  }

  sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
  v15 = v14;
  v16 = a1;
  v17 = sub_257ECFF50();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_257ECD350();
  v18 = v4;
  v19 = sub_257ECDA20();
  v20 = sub_257ECFBD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315650;
    v23 = sub_257ECFEC0();
    v25 = sub_257BF1FC8(v23, v24, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 1024;
    v26 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
    swift_beginAccess();
    LODWORD(v26) = v18[v26];

    *(v21 + 14) = v26;
    *(v21 + 18) = 1024;
    v27 = v18[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed];

    *(v21 + 20) = v27;
    _os_log_impl(&dword_257BAC000, v19, v20, "location: %s, expanded: %{BOOL}d, dimmed: %{BOOL}d", v21, 0x18u);
    v28 = __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x259C74820](v22, -1, -1, v28);
    MEMORY[0x259C74820](v21, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v13, v6);
  return [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
}

double block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

void sub_257DBC920()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_detectionModeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_expandsWithClickInteractionOnly) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257DBCA00(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (v12)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      sub_257ECD350();
      v16 = v2;
      v17 = sub_257ECDA20();
      v18 = sub_257ECFBD0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109376;
        v20 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
        swift_beginAccess();
        *(v19 + 4) = *(&v16->isa + v20);
        *(v19 + 8) = 1024;
        *(v19 + 10) = *(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v17, v18, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v19, 0xEu);
        MEMORY[0x259C74820](v19, -1, -1);
      }

      else
      {

        v17 = v16;
      }

      (*(v5 + 8))(v11, v4);
      if (*(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed) != 1 || (v21 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded, swift_beginAccess(), *(&v16->isa + v21) == 1))
      {
        v22 = v16 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v22 + 1);
          ObjectType = swift_getObjectType();
          (*(v23 + 8))(v16, &off_286910C18, ObjectType, v23);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

uint64_t sub_257DBCC98(char a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v11 = v1;
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109632;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    v15 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
    swift_beginAccess();
    *(v14 + 10) = *(&v11->isa + v15);
    *(v14 + 14) = 1024;
    *(v14 + 16) = *(&v11->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v12, v13, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v14, 0x14u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_257DBCE70(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a2;
  v4 = sub_257ECDA30();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  v5 = sub_257ECF120();
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  v6 = sub_257ECF190();
  *(v2 + 152) = v6;
  *(v2 + 160) = *(v6 - 8);
  *(v2 + 168) = swift_task_alloc();
  v7 = sub_257ECF1B0();
  *(v2 + 176) = v7;
  *(v2 + 184) = *(v7 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = type metadata accessor for MAGOutputEvent(0);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = *a1;
  *(v2 + 304) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 256) = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  *(v2 + 264) = v9;
  *(v2 + 272) = v8;

  return MEMORY[0x2822009F8](sub_257DBD0F8, v9, v8);
}

uint64_t sub_257DBD0F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 280) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 304))
    {
      if (*(v0 + 304) == 1)
      {
        v3 = *(v0 + 240);
        v4 = swift_task_alloc();
        *(v0 + 288) = v4;
        *v4 = v0;
        v4[1] = sub_257DBD6B0;

        return sub_257E87B28(v3);
      }

      v15 = *(v0 + 248);
      v16 = *(v0 + 240);

      if (v16 | v15)
      {
        [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer] removeFromSuperlayer];
        v17 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView];
        [v17 setHidden_];
      }

      else
      {
        v19 = *(v0 + 224);
        v18 = *(v0 + 232);
        v20 = *(v0 + 216);
        [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView] setHidden_];
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        sub_257C15EC0(v20, v18 + v19[5]);
        *(v18 + v19[6]) = 0;
        *(v18 + v19[7]) = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 224);
        v21 = *(v0 + 232);
        v23 = *(v0 + 216);
        v24 = *(v0 + 192);
        v25 = *(v0 + 184);
        v38 = *(v0 + 176);
        v31 = *(v0 + 200);
        v32 = *(v0 + 168);
        v36 = *(v0 + 160);
        v37 = *(v0 + 152);
        v35 = *(v0 + 136);
        v33 = *(v0 + 144);
        v34 = *(v0 + 128);
        v26 = qword_281548348;
        sub_257ECC3F0();
        sub_257C15F24(v23, type metadata accessor for MAGOutputEvent.EventType);
        *(v21 + *(v22 + 32)) = v26;
        sub_257CBBC80(v21);
        sub_257C15F24(v21, type metadata accessor for MAGOutputEvent);
        sub_257BD52CC();
        v27 = sub_257ECFD30();
        sub_257ECF1A0();
        sub_257ECF220();
        v28 = *(v25 + 8);
        v28(v24, v38);
        *(v0 + 48) = sub_257DBDA8C;
        *(v0 + 56) = 0;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_257D231C0;
        *(v0 + 40) = &block_descriptor_47;
        v29 = _Block_copy((v0 + 16));
        sub_257ECF150();
        *(v0 + 88) = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C727E0](v31, v32, v33, v29);
        _Block_release(v29);

        (*(v35 + 8))(v33, v34);
        (*(v36 + 8))(v32, v37);
        v28(v31, v38);
      }
    }

    else
    {
      v6 = *(v0 + 248);
      v7 = *(v0 + 232);
      v8 = *(v0 + 240);
      v9 = *(v0 + 216);
      v10 = *(v0 + 224);

      *v9 = v8;
      v9[1] = v6;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      sub_257C15EC0(v9, v7 + v10[5]);
      *(v7 + v10[6]) = 0;
      *(v7 + v10[7]) = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 224);
      v11 = *(v0 + 232);
      v13 = *(v0 + 216);
      v14 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v13, type metadata accessor for MAGOutputEvent.EventType);
      *(v11 + *(v12 + 32)) = v14;
      sub_257CBBC80(v11);
      sub_257C15F24(v11, type metadata accessor for MAGOutputEvent);
    }
  }

  else
  {
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_257DBD6B0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_257DBD8C4;
  }

  else
  {
    v5 = sub_257DBD7EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257DBD7EC()
{
  v1 = *(v0 + 280);
  sub_257C5D470(*(v0 + 240), *(v0 + 248), 1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257DBD8C4()
{

  sub_257ECD380();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBE0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[37];
  v5 = v0[35];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v3)
  {
    v17 = v0[37];
    v11 = v0[13];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Unable to update document CALayer", v13, 2u);
    v14 = v13;
    v8 = v12;
    v10 = v11;
    MEMORY[0x259C74820](v14, -1, -1);
    sub_257C5D470(v7, v6, 1);

    v1 = v5;
  }

  else
  {

    sub_257C5D470(v7, v6, 1);
  }

  (*(v9 + 8))(v8, v10);

  v15 = v0[1];

  return v15();
}

double block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

CGColorRef sub_257DBDAAC()
{
  result = CGColorCreateGenericRGB(0.415686275, 0.415686275, 0.415686275, 1.0);
  qword_27F8F9440 = result;
  return result;
}

CGColorRef sub_257DBDAE0()
{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  qword_27F8F9448 = result;
  return result;
}

void sub_257DBDB38(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [v4 CGColor];

  *a3 = v5;
}

CGColorRef sub_257DBDBA4()
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.68);
  qword_27F8F9460 = result;
  return result;
}

void sub_257DBDBD8(double a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale;
  *&v1[OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale] = a1;
  [v1 setLineWidth_];
  v8.origin.x = -12.5;
  v8.origin.y = -12.5;
  v8.size.width = 25.0;
  v8.size.height = 25.0;
  v3 = CGPathCreateWithEllipseInRect(v8, 0);
  CGAffineTransformMakeScale(&v6, 1.0 / *&v1[v2], 1.0 / *&v1[v2]);
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  v5 = MEMORY[0x259C73760](v3, &v6);
  [v1 setPath_];

  [v4 commit];
}

id sub_257DBDCF8()
{
  *&v0[OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale] = 0x3FF0000000000000;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DragHandleLayer();
  v1 = objc_msgSendSuper2(&v4, sel_init);
  [v1 setMasksToBounds_];
  if (qword_27F8F4690 != -1)
  {
    swift_once();
  }

  [v1 setStrokeColor_];
  if (qword_27F8F4688 != -1)
  {
    swift_once();
  }

  [v1 setFillColor_];
  [v1 setLineWidth_];
  LODWORD(v2) = 1.0;
  [v1 setOpacity_];
  sub_257DBDBD8(1.0);

  return v1;
}

void sub_257DBDFF4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges))
  {
    return;
  }

  v3 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
  Width = CGRectGetWidth(v19);
  [*(v1 + v3) bounds];
  Height = CGRectGetHeight(v20);
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer))
  {
    v6 = Height;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = Width;
    v28.size.height = Height;
    if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame), v28) && ([*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer) frame], v29.origin.x = 0.0, v29.origin.y = 0.0, v29.size.width = Width, v29.size.height = v6, CGRectEqualToRect(v21, v29)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer), sel_frame), v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = Width, v30.size.height = v6, CGRectEqualToRect(v22, v30)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer), sel_frame), v31.origin.x = 0.0, v31.origin.y = 0.0, v31.size.width = Width, v31.size.height = v6, CGRectEqualToRect(v23, v31)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer), sel_frame), v32.origin.x = 0.0, v32.origin.y = 0.0, v32.size.width = Width, v32.size.height = v6, CGRectEqualToRect(v24, v32)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer), sel_frame), v33.origin.x = 0.0, v33.origin.y = 0.0, v33.size.width = Width, v33.size.height = v6, CGRectEqualToRect(v25, v33)) && (v7 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer, objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer), sel_frame), v34.origin.x = 0.0, v34.origin.y = 0.0, v34.size.width = Width, v34.size.height = v6, CGRectEqualToRect(v26, v34)))
    {
      [*(v1 + v7) frame];
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = Width;
      v35.size.height = v6;
      v8 = !CGRectEqualToRect(v27, v35);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) bounds];
  v12 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize);
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize + 16) == 1)
  {
    v9.n128_u64[0] = v10;
    sub_257DC484C(v9, v11);
    v14 = v13;
    v16 = v15;
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (vabdd_f64(*&v14, *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize)) + vabdd_f64(*&v16, *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize + 8)) <= 0.001 && (a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  v14 = *v12;
  v16 = v12[1];
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_20:
  v17 = objc_opt_self();
  [v17 begin];
  [v17 setDisableActions_];
  sub_257DBE2F0(v1, v14, v16, 0);

  [v17 commit];
}

void sub_257DBE2F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = objc_opt_self();
  [v8 begin];
  [v8 setDisableActions_];
  v9 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  v10 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer);
  v41 = 0x3FF0000000000000uLL;
  *&v42 = 0;
  *(&v42 + 1) = 0x3FF0000000000000;
  v43 = 0uLL;
  [v10 setAffineTransform_];
  v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer) setAnchorPoint_];
  v12 = *(a1 + v11);
  v13 = *(MEMORY[0x277CD9DE8] + 80);
  v45 = *(MEMORY[0x277CD9DE8] + 64);
  v46 = v13;
  v14 = *(MEMORY[0x277CD9DE8] + 112);
  v47 = *(MEMORY[0x277CD9DE8] + 96);
  v48 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 16);
  v41 = *MEMORY[0x277CD9DE8];
  v42 = v15;
  v16 = *(MEMORY[0x277CD9DE8] + 48);
  v43 = *(MEMORY[0x277CD9DE8] + 32);
  v44 = v16;
  [v12 setTransform_];
  [v8 commit];
  v17 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
  Width = CGRectGetWidth(v49);
  [*(a1 + v17) bounds];
  Height = CGRectGetHeight(v50);
  [*(a1 + v9) setFrame_];
  [*(a1 + v11) setFrame_];
  v20 = (a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame);
  *v20 = 0.0;
  v20[1] = 0.0;
  v20[2] = Width;
  v20[3] = Height;
  v21 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer) setFrame_];
  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) setFrame_];
  v23 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  if (v23)
  {
    [v23 setFrame_];
  }

  v24 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_portalLayer);
  if (v24)
  {
    [v24 setFrame_];
  }

  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer) setFrame_];
  if ((a4 & 1) == 0)
  {
    v25 = (a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize);
    *v25 = *&a2;
    v25[1] = *&a3;
    [*(a1 + v22) frame];
    v27 = v26;
    [*(a1 + v22) frame];
    v29 = v27 + v28 * 0.5 - *&a2 * 0.5;
    [*(a1 + v22) frame];
    v31 = v30;
    [*(a1 + v22) frame];
    v33 = v31 + v32 * 0.5 - *&a3 * 0.5;
    if (*&a2 > *&a3)
    {
      v34 = a2;
    }

    else
    {
      v34 = a3;
    }

    v35 = *&v34 * 0.01;
    v36 = v29;
    v37 = a2;
    v38 = a3;
    v39 = CGPathCreateWithRoundedRect(*(&v33 - 1), v35, v35, 0);
    [*(a1 + v21) setPath_];
    v40 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer;
    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer) setPath_];
    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask) setMask_];
    [*(a1 + v9) setPath_];
  }

  sub_257DC2494();
  sub_257DC3134();
  sub_257DBF744();
  sub_257DC2798();
}

__int128 *sub_257DBE70C(__int128 *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  v5 = *MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 8);
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *(MEMORY[0x277CBF2C0] + 24);
  v9 = *(MEMORY[0x277CBF2C0] + 32);
  v10 = *(MEMORY[0x277CBF2C0] + 40);
  *v4 = *MEMORY[0x277CBF2C0];
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v11 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  *v11 = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v10;
  v12 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v13 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v14 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v15 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v16 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask;
  *&v2[v17] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v18 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  *&v2[v18] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v19 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer;
  *&v2[v19] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v20 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  *&v2[v20] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v21 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer;
  *&v2[v21] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer;
  *&v2[v22] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v23 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  *&v2[v23] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v24 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath;
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = 0.0;
  v49.size.height = 0.0;
  *&v2[v24] = CGPathCreateWithRect(v49, 0);
  v25 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize];
  *v26 = 0;
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame];
  *v27 = 0u;
  v27[1] = 0u;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_portalLayer] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_usingPortalLayer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_subscribers] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentDragHandle] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio] = 0x3FF0000000000000;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex] = -1;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection] = 0;
  v28 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelectionStartPosition];
  *v29 = 0;
  v29[1] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelection] = 0;
  v30 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_257EDBE40;
  v32 = type metadata accessor for DragHandleLayer();
  v44 = a1[1];
  v45 = *a1;
  v43 = a1[2];
  *(v31 + 32) = [objc_allocWithZone(v32) init];
  *(v31 + 40) = [objc_allocWithZone(v32) init];
  *(v31 + 48) = [objc_allocWithZone(v32) init];
  v33 = [objc_allocWithZone(v32) init];
  *&v2[v30] = v31;
  *(v31 + 56) = v33;
  v34 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions];
  *(v34 + 8) = xmmword_257EDC820;
  *v34 = &unk_286905C80;
  v47 = &unk_286905C80;
  v48 = xmmword_257EDC820;
  sub_257C38808(v33, v35);
  *v34 = v36;

  v37 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage;
  v38 = type metadata accessor for CapturedImage(0);
  (*(*(v38 - 8) + 56))(&v2[v37], 1, 1, v38);
  v39 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView;
  *&v2[v39] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer] = 0;
  v40 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_environment];
  *v40 = v45;
  v40[1] = v44;
  v40[2] = v43;
  v46.receiver = v2;
  v46.super_class = type metadata accessor for LiveCameraLayer(0);
  v41 = objc_msgSendSuper2(&v46, sel_init);
  sub_257DBEB8C();

  return v41;
}

double sub_257DBEB8C()
{
  [v0 setMasksToBounds_];
  v1 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer];
  [v2 removeFromSuperlayer];
  [v0 addSublayer_];
  [v0 bounds];
  [v2 setFrame_];
  [v2 setMasksToBounds_];
  v3 = *MEMORY[0x277CDA720];
  [v2 setContentsGravity_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  v80 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  v5 = *&v0[v1];
  v6 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer];
  v7 = v5;
  [v6 removeFromSuperlayer];
  [v7 addSublayer_];
  [v7 &selRef__accessibilitySupplementaryFooterViews];
  [v6 setFrame_];
  [v6 setMasksToBounds_];
  [v6 setContentsGravity_];

  v8 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask;
  v9 = *&v0[v4];
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask];
  v11 = v9;
  [v10 removeFromSuperlayer];
  [v11 addSublayer_];
  [v11 bounds];
  [v10 setFrame_];
  [v10 setMasksToBounds_];
  [v10 setContentsGravity_];

  v82 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  v12 = *&v0[v8];
  v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer];
  v14 = v12;
  [v13 removeFromSuperlayer];
  [v14 addSublayer_];
  [v14 bounds];
  [v13 setFrame_];
  [v13 setMasksToBounds_];
  [v13 setContentsGravity_];

  v79 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  v15 = *&v0[v80];
  v16 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer];
  v17 = v15;
  [v16 &selRef_setSimdPosition_];
  [v17 addSublayer_];
  [v17 bounds];
  [v16 setFrame_];
  [v16 setMasksToBounds_];
  [v16 setContentsGravity_];

  v18 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer;
  v19 = *&v0[v80];
  v20 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer];
  v21 = v19;
  [v20 removeFromSuperlayer];
  [v21 addSublayer_];
  [v21 bounds];
  [v20 setFrame_];
  [v20 setMasksToBounds_];
  [v20 setContentsGravity_];

  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer;
  v23 = *&v0[v18];
  v24 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer];
  v25 = v23;
  [v24 removeFromSuperlayer];
  [v25 addSublayer_];
  [v25 bounds];
  [v24 setFrame_];
  [v24 setMasksToBounds_];
  [v24 setContentsGravity_];

  v78 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  v81 = v22;
  v26 = *&v0[v22];
  v27 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer];
  v28 = v26;
  [v27 removeFromSuperlayer];
  [v28 addSublayer_];
  [v28 bounds];
  [v27 setFrame_];
  [v27 setMasksToBounds_];
  [v27 setContentsGravity_];

  v29 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer;
  v30 = *&v0[v82];
  v31 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer];
  v32 = v30;
  [v31 removeFromSuperlayer];
  [v32 addSublayer_];
  [v32 bounds];
  [v31 setFrame_];
  [v31 setMasksToBounds_];
  [v31 setContentsGravity_];

  v76 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  v33 = *&v0[v29];
  v34 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer];
  v35 = v33;
  [v34 removeFromSuperlayer];
  [v35 addSublayer_];
  [v35 bounds];
  [v34 &selRef_mainMixerNode];
  [v34 setMasksToBounds_];
  [v34 setContentsGravity_];

  v36 = *&v0[v29];
  v37 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer];
  v38 = v36;
  [v37 removeFromSuperlayer];
  v39 = &selRef_imageByApplyingSymbolConfiguration_;
  [v38 addSublayer_];
  [v38 bounds];
  [v37 &selRef_mainMixerNode];
  [v37 setMasksToBounds_];
  v83 = v3;
  [v37 setContentsGravity_];

  v40 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers];
  if (v40 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    v42 = v39;
    if (!i)
    {
      break;
    }

    v43 = 0;
    v39 = (v40 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x259C72E20](v43, v40);
      }

      else
      {
        if (v43 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v44 = *(v40 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [*&v0[v18] v42 + 1656];

      ++v43;
      if (v46 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_12:

  v47 = qword_27F8F4698;
  v48 = *&v0[v78];
  if (v47 != -1)
  {
    swift_once();
  }

  [v48 setStrokeColor_];

  v49 = *&v0[v78];
  v50 = objc_opt_self();
  v51 = v49;
  v52 = [v50 clearColor];
  v53 = [v52 CGColor];

  [v51 setFillColor_];
  v54 = *&v0[v78];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_257ED9BE0;
  v56 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v57 = v54;
  *(v55 + 32) = [v56 initWithDouble_];
  *(v55 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  v58 = sub_257ECF7F0();

  [v57 setLineDashPattern_];

  [*&v0[v78] setLineWidth_];
  [*&v0[v81] setLineWidth_];
  v59 = qword_27F8F46A0;
  v60 = *&v0[v81];
  if (v59 != -1)
  {
    swift_once();
  }

  [v60 setStrokeColor_];

  v61 = qword_27F8F46A8;
  v62 = *&v0[v81];
  if (v61 != -1)
  {
    swift_once();
  }

  [v62 setFillColor_];

  [*&v0[v79] setLineWidth_];
  v63 = *&v0[v79];
  v64 = sub_257ECF4C0();
  [v63 setCompositingFilter_];

  v65 = *&v0[v79];
  v66 = [v50 blackColor];
  v67 = [v66 colorWithAlphaComponent_];

  v68 = [v67 CGColor];
  [v65 setStrokeColor_];

  v69 = *&v0[v79];
  v70 = [v50 clearColor];
  v71 = [v70 CGColor];

  [v69 setFillColor_];
  memset(v84, 0, sizeof(v84));
  sub_257DC422C(v84);
  sub_257DBF744();
  sub_257DC3D9C();
  sub_257DC45FC();
  v72 = sub_257DC3950();
  if (v72)
  {
    v73 = v72;
    v74 = *&v0[v77];
    [v73 removeFromSuperlayer];
    [v74 v42 + 1656];
    [v74 bounds];
    [v73 setFrame_];
    [v73 setMasksToBounds_];
    [v73 setContentsGravity_];
  }

  return sub_257DC1A98();
}

void sub_257DBF744()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) bounds];
  if (LOBYTE(v138.m11) != 3)
  {
    v45 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges;
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v138.m11 = 0.0;
    sub_257ECC3F0();
    sub_257ECDD70();
    *(v0 + v45) = 0;
    v46 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer) setAnchorPoint_];
    v47 = *(v1 + v46);
    v48 = *(MEMORY[0x277CD9DE8] + 80);
    *&v138.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v138.m33 = v48;
    v49 = *(MEMORY[0x277CD9DE8] + 112);
    *&v138.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v138.m43 = v49;
    v50 = *(MEMORY[0x277CD9DE8] + 16);
    *&v138.m11 = *MEMORY[0x277CD9DE8];
    *&v138.m13 = v50;
    v51 = *(MEMORY[0x277CD9DE8] + 48);
    *&v138.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v138.m23 = v51;
    [v47 setTransform_];
    v52 = v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize;
    *v52 = 0;
    *(v52 + 8) = 0;
    *(v52 + 16) = 1;
    return;
  }

  v11.n128_u64[0] = v12;
  v14 = 0.0;
  sub_257DC484C(v11, v13);
  v16 = v15;
  v18 = v17;
  v139.origin.x = v3;
  v139.origin.y = v5;
  v139.size.width = v7;
  v139.size.height = v9;
  Width = CGRectGetWidth(v139);
  v120 = v5;
  v121 = v3;
  v140.origin.x = v3;
  v140.origin.y = v5;
  v119 = v7;
  v140.size.width = v7;
  v140.size.height = v9;
  Height = CGRectGetHeight(v140);
  if (Width >= v16)
  {
    v21 = Width;
  }

  else
  {
    v21 = v16;
  }

  v128 = v21;
  if (Width >= v16)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 0.0 - (v16 - Width) * 0.5;
  }

  v23 = 0.0 - (v18 - Height) * 0.5;
  v24 = Height < v18;
  if (Height < v18)
  {
    Height = v18;
  }

  v117 = Height;
  if (v24)
  {
    v14 = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  m11 = v138.m11;
  [*(v0 + v10) frame];
  v27 = v26;
  [*(v0 + v10) frame];
  v130 = v16;
  v29 = v27 + v28 * 0.5 - v16 * 0.5;
  [*(v0 + v10) frame];
  v31 = v30;
  [*(v0 + v10) frame];
  v129 = v18;
  v33 = v31 + v32 * 0.5 - v18 * 0.5;
  v118 = v9;
  v122 = v14;
  v123 = v22;
  if (!*&v138.m11)
  {
    v53 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
    v55 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 8);
    v54 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 16);
    v138.m11 = v53;
    v124 = v55;
    v126 = v54;
    v138.m12 = v55;
    v138.m13 = v54;

    v56 = sub_257C389F8();
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = (v56 + 40);
      v59 = MEMORY[0x277D84F90];
      do
      {
        v60 = *(v58 - 1);
        v133 = *v58;
        v145.origin.x = v29;
        v145.origin.y = v33;
        v145.size.width = v130;
        v145.size.height = v129;
        MinX = CGRectGetMinX(v145);
        v146.origin.x = v29;
        v146.origin.y = v33;
        v146.size.width = v130;
        v146.size.height = v129;
        v62 = CGRectGetWidth(v146);
        v147.origin.x = v29;
        v147.origin.y = v33;
        v147.size.width = v130;
        v147.size.height = v129;
        MinY = CGRectGetMinY(v147);
        v148.origin.x = v29;
        v148.origin.y = v33;
        v148.size.width = v130;
        v148.size.height = v129;
        v64 = CGRectGetHeight(v148);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_257BFE188(0, *(v59 + 2) + 1, 1, v59);
        }

        v66 = *(v59 + 2);
        v65 = *(v59 + 3);
        if (v66 >= v65 >> 1)
        {
          v59 = sub_257BFE188((v65 > 1), v66 + 1, 1, v59);
        }

        *(v59 + 2) = v66 + 1;
        v67 = &v59[16 * v66];
        *(v67 + 4) = (v60 - MinX) / v62;
        *(v67 + 5) = (v133 - MinY) / v64;
        v58 += 2;
        --v57;
      }

      while (v57);
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v138.m11 = v59;
    sub_257ECC3F0();
    sub_257ECDD70();
    v81 = v124;
    v80 = v126;
    goto LABEL_38;
  }

  v34 = *(*&v138.m11 + 16);
  if (v34)
  {
    v35 = (*&v138.m11 + 40);
    v36 = MEMORY[0x277D84F90];
    do
    {
      v37 = *(v35 - 1);
      v132 = *v35;
      v141.origin.x = v29;
      v141.origin.y = v33;
      v141.size.width = v130;
      v141.size.height = v129;
      v38 = CGRectGetWidth(v141);
      v142.origin.x = v29;
      v142.origin.y = v33;
      v142.size.width = v130;
      v142.size.height = v129;
      v39 = CGRectGetMinX(v142);
      v143.origin.x = v29;
      v143.origin.y = v33;
      v143.size.width = v130;
      v143.size.height = v129;
      v40 = CGRectGetHeight(v143);
      v144.origin.x = v29;
      v144.origin.y = v33;
      v144.size.width = v130;
      v144.size.height = v129;
      v41 = CGRectGetMinY(v144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_257BFE188(0, *(v36 + 2) + 1, 1, v36);
      }

      v43 = *(v36 + 2);
      v42 = *(v36 + 3);
      if (v43 >= v42 >> 1)
      {
        v36 = sub_257BFE188((v42 > 1), v43 + 1, 1, v36);
      }

      *(v36 + 2) = v43 + 1;
      v44 = &v36[16 * v43];
      *(v44 + 4) = v37 * v38 + v39;
      *(v44 + 5) = v132 * v40 + v41;
      v35 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v68 = *(v36 + 2);
  if (!v68)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v68 == 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v68 < 3)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v68 == 3)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v69 = *(v36 + 4);
  v70 = *(v36 + 5);
  v71 = *(v36 + 6);
  v72 = *(v36 + 7);
  v74 = *(v36 + 8);
  v73 = *(v36 + 9);
  v75 = *(v36 + 10);
  v76 = *(v36 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
  v77 = COERCE_DOUBLE(swift_allocObject());
  *(*&v77 + 16) = xmmword_257EDBE50;
  *(*&v77 + 32) = v69;
  *(*&v77 + 40) = v70;
  *(*&v77 + 48) = 0;
  *(*&v77 + 56) = v71;
  *(*&v77 + 64) = v72;
  *(*&v77 + 72) = 1;
  *(*&v77 + 80) = v74;
  *(*&v77 + 88) = v73;
  *(*&v77 + 96) = 2;
  *(*&v77 + 104) = v75;
  *(*&v77 + 112) = v76;
  *(*&v77 + 120) = 3;
  v138.m11 = v77;
  *&v138.m12 = xmmword_257EDC820;
  sub_257C38808(*&v77, v78);
  v53 = v79;

  v80 = 135.0;
  v81 = 45.0;
LABEL_38:
  v138.m11 = v53;
  v125 = v81;
  v127 = v80;
  v138.m12 = v81;
  v138.m13 = v80;
  sub_257C38AC4();
  v83 = v82;
  v134 = v84;
  v86 = v85;
  v88 = v87;
  v149.origin.x = v123;
  v149.origin.y = v122;
  v149.size.width = v128;
  v89 = v117;
  v149.size.height = v117;
  v90 = CGRectGetWidth(v149);
  v150.origin.x = v123;
  v150.origin.y = v122;
  v150.size.width = v128;
  v150.size.height = v117;
  v131 = v90 / CGRectGetHeight(v150);
  v151.origin.x = v83;
  v151.origin.y = v134;
  v151.size.width = v86;
  v151.size.height = v88;
  v91 = CGRectGetWidth(v151);
  v152.origin.x = v83;
  v152.origin.y = v134;
  v152.size.width = v86;
  v152.size.height = v88;
  v92 = v91 / CGRectGetHeight(v152);
  if (v92 >= v131)
  {
    v155.origin.x = v123;
    v155.origin.y = v122;
    v155.size.width = v128;
    v155.size.height = v117;
    v102 = CGRectGetWidth(v155) / v92;
    v156.origin.x = v123;
    v156.origin.y = v122;
    v156.size.width = v128;
    v156.size.height = v117;
    v103 = CGRectGetHeight(v156) - v102;
    v96 = v120;
    v95 = v121;
    v104 = v118;
    v97 = v119;
    v105 = v122;
    if (v103 >= 0.0)
    {
      v105 = v122 + v103 * 0.5;
      v89 = v102;
    }

    v98 = v128;
    v100 = v125;
    v99 = v127;
    v101 = v123;
  }

  else
  {
    v153.origin.x = v123;
    v153.origin.y = v122;
    v153.size.width = v128;
    v153.size.height = v117;
    v93 = v92 * CGRectGetHeight(v153);
    v154.origin.x = v123;
    v154.origin.y = v122;
    v154.size.width = v128;
    v154.size.height = v117;
    v94 = CGRectGetWidth(v154) - v93;
    v96 = v120;
    v95 = v121;
    v97 = v119;
    if (v94 >= 0.0)
    {
      v98 = v93;
      v101 = v123 + v94 * 0.5;
      v100 = v125;
      v99 = v127;
    }

    else
    {
      v98 = v128;
      v100 = v125;
      v99 = v127;
      v101 = v123;
    }

    v105 = v122;
    v104 = v118;
  }

  v106 = v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize;
  *v106 = v98;
  *(v106 + 8) = v89;
  *(v106 + 16) = 0;
  sub_257C38660(&v138, v101, v105, v98, v89);
  v107 = v138.m11;
  v108 = *&v138.m12;
  v138.m11 = v53;
  v138.m12 = v100;
  v138.m13 = v99;
  a.m11 = v107;
  *&a.m12 = v108;
  sub_257C3A284(&v138, &a, &v137);

  v109 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer) setAnchorPoint_];
  v157.origin.x = v95;
  v157.origin.y = v96;
  v157.size.width = v97;
  v157.size.height = v104;
  v110 = CGRectGetWidth(v157) * -0.5;
  v158.origin.x = v95;
  v158.origin.y = v96;
  v158.size.width = v97;
  v158.size.height = v104;
  v111 = CGRectGetHeight(v158);
  v112 = *(MEMORY[0x277CD9DE8] + 80);
  *&v138.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v138.m33 = v112;
  v113 = *(MEMORY[0x277CD9DE8] + 112);
  *&v138.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v138.m43 = v113;
  v114 = *(MEMORY[0x277CD9DE8] + 16);
  *&v138.m11 = *MEMORY[0x277CD9DE8];
  *&v138.m13 = v114;
  v115 = *(MEMORY[0x277CD9DE8] + 48);
  *&v138.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v138.m23 = v115;
  CATransform3DTranslate(&b, &v138, v110, v111 * -0.5, 0.0);
  a = v137;
  CATransform3DConcat(&v138, &a, &b);
  if (m11 == 0.0)
  {
    [*(v1 + v109) transform];
    if (CATransform3DIsIdentity(&a))
    {
      sub_257DC2CE0(1, 1.0, 0.0, 0.0);
      swift_getKeyPath();
      swift_getKeyPath();
      a.m11 = 0.0;
      a.m12 = 0.0;
      sub_257ECC3F0();
      sub_257ECDD70();
      sub_257DC2494();
      sub_257DC2798();
    }
  }

  v116 = *(v1 + v109);
  a = v138;
  [v116 setTransform_];
}

void sub_257DC017C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer;
  v8 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  if (v8)
  {
    v9 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
    v11 = *(v3 + v7);
    *(v3 + v7) = v10;

    if (v10)
    {
      [v10 setVideoGravity_];
    }

    v12 = *(v3 + v7);
    if (!v12)
    {
      goto LABEL_11;
    }

    v9 = v12;
    v8 = 0;
  }

  v13 = v8;
  [v9 bounds];
  Width = CGRectGetWidth(v90);
  [v9 bounds];
  Height = CGRectGetHeight(v91);
  [a2 topLeft];
  v17 = v16;
  v19 = v18;
  [a2 bottomLeft];
  v21 = v20;
  v23 = v22;
  [a2 topRight];
  v25 = v24;
  v27 = v26;
  [a2 bottomRight];
  if (!a1)
  {

    goto LABEL_11;
  }

  v79.x = v28;
  v79.y = v29;
  v30 = a1;
  v31 = CVPixelBufferGetWidth(v30);
  v32 = CVPixelBufferGetHeight(v30);
  if (Height == 0.0)
  {

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  point = v17;
  v67 = v23;
  v68 = v21;
  v69 = v27;
  v70 = v25;
  v33 = v31 / Width / (v32 / Height);
  v34 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio;
  *(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio) = v33;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v35 = *(v3 + v34);
  v36 = 2.0;
  if (byte_27F8F8D88)
  {
    v36 = 20.0;
  }

  v37 = v35 * v36;
  CGAffineTransformMakeScale(&v82, 1.0, -1.0);
  CGAffineTransformTranslate(&v81, &v82, -Width / v37, -Height);
  b = v81.b;
  c = v81.c;
  v72 = v81.c;
  v73 = v81.b;
  d = v81.d;
  a = v81.a;
  tx = v81.tx;
  v71 = v81.tx;
  ty = v81.ty;
  v82.a = 1.0;
  v82.b = 0.0;
  v82.c = 0.0;
  v82.d = 1.0;
  v82.tx = 0.0;
  v82.ty = 0.0;
  CGAffineTransformScale(&v81, &v82, Width * v35, Height);
  v41 = v81.a;
  v64 = Width;
  point_8 = Height;
  v42 = v81.ty;
  v60 = v81.tx;
  v61 = v81.d;
  v82 = v81;
  v74 = v81.a;
  v43 = v81.b;
  v78 = v81.b;
  v62 = v81.ty;
  v63 = v81.c;
  v83.x = point;
  v83.y = v19;
  v84 = CGPointApplyAffineTransform(v83, &v82);
  v82.a = a;
  v82.b = b;
  v82.c = c;
  v82.d = d;
  v82.tx = tx;
  v82.ty = ty;
  v44 = CGPointApplyAffineTransform(v84, &v82);
  v82.a = v41;
  v82.b = v43;
  v82.c = v63;
  v82.d = v61;
  v82.tx = v60;
  v82.ty = v42;
  v85.y = v67;
  v85.x = v68;
  v86 = CGPointApplyAffineTransform(v85, &v82);
  v82.a = a;
  v82.b = v73;
  v82.c = v72;
  v82.d = d;
  v82.tx = v71;
  v82.ty = ty;
  v45 = CGPointApplyAffineTransform(v86, &v82);
  v82.a = v74;
  v82.b = v78;
  v82.c = v63;
  v82.d = v61;
  v82.tx = v60;
  v82.ty = v62;
  v87.y = v69;
  v87.x = v70;
  v88 = CGPointApplyAffineTransform(v87, &v82);
  v82.a = a;
  v82.b = v73;
  v82.c = v72;
  v82.d = d;
  v82.tx = v71;
  v82.ty = ty;
  v46 = CGPointApplyAffineTransform(v88, &v82);
  v82.a = v74;
  v82.b = v78;
  v82.c = v63;
  v82.d = v61;
  v82.tx = v60;
  v82.ty = v62;
  v89 = CGPointApplyAffineTransform(v79, &v82);
  v82.a = a;
  v82.b = v73;
  v82.c = v72;
  v82.d = d;
  v82.tx = v71;
  v82.ty = ty;
  v47 = CGPointApplyAffineTransform(v89, &v82);
  x = v44.x;
  if (v44.x <= 0.0)
  {
    x = 0.0;
  }

  v80 = x;
  if (v44.y > 0.0)
  {
    y = v44.y;
  }

  else
  {
    y = 0.0;
  }

  if (v64 + -12.5 >= v46.x)
  {
    v50 = v46.x;
  }

  else
  {
    v50 = v64 + -12.5;
  }

  if (v46.y > 0.0)
  {
    v51 = v46.y;
  }

  else
  {
    v51 = 0.0;
  }

  if (v45.x > 0.0)
  {
    v52 = v45.x;
  }

  else
  {
    v52 = 0.0;
  }

  if (point_8 + -12.5 >= v45.y)
  {
    v53 = v45.y;
  }

  else
  {
    v53 = point_8 + -12.5;
  }

  if (v64 + -12.5 >= v47.x)
  {
    v54 = v47.x;
  }

  else
  {
    v54 = v64 + -12.5;
  }

  if (point_8 + -12.5 >= v47.y)
  {
    v55 = v47.y;
  }

  else
  {
    v55 = point_8 + -12.5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
  v56 = COERCE_DOUBLE(swift_allocObject());
  *(*&v56 + 16) = xmmword_257EDBE50;
  *(*&v56 + 32) = v80;
  *(*&v56 + 40) = y;
  *(*&v56 + 48) = 0;
  *(*&v56 + 56) = v50;
  *(*&v56 + 64) = v51;
  *(*&v56 + 72) = 1;
  *(*&v56 + 80) = v52;
  *(*&v56 + 88) = v53;
  *(*&v56 + 96) = 2;
  *(*&v56 + 104) = v54;
  *(*&v56 + 112) = v55;
  *(*&v56 + 120) = 3;
  v82.a = v56;
  *&v82.b = xmmword_257EDC820;
  sub_257C38808(*&v56, v57);
  v59 = v58;

  *a3 = v59;
  *(a3 + 1) = xmmword_257EDC820;
}

void sub_257DC0658()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v10 = v26;
  if (v26)
  {
    v24 = v9;
    v21 = v3;
    v22 = v2;
    v11 = v25;
    v13 = v27;
    v12 = v28;
    v14 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer);
    v15 = v26;
    [v14 setOpacity_];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v25) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v16 = v11;
    sub_257DC017C(v11, v15, &v25);

    if (v25)
    {
      sub_257DC422C(&v25);

      sub_257D98414(v11, v10, v13, v12);
    }

    else
    {
      v17 = v23;
      sub_257ECD340();
      v18 = sub_257ECDA20();
      v19 = sub_257ECFBE0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_257BAC000, v18, v19, "Failed to generate handle positions for document drag handles", v20, 2u);
        MEMORY[0x259C74820](v20, -1, -1);

        sub_257D98414(v11, v10, v13, v12);
      }

      else
      {
        sub_257D98414(v11, v10, v13, v12);
      }

      (*(v21 + 8))(v17, v22);
    }

    v9 = v24;
  }

  *(v1 + v9) = 0;
}

void sub_257DC0948()
{
  v1 = v0;
  v93 = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (LOBYTE(v92.a) != 3)
  {
    return;
  }

  v2 = sub_257DC38BC();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v92.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
  *&v92.b = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 8);
  v12 = sub_257C389F8();
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = (v12 + 40);
    v16 = MEMORY[0x277D84F90];
    do
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      v94.origin.x = v5;
      v94.origin.y = v7;
      v94.size.width = v9;
      v94.size.height = v11;
      Width = CGRectGetWidth(v94);
      v95.origin.x = v5;
      v95.origin.y = v7;
      v95.size.width = v9;
      v95.size.height = v11;
      Height = CGRectGetHeight(v95);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_257BFE188(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_257BFE188((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v23 = &v16[16 * v22];
      *(v23 + 4) = v18 / Width;
      *(v23 + 5) = 1.0 - v17 / Height;
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (!*&v92.b)
  {
    goto LABEL_47;
  }

  b = v92.b;
  v88 = *&v92.c;
  v24 = [objc_allocWithZone(MEMORY[0x277CBF758]) init];
  if (*&v92.a)
  {
    v25 = &selRef_initWithCVPixelBuffer_;
    a = v92.a;
  }

  else
  {
    if (!*&v92.d)
    {
      goto LABEL_19;
    }

    v25 = &selRef_initWithCGImage_;
    a = v92.d;
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CBF758]) *v25];

  v24 = v27;
LABEL_19:
  v87 = v92.a;
  d = v92.d;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v86 = byte_27F8F8D88;
  v28 = 2.0;
  if (byte_27F8F8D88)
  {
    v28 = 20.0;
  }

  v29 = *(v16 + 2);
  if (v29)
  {
    v30 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio;
    v31 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio) * v28;
    v32 = (v16 + 40);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      [v24 extent];
      v35 = CGRectGetWidth(v96);
      v36 = *(v1 + v30);
      [v24 extent];
      v37 = CGRectGetWidth(v97);
      v38 = *(v1 + v30);
      [v24 extent];
      v39 = CGRectGetHeight(v98);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_257BFE188(0, *(v14 + 2) + 1, 1, v14);
      }

      v41 = *(v14 + 2);
      v40 = *(v14 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v14 = sub_257BFE188((v40 > 1), v41 + 1, 1, v14);
      }

      *(v14 + 2) = v42;
      v43 = &v14[16 * v41];
      *(v43 + 4) = v34 * (v35 / v36) + v37 / (v31 * v38);
      *(v43 + 5) = v33 * v39;
      v32 += 2;
      --v29;
    }

    while (v29);
  }

  else
  {
    v42 = *(v14 + 2);
    if (!v42)
    {
      __break(1u);
      goto LABEL_60;
    }
  }

  if (v42 == 1)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v42 < 3)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v42 == 3)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v44 = *(v14 + 4);
  v45 = *(v14 + 5);
  v46 = *(v14 + 6);
  v47 = *(v14 + 7);
  v49 = *(v14 + 8);
  v48 = *(v14 + 9);
  v50 = *(v14 + 10);
  v51 = *(v14 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_257EDBE50;
  *(v52 + 32) = v44;
  *(v52 + 40) = v45;
  *(v52 + 48) = 0;
  *(v52 + 56) = v46;
  *(v52 + 64) = v47;
  *(v52 + 72) = 1;
  *(v52 + 80) = v49;
  *(v52 + 88) = v48;
  *(v52 + 96) = 2;
  *(v52 + 104) = v50;
  *(v52 + 112) = v51;
  *(v52 + 120) = 3;
  sub_257C38808(v52, v53);
  v55 = v54;

  v92.a = v55;
  *&v92.b = xmmword_257EDC820;
  sub_257C390E8(&v92);
  v57 = v56;

  if (!v57)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v87;
    v63 = b;
    v92.a = v87;
    v92.b = b;
    *&v92.c = xmmword_257EDA120;
    v66 = *&v87;
    sub_257ECC3F0();
    v67 = *&b;
    sub_257ECDD70();
    goto LABEL_46;
  }

  if (v86)
  {
    [v57 extent];
    v58 = CGRectGetHeight(v99);
    CGAffineTransformMakeTranslation(&v92, v58, 0.0);
    CGAffineTransformRotate(&v91, &v92, 1.57079633);
    v92 = v91;
    v59 = [v57 imageByApplyingTransform_];

    v57 = v59;
  }

  [v57 extent];
  v60 = CGRectGetWidth(v100);
  if ((~*&v60 & 0x7FF0000000000000) == 0 && (*&v60 & 0xFFFFFFFFFFFFFLL) != 0 || ([v57 extent], fabs(CGRectGetWidth(v101)) == INFINITY) || (objc_msgSend(v57, sel_extent), v61 = CGRectGetHeight(v102), (~*&v61 & 0x7FF0000000000000) == 0) && (*&v61 & 0xFFFFFFFFFFFFFLL) != 0 || (objc_msgSend(v57, sel_extent), fabs(CGRectGetHeight(v103)) == INFINITY))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v87;
    v63 = b;
    v92.a = v87;
    v92.b = b;
    *&v92.c = xmmword_257EDA120;
    v64 = *&v87;
    sub_257ECC3F0();
    v65 = *&b;
    sub_257ECDD70();

LABEL_46:
    sub_257D98414(*&v62, *&v63, v88, *&d);

LABEL_47:

    return;
  }

  v91.a = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A0, &qword_257EE9BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v69 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v70 = *MEMORY[0x277CBED28];
  v71 = *MEMORY[0x277CC4D68];
  *(inited + 40) = *MEMORY[0x277CBED28];
  *(inited + 48) = v71;
  *(inited + 56) = v70;
  v72 = v70;
  v73 = v69;
  v74 = v71;
  sub_257BE95E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A8, &qword_257EE9BF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F95B0, &qword_257EE9C00);
  sub_257DC6058(&qword_27F8F4C08, type metadata accessor for CFString, &unk_257ED8050);
  v75 = sub_257ECF3C0();

  [v57 extent];
  v76 = CGRectGetWidth(v104);
  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_63;
  }

  if (v76 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v76 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v57 extent];
  v77 = CGRectGetHeight(v105);
  if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v77 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  if (v77 >= 9.22337204e18)
  {
    goto LABEL_68;
  }

  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v76, v77, 0x42475241u, v75, &v91);
  v78 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v79 = v91.a;
  if (*&v91.a)
  {
    v80 = *&v91.a;
    [v78 render:v57 toCVPixelBuffer:v80];
    swift_getKeyPath();
    swift_getKeyPath();
    v92.a = v79;
    v92.b = b;
    *&v92.c = xmmword_257EDA120;
    v81 = v80;
    sub_257ECC3F0();
    v82 = *&b;
    sub_257ECDD70();

    sub_257D98414(*&v87, *&b, v88, *&d);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v92.a = v87;
    v92.b = b;
    *&v92.c = xmmword_257EDA120;
    v83 = *&v87;
    v84 = *&b;
    sub_257ECC3F0();
    sub_257ECDD70();

    sub_257D98414(*&v87, *&b, v88, *&d);
  }

  v85 = v91.a;
}

void sub_257DC1410(double a1, double a2)
{
  v3 = v2;
  v6 = sub_257ECCF30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (LOBYTE(v21[0]) == 1)
  {
    v14 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection;
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) = 0;
    v15 = sub_257DC39F0(a1, a2);
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) = v15;
    if ((v15 & 0x8000000000000000) != 0)
    {
      [*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) convertPoint:*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) fromLayer:{a1, a2}];
      v17 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath);
      (*(v7 + 104))(v13, *MEMORY[0x277CBF258], v6);
      v21[0] = 0x3FF0000000000000;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0x3FF0000000000000;
      v21[4] = 0;
      v21[5] = 0;
      v18 = v17;
      v19 = sub_257ED0070();

      (*(v7 + 8))(v13, v6);
      if (v19)
      {
        *(v3 + v14) = 1;
        v20 = (v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition);
        *v20 = a1;
        v20[1] = a2;
      }
    }

    else
    {
      v16 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
      if (v15 >= *(v16 + 16))
      {
        __break(1u);
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition) = *(v16 + 24 * v15 + 32);
      }
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) = -1;
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) = 0;
  }
}

void sub_257DC169C(double a1, double a2, double a3, double a4)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex;
  if ((*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) & 0x8000000000000000) != 0)
  {
    if (*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) == 1)
    {
      v8 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
      v9 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
      if (*(v9 + 16))
      {
        v10 = 0;
        v11 = 0;
        v12 = (v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
        v13 = MEMORY[0x277D84F90];
        while (1)
        {
          v14 = v9 + v10;
          v53 = *(v9 + v10 + 32);
          v15 = *v12;
          v16 = v12[1];
          v17 = v12[2];
          v18 = v12[3];
          v19 = v12[4];
          v20 = v12[5];
          transform.a = *v12;
          transform.b = v16;
          transform.c = v17;
          transform.d = v18;
          transform.tx = v19;
          transform.ty = v20;
          CGAffineTransformDecompose(&v56, &transform);
          if (v56.scale.height >= v56.scale.width)
          {
            width = v56.scale.width;
          }

          else
          {
            width = v56.scale.height;
          }

          v22 = *(v14 + 40);
          transform.a = v15;
          transform.b = v16;
          transform.c = v17;
          transform.d = v18;
          transform.tx = v19;
          transform.ty = v20;
          CGAffineTransformDecompose(&v56, &transform);
          height = v56.scale.width;
          if (v56.scale.height < v56.scale.width)
          {
            height = v56.scale.height;
          }

          v24 = v53 + a3 / width;
          v25 = v22 + a4 / height;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_257BFE188(0, *(v13 + 2) + 1, 1, v13);
          }

          v27 = *(v13 + 2);
          v26 = *(v13 + 3);
          if (v27 >= v26 >> 1)
          {
            v13 = sub_257BFE188((v26 > 1), v27 + 1, 1, v13);
          }

          *(v13 + 2) = v27 + 1;
          v28 = &v13[16 * v27];
          *(v28 + 4) = v24;
          *(v28 + 5) = v25;
          if (v11 == 3)
          {
            break;
          }

          ++v11;
          v9 = *(v4 + v8);
          v10 += 24;
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_39;
          }
        }

        v35 = 0;
        v36 = 0;
        while (1)
        {
          v37 = *(v4 + v8);
          if (v36 >= *(v37 + 2))
          {
            break;
          }

          v54 = *&v13[16 * v36 + 32];
          v38 = *&v37[v35 + 32];
          v39 = *&v37[v35 + 40];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_257C7DF00(v37);
          }

          v40 = &v37[v35];
          *&v37[v35 + 32] = v54;
          *(v4 + v8) = v37;
          v41 = *(v37 + 2);
          if (!v41)
          {
            goto LABEL_41;
          }

          if (v41 == 1)
          {
            goto LABEL_42;
          }

          if (v41 < 3)
          {
            goto LABEL_43;
          }

          if (v41 == 3)
          {
            goto LABEL_44;
          }

          v52 = v39;
          v55 = v38;
          v42 = *(v37 + 4);
          v43 = *(v37 + 5);
          v44 = *(v37 + 7);
          v45 = *(v37 + 8);
          v46 = *(v37 + 10);
          v47 = *(v37 + 11);
          v48 = *(v37 + 13);
          v49 = *(v37 + 14);
          if (sub_257C39DEC(v48, v49, v46, v47, v42, v43, v44, v45) & 1) != 0 || (sub_257C39DEC(v46, v47, v44, v45, v48, v49, v42, v43))
          {
            if (v36 >= v41)
            {
              goto LABEL_46;
            }

            *(v40 + 4) = v55;
            *(v40 + 5) = v52;
            *(v4 + v8) = v37;
          }

          if (v36 == 3)
          {
            sub_257DC3D9C();
            sub_257DC45FC();

            return;
          }

          ++v36;
          v35 += 24;
          if (v36 >= *(v13 + 2))
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_39:
        __break(1u);
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      CGSizeMake();
      v30 = v29;
      v32 = v31;
      v33 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
      *&transform.a = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
      *&transform.c = v33;
      *&transform.tx = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
      CGAffineTransformDecompose(&v56, &transform);
      v34 = v56.scale.width;
      if (v56.scale.height < v56.scale.width)
      {
        v34 = v56.scale.height;
      }

      sub_257DC2CE0(0, v34, v30, v32);
    }
  }

  else
  {
    [*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) convertPoint:*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) fromLayer:{a1, a2, a3, a4}];
    sub_257C38BD4(*(v4 + v5), v6, v7);
    sub_257DC3D9C();

    sub_257DC45FC();
  }
}

double sub_257DC1A98()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D10, &qword_257EEB8D0);
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v2, v3, v4, v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9598, &unk_257EE9B90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v20 - v14;
  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10, &qword_257EEB900);
  sub_257ECDD30();
  swift_endAccess();

  *(swift_allocObject() + 16) = v0;
  v16 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_27F8F9D60, &qword_27F8F9598, &unk_257EE9B90, MEMORY[0x277CBCEC8]);
  v17 = v0;
  sub_257ECDE50();

  (*(v9 + 8))(v15, v8);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0, &qword_257EE9BA0);
  sub_257ECDD30();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_27F8F9D50, &qword_27F8F9D10, &qword_257EEB8D0, v16);
  v18 = v20;
  sub_257ECDE50();

  (*(v1 + 8))(v7, v18);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return result;
}

double sub_257DC1E38(uint64_t a1, void *a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  *&result = MEMORY[0x28223BE20](v11, v13, v14, v15, v16).n128_u64[0];
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) & 1) == 0)
  {
    v27 = v17;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v26 = sub_257ECFD30();
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    aBlock[4] = sub_257DC6050;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_186;
    v22 = _Block_copy(aBlock);
    v23 = a2;
    sub_257ECF150();
    v28 = MEMORY[0x277D84F90];
    sub_257DC6058(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v26;
    MEMORY[0x259C72880](0, v20, v10, v22);
    _Block_release(v22);

    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v20, v27);
  }

  return result;
}

void sub_257DC2134()
{
  memset(v0, 0, sizeof(v0));
  sub_257DC422C(v0);
  sub_257DBF744();
  sub_257DC0948();
}

double sub_257DC2174(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v28 = sub_257ECFD30();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    aBlock[4] = sub_257DC602C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_180;
    v22 = _Block_copy(aBlock);
    v27 = v10;
    v23 = v22;
    v26 = v20;
    sub_257ECF150();
    v29 = MEMORY[0x277D84F90];
    sub_257DC6058(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v28;
    MEMORY[0x259C72880](0, v17, v9, v23);
    _Block_release(v23);

    (*(v3 + 8))(v9, v2);
    (*(v11 + 8))(v17, v27);
  }

  return result;
}

void sub_257DC2494()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer);
    sub_257ECC3F0();
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16);
    *&transform.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
    *&transform.c = v6;
    *&transform.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32);
    CGAffineTransformDecompose(&v38, &transform);
    dx = v38.translation.dx;
    dy = v38.translation.dy;
    v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
    *&transform.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
    *&transform.c = v9;
    *&transform.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
    CGAffineTransformDecompose(&v38, &transform);
    v10.n128_u64[0] = v3;
    sub_257DC484C(v10, v5);
    a = 0.0;
    if ((v11 < 0.0 || ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v11 - 1) > 0xFFFFFFFFFFFFELL)
    {
      b = 0.0;
    }

    else
    {
      v17 = (v12 < 0.0 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v12 - 1) > 0xFFFFFFFFFFFFELL;
      b = 0.0;
      if (!v17)
      {
        a = dx / v11;
        b = dy / v12;
      }
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD60();

    a = transform.a;
    b = transform.b;
  }

  if ((*&a & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&b & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v19 = sub_257DC38BC();
    v20 = 0.0;
    v21 = 0;
    v22 = 0.0;
    if (v19)
    {
      v23 = v19;
      [v19 bounds];
      v21 = v24;
      v22 = v25;
    }

    v26 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
    *&transform.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
    *&transform.c = v26;
    *&transform.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
    CGAffineTransformDecompose(&v38, &transform);
    v27.n128_u64[0] = v21;
    sub_257DC484C(v27, v22);
    if ((v28 < 0.0 || ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v28 - 1) > 0xFFFFFFFFFFFFELL)
    {
      v34 = 0.0;
    }

    else
    {
      v33 = (v29 < 0.0 || ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v29 - 1) > 0xFFFFFFFFFFFFELL;
      v34 = 0.0;
      if (!v33)
      {
        v20 = a * v28;
        v34 = b * v29;
      }
    }

    CGAffineTransformMakeTranslation(&transform, v20, v34);
    v35 = *&transform.c;
    v36 = *&transform.tx;
    v37 = (v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
    *v37 = *&transform.a;
    v37[1] = v35;
    v37[2] = v36;
    sub_257DC3134();
  }
}

void sub_257DC2798()
{
  v1 = sub_257ECF120();
  v41 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_257ECF190();
  v8 = *(v40 - 8);
  *&v13 = MEMORY[0x28223BE20](v40, v9, v10, v11, v12).n128_u64[0];
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer] bounds];
  v17 = v16;
  v19 = v18;
  v20 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  *&transform.c = v20;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32];
  CGAffineTransformDecompose(&v42, &transform);
  dx = v42.translation.dx;
  dy = v42.translation.dy;
  v23 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  *&transform.c = v23;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32];
  CGAffineTransformDecompose(&v42, &transform);
  v24.n128_u64[0] = v17;
  sub_257DC484C(v24, v19);
  v27 = dy / v26;
  v29 = (v26 < 0.0 || ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v26 - 1) > 0xFFFFFFFFFFFFELL;
  if (v29)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = dx / v25;
  }

  if (v29)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v27;
  }

  v33 = (v25 < 0.0 || ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v25 - 1) > 0xFFFFFFFFFFFFELL;
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v30;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v31;
  }

  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v36 = sub_257ECFD30();
  v37 = swift_allocObject();
  *(v37 + 16) = v0;
  *(v37 + 24) = v34;
  *(v37 + 32) = v35;
  *&transform.tx = sub_257DC6010;
  *&transform.ty = v37;
  *&transform.a = MEMORY[0x277D85DD0];
  *&transform.b = 1107296256;
  *&transform.c = sub_257D231C0;
  *&transform.d = &block_descriptor_156;
  v38 = _Block_copy(&transform);
  v39 = v0;
  sub_257ECF150();
  *&v42.scale.width = MEMORY[0x277D84F90];
  sub_257DC6058(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v15, v7, v38);
  _Block_release(v38);

  (*(v41 + 8))(v7, v1);
  (*(v8 + 8))(v15, v40);
}

void sub_257DC2B98(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges;
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 1;
  v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
  *&transform.a = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
  *&transform.c = v7;
  *&transform.tx = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
  CGAffineTransformDecompose(&v10, &transform);
  width = v10.scale.width;
  if (v10.scale.height < v10.scale.width)
  {
    width = v10.scale.height;
  }

  v9 = (width + -0.25) / 14.75;
  swift_getKeyPath();
  swift_getKeyPath();
  transform.a = v9;
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  transform.a = a2;
  transform.b = a3;
  sub_257ECC3F0();
  sub_257ECDD70();
  *(a1 + v6) = 0;
}

void sub_257DC2CE0(char a1, double a2, CGFloat a3, CGFloat a4)
{
  LOBYTE(v5) = a1;
  v38 = *MEMORY[0x277D85DE8];
  v6 = 0.25;
  if (a2 <= 0.25)
  {
    v7 = 0.25;
    if (a2 < 0.25)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = a2;
  if (a2 >= 0.25)
  {
    v8 = a2 > 15.0 || a2 < 0.25;
    v6 = a2;
    v7 = 15.0;
    if (!v8)
    {
LABEL_10:
      v9 = (v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
      v10 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16);
      *&v37.a = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
      *&v37.c = v10;
      *&v37.tx = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32);
      CGAffineTransformTranslate(&v36, &v37, a3, a4);
      v11 = *&v36.c;
      v12 = *&v36.tx;
      *v9 = *&v36.a;
      v9[1] = v11;
      v9[2] = v12;
      v7 = v6;
    }
  }

LABEL_11:
  CGAffineTransformMakeScale(&v37, v7, v7);
  v13 = *&v37.c;
  v14 = *&v37.tx;
  v15 = (v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
  *v15 = *&v37.a;
  v15[1] = v13;
  v15[2] = v14;
  v16 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers);
  if (v16 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v34 = v5;
    v35 = v4;
    v18 = 0;
    v19 = 1.0 / v7;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x259C72E20](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v20 = *(v16 + 8 * v18 + 32);
      }

      v21 = v20;
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale;
      *&v20[OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale] = v7;
      [v20 setLineWidth_];
      v39.origin.x = -12.5;
      v39.origin.y = -12.5;
      v39.size.width = 25.0;
      v39.size.height = 25.0;
      v5 = CGPathCreateWithEllipseInRect(v39, 0);
      CGAffineTransformMakeScale(&v36, 1.0 / *&v21[v22], 1.0 / *&v21[v22]);
      v37 = v36;
      v23 = objc_opt_self();
      [v23 begin];
      [v23 setDisableActions_];
      v24 = MEMORY[0x259C73760](v5, &v37);
      [v21 setPath_];

      [v23 commit];
      ++v18;
      if (v4 == i)
      {
        v4 = v35;
        LOBYTE(v5) = v34;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v19 = 1.0 / v7;
LABEL_23:

  v25 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer) setLineWidth_];
  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) setLineWidth_];
  v26 = *(v4 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_257ED9BE0;
  v28 = 4.0 / v7;
  v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v30 = v26;
  *(v27 + 32) = [v29 initWithDouble_];
  *(v27 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  v31 = sub_257ECF7F0();

  [v30 setLineDashPattern_];

  v32 = objc_opt_self();
  [v32 begin];
  if (v5)
  {
    v33 = sub_257ECCF50();
    [v32 setValue:v33 forKey:*MEMORY[0x277CDA908]];
  }

  else
  {
    [v32 setDisableActions_];
  }

  sub_257DC3134();
  [v32 commit];
  sub_257DC2798();
}

void sub_257DC3134()
{
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) & 1) == 0)
  {
    v1 = objc_opt_self();
    [v1 begin];
    [v1 setDisableActions_];
    v2 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
    [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
    [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
    v26.origin.x = v12;
    v26.origin.y = v13;
    v26.size.width = v14;
    v26.size.height = v15;
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    if (!CGRectEqualToRect(v25, v26))
    {
      v16 = *(v0 + v2);
      v17 = *(v0 + v11);
      v18 = v16;
      [v17 bounds];
      [v18 setBounds_];
    }

    [v1 commit];
    sub_257DC32D8();
    v19 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer);
    v20 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
    *&t1.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
    *&t1.c = v20;
    *&t1.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
    v21 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16);
    *&t2.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
    *&t2.c = v21;
    *&t2.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32);
    CGAffineTransformConcat(&v22, &t1, &t2);
    t1 = v22;
    [v19 setAffineTransform_];
  }
}

void sub_257DC32D8()
{
  v1 = &v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  *&transform.c = v2;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32];
  CGAffineTransformDecompose(&v122, &transform);
  dx = v122.translation.dx;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v8 = &v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  v9 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  *&transform.c = v9;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32];
  CGAffineTransformDecompose(&v122, &transform);
  if (v122.scale.height >= v122.scale.width)
  {
    width = v122.scale.width;
  }

  else
  {
    width = v122.scale.height;
  }

  v10.n128_u64[0] = v5;
  sub_257DC4B74(v10, v7, width);
  if (v12 >= dx)
  {
    v23 = *v1;
    v24 = *(v1 + 1);
    v25 = *(v1 + 2);
  }

  else
  {
    [v0 bounds];
    v14 = v13;
    v16 = v15;
    v17 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v17;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    if (v122.scale.height >= v122.scale.width)
    {
      height = v122.scale.width;
    }

    else
    {
      height = v122.scale.height;
    }

    v18.n128_u64[0] = v14;
    sub_257DC4B74(v18, v16, height);
    v21 = v20;
    v22 = *(v1 + 1);
    *&transform.a = *v1;
    *&transform.c = v22;
    *&transform.tx = *(v1 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    CGAffineTransformMakeTranslation(&transform, v21, v122.translation.dy);
    v23 = *&transform.a;
    v24 = *&transform.c;
    v25 = *&transform.tx;
    *v1 = *&transform.a;
    *(v1 + 1) = v24;
    *(v1 + 2) = v25;
  }

  *&transform.a = v23;
  *&transform.c = v24;
  *&transform.tx = v25;
  CGAffineTransformDecompose(&v122, &transform);
  dy = v122.translation.dy;
  [v0 bounds];
  v28 = v27;
  v30 = v29;
  v31 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v31;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v122, &transform);
  if (v122.scale.height >= v122.scale.width)
  {
    v33 = v122.scale.width;
  }

  else
  {
    v33 = v122.scale.height;
  }

  v32.n128_u64[0] = v28;
  sub_257DC4B74(v32, v30, v33);
  a = *v1;
  b = v1[1];
  c = v1[2];
  d = v1[3];
  v39 = v38 < dy;
  tx = v1[4];
  ty = v1[5];
  if (v39)
  {
    transform.a = *v1;
    transform.b = b;
    transform.c = c;
    transform.d = d;
    transform.tx = tx;
    transform.ty = ty;
    CGAffineTransformDecompose(&v122, &transform);
    v42 = v122.translation.dx;
    [v0 bounds];
    v44 = v43;
    v46 = v45;
    v47 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v47;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    if (v122.scale.height >= v122.scale.width)
    {
      v49 = v122.scale.width;
    }

    else
    {
      v49 = v122.scale.height;
    }

    v48.n128_u64[0] = v44;
    sub_257DC4B74(v48, v46, v49);
    CGAffineTransformMakeTranslation(&transform, v42, v50);
    a = transform.a;
    b = transform.b;
    c = transform.c;
    d = transform.d;
    tx = transform.tx;
    ty = transform.ty;
    *v1 = transform.a;
    v1[1] = b;
    v1[2] = c;
    v1[3] = d;
    v1[4] = tx;
    v1[5] = ty;
  }

  transform.a = a;
  transform.b = b;
  transform.c = c;
  transform.d = d;
  transform.tx = tx;
  transform.ty = ty;
  CGAffineTransformDecompose(&v122, &transform);
  v51 = v122.translation.dx;
  [v0 bounds];
  v53 = v52;
  v55 = v54;
  v56 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v56;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v122, &transform);
  if (v122.scale.height >= v122.scale.width)
  {
    v58 = v122.scale.width;
  }

  else
  {
    v58 = v122.scale.height;
  }

  v57.n128_u64[0] = v53;
  sub_257DC4B74(v57, v55, v58);
  [v0 bounds];
  v60 = v59;
  v62 = v61;
  v63 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v63;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v122, &transform);
  if (v122.scale.height >= v122.scale.width)
  {
    v65 = v122.scale.width;
  }

  else
  {
    v65 = v122.scale.height;
  }

  v64.n128_u64[0] = v60;
  sub_257DC4B74(v64, v62, v65);
  CGSizeMake();
  if (v51 >= v66)
  {
    v84 = *v1;
    v85 = *(v1 + 1);
    v86 = *(v1 + 2);
  }

  else
  {
    [v0 bounds];
    v68 = v67;
    v70 = v69;
    v71 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v71;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    if (v122.scale.height >= v122.scale.width)
    {
      v73 = v122.scale.width;
    }

    else
    {
      v73 = v122.scale.height;
    }

    v72.n128_u64[0] = v68;
    sub_257DC4B74(v72, v70, v73);
    [v0 bounds];
    v75 = v74;
    v77 = v76;
    v78 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v78;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    if (v122.scale.height >= v122.scale.width)
    {
      v80 = v122.scale.width;
    }

    else
    {
      v80 = v122.scale.height;
    }

    v79.n128_u64[0] = v75;
    sub_257DC4B74(v79, v77, v80);
    CGSizeMake();
    v82 = v81;
    v83 = *(v1 + 1);
    *&transform.a = *v1;
    *&transform.c = v83;
    *&transform.tx = *(v1 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    CGAffineTransformMakeTranslation(&transform, v82, v122.translation.dy);
    v84 = *&transform.a;
    v85 = *&transform.c;
    v86 = *&transform.tx;
    *v1 = *&transform.a;
    *(v1 + 1) = v85;
    *(v1 + 2) = v86;
  }

  *&transform.a = v84;
  *&transform.c = v85;
  *&transform.tx = v86;
  CGAffineTransformDecompose(&v122, &transform);
  v87 = v122.translation.dy;
  [v0 bounds];
  v89 = v88;
  v91 = v90;
  v92 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v92;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v122, &transform);
  if (v122.scale.height >= v122.scale.width)
  {
    v94 = v122.scale.width;
  }

  else
  {
    v94 = v122.scale.height;
  }

  v93.n128_u64[0] = v89;
  sub_257DC4B74(v93, v91, v94);
  [v0 bounds];
  v96 = v95;
  v98 = v97;
  v99 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v99;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v122, &transform);
  if (v122.scale.height >= v122.scale.width)
  {
    v101 = v122.scale.width;
  }

  else
  {
    v101 = v122.scale.height;
  }

  v100.n128_u64[0] = v96;
  sub_257DC4B74(v100, v98, v101);
  CGSizeMake();
  if (v87 < v102)
  {
    v103 = *(v1 + 1);
    *&transform.a = *v1;
    *&transform.c = v103;
    *&transform.tx = *(v1 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    v104 = v122.translation.dx;
    [v0 bounds];
    v106 = v105;
    v108 = v107;
    v109 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v109;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    if (v122.scale.height >= v122.scale.width)
    {
      v111 = v122.scale.width;
    }

    else
    {
      v111 = v122.scale.height;
    }

    v110.n128_u64[0] = v106;
    sub_257DC4B74(v110, v108, v111);
    [v0 bounds];
    v113 = v112;
    v115 = v114;
    v116 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v116;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v122, &transform);
    if (v122.scale.height >= v122.scale.width)
    {
      v118 = v122.scale.width;
    }

    else
    {
      v118 = v122.scale.height;
    }

    v117.n128_u64[0] = v113;
    sub_257DC4B74(v117, v115, v118);
    CGSizeMake();
    CGAffineTransformMakeTranslation(&transform, v104, v119);
    v120 = *&transform.c;
    v121 = *&transform.tx;
    *v1 = *&transform.a;
    *(v1 + 1) = v120;
    *(v1 + 2) = v121;
  }
}

void *sub_257DC38BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  v3 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
  v5 = *(v0 + v1);
  *(v0 + v1) = v4;

  if (v4)
  {
    [v4 setVideoGravity_];
  }

  v3 = *(v0 + v1);
  if (v3)
  {
    v6 = v3;
LABEL_6:
    v7 = v2;
  }

  return v3;
}

void *sub_257DC3950()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  v3 = v2;
  if (!v2)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;

    if (v6)
    {
      [v6 setVideoGravity_];
    }

    v3 = *(v0 + v1);
    v7 = v3;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_257DC39F0(double a1, double a2)
{
  v3 = v2;
  v41 = *MEMORY[0x277D85DE8];
  v31 = sub_257ECCF30();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v7, v8, v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F4668 != -1)
  {
LABEL_21:
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    [*(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) convertPoint:*(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) fromLayer:{a1, a2}];
  }

  else
  {
    CGSizeMake();
  }

  a2 = v13;
  a1 = v14;
  v15 = 0;
  v16 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  v30 = (v6 + 104);
  v29 = *MEMORY[0x277CBF258];
  v28 = (v6 + 8);
  while (1)
  {
    v6 = *(v3 + v16);
    if ((v6 & 0xC000000000000001) != 0)
    {

      v17 = MEMORY[0x259C72E20](v15, v6);
    }

    else
    {
      if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v17 = *(v6 + 8 * v15 + 32);
    }

    CGAffineTransformMakeScale(&v33, 3.0, 3.0);
    v34 = v33;
    [v17 frame];
    v19 = v18;
    [v17 frame];
    CGAffineTransformMakeTranslation(&v32, v19, v20);
    v33 = v32;
    v21 = [v17 path];
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x259C73760](v21, &v34);

      if (v23)
      {
        v24 = MEMORY[0x259C73760](v23, &v33);

        if (v24)
        {
          break;
        }
      }
    }

    if (v15 == 3)
    {
      return -1;
    }

LABEL_16:
    ++v15;
  }

  v25 = v31;
  (*v30)(v12, v29, v31);
  v36 = 0;
  v37 = 0;
  v35 = 0x3FF0000000000000;
  v38 = 0x3FF0000000000000;
  v39 = 0;
  v40 = 0;
  v26 = sub_257ED0070();

  (*v28)(v12, v25);
  if (v26)
  {
    return v15;
  }

  if (v15 != 3)
  {
    goto LABEL_16;
  }

  return -1;
}

void sub_257DC3D9C()
{
  v1 = sub_257ECF120();
  v29 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_257ECF190();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v9, v10, v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v27 = sub_257ECFD30();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_257DC5D04;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_48;
  v16 = _Block_copy(aBlock);
  v17 = v0;
  sub_257ECF150();
  v30 = MEMORY[0x277D84F90];
  sub_257DC6058(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  v18 = v27;
  MEMORY[0x259C72880](0, v14, v7, v16);
  _Block_release(v16);

  (*(v29 + 8))(v7, v1);
  (*(v8 + 8))(v14, v28);

  v19 = objc_opt_self();
  v20 = 0;
  v21 = 0;
  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  v23 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
  while (1)
  {
    [v19 begin];
    [v19 setDisableActions_];
    v24 = *&v17[v22];
    if ((v24 & 0xC000000000000001) != 0)
    {

      v25 = MEMORY[0x259C72E20](v21, v24);
    }

    else
    {
      if (v21 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v25 = *(v24 + 8 * v21 + 32);
    }

    v26 = *&v17[v23];
    if (v21 >= *(v26 + 16))
    {
      break;
    }

    [v25 setPosition_];

    [v19 commit];
    ++v21;
    v20 += 24;
    if (v21 == 4)
    {
      sub_257DC4C74();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

double sub_257DC418C(uint64_t a1)
{
  v1 = sub_257ECC3F0();
  sub_257C38D30(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD70();
  return result;
}

id sub_257DC422C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v6 = 0.0;
  if (v52 == 1)
  {
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) opacity];
    v7 = *&v6;
    LODWORD(v6) = 1.0;
    if (v7 < 0.5)
    {
      v47 = v5;
      v48 = v4;
      v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer);
      [v8 bounds];
      v9 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
      [v8 convertRect:*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer) toLayer:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [*(v2 + v9) path];
      if (v18)
      {
        v19 = v18;
        BoundingBox = CGPathGetBoundingBox(v18);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
      }

      else
      {
        x = 0.0;
        y = 0.0;
        width = 0.0;
        height = 0.0;
      }

      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      v66.origin.x = v11;
      v66.origin.y = v13;
      v66.size.width = v15;
      v66.size.height = v17;
      v55 = CGRectIntersection(v54, v66);
      v24 = v55.origin.x;
      v25 = v55.origin.y;
      v26 = v55.size.width;
      v27 = v55.size.height;
      v28 = CGRectGetWidth(v55) / 5.0;
      v56.origin.x = v24;
      v56.origin.y = v25;
      v56.size.width = v26;
      v56.size.height = v27;
      v29 = CGRectGetHeight(v56) / 5.0;
      v57.origin.x = v24;
      v57.origin.y = v25;
      v57.size.width = v26;
      v57.size.height = v27;
      v58 = CGRectInset(v57, v28, v29);
      v30 = v58.origin.x;
      v31 = v58.origin.y;
      v32 = v58.size.width;
      v33 = v58.size.height;
      MinX = CGRectGetMinX(v58);
      v59.origin.x = v30;
      v59.origin.y = v31;
      v59.size.width = v32;
      v59.size.height = v33;
      MinY = CGRectGetMinY(v59);
      v60.origin.x = v30;
      v60.origin.y = v31;
      v60.size.width = v32;
      v60.size.height = v33;
      v49 = CGRectGetMinX(v60);
      v61.origin.x = v30;
      v61.origin.y = v31;
      v61.size.width = v32;
      v61.size.height = v33;
      MaxY = CGRectGetMaxY(v61);
      v62.origin.x = v30;
      v62.origin.y = v31;
      v62.size.width = v32;
      v62.size.height = v33;
      MaxX = CGRectGetMaxX(v62);
      v63.origin.x = v30;
      v63.origin.y = v31;
      v63.size.width = v32;
      v63.size.height = v33;
      v36 = CGRectGetMinY(v63);
      v64.origin.x = v30;
      v64.origin.y = v31;
      v64.size.width = v32;
      v64.size.height = v33;
      v37 = CGRectGetMaxX(v64);
      v65.origin.x = v30;
      v65.origin.y = v31;
      v65.size.width = v32;
      v65.size.height = v33;
      v38 = CGRectGetMaxY(v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_257EDBE50;
      *(v39 + 32) = MinX;
      *(v39 + 40) = MinY;
      *(v39 + 48) = 0;
      *(v39 + 56) = v49;
      *(v39 + 64) = MaxY;
      *(v39 + 72) = 1;
      *(v39 + 80) = MaxX;
      *(v39 + 88) = v36;
      *(v39 + 96) = 2;
      *(v39 + 104) = v37;
      *(v39 + 112) = v38;
      *(v39 + 120) = 3;
      sub_257C38808(v39, v40);
      v42 = v41;

      if (v3)
      {

        v42 = v3;
        v44 = v47;
        v43 = v48;
      }

      else
      {
        v43 = 0x4060E00000000000;
        v44 = 0x4046800000000000;
      }

      v45 = (v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
      *v45 = v42;
      v45[1] = v44;
      v45[2] = v43;

      sub_257DC3D9C();
      sub_257DC45FC();
      LODWORD(v6) = 1.0;
    }
  }

  return [*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) setOpacity_];
}

void sub_257DC45FC()
{
  v1 = v0;
  v2 = sub_257ECCF30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
  v22 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 8);
  v10 = sub_257C389F8();
  Mutable = CGPathCreateMutable();
  if (*(v10 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v12 = Mutable;
    v21 = 0x3FF0000000000000;
    v22 = 0uLL;
    v23 = 0x3FF0000000000000;
    v24 = 0;
    v25 = 0;
    sub_257ECFC50();
    v13 = *(v10 + 16);
    if (v13)
    {
      v14 = v10 + 40;
      do
      {
        sub_257ECFC60();
        v14 += 16;
        --v13;
      }

      while (v13);
    }

    v15 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath;
    v16 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath) = v12;
    v17 = v12;

    v26.origin.x = -1048576.0;
    v26.size.width = 2097152.0;
    v26.origin.y = -1048576.0;
    v26.size.height = 2097152.0;
    v18 = CGPathCreateWithRect(v26, 0);
    (*(v3 + 104))(v9, *MEMORY[0x277CBF258], v2);
    v19 = sub_257ED0060();
    (*(v3 + 8))(v9, v2);
    v20 = objc_opt_self();
    [v20 begin];
    [v20 setDisableActions_];
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) setPath_];
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer) setPath_];
    [v20 commit];
  }
}

void sub_257DC484C(__n128 a1, double a2)
{
  v4 = a1.n128_u64[0];
  v5 = type metadata accessor for CapturedImage(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9590, &qword_257EE9A50);
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v26 = &v36 - v25;
  if ((v4 >= 0 && ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v4 - 1) <= 0xFFFFFFFFFFFFELL) && (a2 >= 0.0 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&a2 - 1) <= 0xFFFFFFFFFFFFELL))
  {
    v31 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage;
    sub_257DC5B6C(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage, &v36 - v25);
    v32 = *(v6 + 48);
    v33 = v32(v26, 1, v5);
    sub_257DC5BDC(v26);
    if (v33 != 1)
    {
      sub_257DC5B6C(v2 + v31, v19);
      if (v32(v19, 1, v5) == 1)
      {
        sub_257DC5BDC(v19);
      }

      else
      {
        sub_257DC5C44(v19, v12, v34);
        sub_257DC5CA8(v12, v35);
      }
    }
  }
}

void sub_257DC4B74(__n128 a1, double a2, double a3)
{
  sub_257DC484C(a1, a2);
  v6 = v5;
  v7 = *&v5;
  v8 = *&v5 - 1;
  v9 = ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
  v10 = 0;
  if ((v7 >= 0 && v9 <= 0x3FE || v8 <= 0xFFFFFFFFFFFFELL) && (v4 >= 0.0 && ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v4 - 1) <= 0xFFFFFFFFFFFFELL))
  {
    v15 = v6 * a3;
    v16 = v4 * a3;
    v17 = 0;
    v18 = v15;
    v19 = v16;
    CGRectGetWidth(*&v10);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v15;
    v20.size.height = v16;
    CGRectGetHeight(v20);
    CGSizeMake();
  }
}

void sub_257DC4C74()
{
  v51 = MEMORY[0x277D84F90];
  v48 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView;
  v1 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    sub_257ECF500();
    v7 = sub_257ECF4C0();
  }

  [v1 setAccessibilityLabel_];

  v8 = [v3 bundleForClass_];
  v9 = sub_257ECF4C0();
  v10 = 0x617A696C61636F4CLL;
  v11 = sub_257ECF4C0();
  v12 = [v8 localizedStringForKey:v9 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  [v1 setAccessibilityHint_];

  v47 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
  if (*(*&v49[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions] + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    CGRectMake();
    [v1 setAccessibilityFrame_];
    v10 = v1;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_7;
    }
  }

  sub_257ECF830();
LABEL_7:
  v46 = v10;
  sub_257ECF860();
  v13 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  v14 = [v3 bundleForClass_];
  v15 = sub_257ECF4C0();
  v16 = sub_257ECF4C0();
  v17 = ObjCClassFromMetadata;
  v18 = [v14 localizedStringForKey:v15 value:0 table:v16];

  if (!v18)
  {
    sub_257ECF500();
    v18 = sub_257ECF4C0();
  }

  [v13 setAccessibilityLabel_];

  v19 = [v3 bundleForClass_];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  if (!v22)
  {
    sub_257ECF500();
    v22 = sub_257ECF4C0();
  }

  [v13 setAccessibilityHint_];

  if (*(*&v49[v47] + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    CGRectMake();
    [v13 setAccessibilityFrame_];
    v17 = v13;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_13;
    }
  }

  sub_257ECF830();
LABEL_13:
  v45 = v17;
  sub_257ECF860();
  v23 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  v24 = [v3 bundleForClass_];
  v25 = sub_257ECF4C0();
  v26 = 0xEB00000000656C62;
  v27 = sub_257ECF4C0();
  v28 = [v24 localizedStringForKey:v25 value:0 table:v27];

  if (!v28)
  {
    sub_257ECF500();
    v28 = sub_257ECF4C0();
  }

  [v23 setAccessibilityLabel_];

  v29 = [v3 bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  if (!v32)
  {
    sub_257ECF500();
    v32 = sub_257ECF4C0();
  }

  [v23 setAccessibilityHint_];

  if (*(*&v49[v47] + 16))
  {
    CGRectMake();
    [v23 setAccessibilityFrame_];
    v26 = v23;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  sub_257ECF830();
LABEL_19:
  v43 = v26;
  sub_257ECF860();
  v33 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  v34 = [v3 bundleForClass_];
  v35 = sub_257ECF4C0();
  v36 = sub_257ECF4C0();
  v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

  if (!v37)
  {
    sub_257ECF500();
    v37 = sub_257ECF4C0();
  }

  [v33 setAccessibilityLabel_];

  v38 = [v3 bundleForClass_];
  v39 = sub_257ECF4C0();
  v40 = sub_257ECF4C0();
  v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

  if (!v41)
  {
    sub_257ECF500();
    v41 = sub_257ECF4C0();
  }

  [v33 setAccessibilityHint_];

  if (*(*&v49[v47] + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    CGRectMake();
    [v33 setAccessibilityFrame_];
    v41 = v33;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }
  }

  sub_257ECF830();
LABEL_25:
  sub_257ECF860();
  v42 = *&v49[v48];
  sub_257EB73A8(v51);

  v50 = sub_257ECF7F0();

  [v42 setAccessibilityElements_];
}