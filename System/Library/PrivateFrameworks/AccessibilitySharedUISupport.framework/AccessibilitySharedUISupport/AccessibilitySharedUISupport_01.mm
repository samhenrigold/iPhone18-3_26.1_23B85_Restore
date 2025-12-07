uint64_t sub_23DA2B768(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  Page.Practice.deinit();
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  return v3;
}

uint64_t (*sub_23DA2B860())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t Page.PracticeVOKeyboardCommandWithAlert.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v99 = a7;
  v100 = a8;
  v97 = a5;
  v98 = a6;
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v109 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v73 - v9;
  *&v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v73 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v73 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v73 - v12;
  v13 = sub_23DB6EA8C();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v90 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v106 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v105 = &v73 - v18;
  MEMORY[0x28223BE20](v19);
  v104 = &v73 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v110 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v101 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - v28;
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;
  LOBYTE(v111) = 0;
  sub_23DB6EECC();
  v74 = *(v27 + 32);
  v74(v8 + v30, v29, v26);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v32 = *(v23 + 32);
  v32(v8 + v31, v25, v22);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage;
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v32(v8 + v33, v25, v22);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName;
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v32(v8 + v34, v25, v22);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName;
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v81 = v25;
  v84 = v22;
  v83 = v23 + 32;
  v80 = v32;
  v32(v8 + v35, v25, v22);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  *&v111 = nullsub_1;
  *(&v111 + 1) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v38 = v102;
  v77 = v37;
  sub_23DB6EECC();
  v39 = *(v110 + 32);
  v110 += 32;
  v76 = v39;
  v39(v8 + v36, v38, v103);
  v40 = v108;
  v41 = v107 + 16;
  v42 = *(v107 + 16);
  v43 = v104;
  (v42)(v104, v109, v108);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v45 = MEMORY[0x277D84F90];
  *&v111 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  v46 = v75;
  sub_23DB6EECC();
  v78[4](v8 + v44, v46, v79);
  v47 = v105;
  (v42)(v105, v43, v40);
  v79 = v41;
  v78 = v42;
  (v42)(v106, v47, v40);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v111) = 0;
  sub_23DB6EECC();
  v49 = v101;
  v50 = v74;
  (v74)(v8 + v48, v29);
  if (v45 >> 62 && sub_23DB70C3C())
  {
    v51 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v51 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v51;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v111 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v53 = v82;
  sub_23DB6EECC();
  (*(v85 + 32))(v8 + v52, v53, v86);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v45;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v111 = 0;
  v55 = v87;
  sub_23DB6EECC();
  (*(v88 + 32))(v8 + v54, v55, v89);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v111) = 0;
  sub_23DB6EECC();
  v50(v8 + v56, v29, v49);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v89 = xmmword_23DB74320;
  v111 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v58 = v91;
  sub_23DB6EECC();
  v59 = *(v92 + 32);
  v60 = v93;
  v59(v8 + v57, v58, v93);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v111 = v89;
  sub_23DB6EECC();
  v59(v8 + v61, v58, v60);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v111) = 0;
  sub_23DB6EECC();
  v50(v8 + v62, v29, v101);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  v64 = v81;
  sub_23DB6EECC();
  v80(v8 + v63, v64, v84);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v111 = 0uLL;
  sub_23DB6EECC();
  v59(v8 + v65, v58, v60);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v111 = nullsub_1;
  *(&v111 + 1) = 0;
  v67 = v102;
  sub_23DB6EECC();
  v76(v8 + v66, v67, v103);
  v68 = v90;
  v69 = v106;
  v70 = v108;
  (v78)(v90, v106, v108);
  Page.init(id:title:text:subPages:iconName:)(v68, v94, v95, v96, v97, v98, v99, v100);
  v71 = *(v107 + 8);
  v71(v109, v70);
  v71(v69, v70);
  v71(v105, v70);
  v71(v104, v70);
  return v8;
}

uint64_t sub_23DA2C4C0()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName, v4);
  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t Page.PracticeVOKeyboardCommandWithAlert.deinit()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName, v6);
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t Page.PracticeVOKeyboardCommandWithAlert.__deallocating_deinit()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__showAlert;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__alertMessage, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonName, v6);
  v7(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__cancelButtonName, v6);
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page34PracticeVOKeyboardCommandWithAlert__okButtonAction;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t sub_23DA2CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v93 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v62 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v62 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v70 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v69 = &v62 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v17 = &v62 - v16;
  v18 = sub_23DB6EA8C();
  v92 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB20, &qword_23DB75E70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - v28;
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page13PracticeVOBox__boxes;
  *&v94 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC778, &qword_23DB800B0);
  sub_23DB6EECC();
  (*(v27 + 32))(v30 + v31, v29, v26);
  v32 = v92 + 16;
  v33 = *(v92 + 16);
  v33(v25, v93, v18);
  v74 = v22;
  v73 = v25;
  v34 = v63;
  v76 = v18;
  v68 = v32;
  v67 = v33;
  v33(v22, v25, v18);
  v35 = MEMORY[0x277D84F90];
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v37 = *(v15 + 32);
  v38 = v17;
  v39 = v34;
  v37(v30 + v36, v17, v34);
  if (v35 >> 62 && sub_23DB70C3C())
  {
    v40 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
  }

  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v40;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v94 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v42 = v64;
  sub_23DB6EECC();
  (*(v65 + 32))(v30 + v41, v42, v66);
  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v94 = 0;
  v44 = v69;
  sub_23DB6EECC();
  (*(v70 + 32))(v30 + v43, v44, v71);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v37(v30 + v45, v38, v34);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v70 = xmmword_23DB74320;
  v94 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v71 = v37;
  v47 = v75;
  sub_23DB6EECC();
  v48 = *(v77 + 32);
  v49 = v79;
  v48(v30 + v46, v47, v79);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v94 = v70;
  sub_23DB6EECC();
  v48(v30 + v50, v47, v49);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v71(v30 + v51, v38, v39);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  v53 = v78;
  sub_23DB6EECC();
  (*(v80 + 32))(v30 + v52, v53, v81);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v94 = 0uLL;
  sub_23DB6EECC();
  v48(v30 + v54, v47, v49);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v94 = nullsub_1;
  *(&v94 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v56 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v30 + v55, v56, v84);
  v57 = v72;
  v58 = v74;
  v59 = v76;
  v67(v72, v74, v76);
  Page.init(id:title:text:subPages:iconName:)(v57, v85, v86, v87, v88, v89, v90, v91);
  v60 = *(v92 + 8);
  v60(v93, v59);
  v60(v58, v59);
  v60(v73, v59);
  return v30;
}

uint64_t HeaderWithBody.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeaderWithBody(0) + 24);
  v4 = sub_23DB6EA8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeaderWithBody.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeaderWithBody(0) + 24);
  v4 = sub_23DB6EA8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeaderWithBody.hash(into:)(uint64_t a1)
{
  type metadata accessor for HeaderWithBody(0);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_23DB7083C();
}

uint64_t static HeaderWithBody.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HeaderWithBody(0);

  return sub_23DB6EA6C();
}

uint64_t HeaderWithBody.hashValue.getter()
{
  sub_23DB70E0C();
  type metadata accessor for HeaderWithBody(0);
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2D680()
{
  sub_23DB70E0C();
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2D71C(uint64_t a1)
{
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_23DB7083C();
}

uint64_t sub_23DA2D79C(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2D844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23DB6EA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23DA2D914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a7;
  v97 = a8;
  v94 = a5;
  v95 = a6;
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v100 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v66 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v80 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v79 = &v66 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v66 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - v15;
  v16 = sub_23DB6EA8C();
  v99 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v82 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v66 - v29;
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__fullText;
  *&v101 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v28 + 32))(v8 + v31, v30, v27);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__rotorName;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v33 = *(v24 + 32);
  v33(v8 + v32, v26, v23);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__textLabel;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v76 = v26;
  v78 = v23;
  v77 = v24 + 32;
  v70 = v33;
  v33(v8 + v34, v26, v23);
  v35 = MEMORY[0x277D84F90];
  v36 = v99 + 16;
  v37 = *(v99 + 16);
  v37(v22, v100, v16);
  v83 = v22;
  v85 = v16;
  v72 = v36;
  v71 = v37;
  v37(v98, v22, v16);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v101) = 0;
  v39 = v67;
  sub_23DB6EECC();
  v40 = *(v68 + 32);
  v41 = v39;
  v42 = v39;
  v43 = v69;
  v40(v8 + v38, v42);
  if (v35 >> 62 && sub_23DB70C3C())
  {
    v44 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v44 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v44;
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v101 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v46 = v73;
  sub_23DB6EECC();
  (*(v74 + 32))(v8 + v45, v46, v75);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v101 = 0;
  v48 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v8 + v47, v48, v81);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  (v40)(v8 + v49, v41, v43);
  v81 = v40;
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v80 = xmmword_23DB74320;
  v101 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v51 = v84;
  sub_23DB6EECC();
  v52 = v87;
  v53 = *(v86 + 32);
  v53(v8 + v50, v51, v87);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v101 = v80;
  sub_23DB6EECC();
  v53(v8 + v54, v51, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v81(v8 + v55, v41, v43);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v57 = v76;
  sub_23DB6EECC();
  v70(v8 + v56, v57, v78);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v101 = 0uLL;
  sub_23DB6EECC();
  v53(v8 + v58, v51, v52);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v101 = nullsub_1;
  *(&v101 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v60 = v88;
  sub_23DB6EECC();
  (*(v89 + 32))(v8 + v59, v60, v90);
  v61 = v82;
  v62 = v98;
  v63 = v85;
  v71(v82, v98, v85);
  Page.init(id:title:text:subPages:iconName:)(v61, v91, v92, v93, v94, v95, v96, v97);
  v64 = *(v99 + 8);
  v64(v100, v63);
  v64(v62, v63);
  v64(v83, v63);
  return v8;
}

uint64_t sub_23DA2E31C()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__fullText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__rotorName;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), v0 + v3, v4);
  v5 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__textLabel;

  return v7(v5, v4);
}

uint64_t sub_23DA2E418()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__fullText;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__rotorName;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page18PracticeVOWithText__textLabel, v4);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA2E578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a7;
  v90 = a8;
  v87 = a5;
  v88 = a6;
  v85 = a3;
  v86 = a4;
  v84 = a2;
  v93 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v62 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v62 - v10;
  *&v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v62 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v62 - v12;
  v13 = sub_23DB6EA8C();
  v92 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v75 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v62 - v26;
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__exampleText;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v30 = *(v25 + 32);
  v69 = v27;
  v71 = v24;
  v70 = v25 + 32;
  v63 = v30;
  v30(v28 + v29, v27, v24);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__showRetryPractice;
  LOBYTE(v94) = 1;
  sub_23DB6EECC();
  v32 = *(v21 + 32);
  v32(v28 + v31, v23, v20);
  v33 = v92 + 16;
  v34 = *(v92 + 16);
  v34(v19, v93, v13);
  v77 = v19;
  v79 = v13;
  v67 = v33;
  v66 = v34;
  v34(v91, v19, v13);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v36 = v23;
  v37 = v23;
  v38 = v20;
  v32(v28 + v35, v37, v20);
  v39 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v40 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
  }

  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v40;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v94 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v42 = v64;
  sub_23DB6EECC();
  (*(v65 + 32))(v28 + v41, v42, v68);
  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v39;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v94 = 0;
  v44 = v72;
  sub_23DB6EECC();
  (*(v73 + 32))(v28 + v43, v44, v74);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v62 = v32;
  v32(v28 + v45, v36, v38);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v74 = xmmword_23DB74320;
  v94 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v47 = v76;
  sub_23DB6EECC();
  v48 = *(v78 + 32);
  v49 = v80;
  v48(v28 + v46, v47, v80);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v94 = v74;
  sub_23DB6EECC();
  v48(v28 + v50, v47, v49);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v62(v28 + v51, v36, v38);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  v53 = v69;
  sub_23DB6EECC();
  v63(v28 + v52, v53, v71);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v94 = 0uLL;
  sub_23DB6EECC();
  v48(v28 + v54, v47, v49);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v94 = nullsub_1;
  *(&v94 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v56 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v28 + v55, v56, v83);
  v57 = v75;
  v58 = v91;
  v59 = v79;
  v66(v75, v91, v79);
  Page.init(id:title:text:subPages:iconName:)(v57, v84, v85, v86, v87, v88, v89, v90);
  v60 = *(v92 + 8);
  v60(v93, v59);
  v60(v58, v59);
  v60(v77, v59);
  return v28;
}

uint64_t sub_23DA2EEDC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = *a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(*(v11 - 8) + 8);

  return v12(v4 + v10, v11);
}

uint64_t sub_23DA2EFCC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  Page.Practice.deinit();
  v9 = *a1;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v12 - 8) + 8))(v4 + v11, v12);

  v13 = *(*v4 + 48);
  v14 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v13, v14);
}

uint64_t sub_23DA2F0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_23DB6EA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23DA2F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a7;
  v96 = a8;
  v93 = a5;
  v94 = a6;
  v91 = a3;
  v92 = a4;
  v90 = a2;
  v99 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v82 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = &v66 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v76 = *(v77 - 1);
  MEMORY[0x28223BE20](v77);
  v75 = &v66 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v66 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - v16;
  v17 = sub_23DB6EA8C();
  v98 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v66 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v24 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v66 - v29;
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v33 = MEMORY[0x277D84F90];
  *&v100 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC810, &unk_23DB7A670);
  sub_23DB6EECC();
  v34 = v31 + v32;
  v35 = v33;
  (*(v28 + 32))(v34, v30, v27);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  *&v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
  sub_23DB6EECC();
  (*(v24 + 32))(v31 + v36, v26, v80);
  v37 = v98 + 16;
  v38 = *(v98 + 16);
  v38(v23, v99, v17);
  v78 = v23;
  v80 = v17;
  v71 = v37;
  v70 = v38;
  v38(v97, v23, v17);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v100) = 0;
  v40 = v67;
  sub_23DB6EECC();
  v41 = *(v68 + 32);
  v42 = v40;
  v43 = v69;
  v41(v31 + v39, v40);
  if (v35 >> 62 && sub_23DB70C3C())
  {
    v44 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v44 = MEMORY[0x277D84FA0];
  }

  *(v31 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v44;
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v100 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v46 = v72;
  sub_23DB6EECC();
  (*(v73 + 32))(v31 + v45, v46, v74);
  *(v31 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v100 = 0;
  v48 = v75;
  sub_23DB6EECC();
  (*(v76 + 32))(v31 + v47, v48, v77);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  (v41)(v31 + v49, v42, v43);
  v77 = v41;
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v76 = xmmword_23DB74320;
  v100 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v51 = v81;
  sub_23DB6EECC();
  v52 = v84;
  v53 = *(v83 + 32);
  v53(v31 + v50, v51, v84);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v100 = v76;
  sub_23DB6EECC();
  v53(v31 + v54, v51, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v77(v31 + v55, v42, v43);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  v57 = v82;
  sub_23DB6EECC();
  (*(v85 + 32))(v31 + v56, v57, v86);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v100 = 0uLL;
  sub_23DB6EECC();
  v53(v31 + v58, v51, v52);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v100 = nullsub_1;
  *(&v100 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v60 = v87;
  sub_23DB6EECC();
  (*(v88 + 32))(v31 + v59, v60, v89);
  v61 = v79;
  v62 = v97;
  v63 = v80;
  v70(v79, v97, v80);
  Page.init(id:title:text:subPages:iconName:)(v61, v90, v91, v92, v93, v94, v95, v96);
  v64 = *(v98 + 8);
  v64(v99, v63);
  v64(v62, v63);
  v64(v78, v63);
  return v31;
}

uint64_t sub_23DA2FBD8()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_23DA2FC98()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableInfo;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB10, &qword_23DB75C68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTables__tableHeaders;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB18, &qword_23DB75C70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DA2FDC8()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA2FE3C(uint64_t a1)
{
  v2 = *v1;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v2);
  return sub_23DB70E4C();
}

uint64_t sub_23DA2FE94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DA2FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v99 = a7;
  v100 = a8;
  v97 = a5;
  v98 = a6;
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v105 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  v91 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v71 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v85 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v84 = &v71 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v71 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v71 - v16;
  v17 = sub_23DB6EA8C();
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x28223BE20](v17);
  v87 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v102 = &v71 - v20;
  MEMORY[0x28223BE20](v21);
  v101 = &v71 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD0, &qword_23DB75320);
  v23 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v25 = &v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v71 - v32;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__message;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v35 = *(v31 + 32);
  v78 = v33;
  v80 = v30;
  v79 = v31 + 32;
  v77 = v35;
  v35(v9 + v34, v33, v30);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__contextualMenuButtons;
  v37 = MEMORY[0x277D84F90];
  *&v106 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC860, &unk_23DB74E80);
  sub_23DB6EECC();
  (*(v27 + 32))(v9 + v36, v29, v26);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__messageReaction;
  LOBYTE(v106) = 2;
  sub_23DB6EECC();
  (*(v23 + 32))(v9 + v38, v25, v75);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE340, &qword_23DB75330);
  swift_allocObject();
  *(v9 + v39) = sub_23DABD334(0, 0xE000000000000000);
  v40 = v104;
  v41 = v103 + 16;
  v42 = *(v103 + 16);
  v43 = v101;
  v42(v101, v105, v104);
  v75 = v41;
  v74 = v42;
  v42(v102, v43, v40);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v106) = 0;
  v45 = v72;
  sub_23DB6EECC();
  v46 = *(v73 + 32);
  v47 = v45;
  v48 = v76;
  v46(v9 + v44, v45);
  if (v37 >> 62 && sub_23DB70C3C())
  {
    v49 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v49 = MEMORY[0x277D84FA0];
  }

  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v49;
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v106 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v51 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v9 + v50, v51, v83);
  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v37;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v106 = 0;
  v53 = v84;
  sub_23DB6EECC();
  (*(v85 + 32))(v9 + v52, v53, v86);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  (v46)(v9 + v54, v45, v48);
  v86 = v46;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v85 = xmmword_23DB74320;
  v106 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v56 = v88;
  sub_23DB6EECC();
  v57 = v90;
  v58 = *(v89 + 32);
  v58(v9 + v55, v56, v90);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v106 = v85;
  sub_23DB6EECC();
  v58(v9 + v59, v56, v57);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v86(v9 + v60, v47, v48);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  v62 = v78;
  sub_23DB6EECC();
  v77(v9 + v61, v62, v80);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v106 = 0uLL;
  sub_23DB6EECC();
  v58(v9 + v63, v56, v57);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v106 = nullsub_1;
  *(&v106 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v65 = v91;
  sub_23DB6EECC();
  (*(v92 + 32))(v9 + v64, v65, v93);
  v66 = v87;
  v67 = v102;
  v68 = v104;
  v74(v87, v102, v104);
  Page.init(id:title:text:subPages:iconName:)(v66, v94, v95, v96, v97, v98, v99, v100);
  v69 = *(v103 + 8);
  v69(v105, v68);
  v69(v67, v68);
  v69(v101, v68);
  return v9;
}

uint64_t sub_23DA30A10()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__message;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__contextualMenuButtons;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__messageReaction;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD0, &qword_23DB75320);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
}

uint64_t sub_23DA30B2C()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__message;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__contextualMenuButtons;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__messageReaction;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD0, &qword_23DB75320);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_23DA30CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a8;
  v84 = a5;
  v85 = a6;
  v82 = a3;
  v83 = a4;
  v81 = a2;
  v88 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v58 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v71 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v58 - v12;
  *&v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v58 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - v14;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v67 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v58 - v26;
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v30 = *(v25 + 32);
  v30(v28 + v29, v27, v24);
  v72 = v16;
  v31 = *(v16 + 16);
  v31(v23, v88, v15);
  v69 = v20;
  v68 = v23;
  v73 = v15;
  v66 = v16 + 16;
  v65 = v31;
  v31(v20, v23, v15);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v33 = v24;
  v34 = v30;
  v30(v28 + v32, v27, v24);
  v35 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v36 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v36;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v89 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v38 = v59;
  sub_23DB6EECC();
  (*(v60 + 32))(v28 + v37, v38, v61);
  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v89 = 0;
  v40 = v62;
  sub_23DB6EECC();
  (*(v63 + 32))(v28 + v39, v40, v64);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v58 = v34;
  v34(v28 + v41, v27, v33);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v64 = xmmword_23DB74320;
  v89 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v43 = v70;
  sub_23DB6EECC();
  v44 = *(v71 + 32);
  v45 = v75;
  v44(v28 + v42, v43, v75);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v89 = v64;
  sub_23DB6EECC();
  v44(v28 + v46, v43, v45);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v58(v28 + v47, v27, v33);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  v49 = v74;
  sub_23DB6EECC();
  (*(v76 + 32))(v28 + v48, v49, v77);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v89 = 0uLL;
  sub_23DB6EECC();
  v44(v28 + v50, v43, v45);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v89 = nullsub_1;
  *(&v89 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v52 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v28 + v51, v52, v80);
  v53 = v67;
  v54 = v69;
  v55 = v73;
  v65(v67, v69, v73);
  Page.init(id:title:text:subPages:iconName:)(v53, v81, v82, v83, v84, v85, v86, v87);
  v56 = *(v72 + 8);
  v56(v88, v55);
  v56(v54, v55);
  v56(v68, v55);
  return v28;
}

uint64_t sub_23DA315B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = a7;
  v83 = a8;
  v80 = a5;
  v81 = a6;
  v78 = a3;
  v79 = a4;
  v77 = a2;
  v84 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v56 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v66 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v62 = &v56 - v12;
  *&v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v56 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  v20 = sub_23DB6EA8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  v29 = swift_allocObject();
  v69 = v21;
  v30 = *(v21 + 16);
  v30(v28, v84, v20);
  v67 = v28;
  v68 = v25;
  v61 = v20;
  v64 = v21 + 16;
  v63 = v30;
  v30(v25, v28, v20);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v32 = *(v17 + 32);
  v32(v29 + v31, v19, v16);
  v33 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v34 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v34 = MEMORY[0x277D84FA0];
  }

  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v34;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v85 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v56 + 32))(v29 + v35, v15, v57);
  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v33;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v85 = 0;
  v37 = v58;
  sub_23DB6EECC();
  (*(v59 + 32))(v29 + v36, v37, v60);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v39 = v16;
  v32(v29 + v38, v19, v16);
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v60 = xmmword_23DB74320;
  v85 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v41 = v62;
  sub_23DB6EECC();
  v42 = *(v66 + 4);
  v66 = v32;
  v43 = v71;
  v42(v29 + v40, v41, v71);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v85 = v60;
  sub_23DB6EECC();
  v42(v29 + v44, v41, v43);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v66(v29 + v45, v19, v39);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v47 = v70;
  sub_23DB6EECC();
  (*(v72 + 32))(v29 + v46, v47, v73);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v85 = 0uLL;
  sub_23DB6EECC();
  v42(v29 + v48, v41, v43);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v85 = nullsub_1;
  *(&v85 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v50 = v74;
  sub_23DB6EECC();
  (*(v75 + 32))(v29 + v49, v50, v76);
  v51 = v65;
  v52 = v68;
  v53 = v61;
  v63(v65, v68, v61);
  Page.init(id:title:text:subPages:iconName:)(v51, v77, v78, v79, v80, v81, v82, v83);
  v54 = *(v69 + 8);
  v54(v84, v53);
  v54(v52, v53);
  v54(v67, v53);
  return v29;
}

uint64_t sub_23DA31E3C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_23DA31E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a8;
  v84 = a5;
  v85 = a6;
  v82 = a3;
  v83 = a4;
  v81 = a2;
  v88 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v58 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v68 = &v58 - v12;
  *&v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v58 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = sub_23DB6EA8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v70 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v58 - v26;
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = MEMORY[0x277D84F90];
  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_bodyTexts) = MEMORY[0x277D84F90];
  v31 = (v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v73 = v20;
  v32 = *(v20 + 16);
  v32(v27, v88, v19);
  v71 = v27;
  v72 = v24;
  v67 = v19;
  v66 = v20 + 16;
  v65 = v32;
  v32(v24, v27, v19);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v34 = *(v16 + 32);
  v35 = v15;
  v34(v28 + v33, v18, v15);
  if (v30 >> 62 && sub_23DB70C3C())
  {
    v36 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v36;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v89 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v38 = v59;
  sub_23DB6EECC();
  (*(v60 + 32))(v28 + v37, v38, v61);
  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v89 = 0;
  v40 = v62;
  sub_23DB6EECC();
  (*(v63 + 32))(v28 + v39, v40, v64);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v34(v28 + v41, v18, v15);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v64 = xmmword_23DB74320;
  v89 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v43 = v68;
  sub_23DB6EECC();
  v44 = *(v69 + 4);
  v69 = v34;
  v45 = v75;
  v44(v28 + v42, v43, v75);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v89 = v64;
  sub_23DB6EECC();
  v44(v28 + v46, v43, v45);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v69(v28 + v47, v18, v35);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  v49 = v74;
  sub_23DB6EECC();
  (*(v76 + 32))(v28 + v48, v49, v77);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v89 = 0uLL;
  sub_23DB6EECC();
  v44(v28 + v50, v43, v45);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v89 = nullsub_1;
  *(&v89 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v52 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v28 + v51, v52, v80);
  v53 = v70;
  v54 = v72;
  v55 = v67;
  v65(v70, v72, v67);
  Page.init(id:title:text:subPages:iconName:)(v53, v81, v82, v83, v84, v85, v86, v87);
  v56 = *(v73 + 8);
  v56(v88, v55);
  v56(v54, v55);
  v56(v71, v55);
  return v28;
}

uint64_t sub_23DA32758()
{
}

uint64_t sub_23DA327B0()
{
  Page.Practice.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t (*sub_23DA32888())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t (*sub_23DA3292C())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40310;
}

uint64_t sub_23DA32A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a7;
  v97 = a8;
  v94 = a5;
  v95 = a6;
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v102 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v67 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v83 = *(v84 - 1);
  MEMORY[0x28223BE20](v84);
  v81 = &v67 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v67 - v12;
  v13 = sub_23DB6EA8C();
  v100 = *(v13 - 8);
  v101 = v13;
  MEMORY[0x28223BE20](v13);
  v87 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v67 - v16;
  MEMORY[0x28223BE20](v17);
  v98 = &v67 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v67 - v26;
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonName;
  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v29 = *(v25 + 32);
  v29(v8 + v28, v27, v24);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonIconName;
  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v75 = v27;
  v80 = v24;
  v77 = v25 + 32;
  v74 = v29;
  v29(v8 + v30, v27, v24);
  v31 = v68;
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonEnabledAction;
  *&v103 = nullsub_1;
  *(&v103 + 1) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  sub_23DB6EECC();
  v34 = *(v21 + 32);
  v34(v8 + v32, v23, v20);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonDisabledAction;
  *&v103 = nullsub_1;
  *(&v103 + 1) = 0;
  v73 = v33;
  sub_23DB6EECC();
  v82 = v23;
  v85 = v21 + 32;
  v86 = v20;
  v72 = v34;
  v34(v8 + v35, v23, v20);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonPressed;
  LOBYTE(v103) = 0;
  sub_23DB6EECC();
  v37 = *(v71 + 32);
  v38 = v69;
  v37(v8 + v36, v31, v69);
  v39 = v101;
  v40 = v100 + 16;
  v41 = *(v100 + 16);
  v42 = v98;
  v41(v98, v102, v101);
  v71 = v40;
  v70 = v41;
  v41(v99, v42, v39);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v103) = 0;
  sub_23DB6EECC();
  v37(v8 + v43, v31, v38);
  v44 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v45 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v45;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v103 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v47 = v76;
  sub_23DB6EECC();
  (*(v78 + 32))(v8 + v46, v47, v79);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v44;
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v103 = 0;
  v49 = v81;
  sub_23DB6EECC();
  (*(v83 + 32))(v8 + v48, v49, v84);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v103) = 0;
  sub_23DB6EECC();
  v37(v8 + v50, v31, v38);
  v84 = v37;
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v83 = xmmword_23DB74320;
  v103 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v52 = v88;
  sub_23DB6EECC();
  v53 = v90;
  v54 = *(v89 + 32);
  v54(v8 + v51, v52, v90);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v103 = v83;
  sub_23DB6EECC();
  v54(v8 + v55, v52, v53);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v103) = 0;
  sub_23DB6EECC();
  v84(v8 + v56, v31, v38);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  v58 = v75;
  sub_23DB6EECC();
  v74(v8 + v57, v58, v80);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v103 = 0uLL;
  sub_23DB6EECC();
  v54(v8 + v59, v52, v53);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v103 = nullsub_1;
  *(&v103 + 1) = 0;
  v61 = v82;
  sub_23DB6EECC();
  v72(v8 + v60, v61, v86);
  v62 = v87;
  v63 = v99;
  v64 = v101;
  v70(v87, v99, v101);
  Page.init(id:title:text:subPages:iconName:)(v62, v91, v92, v93, v94, v95, v96, v97);
  v65 = *(v100 + 8);
  v65(v102, v64);
  v65(v63, v64);
  v65(v98, v64);
  return v8;
}

uint64_t sub_23DA33438()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonIconName, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonEnabledAction;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonDisabledAction, v5);
  v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonPressed;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(*(v8 - 8) + 8);

  return v9(v0 + v7, v8);
}

uint64_t sub_23DA33594()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonName;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonIconName, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonEnabledAction;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonDisabledAction, v5);
  v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOMagicTapButton__buttonPressed;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_23DA33760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v95 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v63 - v11;
  *&v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v73 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = &v63 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v63 - v13;
  v14 = sub_23DB6EA8C();
  v93 = *(v14 - 8);
  v94 = v14;
  MEMORY[0x28223BE20](v14);
  v78 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v63 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v63 - v27;
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__readyToAdvance;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  v31 = *(v26 + 32);
  v31(v29 + v30, v28, v25);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__currentGesture;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v33 = *(v22 + 32);
  v72 = v24;
  v76 = v21;
  v74 = v22 + 32;
  v64 = v33;
  v33(v29 + v32, v24, v21);
  v34 = v94;
  v35 = v93 + 16;
  v36 = *(v93 + 16);
  v36(v20, v95, v94);
  v79 = v20;
  v69 = v35;
  v68 = v36;
  v36(v92, v20, v34);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  v38 = v25;
  v65 = v31;
  v31(v29 + v37, v28, v25);
  v39 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v40 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
  }

  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v40;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v96 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v42 = v66;
  sub_23DB6EECC();
  (*(v67 + 32))(v29 + v41, v42, v70);
  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v39;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v96 = 0;
  v44 = v71;
  sub_23DB6EECC();
  (*(v73 + 32))(v29 + v43, v44, v77);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  v63 = v38;
  v46 = v65;
  v65(v29 + v45, v28, v38);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v77 = xmmword_23DB74320;
  v96 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v48 = v75;
  sub_23DB6EECC();
  v49 = v81;
  v50 = *(v80 + 32);
  v50(v29 + v47, v48, v81);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v96 = v77;
  sub_23DB6EECC();
  v50(v29 + v51, v48, v49);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  v46(v29 + v52, v28, v63);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  v54 = v72;
  sub_23DB6EECC();
  v64(v29 + v53, v54, v76);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v96 = 0uLL;
  sub_23DB6EECC();
  v50(v29 + v55, v48, v49);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v96 = nullsub_1;
  *(&v96 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v57 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v29 + v56, v57, v84);
  v58 = v78;
  v59 = v92;
  v60 = v94;
  v68(v78, v92, v94);
  Page.init(id:title:text:subPages:iconName:)(v58, v85, v86, v87, v88, v89, v90, v91);
  v61 = *(v93 + 8);
  v61(v95, v60);
  v61(v59, v60);
  v61(v79, v60);
  return v29;
}

uint64_t sub_23DA34088()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__readyToAdvance;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__currentGesture;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_23DA34148()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__readyToAdvance;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOAnyGesture__currentGesture;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DA34264@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DB6EA8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23DA3432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a7;
  v95 = a8;
  v92 = a5;
  v93 = a6;
  v90 = a3;
  v91 = a4;
  v89 = a2;
  v98 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  v82 = &v64 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v78 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v77 = &v64 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v64 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - v15;
  v16 = sub_23DB6EA8C();
  v97 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v80 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v96 = &v64 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  v23 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v64 - v28;
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationBody;
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v31 = *(v27 + 32);
  v31(v8 + v30, v29, v26);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationActions;
  *&v99 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC860, &unk_23DB74E80);
  sub_23DB6EECC();
  (*(v23 + 32))(v8 + v32, v25, v83);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationAppIcon;
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v71 = v29;
  v75 = v26;
  v73 = v27 + 32;
  v70 = v31;
  v31(v8 + v33, v29, v26);
  v34 = MEMORY[0x277D84F90];
  v35 = v97 + 16;
  v36 = *(v97 + 16);
  v36(v22, v98, v16);
  v81 = v22;
  v83 = v16;
  v69 = v35;
  v68 = v36;
  v36(v96, v22, v16);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v99) = 0;
  v38 = v65;
  sub_23DB6EECC();
  v39 = *(v66 + 32);
  v40 = v38;
  v41 = v67;
  v39(v8 + v37, v38);
  if (v34 >> 62 && sub_23DB70C3C())
  {
    v42 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v42 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v42;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v99 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v44 = v72;
  sub_23DB6EECC();
  (*(v74 + 32))(v8 + v43, v44, v76);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v34;
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v99 = 0;
  v46 = v77;
  sub_23DB6EECC();
  (*(v78 + 32))(v8 + v45, v46, v79);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v99) = 0;
  sub_23DB6EECC();
  (v39)(v8 + v47, v38, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v78 = xmmword_23DB74320;
  v99 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v49 = v82;
  sub_23DB6EECC();
  v79 = v39;
  v50 = v85;
  v51 = *(v84 + 32);
  v51(v8 + v48, v49, v85);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v99 = v78;
  sub_23DB6EECC();
  v51(v8 + v52, v49, v50);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v99) = 0;
  sub_23DB6EECC();
  v79(v8 + v53, v40, v41);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  v55 = v71;
  sub_23DB6EECC();
  v70(v8 + v54, v55, v75);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v99 = 0uLL;
  sub_23DB6EECC();
  v51(v8 + v56, v49, v50);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v99 = nullsub_1;
  *(&v99 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v58 = v86;
  sub_23DB6EECC();
  (*(v87 + 32))(v8 + v57, v58, v88);
  v59 = v80;
  v60 = v96;
  v61 = v83;
  v68(v80, v96, v83);
  Page.init(id:title:text:subPages:iconName:)(v59, v89, v90, v91, v92, v93, v94, v95);
  v62 = *(v97 + 8);
  v62(v98, v61);
  v62(v60, v61);
  v62(v81, v61);
  return v8;
}

uint64_t sub_23DA34D38()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationBody;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v2 - 8) + 8);
  (v7)((v2 - 8), v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationActions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationAppIcon;

  return v7(v5, v2);
}

uint64_t sub_23DA34E34()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationBody;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationActions;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAD8, &qword_23DB75328);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOCustomAction__notificationAppIcon, v2);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA34FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v93 = a7;
  v94 = a8;
  v91 = a5;
  v92 = a6;
  v89 = a3;
  v90 = a4;
  v88 = a2;
  v98 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v85 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v82 = &v66 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v78 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v77 = &v66 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v66 - v15;
  v16 = sub_23DB6EA8C();
  v96 = *(v16 - 8);
  v97 = v16;
  MEMORY[0x28223BE20](v16);
  v80 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v23 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - v28;
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__currentPhrase;
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v31 = *(v27 + 32);
  v31(v8 + v30, v29, v26);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__backingPhrase;
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v74 = v29;
  v76 = v26;
  v75 = v27 + 32;
  v69 = v31;
  v31(v8 + v32, v29, v26);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__textFieldPreviouslyGotInput;
  LOBYTE(v99) = 0;
  sub_23DB6EECC();
  v34 = *(v23 + 32);
  v35 = v67;
  v34(v8 + v33, v25, v67);
  v36 = v97;
  v37 = v96 + 16;
  v38 = *(v96 + 16);
  v38(v22, v98, v97);
  v81 = v22;
  v71 = v37;
  v70 = v38;
  v38(v95, v22, v36);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v99) = 0;
  sub_23DB6EECC();
  v40 = v35;
  v34(v9 + v39, v25, v35);
  v41 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v42 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v42 = MEMORY[0x277D84FA0];
  }

  v43 = v9;
  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v42;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v99 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v45 = v68;
  sub_23DB6EECC();
  (*(v72 + 32))(v9 + v44, v45, v73);
  *(v9 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v41;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v99 = 0;
  v47 = v77;
  sub_23DB6EECC();
  (*(v78 + 32))(v9 + v46, v47, v79);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v99) = 0;
  sub_23DB6EECC();
  v49 = v40;
  v34(v9 + v48, v25, v40);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v78 = xmmword_23DB74320;
  v99 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v51 = v82;
  sub_23DB6EECC();
  v79 = v34;
  v52 = v84;
  v53 = *(v83 + 32);
  v53(v43 + v50, v51, v84);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v99 = v78;
  sub_23DB6EECC();
  v53(v43 + v54, v51, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v99) = 0;
  sub_23DB6EECC();
  v79(v43 + v55, v25, v49);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  v57 = v74;
  sub_23DB6EECC();
  v69(v43 + v56, v57, v76);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v99 = 0uLL;
  sub_23DB6EECC();
  v53(v43 + v58, v51, v52);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v99 = nullsub_1;
  *(&v99 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v60 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v43 + v59, v60, v87);
  v61 = v80;
  v62 = v95;
  v63 = v97;
  v70(v80, v95, v97);
  Page.init(id:title:text:subPages:iconName:)(v61, v88, v89, v90, v91, v92, v93, v94);
  v64 = *(v96 + 8);
  v64(v98, v63);
  v64(v62, v63);
  v64(v81, v63);
  return v43;
}

uint64_t sub_23DA35938()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__currentPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__backingPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__textFieldPreviouslyGotInput;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_23DA35A28()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__currentPhrase;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__backingPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOTyping__textFieldPreviouslyGotInput;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA35B60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DA35C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v98 = a7;
  v99 = a8;
  v96 = a5;
  v97 = a6;
  v94 = a3;
  v95 = a4;
  v93 = a2;
  v104 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v91 = *(v9 - 8);
  v92 = v9;
  MEMORY[0x28223BE20](v9);
  v90 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v87 = &v70 - v12;
  *&v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v70 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v70 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v70 - v15;
  v16 = sub_23DB6EA8C();
  v102 = *(v16 - 8);
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  v85 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v101 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v23 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v25 = &v70 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE0, &qword_23DB75338);
  v26 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v28 = &v70 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE8, &qword_23DB75340);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v70 - v31;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__selectedMode;
  *&v105 = -1;
  type metadata accessor for AXSVoiceOverTouchTypingMode(0);
  sub_23DB6EECC();
  (*(v30 + 32))(v8 + v33, v32, v29);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__allModes;
  v35 = MEMORY[0x277D84F90];
  *&v105 = sub_23DB6BD6C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC988, &unk_23DB74F90);
  sub_23DB6EECC();
  (*(v26 + 32))(v8 + v34, v28, v86);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__pickerHeader;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v37 = *(v23 + 32);
  v80 = v25;
  v81 = v23 + 32;
  v71 = v37;
  v37(v8 + v36, v25, v100);
  v38 = v103;
  v39 = v102 + 16;
  v40 = *(v102 + 16);
  v40(v22, v104, v103);
  v86 = v22;
  v41 = v73;
  v76 = v39;
  v75 = v40;
  v40(v101, v22, v38);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v105) = 0;
  v43 = v72;
  sub_23DB6EECC();
  v44 = *(v74 + 32);
  v45 = v43;
  v46 = v43;
  v47 = v41;
  v44(v8 + v42, v46, v41);
  if (v35 >> 62 && sub_23DB70C3C())
  {
    v48 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v48 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v48;
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v105 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v50 = v77;
  sub_23DB6EECC();
  (*(v78 + 32))(v8 + v49, v50, v79);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v105 = 0;
  v52 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v8 + v51, v52, v84);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v44(v8 + v53, v45, v47);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v84 = xmmword_23DB74320;
  v105 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v55 = v87;
  sub_23DB6EECC();
  v56 = *(v88 + 4);
  v88 = v44;
  v57 = v89;
  v56(v8 + v54, v55, v89);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v105 = v84;
  sub_23DB6EECC();
  v56(v8 + v58, v55, v57);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v88(v8 + v59, v45, v47);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v61 = v80;
  sub_23DB6EECC();
  v71(v8 + v60, v61, v100);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v105 = 0uLL;
  sub_23DB6EECC();
  v56(v8 + v62, v55, v57);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v105 = nullsub_1;
  *(&v105 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v64 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v8 + v63, v64, v92);
  v65 = v85;
  v66 = v101;
  v67 = v103;
  v75(v85, v101, v103);
  Page.init(id:title:text:subPages:iconName:)(v65, v93, v94, v95, v96, v97, v98, v99);
  v68 = *(v102 + 8);
  v68(v104, v67);
  v68(v66, v67);
  v68(v86, v67);
  return v8;
}

uint64_t sub_23DA366CC()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__selectedMode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE8, &qword_23DB75340);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__allModes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE0, &qword_23DB75338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__pickerHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t sub_23DA367D8()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__selectedMode;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE8, &qword_23DB75340);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__allModes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAE0, &qword_23DB75338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOTypingSettings__pickerHeader;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_23DA36954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a7;
  v97 = a8;
  v94 = a5;
  v95 = a6;
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v100 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x28223BE20](v8);
  v88 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v84 = &v66 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v80 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v79 = &v66 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v66 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - v14;
  v15 = sub_23DB6EA8C();
  v99 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v98 = &v66 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - v28;
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  *&v101 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  sub_23DB6EECC();
  (*(v27 + 32))(v30 + v31, v29, v26);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v33 = *(v23 + 32);
  v76 = v25;
  v78 = v22;
  v34 = v22;
  v35 = v67;
  v77 = v23 + 32;
  v70 = v33;
  v33(v30 + v32, v25, v34);
  v36 = v99 + 16;
  v37 = *(v99 + 16);
  v37(v21, v100, v15);
  v83 = v21;
  v85 = v15;
  v72 = v36;
  v71 = v37;
  v37(v98, v21, v15);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v39 = *(v68 + 32);
  v40 = v35;
  v41 = v35;
  v42 = MEMORY[0x277D84F90];
  v43 = v69;
  v39(v30 + v38, v41);
  if (v42 >> 62 && sub_23DB70C3C())
  {
    v44 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v44 = MEMORY[0x277D84FA0];
  }

  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v44;
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v101 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v46 = v73;
  sub_23DB6EECC();
  (*(v74 + 32))(v30 + v45, v46, v75);
  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v42;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v101 = 0;
  v48 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v30 + v47, v48, v81);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  (v39)(v30 + v49, v40, v43);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v80 = xmmword_23DB74320;
  v101 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v51 = v84;
  sub_23DB6EECC();
  v81 = v39;
  v52 = v87;
  v53 = *(v86 + 32);
  v53(v30 + v50, v51, v87);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v101 = v80;
  sub_23DB6EECC();
  v53(v30 + v54, v51, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v81(v30 + v55, v40, v43);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v57 = v76;
  sub_23DB6EECC();
  v70(v30 + v56, v57, v78);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v101 = 0uLL;
  sub_23DB6EECC();
  v53(v30 + v58, v51, v52);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v101 = nullsub_1;
  *(&v101 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v60 = v88;
  sub_23DB6EECC();
  (*(v89 + 32))(v30 + v59, v60, v90);
  v61 = v82;
  v62 = v98;
  v63 = v85;
  v71(v82, v98, v85);
  Page.init(id:title:text:subPages:iconName:)(v61, v91, v92, v93, v94, v95, v96, v97);
  v64 = *(v99 + 8);
  v64(v100, v63);
  v64(v62, v63);
  v64(v83, v63);
  return v30;
}

uint64_t sub_23DA3733C()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_23DA373FC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DA37518()
{
  sub_23DB70E0C();
  sub_23DB7091C();
  sub_23DB7015C();
  sub_23DB70E2C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA37594(uint64_t a1)
{
  sub_23DB7091C();
  sub_23DB7015C();
  return sub_23DB70E2C();
}

uint64_t sub_23DA375E4(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB7091C();
  sub_23DB7015C();
  sub_23DB70E2C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA3765C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_23DB70DBC(), result = 0, (v5 & 1) != 0))
  {
    if (sub_23DB7010C())
    {
      return v2 ^ v3 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23DA376F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a7;
  v93 = a8;
  v90 = a5;
  v91 = a6;
  v88 = a3;
  v89 = a4;
  v87 = a2;
  v95 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x28223BE20](v8);
  v84 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v62 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v75 = &v62 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v62 - v14;
  v15 = sub_23DB6EA8C();
  v94 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v77 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__verticalScrollViewLabel;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v29 = *(v24 + 32);
  v29(v27 + v28, v26, v23);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__horizontalScrollViewLabel;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v71 = v26;
  v74 = v23;
  v72 = v24 + 32;
  v65 = v29;
  v29(v27 + v30, v26, v23);
  v31 = v94 + 16;
  v32 = *(v94 + 16);
  v32(v22, v95, v15);
  v79 = v22;
  v80 = v19;
  v81 = v15;
  v70 = v31;
  v69 = v32;
  v32(v19, v22, v15);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v96) = 0;
  v34 = v62;
  sub_23DB6EECC();
  v35 = *(v63 + 32);
  v36 = v34;
  v37 = v34;
  v38 = v64;
  v35(v27 + v33, v37);
  v39 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v40 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v40;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v96 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v42 = v66;
  sub_23DB6EECC();
  (*(v67 + 32))(v27 + v41, v42, v68);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v39;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v96 = 0;
  v44 = v75;
  sub_23DB6EECC();
  (*(v76 + 32))(v27 + v43, v44, v73);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  (v35)(v27 + v45, v36, v38);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v76 = xmmword_23DB74320;
  v96 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v47 = v78;
  sub_23DB6EECC();
  v48 = *(v82 + 4);
  v82 = v35;
  v49 = v83;
  v48(v27 + v46, v47, v83);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v96 = v76;
  sub_23DB6EECC();
  v48(v27 + v50, v47, v49);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  v82(v27 + v51, v36, v38);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  v53 = v71;
  sub_23DB6EECC();
  v65(v27 + v52, v53, v74);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v96 = 0uLL;
  sub_23DB6EECC();
  v48(v27 + v54, v47, v49);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v96 = nullsub_1;
  *(&v96 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v56 = v84;
  sub_23DB6EECC();
  (*(v85 + 32))(v27 + v55, v56, v86);
  v57 = v77;
  v59 = v80;
  v58 = v81;
  v69(v77, v80, v81);
  Page.init(id:title:text:subPages:iconName:)(v57, v87, v88, v89, v90, v91, v92, v93);
  v60 = *(v94 + 8);
  v60(v95, v58);
  v60(v59, v58);
  v60(v79, v58);
  return v27;
}

uint64_t sub_23DA38028()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__verticalScrollViewLabel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__horizontalScrollViewLabel;

  return v5(v3, v2);
}

uint64_t sub_23DA380D8()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__verticalScrollViewLabel;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__horizontalScrollViewLabel, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23DA381D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v93 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v62 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v62 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v70 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v69 = &v62 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v17 = &v62 - v16;
  v18 = sub_23DB6EA8C();
  v92 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB08, &unk_23DB7AC00);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - v28;
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeVOGrid__matrix;
  *&v94 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC9F0, &unk_23DB74FE0);
  sub_23DB6EECC();
  (*(v27 + 32))(v30 + v31, v29, v26);
  v32 = v92 + 16;
  v33 = *(v92 + 16);
  v33(v25, v93, v18);
  v74 = v22;
  v73 = v25;
  v34 = v63;
  v76 = v18;
  v68 = v32;
  v67 = v33;
  v33(v22, v25, v18);
  v35 = MEMORY[0x277D84F90];
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v37 = *(v15 + 32);
  v38 = v17;
  v39 = v34;
  v37(v30 + v36, v17, v34);
  if (v35 >> 62 && sub_23DB70C3C())
  {
    v40 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
  }

  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v40;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v94 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v42 = v64;
  sub_23DB6EECC();
  (*(v65 + 32))(v30 + v41, v42, v66);
  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v94 = 0;
  v44 = v69;
  sub_23DB6EECC();
  (*(v70 + 32))(v30 + v43, v44, v71);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v37(v30 + v45, v38, v34);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v70 = xmmword_23DB74320;
  v94 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v71 = v37;
  v47 = v75;
  sub_23DB6EECC();
  v48 = *(v77 + 32);
  v49 = v79;
  v48(v30 + v46, v47, v79);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v94 = v70;
  sub_23DB6EECC();
  v48(v30 + v50, v47, v49);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v71(v30 + v51, v38, v39);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  v53 = v78;
  sub_23DB6EECC();
  (*(v80 + 32))(v30 + v52, v53, v81);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v94 = 0uLL;
  sub_23DB6EECC();
  v48(v30 + v54, v47, v49);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v94 = nullsub_1;
  *(&v94 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v56 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v30 + v55, v56, v84);
  v57 = v72;
  v58 = v74;
  v59 = v76;
  v67(v72, v74, v76);
  Page.init(id:title:text:subPages:iconName:)(v57, v85, v86, v87, v88, v89, v90, v91);
  v60 = *(v92 + 8);
  v60(v93, v59);
  v60(v58, v59);
  v60(v73, v59);
  return v30;
}

uint64_t sub_23DA38B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = a7;
  v92 = a8;
  v89 = a5;
  v90 = a6;
  v87 = a3;
  v88 = a4;
  v86 = a2;
  v93 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v60 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v75 = &v60 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v73 = &v60 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v60 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v60 - v14;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v76 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v60 - v26;
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOSingleButton__buttonName;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v30 = *(v25 + 32);
  v67 = v27;
  v31 = v27;
  v32 = v61;
  v72 = v24;
  v68 = v25 + 32;
  v63 = v30;
  v30(v28 + v29, v31, v24);
  v80 = v16;
  v33 = *(v16 + 16);
  v33(v23, v93, v15);
  v78 = v23;
  v79 = v20;
  v81 = v15;
  v70 = v16 + 16;
  v69 = v33;
  v33(v20, v23, v15);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v35 = *(v13 + 32);
  v36 = v62;
  v35(v28 + v34, v32);
  v37 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v38 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v38 = MEMORY[0x277D84FA0];
  }

  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v38;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v94 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v40 = v64;
  sub_23DB6EECC();
  (*(v65 + 32))(v28 + v39, v40, v66);
  *(v28 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v37;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v94 = 0;
  v42 = v73;
  sub_23DB6EECC();
  (*(v74 + 32))(v28 + v41, v42, v71);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  (v35)(v28 + v43, v32, v36);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v74 = xmmword_23DB74320;
  v94 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v45 = v75;
  sub_23DB6EECC();
  v46 = *(v77 + 4);
  v77 = v35;
  v47 = v82;
  v46(v28 + v44, v45, v82);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v94 = v74;
  sub_23DB6EECC();
  v46(v28 + v48, v45, v47);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v77(v28 + v49, v32, v36);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  v51 = v67;
  sub_23DB6EECC();
  v63(v28 + v50, v51, v72);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v94 = 0uLL;
  sub_23DB6EECC();
  v46(v28 + v52, v45, v47);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v94 = nullsub_1;
  *(&v94 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v54 = v83;
  sub_23DB6EECC();
  (*(v84 + 32))(v28 + v53, v54, v85);
  v55 = v76;
  v56 = v79;
  v57 = v81;
  v69(v76, v79, v81);
  Page.init(id:title:text:subPages:iconName:)(v55, v86, v87, v88, v89, v90, v91, v92);
  v58 = *(v80 + 8);
  v58(v93, v57);
  v58(v56, v57);
  v58(v78, v57);
  return v28;
}

uint64_t sub_23DA394C0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = *(*(v5 - 8) + 8);

  return v6(v3 + v4, v5);
}

uint64_t sub_23DA39544(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  Page.Practice.deinit();
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 52);

  return MEMORY[0x2821FE8D8](v3, v9, v10);
}

float sub_23DA39620(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v3);

  return *&v3;
}

uint64_t sub_23DA396A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v3);

  return v3;
}

uint64_t sub_23DA3977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = swift_allocObject();
  a9(a1, a2, a3, a4, a5, a6, a7, a8);
  return v17;
}

uint64_t sub_23DA3981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v98 = a7;
  v99 = a8;
  v96 = a5;
  v97 = a6;
  v94 = a3;
  v95 = a4;
  v93 = a2;
  v103 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  v90 = v74 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v87 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v86 = v74 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v74 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v108 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = v74 - v14;
  v102 = sub_23DB6EA8C();
  v106 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v89 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = v74 - v17;
  MEMORY[0x28223BE20](v18);
  v104 = v74 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v107 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = v74 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF0, &qword_23DB75348);
  v21 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v23 = v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v74 - v26;
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderName;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v29 = *(v25 + 32);
  v29(v9 + v28, v27, v24);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderValue;
  LODWORD(v109) = 1112014848;
  sub_23DB6EECC();
  v31 = *(v21 + 32);
  v32 = v82;
  v31(v9 + v30, v23, v82);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderUpdatedValue;
  LODWORD(v109) = 1112014848;
  sub_23DB6EECC();
  v31(v9 + v33, v23, v32);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderExplanation;
  v109 = 0uLL;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v36 = v100;
  v76 = v35;
  sub_23DB6EECC();
  v37 = *(v107 + 32);
  v107 += 32;
  v75 = v37;
  v37(v9 + v34, v36, v101);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderAccessibilityValueTemplate;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v29(v9 + v38, v27, v24);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMinLabel;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v29(v9 + v39, v27, v24);
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMaxLabel;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v79 = v27;
  v82 = v24;
  v81 = v25 + 32;
  v80 = v29;
  v29(v9 + v40, v27, v24);
  v41 = v106 + 16;
  v42 = *(v106 + 16);
  v43 = v104;
  v44 = v102;
  v42(v104, v103, v102);
  v74[1] = v41;
  v74[0] = v42;
  v42(v105, v43, v44);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v109) = 0;
  v46 = v77;
  sub_23DB6EECC();
  v47 = *(v108 + 32);
  v48 = v9;
  v49 = v46;
  v50 = v78;
  v108 += 32;
  v47(v9 + v45, v46);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v109 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v83;
  sub_23DB6EECC();
  (*(v84 + 32))(v48 + v53, v54, v85);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v109 = 0;
  v56 = v86;
  sub_23DB6EECC();
  (*(v87 + 32))(v48 + v55, v56, v88);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v109) = 0;
  sub_23DB6EECC();
  (v47)(v48 + v57, v49, v50);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v87 = xmmword_23DB74320;
  v109 = xmmword_23DB74320;
  v59 = v100;
  v88 = v47;
  sub_23DB6EECC();
  v60 = v101;
  v61 = v75;
  v75(v48 + v58, v59, v101);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v109 = v87;
  sub_23DB6EECC();
  v61(v48 + v62, v59, v60);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v109) = 0;
  sub_23DB6EECC();
  v88(v48 + v63, v49, v50);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  v65 = v79;
  sub_23DB6EECC();
  v80(v48 + v64, v65, v82);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v109 = 0uLL;
  sub_23DB6EECC();
  v61(v48 + v66, v59, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v109 = nullsub_1;
  *(&v109 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v48 + v67, v68, v92);
  v69 = v89;
  v70 = v105;
  v71 = v102;
  (v74[0])(v89, v105, v102);
  Page.init(id:title:text:subPages:iconName:)(v69, v93, v94, v95, v96, v97, v98, v99);
  v72 = *(v106 + 8);
  v72(v103, v71);
  v72(v70, v71);
  v72(v104, v71);
  return v48;
}

uint64_t sub_23DA3A33C()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v10 = *(*(v2 - 8) + 8);
  (v10)((v2 - 8), v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF0, &qword_23DB75348);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderUpdatedValue, v4);
  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderExplanation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderAccessibilityValueTemplate, v2);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMinLabel, v2);
  v8 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMaxLabel;

  return (v10)(v8, v2);
}

uint64_t sub_23DA3A4EC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderName;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderValue;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF0, &qword_23DB75348);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderUpdatedValue, v5);
  v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderExplanation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderAccessibilityValueTemplate, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMinLabel, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOSlider__sliderMaxLabel, v2);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_23DA3A6E4@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_23DA3A774(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA3A850@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v7);

  v6 = v7[1];
  *a4 = v7[0];
  a4[1] = v6;
  return result;
}

uint64_t sub_23DA3A8E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23DB70DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_23DB70DBC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for KeyboardKey(0);

  return sub_23DB6EA6C();
}

BOOL _s28AccessibilitySharedUISupport17CommandToPracticeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyboardKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB50, &qword_23DB76A68);
  MEMORY[0x28223BE20](v11);
  v13 = &v27[-v12];
  if (*a1 != *a2 && (sub_23DB70DBC() & 1) == 0)
  {
    return 0;
  }

  v31 = *(a1 + 16);
  v30 = *(a2 + 16);
  if ((_s28AccessibilitySharedUISupport11CommandTypeO2eeoiySbAC_ACtFZ_0(&v31, &v30) & 1) == 0)
  {
    return 0;
  }

  v29 = *(a1 + 17);
  v28 = *(a2 + 17);
  if ((_s28AccessibilitySharedUISupport11CommandTypeO2eeoiySbAC_ACtFZ_0(&v29, &v28) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  if (*(a1 + 19) != *(a2 + 19))
  {
    return 0;
  }

  v14 = type metadata accessor for CommandToPractice(0);
  if ((sub_23DB6EA6C() & 1) == 0 || *(a1 + v14[10]) != *(a2 + v14[10]) || *(a1 + v14[11]) != *(a2 + v14[11]))
  {
    return 0;
  }

  v15 = v14[12];
  v16 = *(v11 + 48);
  sub_23DA0E2B4(a1 + v15, v13, &qword_27E2FC4F0, &qword_23DB74AB8);
  v17 = a2 + v15;
  v18 = v16;
  sub_23DA0E2B4(v17, &v13[v16], &qword_27E2FC4F0, &qword_23DB74AB8);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_23DA17988(v13, &qword_27E2FC4F0, &qword_23DB74AB8);
      goto LABEL_18;
    }

LABEL_15:
    sub_23DA17988(v13, &qword_27E2FCB50, &qword_23DB76A68);
    return 0;
  }

  sub_23DA0E2B4(v13, v10, &qword_27E2FC4F0, &qword_23DB74AB8);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_23DA4060C(v10);
    goto LABEL_15;
  }

  sub_23DA40668(&v13[v18], v7);
  v21 = sub_23DA3A8E0(v10, v7);
  sub_23DA4060C(v7);
  sub_23DA4060C(v10);
  sub_23DA17988(v13, &qword_27E2FC4F0, &qword_23DB74AB8);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v22 = v14[13];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    return v26 && (*v23 == *v25 && v24 == v26 || (sub_23DB70DBC() & 1) != 0);
  }

  return !v26;
}

uint64_t sub_23DA3AD70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1496))();
  *a2 = result;
  return result;
}

uint64_t sub_23DA3ADC4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 1504);

  return v2(v3);
}

uint64_t sub_23DA3AE40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DA3AE98(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23DB70C3C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB38, &qword_23DB76A60);
      result = sub_23DB70CCC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_23DB70C3C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x23EEF70C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_23DB6EE4C();
    sub_23DA3AE40(&qword_27E2FCB40, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_23DB7082C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_23DA3AE40(&qword_27E2FCB48, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_23DB7086C();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_23DA3B1C0()
{
  result = qword_27E2FC498;
  if (!qword_27E2FC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC498);
  }

  return result;
}

uint64_t sub_23DA3B2B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_23DA3B644@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_23DA3B6F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_23DA3B7F4(uint64_t a1)
{
  sub_23DB6EA8C();
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC4B8, &qword_27E2FC358, &qword_23DB74690);
    if (v2 <= 0x3F)
    {
      sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_23DA3F3D4(319, &qword_27E2FC4C0, &qword_27E2FC2F8, &qword_23DB74470);
        if (v4 <= 0x3F)
        {
          sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
          if (v5 <= 0x3F)
          {
            sub_23DA3F3D4(319, &qword_27E2FC4C8, &qword_27E2FC370, &qword_23DB74698);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23DA3CA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23DB6EA8C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23DA3CB60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23DB6EA8C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23DA3CCB0(uint64_t a1)
{
  sub_23DB6EA8C();
  if (v1 <= 0x3F)
  {
    sub_23DA3DAF4(319, &qword_27E2FC508, type metadata accessor for KeyboardKey, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23DA3FC58(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA3CDFC(uint64_t a1)
{
  sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC520, &qword_27E2FC3F0, &unk_23DB74790);
    if (v2 <= 0x3F)
    {
      sub_23DA3FC58(319, &qword_27E2FBFA8, MEMORY[0x277D83B88], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_23DA3F3D4(319, &qword_27E2FC4B8, &qword_27E2FC358, &qword_23DB74690);
        if (v4 <= 0x3F)
        {
          sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
          if (v5 <= 0x3F)
          {
            sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23DA3D5AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23DA3D5F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23DA3D744(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DA3D84C(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC630, &qword_27E2FC638, &qword_23DB779A0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3DA30(uint64_t a1)
{
  sub_23DA3DAF4(319, &qword_27E2FC698, sub_23DA3DB58, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DA3DAF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23DA3DB58()
{
  result = qword_27E2FC6A0;
  if (!qword_27E2FC6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FC6A0);
  }

  return result;
}

uint64_t sub_23DA3DBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23DA3DCC4(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DA3DE10(uint64_t a1)
{
  sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E040(uint64_t a1)
{
  sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23DA3E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23DB6EA8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DA3E2EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23DB6EA8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DA3E390(uint64_t a1)
{
  result = sub_23DB6EA8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23DA3E434(uint64_t a1)
{
  sub_23DA3F3D4(319, &qword_27E2FC7B8, &qword_27E2FC7C0, &unk_23DB7E2F0);
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v11 <= 0x3F)
  {
    a7(319, a4, a5, a6);
    if (v12 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E6E4(uint64_t a1)
{
  sub_23DA3F3D4(319, &qword_27E2FC808, &qword_27E2FC810, &unk_23DB7A670);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC818, &qword_27E2FC820, &unk_23DB74E50);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3E804(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC858, &qword_27E2FC860, &unk_23DB74E80);
    if (v2 <= 0x3F)
    {
      sub_23DA3FC58(319, &qword_27E2FC868, &type metadata for MessageReaction, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA3EADC(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC528, &qword_27E2FC428, &unk_23DB7A330);
    if (v2 <= 0x3F)
    {
      sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA3EC68(uint64_t a1)
{
  sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3EDA0(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC858, &qword_27E2FC860, &unk_23DB74E80);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3EECC(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &qword_27E2FBFB0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3F004(uint64_t a1)
{
  sub_23DA3DAF4(319, &qword_27E2FC978, type metadata accessor for AXSVoiceOverTouchTypingMode, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FC980, &qword_27E2FC988, &unk_23DB74F90);
    if (v2 <= 0x3F)
    {
      sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA3F19C(uint64_t a1)
{
  sub_23DA3F3D4(319, &qword_27E2FC7B8, &qword_27E2FC7C0, &unk_23DB7E2F0);
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DA3F2C8(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DA3F3D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23DB6EF2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23DA3F478(uint64_t a1)
{
  sub_23DA3FC58(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &qword_27E2FCA58, MEMORY[0x277D83A90], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_23DA3F3D4(319, &qword_27E2FC4B8, &qword_27E2FC358, &qword_23DB74690);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23DA3F5E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_23DA3F628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageReaction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageReaction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DA3F7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB6EA8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DA3F8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23DB6EA8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23DA3F9AC(uint64_t a1)
{
  sub_23DB6EA8C();
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23DA184C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23DA3FABC(uint64_t a1)
{
  result = sub_23DB6EA8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23DA3FB88(uint64_t a1)
{
  sub_23DA184C8();
  if (v1 <= 0x3F)
  {
    sub_23DA3FC58(319, &qword_27E2FCA90, &type metadata for NavigationDirection, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23DB6EA8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA3FC58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_8823Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23DB6EA8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_8824Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23DB6EA8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA3FE20(uint64_t a1)
{
  sub_23DA3FC58(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23DB6EA8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23DA3FF6C()
{
  result = qword_27E2FCAB8;
  if (!qword_27E2FCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCAB8);
  }

  return result;
}

unint64_t sub_23DA3FFC4()
{
  result = qword_27E2FCAC0;
  if (!qword_27E2FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCAC0);
  }

  return result;
}

uint64_t sub_23DA40018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB00, &qword_23DB75358);
    v3 = sub_23DB70CCC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_23DB70E0C();

      sub_23DB7091C();
      result = sub_23DB70E4C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_23DB70DBC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_23DA402D8()
{

  return swift_deallocObject();
}

unint64_t sub_23DA40598()
{
  result = qword_27E2FCB30;
  if (!qword_27E2FCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCB30);
  }

  return result;
}

uint64_t sub_23DA4060C(uint64_t a1)
{
  v2 = type metadata accessor for KeyboardKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DA40668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyboardKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA40790@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CommandToPractice(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v18 = v3;
    v19 = a1;
    v11 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

    v13 = 0;
    while (v13 < *(v9 + 16))
    {
      sub_23DA52A58(v11 + *(v4 + 72) * v13, v6, type metadata accessor for CommandToPractice);
      v15 = v6[16];
      if (v15 < 0)
      {
        v20 = v15 & 0x7F;
        if (VCCommandIdentifier.rawValue.getter() == 0xD000000000000019 && 0x800000023DB86130 == v16)
        {

LABEL_12:

          a1 = v19;
          sub_23DA53A24(v6, v19, type metadata accessor for CommandToPractice);
          v17 = 0;
LABEL_13:
          v3 = v18;
          return (*(v4 + 56))(a1, v17, 1, v3);
        }

        v14 = sub_23DB70DBC();

        if (v14)
        {
          goto LABEL_12;
        }
      }

      ++v13;
      result = sub_23DA53A8C(v6, type metadata accessor for CommandToPractice);
      if (v10 == v13)
      {

        v17 = 1;
        a1 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = 1;
    return (*(v4 + 56))(a1, v17, 1, v3);
  }

  return result;
}

uint64_t sub_23DA409E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v36);

  v4 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v5 = v36;
    sub_23DB7063C();
    sub_23DB6F34C();
    *&v27 = v5;
    *(&v27 + 1) = v4;
    LOBYTE(v28) = 1;
    *(&v28 + 1) = 0;
    nullsub_1();
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v36 = v27;
    v37 = v28;
  }

  else
  {
    sub_23DA52AD0(&v36);
  }

  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v7 = *(v3 + v6);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v27);

  v8 = v41;
  v23 = v42;
  v24 = v43;
  v9 = v43;
  v25 = v44;
  v10 = v37;
  v19 = v38;
  v11 = v38;
  v20 = v39;
  v12 = v39;
  v21 = v40;
  v13 = v40;
  v22 = v41;
  v17 = v36;
  v18 = v37;
  v26[6] = v42;
  v26[7] = v43;
  v26[8] = v44;
  v14 = v36;
  v26[2] = v38;
  v26[3] = v39;
  v26[4] = v40;
  v26[5] = v41;
  v26[0] = v36;
  v26[1] = v37;
  *(a2 + 96) = v42;
  *(a2 + 112) = v9;
  *(a2 + 128) = v44;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v8;
  v15 = v27;
  *a2 = v14;
  *(a2 + 16) = v10;
  *(a2 + 144) = v7;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 161) = v15;
  sub_23DA0E2B4(v26, &v27, &qword_27E2FCFF0, &qword_23DB77AE0);
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v27 = v17;
  v28 = v18;
  return sub_23DA17988(&v27, &qword_27E2FCFF0, &qword_23DB77AE0);
}

uint64_t sub_23DA40CDC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_23DB6FA4C();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2B8, &qword_23DB74308);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF60, &qword_23DB77970);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v12 = &v42 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF68, &qword_23DB77978);
  MEMORY[0x28223BE20](v42);
  v14 = &v42 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF70, &qword_23DB77980);
  MEMORY[0x28223BE20](v47);
  v16 = &v42 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF78, &qword_23DB77988);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v42 - v17;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF80, &qword_23DB77990);
  MEMORY[0x28223BE20](v43);
  v19 = &v42 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF88, &qword_23DB77998);
  MEMORY[0x28223BE20](v50);
  v21 = &v42 - v20;
  v56 = a1;
  sub_23DB703CC();
  sub_23DA40790(v7);
  v22 = type metadata accessor for CommandToPractice(0);
  if ((*(*(v22 - 8) + 48))(v7, 1, v22) == 1)
  {
    sub_23DA17988(v7, &qword_27E2FCF58, &unk_23DB77960);
    v23 = 2;
  }

  else
  {
    v23 = v7[18];
    sub_23DA53A8C(v7, type metadata accessor for CommandToPractice);
  }

  LOBYTE(v57) = v23;
  v24 = *a1;
  v59 = *(a1 + 24);
  v60 = v24;
  v25 = swift_allocObject();
  v26 = a1[1];
  *(v25 + 16) = *a1;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a1 + 4);
  sub_23DA0E2B4(&v60, &v58, &qword_27E2FCE48, &qword_23DB76EF8);
  sub_23DA0E2B4(&v59, &v58, &qword_27E2FCE50, &qword_23DB76F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC638, &qword_23DB779A0);
  sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
  sub_23DA52490();
  sub_23DB700BC();

  (*(v44 + 8))(v10, v8);
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v27 = qword_27E30A658;
  KeyPath = swift_getKeyPath();
  (*(v45 + 32))(v14, v12, v46);
  v29 = &v14[*(v42 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;

  v30 = sub_23DB700EC();
  v31 = swift_getKeyPath();
  sub_23DA17A54(v14, v16, &qword_27E2FCF68, &qword_23DB77978);
  v32 = &v16[*(v47 + 36)];
  *v32 = v31;
  v32[1] = v30;
  v33 = v52;
  sub_23DB6FA3C();
  sub_23DA5251C();
  sub_23DA5425C(&qword_27E2FCFB8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v34 = v48;
  v35 = v54;
  sub_23DB6FE2C();
  (*(v53 + 8))(v33, v35);
  sub_23DA17988(v16, &qword_27E2FCF70, &qword_23DB77980);
  v36 = &v19[*(v43 + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFC0, &qword_23DB77A10) + 28);
  v38 = *MEMORY[0x277CDF420];
  v39 = sub_23DB6F04C();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  (*(v49 + 32))(v19, v34, v51);
  v58 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE50, &qword_23DB76F00);
  sub_23DB7038C();
  v40 = v57;
  sub_23DA17A54(v19, v21, &qword_27E2FCF80, &qword_23DB77990);
  *&v21[*(v50 + 36)] = v40;
  sub_23DA5278C();
  sub_23DB6FFDC();
  return sub_23DA17988(v21, &qword_27E2FCF88, &qword_23DB77998);
}

uint64_t sub_23DA41590@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v7);

  sub_23DA16E70();
  result = sub_23DB6FD8C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_23DA41638(__int128 *a1)
{
  v2 = sub_23DB707AC();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DB707CC();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB707EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v26 - v16;
  sub_23DA40790(v26 - v16);
  v18 = type metadata accessor for CommandToPractice(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    return sub_23DA17988(v17, &qword_27E2FCF58, &unk_23DB77960);
  }

  v20 = v17[18];
  result = sub_23DA53A8C(v17, type metadata accessor for CommandToPractice);
  if (v20 == 1)
  {
    v38 = *(a1 + 24);
    aBlock = *(a1 + 24);
    *&v37 = 0x3FE0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE50, &qword_23DB76F00);
    sub_23DB7039C();
    sub_23DA5295C();
    v26[0] = sub_23DB70AEC();
    sub_23DB707DC();
    sub_23DB707FC();
    v21 = *(v9 + 8);
    v26[1] = v9 + 8;
    v27 = v21;
    v21(v11, v8);
    v37 = *a1;
    v22 = swift_allocObject();
    v23 = a1[1];
    *(v22 + 16) = *a1;
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a1 + 4);
    v35 = sub_23DA529E8;
    v36 = v22;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_23DABB3DC;
    v34 = &block_descriptor_0;
    v24 = _Block_copy(&aBlock);
    sub_23DA0E2B4(&v37, v31, &qword_27E2FCE48, &qword_23DB76EF8);
    sub_23DA0E2B4(&v38, v31, &qword_27E2FCE50, &qword_23DB76F00);

    sub_23DB707BC();
    *&aBlock = MEMORY[0x277D84F90];
    sub_23DA5425C(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
    sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
    sub_23DB70C0C();
    v25 = v26[0];
    MEMORY[0x23EEF6E80](v14, v7, v4, v24);
    _Block_release(v24);

    (*(v28 + 8))(v4, v2);
    (*(v29 + 8))(v7, v30);
    return v27(v14, v8);
  }

  return result;
}

uint64_t sub_23DA41B64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF38, &qword_23DB77940);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_23DB6F91C();
  *(v9 + 2) = 0x4020000000000000;
  v10 = sub_23DB6F68C();
  v40 = 1;
  sub_23DA409E8(v2, &v28);
  v49 = v36;
  v50 = v37;
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v52[8] = v36;
  v52[9] = v37;
  v52[4] = v32;
  v52[5] = v33;
  v52[6] = v34;
  v52[7] = v35;
  v52[0] = v28;
  v52[1] = v29;
  v51 = v38;
  v53 = v38;
  v52[2] = v30;
  v52[3] = v31;
  sub_23DA0E2B4(&v41, &v27, &qword_27E2FCF40, &qword_23DB77948);
  sub_23DA17988(v52, &qword_27E2FCF40, &qword_23DB77948);
  *(&v39[7] + 7) = v48;
  *(&v39[8] + 7) = v49;
  *(&v39[9] + 7) = v50;
  *(&v39[10] + 7) = v51;
  *(&v39[3] + 7) = v44;
  *(&v39[4] + 7) = v45;
  *(&v39[5] + 7) = v46;
  *(&v39[6] + 7) = v47;
  *(v39 + 7) = v41;
  *(&v39[1] + 7) = v42;
  *(&v39[2] + 7) = v43;
  v11 = v39[6];
  *(v9 + 153) = v39[7];
  v12 = v39[9];
  *(v9 + 169) = v39[8];
  *(v9 + 185) = v12;
  *(v9 + 194) = *(&v39[9] + 9);
  v13 = v39[2];
  *(v9 + 89) = v39[3];
  v14 = v39[5];
  *(v9 + 105) = v39[4];
  *(v9 + 121) = v14;
  *(v9 + 137) = v11;
  v15 = v39[0];
  *(v9 + 57) = v39[1];
  *(v9 + 73) = v13;
  v16 = v40;
  *(v9 + 3) = v10;
  *(v9 + 4) = 0;
  v9[40] = v16;
  v17 = &v9[*(v4 + 68)];
  *(v9 + 41) = v15;
  *v17 = sub_23DB6F68C();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF48, &qword_23DB77950);
  sub_23DA40CDC(v2, &v17[*(v18 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v28);

  v19 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v20 = v28;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v28);

    if (v28)
    {
      v22 = 0x3FF0000000000000;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    KeyPath = 0;
    v22 = 0;
  }

  sub_23DA0E2B4(v9, v6, &qword_27E2FCF38, &qword_23DB77940);
  v23 = v26;
  sub_23DA0E2B4(v6, v26, &qword_27E2FCF38, &qword_23DB77940);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF50, &qword_23DB77958) + 48));
  sub_23DA52040(v20, v19, KeyPath, 0);
  sub_23DA17988(v9, &qword_27E2FCF38, &qword_23DB77940);
  *v24 = v20;
  v24[1] = v19;
  v24[2] = KeyPath;
  v24[3] = 0;
  v24[4] = v22;
  sub_23DA52098(v20, v19, KeyPath, 0);
  return sub_23DA17988(v6, &qword_27E2FCF38, &qword_23DB77940);
}

uint64_t sub_23DA41FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F55C();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = *a1;
  v54 = *(a1 + 16);
  v55 = *(a1 + 24);
  v53 = *(a1 + 32);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v7[1] = *a1;
  v7[2] = v8;
  v7[3] = *(a1 + 32);
  v9 = v54;
  v10 = v55;
  sub_23DA0E2B4(v56, v33, &qword_27E2FD010, &unk_23DB77B00);
  sub_23DA0E2B4(&v54, v33, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v53, v33, &qword_27E2FD018, &qword_23DB7D950);
  v11 = sub_23DB6F5BC();
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = *(a1 + 32);
  if (v10 == 1)
  {
    sub_23DA0E2B4(v56, v33, &qword_27E2FD010, &unk_23DB77B00);
    sub_23DA0E2B4(&v53, v33, &qword_27E2FD018, &qword_23DB7D950);
  }

  else
  {
    sub_23DA0E2B4(&v54, v33, &qword_27E2FCBA0, &qword_23DB76C70);
    sub_23DA0E2B4(v56, v33, &qword_27E2FD010, &unk_23DB77B00);
    sub_23DA0E2B4(&v54, v33, &qword_27E2FCBA0, &qword_23DB76C70);
    sub_23DA0E2B4(&v53, v33, &qword_27E2FD018, &qword_23DB7D950);
    sub_23DB70ACC();
    v14 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v54, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v23 + 8))(v6, v24);
    v9 = v33[0];
  }

  v15 = (v9 & 1) == 0;
  v25[104] = 1;
  v16 = v9 & 1;
  v25[103] = v16;
  v17 = sub_23DB6FB4C();
  v48 = 1;
  v26 = v11;
  LOBYTE(v27) = 1;
  *(&v27 + 1) = *v52;
  DWORD1(v27) = *&v52[3];
  *(&v27 + 1) = sub_23DA52B44;
  v28 = v12;
  LOBYTE(v29) = v15;
  BYTE1(v29) = v16;
  *(&v29 + 2) = v50;
  WORD3(v29) = v51;
  BYTE8(v29) = v17;
  *(&v29 + 9) = *v49;
  HIDWORD(v29) = *&v49[3];
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  *a2 = sub_23DA52AF0;
  *(a2 + 8) = v7;
  *(a2 + 112) = 1;
  v18 = v27;
  *(a2 + 16) = v26;
  *(a2 + 32) = v18;
  v19 = v31;
  *(a2 + 80) = v30;
  *(a2 + 96) = v19;
  v20 = v29;
  *(a2 + 48) = v28;
  *(a2 + 64) = v20;
  v33[0] = v11;
  v33[1] = 0;
  v34 = 1;
  *&v35[3] = *&v52[3];
  *v35 = *v52;
  v36 = sub_23DA52B44;
  v37 = v12;
  v38 = 0;
  v39 = v15;
  v40 = v16;
  v42 = v51;
  v41 = v50;
  v43 = v17;
  *&v44[3] = *&v49[3];
  *v44 = *v49;
  v46 = 0u;
  v45 = 0u;
  v47 = 1;

  sub_23DA0E2B4(&v26, v25, &qword_27E2FD020, &qword_23DB77B10);
  sub_23DA17988(v33, &qword_27E2FD020, &qword_23DB77B10);
}

uint64_t sub_23DA42414@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v38 = a3;
  v37 = sub_23DB6F2FC();
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v4;
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23DB6F55C();
  v30 = *(v31 - 1);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD028, &qword_23DB77B18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD030, &qword_23DB77B20);
  MEMORY[0x28223BE20](v33);
  v12 = &v28 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD038, &qword_23DB77B28);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = &v28 - v13;
  v42 = a2;
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD040, &qword_23DB77B30);
  sub_23DA17B80(&qword_27E2FD048, &qword_27E2FD040, &qword_23DB77B30, MEMORY[0x277CE14C0]);
  sub_23DB6F01C();
  v50 = *(a2 + 24);
  v14 = *(a2 + 2);
  v49 = v14;
  if (v50 != 1)
  {

    sub_23DB70ACC();
    v15 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v49, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v30 + 8))(v6, v31);
    LOBYTE(v14) = v43;
  }

  sub_23DA430E4(v14 & 1, v12);
  (*(v8 + 8))(v10, v7);
  v48 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v43);

  v30 = *(&v43 + 1);
  v47 = a2[2];
  v16 = v32;
  v31 = *(v32 + 16);
  v17 = v36;
  v18 = v37;
  v31(v36, v41, v37);
  v19 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = a2[1];
  v20[1] = *a2;
  v20[2] = v21;
  v20[3] = a2[2];
  v32 = *(v16 + 32);
  (v32)(v20 + v19, v17, v18);
  sub_23DA0E2B4(&v49, v46, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v48, v46, &qword_27E2FD010, &unk_23DB77B00);
  sub_23DA0E2B4(&v47, v46, &qword_27E2FD018, &qword_23DB7D950);
  v29 = sub_23DA52BC4();
  v22 = v33;
  sub_23DB700BC();

  sub_23DA17988(v12, &qword_27E2FD030, &qword_23DB77B20);
  v43 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  v31(v17, v41, v18);
  v23 = swift_allocObject();
  v24 = a2[1];
  v23[1] = *a2;
  v23[2] = v24;
  v23[3] = a2[2];
  (v32)(v23 + v19, v17, v18);
  sub_23DA0E2B4(&v49, &v43, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v48, &v43, &qword_27E2FD010, &unk_23DB77B00);
  sub_23DA0E2B4(&v47, &v43, &qword_27E2FD018, &qword_23DB7D950);
  *&v43 = v22;
  *(&v43 + 1) = MEMORY[0x277D837D0];
  v44 = v29;
  v45 = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  v25 = v39;
  v26 = v35;
  sub_23DB700BC();

  return (*(v34 + 8))(v25, v26);
}

uint64_t sub_23DA42BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v2 = sub_23DB6F55C();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v73);

  sub_23DA16E70();
  v4 = sub_23DB6FD8C();
  v6 = v5;
  v8 = v7;
  sub_23DB7021C();
  v9 = sub_23DB6FCDC();
  v11 = v10;
  v13 = v12;

  sub_23DA16EC4(v4, v6, v8 & 1);

  sub_23DB6FBDC();
  v14 = sub_23DB6FD3C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_23DA16EC4(v9, v11, v13 & 1);

  v99 = *(v47 + 24);
  v98 = *(v47 + 16);
  if (v99 != 1)
  {

    sub_23DB70ACC();
    v21 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v22 = v44;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v98, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v45 + 8))(v22, v46);
  }

  sub_23DB7063C();
  sub_23DB6F34C();
  v94 = v18 & 1;
  v23 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  *&v60 = v14;
  *(&v60 + 1) = v16;
  LOBYTE(v61) = v18 & 1;
  *(&v61 + 1) = *v93;
  DWORD1(v61) = *&v93[3];
  *(&v61 + 1) = v20;
  v24 = v53;
  v25 = v54;
  v62 = v53;
  v63 = v54;
  v27 = v58;
  v26 = v59;
  v67 = v58;
  v68 = v59;
  v65 = v56;
  v66 = v57;
  v28 = v56;
  v29 = v57;
  v30 = v55;
  v64 = v55;
  LOBYTE(v69) = v23;
  DWORD1(v69) = *&v96[3];
  *(&v69 + 1) = *v96;
  *(&v69 + 1) = v31;
  *&v70 = v32;
  *(&v70 + 1) = v33;
  *&v71 = v34;
  BYTE8(v71) = 0;
  HIDWORD(v71) = *&v97[3];
  *(&v71 + 9) = *v97;
  *(&v51[11] + 7) = v71;
  *(&v51[10] + 7) = v70;
  *(&v51[9] + 7) = v69;
  *(v51 + 7) = v60;
  *(&v51[4] + 7) = v55;
  *(&v51[3] + 7) = v54;
  *(&v51[12] + 7) = 5;
  *(&v51[2] + 7) = v53;
  *(&v51[1] + 7) = v61;
  *(&v51[8] + 7) = v59;
  *(&v51[7] + 7) = v58;
  *(&v51[6] + 7) = v57;
  *(&v51[5] + 7) = v56;
  v35 = v51[8];
  v36 = v48;
  *(v48 + 153) = v51[9];
  v37 = v51[11];
  *(v36 + 169) = v51[10];
  *(v36 + 185) = v37;
  *(v36 + 200) = *(&v51[11] + 15);
  v38 = v51[4];
  *(v36 + 89) = v51[5];
  v39 = v51[7];
  *(v36 + 105) = v51[6];
  *(v36 + 121) = v39;
  *(v36 + 137) = v35;
  v40 = v51[0];
  *(v36 + 25) = v51[1];
  v41 = v51[3];
  *(v36 + 41) = v51[2];
  *(v36 + 57) = v41;
  *(v36 + 73) = v38;
  *(v36 + 9) = v40;
  v81 = v29;
  v82 = v27;
  v83 = v26;
  v95 = 0;
  v52 = 0;
  v72 = 5;
  v42 = KeyPath;
  *v36 = KeyPath;
  *(v36 + 8) = 0;
  v73[0] = v14;
  v73[1] = v16;
  v74 = v18 & 1;
  *v75 = *v93;
  *&v75[3] = *&v93[3];
  v76 = v20;
  v77 = v24;
  v78 = v25;
  v79 = v30;
  v80 = v28;
  v84 = v23;
  *&v85[3] = *&v96[3];
  *v85 = *v96;
  v86 = v31;
  v87 = v32;
  v88 = v33;
  v89 = v34;
  v90 = 0;
  *&v91[3] = *&v97[3];
  *v91 = *v97;
  v92 = 5;
  sub_23DA5208C(v42, 0);
  sub_23DA0E2B4(&v60, &v50, &qword_27E2FD098, &qword_23DB77C78);
  sub_23DA17988(v73, &qword_27E2FD098, &qword_23DB77C78);
  return sub_23DA4FF14(v42, 0);
}

uint64_t sub_23DA430E4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD070, &qword_23DB77B88);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD060, &qword_23DB77B80);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  sub_23DB7062C();
  sub_23DB6F34C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD028, &qword_23DB77B18);
  (*(*(v12 - 8) + 16))(v8, v3, v12);
  v13 = &v8[*(v6 + 44)];
  v14 = v30[5];
  *(v13 + 4) = v30[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v30[6];
  v15 = v30[1];
  *v13 = v30[0];
  *(v13 + 1) = v15;
  v16 = v30[3];
  *(v13 + 2) = v30[2];
  *(v13 + 3) = v16;
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v17 = qword_27E30A658;
  v18 = sub_23DB6FB3C();
  sub_23DA17A54(v8, v11, &qword_27E2FD070, &qword_23DB77B88);
  v19 = &v11[*(v9 + 36)];
  *v19 = v17;
  v19[8] = v18;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD030, &qword_23DB77B20) + 36));
  v21 = *(sub_23DB6F32C() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_23DB6F63C();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #8.0 }

  *v20 = _Q0;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  sub_23DA17A54(v11, a2, &qword_27E2FD060, &qword_23DB77B80);
}

uint64_t sub_23DA433D8(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_23DA0E2B4(&v6, &v3, &qword_27E2FD090, &qword_23DB77B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  if (v3 == 1)
  {
    sub_23DB7067C();
    sub_23DB7065C();

    MEMORY[0x28223BE20](v1);
    sub_23DB6F19C();

    v4 = v5;
    LOBYTE(v3) = 0;
    sub_23DB7039C();
  }

  return sub_23DA17988(&v5, &qword_27E2FD018, &qword_23DB7D950);
}

uint64_t sub_23DA4351C(uint64_t a1)
{
  v1 = (*(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v2 = *v1;

  v2(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  return sub_23DB7039C();
}

uint64_t sub_23DA435C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFF8, &qword_23DB77AE8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_23DB6F91C();
  *(v9 + 2) = 0x4020000000000000;
  v10 = *(v2 + 8);
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v12 = *(v10 + v11);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v45);

  v13 = v45[0];
  *(v9 + 3) = v12;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v9[41] = v13;
  v14 = sub_23DB6F68C();
  v36 = 1;
  sub_23DA41FD4(v2, &v27);
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v45[0] = v27;
  v45[1] = v28;
  v45[2] = v29;
  v45[3] = v30;
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v46 = v34;
  sub_23DA0E2B4(&v37, &v26, &qword_27E2FD000, &qword_23DB77AF0);
  sub_23DA17988(v45, &qword_27E2FD000, &qword_23DB77AF0);
  *&v35[71] = v41;
  *&v35[87] = v42;
  *&v35[103] = v43;
  *&v35[7] = v37;
  *&v35[23] = v38;
  *&v35[39] = v39;
  *&v35[55] = v40;
  v15 = *&v35[80];
  *(v9 + 129) = *&v35[64];
  *(v9 + 145) = v15;
  *(v9 + 161) = *&v35[96];
  v16 = *&v35[16];
  *(v9 + 65) = *v35;
  *(v9 + 81) = v16;
  v17 = *&v35[48];
  *(v9 + 97) = *&v35[32];
  v35[119] = v44;
  v18 = v36;
  *(v9 + 6) = v14;
  *(v9 + 7) = 0;
  v9[64] = v18;
  *(v9 + 177) = *&v35[112];
  *(v9 + 113) = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v27);

  v19 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    v20 = v27;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v27);

    if (v27)
    {
      v22 = 0x3FF0000000000000;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    KeyPath = 0;
    v22 = 0;
  }

  sub_23DA0E2B4(v9, v6, &qword_27E2FCFF8, &qword_23DB77AE8);
  sub_23DA0E2B4(v6, a1, &qword_27E2FCFF8, &qword_23DB77AE8);
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD008, &qword_23DB77AF8) + 48));
  sub_23DA52040(v20, v19, KeyPath, 0);
  sub_23DA17988(v9, &qword_27E2FCFF8, &qword_23DB77AE8);
  *v23 = v20;
  v23[1] = v19;
  v23[2] = KeyPath;
  v23[3] = 0;
  v23[4] = v22;
  sub_23DA52098(v20, v19, KeyPath, 0);
  return sub_23DA17988(v6, &qword_27E2FCFF8, &qword_23DB77AE8);
}

uint64_t sub_23DA43A0C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v7 = sub_23DB6F55C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD448, &qword_23DB78358);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD438, &qword_23DB78350);
  MEMORY[0x28223BE20](v14);
  v16 = &v58[-v15];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD428, &qword_23DB78348);
  MEMORY[0x28223BE20](v60);
  v18 = &v58[-v17];
  v19 = *a1;
  *v13 = sub_23DB6F5BC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD450, &unk_23DB78360);
  sub_23DA43FD0(v19, a2, a3 & 1, &v13[*(v20 + 44)]);
  v59 = a3;
  v61 = v8;
  if (a3)
  {
    v21 = v7;
  }

  else
  {

    sub_23DB70ACC();
    v22 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    v23 = *(v8 + 8);
    v21 = v7;
    v23(v10, v7);
  }

  sub_23DB7063C();
  sub_23DB6F34C();
  sub_23DA17A54(v13, v16, &qword_27E2FD448, &qword_23DB78358);
  v24 = &v16[*(v14 + 36)];
  v25 = v68;
  v24[4] = v67;
  v24[5] = v25;
  v24[6] = v69;
  v26 = v64;
  *v24 = v63;
  v24[1] = v26;
  v27 = v66;
  v24[2] = v65;
  v24[3] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB76A80;
  v29 = sub_23DB6FB8C();
  *(inited + 32) = v29;
  v30 = sub_23DB6FB6C();
  *(inited + 33) = v30;
  v31 = sub_23DB6FB4C();
  *(inited + 34) = v31;
  v32 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v29)
  {
    v32 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v30)
  {
    v32 = sub_23DB6FB7C();
  }

  v33 = v21;

  sub_23DB6FB7C();
  v34 = sub_23DB6FB7C();
  v35 = v61;
  if (v34 != v31)
  {
    v32 = sub_23DB6FB7C();
  }

  if ((v59 & 1) == 0)
  {

    sub_23DB70ACC();
    v36 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v35 + 8))(v10, v33);
  }

  sub_23DB6EFAC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_23DA17A54(v16, v18, &qword_27E2FD438, &qword_23DB78350);
  v45 = &v18[*(v60 + 36)];
  *v45 = v32;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v62;
  sub_23DA17A54(v18, v62, &qword_27E2FD428, &qword_23DB78348);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD410, &qword_23DB78340);
  v57 = v55 + *(result + 36);
  *v57 = v46;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  return result;
}

void *sub_23DA43FD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v91 = a3;
  v92 = a2;
  v86 = a4;
  v5 = sub_23DB6F55C();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_23DB6F32C();
  MEMORY[0x28223BE20](v90);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD458, &qword_23DB78BD0);
  MEMORY[0x28223BE20](v82);
  v10 = &v74 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD460, &qword_23DB78370);
  MEMORY[0x28223BE20](v83);
  v85 = &v74 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD468, &qword_23DB78378);
  MEMORY[0x28223BE20](v84);
  v89 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  MEMORY[0x28223BE20](v16);
  v88 = &v74 - v17;
  v18 = sub_23DB702CC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB702BC();
  (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
  v87 = sub_23DB702EC();

  (*(v19 + 8))(v21, v18);
  sub_23DB7062C();
  result = sub_23DB6F10C();
  v23 = v130;
  v98 = v131;
  v24 = v132;
  v25 = v133;
  v26 = v134;
  v27 = v135;
  if (qword_27E2FBBF8 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_once();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (*(qword_27E30A708 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v96 = v23;
  v80 = v24;
  v28 = *(qword_27E30A708 + 8 * a1 + 32);
  KeyPath = swift_getKeyPath();
  v95 = v28;
  LOBYTE(v99) = v98;
  v79 = v25;
  LOBYTE(v136) = v25;

  v93 = sub_23DB6FB8C();
  sub_23DB6EFAC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v107[0]) = 0;
  v37 = *(v90 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_23DB6F63C();
  result = (*(*(v39 - 8) + 104))(&v8[v37], v38, v39);
  __asm { FMOV            V0.2D, #8.0 }

  *v8 = _Q0;
  v97 = v26;
  v81 = v27;
  if (v91)
  {
    if ((v92 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v45 = v92;

    sub_23DB70ACC();
    v46 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v47 = v75;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v45, 0);
    result = (*(v76 + 8))(v47, v77);
    if (LOBYTE(v107[0]) != 1)
    {
LABEL_6:
      if (a1 <= 4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  if (a1 <= 4)
  {
LABEL_10:
    sub_23DB7062C();
    sub_23DB6F10C();
    sub_23DA53A24(v8, v10, MEMORY[0x277CDFC08]);
    v48 = &v10[*(v82 + 36)];
    v49 = v137;
    *v48 = v136;
    *(v48 + 1) = v49;
    *(v48 + 2) = v138;
    v50 = sub_23DB6F88C();
    v51 = v85;
    sub_23DA17A54(v10, v85, &qword_27E2FD458, &qword_23DB78BD0);
    *(v51 + *(v83 + 36)) = v50;
    LOBYTE(v50) = sub_23DB6FB8C();
    sub_23DB6EFAC();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_23DA17A54(v51, v15, &qword_27E2FD460, &qword_23DB78370);
    v60 = &v15[*(v84 + 36)];
    *v60 = v50;
    *(v60 + 1) = v53;
    *(v60 + 2) = v55;
    *(v60 + 3) = v57;
    *(v60 + 4) = v59;
    v60[40] = 0;
    v61 = v88;
    sub_23DA17A54(v15, v88, &qword_27E2FD468, &qword_23DB78378);
    v62 = v89;
    sub_23DA0E2B4(v61, v89, &qword_27E2FD468, &qword_23DB78378);
    v63 = v87;
    *&v99 = v87;
    *(&v99 + 1) = v96;
    LOBYTE(v100) = v98;
    *(&v100 + 1) = *v127;
    DWORD1(v100) = *&v127[3];
    v64 = v80;
    v65 = v81;
    *(&v100 + 1) = v80;
    LOBYTE(v51) = v79;
    LOBYTE(v101) = v79;
    *(&v101 + 1) = *v126;
    DWORD1(v101) = *&v126[3];
    v78 = a1;
    *(&v101 + 1) = v97;
    *&v102 = v81;
    *(&v102 + 1) = KeyPath;
    *&v103 = v95;
    BYTE8(v103) = v93;
    *(&v103 + 9) = *v128;
    HIDWORD(v103) = *&v128[3];
    *&v104 = v30;
    *(&v104 + 1) = v32;
    *&v105 = v34;
    *(&v105 + 1) = v36;
    LOBYTE(v106) = 0;
    *(&v106 + 1) = *v129;
    DWORD1(v106) = *&v129[3];
    *(&v106 + 1) = a1;
    v66 = v99;
    v67 = v100;
    v68 = v102;
    v69 = v86;
    v86[2] = v101;
    v69[3] = v68;
    *v69 = v66;
    v69[1] = v67;
    v70 = v103;
    v71 = v104;
    v72 = v106;
    v69[6] = v105;
    v69[7] = v72;
    v69[4] = v70;
    v69[5] = v71;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD470, &qword_23DB78380);
    sub_23DA0E2B4(v62, v69 + *(v73 + 48), &qword_27E2FD468, &qword_23DB78378);
    sub_23DA0E2B4(&v99, v107, &qword_27E2FD478, &qword_23DB78388);
    sub_23DA17988(v61, &qword_27E2FD468, &qword_23DB78378);
    sub_23DA17988(v62, &qword_27E2FD468, &qword_23DB78378);
    v107[0] = v63;
    v107[1] = v96;
    v108 = v98;
    *v109 = *v127;
    *&v109[3] = *&v127[3];
    v110 = v64;
    v111 = v51;
    *v112 = *v126;
    *&v112[3] = *&v126[3];
    v113 = v97;
    v114 = v65;
    v115 = KeyPath;
    v116 = v95;
    v117 = v93;
    *&v118[3] = *&v128[3];
    *v118 = *v128;
    v119 = v30;
    v120 = v32;
    v121 = v34;
    v122 = v36;
    v123 = 0;
    *v124 = *v129;
    *&v124[3] = *&v129[3];
    v125 = v78;
    return sub_23DA17988(v107, &qword_27E2FD478, &qword_23DB78388);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23DA448A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_23DA5208C(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD410, &qword_23DB78340);
  sub_23DA52254();
  sub_23DA54580(&qword_27E2FD418, &qword_27E2FD410, &qword_23DB78340, sub_23DA54604);
  return sub_23DB704FC();
}

uint64_t sub_23DA449D8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_23DA44A58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = a7;
  v31 = a4;
  v32 = a6;
  v35 = sub_23DB707AC();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DB707CC();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23DB707EC();
  v30 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v21 = *a1;
  v20 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v21;
  v40 = v20;

  sub_23DB6EF1C();
  sub_23DA5295C();
  v22 = sub_23DB70AEC();
  sub_23DB707DC();
  sub_23DB707FC();
  v29 = *(v14 + 8);
  v29(v16, v13);
  v23 = swift_allocObject();
  v24 = v32;
  *(v23 + 16) = v31;
  *(v23 + 24) = a5;
  *(v23 + 32) = v24;
  LOBYTE(v20) = v33 & 1;
  *(v23 + 40) = v33 & 1;
  v43 = sub_23DA542F0;
  v44 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_23DABB3DC;
  v42 = &block_descriptor_300;
  v25 = _Block_copy(&aBlock);

  sub_23DA5208C(v24, v20);

  sub_23DB707BC();
  aBlock = MEMORY[0x277D84F90];
  sub_23DA5425C(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
  v26 = v34;
  v27 = v35;
  sub_23DB70C0C();
  MEMORY[0x23EEF6E80](v19, v12, v26, v25);
  _Block_release(v25);

  (*(v38 + 8))(v26, v27);
  (*(v36 + 8))(v12, v37);
  return (v29)(v19, v30);
}

uint64_t sub_23DA44EA4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v5);

  v2 = v5;
  v3 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  v6 = v3;
  return sub_23DB6EF1C();
}

__n128 sub_23DA44F54@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_23DB70ACC();
    v15 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v9 + 8))(v11, v8);
    if (v43 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v17 = *(a1 + v16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v28);

    v18 = v28;
    KeyPath = swift_getKeyPath();
    v27 = 0;
    sub_23DB7037C();
    v20 = v28;
    v21 = v29;
    v27 = 0;
    sub_23DB7037C();
    v22 = v28;
    v23 = v29;
    v37 = 0;
    LOBYTE(v27) = 0;
    v28 = v17;
    v29 = v18;
    v30 = KeyPath;
    v31 = 0;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = 0;
    goto LABEL_6;
  }

  v43 = a2 & 1;
  if (a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v13 = *(a1 + v12);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v28);

  v14 = v28;
  LOBYTE(v27) = 0;
  v37 = 1;
  v28 = v13;
  v29 = 0x4014000000000000;
  LOBYTE(v30) = 0;
  BYTE1(v30) = v14;
  v36 = 1;
LABEL_6:
  sub_23DA5346C();
  sub_23DA534C0();
  sub_23DB6F79C();
  v24 = v41;
  *(a4 + 32) = v40;
  *(a4 + 48) = v24;
  *(a4 + 64) = v42;
  result = v39;
  *a4 = v38;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_23DA452DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v43 = a1;
  v47 = a5;
  v8 = sub_23DB6F55C();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DB6F03C();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD320, &qword_23DB781F0);
  MEMORY[0x28223BE20](v13 - 8);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v39 - v16;
  sub_23DB70A3C();

  sub_23DA5208C(a3, a4 & 1);
  v17 = sub_23DB70A2C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = v43;
  *(v18 + 32) = v43;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4 & 1;

  sub_23DA5208C(a3, a4 & 1);
  v21 = sub_23DB70A2C();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v19;
  v23 = a4;
  *(v22 + 32) = v20;
  *(v22 + 40) = a2;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4 & 1;
  sub_23DB704AC();
  sub_23DB6F02C();
  if (a4)
  {
    v63 = a3 & 1;
    v24 = a3;
  }

  else
  {

    sub_23DB70ACC();
    v25 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v26 = v40;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a3, 0);
    (*(v41 + 8))(v26, v42);
    v24 = v63;
  }

  v27 = v46;
  sub_23DA45838(v24 & 1, v46);
  (*(v44 + 8))(v12, v45);
  v28 = sub_23DB6F5BC();
  v50 = 1;
  sub_23DA45DF0(a2, a3, v23 & 1, &v59);
  v53 = *&v60[16];
  v54[0] = *&v60[32];
  *(v54 + 10) = *&v60[42];
  v51 = v59;
  v52 = *v60;
  v55[2] = *&v60[16];
  v56[0] = *&v60[32];
  *(v56 + 10) = *&v60[42];
  v55[0] = v59;
  v55[1] = *v60;
  sub_23DA0E2B4(&v51, &v57, &qword_27E2FCEC8, &qword_23DB77828);
  sub_23DA17988(v55, &qword_27E2FCEC8, &qword_23DB77828);
  *&v49[23] = v52;
  *&v49[39] = v53;
  *&v49[55] = v54[0];
  *&v49[65] = *(v54 + 10);
  *&v49[7] = v51;
  v29 = v50;
  v30 = v48;
  sub_23DA0E2B4(v27, v48, &qword_27E2FD320, &qword_23DB781F0);
  v31 = v47;
  sub_23DA0E2B4(v30, v47, &qword_27E2FD320, &qword_23DB781F0);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD328, &qword_23DB781F8) + 48);
  v57 = v28;
  v58[0] = v29;
  *&v58[1] = *v49;
  *&v58[17] = *&v49[16];
  *&v58[33] = *&v49[32];
  v58[81] = v49[80];
  *&v58[65] = *&v49[64];
  *&v58[49] = *&v49[48];
  v33 = *v58;
  *v32 = v28;
  *(v32 + 16) = v33;
  v34 = *&v58[16];
  v35 = *&v58[32];
  v36 = *&v58[48];
  v37 = *&v58[64];
  *(v32 + 96) = *&v58[80];
  *(v32 + 64) = v36;
  *(v32 + 80) = v37;
  *(v32 + 32) = v34;
  *(v32 + 48) = v35;
  sub_23DA0E2B4(&v57, &v59, &qword_27E2FCED0, &qword_23DB77830);
  sub_23DA17988(v27, &qword_27E2FD320, &qword_23DB781F0);
  *&v60[33] = *&v49[32];
  *&v60[49] = *&v49[48];
  v61 = *&v49[64];
  *&v60[1] = *v49;
  v59 = v28;
  v60[0] = v29;
  v62 = v49[80];
  *&v60[17] = *&v49[16];
  sub_23DA17988(&v59, &qword_27E2FCED0, &qword_23DB77830);
  return sub_23DA17988(v30, &qword_27E2FD320, &qword_23DB781F0);
}

uint64_t sub_23DA45838@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD330, &unk_23DB78200);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v45[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD338, &unk_23DB788B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD340, &unk_23DB78210);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-v10];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD348, &unk_23DB788C0);
  MEMORY[0x28223BE20](v48);
  v13 = &v45[-v12];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD350, &qword_23DB78220);
  MEMORY[0x28223BE20](v49);
  v15 = &v45[-v14];
  byte_27E30A720 = 1;
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD128, &qword_23DB77D08) + 36)];
  v17 = *(sub_23DB6F32C() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_23DB6F63C();
  v20 = v18;
  v21 = v46;
  (*(*(v19 - 8) + 104))(&v16[v17], v20, v19);
  __asm { FMOV            V0.2D, #8.0 }

  *v16 = _Q0;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v27 = sub_23DB6F03C();
  (*(*(v27 - 8) + 16))(v5, v47, v27);
  *&v5[*(v3 + 44)] = sub_23DB6F87C();
  if (v21)
  {
    v28 = sub_23DB6FBCC();
  }

  else
  {
    v28 = sub_23DB6FBDC();
  }

  v29 = v28;
  KeyPath = swift_getKeyPath();
  sub_23DA17A54(v5, v8, &qword_27E2FD330, &unk_23DB78200);
  v31 = &v8[*(v6 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_23DA54004();
  sub_23DB6FEAC();
  sub_23DA17988(v8, &qword_27E2FD338, &unk_23DB788B0);
  if ((v21 & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v50 + 32))(v13, v11, v51);
  v32 = &v13[*(v48 + 36)];
  v33 = v58;
  v32[4] = v57;
  v32[5] = v33;
  v32[6] = v59;
  v34 = v54;
  *v32 = v53;
  v32[1] = v34;
  v35 = v56;
  v32[2] = v55;
  v32[3] = v35;
  v36 = swift_getKeyPath();
  sub_23DA17A54(v13, v15, &qword_27E2FD348, &unk_23DB788C0);
  v37 = &v15[*(v49 + 36)];
  *v37 = v36;
  v37[1] = 0x4014000000000000;
  LOBYTE(v36) = sub_23DB6EFDC();
  v39 = v38;
  v41 = v40;
  v42 = v52;
  sub_23DA17A54(v15, v52, &qword_27E2FD350, &qword_23DB78220);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD320, &qword_23DB781F0);
  v44 = v42 + *(result + 36);
  *v44 = v36 & 1;
  *(v44 + 8) = v39;
  *(v44 + 16) = v41 & 1;
  return result;
}

double sub_23DA45DF0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];

  v15 = sub_23DB6FB4C();
  v20 = 1;
  if ((a3 & 1) == 0)
  {

    sub_23DB70ACC();
    v16 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v19[15];
  }

  v17 = v20;
  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = v15;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = v17;
  *(a4 + 64) = 0;
  *(a4 + 72) = (a2 & 1) == 0;
  *(a4 + 73) = a2 & 1;
  return result;
}

uint64_t sub_23DA45FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD308, &qword_23DB781D8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  sub_23DB6F91C();
  *(v16 + 2) = 0x4020000000000000;
  sub_23DA44F54(a2, a3, a4 & 1, v30);
  v17 = v30[3];
  *(v16 + 56) = v30[2];
  *(v16 + 72) = v17;
  v16[88] = v31;
  v18 = v30[0];
  *(v16 + 40) = v30[1];
  *(v16 + 24) = v18;
  v19 = &v16[*(v11 + 68)];
  *v19 = sub_23DB6F68C();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD310, &qword_23DB781E0);
  sub_23DA452DC(a1, a2, a3, a4 & 1, &v19[*(v20 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v28);

  v21 = v29;
  if (v29)
  {
    v22 = v28;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v28);

    if (v28)
    {
      v24 = 0x3FF0000000000000;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v22 = 0;
    KeyPath = 0;
    v24 = 0;
  }

  sub_23DA0E2B4(v16, v13, &qword_27E2FD308, &qword_23DB781D8);
  sub_23DA0E2B4(v13, a5, &qword_27E2FD308, &qword_23DB781D8);
  v25 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD318, &qword_23DB781E8) + 48));
  sub_23DA52040(v22, v21, KeyPath, 0);
  sub_23DA17988(v16, &qword_27E2FD308, &qword_23DB781D8);
  *v25 = v22;
  v25[1] = v21;
  v25[2] = KeyPath;
  v25[3] = 0;
  v25[4] = v24;
  sub_23DA52098(v22, v21, KeyPath, 0);
  return sub_23DA17988(v13, &qword_27E2FD308, &qword_23DB781D8);
}

__n128 sub_23DA462C0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v44 = a2 & 1;
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_23DB70ACC();
    v12 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v9 + 8))(v11, v8);
    if (v44 != 1)
    {
LABEL_7:
      v21 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v22 = *(a1 + v21);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(&v27);

      v23 = v27;
      v38 = 0;
      v37 = 1;
      v27 = v22;
      v28 = 0x4014000000000000;
      LOBYTE(v29) = 0;
      BYTE1(v29) = v23;
      v35 = 1;
      goto LABEL_8;
    }
  }

  v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (*(v14 + 16) < 4uLL)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v27);

  v15 = v27;
  KeyPath = swift_getKeyPath();
  v36 = 0;
  sub_23DB7037C();
  v17 = v27;
  v18 = v28;
  v36 = 0;
  sub_23DB7037C();
  v19 = v27;
  v20 = v28;
  v38 = 0;
  LOBYTE(v36) = 0;
  v27 = v14;
  v28 = v15;
  v29 = KeyPath;
  v30 = 0;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = 0;
LABEL_8:
  sub_23DA5346C();
  sub_23DA534C0();
  sub_23DB6F79C();
  v24 = v42;
  *(a4 + 32) = v41;
  *(a4 + 48) = v24;
  *(a4 + 64) = v43;
  result = v40;
  *a4 = v39;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_23DA4664C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v42 = a5;
  v8 = sub_23DB6F55C();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23DB6F03C();
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0E8, &qword_23DB77CA0);
  MEMORY[0x28223BE20](v14 - 8);
  v41 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v34 - v17;
  type metadata accessor for Page.PracticeUneditableText(0);
  sub_23DA5425C(&qword_27E2FCE30, type metadata accessor for Page.PracticeUneditableText, &protocol conformance descriptor for Page);
  v37 = a1;
  v40 = a2;
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  sub_23DB6F02C();
  v18 = a4;
  if (a4)
  {
    v19 = v38;
    v57 = v38 & 1;
    v20 = v38;
  }

  else
  {
    v19 = v38;

    sub_23DB70ACC();
    v21 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v19, 0);
    (*(v34 + 8))(v10, v35);
    v20 = v57;
  }

  v22 = v39;
  sub_23DA46B74(v20 & 1, v39);
  (*(v11 + 8))(v13, v36);
  v23 = sub_23DB6F5BC();
  v44 = 1;
  sub_23DA45DF0(v40, v19, v18 & 1, &v53);
  v47 = *&v54[16];
  v48[0] = *&v54[32];
  *(v48 + 10) = *&v54[42];
  v45 = v53;
  v46 = *v54;
  v49[2] = *&v54[16];
  v50[0] = *&v54[32];
  *(v50 + 10) = *&v54[42];
  v49[0] = v53;
  v49[1] = *v54;
  sub_23DA0E2B4(&v45, v51, &qword_27E2FCEC8, &qword_23DB77828);
  sub_23DA17988(v49, &qword_27E2FCEC8, &qword_23DB77828);
  *&v43[23] = v46;
  *&v43[39] = v47;
  *&v43[55] = v48[0];
  *&v43[65] = *(v48 + 10);
  *&v43[7] = v45;
  v24 = v44;
  v25 = v41;
  sub_23DA0E2B4(v22, v41, &qword_27E2FD0E8, &qword_23DB77CA0);
  v26 = v42;
  sub_23DA0E2B4(v25, v42, &qword_27E2FD0E8, &qword_23DB77CA0);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0F0, &qword_23DB77CD0) + 48);
  v51[0] = v23;
  v51[1] = 0;
  v52[0] = v24;
  *&v52[1] = *v43;
  *&v52[17] = *&v43[16];
  *&v52[33] = *&v43[32];
  v52[81] = v43[80];
  *&v52[65] = *&v43[64];
  *&v52[49] = *&v43[48];
  v28 = *v52;
  *v27 = v23;
  *(v27 + 16) = v28;
  v29 = *&v52[16];
  v30 = *&v52[32];
  v31 = *&v52[48];
  v32 = *&v52[64];
  *(v27 + 96) = *&v52[80];
  *(v27 + 64) = v31;
  *(v27 + 80) = v32;
  *(v27 + 32) = v29;
  *(v27 + 48) = v30;
  sub_23DA0E2B4(v51, &v53, &qword_27E2FCED0, &qword_23DB77830);
  sub_23DA17988(v22, &qword_27E2FD0E8, &qword_23DB77CA0);
  *&v54[33] = *&v43[32];
  *&v54[49] = *&v43[48];
  v55 = *&v43[64];
  *&v54[1] = *v43;
  v53 = v23;
  v54[0] = v24;
  v56 = v43[80];
  *&v54[17] = *&v43[16];
  sub_23DA17988(&v53, &qword_27E2FCED0, &qword_23DB77830);
  return sub_23DA17988(v25, &qword_27E2FD0E8, &qword_23DB77CA0);
}

uint64_t sub_23DA46B74@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0F8, &qword_23DB77CD8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v61 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD100, &qword_23DB77CE0);
  MEMORY[0x28223BE20](v61);
  v8 = &v61 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD108, &qword_23DB77CE8);
  MEMORY[0x28223BE20](v62);
  v10 = &v61 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD110, &qword_23DB77CF0);
  MEMORY[0x28223BE20](v63);
  v12 = &v61 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD118, &qword_23DB77CF8);
  MEMORY[0x28223BE20](v65);
  v66 = &v61 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD120, &qword_23DB77D00);
  MEMORY[0x28223BE20](v64);
  v15 = &v61 - v14;
  byte_27E30A720 = 1;
  v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD128, &qword_23DB77D08) + 36)];
  v17 = *(sub_23DB6F32C() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_23DB6F63C();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #8.0 }

  *v16 = _Q0;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v25 = sub_23DB6F03C();
  (*(*(v25 - 8) + 16))(v6, v67, v25);
  KeyPath = swift_getKeyPath();
  v27 = &v6[*(v4 + 44)];
  *v27 = KeyPath;
  v27[8] = 0;
  LODWORD(v67) = a1;
  if ((a1 & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB705FC();
  sub_23DB6F34C();
  sub_23DA17A54(v6, v8, &qword_27E2FD0F8, &qword_23DB77CD8);
  v28 = &v8[*(v61 + 36)];
  v29 = v74;
  *(v28 + 4) = v73;
  *(v28 + 5) = v29;
  *(v28 + 6) = v75;
  v30 = v70;
  *v28 = v69;
  *(v28 + 1) = v30;
  v31 = v72;
  *(v28 + 2) = v71;
  *(v28 + 3) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB76A80;
  v33 = sub_23DB6FB8C();
  *(inited + 32) = v33;
  v34 = sub_23DB6FB6C();
  *(inited + 33) = v34;
  v35 = sub_23DB6FB5C();
  *(inited + 34) = v35;
  v36 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v33)
  {
    v36 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v34)
  {
    v36 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v35)
  {
    v36 = sub_23DB6FB7C();
  }

  v37 = v67;
  sub_23DB6EFAC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_23DA17A54(v8, v10, &qword_27E2FD100, &qword_23DB77CE0);
  v46 = &v10[*(v62 + 36)];
  *v46 = v36;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = sub_23DB6F87C();
  sub_23DA17A54(v10, v12, &qword_27E2FD108, &qword_23DB77CE8);
  *&v12[*(v63 + 36)] = v47;
  if (v37)
  {
    v48 = sub_23DB6FBCC();
  }

  else
  {
    v48 = sub_23DB6FBDC();
  }

  v49 = v48;
  v50 = swift_getKeyPath();
  v51 = v66;
  sub_23DA17A54(v12, v66, &qword_27E2FD110, &qword_23DB77CF0);
  v52 = (v51 + *(v65 + 36));
  *v52 = v50;
  v52[1] = v49;
  v53 = swift_getKeyPath();
  sub_23DA17A54(v51, v15, &qword_27E2FD118, &qword_23DB77CF8);
  v54 = &v15[*(v64 + 36)];
  *v54 = v53;
  v54[1] = 0x4014000000000000;
  LOBYTE(v53) = sub_23DB6EFDC();
  v56 = v55;
  LOBYTE(v51) = v57;
  v58 = v68;
  sub_23DA17A54(v15, v68, &qword_27E2FD120, &qword_23DB77D00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0E8, &qword_23DB77CA0);
  v60 = v58 + *(result + 36);
  *v60 = v53 & 1;
  *(v60 + 8) = v56;
  *(v60 + 16) = v51 & 1;
  return result;
}

uint64_t sub_23DA472EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0D0, &qword_23DB77C88);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  sub_23DB6F91C();
  *(v16 + 2) = 0x4020000000000000;
  sub_23DA462C0(a2, a3, a4 & 1, v30);
  v17 = v30[3];
  *(v16 + 56) = v30[2];
  *(v16 + 72) = v17;
  v16[88] = v31;
  v18 = v30[0];
  *(v16 + 40) = v30[1];
  *(v16 + 24) = v18;
  v19 = &v16[*(v11 + 68)];
  *v19 = sub_23DB6F68C();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0D8, &qword_23DB77C90);
  sub_23DA4664C(a1, a2, a3, a4 & 1, &v19[*(v20 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v28);

  v21 = v29;
  if (v29)
  {
    v22 = v28;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v28);

    if (v28)
    {
      v24 = 0x3FF0000000000000;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v22 = 0;
    KeyPath = 0;
    v24 = 0;
  }

  sub_23DA0E2B4(v16, v13, &qword_27E2FD0D0, &qword_23DB77C88);
  sub_23DA0E2B4(v13, a5, &qword_27E2FD0D0, &qword_23DB77C88);
  v25 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0E0, &qword_23DB77C98) + 48));
  sub_23DA52040(v22, v21, KeyPath, 0);
  sub_23DA17988(v16, &qword_27E2FD0D0, &qword_23DB77C88);
  *v25 = v22;
  v25[1] = v21;
  v25[2] = KeyPath;
  v25[3] = 0;
  v25[4] = v24;
  sub_23DA52098(v22, v21, KeyPath, 0);
  return sub_23DA17988(v13, &qword_27E2FD0D0, &qword_23DB77C88);
}

uint64_t sub_23DA4760C()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 40);
  v5 = *(v0 + 32);
  v9 = v5;
  if (v10 != 1)
  {

    sub_23DB70ACC();
    v6 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v9, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_23DA4776C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v59) = a3;
  v64 = a1;
  v65 = sub_23DB6F32C();
  MEMORY[0x28223BE20](v65);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  MEMORY[0x28223BE20](v67);
  v9 = &v53 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD210, &qword_23DB77E90);
  MEMORY[0x28223BE20](v66);
  v11 = &v53 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD218, &qword_23DB77E98);
  MEMORY[0x28223BE20](v68);
  v13 = &v53 - v12;
  v14 = sub_23DB702CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_23DA4760C();
  v57 = sub_23DA4760C();

  sub_23DB702BC();
  (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
  v64 = sub_23DB702EC();

  (*(v15 + 8))(v17, v14);
  sub_23DB7062C();
  sub_23DB6F10C();
  v63 = v72;
  v18 = v73;
  v62 = v74;
  v19 = v75;
  v61 = v76;
  v60 = v77;
  if (v59)
  {
    v20 = 48;
    v21 = sub_23DB7020C();
  }

  else
  {
    v20 = 56;
    v21 = sub_23DB7021C();
  }

  v59 = v21;
  KeyPath = swift_getKeyPath();
  v70 = v18;
  v69 = v19;
  v55 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v71 = 0;
  v54 = v19;
  v30 = *(v65 + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_23DB6F63C();
  (*(*(v32 - 8) + 104))(&v7[v30], v31, v32);
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  v38 = *(v4 + v20);
  sub_23DA53A24(v7, v9, MEMORY[0x277CDFC08]);
  v39 = v67;
  *&v9[*(v67 + 52)] = v38;
  *&v9[*(v39 + 56)] = 256;

  v40 = sub_23DB7014C();
  sub_23DA17A54(v9, v11, &qword_27E2FD208, &qword_23DB7C3F0);
  v41 = &v11[*(v66 + 36)];
  *v41 = v40;
  v41[1] = 0x4008000000000000;
  v41[2] = 0;
  v41[3] = 0;
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DA17A54(v11, v13, &qword_27E2FD210, &qword_23DB77E90);
  v42 = &v13[*(v68 + 36)];
  v43 = v79;
  *v42 = v78;
  *(v42 + 1) = v43;
  *(v42 + 2) = v80;
  v44 = sub_23DB7062C();
  v46 = v45;
  v47 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD178, &qword_23DB77DF0) + 36);
  sub_23DA17A54(v13, v47, &qword_27E2FD218, &qword_23DB77E98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD1C0, &qword_23DB77E10);
  v49 = (v47 + *(result + 36));
  *v49 = v44;
  v49[1] = v46;
  v50 = v63;
  *a4 = v64;
  *(a4 + 8) = v50;
  *(a4 + 16) = v18;
  *(a4 + 24) = v62;
  *(a4 + 32) = v54;
  v51 = v60;
  *(a4 + 40) = v61;
  *(a4 + 48) = v51;
  v52 = v59;
  *(a4 + 56) = KeyPath;
  *(a4 + 64) = v52;
  *(a4 + 72) = v55;
  *(a4 + 80) = v23;
  *(a4 + 88) = v25;
  *(a4 + 96) = v27;
  *(a4 + 104) = v29;
  *(a4 + 112) = 0;
  return result;
}

uint64_t sub_23DA47D5C(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v5 = *a2;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27E30A6B0 + 112);
  swift_beginAccess();
  *(v2 + 56) = v4;
  *(v2 + 40) = v5;

  sub_23DABC37C();
}

uint64_t sub_23DA47DF8()
{
  v0 = sub_23DB6F82C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6F95C();
  sub_23DB6F14C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v12 = *(qword_27E30A6B0 + 112);
  swift_beginAccess();
  v12[5] = v5;
  v12[6] = v7;
  v12[7] = v9;
  v12[8] = v11;

  sub_23DABC37C();
}

uint64_t sub_23DA47F60(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_23DA0E2B4(&v6, &v3, &qword_27E2FD090, &qword_23DB77B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  if (v3 != 1)
  {
    return sub_23DA17988(&v5, &qword_27E2FD018, &qword_23DB7D950);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_23DB6EF0C(&v4);

  v1 = v4;
  v4 = v5;
  LOBYTE(v3) = (v1 & 1) == 0;
  sub_23DB7039C();
  sub_23DA17988(&v5, &qword_27E2FD018, &qword_23DB7D950);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v4) = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v4) = 1;
  return sub_23DB6EF1C();
}

uint64_t sub_23DA4810C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C((&v10 + 1));

  v4 = v3 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols;
  v5 = 16;
  if (!BYTE1(v10))
  {
    v5 = 0;
  }

  v6 = 8;
  if (BYTE1(v10))
  {
    v6 = 24;
  }

  v7 = *(v4 + v5);
  v8 = *(v4 + v6);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  sub_23DA4776C(v7, v8, v10, a2);
}

uint64_t sub_23DA48234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = sub_23DB6F15C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_23DB6F82C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[5] = sub_23DB7018C();
  sub_23DB6F95C();
  sub_23DB6F14C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  v23[1] = v11;
  v23[2] = v13;
  v23[3] = v15;
  v23[4] = v17;
  type metadata accessor for CGRect(0);
  sub_23DA5425C(&qword_27E2FD1F8, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  v18 = v23[0];
  sub_23DB700AC();

  (*(v4 + 16))(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD200, &qword_23DB77E38);
  v22 = (v18 + *(result + 36));
  *v22 = sub_23DA5389C;
  v22[1] = v20;
  v22[2] = 0;
  v22[3] = 0;
  return result;
}

uint64_t sub_23DA48500@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_23DB6F31C();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD160, &qword_23DB77DD8);
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD168, &qword_23DB77DE0);
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD170, &qword_23DB77DE8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = &v41 - v17;
  v18 = swift_allocObject();
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v49 = a1;
  sub_23DA5121C(a1, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD178, &qword_23DB77DF0);
  sub_23DA53530();
  sub_23DB703CC();
  sub_23DB6F30C();
  v21 = sub_23DA17B80(&qword_27E2FD1C8, &qword_27E2FD160, &qword_23DB77DD8, MEMORY[0x277CDF028]);
  v22 = sub_23DA5425C(&qword_27E2FD1D0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_23DB6FE2C();
  (*(v46 + 8))(v5, v3);
  (*(v43 + 8))(v8, v6);
  *&v63 = v6;
  *(&v63 + 1) = v3;
  *v64 = v21;
  *&v64[8] = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v42;
  v24 = v44;
  sub_23DB6FE7C();
  (*(v45 + 8))(v12, v24);
  v25 = swift_allocObject();
  v26 = a1[1];
  *(v25 + 1) = *a1;
  *(v25 + 2) = v26;
  v27 = a1[3];
  *(v25 + 3) = a1[2];
  *(v25 + 4) = v27;
  sub_23DA5121C(a1, &v63);
  v28 = sub_23DB7062C();
  v29 = (v23 + *(v14 + 44));
  *v29 = sub_23DA5380C;
  v29[1] = v25;
  v29[2] = v28;
  v29[3] = v30;
  v31 = sub_23DB6F5BC();
  v51 = 1;
  sub_23DA48BB0(a1, &v63);
  v56 = *&v64[48];
  v57 = *&v64[64];
  v58[0] = *&v64[80];
  *(v58 + 10) = *&v64[90];
  v52 = v63;
  v53 = *v64;
  v54 = *&v64[16];
  v55 = *&v64[32];
  v59[0] = v63;
  v59[1] = *v64;
  v59[2] = *&v64[16];
  v59[3] = *&v64[32];
  v59[4] = *&v64[48];
  v59[5] = *&v64[64];
  v60[0] = *&v64[80];
  *(v60 + 10) = *&v64[90];
  sub_23DA0E2B4(&v52, &v61, &qword_27E2FD1D8, &qword_23DB77E18);
  sub_23DA17988(v59, &qword_27E2FD1D8, &qword_23DB77E18);
  *&v50[71] = v56;
  *&v50[87] = v57;
  *&v50[103] = v58[0];
  *&v50[113] = *(v58 + 10);
  *&v50[7] = v52;
  *&v50[23] = v53;
  *&v50[39] = v54;
  *&v50[55] = v55;
  LOBYTE(v5) = v51;
  v32 = v47;
  sub_23DA0E2B4(v23, v47, &qword_27E2FD170, &qword_23DB77DE8);
  v33 = v48;
  sub_23DA0E2B4(v32, v48, &qword_27E2FD170, &qword_23DB77DE8);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD1E0, &qword_23DB77E20) + 48);
  *&v62[17] = *&v50[16];
  *&v62[81] = *&v50[80];
  *&v62[97] = *&v50[96];
  *&v62[113] = *&v50[112];
  *&v62[33] = *&v50[32];
  *&v62[49] = *&v50[48];
  v35 = v33 + v34;
  v61 = v31;
  v62[0] = v5;
  v62[129] = v50[128];
  *&v62[65] = *&v50[64];
  *&v62[1] = *v50;
  v36 = *&v62[96];
  *(v35 + 96) = *&v62[80];
  *(v35 + 112) = v36;
  *(v35 + 128) = *&v62[112];
  *(v35 + 144) = *&v62[128];
  v37 = *&v62[32];
  *(v35 + 32) = *&v62[16];
  *(v35 + 48) = v37;
  v38 = *&v62[64];
  *(v35 + 64) = *&v62[48];
  *(v35 + 80) = v38;
  v39 = *v62;
  *v35 = v61;
  *(v35 + 16) = v39;
  sub_23DA0E2B4(&v61, &v63, &qword_27E2FD1E8, &qword_23DB77E28);
  sub_23DA17988(v23, &qword_27E2FD170, &qword_23DB77DE8);
  *&v64[81] = *&v50[80];
  *&v64[97] = *&v50[96];
  v65 = *&v50[112];
  *&v64[17] = *&v50[16];
  *&v64[33] = *&v50[32];
  *&v64[49] = *&v50[48];
  *&v64[65] = *&v50[64];
  v63 = v31;
  v64[0] = v5;
  v66 = v50[128];
  *&v64[1] = *v50;
  sub_23DA17988(&v63, &qword_27E2FD1E8, &qword_23DB77E28);
  return sub_23DA17988(v32, &qword_27E2FD170, &qword_23DB77DE8);
}

uint64_t sub_23DA48BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_23DB6FB4C();
  sub_23DA4760C();
  sub_23DB6EFAC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_23DB6FB6C();
  sub_23DA4760C();
  v57 = 0;
  sub_23DB6EFAC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v58 = 0;
  v24 = sub_23DA4760C();
  *&v32 = v5;
  *(&v32 + 1) = v4;
  LOBYTE(v33) = v6;
  *(&v33 + 1) = v8;
  *&v34 = v10;
  *(&v34 + 1) = v12;
  *&v35 = v14;
  BYTE8(v35) = 0;
  LOBYTE(v36) = v15;
  *(&v36 + 1) = v17;
  *v37 = v19;
  *&v37[8] = v21;
  *&v37[16] = v23;
  v37[24] = 0;
  v38 = v32;
  v39 = v33;
  *&v43[9] = *&v37[9];
  v42 = v36;
  *v43 = *v37;
  v40 = v34;
  v41 = v35;
  v31[111] = v24 & 1;
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  v26 = v40;
  v27 = v41;
  v28 = *&v43[16];
  *(a2 + 80) = *v43;
  *(a2 + 96) = v28;
  v29 = v42;
  *(a2 + 48) = v27;
  *(a2 + 64) = v29;
  *(a2 + 32) = v26;
  *(a2 + 112) = 0;
  *(a2 + 120) = (v24 & 1) == 0;
  *(a2 + 121) = v24 & 1;
  v44[0] = v5;
  v44[1] = v4;
  v45 = v6;
  v46 = v8;
  v47 = v10;
  v48 = v12;
  v49 = v14;
  v50 = 0;
  v51 = v15;
  v52 = v17;
  v53 = v19;
  v54 = v21;
  v55 = v23;
  v56 = 0;
  sub_23DA0E2B4(&v32, v31, &qword_27E2FD1F0, &qword_23DB77E30);
  return sub_23DA17988(v44, &qword_27E2FD1F0, &qword_23DB77E30);
}

uint64_t sub_23DA48DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD148, &qword_23DB77DC0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_23DB6F91C();
  *(v10 + 2) = 0x4020000000000000;
  v11 = *(v2 + 8);
  v12 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v13 = *(v11 + v12);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v24);

  v14 = v24;
  *(v10 + 3) = v13;
  *(v10 + 4) = 0;
  v10[40] = 1;
  v10[41] = v14;
  v15 = &v10[*(v5 + 68)];
  *v15 = sub_23DB6F68C();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD150, &qword_23DB77DC8);
  sub_23DA48500(v2, &v15[*(v16 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v24);

  v17 = v25;
  if (v25)
  {
    v18 = v24;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v24);

    if (v24)
    {
      v20 = 0x3FF0000000000000;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v18 = 0;
    KeyPath = 0;
    v20 = 0;
  }

  sub_23DA0E2B4(v10, v7, &qword_27E2FD148, &qword_23DB77DC0);
  sub_23DA0E2B4(v7, a1, &qword_27E2FD148, &qword_23DB77DC0);
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD158, &qword_23DB77DD0) + 48));
  sub_23DA52040(v18, v17, KeyPath, 0);
  sub_23DA17988(v10, &qword_27E2FD148, &qword_23DB77DC0);
  *v21 = v18;
  v21[1] = v17;
  v21[2] = KeyPath;
  v21[3] = 0;
  v21[4] = v20;
  sub_23DA52098(v18, v17, KeyPath, 0);
  return sub_23DA17988(v7, &qword_27E2FD148, &qword_23DB77DC0);
}

uint64_t sub_23DA49100@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_23DB7079C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DB7077C();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEF0, &qword_23DB77850);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v27 - v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v35);

  if (v35[1])
  {
    v33 = sub_23DB702DC();
    v18 = sub_23DB6FBEC();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v29 = sub_23DB6FC2C();
    sub_23DA17988(v13, &qword_27E2FCEE8, &qword_23DB846E0);
    KeyPath = swift_getKeyPath();
    sub_23DB7076C();
    sub_23DB7075C();
    v19 = *(v30 + 8);
    v19(v10, v5);
    sub_23DB7078C();
    v20 = (v17 + *(v14 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEF8, &qword_23DB778D0);
    sub_23DA5425C(&qword_27E2FCF00, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    sub_23DB6F36C();
    (*(v31 + 8))(v4, v32);
    v19(v7, v5);
    *v20 = swift_getKeyPath();
    v21 = v34;
    v23 = KeyPath;
    v22 = v29;
    *v17 = v33;
    v17[1] = v23;
    v17[2] = v22;
    sub_23DA17A54(v17, v21, &qword_27E2FCEF0, &qword_23DB77850);
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v24 = 1;
    v25 = v34;
  }

  return (*(v15 + 56))(v25, v24, 1, v14);
}

uint64_t sub_23DA49530@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCED8, &qword_23DB77838);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v26 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14)
  {
    v15 = 100.0;
  }

  else
  {
    v15 = 8.0;
  }

  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  sub_23DB6F91C();
  v9[2] = v15;
  v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v27);

  v18 = v27;
  *(v9 + 3) = v17;
  v9[4] = 30.0;
  *(v9 + 40) = 0;
  *(v9 + 41) = v18;
  sub_23DA49100(a1, v9 + *(v4 + 68));
  sub_23DA17A54(v9, v12, &qword_27E2FCED8, &qword_23DB77838);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v27);

  v19 = v28;
  if (v28)
  {
    v20 = v27;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v27);

    if (v27)
    {
      v22 = 0x3FF0000000000000;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    KeyPath = 0;
    v22 = 0;
  }

  sub_23DA0E2B4(v12, v6, &qword_27E2FCED8, &qword_23DB77838);
  v23 = v26;
  sub_23DA0E2B4(v6, v26, &qword_27E2FCED8, &qword_23DB77838);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE0, &unk_23DB77840) + 48));
  sub_23DA52040(v20, v19, KeyPath, 0);
  sub_23DA17988(v12, &qword_27E2FCED8, &qword_23DB77838);
  *v24 = v20;
  v24[1] = v19;
  v24[2] = KeyPath;
  v24[3] = 0;
  v24[4] = v22;
  sub_23DA52098(v20, v19, KeyPath, 0);
  return sub_23DA17988(v6, &qword_27E2FCED8, &qword_23DB77838);
}

uint64_t sub_23DA498D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for Page.PracticeAppNavigationCommands(0);
  sub_23DA5425C(&qword_27E2FCE18, type metadata accessor for Page.PracticeAppNavigationCommands, &protocol conformance descriptor for Page);

  v20 = sub_23DB6F1EC();
  v6 = v5;
  if (qword_27E2FBB88 != -1)
  {
    swift_once();
  }

  v7 = qword_27E30A660;
  v8 = qword_27E2FBB90;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27E30A668;

  v10 = sub_23DB6F5BC();
  v21[0] = 1;
  sub_23DA49BFC(a1, &v31);
  v24 = *v32;
  v25 = *&v32[16];
  v26[0] = *&v32[32];
  *(v26 + 10) = *&v32[42];
  v23 = v31;
  v27[1] = *v32;
  v27[2] = *&v32[16];
  v28[0] = *&v32[32];
  *(v28 + 10) = *&v32[42];
  v27[0] = v31;
  sub_23DA0E2B4(&v23, v29, &qword_27E2FCEC8, &qword_23DB77828);
  sub_23DA17988(v27, &qword_27E2FCEC8, &qword_23DB77828);
  *&v22[65] = *(v26 + 10);
  *&v22[55] = v26[0];
  *&v22[39] = v25;
  *&v22[23] = v24;
  *&v22[7] = v23;
  v29[0] = v10;
  v29[1] = 0;
  v30[0] = 1;
  v11 = *&v22[16];
  *&v30[17] = *&v22[16];
  v12 = *v22;
  *&v30[1] = *v22;
  v13 = *&v22[64];
  *&v30[65] = *&v22[64];
  v14 = *&v22[48];
  *&v30[49] = *&v22[48];
  v15 = *&v22[32];
  *&v30[33] = *&v22[32];
  v16 = *v30;
  *(a2 + 48) = v10;
  *(a2 + 64) = v16;
  v17 = *&v30[64];
  *(a2 + 112) = *&v30[48];
  *(a2 + 128) = v17;
  v18 = *&v30[32];
  *(a2 + 80) = *&v30[16];
  *(a2 + 96) = v18;
  *&v32[17] = v11;
  *&v32[1] = v12;
  v21[104] = 0;
  v30[81] = v22[80];
  *a2 = v20;
  *(a2 + 8) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 144) = *&v30[80];
  v31 = v10;
  v32[0] = 1;
  v34 = v22[80];
  v33 = v13;
  *&v32[49] = v14;
  *&v32[33] = v15;

  sub_23DA5208C(KeyPath, 0);

  sub_23DA0E2B4(v29, v21, &qword_27E2FCED0, &qword_23DB77830);
  sub_23DA17988(&v31, &qword_27E2FCED0, &qword_23DB77830);

  sub_23DA4FF14(KeyPath, 0);
}

double sub_23DA49BFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (*(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_23DB6FB4C();
  v19 = 1;
  v18 = *(a1 + 40);
  v12 = *(a1 + 32);
  v17 = v12;
  if (v18 != 1)
  {

    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v17, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v12) = v16[15];
  }

  v14 = v19;
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v14;
  *(a2 + 64) = 0;
  *(a2 + 72) = (v12 & 1) == 0;
  *(a2 + 73) = v12 & 1;
  return result;
}

uint64_t sub_23DA49DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEB0, &qword_23DB77738);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  sub_23DB6F91C();
  *(v8 + 2) = 0x4020000000000000;
  v9 = *(v2 + 8);
  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v11 = *(v9 + v10);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v51);

  v12 = v51[0];
  *(v8 + 3) = v11;
  *(v8 + 4) = 0;
  v8[40] = 1;
  v8[41] = v12;
  v13 = sub_23DB6F68C();
  v40 = 1;
  sub_23DA498D8(v2, &v29);
  v47 = v35;
  v48 = v36;
  v49 = v37;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  v41 = v29;
  v42 = v30;
  v51[6] = v35;
  v51[7] = v36;
  v51[8] = v37;
  v51[2] = v31;
  v51[3] = v32;
  v51[4] = v33;
  v51[5] = v34;
  v50 = v38;
  v52 = v38;
  v51[0] = v29;
  v51[1] = v30;
  sub_23DA0E2B4(&v41, &v28, &qword_27E2FCEB8, &qword_23DB77788);
  sub_23DA17988(v51, &qword_27E2FCEB8, &qword_23DB77788);
  *(&v39[3] + 7) = v44;
  *(&v39[2] + 7) = v43;
  *(&v39[6] + 7) = v47;
  *(&v39[7] + 7) = v48;
  *(&v39[8] + 7) = v49;
  *(&v39[9] + 7) = v50;
  *(&v39[4] + 7) = v45;
  *(&v39[5] + 7) = v46;
  *(v39 + 7) = v41;
  *(&v39[1] + 7) = v42;
  v14 = v39[7];
  *(v8 + 161) = v39[6];
  *(v8 + 177) = v14;
  *(v8 + 193) = v39[8];
  *(v8 + 202) = *(&v39[8] + 9);
  v15 = v39[3];
  *(v8 + 97) = v39[2];
  *(v8 + 113) = v15;
  v16 = v39[5];
  *(v8 + 129) = v39[4];
  *(v8 + 145) = v16;
  v17 = v39[1];
  *(v8 + 65) = v39[0];
  v18 = v40;
  *(v8 + 6) = v13;
  *(v8 + 7) = 0;
  v8[64] = v18;
  *(v8 + 81) = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v29);

  v19 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v20 = v29;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v29);

    if (v29)
    {
      v22 = 0x3FF0000000000000;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    KeyPath = 0;
    v22 = 0;
  }

  sub_23DA0E2B4(v8, v5, &qword_27E2FCEB0, &qword_23DB77738);
  v23 = v27;
  sub_23DA0E2B4(v5, v27, &qword_27E2FCEB0, &qword_23DB77738);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEC0, &qword_23DB777D8) + 48));
  sub_23DA52040(v20, v19, KeyPath, 0);
  sub_23DA17988(v8, &qword_27E2FCEB0, &qword_23DB77738);
  *v24 = v20;
  v24[1] = v19;
  v24[2] = KeyPath;
  v24[3] = 0;
  v24[4] = v22;
  sub_23DA52098(v20, v19, KeyPath, 0);
  return sub_23DA17988(v5, &qword_27E2FCEB0, &qword_23DB77738);
}

uint64_t sub_23DA4A254@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_23DB7079C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB7077C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &KeyPath - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &KeyPath - v14;

  v27 = sub_23DB702BC();
  sub_23DB6FC0C();
  v16 = sub_23DB6FBEC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v26 = sub_23DB6FC2C();
  sub_23DA17988(v15, &qword_27E2FCEE8, &qword_23DB846E0);
  KeyPath = swift_getKeyPath();
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v17 = qword_27E30A658;
  v18 = swift_getKeyPath();

  sub_23DB7076C();
  sub_23DB7075C();
  v19 = *(v7 + 8);
  v19(v12, v6);
  v20 = v28;
  sub_23DB7078C();
  v21 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD398, &qword_23DB782C8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEF8, &qword_23DB778D0);
  sub_23DA5425C(&qword_27E2FCF00, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  sub_23DB6F36C();
  (*(v29 + 8))(v20, v30);
  v19(v9, v6);
  result = swift_getKeyPath();
  *v21 = result;
  v24 = KeyPath;
  v23 = v26;
  *a3 = v27;
  a3[1] = v24;
  a3[2] = v23;
  a3[3] = v18;
  a3[4] = v17;
  return result;
}

uint64_t sub_23DA4A608@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD388, &qword_23DB782B8);
  MEMORY[0x28223BE20](v30);
  v27 = (&v25 - v2);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD390, &qword_23DB782C0);
  MEMORY[0x28223BE20](v28);
  v4 = &v25 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD398, &qword_23DB782C8);
  MEMORY[0x28223BE20](v29);
  v6 = (&v25 - v5);
  v7 = sub_23DB6F55C();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = [v10 currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 1)
  {
    goto LABEL_3;
  }

  v34 = *(v1 + 24);
  v19 = *(v1 + 16);
  v33 = v19;
  if (v34 == 1)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_23DB70ACC();
    v20 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v33, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v26 + 8))(v9, v7);
    if (v32 != 1)
    {
LABEL_9:
      v21 = sub_23DB7062C();
      v22 = v27;
      *v27 = v21;
      *(v22 + 8) = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3A0, &qword_23DB782D0);
      sub_23DA4AA7C(v1, v22 + *(v24 + 44));
      v15 = &qword_27E2FD388;
      v16 = &qword_23DB782B8;
      sub_23DA0E2B4(v22, v4, &qword_27E2FD388, &qword_23DB782B8);
      swift_storeEnumTagMultiPayload();
      sub_23DA54308();
      sub_23DA17B80(&qword_27E2FD3D8, &qword_27E2FD388, &qword_23DB782B8, MEMORY[0x277CE11A8]);
      sub_23DB6F79C();
      v17 = v22;
      return sub_23DA17988(v17, v15, v16);
    }
  }

LABEL_3:

  sub_23DA4A254(v6);

  v15 = &qword_27E2FD398;
  v16 = &qword_23DB782C8;
  sub_23DA0E2B4(v6, v4, &qword_27E2FD398, &qword_23DB782C8);
  swift_storeEnumTagMultiPayload();
  sub_23DA54308();
  sub_23DA17B80(&qword_27E2FD3D8, &qword_27E2FD388, &qword_23DB782B8, MEMORY[0x277CE11A8]);
  sub_23DB6F79C();
  v17 = v6;
  return sub_23DA17988(v17, v15, v16);
}

uint64_t sub_23DA4AA7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3E0, &qword_23DB7E020);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3E8, &qword_23DB782F0);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v49 - v8;
  v55 = sub_23DB6F03C();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3F0, &qword_23DB782F8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v53 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3F8, &qword_23DB78300);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD400, &qword_23DB78308);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  v51 = a1[1];
  type metadata accessor for Page.PracticeAppNavigationCommands(0);
  sub_23DA5425C(&qword_27E2FCE18, type metadata accessor for Page.PracticeAppNavigationCommands, &protocol conformance descriptor for Page);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();
  v26 = v25;

  v27 = v52;
  sub_23DB6F02C();
  sub_23DB7062C();
  v28 = 1;
  sub_23DB6F34C();
  v29 = v53;
  (*(v54 + 32))(v53, v27, v55);
  v30 = (v29 + *(v11 + 44));
  v31 = v67;
  v30[4] = v66;
  v30[5] = v31;
  v30[6] = v68;
  v32 = v63;
  *v30 = v62;
  v30[1] = v32;
  v33 = v65;
  v30[2] = v64;
  v30[3] = v33;
  LOBYTE(v11) = sub_23DB6EFDC();
  v35 = v34;
  v37 = v36;
  sub_23DA17A54(v29, v16, &qword_27E2FD3F0, &qword_23DB782F8);
  v38 = &v16[*(v14 + 44)];
  *v38 = v11 & 1;
  *(v38 + 1) = v35;
  v38[16] = v37 & 1;
  sub_23DA17A54(v16, v22, &qword_27E2FD3F8, &qword_23DB78300);
  *&v22[*(v18 + 44)] = 0;
  v39 = v26;
  sub_23DA17A54(v22, v26, &qword_27E2FD400, &qword_23DB78308);
  if (*(v51 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8))
  {

    v40 = sub_23DB702BC();
    v41 = v50;
    sub_23DAE072C(v40, v50);

    v42 = v57;
    sub_23DA17A54(v41, v57, &qword_27E2FD3E0, &qword_23DB7E020);
    v28 = 0;
  }

  else
  {
    v42 = v57;
  }

  (*(v58 + 56))(v42, v28, 1, v59);
  v43 = v26;
  v44 = v56;
  sub_23DA0E2B4(v43, v56, &qword_27E2FD400, &qword_23DB78308);
  v45 = v60;
  sub_23DA0E2B4(v42, v60, &qword_27E2FD3E8, &qword_23DB782F0);
  v46 = v61;
  sub_23DA0E2B4(v44, v61, &qword_27E2FD400, &qword_23DB78308);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD408, &qword_23DB78338);
  sub_23DA0E2B4(v45, v46 + *(v47 + 64), &qword_27E2FD3E8, &qword_23DB782F0);
  sub_23DA17988(v42, &qword_27E2FD3E8, &qword_23DB782F0);
  sub_23DA17988(v39, &qword_27E2FD400, &qword_23DB78308);
  sub_23DA17988(v45, &qword_27E2FD3E8, &qword_23DB782F0);
  return sub_23DA17988(v44, &qword_27E2FD400, &qword_23DB78308);
}

uint64_t sub_23DA4B128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for KeyboardKey(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CommandToPractice(0);
  sub_23DA0E2B4(a1 + *(v11 + 48), v6, &qword_27E2FC4F0, &qword_23DB74AB8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23DA17988(v6, &qword_27E2FC4F0, &qword_23DB74AB8);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    result = 0;
  }

  else
  {
    sub_23DA53A24(v6, v10, type metadata accessor for KeyboardKey);
    v12 = *v10;
    v13 = *(v10 + 1);
    v14 = *(v10 + 2);
    v15 = *(v10 + 3);
    v16 = v10[32];

    sub_23DA53A8C(v10, type metadata accessor for KeyboardKey);
    result = swift_getKeyPath();
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_23DA4B320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD220, &qword_23DB77EA0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_23DB6F91C();
  *(v9 + 2) = 0x4020000000000000;
  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v11 = *(a1 + v10);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v22);

  v12 = v22;
  *(v9 + 3) = v11;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v9[41] = v12;
  v13 = &v9[*(v4 + 68)];
  *v13 = sub_23DB6F68C();
  *(v13 + 1) = 0;
  v13[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD228, &qword_23DB77EA8);
  v22 = *(a1 + v10);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD230, &qword_23DB77ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD238, &qword_23DB77ED8);
  sub_23DA17B80(&qword_27E2FD240, &qword_27E2FD230, &qword_23DB77ED0, MEMORY[0x277D83980]);
  sub_23DA5425C(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DA5394C();
  sub_23DB704FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v22);

  v14 = v23;
  if (v23)
  {
    v15 = v22;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v22);

    if (v22)
    {
      v17 = 0x3FF0000000000000;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v15 = 0;
    KeyPath = 0;
    v17 = 0;
  }

  sub_23DA0E2B4(v9, v6, &qword_27E2FD220, &qword_23DB77EA0);
  v18 = v21;
  sub_23DA0E2B4(v6, v21, &qword_27E2FD220, &qword_23DB77EA0);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD258, &qword_23DB77EE0) + 48));
  sub_23DA52040(v15, v14, KeyPath, 0);
  sub_23DA17988(v9, &qword_27E2FD220, &qword_23DB77EA0);
  *v19 = v15;
  v19[1] = v14;
  v19[2] = KeyPath;
  v19[3] = 0;
  v19[4] = v17;
  sub_23DA52098(v15, v14, KeyPath, 0);
  return sub_23DA17988(v6, &qword_27E2FD220, &qword_23DB77EA0);
}

uint64_t sub_23DA4B738@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *&v44 = *v1;
  *(&v44 + 1) = v3;
  sub_23DA16E70();

  v4 = sub_23DB6FD8C();
  v6 = v5;
  v8 = v7;
  sub_23DB6FBDC();
  v9 = sub_23DB6FD3C();
  v35 = v10;
  v36 = v9;
  v12 = v11;
  v37 = v13;

  sub_23DA16EC4(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  v15 = sub_23DB6FB5C();
  v16 = v12 & 1;
  LOBYTE(v52[0]) = v12 & 1;
  LOBYTE(v38) = 1;
  v17 = sub_23DB6FB2C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v44) = 0;
  v77[0] = *(v1 + 16);
  v26 = *(&v77[0] + 1);
  if (*(&v77[0] + 1))
  {
    v27 = *&v77[0];
    v29 = *(v1 + 32);
    v28 = *(v1 + 40);
    swift_retain_n();
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v27 = 0;
  }

  *&v38 = v36;
  *(&v38 + 1) = v35;
  LOBYTE(v39) = v16;
  *(&v39 + 1) = *v74;
  DWORD1(v39) = *&v74[3];
  *(&v39 + 1) = v37;
  *&v40 = KeyPath;
  BYTE8(v40) = 1;
  *(&v40 + 9) = *v73;
  HIDWORD(v40) = *&v73[3];
  v41[0] = v15;
  *&v41[4] = *&v72[3];
  *&v41[1] = *v72;
  memset(&v41[8], 0, 32);
  v41[40] = 1;
  *&v41[44] = *&v76[3];
  *&v41[41] = *v76;
  LOBYTE(v42) = v17;
  DWORD1(v42) = *&v75[3];
  *(&v42 + 1) = *v75;
  *(&v42 + 1) = v19;
  *v43 = v21;
  *&v43[8] = v23;
  *&v43[16] = v25;
  v43[24] = 0;
  v46 = v40;
  v47 = *v41;
  v44 = v38;
  v45 = v39;
  *&v51[9] = *&v43[9];
  v50 = v42;
  *v51 = *v43;
  v48 = *&v41[16];
  v49 = *&v41[32];
  sub_23DA0E2B4(v77, v52, &qword_27E2FC358, &qword_23DB74690);
  sub_23DA0E2B4(v77, v52, &qword_27E2FC358, &qword_23DB74690);
  sub_23DA0E2B4(&v38, v52, &qword_27E2FD260, &qword_23DB77EE8);
  sub_23DA53AEC(v29, v28, v27, v26);
  sub_23DA53B30(v29, v28, v27, v26);
  v30 = *v51;
  *(a1 + 96) = v50;
  *(a1 + 112) = v30;
  *(a1 + 128) = *&v51[16];
  v31 = v47;
  *(a1 + 32) = v46;
  *(a1 + 48) = v31;
  v32 = v49;
  *(a1 + 64) = v48;
  *(a1 + 80) = v32;
  v33 = v45;
  *a1 = v44;
  *(a1 + 16) = v33;
  *(a1 + 144) = v29;
  *(a1 + 152) = v28;
  *(a1 + 160) = v27;
  *(a1 + 168) = v26;
  sub_23DA53B30(v29, v28, v27, v26);
  v52[0] = v36;
  v52[1] = v35;
  v53 = v16;
  *v54 = *v74;
  *&v54[3] = *&v74[3];
  v55 = v37;
  v56 = KeyPath;
  v57 = 1;
  *v58 = *v73;
  *&v58[3] = *&v73[3];
  v59 = v15;
  *&v60[3] = *&v72[3];
  *v60 = *v72;
  v61 = 0u;
  v62 = 0u;
  v63 = 1;
  *&v64[3] = *&v76[3];
  *v64 = *v76;
  v65 = v17;
  *&v66[3] = *&v75[3];
  *v66 = *v75;
  v67 = v19;
  v68 = v21;
  v69 = v23;
  v70 = v25;
  v71 = 0;
  return sub_23DA17988(v52, &qword_27E2FD260, &qword_23DB77EE8);
}

uint64_t sub_23DA4BB10@<X0>(uint64_t a2@<X8>)
{
  v102 = a2;
  v96 = type metadata accessor for PracticeGeneralView(0);
  MEMORY[0x28223BE20](v96);
  v3 = (v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCC8, &qword_23DB76E10);
  MEMORY[0x28223BE20](v4);
  v95 = (v92 - v5);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCD0, &qword_23DB76E18);
  MEMORY[0x28223BE20](v100);
  v97 = v92 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCD8, &qword_23DB76E20);
  MEMORY[0x28223BE20](v98);
  v99 = v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCE0, &qword_23DB76E28);
  MEMORY[0x28223BE20](v8);
  v101 = v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCE8, &qword_23DB76E30);
  MEMORY[0x28223BE20](v10);
  v12 = v92 - v11;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v119);

  if (v119 == 1)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v119);

    v13 = *(&v119 + 1);
    v101 = v119;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v119);

    v14 = v119;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v119);

    v15 = swift_allocObject();
    *(v15 + 16) = v119;
    *v12 = v101;
    *(v12 + 1) = v13;
    *(v12 + 1) = v14;
    *(v12 + 4) = sub_23DA40310;
    *(v12 + 5) = v15;
    swift_storeEnumTagMultiPayload();
    sub_23DA51134();
    sub_23DA51188();
    return sub_23DB6F79C();
  }

  v92[1] = v10;
  v93 = v12;
  v94 = v8;
  type metadata accessor for Page.CollectionFinished(0);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;

    KeyPath = swift_getKeyPath();
    type metadata accessor for NavigationModel(0);
    sub_23DA5425C(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);

    v20 = sub_23DB6F39C();
    v22 = v21;
    *&v112 = 0;
    sub_23DB7037C();
    v23 = v119;
    *&v112 = 0;
    sub_23DB7037C();
    *&v103 = v18;
    *(&v103 + 1) = v20;
    *v104 = v22;
    *&v104[8] = KeyPath;
    v104[16] = 0;
    *&v104[24] = v23;
    *&v104[40] = v119;
    *&v104[56] = 0x3FD999999999999ALL;
    *&v120[16] = *&v104[16];
    *&v120[32] = *&v104[32];
    *&v120[48] = *&v104[48];
    v119 = v103;
    *v120 = *v104;
    v122 = 0;
    v120[64] = 0;
    sub_23DA51574(&v103, &v112);
    sub_23DA50BA8();
    sub_23DA50BFC();
    sub_23DB6F79C();
    *&v120[16] = v114;
    *&v120[32] = v115;
    *&v120[48] = v116;
    v120[64] = v117;
    v119 = v112;
    *v120 = v113;
    LOBYTE(v123) = 0;
    v120[65] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    v116 = v110;
    v117 = v111;
    v112 = v106;
    v113 = v107;
    LOBYTE(v124[0]) = 0;
    v118 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v24 = *&v120[32];
    v25 = v99;
    *(v99 + 32) = *&v120[16];
    *(v25 + 48) = v24;
    *(v25 + 64) = *&v120[48];
    *(v25 + 79) = *&v120[63];
    v26 = *v120;
    *v25 = v119;
    *(v25 + 16) = v26;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v27 = v101;
    sub_23DB6F79C();
    sub_23DA515D0(&v103);
    goto LABEL_10;
  }

  type metadata accessor for Page.WhatsNew(0);
  if (swift_dynamicCastClass())
  {

    sub_23DA5425C(&qword_27E2FCE58, type metadata accessor for Page.WhatsNew, &protocol conformance descriptor for Page);

    v28 = sub_23DB6F1EC();
    v30 = v29;
    *&v112 = 0;
    sub_23DB7037C();
    v31 = v119;
    *&v112 = 0;
    sub_23DB7037C();
    v32 = v119;
    v122 = 1;
    *&v119 = v28;
    *(&v119 + 1) = v30;
    *v120 = v31;
    *&v120[16] = v32;
    *&v120[32] = v103;
    *&v120[48] = *v104;
    v120[64] = 1;
    sub_23DA50BA8();
    sub_23DA50BFC();

    sub_23DB6F79C();
    *&v120[16] = v114;
    *&v120[32] = v115;
    *&v120[48] = v116;
    v120[64] = v117;
    v119 = v112;
    *v120 = v113;
    LOBYTE(v123) = 0;
    v120[65] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    v116 = v110;
    v117 = v111;
    v112 = v106;
    v113 = v107;
    LOBYTE(v124[0]) = 0;
    v118 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v33 = *&v120[32];
    v34 = v99;
    *(v99 + 32) = *&v120[16];
    *(v34 + 48) = v33;
    *(v34 + 64) = *&v120[48];
    *(v34 + 79) = *&v120[63];
    v35 = *v120;
    *v34 = v119;
    *(v34 + 16) = v35;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v27 = v101;
    sub_23DB6F79C();

LABEL_7:

    goto LABEL_10;
  }

  type metadata accessor for Page.PracticeSingleButton(0);
  if (swift_dynamicCastClass())
  {

    sub_23DA513F8(&v103);
    v124[0] = v103;
    v123 = *&v104[8];
    v112 = v103;
    v113 = *v104;
    v114 = *&v104[16];
    LOBYTE(v115) = 0;
    sub_23DA0E2B4(v124, &v119, &qword_27E2FCE48, &qword_23DB76EF8);
    sub_23DA0E2B4(&v123, &v119, &qword_27E2FCE50, &qword_23DB76F00);
    sub_23DA50CDC();
    sub_23DA50D30();
    sub_23DB6F79C();
    v121 = v120[32];
    v105 = 1;
    v120[65] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    v116 = v110;
    v117 = v111;
    v112 = v106;
    v113 = v107;
    v122 = 0;
    v118 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v36 = *&v120[32];
    v37 = v99;
    *(v99 + 32) = *&v120[16];
    *(v37 + 48) = v36;
    *(v37 + 64) = *&v120[48];
    *(v37 + 79) = *&v120[63];
    v38 = *v120;
    *v37 = v119;
    *(v37 + 16) = v38;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v27 = v101;
    sub_23DB6F79C();
    sub_23DA17988(v124, &qword_27E2FCE48, &qword_23DB76EF8);
    sub_23DA17988(&v123, &qword_27E2FCE50, &qword_23DB76F00);
    goto LABEL_10;
  }

  type metadata accessor for Page.PracticeScroll(0);
  if (swift_dynamicCastClass())
  {

    v39 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE40, type metadata accessor for Page.PracticeScroll, &protocol conformance descriptor for Page);

    v40 = sub_23DB6F1EC();
    v42 = v41;
    LOBYTE(v112) = 0;
    sub_23DB7037C();
    *&v112 = v40;
    *(&v112 + 1) = v42;
    v113 = v39;
    *&v114 = v119;
    *(&v114 + 1) = *(&v119 + 1);
    LOBYTE(v115) = 1;
    sub_23DA50CDC();
    sub_23DA50D30();

    sub_23DB6F79C();
    LOBYTE(v123) = v120[32];
    v122 = 1;
    *&v120[33] = v103;
    *&v120[49] = *v104;
    v120[65] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD68, &qword_23DB76EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50B1C();
    sub_23DA50C50();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    v116 = v110;
    v117 = v111;
    v112 = v106;
    v113 = v107;
    LOBYTE(v124[0]) = 0;
    v118 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v43 = *&v120[32];
    v44 = v99;
    *(v99 + 32) = *&v120[16];
    *(v44 + 48) = v43;
    *(v44 + 64) = *&v120[48];
    *(v44 + 79) = *&v120[63];
    v45 = *v120;
    *v44 = v119;
    *(v44 + 16) = v45;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v27 = v101;
    sub_23DB6F79C();

LABEL_13:

    goto LABEL_7;
  }

  type metadata accessor for Page.PracticeText(0);
  if (swift_dynamicCastClass())
  {

    sub_23DA5425C(&qword_27E2FCE38, type metadata accessor for Page.PracticeText, &protocol conformance descriptor for Page);

    *&v112 = sub_23DB6F1EC();
    *(&v112 + 1) = v46;
    *&v113 = 0;
    WORD4(v113) = 0;
    BYTE10(v113) = 0;
    sub_23DA50E9C();
    sub_23DA50EF0();

    sub_23DB6F79C();
    *&v120[11] = v103;
    LOBYTE(v123) = v120[10];
    v122 = 0;
    *&v120[27] = *v104;
    *&v120[41] = *&v104[14];
    v120[49] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    LOWORD(v116) = v110;
    v112 = v106;
    v113 = v107;
    LOBYTE(v124[0]) = 1;
    v118 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v47 = *&v120[32];
    v48 = v99;
    *(v99 + 32) = *&v120[16];
    *(v48 + 48) = v47;
    *(v48 + 64) = *&v120[48];
    *(v48 + 79) = *&v120[63];
    v49 = *v120;
    *v48 = v119;
    *(v48 + 16) = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v27 = v101;
    sub_23DB6F79C();
    goto LABEL_7;
  }

  type metadata accessor for Page.PracticeUneditableText(0);
  if (swift_dynamicCastClass())
  {

    v50 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE30, type metadata accessor for Page.PracticeUneditableText, &protocol conformance descriptor for Page);

    *&v112 = sub_23DB6F1EC();
    *(&v112 + 1) = v51;
    *&v113 = v50;
    WORD4(v113) = 256;
    BYTE10(v113) = 1;
    sub_23DA50E9C();
    sub_23DA50EF0();

    sub_23DB6F79C();
    *&v120[11] = v103;
    LOBYTE(v123) = v120[10];
    v122 = 0;
    *&v120[27] = *v104;
    *&v120[41] = *&v104[14];
    v120[49] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    LOWORD(v116) = v110;
    v112 = v106;
    v113 = v107;
    LOBYTE(v124[0]) = 1;
    v118 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v52 = *&v120[32];
    v53 = v99;
    *(v99 + 32) = *&v120[16];
    *(v53 + 48) = v52;
    *(v53 + 64) = *&v120[48];
    *(v53 + 79) = *&v120[63];
    v54 = *v120;
    *v53 = v119;
    *(v53 + 16) = v54;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v27 = v101;
    sub_23DB6F79C();
    goto LABEL_13;
  }

  type metadata accessor for Page.PracticeGrid(0);
  if (swift_dynamicCastClass())
  {

    v55 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE28, type metadata accessor for Page.PracticeGrid, &protocol conformance descriptor for Page);

    v56 = sub_23DB6F1EC();
    v58 = v57;
    LOBYTE(v112) = 1;
    sub_23DB7037C();
    v59 = v119;
    v60 = *(&v119 + 1);
    if (qword_27E2FBB88 != -1)
    {
      swift_once();
    }

    v61 = qword_27E30A660;
    v62 = qword_27E2FBB90;

    v27 = v101;
    if (v62 != -1)
    {
      swift_once();
    }

    *&v103 = v56;
    *(&v103 + 1) = v58;
    v104[0] = v59;
    *&v104[8] = v60;
    *&v104[16] = v55;
    v104[24] = 0;
    *&v104[32] = v61;
    *&v104[40] = qword_27E30A668;
    v119 = v103;
    *v120 = *v104;
    *&v120[16] = *&v104[16];
    *&v120[32] = *&v104[32];
    v122 = 0;
    v120[48] = 0;

    sub_23DA5121C(&v103, &v112);
    sub_23DA50FD0();
    sub_23DA51024();
    sub_23DB6F79C();
    *&v120[16] = v114;
    *&v120[32] = v115;
    v120[48] = v116;
    v119 = v112;
    *v120 = v113;
    LOBYTE(v123) = 1;
    v120[49] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    LOWORD(v116) = v110;
    v112 = v106;
    v113 = v107;
    LOBYTE(v124[0]) = 1;
    v118 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v63 = *&v120[32];
    v64 = v99;
    *(v99 + 32) = *&v120[16];
    *(v64 + 48) = v63;
    *(v64 + 64) = *&v120[48];
    *(v64 + 79) = *&v120[63];
    v65 = *v120;
    *v64 = v119;
    *(v64 + 16) = v65;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    sub_23DB6F79C();
    sub_23DA51254(&v103);
    goto LABEL_10;
  }

  type metadata accessor for Page.PracticeKeyboardCommands(0);
  if (swift_dynamicCastClass())
  {

    v66 = swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FCE20, type metadata accessor for Page.PracticeKeyboardCommands, &protocol conformance descriptor for Page);

    v67 = sub_23DB6F1EC();
    *&v120[9] = v103;
    v122 = 0;
    v121 = 1;
    *&v119 = v67;
    *(&v119 + 1) = v68;
    *v120 = v66;
    v120[8] = 0;
    *&v120[25] = *v104;
    *&v120[40] = *&v104[15];
    v120[48] = 1;
    sub_23DA50FD0();
    sub_23DA51024();

    sub_23DB6F79C();
    *&v120[16] = v114;
    *&v120[32] = v115;
    v120[48] = v116;
    v119 = v112;
    *v120 = v113;
    LOBYTE(v123) = 1;
    v120[49] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50E10();
    sub_23DA50F44();
    sub_23DB6F79C();
    v114 = v108;
    v115 = v109;
    LOWORD(v116) = v110;
    v112 = v106;
    v113 = v107;
    LOBYTE(v124[0]) = 1;
    v118 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD58, &qword_23DB76EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50A90();
    sub_23DA50D84();
    sub_23DB6F79C();
    v69 = *&v120[32];
    v70 = v99;
    *(v99 + 32) = *&v120[16];
    *(v70 + 48) = v69;
    *(v70 + 64) = *&v120[48];
    *(v70 + 79) = *&v120[63];
    v71 = *v120;
    *v70 = v119;
    *(v70 + 16) = v71;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A04();
    sub_23DA51078();
    v27 = v101;
    sub_23DB6F79C();
  }

  else
  {
    type metadata accessor for Page.PracticeAppNavigationCommands(0);
    if (swift_dynamicCastClass())
    {

      v72 = swift_getKeyPath();
      sub_23DA5425C(&qword_27E2FCE18, type metadata accessor for Page.PracticeAppNavigationCommands, &protocol conformance descriptor for Page);

      *&v112 = sub_23DB6F1EC();
      *(&v112 + 1) = v73;
      v113 = xmmword_23DB76AA0;
      v92[0] = v72;
      *&v114 = v72;
      WORD4(v114) = 0;
      sub_23DA5087C();
      sub_23DA508D0();

      sub_23DB6F79C();
      if (v120[25])
      {
        v74 = 256;
      }

      else
      {
        v74 = 0;
      }

      v112 = v119;
      v113 = *v120;
      *&v114 = *&v120[16];
      WORD4(v114) = v74 | v120[24];
      BYTE10(v114) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD08, &qword_23DB76E88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD28, &qword_23DB76E90);
      sub_23DA507F0();
      sub_23DA50924();
      sub_23DB6F79C();
      v75 = *&v120[16];
      v76 = *&v120[24];
      v77 = v120[26];
      v78 = *v120;
      v79 = v95;
      *v95 = v119;
      v79[1] = v78;
      *(v79 + 4) = v75;
      *(v79 + 20) = v76;
      *(v79 + 42) = v77;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCF0, &qword_23DB76E80);
      sub_23DA50764();
      sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView, &unk_23DB77648);
      v80 = v97;
      sub_23DB6F79C();
      sub_23DA0E2B4(v80, v99, &qword_27E2FCCD0, &qword_23DB76E18);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
      sub_23DA50A04();
      sub_23DA51078();
      v27 = v101;
      sub_23DB6F79C();
    }

    else
    {
      type metadata accessor for Page.PracticeCommandsCheckmark(0);
      if (swift_dynamicCastClass())
      {

        sub_23DA5425C(&qword_27E2FCE10, type metadata accessor for Page.PracticeCommandsCheckmark, &protocol conformance descriptor for Page);

        *&v112 = sub_23DB6F1EC();
        *(&v112 + 1) = v81;
        v113 = xmmword_23DB76AA0;
        *&v114 = 0;
        WORD4(v114) = 256;
        sub_23DA5087C();
        sub_23DA508D0();

        sub_23DB6F79C();
        if (v120[25])
        {
          v82 = 256;
        }

        else
        {
          v82 = 0;
        }

        v112 = v119;
        v113 = *v120;
        *&v114 = *&v120[16];
        WORD4(v114) = v82 | v120[24];
        BYTE10(v114) = 0;
      }

      else
      {
        type metadata accessor for Page.PracticeVO(0);
        if (!swift_dynamicCastClass())
        {
          *(v3 + *(v96 + 20)) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for Page.Practice(0);
          sub_23DA5425C(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
          *v3 = sub_23DB6F1EC();
          v3[1] = v90;
          sub_23DA52A58(v3, v95, type metadata accessor for PracticeGeneralView);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCF0, &qword_23DB76E80);
          sub_23DA50764();
          sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView, &unk_23DB77648);
          v91 = v97;
          sub_23DB6F79C();
          sub_23DA0E2B4(v91, v99, &qword_27E2FCCD0, &qword_23DB76E18);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
          sub_23DA50A04();
          sub_23DA51078();
          v27 = v101;
          sub_23DB6F79C();
          sub_23DA17988(v91, &qword_27E2FCCD0, &qword_23DB76E18);
          sub_23DA53A8C(v3, type metadata accessor for PracticeGeneralView);
          goto LABEL_10;
        }

        sub_23DA5425C(&qword_27E2FCE08, type metadata accessor for Page.PracticeVO, &protocol conformance descriptor for Page);

        *&v112 = sub_23DB6F1EC();
        *(&v112 + 1) = v83;
        *&v113 = 0;
        WORD4(v113) = 256;
        sub_23DA508D0();
        sub_23DA509B0();

        sub_23DB6F79C();
        if (v120[9])
        {
          v84 = 256;
        }

        else
        {
          v84 = 0;
        }

        v112 = v119;
        *&v113 = *v120;
        *(&v113 + 1) = v84 | v120[8];
        *&v114 = 0;
        WORD4(v114) = 0;
        BYTE10(v114) = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD08, &qword_23DB76E88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD28, &qword_23DB76E90);
      sub_23DA507F0();
      sub_23DA50924();
      sub_23DB6F79C();
      v85 = *&v120[16];
      v86 = *&v120[24];
      v87 = v120[26];
      v88 = *v120;
      v89 = v95;
      *v95 = v119;
      v89[1] = v88;
      *(v89 + 4) = v85;
      *(v89 + 20) = v86;
      *(v89 + 42) = v87;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCCF0, &qword_23DB76E80);
      sub_23DA50764();
      sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView, &unk_23DB77648);
      v80 = v97;
      sub_23DB6F79C();
      sub_23DA0E2B4(v80, v99, &qword_27E2FCCD0, &qword_23DB76E18);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCD40, &qword_23DB76E98);
      sub_23DA50A04();
      sub_23DA51078();
      v27 = v101;
      sub_23DB6F79C();
    }

    sub_23DA17988(v80, &qword_27E2FCCD0, &qword_23DB76E18);
  }

LABEL_10:
  sub_23DA0E2B4(v27, v93, &qword_27E2FCCE0, &qword_23DB76E28);
  swift_storeEnumTagMultiPayload();
  sub_23DA51134();
  sub_23DA51188();
  sub_23DB6F79C();
  return sub_23DA17988(v27, &qword_27E2FCCE0, &qword_23DB76E28);
}

__n128 sub_23DA4DCE8@<Q0>(uint64_t a2@<X8>)
{
  type metadata accessor for Page.PracticeLongText(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    sub_23DA5425C(&qword_27E2FD0C8, type metadata accessor for Page.PracticeLongText, &protocol conformance descriptor for Page);

    sub_23DB6F1EC();
    sub_23DA53360();
    sub_23DA533B4();

    sub_23DB6F79C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0A0, &qword_23DB77C80);
    sub_23DA532D4();
    sub_23DB6F79C();
  }

  else
  {
    type metadata accessor for Page.PracticeShortText(0);
    if (swift_dynamicCastClass())
    {
      sub_23DA5425C(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText, &protocol conformance descriptor for Page);

      sub_23DB6F1EC();
      sub_23DA53360();
      sub_23DA533B4();

      sub_23DB6F79C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0A0, &qword_23DB77C80);
      sub_23DA532D4();
      sub_23DB6F79C();
    }

    else
    {
      sub_23DB6F61C();
      sub_23DB6FD6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD0A0, &qword_23DB77C80);
      sub_23DA532D4();
      sub_23DB6F79C();
    }
  }

  result = v5;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}