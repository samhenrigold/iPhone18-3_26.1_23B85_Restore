size_t sub_23DAF63B4()
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v110 - v1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v132 = &v110 - v2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v129 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v128 = &v110 - v3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v120 = *(v121 - 1);
  MEMORY[0x28223BE20](v121);
  v119 = &v110 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = &v110 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v6 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v8 = &v110 - v7;
  v9 = sub_23DB6EA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v124 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v110 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v110 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v110 - v19;
  v123 = sub_23DB04C74(0xD000000000000016, 0x800000023DB8C5E0);
  v122 = v21;
  v138 = objc_opt_self();
  v22 = [v138 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = "tutorial.vo.home.title";
  if (v23)
  {
    v25 = 0xD00000000000001ALL;
  }

  else
  {
    v24 = ".text.homeButton.ipad";
    v25 = 0xD00000000000001CLL;
  }

  v140 = v0;
  v117 = sub_23DB04C74(v25, v24 | 0x8000000000000000);
  v118 = v26;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v27 = swift_allocObject();
  v130 = v10;
  v28 = *(v10 + 16);
  v125 = v20;
  v28(v17, v20, v9);
  v127 = v14;
  v126 = v17;
  v131 = v9;
  v115 = v10 + 16;
  v113 = v28;
  v28(v14, v17, v9);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v143) = 0;
  sub_23DB6EECC();
  v30 = *(v6 + 32);
  v31 = v111;
  v30(v27 + v29, v8);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v143 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v35 = v32;
  v36 = v112;
  sub_23DB6EECC();
  (*(v114 + 32))(v27 + v34, v36, v116);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v143 = 0;
  v38 = v119;
  sub_23DB6EECC();
  (*(v120 + 32))(v27 + v37, v38, v121);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v143) = 0;
  sub_23DB6EECC();
  (v30)(v27 + v39, v8, v31);
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v120 = xmmword_23DB74320;
  v143 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v41 = v128;
  sub_23DB6EECC();
  v121 = v30;
  v42 = *(v129 + 32);
  v43 = v133;
  v42(v27 + v40, v41, v133);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v143 = v120;
  sub_23DB6EECC();
  v42(v27 + v44, v41, v43);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v143) = 0;
  sub_23DB6EECC();
  v121(v27 + v45, v8, v31);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v143 = 0;
  *(&v143 + 1) = 0xE000000000000000;
  v47 = v132;
  sub_23DB6EECC();
  (*(v134 + 32))(v27 + v46, v47, v135);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v143 = 0uLL;
  sub_23DB6EECC();
  v42(v27 + v48, v41, v43);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v143 = nullsub_1;
  *(&v143 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v50 = v136;
  sub_23DB6EECC();
  (*(v137 + 32))(v27 + v49, v50, v139);
  v51 = v124;
  v52 = v127;
  v53 = v131;
  v113(v124, v127, v131);
  v54 = Page.init(id:title:text:subPages:iconName:)(v51, v123, v122, v117, v118, MEMORY[0x277D84F90], 0, 0);
  v55 = *(v130 + 8);
  v55(v52, v53);
  v55(v126, v53);
  v55(v125, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v56 = (type metadata accessor for CommandToPractice(0) - 8);
  v57 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_23DB73BA0;
  v139 = v57;
  v59 = v58 + v57;

  v60 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8C620);
  v62 = v61;
  *v59 = 0;
  *(v59 + 8) = 0xE000000000000000;
  *(v59 + 17) = 186;
  *(v59 + 19) = 0;
  sub_23DB6EA7C();
  v63 = v56[12];
  *(v59 + v63) = 1;
  v64 = v56[13];
  *(v59 + v64) = 1;
  v65 = v56[14];
  v66 = type metadata accessor for KeyboardKey(0);
  (*(*(v66 - 8) + 56))(v59 + v65, 1, 1, v66);
  v67 = (v59 + v56[15]);
  *v67 = 0;
  v67[1] = 0;
  *v59 = v60;
  *(v59 + 8) = v62;

  *(v59 + 16) = 0;
  *(v59 + 19) = 0;
  *v67 = 0;
  v67[1] = 0;

  *(v59 + v63) = 1;
  *(v59 + v64) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v54 + v68) = v58;

  v69 = v138;
  v70 = [v138 currentDevice];
  v71 = [v70 userInterfaceIdiom];

  if (v71 == 1)
  {
    if ([objc_opt_self() deviceHasHomeButton])
    {
      v72 = v140;
      v73 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8C640);
      v75 = v74;
      v76 = *(v54 + v68);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v76[2])
        {
LABEL_10:
          v77 = (v76 + v139);
          *v77 = v73;
          v77[1] = v75;

          sub_23DB6EE6C();
          sub_23DB6EEBC();

          *(v54 + v68) = v76;

          v78 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C670);
          v80 = v79;
          v81 = (v54 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
          swift_beginAccess();
          *v81 = v78;
          v81[1] = v80;

          v82 = "tutorial.vo.home.command.ipad";
          v83 = 0xD000000000000025;
LABEL_20:
          v96 = sub_23DB04C74(v83, v82 | 0x8000000000000000);
          v98 = v97;
          swift_getKeyPath();
          swift_getKeyPath();
          v141 = v96;
          v142 = v98;
          sub_23DB6EF1C();
          goto LABEL_22;
        }
      }

      else
      {
        v76 = sub_23DAC8B24(v76);
        if (v76[2])
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
      v72 = v140;
      v73 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8C6D0);
      v75 = v86;
      v76 = *(v54 + v68);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!v76[2])
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        goto LABEL_15;
      }
    }

    v76 = sub_23DAC8B24(v76);
    if (!v76[2])
    {
      goto LABEL_28;
    }

LABEL_15:
    v87 = (v76 + v139);
    *v87 = v73;
    v87[1] = v75;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v54 + v68) = v76;

    goto LABEL_22;
  }

  v84 = [v69 currentDevice];
  v85 = [v84 userInterfaceIdiom];

  if (v85)
  {

    v72 = v140;
LABEL_22:
    v99 = swift_allocObject();
    swift_weakInit();
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = v72;
    v101 = (v54 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v102 = *v101;
    v103 = v101[1];
    *v101 = sub_23DB07200;
    v101[1] = v100;
    swift_retain_n();

    sub_23DA18BA0(v102, v103);

    v104 = swift_allocObject();
    swift_weakInit();
    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = v72;
    v106 = (v54 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    *v106 = sub_23DB067D8;
    v106[1] = v105;

    v107 = swift_allocObject();
    swift_weakInit();

    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = v72;
    v109 = (v54 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    *v109 = sub_23DB071FC;
    v109[1] = v108;

    return v54;
  }

  v88 = [objc_opt_self() deviceHasHomeButton];
  v72 = v140;
  if (!v88)
  {

    goto LABEL_22;
  }

  v73 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8C640);
  v75 = v89;
  v76 = *(v54 + v68);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_29:
    result = sub_23DAC8B24(v76);
    v76 = result;
    if (!*(result + 16))
    {
      goto LABEL_30;
    }

LABEL_19:
    v91 = (v76 + v139);
    *v91 = v73;
    v91[1] = v75;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v54 + v68) = v76;

    v92 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C670);
    v94 = v93;
    v95 = (v54 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    *v95 = v92;
    v95[1] = v94;

    v82 = ".title.homeButton";
    v83 = 0xD000000000000027;
    goto LABEL_20;
  }

  if (v76[2])
  {
    goto LABEL_19;
  }

LABEL_30:
  __break(1u);
  return result;
}

size_t sub_23DAF7584(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v9);

    if (LOBYTE(v9[0]) == 1)
    {

      v3 = sub_23DB04C74(0xD000000000000031, 0x800000023DB88190);
      v5 = v4;
      v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v7 = *(v2 + v6);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (*(v7 + 2))
        {
LABEL_5:
          v8 = *(type metadata accessor for CommandToPractice(0) - 8);
          sub_23DB0496C(&v7[(*(v8 + 80) + 32) & ~*(v8 + 80)], v3, v5);

          type metadata accessor for Page.Practice(0);
          sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
          sub_23DB6EE6C();
          sub_23DB6EEBC();

          *(v2 + v6) = v7;
        }
      }

      else
      {
        result = sub_23DAC8B24(v7);
        v7 = result;
        if (*(result + 16))
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DAF779C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v3 = objc_opt_self();
      v4 = sub_23DB7087C();
      [v3 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = objc_opt_self();
      v6 = sub_23DB7087C();
      [v5 triggerEventCommand_];
    }

    v7 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v13);

    v10 = v13[0];
    v11 = v13[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v12 = MEMORY[0x277D764B0];
    sub_23DB05C14(v9, v8, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v12);
  }

  return result;
}

size_t sub_23DAF7998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v118 = *(v1 - 8);
  v119 = v1;
  MEMORY[0x28223BE20](v1);
  v117 = &v92 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v92 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v104 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v103 = &v92 - v5;
  *&v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v92 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v92 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v107 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v92 - v22;
  v106 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8C460);
  v105 = v24;
  v120 = v0;
  v102 = sub_23DB04C74(0xD00000000000001CLL, 0x800000023DB8C480);
  v101 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v111 = v13;
  v27 = *(v13 + 16);
  v108 = v23;
  v27(v20, v23, v12);
  v110 = v17;
  v109 = v20;
  v112 = v12;
  v98 = v13 + 16;
  v97 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v30 = v8;
  v29(v26 + v28, v11, v8);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v123 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v93;
  sub_23DB6EECC();
  (*(v94 + 32))(v26 + v33, v34, v95);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v123 = 0;
  v36 = v96;
  sub_23DB6EECC();
  (*(v99 + 32))(v26 + v35, v36, v100);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v29(v26 + v37, v11, v8);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v100 = xmmword_23DB74320;
  v123 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v103;
  sub_23DB6EECC();
  v40 = *(v104 + 4);
  v104 = v29;
  v41 = v114;
  v40(v26 + v38, v39, v114);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v123 = v100;
  sub_23DB6EECC();
  v40(v26 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v104(v26 + v43, v11, v30);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  v45 = v113;
  sub_23DB6EECC();
  (*(v115 + 32))(v26 + v44, v45, v116);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v123 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v123 = nullsub_1;
  *(&v123 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v117;
  sub_23DB6EECC();
  (*(v118 + 32))(v26 + v47, v48, v119);
  v49 = v107;
  v50 = v110;
  v51 = v112;
  v97(v107, v110, v112);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v106, v105, v102, v101, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v111 + 8);
  v53(v50, v51);
  v53(v109, v51);
  v53(v108, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v54 = (type metadata accessor for CommandToPractice(0) - 8);
  v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_23DB73BA0;
  v119 = v55;
  v57 = v56 + v55;

  v58 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C4A0);
  v60 = v59;
  *v57 = 0;
  *(v57 + 8) = 0xE000000000000000;
  *(v57 + 17) = 186;
  *(v57 + 19) = 0;
  sub_23DB6EA7C();
  v61 = v54[12];
  v62 = 1;
  *(v57 + v61) = 1;
  v63 = v54[13];
  *(v57 + v63) = 1;
  v64 = v54[14];
  v65 = type metadata accessor for KeyboardKey(0);
  (*(*(v65 - 8) + 56))(v57 + v64, 1, 1, v65);
  v66 = (v57 + v54[15]);
  *v66 = 0;
  v66[1] = 0;
  *v57 = v58;
  *(v57 + 8) = v60;

  *(v57 + 16) = 2;
  *(v57 + 19) = 0;
  *v66 = 0;
  v66[1] = 0;

  *(v57 + v61) = 1;
  *(v57 + v63) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v52 + v67) = v56;

  v68 = [objc_opt_self() currentDevice];
  v69 = [v68 userInterfaceIdiom];

  if (v69 == 1)
  {
    v70 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8C530);
    v72 = v71;
    v73 = *(v52 + v67);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v73[2])
      {
LABEL_6:
        v74 = (v73 + v119);
        *v74 = v70;
        v74[1] = v72;

        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v52 + v67) = v73;

        goto LABEL_7;
      }
    }

    else
    {
      v73 = sub_23DAC8B24(v73);
      if (v73[2])
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  if (![objc_opt_self() deviceHasHomeButton])
  {

    v62 = v120;
    goto LABEL_12;
  }

  v62 = v120;
  v70 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C4D0);
  v72 = v75;
  v73 = *(v52 + v67);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_17:
    result = sub_23DAC8B24(v73);
    v73 = result;
    if (*(result + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (v73[2])
  {
LABEL_10:
    v77 = (v73 + v119);
    *v77 = v70;
    v77[1] = v72;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v52 + v67) = v73;

    v78 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C500);
    v80 = v79;
    swift_getKeyPath();
    swift_getKeyPath();
    v121 = v78;
    v122 = v80;
    sub_23DB6EF1C();
LABEL_12:
    v81 = swift_allocObject();
    swift_weakInit();
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = v62;
    v83 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v84 = *v83;
    v85 = v83[1];
    *v83 = sub_23DB07200;
    v83[1] = v82;
    swift_retain_n();

    sub_23DA18BA0(v84, v85);

    v86 = swift_allocObject();
    swift_weakInit();
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v62;
    v88 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    *v88 = sub_23DB067B4;
    v88[1] = v87;

    v89 = swift_allocObject();
    swift_weakInit();

    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v62;
    v91 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    *v91 = sub_23DB067BC;
    v91[1] = v90;

    return v52;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23DAF88E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v3 = objc_opt_self();
      v4 = sub_23DB7087C();
      [v3 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = objc_opt_self();
      v6 = sub_23DB7087C();
      [v5 triggerEventCommand_];
    }

    UIAccessibilityPostNotification(0x438u, 0);
    v7 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];

    v10 = MEMORY[0x277D764B0];
    sub_23DB05C14(v9, v8, MEMORY[0x277D764B0]);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v11);

    sub_23DB05C14(v11[0], v11[1], v10);
  }

  return result;
}

size_t sub_23DAF8ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v118 = *(v1 - 8);
  v119 = v1;
  MEMORY[0x28223BE20](v1);
  v117 = &v92 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v92 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v104 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v103 = &v92 - v5;
  *&v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v92 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v92 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v107 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v92 - v22;
  v106 = sub_23DB04C74(0xD000000000000024, 0x800000023DB89AE0);
  v105 = v24;
  v120 = v0;
  v102 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C350);
  v101 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v111 = v13;
  v27 = *(v13 + 16);
  v108 = v23;
  v27(v20, v23, v12);
  v110 = v17;
  v109 = v20;
  v112 = v12;
  v98 = v13 + 16;
  v97 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v30 = v8;
  v29(v26 + v28, v11, v8);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v123 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v93;
  sub_23DB6EECC();
  (*(v94 + 32))(v26 + v33, v34, v95);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v123 = 0;
  v36 = v96;
  sub_23DB6EECC();
  (*(v99 + 32))(v26 + v35, v36, v100);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v29(v26 + v37, v11, v8);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v100 = xmmword_23DB74320;
  v123 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v103;
  sub_23DB6EECC();
  v40 = *(v104 + 4);
  v104 = v29;
  v41 = v114;
  v40(v26 + v38, v39, v114);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v123 = v100;
  sub_23DB6EECC();
  v40(v26 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v123) = 0;
  sub_23DB6EECC();
  v104(v26 + v43, v11, v30);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  v45 = v113;
  sub_23DB6EECC();
  (*(v115 + 32))(v26 + v44, v45, v116);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v123 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v123 = nullsub_1;
  *(&v123 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v117;
  sub_23DB6EECC();
  (*(v118 + 32))(v26 + v47, v48, v119);
  v49 = v107;
  v50 = v110;
  v51 = v112;
  v97(v107, v110, v112);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v106, v105, v102, v101, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v111 + 8);
  v53(v50, v51);
  v53(v109, v51);
  v53(v108, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v54 = (type metadata accessor for CommandToPractice(0) - 8);
  v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_23DB73BA0;
  v119 = v55;
  v57 = v56 + v55;

  v58 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C380);
  v60 = v59;
  *v57 = 0;
  *(v57 + 8) = 0xE000000000000000;
  *(v57 + 17) = 186;
  *(v57 + 19) = 0;
  sub_23DB6EA7C();
  v61 = v54[12];
  v62 = 1;
  *(v57 + v61) = 1;
  v63 = v54[13];
  *(v57 + v63) = 1;
  v64 = v54[14];
  v65 = type metadata accessor for KeyboardKey(0);
  (*(*(v65 - 8) + 56))(v57 + v64, 1, 1, v65);
  v66 = (v57 + v54[15]);
  *v66 = 0;
  v66[1] = 0;
  *v57 = v58;
  *(v57 + 8) = v60;

  *(v57 + 16) = 7;
  *(v57 + 19) = 0;
  *v66 = 0;
  v66[1] = 0;

  *(v57 + v61) = 1;
  *(v57 + v63) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v52 + v67) = v56;

  v68 = [objc_opt_self() currentDevice];
  v69 = [v68 userInterfaceIdiom];

  if (v69 == 1)
  {
    v70 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8C430);
    v72 = v71;
    v73 = *(v52 + v67);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v73[2])
      {
LABEL_6:
        v74 = (v73 + v119);
        *v74 = v70;
        v74[1] = v72;

        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v52 + v67) = v73;

        goto LABEL_7;
      }
    }

    else
    {
      v73 = sub_23DAC8B24(v73);
      if (v73[2])
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (![objc_opt_self() deviceHasHomeButton])
  {

    v62 = v120;
    goto LABEL_14;
  }

  v62 = v120;
  v70 = sub_23DB04C74(0xD000000000000035, 0x800000023DB8C3B0);
  v72 = v75;
  v73 = *(v52 + v67);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v73[2])
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_23DAC8B24(v73);
    v73 = result;
    if (*(result + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_19:
  v73 = sub_23DAC8B24(v73);
  if (!v73[2])
  {
    goto LABEL_20;
  }

LABEL_10:
  v76 = (v73 + v119);
  *v76 = v70;
  v76[1] = v72;

  sub_23DB6EE6C();
  sub_23DB6EEBC();

  *(v52 + v67) = v73;

  v73 = *(v52 + v67);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v73[2])
  {
LABEL_12:
    *(v73 + v119 + 16) = 20;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v52 + v67) = v73;

    v78 = sub_23DB04C74(0xD000000000000032, 0x800000023DB8C3F0);
    v80 = v79;
    swift_getKeyPath();
    swift_getKeyPath();
    v121 = v78;
    v122 = v80;
    sub_23DB6EF1C();
LABEL_14:
    v81 = swift_allocObject();
    swift_weakInit();
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = v62;
    v83 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v84 = *v83;
    v85 = v83[1];
    *v83 = sub_23DB07200;
    v83[1] = v82;
    swift_retain_n();

    sub_23DA18BA0(v84, v85);

    v86 = swift_allocObject();
    swift_weakInit();
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v62;
    v88 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    *v88 = sub_23DB067AC;
    v88[1] = v87;

    v89 = swift_allocObject();
    swift_weakInit();

    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v62;
    v91 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    *v91 = sub_23DB071FC;
    v91[1] = v90;

    return v52;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_23DAF9A98(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v3 = objc_opt_self();
      v4 = sub_23DB7087C();
      [v3 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = objc_opt_self();
      v6 = sub_23DB7087C();
      [v5 triggerEventCommand_];
    }

    v7 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v13);

    v10 = v13[0];
    v11 = v13[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v12 = MEMORY[0x277D764B0];
    sub_23DB05C14(v9, v8, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v12);
  }

  return result;
}

size_t sub_23DAF9C94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v121 = *(v1 - 8);
  v122 = v1;
  MEMORY[0x28223BE20](v1);
  v120 = &v95 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v116 = &v95 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v109 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v106 = &v95 - v5;
  *&v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v95 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v95 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v95 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v110 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v95 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v95 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  v108 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB89A30);
  v107 = v24;
  v123 = v0;
  v105 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C1C0);
  v104 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v114 = v13;
  v27 = *(v13 + 16);
  v111 = v23;
  v27(v20, v23, v12);
  v113 = v17;
  v112 = v20;
  v115 = v12;
  v101 = v13 + 16;
  v99 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v126) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v30 = v8;
  v29(v26 + v28, v11, v8);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v126 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v96;
  sub_23DB6EECC();
  (*(v97 + 32))(v26 + v33, v34, v98);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v126 = 0;
  v36 = v100;
  sub_23DB6EECC();
  (*(v102 + 32))(v26 + v35, v36, v103);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v126) = 0;
  sub_23DB6EECC();
  v29(v26 + v37, v11, v8);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v103 = xmmword_23DB74320;
  v126 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v106;
  sub_23DB6EECC();
  v40 = *(v109 + 4);
  v109 = v29;
  v41 = v117;
  v40(v26 + v38, v39, v117);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v126 = v103;
  sub_23DB6EECC();
  v40(v26 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v126) = 0;
  sub_23DB6EECC();
  v109(v26 + v43, v11, v30);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v126 = 0;
  *(&v126 + 1) = 0xE000000000000000;
  v45 = v116;
  sub_23DB6EECC();
  (*(v118 + 32))(v26 + v44, v45, v119);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v126 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v126 = nullsub_1;
  *(&v126 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v120;
  sub_23DB6EECC();
  (*(v121 + 32))(v26 + v47, v48, v122);
  v49 = v110;
  v50 = v113;
  v51 = v115;
  v99(v110, v113, v115);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v108, v107, v105, v104, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v114 + 8);
  v53(v50, v51);
  v53(v112, v51);
  v53(v111, v51);
  v54 = sub_23DB7087C();
  LODWORD(v51) = MGGetBoolAnswer();

  if (v51)
  {

    v55 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C2C0);
    v57 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v126 = v55;
    *(&v126 + 1) = v57;
    sub_23DB6EF1C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v58 = (type metadata accessor for CommandToPractice(0) - 8);
  v59 = (*(*v58 + 80) + 32) & ~*(*v58 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_23DB73BA0;
  v122 = v59;
  v61 = v60 + v59;

  v62 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C1F0);
  v64 = v63;
  *v61 = 0;
  *(v61 + 8) = 0xE000000000000000;
  *(v61 + 17) = 186;
  *(v61 + 19) = 0;
  sub_23DB6EA7C();
  v65 = v58[12];
  *(v61 + v65) = 1;
  v66 = v58[13];
  *(v61 + v66) = 1;
  v67 = v58[14];
  v68 = type metadata accessor for KeyboardKey(0);
  (*(*(v68 - 8) + 56))(v61 + v67, 1, 1, v68);
  v69 = (v61 + v58[15]);
  *v69 = 0;
  v69[1] = 0;
  *v61 = v62;
  *(v61 + 8) = v64;

  *(v61 + 16) = 6;
  *(v61 + 19) = 0;
  *v69 = 0;
  v69[1] = 0;

  *(v61 + v65) = 1;
  *(v61 + v66) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v52 + v70) = v60;

  v71 = [objc_opt_self() currentDevice];
  v72 = [v71 userInterfaceIdiom];

  if (v72 == 1)
  {
    v73 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C290);
    v75 = v74;
    v76 = *(v52 + v70);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v76[2])
      {
LABEL_8:
        v77 = (v76 + v122);
        *v77 = v73;
        v77[1] = v75;

        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v52 + v70) = v76;

        goto LABEL_9;
      }
    }

    else
    {
      v76 = sub_23DAC8B24(v76);
      if (v76[2])
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  if (![objc_opt_self() deviceHasHomeButton])
  {

    v67 = v123;
    goto LABEL_16;
  }

  v67 = v123;
  v73 = sub_23DB04C74(0xD000000000000030, 0x800000023DB8C220);
  v75 = v78;
  v76 = *(v52 + v70);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v76[2])
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_23DAC8B24(v76);
    v76 = result;
    if (*(result + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_21:
  v76 = sub_23DAC8B24(v76);
  if (!v76[2])
  {
    goto LABEL_22;
  }

LABEL_12:
  v79 = (v76 + v122);
  *v79 = v73;
  v79[1] = v75;

  sub_23DB6EE6C();
  sub_23DB6EEBC();

  *(v52 + v70) = v76;

  v76 = *(v52 + v70);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v76[2])
  {
LABEL_14:
    *(v76 + v122 + 16) = 19;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v52 + v70) = v76;

    v81 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8C260);
    v83 = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    v124 = v81;
    v125 = v83;
    sub_23DB6EF1C();
LABEL_16:
    v84 = swift_allocObject();
    swift_weakInit();
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v67;
    v86 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    *v86 = sub_23DB067A4;
    v86[1] = v85;
    swift_retain_n();

    v87 = swift_allocObject();
    swift_weakInit();
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v67;
    v89 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    *v89 = sub_23DB071FC;
    v89[1] = v88;

    v90 = swift_allocObject();
    swift_weakInit();

    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v67;
    v92 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v93 = *v92;
    v94 = v92[1];
    *v92 = sub_23DB07200;
    v92[1] = v91;

    sub_23DA18BA0(v93, v94);

    return v52;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23DAFACE4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v3 = objc_opt_self();
      v4 = sub_23DB7087C();
      [v3 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = objc_opt_self();
      v6 = sub_23DB7087C();
      [v5 triggerEventCommand_];
    }

    v7 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v13);

    v10 = v13[0];
    v11 = v13[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v12 = MEMORY[0x277D764B0];
    sub_23DB05C14(v9, v8, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v12);
  }

  return result;
}

uint64_t sub_23DAFAEE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v104 = *(v1 - 8);
  v105 = v1;
  MEMORY[0x28223BE20](v1);
  v103 = &v79 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = &v79 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v89 = &v79 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v85 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v82 = &v79 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v92 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  v91 = sub_23DB04C74(0xD000000000000018, 0x800000023DB8C130);
  v90 = v24;
  v106 = v0;
  v88 = sub_23DB04C74(0xD000000000000017, 0x800000023DB8C150);
  v87 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v97 = v13;
  v27 = *(v13 + 16);
  v94 = v23;
  v27(v20, v23, v12);
  v96 = v17;
  v95 = v20;
  v98 = v12;
  v84 = v13 + 16;
  v83 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v107) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v29(v26 + v28, v11, v8);
  v30 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v31 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v31;
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v107 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v33 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v26 + v32, v33, v81);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v107 = 0;
  v35 = v82;
  sub_23DB6EECC();
  (*(v85 + 32))(v26 + v34, v35, v86);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v107) = 0;
  sub_23DB6EECC();
  v29(v26 + v36, v11, v8);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v85 = xmmword_23DB74320;
  v107 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v86 = v29;
  v38 = v89;
  sub_23DB6EECC();
  v39 = *(v93 + 32);
  v40 = v100;
  v39(v26 + v37, v38, v100);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v107 = v85;
  sub_23DB6EECC();
  v39(v26 + v41, v38, v40);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v107) = 0;
  sub_23DB6EECC();
  v86(v26 + v42, v11, v8);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  v44 = v99;
  sub_23DB6EECC();
  (*(v101 + 32))(v26 + v43, v44, v102);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v107 = 0uLL;
  sub_23DB6EECC();
  v39(v26 + v45, v38, v40);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v107 = nullsub_1;
  *(&v107 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v26 + v46, v47, v105);
  v48 = v92;
  v49 = v96;
  v50 = v98;
  v83(v92, v96, v98);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v91, v90, v88, v87, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v97 + 8);
  v52(v49, v50);
  v52(v95, v50);
  v52(v94, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v53 = (type metadata accessor for CommandToPractice(0) - 8);
  v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23DB73BA0;
  v56 = v55 + v54;

  v57 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8C170);
  v59 = v58;
  *v56 = 0;
  *(v56 + 8) = 0xE000000000000000;
  *(v56 + 17) = 186;
  *(v56 + 19) = 0;
  sub_23DB6EA7C();
  v60 = v53[12];
  *(v56 + v60) = 1;
  v61 = v53[13];
  *(v56 + v61) = 1;
  v62 = v53[14];
  v63 = type metadata accessor for KeyboardKey(0);
  (*(*(v63 - 8) + 56))(v56 + v62, 1, 1, v63);
  v64 = (v56 + v53[15]);
  *v64 = 0;
  v64[1] = 0;
  *v56 = v57;
  *(v56 + 8) = v59;

  *(v56 + 16) = 14;
  *(v56 + 19) = 0;
  *v64 = 0;
  v64[1] = 0;

  *(v56 + v60) = 1;
  *(v56 + v61) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v51 + v65) = v55;

  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  v68 = v106;
  *(v67 + 16) = v66;
  *(v67 + 24) = v68;
  v69 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v69 = sub_23DB0679C;
  v69[1] = v67;
  swift_retain_n();

  v70 = swift_allocObject();
  swift_weakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v68;
  v72 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v72 = sub_23DB071FC;
  v72[1] = v71;

  v73 = swift_allocObject();
  swift_weakInit();

  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v68;
  v75 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  *v75 = sub_23DB07200;
  v75[1] = v74;

  sub_23DA18BA0(v76, v77);

  return v51;
}

uint64_t sub_23DAFBC28(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
LABEL_5:
        v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
        swift_beginAccess();
        v7 = *v5;
        v6 = v5[1];
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C(v11);

        v8 = v11[0];
        v9 = v11[1];
        UIAccessibilityPostNotification(0x438u, 0);
        v10 = MEMORY[0x277D764B0];
        sub_23DB05C14(v7, v6, MEMORY[0x277D764B0]);

        sub_23DB05C14(v8, v9, v10);
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_5;
      }
    }

    v3 = objc_opt_self();
    v4 = sub_23DB7087C();
    [v3 triggerEventCommand_];

    goto LABEL_5;
  }

  return result;
}

uint64_t sub_23DAFBDE0()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v3 = (v2 - 8);
  v98 = *(v2 - 8);
  v4 = v98;
  MEMORY[0x28223BE20](v2);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v91 - v7;
  v9 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DB04C74(0xD000000000000020, 0x800000023DB890D0);
  v14 = v13;
  v15 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8C0A0);
  v17 = v16;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOContextualMenu(0);
  swift_allocObject();
  v18 = sub_23DA2FF3C(v11, v12, v14, v15, v17, MEMORY[0x277D84F90], 0, 0);
  v19 = sub_23DB04C74(0xD00000000000002CLL, 0x800000023DB89130);
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v19;
  v103 = v21;

  sub_23DB6EF1C();
  v22 = sub_23DB04C74(0xD000000000000029, 0x800000023DB89160);
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  *(v25 + 24) = v1;

  v26 = v8;
  sub_23DB6EA7C();
  v27 = &v8[v3[7]];
  *v27 = v22;
  v27[1] = v24;
  v28 = &v8[v3[8]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v8[v3[9]];
  v99 = v8;
  *v29 = sub_23DB06664;
  v29[1] = v25;
  v30 = sub_23DB04C74(0xD00000000000002CLL, 0x800000023DB89190);
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v18;
  *(v33 + 24) = v1;

  v34 = v1;

  v35 = v101;
  sub_23DB6EA7C();
  v36 = (v35 + v3[7]);
  *v36 = v30;
  v36[1] = v32;
  v37 = (v35 + v3[8]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v35 + v3[9]);
  v39 = v35;
  *v38 = sub_23DB0666C;
  v38[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v40 = *(v4 + 9);
  v41 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23DB78D60;
  v98 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DB06674(v26, v42 + v41, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DB06674(v39, v42 + v41 + v40, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v42;

  v94 = v18;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v43 = (type metadata accessor for CommandToPractice(0) - 8);
  v44 = (*(*v43 + 80) + 32) & ~*(*v43 + 80);
  v95 = *(*v43 + 72);
  v96 = 2 * v95;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_23DB76A80;
  v46 = v45;
  v97 = v45;
  v47 = objc_opt_self();

  v48 = [v47 currentDevice];
  v49 = [v48 userInterfaceIdiom];

  v50 = "tutorial.vo.magicTap.text";
  if (v49)
  {
    v51 = 0xD00000000000001DLL;
  }

  else
  {
    v50 = "cTap.button.play";
    v51 = 0xD00000000000001FLL;
  }

  v100 = v34;
  v92 = sub_23DB04C74(v51, v50 | 0x8000000000000000);
  v91 = v52;
  v53 = v46 + v44;
  *v53 = 0;
  *(v53 + 8) = 0xE000000000000000;
  *(v53 + 17) = 186;
  *(v53 + 19) = 0;
  sub_23DB6EA7C();
  v54 = v43[12];
  *(v53 + v54) = 1;
  v55 = v43[13];
  *(v53 + v55) = 1;
  v56 = v43[14];
  v57 = type metadata accessor for KeyboardKey(0);
  v58 = *(*(v57 - 8) + 56);
  v58(v53 + v56, 1, 1, v57);
  v93 = v58;
  v59 = (v53 + v43[15]);
  *v59 = 0;
  v59[1] = 0;
  v60 = v91;
  *v53 = v92;
  *(v53 + 8) = v60;

  *(v53 + 16) = 62;
  *(v53 + 19) = 1;
  *v59 = 0;
  v59[1] = 0;

  *(v53 + v54) = 1;
  *(v53 + v55) = 1;
  v61 = v53 + v95;
  v62 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8C0D0);
  v64 = v63;
  *v61 = 0;
  *(v61 + 8) = 0xE000000000000000;
  *(v61 + 17) = 186;
  *(v61 + 19) = 0;
  sub_23DB6EA7C();
  v65 = v43[12];
  *(v61 + v65) = 1;
  v66 = v43[13];
  *(v61 + v66) = 1;
  v58(v61 + v43[14], 1, 1, v57);
  v67 = (v61 + v43[15]);
  *v67 = 0;
  v67[1] = 0;
  *v61 = v62;
  *(v61 + 8) = v64;

  *(v61 + 16) = 16;
  *(v61 + 19) = 0;
  *v67 = 0;
  v67[1] = 0;

  *(v61 + v65) = 0;
  *(v61 + v66) = 1;
  v68 = v53 + v96;
  v69 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8C100);
  v71 = v70;
  *v68 = 0;
  *(v68 + 8) = 0xE000000000000000;
  *(v68 + 17) = 186;
  *(v68 + 19) = 0;
  sub_23DB6EA7C();
  v72 = v43[12];
  *(v68 + v72) = 1;
  v73 = v43[13];
  *(v68 + v73) = 1;
  v93(v68 + v43[14], 1, 1, v57);
  v74 = (v68 + v43[15]);
  *v74 = 0;
  v74[1] = 0;
  *v68 = v69;
  *(v68 + 8) = v71;

  *(v68 + 16) = 3;
  *(v68 + 19) = 0;
  *v74 = 0;
  v74[1] = 0;

  *(v68 + v72) = 1;
  *(v68 + v73) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v75 = v94;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v76 = v98;
  sub_23DB0672C(v101, v98);
  sub_23DB0672C(v99, v76);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v75 + v77) = v97;

  v78 = swift_allocObject();
  swift_weakInit();
  v79 = swift_allocObject();
  v80 = v100;
  *(v79 + 16) = v78;
  *(v79 + 24) = v80;
  v81 = (v75 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v82 = *v81;
  v83 = v81[1];
  *v81 = sub_23DB071F8;
  v81[1] = v79;
  swift_retain_n();

  sub_23DA18BA0(v82, v83);

  v84 = swift_allocObject();
  swift_weakInit();
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = v80;
  v86 = (v75 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v86 = sub_23DB0678C;
  v86[1] = v85;

  v87 = swift_allocObject();
  swift_weakInit();

  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = v80;
  v89 = (v75 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v89 = sub_23DB071FC;
  v89[1] = v88;

  return v75;
}

uint64_t sub_23DAFC828(uint64_t a1)
{
  v2 = sub_23DB6EB3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v15[24] = 0;

  sub_23DB6EF1C();
  v6 = sub_23DB04C74(0xD000000000000033, 0x800000023DB89290);
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

uint64_t sub_23DAFC9F8(uint64_t a1)
{
  v2 = sub_23DB6EB3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v15[24] = 1;

  sub_23DB6EF1C();
  v6 = sub_23DB04C74(0xD000000000000036, 0x800000023DB89250);
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

uint64_t sub_23DAFCBCC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    v3 = result;
    swift_beginAccess();
    v5 = *v2;
    v4 = v2[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v12);

    v6 = v12;
    v7 = v13;
    UIAccessibilityPostNotification(0x438u, 0);
    v8 = MEMORY[0x277D764B0];
    sub_23DB05C14(v5, v4, MEMORY[0x277D764B0]);

    sub_23DB05C14(v6, v7, v8);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v12);

    v9 = v12;
    v10 = v13;
    v11 = *(v3 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
    swift_beginAccess();
    *(v11 + 40) = v9;
    *(v11 + 48) = v10;

    sub_23DABC354();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DAFCDB8()
{
  v1 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8BF80);
  v6 = v5;
  v7 = v0;
  v8 = sub_23DB04C74(0xD000000000000019, 0x800000023DB8BFA0);
  v10 = v9;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOMagicTapButton(0);
  swift_allocObject();
  v11 = sub_23DA32A18(v3, v4, v6, v8, v10, MEMORY[0x277D84F90], 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v12 = (type metadata accessor for CommandToPractice(0) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v71 = *(*v12 + 72);
  v72 = 2 * v71;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23DB76A80;
  v15 = v14;
  v73 = v14;
  v16 = objc_opt_self();

  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = "tutorial.vo.magicTap.text";
  if (v18)
  {
    v20 = 0xD00000000000001DLL;
  }

  else
  {
    v19 = "cTap.button.play";
    v20 = 0xD00000000000001FLL;
  }

  v21 = v7;
  v22 = sub_23DB04C74(v20, v19 | 0x8000000000000000);
  v68 = v23;
  v69 = v22;
  v24 = v15 + v13;
  *v24 = 0;
  *(v24 + 8) = 0xE000000000000000;
  *(v24 + 17) = 186;
  *(v24 + 19) = 0;
  sub_23DB6EA7C();
  v25 = v12[12];
  *(v24 + v25) = 1;
  v26 = v12[13];
  *(v24 + v26) = 1;
  v27 = v12[14];
  v75 = type metadata accessor for KeyboardKey(0);
  v28 = *(v75 - 8);
  v74 = *(v28 + 56);
  v29 = v28 + 56;
  v74(v24 + v27, 1, 1, v75);
  v70 = v29;
  v30 = (v24 + v12[15]);
  *v30 = 0;
  v30[1] = 0;
  v31 = v68;
  *v24 = v69;
  *(v24 + 8) = v31;

  *(v24 + 16) = 62;
  *(v24 + 19) = 1;
  *v30 = 0;
  v30[1] = 0;

  *(v24 + v25) = 1;
  *(v24 + v26) = 1;
  v32 = v24 + v71;
  v33 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8BFE0);
  v35 = v34;
  *v32 = 0;
  *(v32 + 8) = 0xE000000000000000;
  *(v32 + 17) = 186;
  *(v32 + 19) = 0;
  sub_23DB6EA7C();
  v36 = v12[12];
  *(v32 + v36) = 1;
  v37 = v12[13];
  *(v32 + v37) = 1;
  v74(v32 + v12[14], 1, 1, v75);
  v38 = (v32 + v12[15]);
  *v38 = 0;
  v38[1] = 0;
  *v32 = v33;
  *(v32 + 8) = v35;

  *(v32 + 16) = 3;
  *(v32 + 19) = 0;
  *v38 = 0;
  v38[1] = 0;

  *(v32 + v36) = 0;
  *(v32 + v37) = 1;
  v39 = v24 + v72;
  v40 = v21;
  v41 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8C000);
  v43 = v42;
  *v39 = 0;
  *(v39 + 8) = 0xE000000000000000;
  *(v39 + 17) = 186;
  *(v39 + 19) = 0;
  sub_23DB6EA7C();
  v44 = v12[12];
  *(v39 + v44) = 1;
  v45 = v12[13];
  *(v39 + v45) = 1;
  v74(v39 + v12[14], 1, 1, v75);
  v46 = (v39 + v12[15]);
  *v46 = 0;
  v46[1] = 0;
  *v39 = v41;
  *(v39 + 8) = v43;

  *(v39 + 16) = 17;
  *(v39 + 19) = 0;
  *v46 = 0;
  v46[1] = 0;

  *(v39 + v44) = 0;
  *(v39 + v45) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v11 + v47) = v73;

  v48 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8C020);
  v50 = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v48;
  v77 = v50;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = 2036427888;
  v77 = 0xE400000000000000;

  sub_23DB6EF1C();
  v51 = swift_allocObject();
  *(v51 + 16) = v21;
  *(v51 + 24) = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_23DB064D4;
  *(v52 + 24) = v51;
  v76 = sub_23DA40604;
  v77 = v52;
  swift_retain_n();

  sub_23DB6EF1C();
  v53 = swift_allocObject();
  *(v53 + 16) = v21;
  *(v53 + 24) = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_23DB06564;
  *(v54 + 24) = v53;
  v76 = sub_23DA40770;
  v77 = v54;
  swift_retain_n();

  sub_23DB6EF1C();
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v21;
  v57 = (v11 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  *v57 = sub_23DB071F8;
  v57[1] = v56;
  swift_retain_n();

  sub_23DA18BA0(v58, v59);

  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v40;
  v62 = (v11 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v62 = sub_23DB065BC;
  v62[1] = v61;

  v63 = swift_allocObject();
  swift_weakInit();

  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v40;
  v65 = (v11 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v65 = sub_23DB071FC;
  v65[1] = v64;

  return v11;
}

void sub_23DAFD6C0(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x277CE6CD8])
  {
    v2 = *MEMORY[0x277D76438];
    v3 = *MEMORY[0x277CE6CD8];
    UIAccessibilityPostNotification(v2, v3);

    sub_23DB04C74(0xD000000000000021, 0x800000023DB8C070);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
  }

  else
  {
    __break(1u);
  }
}

void sub_23DAFD7F8(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x277CE6CE0])
  {
    v2 = *MEMORY[0x277D76438];
    v3 = *MEMORY[0x277CE6CE0];
    UIAccessibilityPostNotification(v2, v3);

    sub_23DB04C74(0xD000000000000020, 0x800000023DB8C020);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DAFD930(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v11);

    v5 = v11[0];
    v6 = v11[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v7 = MEMORY[0x277D764B0];
    sub_23DB05C14(v4, v3, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v7);

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v11[0]) = 0;

    sub_23DB6EF1C();
    v8 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8C020);
    v10 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v11[0] = v8;
    v11[1] = v10;

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    strcpy(v11, "wave.3.forward");
    HIBYTE(v11[1]) = -18;
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DAFDB5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v114 = *(v1 - 8);
  v115 = v1;
  MEMORY[0x28223BE20](v1);
  v113 = &v89 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v111 = *(v3 - 8);
  v112 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v89 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v106 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v104 = &v89 - v5;
  *&v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v89 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v89 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v102 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v89 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v89 - v21;
  v101 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8BEB0);
  v100 = v23;
  v118 = v0;
  v99 = sub_23DB04C74(0xD00000000000001ELL, 0x800000023DB8BED0);
  v98 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v27 = *(v9 + 32);
  v27(v25 + v26, v11, v8);
  v107 = v13;
  v28 = v13 + 16;
  v29 = *(v13 + 16);
  v103 = v22;
  v29(v19, v22, v12);
  v105 = v19;
  v108 = v12;
  v94 = v28;
  v93 = v29;
  v29(v117, v19, v12);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v116 = v8;
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
  *&v119 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v25 + v33, v34, v92);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v119 = 0;
  v36 = v95;
  sub_23DB6EECC();
  (*(v96 + 32))(v25 + v35, v36, v97);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v27(v25 + v37, v11, v116);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v97 = xmmword_23DB74320;
  v119 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v104;
  sub_23DB6EECC();
  v40 = *(v106 + 32);
  v41 = v110;
  v40(v25 + v38, v39, v110);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v119 = v97;
  sub_23DB6EECC();
  v40(v25 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v27(v25 + v43, v11, v116);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  v45 = v109;
  sub_23DB6EECC();
  (*(v111 + 32))(v25 + v44, v45, v112);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v119 = 0uLL;
  sub_23DB6EECC();
  v40(v25 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v119 = nullsub_1;
  *(&v119 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v113;
  sub_23DB6EECC();
  (*(v114 + 32))(v25 + v47, v48, v115);
  v49 = v102;
  v50 = v117;
  v51 = v108;
  v93(v102, v117, v108);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v101, v100, v99, v98, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v107 + 8);
  v53(v50, v51);
  v53(v105, v51);
  v53(v103, v51);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v119) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v54 = (type metadata accessor for CommandToPractice(0) - 8);
  v55 = *v54;
  v116 = *(*v54 + 72);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  v117 = v57;
  *(v57 + 16) = xmmword_23DB78D60;
  v58 = v57 + v56;
  v59 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8BEF0);
  v114 = v60;
  v115 = v59;
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
  v65 = *(*(v64 - 8) + 56);
  v65(v58 + v63, 1, 1, v64);
  v66 = (v58 + v54[15]);
  *v66 = 0;
  v66[1] = 0;
  v67 = v114;
  *v58 = v115;
  *(v58 + 8) = v67;

  *(v58 + 16) = 18;
  *(v58 + 19) = 1;
  *v66 = 0;
  v66[1] = 0;

  *(v58 + v61) = 1;
  *(v58 + v62) = 1;
  v68 = v58 + v116;
  v69 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8BF20);
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
  v65(v68 + v54[14], 1, 1, v64);
  v74 = (v68 + v54[15]);
  *v74 = 0;
  v74[1] = 0;
  *v68 = v69;
  *(v68 + 8) = v71;

  *(v68 + 16) = 18;
  *(v68 + 19) = 0;
  *v74 = 0;
  v74[1] = 0;

  *(v68 + v72) = 1;
  *(v68 + v73) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v75 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v52 + v75) = v117;

  v76 = swift_allocObject();
  swift_weakInit();
  v77 = swift_allocObject();
  v78 = v118;
  *(v77 + 16) = v76;
  *(v77 + 24) = v78;
  v79 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v79 = sub_23DB05F48;
  v79[1] = v77;
  swift_retain_n();

  v80 = swift_allocObject();
  swift_weakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v78;
  v82 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v82 = sub_23DB05F50;
  v82[1] = v81;

  v83 = swift_allocObject();
  swift_weakInit();

  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v78;
  v85 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v86 = *v85;
  v87 = v85[1];
  *v85 = sub_23DB05F58;
  v85[1] = v84;

  sub_23DA18BA0(v86, v87);

  return v52;
}

uint64_t sub_23DAFE9F8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v10);

    v5 = v10[0];
    v6 = v10[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v7 = MEMORY[0x277D764B0];
    sub_23DB05C14(v4, v3, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v7);

    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    v8 = objc_opt_self();
    v9 = sub_23DB7087C();
    [v8 triggerEventCommand_];
  }

  return result;
}

uint64_t sub_23DAFEBB0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v49 = (&v39 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v39 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v12 = result;
    swift_beginAccess();
    v47 = v11;
    v13 = *(v12 + v11);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();

    v45 = v15;
    v46 = KeyPath;
    v44 = sub_23DB6EEFC();
    v42 = v16;
    v17 = swift_getKeyPath();
    v18 = swift_getKeyPath();
    v48 = v12;
    v43 = v17;
    v41 = v18;
    v40 = sub_23DB6EEFC();
    v39 = v19;

    v20 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_3:
    v21 = 0;
    v22 = (v2 + 7);
    v50 = v13;
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
      v29 = v50;
      if (v21 >= *(v50 + 16))
      {
        goto LABEL_19;
      }

      v30 = *(type metadata accessor for CommandToPractice(0) - 8);
      v51 = v21 + 1;
      v31 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21;
      v32 = *(v1 + 48);
      v33 = v49;
      *v49 = v21;
      sub_23DB06674(v31, v33 + v32, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v33, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v25 = 0;
      v21 = v51;
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
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        v20 = sub_23DAC8B24(v13);
        goto LABEL_3;
      }

      if (v13 >= v20[2])
      {
        goto LABEL_18;
      }

      v34 = *(type metadata accessor for CommandToPractice(0) - 8);
      v35 = v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13;
      *(v35 + 18) = 0;
      *(v35 + 19) = v13 == 0;
      sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v21 == v23)
      {
        goto LABEL_4;
      }
    }

    *v39 = 0;
    *v42 = 0;
    v40(v52, 0);

    v44(v53, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v36 = v48;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v36 + v47) = v20;

    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
      }
    }

    v37 = objc_opt_self();
    v38 = sub_23DB7087C();
    [v37 triggerEventCommand_];
  }

  return result;
}

uint64_t sub_23DAFF1CC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v13);

    if (LOBYTE(v13[0]) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(v13);

      v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v12[0] = *(v2 + v3);
      swift_getKeyPath();
      swift_getKeyPath();

      v4 = sub_23DB6EEFC();
      sub_23DB05F68(v12, v5);
      v4(v13, 0);

      v6 = v12[0];
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v2 + v3) = v6;

      if (qword_27E2FBBD0 != -1)
      {
        swift_once();
      }

      v7 = qword_27E30A6A8;
      v8 = *(qword_27E30A6A8 + 16);
      swift_beginAccess();
      LOBYTE(v12[0]) = *(v8 + 40);
      if (VOCommandIdentifier.rawValue.getter() == 0xD000000000000022 && 0x800000023DB853C0 == v9)
      {

LABEL_9:
        v11 = *(v7 + 16);
        swift_beginAccess();
        *(v11 + 40) = 27;

        sub_23DABC32C();
      }

      v10 = sub_23DB70DBC();

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_23DAFF4E8()
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
  v110 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8BDB0);
  v109 = v31;
  v129 = v0;
  v108 = sub_23DB04C74(0xD000000000000019, 0x800000023DB8BDD0);
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
  v69 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8BDF0);
  v71 = v70;
  v72 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8BE10);
  v74 = v73;
  v75 = v130;
  sub_23DB6EA7C();
  *v75 = v69;
  v75[1] = v71;
  v75[2] = v72;
  v75[3] = v74;
  v76 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8BE30);
  v78 = v77;
  v79 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8BE50);
  v81 = v80;
  v82 = v131;
  sub_23DB6EA7C();
  *v82 = v76;
  v82[1] = v78;
  v82[2] = v79;
  v82[3] = v81;
  v83 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8BE70);
  v85 = v84;
  v86 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8BE90);
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
  sub_23DB06674(v75, v92 + v91, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v82, v92 + v91 + v90, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v89, v92 + v91 + 2 * v90, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v135 = v92;

  sub_23DB6EF1C();
  v93 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88020);
  v95 = v94;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v135 = v93;
  *(&v135 + 1) = v95;

  sub_23DB6EF1C();
  sub_23DB0672C(v89, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v82, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v75, type metadata accessor for HeaderWithBody);
  return v67;
}

uint64_t sub_23DB002BC()
{
  v1 = type metadata accessor for HeaderWithBody(0);
  v2 = *(v1 - 8);
  v129 = v1;
  v130 = v2;
  MEMORY[0x28223BE20](v1);
  v134 = (&v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v133 = (&v103 - v5);
  MEMORY[0x28223BE20](v6);
  v132 = (&v103 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v126 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v124 = *(v10 - 8);
  v125 = v10;
  MEMORY[0x28223BE20](v10);
  v122 = &v103 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v117 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v116 = &v103 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v103 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v103 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v139 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v103 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAF8, &qword_23DB75350);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v118 = &v103 - v16;
  v17 = sub_23DB6EA8C();
  v138 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v120 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v137 = &v103 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v103 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v103 - v25;
  v27 = objc_opt_self();
  v28 = [v27 currentDevice];
  v29 = [v28 userInterfaceIdiom];

  v30 = "Finished.title.iphone";
  if (v29)
  {
    v31 = 0xD000000000000020;
  }

  else
  {
    v30 = "Guide.text.iphone";
    v31 = 0xD000000000000022;
  }

  v112 = sub_23DB04C74(v31, v30 | 0x8000000000000000);
  v111 = v32;
  v33 = [v27 currentDevice];
  v34 = [v33 userInterfaceIdiom];

  v35 = "Guide.title.ipad";
  if (v34)
  {
    v36 = 0xD00000000000001FLL;
  }

  else
  {
    v35 = "Guide.body.3.ios";
    v36 = 0xD000000000000021;
  }

  v131 = v0;
  v110 = sub_23DB04C74(v36, v35 | 0x8000000000000000);
  v109 = v37;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOExplanation(0);
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__explanationText;
  v40 = MEMORY[0x277D84F90];
  *&v140 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  v41 = v118;
  sub_23DB6EECC();
  v121[4](v38 + v39, v41, v123);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page21PracticeVOExplanation__footer;
  *&v140 = 0;
  *(&v140 + 1) = 0xE000000000000000;
  v43 = v135;
  sub_23DB6EECC();
  v44 = *(v139 + 32);
  v139 += 32;
  v103 = v44;
  v44(v38 + v42, v43, v136);
  v45 = v138 + 16;
  v46 = *(v138 + 16);
  v118 = v26;
  v46(v23, v26, v17);
  v121 = v23;
  v123 = v17;
  v105 = v45;
  v104 = v46;
  v46(v137, v23, v17);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v140) = 0;
  v48 = v106;
  sub_23DB6EECC();
  v49 = *(v107 + 32);
  v50 = v48;
  v51 = v48;
  v52 = v108;
  v49(v38 + v47, v51);
  if (v40 >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v38 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v140 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v113;
  sub_23DB6EECC();
  (*(v114 + 32))(v38 + v54, v55, v115);
  *(v38 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v40;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v140 = 0;
  v57 = v116;
  sub_23DB6EECC();
  (*(v117 + 32))(v38 + v56, v57, v119);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v140) = 0;
  sub_23DB6EECC();
  (v49)(v38 + v58, v50, v52);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v117 = xmmword_23DB74320;
  v140 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v119 = v49;
  v60 = v122;
  sub_23DB6EECC();
  v61 = v125;
  v62 = *(v124 + 32);
  v62(v38 + v59, v60, v125);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v140 = v117;
  sub_23DB6EECC();
  v62(v38 + v63, v60, v61);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v140) = 0;
  sub_23DB6EECC();
  v119(v38 + v64, v50, v52);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v140 = 0;
  *(&v140 + 1) = 0xE000000000000000;
  v66 = v135;
  sub_23DB6EECC();
  v103(v38 + v65, v66, v136);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v140 = 0uLL;
  sub_23DB6EECC();
  v62(v38 + v67, v60, v61);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v140 = nullsub_1;
  *(&v140 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v69 = v126;
  sub_23DB6EECC();
  (*(v127 + 32))(v38 + v68, v69, v128);
  v70 = v120;
  v71 = v137;
  v72 = v123;
  v104(v120, v137, v123);
  v73 = Page.init(id:title:text:subPages:iconName:)(v70, v112, v111, v110, v109, MEMORY[0x277D84F90], 0, 0);
  v74 = *(v138 + 8);
  v74(v118, v72);
  v74(v71, v72);
  v74(v121, v72);
  v75 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8BC30);
  v77 = v76;
  v78 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8BC60);
  v80 = v79;
  v81 = v132;
  sub_23DB6EA7C();
  *v81 = v75;
  v81[1] = v77;
  v81[2] = v78;
  v81[3] = v80;
  v82 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8BC90);
  v84 = v83;
  v85 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8BCC0);
  v87 = v86;
  v88 = v133;
  sub_23DB6EA7C();
  *v88 = v82;
  v88[1] = v84;
  v88[2] = v85;
  v88[3] = v87;
  v89 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8BCF0);
  v91 = v90;
  v92 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8BD20);
  v94 = v93;
  v95 = v134;
  sub_23DB6EA7C();
  *v95 = v89;
  v95[1] = v91;
  v95[2] = v92;
  v95[3] = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1A8, &qword_23DB7A350);
  v96 = *(v130 + 72);
  v97 = (*(v130 + 80) + 32) & ~*(v130 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_23DB76A80;
  sub_23DB06674(v81, v98 + v97, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v88, v98 + v97 + v96, type metadata accessor for HeaderWithBody);
  sub_23DB06674(v95, v98 + v97 + 2 * v96, type metadata accessor for HeaderWithBody);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v140 = v98;

  sub_23DB6EF1C();
  v99 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88020);
  v101 = v100;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v140 = v99;
  *(&v140 + 1) = v101;

  sub_23DB6EF1C();
  sub_23DB0672C(v95, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v88, type metadata accessor for HeaderWithBody);
  sub_23DB0672C(v81, type metadata accessor for HeaderWithBody);
  return v73;
}

uint64_t sub_23DB01134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v91 = *(v1 - 8);
  v92 = v1;
  MEMORY[0x28223BE20](v1);
  v90 = &v66 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = &v66 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v66 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v78 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v75 = &v66 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v66 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v8 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v66 - v9;
  v11 = sub_23DB6EA8C();
  v94 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  v19 = objc_opt_self();
  v20 = [v19 currentDevice];
  v21 = [v20 userInterfaceIdiom];

  v22 = "r.collectionFinished.text";
  if (v21)
  {
    v23 = 0xD000000000000033;
  }

  else
  {
    v22 = "Finished.text.iphone";
    v23 = 0xD000000000000035;
  }

  v77 = sub_23DB04C74(v23, v22 | 0x8000000000000000);
  v76 = v24;
  v25 = [v19 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  v27 = "Finished.title.ipad";
  if (v26)
  {
    v28 = 0xD000000000000032;
  }

  else
  {
    v27 = "Finished.text.ipad";
    v28 = 0xD000000000000034;
  }

  v93 = v0;
  v74 = sub_23DB04C74(v28, v27 | 0x8000000000000000);
  v73 = v29;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v30 = swift_allocObject();
  v31 = *(v94 + 16);
  v81 = v18;
  v82 = v15;
  v84 = v11;
  v69 = v94 + 16;
  v68 = v31;
  v31(v15, v18, v11);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v33 = *(v8 + 32);
  v34 = v10;
  v35 = v67;
  v33(v30 + v32, v10);
  v36 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v37 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v37 = MEMORY[0x277D84FA0];
  }

  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v37;
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v95 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v39 = v36;
  v40 = v70;
  sub_23DB6EECC();
  (*(v71 + 32))(v30 + v38, v40, v72);
  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v39;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v95 = 0;
  v42 = v75;
  sub_23DB6EECC();
  (*(v78 + 32))(v30 + v41, v42, v79);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v95) = 0;
  v44 = v34;
  sub_23DB6EECC();
  (v33)(v30 + v43, v34, v35);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v78 = xmmword_23DB74320;
  v95 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v46 = v83;
  sub_23DB6EECC();
  v79 = v33;
  v47 = *(v85 + 32);
  v48 = v87;
  v47(v30 + v45, v46, v87);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v95 = v78;
  sub_23DB6EECC();
  v47(v30 + v49, v46, v48);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v79(v30 + v50, v44, v35);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  v52 = v86;
  sub_23DB6EECC();
  (*(v88 + 32))(v30 + v51, v52, v89);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v95 = 0uLL;
  sub_23DB6EECC();
  v47(v30 + v53, v46, v48);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v95 = nullsub_1;
  *(&v95 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v55 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v30 + v54, v55, v92);
  v56 = v80;
  v57 = v82;
  v58 = v84;
  v68(v80, v82, v84);
  v59 = Page.init(id:title:text:subPages:iconName:)(v56, v77, v76, v74, v73, MEMORY[0x277D84F90], 0, 0);
  v60 = *(v94 + 8);
  v60(v57, v58);
  v60(v81, v58);
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  v63 = v93;
  *(v62 + 16) = v61;
  *(v62 + 24) = v63;
  v64 = (v59 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v64 = sub_23DB071F4;
  v64[1] = v62;

  return v59;
}

uint64_t sub_23DB01B38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  *&v62 = &v60 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB88900);
  v69 = v25;
  v70 = v24;
  v84 = v0;
  v67 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB88930);
  v66 = v26;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v73 = v20;
  v74 = v16;
  v28 = *(v16 + 16);
  v72 = v23;
  v75 = v15;
  v64 = v16 + 16;
  v63 = v28;
  v28(v20, v23, v15);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v30 = *(v12 + 32);
  v31 = v11;
  v30(v27 + v29, v14, v11);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v60 + 32))(v27 + v34, v10, v61);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v32;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v85 = 0;
  v36 = v62;
  sub_23DB6EECC();
  (*(v65 + 4))(v27 + v35, v36, v7);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v38 = v31;
  v30(v27 + v37, v14, v31);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v85 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v40 = v68;
  sub_23DB6EECC();
  v65 = v30;
  v41 = v78;
  v42 = *(v77 + 32);
  v42(v27 + v39, v40, v78);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v85 = v62;
  sub_23DB6EECC();
  v42(v27 + v43, v40, v41);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v65(v27 + v44, v14, v38);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v46 = v76;
  sub_23DB6EECC();
  (*(v79 + 32))(v27 + v45, v46, v80);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v85 = 0uLL;
  sub_23DB6EECC();
  v42(v27 + v47, v40, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v85 = nullsub_1;
  *(&v85 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v27 + v48, v49, v83);
  v50 = v71;
  v51 = v73;
  v52 = v75;
  v63(v71, v73, v75);
  v53 = Page.init(id:title:text:subPages:iconName:)(v50, v70, v69, v67, v66, MEMORY[0x277D84F90], 0, 0);
  v54 = *(v74 + 8);
  v54(v51, v52);
  v54(v72, v52);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  v57 = v84;
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  v58 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v58 = sub_23DB071F4;
  v58[1] = v56;

  return v53;
}

uint64_t sub_23DB02478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  *&v62 = &v60 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8BA80);
  v69 = v25;
  v70 = v24;
  v84 = v0;
  v67 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8BAB0);
  v66 = v26;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v73 = v20;
  v74 = v16;
  v28 = *(v16 + 16);
  v72 = v23;
  v75 = v15;
  v64 = v16 + 16;
  v63 = v28;
  v28(v20, v23, v15);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v30 = *(v12 + 32);
  v31 = v11;
  v30(v27 + v29, v14, v11);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v60 + 32))(v27 + v34, v10, v61);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v32;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v85 = 0;
  v36 = v62;
  sub_23DB6EECC();
  (*(v65 + 4))(v27 + v35, v36, v7);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v38 = v31;
  v30(v27 + v37, v14, v31);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v85 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v40 = v68;
  sub_23DB6EECC();
  v65 = v30;
  v41 = v78;
  v42 = *(v77 + 32);
  v42(v27 + v39, v40, v78);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v85 = v62;
  sub_23DB6EECC();
  v42(v27 + v43, v40, v41);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v65(v27 + v44, v14, v38);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v46 = v76;
  sub_23DB6EECC();
  (*(v79 + 32))(v27 + v45, v46, v80);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v85 = 0uLL;
  sub_23DB6EECC();
  v42(v27 + v47, v40, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v85 = nullsub_1;
  *(&v85 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v27 + v48, v49, v83);
  v50 = v71;
  v51 = v73;
  v52 = v75;
  v63(v71, v73, v75);
  v53 = Page.init(id:title:text:subPages:iconName:)(v50, v70, v69, v67, v66, MEMORY[0x277D84F90], 0, 0);
  v54 = *(v74 + 8);
  v54(v51, v52);
  v54(v72, v52);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  v57 = v84;
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  v58 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v58 = sub_23DB05E38;
  v58[1] = v56;

  return v53;
}

uint64_t sub_23DB02DB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  *&v62 = &v60 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8BA20);
  v69 = v25;
  v70 = v24;
  v84 = v0;
  v67 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8BA50);
  v66 = v26;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v73 = v20;
  v74 = v16;
  v28 = *(v16 + 16);
  v72 = v23;
  v75 = v15;
  v64 = v16 + 16;
  v63 = v28;
  v28(v20, v23, v15);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v30 = *(v12 + 32);
  v31 = v11;
  v30(v27 + v29, v14, v11);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v60 + 32))(v27 + v34, v10, v61);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v32;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v85 = 0;
  v36 = v62;
  sub_23DB6EECC();
  (*(v65 + 4))(v27 + v35, v36, v7);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v38 = v31;
  v30(v27 + v37, v14, v31);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v85 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v40 = v68;
  sub_23DB6EECC();
  v65 = v30;
  v41 = v78;
  v42 = *(v77 + 32);
  v42(v27 + v39, v40, v78);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v85 = v62;
  sub_23DB6EECC();
  v42(v27 + v43, v40, v41);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v65(v27 + v44, v14, v38);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v46 = v76;
  sub_23DB6EECC();
  (*(v79 + 32))(v27 + v45, v46, v80);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v85 = 0uLL;
  sub_23DB6EECC();
  v42(v27 + v47, v40, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v85 = nullsub_1;
  *(&v85 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v27 + v48, v49, v83);
  v50 = v71;
  v51 = v73;
  v52 = v75;
  v63(v71, v73, v75);
  v53 = Page.init(id:title:text:subPages:iconName:)(v50, v70, v69, v67, v66, MEMORY[0x277D84F90], 0, 0);
  v54 = *(v74 + 8);
  v54(v51, v52);
  v54(v72, v52);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  v57 = v84;
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  v58 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v58 = sub_23DB071F4;
  v58[1] = v56;

  return v53;
}

uint64_t sub_23DB036F8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27E2FBBD0 == -1)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
LABEL_5:
        v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
        swift_beginAccess();
        v7 = *v5;
        v6 = v5[1];
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C(v11);

        v8 = v11[0];
        v9 = v11[1];
        UIAccessibilityPostNotification(0x438u, 0);
        v10 = MEMORY[0x277D764B0];
        sub_23DB05C14(v7, v6, MEMORY[0x277D764B0]);

        sub_23DB05C14(v8, v9, v10);
      }
    }

    else
    {
      swift_once();
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_5;
      }
    }

    v3 = objc_opt_self();
    v4 = sub_23DB7087C();
    [v3 triggerEventCommand_];

    goto LABEL_5;
  }

  return result;
}

uint64_t sub_23DB038B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  *&v62 = &v60 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = sub_23DB04C74(0xD00000000000002ELL, 0x800000023DB87EC0);
  v69 = v25;
  v70 = v24;
  v84 = v0;
  v67 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB87EF0);
  v66 = v26;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v73 = v20;
  v74 = v16;
  v28 = *(v16 + 16);
  v72 = v23;
  v75 = v15;
  v64 = v16 + 16;
  v63 = v28;
  v28(v20, v23, v15);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v30 = *(v12 + 32);
  v31 = v11;
  v30(v27 + v29, v14, v11);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v60 + 32))(v27 + v34, v10, v61);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v32;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v85 = 0;
  v36 = v62;
  sub_23DB6EECC();
  (*(v65 + 4))(v27 + v35, v36, v7);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v38 = v31;
  v30(v27 + v37, v14, v31);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v85 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v40 = v68;
  sub_23DB6EECC();
  v65 = v30;
  v41 = v78;
  v42 = *(v77 + 32);
  v42(v27 + v39, v40, v78);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v85 = v62;
  sub_23DB6EECC();
  v42(v27 + v43, v40, v41);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v65(v27 + v44, v14, v38);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v46 = v76;
  sub_23DB6EECC();
  (*(v79 + 32))(v27 + v45, v46, v80);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v85 = 0uLL;
  sub_23DB6EECC();
  v42(v27 + v47, v40, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v85 = nullsub_1;
  *(&v85 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v27 + v48, v49, v83);
  v50 = v71;
  v51 = v73;
  v52 = v75;
  v63(v71, v73, v75);
  v53 = Page.init(id:title:text:subPages:iconName:)(v50, v70, v69, v67, v66, MEMORY[0x277D84F90], 0, 0);
  v54 = *(v74 + 8);
  v54(v51, v52);
  v54(v72, v52);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  v57 = v84;
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  v58 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v58 = sub_23DB07204;
  v58[1] = v56;

  return v53;
}

uint64_t sub_23DB041F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v8);

    v5 = v8[0];
    v6 = v8[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v7 = MEMORY[0x277D764B0];
    sub_23DB05C14(v4, v3, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v7);
  }

  return result;
}

void sub_23DB04320(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v41 = a2;
  v42 = a3;
  v9 = sub_23DB707AC();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DB707CC();
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23DB707EC();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  v23 = *a1;
  if (a5)
  {
    v37 = v19;
    v38 = v20;
    v36 = v5;
    if (*(sub_23DB6BEA8(&unk_284FE7938) + 16))
    {
      sub_23DB6B4E4(v23);
      if (v24)
      {

        sub_23DA5295C();
        v34 = sub_23DB70AEC();
        sub_23DB707DC();
        sub_23DB707FC();
        v25 = *(v38 + 8);
        v38 += 8;
        v35 = v25;
        v25(v17, v37);
        v26 = swift_allocObject();
        *(v26 + 16) = a4 & 1;
        v27 = v41;
        v28 = v42;
        *(v26 + 24) = v36;
        *(v26 + 32) = v27;
        *(v26 + 40) = v28;
        aBlock[4] = sub_23DB05E08;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23DABB3DC;
        aBlock[3] = &block_descriptor_7;
        v29 = _Block_copy(aBlock);

        sub_23DB707BC();
        v43 = MEMORY[0x277D84F90];
        sub_23DB05EFC(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
        sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
        sub_23DB70C0C();
        v30 = v34;
        MEMORY[0x23EEF6E80](v22, v14, v11, v29);
        _Block_release(v29);

        (*(v40 + 8))(v11, v9);
        (*(v39 + 8))(v14, v12);
        v35(v22, v37);

        return;
      }
    }
  }

  if (a4)
  {
    if (!*MEMORY[0x277CE6CE8])
    {
      __break(1u);
      return;
    }

    v31 = *MEMORY[0x277D76438];
    v32 = *MEMORY[0x277CE6CE8];
    UIAccessibilityPostNotification(v31, v32);
  }

  if (a5)
  {
    if (sub_23DB047DC(v23, &unk_284FE79B8))
    {
      v33 = MEMORY[0x277D764B0];
    }

    else
    {
      v33 = MEMORY[0x277D764B8];
    }

    sub_23DB05C14(v41, v42, v33);
  }
}

uint64_t sub_23DB047DC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a2 + 32);
  while (1)
  {
    v6 = *v4++;
    if (v6 < 0)
    {
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      v7 = VCCommandIdentifier.rawValue.getter();
      v9 = v12;
      v10 = VCCommandIdentifier.rawValue.getter();
    }

    else
    {
      if (a1 < 0)
      {
        goto LABEL_4;
      }

      v7 = VOCommandIdentifier.rawValue.getter();
      v9 = v8;
      v10 = VOCommandIdentifier.rawValue.getter();
    }

    if (v7 == v10 && v9 == v11)
    {
      break;
    }

    v5 = sub_23DB70DBC();

    if (v5)
    {
      return 1;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_23DB048F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*MEMORY[0x277CE6CE8])
  {
    v6 = *MEMORY[0x277D76438];
    v7 = *MEMORY[0x277CE6CE8];
    UIAccessibilityPostNotification(v6, v7);

LABEL_4:
    sub_23DB05C14(a3, a4, MEMORY[0x277D764B0]);
    return;
  }

  __break(1u);
}

void sub_23DB0496C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = a1[17];
  if ((a1[16] & 0x80000000) == 0)
  {
    v9 = VOCommandIdentifier.rawValue.getter();
    v11 = v10;
    if (v9 == VOCommandIdentifier.rawValue.getter() && v11 == v12)
    {
      goto LABEL_10;
    }

    v13 = sub_23DB70DBC();

    if (v13)
    {
LABEL_11:
      if (*MEMORY[0x277CE6CE8])
      {
        v18 = *MEMORY[0x277D76438];
        v19 = *MEMORY[0x277CE6CE8];
        UIAccessibilityPostNotification(v18, v19);

        if ((a1[18] & 1) == 0)
        {
          a1[18] = 1;
          v20 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
          [*(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) invalidate];
          v21 = *(v4 + v20);
          *(v4 + v20) = 0;

          *(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
          if (a3)
          {
            UIAccessibilityPostNotification(0x438u, 0);
            sub_23DB05C14(a2, a3, MEMORY[0x277D764B0]);
          }
        }

        return;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }
  }

  if ((v8 & 0x80000000) == 0)
  {
    v14 = VOCommandIdentifier.rawValue.getter();
    v16 = v15;
    if (v14 == VOCommandIdentifier.rawValue.getter() && v16 == v17)
    {
LABEL_10:

      goto LABEL_11;
    }

    v22 = sub_23DB70DBC();

    if (v22)
    {
      goto LABEL_11;
    }
  }

  if (VOCommandIdentifier.rawValue.getter() == 0xD000000000000017 && 0x800000023DB85310 == v23)
  {

    return;
  }

  v24 = sub_23DB70DBC();

  if ((v24 & 1) == 0 && (a1[18] & 1) == 0)
  {
    if (*MEMORY[0x277CE6CC0])
    {
      v25 = *MEMORY[0x277D76438];
      v26 = *MEMORY[0x277CE6CC0];
      UIAccessibilityPostNotification(v25, v26);

      return;
    }

    goto LABEL_25;
  }
}

uint64_t sub_23DB04C74(uint64_t a1, uint64_t a2)
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

    MEMORY[0x23EEF6D00](1936681262, 0xE400000000000000);
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

uint64_t sub_23DB04F2C(uint64_t a1, unint64_t a2, uint64_t a3)
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

            v8 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8B9F0);
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

void sub_23DB05124()
{

  v1 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_synthesizer);
}

uint64_t AXOnboardingModelVoiceOverIOS.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AXOnboardingModelVoiceOverIOS.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_synthesizer);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23DB0534C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DB053CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  return _AXSVoiceOverTouchSetTypingMode();
}

uint64_t sub_23DB05584@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DB05604(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB05740(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

float sub_23DB059DC@<S0>(_DWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v6);

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_23DB05A6C(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t type metadata accessor for AXOnboardingModelVoiceOverIOS(uint64_t a1)
{
  result = qword_27E2FF460;
  if (!qword_27E2FF460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DB05C14(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v5 = sub_23DB7087C();
  v6 = [v4 initWithString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  v8 = MEMORY[0x277D764E8];
  *(inited + 16) = xmmword_23DB73BA0;
  v9 = *v8;
  *(inited + 32) = *v8;
  v10 = *a3;
  type metadata accessor for UIAccessibilityPriority(0);
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  v12 = v9;
  v13 = v10;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  type metadata accessor for Key(0);
  sub_23DB05EFC(&qword_27E2FBE30, type metadata accessor for Key, &unk_23DB73B4C);
  v14 = sub_23DB7080C();

  [v6 setAttributes:v14 range:{0, objc_msgSend(v6, sel_length)}];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v6);
}

uint64_t sub_23DB05DC8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DB05EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DB05F68(unint64_t a1, unint64_t *a2)
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v7 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  v8 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v2 = *a1;
  if (v8 >= *(*a1 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v44 = a2;
  v49 = a1;
  v4 = *(v7 + 40);
  result = type metadata accessor for CommandToPractice(0);
  v3 = result;
  v47 = (*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80);
  v43 = *(*(result - 8) + 72);
  a1 = v43 * v8;
  v10 = v2 + v47 + v43 * v8;
  v11 = v10[17];
  v45 = v10[*(result + 40)];
  v46 = v10[*(result + 44)];
  if ((v10[16] & 0x80000000) == 0)
  {
    v12 = v4;
    v50 = v4;
    v13 = VOCommandIdentifier.rawValue.getter();
    v15 = v14;
    if (v13 == VOCommandIdentifier.rawValue.getter() && v15 == v16)
    {
LABEL_12:

      v4 = v12;
      goto LABEL_13;
    }

    v17 = sub_23DB70DBC();

    v4 = v12;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  if (v11 < 0)
  {
    return result;
  }

  v12 = v4;
  v50 = v4;
  v18 = VOCommandIdentifier.rawValue.getter();
  v20 = v19;
  if (v18 == VOCommandIdentifier.rawValue.getter() && v20 == v21)
  {
    goto LABEL_12;
  }

  v37 = sub_23DB70DBC();

  v4 = v12;
  if ((v37 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v8 >= v2[2])
  {
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_23DAC8B24(v2);
    v2 = result;
    goto LABEL_16;
  }

  if (v10[18])
  {
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  v22 = v2[2];
  if (v8 >= v22)
  {
    __break(1u);
    goto LABEL_36;
  }

  v23 = v49;
  *(v2 + v47 + a1 + 18) = 1;
  *v49 = v2;
  v24 = v8 + 1;
  if (v24 != v22)
  {
    *v44 = v24;
    if (v24 < v22)
    {
      v28 = v2 + v47 + v43 * v24;
      v29 = &v28[*(v3 + 52)];
      v30 = *(v29 + 1);
      v42 = v4;
      if (v30)
      {
        v48 = *v29;

        sub_23DB04C74(0xD000000000000036, 0x800000023DB88150);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB78D60;
        if (v24 >= v2[2])
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v31 = result;
        v32 = *v28;
        v33 = *(v28 + 1);
        v34 = MEMORY[0x277D837D0];
        *(result + 56) = MEMORY[0x277D837D0];
        v35 = sub_23DA40598();
        v31[4] = v32;
        v31[5] = v33;
        v31[12] = v34;
        v31[13] = v35;
        v31[8] = v35;
        v31[9] = v48;
        v31[10] = v30;

        v25 = sub_23DB708CC();
        v27 = v36;
        v23 = v49;
      }

      else
      {
        sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB88120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
        result = swift_allocObject();
        *(result + 16) = xmmword_23DB73BA0;
        if (v24 >= v2[2])
        {
LABEL_39:
          __break(1u);
          return result;
        }

        v38 = result;
        v39 = *v28;
        v40 = *(v28 + 1);
        *(result + 56) = MEMORY[0x277D837D0];
        *(result + 64) = sub_23DA40598();
        *(v38 + 32) = v39;
        *(v38 + 40) = v40;

        v25 = sub_23DB708CC();
        v27 = v41;
      }

      v4 = v42;
      if (v24 < v2[2])
      {
        v28[19] = 1;
        *v23 = v2;
        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = sub_23DB04C74(0xD000000000000031, 0x800000023DB88190);
  v27 = v26;
LABEL_29:
  v50 = v4;
  sub_23DB04320(&v50, v25, v27, v45, v46);
}

uint64_t sub_23DB0652C()
{

  return swift_deallocObject();
}

uint64_t sub_23DB06674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB0672C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DB06AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB06B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB07240@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v318 = a2;
  v231 = type metadata accessor for PracticeVOTapToSpeakView(0);
  MEMORY[0x28223BE20](v231);
  v228 = &v224 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF488, &qword_23DB7EED8);
  MEMORY[0x28223BE20](v227);
  v230 = &v224 - v4;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF490, &qword_23DB7EEE0);
  MEMORY[0x28223BE20](v242);
  v232 = &v224 - v5;
  v229 = type metadata accessor for PracticeVOSliderView(0);
  MEMORY[0x28223BE20](v229);
  v226 = &v224 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF498, &qword_23DB7EEE8);
  MEMORY[0x28223BE20](v245);
  v244 = &v224 - v7;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4A0, &qword_23DB7EEF0);
  MEMORY[0x28223BE20](v239);
  v238 = &v224 - v8;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4A8, &qword_23DB7EEF8);
  MEMORY[0x28223BE20](v234);
  v235 = &v224 - v9;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4B0, &qword_23DB7EF00);
  MEMORY[0x28223BE20](v240);
  v237 = &v224 - v10;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4B8, &qword_23DB7EF08);
  MEMORY[0x28223BE20](v243);
  v241 = &v224 - v11;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4C0, &unk_23DB7EF10);
  MEMORY[0x28223BE20](v315);
  v246 = &v224 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  MEMORY[0x28223BE20](v13 - 8);
  v248 = &v224 - v14;
  v233 = type metadata accessor for PracticeVOSingleButtonView(0);
  MEMORY[0x28223BE20](v233);
  v247 = (&v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v236 = &v224 - v17;
  v253 = type metadata accessor for PracticeVOGridView(0);
  MEMORY[0x28223BE20](v253);
  v249 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4C8, &qword_23DB7EF20);
  MEMORY[0x28223BE20](v250);
  v251 = &v224 - v19;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4D0, &qword_23DB7EF28);
  MEMORY[0x28223BE20](v258);
  v252 = &v224 - v20;
  v255 = type metadata accessor for PracticeVOScrollView(0);
  MEMORY[0x28223BE20](v255);
  v254 = &v224 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4D8, &qword_23DB7EF30);
  MEMORY[0x28223BE20](v256);
  v257 = (&v224 - v22);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4E0, &qword_23DB7EF38);
  MEMORY[0x28223BE20](v281);
  v259 = &v224 - v23;
  v265 = type metadata accessor for PracticeVOTypingView(0);
  MEMORY[0x28223BE20](v265);
  v260 = &v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4E8, &qword_23DB7EF40);
  MEMORY[0x28223BE20](v262);
  v264 = &v224 - v25;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4F0, &qword_23DB7EF48);
  MEMORY[0x28223BE20](v275);
  v266 = &v224 - v26;
  v263 = type metadata accessor for PracticeVOCustomActionView(0);
  MEMORY[0x28223BE20](v263);
  v261 = &v224 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF4F8, &qword_23DB7EF50);
  MEMORY[0x28223BE20](v278);
  v277 = &v224 - v28;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF500, &qword_23DB7EF58);
  MEMORY[0x28223BE20](v272);
  v274 = &v224 - v29;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF508, &qword_23DB7EF60);
  MEMORY[0x28223BE20](v269);
  v270 = (&v224 - v30);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF510, &qword_23DB7EF68);
  MEMORY[0x28223BE20](v273);
  v271 = &v224 - v31;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF518, &qword_23DB7EF70);
  MEMORY[0x28223BE20](v279);
  v276 = &v224 - v32;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF520, &qword_23DB7EF78);
  MEMORY[0x28223BE20](v312);
  v280 = &v224 - v33;
  v268 = type metadata accessor for PracticeVOMagicTapButtonView(0);
  MEMORY[0x28223BE20](v268);
  v267 = &v224 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = type metadata accessor for PracticeUneditableTextVOView(0);
  MEMORY[0x28223BE20](v284);
  v300 = &v224 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF528, &qword_23DB7EF80);
  MEMORY[0x28223BE20](v282);
  v283 = (&v224 - v36);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF530, &qword_23DB7EF88);
  MEMORY[0x28223BE20](v293);
  v285 = &v224 - v37;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF538, &qword_23DB7EF90);
  MEMORY[0x28223BE20](v290);
  v292 = &v224 - v38;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF540, &qword_23DB7EF98);
  MEMORY[0x28223BE20](v287);
  v295 = &v224 - v39;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF548, &qword_23DB7EFA0);
  MEMORY[0x28223BE20](v291);
  v289 = &v224 - v40;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF550, &qword_23DB7EFA8);
  MEMORY[0x28223BE20](v308);
  v294 = &v224 - v41;
  v288 = type metadata accessor for PracticeVOContextualMenuView(0);
  MEMORY[0x28223BE20](v288);
  v286 = &v224 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF558, &qword_23DB7EFB0);
  MEMORY[0x28223BE20](v296);
  v298 = (&v224 - v43);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF560, &qword_23DB7EFB8);
  MEMORY[0x28223BE20](v304);
  v299 = &v224 - v44;
  v297 = type metadata accessor for PracticeVOTablesView(0);
  MEMORY[0x28223BE20](v297);
  v46 = &v224 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = type metadata accessor for PracticeVoiceOverHeadersView(0);
  MEMORY[0x28223BE20](v301);
  v48 = &v224 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF568, &qword_23DB7EFC0);
  MEMORY[0x28223BE20](v313);
  v317 = &v224 - v49;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF570, &qword_23DB7EFC8);
  MEMORY[0x28223BE20](v310);
  v309 = &v224 - v50;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF578, &qword_23DB7EFD0);
  MEMORY[0x28223BE20](v305);
  v307 = &v224 - v51;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF580, &qword_23DB7EFD8);
  MEMORY[0x28223BE20](v302);
  v53 = &v224 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF588, &qword_23DB7EFE0);
  MEMORY[0x28223BE20](v54);
  v56 = &v224 - v55;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF590, &qword_23DB7EFE8);
  MEMORY[0x28223BE20](v303);
  v58 = &v224 - v57;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF598, &qword_23DB7EFF0);
  MEMORY[0x28223BE20](v306);
  v60 = &v224 - v59;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF5A0, &qword_23DB7EFF8);
  MEMORY[0x28223BE20](v311);
  v62 = &v224 - v61;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF5A8, &qword_23DB7F000);
  MEMORY[0x28223BE20](v314);
  v316 = &v224 - v63;
  type metadata accessor for Page.PracticeVOBox(0);
  v319 = a1;
  if (swift_dynamicCastClass())
  {
    KeyPath = swift_getKeyPath();
    sub_23DB0C6AC(&qword_27E2FF778, type metadata accessor for Page.PracticeVOBox, &protocol conformance descriptor for Page);

    v65 = sub_23DB6F1EC();
    v67 = v66;
    v320 = 0;
    sub_23DB7037C();
    v68 = v324;
    *v56 = v65;
    *(v56 + 1) = v67;
    v300 = KeyPath;
    *(v56 + 2) = KeyPath;
    v56[24] = 0;
    *(v56 + 2) = v68;
    swift_storeEnumTagMultiPayload();
    sub_23DB0CA40();
    sub_23DB0C6AC(&qword_27E2FF610, type metadata accessor for PracticeVoiceOverHeadersView, &unk_23DB7F928);

    sub_23DB6F79C();
    sub_23DA0E2B4(v58, v53, &qword_27E2FF590, &qword_23DB7EFE8);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C984();
    sub_23DB0CA94();
    sub_23DB6F79C();
    sub_23DA17988(v58, &qword_27E2FF590, &qword_23DB7EFE8);
    sub_23DA0E2B4(v60, v307, &qword_27E2FF598, &qword_23DB7EFF0);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C8F8();
    sub_23DB0CBA4();
    sub_23DB6F79C();
    sub_23DA17988(v60, &qword_27E2FF598, &qword_23DB7EFF0);
    sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C86C();
    sub_23DB0CE50();
    v69 = v316;
    sub_23DB6F79C();
    sub_23DA17988(v62, &qword_27E2FF5A0, &qword_23DB7EFF8);
    sub_23DA0E2B4(v69, v317, &qword_27E2FF5A8, &qword_23DB7F000);
    swift_storeEnumTagMultiPayload();
    sub_23DB0C7E0();
    sub_23DB0D410();
    sub_23DB6F79C();

    v70 = v69;
LABEL_3:
    v71 = &qword_27E2FF5A8;
    v72 = &qword_23DB7F000;
    return sub_23DA17988(v70, v71, v72);
  }

  v224 = v58;
  v74 = v46;
  v225 = v60;
  v75 = v300;
  type metadata accessor for Page.PracticeVOWithText(0);
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for Page.PracticeVOTables(0);
    if (swift_dynamicCastClass())
    {
      v84 = swift_getKeyPath();

      sub_23DB6F91C();
      sub_23DB0C6AC(&qword_27E2FF768, type metadata accessor for Page.PracticeVOTables, &protocol conformance descriptor for Page);
      *v46 = sub_23DB6F1EC();
      *(v46 + 1) = v85;
      *(v46 + 2) = v84;
      v46[24] = 0;
      sub_23DB0D4A4(v46, v298, type metadata accessor for PracticeVOTablesView);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF620, type metadata accessor for PracticeVOTablesView, &unk_23DB7F8D8);
      sub_23DB0CB50();
      v86 = v299;
      sub_23DB6F79C();
      sub_23DA0E2B4(v86, v53, &qword_27E2FF560, &qword_23DB7EFB8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C984();
      sub_23DB0CA94();
      v87 = v225;
      sub_23DB6F79C();
      sub_23DA17988(v86, &qword_27E2FF560, &qword_23DB7EFB8);
      sub_23DA0E2B4(v87, v307, &qword_27E2FF598, &qword_23DB7EFF0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v87, &qword_27E2FF598, &qword_23DB7EFF0);
      sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v88 = v316;
      sub_23DB6F79C();
      sub_23DA17988(v62, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v88, v317, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
      sub_23DA17988(v88, &qword_27E2FF5A8, &qword_23DB7F000);
      v89 = type metadata accessor for PracticeVOTablesView;
LABEL_10:
      v82 = v89;
      v83 = v74;
      return sub_23DB0D50C(v83, v82);
    }

    type metadata accessor for Page.PracticeVOKeyboardCommand(0);
    v90 = swift_dynamicCastClass();
    v92 = v316;
    v91 = v317;
    if (v90)
    {
      sub_23DB0C6AC(&qword_27E2FF760, type metadata accessor for Page.PracticeVOKeyboardCommand, &protocol conformance descriptor for Page);

      v93 = sub_23DB6F1EC();
      v94 = v298;
      *v298 = v93;
      v94[1] = v95;
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF620, type metadata accessor for PracticeVOTablesView, &unk_23DB7F8D8);
      sub_23DB0CB50();

      v96 = v299;
      sub_23DB6F79C();
      sub_23DA0E2B4(v96, v53, &qword_27E2FF560, &qword_23DB7EFB8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C984();
      sub_23DB0CA94();
      v97 = v225;
      sub_23DB6F79C();
      sub_23DA17988(v96, &qword_27E2FF560, &qword_23DB7EFB8);
      sub_23DA0E2B4(v97, v307, &qword_27E2FF598, &qword_23DB7EFF0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v97, &qword_27E2FF598, &qword_23DB7EFF0);
      sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      sub_23DB6F79C();
      sub_23DA17988(v62, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v92, v91, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();

      v70 = v92;
      goto LABEL_3;
    }

    type metadata accessor for Page.PracticeVOContextualMenu(0);
    if (swift_dynamicCastClass())
    {
      v98 = swift_getKeyPath();

      v99 = v286;
      sub_23DB6F91C();
      sub_23DB0C6AC(&qword_27E2FF758, type metadata accessor for Page.PracticeVOContextualMenu, &protocol conformance descriptor for Page);
      *v99 = sub_23DB6F1EC();
      *(v99 + 8) = v100;
      *(v99 + 16) = v98;
      *(v99 + 24) = 0;
      sub_23DB0D4A4(v99, v295, type metadata accessor for PracticeVOContextualMenuView);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF640, type metadata accessor for PracticeVOContextualMenuView, &unk_23DB7F838);
      sub_23DB0CCEC();
      v101 = v92;
      v102 = v289;
      sub_23DB6F79C();
      sub_23DA0E2B4(v102, v292, &qword_27E2FF548, &qword_23DB7EFA0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CC30();
      sub_23DB0CD40();
      v103 = v294;
      sub_23DB6F79C();
      sub_23DA17988(v102, &qword_27E2FF548, &qword_23DB7EFA0);
      sub_23DA0E2B4(v103, v307, &qword_27E2FF550, &qword_23DB7EFA8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v103, &qword_27E2FF550, &qword_23DB7EFA8);
      sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      sub_23DB6F79C();
      sub_23DA17988(v62, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v101, v317, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
      sub_23DA17988(v101, &qword_27E2FF5A8, &qword_23DB7F000);
      v82 = type metadata accessor for PracticeVOContextualMenuView;
      v83 = v99;
      return sub_23DB0D50C(v83, v82);
    }

    type metadata accessor for Page.PracticeVOOnlyCommands(0);
    v104 = swift_dynamicCastClass();
    v105 = v295;
    if (v104)
    {
      v106 = swift_getKeyPath();
      sub_23DB0C6AC(&qword_27E2FF750, type metadata accessor for Page.PracticeVOOnlyCommands, &protocol conformance descriptor for Page);

      v107 = sub_23DB6F1EC();
      v109 = v108;
      type metadata accessor for NavigationModel(0);
      sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
      v110 = sub_23DB6F39C();
      *v105 = v107;
      *(v105 + 8) = v109;
      v304 = v106;
      *(v105 + 16) = v106;
      *(v105 + 24) = 0;
      *(v105 + 32) = v110;
      *(v105 + 40) = v111;
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF640, type metadata accessor for PracticeVOContextualMenuView, &unk_23DB7F838);
      sub_23DB0CCEC();

      v112 = v289;
      sub_23DB6F79C();
      sub_23DA0E2B4(v112, v292, &qword_27E2FF548, &qword_23DB7EFA0);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CC30();
      sub_23DB0CD40();
      v113 = v294;
      sub_23DB6F79C();
      sub_23DA17988(v112, &qword_27E2FF548, &qword_23DB7EFA0);
      sub_23DA0E2B4(v113, v307, &qword_27E2FF550, &qword_23DB7EFA8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      sub_23DB6F79C();
      sub_23DA17988(v113, &qword_27E2FF550, &qword_23DB7EFA8);
      sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v114 = v316;
      sub_23DB6F79C();
      sub_23DA17988(v62, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v114, v317, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();

      v70 = v114;
      v71 = &qword_27E2FF5A8;
      v72 = &qword_23DB7F000;
      return sub_23DA17988(v70, v71, v72);
    }

    type metadata accessor for Page.PracticeVOSingleGesture(0);
    if (swift_dynamicCastClass())
    {
      sub_23DB0C6AC(&qword_27E2FF748, type metadata accessor for Page.PracticeVOSingleGesture, &protocol conformance descriptor for Page);

      v115 = sub_23DB6F1EC();
      v117 = v116;
      type metadata accessor for NavigationModel(0);
      sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
      v118 = sub_23DB6F39C();
      v119 = v283;
      *v283 = v115;
      v119[1] = v117;
      v319 = v117;
      v119[2] = v118;
      v119[3] = v120;
      swift_storeEnumTagMultiPayload();
      sub_23DB0CDFC();
      sub_23DB0C6AC(&qword_27E2FF660, type metadata accessor for PracticeUneditableTextVOView, &unk_23DB7F748);

      v121 = v285;
      sub_23DB6F79C();
      sub_23DA0E2B4(v121, v292, &qword_27E2FF530, &qword_23DB7EF88);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CC30();
      sub_23DB0CD40();
      v122 = v294;
      sub_23DB6F79C();
      sub_23DA17988(v121, &qword_27E2FF530, &qword_23DB7EF88);
      sub_23DA0E2B4(v122, v307, &qword_27E2FF550, &qword_23DB7EFA8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C8F8();
      sub_23DB0CBA4();
      v123 = v62;
      sub_23DB6F79C();
      sub_23DA17988(v122, &qword_27E2FF550, &qword_23DB7EFA8);
      sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v124 = v316;
      sub_23DB6F79C();
      sub_23DA17988(v123, &qword_27E2FF5A0, &qword_23DB7EFF8);
      sub_23DA0E2B4(v124, v91, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
    }

    else
    {
      type metadata accessor for Page.PracticeUneditableTextVO(0);
      if (swift_dynamicCastClass())
      {
        v125 = swift_getKeyPath();
        v126 = v91;

        sub_23DB6F91C();
        sub_23DB0C6AC(&qword_27E2FF740, type metadata accessor for Page.PracticeUneditableTextVO, &protocol conformance descriptor for Page);
        *v75 = sub_23DB6F1EC();
        *(v75 + 8) = v127;
        *(v75 + 16) = v125;
        *(v75 + 24) = 0;
        sub_23DB0D4A4(v75, v283, type metadata accessor for PracticeUneditableTextVOView);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CDFC();
        sub_23DB0C6AC(&qword_27E2FF660, type metadata accessor for PracticeUneditableTextVOView, &unk_23DB7F748);
        v128 = v285;
        sub_23DB6F79C();
        sub_23DA0E2B4(v128, v292, &qword_27E2FF530, &qword_23DB7EF88);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CC30();
        sub_23DB0CD40();
        v129 = v294;
        sub_23DB6F79C();
        sub_23DA17988(v128, &qword_27E2FF530, &qword_23DB7EF88);
        sub_23DA0E2B4(v129, v307, &qword_27E2FF550, &qword_23DB7EFA8);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C8F8();
        sub_23DB0CBA4();
        sub_23DB6F79C();
        sub_23DA17988(v129, &qword_27E2FF550, &qword_23DB7EFA8);
        sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C86C();
        sub_23DB0CE50();
        v130 = v316;
        sub_23DB6F79C();
        sub_23DA17988(v62, &qword_27E2FF5A0, &qword_23DB7EFF8);
        sub_23DA0E2B4(v130, v126, &qword_27E2FF5A8, &qword_23DB7F000);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C7E0();
        sub_23DB0D410();
        sub_23DB6F79C();
        sub_23DA17988(v130, &qword_27E2FF5A8, &qword_23DB7F000);
        v82 = type metadata accessor for PracticeUneditableTextVOView;
        v83 = v75;
        return sub_23DB0D50C(v83, v82);
      }

      type metadata accessor for Page.PracticeVOMagicTapButton(0);
      if (swift_dynamicCastClass())
      {
        v131 = swift_getKeyPath();
        v132 = v91;

        v74 = v267;
        sub_23DB6F91C();
        sub_23DB0C6AC(&qword_27E2FF738, type metadata accessor for Page.PracticeVOMagicTapButton, &protocol conformance descriptor for Page);
        *v74 = sub_23DB6F1EC();
        *(v74 + 8) = v133;
        *(v74 + 16) = v131;
        *(v74 + 24) = 0;
        sub_23DB0D4A4(v74, v270, type metadata accessor for PracticeVOMagicTapButtonView);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C6AC(&qword_27E2FF680, type metadata accessor for PracticeVOMagicTapButtonView, &unk_23DB7F6F8);
        sub_23DB0D024();
        v134 = v271;
        sub_23DB6F79C();
        sub_23DA0E2B4(v134, v274, &qword_27E2FF510, &qword_23DB7EF68);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CF68();
        sub_23DB0D078();
        v135 = v276;
        sub_23DB6F79C();
        sub_23DA17988(v134, &qword_27E2FF510, &qword_23DB7EF68);
        sub_23DA0E2B4(v135, v277, &qword_27E2FF518, &qword_23DB7EF70);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CEDC();
        sub_23DB0D164();
        v136 = v280;
        sub_23DB6F79C();
        sub_23DA17988(v135, &qword_27E2FF518, &qword_23DB7EF70);
        sub_23DA0E2B4(v136, v309, &qword_27E2FF520, &qword_23DB7EF78);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C86C();
        sub_23DB0CE50();
        v137 = v316;
        sub_23DB6F79C();
        sub_23DA17988(v136, &qword_27E2FF520, &qword_23DB7EF78);
        sub_23DA0E2B4(v137, v132, &qword_27E2FF5A8, &qword_23DB7F000);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C7E0();
        sub_23DB0D410();
        sub_23DB6F79C();
        sub_23DA17988(v137, &qword_27E2FF5A8, &qword_23DB7F000);
        v89 = type metadata accessor for PracticeVOMagicTapButtonView;
        goto LABEL_10;
      }

      type metadata accessor for Page.PracticeVOAnyGesture(0);
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for Page.PracticeVOCustomAction(0);
        if (swift_dynamicCastClass())
        {
          v147 = swift_getKeyPath();

          v48 = v261;
          sub_23DB6F91C();
          sub_23DB0C6AC(&qword_27E2FF728, type metadata accessor for Page.PracticeVOCustomAction, &protocol conformance descriptor for Page);
          *v48 = sub_23DB6F1EC();
          *(v48 + 1) = v148;
          *(v48 + 2) = v147;
          v48[24] = 0;
          v320 = 0;
          sub_23DB7037C();
          v149 = *(&v324 + 1);
          *(v48 + 4) = v324;
          *(v48 + 5) = v149;
          sub_23DB0D4A4(v48, v264, type metadata accessor for PracticeVOCustomActionView);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C6AC(&qword_27E2FF698, type metadata accessor for PracticeVOCustomActionView, &unk_23DB7F658);
          sub_23DB0C6AC(&qword_27E2FF6A0, type metadata accessor for PracticeVOTypingView, &unk_23DB7F608);
          v150 = v266;
          sub_23DB6F79C();
          sub_23DA0E2B4(v150, v274, &qword_27E2FF4F0, &qword_23DB7EF48);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CF68();
          sub_23DB0D078();
          v151 = v276;
          sub_23DB6F79C();
          sub_23DA17988(v150, &qword_27E2FF4F0, &qword_23DB7EF48);
          sub_23DA0E2B4(v151, v277, &qword_27E2FF518, &qword_23DB7EF70);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CEDC();
          sub_23DB0D164();
          v152 = v280;
          sub_23DB6F79C();
          sub_23DA17988(v151, &qword_27E2FF518, &qword_23DB7EF70);
          sub_23DA0E2B4(v152, v309, &qword_27E2FF520, &qword_23DB7EF78);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C86C();
          sub_23DB0CE50();
          v153 = v316;
          sub_23DB6F79C();
          sub_23DA17988(v152, &qword_27E2FF520, &qword_23DB7EF78);
          sub_23DA0E2B4(v153, v317, &qword_27E2FF5A8, &qword_23DB7F000);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C7E0();
          sub_23DB0D410();
          sub_23DB6F79C();
          sub_23DA17988(v153, &qword_27E2FF5A8, &qword_23DB7F000);
          v81 = type metadata accessor for PracticeVOCustomActionView;
          goto LABEL_7;
        }

        type metadata accessor for Page.PracticeVOTyping(0);
        if (swift_dynamicCastClass())
        {
          v154 = swift_getKeyPath();

          v48 = v260;
          sub_23DB6F91C();
          sub_23DB0C6AC(&qword_27E2FF720, type metadata accessor for Page.PracticeVOTyping, &protocol conformance descriptor for Page);
          *v48 = sub_23DB6F1EC();
          *(v48 + 1) = v155;
          *(v48 + 2) = v154;
          v48[24] = 0;
          sub_23DB0D4A4(v48, v264, type metadata accessor for PracticeVOTypingView);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C6AC(&qword_27E2FF698, type metadata accessor for PracticeVOCustomActionView, &unk_23DB7F658);
          sub_23DB0C6AC(&qword_27E2FF6A0, type metadata accessor for PracticeVOTypingView, &unk_23DB7F608);
          v156 = v266;
          sub_23DB6F79C();
          sub_23DA0E2B4(v156, v274, &qword_27E2FF4F0, &qword_23DB7EF48);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CF68();
          sub_23DB0D078();
          v157 = v276;
          sub_23DB6F79C();
          sub_23DA17988(v156, &qword_27E2FF4F0, &qword_23DB7EF48);
          sub_23DA0E2B4(v157, v277, &qword_27E2FF518, &qword_23DB7EF70);
          swift_storeEnumTagMultiPayload();
          sub_23DB0CEDC();
          sub_23DB0D164();
          v158 = v280;
          sub_23DB6F79C();
          sub_23DA17988(v157, &qword_27E2FF518, &qword_23DB7EF70);
          sub_23DA0E2B4(v158, v309, &qword_27E2FF520, &qword_23DB7EF78);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C86C();
          sub_23DB0CE50();
          v159 = v316;
          sub_23DB6F79C();
          sub_23DA17988(v158, &qword_27E2FF520, &qword_23DB7EF78);
          sub_23DA0E2B4(v159, v317, &qword_27E2FF5A8, &qword_23DB7F000);
          swift_storeEnumTagMultiPayload();
          sub_23DB0C7E0();
          sub_23DB0D410();
          sub_23DB6F79C();
          sub_23DA17988(v159, &qword_27E2FF5A8, &qword_23DB7F000);
          v81 = type metadata accessor for PracticeVOTypingView;
          goto LABEL_7;
        }

        type metadata accessor for Page.PracticeVOTypingSettings(0);
        if (swift_dynamicCastClass())
        {
          v160 = swift_getKeyPath();
          sub_23DB0C6AC(&qword_27E2FF718, type metadata accessor for Page.PracticeVOTypingSettings, &protocol conformance descriptor for Page);

          v320 = sub_23DB6F1EC();
          v321 = v161;
          v322 = v160;
          v323 = 0;
        }

        else
        {
          type metadata accessor for Page.PracticeVOExplanation(0);
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for Page.PracticeVOScroll(0);
            if (swift_dynamicCastClass())
            {
              v171 = swift_getKeyPath();
              v172 = v255;

              v173 = v254;
              sub_23DB6F91C();
              sub_23DB6F91C();
              sub_23DB0C6AC(&qword_27E2FF708, type metadata accessor for Page.PracticeVOScroll, &protocol conformance descriptor for Page);
              *v173 = sub_23DB6F1EC();
              *(v173 + 1) = v174;
              *(v173 + 2) = v171;
              v173[24] = 0;
              v175 = *(v172 + 32);
              if (qword_27E2FBB68 != -1)
              {
                swift_once();
              }

              *&v254[v175] = qword_27E30A640;
              v176 = *(v255 + 36);
              v177 = qword_27E2FBB70;

              if (v177 != -1)
              {
                swift_once();
              }

              v178 = v254;
              *&v254[v176] = qword_27E30A648;
              v179 = v255;
              *(v178 + *(v255 + 40)) = 0x4070C00000000000;
              *(v178 + *(v179 + 44)) = 0x4059000000000000;
              *(v178 + *(v179 + 48)) = 0x4051800000000000;
              sub_23DB0D4A4(v178, v251, type metadata accessor for PracticeVOScrollView);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C6AC(&qword_27E2FF6D8, type metadata accessor for PracticeVOScrollView, &unk_23DB7F518);
              sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView, &unk_23DB7FAB8);

              v180 = v252;
              sub_23DB6F79C();
              sub_23DA0E2B4(v180, v257, &qword_27E2FF4D0, &qword_23DB7EF28);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF6B8, &qword_23DB7F008);
              sub_23DB0D1F0();
              sub_23DB0D324();
              v181 = v259;
              sub_23DB6F79C();
              sub_23DA17988(v180, &qword_27E2FF4D0, &qword_23DB7EF28);
              sub_23DA0E2B4(v181, v277, &qword_27E2FF4E0, &qword_23DB7EF38);
              swift_storeEnumTagMultiPayload();
              sub_23DB0CEDC();
              sub_23DB0D164();
              v182 = v280;
              sub_23DB6F79C();
              sub_23DA17988(v181, &qword_27E2FF4E0, &qword_23DB7EF38);
              sub_23DA0E2B4(v182, v309, &qword_27E2FF520, &qword_23DB7EF78);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C86C();
              sub_23DB0CE50();
              v183 = v316;
              sub_23DB6F79C();
              sub_23DA17988(v182, &qword_27E2FF520, &qword_23DB7EF78);
              sub_23DA0E2B4(v183, v317, &qword_27E2FF5A8, &qword_23DB7F000);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C7E0();
              sub_23DB0D410();
              sub_23DB6F79C();
              sub_23DA17988(v183, &qword_27E2FF5A8, &qword_23DB7F000);
              v184 = type metadata accessor for PracticeVOScrollView;
            }

            else
            {
              type metadata accessor for Page.PracticeVOGrid(0);
              if (!swift_dynamicCastClass())
              {
                type metadata accessor for Page.PracticeVOSingleButton(0);
                if (swift_dynamicCastClass())
                {

                  sub_23DB6F91C();
                  v196 = swift_getKeyPath();
                  sub_23DB0C6AC(&qword_27E2FF6F8, type metadata accessor for Page.PracticeVOSingleButton, &protocol conformance descriptor for Page);
                  v197 = sub_23DB6F1EC();
                  v198 = v247;
                  *v247 = v197;
                  *(v198 + 1) = v199;
                  v200 = [objc_opt_self() mainScreen];
                  [v200 bounds];
                  v202 = v201;

                  if (v202 >= 850.0)
                  {
                    v209 = [objc_opt_self() currentDevice];
                    v210 = [v209 userInterfaceIdiom];

                    v203 = INFINITY;
                    if (!v210)
                    {
                      v203 = 280.0;
                    }
                  }

                  else
                  {
                    v203 = 280.0;
                  }

                  v211 = v247;
                  v247[2] = v203;
                  v320 = 0x3FF0000000000000;
                  sub_23DB7037C();
                  v212 = *(&v324 + 1);
                  *(v211 + 24) = v324;
                  *(v211 + 32) = v212;
                  v213 = v233;
                  sub_23DA17A54(v248, v211 + *(v233 + 28), &qword_27E2FD4F8, &unk_23DB7D3A0);
                  v214 = v211 + *(v213 + 32);
                  *v214 = v196;
                  *(v214 + 8) = 0;
                  v48 = v236;
                  sub_23DB25CF0(v211, v236, type metadata accessor for PracticeVOSingleButtonView);
                  sub_23DB0D4A4(v48, v235, type metadata accessor for PracticeVOSingleButtonView);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView, &unk_23DB7FAB8);
                  sub_23DB0C6AC(&qword_27E2FF5C8, type metadata accessor for PracticeVOSingleButtonView, &unk_23DB7FA68);
                  v215 = v237;
                  sub_23DB6F79C();
                  sub_23DA0E2B4(v215, v238, &qword_27E2FF4B0, &qword_23DB7EF00);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C5C0();
                  sub_23DB0C6F4();
                  v216 = v241;
                  sub_23DB6F79C();
                  sub_23DA17988(v215, &qword_27E2FF4B0, &qword_23DB7EF00);
                  sub_23DA0E2B4(v216, v244, &qword_27E2FF4B8, &qword_23DB7EF08);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C534();
                  v217 = v246;
                  sub_23DB6F79C();
                  sub_23DA17988(v216, &qword_27E2FF4B8, &qword_23DB7EF08);
                  sub_23DA0E2B4(v217, v317, &qword_27E2FF4C0, &unk_23DB7EF10);
                  swift_storeEnumTagMultiPayload();
                  sub_23DB0C7E0();
                  sub_23DB0D410();
                  sub_23DB6F79C();
                  sub_23DA17988(v217, &qword_27E2FF4C0, &unk_23DB7EF10);
                  v81 = type metadata accessor for PracticeVOSingleButtonView;
                }

                else
                {
                  type metadata accessor for Page.PracticeVOSlider(0);
                  if (swift_dynamicCastClass())
                  {
                    v204 = swift_getKeyPath();

                    v48 = v226;
                    sub_23DB6F91C();
                    sub_23DB0C6AC(&qword_27E2FF6F0, type metadata accessor for Page.PracticeVOSlider, &protocol conformance descriptor for Page);
                    *v48 = sub_23DB6F1EC();
                    *(v48 + 1) = v205;
                    *(v48 + 2) = v204;
                    v48[24] = 0;
                    sub_23DB0D4A4(v48, v230, type metadata accessor for PracticeVOSliderView);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C6AC(&qword_27E2FF5D8, type metadata accessor for PracticeVOSliderView, &unk_23DB7FA18);
                    sub_23DB0C6AC(&qword_27E2FF5E0, type metadata accessor for PracticeVOTapToSpeakView, &unk_23DB7F9C8);
                    v206 = v232;
                    sub_23DB6F79C();
                    sub_23DA0E2B4(v206, v238, &qword_27E2FF490, &qword_23DB7EEE0);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C5C0();
                    sub_23DB0C6F4();
                    v207 = v241;
                    sub_23DB6F79C();
                    sub_23DA17988(v206, &qword_27E2FF490, &qword_23DB7EEE0);
                    sub_23DA0E2B4(v207, v244, &qword_27E2FF4B8, &qword_23DB7EF08);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C534();
                    v208 = v246;
                    sub_23DB6F79C();
                    sub_23DA17988(v207, &qword_27E2FF4B8, &qword_23DB7EF08);
                    sub_23DA0E2B4(v208, v317, &qword_27E2FF4C0, &unk_23DB7EF10);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C7E0();
                    sub_23DB0D410();
                    sub_23DB6F79C();
                    sub_23DA17988(v208, &qword_27E2FF4C0, &unk_23DB7EF10);
                    v81 = type metadata accessor for PracticeVOSliderView;
                  }

                  else
                  {
                    type metadata accessor for Page.PracticeVOTapToSpeak(0);
                    if (!swift_dynamicCastClass())
                    {
                      swift_storeEnumTagMultiPayload();
                      sub_23DB0C534();
                      v223 = v246;
                      sub_23DB6F79C();
                      sub_23DA0E2B4(v223, v317, &qword_27E2FF4C0, &unk_23DB7EF10);
                      swift_storeEnumTagMultiPayload();
                      sub_23DB0C7E0();
                      sub_23DB0D410();
                      sub_23DB6F79C();
                      v70 = v223;
                      v71 = &qword_27E2FF4C0;
                      v72 = &unk_23DB7EF10;
                      return sub_23DA17988(v70, v71, v72);
                    }

                    v218 = swift_getKeyPath();

                    v48 = v228;
                    sub_23DB6F91C();
                    sub_23DB6F91C();
                    sub_23DB0C6AC(&qword_27E2FF6E8, type metadata accessor for Page.PracticeVOTapToSpeak, &protocol conformance descriptor for Page);
                    *v48 = sub_23DB6F1EC();
                    *(v48 + 1) = v219;
                    *(v48 + 2) = v218;
                    v48[24] = 0;
                    sub_23DB0D4A4(v48, v230, type metadata accessor for PracticeVOTapToSpeakView);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C6AC(&qword_27E2FF5D8, type metadata accessor for PracticeVOSliderView, &unk_23DB7FA18);
                    sub_23DB0C6AC(&qword_27E2FF5E0, type metadata accessor for PracticeVOTapToSpeakView, &unk_23DB7F9C8);
                    v220 = v232;
                    sub_23DB6F79C();
                    sub_23DA0E2B4(v220, v238, &qword_27E2FF490, &qword_23DB7EEE0);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C5C0();
                    sub_23DB0C6F4();
                    v221 = v241;
                    sub_23DB6F79C();
                    sub_23DA17988(v220, &qword_27E2FF490, &qword_23DB7EEE0);
                    sub_23DA0E2B4(v221, v244, &qword_27E2FF4B8, &qword_23DB7EF08);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C534();
                    v222 = v246;
                    sub_23DB6F79C();
                    sub_23DA17988(v221, &qword_27E2FF4B8, &qword_23DB7EF08);
                    sub_23DA0E2B4(v222, v317, &qword_27E2FF4C0, &unk_23DB7EF10);
                    swift_storeEnumTagMultiPayload();
                    sub_23DB0C7E0();
                    sub_23DB0D410();
                    sub_23DB6F79C();
                    sub_23DA17988(v222, &qword_27E2FF4C0, &unk_23DB7EF10);
                    v81 = type metadata accessor for PracticeVOTapToSpeakView;
                  }
                }

                goto LABEL_7;
              }

              v185 = swift_getKeyPath();
              v186 = v253;

              v187 = v249;
              sub_23DB6F91C();
              sub_23DB0C6AC(&qword_27E2FF700, type metadata accessor for Page.PracticeVOGrid, &protocol conformance descriptor for Page);
              *v187 = sub_23DB6F1EC();
              *(v187 + 1) = v188;
              *(v187 + 2) = v185;
              v187[24] = 0;
              v189 = *(v186 + 28);
              if (qword_27E2FBB68 != -1)
              {
                swift_once();
              }

              *&v249[v189] = qword_27E30A640;
              v190 = *(v253 + 32);
              v191 = qword_27E2FBB70;

              if (v191 != -1)
              {
                swift_once();
              }

              v178 = v249;
              *&v249[v190] = qword_27E30A648;
              sub_23DB0D4A4(v178, v251, type metadata accessor for PracticeVOGridView);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C6AC(&qword_27E2FF6D8, type metadata accessor for PracticeVOScrollView, &unk_23DB7F518);
              sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView, &unk_23DB7FAB8);

              v192 = v252;
              sub_23DB6F79C();
              sub_23DA0E2B4(v192, v257, &qword_27E2FF4D0, &qword_23DB7EF28);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF6B8, &qword_23DB7F008);
              sub_23DB0D1F0();
              sub_23DB0D324();
              v193 = v259;
              sub_23DB6F79C();
              sub_23DA17988(v192, &qword_27E2FF4D0, &qword_23DB7EF28);
              sub_23DA0E2B4(v193, v277, &qword_27E2FF4E0, &qword_23DB7EF38);
              swift_storeEnumTagMultiPayload();
              sub_23DB0CEDC();
              sub_23DB0D164();
              v194 = v280;
              sub_23DB6F79C();
              sub_23DA17988(v193, &qword_27E2FF4E0, &qword_23DB7EF38);
              sub_23DA0E2B4(v194, v309, &qword_27E2FF520, &qword_23DB7EF78);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C86C();
              sub_23DB0CE50();
              v195 = v316;
              sub_23DB6F79C();
              sub_23DA17988(v194, &qword_27E2FF520, &qword_23DB7EF78);
              sub_23DA0E2B4(v195, v317, &qword_27E2FF5A8, &qword_23DB7F000);
              swift_storeEnumTagMultiPayload();
              sub_23DB0C7E0();
              sub_23DB0D410();
              sub_23DB6F79C();
              sub_23DA17988(v195, &qword_27E2FF5A8, &qword_23DB7F000);
              v184 = type metadata accessor for PracticeVOGridView;
            }

            v82 = v184;
            v83 = v178;
            return sub_23DB0D50C(v83, v82);
          }

          v162 = swift_getKeyPath();
          sub_23DB0C6AC(&qword_27E2FF710, type metadata accessor for Page.PracticeVOExplanation, &protocol conformance descriptor for Page);

          v320 = sub_23DB6F1EC();
          v321 = v163;
          v322 = v162;
          v323 = 256;
        }

        sub_23DB0D27C();
        sub_23DB0D2D0();

        sub_23DB6F79C();
        v164 = v325;
        v165 = v326;
        v166 = v327;
        v167 = v257;
        *v257 = v324;
        *(v167 + 2) = v164;
        *(v167 + 24) = v165;
        *(v167 + 25) = v166;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF6B8, &qword_23DB7F008);
        sub_23DB0D1F0();
        sub_23DB0D324();
        v168 = v259;
        sub_23DB6F79C();
        sub_23DA0E2B4(v168, v277, &qword_27E2FF4E0, &qword_23DB7EF38);
        swift_storeEnumTagMultiPayload();
        sub_23DB0CEDC();
        sub_23DB0D164();
        v169 = v280;
        sub_23DB6F79C();
        sub_23DA17988(v168, &qword_27E2FF4E0, &qword_23DB7EF38);
        sub_23DA0E2B4(v169, v309, &qword_27E2FF520, &qword_23DB7EF78);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C86C();
        sub_23DB0CE50();
        v170 = v316;
        sub_23DB6F79C();
        sub_23DA17988(v169, &qword_27E2FF520, &qword_23DB7EF78);
        sub_23DA0E2B4(v170, v317, &qword_27E2FF5A8, &qword_23DB7F000);
        swift_storeEnumTagMultiPayload();
        sub_23DB0C7E0();
        sub_23DB0D410();
        sub_23DB6F79C();

        v70 = v170;
LABEL_21:
        v71 = &qword_27E2FF5A8;
        v72 = &qword_23DB7F000;
        return sub_23DA17988(v70, v71, v72);
      }

      sub_23DB0C6AC(&qword_27E2FF730, type metadata accessor for Page.PracticeVOAnyGesture, &protocol conformance descriptor for Page);

      v138 = sub_23DB6F1EC();
      v140 = v139;
      type metadata accessor for NavigationModel(0);
      sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
      v141 = sub_23DB6F39C();
      v142 = v270;
      *v270 = v138;
      v142[1] = v140;
      v142[2] = v141;
      v142[3] = v143;
      swift_storeEnumTagMultiPayload();
      sub_23DB0C6AC(&qword_27E2FF680, type metadata accessor for PracticeVOMagicTapButtonView, &unk_23DB7F6F8);
      sub_23DB0D024();

      v144 = v271;
      sub_23DB6F79C();
      sub_23DA0E2B4(v144, v274, &qword_27E2FF510, &qword_23DB7EF68);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CF68();
      sub_23DB0D078();
      v145 = v276;
      sub_23DB6F79C();
      sub_23DA17988(v144, &qword_27E2FF510, &qword_23DB7EF68);
      sub_23DA0E2B4(v145, v277, &qword_27E2FF518, &qword_23DB7EF70);
      swift_storeEnumTagMultiPayload();
      sub_23DB0CEDC();
      sub_23DB0D164();
      v146 = v280;
      sub_23DB6F79C();
      sub_23DA17988(v145, &qword_27E2FF518, &qword_23DB7EF70);
      sub_23DA0E2B4(v146, v309, &qword_27E2FF520, &qword_23DB7EF78);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C86C();
      sub_23DB0CE50();
      v124 = v316;
      sub_23DB6F79C();
      sub_23DA17988(v146, &qword_27E2FF520, &qword_23DB7EF78);
      sub_23DA0E2B4(v124, v91, &qword_27E2FF5A8, &qword_23DB7F000);
      swift_storeEnumTagMultiPayload();
      sub_23DB0C7E0();
      sub_23DB0D410();
      sub_23DB6F79C();
    }

    v70 = v124;
    goto LABEL_21;
  }

  v76 = swift_getKeyPath();

  sub_23DB6F91C();
  sub_23DB0C6AC(&qword_27E2FF770, type metadata accessor for Page.PracticeVOWithText, &protocol conformance descriptor for Page);
  *v48 = sub_23DB6F1EC();
  *(v48 + 1) = v77;
  *(v48 + 2) = v76;
  v48[24] = 0;
  sub_23DB0D4A4(v48, v56, type metadata accessor for PracticeVoiceOverHeadersView);
  swift_storeEnumTagMultiPayload();
  sub_23DB0CA40();
  sub_23DB0C6AC(&qword_27E2FF610, type metadata accessor for PracticeVoiceOverHeadersView, &unk_23DB7F928);
  v78 = v224;
  sub_23DB6F79C();
  sub_23DA0E2B4(v78, v53, &qword_27E2FF590, &qword_23DB7EFE8);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C984();
  sub_23DB0CA94();
  v79 = v225;
  sub_23DB6F79C();
  sub_23DA17988(v78, &qword_27E2FF590, &qword_23DB7EFE8);
  sub_23DA0E2B4(v79, v307, &qword_27E2FF598, &qword_23DB7EFF0);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C8F8();
  sub_23DB0CBA4();
  sub_23DB6F79C();
  sub_23DA17988(v79, &qword_27E2FF598, &qword_23DB7EFF0);
  sub_23DA0E2B4(v62, v309, &qword_27E2FF5A0, &qword_23DB7EFF8);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C86C();
  sub_23DB0CE50();
  v80 = v316;
  sub_23DB6F79C();
  sub_23DA17988(v62, &qword_27E2FF5A0, &qword_23DB7EFF8);
  sub_23DA0E2B4(v80, v317, &qword_27E2FF5A8, &qword_23DB7F000);
  swift_storeEnumTagMultiPayload();
  sub_23DB0C7E0();
  sub_23DB0D410();
  sub_23DB6F79C();
  sub_23DA17988(v80, &qword_27E2FF5A8, &qword_23DB7F000);
  v81 = type metadata accessor for PracticeVoiceOverHeadersView;
LABEL_7:
  v82 = v81;
  v83 = v48;
  return sub_23DB0D50C(v83, v82);
}

unint64_t sub_23DB0C534()
{
  result = qword_27E2FF5B0;
  if (!qword_27E2FF5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF4B8, &qword_23DB7EF08);
    sub_23DB0C5C0();
    sub_23DB0C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF5B0);
  }

  return result;
}

unint64_t sub_23DB0C5C0()
{
  result = qword_27E2FF5B8;
  if (!qword_27E2FF5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF4B0, &qword_23DB7EF00);
    sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView, &unk_23DB7FAB8);
    sub_23DB0C6AC(&qword_27E2FF5C8, type metadata accessor for PracticeVOSingleButtonView, &unk_23DB7FA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF5B8);
  }

  return result;
}

uint64_t sub_23DB0C6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DB0C6F4()
{
  result = qword_27E2FF5D0;
  if (!qword_27E2FF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF490, &qword_23DB7EEE0);
    sub_23DB0C6AC(&qword_27E2FF5D8, type metadata accessor for PracticeVOSliderView, &unk_23DB7FA18);
    sub_23DB0C6AC(&qword_27E2FF5E0, type metadata accessor for PracticeVOTapToSpeakView, &unk_23DB7F9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF5D0);
  }

  return result;
}

unint64_t sub_23DB0C7E0()
{
  result = qword_27E2FF5E8;
  if (!qword_27E2FF5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF5A8, &qword_23DB7F000);
    sub_23DB0C86C();
    sub_23DB0CE50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF5E8);
  }

  return result;
}

unint64_t sub_23DB0C86C()
{
  result = qword_27E2FF5F0;
  if (!qword_27E2FF5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF5A0, &qword_23DB7EFF8);
    sub_23DB0C8F8();
    sub_23DB0CBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF5F0);
  }

  return result;
}

unint64_t sub_23DB0C8F8()
{
  result = qword_27E2FF5F8;
  if (!qword_27E2FF5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF598, &qword_23DB7EFF0);
    sub_23DB0C984();
    sub_23DB0CA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF5F8);
  }

  return result;
}

unint64_t sub_23DB0C984()
{
  result = qword_27E2FF600;
  if (!qword_27E2FF600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF590, &qword_23DB7EFE8);
    sub_23DB0CA40();
    sub_23DB0C6AC(&qword_27E2FF610, type metadata accessor for PracticeVoiceOverHeadersView, &unk_23DB7F928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF600);
  }

  return result;
}

unint64_t sub_23DB0CA40()
{
  result = qword_27E2FF608;
  if (!qword_27E2FF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF608);
  }

  return result;
}

unint64_t sub_23DB0CA94()
{
  result = qword_27E2FF618;
  if (!qword_27E2FF618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF560, &qword_23DB7EFB8);
    sub_23DB0C6AC(&qword_27E2FF620, type metadata accessor for PracticeVOTablesView, &unk_23DB7F8D8);
    sub_23DB0CB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF618);
  }

  return result;
}

unint64_t sub_23DB0CB50()
{
  result = qword_27E2FF628;
  if (!qword_27E2FF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF628);
  }

  return result;
}

unint64_t sub_23DB0CBA4()
{
  result = qword_27E2FF630;
  if (!qword_27E2FF630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF550, &qword_23DB7EFA8);
    sub_23DB0CC30();
    sub_23DB0CD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF630);
  }

  return result;
}

unint64_t sub_23DB0CC30()
{
  result = qword_27E2FF638;
  if (!qword_27E2FF638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF548, &qword_23DB7EFA0);
    sub_23DB0C6AC(&qword_27E2FF640, type metadata accessor for PracticeVOContextualMenuView, &unk_23DB7F838);
    sub_23DB0CCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF638);
  }

  return result;
}

unint64_t sub_23DB0CCEC()
{
  result = qword_27E2FF648;
  if (!qword_27E2FF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF648);
  }

  return result;
}

unint64_t sub_23DB0CD40()
{
  result = qword_27E2FF650;
  if (!qword_27E2FF650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF530, &qword_23DB7EF88);
    sub_23DB0CDFC();
    sub_23DB0C6AC(&qword_27E2FF660, type metadata accessor for PracticeUneditableTextVOView, &unk_23DB7F748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF650);
  }

  return result;
}

unint64_t sub_23DB0CDFC()
{
  result = qword_27E2FF658;
  if (!qword_27E2FF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF658);
  }

  return result;
}

unint64_t sub_23DB0CE50()
{
  result = qword_27E2FF668;
  if (!qword_27E2FF668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF520, &qword_23DB7EF78);
    sub_23DB0CEDC();
    sub_23DB0D164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF668);
  }

  return result;
}

unint64_t sub_23DB0CEDC()
{
  result = qword_27E2FF670;
  if (!qword_27E2FF670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF518, &qword_23DB7EF70);
    sub_23DB0CF68();
    sub_23DB0D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF670);
  }

  return result;
}

unint64_t sub_23DB0CF68()
{
  result = qword_27E2FF678;
  if (!qword_27E2FF678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF510, &qword_23DB7EF68);
    sub_23DB0C6AC(&qword_27E2FF680, type metadata accessor for PracticeVOMagicTapButtonView, &unk_23DB7F6F8);
    sub_23DB0D024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF678);
  }

  return result;
}

unint64_t sub_23DB0D024()
{
  result = qword_27E2FF688;
  if (!qword_27E2FF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF688);
  }

  return result;
}

unint64_t sub_23DB0D078()
{
  result = qword_27E2FF690;
  if (!qword_27E2FF690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF4F0, &qword_23DB7EF48);
    sub_23DB0C6AC(&qword_27E2FF698, type metadata accessor for PracticeVOCustomActionView, &unk_23DB7F658);
    sub_23DB0C6AC(&qword_27E2FF6A0, type metadata accessor for PracticeVOTypingView, &unk_23DB7F608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF690);
  }

  return result;
}

unint64_t sub_23DB0D164()
{
  result = qword_27E2FF6A8;
  if (!qword_27E2FF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF4E0, &qword_23DB7EF38);
    sub_23DB0D1F0();
    sub_23DB0D324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF6A8);
  }

  return result;
}

unint64_t sub_23DB0D1F0()
{
  result = qword_27E2FF6B0;
  if (!qword_27E2FF6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF6B8, &qword_23DB7F008);
    sub_23DB0D27C();
    sub_23DB0D2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF6B0);
  }

  return result;
}

unint64_t sub_23DB0D27C()
{
  result = qword_27E2FF6C0;
  if (!qword_27E2FF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF6C0);
  }

  return result;
}

unint64_t sub_23DB0D2D0()
{
  result = qword_27E2FF6C8;
  if (!qword_27E2FF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF6C8);
  }

  return result;
}

unint64_t sub_23DB0D324()
{
  result = qword_27E2FF6D0;
  if (!qword_27E2FF6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF4D0, &qword_23DB7EF28);
    sub_23DB0C6AC(&qword_27E2FF6D8, type metadata accessor for PracticeVOScrollView, &unk_23DB7F518);
    sub_23DB0C6AC(&qword_27E2FF5C0, type metadata accessor for PracticeVOGridView, &unk_23DB7FAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF6D0);
  }

  return result;
}

unint64_t sub_23DB0D410()
{
  result = qword_27E2FF6E0;
  if (!qword_27E2FF6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF4C0, &unk_23DB7EF10);
    sub_23DB0C534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF6E0);
  }

  return result;
}

uint64_t sub_23DB0D4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB0D50C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DB0D56C@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v51 = type metadata accessor for PracticeVOTablesView(0);
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = v2;
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23DB6F32C();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC38, &qword_23DB80318);
  MEMORY[0x28223BE20](v49);
  v8 = &v48 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC40, &qword_23DB80320);
  MEMORY[0x28223BE20](v52);
  v50 = &v48 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC48, &qword_23DB80328);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v48 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v68);

  v59 = v1;
  v61 = v1;
  type metadata accessor for ThreeColumnTableInfo(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC50, &unk_23DB80378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC810, &unk_23DB7A670);
  sub_23DA17B80(&qword_27E2FFC58, &qword_27E2FFC50, &unk_23DB80378, MEMORY[0x277CDE268]);
  sub_23DA17B80(&qword_27E2FFC60, &qword_27E2FC810, &unk_23DB7A670, MEMORY[0x277D83980]);
  sub_23DB703BC();
  v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC68, &qword_23DB80388) + 36)];
  v12 = *(v4 + 28);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_23DB6F63C();
  v15 = *(*(v14 - 8) + 104);
  v15(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #8.0 }

  v48 = _Q0;
  *v11 = _Q0;
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v15(&v6[*(v4 + 28)], v13, v14);
  *v6 = v48;
  if (qword_27E2FBB70 != -1)
  {
    swift_once();
  }

  v21 = qword_27E30A648;
  sub_23DB6F07C();
  v22 = &v8[*(v49 + 36)];
  sub_23DB0D4A4(v6, v22, MEMORY[0x277CDFC08]);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD8E0, &unk_23DB80390) + 36);
  v24 = v66;
  *v23 = v65;
  *(v23 + 16) = v24;
  *(v23 + 32) = v67;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC70, &unk_23DB83F80);
  *(v22 + *(v25 + 52)) = v21;
  *(v22 + *(v25 + 56)) = 256;

  v26 = sub_23DB7062C();
  v28 = v27;
  sub_23DB0D50C(v6, MEMORY[0x277CDFC08]);
  v29 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC78, &unk_23DB803A0) + 36));
  *v29 = v26;
  v29[1] = v28;
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC80, &unk_23DB83F90) + 36)) = 0x3FD999999999999ALL;
  v30 = sub_23DB7062C();
  v32 = v31;
  v33 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC88, &qword_23DB803B0) + 36));
  *v33 = v30;
  v33[1] = v32;
  sub_23DB7062C();
  sub_23DB6F34C();
  v34 = v50;
  sub_23DA17A54(v8, v50, &qword_27E2FFC38, &qword_23DB80318);
  v35 = v52;
  v36 = (v34 + *(v52 + 36));
  v37 = v68[5];
  v36[4] = v68[4];
  v36[5] = v37;
  v36[6] = v68[6];
  v38 = v68[1];
  *v36 = v68[0];
  v36[1] = v38;
  v39 = v68[3];
  v36[2] = v68[2];
  v36[3] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v40 = v59;
  sub_23DB6F90C();
  v41 = sub_23DB2770C();
  v42 = v53;
  sub_23DB6FF9C();

  sub_23DA17988(v34, &qword_27E2FFC40, &qword_23DB80320);
  sub_23DB6F8EC();
  v62 = v63;
  v43 = v58;
  sub_23DB0D4A4(v40, v58, type metadata accessor for PracticeVOTablesView);
  v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v45 = swift_allocObject();
  sub_23DB25CF0(v43, v45 + v44, type metadata accessor for PracticeVOTablesView);
  v63 = v35;
  v64 = v41;
  swift_getOpaqueTypeConformance2();
  v46 = v55;
  sub_23DB700BC();

  return (*(v54 + 8))(v42, v46);
}

uint64_t sub_23DB0DDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PracticeVOTablesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFCC0, &qword_23DB803C0);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v11 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v11;
  sub_23DB6EF0C(&v40);

  if (!v40[2])
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = v40[4];
  v13 = v40[5];

  v40 = v14;
  v41 = v13;
  v37 = a1;
  sub_23DB0D4A4(a1, v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeVOTablesView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v30[1] = *(v5 + 80);
  v30[2] = v6;
  v16 = swift_allocObject();
  sub_23DB25CF0(v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PracticeVOTablesView);
  v17 = type metadata accessor for ThreeColumnTableInfo(0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFCC8, &qword_23DB80410);
  v19 = v8;
  v20 = a2;
  v21 = sub_23DB0C6AC(&qword_27E2FFCD0, type metadata accessor for ThreeColumnTableInfo, &unk_23DB751B0);
  v22 = sub_23DB27998();
  v32 = sub_23DA16E70();
  v35 = v18;
  v36 = v17;
  v33 = v22;
  v34 = v21;
  sub_23DB6F09C();
  sub_23DB6F08C();
  v23 = *(v39 + 8);
  v39 += 8;
  v31 = v23;
  v23(v10, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v40);

  if (v40[2] < 2uLL)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v25 = v40[6];
  v24 = v40[7];

  v40 = v25;
  v41 = v24;
  sub_23DB0D4A4(v37, v7, type metadata accessor for PracticeVOTablesView);
  v26 = swift_allocObject();
  sub_23DB25CF0(v7, v26 + v15, type metadata accessor for PracticeVOTablesView);
  sub_23DB6F09C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD00, &qword_23DB80430);
  v30[0] = v20;
  sub_23DB6F08C();
  v31(v10, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v40);

  if (v40[2] >= 3uLL)
  {
    v27 = v40[8];
    v28 = v40[9];

    v40 = v27;
    v41 = v28;
    sub_23DB0D4A4(v37, v7, type metadata accessor for PracticeVOTablesView);
    v29 = swift_allocObject();
    sub_23DB25CF0(v7, v29 + v15, type metadata accessor for PracticeVOTablesView);
    sub_23DB6F09C();
    sub_23DB6F08C();
    return (v31)(v10, v19);
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_23DB0E3DC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *a1;
  sub_23DA16E70();

  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_23DB7063C();
  sub_23DB6F10C();
  v10 = v7 & 1;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  result = *&v16;
  *(a2 + 64) = v16;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  return result;
}

double sub_23DB0E4D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(a1 + 16);
  sub_23DA16E70();

  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_23DB7063C();
  sub_23DB6F10C();
  v10 = v7 & 1;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  result = *&v16;
  *(a2 + 64) = v16;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  return result;
}

double sub_23DB0E5CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(a1 + 32);
  sub_23DA16E70();

  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_23DB7063C();
  sub_23DB6F10C();
  v10 = v7 & 1;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  result = *&v16;
  *(a2 + 64) = v16;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  return result;
}

uint64_t sub_23DB0E6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC28, &qword_23DB80308);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_23DB6F91C();
  *(v9 + 2) = 0x4020000000000000;
  v10 = *(v1 + 8);
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v12 = *(v10 + v11);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v21);

  v13 = v21;
  *(v9 + 3) = v12;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v9[41] = v13;
  sub_23DB0D56C(&v9[*(v4 + 68)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v21);

  v14 = v22;
  if (v22)
  {
    v15 = v21;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v21);

    if (v21)
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

  sub_23DA0E2B4(v9, v6, &qword_27E2FFC28, &qword_23DB80308);
  sub_23DA0E2B4(v6, a1, &qword_27E2FFC28, &qword_23DB80308);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC30, &qword_23DB80310) + 48));
  sub_23DA52040(v15, v14, KeyPath, 0);
  sub_23DA17988(v9, &qword_27E2FFC28, &qword_23DB80308);
  *v18 = v15;
  v18[1] = v14;
  v18[2] = KeyPath;
  v18[3] = 0;
  v18[4] = v17;
  sub_23DA52098(v15, v14, KeyPath, 0);
  return sub_23DA17988(v6, &qword_27E2FFC28, &qword_23DB80308);
}

uint64_t sub_23DB0E9B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for PracticeUneditableTextVOView(0);
  v4 = *(v3 - 8);
  v81 = v3;
  v82 = v4;
  MEMORY[0x28223BE20](v3);
  v83 = v5;
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFEA8, &qword_23DB806F8);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFEB0, &qword_23DB80700);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFEB8, &qword_23DB80708);
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x28223BE20](v11);
  v89 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v16 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = v16;
  sub_23DB6EF0C(&v102);

  sub_23DA16E70();
  v17 = sub_23DB6FD8C();
  v79 = v18;
  v80 = v17;
  v20 = v19;
  v78 = v21;
  if ((sub_23DB230F4() & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  sub_23DB705FC();
  sub_23DB6F34C();
  v22 = v20 & 1;
  v104 = v22;
  KeyPath = swift_getKeyPath();
  if (sub_23DB230F4())
  {
    v23 = sub_23DB6FBCC();
  }

  else
  {
    v23 = sub_23DB6FC4C();
  }

  v76 = v23;
  v88 = v15;
  v75 = swift_getKeyPath();
  sub_23DB230F4();
  v74 = sub_23DB6FB3C();
  sub_23DB6EFAC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v105 = 0;
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v32 = qword_27E30A658;
  v33 = sub_23DB6FB3C();
  v34 = *(v6 + 36);
  v73 = v6;
  v35 = &v8[v34];
  v36 = *(sub_23DB6F32C() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_23DB6F63C();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #8.0 }

  *v35 = _Q0;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v44 = v79;
  *v8 = v80;
  *(v8 + 1) = v44;
  v8[16] = v22;
  v45 = KeyPath;
  *(v8 + 3) = v78;
  v46 = v103[8];
  *(v8 + 6) = v103[7];
  *(v8 + 7) = v46;
  *(v8 + 8) = v103[9];
  v47 = v103[4];
  *(v8 + 2) = v103[3];
  *(v8 + 3) = v47;
  v48 = v103[6];
  *(v8 + 4) = v103[5];
  *(v8 + 5) = v48;
  *(v8 + 18) = v45;
  v8[152] = 0;
  v49 = v76;
  *(v8 + 20) = v75;
  *(v8 + 21) = v49;
  v8[176] = v74;
  *(v8 + 23) = v25;
  *(v8 + 24) = v27;
  *(v8 + 25) = v29;
  *(v8 + 26) = v31;
  v8[216] = 0;
  *(v8 + 28) = v32;
  v8[232] = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v50 = sub_23DB280C0();
  v51 = v73;
  sub_23DB6FF9C();

  sub_23DA17988(v8, &qword_27E2FFEA8, &qword_23DB806F8);
  sub_23DB6F8EC();
  LOBYTE(v100[0]) = v102;
  v52 = v84;
  sub_23DB0D4A4(a1, v84, type metadata accessor for PracticeUneditableTextVOView);
  v53 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v54 = swift_allocObject();
  sub_23DB25CF0(v52, v54 + v53, type metadata accessor for PracticeUneditableTextVOView);
  *&v102 = v51;
  *(&v102 + 1) = v50;
  v55 = 1;
  swift_getOpaqueTypeConformance2();
  v56 = v87;
  v57 = v88;
  v58 = v93;
  sub_23DB700BC();

  (*(v86 + 8))(v58, v56);
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v85;
  sub_23DB6EF0C(&v102);

  if (v102 == 1)
  {
    v60 = (v59 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v62 = *v60;
    v61 = v60[1];

    v63 = sub_23DB6FB4C();
    LOBYTE(v100[0]) = 1;
    LOBYTE(v103[0]) = v63;
  }

  else
  {
    v62 = 0;
    v61 = 0;
    v55 = 0;
    *&v103[0] = 0;
  }

  *&v102 = v62;
  *(&v102 + 1) = v61;
  *(v103 + 8) = 0u;
  *(&v103[1] + 8) = 0u;
  BYTE8(v103[2]) = v55;
  v65 = v89;
  v64 = v90;
  v66 = *(v90 + 16);
  v67 = v91;
  v66(v89, v57, v91);
  v94 = v102;
  v95 = v103[0];
  v96[0] = v103[1];
  *(v96 + 9) = *(&v103[1] + 9);
  v68 = v92;
  v66(v92, v65, v67);
  v69 = &v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF00, &qword_23DB807E8) + 48)];
  *(v99 + 9) = *(v96 + 9);
  v97 = v94;
  v98 = v95;
  v99[0] = v96[0];
  sub_23DA0E2B4(&v97, v100, &qword_27E2FFE50, &qword_23DB80668);
  sub_23DA17988(&v102, &qword_27E2FFE50, &qword_23DB80668);
  v70 = v98;
  *v69 = v97;
  *(v69 + 1) = v70;
  *(v69 + 2) = v99[0];
  *(v69 + 41) = *(v99 + 9);
  v71 = *(v64 + 8);
  v71(v57, v67);
  v100[0] = v94;
  v100[1] = v95;
  v101[0] = v96[0];
  *(v101 + 9) = *(v96 + 9);
  sub_23DA17988(v100, &qword_27E2FFE50, &qword_23DB80668);
  return (v71)(v65, v67);
}

void *sub_23DB0F2C8(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  result = sub_23DB6F8EC();
  if (v4 == 1)
  {
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v3 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v3 + 40) = 62;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DB0F398@<X0>(uint64_t a1@<X8>)
{
  v34[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE68, &qword_23DB806C8);
  MEMORY[0x28223BE20](v2);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE70, &qword_23DB806D0);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE78, &qword_23DB806D8);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE80, &qword_23DB806E0);
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  if (sub_23DB230F4())
  {
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    sub_23DB6F91C();
    *(v16 + 2) = 0x4059000000000000;
    sub_23DB23240(v35);
    v17 = v35[3];
    *(v16 + 56) = v35[2];
    *(v16 + 72) = v17;
    v18 = v35[1];
    *(v16 + 24) = v35[0];
    *(v16 + 40) = v18;
    v19 = &v16[*(v14 + 60)];
    *v19 = sub_23DB6F68C();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE88, &qword_23DB806E8);
    sub_23DB0E9B4(v1, &v19[*(v20 + 44)]);
    sub_23DA0E2B4(v16, v13, &qword_27E2FFE80, &qword_23DB806E0);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFE98, &qword_27E2FFE80, &qword_23DB806E0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFEA0, &qword_27E2FFE68, &qword_23DB806C8, MEMORY[0x277CE14C0]);
    sub_23DB6F79C();
    v21 = v16;
    v22 = &qword_27E2FFE80;
    v23 = &qword_23DB806E0;
  }

  else
  {
    v34[0] = v11;
    v34[1] = v14;
    v34[2] = v2;
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    sub_23DB6F91C();
    *(v10 + 2) = 0x4059000000000000;
    v24 = *(v1 + 8);
    v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    *(v10 + 3) = *(v24 + v25);
    *(v10 + 4) = 0;
    *(v10 + 20) = 257;
    v26 = &v10[*(v5 + 60)];

    *v26 = sub_23DB6F68C();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE88, &qword_23DB806E8);
    sub_23DB0E9B4(v1, &v26[*(v27 + 44)]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v36);

    v28 = v37;
    if (v37)
    {
      v29 = v36;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v36);

      if (v36)
      {
        v31 = 0x3FF0000000000000;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v29 = 0;
      KeyPath = 0;
      v31 = 0;
    }

    sub_23DA0E2B4(v10, v7, &qword_27E2FFE70, &qword_23DB806D0);
    sub_23DA0E2B4(v7, v4, &qword_27E2FFE70, &qword_23DB806D0);
    v32 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE90, &qword_23DB806F0) + 48)];
    *v32 = v29;
    v32[1] = v28;
    v32[2] = KeyPath;
    v32[3] = 0;
    v32[4] = v31;
    sub_23DA52040(v29, v28, KeyPath, 0);
    sub_23DA52040(v29, v28, KeyPath, 0);
    sub_23DA52098(v29, v28, KeyPath, 0);
    sub_23DA17988(v7, &qword_27E2FFE70, &qword_23DB806D0);
    sub_23DA0E2B4(v4, v13, &qword_27E2FFE68, &qword_23DB806C8);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFE98, &qword_27E2FFE80, &qword_23DB806E0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFEA0, &qword_27E2FFE68, &qword_23DB806C8, MEMORY[0x277CE14C0]);
    sub_23DB6F79C();
    sub_23DA52098(v29, v28, KeyPath, 0);
    sub_23DA17988(v4, &qword_27E2FFE68, &qword_23DB806C8);
    v21 = v10;
    v22 = &qword_27E2FFE70;
    v23 = &qword_23DB806D0;
  }

  return sub_23DA17988(v21, v22, v23);
}

uint64_t sub_23DB0F9A8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_23DB6F8DC();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PracticeVOMagicTapButtonView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v6;
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF30, &qword_23DB80808);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  MEMORY[0x28223BE20](v8);
  v49 = &v32 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF38, &qword_23DB80810);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = type metadata accessor for PracticeVOMagicTapButtonView;
  v39 = &v32 - v11;
  sub_23DB0D4A4(v1, v7, type metadata accessor for PracticeVOMagicTapButtonView);
  v37 = *(v5 + 80);
  v12 = (v37 + 16) & ~v37;
  v35 = v12;
  v13 = swift_allocObject();
  v48 = type metadata accessor for PracticeVOMagicTapButtonView;
  v14 = v13;
  v32 = v13;
  sub_23DB25CF0(v7, v13 + v12, type metadata accessor for PracticeVOMagicTapButtonView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v51);

  v16 = v51;
  v15 = v52;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v51);

  v17 = v51;
  v18 = v52;
  v51 = sub_23DB2BB34;
  v52 = v14;
  v53 = v16;
  v54 = v15;
  v55 = v17;
  v56 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v33 = v1;
  sub_23DB6F90C();
  v19 = sub_23DADEA60();
  sub_23DB6FF9C();

  sub_23DB6F8EC();
  LOBYTE(v50) = v51;
  v20 = v34;
  v21 = v38;
  sub_23DB0D4A4(v1, v34, v38);
  v22 = v35;
  v23 = swift_allocObject();
  sub_23DB25CF0(v20, v23 + v22, v48);
  v51 = &type metadata for TryButton;
  v52 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v39;
  v26 = v40;
  v27 = v49;
  sub_23DB700BC();

  (*(v41 + 8))(v27, v26);
  v28 = v43;
  sub_23DB6F8CC();
  sub_23DB0D4A4(v33, v20, v21);
  v29 = swift_allocObject();
  sub_23DB25CF0(v20, v29 + v22, v48);
  v51 = v26;
  v52 = MEMORY[0x277D839B0];
  v53 = OpaqueTypeConformance2;
  v54 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v30 = v42;
  sub_23DB6FF6C();

  (*(v46 + 8))(v28, v47);
  return (*(v44 + 8))(v25, v30);
}

uint64_t sub_23DB0FFC4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v4);

    v4(v1);

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v4) = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v4);

    v4(v2);

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v4) = 1;
  }

  return sub_23DB6EF1C();
}

uint64_t sub_23DB1015C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF08, &qword_23DB807F0);
  MEMORY[0x28223BE20](v1);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF10, &qword_23DB807F8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF18, &qword_23DB80800);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  if (sub_23DB230F4())
  {
    *v9 = swift_getKeyPath();
    v9[8] = 0;
    sub_23DB6F91C();
    *(v9 + 2) = 0x4059000000000000;
    sub_23DB23240(v19);
    v10 = v19[3];
    *(v9 + 56) = v19[2];
    *(v9 + 72) = v10;
    v11 = v19[1];
    *(v9 + 24) = v19[0];
    *(v9 + 40) = v11;
    sub_23DB0F9A8(&v9[*(v7 + 60)]);
    sub_23DA0E2B4(v9, v6, &qword_27E2FFF18, &qword_23DB80800);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFF20, &qword_27E2FFF18, &qword_23DB80800, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFF28, &qword_27E2FFF08, &qword_23DB807F0, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v12 = v9;
    v13 = &qword_27E2FFF18;
    v14 = &qword_23DB80800;
  }

  else
  {
    *v3 = swift_getKeyPath();
    v3[8] = 0;
    sub_23DB6F91C();
    *(v3 + 2) = 0x4059000000000000;
    v15 = *(v0 + 8);
    v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    *(v3 + 3) = *(v15 + v16);
    *(v3 + 4) = 0;
    *(v3 + 20) = 257;
    v17 = *(v1 + 60);

    sub_23DB0F9A8(&v3[v17]);
    sub_23DA0E2B4(v3, v6, &qword_27E2FFF08, &qword_23DB807F0);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFF20, &qword_27E2FFF18, &qword_23DB80800, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFF28, &qword_27E2FFF08, &qword_23DB807F0, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v12 = v3;
    v13 = &qword_27E2FFF08;
    v14 = &qword_23DB807F0;
  }

  return sub_23DA17988(v12, v13, v14);
}

uint64_t sub_23DB104CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = type metadata accessor for PracticeVoiceOverHeadersView(0);
  v4 = *(v3 - 8);
  v61 = v3 - 8;
  v62 = v4;
  v79 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB48, &qword_23DB80158);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB50, &qword_23DB80160);
  MEMORY[0x28223BE20](v63);
  v57 = &v56 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB58, &qword_23DB80168);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v78 = &v56 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB60, &qword_23DB80170);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v64 = &v56 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB68, &qword_23DB80178);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v56 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB70, &qword_23DB80180) - 8;
  MEMORY[0x28223BE20](v69);
  v65 = &v56 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB78, &qword_23DB80188);
  MEMORY[0x28223BE20](v74);
  v75 = &v56 - v15;
  v80 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB80, &qword_23DB80190);
  sub_23DB2735C();
  sub_23DB6FC9C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v82);

  sub_23DA17B80(&qword_27E2FFBB0, &qword_27E2FFB48, &qword_23DB80158, MEMORY[0x277CDE5A0]);
  v16 = sub_23DA16E70();
  sub_23DB6FF1C();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v82);

  v60 = type metadata accessor for PracticeVoiceOverHeadersView;
  v17 = v77;
  sub_23DB0D4A4(v1, v77, type metadata accessor for PracticeVoiceOverHeadersView);
  v62 = *(v62 + 80);
  v18 = (v62 + 16) & ~v62;
  v58 = v18;
  v19 = swift_allocObject();
  v59 = type metadata accessor for PracticeVoiceOverHeadersView;
  sub_23DB25CF0(v17, v19 + v18, type metadata accessor for PracticeVoiceOverHeadersView);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFBB8, &qword_23DB80238);
  v21 = sub_23DB27530();
  v22 = sub_23DB27618();
  v23 = v63;
  v24 = v57;
  sub_23DB6FF2C();

  sub_23DA17988(v24, &qword_27E2FFB50, &qword_23DB80160);
  v61 = *(v61 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  *&v82 = v23;
  *(&v82 + 1) = MEMORY[0x277D837D0];
  *&v83 = v20;
  *(&v83 + 1) = v21;
  *&v84 = v16;
  *(&v84 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v64;
  v27 = v66;
  v28 = v78;
  sub_23DB6FF9C();

  v29 = v27;
  (*(v68 + 8))(v28, v27);
  sub_23DB6F8EC();
  v81 = v82;
  v30 = v77;
  sub_23DB0D4A4(v2, v77, v60);
  v31 = v58;
  v32 = swift_allocObject();
  sub_23DB25CF0(v30, v32 + v31, v59);
  *&v82 = v29;
  *(&v82 + 1) = OpaqueTypeConformance2;
  v33 = v65;
  swift_getOpaqueTypeConformance2();
  v34 = v67;
  v35 = v70;
  sub_23DB700BC();

  (*(v71 + 8))(v26, v35);
  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v72 + 32))(v33, v34, v73);
  v36 = (v33 + *(v69 + 44));
  v37 = v87;
  v36[4] = v86;
  v36[5] = v37;
  v36[6] = v88;
  v38 = v83;
  *v36 = v82;
  v36[1] = v38;
  v39 = v85;
  v36[2] = v84;
  v36[3] = v39;
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v40 = qword_27E30A658;
  v41 = sub_23DB6FB3C();
  v42 = v75;
  sub_23DA17A54(v33, v75, &qword_27E2FFB70, &qword_23DB80180);
  v43 = v42 + *(v74 + 36);
  *v43 = v40;
  *(v43 + 8) = v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFBE0, &qword_23DB80248);
  v45 = v76;
  v46 = (v76 + *(v44 + 36));
  v47 = *(sub_23DB6F32C() + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_23DB6F63C();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #8.0 }

  *v46 = _Q0;
  *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  sub_23DA17A54(v42, v45, &qword_27E2FFB78, &qword_23DB80188);
}

uint64_t sub_23DB10F8C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v2);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB98, &qword_23DB80198);
  sub_23DA17B80(&qword_27E2FFBE8, &qword_27E2FC7C0, &unk_23DB7E2F0, MEMORY[0x277D83980]);
  sub_23DB0C6AC(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB273E0();
  return sub_23DB704FC();
}

uint64_t sub_23DB11100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23DB6F68C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFBF8, &qword_23DB802D8);
  sub_23DB111B4(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB98, &qword_23DB80198);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_23DB111B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v69 = sub_23DB6F67C();
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v61 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC00, &qword_23DB802E0);
  MEMORY[0x28223BE20](v63);
  v60 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v60 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC08, &qword_23DB802E8) - 8;
  MEMORY[0x28223BE20](v71);
  v64 = &v60 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC10, &qword_23DB802F0) - 8;
  MEMORY[0x28223BE20](v72);
  v74 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v68 = &v60 - v12;
  v70 = a1;
  v13 = *a1;
  v14 = a1[1];
  v97 = v13;
  v98 = v14;
  v67 = sub_23DA16E70();

  v15 = sub_23DB6FD8C();
  v17 = v16;
  v19 = v18;
  sub_23DB6FC3C();
  v20 = sub_23DB6FD3C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_23DA16EC4(v15, v17, v19 & 1);

  v97 = v20;
  v98 = v22;
  v99 = v24 & 1;
  v100 = v26;
  v27 = v61;
  sub_23DB6F66C();
  v28 = v60;
  sub_23DB6FE8C();
  (*(v65 + 8))(v27, v69);
  sub_23DA16EC4(v20, v22, v24 & 1);

  v29 = v62;
  sub_23DB6F2AC();
  sub_23DA17988(v28, &qword_27E2FFC00, &qword_23DB802E0);
  sub_23DB7063C();
  sub_23DB6F34C();
  v30 = v29;
  v31 = v64;
  sub_23DA17A54(v30, v64, &qword_27E2FFC00, &qword_23DB802E0);
  v32 = (v31 + *(v71 + 44));
  v33 = v119;
  v32[4] = v118;
  v32[5] = v33;
  v32[6] = v120;
  v34 = v115;
  *v32 = v114;
  v32[1] = v34;
  v35 = v117;
  v32[2] = v116;
  v32[3] = v35;
  KeyPath = swift_getKeyPath();
  v37 = v66;
  sub_23DA17A54(v31, v66, &qword_27E2FFC08, &qword_23DB802E8);
  v38 = v37 + *(v72 + 44);
  *v38 = KeyPath;
  *(v38 + 8) = 0;
  v39 = v68;
  sub_23DA17A54(v37, v68, &qword_27E2FFC10, &qword_23DB802F0);
  v40 = v70[3];
  v97 = v70[2];
  v98 = v40;

  v41 = sub_23DB6FD8C();
  v43 = v42;
  LOBYTE(v22) = v44;
  v72 = v45;
  sub_23DB7063C();
  sub_23DB6F10C();
  LOBYTE(v17) = v22 & 1;
  v113 = v22 & 1;
  sub_23DB7063C();
  sub_23DB6F34C();
  v46 = swift_getKeyPath();
  v47 = v74;
  sub_23DA0E2B4(v39, v74, &qword_27E2FFC10, &qword_23DB802F0);
  v48 = v47;
  v49 = v73;
  sub_23DA0E2B4(v48, v73, &qword_27E2FFC10, &qword_23DB802F0);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC18, &qword_23DB802F8) + 48);
  v88 = v83;
  v87 = v82;
  v93 = v78;
  v94 = v79;
  v95 = v80;
  v96[0] = v81;
  v89 = v84;
  v90 = v75;
  v51 = (v49 + v50);
  *&v85 = v41;
  *(&v85 + 1) = v43;
  LOBYTE(v86) = v17;
  v52 = v72;
  *(&v86 + 1) = v72;
  v91 = v76;
  v92 = v77;
  *&v96[1] = v46;
  BYTE8(v96[1]) = 0;
  v53 = v86;
  *v51 = v85;
  v51[1] = v53;
  v54 = v92;
  v51[6] = v91;
  v51[7] = v54;
  v55 = v90;
  v51[4] = v89;
  v51[5] = v55;
  v56 = v96[0];
  v51[10] = v95;
  v51[11] = v56;
  v57 = v94;
  v51[8] = v93;
  v51[9] = v57;
  v58 = v88;
  v51[2] = v87;
  v51[3] = v58;
  *(v51 + 185) = *(v96 + 9);
  sub_23DA0E2B4(&v85, &v97, &qword_27E2FFC20, &qword_23DB80300);
  sub_23DA17988(v39, &qword_27E2FFC10, &qword_23DB802F0);
  v101 = v82;
  v102 = v83;
  v107 = v78;
  v108 = v79;
  v109 = v80;
  v110 = v81;
  v103 = v84;
  v104 = v75;
  v97 = v41;
  v98 = v43;
  v99 = v17;
  v100 = v52;
  v105 = v76;
  v106 = v77;
  v111 = v46;
  v112 = 0;
  sub_23DA17988(&v97, &qword_27E2FFC20, &qword_23DB80300);
  return sub_23DA17988(v74, &qword_27E2FFC10, &qword_23DB802F0);
}

uint64_t sub_23DB11948(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v2);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFBD8, &qword_23DB80240);
  sub_23DA17B80(&qword_27E2FFBE8, &qword_27E2FC7C0, &unk_23DB7E2F0, MEMORY[0x277D83980]);
  sub_23DB0C6AC(&qword_27E2FFBF0, type metadata accessor for HeaderWithBody, &protocol conformance descriptor for HeaderWithBody);
  sub_23DA17B80(&qword_27E2FFBD0, &qword_27E2FFBD8, &qword_23DB80240, MEMORY[0x277CDE1F0]);
  return sub_23DB704EC();
}

uint64_t sub_23DB11AF0(char *a1)
{
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 1);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = type metadata accessor for HeaderWithBody(0);
  (*(v3 + 16))(v5, &a1[*(v7 + 24)], v2);
  sub_23DB0C6AC(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DA16E70();

  return sub_23DB6F93C();
}

uint64_t sub_23DB11C6C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB38, &qword_23DB800B8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_23DB6F91C();
  *(v9 + 2) = 0x4034000000000000;
  v10 = *(v1 + 8);
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v12 = *(v10 + v11);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v21);

  v13 = v21;
  *(v9 + 3) = v12;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v9[41] = v13;
  sub_23DB104CC(&v9[*(v4 + 68)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v21);

  v14 = v22;
  if (v22)
  {
    v15 = v21;
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v21);

    if (v21)
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

  sub_23DA0E2B4(v9, v6, &qword_27E2FFB38, &qword_23DB800B8);
  sub_23DA0E2B4(v6, a1, &qword_27E2FFB38, &qword_23DB800B8);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB40, &qword_23DB80108) + 48));
  sub_23DA52040(v15, v14, KeyPath, 0);
  sub_23DA17988(v9, &qword_27E2FFB38, &qword_23DB800B8);
  *v18 = v15;
  v18[1] = v14;
  v18[2] = KeyPath;
  v18[3] = 0;
  v18[4] = v17;
  sub_23DA52098(v15, v14, KeyPath, 0);
  return sub_23DA17988(v6, &qword_27E2FFB38, &qword_23DB800B8);
}

uint64_t sub_23DB11F5C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v67 = type metadata accessor for PracticeVOCustomActionView(0);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v69 = v2;
  v70 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_23DB6F9FC();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF78, &qword_23DB80A38);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF80, &qword_23DB80A40);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF88, &qword_23DB80A48);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF90, &qword_23DB80A50);
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v16 = &v58 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF98, &qword_23DB80A58);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v58 - v17;
  *v7 = sub_23DB6F5BC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFFA0, &qword_23DB80A60);
  sub_23DB1278C(v1, &v7[*(v18 + 44)]);
  v19 = sub_23DB6FB8C();
  sub_23DB6EFAC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFFA8, &qword_23DB80A68) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_23DB6FB9C();
  v30 = &v7[*(v5 + 44)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v71 = v1;
  sub_23DB230F4();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v7, v11, &qword_27E2FFF78, &qword_23DB80A38);
  v31 = &v11[*(v9 + 44)];
  v32 = v81;
  *(v31 + 4) = v80;
  *(v31 + 5) = v32;
  *(v31 + 6) = v82;
  v33 = v77;
  *v31 = v76;
  *(v31 + 1) = v33;
  v34 = v79;
  *(v31 + 2) = v78;
  *(v31 + 3) = v34;
  if (qword_27E2FBB78 != -1)
  {
    swift_once();
  }

  v35 = qword_27E30A650;
  v36 = &v14[*(v12 + 36)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC150, &qword_23DB74180);
  v38 = v36 + *(v37 + 52);
  v39 = *(sub_23DB6F32C() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_23DB6F63C();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #8.0 }

  *v38 = _Q0;
  *v36 = v35;
  *(v36 + *(v37 + 56)) = 256;
  sub_23DA17A54(v11, v14, &qword_27E2FFF80, &qword_23DB80A40);

  v47 = v60;
  sub_23DB6F9DC();
  v48 = sub_23DB285D8();
  sub_23DB6FF8C();
  (*(v61 + 8))(v47, v62);
  sub_23DA17988(v14, &qword_27E2FFF88, &qword_23DB80A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v49 = v71;
  sub_23DB6F90C();
  v74 = v12;
  v75 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v63;
  v52 = v64;
  sub_23DB6FF9C();

  (*(v59 + 8))(v16, v52);
  sub_23DB6F8EC();
  v73 = v74;
  v53 = v70;
  sub_23DB0D4A4(v49, v70, type metadata accessor for PracticeVOCustomActionView);
  v54 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v55 = swift_allocObject();
  sub_23DB25CF0(v53, v55 + v54, type metadata accessor for PracticeVOCustomActionView);
  v74 = v52;
  v75 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v56 = v66;
  sub_23DB700BC();

  return (*(v65 + 8))(v51, v56);
}

uint64_t sub_23DB1278C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = type metadata accessor for PracticeVOCustomActionView(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFFE0, &qword_23DB80A78);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v37 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v56);

  v42 = sub_23DB702BC();
  v41 = sub_23DB6FB6C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v56);

  sub_23DA16E70();
  v9 = sub_23DB6FD8C();
  v11 = v10;
  v13 = v12;
  sub_23DB6FC8C();
  v14 = sub_23DB6FD3C();
  v49 = v15;
  v50 = v14;
  v17 = v16;
  v51 = v18;

  sub_23DA16EC4(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  sub_23DB7063C();
  sub_23DB6F34C();
  *&v70[55] = v76;
  *&v70[71] = v77;
  *&v70[87] = v78;
  *&v70[103] = v79;
  *&v70[7] = v73;
  *&v70[23] = v74;
  v46 = v17 & 1;
  v72 = v17 & 1;
  *&v70[39] = v75;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v56);

  v19 = v39;
  sub_23DB0D4A4(v38, v39, type metadata accessor for PracticeVOCustomActionView);
  v20 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v21 = swift_allocObject();
  sub_23DB25CF0(v19, v21 + v20, type metadata accessor for PracticeVOCustomActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC860, &unk_23DB74E80);
  sub_23DB6EA8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFFE8, &qword_23DB80B58);
  sub_23DA17B80(&qword_27E2FFDE8, &qword_27E2FC860, &unk_23DB74E80, MEMORY[0x277D83980]);
  sub_23DA17B80(&qword_27E2FFFF0, &qword_27E2FFFE8, &qword_23DB80B58, MEMORY[0x277CDF028]);
  sub_23DB0C6AC(&qword_27E2FFDF0, type metadata accessor for ButtonWithIconAndLabel, &unk_23DB75210);
  v22 = v47;
  sub_23DB7050C();
  v23 = v43;
  v24 = v44;
  v25 = *(v44 + 16);
  v26 = v45;
  v25(v43, v22, v45);
  *a2 = v42;
  *(a2 + 8) = v41;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;
  *&v52 = v50;
  *(&v52 + 1) = v49;
  LOBYTE(v53) = v46;
  *(&v53 + 1) = *v71;
  DWORD1(v53) = *&v71[3];
  *(&v53 + 1) = v51;
  *&v54[0] = KeyPath;
  BYTE8(v54[0]) = 0;
  *(&v54[3] + 9) = *&v70[48];
  *(&v54[2] + 9) = *&v70[32];
  *(&v54[1] + 9) = *&v70[16];
  *(v54 + 9) = *v70;
  *(&v54[7] + 1) = *&v70[111];
  *(&v54[6] + 9) = *&v70[96];
  *(&v54[5] + 9) = *&v70[80];
  *(&v54[4] + 9) = *&v70[64];
  v55 = 256;
  v27 = v52;
  v28 = v53;
  v29 = v54[1];
  *(a2 + 88) = v54[0];
  *(a2 + 72) = v28;
  *(a2 + 56) = v27;
  v30 = v54[5];
  *(a2 + 152) = v54[4];
  v31 = v54[2];
  *(a2 + 136) = v54[3];
  *(a2 + 120) = v31;
  *(a2 + 104) = v29;
  v32 = v54[6];
  v33 = v54[7];
  *(a2 + 216) = 256;
  *(a2 + 200) = v33;
  *(a2 + 184) = v32;
  *(a2 + 168) = v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFFF8, &unk_23DB80B60);
  v25((a2 + *(v34 + 64)), v23, v26);

  sub_23DA0E2B4(&v52, v56, qword_27E2FF0F0, &qword_23DB7DA50);
  v35 = *(v24 + 8);
  v35(v47, v26);
  v35(v23, v26);
  v66 = *&v70[64];
  v67 = *&v70[80];
  *v68 = *&v70[96];
  v62 = *v70;
  v63 = *&v70[16];
  v64 = *&v70[32];
  v56[0] = v50;
  v56[1] = v49;
  v57 = v46;
  *v58 = *v71;
  *&v58[3] = *&v71[3];
  v59 = v51;
  v60 = KeyPath;
  v61 = 0;
  *&v68[15] = *&v70[111];
  v65 = *&v70[48];
  v69 = 256;
  sub_23DA17988(v56, qword_27E2FF0F0, &qword_23DB7DA50);
}

uint64_t sub_23DB12EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonWithIconAndLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23DB0D4A4(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ButtonWithIconAndLabel);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23DB25CF0(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for ButtonWithIconAndLabel);
  v11 = a1;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300000, &qword_23DB80B70);
  sub_23DB28BBC();
  return sub_23DB703CC();
}

uint64_t sub_23DB13040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v62 = a3;
  v4 = type metadata accessor for ButtonWithIconAndLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300020, &qword_23DB80B80);
  MEMORY[0x28223BE20](v58);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300028, &qword_23DB80B88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300018, &qword_23DB80B78);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v54 - v19;
  v56 = v11;

  v21 = sub_23DB702BC();
  v22 = (a1 + *(v4 + 20));
  v24 = *v22;
  v23 = v22[1];
  v63[0] = v24;
  v63[1] = v23;
  v63[2] = v21;
  sub_23DA16E70();
  v61 = v20;
  sub_23DB6FF1C();

  v60 = sub_23DB6FB8C();
  sub_23DB0D4A4(a1, v17, type metadata accessor for ButtonWithIconAndLabel);
  v25 = v17;
  v26 = *(v5 + 56);
  v27 = 1;
  v59 = v25;
  v26();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v63);

  v28 = *(v63[0] + 16);
  if (v28)
  {
    sub_23DB0D4A4(v63[0] + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v28 - 1), v14, type metadata accessor for ButtonWithIconAndLabel);
    v27 = 0;
  }

  (v26)(v14, v27, 1, v4);
  v29 = v59;
  v30 = *(v58 + 48);
  sub_23DA0E2B4(v59, v8, &qword_27E300028, &qword_23DB80B88);
  sub_23DA0E2B4(v14, &v8[v30], &qword_27E300028, &qword_23DB80B88);
  v31 = *(v5 + 48);
  if (v31(v8, 1, v4) != 1)
  {
    v34 = v56;
    sub_23DA0E2B4(v8, v56, &qword_27E300028, &qword_23DB80B88);
    v35 = v31(&v8[v30], 1, v4);
    v33 = v61;
    if (v35 != 1)
    {
      v36 = &v8[v30];
      v37 = v55;
      sub_23DB25CF0(v36, v55, type metadata accessor for ButtonWithIconAndLabel);
      v38 = sub_23DB6EA6C();
      sub_23DB0D50C(v37, type metadata accessor for ButtonWithIconAndLabel);
      sub_23DA17988(v14, &qword_27E300028, &qword_23DB80B88);
      sub_23DA17988(v29, &qword_27E300028, &qword_23DB80B88);
      sub_23DB0D50C(v34, type metadata accessor for ButtonWithIconAndLabel);
      sub_23DA17988(v8, &qword_27E300028, &qword_23DB80B88);
      if ((v38 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    sub_23DA17988(v14, &qword_27E300028, &qword_23DB80B88);
    sub_23DA17988(v29, &qword_27E300028, &qword_23DB80B88);
    sub_23DB0D50C(v34, type metadata accessor for ButtonWithIconAndLabel);
LABEL_8:
    sub_23DA17988(v8, &qword_27E300020, &qword_23DB80B80);
    goto LABEL_13;
  }

  sub_23DA17988(v14, &qword_27E300028, &qword_23DB80B88);
  sub_23DA17988(v29, &qword_27E300028, &qword_23DB80B88);
  v32 = v31(&v8[v30], 1, v4);
  v33 = v61;
  if (v32 != 1)
  {
    goto LABEL_8;
  }

  sub_23DA17988(v8, &qword_27E300028, &qword_23DB80B88);
LABEL_11:
  v39 = objc_opt_self();
  v40 = [v39 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if (v41 != 1)
  {
    v42 = [v39 currentDevice];
    [v42 userInterfaceIdiom];
  }

LABEL_13:
  sub_23DB6EFAC();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v62;
  sub_23DA17A54(v33, v62, &qword_27E300018, &qword_23DB80B78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300000, &qword_23DB80B70);
  v53 = v51 + *(result + 36);
  *v53 = v60;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_23DB136CC@<X0>(uint64_t a1@<X8>)
{
  v31[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF40, &qword_23DB80A10);
  MEMORY[0x28223BE20](v2);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF48, &qword_23DB80A18);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF50, &qword_23DB80A20);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF58, &qword_23DB80A28);
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  if (sub_23DB230F4())
  {
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    sub_23DB6F91C();
    *(v16 + 2) = 0x4059000000000000;
    sub_23DB23240(v32);
    v17 = v32[3];
    *(v16 + 56) = v32[2];
    *(v16 + 72) = v17;
    v18 = v32[1];
    *(v16 + 24) = v32[0];
    *(v16 + 40) = v18;
    sub_23DB11F5C(&v16[*(v14 + 60)]);
    sub_23DA0E2B4(v16, v13, &qword_27E2FFF58, &qword_23DB80A28);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFF68, &qword_27E2FFF58, &qword_23DB80A28, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFF70, &qword_27E2FFF40, &qword_23DB80A10, MEMORY[0x277CE14C0]);
    sub_23DB6F79C();
    v19 = v16;
    v20 = &qword_27E2FFF58;
    v21 = &qword_23DB80A28;
  }

  else
  {
    v31[0] = v11;
    v31[1] = v14;
    v31[2] = v2;
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    sub_23DB6F91C();
    *(v10 + 2) = 0x4059000000000000;
    v22 = *(v1 + 8);
    v23 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    *(v10 + 3) = *(v22 + v23);
    *(v10 + 4) = 0;
    *(v10 + 20) = 257;
    v24 = *(v5 + 60);

    sub_23DB11F5C(&v10[v24]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v33);

    v25 = v34;
    if (v34)
    {
      v26 = v33;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v33);

      if (v33)
      {
        v28 = 0x3FF0000000000000;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v26 = 0;
      KeyPath = 0;
      v28 = 0;
    }

    sub_23DA0E2B4(v10, v7, &qword_27E2FFF48, &qword_23DB80A18);
    sub_23DA0E2B4(v7, v4, &qword_27E2FFF48, &qword_23DB80A18);
    v29 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFF60, &qword_23DB80A30) + 48)];
    *v29 = v26;
    v29[1] = v25;
    v29[2] = KeyPath;
    v29[3] = 0;
    v29[4] = v28;
    sub_23DA52040(v26, v25, KeyPath, 0);
    sub_23DA52040(v26, v25, KeyPath, 0);
    sub_23DA52098(v26, v25, KeyPath, 0);
    sub_23DA17988(v7, &qword_27E2FFF48, &qword_23DB80A18);
    sub_23DA0E2B4(v4, v13, &qword_27E2FFF40, &qword_23DB80A10);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFF68, &qword_27E2FFF58, &qword_23DB80A28, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFF70, &qword_27E2FFF40, &qword_23DB80A10, MEMORY[0x277CE14C0]);
    sub_23DB6F79C();
    sub_23DA52098(v26, v25, KeyPath, 0);
    sub_23DA17988(v4, &qword_27E2FFF40, &qword_23DB80A10);
    v19 = v10;
    v20 = &qword_27E2FFF48;
    v21 = &qword_23DB80A18;
  }

  return sub_23DA17988(v19, v20, v21);
}

uint64_t sub_23DB13C7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for VoiceOverPracticeButton(0);
  sub_23DB0D4A4(a1, a2 + *(v4 + 28), type metadata accessor for PracticeButtonWithPageNavigation);
  sub_23DB6F91C();
  KeyPath = swift_getKeyPath();
  type metadata accessor for NavigationModel(0);
  sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  result = sub_23DB6F39C();
  *a2 = result;
  a2[1] = v7;
  v8 = a2 + *(v4 + 24);
  *v8 = KeyPath;
  v8[8] = 0;
  return result;
}

uint64_t sub_23DB13D54@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB10, &qword_23DB80040);
  sub_23DB6F91C();
  v3 = a1 + *(v2 + 48);
  sub_23DB7037C();
  v4 = v7[1];
  *v3 = v7[0];
  *(v3 + 8) = v4;
  *(a1 + 16) = 0x4020000000000000;
  v5 = a1 + *(v2 + 40);
  *v5 = sub_23DB6F68C();
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB18, &qword_23DB80048);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v7);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC778, &qword_23DB800B0);
  type metadata accessor for VoiceOverPracticeButton(0);
  sub_23DA17B80(&qword_27E2FFB20, &qword_27E2FC778, &qword_23DB800B0, MEMORY[0x277D83980]);
  sub_23DB0C6AC(&qword_27E2FFB28, type metadata accessor for PracticeButtonWithPageNavigation, &unk_23DB75170);
  sub_23DB0C6AC(&qword_27E2FFB30, type metadata accessor for VoiceOverPracticeButton, &unk_23DB81170);
  return sub_23DB704FC();
}

uint64_t sub_23DB13F98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for PracticeVOContextualMenuView(0);
  v4 = *(v3 - 8);
  v36[1] = v3 - 8;
  v46 = v4;
  v45 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB6F9FC();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD60, &qword_23DB80498);
  MEMORY[0x28223BE20](v9);
  v11 = (v36 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD68, &qword_23DB804A0);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD70, &qword_23DB804A8);
  MEMORY[0x28223BE20](v41);
  v17 = v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD78, &qword_23DB804B0);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  MEMORY[0x28223BE20](v18);
  v36[0] = v36 - v20;
  *v11 = sub_23DB7060C();
  v11[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD80, &qword_23DB804B8);
  sub_23DB14564(v2, v11 + *(v22 + 44));
  sub_23DB6F9DC();
  v23 = sub_23DA17B80(&qword_27E2FFD88, &qword_27E2FFD60, &qword_23DB80498, MEMORY[0x277CE11A8]);
  v24 = v9;
  sub_23DB6FF8C();
  (*(v37 + 8))(v8, v38);
  sub_23DA17988(v11, &qword_27E2FFD60, &qword_23DB80498);
  v25 = *(*(v2 + 8) + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeVOContextualMenu__axLabel);
  swift_beginAccess();
  v26 = *(v25 + 48);
  v48 = *(v25 + 40);
  v49 = v26;
  v50 = v24;
  v51 = v23;
  swift_getOpaqueTypeConformance2();
  sub_23DA16E70();
  v27 = v39;
  sub_23DB6FF1C();
  (*(v40 + 8))(v15, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v28 = sub_23DB27C68();
  v29 = v36[0];
  v30 = v41;
  sub_23DB6FF9C();

  sub_23DA17988(v17, &qword_27E2FFD70, &qword_23DB804A8);
  sub_23DB6F8EC();
  LOBYTE(v50) = v48;
  v31 = v44;
  sub_23DB0D4A4(v2, v44, type metadata accessor for PracticeVOContextualMenuView);
  v32 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v33 = swift_allocObject();
  sub_23DB25CF0(v31, v33 + v32, type metadata accessor for PracticeVOContextualMenuView);
  v48 = v30;
  v49 = v28;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_23DB700BC();

  return (*(v43 + 8))(v29, v34);
}

uint64_t sub_23DB14564@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_23DB702CC();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD98, &qword_23DB804C0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = v32 - v9;
  v10 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v32[2] = v10;
  sub_23DB6EF0C(v52);

  v11 = v52[0];
  if (qword_27E2FBB78 != -1)
  {
    swift_once();
  }

  v12 = qword_27E30A650;

  sub_23DB7062C();
  v13 = sub_23DB6F34C();
  v49 = v11;
  LOBYTE(v50) = 1;
  *(&v50 + 1) = v12;
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFDA0, &qword_23DB80510);
  v32[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFDA8, &qword_23DB80518);
  sub_23DB27DE8();
  sub_23DB27EC8();
  sub_23DB6FE4C();
  v52[6] = v51[4];
  v52[7] = v51[5];
  v52[8] = v51[6];
  v52[2] = v51[0];
  v52[3] = v51[1];
  v52[4] = v51[2];
  v52[5] = v51[3];
  v52[0] = v49;
  v52[1] = v50;
  sub_23DA17988(v52, &qword_27E2FFDA0, &qword_23DB80510);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v49);

  sub_23DB702DC();
  sub_23DB230F4();
  v15 = v33;
  v14 = v34;
  (*(v33 + 104))(v5, *MEMORY[0x277CE0FE0], v34);
  v16 = 0.0;
  v17 = sub_23DB702EC();
  (*(v15 + 8))(v5, v14);
  v34 = sub_23DB701AC();
  v33 = sub_23DB700EC();
  sub_23DB7062C();
  sub_23DB6F10C();

  v48 = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v49);

  if (v49 != 2)
  {
    v16 = 1.0;
  }

  v18 = v36;
  v19 = v37;
  v20 = *(v37 + 16);
  v22 = v38;
  v21 = v39;
  v20(v36, v39, v38);
  v23 = v35;
  v20(v35, v18, v22);
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFDD8, &qword_23DB80570) + 48)];
  v43 = v17;
  LOWORD(v44) = 1;
  *(&v44 + 2) = v46;
  WORD3(v44) = v47;
  v26 = v33;
  v25 = v34;
  *(&v44 + 1) = v34;
  *&v45[0] = v33;
  *(v45 + 8) = v40;
  *(&v45[1] + 8) = v41;
  *(&v45[2] + 8) = v42;
  *(&v45[3] + 1) = v16;
  v27 = v45[1];
  *(v24 + 2) = v45[0];
  *(v24 + 3) = v27;
  v28 = v45[3];
  *(v24 + 4) = v45[2];
  *(v24 + 5) = v28;
  v29 = v44;
  *v24 = v43;
  *(v24 + 1) = v29;
  sub_23DA0E2B4(&v43, &v49, &qword_27E2FFDE0, &qword_23DB80578);
  v30 = *(v19 + 8);
  v30(v21, v22);
  *(v51 + 8) = v40;
  v49 = v17;
  LOWORD(v50) = 1;
  *(&v50 + 2) = v46;
  WORD3(v50) = v47;
  *(&v50 + 1) = v25;
  *&v51[0] = v26;
  *(&v51[1] + 8) = v41;
  *(&v51[2] + 8) = v42;
  *(&v51[3] + 1) = v16;
  sub_23DA17988(&v49, &qword_27E2FFDE0, &qword_23DB80578);
  return (v30)(v18, v22);
}

uint64_t sub_23DB14B88(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC860, &unk_23DB74E80);
  sub_23DB6EA8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2B8, &qword_23DB74308);
  sub_23DA17B80(&qword_27E2FFDE8, &qword_27E2FC860, &unk_23DB74E80, MEMORY[0x277D83980]);
  sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
  sub_23DB0C6AC(&qword_27E2FFDF0, type metadata accessor for ButtonWithIconAndLabel, &unk_23DB75210);
  return sub_23DB7050C();
}

uint64_t sub_23DB14D2C(uint64_t a1)
{
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DB0D4A4(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ButtonWithIconAndLabel);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23DB25CF0(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for ButtonWithIconAndLabel);
  v9 = a1;
  return sub_23DB703CC();
}

uint64_t sub_23DB14E88@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ButtonWithIconAndLabel(0);
  sub_23DA16E70();

  result = sub_23DB6FD8C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_23DB14F08@<X0>(uint64_t a1@<X8>)
{
  v31[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD28, &qword_23DB80470);
  MEMORY[0x28223BE20](v2);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD30, &qword_23DB80478);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD38, &qword_23DB80480);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD40, &qword_23DB80488);
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  if (sub_23DB230F4())
  {
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    sub_23DB6F91C();
    *(v16 + 2) = 0x4059000000000000;
    sub_23DB23240(v32);
    v17 = v32[3];
    *(v16 + 56) = v32[2];
    *(v16 + 72) = v17;
    v18 = v32[1];
    *(v16 + 24) = v32[0];
    *(v16 + 40) = v18;
    sub_23DB13F98(&v16[*(v14 + 60)]);
    sub_23DA0E2B4(v16, v13, &qword_27E2FFD40, &qword_23DB80488);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFD50, &qword_27E2FFD40, &qword_23DB80488, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFD58, &qword_27E2FFD28, &qword_23DB80470, MEMORY[0x277CE14C0]);
    sub_23DB6F79C();
    v19 = v16;
    v20 = &qword_27E2FFD40;
    v21 = &qword_23DB80488;
  }

  else
  {
    v31[0] = v11;
    v31[1] = v14;
    v31[2] = v2;
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    sub_23DB6F91C();
    *(v10 + 2) = 0x4059000000000000;
    v22 = *(v1 + 8);
    v23 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    *(v10 + 3) = *(v22 + v23);
    *(v10 + 4) = 0;
    *(v10 + 20) = 257;
    v24 = *(v5 + 60);

    sub_23DB13F98(&v10[v24]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v33);

    v25 = v34;
    if (v34)
    {
      v26 = v33;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v33);

      if (v33)
      {
        v28 = 0x3FF0000000000000;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v26 = 0;
      KeyPath = 0;
      v28 = 0;
    }

    sub_23DA0E2B4(v10, v7, &qword_27E2FFD30, &qword_23DB80478);
    sub_23DA0E2B4(v7, v4, &qword_27E2FFD30, &qword_23DB80478);
    v29 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD48, &qword_23DB80490) + 48)];
    *v29 = v26;
    v29[1] = v25;
    v29[2] = KeyPath;
    v29[3] = 0;
    v29[4] = v28;
    sub_23DA52040(v26, v25, KeyPath, 0);
    sub_23DA52040(v26, v25, KeyPath, 0);
    sub_23DA52098(v26, v25, KeyPath, 0);
    sub_23DA17988(v7, &qword_27E2FFD30, &qword_23DB80478);
    sub_23DA0E2B4(v4, v13, &qword_27E2FFD28, &qword_23DB80470);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFD50, &qword_27E2FFD40, &qword_23DB80488, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFD58, &qword_27E2FFD28, &qword_23DB80470, MEMORY[0x277CE14C0]);
    sub_23DB6F79C();
    sub_23DA52098(v26, v25, KeyPath, 0);
    sub_23DA17988(v4, &qword_27E2FFD28, &qword_23DB80470);
    v19 = v10;
    v20 = &qword_27E2FFD30;
    v21 = &qword_23DB80478;
  }

  return sub_23DA17988(v19, v20, v21);
}

uint64_t sub_23DB154B4()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for VoiceOverPracticeButton(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23DB70ACC();
    v7 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_23DB15610@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v45 = sub_23DB6F31C();
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v40 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for VoiceOverPracticeButton(0);
  v37 = *(v41 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300400, &qword_23DB811C0);
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300408, &qword_23DB811C8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  if (qword_27E2FBB68 != -1)
  {
    swift_once();
  }

  v36[0] = qword_27E30A640;
  v12 = sub_23DB154B4();
  v13 = sub_23DB154B4();
  if (qword_27E2FBB70 != -1)
  {
    swift_once();
  }

  v14 = qword_27E30A648;
  if (sub_23DB154B4())
  {
    v15 = sub_23DB6FBCC();
  }

  else
  {
    v15 = sub_23DB6FC3C();
  }

  v16 = v15;
  if (v13)
  {
    v17 = 6.0;
  }

  else
  {
    v17 = 15.0;
  }

  if (v12)
  {
    v18 = 6.0;
  }

  else
  {
    v18 = 12.0;
  }

  sub_23DB0D4A4(v1, v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceOverPracticeButton);
  v19 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v20 = swift_allocObject();
  v21 = sub_23DB25CF0(v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for VoiceOverPracticeButton);
  MEMORY[0x28223BE20](v21);
  v36[-6] = v2;
  v36[-5] = v16;
  v36[1] = v16;
  v36[-4] = v36[0];
  *&v36[-3] = v18;
  *&v36[-2] = v17;
  v36[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300410, &qword_23DB811D0);
  sub_23DB2AE4C();
  sub_23DB703CC();
  v22 = v40;
  sub_23DB6F30C();
  v23 = sub_23DA17B80(&qword_27E3004A0, &qword_27E300400, &qword_23DB811C0, MEMORY[0x277CDF028]);
  v24 = sub_23DB0C6AC(&qword_27E2FD1D0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v25 = v38;
  v26 = v45;
  sub_23DB6FE2C();
  (*(v42 + 8))(v22, v26);
  (*(v39 + 8))(v8, v25);
  v27 = (v2 + *(v41 + 28));
  v28 = v27[1];
  v47 = *v27;
  v48 = v28;
  sub_23DA16E70();

  v29 = sub_23DB6FD8C();
  v31 = v30;
  v33 = v32;
  v47 = v25;
  v48 = v26;
  v49 = v23;
  v50 = v24;
  swift_getOpaqueTypeConformance2();
  v34 = v44;
  sub_23DB6FF0C();

  sub_23DA16EC4(v29, v31, v33 & 1);

  return (*(v43 + 8))(v11, v34);
}

uint64_t sub_23DB15BC4(uint64_t *a1)
{
  v2 = (a1 + *(type metadata accessor for VoiceOverPracticeButton(0) + 28));
  v3 = *(v2 + 32);
  if (v3 == 2)
  {
    return v2[2]();
  }

  if (*a1)
  {
    v5 = v3 & 1;

    sub_23DABB0B8(&v5);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB15CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v92 = a4;
  v93 = a5;
  v10 = sub_23DB6F32C();
  MEMORY[0x28223BE20](v10);
  v91 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300428, &qword_23DB811D8);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v88 = sub_23DB6F68C();
  v95 = 1;
  v15 = (a1 + *(type metadata accessor for VoiceOverPracticeButton(0) + 28));
  v16 = v15[1];
  *&v99 = *v15;
  *(&v99 + 1) = v16;
  sub_23DA16E70();

  v17 = sub_23DB6FD8C();
  v86 = v18;
  v87 = v17;
  LOBYTE(v16) = v19;
  v85 = v20;
  KeyPath = swift_getKeyPath();
  v83 = v16 & 1;
  v94 = v16 & 1;
  v82 = v95;
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v96[55] = v102;
  *&v96[71] = v103;
  *&v96[87] = v104;
  *&v96[103] = v105;
  *&v96[7] = v99;
  *&v96[23] = v100;
  *&v96[39] = v101;
  v81 = swift_getKeyPath();
  v80 = swift_getKeyPath();
  v89 = a2;

  v90 = a3;

  v79 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v97 = 0;
  v78 = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v98 = 0;
  if (qword_27E2FBB68 != -1)
  {
    swift_once();
  }

  v76 = qword_27E30A640;
  v77 = swift_getKeyPath();
  v37 = &v14[*(v12 + 36)];

  sub_23DB705CC();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
  v39 = &v37[*(v38 + 52)];
  v75 = v10;
  v40 = *(v10 + 20);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_23DB6F63C();
  v43 = *(*(v42 - 8) + 104);
  v43(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #8.0 }

  v74 = _Q0;
  *v39 = _Q0;
  *&v37[*(v38 + 56)] = 256;
  v49 = *&v96[80];
  *(v14 + 129) = *&v96[64];
  *(v14 + 145) = v49;
  *(v14 + 161) = *&v96[96];
  v50 = *&v96[16];
  *(v14 + 65) = *v96;
  *(v14 + 81) = v50;
  v51 = *&v96[48];
  *(v14 + 97) = *&v96[32];
  *v14 = v88;
  *(v14 + 1) = 0;
  v14[16] = v82;
  v52 = v86;
  *(v14 + 3) = v87;
  *(v14 + 4) = v52;
  v14[40] = v83;
  v53 = KeyPath;
  *(v14 + 6) = v85;
  *(v14 + 7) = v53;
  v14[64] = 1;
  v54 = *&v96[111];
  *(v14 + 113) = v51;
  v55 = v81;
  *(v14 + 22) = v54;
  *(v14 + 23) = v55;
  v56 = v80;
  *(v14 + 24) = v89;
  *(v14 + 25) = v56;
  *(v14 + 26) = v90;
  LOBYTE(v56) = v78;
  v14[216] = v79;
  *(v14 + 28) = v22;
  *(v14 + 29) = v24;
  *(v14 + 30) = v26;
  *(v14 + 31) = v28;
  v14[256] = 0;
  v14[264] = v56;
  *(v14 + 34) = v30;
  *(v14 + 35) = v32;
  *(v14 + 36) = v34;
  *(v14 + 37) = v36;
  v14[304] = 0;
  v57 = v76;
  *(v14 + 39) = v77;
  *(v14 + 40) = v57;
  v58 = v91;
  v43(&v91[*(v75 + 20)], v41, v42);
  *v58 = v74;
  sub_23DB6F07C();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300410, &qword_23DB811D0);
  v60 = v93;
  v61 = v93 + *(v59 + 36);
  sub_23DB0D4A4(v58, v61, MEMORY[0x277CDFC08]);
  v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD8E0, &unk_23DB80390) + 36);
  v63 = v107;
  *v62 = v106;
  *(v62 + 16) = v63;
  *(v62 + 32) = v108;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC70, &unk_23DB83F80);
  *(v61 + *(v64 + 52)) = v92;
  *(v61 + *(v64 + 56)) = 256;

  v65 = sub_23DB7062C();
  v67 = v66;
  sub_23DB0D50C(v58, MEMORY[0x277CDFC08]);
  v68 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC78, &unk_23DB803A0) + 36));
  *v68 = v65;
  v68[1] = v67;
  *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC80, &unk_23DB83F90) + 36)) = 0x3FD999999999999ALL;
  v69 = sub_23DB7062C();
  v71 = v70;
  v72 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC88, &qword_23DB803B0) + 36));
  *v72 = v69;
  v72[1] = v71;
  return sub_23DA17A54(v14, v60, &qword_27E300428, &qword_23DB811D8);
}

uint64_t sub_23DB162A8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PracticeVOKeyboardCommandDefaultView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFD08, &qword_23DB80468);
  MEMORY[0x28223BE20](v5);
  v7 = (&v13 - v6);
  type metadata accessor for Page.PracticeVOKeyboardCommandWithAlert(0);
  if (swift_dynamicCastClass())
  {
    sub_23DB0C6AC(&qword_27E2FFD20, type metadata accessor for Page.PracticeVOKeyboardCommandWithAlert, &protocol conformance descriptor for Page);

    *v7 = sub_23DB6F1EC();
    v7[1] = v8;
    swift_storeEnumTagMultiPayload();
    sub_23DB27C14();
    sub_23DB0C6AC(&qword_27E2FFD18, type metadata accessor for PracticeVOKeyboardCommandDefaultView, &unk_23DB810D0);
    return sub_23DB6F79C();
  }

  else
  {
    KeyPath = swift_getKeyPath();

    sub_23DB6F91C();
    type metadata accessor for Page.PracticeVOKeyboardCommand(0);
    sub_23DB0C6AC(&qword_27E2FF760, type metadata accessor for Page.PracticeVOKeyboardCommand, &protocol conformance descriptor for Page);
    *v4 = sub_23DB6F1EC();
    *(v4 + 1) = v11;
    type metadata accessor for NavigationModel(0);
    sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    *(v4 + 2) = sub_23DB6F39C();
    *(v4 + 3) = v12;
    *(v4 + 4) = KeyPath;
    v4[40] = 0;
    sub_23DB0D4A4(v4, v7, type metadata accessor for PracticeVOKeyboardCommandDefaultView);
    swift_storeEnumTagMultiPayload();
    sub_23DB27C14();
    sub_23DB0C6AC(&qword_27E2FFD18, type metadata accessor for PracticeVOKeyboardCommandDefaultView, &unk_23DB810D0);
    sub_23DB6F79C();
    return sub_23DB0D50C(v4, type metadata accessor for PracticeVOKeyboardCommandDefaultView);
  }
}

uint64_t sub_23DB165EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for PracticeVOKeyboardCommandDefaultView(0);
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = v4;
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DB6F9FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004D0, &qword_23DB813D0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004D8, &qword_23DB813D8);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004E0, &qword_23DB813E0);
  MEMORY[0x28223BE20](v48);
  v16 = &v46 - v15;
  *v11 = sub_23DB6F5BC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004E8, &qword_23DB813E8);
  sub_23DB16C90(a1, &v11[*(v17 + 44)]);
  sub_23DB6F9DC();
  v18 = sub_23DA17B80(&qword_27E3004F0, &qword_27E3004D0, &qword_23DB813D0, MEMORY[0x277CE1138]);
  v54 = v9;
  OpaqueTypeConformance2 = v18;
  sub_23DB6FF8C();
  v21 = *(v6 + 8);
  v20 = v6 + 8;
  v21(v8, v5);
  sub_23DA17988(v11, &qword_27E3004D0, &qword_23DB813D0);
  v51 = a1;
  v22 = *(a1 + 8);
  v23 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = *(type metadata accessor for CommandToPractice(0) - 8);
  v20 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v26 = (v24 + v20);
  v27 = *(v24 + v20 + 18);
  v47 = v20;
  if (v27 != 1)
  {
    v38 = *v26;
    v40 = v26[1];

    goto LABEL_7;
  }

  if (qword_27E2FBBF0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    (*(*qword_27E30A6D8 + 304))(0xD000000000000025, 0x800000023DB8D6F0);
    v28 = [objc_opt_self() mainBundle];
    v29 = sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    result = swift_allocObject();
    *(result + 16) = xmmword_23DB73BA0;
    v31 = *(v22 + v23);
    if (!*(v31 + 16))
    {
      break;
    }

    v32 = result;
    v33 = (v31 + v20);
    v20 = v29;
    v34 = v16;
    v35 = OpaqueTypeConformance2;
    v36 = *v33;
    v37 = v33[1];
    *(result + 56) = MEMORY[0x277D837D0];
    *(result + 64) = sub_23DA40598();
    *(v32 + 32) = v36;
    *(v32 + 40) = v37;
    OpaqueTypeConformance2 = v35;
    v16 = v34;

    v38 = sub_23DB708CC();
    v40 = v39;

LABEL_7:
    v59 = v38;
    v60 = v40;
    v57 = v54;
    v58 = OpaqueTypeConformance2;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_23DA16E70();
    v41 = v56;
    sub_23DB6FF1C();

    (*(v55 + 8))(v14, v41);
    v42 = *(v22 + v23);
    if (*(v42 + 16))
    {
      LOBYTE(v59) = *(v42 + v47 + 18);
      v43 = v52;
      sub_23DB0D4A4(v51, v52, type metadata accessor for PracticeVOKeyboardCommandDefaultView);
      v44 = (*(v49 + 80) + 16) & ~*(v49 + 80);
      v45 = swift_allocObject();
      sub_23DB25CF0(v43, v45 + v44, type metadata accessor for PracticeVOKeyboardCommandDefaultView);
      sub_23DB2B4B4();
      sub_23DB700BC();

      return sub_23DA17988(v16, &qword_27E3004E0, &qword_23DB813E0);
    }

LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB16C90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v3 = sub_23DB702CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300500, &qword_23DB813F0);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v42[-v9];
  v11 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v58);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DA17B80(&qword_27E300508, &qword_27E2FC458, &qword_23DB74800, MEMORY[0x277D83980]);
  sub_23DB0C6AC(&qword_27E300510, type metadata accessor for KeyboardKey, &unk_23DB75108);
  sub_23DA539D0();
  v52 = v10;
  sub_23DB704FC();
  sub_23DB7062C();
  sub_23DB6F10C();
  v12 = v65;
  v13 = v69;
  v47 = v67;
  v48 = v70;
  v76 = 1;
  v75 = v66;
  v74 = v68;
  sub_23DB702BC();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v14 = sub_23DB702EC();

  (*(v4 + 8))(v6, v3);
  v49 = sub_23DB701AC();
  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  result = swift_beginAccess();
  v17 = *(v11 + v15);
  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = *(type metadata accessor for CommandToPractice(0) - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  if (*(v17 + v19 + 18) == 1)
  {
    result = sub_23DB7019C();
  }

  else
  {
    result = sub_23DB7014C();
  }

  v20 = *(v11 + v15);
  if (!*(v20 + 16))
  {
    goto LABEL_11;
  }

  if (*(v20 + v19 + 18))
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.4;
  }

  v46 = result;
  sub_23DB7062C();
  sub_23DB6F10C();
  v64 = 1;
  *&v63[6] = v71;
  *&v63[22] = v72;
  *&v63[38] = v73;
  v22 = v51;
  v45 = v14;
  v23 = *(v51 + 16);
  v25 = v53;
  v24 = v54;
  v23(v54, v52, v53);
  v44 = v13;
  v26 = v76;
  v43 = v75;
  v27 = v25;
  LOBYTE(v25) = v74;
  v28 = v50;
  v23(v50, v24, v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300518, &qword_23DB81460);
  v30 = &v28[*(v29 + 48)];
  *v30 = 0;
  v30[8] = v26;
  *(v30 + 2) = v12;
  v30[24] = v43;
  *(v30 + 4) = v47;
  v30[40] = v25;
  v31 = v45;
  v32 = v48;
  v33 = v49;
  *(v30 + 6) = v44;
  *(v30 + 7) = v32;
  v34 = &v28[*(v29 + 64)];
  *&v55 = v31;
  *(&v55 + 1) = v33;
  v35 = v46;
  *&v56 = v46;
  *(&v56 + 1) = v21;
  *&v57[0] = 0;
  WORD4(v57[0]) = 1;
  *(&v57[1] + 10) = *&v63[16];
  *(&v57[2] + 10) = *&v63[32];
  *(&v57[3] + 1) = *&v63[46];
  *(v57 + 10) = *v63;
  v36 = v56;
  *v34 = v55;
  v34[1] = v36;
  v37 = v57[0];
  v38 = v57[1];
  v39 = v57[3];
  v34[4] = v57[2];
  v34[5] = v39;
  v34[2] = v37;
  v34[3] = v38;
  sub_23DA0E2B4(&v55, v58, &qword_27E300520, &qword_23DB81468);
  v40 = *(v22 + 8);
  v41 = v53;
  v40(v52, v53);
  v58[0] = v31;
  v58[1] = v33;
  v58[2] = v35;
  *&v58[3] = v21;
  v58[4] = 0;
  v59 = 1;
  v60 = *v63;
  v61 = *&v63[16];
  v62[0] = *&v63[32];
  *(v62 + 14) = *&v63[46];
  sub_23DA17988(v58, &qword_27E300520, &qword_23DB81468);
  return (v40)(v54, v41);
}

uint64_t sub_23DB172AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  KeyPath = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 0;
}

uint64_t sub_23DB17320(uint64_t a1)
{
  v2 = sub_23DB707AC();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23DB707CC();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PracticeVOKeyboardCommandDefaultView(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = sub_23DB707EC();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(aBlock);

  if (LOBYTE(aBlock[0]) == 1)
  {
    v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    result = swift_beginAccess();
    v17 = *(v14 + v16);
    if (*(v17 + 16))
    {
      v18 = type metadata accessor for CommandToPractice(0);
      v19 = *(v18 - 8);
      result = v18 - 8;
      if (*(v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + 18) == 1)
      {
        sub_23DA5295C();
        v28[0] = sub_23DB70AEC();
        sub_23DB707DC();
        sub_23DB707FC();
        v20 = *(v8 + 8);
        v28[1] = v8 + 8;
        v29 = v20;
        v21 = v31;
        v20(v10, v31);
        sub_23DB0D4A4(a1, v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeVOKeyboardCommandDefaultView);
        v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v23 = swift_allocObject();
        sub_23DB25CF0(v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PracticeVOKeyboardCommandDefaultView);
        aBlock[4] = sub_23DB2B740;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23DABB3DC;
        aBlock[3] = &block_descriptor_649;
        v24 = _Block_copy(aBlock);

        sub_23DB707BC();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_23DB0C6AC(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
        sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
        v25 = v33;
        v26 = v36;
        sub_23DB70C0C();
        v27 = v28[0];
        MEMORY[0x23EEF6E80](v13, v5, v25, v24);
        _Block_release(v24);

        (*(v35 + 8))(v25, v26);
        (*(v32 + 8))(v5, v34);
        return v29(v13, v21);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23DB17880(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;

    sub_23DABB0B8(&v2);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB17930@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004C0, &qword_23DB813C0);
  sub_23DB6F91C();
  v4 = a1 + *(v3 + 48);
  sub_23DB7037C();
  *v4 = v8;
  *(v4 + 8) = v9;
  *(a1 + 16) = 0x4020000000000000;
  v5 = a1 + *(v3 + 40);
  *v5 = sub_23DB6F68C();
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004C8, &qword_23DB813C8);
  return sub_23DB165EC(v1, v5 + *(v6 + 44));
}

uint64_t sub_23DB17A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[1] = a3;
  v11[0] = type metadata accessor for PracticeVOKeyboardCommandDefaultView(0);
  MEMORY[0x28223BE20](v11[0]);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  sub_23DB6F91C();
  type metadata accessor for Page.PracticeVOKeyboardCommand(0);
  sub_23DB0C6AC(&qword_27E2FF760, type metadata accessor for Page.PracticeVOKeyboardCommand, &protocol conformance descriptor for Page);
  *v6 = sub_23DB6F1EC();
  *(v6 + 1) = v8;
  type metadata accessor for NavigationModel(0);
  sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  *(v6 + 2) = sub_23DB6F39C();
  *(v6 + 3) = v9;
  *(v6 + 4) = KeyPath;
  v6[40] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v12);

  v12[3] = v12[0];
  v12[4] = v12[1];
  type metadata accessor for Page.PracticeVOKeyboardCommandWithAlert(0);
  sub_23DB0C6AC(&qword_27E2FFD20, type metadata accessor for Page.PracticeVOKeyboardCommandWithAlert, &protocol conformance descriptor for Page);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v11[8] = a1;
  v11[9] = a2;
  v11[4] = a1;
  v11[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004A8, &qword_23DB81288);
  sub_23DB0C6AC(&qword_27E2FFD18, type metadata accessor for PracticeVOKeyboardCommandDefaultView, &unk_23DB810D0);
  sub_23DA16E70();
  sub_23DA17B80(&qword_27E3004B0, &qword_27E3004A8, &qword_23DB81288, MEMORY[0x277CE14C0]);
  sub_23DB7003C();

  return sub_23DB0D50C(v6, type metadata accessor for PracticeVOKeyboardCommandDefaultView);
}