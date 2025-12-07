uint64_t sub_23DA89544()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v122 = *(v1 - 8);
  v123 = v1;
  MEMORY[0x28223BE20](v1);
  v121 = &v97 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v119 = *(v3 - 8);
  v120 = v3;
  MEMORY[0x28223BE20](v3);
  v117 = &v97 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v114 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v112 = &v97 - v5;
  *&v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v97 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v97 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v110 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v125 = &v97 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v97 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v97 - v21;
  v109 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB89790);
  v108 = v23;
  v126 = v0;
  v107 = sub_23DA9B4E0(0xD00000000000001ELL, 0x800000023DB897B0, &unk_284FE5948);
  v106 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v127) = 0;
  sub_23DB6EECC();
  v27 = *(v9 + 32);
  v27(v25 + v26, v11, v8);
  v115 = v13;
  v28 = v13 + 16;
  v29 = *(v13 + 16);
  v111 = v22;
  v29(v19, v22, v12);
  v113 = v19;
  v116 = v12;
  v102 = v28;
  v101 = v29;
  v29(v125, v19, v12);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v127) = 0;
  sub_23DB6EECC();
  v124 = v8;
  v27(v25 + v30, v11, v8);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v127 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v98;
  sub_23DB6EECC();
  (*(v99 + 32))(v25 + v33, v34, v100);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v127 = 0;
  v36 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v25 + v35, v36, v105);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v127) = 0;
  sub_23DB6EECC();
  v27(v25 + v37, v11, v124);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v105 = xmmword_23DB74320;
  v127 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v112;
  sub_23DB6EECC();
  v40 = *(v114 + 32);
  v41 = v118;
  v40(v25 + v38, v39, v118);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v127 = v105;
  sub_23DB6EECC();
  v40(v25 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v127) = 0;
  sub_23DB6EECC();
  v27(v25 + v43, v11, v124);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  v45 = v117;
  sub_23DB6EECC();
  (*(v119 + 32))(v25 + v44, v45, v120);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v127 = 0uLL;
  sub_23DB6EECC();
  v40(v25 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v127 = nullsub_1;
  *(&v127 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v121;
  sub_23DB6EECC();
  (*(v122 + 32))(v25 + v47, v48, v123);
  v49 = v110;
  v50 = v125;
  v51 = v116;
  v101(v110, v125, v116);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v109, v108, v107, v106, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v115 + 8);
  v53(v50, v51);
  v53(v113, v51);
  v53(v111, v51);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v127) = 0;
  v123 = v52;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v54 = (type metadata accessor for CommandToPractice(0) - 8);
  v55 = *(*v54 + 72);
  v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v124 = 2 * v55;
  v57 = swift_allocObject();
  v125 = v57;
  *(v57 + 16) = xmmword_23DB76A80;
  v58 = v57 + v56;
  v59 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB897D0, &unk_284FE5970);
  v119 = v60;
  *v58 = 0;
  *(v58 + 8) = 0xE000000000000000;
  *(v58 + 17) = 186;
  *(v58 + 19) = 0;
  sub_23DB6EA7C();
  v61 = v54[12];
  *(v58 + v61) = 1;
  v62 = v54[13];
  *(v58 + v62) = 1;
  v63 = v54[14];
  v64 = type metadata accessor for KeyboardKey(0);
  v65 = *(v64 - 8);
  v120 = *(v65 + 56);
  v121 = v64;
  v66 = v65 + 56;
  v120(v58 + v63, 1, 1, v64);
  v122 = v66;
  v67 = (v58 + v54[15]);
  *v67 = 0;
  v67[1] = 0;
  v68 = v119;
  *v58 = v59;
  *(v58 + 8) = v68;

  *(v58 + 16) = 35;
  *(v58 + 19) = 0;
  *v67 = 0;
  v67[1] = 0;

  *(v58 + v61) = 1;
  *(v58 + v62) = 1;
  v69 = v58 + v55;
  v70 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89800, &unk_284FE5998);
  v72 = v71;
  *v69 = 0;
  *(v69 + 8) = 0xE000000000000000;
  *(v69 + 17) = 186;
  *(v69 + 19) = 0;
  sub_23DB6EA7C();
  v73 = v54[12];
  *(v69 + v73) = 1;
  v74 = v54[13];
  *(v69 + v74) = 1;
  v75 = v64;
  v76 = v120;
  v120(v69 + v54[14], 1, 1, v75);
  v77 = (v69 + v54[15]);
  *v77 = 0;
  v77[1] = 0;
  *v69 = v70;
  *(v69 + 8) = v72;

  *(v69 + 16) = 28;
  *(v69 + 19) = 0;
  *v77 = 0;
  v77[1] = 0;

  *(v69 + v73) = 1;
  *(v69 + v74) = 1;
  v78 = v58 + v124;
  v79 = v126;
  v80 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89830, &unk_284FE59C0);
  v82 = v81;
  *v78 = 0;
  *(v78 + 8) = 0xE000000000000000;
  *(v78 + 17) = 186;
  *(v78 + 19) = 0;
  sub_23DB6EA7C();
  v83 = v54[12];
  *(v78 + v83) = 1;
  v84 = v54[13];
  *(v78 + v84) = 1;
  v76(v78 + v54[14], 1, 1, v121);
  v85 = (v78 + v54[15]);
  *v85 = 0;
  v85[1] = 0;
  *v78 = v80;
  *(v78 + 8) = v82;

  *(v78 + 16) = 40;
  *(v78 + 19) = 0;
  *v85 = 0;
  v85[1] = 0;

  *(v78 + v83) = 1;
  *(v78 + v84) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v86 = v123;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v87 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v86 + v87) = v125;

  v88 = swift_allocObject();
  swift_weakInit();
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v79;
  v90 = (v86 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v90 = sub_23DA9DF94;
  v90[1] = v89;
  swift_retain_n();

  v91 = swift_allocObject();
  swift_weakInit();

  v92 = swift_allocObject();
  *(v92 + 16) = v91;
  *(v92 + 24) = v79;
  v93 = (v86 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v94 = *v93;
  v95 = v93[1];
  *v93 = sub_23DA9E6D0;
  v93[1] = v92;

  sub_23DA18BA0(v94, v95);

  return v86;
}

uint64_t sub_23DA8A41C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  MEMORY[0x28223BE20](v1 - 8);
  v140 = &v136 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v141 = (&v136 - v4);
  v173 = sub_23DB6EAFC();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v170 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_23DB6EB1C();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B0, &qword_23DB7A3E8);
  MEMORY[0x28223BE20](v7 - 8);
  v171 = &v136 - v8;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v166 = &v136 - v9;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v161 = &v136 - v10;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v158 = &v136 - v11;
  *&v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v149 = &v136 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v136 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v14 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v16 = &v136 - v15;
  v17 = sub_23DB6EA8C();
  v177 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v156 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v176 = &v136 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v136 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v136 - v25;
  v155 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB89640);
  v154 = v27;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v136 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  *(inited + 32) = 10276;
  sub_23DA7194C(0, (inited + 34));
  v139 = "Bar.practice.title";
  v137 = 0xD000000000000021;
  v178 = v0;
  v151 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB89670, inited);
  v150 = v29;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v180) = 0;
  sub_23DB6EECC();
  v33 = *(v14 + 32);
  v32 = v14 + 32;
  v34 = v143;
  v33(v30 + v31, v16, v143);
  v35 = v177 + 16;
  v36 = *(v177 + 16);
  v157 = v26;
  v36(v23, v26, v17);
  v159 = v23;
  v160 = v17;
  v145 = v35;
  v144 = v36;
  v36(v176, v23, v17);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v180) = 0;
  sub_23DB6EECC();
  v38 = v34;
  v39 = v33;
  v33(v30 + v37, v16, v34);
  v40 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v41 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v41 = MEMORY[0x277D84FA0];
  }

  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v41;
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v180 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v43 = v40;
  v44 = v146;
  sub_23DB6EECC();
  (*(v147 + 32))(v30 + v42, v44, v148);
  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v43;
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v180 = 0;
  v46 = v149;
  sub_23DB6EECC();
  (*(v152 + 32))(v30 + v45, v46, v153);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v180) = 0;
  sub_23DB6EECC();
  v142 = v32;
  v39(v30 + v47, v16, v38);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v153 = xmmword_23DB74320;
  v180 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v49 = v158;
  sub_23DB6EECC();
  v50 = *(v162 + 32);
  v51 = v163;
  v50(v30 + v48, v49, v163);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v180 = v153;
  sub_23DB6EECC();
  v50(v30 + v52, v49, v51);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v180) = 0;
  sub_23DB6EECC();
  v39(v30 + v53, v16, v38);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v180 = 0;
  *(&v180 + 1) = 0xE000000000000000;
  v55 = v161;
  sub_23DB6EECC();
  (*(v164 + 32))(v30 + v54, v55, v165);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v180 = 0uLL;
  sub_23DB6EECC();
  v50(v30 + v56, v49, v51);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v180 = nullsub_1;
  *(&v180 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v58 = v166;
  sub_23DB6EECC();
  v174[4](v30 + v57, v58, v175);
  v59 = v156;
  v60 = v176;
  v61 = v160;
  v144(v156, v176, v160);
  v165 = Page.init(id:title:text:subPages:iconName:)(v59, v155, v154, v151, v150, MEMORY[0x277D84F90], 0, 0);
  v62 = *(v177 + 8);
  v62(v60, v61);
  v62(v159, v61);
  v62(v157, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v63 = (type metadata accessor for CommandToPractice(0) - 8);
  v64 = *v63;
  v175 = *(*v63 + 72);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v164 = 4 * v175;
  v66 = swift_allocObject();
  v166 = v66;
  *(v66 + 16) = xmmword_23DB7A0D0;
  v67 = v66 + v65;

  v68 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB896A0, &unk_284FE59E8);
  v70 = v69;
  *v67 = 0;
  *(v67 + 8) = 0xE000000000000000;
  *(v67 + 17) = 186;
  *(v67 + 19) = 0;
  sub_23DB6EA7C();
  v71 = v63[12];
  *(v67 + v71) = 1;
  v72 = v63[13];
  *(v67 + v72) = 1;
  v73 = v63[14];
  v177 = type metadata accessor for KeyboardKey(0);
  v74 = *(v177 - 8);
  v75 = *(v74 + 56);
  v176 = (v74 + 56);
  (v75)(v67 + v73, 1, 1, v177);
  v174 = v75;
  v76 = (v67 + v63[15]);
  *v76 = 0;
  v76[1] = 0;
  *v67 = v68;
  *(v67 + 8) = v70;

  *(v67 + 16) = 36;
  *(v67 + 19) = 1;
  *v76 = 0;
  v76[1] = 0;

  *(v67 + v71) = 1;
  *(v67 + v72) = 1;
  v77 = v175;
  v78 = v67 + v175;
  v163 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB896D0, &unk_284FE5A10);
  v80 = v79;
  *v78 = 0;
  *(v78 + 8) = 0xE000000000000000;
  *(v78 + 17) = 186;
  *(v78 + 19) = 0;
  sub_23DB6EA7C();
  v81 = v63[12];
  *(v78 + v81) = 1;
  v82 = v63[13];
  *(v78 + v82) = 1;
  v83 = v177;
  (v75)(v78 + v63[14], 1, 1, v177);
  v84 = (v78 + v63[15]);
  *v84 = 0;
  v84[1] = 0;
  *v78 = v163;
  *(v78 + 8) = v80;

  *(v78 + 16) = 28;
  *(v78 + 19) = 0;
  *v84 = 0;
  v84[1] = 0;

  *(v78 + v81) = 1;
  *(v78 + v82) = 1;
  v163 = 2 * v77;
  v85 = v67 + 2 * v77;
  v86 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89700, &unk_284FE5A38);
  v88 = v87;
  *v85 = 0;
  *(v85 + 8) = 0xE000000000000000;
  *(v85 + 17) = 186;
  *(v85 + 19) = 0;
  sub_23DB6EA7C();
  v89 = v63[12];
  *(v85 + v89) = 1;
  v90 = v63[13];
  *(v85 + v90) = 1;
  v91 = v83;
  v92 = v174;
  (v174)(v85 + v63[14], 1, 1, v91);
  v93 = (v85 + v63[15]);
  *v93 = 0;
  v93[1] = 0;
  *v85 = v86;
  *(v85 + 8) = v88;

  *(v85 + 16) = 32;
  *(v85 + 19) = 0;
  *v93 = 0;
  v93[1] = 0;

  *(v85 + v89) = 1;
  *(v85 + v90) = 1;
  v94 = v67 + v163 + v175;
  v95 = v178;
  v96 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89730, &unk_284FE5A60);
  v175 = v97;
  *v94 = 0;
  *(v94 + 8) = 0xE000000000000000;
  *(v94 + 17) = 186;
  *(v94 + 19) = 0;
  sub_23DB6EA7C();
  v98 = v63[12];
  *(v94 + v98) = 1;
  v99 = v63[13];
  *(v94 + v99) = 1;
  (v92)(v94 + v63[14], 1, 1, v177);
  v100 = (v94 + v63[15]);
  *v100 = 0;
  v100[1] = 0;
  v101 = v175;
  *v94 = v96;
  *(v94 + 8) = v101;

  *(v94 + 16) = 30;
  *(v94 + 19) = 0;
  *v100 = 0;
  v100[1] = 0;

  *(v94 + v98) = 1;
  *(v94 + v99) = 1;
  v102 = v67 + v164;
  v103 = v95;
  v104 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89760, &unk_284FE5A88);
  v106 = v105;
  *v102 = 0;
  *(v102 + 8) = 0xE000000000000000;
  *(v102 + 17) = 186;
  *(v102 + 19) = 0;
  sub_23DB6EA7C();
  v107 = v63[12];
  *(v102 + v107) = 1;
  v108 = v63[13];
  *(v102 + v108) = 1;
  (v174)(v102 + v63[14], 1, 1, v177);
  v109 = (v102 + v63[15]);
  *v109 = 0;
  v109[1] = 0;
  *v102 = v104;
  *(v102 + 8) = v106;

  *(v102 + 16) = 32;
  *(v102 + 19) = 0;
  *v109 = 0;
  v109[1] = 0;

  *(v102 + v107) = 1;
  *(v102 + v108) = 1;
  v110 = v165;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v111 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v110 + v111) = v166;

  swift_getKeyPath();
  swift_getKeyPath();
  v179[0] = 1;
  sub_23DB6EF1C();
  v112 = swift_allocObject();
  swift_weakInit();
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = v103;
  v114 = (v110 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v114 = sub_23DA9E6E0;
  v114[1] = v113;
  swift_retain_n();

  v115 = swift_allocObject();
  swift_weakInit();

  v116 = swift_allocObject();
  *(v116 + 16) = v115;
  *(v116 + 24) = v103;
  v117 = (v110 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  *v117 = sub_23DA9E6D0;
  v117[1] = v116;

  sub_23DA18BA0(v118, v119);

  v120 = v167;
  sub_23DB6EABC();
  v121 = v170;
  sub_23DB6EB0C();
  (*(v168 + 8))(v120, v169);
  v122 = v171;
  sub_23DB6EADC();
  (*(v172 + 8))(v121, v173);
  v123 = sub_23DB6EAAC();
  v124 = *(v123 - 8);
  if ((*(v124 + 48))(v122, 1, v123) == 1)
  {

    v125 = &qword_27E2FE1B0;
    v126 = &qword_23DB7A3E8;
    v127 = v122;
  }

  else
  {
    v128 = sub_23DB6EA9C();
    v130 = v129;
    (*(v124 + 8))(v122, v123);
    if (v128 == 29286 && v130 == 0xE200000000000000)
    {
    }

    else
    {
      v131 = sub_23DB70DBC();

      if ((v131 & 1) == 0)
      {

        return v110;
      }
    }

    v132 = swift_initStackObject();
    *(v132 + 16) = v136;
    *(v132 + 32) = 10276;
    sub_23DA7194C(0, (v132 + 34));
    v133 = v141;
    sub_23DA9B688(v137, v139 | 0x8000000000000000, v132, v141);
    swift_setDeallocating();
    v134 = sub_23DB6E9BC();
    (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DA9DF24(v133, v140);
    sub_23DB6EF1C();
    v125 = &qword_27E2FC2F8;
    v126 = &qword_23DB74470;
    v127 = v133;
  }

  sub_23DA17988(v127, v125, v126);
  return v110;
}

char *sub_23DA8BA50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v131 = *(v1 - 8);
  v132 = v1;
  MEMORY[0x28223BE20](v1);
  v130 = &v106 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x28223BE20](v3);
  v126 = &v106 - v4;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v124 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v121 = &v106 - v5;
  *&v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v106 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v106 - v10;
  v12 = sub_23DB6EA8C();
  v134 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v119 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v106 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v106 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v106 - v21;
  v118 = sub_23DA9BC60(0xD000000000000028, 0x800000023DB89520);
  v117 = v23;
  v135 = v0;
  v116 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB89550, &unk_284FE58A8);
  v115 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v136) = 0;
  sub_23DB6EECC();
  v27 = *(v9 + 32);
  v27(v25 + v26, v11, v8);
  v28 = v134 + 16;
  v29 = *(v134 + 16);
  v120 = v22;
  v29(v19, v22, v12);
  v123 = v16;
  v122 = v19;
  v125 = v12;
  v111 = v28;
  v110 = v29;
  v29(v16, v19, v12);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v136) = 0;
  sub_23DB6EECC();
  v31 = v11;
  v133 = v8;
  v27(v25 + v30, v11, v8);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v136 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v35 = v107;
  sub_23DB6EECC();
  (*(v108 + 32))(v25 + v34, v35, v109);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v32;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v136 = 0;
  v37 = v112;
  sub_23DB6EECC();
  (*(v113 + 32))(v25 + v36, v37, v114);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v136) = 0;
  sub_23DB6EECC();
  v27(v25 + v38, v11, v133);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v114 = xmmword_23DB74320;
  v136 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v40 = v121;
  sub_23DB6EECC();
  v41 = *(v124 + 32);
  v42 = v127;
  v41(v25 + v39, v40, v127);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v136 = v114;
  sub_23DB6EECC();
  v41(v25 + v43, v40, v42);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v136) = 0;
  sub_23DB6EECC();
  v27(v25 + v44, v31, v133);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v136 = 0;
  *(&v136 + 1) = 0xE000000000000000;
  v46 = v126;
  sub_23DB6EECC();
  (*(v128 + 32))(v25 + v45, v46, v129);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v136 = 0uLL;
  sub_23DB6EECC();
  v41(v25 + v47, v40, v42);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v136 = nullsub_1;
  *(&v136 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v130;
  sub_23DB6EECC();
  (*(v131 + 32))(v25 + v48, v49, v132);
  v50 = v119;
  v51 = v123;
  v52 = v125;
  v110(v119, v123, v125);
  v53 = Page.init(id:title:text:subPages:iconName:)(v50, v118, v117, v116, v115, MEMORY[0x277D84F90], 0, 0);
  v54 = *(v134 + 8);
  v54(v51, v52);
  v54(v122, v52);
  v54(v120, v52);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v136) = 0;
  swift_retain_n();
  v130 = v53;
  sub_23DB6EF1C();
  v55 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v57 = v56;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v136 = v55;
  *(&v136 + 1) = v57;
  sub_23DB6EF1C();
  sub_23DA7194C(0, &v136);
  LODWORD(v134) = v136;
  sub_23DA7194C(1, &v136);
  LODWORD(v128) = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v58 = (type metadata accessor for CommandToPractice(0) - 8);
  v59 = (*(*v58 + 80) + 32) & ~*(*v58 + 80);
  v60 = *(*v58 + 72);
  v61 = swift_allocObject();
  v129 = v61;
  *(v61 + 16) = xmmword_23DB7A0B0;
  v62 = v61 + v59;
  v63 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB89580, &unk_284FE58D0);
  v65 = v64;
  *v62 = 0;
  *(v62 + 8) = 0xE000000000000000;
  *(v62 + 17) = 186;
  *(v62 + 19) = 0;
  sub_23DB6EA7C();
  v66 = v58[12];
  *(v62 + v66) = 1;
  v67 = v58[13];
  *(v62 + v67) = 1;
  v68 = v58[14];
  v69 = type metadata accessor for KeyboardKey(0);
  v70 = *(v69 - 8);
  v132 = *(v70 + 56);
  v133 = v70 + 56;
  v127 = v69;
  v132(v62 + v68, 1, 1, v69);
  v71 = (v62 + v58[15]);
  *v71 = 0;
  v71[1] = 0;
  *v62 = v63;
  *(v62 + 8) = v65;

  *(v62 + 16) = 53;
  *(v62 + 19) = 0;
  *v71 = 0;
  v71[1] = 0;

  *(v62 + v66) = 0;
  *(v62 + v67) = 0;
  v131 = v60;
  v72 = v62 + v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB76A80;
  v74 = v134;
  *(inited + 32) = v134;
  *(inited + 33) = v74;
  LOBYTE(v60) = v128;
  *(inited + 34) = v128;
  v75 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB895B0, inited);
  v126 = v76;
  swift_setDeallocating();
  *v72 = 0;
  *(v72 + 8) = 0xE000000000000000;
  *(v72 + 17) = 186;
  *(v72 + 19) = 0;
  sub_23DB6EA7C();
  v77 = v58[12];
  *(v72 + v77) = 1;
  v78 = v58[13];
  *(v72 + v78) = 1;
  v79 = v132;
  v132(v72 + v58[14], 1, 1, v69);
  v80 = (v72 + v58[15]);
  *v80 = 0;
  v80[1] = 0;
  v81 = v126;
  *v72 = v75;
  *(v72 + 8) = v81;

  *(v72 + 16) = v134;
  *(v72 + 17) = v60;
  *(v72 + 19) = 0;
  *(v72 + v77) = 0;
  *(v72 + v78) = 0;
  *v80 = 0;
  v80[1] = 0;

  v134 = 2 * v131;
  v82 = v62 + 2 * v131;
  v83 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB895E0, &unk_284FE58F8);
  v85 = v84;
  *v82 = 0;
  *(v82 + 8) = 0xE000000000000000;
  *(v82 + 17) = 186;
  *(v82 + 19) = 0;
  sub_23DB6EA7C();
  v86 = v58[12];
  *(v82 + v86) = 1;
  v87 = v58[13];
  *(v82 + v87) = 1;
  v88 = v127;
  v79(v82 + v58[14], 1, 1, v127);
  v89 = (v82 + v58[15]);
  *v89 = 0;
  v89[1] = 0;
  *v82 = v83;
  *(v82 + 8) = v85;

  *(v82 + 16) = 32;
  *(v82 + 19) = 0;
  *v89 = 0;
  v89[1] = 0;

  *(v82 + v86) = 0;
  *(v82 + v87) = 0;
  v90 = v135;
  v91 = v62 + v134 + v131;
  v92 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB89610, &unk_284FE5920);
  v94 = v93;
  *v91 = 0;
  *(v91 + 8) = 0xE000000000000000;
  *(v91 + 17) = 186;
  *(v91 + 19) = 0;
  sub_23DB6EA7C();
  v95 = v58[12];
  *(v91 + v95) = 1;
  v96 = v58[13];
  *(v91 + v96) = 1;
  v132(v91 + v58[14], 1, 1, v88);
  v97 = (v91 + v58[15]);
  *v97 = 0;
  v97[1] = 0;
  *v91 = v92;
  *(v91 + 8) = v94;

  *(v91 + 16) = 40;
  *(v91 + 19) = 0;
  *v97 = 0;
  v97[1] = 0;

  *(v91 + v95) = 0;
  *(v91 + v96) = 0;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v98 = v130;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v99 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *&v98[v99] = v129;

  v100 = swift_allocObject();
  swift_weakInit();
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v90;
  v102 = &v98[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState];
  swift_beginAccess();
  v103 = *v102;
  v104 = v102[1];
  *v102 = sub_23DA9E6D0;
  v102[1] = v101;

  sub_23DA18BA0(v103, v104);

  return v98;
}

uint64_t sub_23DA8CA5C()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v56 = v0;
  v8 = sub_23DA9BC60(0xD000000000000018, 0x800000023DB89470);
  v10 = v9;
  v11 = sub_23DA9BC60(0xD000000000000017, 0x800000023DB89490);
  v13 = v12;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeShortTextVO(0);
  swift_allocObject();
  (*(v2 + 16))(v4, v7, v1);
  v14 = sub_23DA24B98(v4, v8, v10, v11, v13, MEMORY[0x277D84F90], 0, 0);
  (*(v2 + 8))(v7, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  v59[0] = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v15 = (type metadata accessor for CommandToPractice(0) - 8);
  v16 = *v15;
  v54 = *(*v15 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v55 = v18;
  *(v18 + 16) = xmmword_23DB78D60;
  v19 = v18 + v17;
  sub_23DA7194C(0, v59);
  LOBYTE(v11) = v59[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v11;
  v21 = sub_23DA9B4E0(0xD00000000000001DLL, 0x800000023DB894B0, inited);
  v52 = v22;
  v53 = v21;
  swift_setDeallocating();
  *v19 = 0;
  *(v19 + 8) = 0xE000000000000000;
  *(v19 + 17) = 186;
  *(v19 + 19) = 0;
  sub_23DB6EA7C();
  v23 = v15[12];
  *(v19 + v23) = 1;
  v24 = v15[13];
  *(v19 + v24) = 1;
  v25 = v15[14];
  v26 = type metadata accessor for KeyboardKey(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v19 + v25, 1, 1, v26);
  v28 = (v19 + v15[15]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v52;
  *v19 = v53;
  *(v19 + 8) = v29;

  *(v19 + 16) = 62;
  *(v19 + 19) = 1;
  *v28 = 0;
  v28[1] = 0;

  *(v19 + v23) = 1;
  *(v19 + v24) = 1;
  v30 = v19 + v54;
  v31 = sub_23DA9BC60(0xD00000000000001DLL, 0x800000023DB894D0);
  v33 = v32;
  *v30 = 0;
  *(v30 + 8) = 0xE000000000000000;
  *(v30 + 17) = 186;
  *(v30 + 19) = 0;
  sub_23DB6EA7C();
  v34 = v15[12];
  *(v30 + v34) = 1;
  v35 = v15[13];
  *(v30 + v35) = 1;
  v27(v30 + v15[14], 1, 1, v26);
  v36 = (v30 + v15[15]);
  *v36 = 0;
  v36[1] = 0;
  *v30 = v31;
  *(v30 + 8) = v33;

  *(v30 + 16) = 63;
  *(v30 + 19) = 0;
  *v36 = 0;
  v36[1] = 0;

  *(v30 + v34) = 1;
  *(v30 + v35) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v14 + v37) = v55;

  v38 = v56;
  v39 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB894F0);
  v41 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v39;
  v58 = v41;
  sub_23DB6EF1C();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v38;
  v44 = v38;
  v45 = (v14 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  *v45 = sub_23DA9E6D0;
  v45[1] = v43;
  swift_retain_n();

  sub_23DA18BA0(v46, v47);

  v48 = swift_allocObject();
  swift_weakInit();

  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v44;
  v50 = (v14 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v50 = sub_23DA9DF0C;
  v50[1] = v49;

  return v14;
}

uint64_t sub_23DA8D134(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = (&v43 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v43 - v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v54 = a2;
    v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v14 = result;
    swift_beginAccess();
    v52 = v13;
    v15 = *(v14 + v13);
    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();

    v51 = KeyPath;
    v50 = v17;
    v49 = sub_23DB6EEFC();
    v47 = v18;
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v53 = v14;
    v21 = v15;
    v48 = v19;
    v46 = v20;
    v45 = sub_23DB6EEFC();
    v44 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v23 = 0;
    v24 = (v4 + 7);
    v56 = v21;
    v21 = v21[2];
    v4 += 6;
    v25 = &qword_27E2FE1C8;
    if (!v21)
    {
LABEL_4:
      v26 = 1;
      v23 = v21;
      goto LABEL_7;
    }

    while (1)
    {
      v27 = v11;
      v11 = v4;
      v4 = v24;
      v28 = v21;
      v21 = v15;
      v29 = v25;
      v30 = v56;
      if (v23 >= v56[2])
      {
        goto LABEL_18;
      }

      v31 = *(type metadata accessor for CommandToPractice(0) - 8);
      v57 = (v23 + 1);
      v32 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
      v33 = *(v3 + 48);
      v34 = v55;
      *v55 = v23;
      sub_23DA9DDB8(v32, v34 + v33, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v34, v8, &qword_27E2FE1C0, &qword_23DB7A440);
      v26 = 0;
      v23 = v57;
      v25 = v29;
      v15 = v21;
      v21 = v28;
      v24 = v4;
      v4 = v11;
      v11 = v27;
LABEL_7:
      (*v24)(v8, v26, 1, v3);
      sub_23DA17A54(v8, v11, v25, &qword_23DB7A448);
      if ((*v4)(v11, 1, v3) == 1)
      {
        break;
      }

      v35 = *v11;
      if ((*v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v15 = sub_23DAC8B24(v21);
        goto LABEL_3;
      }

      if (v35 >= v15[2])
      {
        goto LABEL_17;
      }

      v36 = *(type metadata accessor for CommandToPractice(0) - 8);
      v37 = v15 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35;
      *(v37 + 18) = 0;
      *(v37 + 19) = v35 == 0;
      sub_23DA9DE28(v11 + *(v3 + 48), type metadata accessor for CommandToPractice);
      if (v23 == v21)
      {
        goto LABEL_4;
      }
    }

    *v44 = 0;
    *v47 = 0;
    v45(v58, 0);

    v49(v59, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v38 = v53;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v38 + v52) = v15;

    swift_getKeyPath();
    swift_getKeyPath();
    v59[0] = 0;
    v59[1] = 0xE000000000000000;

    sub_23DB6EF1C();
    v39 = OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_voEnabledFromWelcomePage;
    v40 = v54;
    if (*(v54 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverMac_voEnabledFromWelcomePage) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v41 = sub_23DB6EEFC();
      *v42 = !*v42;
      v41(v59, 0);

      *(v40 + v39) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DA8D7C4(uint64_t a1, uint64_t a2)
{
  sub_23DAC96A8(a2);
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  *(v2 + 40) = 63;

  sub_23DABC32C();
}

uint64_t sub_23DA8D85C()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v3 = (v2 - 8);
  v104 = *(v2 - 8);
  v105 = v104;
  MEMORY[0x28223BE20](v2);
  v108 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v97 - v6;
  v8 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB892D0);
  v13 = v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v103 = xmmword_23DB78D60;
  *(inited + 16) = xmmword_23DB78D60;
  *(inited + 32) = 57;
  sub_23DA7194C(0, (inited + 33));
  v15 = sub_23DA9B4E0(0xD000000000000022, 0x800000023DB892F0, inited);
  v17 = v16;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOCustomAction(0);
  swift_allocObject();
  v18 = sub_23DA3432C(v10, v11, v13, v15, v17, MEMORY[0x277D84F90], 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v109[0]) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  v19 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  v109[0] = v19;
  v109[1] = v21;
  sub_23DB6EF1C();
  v22 = sub_23DA9BC60(0xD000000000000026, 0x800000023DB89320);
  v24 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  v109[0] = v22;
  v109[1] = v24;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v109, "speaker.wave.3");
  HIBYTE(v109[1]) = -18;

  sub_23DB6EF1C();
  v25 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB89350);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  *(v28 + 24) = 0;

  v29 = v7;
  sub_23DB6EA7C();
  v30 = &v7[v3[7]];
  *v30 = v25;
  v30[1] = v27;
  *&v7[v3[8]] = xmmword_23DB7A0E0;
  v31 = &v7[v3[9]];
  v102 = v7;
  *v31 = sub_23DA9DEE8;
  v31[1] = v28;
  v32 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB89380);
  v34 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = v1;
  *(v35 + 24) = 2;
  v36 = v1;

  v37 = v108;
  sub_23DB6EA7C();
  v38 = (v37 + v3[7]);
  *v38 = v32;
  v38[1] = v34;
  *(v37 + v3[8]) = xmmword_23DB7A0F0;
  v39 = (v37 + v3[9]);
  *v39 = sub_23DA9E6DC;
  v39[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v40 = *(v104 + 72);
  v41 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v103;
  v43 = v42 + v41;
  v101 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DA9DDB8(v29, v43, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DA9DDB8(v37, v43 + v40, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v109[0] = v42;
  v100 = v18;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v44 = (type metadata accessor for CommandToPractice(0) - 8);
  v45 = *v44;
  v105 = *(*v44 + 72);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  v99 = v47;
  *(v47 + 16) = xmmword_23DB7A0B0;
  v48 = v47 + v46;
  sub_23DA7194C(0, v109);
  LOBYTE(v40) = v109[0];
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_23DB73BA0;
  *(v49 + 32) = v40;
  v107 = v36;
  v50 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB893B0, v49);
  v52 = v51;
  swift_setDeallocating();
  *v48 = 0;
  *(v48 + 8) = 0xE000000000000000;
  *(v48 + 17) = 186;
  *(v48 + 19) = 0;
  sub_23DB6EA7C();
  v53 = v44[12];
  *(v48 + v53) = 1;
  v54 = v44[13];
  *(v48 + v54) = 1;
  v55 = v44[14];
  v106 = type metadata accessor for KeyboardKey(0);
  v56 = *(v106 - 8);
  v104 = *(v56 + 56);
  *&v103 = v56 + 56;
  (v104)(v48 + v55, 1, 1, v106);
  v57 = (v48 + v44[15]);
  *v57 = 0;
  v57[1] = 0;
  *v48 = v50;
  *(v48 + 8) = v52;

  *(v48 + 16) = 62;
  *(v48 + 19) = 1;
  *v57 = 0;
  v57[1] = 0;

  *(v48 + v53) = 1;
  *(v48 + v54) = 1;
  v58 = v105;
  v59 = v48 + v105;
  v60 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB893E0, &unk_284FE5EE8);
  v98 = v61;
  *v59 = 0;
  *(v59 + 8) = 0xE000000000000000;
  *(v59 + 17) = 186;
  *(v59 + 19) = 0;
  sub_23DB6EA7C();
  v62 = v44[12];
  *(v59 + v62) = 1;
  v63 = v44[13];
  *(v59 + v63) = 1;
  v64 = v104;
  (v104)(v59 + v44[14], 1, 1, v106);
  v65 = (v59 + v44[15]);
  *v65 = 0;
  v65[1] = 0;
  v66 = v98;
  *v59 = v60;
  *(v59 + 8) = v66;

  *(v59 + 16) = 57;
  *(v59 + 19) = 0;
  *v65 = 0;
  v65[1] = 0;

  *(v59 + v62) = 1;
  *(v59 + v63) = 1;
  v98 = 2 * v58;
  v67 = v48 + 2 * v58;
  v68 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89410, &unk_284FE5F10);
  v70 = v69;
  *v67 = 0;
  *(v67 + 8) = 0xE000000000000000;
  *(v67 + 17) = 186;
  *(v67 + 19) = 0;
  sub_23DB6EA7C();
  v71 = v44[12];
  *(v67 + v71) = 1;
  v72 = v44[13];
  *(v67 + v72) = 1;
  v73 = v106;
  v64(v67 + v44[14], 1, 1, v106);
  v74 = (v67 + v44[15]);
  *v74 = 0;
  v74[1] = 0;
  *v67 = v68;
  *(v67 + 8) = v70;

  *(v67 + 16) = 30;
  *(v67 + 19) = 0;
  *v74 = 0;
  v74[1] = 0;

  *(v67 + v71) = 1;
  *(v67 + v72) = 1;
  v75 = v48 + v98 + v105;
  v76 = v107;
  v77 = sub_23DA9B4E0(0xD000000000000024, 0x800000023DB89440, &unk_284FE5F38);
  v79 = v78;
  *v75 = 0;
  *(v75 + 8) = 0xE000000000000000;
  *(v75 + 17) = 186;
  *(v75 + 19) = 0;
  sub_23DB6EA7C();
  v80 = v44[12];
  *(v75 + v80) = 1;
  v81 = v44[13];
  *(v75 + v81) = 1;
  (v104)(v75 + v44[14], 1, 1, v73);
  v82 = (v75 + v44[15]);
  *v82 = 0;
  v82[1] = 0;
  *v75 = v77;
  *(v75 + 8) = v79;

  *(v75 + 16) = 63;
  *(v75 + 19) = 0;
  *v82 = 0;
  v82[1] = 0;

  *(v75 + v80) = 0;
  *(v75 + v81) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v83 = v100;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v84 = v101;
  sub_23DA9DE28(v108, v101);
  sub_23DA9DE28(v102, v84);
  v85 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v83 + v85) = v99;
  v86 = v83;

  v87 = swift_allocObject();
  swift_weakInit();
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = v76;
  v89 = v76;
  v90 = (v86 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v91 = *v90;
  v92 = v90[1];
  *v90 = sub_23DA9E6D0;
  v90[1] = v88;
  swift_retain_n();

  sub_23DA18BA0(v91, v92);

  v93 = swift_allocObject();
  swift_weakInit();

  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  *(v94 + 24) = v89;
  v95 = (v86 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v95 = sub_23DA9DEFC;
  v95[1] = v94;

  return v86;
}

uint64_t sub_23DA8E4A4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v48 = (&v38 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v38 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v12 = result;
    swift_beginAccess();
    v46 = v11;
    v13 = *(v12 + v11);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();

    v44 = v15;
    v45 = KeyPath;
    v43 = sub_23DB6EEFC();
    v41 = v16;
    v17 = swift_getKeyPath();
    v18 = swift_getKeyPath();
    v47 = v12;
    v42 = v17;
    v40 = v18;
    v39 = sub_23DB6EEFC();
    v38 = v19;

    v20 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v21 = 0;
    v22 = (v2 + 7);
    v49 = v13;
    v23 = *(v13 + 16);
    v2 += 6;
    v24 = &qword_27E2FE1C8;
    if (!v23)
    {
LABEL_4:
      v25 = 1;
      v21 = v23;
      goto LABEL_7;
    }

    while (1)
    {
      v13 = v9;
      v9 = v2;
      v2 = v22;
      v26 = v23;
      v27 = v20;
      v28 = v24;
      v29 = v49;
      if (v21 >= *(v49 + 16))
      {
        goto LABEL_18;
      }

      v30 = *(type metadata accessor for CommandToPractice(0) - 8);
      v50 = v21 + 1;
      v31 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21;
      v32 = *(v1 + 48);
      v33 = v48;
      *v48 = v21;
      sub_23DA9DDB8(v31, v33 + v32, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v33, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v25 = 0;
      v21 = v50;
      v24 = v28;
      v20 = v27;
      v23 = v26;
      v22 = v2;
      v2 = v9;
      v9 = v13;
LABEL_7:
      (*v22)(v6, v25, 1, v1);
      sub_23DA17A54(v6, v9, v24, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {
        break;
      }

      v13 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v20 = sub_23DAC8B24(v13);
        goto LABEL_3;
      }

      if (v13 >= v20[2])
      {
        goto LABEL_17;
      }

      v34 = *(type metadata accessor for CommandToPractice(0) - 8);
      v35 = v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13;
      *(v35 + 18) = 0;
      *(v35 + 19) = v13 == 0;
      sub_23DA9DE28(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v21 == v23)
      {
        goto LABEL_4;
      }
    }

    *v38 = 0;
    *v41 = 0;
    v39(v51, 0);

    v43(v52, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v36 = v47;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v36 + v46) = v20;

    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v37 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v37 + 40) = 27;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA8EAA4()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v3 = (v2 - 8);
  v92 = *(v2 - 8);
  v93 = v92;
  MEMORY[0x28223BE20](v2);
  v95 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v96 = &v87 - v6;
  v7 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB890D0);
  v12 = v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v91 = xmmword_23DB78D60;
  *(inited + 16) = xmmword_23DB78D60;
  *(inited + 32) = 46;
  sub_23DA7194C(0, (inited + 33));
  v14 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB89100, inited);
  v16 = v15;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOContextualMenu(0);
  swift_allocObject();
  v17 = sub_23DA2FF3C(v9, v10, v12, v14, v16, MEMORY[0x277D84F90], 0, 0);
  v18 = sub_23DA9BC60(0xD00000000000002CLL, 0x800000023DB89130);
  v20 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v97 = v18;
  v98 = v20;

  sub_23DB6EF1C();

  v21 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v23 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  v97 = v21;
  v98 = v23;

  sub_23DB6EF1C();
  v24 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB89160);
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  *(v27 + 24) = v1;

  v28 = v96;
  sub_23DB6EA7C();
  v29 = (v28 + v3[7]);
  *v29 = v24;
  v29[1] = v26;
  v30 = (v28 + v3[8]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v28 + v3[9]);
  *v31 = sub_23DA9DDA8;
  v31[1] = v27;
  v32 = sub_23DA9BC60(0xD00000000000002CLL, 0x800000023DB89190);
  v34 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = v17;
  *(v35 + 24) = v1;

  v36 = v1;

  v37 = v95;
  sub_23DB6EA7C();
  v38 = (v37 + v3[7]);
  *v38 = v32;
  v38[1] = v34;
  v39 = (v37 + v3[8]);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v37 + v3[9]);
  *v40 = sub_23DA9DDB0;
  v40[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v41 = *(v92 + 72);
  v42 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v91;
  v44 = v43 + v42;
  *&v91 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DA9DDB8(v28, v44, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DA9DDB8(v37, v44 + v41, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v97 = v43;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v45 = (type metadata accessor for CommandToPractice(0) - 8);
  v46 = *(*v45 + 72);
  v47 = (*(*v45 + 80) + 32) & ~*(*v45 + 80);
  v89 = 2 * v46;
  v48 = swift_allocObject();
  v90 = v48;
  *(v48 + 16) = xmmword_23DB76A80;
  v49 = v48 + v47;
  sub_23DA7194C(0, &v97);
  LOBYTE(v43) = v97;
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_23DB73BA0;
  *(v50 + 32) = v43;
  v88 = v36;
  v51 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB891C0, v50);
  v87 = v52;
  swift_setDeallocating();
  *v49 = 0;
  *(v49 + 8) = 0xE000000000000000;
  *(v49 + 17) = 186;
  *(v49 + 19) = 0;
  sub_23DB6EA7C();
  v53 = v45[12];
  *(v49 + v53) = 1;
  v54 = v45[13];
  *(v49 + v54) = 1;
  v55 = v45[14];
  v93 = type metadata accessor for KeyboardKey(0);
  v56 = *(v93 - 8);
  v92 = *(v56 + 56);
  v94 = v56 + 56;
  (v92)(v49 + v55, 1, 1, v93);
  v57 = (v49 + v45[15]);
  *v57 = 0;
  v57[1] = 0;
  v58 = v87;
  *v49 = v51;
  *(v49 + 8) = v58;

  *(v49 + 16) = 62;
  *(v49 + 19) = 1;
  *v57 = 0;
  v57[1] = 0;

  *(v49 + v53) = 1;
  *(v49 + v54) = 1;
  v59 = v49 + v46;
  v60 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB891F0, &unk_284FE5E98);
  v62 = v61;
  *v59 = 0;
  *(v59 + 8) = 0xE000000000000000;
  *(v59 + 17) = 186;
  *(v59 + 19) = 0;
  sub_23DB6EA7C();
  v63 = v45[12];
  *(v59 + v63) = 1;
  v64 = v45[13];
  *(v59 + v64) = 1;
  (v92)(v59 + v45[14], 1, 1, v93);
  v65 = (v59 + v45[15]);
  *v65 = 0;
  v65[1] = 0;
  *v59 = v60;
  *(v59 + 8) = v62;

  *(v59 + 16) = 46;
  *(v59 + 19) = 0;
  *v65 = 0;
  v65[1] = 0;

  *(v59 + v63) = 1;
  *(v59 + v64) = 1;
  v66 = v49 + v89;
  v67 = v88;
  v68 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB89220, &unk_284FE5EC0);
  v70 = v69;
  *v66 = 0;
  *(v66 + 8) = 0xE000000000000000;
  *(v66 + 17) = 186;
  *(v66 + 19) = 0;
  sub_23DB6EA7C();
  v71 = v45[12];
  *(v66 + v71) = 1;
  v72 = v45[13];
  *(v66 + v72) = 1;
  (v92)(v66 + v45[14], 1, 1, v93);
  v73 = (v66 + v45[15]);
  *v73 = 0;
  v73[1] = 0;
  *v66 = v68;
  *(v66 + 8) = v70;

  *(v66 + 16) = 32;
  *(v66 + 19) = 0;
  *v73 = 0;
  v73[1] = 0;

  *(v66 + v71) = 1;
  *(v66 + v72) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v74 = v91;
  sub_23DA9DE28(v95, v91);
  sub_23DA9DE28(v96, v74);
  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v17 + v75) = v90;

  v76 = swift_allocObject();
  swift_weakInit();
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v67;
  v78 = (v17 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  *v78 = sub_23DA9E6D0;
  v78[1] = v77;
  swift_retain_n();

  sub_23DA18BA0(v79, v80);

  v81 = swift_allocObject();
  swift_weakInit();
  v82 = (v17 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v82 = sub_23DA9DE88;
  v82[1] = v81;

  v83 = swift_allocObject();
  swift_weakInit();

  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v67;
  v85 = (v17 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v85 = sub_23DA9DE90;
  v85[1] = v84;

  return v17;
}

uint64_t sub_23DA8F5D0(uint64_t a1)
{
  v2 = sub_23DB6EB3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v15[24] = 0;

  sub_23DB6EF1C();
  v6 = sub_23DA9BC60(0xD000000000000033, 0x800000023DB89290);
  v8 = v7;
  v9 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel;
  v10 = *(a1 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
  swift_beginAccess();
  *(v10 + 40) = v6;
  *(v10 + 48) = v8;

  sub_23DABC354();

  v11 = *(a1 + v9);
  swift_beginAccess();
  v12 = *(v11 + 40);
  v13 = *(v11 + 48);

  MEMORY[0x23EEF4EF0](v12, v13);
  sub_23DB6EB2C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23DA8F7A0(uint64_t a1)
{
  v2 = sub_23DB6EB3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v15[24] = 1;

  sub_23DB6EF1C();
  v6 = sub_23DA9BC60(0xD000000000000036, 0x800000023DB89250);
  v8 = v7;
  v9 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel;
  v10 = *(a1 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
  swift_beginAccess();
  *(v10 + 40) = v6;
  *(v10 + 48) = v8;

  sub_23DABC354();

  v11 = *(a1 + v9);
  swift_beginAccess();
  v12 = *(v11 + 40);
  v13 = *(v11 + 48);

  MEMORY[0x23EEF4EF0](v12, v13);
  sub_23DB6EB2C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23DA8F974(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v6);

    v3 = v6[0];
    v4 = v6[1];
    v5 = *(v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
    swift_beginAccess();
    *(v5 + 40) = v3;
    *(v5 + 48) = v4;

    sub_23DABC354();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_23DB6EF1C();
  }

  return result;
}

unint64_t sub_23DA8FA94(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = (&v44 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v44 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (qword_27E2FBBD0 != -1)
    {
      goto LABEL_21;
    }

    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_5;
    }

LABEL_4:
    v12 = objc_opt_self();
    v13 = sub_23DB7087C();
    [v12 triggerEventCommand_];

LABEL_5:
    v14 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v53 = v14;
    v15 = *(v11 + v14);
    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();

    v51 = v17;
    v52 = KeyPath;
    v50 = sub_23DB6EEFC();
    v48 = v18;
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v54 = v11;
    v49 = v19;
    v47 = v20;
    v46 = sub_23DB6EEFC();
    v45 = v21;

    v22 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23DAC8B24(v15);
    }

    v23 = 0;
    v24 = (v2 + 7);
    v25 = v15[2];
    v2 += 6;
    if (!v25)
    {
LABEL_8:
      v26 = 1;
      v23 = v25;
      goto LABEL_11;
    }

    while (1)
    {
      if (v23 >= v15[2])
      {
        goto LABEL_20;
      }

      v27 = *(type metadata accessor for CommandToPractice(0) - 8);
      v56 = v23 + 1;
      v28 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23;
      v29 = *(v1 + 48);
      v30 = v2;
      v31 = v24;
      v32 = v9;
      v33 = v1;
      v34 = v25;
      v35 = v22;
      v36 = v6;
      v37 = v15;
      v38 = v55;
      *v55 = v23;
      sub_23DA9DDB8(v28, v38 + v29, type metadata accessor for CommandToPractice);
      v39 = v38;
      v15 = v37;
      v6 = v36;
      v22 = v35;
      v25 = v34;
      v1 = v33;
      v9 = v32;
      v24 = v31;
      v2 = v30;
      sub_23DA17A54(v39, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v26 = 0;
      v23 = v56;
LABEL_11:
      (*v24)(v6, v26, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {
        break;
      }

      v11 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        swift_once();
        if (UIAccessibilityIsVoiceOverRunning())
        {
          goto LABEL_4;
        }

        goto LABEL_5;
      }

      if (v11 >= v22[2])
      {
        goto LABEL_19;
      }

      v40 = *(type metadata accessor for CommandToPractice(0) - 8);
      v41 = v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v11;
      *(v41 + 18) = 0;
      *(v41 + 19) = v11 == 0;
      sub_23DA9DE28(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v23 == v25)
      {
        goto LABEL_8;
      }
    }

    *v45 = 0;
    *v48 = 0;
    v46(v57, 0);

    v50(v58, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v42 = v54;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v42 + v53) = v22;

    v43 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v43 + 40) = 27;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA900E8()
{
  v0 = type metadata accessor for ThreeColumnTableInfo(0);
  v49 = *(v0 - 8);
  v50 = v49;
  MEMORY[0x28223BE20](v0);
  v2 = (&v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = (&v49 - v4);
  MEMORY[0x28223BE20](v6);
  v8 = (&v49 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v49 - v10);
  v12 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88E90);
  v14 = v13;
  v15 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88EC0);
  v17 = v16;
  v18 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88EF0);
  *v11 = v12;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v17;
  v11[4] = v18;
  v11[5] = v19;
  sub_23DB6EA7C();
  v20 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88F20);
  v22 = v21;
  v23 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88F50);
  v25 = v24;
  v26 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88F80);
  *v8 = v20;
  v8[1] = v22;
  v8[2] = v23;
  v8[3] = v25;
  v8[4] = v26;
  v8[5] = v27;
  sub_23DB6EA7C();
  v28 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88FB0);
  v30 = v29;
  v31 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88FE0);
  v33 = v32;
  v34 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB89010);
  *v5 = v28;
  v5[1] = v30;
  v5[2] = v31;
  v5[3] = v33;
  v5[4] = v34;
  v5[5] = v35;
  sub_23DB6EA7C();
  v36 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB89040);
  v38 = v37;
  v39 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB89070);
  v41 = v40;
  v42 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB890A0);
  *v2 = v36;
  v2[1] = v38;
  v2[2] = v39;
  v2[3] = v41;
  v2[4] = v42;
  v2[5] = v43;
  sub_23DB6EA7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E0, &qword_23DB7A718);
  v44 = *(v49 + 72);
  v45 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23DB7A0B0;
  v47 = v46 + v45;
  sub_23DA9DDB8(v11, v47, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DDB8(v8, v47 + v44, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DDB8(v5, v47 + 2 * v44, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DD18(v2, v47 + 3 * v44);
  sub_23DA9DE28(v5, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DE28(v8, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DE28(v11, type metadata accessor for ThreeColumnTableInfo);
  return v46;
}

uint64_t sub_23DA904C4()
{
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v124 - v1;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v124 - v2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = &v124 - v3;
  *&v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v124 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v124 - v5;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v125 = &v124 - v6;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v143 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v124 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  v8 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v10 = &v124 - v9;
  v11 = sub_23DB6EA8C();
  v156 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v141 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v124 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v124 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v124 - v20;
  v136 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB88CD0);
  v135 = v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v144 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  *(inited + 32) = 12081;
  sub_23DA7194C(0, (inited + 34));
  v157 = v0;
  v132 = sub_23DA9B4E0(0xD00000000000001DLL, 0x800000023DB88CF0, inited);
  v131 = v24;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOTables(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v27 = MEMORY[0x277D84F90];
  *&v158 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC810, &unk_23DB7A670);
  sub_23DB6EECC();
  (*(v8 + 32))(v25 + v26, v10, v139);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  *&v158 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
  v29 = v142;
  sub_23DB6EECC();
  v143[4](v25 + v28, v29, v146);
  v30 = v156 + 16;
  v31 = *(v156 + 16);
  v139 = v21;
  v31(v18, v21, v11);
  v143 = v15;
  v142 = v18;
  v146 = v11;
  v127 = v30;
  v126 = v31;
  v31(v15, v18, v11);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v158) = 0;
  v33 = v125;
  sub_23DB6EECC();
  v34 = *(v128 + 32);
  v35 = v129;
  v34(v25 + v32, v33);
  if (v27 >> 62 && sub_23DB70C3C())
  {
    v36 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v36;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v158 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v38 = v130;
  sub_23DB6EECC();
  (*(v133 + 32))(v25 + v37, v38, v134);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v27;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v158 = 0;
  v40 = v137;
  sub_23DB6EECC();
  (*(v138 + 32))(v25 + v39, v40, v140);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  (v34)(v25 + v41, v33, v35);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v140 = xmmword_23DB74320;
  v158 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v43 = v145;
  sub_23DB6EECC();
  v44 = *(v147 + 4);
  v147 = v34;
  v45 = v149;
  v44(v25 + v42, v43, v149);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v158 = v140;
  sub_23DB6EECC();
  v44(v25 + v46, v43, v45);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v147(v25 + v47, v33, v35);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  v49 = v148;
  sub_23DB6EECC();
  (*(v150 + 32))(v25 + v48, v49, v151);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v158 = 0uLL;
  sub_23DB6EECC();
  v44(v25 + v50, v43, v45);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v158 = nullsub_1;
  *(&v158 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v52 = v153;
  sub_23DB6EECC();
  (*(v154 + 32))(v25 + v51, v52, v155);
  v53 = v141;
  v54 = v143;
  v55 = v146;
  v126(v141, v143, v146);
  v56 = Page.init(id:title:text:subPages:iconName:)(v53, v136, v135, v132, v131, MEMORY[0x277D84F90], 0, 0);
  v57 = *(v156 + 8);
  v57(v139, v55);
  v57(v54, v55);
  v57(v142, v55);
  v58 = sub_23DA900E8();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v158 = v58;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v59 = swift_allocObject();
  *(v59 + 16) = v144;
  *(v59 + 32) = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88D10);
  *(v59 + 40) = v60;
  *(v59 + 48) = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88D40);
  *(v59 + 56) = v61;
  *(v59 + 64) = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88D70);
  *(v59 + 72) = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v158 = v59;

  v151 = v56;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v158) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v63 = (type metadata accessor for CommandToPractice(0) - 8);
  v64 = *v63;
  v154 = *(*v63 + 72);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v149 = 4 * v154;
  v66 = swift_allocObject();
  v150 = v66;
  *(v66 + 16) = xmmword_23DB7A0D0;
  v67 = v66 + v65;
  sub_23DA7194C(0, &v158);
  LOBYTE(v65) = v158;
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_23DB73BA0;
  *(v68 + 32) = v65;
  v69 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88DA0, v68);
  v71 = v70;
  swift_setDeallocating();
  *v67 = 0;
  *(v67 + 8) = 0xE000000000000000;
  *(v67 + 17) = 186;
  *(v67 + 19) = 0;
  sub_23DB6EA7C();
  v72 = v63[12];
  *(v67 + v72) = 1;
  v73 = v63[13];
  *(v67 + v73) = 1;
  v74 = v63[14];
  v156 = type metadata accessor for KeyboardKey(0);
  v75 = *(v156 - 8);
  v76 = *(v75 + 56);
  v155 = v75 + 56;
  v76(v67 + v74, 1, 1, v156);
  v153 = v76;
  v77 = (v67 + v63[15]);
  *v77 = 0;
  v77[1] = 0;
  *v67 = v69;
  *(v67 + 8) = v71;

  *(v67 + 16) = 62;
  *(v67 + 19) = 1;
  *v77 = 0;
  v77[1] = 0;

  *(v67 + v72) = 1;
  *(v67 + v73) = 1;
  v78 = v154;
  v79 = v67 + v154;
  v80 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88DD0, &unk_284FE5DF8);
  v82 = v81;
  *v79 = 0;
  *(v79 + 8) = 0xE000000000000000;
  *(v79 + 17) = 186;
  *(v79 + 19) = 0;
  sub_23DB6EA7C();
  v83 = v63[12];
  *(v79 + v83) = 1;
  v84 = v63[13];
  *(v79 + v84) = 1;
  v85 = v156;
  v76(v79 + v63[14], 1, 1, v156);
  v86 = (v79 + v63[15]);
  *v86 = 0;
  v86[1] = 0;
  *v79 = v80;
  *(v79 + 8) = v82;

  *(v79 + 16) = 33;
  *(v79 + 19) = 0;
  *v86 = 0;
  v86[1] = 0;

  *(v79 + v83) = 1;
  *(v79 + v84) = 1;
  v152 = 2 * v78;
  v87 = v67 + 2 * v78;
  v88 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88E00, &unk_284FE5E20);
  v90 = v89;
  *v87 = 0;
  *(v87 + 8) = 0xE000000000000000;
  *(v87 + 17) = 186;
  *(v87 + 19) = 0;
  sub_23DB6EA7C();
  v91 = v63[12];
  *(v87 + v91) = 1;
  v92 = v63[13];
  *(v87 + v92) = 1;
  v93 = v153;
  (v153)(v87 + v63[14], 1, 1, v85);
  v94 = (v87 + v63[15]);
  *v94 = 0;
  v94[1] = 0;
  *v87 = v88;
  *(v87 + 8) = v90;

  *(v87 + 16) = 47;
  *(v87 + 19) = 0;
  *v94 = 0;
  v94[1] = 0;

  *(v87 + v91) = 1;
  *(v87 + v92) = 1;
  v95 = v67 + v152 + v154;
  v96 = v157;
  v97 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88E30, &unk_284FE5E48);
  v154 = v98;
  *v95 = 0;
  *(v95 + 8) = 0xE000000000000000;
  *(v95 + 17) = 186;
  *(v95 + 19) = 0;
  sub_23DB6EA7C();
  v99 = v63[12];
  *(v95 + v99) = 1;
  v100 = v63[13];
  *(v95 + v100) = 1;
  v93(v95 + v63[14], 1, 1, v156);
  v101 = (v95 + v63[15]);
  *v101 = 0;
  v101[1] = 0;
  v102 = v154;
  *v95 = v97;
  *(v95 + 8) = v102;

  *(v95 + 16) = 49;
  *(v95 + 19) = 0;
  *v101 = 0;
  v101[1] = 0;

  *(v95 + v99) = 1;
  *(v95 + v100) = 1;
  v103 = v67 + v149;
  v104 = v96;
  v105 = sub_23DA9B4E0(0xD000000000000023, 0x800000023DB88E60, &unk_284FE5E70);
  v107 = v106;
  *v103 = 0;
  *(v103 + 8) = 0xE000000000000000;
  *(v103 + 17) = 186;
  *(v103 + 19) = 0;
  sub_23DB6EA7C();
  v108 = v63[12];
  *(v103 + v108) = 1;
  v109 = v63[13];
  *(v103 + v109) = 1;
  (v153)(v103 + v63[14], 1, 1, v156);
  v110 = (v103 + v63[15]);
  *v110 = 0;
  v110[1] = 0;
  *v103 = v105;
  *(v103 + 8) = v107;

  *(v103 + 16) = 34;
  *(v103 + 19) = 0;
  *v110 = 0;
  v110[1] = 0;

  *(v103 + v108) = 1;
  *(v103 + v109) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v111 = v151;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v112 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v111 + v112) = v150;
  v113 = v111;

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v104;
  v116 = v104;
  v117 = (v113 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  *v117 = sub_23DA9E6D0;
  v117[1] = v115;
  swift_retain_n();

  sub_23DA18BA0(v118, v119);

  v120 = swift_allocObject();
  swift_weakInit();

  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v116;
  v122 = (v113 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v122 = sub_23DA9DD7C;
  v122[1] = v121;

  return v113;
}

uint64_t sub_23DA9196C()
{
  v0 = type metadata accessor for ThreeColumnTableInfo(0);
  v40 = *(v0 - 8);
  v1 = v40;
  MEMORY[0x28223BE20](v0);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v39 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = (&v39 - v8);
  v10 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88B20);
  v12 = v11;
  v13 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88B50);
  v15 = v14;
  v16 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88B80);
  *v9 = v10;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v15;
  v9[4] = v16;
  v9[5] = v17;
  sub_23DB6EA7C();
  v18 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88BB0);
  v20 = v19;
  v21 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88BE0);
  v23 = v22;
  v24 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88C10);
  *v6 = v18;
  v6[1] = v20;
  v6[2] = v21;
  v6[3] = v23;
  v6[4] = v24;
  v6[5] = v25;
  sub_23DB6EA7C();
  v26 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88C40);
  v28 = v27;
  v29 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88C70);
  v31 = v30;
  v32 = sub_23DA9BC60(0xD000000000000029, 0x800000023DB88CA0);
  *v3 = v26;
  v3[1] = v28;
  v3[2] = v29;
  v3[3] = v31;
  v3[4] = v32;
  v3[5] = v33;
  sub_23DB6EA7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E0, &qword_23DB7A718);
  v34 = *(v1 + 72);
  v35 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_23DB76A80;
  v37 = v36 + v35;
  sub_23DA9DDB8(v9, v37, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DDB8(v6, v37 + v34, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DD18(v3, v37 + 2 * v34);
  sub_23DA9DE28(v6, type metadata accessor for ThreeColumnTableInfo);
  sub_23DA9DE28(v9, type metadata accessor for ThreeColumnTableInfo);
  return v36;
}

uint64_t sub_23DA91C94()
{
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v124 - v1;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v124 - v2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = &v124 - v3;
  *&v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v124 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v124 - v5;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v125 = &v124 - v6;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v143 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v124 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  v8 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v10 = &v124 - v9;
  v11 = sub_23DB6EA8C();
  v156 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v141 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v124 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v124 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v124 - v20;
  v136 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88960);
  v135 = v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v144 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  *(inited + 32) = 12848;
  sub_23DA7194C(0, (inited + 34));
  v157 = v0;
  v132 = sub_23DA9B4E0(0xD00000000000001BLL, 0x800000023DB88980, inited);
  v131 = v24;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOTables(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v27 = MEMORY[0x277D84F90];
  *&v158 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC810, &unk_23DB7A670);
  sub_23DB6EECC();
  (*(v8 + 32))(v25 + v26, v10, v139);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  *&v158 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
  v29 = v142;
  sub_23DB6EECC();
  v143[4](v25 + v28, v29, v146);
  v30 = v156 + 16;
  v31 = *(v156 + 16);
  v139 = v21;
  v31(v18, v21, v11);
  v143 = v15;
  v142 = v18;
  v146 = v11;
  v127 = v30;
  v126 = v31;
  v31(v15, v18, v11);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v158) = 0;
  v33 = v125;
  sub_23DB6EECC();
  v34 = *(v128 + 32);
  v35 = v129;
  v34(v25 + v32, v33);
  if (v27 >> 62 && sub_23DB70C3C())
  {
    v36 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v36;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v158 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v38 = v130;
  sub_23DB6EECC();
  (*(v133 + 32))(v25 + v37, v38, v134);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v27;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v158 = 0;
  v40 = v137;
  sub_23DB6EECC();
  (*(v138 + 32))(v25 + v39, v40, v140);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  (v34)(v25 + v41, v33, v35);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v140 = xmmword_23DB74320;
  v158 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v43 = v145;
  sub_23DB6EECC();
  v44 = *(v147 + 4);
  v147 = v34;
  v45 = v149;
  v44(v25 + v42, v43, v149);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v158 = v140;
  sub_23DB6EECC();
  v44(v25 + v46, v43, v45);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v158) = 0;
  sub_23DB6EECC();
  v147(v25 + v47, v33, v35);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  v49 = v148;
  sub_23DB6EECC();
  (*(v150 + 32))(v25 + v48, v49, v151);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v158 = 0uLL;
  sub_23DB6EECC();
  v44(v25 + v50, v43, v45);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v158 = nullsub_1;
  *(&v158 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v52 = v153;
  sub_23DB6EECC();
  (*(v154 + 32))(v25 + v51, v52, v155);
  v53 = v141;
  v54 = v143;
  v55 = v146;
  v126(v141, v143, v146);
  v56 = Page.init(id:title:text:subPages:iconName:)(v53, v136, v135, v132, v131, MEMORY[0x277D84F90], 0, 0);
  v57 = *(v156 + 8);
  v57(v139, v55);
  v57(v54, v55);
  v57(v142, v55);
  v58 = sub_23DA9196C();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v158 = v58;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v59 = swift_allocObject();
  *(v59 + 16) = v144;
  *(v59 + 32) = sub_23DA9BC60(0xD000000000000026, 0x800000023DB889A0);
  *(v59 + 40) = v60;
  *(v59 + 48) = sub_23DA9BC60(0xD000000000000026, 0x800000023DB889D0);
  *(v59 + 56) = v61;
  *(v59 + 64) = sub_23DA9BC60(0xD000000000000026, 0x800000023DB88A00);
  *(v59 + 72) = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v158 = v59;

  v151 = v56;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v158) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v63 = (type metadata accessor for CommandToPractice(0) - 8);
  v64 = *v63;
  v154 = *(*v63 + 72);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v149 = 4 * v154;
  v66 = swift_allocObject();
  v150 = v66;
  *(v66 + 16) = xmmword_23DB7A0D0;
  v67 = v66 + v65;
  sub_23DA7194C(0, &v158);
  LOBYTE(v65) = v158;
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_23DB73BA0;
  *(v68 + 32) = v65;
  v69 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88A30, v68);
  v71 = v70;
  swift_setDeallocating();
  *v67 = 0;
  *(v67 + 8) = 0xE000000000000000;
  *(v67 + 17) = 186;
  *(v67 + 19) = 0;
  sub_23DB6EA7C();
  v72 = v63[12];
  *(v67 + v72) = 1;
  v73 = v63[13];
  *(v67 + v73) = 1;
  v74 = v63[14];
  v156 = type metadata accessor for KeyboardKey(0);
  v75 = *(v156 - 8);
  v76 = *(v75 + 56);
  v155 = v75 + 56;
  v76(v67 + v74, 1, 1, v156);
  v153 = v76;
  v77 = (v67 + v63[15]);
  *v77 = 0;
  v77[1] = 0;
  *v67 = v69;
  *(v67 + 8) = v71;

  *(v67 + 16) = 62;
  *(v67 + 19) = 1;
  *v77 = 0;
  v77[1] = 0;

  *(v67 + v72) = 1;
  *(v67 + v73) = 1;
  v78 = v154;
  v79 = v67 + v154;
  v152 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88A60, &unk_284FE5D58);
  v81 = v80;
  *v79 = 0;
  *(v79 + 8) = 0xE000000000000000;
  *(v79 + 17) = 186;
  *(v79 + 19) = 0;
  sub_23DB6EA7C();
  v82 = v63[12];
  *(v79 + v82) = 1;
  v83 = v63[13];
  *(v79 + v83) = 1;
  v84 = v156;
  v76(v79 + v63[14], 1, 1, v156);
  v85 = (v79 + v63[15]);
  *v85 = 0;
  v85[1] = 0;
  *v79 = v152;
  *(v79 + 8) = v81;

  *(v79 + 16) = 33;
  *(v79 + 19) = 0;
  *v85 = 0;
  v85[1] = 0;

  *(v79 + v82) = 1;
  *(v79 + v83) = 1;
  v152 = 2 * v78;
  v86 = v67 + 2 * v78;
  v87 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88A90, &unk_284FE5D80);
  v89 = v88;
  *v86 = 0;
  *(v86 + 8) = 0xE000000000000000;
  *(v86 + 17) = 186;
  *(v86 + 19) = 0;
  sub_23DB6EA7C();
  v90 = v63[12];
  *(v86 + v90) = 1;
  v91 = v63[13];
  *(v86 + v91) = 1;
  v92 = v84;
  v93 = v153;
  (v153)(v86 + v63[14], 1, 1, v92);
  v94 = (v86 + v63[15]);
  *v94 = 0;
  v94[1] = 0;
  *v86 = v87;
  *(v86 + 8) = v89;

  *(v86 + 16) = 50;
  *(v86 + 19) = 0;
  *v94 = 0;
  v94[1] = 0;

  *(v86 + v90) = 1;
  *(v86 + v91) = 1;
  v95 = v67 + v152 + v154;
  v96 = v157;
  v97 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88AC0, &unk_284FE5DA8);
  v154 = v98;
  *v95 = 0;
  *(v95 + 8) = 0xE000000000000000;
  *(v95 + 17) = 186;
  *(v95 + 19) = 0;
  sub_23DB6EA7C();
  v99 = v63[12];
  *(v95 + v99) = 1;
  v100 = v63[13];
  *(v95 + v100) = 1;
  v93(v95 + v63[14], 1, 1, v156);
  v101 = (v95 + v63[15]);
  *v101 = 0;
  v101[1] = 0;
  v102 = v154;
  *v95 = v97;
  *(v95 + 8) = v102;

  *(v95 + 16) = 48;
  *(v95 + 19) = 0;
  *v101 = 0;
  v101[1] = 0;

  *(v95 + v99) = 1;
  *(v95 + v100) = 1;
  v103 = v67 + v149;
  v104 = v96;
  v105 = sub_23DA9B4E0(0xD000000000000021, 0x800000023DB88AF0, &unk_284FE5DD0);
  v107 = v106;
  *v103 = 0;
  *(v103 + 8) = 0xE000000000000000;
  *(v103 + 17) = 186;
  *(v103 + 19) = 0;
  sub_23DB6EA7C();
  v108 = v63[12];
  *(v103 + v108) = 1;
  v109 = v63[13];
  *(v103 + v109) = 1;
  (v153)(v103 + v63[14], 1, 1, v156);
  v110 = (v103 + v63[15]);
  *v110 = 0;
  v110[1] = 0;
  *v103 = v105;
  *(v103 + 8) = v107;

  *(v103 + 16) = 34;
  *(v103 + 19) = 0;
  *v110 = 0;
  v110[1] = 0;

  *(v103 + v108) = 1;
  *(v103 + v109) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v111 = v151;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v112 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v111 + v112) = v150;
  v113 = v111;

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v104;
  v116 = v104;
  v117 = (v113 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  *v117 = sub_23DA9E6D0;
  v117[1] = v115;
  swift_retain_n();

  sub_23DA18BA0(v118, v119);

  v120 = swift_allocObject();
  swift_weakInit();

  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v116;
  v122 = (v113 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v122 = sub_23DA9E6D8;
  v122[1] = v121;

  return v113;
}

uint64_t sub_23DA9313C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v80 = *(v0 - 8);
  v81 = v0;
  MEMORY[0x28223BE20](v0);
  v79 = &v55 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  v74 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v55 - v5;
  *&v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v55 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = sub_23DB6EA8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = sub_23DA9BC60(0xD00000000000002BLL, 0x800000023DB88900);
  v67 = v24;
  v68 = v23;
  v25 = sub_23DA9BC60(0xD00000000000002ALL, 0x800000023DB88930);
  v65 = v26;
  v66 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v71 = v19;
  v72 = v15;
  v28 = *(v15 + 16);
  v70 = v22;
  v73 = v14;
  v61 = v15 + 16;
  v60 = v28;
  v28(v19, v22, v14);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v30 = v10;
  v57 = *(v11 + 32);
  v57(v27 + v29, v13, v10);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v82 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v7 + 32))(v27 + v33, v9, v58);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v82 = 0;
  v35 = v59;
  sub_23DB6EECC();
  (*(v62 + 32))(v27 + v34, v35, v63);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v56 = v30;
  v37 = v57;
  v57(v27 + v36, v13, v30);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v63 = xmmword_23DB74320;
  v82 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v64;
  sub_23DB6EECC();
  v40 = v76;
  v41 = *(v75 + 32);
  v41(v27 + v38, v39, v76);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v82 = v63;
  sub_23DB6EECC();
  v41(v27 + v42, v39, v40);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v37(v27 + v43, v13, v56);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  v45 = v74;
  sub_23DB6EECC();
  (*(v77 + 32))(v27 + v44, v45, v78);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v82 = 0uLL;
  sub_23DB6EECC();
  v41(v27 + v46, v39, v40);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v82 = nullsub_1;
  *(&v82 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v27 + v47, v48, v81);
  v49 = v69;
  v50 = v71;
  v51 = v73;
  v60(v69, v71, v73);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v68, v67, v66, v65, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v72 + 8);
  v53(v50, v51);
  v53(v70, v51);
  return v52;
}

uint64_t sub_23DA939B8()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v122 = v1;
  v123 = v2;
  MEMORY[0x28223BE20](v1);
  v127 = (&v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v126 = (&v95 - v5);
  MEMORY[0x28223BE20](v6);
  v125 = (&v95 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x28223BE20](v8);
  v119 = &v95 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v95 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v109 = *(v112 - 1);
  MEMORY[0x28223BE20](v112);
  v108 = &v95 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v95 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v95 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v131 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v15 = &v95 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v17 = &v95 - v16;
  v18 = sub_23DB6EA8C();
  v130 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v113 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v95 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v95 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = &v95 - v26;
  v107 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB88750);
  v106 = v28;
  sub_23DA7194C(0, &v132);
  v29 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v29;
  v124 = v0;
  v102 = sub_23DA9B4E0(0xD000000000000020, 0x800000023DB88780, inited);
  v101 = v31;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOExplanation(0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v34 = MEMORY[0x277D84F90];
  *&v132 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  v114[4](v32 + v33, v17, v116);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v36 = *(v131 + 32);
  v111 = v15;
  v131 += 32;
  v95 = v36;
  v36(v32 + v35, v15, v128);
  v37 = v130 + 16;
  v38 = *(v130 + 16);
  v110 = v27;
  v38(v24, v27, v18);
  v114 = v24;
  v116 = v18;
  v98 = v37;
  v97 = v38;
  v38(v129, v24, v18);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v132) = 0;
  v40 = v96;
  sub_23DB6EECC();
  v41 = *(v99 + 32);
  v42 = v40;
  v43 = v40;
  v44 = v100;
  v41(v32 + v39, v43);
  if (v34 >> 62 && sub_23DB70C3C())
  {
    v45 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  *(v32 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v45;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v132 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v47 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v32 + v46, v47, v105);
  *(v32 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v34;
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v132 = 0;
  v49 = v108;
  sub_23DB6EECC();
  (*(v109 + 32))(v32 + v48, v49, v112);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v132) = 0;
  sub_23DB6EECC();
  (v41)(v32 + v50, v42, v44);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v109 = xmmword_23DB74320;
  v132 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v112 = v41;
  v52 = v115;
  sub_23DB6EECC();
  v53 = *(v117 + 32);
  v54 = v118;
  v53(v32 + v51, v52, v118);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v132 = v109;
  sub_23DB6EECC();
  v53(v32 + v55, v52, v54);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v132) = 0;
  sub_23DB6EECC();
  v112(v32 + v56, v42, v44);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  v58 = v111;
  sub_23DB6EECC();
  v95(v32 + v57, v58, v128);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v132 = 0uLL;
  sub_23DB6EECC();
  v53(v32 + v59, v52, v54);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v132 = nullsub_1;
  *(&v132 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v61 = v119;
  sub_23DB6EECC();
  (*(v120 + 32))(v32 + v60, v61, v121);
  v62 = v113;
  v63 = v129;
  v64 = v116;
  v97(v113, v129, v116);
  v65 = Page.init(id:title:text:subPages:iconName:)(v62, v107, v106, v102, v101, MEMORY[0x277D84F90], 0, 0);
  v66 = *(v130 + 8);
  v66(v110, v64);
  v66(v63, v64);
  v66(v114, v64);
  v67 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB887B0);
  v69 = v68;
  v70 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB887E0);
  v72 = v71;
  v73 = v125;
  sub_23DB6EA7C();
  *v73 = v67;
  v73[1] = v69;
  v73[2] = v70;
  v73[3] = v72;
  v74 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB88810);
  v76 = v75;
  v77 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB88840);
  v79 = v78;
  v80 = v126;
  sub_23DB6EA7C();
  *v80 = v74;
  v80[1] = v76;
  v80[2] = v77;
  v80[3] = v79;
  v81 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB88870);
  v83 = v82;
  v84 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB888A0);
  v86 = v85;
  v87 = v127;
  sub_23DB6EA7C();
  *v87 = v81;
  v87[1] = v83;
  v87[2] = v84;
  v87[3] = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v88 = *(v123 + 72);
  v89 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_23DB76A80;
  sub_23DA9DDB8(v73, v90 + v89, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v80, v90 + v89 + v88, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v87, v90 + v89 + 2 * v88, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v132 = v90;

  sub_23DB6EF1C();
  v91 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB888D0);
  v93 = v92;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v132 = v91;
  *(&v132 + 1) = v93;

  sub_23DB6EF1C();
  sub_23DA9DE28(v87, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v80, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v73, type metadata accessor for HeaderWithBody);
  return v65;
}

uint64_t sub_23DA947FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v107 = *(v1 - 8);
  v108 = v1;
  MEMORY[0x28223BE20](v1);
  v106 = &v81 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v102 = &v81 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v100 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v81 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v91 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v88 = &v81 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v81 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v9 = &v81 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v10 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v12 = &v81 - v11;
  v13 = sub_23DB6EA8C();
  v109 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v95 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v81 - v22;
  v93 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB886B0);
  v92 = v24;
  v110 = v0;
  v90 = sub_23DA9B4E0(0xD00000000000001ELL, 0x800000023DB886D0, &unk_284FE5D08);
  v89 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOKeyboardCommand(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v28 = MEMORY[0x277D84F90];
  *&v112 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v10 + 32))(v26 + v27, v12, v101);
  v29 = v109 + 16;
  v30 = *(v109 + 16);
  v96 = v23;
  v30(v20, v23, v13);
  v98 = v17;
  v97 = v20;
  v101 = v13;
  v84 = v29;
  v83 = v30;
  v30(v17, v20, v13);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  v32 = *(v81 + 32);
  v33 = v9;
  v34 = v82;
  v32(v26 + v31, v9);
  if (v28 >> 62 && sub_23DB70C3C())
  {
    v35 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v35;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v112 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v37 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v26 + v36, v37, v87);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v28;
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v112 = 0;
  v39 = v88;
  sub_23DB6EECC();
  (*(v91 + 32))(v26 + v38, v39, v94);
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  (v32)(v26 + v40, v9, v34);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v91 = xmmword_23DB74320;
  v112 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v42 = v99;
  sub_23DB6EECC();
  v94 = v32;
  v43 = *(v100 + 32);
  v44 = v103;
  v43(v26 + v41, v42, v103);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v112 = v91;
  sub_23DB6EECC();
  v43(v26 + v45, v42, v44);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  v94(v26 + v46, v33, v34);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  v48 = v102;
  sub_23DB6EECC();
  (*(v104 + 32))(v26 + v47, v48, v105);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v112 = 0uLL;
  sub_23DB6EECC();
  v43(v26 + v49, v42, v44);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v112 = nullsub_1;
  *(&v112 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v51 = v106;
  sub_23DB6EECC();
  (*(v107 + 32))(v26 + v50, v51, v108);
  v52 = v95;
  v53 = v98;
  v54 = v101;
  v83(v95, v98, v101);
  v55 = Page.init(id:title:text:subPages:iconName:)(v52, v93, v92, v90, v89, MEMORY[0x277D84F90], 0, 0);
  v56 = *(v109 + 8);
  v56(v53, v54);
  v56(v97, v54);
  v56(v96, v54);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v57 = (type metadata accessor for CommandToPractice(0) - 8);
  v58 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_23DB73BA0;
  v60 = v59 + v58;

  v61 = sub_23DA9B4E0(0xD000000000000027, 0x800000023DB886F0, &unk_284FE5D30);
  v63 = v62;
  *v60 = 0;
  *(v60 + 8) = 0xE000000000000000;
  *(v60 + 17) = 186;
  *(v60 + 19) = 0;
  sub_23DB6EA7C();
  v64 = v57[12];
  *(v60 + v64) = 1;
  v65 = v57[13];
  *(v60 + v65) = 1;
  v66 = v57[14];
  v67 = type metadata accessor for KeyboardKey(0);
  (*(*(v67 - 8) + 56))(v60 + v66, 1, 1, v67);
  v68 = (v60 + v57[15]);
  *v68 = 0;
  v68[1] = 0;
  *v60 = v61;
  *(v60 + 8) = v63;

  *(v60 + 16) = 51;
  *(v60 + 19) = 0;
  *v68 = 0;
  v68[1] = 0;

  *(v60 + v64) = 1;
  *(v60 + v65) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v55 + v69) = v59;

  LOBYTE(v111) = 51;
  v70 = sub_23DA9CB90();
  swift_getKeyPath();
  swift_getKeyPath();
  v111 = v70;

  sub_23DB6EF1C();
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = (v55 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v72 = sub_23DA9DC40;
  v72[1] = v71;

  v73 = (v55 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v73 = sub_23DA9E5CC;
  v73[1] = 0;

  v74 = swift_allocObject();
  swift_weakInit();

  v75 = swift_allocObject();
  swift_weakInit();
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  *(v76 + 24) = v75;
  v77 = (v55 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v78 = *v77;
  v79 = v77[1];
  *v77 = sub_23DA9E6E4;
  v77[1] = v76;

  sub_23DA18BA0(v78, v79);

  return v55;
}

void sub_23DA95684()
{
  if (qword_27E2FBBD0 == -1)
  {
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      return;
    }
  }

  else
  {
    swift_once();
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      return;
    }
  }

  v0 = objc_opt_self();
  v1 = sub_23DB7087C();
  [v0 triggerEventCommand_];
}

uint64_t sub_23DA9574C()
{
  v1 = v0;
  v2 = type metadata accessor for HeaderWithBody(0);
  v107 = *(v2 - 8);
  v114 = v107;
  MEMORY[0x28223BE20](v2);
  v112 = (&v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v113 = (&v103 - v5);
  MEMORY[0x28223BE20](v6);
  v8 = (&v103 - v7);
  v9 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88450);
  v14 = v13;
  sub_23DA7194C(0, &v115);
  v15 = v115;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  v109 = xmmword_23DB73BA0;
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v15;
  v17 = sub_23DA9B4E0(0xD00000000000001FLL, 0x800000023DB88480, inited);
  v19 = v18;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOWithText(0);
  swift_allocObject();
  v111 = sub_23DA2D914(v11, v12, v14, v17, v19, MEMORY[0x277D84F90], 0, 0);
  v106 = "tutorial.vo.rotor.practice.text";
  v20 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB884A0);
  v22 = v21;
  v23 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB884D0);
  v25 = v24;
  v26 = v8;
  sub_23DB6EA7C();
  *v8 = v20;
  v8[1] = v22;
  v8[2] = v23;
  v8[3] = v25;
  v108 = v8;
  v27 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB88500);
  v29 = v28;
  v30 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB88530);
  v32 = v31;
  v33 = v113;
  sub_23DB6EA7C();
  *v33 = v27;
  v33[1] = v29;
  v33[2] = v30;
  v33[3] = v32;
  v34 = sub_23DA9BC60(0xD000000000000023, 0x800000023DB88560);
  v36 = v35;
  v37 = sub_23DA9BC60(0xD000000000000021, 0x800000023DB88590);
  v39 = v38;
  v40 = v112;
  sub_23DB6EA7C();
  *v40 = v34;
  v40[1] = v36;
  v40[2] = v37;
  v40[3] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v41 = *(v107 + 9);
  v42 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23DB76A80;
  v44 = v43 + v42;
  v107 = type metadata accessor for HeaderWithBody;
  sub_23DA9DDB8(v26, v44, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v33, v44 + v41, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v40, v44 + 2 * v41, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v43;

  sub_23DB6EF1C();
  v45 = sub_23DA9BC60(0xD000000000000023, v106 | 0x8000000000000000);
  v47 = v46;
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v45;
  v116 = v47;

  sub_23DB6EF1C();
  v48 = sub_23DA9BC60(0xD000000000000024, 0x800000023DB885C0);
  v50 = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v48;
  v116 = v50;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v115) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v51 = (type metadata accessor for CommandToPractice(0) - 8);
  v52 = *v51;
  v114 = *(*v51 + 72);
  v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v54 = swift_allocObject();
  v106 = v54;
  *(v54 + 16) = xmmword_23DB7A0B0;
  v55 = v54 + v53;
  sub_23DA7194C(0, &v115);
  LOBYTE(v48) = v115;
  v56 = swift_initStackObject();
  *(v56 + 16) = v109;
  *(v56 + 32) = v48;
  v105 = v1;
  v57 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB885F0, v56);
  v104 = v58;
  swift_setDeallocating();
  *v55 = 0;
  *(v55 + 8) = 0xE000000000000000;
  *(v55 + 17) = 186;
  *(v55 + 19) = 0;
  sub_23DB6EA7C();
  v59 = v51[12];
  *(v55 + v59) = 1;
  v60 = v51[13];
  *(v55 + v60) = 1;
  v61 = v51[14];
  *&v109 = type metadata accessor for KeyboardKey(0);
  v62 = *(v109 - 8);
  v63 = *(v62 + 56);
  v64 = v62 + 56;
  v63(v55 + v61, 1, 1, v109);
  v110 = v64;
  v65 = (v55 + v51[15]);
  *v65 = 0;
  v65[1] = 0;
  v66 = v104;
  *v55 = v57;
  *(v55 + 8) = v66;

  *(v55 + 16) = 62;
  *(v55 + 19) = 1;
  *v65 = 0;
  v65[1] = 0;

  *(v55 + v59) = 1;
  *(v55 + v60) = 1;
  v67 = v114 + v55;
  v68 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB88620, &unk_284FE5CB8);
  v70 = v69;
  *v67 = 0;
  *(v67 + 1) = 0xE000000000000000;
  *(v67 + 17) = 186;
  v67[19] = 0;
  sub_23DB6EA7C();
  v71 = v51[12];
  v67[v71] = 1;
  v72 = v51[13];
  v67[v72] = 1;
  v73 = v109;
  v63(&v67[v51[14]], 1, 1, v109);
  v74 = &v67[v51[15]];
  *v74 = 0;
  *(v74 + 1) = 0;
  *v67 = v68;
  *(v67 + 1) = v70;

  v67[16] = 51;
  v67[19] = 0;
  *v74 = 0;
  *(v74 + 1) = 0;

  v67[v71] = 1;
  v67[v72] = 1;
  v104 = 2 * v114;
  v75 = v55 + 2 * v114;
  v76 = v105;
  v103 = sub_23DA9BC60(0xD000000000000025, 0x800000023DB88650);
  v78 = v77;
  *v75 = 0;
  *(v75 + 8) = 0xE000000000000000;
  *(v75 + 17) = 186;
  *(v75 + 19) = 0;
  sub_23DB6EA7C();
  v79 = v51[12];
  *(v75 + v79) = 1;
  v80 = v51[13];
  *(v75 + v80) = 1;
  v63(v75 + v51[14], 1, 1, v73);
  v81 = (v75 + v51[15]);
  *v81 = 0;
  v81[1] = 0;
  *v75 = v103;
  *(v75 + 8) = v78;

  *(v75 + 16) = 30;
  *(v75 + 19) = 0;
  *v81 = 0;
  v81[1] = 0;

  *(v75 + v79) = 1;
  *(v75 + v80) = 1;
  v82 = v114 + v104 + v55;
  v83 = v76;
  v84 = sub_23DA9B4E0(0xD000000000000025, 0x800000023DB88680, &unk_284FE5CE0);
  v86 = v85;
  *v82 = 0;
  *(v82 + 1) = 0xE000000000000000;
  *(v82 + 17) = 186;
  v82[19] = 0;
  sub_23DB6EA7C();
  v87 = v51[12];
  v82[v87] = 1;
  v88 = v51[13];
  v82[v88] = 1;
  v63(&v82[v51[14]], 1, 1, v109);
  v89 = &v82[v51[15]];
  *v89 = 0;
  *(v89 + 1) = 0;
  *v82 = v84;
  *(v82 + 1) = v86;

  v82[16] = 52;
  v82[19] = 0;
  *v89 = 0;
  *(v89 + 1) = 0;

  v82[v87] = 1;
  v82[v88] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v90 = v111;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v91 = v107;
  sub_23DA9DE28(v112, v107);
  sub_23DA9DE28(v113, v91);
  sub_23DA9DE28(v108, v91);
  v92 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v90 + v92) = v106;

  v93 = swift_allocObject();
  swift_weakInit();
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  *(v94 + 24) = v83;
  v95 = v83;
  v96 = (v90 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  *v96 = sub_23DA9E6D0;
  v96[1] = v94;
  swift_retain_n();

  sub_23DA18BA0(v97, v98);

  v99 = swift_allocObject();
  swift_weakInit();

  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v95;
  v101 = (v90 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v101 = sub_23DA9E6D4;
  v101[1] = v100;

  return v90;
}

uint64_t sub_23DA963A8(unint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = (&v44 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v44 - v8);
  if (qword_27E2FBBD0 != -1)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_4;
  }

LABEL_3:
  v10 = objc_opt_self();
  v11 = sub_23DB7087C();
  [v10 triggerEventCommand_];

LABEL_4:
  while (1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v14 = result;
    swift_beginAccess();
    v53 = v13;
    v15 = *(v14 + v13);
    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();

    v51 = v17;
    v52 = KeyPath;
    v50 = sub_23DB6EEFC();
    v48 = v18;
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v54 = v14;
    v49 = v19;
    v47 = v20;
    v46 = sub_23DB6EEFC();
    v45 = v21;

    v22 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23DAC8B24(v15);
    }

    v23 = 0;
    v24 = (v2 + 7);
    v25 = v15[2];
    v2 += 6;
    if (!v25)
    {
LABEL_8:
      v26 = 1;
      v23 = v25;
      goto LABEL_12;
    }

    while ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 >= v15[2])
      {
        goto LABEL_22;
      }

      v27 = *(type metadata accessor for CommandToPractice(0) - 8);
      v56 = v23 + 1;
      v28 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23;
      v29 = *(v1 + 48);
      v30 = v2;
      v31 = v9;
      v32 = v24;
      v33 = v1;
      v34 = v25;
      v35 = v22;
      v36 = v6;
      v37 = v15;
      v38 = v55;
      *v55 = v23;
      sub_23DA9DDB8(v28, v38 + v29, type metadata accessor for CommandToPractice);
      v39 = v38;
      v15 = v37;
      v6 = v36;
      v22 = v35;
      v25 = v34;
      v1 = v33;
      v24 = v32;
      v9 = v31;
      v2 = v30;
      sub_23DA17A54(v39, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v26 = 0;
      v23 = v56;
LABEL_12:
      (*v24)(v6, v26, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {

        *v45 = 0;
        *v48 = 0;
        v46(v57, 0);

        v50(v58, 0);

        type metadata accessor for Page.Practice(0);
        sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
        v43 = v54;
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v43 + v53) = v22;
      }

      v40 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

      if (v40 >= v22[2])
      {
        goto LABEL_20;
      }

      v41 = *(type metadata accessor for CommandToPractice(0) - 8);
      v42 = v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      *(v42 + 18) = 0;
      *(v42 + 19) = v40 == 0;
      sub_23DA9DE28(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v23 == v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_23DA969C8()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v127 = v1;
  v128 = v2;
  MEMORY[0x28223BE20](v1);
  v132 = (&v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v131 = (&v97 - v5);
  MEMORY[0x28223BE20](v6);
  v130 = (&v97 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v125 = *(v8 - 8);
  v126 = v8;
  MEMORY[0x28223BE20](v8);
  v124 = &v97 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = &v97 - v10;
  *&v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v97 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v97 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v97 - v13;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v14 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v16 = &v97 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v17 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v19 = &v97 - v18;
  v20 = sub_23DB6EA8C();
  v134 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v116 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v97 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v97 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v110 = sub_23DA9BC60(0xD000000000000019, 0x800000023DB88350);
  v109 = v31;
  v129 = v0;
  v108 = sub_23DA9BC60(0xD000000000000018, 0x800000023DB88370);
  v107 = v32;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOExplanation(0);
  v33 = swift_allocObject();
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  *&v135 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v17 + 32))(v33 + v34, v19, v122);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v36 = *(v14 + 32);
  v114 = v16;
  v117 = v14 + 32;
  v98 = v36;
  v36(v33 + v35, v16, v133);
  v37 = v134 + 16;
  v38 = *(v134 + 16);
  v113 = v30;
  v38(v27, v30, v20);
  v118 = v27;
  v119 = v24;
  v122 = v20;
  v103 = v37;
  v102 = v38;
  v38(v24, v27, v20);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v135) = 0;
  v40 = v99;
  sub_23DB6EECC();
  v41 = *(v100 + 32);
  v42 = v40;
  v43 = v40;
  v44 = v101;
  v41(v33 + v39, v43);
  v45 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v46 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v46 = MEMORY[0x277D84FA0];
  }

  *(v33 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v46;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v135 = v45;
  v48 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v49 = v104;
  sub_23DB6EECC();
  (*(v105 + 32))(v33 + v47, v49, v106);
  *(v33 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v48;
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v135 = 0;
  v51 = v111;
  sub_23DB6EECC();
  (*(v112 + 32))(v33 + v50, v51, v115);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v135) = 0;
  sub_23DB6EECC();
  (v41)(v33 + v52, v42, v44);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v115 = xmmword_23DB74320;
  v135 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v54 = v120;
  sub_23DB6EECC();
  v55 = *(v121 + 4);
  v121 = v41;
  v56 = v123;
  v55(v33 + v53, v54, v123);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v135 = v115;
  sub_23DB6EECC();
  v55(v33 + v57, v54, v56);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v135) = 0;
  sub_23DB6EECC();
  v121(v33 + v58, v42, v44);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  v60 = v114;
  sub_23DB6EECC();
  v98(v33 + v59, v60, v133);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v135 = 0uLL;
  sub_23DB6EECC();
  v55(v33 + v61, v54, v56);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v135 = nullsub_1;
  *(&v135 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v63 = v124;
  sub_23DB6EECC();
  (*(v125 + 32))(v33 + v62, v63, v126);
  v64 = v116;
  v65 = v119;
  v66 = v122;
  v102(v116, v119, v122);
  v67 = Page.init(id:title:text:subPages:iconName:)(v64, v110, v109, v108, v107, MEMORY[0x277D84F90], 0, 0);
  v68 = *(v134 + 8);
  v68(v113, v66);
  v68(v65, v66);
  v68(v118, v66);
  v69 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88390);
  v71 = v70;
  v72 = sub_23DA9B4E0(0xD00000000000001ALL, 0x800000023DB883B0, &unk_284FE5C68);
  v74 = v73;
  v75 = v130;
  sub_23DB6EA7C();
  *v75 = v69;
  v75[1] = v71;
  v75[2] = v72;
  v75[3] = v74;
  v76 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB883D0);
  v78 = v77;
  v79 = sub_23DA9BC60(0xD00000000000001ALL, 0x800000023DB883F0);
  v81 = v80;
  v82 = v131;
  sub_23DB6EA7C();
  *v82 = v76;
  v82[1] = v78;
  v82[2] = v79;
  v82[3] = v81;
  v83 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88410);
  v85 = v84;
  v86 = sub_23DA9B4E0(0xD00000000000001ALL, 0x800000023DB88430, &unk_284FE5C90);
  v88 = v87;
  v89 = v132;
  sub_23DB6EA7C();
  *v89 = v83;
  v89[1] = v85;
  v89[2] = v86;
  v89[3] = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v90 = *(v128 + 72);
  v91 = (*(v128 + 80) + 32) & ~*(v128 + 80);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_23DB76A80;
  sub_23DA9DDB8(v75, v92 + v91, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v82, v92 + v91 + v90, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v89, v92 + v91 + 2 * v90, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v135 = v92;

  sub_23DB6EF1C();
  v93 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v95 = v94;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v135 = v93;
  *(&v135 + 1) = v95;

  sub_23DB6EF1C();
  sub_23DA9DE28(v89, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v82, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v75, type metadata accessor for HeaderWithBody);
  return v67;
}

uint64_t sub_23DA977AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v80 = *(v0 - 8);
  v81 = v0;
  MEMORY[0x28223BE20](v0);
  v79 = &v55 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  v74 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v55 - v5;
  *&v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v55 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = sub_23DB6EA8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = sub_23DA9BC60(0xD000000000000028, 0x800000023DB882F0);
  v67 = v24;
  v68 = v23;
  v25 = sub_23DA9BC60(0xD000000000000027, 0x800000023DB88320);
  v65 = v26;
  v66 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v71 = v19;
  v72 = v15;
  v28 = *(v15 + 16);
  v70 = v22;
  v73 = v14;
  v61 = v15 + 16;
  v60 = v28;
  v28(v19, v22, v14);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v30 = v10;
  v57 = *(v11 + 32);
  v57(v27 + v29, v13, v10);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v82 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v7 + 32))(v27 + v33, v9, v58);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v82 = 0;
  v35 = v59;
  sub_23DB6EECC();
  (*(v62 + 32))(v27 + v34, v35, v63);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v56 = v30;
  v37 = v57;
  v57(v27 + v36, v13, v30);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v63 = xmmword_23DB74320;
  v82 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v64;
  sub_23DB6EECC();
  v40 = v76;
  v41 = *(v75 + 32);
  v41(v27 + v38, v39, v76);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v82 = v63;
  sub_23DB6EECC();
  v41(v27 + v42, v39, v40);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v37(v27 + v43, v13, v56);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  v45 = v74;
  sub_23DB6EECC();
  (*(v77 + 32))(v27 + v44, v45, v78);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v82 = 0uLL;
  sub_23DB6EECC();
  v41(v27 + v46, v39, v40);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v82 = nullsub_1;
  *(&v82 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v27 + v47, v48, v81);
  v49 = v69;
  v50 = v71;
  v51 = v73;
  v60(v69, v71, v73);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v68, v67, v66, v65, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v72 + 8);
  v53(v50, v51);
  v53(v70, v51);
  return v52;
}

uint64_t sub_23DA98028()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v122 = v1;
  v123 = v2;
  MEMORY[0x28223BE20](v1);
  v127 = (&v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v126 = (&v95 - v5);
  MEMORY[0x28223BE20](v6);
  v125 = (&v95 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x28223BE20](v8);
  v119 = &v95 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v95 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v109 = *(v112 - 1);
  MEMORY[0x28223BE20](v112);
  v108 = &v95 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v95 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v95 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v131 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v15 = &v95 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v17 = &v95 - v16;
  v18 = sub_23DB6EA8C();
  v130 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v113 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v95 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v95 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = &v95 - v26;
  v107 = sub_23DA9BC60(0xD00000000000001BLL, 0x800000023DB881F0);
  v106 = v28;
  sub_23DA7194C(0, &v132);
  v29 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v29;
  v124 = v0;
  v102 = sub_23DA9B4E0(0xD00000000000001ALL, 0x800000023DB88210, inited);
  v101 = v31;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOExplanation(0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v34 = MEMORY[0x277D84F90];
  *&v132 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  v114[4](v32 + v33, v17, v116);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v36 = *(v131 + 32);
  v111 = v15;
  v131 += 32;
  v95 = v36;
  v36(v32 + v35, v15, v128);
  v37 = v130 + 16;
  v38 = *(v130 + 16);
  v110 = v27;
  v38(v24, v27, v18);
  v114 = v24;
  v116 = v18;
  v98 = v37;
  v97 = v38;
  v38(v129, v24, v18);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v132) = 0;
  v40 = v96;
  sub_23DB6EECC();
  v41 = *(v99 + 32);
  v42 = v40;
  v43 = v40;
  v44 = v100;
  v41(v32 + v39, v43);
  if (v34 >> 62 && sub_23DB70C3C())
  {
    v45 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  *(v32 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v45;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v132 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v47 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v32 + v46, v47, v105);
  *(v32 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v34;
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v132 = 0;
  v49 = v108;
  sub_23DB6EECC();
  (*(v109 + 32))(v32 + v48, v49, v112);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v132) = 0;
  sub_23DB6EECC();
  (v41)(v32 + v50, v42, v44);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v109 = xmmword_23DB74320;
  v132 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v112 = v41;
  v52 = v115;
  sub_23DB6EECC();
  v53 = *(v117 + 32);
  v54 = v118;
  v53(v32 + v51, v52, v118);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v132 = v109;
  sub_23DB6EECC();
  v53(v32 + v55, v52, v54);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v132) = 0;
  sub_23DB6EECC();
  v112(v32 + v56, v42, v44);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  v58 = v111;
  sub_23DB6EECC();
  v95(v32 + v57, v58, v128);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v132 = 0uLL;
  sub_23DB6EECC();
  v53(v32 + v59, v52, v54);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v132 = nullsub_1;
  *(&v132 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v61 = v119;
  sub_23DB6EECC();
  (*(v120 + 32))(v32 + v60, v61, v121);
  v62 = v113;
  v63 = v129;
  v64 = v116;
  v97(v113, v129, v116);
  v65 = Page.init(id:title:text:subPages:iconName:)(v62, v107, v106, v102, v101, MEMORY[0x277D84F90], 0, 0);
  v66 = *(v130 + 8);
  v66(v110, v64);
  v66(v63, v64);
  v66(v114, v64);
  v67 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB88230);
  v69 = v68;
  v70 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88250);
  v72 = v71;
  v73 = v125;
  sub_23DB6EA7C();
  *v73 = v67;
  v73[1] = v69;
  v73[2] = v70;
  v73[3] = v72;
  v74 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB88270);
  v76 = v75;
  v77 = sub_23DA9BC60(0xD00000000000001CLL, 0x800000023DB88290);
  v79 = v78;
  v80 = v126;
  sub_23DB6EA7C();
  *v80 = v74;
  v80[1] = v76;
  v80[2] = v77;
  v80[3] = v79;
  v81 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB882B0);
  v83 = v82;
  v84 = sub_23DA9B4E0(0xD00000000000001CLL, 0x800000023DB882D0, &unk_284FE5B00);
  v86 = v85;
  v87 = v127;
  sub_23DB6EA7C();
  *v87 = v81;
  v87[1] = v83;
  v87[2] = v84;
  v87[3] = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v88 = *(v123 + 72);
  v89 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_23DB76A80;
  sub_23DA9DDB8(v73, v90 + v89, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v80, v90 + v89 + v88, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v87, v90 + v89 + 2 * v88, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v132 = v90;

  sub_23DB6EF1C();
  v91 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v93 = v92;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v132 = v91;
  *(&v132 + 1) = v93;

  sub_23DB6EF1C();
  sub_23DA9DE28(v87, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v80, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v73, type metadata accessor for HeaderWithBody);
  return v65;
}

uint64_t sub_23DA98E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v119 = *(v1 - 8);
  v120 = v1;
  MEMORY[0x28223BE20](v1);
  v118 = &v94 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v94 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v111 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v109 = &v94 - v5;
  *&v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v94 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v107 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v123 = &v94 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v94 - v21;
  v106 = sub_23DA9BC60(0xD00000000000001DLL, 0x800000023DB88050);
  v105 = v23;
  v121 = v0;
  v104 = sub_23DA9B4E0(0xD00000000000001CLL, 0x800000023DB88070, &unk_284FE5C18);
  v103 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v124) = 0;
  sub_23DB6EECC();
  v27 = *(v9 + 32);
  v27(v25 + v26, v11, v8);
  v112 = v13;
  v28 = v13 + 16;
  v29 = *(v13 + 16);
  v108 = v22;
  v29(v19, v22, v12);
  v110 = v19;
  v113 = v12;
  v99 = v28;
  v98 = v29;
  v29(v123, v19, v12);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v124) = 0;
  sub_23DB6EECC();
  v122 = v8;
  v27(v25 + v30, v11, v8);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v124 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v95;
  sub_23DB6EECC();
  (*(v96 + 32))(v25 + v33, v34, v97);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v124 = 0;
  v36 = v100;
  sub_23DB6EECC();
  (*(v101 + 32))(v25 + v35, v36, v102);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v124) = 0;
  sub_23DB6EECC();
  v27(v25 + v37, v11, v122);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v102 = xmmword_23DB74320;
  v124 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v109;
  sub_23DB6EECC();
  v40 = *(v111 + 32);
  v41 = v115;
  v40(v25 + v38, v39, v115);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v124 = v102;
  sub_23DB6EECC();
  v40(v25 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v124) = 0;
  sub_23DB6EECC();
  v27(v25 + v43, v11, v122);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v124 = 0;
  *(&v124 + 1) = 0xE000000000000000;
  v45 = v114;
  sub_23DB6EECC();
  (*(v116 + 32))(v25 + v44, v45, v117);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v124 = 0uLL;
  sub_23DB6EECC();
  v40(v25 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v124 = nullsub_1;
  *(&v124 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v118;
  sub_23DB6EECC();
  (*(v119 + 32))(v25 + v47, v48, v120);
  v49 = v107;
  v50 = v123;
  v51 = v113;
  v98(v107, v123, v113);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v106, v105, v104, v103, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v112 + 8);
  v53(v50, v51);
  v53(v110, v51);
  v53(v108, v51);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v124) = 1;
  v119 = v52;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v54 = (type metadata accessor for CommandToPractice(0) - 8);
  v55 = *(*v54 + 72);
  v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v120 = 2 * v55;
  v57 = swift_allocObject();
  v122 = v57;
  *(v57 + 16) = xmmword_23DB76A80;
  v58 = v57 + v56;
  v59 = v121;
  v60 = sub_23DA9B4E0(0xD000000000000022, 0x800000023DB88090, &unk_284FE5C40);
  v116 = v61;
  v117 = v60;
  *v58 = 0;
  *(v58 + 8) = 0xE000000000000000;
  *(v58 + 17) = 186;
  *(v58 + 19) = 0;
  sub_23DB6EA7C();
  v62 = v54[12];
  *(v58 + v62) = 1;
  v63 = v54[13];
  *(v58 + v63) = 1;
  v64 = v54[14];
  v65 = type metadata accessor for KeyboardKey(0);
  v123 = *(*(v65 - 8) + 56);
  v118 = v65;
  (v123)(v58 + v64, 1, 1, v65);
  v66 = (v58 + v54[15]);
  *v66 = 0;
  v66[1] = 0;
  v67 = v116;
  *v58 = v117;
  *(v58 + 8) = v67;

  *(v58 + 16) = 58;
  *(v58 + 19) = 1;
  *v66 = 0;
  v66[1] = 0;

  *(v58 + v62) = 1;
  *(v58 + v63) = 1;
  v68 = v58 + v55;
  v69 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB880C0);
  v71 = v70;
  *v68 = 0;
  *(v68 + 8) = 0xE000000000000000;
  *(v68 + 17) = 186;
  *(v68 + 19) = 0;
  sub_23DB6EA7C();
  v72 = v54[12];
  *(v68 + v72) = 1;
  v73 = v54[13];
  *(v68 + v73) = 1;
  (v123)(v68 + v54[14], 1, 1, v65);
  v74 = (v68 + v54[15]);
  *v74 = 0;
  v74[1] = 0;
  *v68 = v69;
  *(v68 + 8) = v71;

  *(v68 + 16) = 30;
  *(v68 + 19) = 0;
  *v74 = 0;
  v74[1] = 0;

  *(v68 + v72) = 1;
  *(v68 + v73) = 1;
  v75 = v58 + v120;
  v76 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB880F0);
  v78 = v77;
  *v75 = 0;
  *(v75 + 8) = 0xE000000000000000;
  *(v75 + 17) = 186;
  *(v75 + 19) = 0;
  sub_23DB6EA7C();
  v79 = v54[12];
  *(v75 + v79) = 1;
  v80 = v54[13];
  *(v75 + v80) = 1;
  (v123)(v75 + v54[14], 1, 1, v118);
  v81 = (v75 + v54[15]);
  *v81 = 0;
  v81[1] = 0;
  *v75 = v76;
  *(v75 + 8) = v78;

  *(v75 + 16) = 32;
  *(v75 + 19) = 0;
  *v81 = 0;
  v81[1] = 0;

  *(v75 + v79) = 1;
  *(v75 + v80) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DA9DAAC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v82 = v119;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v83 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v82 + v83) = v122;

  v84 = swift_allocObject();
  swift_weakInit();
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = v59;
  v86 = v59;
  v87 = (v82 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  *v87 = sub_23DA9E6D0;
  v87[1] = v85;
  swift_retain_n();

  sub_23DA18BA0(v88, v89);

  v90 = swift_allocObject();
  swift_weakInit();

  v91 = swift_allocObject();
  *(v91 + 16) = v90;
  *(v91 + 24) = v86;
  v92 = (v82 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v92 = sub_23DA9E6D4;
  v92[1] = v91;

  return v82;
}

uint64_t sub_23DA99D58()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v114 = v1;
  v115 = v2;
  MEMORY[0x28223BE20](v1);
  v118 = (&v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v117 = (&v86 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v112 = *(v6 - 8);
  v113 = v6;
  MEMORY[0x28223BE20](v6);
  v111 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v109 = *(v8 - 8);
  v110 = v8;
  MEMORY[0x28223BE20](v8);
  v107 = &v86 - v9;
  *&v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v86 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v86 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v86 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v122 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v14 = &v86 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v16 = &v86 - v15;
  v17 = sub_23DB6EA8C();
  v121 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v105 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v86 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v86 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  v99 = sub_23DA9BC60(0xD00000000000001FLL, 0x800000023DB87F20);
  v98 = v27;
  sub_23DA7194C(0, &v123);
  v28 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A0, &unk_23DB7A340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = v28;
  v116 = v0;
  v94 = sub_23DA9B4E0(0xD00000000000001ELL, 0x800000023DB87F40, inited);
  v93 = v30;
  swift_setDeallocating();
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOExplanation(0);
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v33 = MEMORY[0x277D84F90];
  *&v123 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  v106[4](v31 + v32, v16, v108);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v35 = *(v122 + 32);
  v103 = v14;
  v122 += 32;
  v87 = v35;
  v35(v31 + v34, v14, v119);
  v36 = v121 + 16;
  v37 = *(v121 + 16);
  v102 = v26;
  v37(v23, v26, v17);
  v106 = v23;
  v108 = v17;
  v90 = v36;
  v89 = v37;
  v37(v120, v23, v17);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v123) = 0;
  v39 = v88;
  sub_23DB6EECC();
  v40 = *(v91 + 32);
  v41 = v39;
  v42 = v92;
  v40(v31 + v38, v39);
  if (v33 >> 62 && sub_23DB70C3C())
  {
    v43 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v43 = MEMORY[0x277D84FA0];
  }

  *(v31 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v43;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v123 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v45 = v95;
  sub_23DB6EECC();
  (*(v96 + 32))(v31 + v44, v45, v97);
  *(v31 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v33;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v123 = 0;
  v47 = v100;
  sub_23DB6EECC();
  (*(v101 + 32))(v31 + v46, v47, v104);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  (v40)(v31 + v48, v41, v42);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v104 = xmmword_23DB74320;
  v123 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v50 = v107;
  sub_23DB6EECC();
  v51 = *(v109 + 4);
  v109 = v40;
  v52 = v110;
  v51(v31 + v49, v50, v110);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v123 = v104;
  sub_23DB6EECC();
  v51(v31 + v53, v50, v52);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v109(v31 + v54, v41, v42);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  v56 = v103;
  sub_23DB6EECC();
  v87(v31 + v55, v56, v119);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v123 = 0uLL;
  sub_23DB6EECC();
  v51(v31 + v57, v50, v52);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v123 = nullsub_1;
  *(&v123 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v59 = v111;
  sub_23DB6EECC();
  (*(v112 + 32))(v31 + v58, v59, v113);
  v60 = v105;
  v61 = v120;
  v62 = v108;
  v89(v105, v120, v108);
  v63 = Page.init(id:title:text:subPages:iconName:)(v60, v99, v98, v94, v93, MEMORY[0x277D84F90], 0, 0);
  v64 = *(v121 + 8);
  v64(v102, v62);
  v64(v61, v62);
  v64(v106, v62);
  v65 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB87F60);
  v67 = v66;
  v68 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB87F90);
  v70 = v69;
  v71 = v117;
  sub_23DB6EA7C();
  *v71 = v65;
  v71[1] = v67;
  v71[2] = v68;
  v71[3] = v70;
  v72 = sub_23DA9BC60(0xD000000000000022, 0x800000023DB87FC0);
  v74 = v73;
  v75 = sub_23DA9B4E0(0xD000000000000020, 0x800000023DB87FF0, &unk_284FE5AD8);
  v77 = v76;
  v78 = v118;
  sub_23DB6EA7C();
  *v78 = v72;
  v78[1] = v74;
  v78[2] = v75;
  v78[3] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v79 = *(v115 + 72);
  v80 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_23DB78D60;
  sub_23DA9DDB8(v71, v81 + v80, type metadata accessor for HeaderWithBody);
  sub_23DA9DDB8(v78, v81 + v80 + v79, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v123 = v81;

  sub_23DB6EF1C();
  v82 = sub_23DA9BC60(0xD000000000000020, 0x800000023DB88020);
  v84 = v83;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v123 = v82;
  *(&v123 + 1) = v84;

  sub_23DB6EF1C();
  sub_23DA9DE28(v78, type metadata accessor for HeaderWithBody);
  sub_23DA9DE28(v71, type metadata accessor for HeaderWithBody);
  return v63;
}

uint64_t sub_23DA9AAE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v80 = *(v0 - 8);
  v81 = v0;
  MEMORY[0x28223BE20](v0);
  v79 = &v55 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  v74 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v55 - v5;
  *&v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v55 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = sub_23DB6EA8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = sub_23DA9BC60(0xD00000000000002ELL, 0x800000023DB87EC0);
  v67 = v24;
  v68 = v23;
  v25 = sub_23DA9B4E0(0xD00000000000002DLL, 0x800000023DB87EF0, &unk_284FE5AB0);
  v65 = v26;
  v66 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v71 = v19;
  v72 = v15;
  v28 = *(v15 + 16);
  v70 = v22;
  v73 = v14;
  v61 = v15 + 16;
  v60 = v28;
  v28(v19, v22, v14);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v30 = v10;
  v57 = *(v11 + 32);
  v57(v27 + v29, v13, v10);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v82 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v7 + 32))(v27 + v33, v9, v58);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v82 = 0;
  v35 = v59;
  sub_23DB6EECC();
  (*(v62 + 32))(v27 + v34, v35, v63);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v56 = v30;
  v37 = v57;
  v57(v27 + v36, v13, v30);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v63 = xmmword_23DB74320;
  v82 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v64;
  sub_23DB6EECC();
  v40 = v76;
  v41 = *(v75 + 32);
  v41(v27 + v38, v39, v76);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v82 = v63;
  sub_23DB6EECC();
  v41(v27 + v42, v39, v40);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v82) = 0;
  sub_23DB6EECC();
  v37(v27 + v43, v13, v56);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  v45 = v74;
  sub_23DB6EECC();
  (*(v77 + 32))(v27 + v44, v45, v78);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v82 = 0uLL;
  sub_23DB6EECC();
  v41(v27 + v46, v39, v40);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v82 = nullsub_1;
  *(&v82 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v27 + v47, v48, v81);
  v49 = v69;
  v50 = v71;
  v51 = v73;
  v60(v69, v71, v73);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v68, v67, v66, v65, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v72 + 8);
  v53(v50, v51);
  v53(v70, v51);
  return v52;
}

uint64_t sub_23DA9B36C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (!*MEMORY[0x277CE6CE8])
    {
      __break(1u);
      return result;
    }

    v6 = *MEMORY[0x277D76438];
    v7 = *MEMORY[0x277CE6CE8];
    UIAccessibilityPostNotification(v6, v7);
  }

  return sub_23DA9CBE4(a3, a4);
}

uint64_t sub_23DA9B3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6EB3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  MEMORY[0x23EEF4EF0](a1, a2);
  sub_23DB6EB2C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23DA9B4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v17 = a2;
    v18 = a1;
    v22 = MEMORY[0x277D84F90];
    sub_23DA9C6BC(0, v3, 0);
    v5 = v22;
    v6 = (a3 + 32);
    v7 = MEMORY[0x277D837D0];
    do
    {
      v8 = *v6++;
      LOBYTE(v19) = v8;
      v9 = sub_23DA9E6F0();
      v11 = v10;
      v22 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23DA9C6BC((v12 > 1), v13 + 1, 1);
        v5 = v22;
      }

      v20 = v7;
      v21 = sub_23DA40598();
      *&v19 = v9;
      *(&v19 + 1) = v11;
      *(v5 + 16) = v13 + 1;
      sub_23DA9CB50(&v19, v5 + 40 * v13 + 32);
      --v3;
    }

    while (v3);
    a2 = v17;
    a1 = v18;
  }

  sub_23DA9BC60(a1, a2);
  v14 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  v15 = sub_23DB708CC();

  return v15;
}

uint64_t sub_23DA9B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (*a4)(void, void, void)@<X8>)
{
  v50 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE180, &qword_23DB7A2D0);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE188, &unk_23DB7A2D8);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v43 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC220, &qword_23DB74260);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51 - 8);
  v46 = &v43 - v12;
  v13 = sub_23DB6E9BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = sub_23DB6EA1C();
  MEMORY[0x28223BE20](v20 - 8);
  v49 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a3;
  v23 = *(a3 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v43 = a1;
    v44 = a2;
    v45 = v19;
    v47 = v4;
    v54 = MEMORY[0x277D84F90];
    sub_23DA9C6DC(0, v23, 0);
    v24 = v54;
    v25 = (v22 + 32);
    do
    {
      v26 = *v25++;
      v56 = v26;
      sub_23DA9E6FC();
      v54 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_23DA9C6DC((v27 > 1), v28 + 1, 1);
        v24 = v54;
      }

      *(v24 + 16) = v28 + 1;
      (*(v14 + 32))(v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28, v16, v13);
      --v23;
    }

    while (v23);
    v29 = v50;
    a2 = v44;
    v19 = v45;
    a1 = v43;
  }

  else
  {
    v29 = v50;
  }

  sub_23DA9BC60(a1, a2);
  sub_23DB6EA0C();
  sub_23DB6E9CC();
  v30 = *(v24 + 16);
  if (v30)
  {
    v32 = *(v14 + 16);
    v31 = v14 + 16;
    v33 = v24 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v49 = (v48 + 48);
    v50 = v32;
    v34 = *(v31 + 56);
    v47 = (v31 - 8);
    v48 = v34;
    v44 = v31;
    v45 = v24;
    v32(v19, v33, v13);
    while (1)
    {
      v54 = 16421;
      v55 = 0xE200000000000000;
      v35 = sub_23DB6EB1C();
      v36 = v52;
      (*(*(v35 - 8) + 56))(v52, 1, 1, v35);
      sub_23DA9DAAC(&qword_27E2FC240, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
      sub_23DA16E70();
      sub_23DB6EA4C();
      v37 = v53;
      sub_23DA17988(v36, &qword_27E2FE180, &qword_23DB7A2D0);
      if ((*v49)(v37, 1, v51) == 1)
      {
        (*v47)(v19, v13);
        sub_23DA17988(v37, &qword_27E2FE188, &unk_23DB7A2D8);
      }

      else
      {
        v38 = v19;
        v39 = v29;
        v40 = v46;
        sub_23DA17A54(v37, v46, &qword_27E2FC220, &qword_23DB74260);
        sub_23DA17B80(&qword_27E2FC250, &qword_27E2FC220, &qword_23DB74260, MEMORY[0x277D83D30]);
        sub_23DB6E95C();
        v41 = v40;
        v29 = v39;
        v19 = v38;
        sub_23DA17988(v41, &qword_27E2FC220, &qword_23DB74260);
        (*v47)(v38, v13);
      }

      v33 += v48;
      if (!--v30)
      {
        break;
      }

      v50(v19, v33, v13);
    }
  }
}

uint64_t sub_23DA9BC60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v4 = sub_23DB7087C();

  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_23DB7087C();
  v7 = sub_23DB7087C();
  v8 = sub_23DB7087C();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23DB708BC();
  v12 = v11;

  v13 = v10 == a1 && v12 == a2;
  if (v13 || (sub_23DB70DBC()) && ((v14 = objc_opt_self(), v15 = [v14 currentDevice], v16 = objc_msgSend(v15, sel_userInterfaceIdiom), v15, !v16) || (v17 = objc_msgSend(v14, sel_currentDevice), v18 = objc_msgSend(v17, sel_userInterfaceIdiom), v17, v18 == 1)))
  {

    MEMORY[0x23EEF6D00](0x656E6F68702ELL, 0xE600000000000000);
    v19 = sub_23DB7087C();

    v20 = sub_23DB7087C();
    v21 = sub_23DB7087C();
    v22 = [v5 localizedStringForKey:v19 value:v20 table:v21];

    v10 = sub_23DB708BC();
  }

  else
  {
  }

  return v10;
}

uint64_t sub_23DA9BF1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v12);

  v5 = v12;
  if (v12)
  {
    if (v12 >> 62)
    {
      result = sub_23DB70C3C();
      v6 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x23EEF70C0](i, v5);
          }

          else
          {
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v12 = a2;
          v13 = a3;

          sub_23DB6EF1C();
          type metadata accessor for Page.Practice(0);
          if (swift_dynamicCastClass())
          {

            v8 = sub_23DA9BC60(0xD00000000000001ELL, 0x800000023DB87EA0);
            v10 = v9;
            swift_getKeyPath();
            swift_getKeyPath();
            v12 = v8;
            v13 = v10;
            sub_23DB6EF1C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23DA9C114()
{
}

uint64_t AXOnboardingModelVoiceOverMac.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AXOnboardingModelVoiceOverMac.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23DA9C318()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_23DA9C478@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_23DA9C4F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

void *sub_23DA9C6BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DA9C6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23DA9C6DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DA9C844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23DA9C6FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE198, &qword_23DB7A2F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23DA9C844(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE190, &unk_23DB7A2E8);
  v10 = *(sub_23DB6E9BC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23DB6E9BC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for AXOnboardingModelVoiceOverMac(uint64_t a1)
{
  result = qword_27E2FE170;
  if (!qword_27E2FE170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DA9CB50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23DA9CB90()
{
  sub_23DA40018(&unk_284FE57A8);
  swift_arrayDestroy();

  return MEMORY[0x277D84F90];
}

uint64_t sub_23DA9CBE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23DB6EB3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  *(inited + 32) = sub_23DB7087C();
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 10000;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_23DB7087C();
  type metadata accessor for Key(0);
  sub_23DA9DAAC(&qword_27E2FBE30, type metadata accessor for Key, &unk_23DB73B4C);
  v9 = sub_23DB7080C();

  v10 = [v7 initWithString:v8 attributes:v9];

  v11 = v10;
  sub_23DB6EB5C();
  sub_23DB6EB2C();

  return (*(v3 + 8))(v5, v2);
}

void sub_23DA9CE18(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = a1[16];
  v9 = a1[17];
  if (VOCommandIdentifier.rawValue.getter() == 0x736547726568744FLL && v10 == 0xEC00000065727574)
  {

    return;
  }

  v11 = sub_23DB70DBC();

  if ((v11 & 1) == 0 && (a1[18] & 1) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      v12 = VOCommandIdentifier.rawValue.getter();
      v14 = v13;
      if (v12 == VOCommandIdentifier.rawValue.getter() && v14 == v15)
      {
        goto LABEL_15;
      }

      v16 = sub_23DB70DBC();

      if (v16)
      {
LABEL_16:
        if (*MEMORY[0x277CE6CE8])
        {
          v21 = *MEMORY[0x277D76438];
          v22 = *MEMORY[0x277CE6CE8];
          UIAccessibilityPostNotification(v21, v22);

          a1[18] = 1;
          sub_23DA9CBE4(a2, a3);
          v23 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
          [*(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) invalidate];
          v24 = *(v4 + v23);
          *(v4 + v23) = 0;

          *(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
          return;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    if ((v9 & 0x80000000) == 0)
    {
      v17 = VOCommandIdentifier.rawValue.getter();
      v19 = v18;
      if (v17 == VOCommandIdentifier.rawValue.getter() && v19 == v20)
      {
LABEL_15:

        goto LABEL_16;
      }

      v25 = sub_23DB70DBC();

      if (v25)
      {
        goto LABEL_16;
      }
    }

    if (!*MEMORY[0x277CE6CC0])
    {
LABEL_23:
      __break(1u);
      return;
    }

    v26 = *MEMORY[0x277D76438];
    v27 = *MEMORY[0x277CE6CC0];
    UIAccessibilityPostNotification(v26, v27);
  }
}

uint64_t sub_23DA9D0D8(void *a1, unint64_t *a2)
{
  v4 = sub_23DB707AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB707CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23DB707EC();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  v73 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v66 - v15;
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  v17 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v72 = v11;
  v11 = *a1;
  if (v17 >= *(*a1 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v78 = a2;
  v82 = a1;
  v67 = v9;
  v68 = v7;
  v69 = v8;
  v70 = v5;
  v71 = v4;
  LODWORD(v83) = *(v16 + 40);
  result = type metadata accessor for CommandToPractice(0);
  v7 = result;
  v9 = (*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80);
  v77 = *(*(result - 8) + 72);
  a2 = (v77 * v17);
  v19 = v11 + v9 + v77 * v17;
  v20 = v19[16];
  v21 = v19[17];
  v22 = v19[*(result + 44)];
  v79 = v19[*(result + 40)];
  v80 = v22;
  if ((v20 & 0x80000000) == 0)
  {
    LOBYTE(aBlock[0]) = v83;
    LOBYTE(v84) = v20;
    v23 = VOCommandIdentifier.rawValue.getter();
    v25 = v24;
    if (v23 == VOCommandIdentifier.rawValue.getter() && v25 == v26)
    {
LABEL_12:

      goto LABEL_13;
    }

    v27 = sub_23DB70DBC();

    if (v27)
    {
      goto LABEL_13;
    }
  }

  if (v21 < 0)
  {
    return result;
  }

  LOBYTE(aBlock[0]) = v83;
  LOBYTE(v84) = v21;
  v28 = VOCommandIdentifier.rawValue.getter();
  v30 = v29;
  if (v28 == VOCommandIdentifier.rawValue.getter() && v30 == v31)
  {
    goto LABEL_12;
  }

  v59 = sub_23DB70DBC();

  if ((v59 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v17 >= v11[2])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_23DAC8B24(v11);
    v11 = result;
    goto LABEL_16;
  }

  if (v19[18])
  {
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_16:
  v32 = v11[2];
  if (v17 >= v32)
  {
    __break(1u);
    goto LABEL_45;
  }

  v33 = v11 + v9;
  *(a2 + v11 + v9 + 18) = 1;
  v34 = v82;
  *v82 = v11;
  v35 = v17 + 1;
  if (v35 != v32)
  {
    *v78 = v35;
    if (v35 < v32)
    {
      v49 = &v33[v77 * v35];
      v50 = &v49[*(v7 + 13)];
      v51 = *(v50 + 1);
      if (v51)
      {
        v52 = *v50;

        v78 = sub_23DA9BC60(0xD000000000000036, 0x800000023DB88150);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB78D60;
        if (v35 >= v11[2])
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v53 = result;
        v55 = *v49;
        v54 = *(v49 + 1);
        v56 = MEMORY[0x277D837D0];
        *(result + 56) = MEMORY[0x277D837D0];
        v57 = sub_23DA40598();
        v53[4] = v55;
        v53[5] = v54;
        v53[12] = v56;
        v53[13] = v57;
        v53[8] = v57;
        v53[9] = v52;
        v53[10] = v51;

        v36 = sub_23DB708CC();
        v38 = v58;
        v34 = v82;
      }

      else
      {
        sub_23DA9BC60(0xD00000000000002DLL, 0x800000023DB88120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB73BA0;
        if (v35 >= v11[2])
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v60 = result;
        v62 = *v49;
        v61 = *(v49 + 1);
        *(result + 56) = MEMORY[0x277D837D0];
        *(result + 64) = sub_23DA40598();
        *(v60 + 32) = v62;
        *(v60 + 40) = v61;

        v36 = sub_23DB708CC();
        v38 = v63;
      }

      if (v35 < v11[2])
      {
        v49[19] = 1;
        *v34 = v11;
        v39 = v80;
        if (!v80)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v36 = sub_23DA9BC60(0xD000000000000031, 0x800000023DB88190);
  v38 = v37;

  v39 = v80;
  if (!v80)
  {
    goto LABEL_33;
  }

LABEL_19:
  if (*(sub_23DB6BEA8(&unk_284FE65A0) + 16))
  {
    sub_23DB6B4E4(v83);
    if (v40)
    {

      sub_23DA5295C();
      v82 = sub_23DB70AEC();
      v41 = v73;
      sub_23DB707DC();
      v42 = v74;
      sub_23DB707FC();
      v83 = *(v75 + 8);
      v83(v41, v76);
      v43 = swift_allocObject();
      *(v43 + 16) = v79;
      *(v43 + 24) = v81;
      *(v43 + 32) = v36;
      *(v43 + 40) = v38;
      aBlock[4] = sub_23DA9DA84;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DABB3DC;
      aBlock[3] = &block_descriptor_1;
      v44 = _Block_copy(aBlock);

      v45 = v72;
      sub_23DB707BC();
      v84 = MEMORY[0x277D84F90];
      sub_23DA9DAAC(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
      v46 = v68;
      v47 = v71;
      sub_23DB70C0C();
      v48 = v82;
      MEMORY[0x23EEF6E80](v42, v45, v46, v44);
      _Block_release(v44);

      (*(v70 + 8))(v46, v47);
      (*(v67 + 8))(v45, v69);
      v83(v42, v76);
      swift_bridgeObjectRelease_n();
    }
  }

LABEL_33:

  if (v79)
  {
    if (*MEMORY[0x277CE6CE8])
    {
      v64 = *MEMORY[0x277D76438];
      v65 = *MEMORY[0x277CE6CE8];
      UIAccessibilityPostNotification(v64, v65);

      goto LABEL_36;
    }

LABEL_49:
    __break(1u);
    return result;
  }

LABEL_36:
  if (v39)
  {
    sub_23DA9CBE4(v36, v38);
  }
}

uint64_t sub_23DA9DA44()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DA9DAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DA9DD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnTableInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA9DDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DA9DE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DA9DEB0()
{

  return swift_deallocObject();
}

uint64_t sub_23DA9DF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t sub_23DA9E560()
{

  return swift_deallocObject();
}

uint64_t sub_23DA9E6FC()
{
  sub_23DB6EA1C();
  sub_23DB6E9BC();

  return MEMORY[0x28211C098](0, 0xE000000000000000);
}

AccessibilitySharedUISupport::VOTutorialPage_optional __swiftcall VOTutorialPage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23DB70D8C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VOTutorialPage.rawValue.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000016;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23DA9E860(unsigned __int8 a1)
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DA9E950(uint64_t a1)
{
  sub_23DB7091C();
}

uint64_t sub_23DA9EA30(uint64_t a1, unsigned __int8 a2)
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

void sub_23DA9EB28(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "arrowtriangle.down.fill";
  v5 = "VO.Tutorial.Navigation.Next";
  v6 = 0xD00000000000001FLL;
  v7 = "VO.Tutorial.Navigation.Previous";
  v8 = 0xD000000000000016;
  if (v3 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = "VO.Tutorial.Activation";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "VO.Tutorial.Home";
  v10 = 0xD000000000000013;
  if (v3 != 1)
  {
    v10 = 0xD00000000000001BLL;
    v9 = "VO.Tutorial.Welcome";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t CommandType.hash(into:)(uint64_t a1)
{
  if (*v1 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();
}

uint64_t CommandType.hashValue.getter()
{
  v1 = *v0;
  sub_23DB70E0C();
  if (v1 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DA9ED20(uint64_t a1)
{
  if (*v1 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();
}

uint64_t sub_23DA9EDB0(uint64_t a1)
{
  v2 = *v1;
  sub_23DB70E0C();
  if (v2 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();

  return sub_23DB70E4C();
}

AccessibilitySharedUISupport::VOCommandIdentifier_optional __swiftcall VOCommandIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23DB70DCC();

  v5 = 0;
  v6 = 46;
  switch(v3)
  {
    case 0:
      goto LABEL_63;
    case 1:
      v5 = 1;
      goto LABEL_63;
    case 2:
      v5 = 2;
      goto LABEL_63;
    case 3:
      v5 = 3;
      goto LABEL_63;
    case 4:
      v5 = 4;
      goto LABEL_63;
    case 5:
      v5 = 5;
      goto LABEL_63;
    case 6:
      v5 = 6;
      goto LABEL_63;
    case 7:
      v5 = 7;
      goto LABEL_63;
    case 8:
      v5 = 8;
      goto LABEL_63;
    case 9:
      v5 = 9;
      goto LABEL_63;
    case 10:
      v5 = 10;
      goto LABEL_63;
    case 11:
      v5 = 11;
      goto LABEL_63;
    case 12:
      v5 = 12;
      goto LABEL_63;
    case 13:
      v5 = 13;
      goto LABEL_63;
    case 14:
      v5 = 14;
      goto LABEL_63;
    case 15:
      v5 = 15;
      goto LABEL_63;
    case 16:
      v5 = 16;
      goto LABEL_63;
    case 17:
      v5 = 17;
      goto LABEL_63;
    case 18:
      v5 = 18;
      goto LABEL_63;
    case 19:
      v5 = 19;
      goto LABEL_63;
    case 20:
      v5 = 20;
      goto LABEL_63;
    case 21:
      v5 = 21;
      goto LABEL_63;
    case 22:
      v5 = 22;
      goto LABEL_63;
    case 23:
      v5 = 23;
      goto LABEL_63;
    case 24:
      v5 = 24;
      goto LABEL_63;
    case 25:
      v5 = 25;
      goto LABEL_63;
    case 26:
      v5 = 26;
      goto LABEL_63;
    case 27:
      v5 = 27;
      goto LABEL_63;
    case 28:
      v5 = 28;
      goto LABEL_63;
    case 29:
      v5 = 29;
      goto LABEL_63;
    case 30:
      v5 = 30;
      goto LABEL_63;
    case 31:
      v5 = 31;
      goto LABEL_63;
    case 32:
      v5 = 32;
      goto LABEL_63;
    case 33:
      v5 = 33;
      goto LABEL_63;
    case 34:
      v5 = 34;
      goto LABEL_63;
    case 35:
      v5 = 35;
      goto LABEL_63;
    case 36:
      v5 = 36;
      goto LABEL_63;
    case 37:
      v5 = 37;
      goto LABEL_63;
    case 38:
      v5 = 38;
      goto LABEL_63;
    case 39:
      v5 = 39;
      goto LABEL_63;
    case 40:
      v5 = 40;
      goto LABEL_63;
    case 41:
      v5 = 41;
      goto LABEL_63;
    case 42:
      v5 = 42;
      goto LABEL_63;
    case 43:
      v5 = 43;
      goto LABEL_63;
    case 44:
      v5 = 44;
      goto LABEL_63;
    case 45:
      v5 = 45;
LABEL_63:
      v6 = v5;
      break;
    case 46:
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    default:
      v6 = 64;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VOCommandIdentifier.rawValue.getter()
{
  result = 0x726F57726F746F52;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
    case 0x29:
      result = 0xD000000000000020;
      break;
    case 3:
    case 0x21:
    case 0x3C:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
    case 0x18:
    case 0x19:
    case 0x30:
    case 0x3F:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 0xF:
    case 0x13:
    case 0x15:
    case 0x2C:
    case 0x3B:
      result = 0xD00000000000001DLL;
      break;
    case 8:
    case 0x2A:
    case 0x2B:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0xD00000000000001CLL;
      break;
    case 0xC:
      return result;
    case 0xD:
    case 0x25:
    case 0x32:
      result = 0xD000000000000017;
      break;
    case 0xE:
    case 0x2E:
    case 0x2F:
    case 0x3D:
      result = 0xD000000000000015;
      break;
    case 0x11:
      result = 0xD00000000000001ELL;
      break;
    case 0x12:
      result = 0xD000000000000022;
      break;
    case 0x14:
      result = 0xD00000000000001BLL;
      break;
    case 0x16:
      result = 0xD00000000000001ELL;
      break;
    case 0x17:
    case 0x27:
      result = 0xD000000000000019;
      break;
    case 0x1A:
    case 0x33:
      result = 0xD000000000000010;
      break;
    case 0x1B:
      result = 0x736547726568744FLL;
      break;
    case 0x1C:
    case 0x20:
    case 0x24:
      result = 0xD000000000000014;
      break;
    case 0x1D:
    case 0x1E:
      result = 0xD000000000000013;
      break;
    case 0x1F:
    case 0x23:
    case 0x3E:
      result = 0xD000000000000011;
      break;
    case 0x22:
    case 0x26:
    case 0x39:
    case 0x3A:
      result = 0xD000000000000016;
      break;
    case 0x28:
      result = 0x6564697547524353;
      break;
    case 0x2D:
      result = 0xD000000000000025;
      break;
    case 0x31:
      result = 0xD000000000000012;
      break;
    case 0x34:
      result = 0x2E756E654D524353;
      break;
    case 0x35:
      result = 0xD00000000000001ELL;
      break;
    case 0x36:
    case 0x37:
      result = 0xD000000000000023;
      break;
    case 0x38:
      result = 0x6573756150;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t sub_23DA9F828()
{
  v0 = VOCommandIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == VOCommandIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23DB70DBC();
  }

  return v5 & 1;
}

uint64_t sub_23DA9F8C4()
{
  sub_23DB70E0C();
  VOCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DA9F92C(uint64_t a1)
{
  VOCommandIdentifier.rawValue.getter();
  sub_23DB7091C();
}

uint64_t sub_23DA9F990(uint64_t a1)
{
  sub_23DB70E0C();
  VOCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

unint64_t sub_23DA9FA00@<X0>(unint64_t *a1@<X8>)
{
  result = VOCommandIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_23DA9FA38()
{
  type metadata accessor for VoiceOverController();
  swift_allocObject();
  result = sub_23DA9FA74();
  qword_27E30A6A8 = result;
  return result;
}

void *sub_23DA9FA74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE240, &qword_23DB7B4B0);
  swift_allocObject();
  v0[2] = sub_23DABC744(27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  v0[3] = sub_23DABC940(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE248, &qword_23DB7B4C0);
  swift_allocObject();
  v0[4] = sub_23DABCB3C(50.0);
  v0[5] = sub_23DA9FE08;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v2 = v0[3];
    swift_beginAccess();
    *(v2 + 40) = 1;

    sub_23DABC004();

    v3 = objc_opt_self();
    [v3 connectToVO];
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v4 = sub_23DB7087C();
      [v3 triggerEventCommand_];
    }
  }

  v5 = *MEMORY[0x277D81E80];
  if (*MEMORY[0x277D81E80])
  {
    v6 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v6, 0, v1[5], v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  [v8 addObserver:v1 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x277D76C60] object:0];

  v9 = [v7 defaultCenter];
  [v9 addObserver:v1 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x277D76C50] object:0];

  v10 = [v7 defaultCenter];

  v11 = sub_23DB7087C();
  [v10 addObserver:v1 selector:sel__votTrainingInfoDidUpdateWithNotification_ name:v11 object:0];

  v12 = [v7 defaultCenter];

  v13 = sub_23DB7087C();
  [v12 addObserver:v1 selector:sel__votTrainingSpeakingRateDidUpdateWithNotification_ name:v13 object:0];

  [objc_opt_self() getSpeakingRate];
  v15 = v14;
  v16 = v1[4];
  swift_beginAccess();
  *(v16 + 40) = v15;

  sub_23DABC02C();

  return v1;
}

uint64_t sub_23DA9FE1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  *(v5 + 40) = a4;

  sub_23DABC32C();
}

uint64_t sub_23DA9FED8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

uint64_t sub_23DA9FF34()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_23DA9FF7C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VoiceOverController();
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

uint64_t _s28AccessibilitySharedUISupport11CommandTypeO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    if ((v2 & 0x80000000) == 0)
    {
      v3 = VOCommandIdentifier.rawValue.getter();
      v5 = v4;
      v6 = VOCommandIdentifier.rawValue.getter();
      goto LABEL_7;
    }

LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v3 = VCCommandIdentifier.rawValue.getter();
  v5 = v9;
  v6 = VCCommandIdentifier.rawValue.getter();
LABEL_7:
  if (v3 == v6 && v5 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23DB70DBC();
  }

  return v8 & 1;
}

unint64_t sub_23DAA009C()
{
  result = qword_27E2FE208;
  if (!qword_27E2FE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE208);
  }

  return result;
}

unint64_t sub_23DAA00F4()
{
  result = qword_27E2FE210;
  if (!qword_27E2FE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE210);
  }

  return result;
}

unint64_t sub_23DAA014C()
{
  result = qword_27E2FE218;
  if (!qword_27E2FE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE218);
  }

  return result;
}

unint64_t sub_23DAA01A4()
{
  result = qword_27E2FE220;
  if (!qword_27E2FE220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE228, &qword_23DB7B1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE220);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VOTutorialPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VOTutorialPage(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommandType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 3)
  {
    goto LABEL_17;
  }

  if (a2 + 253 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 253) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 253;
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

      return (*a1 | (v4 << 8)) - 253;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 253;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 2 | (*a1 >> 7)) ^ 3;
  if (v6 >= 2)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CommandType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 253 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 253) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 3)
  {
    v4 = 0;
  }

  if (a2 > 2)
  {
    v5 = ((a2 - 3) >> 8) + 1;
    *result = a2 - 3;
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
    *result = (a2 << 7) | 0x40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DAA0538(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC1)
  {
    goto LABEL_17;
  }

  if (a2 + 63 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 63) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 63;
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

      return (*a1 | (v4 << 8)) - 63;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v8 = v6 - 64;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DAA05CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC1)
  {
    v4 = 0;
  }

  if (a2 > 0xC0)
  {
    v5 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
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
    *result = a2 + 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23DAA0690()
{
  result = qword_27E2FE230;
  if (!qword_27E2FE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE230);
  }

  return result;
}

unint64_t sub_23DAA06E4(uint64_t a1)
{
  result = sub_23DAA070C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DAA070C()
{
  result = qword_27E2FE238;
  if (!qword_27E2FE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE238);
  }

  return result;
}

void sub_23DAA0760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      ++v2;
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v3 = VOCommandIdentifier.rawValue.getter();
        MEMORY[0x23EEF6D00](v3);

        v4 = objc_opt_self();
        v5 = sub_23DB7087C();

        [v4 triggerEventCommand_];
      }

      --v1;
    }

    while (v1);
  }
}

void sub_23DAA084C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      ++v2;
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v3 = VOCommandIdentifier.rawValue.getter();
        MEMORY[0x23EEF6D00](v3);

        v4 = objc_opt_self();
        v5 = sub_23DB7087C();

        [v4 triggerEventCommand_];
      }

      --v1;
    }

    while (v1);
  }
}

void sub_23DAA0938()
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E30A6A8;
  v1 = *(qword_27E30A6A8 + 24);
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 40);
  if (v1 != UIAccessibilityIsVoiceOverRunning())
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v3 = *(v0 + 24);
    swift_beginAccess();
    *(v3 + 40) = IsVoiceOverRunning;

    sub_23DABC004();
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = objc_opt_self();
    [v4 connectToVO];
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = sub_23DB7087C();
      [v4 triggerEventCommand_];
    }
  }
}

uint64_t sub_23DAA0A58()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 40);
  result = UIAccessibilityIsVoiceOverRunning();
  if (v1 != result)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v4 = *(v0 + 24);
    swift_beginAccess();
    *(v4 + 40) = IsVoiceOverRunning;

    sub_23DABC004();
  }

  return result;
}

char sub_23DAA0ADC()
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (IsVoiceOverRunning)
  {
    v2 = [objc_opt_self() getRecognizedGesture];
    v3 = sub_23DB708BC();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    LOBYTE(IsVoiceOverRunning) = VOCommandIdentifier.init(rawValue:)(v6);
    if (v9 != 64)
    {
      v7 = *(v0 + 16);
      swift_beginAccess();
      *(v7 + 40) = v9;

      sub_23DABC32C();
    }
  }

  return IsVoiceOverRunning;
}

uint64_t sub_23DAA0B90()
{
  [objc_opt_self() getSpeakingRate];
  v2 = v1;
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  if (vabds_f32(*(v3 + 40), v2) > 1.0)
  {
    *(v3 + 40) = v2;

    sub_23DABC02C();
  }

  return result;
}

uint64_t sub_23DAA0C3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x64657265626D754ELL;
    }

    if (v3 == 2)
    {
      v5 = 0x800000023DB85A40;
    }

    else
    {
      v5 = 0xEC00000064697247;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C4564656D614ELL;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3)
    {
      v5 = 0xED000073746E656DLL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x800000023DB85A40;
  if (a2 != 2)
  {
    v7 = 0x64657265626D754ELL;
    v8 = 0xEC00000064697247;
  }

  if (a2)
  {
    v2 = 0x656C4564656D614ELL;
    v6 = 0xED000073746E656DLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23DB70DBC();
  }

  return v11 & 1;
}

uint64_t sub_23DAA0DA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7461746369446F4ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x69447265626D754ELL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0xEF6E6F6974617463;
    }

    else
    {
      v6 = 0x800000023DB85AB0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x69446C616D726F4ELL;
    }

    else
    {
      v5 = 0x7461746369446F4ELL;
    }

    if (v4)
    {
      v6 = 0xEF6E6F6974617463;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  v7 = 0x69447265626D754ELL;
  v8 = 0x800000023DB85AB0;
  if (a2 == 2)
  {
    v8 = 0xEF6E6F6974617463;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 0x69446C616D726F4ELL;
    v2 = 0xEF6E6F6974617463;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23DB70DBC();
  }

  return v11 & 1;
}

uint64_t sub_23DAA0F08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "arrowtriangle.down.fill";
  v4 = a1;
  v5 = 0xD000000000000016;
  if (a1 == 4)
  {
    v6 = "VO.Tutorial.Navigation.Previous";
  }

  else
  {
    v5 = 0xD000000000000010;
    v6 = "VO.Tutorial.Activation";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "VO.Tutorial.Navigation.Next";
  }

  v8 = 0xD000000000000013;
  if (a1 == 1)
  {
    v9 = "VO.Tutorial.Home";
  }

  else
  {
    v8 = 0xD00000000000001BLL;
    v9 = "VO.Tutorial.Welcome";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD000000000000010;
    v10 = "arrowtriangle.down.fill";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001FLL;
      v3 = "VO.Tutorial.Navigation.Next";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v3 = "VO.Tutorial.Navigation.Previous";
    }

    else
    {
      v3 = "VO.Tutorial.Activation";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000013;
      v3 = "VO.Tutorial.Home";
    }

    else
    {
      v2 = 0xD00000000000001BLL;
      v3 = "VO.Tutorial.Welcome";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23DB70DBC();
  }

  return v13 & 1;
}

uint64_t sub_23DAA107C()
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA1150(uint64_t a1)
{
  sub_23DB7091C();
}

uint64_t sub_23DAA1210(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

unint64_t sub_23DAA12E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DAA92BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23DAA1310(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736270;
  v4 = 0x800000023DB85A40;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x64657265626D754ELL;
    v4 = 0xEC00000064697247;
  }

  if (*v1)
  {
    v3 = 0x656C4564656D614ELL;
    v2 = 0xED000073746E656DLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23DAA13A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E696E657473694CLL;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 6710863;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E697065656C53;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E696E657473694CLL;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 6710863;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E697065656C53;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23DB70DBC();
  }

  return v11 & 1;
}

uint64_t sub_23DAA149C()
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA153C(uint64_t a1)
{
  sub_23DB7091C();
}

uint64_t sub_23DAA15C8(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

unint64_t sub_23DAA1664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DAA9308(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23DAA1694(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E696E657473694CLL;
  if (v2 != 1)
  {
    v5 = 6710863;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E697065656C53;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23DAA16FC()
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA17E4(uint64_t a1)
{
  sub_23DB7091C();
}

uint64_t sub_23DAA18B8(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

unint64_t sub_23DAA199C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DAA9354(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23DAA19CC(unint64_t *a1@<X8>)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7461746369446F4ELL;
  v4 = 0x69447265626D754ELL;
  v5 = 0xEF6E6F6974617463;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000011;
    v5 = 0x800000023DB85AB0;
  }

  if (*v1)
  {
    v3 = 0x69446C616D726F4ELL;
    v2 = 0xEF6E6F6974617463;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23DAA1A70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "SpellingDictation";
  }

  else
  {
    v4 = "CommandWindowShown";
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = "CommandWindowShown";
  }

  else
  {
    v6 = "SpellingDictation";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23DB70DBC();
  }

  return v8 & 1;
}

uint64_t sub_23DAA1B18()
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA1B94(uint64_t a1)
{
  sub_23DB7091C();
}

uint64_t sub_23DAA1BFC(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA1C74@<X0>(char *a2@<X8>)
{
  v3 = sub_23DB70D8C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_23DAA1CD4(unint64_t *a1@<X8>)
{
  v2 = "CommandWindowShown";
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = "SpellingDictation";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

AccessibilitySharedUISupport::VCCommandIdentifier_optional __swiftcall VCCommandIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23DB70DCC();

  v5 = 0;
  v6 = 41;
  switch(v3)
  {
    case 0:
      goto LABEL_55;
    case 1:
      v5 = 1;
      goto LABEL_55;
    case 2:
      v5 = 2;
      goto LABEL_55;
    case 3:
      v5 = 3;
      goto LABEL_55;
    case 4:
      v5 = 4;
      goto LABEL_55;
    case 5:
      v5 = 5;
      goto LABEL_55;
    case 6:
      v5 = 6;
      goto LABEL_55;
    case 7:
      v5 = 7;
      goto LABEL_55;
    case 8:
      v5 = 8;
      goto LABEL_55;
    case 9:
      v5 = 9;
      goto LABEL_55;
    case 10:
      v5 = 10;
      goto LABEL_55;
    case 11:
      v5 = 11;
      goto LABEL_55;
    case 12:
      v5 = 12;
      goto LABEL_55;
    case 13:
      v5 = 13;
      goto LABEL_55;
    case 14:
      v5 = 14;
      goto LABEL_55;
    case 15:
      v5 = 15;
      goto LABEL_55;
    case 16:
      v5 = 16;
      goto LABEL_55;
    case 17:
      v5 = 17;
      goto LABEL_55;
    case 18:
      v5 = 18;
      goto LABEL_55;
    case 19:
      v5 = 19;
      goto LABEL_55;
    case 20:
      v5 = 20;
      goto LABEL_55;
    case 21:
      v5 = 21;
      goto LABEL_55;
    case 22:
      v5 = 22;
      goto LABEL_55;
    case 23:
      v5 = 23;
      goto LABEL_55;
    case 24:
      v5 = 24;
      goto LABEL_55;
    case 25:
      v5 = 25;
      goto LABEL_55;
    case 26:
      v5 = 26;
      goto LABEL_55;
    case 27:
      v5 = 27;
      goto LABEL_55;
    case 28:
      v5 = 28;
      goto LABEL_55;
    case 29:
      v5 = 29;
      goto LABEL_55;
    case 30:
      v5 = 30;
      goto LABEL_55;
    case 31:
      v5 = 31;
      goto LABEL_55;
    case 32:
      v5 = 32;
      goto LABEL_55;
    case 33:
      v5 = 33;
      goto LABEL_55;
    case 34:
      v5 = 34;
      goto LABEL_55;
    case 35:
      v5 = 35;
      goto LABEL_55;
    case 36:
      v5 = 36;
      goto LABEL_55;
    case 37:
      v5 = 37;
      goto LABEL_55;
    case 38:
      v5 = 38;
      goto LABEL_55;
    case 39:
      v5 = 39;
      goto LABEL_55;
    case 40:
      v5 = 40;
LABEL_55:
      v6 = v5;
      break;
    case 41:
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    default:
      v6 = 59;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VCCommandIdentifier.rawValue.getter()
{
  result = 0x472E6D6574737953;
  switch(*v0)
  {
    case 1:
    case 0x27:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      return result;
    case 3:
    case 0x1B:
    case 0x25:
    case 0x28:
      result = 0xD000000000000015;
      break;
    case 4:
    case 0x20:
    case 0x29:
    case 0x2A:
      result = 0xD000000000000014;
      break;
    case 5:
    case 0x34:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD00000000000002ALL;
      break;
    case 7:
    case 0x30:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    case 9:
    case 0x10:
    case 0x33:
      result = 0xD000000000000019;
      break;
    case 0xA:
    case 0x2C:
      result = 0xD00000000000001BLL;
      break;
    case 0xB:
    case 0x2E:
    case 0x35:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
    case 0x14:
      result = 0xD00000000000002BLL;
      break;
    case 0xE:
      result = 0x736E552E74786554;
      break;
    case 0xF:
      result = 0xD00000000000002CLL;
      break;
    case 0x11:
    case 0x22:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0xD000000000000034;
      break;
    case 0x13:
      result = 0xD000000000000037;
      break;
    case 0x15:
      result = 0xD000000000000016;
      break;
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 0x18:
    case 0x23:
    case 0x2B:
      result = 0xD00000000000001DLL;
      break;
    case 0x19:
      result = 0xD000000000000029;
      break;
    case 0x1A:
      result = 0xD000000000000027;
      break;
    case 0x1C:
      result = 0x552E6D6574737953;
      break;
    case 0x1D:
      result = 0x522E6D6574737953;
      break;
    case 0x1E:
    case 0x24:
      result = 0xD00000000000001CLL;
      break;
    case 0x1F:
      result = 0xD000000000000013;
      break;
    case 0x21:
      result = 0xD000000000000012;
      break;
    case 0x26:
    case 0x31:
      result = 0xD000000000000017;
      break;
    case 0x2D:
      result = 0xD000000000000016;
      break;
    case 0x2F:
      result = 0xD000000000000021;
      break;
    case 0x32:
      result = 0x532E6D6574737953;
      break;
    case 0x36:
    case 0x3A:
      result = 0xD000000000000010;
      break;
    case 0x37:
      result = 0x656449726568744FLL;
      break;
    case 0x38:
      result = 0;
      break;
    case 0x39:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_23DAA26F8()
{
  v0 = VCCommandIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == VCCommandIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23DB70DBC();
  }

  return v5 & 1;
}

unint64_t sub_23DAA2798()
{
  result = qword_27E2FE268;
  if (!qword_27E2FE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE268);
  }

  return result;
}

uint64_t sub_23DAA27F0()
{
  sub_23DB70E0C();
  VCCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA285C(uint64_t a1)
{
  VCCommandIdentifier.rawValue.getter();
  sub_23DB7091C();
}

uint64_t sub_23DAA28C4(uint64_t a1)
{
  sub_23DB70E0C();
  VCCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

unint64_t sub_23DAA2934@<X0>(unint64_t *a1@<X8>)
{
  result = VCCommandIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DAA2974()
{
  v0 = sub_23DB6EBFC();
  __swift_allocate_value_buffer(v0, qword_27E2FE250);
  __swift_project_value_buffer(v0, qword_27E2FE250);
  return sub_23DB6EBEC();
}

uint64_t sub_23DAA29F4()
{
  type metadata accessor for VoiceControlController();
  swift_allocObject();
  result = sub_23DAA2FA0();
  qword_27E30A6B0 = result;
  return result;
}

uint64_t sub_23DAA2A30()
{
  v1 = v0;
  v2 = sub_23DB707AC();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DB707CC();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB707EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = *(v0 + 32);
  swift_beginAccess();
  if (*(v14 + 40) && *(v14 + 40) != 1)
  {

    goto LABEL_6;
  }

  v15 = sub_23DB70DBC();

  if (v15)
  {
LABEL_6:
    sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
    v26 = sub_23DB70AEC();
    sub_23DB707DC();
    v25 = v13;
    sub_23DB707FC();
    v17 = *(v8 + 8);
    v28 = v8 + 8;
    v29 = v17;
    v27 = v7;
    v17(v10, v7);
    aBlock[4] = sub_23DAA97F0;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DABB3DC;
    aBlock[3] = &block_descriptor_219;
    v18 = _Block_copy(aBlock);

    v19 = v30;
    sub_23DB707BC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23DAA96CC();
    v20 = v32;
    v24 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
    v21 = v31;
    sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
    sub_23DB70C0C();
    v23 = v25;
    v22 = v26;
    MEMORY[0x23EEF6E80](v25, v19, v4, v18);
    _Block_release(v18);

    (*(v20 + 8))(v4, v2);
    (*(v21 + 8))(v19, v24);
    return v29(v23, v27);
  }

  return result;
}

uint64_t sub_23DAA2E70(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = sub_23DAA8C4C(0x6E696E657473696CLL, 0xEF73757461745367);
    v4 = *(v2 + 144);
    v5 = swift_allocObject();
    swift_weakInit();
    v7[4] = sub_23DAA9914;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23DB3C694;
    v7[3] = &block_descriptor_224;
    v6 = _Block_copy(v7);

    xpc_connection_send_message_with_reply(v1, v3, v4, v6);
    _Block_release(v6);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23DAA2FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  *(v0 + 16) = sub_23DABC940(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE328, &qword_23DB7BBE0);
  swift_allocObject();
  *(v0 + 24) = sub_23DABCD40(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE330, &qword_23DB7BBE8);
  swift_allocObject();
  *(v0 + 32) = sub_23DABCF3C(2);
  swift_allocObject();
  *(v0 + 40) = sub_23DABC940(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE338, &unk_23DB7BBF0);
  swift_allocObject();
  *(v0 + 48) = sub_23DABD138(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE340, &qword_23DB75330);
  swift_allocObject();
  *(v0 + 56) = sub_23DABD334(0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE348, &qword_23DB7BC00);
  swift_allocObject();
  *(v0 + 64) = sub_23DABD534(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE350, &qword_23DB7BC08);
  swift_allocObject();
  *(v0 + 72) = sub_23DABD734(55);
  swift_allocObject();
  *(v0 + 80) = sub_23DABD334(0, 0xE000000000000000);
  swift_allocObject();
  *(v0 + 88) = sub_23DABD334(0, 0xE000000000000000);
  swift_allocObject();
  *(v0 + 96) = sub_23DABD334(0, 0xE000000000000000);
  swift_allocObject();
  *(v0 + 104) = sub_23DABD334(0, 0xE000000000000000);
  v2 = *MEMORY[0x277CCA868];
  v3 = *(MEMORY[0x277CCA868] + 8);
  v4 = *(MEMORY[0x277CCA868] + 16);
  v5 = *(MEMORY[0x277CCA868] + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE358, &qword_23DB7BC10);
  swift_allocObject();
  *(v0 + 112) = sub_23DABD930(v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE360, &qword_23DB7BC18);
  swift_allocObject();
  *(v0 + 120) = sub_23DABDB4C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FE368, &unk_23DB7BC20);
  swift_allocObject();
  *(v0 + 128) = sub_23DABDD48(52);
  swift_allocObject();
  *(v0 + 136) = sub_23DABC940(0);
  sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
  *(v0 + 144) = sub_23DB70AEC();
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 164) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = sub_23DAA33AC;
  *(v0 + 184) = sub_23DAA347C;
  v6 = *MEMORY[0x277D81C90];
  if (*MEMORY[0x277D81C90])
  {
    v7 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v7, 0, *(v1 + 184), v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  v9 = *(v1 + 176);
  v10 = sub_23DB7087C();
  CFNotificationCenterAddObserver(v8, 0, v9, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_23DAA8DC8();
  sub_23DAA764C();
  return v1;
}

uint64_t sub_23DAA33AC()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E30A6B0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 heySiriEnabled];

  v3 = *(v0 + 40);
  swift_beginAccess();
  *(v3 + 40) = v2;

  sub_23DABC004();
}

uint64_t sub_23DAA347C()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  return sub_23DAA8DC8();
}

void sub_23DAA3520(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_23DB6B36C(1752457552, 0xE400000000000000);
    if (v5)
    {
      sub_23DA16DC8(*(a1 + 56) + 32 * v4, v26);
      sub_23DAA967C(0, &qword_27E2FE2D8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_23DB74310;
        *(v6 + 32) = v22;
        v7 = *(v2 + 120);
        swift_beginAccess();
        *(v7 + 40) = v6;
        v8 = v22;

        sub_23DABC3A4();
      }
    }
  }

  if (*(a1 + 16))
  {
    v9 = sub_23DB6B36C(0x6C616E69467349, 0xE700000000000000);
    if (v10)
    {
      sub_23DA16DC8(*(a1 + 56) + 32 * v9, v26);
      if (swift_dynamicCast())
      {
        if (v22 == 5457241 && v23 == 0xE300000000000000 || (sub_23DB70DBC() & 1) != 0)
        {

          v11 = *(v2 + 128);
          swift_beginAccess();
          v12 = 53;
        }

        else
        {
          if (v22 == 20302 && v23 == 0xE200000000000000)
          {
          }

          else
          {
            v21 = sub_23DB70DBC();

            if ((v21 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v11 = *(v2 + 128);
          swift_beginAccess();
          v12 = 52;
        }

        *(v11 + 40) = v12;

        sub_23DABC3CC();
      }
    }
  }

LABEL_13:
  if (*(a1 + 16))
  {
    v13 = sub_23DB6B36C(0x726F727265, 0xE500000000000000);
    if (v14)
    {
      sub_23DA16DC8(*(a1 + 56) + 32 * v13, v26);
      if (swift_dynamicCast())
      {
        if (qword_27E2FBBD8 != -1)
        {
          swift_once();
        }

        v15 = sub_23DB6EBFC();
        __swift_project_value_buffer(v15, qword_27E2FE250);

        v16 = sub_23DB6EBDC();
        v17 = sub_23DB70AAC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v26[0] = v19;
          *v18 = 136315138;
          v20 = sub_23DB5EC5C(v24, v25, v26);

          *(v18 + 4) = v20;
          _os_log_impl(&dword_23D9FF000, v16, v17, "Update grid path error %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x23EEF7D90](v19, -1, -1);
          MEMORY[0x23EEF7D90](v18, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_23DAA3918(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = *(result + 120);
  swift_beginAccess();
  *(v4 + 40) = MEMORY[0x277D84F90];

  sub_23DABC3A4();

  v5 = MEMORY[0x23EEF7F80](a1);
  if (v5 != sub_23DB6EC1C() || !xpc_dictionary_get_value(a1, "replyObject"))
  {
  }

  v6 = MEMORY[0x23EEF7F80]();
  if (v6 != sub_23DB6EC1C() || (swift_getObjectType(), (v7 = sub_23DAA3AC0()) == 0) || (v8 = sub_23DAA3B2C(v7), , !v8))
  {
    swift_unknownObjectRelease();
  }

  if (*(v8 + 16) && (v9 = sub_23DB6B36C(0xD000000000000015, 0x800000023DB8AE20), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    sub_23DAA3520(v11);

    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_23DAA3AC0()
{
  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2C8, &qword_23DB7BBA8);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23DAA3B2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B8, &qword_23DB7BB98);
    v2 = sub_23DB70D6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v11 << 6)));
        v14 = *v12;
        v13 = v12[1];

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2C0, &qword_23DB7BBA0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_23DB6B36C(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          *(v2[7] + 8 * v10) = v20;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_23DAA3D68(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE308, &unk_23DB7BBC0);
    v2 = sub_23DB70D6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v14);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v15 = (*(v1 + 48) + 16 * (__clz(__rbit64(v6)) | (v14 << 6)));
        v17 = *v15;
        v16 = v15[1];

        swift_unknownObjectRetain();
        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_23DB6B36C(v17, v16);
        if (v18)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = (v2[6] + 16 * result);
          *v12 = v17;
          v12[1] = v16;

          v13 = (v2[7] + v11);
          v1 = v10;
          *v13 = v24;
          v13[1] = v25;

          v9 = v14;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          v20 = (v2[7] + 16 * result);
          *v20 = v24;
          v20[1] = v25;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v9 = v14;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23DAA3FB4(uint64_t result)
{
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = 0xEF73757461745367;
    if (result)
    {
      if (result == 1)
      {
        v4 = 0x5379616C7265766FLL;
      }

      else
      {
        v4 = 0x6F69746174636964;
      }

      if (result == 1)
      {
        v3 = 0xED00007375746174;
      }

      else
      {
        v3 = 0xEF7375746174536ELL;
      }
    }

    else
    {
      v4 = 0x6E696E657473696CLL;
    }

    swift_unknownObjectRetain();
    v5 = sub_23DAA8C4C(v4, v3);

    v6 = *(v1 + 144);
    v7 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_23DAA9914;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_23DB3C694;
    v9[3] = &block_descriptor_216;
    v8 = _Block_copy(v9);

    xpc_connection_send_message_with_reply(v2, v5, v6, v8);
    _Block_release(v8);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23DAA413C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = MEMORY[0x23EEF7F80](a1);
    if (v4 == sub_23DB6EC1C())
    {
      v5 = xpc_dictionary_get_value(a1, "replyObject");
      if (v5)
      {
        v6 = v5;
        v7 = MEMORY[0x23EEF7F80]();
        if (v7 == sub_23DB6EC1C())
        {
          sub_23DAA41F8(v6);
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_23DAA41F8(uint64_t a1)
{
  v225 = sub_23DB707AC();
  v1 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v226 = v195 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_23DB707CC();
  v3 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v227 = v195 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v5 = sub_23DAA3AC0();
  if (!v5)
  {
    return;
  }

  v6 = sub_23DAA3D68(v5);

  if (!v6)
  {
    return;
  }

  v8 = 0;
  v9 = *(v6 + 64);
  v218 = v6 + 64;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v229 = 0x800000023DB8AF00;
  v216 = 0x800000023DB8AF20;
  v217 = (v10 + 63) >> 6;
  v211 = 0x800000023DB8AF40;
  v212 = 0x800000023DB85A40;
  v220 = (v1 + 8);
  v221 = &v234;
  v219 = (v3 + 8);
  v213 = 0x800000023DB8AF60;
  v209 = 0x800000023DB8AF80;
  v207 = 0x800000023DB8AFA0;
  v204 = 0x800000023DB8AFD0;
  v200 = 0x800000023DB8AFF0;
  v201 = 0x800000023DB86260;
  v202 = "SecondaryDefault";
  v203 = 0x800000023DB86240;
  v208 = 0x800000023DB85AB0;
  *&v7 = 136315138;
  v214 = v7;
  v205 = "SpellingDictation";
  v206 = "CommandWindowShown";
  v223 = v6;
  while (v12)
  {
LABEL_11:
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v15 = (v8 << 10) | (16 * v14);
    v16 = (*(v6 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(v6 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v22 = *v16 == 0xD000000000000015 && v229 == v18;
    if (v22 || (sub_23DB70DBC() & 1) != 0)
    {

      v23 = sub_23DB70D8C();

      if (v23 <= 2)
      {
        v24 = v228[4];
        swift_beginAccess();
        v215 = v23;
        *(v24 + 40) = v23;
        sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

        v222 = sub_23DB70AEC();
        v25 = swift_allocObject();
        swift_weakInit();
        v236 = sub_23DAA97D8;
        v237 = v25;
        aBlock = MEMORY[0x277D85DD0];
        v233 = 1107296256;
        v234 = sub_23DABB3DC;
        v235 = &block_descriptor_211;
        v26 = _Block_copy(&aBlock);

        v27 = v227;
        sub_23DB707BC();
        aBlock = MEMORY[0x277D84F90];
        sub_23DAA96CC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
        sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
        v29 = v225;
        v28 = v226;
        sub_23DB70C0C();
        v30 = v222;
        MEMORY[0x23EEF6EA0](0, v27, v28, v26);
        _Block_release(v26);

        (*v220)(v28, v29);
        (*v219)(v27, v224);
        if (qword_27E2FBBD8 != -1)
        {
          swift_once();
        }

        v31 = sub_23DB6EBFC();
        __swift_project_value_buffer(v31, qword_27E2FE250);
        v32 = sub_23DB6EBDC();
        v33 = sub_23DB70AAC();
        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_155;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v34 = v214;
        v6 = v223;
        if (v215)
        {
          if (v215 == 1)
          {
            v36 = 0xE900000000000067;
            v37 = 0x6E696E657473694CLL;
          }

          else
          {
            v36 = 0xE300000000000000;
            v37 = 6710863;
          }
        }

        else
        {
          v36 = 0xE800000000000000;
          v37 = 0x676E697065656C53;
        }

        v55 = sub_23DB5EC5C(v37, v36, &aBlock);

        *(v34 + 4) = v55;
        v56 = v33;
        v57 = v32;
        v58 = "listeningStatus: %s";
LABEL_78:
        _os_log_impl(&dword_23D9FF000, v57, v56, v58, v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x23EEF7D90](v35, -1, -1);
        MEMORY[0x23EEF7D90](v34, -1, -1);
      }
    }

    else
    {
      v222 = 0xD000000000000013;
      v38 = v17 == 0xD000000000000013 && v216 == v18;
      if (v38 || (sub_23DB70DBC() & 1) != 0 || (v17 == 0xD000000000000019 ? (v39 = v211 == v18) : (v39 = 0), v39 || (sub_23DB70DBC() & 1) != 0))
      {

        v40 = sub_23DB70D8C();
        if (v40 > 3)
        {

          goto LABEL_74;
        }

        v210 = v40;
        v215 = v20;
        v41 = v228[3];
        swift_beginAccess();
        v42 = *(v41 + 40);
        if (v42 == 2)
        {
          v43 = 0xD000000000000010;
        }

        else
        {
          v43 = 0x64657265626D754ELL;
        }

        if (v42 == 2)
        {
          v44 = v212;
        }

        else
        {
          v44 = 0xEC00000064697247;
        }

        if (*(v41 + 40))
        {
          v45 = 0x656C4564656D614ELL;
        }

        else
        {
          v45 = 1701736270;
        }

        if (*(v41 + 40))
        {
          v46 = 0xED000073746E656DLL;
        }

        else
        {
          v46 = 0xE400000000000000;
        }

        if (*(v41 + 40) <= 1u)
        {
          v47 = v45;
        }

        else
        {
          v47 = v43;
        }

        if (*(v41 + 40) <= 1u)
        {
          v48 = v46;
        }

        else
        {
          v48 = v44;
        }

        if (v210 == 2)
        {
          v49 = 0xD000000000000010;
        }

        else
        {
          v49 = 0x64657265626D754ELL;
        }

        if (v210 == 2)
        {
          v50 = v212;
        }

        else
        {
          v50 = 0xEC00000064697247;
        }

        if (v210)
        {
          v51 = 0x656C4564656D614ELL;
        }

        else
        {
          v51 = 1701736270;
        }

        if (v210)
        {
          v52 = 0xED000073746E656DLL;
        }

        else
        {
          v52 = 0xE400000000000000;
        }

        if (v210 <= 1u)
        {
          v53 = v51;
        }

        else
        {
          v53 = v49;
        }

        if (v210 <= 1u)
        {
          v54 = v52;
        }

        else
        {
          v54 = v50;
        }

        if (v47 == v53 && v48 == v54)
        {
        }

        else
        {
          v199 = 0xD000000000000010;
          v59 = sub_23DB70DBC();

          if ((v59 & 1) == 0)
          {
            v60 = v228[3];
            swift_beginAccess();
            *(v60 + 40) = v210;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
            v198 = v60;

            v197 = sub_23DB70AEC();
            v61 = swift_allocObject();
            swift_weakInit();
            v236 = sub_23DAA97D8;
            v237 = v61;
            aBlock = MEMORY[0x277D85DD0];
            v233 = 1107296256;
            v234 = sub_23DABB3DC;
            v235 = &block_descriptor_204;
            v196 = _Block_copy(&aBlock);

            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            v195[1] = sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
            v63 = v225;
            v62 = v226;
            sub_23DB70C0C();
            v64 = v62;
            v66 = v196;
            v65 = v197;
            MEMORY[0x23EEF6EA0](0, v227, v64, v196);
            _Block_release(v66);

            (*v220)(v226, v63);
            (*v219)(v227, v224);

            if (qword_27E2FBBD8 != -1)
            {
              swift_once();
            }

            v67 = sub_23DB6EBFC();
            __swift_project_value_buffer(v67, qword_27E2FE250);
            v68 = sub_23DB6EBDC();
            v69 = sub_23DB70AAC();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v197 = v70;
              v198 = swift_slowAlloc();
              aBlock = v198;
              *v70 = v214;
              v71 = v210;
              v72 = 0x64657265626D754ELL;
              if (v210 == 2)
              {
                v72 = v199;
              }

              v73 = v212;
              if (v210 != 2)
              {
                v73 = 0xEC00000064697247;
              }

              v74 = 1701736270;
              if (v210)
              {
                v74 = 0x656C4564656D614ELL;
              }

              v75 = 0xE400000000000000;
              if (v210)
              {
                v75 = 0xED000073746E656DLL;
              }

              if (v210 <= 1u)
              {
                v76 = v74;
              }

              else
              {
                v76 = v72;
              }

              v210 = v68;
              if (v71 <= 1)
              {
                v77 = v75;
              }

              else
              {
                v77 = v73;
              }

              v78 = sub_23DB5EC5C(v76, v77, &aBlock);

              v79 = v197;
              *(v197 + 4) = v78;
              v80 = v210;
              _os_log_impl(&dword_23D9FF000, v210, v69, "currentOverlay: %s", v79, 0xCu);
              v81 = v198;
              __swift_destroy_boxed_opaque_existential_0(v198);
              MEMORY[0x23EEF7D90](v81, -1, -1);
              MEMORY[0x23EEF7D90](v79, -1, -1);
            }

            else
            {
            }
          }
        }
      }

      else
      {
        v215 = v20;
      }

      if (v17 == 0xD000000000000015 && v213 == v18 || (sub_23DB70DBC() & 1) != 0)
      {

        v6 = v223;
        if (qword_27E2FBBD8 != -1)
        {
          swift_once();
        }

        v82 = sub_23DB6EBFC();
        v83 = __swift_project_value_buffer(v82, qword_27E2FE250);
        v84 = sub_23DB6EBDC();
        v85 = sub_23DB70AAC();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_23D9FF000, v84, v85, "got dictation related xpc message", v86, 2u);
          MEMORY[0x23EEF7D90](v86, -1, -1);
        }

        v87 = sub_23DB70D8C();

        if (v87 <= 3)
        {
          v88 = v228[6];
          swift_beginAccess();
          v210 = v87;
          *(v88 + 40) = v87;
          sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

          v222 = sub_23DB70AEC();
          v89 = swift_allocObject();
          swift_weakInit();
          v236 = sub_23DAA97D8;
          v237 = v89;
          aBlock = MEMORY[0x277D85DD0];
          v233 = 1107296256;
          v234 = sub_23DABB3DC;
          v235 = &block_descriptor_197;
          v90 = _Block_copy(&aBlock);

          v215 = v83;
          v91 = v227;
          sub_23DB707BC();
          aBlock = MEMORY[0x277D84F90];
          sub_23DAA96CC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
          sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
          v92 = v225;
          v93 = v226;
          sub_23DB70C0C();
          v94 = v222;
          MEMORY[0x23EEF6EA0](0, v91, v93, v90);
          _Block_release(v90);

          (*v220)(v93, v92);
          (*v219)(v91, v224);

          v32 = sub_23DB6EBDC();
          v95 = sub_23DB70AAC();
          if (os_log_type_enabled(v32, v95))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            aBlock = v35;
            *v34 = v214;
            if (v210 > 1u)
            {
              v6 = v223;
              if (v210 != 2)
              {
                v96 = 0xD000000000000011;
                v97 = v208;
                goto LABEL_143;
              }

              v117 = 0x7265626D754ELL;
            }

            else
            {
              v6 = v223;
              if (!v210)
              {
                v96 = 0x7461746369446F4ELL;
                v97 = 0xEB000000006E6F69;
LABEL_143:
                v137 = sub_23DB5EC5C(v96, v97, &aBlock);

                *(v34 + 4) = v137;
                v56 = v95;
                v57 = v32;
                v58 = "dictationStatus: %s";
                goto LABEL_78;
              }

              v117 = 0x6C616D726F4ELL;
            }

            v96 = v117 & 0xFFFFFFFFFFFFLL | 0x6944000000000000;
            v97 = 0xEF6E6F6974617463;
            goto LABEL_143;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v17 == 0x6174636944646944 && v18 == 0xEE00747865546574 || (v98 = sub_23DB70DBC(), v6 = v223, (v98 & 1) != 0))
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v99 = sub_23DB6EBFC();
          v222 = __swift_project_value_buffer(v99, qword_27E2FE250);
          v100 = sub_23DB6EBDC();
          v101 = sub_23DB70AAC();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&dword_23D9FF000, v100, v101, "got diddictatetext", v102, 2u);
            MEMORY[0x23EEF7D90](v102, -1, -1);
          }

          v103 = v228[7];
          swift_beginAccess();
          *(v103 + 40) = v215;
          *(v103 + 48) = v21;

          sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
          v210 = sub_23DB70AEC();
          v104 = swift_allocObject();
          swift_weakInit();
          v236 = sub_23DAA98B4;
          v237 = v104;
          aBlock = MEMORY[0x277D85DD0];
          v233 = 1107296256;
          v234 = sub_23DABB3DC;
          v235 = &block_descriptor_191;
          v199 = _Block_copy(&aBlock);

          v105 = v227;
          sub_23DB707BC();
          aBlock = MEMORY[0x277D84F90];
          sub_23DAA96CC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
          sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
          v106 = v225;
          v107 = v226;
          sub_23DB70C0C();
          v108 = v199;
          v109 = v210;
          MEMORY[0x23EEF6EA0](0, v105, v107, v199);
          _Block_release(v108);

          (*v220)(v107, v106);
          (*v219)(v105, v224);

          v32 = sub_23DB6EBDC();
          v110 = sub_23DB70AAC();

          if (os_log_type_enabled(v32, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            aBlock = v112;
            *v111 = v214;
            v113 = sub_23DB5EC5C(v215, v21, &aBlock);

            *(v111 + 4) = v113;
            v114 = v110;
            v115 = v32;
            v116 = "dictated: %s";
            goto LABEL_121;
          }

          goto LABEL_154;
        }

        if (v17 == 0xD000000000000019 && v209 == v18 || (sub_23DB70DBC() & 1) != 0)
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v118 = sub_23DB6EBFC();
          v119 = __swift_project_value_buffer(v118, qword_27E2FE250);
          v120 = sub_23DB6EBDC();
          v121 = sub_23DB70AAC();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            _os_log_impl(&dword_23D9FF000, v120, v121, "got commandoverlaystatus", v122, 2u);
            MEMORY[0x23EEF7D90](v122, -1, -1);
          }

          v123 = sub_23DB70D8C();

          if (v123 <= 1)
          {
            v222 = v119;
            v124 = v228[8];
            swift_beginAccess();
            LODWORD(v210) = v123;
            *(v124 + 40) = v123;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

            v215 = sub_23DB70AEC();
            v125 = swift_allocObject();
            swift_weakInit();
            v236 = sub_23DAA97D8;
            v237 = v125;
            aBlock = MEMORY[0x277D85DD0];
            v233 = 1107296256;
            v234 = sub_23DABB3DC;
            v235 = &block_descriptor_186;
            v126 = _Block_copy(&aBlock);

            v127 = v227;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
            v129 = v225;
            v128 = v226;
            sub_23DB70C0C();
            v130 = v215;
            MEMORY[0x23EEF6EA0](0, v127, v128, v126);
            _Block_release(v126);

            (*v220)(v128, v129);
            (*v219)(v127, v224);

            v32 = sub_23DB6EBDC();
            v131 = sub_23DB70AAC();
            if (!os_log_type_enabled(v32, v131))
            {
              goto LABEL_155;
            }

            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            aBlock = v133;
            *v132 = v214;
            if (v210)
            {
              v134 = 0xD000000000000013;
            }

            else
            {
              v134 = 0xD000000000000012;
            }

            if (v210)
            {
              v135 = v206;
            }

            else
            {
              v135 = v205;
            }

            v136 = sub_23DB5EC5C(v134, v135 | 0x8000000000000000, &aBlock);

            *(v132 + 4) = v136;
            _os_log_impl(&dword_23D9FF000, v32, v131, "commandWindowStatus: %s", v132, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v133);
            MEMORY[0x23EEF7D90](v133, -1, -1);
            MEMORY[0x23EEF7D90](v132, -1, -1);

            v6 = v223;
          }
        }

        else if (v17 == 0xD000000000000021 && v207 == v18 || (sub_23DB70DBC() & 1) != 0)
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v138 = sub_23DB6EBFC();
          v139 = __swift_project_value_buffer(v138, qword_27E2FE250);
          v140 = sub_23DB6EBDC();
          v141 = sub_23DB70AAC();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            *v142 = 0;
            _os_log_impl(&dword_23D9FF000, v140, v141, "got recognizedCommandIdentifier", v142, 2u);
            MEMORY[0x23EEF7D90](v142, -1, -1);
          }

          v143._countAndFlagsBits = v215;
          v143._object = v21;
          VCCommandIdentifier.init(rawValue:)(v143);
          v144 = aBlock;
          if (aBlock != 59)
          {
            v145 = v228[9];
            swift_beginAccess();
            *(v145 + 40) = v144;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
            v222 = v145;

            v199 = sub_23DB70AEC();
            v146 = swift_allocObject();
            swift_weakInit();
            v236 = sub_23DAA97E8;
            v237 = v146;
            aBlock = MEMORY[0x277D85DD0];
            v233 = 1107296256;
            v234 = sub_23DABB3DC;
            v235 = &block_descriptor_179;
            v147 = _Block_copy(&aBlock);
            v210 = v139;
            v148 = v147;

            v149 = v227;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
            v150 = v225;
            v151 = v226;
            sub_23DB70C0C();
            v152 = v199;
            MEMORY[0x23EEF6EA0](0, v149, v151, v148);
            _Block_release(v148);

            (*v220)(v151, v150);
            (*v219)(v149, v224);

            v32 = sub_23DB6EBDC();
            v153 = sub_23DB70AAC();

            if (os_log_type_enabled(v32, v153))
            {
              v111 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              aBlock = v112;
              *v111 = v214;
              v154 = sub_23DB5EC5C(v215, v21, &aBlock);

              *(v111 + 4) = v154;
              v114 = v153;
              v115 = v32;
              v116 = "recognizedCommandIdentifierStatus: %s";
LABEL_121:
              _os_log_impl(&dword_23D9FF000, v115, v114, v116, v111, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v112);
              MEMORY[0x23EEF7D90](v112, -1, -1);
              MEMORY[0x23EEF7D90](v111, -1, -1);
LABEL_155:

              goto LABEL_156;
            }

LABEL_154:

            goto LABEL_155;
          }

LABEL_74:
        }

        else if (v17 == 0xD00000000000001CLL && v204 == v18 || (sub_23DB70DBC() & 1) != 0)
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v155 = sub_23DB6EBFC();
          __swift_project_value_buffer(v155, qword_27E2FE250);
          v156 = sub_23DB6EBDC();
          v157 = sub_23DB70AAC();
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            *v158 = 0;
            _os_log_impl(&dword_23D9FF000, v156, v157, "got numbersForOnboardingElements", v158, 2u);
            MEMORY[0x23EEF7D90](v158, -1, -1);
          }

          aBlock = v215;
          v233 = v21;
          v230 = 2112032;
          v231 = 0xE300000000000000;
          sub_23DA16E70();
          v159 = sub_23DB70B8C();

          if (!v159[2])
          {
            goto LABEL_205;
          }

          v160 = sub_23DB70D8C();

          if (v160 > 2)
          {
            goto LABEL_74;
          }

          if (v159[2] < 2uLL)
          {
            goto LABEL_206;
          }

          v162 = v159[6];
          v161 = v159[7];

          if (v160)
          {
            v163 = sub_23DB70DBC();

            if (v163)
            {
              goto LABEL_185;
            }

            v164 = v6;
            v165 = v228;
            v166 = v160 & 7;
            if (v201 == v203 || ((4u >> (v160 & 7)) & 1) != 0)
            {

LABEL_197:
              v194 = v165[11];
              goto LABEL_198;
            }

            v167 = sub_23DB70DBC();

            if (v167)
            {
              goto LABEL_197;
            }

            if ((1u >> v166))
            {
              v168 = sub_23DB70DBC();

              if ((v168 & 1) == 0)
              {

                goto LABEL_199;
              }
            }

            else
            {
            }

            v194 = v165[12];
LABEL_198:
            swift_beginAccess();
            *(v194 + 40) = v162;
            *(v194 + 48) = v161;

            sub_23DABC354();

LABEL_199:
            v6 = v164;
          }

          else
          {

LABEL_185:
            v181 = v228[10];
            swift_beginAccess();
            *(v181 + 40) = v162;
            *(v181 + 48) = v161;

            sub_23DABC354();
          }
        }

        else
        {
          if (v17 == v222 && v200 == v18 || (sub_23DB70DBC() & 1) != 0)
          {
            if (qword_27E2FBBD8 != -1)
            {
              swift_once();
            }

            v169 = sub_23DB6EBFC();
            __swift_project_value_buffer(v169, qword_27E2FE250);
            v170 = sub_23DB6EBDC();
            v171 = sub_23DB70AAC();
            if (os_log_type_enabled(v170, v171))
            {
              v172 = swift_slowAlloc();
              *v172 = 0;
              _os_log_impl(&dword_23D9FF000, v170, v171, "got phoneticAlternative", v172, 2u);
              MEMORY[0x23EEF7D90](v172, -1, -1);
            }

            v173 = v228[13];
            swift_beginAccess();
            *(v173 + 40) = v215;
            *(v173 + 48) = v21;

            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
            v222 = sub_23DB70AEC();
            v174 = swift_allocObject();
            swift_weakInit();
            v236 = sub_23DAA97E0;
            v237 = v174;
            aBlock = MEMORY[0x277D85DD0];
            v233 = 1107296256;
            v234 = sub_23DABB3DC;
            v235 = &block_descriptor_172;
            v215 = _Block_copy(&aBlock);

            v175 = v227;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            v210 = sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
            v177 = v225;
            v176 = v226;
            sub_23DB70C0C();
            v178 = v175;
            v179 = v215;
            v180 = v222;
            MEMORY[0x23EEF6EA0](0, v178, v176, v215);
            _Block_release(v179);

            (*v220)(v176, v177);
            (*v219)(v227, v224);
          }

          else
          {
          }

          v6 = v223;
          if (v17 == 0x4164656C6C697244 && v18 == 0xEF7265626D754E74)
          {

LABEL_191:
            if (qword_27E2FBBD8 != -1)
            {
              swift_once();
            }

            v183 = sub_23DB6EBFC();
            __swift_project_value_buffer(v183, qword_27E2FE250);
            v184 = sub_23DB6EBDC();
            v185 = sub_23DB70AAC();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              *v186 = 0;
              _os_log_impl(&dword_23D9FF000, v184, v185, "got drilledAtNumber", v186, 2u);
              MEMORY[0x23EEF7D90](v186, -1, -1);
            }

            v187 = v228[17];
            swift_beginAccess();
            *(v187 + 40) = (*(v187 + 40) & 1) == 0;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

            v222 = sub_23DB70AEC();
            v188 = swift_allocObject();
            swift_weakInit();
            v236 = sub_23DAA97D8;
            v237 = v188;
            aBlock = MEMORY[0x277D85DD0];
            v233 = 1107296256;
            v234 = sub_23DABB3DC;
            v235 = &block_descriptor_166;
            v189 = _Block_copy(&aBlock);

            v190 = v227;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
            v191 = v225;
            v192 = v226;
            sub_23DB70C0C();
            v193 = v222;
            MEMORY[0x23EEF6EA0](0, v190, v192, v189);
            _Block_release(v189);

            (*v220)(v192, v191);
            (*v219)(v190, v224);

LABEL_156:
            v6 = v223;
          }

          else
          {
            v182 = sub_23DB70DBC();

            if (v182)
            {
              goto LABEL_191;
            }
          }
        }
      }
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v217)
    {

      return;
    }

    v12 = *(v218 + 8 * v13);
    ++v8;
    if (v12)
    {
      v8 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
}