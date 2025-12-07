uint64_t sub_23DB532A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(a2 + 120);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (!sub_23DB70C3C())
  {
  }

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v8 = type metadata accessor for CommandToPractice(0);
  v9 = *(*(v8 - 1) + 72);
  v10 = (*(*(v8 - 1) + 80) + 32) & ~*(*(v8 - 1) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23DB78D60;
  v12 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v11 + v10;
  sub_23DAC962C(v13 + v10, v11 + v10);
  v14 = qword_27E2FBBE0;

  if (v14 != -1)
  {
LABEL_14:
    swift_once();
  }

  v15 = *(a2 + 128);
  swift_beginAccess();
  v35[0] = *(v15 + 40);
  v16 = *(a2 + 120);
  result = swift_beginAccess();
  v17 = *(v16 + 40);
  v33 = v12;
  v34 = v11;
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = MEMORY[0x23EEF70C0](0, v17);

    goto LABEL_9;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
LABEL_9:
    v19 = v2 + v9;
    v20 = [v18 description];
    v21 = sub_23DB708BC();
    v23 = v22;

    v24 = sub_23DAA904C(v35, v21, v23);
    v26 = v25;

    v27 = *(a2 + 128);
    swift_beginAccess();
    LOBYTE(v27) = *(v27 + 40) | 0x80;
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 17) = 186;
    *(v19 + 19) = 0;
    sub_23DB6EA7C();
    v28 = v8[10];
    *(v19 + v28) = 1;
    v29 = v8[11];
    *(v19 + v29) = 1;
    v30 = v8[12];
    v31 = type metadata accessor for KeyboardKey(0);
    (*(*(v31 - 8) + 56))(v19 + v30, 1, 1, v31);
    v32 = (v19 + v8[13]);
    *v32 = 0;
    v32[1] = 0;
    *v19 = v24;
    *(v19 + 8) = v26;

    *(v19 + 16) = v27;
    *(v19 + 19) = 1;
    *v32 = 0;
    v32[1] = 0;

    *(v19 + v28) = 1;
    *(v19 + v29) = 1;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v5 + v33) = v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB53698(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
      v4 = (type metadata accessor for CommandToPractice(0) - 8);
      v24 = *(*v4 + 72);
      v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_23DB78D60;
      v6 = v25 + v5;
      v26[0] = 50;

      v7 = sub_23DAA904C(v26, 0, 0);
      v22 = v8;
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 17) = 186;
      *(v6 + 19) = 0;
      sub_23DB6EA7C();
      v9 = v4[12];
      *(v6 + v9) = 1;
      v10 = v4[13];
      *(v6 + v10) = 1;
      v11 = v4[14];
      v12 = type metadata accessor for KeyboardKey(0);
      v23 = *(*(v12 - 8) + 56);
      v23(v6 + v11, 1, 1, v12);
      v13 = (v6 + v4[15]);
      *v13 = 0;
      v13[1] = 0;
      *v6 = v7;
      *(v6 + 8) = v22;

      *(v6 + 16) = -78;
      *(v6 + 19) = 1;
      *v13 = 0;
      v13[1] = 0;

      *(v6 + v9) = 1;
      *(v6 + v10) = 1;
      v14 = v6 + v24;
      v15 = sub_23DAC7D28(0xD00000000000001ALL, 0x800000023DB8E470);
      v17 = v16;
      *v14 = 0;
      *(v14 + 8) = 0xE000000000000000;
      *(v14 + 17) = 186;
      *(v14 + 19) = 0;
      sub_23DB6EA7C();
      v18 = v4[12];
      *(v14 + v18) = 1;
      v19 = v4[13];
      *(v14 + v19) = 1;
      v23(v14 + v4[14], 1, 1, v12);
      v20 = (v14 + v4[15]);
      *v20 = 0;
      v20[1] = 0;
      *v14 = v15;
      *(v14 + 8) = v17;

      *(v14 + 16) = -72;
      *(v14 + 19) = 0;
      *v20 = 0;
      v20[1] = 0;

      *(v14 + v18) = 1;
      *(v14 + v19) = 1;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v21 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      *(v3 + v21) = v25;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF1C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF1C();
    }
  }

  return result;
}

uint64_t sub_23DB53A6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v123 = *(v1 - 8);
  v124 = v1;
  MEMORY[0x28223BE20](v1);
  v122 = &v99 - v2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v117 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v114 = &v99 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v99 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v128 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v129 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v99 - v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v9 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v11 = &v99 - v10;
  v12 = sub_23DB6EA8C();
  v126 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v115 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v99 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v99 - v18;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v127 = qword_27E30A6B0;
  LOBYTE(v131) = 49;
  v108 = sub_23DAA8EC0(16421, 0xE200000000000000);
  v107 = v20;
  v130 = v0;
  v21 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E3E0);
  LOBYTE(v131) = 49;
  v106 = sub_23DAA8EC0(v21, v22);
  v105 = v23;

  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeSingleButton(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__buttonText;
  *&v131 = 0;
  *(&v131 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v26 = *(v9 + 32);
  v112 = v11;
  v113 = v9 + 32;
  v100 = v26;
  v26(v24 + v25, v11, v125);
  v27 = v19;
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__popoverText;
  v131 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v29 = *(v129 + 32);
  v120 = v6;
  v129 += 32;
  v99 = v29;
  v29(v24 + v28, v8, v6);
  v30 = *(v126 + 16);
  v116 = v27;
  v121 = v12;
  v102 = v126 + 16;
  v101 = v30;
  v30(v16, v27, v12);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v131) = 0;
  v32 = v103;
  sub_23DB6EECC();
  v33 = *(v128 + 32);
  v34 = v104;
  v128 += 32;
  v33(v24 + v31, v32, v104);
  v35 = MEMORY[0x277D84F90];
  v119 = v16;
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v36 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(v24 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v36;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v131 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v38 = v109;
  sub_23DB6EECC();
  (*(v110 + 32))(v24 + v37, v38, v111);
  *(v24 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v131 = 0;
  v40 = v114;
  sub_23DB6EECC();
  (*(v117 + 32))(v24 + v39, v40, v118);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v131) = 0;
  sub_23DB6EECC();
  v33(v24 + v41, v32, v34);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v117 = xmmword_23DB74320;
  v131 = xmmword_23DB74320;
  sub_23DB6EECC();
  v118 = v33;
  v43 = v120;
  v44 = v99;
  v99(v24 + v42, v8, v120);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v131 = v117;
  sub_23DB6EECC();
  v44(v24 + v45, v8, v43);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v131) = 0;
  sub_23DB6EECC();
  v118(v24 + v46, v32, v34);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v131 = 0;
  *(&v131 + 1) = 0xE000000000000000;
  v48 = v112;
  sub_23DB6EECC();
  v100(v24 + v47, v48, v125);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v131 = 0uLL;
  sub_23DB6EECC();
  v44(v24 + v49, v8, v43);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v131 = nullsub_1;
  *(&v131 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v51 = v122;
  sub_23DB6EECC();
  (*(v123 + 32))(v24 + v50, v51, v124);
  v52 = v115;
  v53 = v119;
  v54 = v121;
  v101(v115, v119, v121);
  v55 = Page.init(id:title:text:subPages:iconName:)(v52, v108, v107, v106, v105, MEMORY[0x277D84F90], 0, 0);
  v56 = *(v126 + 8);
  v56(v116, v54);
  v56(v53, v54);
  swift_retain_n();
  v57 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v59 = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v131 = v57;
  *(&v131 + 1) = v59;

  sub_23DB6EF1C();
  v60 = sub_23DB3DDA4();
  v62 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v131 = v60;
  *(&v131 + 1) = v62;
  sub_23DB6EF1C();
  v128 = "onboarding.vc.showNames.text";
  v63 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8E400);
  v65 = v64;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v131 = v63;
  *(&v131 + 1) = v65;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v131) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v66 = (type metadata accessor for CommandToPractice(0) - 8);
  v67 = *v66;
  v126 = *(*v66 + 72);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v69 = swift_allocObject();
  v129 = v69;
  *(v69 + 16) = xmmword_23DB78D60;
  v70 = v69 + v68;
  LOBYTE(v131) = 49;
  v71 = sub_23DAA67F0();
  v73 = v72;
  *v70 = 0;
  *(v70 + 8) = 0xE000000000000000;
  *(v70 + 17) = 186;
  *(v70 + 19) = 0;
  sub_23DB6EA7C();
  v74 = v66[12];
  *(v70 + v74) = 1;
  v75 = v66[13];
  *(v70 + v75) = 1;
  v76 = v66[14];
  v77 = type metadata accessor for KeyboardKey(0);
  v78 = *(v77 - 8);
  v79 = *(v78 + 56);
  v125 = v78 + 56;
  v79(v70 + v76, 1, 1, v77);
  v80 = (v70 + v66[15]);
  *v80 = 0;
  v80[1] = 0;
  *v70 = v71;
  *(v70 + 8) = v73;

  *(v70 + 16) = -79;
  *(v70 + 19) = 1;
  *v80 = 0;
  v80[1] = 0;

  *(v70 + v74) = 1;
  *(v70 + v75) = 1;
  v81 = v70 + v126;
  LOBYTE(v131) = 54;
  sub_23DAC7D28(0xD000000000000024, v128 | 0x8000000000000000);
  v82 = sub_23DAA67F0();
  v84 = v83;

  *v81 = 0;
  *(v81 + 8) = 0xE000000000000000;
  *(v81 + 17) = 186;
  *(v81 + 19) = 0;
  sub_23DB6EA7C();
  v85 = v66[12];
  *(v81 + v85) = 1;
  v86 = v66[13];
  *(v81 + v86) = 1;
  v79(v81 + v66[14], 1, 1, v77);
  v87 = (v81 + v66[15]);
  *v87 = 0;
  v87[1] = 0;
  *v81 = v82;
  *(v81 + 8) = v84;

  *(v81 + 16) = -74;
  *(v81 + 19) = 0;
  *v87 = 0;
  v87[1] = 0;

  *(v81 + v85) = 1;
  *(v81 + v86) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v88 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v55 + v88) = v129;

  v89 = swift_allocObject();
  swift_weakInit();
  v90 = swift_allocObject();
  v91 = v130;
  *(v90 + 16) = v89;
  *(v90 + 24) = v91;
  v92 = (v55 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  *v92 = sub_23DB5FABC;
  v92[1] = v90;
  swift_retain_n();

  sub_23DA18BA0(v93, v94);

  v95 = swift_allocObject();
  swift_weakInit();

  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v91;
  v97 = (v55 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v97 = sub_23DB5FAC4;
  v97[1] = v96;

  return v55;
}

uint64_t sub_23DB54A1C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v12);

    v3 = v12[0];
    v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v13 = *(v2 + v4);
    swift_getKeyPath();
    swift_getKeyPath();

    v5 = sub_23DB6EEFC();
    sub_23DAC8040(&v13, v3, v6);
    v5(v12, 0);

    v7 = v13;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v2 + v4) = v7;

    v8 = *(v2 + v4);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = *(type metadata accessor for CommandToPractice(0) - 8);
      if (*(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10 + 18) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v12[0]) = 1;
        sub_23DB6EF1C();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

size_t sub_23DB54CAC()
{
  v140 = type metadata accessor for KeyboardKey(0);
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = (&v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v135 = *(v137 - 1);
  MEMORY[0x28223BE20](v137);
  v134 = &v107 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v132 = *(v3 - 8);
  v133 = v3;
  MEMORY[0x28223BE20](v3);
  v131 = &v107 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v121 = *(v122 - 1);
  MEMORY[0x28223BE20](v122);
  v118 = &v107 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v107 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v8 = &v107 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v9 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v11 = &v107 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v125 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v107 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v107 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v107 - v22;
  v129 = 0xD00000000000001CLL;
  v120 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E310);
  v119 = v24;
  v141 = v0;
  v117 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8E330);
  v116 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeKeyboardCommands(0);
  v26 = swift_allocObject();
  v130 = v13;
  v27 = *(v13 + 16);
  v111 = v27;
  v126 = v23;
  v27(v20, v23, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v142 = 0uLL;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v124 = v9 + 32;
  v109 = v29;
  v29(v26 + v28, v11, v139);
  v128 = v17;
  v127 = v20;
  v123 = v12;
  v114 = v13 + 16;
  v27(v17, v20, v12);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v142) = 0;
  sub_23DB6EECC();
  v31 = *(v107 + 32);
  v32 = v8;
  v33 = v108;
  v31(v26 + v30, v8);
  v34 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v35 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v35;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v142 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v37 = v34;
  v38 = v112;
  sub_23DB6EECC();
  (*(v113 + 32))(v26 + v36, v38, v115);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v37;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v142 = 0;
  v40 = v118;
  sub_23DB6EECC();
  (*(v121 + 32))(v26 + v39, v40, v122);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v142) = 0;
  v42 = v32;
  sub_23DB6EECC();
  (v31)(v26 + v41, v32, v33);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v121 = xmmword_23DB74320;
  v142 = xmmword_23DB74320;
  sub_23DB6EECC();
  v44 = v139;
  v122 = v31;
  v45 = v109;
  v109(v26 + v43, v11, v139);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v142 = v121;
  sub_23DB6EECC();
  v45(v26 + v46, v11, v44);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v142) = 0;
  sub_23DB6EECC();
  v122(v26 + v47, v42, v33);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v142 = 0;
  *(&v142 + 1) = 0xE000000000000000;
  v49 = v131;
  sub_23DB6EECC();
  (*(v132 + 32))(v26 + v48, v49, v133);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v142 = 0uLL;
  sub_23DB6EECC();
  v45(v26 + v50, v11, v44);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v142 = nullsub_1;
  *(&v142 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v52 = v134;
  sub_23DB6EECC();
  (*(v135 + 32))(v26 + v51, v52, v137);
  v53 = v125;
  v54 = v128;
  v55 = v123;
  v111(v125, v128, v123);
  v56 = Page.init(id:title:text:subPages:iconName:)(v53, v120, v119, v117, v116, MEMORY[0x277D84F90], 0, 0);
  v57 = *(v130 + 8);
  v57(v54, v55);
  v57(v127, v55);
  v57(v126, v55);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v139 = qword_27E30A6B0;
  swift_retain_n();
  v58 = sub_23DAC7D28(v129, 0x800000023DB8E110);
  v60 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v142 = v58;
  *(&v142 + 1) = v60;

  sub_23DB6EF1C();
  v61 = sub_23DB3DDA4();
  v63 = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v142 = v61;
  *(&v142 + 1) = v63;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v142 = xmmword_23DB7E100;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v64 = (type metadata accessor for CommandToPractice(0) - 8);
  v65 = *(*v64 + 72);
  v66 = (*(*v64 + 80) + 32) & ~*(*v64 + 80);
  v134 = (2 * v65);
  v67 = swift_allocObject();
  v135 = v67;
  *(v67 + 16) = xmmword_23DB76A80;
  v130 = v66;
  v68 = v67 + v66;
  LOBYTE(v142) = 20;
  sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E350);
  v69 = sub_23DAA67F0();
  v133 = v70;

  v71 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E350);
  v72 = v136;
  *v136 = v71;
  *(v72 + 8) = v73;
  *(v72 + 32) = 0;
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  v74 = v140;
  sub_23DB6EA7C();
  *v68 = 0;
  *(v68 + 8) = 0xE000000000000000;
  *(v68 + 17) = 186;
  *(v68 + 19) = 0;
  sub_23DB6EA7C();
  *(v68 + v64[12]) = 1;
  *(v68 + v64[13]) = 1;
  v75 = v64[14];
  v76 = *(v138 + 7);
  v76(v68 + v75, 1, 1, v74);
  v137 = v76;
  v77 = (v68 + v64[15]);
  *v77 = 0;
  v77[1] = 0;
  v78 = v133;
  *v68 = v69;
  *(v68 + 8) = v78;

  *(v68 + 16) = -107;
  sub_23DA17988(v68 + v75, &qword_27E2FC4F0, &qword_23DB74AB8);
  v138 = type metadata accessor for KeyboardKey;
  sub_23DB60970(v72, v68 + v75, type metadata accessor for KeyboardKey);
  v76(v68 + v75, 0, 1, v74);
  v131 = v65;
  v79 = &v65[v68];
  LOBYTE(v142) = 20;
  sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E380);
  v80 = sub_23DAA67F0();
  v132 = v81;
  v133 = v80;

  *v72 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E380);
  *(v72 + 8) = v82;
  *(v72 + 32) = 0;
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  v83 = v140;
  sub_23DB6EA7C();
  *v79 = 0;
  *(v79 + 1) = 0xE000000000000000;
  *(v79 + 17) = 186;
  v79[19] = 0;
  sub_23DB6EA7C();
  v79[v64[12]] = 1;
  v79[v64[13]] = 1;
  v84 = v64[14];
  v85 = v137;
  (v137)(&v79[v84], 1, 1, v83);
  v86 = &v79[v64[15]];
  *v86 = 0;
  *(v86 + 1) = 0;
  v87 = v132;
  *v79 = v133;
  *(v79 + 1) = v87;

  v79[16] = -105;
  sub_23DA17988(&v79[v84], &qword_27E2FC4F0, &qword_23DB74AB8);
  sub_23DB60970(v72, &v79[v84], v138);
  v85(&v79[v84], 0, 1, v83);
  v88 = &v134[v68];
  LOBYTE(v142) = 20;
  sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E3B0);
  v139 = sub_23DAA67F0();
  v134 = v89;

  *v72 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E3B0);
  *(v72 + 8) = v90;
  *(v72 + 32) = 0;
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  sub_23DB6EA7C();
  *v88 = 0;
  *(v88 + 1) = 0xE000000000000000;
  *(v88 + 17) = 186;
  v88[19] = 0;
  sub_23DB6EA7C();
  v88[v64[12]] = 1;
  v88[v64[13]] = 1;
  v91 = v64[14];
  v92 = v137;
  (v137)(&v88[v91], 1, 1, v83);
  v93 = &v88[v64[15]];
  *v93 = 0;
  *(v93 + 1) = 0;
  v94 = v134;
  *v88 = v139;
  *(v88 + 1) = v94;

  v88[16] = -106;
  sub_23DA17988(&v88[v91], &qword_27E2FC4F0, &qword_23DB74AB8);
  sub_23DB60970(v72, &v88[v91], v138);
  v92(&v88[v91], 0, 1, v83);
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v95 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v56 + v95) = v135;

  v96 = *(v56 + v95);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DAC8B24(v96);
    v96 = result;
  }

  if (v96[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v131[v96 + v130 + 17] = -104;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v56 + v95) = v96;

    v98 = swift_allocObject();
    swift_weakInit();
    v99 = swift_allocObject();
    v100 = v141;
    *(v99 + 16) = v98;
    *(v99 + 24) = v100;
    v101 = (v56 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v102 = *v101;
    v103 = v101[1];
    *v101 = sub_23DB5FA0C;
    v101[1] = v99;

    sub_23DA18BA0(v102, v103);

    v104 = swift_allocObject();
    swift_weakInit();

    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = v100;
    v106 = (v56 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    *v106 = sub_23DB5FA14;
    v106[1] = v105;

    return v56;
  }

  return result;
}

uint64_t sub_23DB55F38(uint64_t a1)
{
  v1 = sub_23DB707AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DB707CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23DB707EC();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v37 = v6;
    v38 = v4;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(aBlock);

    if (LOBYTE(aBlock[0]) == 1)
    {
      v36 = v14;
      v32 = v8;
      v33 = v5;
      v34 = v2;
      v35 = v1;
      v17 = swift_allocObject();
      *(v17 + 16) = 1;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(aBlock);

      v18 = aBlock[0];
      v19 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v42 = *(v16 + v19);
      swift_getKeyPath();
      swift_getKeyPath();

      v20 = sub_23DB6EEFC();
      sub_23DAC8040(&v42, v18, v21);
      v20(aBlock, 0);

      v22 = v42;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v16 + v19) = v22;

      if (qword_27E2FBBE0 != -1)
      {
        swift_once();
      }

      v23 = sub_23DB6BB30(&unk_284FE7F08);
      sub_23DA17988(&unk_284FE7F28, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8(v23);

      sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
      v31 = sub_23DB70AEC();
      sub_23DB707DC();
      sub_23DB707FC();
      v39 = *(v39 + 8);
      (v39)(v11, v40);
      v24 = swift_allocObject();
      *(v24 + 16) = v16;
      *(v24 + 24) = v17;
      aBlock[4] = sub_23DB5FA4C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DABB3DC;
      aBlock[3] = &block_descriptor_9;
      v25 = _Block_copy(aBlock);

      v26 = v32;
      sub_23DB707BC();
      v42 = MEMORY[0x277D84F90];
      sub_23DB60828(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
      v27 = v38;
      v28 = v35;
      sub_23DB70C0C();
      v29 = v36;
      v30 = v31;
      MEMORY[0x23EEF6E80](v36, v26, v27, v25);
      _Block_release(v25);

      (*(v34 + 8))(v27, v28);
      (*(v37 + 8))(v26, v33);
      (v39)(v29, v40);
    }
  }

  return result;
}

uint64_t sub_23DB565E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = (&v39 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v39 - v15);
  v17 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v18 = *(*(a1 + v17) + 16);
  v43 = *(a1 + v17);

  v42 = a2;
  result = swift_beginAccess();
  v20 = 0;
  v50 = (v9 + 48);
  v51 = (v9 + 56);
  v48 = v7;
  v40 = a1;
  v47 = v8;
  v46 = v13;
  v45 = v16;
  v49 = v17;
  for (i = v18; ; v18 = i)
  {
    if (v20 == v18)
    {
      v21 = 1;
      v20 = v18;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v20 >= *(v43 + 16))
      {
        goto LABEL_27;
      }

      v22 = v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20;
      v23 = *(v8 + 48);
      v24 = v41;
      *v41 = v20;
      sub_23DAC962C(v22, v24 + v23);
      sub_23DA17A54(v24, v13, &qword_27E2FE1C0, &qword_23DB7A440);
      v21 = 0;
      ++v20;
    }

    (*v51)(v13, v21, 1, v8);
    sub_23DA17A54(v13, v16, &qword_27E2FE1C8, &qword_23DB7A448);
    result = (*v50)(v16, 1, v8);
    if (result == 1)
    {
      break;
    }

    v25 = *v16;
    if ((*v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v26 = *(a1 + v17);
    if (v25 >= *(v26 + 16))
    {
      goto LABEL_24;
    }

    v27 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v28 = *(v53 + 72) * v25;
    sub_23DAC962C(v26 + v27 + v28, v7);
    v29 = &v7[*(v52 + 48)];
    v30 = type metadata accessor for KeyboardKey(0);
    v31 = *(*(v30 - 8) + 48);
    if (v31(v29, 1, v30))
    {
      result = sub_23DB5F554(v7);
    }

    else
    {
      v32 = v29[32];
      result = sub_23DB5F554(v7);
      if (v32)
      {
        v33 = sub_23DA1FF60(v55);
        v34 = sub_23DB3C59C(v54, v25);
        v36 = v35 + *(v52 + 48);
        if (!v31(v36, 1, v30))
        {
          *(v36 + 32) = 0;
        }

        v34(v54, 0);
        result = (v33)(v55, 0);
        a1 = v40;
      }
    }

    v17 = v49;
    v37 = *(a1 + v49);
    if (v25 >= *(v37 + 16))
    {
      goto LABEL_25;
    }

    if ((*(v37 + v27 + v28 + 18) & 1) == 0)
    {
      *(v42 + 16) = 0;
    }

    v8 = v47;
    v16 = v45;
    result = sub_23DB5F554(v45 + *(v47 + 48));
    v7 = v48;
    v13 = v46;
  }

  v38 = v42;
  result = swift_beginAccess();
  if (*(v38 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v54[0]) = 1;

    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DB56B2C()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E220);
  v7 = v6;
  v8 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8E250);
  v10 = v9;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeShortText(0);
  swift_allocObject();
  v11 = sub_23DA24B98(v4, v5, v7, v8, v10, MEMORY[0x277D84F90], 0, 0);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v57[1] = qword_27E30A6B0;
  swift_retain_n();
  v12 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v14 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v12;
  v64 = v14;

  sub_23DB6EF1C();
  v60 = v1;
  v15 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8AED0);
  v17 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v15;
  v64 = v17;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v63) = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v63) = 0;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v18 = (type metadata accessor for CommandToPractice(0) - 8);
  v19 = *v18;
  v58 = *(*v18 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v59 = v21;
  *(v21 + 16) = xmmword_23DB78D60;
  v22 = v21 + v20;
  LOBYTE(v63) = 20;
  sub_23DAC7D28(0xD00000000000002BLL, 0x800000023DB8E280);
  v23 = sub_23DAA67F0();
  v25 = v24;

  *v22 = 0;
  *(v22 + 8) = 0xE000000000000000;
  *(v22 + 17) = 186;
  *(v22 + 19) = 0;
  sub_23DB6EA7C();
  v26 = v18[12];
  *(v22 + v26) = 1;
  v27 = v18[13];
  *(v22 + v27) = 1;
  v28 = v18[14];
  v29 = type metadata accessor for KeyboardKey(0);
  v57[0] = *(*(v29 - 8) + 56);
  (v57[0])(v22 + v28, 1, 1, v29);
  v30 = (v22 + v18[15]);
  *v30 = 0;
  v30[1] = 0;
  *v22 = v23;
  *(v22 + 8) = v25;

  *(v22 + 16) = -102;
  *(v22 + 19) = 1;
  *v30 = 0;
  v30[1] = 0;

  *(v22 + v26) = 1;
  *(v22 + v27) = 1;
  v31 = v22 + v58;
  LOBYTE(v63) = 20;
  sub_23DAC7D28(0xD00000000000002BLL, 0x800000023DB8E2B0);
  v32 = sub_23DAA67F0();
  v34 = v33;

  *v31 = 0;
  *(v31 + 8) = 0xE000000000000000;
  *(v31 + 17) = 186;
  *(v31 + 19) = 0;
  sub_23DB6EA7C();
  v35 = v18[12];
  *(v31 + v35) = 1;
  v36 = v18[13];
  *(v31 + v36) = 1;
  (v57[0])(v31 + v18[14], 1, 1, v29);
  v37 = (v31 + v18[15]);
  *v37 = 0;
  v37[1] = 0;
  *v31 = v32;
  *(v31 + 8) = v34;

  *(v31 + 16) = -103;
  *(v31 + 19) = 1;
  *v37 = 0;
  v37[1] = 0;

  *(v31 + v35) = 1;
  *(v31 + v36) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v11 + v38) = v59;

  v39 = v60;
  v40 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8E2E0);
  v42 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v40;
  v62 = v42;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v61);

  v43 = v61;
  v44 = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v43;
  v62 = v44;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v61);

  v45 = v61;
  v46 = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v45;
  v62 = v46;

  sub_23DB6EF1C();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = v39;
  v49 = v39;
  v50 = (v11 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  *v50 = sub_23DB61064;
  v50[1] = v48;
  swift_retain_n();

  sub_23DA18BA0(v51, v52);

  v53 = swift_allocObject();
  swift_weakInit();

  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v49;
  v55 = (v11 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v55 = sub_23DB5F9E4;
  v55[1] = v54;

  return v11;
}

uint64_t sub_23DB573C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v32 = (&v31 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v31 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v36);

    if (LOBYTE(v36[0]) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(v36);

      v31 = v2;
      v11 = v36[0];
      v12 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v37 = *(v10 + v12);
      swift_getKeyPath();
      swift_getKeyPath();

      v13 = sub_23DB6EEFC();
      sub_23DAC8040(&v37, v11, v14);
      v13(v36, 0);

      v15 = v37;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v10 + v12) = v15;

      v16 = *(v10 + v12);
      v17 = *(v16 + 16);
      v33 = v12;
      v34 = (v31 + 56);
      v18 = (v31 + 48);

      i = 0;
      v20 = v35;
      if (v17)
      {
        goto LABEL_5;
      }

LABEL_4:
      v21 = 1;
      for (i = v17; ; ++i)
      {
        (*v34)(v6, v21, 1, v1);
        sub_23DA17A54(v6, v20, &qword_27E2FE1C8, &qword_23DB7A448);
        result = (*v18)(v20, 1, v1);
        if (result == 1)
        {

          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v36[0]) = 1;
          return sub_23DB6EF1C();
        }

        v26 = *v20;
        if ((*v20 & 0x8000000000000000) != 0)
        {
          break;
        }

        v27 = *(v10 + v33);
        if (v26 >= *(v27 + 16))
        {
          goto LABEL_19;
        }

        v28 = v1;
        v29 = *(v1 + 48);
        v30 = *(type metadata accessor for CommandToPractice(0) - 8);
        if ((*(v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26 + 18) & 1) == 0)
        {

          return sub_23DB5F554(&v35[v29]);
        }

        v20 = v35;
        result = sub_23DB5F554(&v35[v29]);
        v1 = v28;
        if (i == v17)
        {
          goto LABEL_4;
        }

LABEL_5:
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (i >= *(v16 + 16))
        {
          goto LABEL_21;
        }

        v22 = *(type metadata accessor for CommandToPractice(0) - 8);
        v23 = v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * i;
        v24 = *(v1 + 48);
        v25 = v32;
        *v32 = i;
        sub_23DAC962C(v23, v25 + v24);
        sub_23DA17A54(v25, v6, &qword_27E2FE1C0, &qword_23DB7A440);
        v21 = 0;
        v20 = v35;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DB57960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = (&v46 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v54 = a3;
    v55 = a4;
    v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v17 = result;
    swift_beginAccess();
    v56 = v16;
    v18 = *(v17 + v16);
    KeyPath = swift_getKeyPath();
    v20 = swift_getKeyPath();

    v53 = KeyPath;
    v52 = v20;
    v21 = v18;
    v51 = sub_23DB6EEFC();
    v47 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v57 = v17;
    v50 = v23;
    v49 = v24;
    v48 = sub_23DB6EEFC();
    v46 = v25;

    v26 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v27 = 0;
    v28 = (v7 + 7);
    v59 = v21;
    v21 = v21[2];
    v7 += 6;
    v29 = &qword_27E2FE1C8;
    if (!v21)
    {
LABEL_4:
      v30 = 1;
      v27 = v21;
      goto LABEL_7;
    }

    while (1)
    {
      v31 = v14;
      v14 = v7;
      v7 = v28;
      v32 = v21;
      v21 = v26;
      v33 = v29;
      v34 = v59;
      if (v27 >= v59[2])
      {
        goto LABEL_18;
      }

      v35 = *(type metadata accessor for CommandToPractice(0) - 8);
      v60 = (v27 + 1);
      v36 = v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27;
      v37 = *(v6 + 48);
      v38 = v58;
      *v58 = v27;
      sub_23DAC962C(v36, v38 + v37);
      sub_23DA17A54(v38, v11, &qword_27E2FE1C0, &qword_23DB7A440);
      v30 = 0;
      v27 = v60;
      v29 = v33;
      v26 = v21;
      v21 = v32;
      v28 = v7;
      v7 = v14;
      v14 = v31;
LABEL_7:
      (*v28)(v11, v30, 1, v6);
      sub_23DA17A54(v11, v14, v29, &qword_23DB7A448);
      if ((*v7)(v14, 1, v6) == 1)
      {
        break;
      }

      v39 = *v14;
      if ((*v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v26 = sub_23DAC8B24(v21);
        goto LABEL_3;
      }

      if (v39 >= v26[2])
      {
        goto LABEL_17;
      }

      v40 = *(type metadata accessor for CommandToPractice(0) - 8);
      v41 = v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39;
      *(v41 + 18) = 0;
      *(v41 + 19) = v39 == 0;
      sub_23DB5F554(v14 + *(v6 + 48));
      if (v27 == v21)
      {
        goto LABEL_4;
      }
    }

    *v46 = 0;
    *v47 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    v42 = sub_23DB6BB30(v54);
    sub_23DA17988(v55, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8(v42);

    v48(v61, 0);

    v51(&v62, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v43 = v57;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v43 + v56) = v26;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v62);

    v44 = v62;
    v45 = v63;
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v44;
    v63 = v45;

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 0;
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DB58010()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - v7;
  v9 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8E0D0);
  v11 = v10;
  v12 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8E0F0);
  v14 = v13;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeShortTextCapitalization(0);
  swift_allocObject();
  (*(v3 + 16))(v5, v8, v2);
  v15 = sub_23DA24B98(v5, v9, v11, v12, v14, MEMORY[0x277D84F90], 0, 0);
  (*(v3 + 8))(v8, v2);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v76 = qword_27E30A6B0;
  swift_retain_n();
  v16 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v18 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  v79 = v16;
  v80 = v18;

  sub_23DB6EF1C();
  v19 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8AED0);
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  v79 = v19;
  v80 = v21;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v79) = 0;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v79) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v22 = (type metadata accessor for CommandToPractice(0) - 8);
  v23 = *(*v22 + 72);
  v24 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
  v71 = 2 * v23;
  v25 = swift_allocObject();
  v72 = v25;
  *(v25 + 16) = xmmword_23DB76A80;
  v26 = v25 + v24;
  LOBYTE(v79) = 40;
  sub_23DAC7D28(0xD000000000000029, 0x800000023DB8E130);
  v27 = sub_23DAA67F0();
  v69 = v28;

  *v26 = 0;
  *(v26 + 8) = 0xE000000000000000;
  *(v26 + 17) = 186;
  *(v26 + 19) = 0;
  sub_23DB6EA7C();
  v29 = v22[12];
  v70 = v1;
  *(v26 + v29) = 1;
  v30 = v22[13];
  *(v26 + v30) = 1;
  v31 = v22[14];
  v74 = type metadata accessor for KeyboardKey(0);
  v32 = *(v74 - 8);
  v73 = *(v32 + 56);
  v75 = v32 + 56;
  v73(v26 + v31, 1, 1, v74);
  v33 = (v26 + v22[15]);
  *v33 = 0;
  v33[1] = 0;
  v34 = v69;
  *v26 = v27;
  *(v26 + 8) = v34;

  *(v26 + 16) = -88;
  *(v26 + 19) = 1;
  *v33 = 0;
  v33[1] = 0;

  *(v26 + v29) = 1;
  *(v26 + v30) = 1;
  v35 = v26 + v23;
  LOBYTE(v79) = 41;
  sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E160);
  v36 = sub_23DAA67F0();
  v38 = v37;

  *v35 = 0;
  *(v35 + 8) = 0xE000000000000000;
  *(v35 + 17) = 186;
  *(v35 + 19) = 0;
  sub_23DB6EA7C();
  v39 = v22[12];
  *(v35 + v39) = 1;
  v40 = v22[13];
  *(v35 + v40) = 1;
  v73(v35 + v22[14], 1, 1, v74);
  v41 = (v35 + v22[15]);
  *v41 = 0;
  v41[1] = 0;
  *v35 = v36;
  *(v35 + 8) = v38;

  *(v35 + 16) = -87;
  *(v35 + 19) = 1;
  *v41 = 0;
  v41[1] = 0;

  *(v35 + v39) = 1;
  *(v35 + v40) = 1;
  v42 = v70;
  v43 = v26 + v71;
  LOBYTE(v79) = 42;
  sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E190);
  v44 = sub_23DAA67F0();
  v46 = v45;

  *v43 = 0;
  *(v43 + 8) = 0xE000000000000000;
  *(v43 + 17) = 186;
  *(v43 + 19) = 0;
  sub_23DB6EA7C();
  v47 = v22[12];
  *(v43 + v47) = 1;
  v48 = v22[13];
  *(v43 + v48) = 1;
  v73(v43 + v22[14], 1, 1, v74);
  v49 = (v43 + v22[15]);
  *v49 = 0;
  v49[1] = 0;
  *v43 = v44;
  *(v43 + 8) = v46;

  *(v43 + 16) = -86;
  *(v43 + 19) = 1;
  *v49 = 0;
  v49[1] = 0;

  *(v43 + v47) = 1;
  *(v43 + v48) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v15 + v50) = v72;

  v51 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E1C0);
  v53 = v52;
  swift_getKeyPath();
  swift_getKeyPath();
  v77 = v51;
  v78 = v53;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v77);

  v54 = v77;
  v55 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  v77 = v54;
  v78 = v55;
  sub_23DB6EF1C();
  v56 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8E1F0);
  v58 = v57;
  swift_getKeyPath();
  swift_getKeyPath();
  v77 = v56;
  v78 = v58;
  sub_23DB6EF1C();
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v42;
  v61 = (v15 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v62 = *v61;
  v63 = v61[1];
  *v61 = sub_23DB61064;
  v61[1] = v60;
  swift_retain_n();

  sub_23DA18BA0(v62, v63);

  v64 = swift_allocObject();
  swift_weakInit();

  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  *(v65 + 24) = v42;
  v66 = (v15 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v66 = sub_23DB5F97C;
  v66[1] = v65;

  return v15;
}

uint64_t sub_23DB589EC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v56 = (&v45 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v45 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v59);

    v12 = v59;
    v13 = v60;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v12;
    v60 = v13;

    sub_23DB6EF1C();
    v14 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v54 = v14;
    v15 = *(v11 + v14);
    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();

    v52 = v17;
    v53 = KeyPath;
    v51 = sub_23DB6EEFC();
    v47 = v18;
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v55 = v11;
    v50 = v19;
    v49 = v20;
    v48 = sub_23DB6EEFC();
    v46 = v21;

    v22 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v23 = 0;
    v24 = (v2 + 7);
    v25 = v15[2];
    v2 += 6;
    if (!v25)
    {
LABEL_4:
      v26 = 1;
      v23 = v25;
      goto LABEL_7;
    }

    while (1)
    {
      if (v23 >= v15[2])
      {
        goto LABEL_18;
      }

      v27 = *(type metadata accessor for CommandToPractice(0) - 8);
      v57 = v23 + 1;
      v28 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23;
      v29 = *(v1 + 48);
      v30 = v2;
      v31 = v24;
      v32 = v9;
      v33 = v25;
      v34 = v1;
      v35 = v6;
      v36 = v22;
      v37 = v15;
      v38 = v56;
      *v56 = v23;
      sub_23DAC962C(v28, v38 + v29);
      v39 = v38;
      v15 = v37;
      v22 = v36;
      v6 = v35;
      v1 = v34;
      v25 = v33;
      v9 = v32;
      v24 = v31;
      v2 = v30;
      sub_23DA17A54(v39, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v26 = 0;
      v23 = v57;
LABEL_7:
      (*v24)(v6, v26, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {
        break;
      }

      v40 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v22 = sub_23DAC8B24(v15);
        goto LABEL_3;
      }

      if (v40 >= v22[2])
      {
        goto LABEL_17;
      }

      v41 = *(type metadata accessor for CommandToPractice(0) - 8);
      v42 = v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      *(v42 + 18) = 0;
      *(v42 + 19) = v40 == 0;
      sub_23DB5F554(v9 + *(v1 + 48));
      if (v23 == v25)
      {
        goto LABEL_4;
      }
    }

    *v46 = 0;
    *v47 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    v43 = sub_23DB6BB30(&unk_284FE7FC8);
    sub_23DA17988(&unk_284FE7FE8, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8(v43);

    v48(v58, 0);

    v51(&v59, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v44 = v55;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v44 + v54) = v22;

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v59) = 0;
    sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DB59088()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8E040);
  v9 = v8;
  v10 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E070);
  v12 = v11;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v13 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22[0]) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v14 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8E0A0);
  v16 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v22[0] = v14;
  *(&v22[0] + 1) = v16;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v22[0] = xmmword_23DB82C40;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23DB7A030;
  *(v17 + 32) = sub_23DB3F334();
  *(v17 + 40) = sub_23DB40E20();
  *(v17 + 48) = sub_23DB3E160();
  *(v17 + 56) = sub_23DB455D0();
  *(v17 + 64) = sub_23DB5A3A8();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v22[0] = v17;
  sub_23DB6EF1C();
  v18 = v13 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title;
  swift_beginAccess();
  v19 = *v18;
  v20 = *(v18 + 8);

  sub_23DB5A0A0(v13, v19, v20);

  return v13;
}

uint64_t sub_23DB5940C()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8DFB0);
  v9 = v8;
  v10 = sub_23DAC7D28(0xD000000000000023, 0x800000023DB8DFE0);
  v12 = v11;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v13 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22[0]) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v14 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8E010);
  v16 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v22[0] = v14;
  *(&v22[0] + 1) = v16;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v22[0] = xmmword_23DB82C50;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23DB7A060;
  *(v17 + 32) = sub_23DB421CC();
  *(v17 + 40) = sub_23DB470A8();
  *(v17 + 48) = sub_23DB48054();
  *(v17 + 56) = sub_23DB49978();
  *(v17 + 64) = sub_23DB4B704();
  *(v17 + 72) = sub_23DB4CE34();
  *(v17 + 80) = sub_23DB5AC84();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v22[0] = v17;
  sub_23DB6EF1C();
  v18 = v13 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title;
  swift_beginAccess();
  v19 = *v18;
  v20 = *(v18 + 8);

  sub_23DB5A0A0(v13, v19, v20);

  return v13;
}

uint64_t sub_23DB597A0()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = sub_23DAC7D28(0xD00000000000001FLL, 0x800000023DB8DF20);
  v9 = v8;
  v10 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8DF40);
  v12 = v11;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v13 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v28) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v14 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8DF60);
  v16 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v14;
  v29 = v16;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = 0xD000000000000016;
  v29 = 0x800000023DB8DF90;
  sub_23DB6EF1C();
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 shouldShowCapitalizationPage];

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_23DB74310;
    *(v19 + 32) = sub_23DB58010();
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v19;

    sub_23DB6EF1C();
  }

  v20 = sub_23DA1C310(&v28);
  if (*v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DB7E110;
    *(inited + 32) = sub_23DB43FC0();
    *(inited + 40) = sub_23DB4DD20();
    *(inited + 48) = sub_23DB5B560();
    sub_23DB3C864(inited);
  }

  (v20)(&v28, 0);
  v23 = v13 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title;
  swift_beginAccess();
  v24 = *v23;
  v25 = *(v23 + 8);

  sub_23DB5A0A0(v13, v24, v25);

  return v13;
}

uint64_t sub_23DB59C0C()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8DE20);
  v9 = v8;
  v10 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8DE50);
  v12 = v11;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v13 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v14 = objc_opt_self();
  v15 = [v14 currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16)
  {
    v17 = [v14 currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == 1)
    {
      v19 = sub_23DAC7D28(0xD000000000000031, 0x800000023DB8DEA0);
      v21 = v20;
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = v19;
      v32 = v21;

      sub_23DB6EF1C();
    }
  }

  else
  {
    v22 = sub_23DAC7D28(0xD000000000000033, 0x800000023DB8DEE0);
    v24 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v22;
    v32 = v24;

    sub_23DB6EF1C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v31 = 0xD000000000000019;
  v32 = 0x800000023DB8DE80;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_23DB7A080;
  *(v25 + 32) = sub_23DB51C30();
  *(v25 + 40) = sub_23DB53A6C();
  *(v25 + 48) = sub_23DB4F784();
  *(v25 + 56) = sub_23DB54CAC();
  *(v25 + 64) = sub_23DB56B2C();
  *(v25 + 72) = sub_23DB5BE3C();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v25;

  sub_23DB6EF1C();
  v26 = v13 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title;
  swift_beginAccess();
  v27 = *v26;
  v28 = *(v26 + 8);

  sub_23DB5A0A0(v13, v27, v28);

  return v13;
}

uint64_t sub_23DB5A0A0(uint64_t a1, void (*a2)(), uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v18);

  v4 = v18;
  if (v18)
  {
    if (v18 >> 62)
    {
      result = sub_23DB70C3C();
      v5 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        v6 = 0;
        v15 = v4 & 0xC000000000000001;
        do
        {
          if (v15)
          {
            MEMORY[0x23EEF70C0](v6, v4);
          }

          else
          {
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v18 = a2;
          v19 = a3;

          sub_23DB6EF1C();
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v18) = 1;

          sub_23DB6EF1C();
          type metadata accessor for Page.Practice(0);
          if (swift_dynamicCastClass())
          {

            v7 = sub_23DAC7D28(0xD000000000000020, 0x800000023DB8DDD0);
            v9 = v8;
            swift_getKeyPath();
            v10 = v4;
            v11 = v5;
            swift_getKeyPath();
            v18 = v7;
            v19 = v9;

            sub_23DB6EF1C();
            v12 = sub_23DAC7D28(0xD00000000000001FLL, 0x800000023DB8DE00);
            v14 = v13;
            swift_getKeyPath();
            swift_getKeyPath();
            v18 = v12;
            v19 = v14;

            sub_23DB6EF1C();
            swift_getKeyPath();
            swift_getKeyPath();
            v18 = sub_23DB3C238;
            v19 = 0;
            v5 = v11;
            v4 = v10;
            sub_23DB6EF1C();
          }

          ++v6;
        }

        while (v5 != v6);
      }
    }
  }

  return result;
}

uint64_t sub_23DB5A3A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v79 = *(v0 - 8);
  v80 = v0;
  MEMORY[0x28223BE20](v0);
  v78 = &v54 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v73 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v54 - v5;
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = sub_23DB6EA8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = sub_23DAC7D28(0xD00000000000002ALL, 0x800000023DB8DDA0);
  v66 = v23;
  v67 = v22;
  v24 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DD40);
  v64 = v25;
  v65 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v26 = swift_allocObject();
  v70 = v18;
  v71 = v14;
  v27 = *(v14 + 16);
  v69 = v21;
  v72 = v13;
  v60 = v14 + 16;
  v59 = v27;
  v27(v18, v21, v13);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v29 = v9;
  v55 = *(v10 + 32);
  v55(v26 + v28, v12, v9);
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
  *&v81 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v56 + 32))(v26 + v32, v8, v57);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v81 = 0;
  v34 = v58;
  sub_23DB6EECC();
  (*(v61 + 32))(v26 + v33, v34, v62);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v54 = v29;
  v36 = v55;
  v55(v26 + v35, v12, v29);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v81 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v38 = v63;
  sub_23DB6EECC();
  v39 = v75;
  v40 = *(v74 + 32);
  v40(v26 + v37, v38, v75);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v81 = v62;
  sub_23DB6EECC();
  v40(v26 + v41, v38, v39);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v36(v26 + v42, v12, v54);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  v44 = v73;
  sub_23DB6EECC();
  (*(v76 + 32))(v26 + v43, v44, v77);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v81 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v45, v38, v39);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v81 = nullsub_1;
  *(&v81 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v26 + v46, v47, v80);
  v48 = v68;
  v49 = v70;
  v50 = v72;
  v59(v68, v70, v72);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v67, v66, v65, v64, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v71 + 8);
  v52(v49, v50);
  v52(v69, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v81 = 0xD000000000000013;
  *(&v81 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v51;
}

uint64_t sub_23DB5AC84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v79 = *(v0 - 8);
  v80 = v0;
  MEMORY[0x28223BE20](v0);
  v78 = &v54 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v73 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v54 - v5;
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = sub_23DB6EA8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = sub_23DAC7D28(0xD00000000000002CLL, 0x800000023DB8DD70);
  v66 = v23;
  v67 = v22;
  v24 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DD40);
  v64 = v25;
  v65 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v26 = swift_allocObject();
  v70 = v18;
  v71 = v14;
  v27 = *(v14 + 16);
  v69 = v21;
  v72 = v13;
  v60 = v14 + 16;
  v59 = v27;
  v27(v18, v21, v13);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v29 = v9;
  v55 = *(v10 + 32);
  v55(v26 + v28, v12, v9);
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
  *&v81 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v56 + 32))(v26 + v32, v8, v57);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v81 = 0;
  v34 = v58;
  sub_23DB6EECC();
  (*(v61 + 32))(v26 + v33, v34, v62);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v54 = v29;
  v36 = v55;
  v55(v26 + v35, v12, v29);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v81 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v38 = v63;
  sub_23DB6EECC();
  v39 = v75;
  v40 = *(v74 + 32);
  v40(v26 + v37, v38, v75);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v81 = v62;
  sub_23DB6EECC();
  v40(v26 + v41, v38, v39);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v36(v26 + v42, v12, v54);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  v44 = v73;
  sub_23DB6EECC();
  (*(v76 + 32))(v26 + v43, v44, v77);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v81 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v45, v38, v39);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v81 = nullsub_1;
  *(&v81 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v26 + v46, v47, v80);
  v48 = v68;
  v49 = v70;
  v50 = v72;
  v59(v68, v70, v72);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v67, v66, v65, v64, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v71 + 8);
  v52(v49, v50);
  v52(v69, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v81 = 0xD000000000000013;
  *(&v81 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v51;
}

uint64_t sub_23DB5B560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v79 = *(v0 - 8);
  v80 = v0;
  MEMORY[0x28223BE20](v0);
  v78 = &v54 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v73 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v54 - v5;
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = sub_23DB6EA8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8DD10);
  v66 = v23;
  v67 = v22;
  v24 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DD40);
  v64 = v25;
  v65 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v26 = swift_allocObject();
  v70 = v18;
  v71 = v14;
  v27 = *(v14 + 16);
  v69 = v21;
  v72 = v13;
  v60 = v14 + 16;
  v59 = v27;
  v27(v18, v21, v13);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v29 = v9;
  v55 = *(v10 + 32);
  v55(v26 + v28, v12, v9);
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
  *&v81 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v56 + 32))(v26 + v32, v8, v57);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v81 = 0;
  v34 = v58;
  sub_23DB6EECC();
  (*(v61 + 32))(v26 + v33, v34, v62);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v54 = v29;
  v36 = v55;
  v55(v26 + v35, v12, v29);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v81 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v38 = v63;
  sub_23DB6EECC();
  v39 = v75;
  v40 = *(v74 + 32);
  v40(v26 + v37, v38, v75);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v81 = v62;
  sub_23DB6EECC();
  v40(v26 + v41, v38, v39);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v36(v26 + v42, v12, v54);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  v44 = v73;
  sub_23DB6EECC();
  (*(v76 + 32))(v26 + v43, v44, v77);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v81 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v45, v38, v39);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v81 = nullsub_1;
  *(&v81 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v26 + v46, v47, v80);
  v48 = v68;
  v49 = v70;
  v50 = v72;
  v59(v68, v70, v72);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v67, v66, v65, v64, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v71 + 8);
  v52(v49, v50);
  v52(v69, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v81 = 0xD000000000000013;
  *(&v81 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v51;
}

uint64_t sub_23DB5BE3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v79 = *(v0 - 8);
  v80 = v0;
  MEMORY[0x28223BE20](v0);
  v78 = &v54 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v73 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v54 - v5;
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = sub_23DB6EA8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8DC90);
  v66 = v23;
  v67 = v22;
  v24 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DCC0);
  v64 = v25;
  v65 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v26 = swift_allocObject();
  v70 = v18;
  v71 = v14;
  v27 = *(v14 + 16);
  v69 = v21;
  v72 = v13;
  v60 = v14 + 16;
  v59 = v27;
  v27(v18, v21, v13);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v29 = v9;
  v55 = *(v10 + 32);
  v55(v26 + v28, v12, v9);
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
  *&v81 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v56 + 32))(v26 + v32, v8, v57);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v81 = 0;
  v34 = v58;
  sub_23DB6EECC();
  (*(v61 + 32))(v26 + v33, v34, v62);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v54 = v29;
  v36 = v55;
  v55(v26 + v35, v12, v29);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v81 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v38 = v63;
  sub_23DB6EECC();
  v39 = v75;
  v40 = *(v74 + 32);
  v40(v26 + v37, v38, v75);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v81 = v62;
  sub_23DB6EECC();
  v40(v26 + v41, v38, v39);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v81) = 0;
  sub_23DB6EECC();
  v36(v26 + v42, v12, v54);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  v44 = v73;
  sub_23DB6EECC();
  (*(v76 + 32))(v26 + v43, v44, v77);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v81 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v45, v38, v39);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v81 = nullsub_1;
  *(&v81 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v78;
  sub_23DB6EECC();
  (*(v79 + 32))(v26 + v46, v47, v80);
  v48 = v68;
  v49 = v70;
  v50 = v72;
  v59(v68, v70, v72);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v67, v66, v65, v64, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v71 + 8);
  v52(v49, v50);
  v52(v69, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v81 = 0xD000000000000013;
  *(&v81 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v51;
}

uint64_t sub_23DB5C718()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v36 = v0;
  v8 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8F040);
  v10 = v9;
  v11 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8EF30);
  v13 = v12;
  sub_23DB6EA7C();
  type metadata accessor for Page.PrimaryTOC(0);
  v14 = (swift_allocObject() + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v14 = 0;
  v14[1] = 0;
  (*(v2 + 16))(v4, v7, v1);
  v15 = Page.init(id:title:text:subPages:iconName:)(v4, v8, v10, v11, v13, MEMORY[0x277D84F90], 0, 0);
  (*(v2 + 8))(v7, v1);
  v16 = (v15 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  *v16 = xmmword_23DB82C60;

  swift_retain_n();
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = xmmword_23DB7A020;
  swift_retain_n();
  sub_23DB6EF1C();
  v17 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8F060);
  v19 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v38 = v17;
  *(&v38 + 1) = v19;
  sub_23DB6EF1C();
  v20 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8F080);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v38 = v20;
  *(&v38 + 1) = v22;
  sub_23DB6EF1C();
  v23 = sub_23DAC7D28(0xD000000000000020, 0x800000023DB8F0A0);
  v25 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v38 = v23;
  *(&v38 + 1) = v25;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38) = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38) = 1;
  sub_23DB6EF1C();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  v29 = (v15 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  *v29 = sub_23DB60F7C;
  v29[1] = v28;

  sub_23DA18BA0(v30, v31);

  v32 = (v15 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v32 = sub_23DB5CDD4;
  v32[1] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_23DB7E0F0;
  *(v33 + 32) = sub_23DB59088();
  *(v33 + 40) = sub_23DB5940C();
  *(v33 + 48) = sub_23DB597A0();
  *(v33 + 56) = sub_23DB59C0C();
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v33;
  sub_23DB6EF1C();
  return v15;
}

uint64_t sub_23DB5CC8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(v6);

      if (v6[0])
      {
        v3 = sub_23DB3D95C();
        v5 = v4;
        swift_getKeyPath();
        swift_getKeyPath();
        v6[0] = v3;
        v6[1] = v5;
        sub_23DB6EF1C();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_23DB5CDD4()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 voiceControlEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 sharedInstance];
    [v3 enableVoiceControl_];
  }
}

uint64_t sub_23DB5CEC0(uint64_t *a1, unint64_t *a2)
{
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v8 = qword_27E30A6B0;
  v9 = *(qword_27E30A6B0 + 16);
  result = swift_beginAccess();
  if (*(v9 + 40) != 1)
  {
    return result;
  }

  v11 = *(v8 + 72);
  swift_beginAccess();
  v12 = *v41;
  if ((*v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = *a1;
  if (v12 >= *(*a1 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = *(v11 + 40);
  result = type metadata accessor for CommandToPractice(0);
  v38 = result;
  v13 = *(result - 8);
  v40 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v37 = *(v13 + 72);
  v3 = v37 * v12;
  v14 = v2 + v40 + v37 * v12;
  v15 = v14[16];
  v16 = v14[17];
  if (v15 < 0)
  {
    v39 = a1;
    LOBYTE(v42[0]) = v11;
    v43 = v15 & 0x7F;
    v23 = VCCommandIdentifier.rawValue.getter();
    v25 = v24;
    v26 = VCCommandIdentifier.rawValue.getter();
    v9 = v27;
    if (v23 == v26 && v25 == v27)
    {
LABEL_14:

      a1 = v39;
      goto LABEL_16;
    }

    v28 = sub_23DB70DBC();

    a1 = v39;
    if (v28)
    {
      goto LABEL_16;
    }
  }

  if ((v16 & 0x80000000) == 0)
  {
    return result;
  }

  v39 = a1;
  LOBYTE(v42[0]) = v11;
  v43 = v16 & 0x7F;
  v17 = VCCommandIdentifier.rawValue.getter();
  v19 = v18;
  v20 = VCCommandIdentifier.rawValue.getter();
  v9 = v21;
  if (v17 == v20 && v19 == v21)
  {
    goto LABEL_14;
  }

  v22 = sub_23DB70DBC();

  a1 = v39;
  if ((v22 & 1) == 0)
  {
    return result;
  }

LABEL_16:
  if (v12 < v2[2])
  {
    if (v14[18])
    {
      return result;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  v2 = sub_23DAC8B24(v2);
LABEL_19:
  if (v12 >= v2[2])
  {
    __break(1u);
LABEL_34:
    result = sub_23DAC8B24(v9);
    v9 = result;
LABEL_26:
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v9 + v40 + v37 * v11 + 19) = 1;
      *a1 = v9;
    }

    return result;
  }

  v29 = v2 + v40 + v3;
  v29[18] = 1;
  *a1 = v2;
  v30 = v38;
  sub_23DB5F5B0(&v29[*(v38 + 48)], v7);
  v31 = type metadata accessor for KeyboardKey(0);
  v32 = *(*(v31 - 8) + 48);
  v33 = v32(v7, 1, v31);
  result = sub_23DA17988(v7, &qword_27E2FC4F0, &qword_23DB74AB8);
  if (v33 != 1)
  {
    v34 = sub_23DB3C59C(v42, v12);
    v36 = v35 + *(v30 + 48);
    if (!v32(v36, 1, v31))
    {
      *(v36 + 32) = 1;
    }

    result = v34(v42, 0);
  }

  v11 = v12 + 1;
  v9 = *a1;
  if (v12 + 1 < *(*a1 + 16))
  {
    *v41 = v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  return result;
}

size_t sub_23DB5D308(size_t *a1, int a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = (&v48 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  if (qword_27E2FBBE0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v56 = qword_27E30A6B0;
    v14 = *(qword_27E30A6B0 + 16);
    result = swift_beginAccess();
    if (*(v14 + 40) != 1)
    {
      return result;
    }

    v16 = *a1;
    v17 = *(*a1 + 16);
    v54 = (v6 + 6);
    v55 = (v6 + 7);

    v59 = 0;
    v18 = 0;
    v57 = a1;
    v52 = v5;
    v53 = v13;
    v51 = v10;
    v50 = v17;
    while (1)
    {
      if (v18 == v17)
      {
        v21 = 1;
        v6 = v17;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v18 >= *(v16 + 16))
        {
          goto LABEL_48;
        }

        v22 = *(type metadata accessor for CommandToPractice(0) - 8);
        v23 = v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18;
        v24 = *(v5 + 48);
        v25 = v49;
        *v49 = v18;
        sub_23DAC962C(v23, v25 + v24);
        sub_23DA17A54(v25, v10, &qword_27E2FE1C0, &qword_23DB7A440);
        v21 = 0;
        v6 = (v18 + 1);
      }

      (*v55)(v10, v21, 1, v5);
      sub_23DA17A54(v10, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v54)(v13, 1, v5) == 1)
      {
      }

      v26 = *v13;
      v27 = *(v5 + 48);
      if (v58 & v59)
      {

        v6 = *a1;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          goto LABEL_52;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      v28 = *(v56 + 72);
      swift_beginAccess();
      if ((v26 & 0x8000000000000000) != 0)
      {
        break;
      }

      v61 = v6;
      v62 = v27;
      v27 = *a1;
      if (v26 >= *(*a1 + 16))
      {
        goto LABEL_46;
      }

      v29 = *(v28 + 40);
      v30 = type metadata accessor for CommandToPractice(0);
      v10 = ((*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80));
      v5 = *(*(v30 - 8) + 72) * v26;
      v31 = &v10[v27 + v5];
      v32 = v31[16];
      v13 = v31[17];
      v60 = v30;
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      LOBYTE(v63[0]) = v29;
      v64 = v32 & 0x7F;
      v38 = VCCommandIdentifier.rawValue.getter();
      v40 = v39;
      if (v38 != VCCommandIdentifier.rawValue.getter() || v40 != v41)
      {
        v42 = sub_23DB70DBC();

        a1 = v57;
        v6 = v60;
        if (v42)
        {
          goto LABEL_28;
        }

LABEL_19:
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        LOBYTE(v63[0]) = v29;
        v64 = v13 & 0x7F;
        v33 = VCCommandIdentifier.rawValue.getter();
        v35 = v34;
        if (v33 != VCCommandIdentifier.rawValue.getter() || v35 != v36)
        {
          v37 = sub_23DB70DBC();

          a1 = v57;
          v6 = v60;
          if ((v37 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        }
      }

      a1 = v57;
      v6 = v60;
LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_23DAC8B24(v27);
      }

      if (v26 >= *(v27 + 16))
      {
        goto LABEL_49;
      }

      v43 = &v10[v27 + v5];
      v43[18] = 1;
      *a1 = v27;
      v44 = v48;
      sub_23DB5F5B0(&v43[*(v6 + 12)], v48);
      v6 = a1;
      a1 = type metadata accessor for KeyboardKey(0);
      v13 = *(*(a1 - 1) + 48);
      v45 = (v13)(v44, 1, a1);
      sub_23DA17988(v44, &qword_27E2FC4F0, &qword_23DB74AB8);
      if (v45 != 1)
      {
        v6 = sub_23DB3C59C(v63, v26);
        v20 = v19 + *(v60 + 48);
        if ((v13)(v20, 1, a1))
        {
          (v6)(v63, 0);
LABEL_6:
          v59 = 1;
        }

        else
        {
          v59 = 1;
          *(v20 + 32) = 1;
          (v6)(v63, 0);
        }

        a1 = v57;
        goto LABEL_8;
      }

      if ((v58 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (v26 >= *(v27 + 16))
      {
        __break(1u);
LABEL_52:
        result = sub_23DAC8B24(v6);
        v6 = result;
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

LABEL_40:
        if (v26 < v6[2])
        {
          v46 = *(type metadata accessor for CommandToPractice(0) - 8);
          *(v6 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v26 + 19) = 1;
          *a1 = v6;
          v47 = v13 + v27;
          return sub_23DB5F554(v47);
        }

        goto LABEL_54;
      }

      a1 = v57;
      if ((v43[18] & 1) == 0)
      {

        v47 = v53 + v62;
        return sub_23DB5F554(v47);
      }

      v59 = 1;
LABEL_8:
      v13 = v53;
      sub_23DB5F554(v53 + v62);
      v5 = v52;
      v10 = v51;
      v17 = v50;
      v18 = v61;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }
}

uint64_t sub_23DB5DAA8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 != 9223407 || a2 != 0xA300000000000000) && (sub_23DB70DBC() & 1) == 0)
  {
    if (sub_23DAC7D28(0xD00000000000002DLL, 0x800000023DB8DC60) == v3 && v4 == a2)
    {
    }

    else
    {
      v6 = sub_23DB70DBC();

      if ((v6 & 1) == 0)
      {
        if ((v3 != 63 || a2 != 0xE100000000000000) && (sub_23DB70DBC() & 1) == 0)
        {
          if (sub_23DAC7D28(0xD000000000000034, 0x800000023DB8DC20) == v3 && v7 == a2)
          {
          }

          else
          {
            v11 = sub_23DB70DBC();

            if ((v11 & 1) == 0)
            {
              if (sub_23DAC7D28(0xD00000000000002FLL, 0x800000023DB8DBF0) == v3 && v13 == a2)
              {
              }

              else
              {
                v14 = sub_23DB70DBC();

                if ((v14 & 1) == 0)
                {
                  if (sub_23DAC7D28(0xD00000000000003CLL, 0x800000023DB8DBB0) == v3 && v15 == a2)
                  {
                  }

                  else
                  {
                    v16 = sub_23DB70DBC();

                    if ((v16 & 1) == 0)
                    {
                      if (sub_23DAC7D28(0xD00000000000003FLL, 0x800000023DB8DB70) == v3 && v17 == a2)
                      {
                      }

                      else
                      {
                        v18 = sub_23DB70DBC();

                        if ((v18 & 1) == 0)
                        {
                          if (sub_23DAC7D28(0xD000000000000037, 0x800000023DB8DB30) == v3 && v19 == a2)
                          {
                          }

                          else
                          {
                            v20 = sub_23DB70DBC();

                            if ((v20 & 1) == 0)
                            {

                              return v3;
                            }
                          }

                          v12 = ".string.invertedExclamationMark";
                          v9 = 0xD000000000000037;
                          goto LABEL_21;
                        }
                      }

                      v12 = ".string.invertedQuestionMark";
                      v9 = 0xD00000000000003FLL;
LABEL_21:
                      v8 = v12 | 0x8000000000000000;
                      return sub_23DAC7D28(v9, v8);
                    }
                  }

                  v12 = "nctuationCommand.string.newLine";
                  v9 = 0xD00000000000003CLL;
                  goto LABEL_21;
                }
              }

              v12 = ".string.questionMark";
              v9 = 0xD00000000000002FLL;
              goto LABEL_21;
            }
          }
        }

        v12 = "nctuationCommand.string.comma";
        v9 = 0xD000000000000034;
        goto LABEL_21;
      }
    }
  }

  v8 = 0x800000023DB8D9D0;
  v9 = 0xD00000000000002DLL;
  return sub_23DAC7D28(v9, v8);
}

uint64_t sub_23DB5DDFC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_23DAC7D28(0xD00000000000002DLL, 0x800000023DB8D9D0) == a1 && v4 == a2)
  {
  }

  else
  {
    v6 = sub_23DB70DBC();

    if ((v6 & 1) == 0)
    {
      if (sub_23DAC7D28(0xD000000000000034, 0x800000023DB8DA00) == v3 && v7 == a2)
      {
      }

      else
      {
        v10 = sub_23DB70DBC();

        if ((v10 & 1) == 0)
        {
          if (sub_23DAC7D28(0xD00000000000002FLL, 0x800000023DB8DA40) == v3 && v13 == a2)
          {
          }

          else
          {
            v14 = sub_23DB70DBC();

            if ((v14 & 1) == 0)
            {
              if (sub_23DAC7D28(0xD00000000000003CLL, 0x800000023DB8DA70) == v3 && v15 == a2)
              {
              }

              else
              {
                v16 = sub_23DB70DBC();

                if ((v16 & 1) == 0)
                {
                  if (sub_23DAC7D28(0xD00000000000003FLL, 0x800000023DB8DAB0) == v3 && v17 == a2)
                  {
                  }

                  else
                  {
                    v18 = sub_23DB70DBC();

                    if ((v18 & 1) == 0)
                    {
                      if (sub_23DAC7D28(0xD000000000000037, 0x800000023DB8DAF0) == v3 && v19 == a2)
                      {
                      }

                      else
                      {
                        v20 = sub_23DB70DBC();

                        if ((v20 & 1) == 0)
                        {

                          return v3;
                        }
                      }

                      v11 = ".string.exclamationMark";
                      v9 = 0xD000000000000037;
                      goto LABEL_13;
                    }
                  }

                  v11 = ".symbol.exclamationMark";
                  v9 = 0xD00000000000003FLL;
LABEL_13:
                  v8 = v11 | 0x8000000000000000;
                  return sub_23DAC7D28(v9, v8);
                }
              }

              v11 = ".symbol.invertedExclamationMark";
              v9 = 0xD00000000000003CLL;
              goto LABEL_13;
            }
          }

          v11 = ".symbol.invertedQuestionMark";
          v9 = 0xD00000000000002FLL;
          goto LABEL_13;
        }
      }

      v11 = "nctuationCommand.symbol.newLine";
      v9 = 0xD000000000000034;
      goto LABEL_13;
    }
  }

  v8 = 0x800000023DB8DC60;
  v9 = 0xD00000000000002DLL;
  return sub_23DAC7D28(v9, v8);
}

char *sub_23DB5E0E4(uint64_t a1, unint64_t a2, int a3)
{
  v45 = a3;
  v5 = sub_23DB6E92C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2FBC20 != -1)
  {
LABEL_32:
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27E30A748);
  v42 = v6;
  v43 = v5;
  (*(v6 + 16))(v8, v9, v5);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v46 = 4 * v10;
  v47 = v11 | (v10 << 16);
  v48 = a1;
  v49 = a2;
  v12 = MEMORY[0x277D84F90];
  v5 = 15;
  sub_23DA16E70();
  v13 = 0;
  v44 = v8;
  while (1)
  {
    v14 = sub_23DB70B9C();
    if (v16)
    {
      break;
    }

    v6 = v14;
    v17 = v15;
    if (v14 >> 14 != v13)
    {
      if (v14 >> 14 < v13)
      {
        goto LABEL_31;
      }

      v18 = sub_23DB709BC();
      v19 = MEMORY[0x23EEF6CA0](v18);
      v21 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_23DAC82F8(0, *(v12 + 2) + 1, 1, v12);
      }

      v23 = *(v12 + 2);
      v22 = *(v12 + 3);
      if (v23 >= v22 >> 1)
      {
        v12 = sub_23DAC82F8((v22 > 1), v23 + 1, 1, v12);
      }

      *(v12 + 2) = v23 + 1;
      v24 = &v12[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      v8 = v44;
    }

    v25 = sub_23DB709BC();
    v6 = MEMORY[0x23EEF6CA0](v25);
    v27 = v26;

    if (v45)
    {
      v6 = sub_23DB5DAA8(v6, v27);
      v29 = v28;

      v27 = v29;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23DAC82F8(0, *(v12 + 2) + 1, 1, v12);
    }

    v31 = *(v12 + 2);
    v30 = *(v12 + 3);
    if (v31 >= v30 >> 1)
    {
      v12 = sub_23DAC82F8((v30 > 1), v31 + 1, 1, v12);
    }

    *(v12 + 2) = v31 + 1;
    v32 = &v12[16 * v31];
    *(v32 + 4) = v6;
    *(v32 + 5) = v27;
    v48 = a1;
    v49 = a2;
    v13 = v17 >> 14;
    v5 = v17;
    if (v46 < v17 >> 14)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  if (v13 == v46)
  {
    (*(v42 + 8))(v8, v43);
  }

  else
  {
    v33 = sub_23DB709BC();
    v34 = MEMORY[0x23EEF6CA0](v33);
    v36 = v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23DAC82F8(0, *(v12 + 2) + 1, 1, v12);
    }

    v38 = *(v12 + 2);
    v37 = *(v12 + 3);
    if (v38 >= v37 >> 1)
    {
      v12 = sub_23DAC82F8((v37 > 1), v38 + 1, 1, v12);
    }

    (*(v42 + 8))(v8, v43);
    *(v12 + 2) = v38 + 1;
    v39 = &v12[16 * v38];
    *(v39 + 4) = v34;
    *(v39 + 5) = v36;
  }

  return v12;
}

uint64_t AXOnboardingModelVoiceControl.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AXOnboardingModelVoiceControl.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23DB5E9C8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DB5EA48(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB5EB0C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_23DB6EF1C();
}

uint64_t sub_23DB5EBF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23DB5EC5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_23DB5ED28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23DA16DC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void sub_23DB5ED28(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_23DB5EE34(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_23DB70D3C();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_23DB5EE34(uint64_t a1, unint64_t a2)
{
  v3 = sub_23DB5EE80(a1, a2);
  sub_23DB5EFB0(&unk_284FE56B0);
  return v3;
}

void *sub_23DB5EE80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23DB5F09C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23DB70D3C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23DB7098C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DB5F09C(v10, 0);
        result = sub_23DB70CDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23DB5EFB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23DB5F110(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23DB5F09C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DE0, &qword_23DB83790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23DB5F110(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DE0, &qword_23DB83790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23DB5F204(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23DB70C3C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23DB70C3C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23DA17B80(&qword_27E300DC8, &qword_27E2FDCF0, &qword_23DB830A0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
            v9 = sub_23DAC2354(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Page(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB5F3A8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_23DB7094C();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t type metadata accessor for AXOnboardingModelVoiceControl(uint64_t a1)
{
  result = qword_27E300DB0;
  if (!qword_27E300DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23DB5F500()
{
  result = qword_27E300DC0;
  if (!qword_27E300DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300DC0);
  }

  return result;
}

uint64_t sub_23DB5F554(uint64_t a1)
{
  v2 = type metadata accessor for CommandToPractice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DB5F5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DB5FB4C()
{

  return swift_deallocObject();
}

double sub_23DB5FB9C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = MEMORY[0x277D76A20];
  if (!v1)
  {
    v3 = MEMORY[0x277D76918];
  }

  v4 = [v2 preferredFontForTextStyle_];
  [v4 pointSize];
  v6 = v5;

  return v6;
}

void sub_23DB5FC50(void **a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_23DB5FB9C();
  v10 = sub_23DB7087C();
  v11 = objc_opt_self();
  v12 = [v11 fontWithName:v10 size:v9];

  *(inited + 64) = sub_23DAA967C(0, &qword_27E300DD0, 0x277D74300);
  if (!v12)
  {
    v12 = [v11 systemFontOfSize_];
  }

  *(inited + 40) = v12;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  v13 = *a1;
  type metadata accessor for Key(0);
  sub_23DB60828(&qword_27E2FBE30, type metadata accessor for Key, &unk_23DB73B4C);
  v14 = sub_23DB7080C();

  [v13 addAttributes:v14 range:{a2, a3}];
}

void sub_23DB5FE4C(void **a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_23DB5FB9C();
  v10 = sub_23DB7087C();
  v11 = objc_opt_self();
  v12 = [v11 fontWithName:v10 size:v9];

  *(inited + 64) = sub_23DAA967C(0, &qword_27E300DD0, 0x277D74300);
  if (!v12)
  {
    v12 = [v11 systemFontOfSize_];
  }

  *(inited + 40) = v12;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  v13 = *a1;
  type metadata accessor for Key(0);
  sub_23DB60828(&qword_27E2FBE30, type metadata accessor for Key, &unk_23DB73B4C);
  v14 = sub_23DB7080C();

  [v13 addAttributes:v14 range:{a2, a3}];
}

uint64_t sub_23DB600A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE180, &qword_23DB7A2D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v25[1] = a1;
  v25[2] = a2;
  v26 = 0x3E5C2A2E3C5CLL;
  v27 = 0xE600000000000000;
  v7 = sub_23DB6EB1C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23DA16E70();
  sub_23DB70BCC();
  v9 = v8;
  sub_23DA17988(v6, &qword_27E2FE180, &qword_23DB7A2D0);
  if (v9)
  {
    return 0;
  }

  v11 = sub_23DB709BC();
  v12 = MEMORY[0x23EEF6CA0](v11);
  v14 = v13;

  v26 = v12;
  v27 = v14;
  sub_23DB43F58(v15);

  v16 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v16 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  result = sub_23DB3C728(v26, v27);
  if (!v17)
  {
    __break(1u);
    return result;
  }

  sub_23DB5F3A8(1);
  if (qword_27E2FBBE0 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = qword_27E30A6B0;
  v20 = v26;
  v19 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DD8, &qword_23DB83668);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  strcpy((inited + 32), "getCorrections");
  *(inited + 47) = -18;
  *(inited + 48) = v20;
  *(inited + 56) = v19;

  v22 = sub_23DB6BB30(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE318, &unk_23DB7BBD0);
  sub_23DAA66A8(v22);

  v23 = *(v18 + 104);
  swift_beginAccess();
  if (!*(v23 + 40) && *(v23 + 48) == 0xE000000000000000)
  {
    return v20;
  }

  v24 = *(v23 + 40);
  if (sub_23DB70DBC())
  {
    return v20;
  }

  return v24;
}

uint64_t sub_23DB603BC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!sub_23DB600A8(a1, a2) && v3 == 0xE000000000000000 || (sub_23DB70DBC() & 1) != 0)
  {
  }

  else
  {
    sub_23DA16E70();
    sub_23DB70BBC();

    sub_23DB70BBC();

    sub_23DB70BBC();

    sub_23DB70BBC();

    v2 = sub_23DB70BBC();
  }

  return v2;
}

uint64_t sub_23DB60628()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    return 0x6870692E73707061;
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 0x6170692E73707061;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DB60750()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    return 0x656E6F687069;
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 1684107369;
  }

  else
  {
    return 0x7865742E65746F6ELL;
  }
}

uint64_t sub_23DB60828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DB60970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB60BD0()
{

  return swift_deallocObject();
}

uint64_t sub_23DB60C38()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_253Tm()
{

  return swift_deallocObject();
}

uint64_t sub_23DB61074(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23DB610BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DB61130(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_23DB61178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DB611E4()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 56);
  v5 = *(v0 + 48);
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

uint64_t sub_23DB61344@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = sub_23DB6F32C();
  MEMORY[0x28223BE20](v2);
  v95 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FB0, &qword_23DB83EF8);
  MEMORY[0x28223BE20](v4);
  v6 = &v78 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FB8, &qword_23DB83F00);
  MEMORY[0x28223BE20](v93);
  v98 = &v78 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FC0, &qword_23DB83F08);
  MEMORY[0x28223BE20](v97);
  v96 = &v78 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FC8, &qword_23DB83F10);
  MEMORY[0x28223BE20](v100);
  v99 = &v78 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FD0, &qword_23DB83F18);
  MEMORY[0x28223BE20](v101);
  v11 = &v78 - v10;
  sub_23DB611E4();
  if (qword_27E2FBB68 != -1)
  {
    swift_once();
  }

  v12 = qword_27E30A640;
  sub_23DB611E4();
  sub_23DB611E4();
  if (qword_27E2FBB70 != -1)
  {
    swift_once();
  }

  v90 = qword_27E30A648;
  v13 = v1[1];
  v92 = *v1;
  *&v123 = v92;
  *(&v123 + 1) = v13;
  v14 = sub_23DA16E70();
  v91 = v13;

  v94 = v14;
  v88 = sub_23DB6FD8C();
  v87 = v15;
  LOBYTE(v14) = v16;
  v89 = v17;
  sub_23DB7063C();
  sub_23DB6F34C();
  v85 = v14 & 1;
  v120 = v14 & 1;
  v18 = sub_23DB611E4();
  v103 = v1;
  v102 = v11;
  if (v18)
  {
    v19 = sub_23DB6FBCC();
  }

  else
  {
    v19 = sub_23DB6FC3C();
  }

  v86 = v19;
  KeyPath = swift_getKeyPath();
  v84 = swift_getKeyPath();

  v81 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v121 = 0;
  v80 = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v122 = 0;
  v82 = swift_getKeyPath();
  v36 = &v6[*(v4 + 36)];

  sub_23DB705CC();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
  v38 = v12;
  v39 = &v36[*(v37 + 52)];
  v40 = *(v2 + 20);
  v79 = v2;
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_23DB6F63C();
  v43 = *(*(v42 - 8) + 104);
  v43(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #8.0 }

  v78 = _Q0;
  *v39 = _Q0;
  *&v36[*(v37 + 56)] = 256;
  v49 = v87;
  *v6 = v88;
  *(v6 + 1) = v49;
  v6[16] = v85;
  *(v6 + 17) = *v112;
  *(v6 + 5) = *&v112[3];
  *(v6 + 3) = v89;
  v50 = v118;
  *(v6 + 6) = v117;
  *(v6 + 7) = v50;
  *(v6 + 8) = v119;
  v51 = v114;
  *(v6 + 2) = v113;
  *(v6 + 3) = v51;
  v52 = v116;
  *(v6 + 4) = v115;
  *(v6 + 5) = v52;
  v53 = v86;
  *(v6 + 18) = KeyPath;
  *(v6 + 19) = v53;
  *(v6 + 80) = 256;
  *(v6 + 162) = *&v110[7];
  *(v6 + 83) = v111;
  *(v6 + 21) = v84;
  *(v6 + 22) = v38;
  v6[184] = v81;
  *(v6 + 185) = *v110;
  *(v6 + 47) = *&v110[3];
  *(v6 + 24) = v21;
  *(v6 + 25) = v23;
  *(v6 + 26) = v25;
  *(v6 + 27) = v27;
  v6[224] = 0;
  *(v6 + 57) = *&v109[3];
  *(v6 + 225) = *v109;
  v6[232] = v80;
  *(v6 + 59) = *&v108[3];
  *(v6 + 233) = *v108;
  *(v6 + 30) = v29;
  *(v6 + 31) = v31;
  *(v6 + 32) = v33;
  *(v6 + 33) = v35;
  v6[272] = 0;
  *(v6 + 273) = *v107;
  *(v6 + 69) = *&v107[3];
  *(v6 + 35) = v82;
  *(v6 + 36) = v38;
  v54 = v95;
  v43(&v95[*(v79 + 20)], v41, v42);
  *v54 = v78;
  sub_23DB6F07C();
  v55 = v98;
  v56 = &v98[*(v93 + 36)];
  v57 = MEMORY[0x277CDFC08];
  sub_23DB64DAC(v54, v56, MEMORY[0x277CDFC08]);
  v58 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD8E0, &unk_23DB80390) + 36);
  v59 = v124;
  *v58 = v123;
  *(v58 + 16) = v59;
  *(v58 + 32) = v125;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC70, &unk_23DB83F80);
  *(v56 + *(v60 + 52)) = v90;
  *(v56 + *(v60 + 56)) = 256;

  v61 = sub_23DB7062C();
  v63 = v62;
  sub_23DB64E14(v54, v57);
  v64 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC78, &unk_23DB803A0) + 36));
  *v64 = v61;
  v64[1] = v63;
  *(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC80, &unk_23DB83F90) + 36)) = 0x3FD999999999999ALL;
  v65 = sub_23DB7062C();
  v67 = v66;
  v68 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC88, &qword_23DB803B0) + 36));
  *v68 = v65;
  v68[1] = v67;
  sub_23DA17A54(v6, v55, &qword_27E300FB0, &qword_23DB83EF8);
  v69 = v103;
  if (*(v103 + 40))
  {
    v70 = 0.5;
  }

  else
  {
    v70 = 1.0;
  }

  v71 = v96;
  sub_23DA17A54(v55, v96, &qword_27E300FB8, &qword_23DB83F00);
  *(v71 + *(v97 + 36)) = v70;
  v72 = MEMORY[0x23EEF6D40](v92, v91);
  v73 = v99;
  sub_23DA17A54(v71, v99, &qword_27E300FC0, &qword_23DB83F08);
  *(v73 + *(v100 + 52)) = v72;
  sub_23DA17B80(&qword_27E300FD8, &qword_27E300FC8, &qword_23DB83F10, MEMORY[0x277CE1148]);
  v74 = v102;
  sub_23DB6FE7C();
  sub_23DA17988(v73, &qword_27E300FC8, &qword_23DB83F10);
  if (v69[4])
  {
    v75 = v69[3];
    v76 = v69[4];
  }

  else
  {
    v75 = 0;
    v76 = 0xE000000000000000;
  }

  v105 = v75;
  v106 = v76;

  sub_23DB6F28C();

  return sub_23DA17988(v74, &qword_27E300FD0, &qword_23DB83F18);
}

uint64_t sub_23DB61D38()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CommandCardWithCheckmark(0) + 24);
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

uint64_t sub_23DB61E90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300ED8, &qword_23DB83E58);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v33 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EE0, &qword_23DB83E60);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  *v5 = sub_23DB7060C();
  v5[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EE8, &qword_23DB83E68);
  sub_23DB6208C(v1, v5 + *(v11 + 44));
  v12 = sub_23DB6FB2C();
  sub_23DB61D38();
  sub_23DB6EFAC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_23DA17A54(v5, v9, &qword_27E300ED8, &qword_23DB83E58);
  v21 = &v9[*(v7 + 44)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_23DB6FB5C();
  sub_23DB61D38();
  sub_23DB6EFAC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_23DA17A54(v9, a1, &qword_27E300EE0, &qword_23DB83E60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EF0, &qword_23DB83E70);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_23DB6208C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v23 = sub_23DB6F9FC();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EF8, &qword_23DB83E78);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F00, &qword_23DB83E80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F08, &qword_23DB83E88);
  v14 = *(v13 - 8);
  v24 = v13;
  v25 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  sub_23DB62438(a1, v8);
  sub_23DB6F9DC();
  v17 = sub_23DB64A20();
  sub_23DB6FF8C();
  (*(v3 + 8))(v5, v23);
  sub_23DA17988(v8, &qword_27E300EF8, &qword_23DB83E78);
  v27 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F28, &qword_23DB83E98);
  v28 = v6;
  v29 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_23DA17B80(&qword_27E300F30, &qword_27E300F28, &qword_23DB83E98, MEMORY[0x277CE14C0]);
  sub_23DB6FEFC();
  (*(v10 + 8))(v12, v9);
  v28 = v9;
  v29 = v18;
  v30 = OpaqueTypeConformance2;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_23DB6FFDC();
  return (*(v25 + 8))(v16, v21);
}

uint64_t sub_23DB62438@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = a2;
  v3 = sub_23DB702CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F48, &qword_23DB83EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v37 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F50, &qword_23DB83EB8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = a1[1];
  v43 = *a1;
  v44 = *(a1 + 18);
  if (v44)
  {
    v17 = 0;
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
    if (*(a1 + *(type metadata accessor for CommandCardWithCheckmark(0) + 20)) == 1)
    {
      v17 = *(a1 + 19) ^ 1;
    }

    else
    {
      v17 = 0;
    }
  }

  KeyPath = swift_getKeyPath();
  v37 = v16;
  v38 = KeyPath;
  v45 = v17 & 1;
  v55 = 0;

  sub_23DB702BC();
  sub_23DB61D38();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v20 = sub_23DB702EC();
  (*(v4 + 8))(v6, v3);
  v21 = sub_23DB701AC();
  v22 = sub_23DB7019C();
  sub_23DB7062C();
  sub_23DB6F10C();
  v23 = sub_23DB7014C();

  *(v52 + 8) = v58;
  v50 = v20;
  LOWORD(v51) = 1;
  *(&v51 + 1) = v21;
  *&v52[0] = v22;
  *(&v52[1] + 8) = v59;
  *(&v52[2] + 8) = v60;
  *(&v52[3] + 8) = xmmword_23DB839E0;
  *(&v52[4] + 1) = v23;
  v53 = 0x4000000000000000uLL;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F58, &qword_23DB83EC0);
  sub_23DB64AD8();
  v24 = v40;
  sub_23DB6FE7C();
  v61[6] = v52[4];
  v61[7] = v53;
  v62 = v54;
  v61[2] = v52[0];
  v61[3] = v52[1];
  v61[4] = v52[2];
  v61[5] = v52[3];
  v61[0] = v50;
  v61[1] = v51;
  sub_23DA17988(v61, &qword_27E300F58, &qword_23DB83EC0);
  sub_23DA17A54(v24, v12, &qword_27E300F48, &qword_23DB83EB0);
  *&v12[*(v39 + 36)] = v18;
  sub_23DA17A54(v12, v15, &qword_27E300F50, &qword_23DB83EB8);
  v25 = v55;
  LODWORD(v40) = v55;
  v26 = v42;
  sub_23DA0E2B4(v15, v42, &qword_27E300F50, &qword_23DB83EB8);
  v27 = v43;
  v28 = v37;
  *&v46 = v43;
  *(&v46 + 1) = v37;
  LOBYTE(v23) = v44;
  LOBYTE(v47) = v44;
  *(&v47 + 1) = *v57;
  HIDWORD(v47) = *&v57[3];
  v48 = 0;
  *&v49[0] = 0;
  BYTE8(v49[0]) = v45;
  *(v49 + 9) = *v56;
  HIDWORD(v49[0]) = *&v56[3];
  v29 = v15;
  v30 = v38;
  *&v49[1] = v38;
  BYTE8(v49[1]) = v25;
  v31 = v46;
  v32 = v47;
  v33 = v49[0];
  v34 = v41;
  *(v41 + 41) = *(v49 + 9);
  v34[1] = v32;
  v34[2] = v33;
  *v34 = v31;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FA8, &qword_23DB83EF0);
  sub_23DA0E2B4(v26, v34 + *(v35 + 48), &qword_27E300F50, &qword_23DB83EB8);
  sub_23DB64D34(&v46, &v50);
  sub_23DA17988(v29, &qword_27E300F50, &qword_23DB83EB8);
  sub_23DA17988(v26, &qword_27E300F50, &qword_23DB83EB8);
  *&v50 = v27;
  *(&v50 + 1) = v28;
  LOBYTE(v51) = v23;
  *(&v51 + 1) = *v57;
  DWORD1(v51) = *&v57[3];
  *(&v51 + 1) = 0;
  *&v52[0] = 0;
  BYTE8(v52[0]) = v45;
  *(v52 + 9) = *v56;
  HIDWORD(v52[0]) = *&v56[3];
  *&v52[1] = v30;
  BYTE8(v52[1]) = v40;
  return sub_23DB64D6C(&v50);
}

uint64_t sub_23DB62968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F38, &qword_23DB83EA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v27 = v6;
  v13 = *(v6 + 16);
  v13(&v27 - v11, a1, v5, v10);
  if (*(a2 + 18) == 1)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v29 = (*(*qword_27E30A6D8 + 304))(0xD00000000000001BLL, 0x800000023DB87B80);
    v30 = v14;
    sub_23DA16E70();
    v15 = sub_23DB6FD8C();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
    sub_23DA6D470(v15, v16, v20 & 1);
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  (v13)(v8, v12, v5);
  v22 = v8;
  v23 = v28;
  (v13)(v28, v22, v5);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F40, &qword_23DB83EA8) + 48));
  sub_23DA6EC54(v15, v17, v21, v19);
  sub_23DA6EC98(v15, v17, v21, v19);
  *v24 = v15;
  v24[1] = v17;
  v24[2] = v21;
  v24[3] = v19;
  v25 = *(v27 + 8);
  v25(v12, v5);
  sub_23DA6EC98(v15, v17, v21, v19);
  return (v25)(v22, v5);
}

uint64_t sub_23DB62C20(uint64_t a1, void *a2)
{
  MEMORY[0x23EEF6D40](*a2, a2[1]);
  sub_23DB7072C();
  return sub_23DB6F2EC();
}

uint64_t sub_23DB62C84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v49 = a3;
  v44 = sub_23DB6F2FC();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = v5;
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DE8, &qword_23DB83B68);
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v36 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DF0, &qword_23DB83B70);
  MEMORY[0x28223BE20](v41);
  v10 = &v36 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DF8, &qword_23DB83B78);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = &v36 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E00, &qword_23DB83B80);
  MEMORY[0x28223BE20](v42);
  v46 = &v36 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E08, &qword_23DB83B88);
  MEMORY[0x28223BE20](v45);
  v14 = &v36 - v13;
  v50 = a2;
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E10, &qword_23DB83B90);
  sub_23DA17B80(&qword_27E300E18, &qword_27E300E10, &qword_23DB83B90, MEMORY[0x277CE14C0]);
  sub_23DB6F01C();
  v52 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v52 = *(a2 + 3);
  sub_23DB7038C();
  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v6 + 32))(v10, v8, v37);
  v15 = &v10[*(v41 + 36)];
  v16 = v57;
  *(v15 + 4) = v56;
  *(v15 + 5) = v16;
  *(v15 + 6) = v58;
  v17 = v53;
  *v15 = v52;
  *(v15 + 1) = v17;
  v18 = v55;
  *(v15 + 2) = v54;
  *(v15 + 3) = v18;
  v59 = *a2;
  v51[8] = v59;
  v19 = v40;
  v20 = v44;
  (*(v4 + 16))(v40, v39, v44);
  v21 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = *(a2 + 1);
  *(v22 + 1) = *a2;
  *(v22 + 2) = v23;
  v24 = *(a2 + 3);
  *(v22 + 3) = *(a2 + 2);
  *(v22 + 4) = v24;
  (*(v4 + 32))(&v22[v21], v19, v20);
  sub_23DA0E2B4(&v59, v51, &qword_27E2FD230, &qword_23DB77ED0);
  sub_23DB64018(a2, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD230, &qword_23DB77ED0);
  sub_23DB6419C();
  sub_23DB64254();
  v25 = v43;
  sub_23DB700BC();

  sub_23DA17988(&v59, &qword_27E2FD230, &qword_23DB77ED0);
  sub_23DA17988(v10, &qword_27E300DF0, &qword_23DB83B70);
  v26 = swift_allocObject();
  v27 = *(a2 + 1);
  *(v26 + 1) = *a2;
  *(v26 + 2) = v27;
  v28 = *(a2 + 3);
  *(v26 + 3) = *(a2 + 2);
  *(v26 + 4) = v28;
  v29 = v46;
  (*(v47 + 32))(v46, v25, v48);
  v30 = (v29 + *(v42 + 36));
  *v30 = sub_23DA70240;
  v30[1] = v26;
  v31 = swift_allocObject();
  v32 = *(a2 + 1);
  *(v31 + 1) = *a2;
  *(v31 + 2) = v32;
  v33 = *(a2 + 3);
  *(v31 + 3) = *(a2 + 2);
  *(v31 + 4) = v33;
  sub_23DA17A54(v29, v14, &qword_27E300E00, &qword_23DB83B80);
  v34 = &v14[*(v45 + 36)];
  *v34 = sub_23DB6435C;
  v34[1] = v31;
  sub_23DA17A54(v14, v49, &qword_27E300E08, &qword_23DB83B88);
  sub_23DB64018(a2, v51);
  return sub_23DB64018(a2, v51);
}

uint64_t sub_23DB633F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E40, &qword_23DB83B98);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *a1;
  KeyPath = swift_getKeyPath();
  v23 = 0;
  *&v18 = 0x6D6F74746F62;
  *(&v18 + 1) = 0xE600000000000000;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *&v20 = 0;
  BYTE8(v20) = 0;
  *&v21 = KeyPath;
  BYTE8(v21) = 0;
  v22 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E48, &qword_23DB83BC8);
  sub_23DB643D8();
  sub_23DB6FE7C();
  v24[2] = v20;
  v24[3] = v21;
  v25 = v22;
  v24[0] = v18;
  v24[1] = v19;
  sub_23DA17988(v24, &qword_27E300E48, &qword_23DB83BC8);
  v13 = sub_23DB7062C();
  v14 = &v10[*(v5 + 44)];
  *v14 = sub_23DB650F8;
  *(v14 + 1) = 0;
  *(v14 + 2) = v13;
  *(v14 + 3) = v15;
  sub_23DA0E2B4(v10, v7, &qword_27E300E40, &qword_23DB83B98);
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E60, &qword_23DB83BD0);
  sub_23DA0E2B4(v7, a2 + *(v16 + 48), &qword_27E300E40, &qword_23DB83B98);

  sub_23DA17988(v10, &qword_27E300E40, &qword_23DB83B98);
  sub_23DA17988(v7, &qword_27E300E40, &qword_23DB83B98);
}

void sub_23DB63610(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[1];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(*a1 + 16))
  {
    sub_23DB64DAC(*a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, type metadata accessor for CommandToPractice);
    sub_23DB7067C();
    sub_23DB7065C();

    MEMORY[0x28223BE20](v9);
    *&v10[-16] = a2;
    *&v10[-8] = v7;
    sub_23DB6F19C();

    sub_23DB64E14(v7, type metadata accessor for CommandToPractice);
    return;
  }

  __break(1u);
}

uint64_t sub_23DB637A0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_23DB64010;
  a1[1] = v5;
  return sub_23DB64018(v10, &v9);
}

uint64_t sub_23DB6381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E68, &qword_23DB83BD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - v8;
  *v9 = sub_23DB6F68C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v29[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E70, &qword_23DB83BE0) + 44);
  v35 = a1;
  v29[0] = swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  *(v10 + 33) = HIBYTE(a3) & 1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD230, &qword_23DB77ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E78, &qword_23DB83C08);
  sub_23DA17B80(&qword_27E2FD240, &qword_27E2FD230, &qword_23DB77ED0, MEMORY[0x277D83980]);
  sub_23DB650A8(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300E80, &unk_23DB83C10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3002C0, &qword_23DB80FC0);
  v13 = sub_23DB64518();
  v14 = sub_23DB6F37C();
  v15 = sub_23DB650A8(&qword_27E3002C8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v31 = v14;
  v32 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v11;
  v32 = v12;
  v33 = v13;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_23DB704FC();
  LOBYTE(v14) = sub_23DB6FB9C();
  v17 = [objc_opt_self() currentDevice];
  [v17 userInterfaceIdiom];

  sub_23DB6EFAC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v30;
  sub_23DA17A54(v9, v30, &qword_27E300E68, &qword_23DB83BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EA0, &qword_23DB83C28);
  v28 = v26 + *(result + 36);
  *v28 = v14;
  *(v28 + 8) = v19;
  *(v28 + 16) = v21;
  *(v28 + 24) = v23;
  *(v28 + 32) = v25;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_23DB63B94(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = HIBYTE(a4);
  v6 = sub_23DB6FA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E80, &unk_23DB83C10);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  sub_23DB64DAC(a1, v22 - v11, type metadata accessor for CommandToPractice);
  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for CommandCardWithCheckmark(0);
  v12[*(v14 + 20)] = v4 & 1;
  v15 = &v12[*(v14 + 24)];
  *v15 = KeyPath;
  v15[8] = 0;
  v16 = sub_23DB7062C();
  v17 = &v12[*(v10 + 36)];
  *v17 = sub_23DB650F8;
  *(v17 + 1) = 0;
  *(v17 + 2) = v16;
  *(v17 + 3) = v18;
  sub_23DB6FA7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3002C0, &qword_23DB80FC0);
  sub_23DB64518();
  v19 = sub_23DB6F37C();
  v20 = sub_23DB650A8(&qword_27E3002C8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v22[0] = v19;
  v22[1] = v20;
  swift_getOpaqueTypeConformance2();
  sub_23DB6FEEC();
  (*(v7 + 8))(v9, v6);
  return sub_23DA17988(v12, &qword_27E300E80, &unk_23DB83C10);
}

uint64_t sub_23DB63E24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB6F7BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB7018C();
  sub_23DB6F94C();
  sub_23DB6F14C();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_23DB63F24(uint64_t a1, uint64_t a2)
{
  sub_23DB6F85C();
  sub_23DB6F37C();
  sub_23DB650A8(&qword_27E3002C8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  return sub_23DB6F0FC();
}

uint64_t sub_23DB63FC8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_23DB6381C(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

uint64_t sub_23DB64058()
{
  v1 = sub_23DB6F2FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_23DB64138()
{
  v1 = *(sub_23DB6F2FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80));

  sub_23DB63610((v0 + 16), v2);
}

unint64_t sub_23DB6419C()
{
  result = qword_27E300E20;
  if (!qword_27E300E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300DF0, &qword_23DB83B70);
    sub_23DA17B80(&qword_27E300E28, &qword_27E300DE8, &qword_23DB83B68, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E20);
  }

  return result;
}

unint64_t sub_23DB64254()
{
  result = qword_27E300E30;
  if (!qword_27E300E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD230, &qword_23DB77ED0);
    sub_23DB650A8(&qword_27E300E38, type metadata accessor for CommandToPractice, &protocol conformance descriptor for CommandToPractice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E30);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_23DB643D8()
{
  result = qword_27E300E50;
  if (!qword_27E300E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300E48, &qword_23DB83BC8);
    sub_23DB64464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E50);
  }

  return result;
}

unint64_t sub_23DB64464()
{
  result = qword_27E300E58;
  if (!qword_27E300E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E58);
  }

  return result;
}

uint64_t sub_23DB644B8()
{

  return swift_deallocObject();
}

uint64_t sub_23DB644F0(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_23DB63B94(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

unint64_t sub_23DB64518()
{
  result = qword_27E300E88;
  if (!qword_27E300E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300E80, &unk_23DB83C10);
    sub_23DB650A8(&qword_27E2FFE60, type metadata accessor for CommandCardWithCheckmark, &unk_23DB83E08);
    sub_23DA17B80(&qword_27E300E90, &qword_27E300E98, &qword_23DB83C20, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E88);
  }

  return result;
}

uint64_t type metadata accessor for CommandCardWithCheckmark(uint64_t a1)
{
  result = qword_27E300EA8;
  if (!qword_27E300EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DB646C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommandToPractice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23DB647A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommandToPractice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_23DB6485C(uint64_t a1)
{
  type metadata accessor for CommandToPractice(319);
  if (v1 <= 0x3F)
  {
    sub_23DA557A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23DB64930()
{
  result = qword_27E300EC8;
  if (!qword_27E300EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EA0, &qword_23DB83C28);
    sub_23DA17B80(&qword_27E300ED0, &qword_27E300E68, &qword_23DB83BD8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300EC8);
  }

  return result;
}

unint64_t sub_23DB64A20()
{
  result = qword_27E300F10;
  if (!qword_27E300F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EF8, &qword_23DB83E78);
    sub_23DA17B80(&qword_27E300F18, &qword_27E300F20, &qword_23DB83E90, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F10);
  }

  return result;
}

unint64_t sub_23DB64AD8()
{
  result = qword_27E300F60;
  if (!qword_27E300F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F58, &qword_23DB83EC0);
    sub_23DB64B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F60);
  }

  return result;
}

unint64_t sub_23DB64B64()
{
  result = qword_27E300F68;
  if (!qword_27E300F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F70, &qword_23DB83EC8);
    sub_23DB64BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F68);
  }

  return result;
}

unint64_t sub_23DB64BF0()
{
  result = qword_27E300F78;
  if (!qword_27E300F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F80, &qword_23DB83ED0);
    sub_23DB64C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F78);
  }

  return result;
}

unint64_t sub_23DB64C7C()
{
  result = qword_27E300F88;
  if (!qword_27E300F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F90, &unk_23DB83ED8);
    sub_23DAB5904();
    sub_23DA17B80(&qword_27E300F98, &qword_27E300FA0, &qword_23DB83EE8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F88);
  }

  return result;
}

uint64_t sub_23DB64DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB64E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23DB64E78()
{
  result = qword_27E300FE0;
  if (!qword_27E300FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EF0, &qword_23DB83E70);
    sub_23DB64F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300FE0);
  }

  return result;
}

unint64_t sub_23DB64F04()
{
  result = qword_27E300FE8;
  if (!qword_27E300FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EE0, &qword_23DB83E60);
    sub_23DA17B80(&qword_27E300FF0, &qword_27E300ED8, &qword_23DB83E58, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300FE8);
  }

  return result;
}

unint64_t sub_23DB64FC0()
{
  result = qword_27E300FF8;
  if (!qword_27E300FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300FD0, &qword_23DB83F18);
    sub_23DA17B80(&qword_27E300FD8, &qword_27E300FC8, &qword_23DB83F10, MEMORY[0x277CE1148]);
    sub_23DB650A8(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300FF8);
  }

  return result;
}

uint64_t sub_23DB650A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AudiographExplorerState.__allocating_init(chartDescriptor:)(void *a1)
{
  swift_allocObject();
  sub_23DB6C0D0(a1);
  v3 = v2;

  return v3;
}

void AudiographExplorerView.init()(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  *a1 = sub_23DB6F39C();
  a1[1] = v2;
  sub_23DAA967C(0, &qword_27E300D20, 0x277D75B40);
  v3 = [swift_getObjCClassFromMetadata() appearance];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

uint64_t AudiographExplorerView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23DB7062C();
  v5 = v4;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  v6 = sub_23DB6F39C();
  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  v10 = sub_23DB700DC();
  result = sub_23DB6FB3C();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_23DB6530C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23DB7062C();
  v5 = v4;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  v6 = sub_23DB6F39C();
  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  v10 = sub_23DB700DC();
  result = sub_23DB6FB3C();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = result;
  return result;
}

uint64_t ElementsContainerView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_23DB6F69C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301000, &unk_23DB83FC0);
  return sub_23DB6543C(v5, v4, (a2 + *(v6 + 44)));
}

uint64_t sub_23DB6543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011A0, &qword_23DB84790);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  v11 = sub_23DB6F39C();
  v13 = v12;
  v14 = sub_23DB6FB3C();
  LOBYTE(v51) = 0;
  if (a1)
  {
    *&v38 = a2;
    v41 = v14;
    v42 = v13;
    v15 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
    swift_beginAccess();
    v16 = v15[1];
    v51 = *v15;
    v52 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
    sub_23DB7038C();
    v17 = *(v47[0] + 32);

    v18 = [v17 series];

    sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
    v19 = sub_23DB709EC();

    v40 = v11;
    if (v19 >> 62)
    {
      v20 = sub_23DB70C3C();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 <= 1)
    {
      v23 = 0;
      v26 = 0;
      v25 = 0;
      v21 = 1;
    }

    else
    {
      v21 = sub_23DB6F39C();
      v23 = v22;
      v24 = sub_23DB6FB3C();
      LOBYTE(v51) = 1;
      v25 = v24;
      v26 = 1;
    }

    *v10 = sub_23DB6F69C();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011A8, &qword_23DB84798);
    sub_23DB658B8(a1, v38, &v10[*(v27 + 44)]);
    v28 = v39;
    v36 = v10;
    sub_23DA0E2B4(v10, v39, &qword_27E3011A0, &qword_23DB84790);
    *&v43 = v40;
    *(&v43 + 1) = v42;
    LOBYTE(v44[0]) = v41;
    *(v44 + 1) = v58[0];
    DWORD1(v44[0]) = *(v58 + 3);
    v38 = xmmword_23DB83FA0;
    v37 = xmmword_23DB83FB0;
    *(v44 + 8) = xmmword_23DB83FA0;
    *(&v44[1] + 8) = xmmword_23DB83FB0;
    BYTE8(v44[2]) = 0;
    a3[2] = v44[1];
    *(a3 + 41) = *(&v44[1] + 9);
    v29 = v44[0];
    *a3 = v43;
    a3[1] = v29;
    *&v45 = v21;
    *(&v45 + 1) = v23;
    *&v46[0] = v25;
    *(v46 + 8) = 0u;
    *(&v46[1] + 8) = 0u;
    BYTE8(v46[2]) = v26;
    v30 = v45;
    v31 = v46[0];
    v32 = v46[1];
    *(a3 + 105) = *(&v46[1] + 9);
    a3[5] = v31;
    a3[6] = v32;
    a3[4] = v30;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011B0, &qword_23DB847A0);
    sub_23DA0E2B4(v28, a3 + *(v33 + 80), &qword_27E3011A0, &qword_23DB84790);
    sub_23DA0E2B4(&v43, &v51, &qword_27E3011B8, &qword_23DB847A8);
    sub_23DA0E2B4(&v45, &v51, &qword_27E3011C0, &qword_23DB847B0);
    sub_23DA17988(v36, &qword_27E3011A0, &qword_23DB84790);
    sub_23DA17988(v28, &qword_27E3011A0, &qword_23DB84790);
    v47[0] = v21;
    v47[1] = v23;
    v47[2] = v25;
    v48 = 0u;
    v49 = 0u;
    v50 = v26;
    sub_23DA17988(v47, &qword_27E3011C0, &qword_23DB847B0);
    v51 = v40;
    v52 = v42;
    v53 = v41;
    *v54 = v58[0];
    *&v54[3] = *(v58 + 3);
    v55 = v38;
    v56 = v37;
    v57 = 0;
    return sub_23DA17988(&v51, &qword_27E3011B8, &qword_23DB847A8);
  }

  else
  {
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB658B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011C8, &qword_23DB847B8);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011D0, &qword_23DB847C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v44 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011D8, &qword_23DB847C8);
  MEMORY[0x28223BE20](v47);
  v51 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011E0, &qword_23DB847D0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v50 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (v44 - v18);
  *v19 = sub_23DB7062C();
  v19[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011E8, &qword_23DB847D8);
  sub_23DB65E00(v19 + *(v21 + 44));
  v22 = sub_23DB6FB3C();
  v23 = v19 + *(v15 + 44);
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  v24 = sub_23DB6F39C();
  v46 = v25;
  v53 = a1;
  v54 = a2;
  v44[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011F0, &qword_23DB847E0);
  sub_23DA17B80(&qword_27E3011F8, &qword_27E3011F0, &qword_23DB847E0, MEMORY[0x277CE14C0]);
  sub_23DB6FC9C();
  v26 = sub_23DB7062C();
  if (a1)
  {
    v28 = v26;
    v29 = v27;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v55);

    if (v55)
    {
      v30 = 1;
      v32 = v48;
      v31 = v49;
    }

    else
    {
      v33 = v45;
      sub_23DB6F0AC();
      v32 = v48;
      v34 = v33;
      v31 = v49;
      (*(v48 + 32))(v9, v34, v49);
      v30 = 0;
    }

    (*(v32 + 56))(v9, v30, 1, v31);
    v35 = &v13[*(v47 + 36)];
    sub_23DA17A54(v9, v35, &qword_27E3011D0, &qword_23DB847C0);
    v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301200, &qword_23DB847E8) + 36));
    *v36 = v28;
    v36[1] = v29;
    v37 = v50;
    sub_23DA0E2B4(v19, v50, &qword_27E3011E0, &qword_23DB847D0);
    v38 = v51;
    sub_23DA0E2B4(v13, v51, &qword_27E3011D8, &qword_23DB847C8);
    v39 = v52;
    sub_23DA0E2B4(v37, v52, &qword_27E3011E0, &qword_23DB847D0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301208, &qword_23DB847F0);
    v41 = (v39 + *(v40 + 48));
    v42 = v46;
    *v41 = v24;
    v41[1] = v42;
    sub_23DA0E2B4(v38, v39 + *(v40 + 64), &qword_27E3011D8, &qword_23DB847C8);

    sub_23DA17988(v13, &qword_27E3011D8, &qword_23DB847C8);
    sub_23DA17988(v19, &qword_27E3011E0, &qword_23DB847D0);
    sub_23DA17988(v38, &qword_27E3011D8, &qword_23DB847C8);

    return sub_23DA17988(v37, &qword_27E3011E0, &qword_23DB847D0);
  }

  else
  {
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB65E00@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3012A8, &qword_23DB848A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  ChartView.init()(&v17);
  v13 = v17;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  sub_23DB6DBB8();
  sub_23DB6FE7C();

  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  v8 = sub_23DB6F39C();
  v10 = v9;
  sub_23DA0E2B4(v7, v4, &qword_27E3012A8, &qword_23DB848A0);
  sub_23DA0E2B4(v4, a1, &qword_27E3012A8, &qword_23DB848A0);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3012B8, &qword_23DB848A8) + 48));
  *v11 = v8;
  v11[1] = v10;

  sub_23DA17988(v7, &qword_27E3012A8, &qword_23DB848A0);

  return sub_23DA17988(v4, &qword_27E3012A8, &qword_23DB848A0);
}

uint64_t sub_23DB65FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v103 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301210, &qword_23DB847F8);
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v89 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301218, &qword_23DB84800);
  MEMORY[0x28223BE20](v93);
  v8 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v89 - v10;
  MEMORY[0x28223BE20](v12);
  v95 = v89 - v13;
  MEMORY[0x28223BE20](v14);
  v94 = v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301220, &qword_23DB84808);
  MEMORY[0x28223BE20](v16 - 8);
  v99 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v89 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301228, &qword_23DB84810);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v89 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301230, &qword_23DB84818);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v89 - v29;
  if (a1)
  {
    v96 = v11;
    v97 = v8;
    v98 = v6;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v105);

    v104 = v30;
    if (v105)
    {
      v31 = 1;
    }

    else
    {
      type metadata accessor for AudiographExplorerState(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v33 = [objc_opt_self() bundleForClass_];
      v34 = sub_23DB6E9FC();
      v92 = v21;
      v36 = v35;

      v105 = v34;
      v106 = v36;
      sub_23DA16E70();
      v37 = sub_23DB6FD8C();
      v91 = v89;
      v105 = v37;
      v106 = v38;
      v107 = v39 & 1;
      v108 = v40;
      MEMORY[0x28223BE20](v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECF0, &qword_23DB84880);
      sub_23DB6D9EC();
      v21 = v92;
      sub_23DB6DB58(&qword_27E2FED20, &qword_27E2FECF0, &qword_23DB84880, MEMORY[0x277CE1550]);
      v30 = v104;
      sub_23DB7052C();
      v41 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301280, &qword_23DB84888) + 36)];
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301270, &qword_23DB84840) + 28);
      v43 = sub_23DB6FD0C();
      (*(*(v43 - 8) + 56))(v41 + v42, 1, 1, v43);
      *v41 = swift_getKeyPath();
      v44 = [objc_opt_self() secondarySystemBackgroundColor];
      v105 = sub_23DB700DC();
      *&v24[*(v21 + 36)] = sub_23DB7045C();
      sub_23DA17A54(v24, v30, &qword_27E301228, &qword_23DB84810);
      v31 = 0;
    }

    v45 = 1;
    (*(v22 + 56))(v30, v31, 1, v21);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v105);

    if (v105 == 1)
    {
      type metadata accessor for AudiographExplorerState(0);
      v46 = swift_getObjCClassFromMetadata();
      v90 = v46;
      v47 = objc_opt_self();
      v92 = v20;
      v48 = v47;
      v49 = [v47 bundleForClass_];
      v50 = sub_23DB6E9FC();
      v52 = v51;

      v105 = v50;
      v106 = v52;
      v89[5] = sub_23DA16E70();
      v105 = sub_23DB6FD8C();
      v106 = v53;
      v107 = v54 & 1;
      v108 = v55;
      MEMORY[0x28223BE20](v105);
      v89[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301240, &qword_23DB84828);
      v89[3] = sub_23DB6D9EC();
      v89[2] = sub_23DB6DA40();
      v89[1] = a1;
      v56 = v94;
      sub_23DB7052C();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301268, &qword_23DB84838);
      v58 = (v56 + *(v57 + 36));
      v89[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301270, &qword_23DB84840);
      v59 = *(v89[0] + 28);
      v60 = sub_23DB6FD0C();
      v91 = v27;
      v61 = v60;
      v62 = *(*(v60 - 8) + 56);
      v62(v58 + v59, 1, 1, v60);
      *v58 = swift_getKeyPath();
      v63 = objc_opt_self();
      v64 = [v63 secondarySystemBackgroundColor];
      v105 = sub_23DB700DC();
      v65 = sub_23DB7045C();
      v66 = v93;
      *(v56 + *(v93 + 36)) = v65;
      v67 = [v48 bundleForClass_];
      v68 = sub_23DB6E9FC();
      v70 = v69;

      v105 = v68;
      v106 = v70;
      v105 = sub_23DB6FD8C();
      v106 = v71;
      v107 = v72 & 1;
      v108 = v73;
      MEMORY[0x28223BE20](v105);
      v74 = v95;
      sub_23DB7052C();
      v75 = v92;
      v76 = (v74 + *(v57 + 36));
      v62(v76 + *(v89[0] + 28), 1, 1, v61);
      *v76 = swift_getKeyPath();
      v77 = [v63 secondarySystemBackgroundColor];
      v105 = sub_23DB700DC();
      *(v74 + *(v66 + 36)) = sub_23DB7045C();
      v78 = v96;
      sub_23DA0E2B4(v56, v96, &qword_27E301218, &qword_23DB84800);
      v79 = v97;
      sub_23DA0E2B4(v74, v97, &qword_27E301218, &qword_23DB84800);
      v80 = v98;
      sub_23DA0E2B4(v78, v98, &qword_27E301218, &qword_23DB84800);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301278, &qword_23DB84878);
      sub_23DA0E2B4(v79, v80 + *(v81 + 48), &qword_27E301218, &qword_23DB84800);
      sub_23DA17988(v74, &qword_27E301218, &qword_23DB84800);
      sub_23DA17988(v56, &qword_27E301218, &qword_23DB84800);
      sub_23DA17988(v79, &qword_27E301218, &qword_23DB84800);
      v82 = v78;
      v27 = v91;
      sub_23DA17988(v82, &qword_27E301218, &qword_23DB84800);
      v20 = v75;
      sub_23DA17A54(v80, v75, &qword_27E301210, &qword_23DB847F8);
      v45 = 0;
    }

    v83 = v20;
    (*(v100 + 56))(v20, v45, 1, v101);
    v84 = v104;
    sub_23DA0E2B4(v104, v27, &qword_27E301230, &qword_23DB84818);
    v85 = v99;
    sub_23DA0E2B4(v83, v99, &qword_27E301220, &qword_23DB84808);
    v86 = v102;
    sub_23DA0E2B4(v27, v102, &qword_27E301230, &qword_23DB84818);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301238, &qword_23DB84820);
    sub_23DA0E2B4(v85, v86 + *(v87 + 48), &qword_27E301220, &qword_23DB84808);
    sub_23DA17988(v83, &qword_27E301220, &qword_23DB84808);
    sub_23DA17988(v84, &qword_27E301230, &qword_23DB84818);
    sub_23DA17988(v85, &qword_27E301220, &qword_23DB84808);
    return sub_23DA17988(v27, &qword_27E301230, &qword_23DB84818);
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

id sub_23DB66CA0@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    result = [*(a1 + 16) summary];
    if (result)
    {
      v6 = result;
      sub_23DB708BC();

      sub_23DA16E70();
      result = sub_23DB6FD8C();
      v10 = v9 & 1;
    }

    else
    {
      v7 = 0;
      v10 = 0;
      v8 = 0;
    }

    *a3 = result;
    a3[1] = v7;
    a3[2] = v10;
    a3[3] = v8;
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB66DB0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301260, &qword_23DB84830);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  if (a1)
  {

    v12 = sub_23DB69D70();

    v13 = *a3;
    swift_beginAccess();
    v14 = *(v12 + v13);

    if (*(v14 + 16))
    {
      v17 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301288, &qword_23DB84890);
      sub_23DB6EA8C();
      sub_23DA17B80(&qword_27E301290, &qword_27E301288, &qword_23DB84890, MEMORY[0x277D83980]);
      sub_23DB6D288(&qword_27E301298, type metadata accessor for DescriptionSectionItem, &unk_23DB84450);
      sub_23DB7050C();
      (*(v9 + 32))(a5, v11, v8);
      v15 = 0;
    }

    else
    {

      v15 = 1;
    }

    return (*(v9 + 56))(a5, v15, 1, v8);
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB6704C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for DescriptionSectionItem(0);
  sub_23DA16E70();

  result = sub_23DB6FD8C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t View.platformAccessibilityAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_23DB6F8DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6F8CC();
  sub_23DB6FF6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23DB67210@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23DB6F67C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301180, &qword_23DB846E8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v14;
  if (a1)
  {
    swift_beginAccess();
    v15 = [*(a1 + 16) title];
    if (v15)
    {
      v51 = a3;
      v16 = v15;
      v17 = sub_23DB708BC();
      v52 = v13;
      v53 = v12;
      v18 = v17;
      v20 = v19;

      *&v64[0] = v18;
      *(&v64[0] + 1) = v20;
      sub_23DA16E70();
      v21 = sub_23DB6FD8C();
      v50 = v8;
      v23 = v22;
      LOBYTE(v16) = v24;
      v25 = sub_23DB6FBEC();
      (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
      sub_23DB6FC2C();
      sub_23DA17988(v11, &qword_27E2FCEE8, &qword_23DB846E0);
      v26 = sub_23DB6FD3C();
      v48 = v6;
      v49 = v5;
      v28 = v27;
      v30 = v29;

      sub_23DA16EC4(v21, v23, v16 & 1);

      v31 = sub_23DB6FD1C();
      v33 = v32;
      LOBYTE(v23) = v34;
      sub_23DA16EC4(v26, v28, v30 & 1);

      v35 = [objc_opt_self() labelColor];
      sub_23DB700DC();
      v36 = sub_23DB6FCDC();
      v38 = v37;
      LOBYTE(v28) = v39;
      v41 = v40;

      sub_23DA16EC4(v31, v33, v23 & 1);

      sub_23DB7062C();
      sub_23DB6F34C();
      v66 = v28 & 1;
      KeyPath = swift_getKeyPath();
      *&v55 = v36;
      *(&v55 + 1) = v38;
      LOBYTE(v56) = v28 & 1;
      *(&v56 + 1) = v41;
      v61 = v63[6];
      v62 = v63[7];
      v63[0] = v63[8];
      v57 = v63[2];
      v58 = v63[3];
      v59 = v63[4];
      v60 = v63[5];
      *&v63[1] = KeyPath;
      BYTE8(v63[1]) = 1;
      v43 = v50;
      sub_23DB6F66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFF8, &qword_23DB79C40);
      sub_23DB28374();
      v44 = v54;
      sub_23DB6FE8C();
      (*(v48 + 8))(v43, v49);
      v64[6] = v61;
      v64[7] = v62;
      v65[0] = v63[0];
      *(v65 + 9) = *(v63 + 9);
      v64[2] = v57;
      v64[3] = v58;
      v64[4] = v59;
      v64[5] = v60;
      v64[0] = v55;
      v64[1] = v56;
      sub_23DA17988(v64, &qword_27E2FDFF8, &qword_23DB79C40);
      v45 = v51;
      sub_23DA17A54(v44, v51, &qword_27E301180, &qword_23DB846E8);
      return (*(v52 + 56))(v45, 0, 1, v53);
    }

    else
    {
      return (*(v13 + 56))(a3, 1, 1, v12);
    }
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB67794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301138, &qword_23DB845F0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301140, &qword_23DB845F8);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v57 = &v50[-v11];
  type metadata accessor for AudiographExplorerState(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_23DB6E9FC();
  v16 = v15;

  v63[0] = v14;
  v63[1] = v16;
  sub_23DA16E70();
  v17 = sub_23DB6FD8C();
  v19 = v18;
  v21 = v20;
  v22 = [objc_opt_self() labelColor];
  sub_23DB700DC();
  v23 = sub_23DB6FCDC();
  v52 = v24;
  v53 = v23;
  v51 = v25;
  v54 = v26;

  sub_23DA16EC4(v17, v19, v21 & 1);

  if (!a1)
  {
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_23DB6EF0C(v63);

  v27 = v63[0];
  v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  swift_beginAccess();
  v29 = *(a1 + v28);

  if ((v29 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](v27, v29);
  }

  else
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v27 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  v30 = sub_23DB6ADBC();
  v32 = v31;

  v62[0] = v30;
  v62[1] = v32;
  MEMORY[0x28223BE20](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301148, &qword_23DB84648);
  sub_23DB6D7D0();
  sub_23DB6FCAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v62);

  v27 = v62[0];
  v34 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  swift_beginAccess();
  v29 = *(a1 + v34);

  if ((v29 & 0xC000000000000001) != 0)
  {
LABEL_13:
    MEMORY[0x23EEF70C0](v27, v29);
    goto LABEL_10;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    if (v27 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_10:

      v35 = sub_23DB6ADBC();
      v37 = v36;

      v60 = v35;
      v61 = v37;
      v38 = sub_23DB6FD8C();
      v40 = v39;
      v42 = v41;
      sub_23DA17B80(&qword_27E301168, &qword_27E301138, &qword_23DB845F0, MEMORY[0x277CDE5B0]);
      v44 = v56;
      v43 = v57;
      sub_23DB6FF0C();
      sub_23DA16EC4(v38, v40, v42 & 1);

      (*(v55 + 8))(v7, v44);
      v45 = v58;
      sub_23DA0E2B4(v43, v58, &qword_27E301140, &qword_23DB845F8);
      v47 = v52;
      v46 = v53;
      *a3 = v53;
      *(a3 + 8) = v47;
      LOBYTE(v40) = v51 & 1;
      *(a3 + 16) = v51 & 1;
      *(a3 + 24) = v54;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301170, &unk_23DB84660);
      sub_23DA0E2B4(v45, a3 + *(v48 + 48), &qword_27E301140, &qword_23DB845F8);
      sub_23DA6D470(v46, v47, v40);

      sub_23DA17988(v43, &qword_27E301140, &qword_23DB845F8);
      sub_23DA17988(v45, &qword_27E301140, &qword_23DB845F8);
      sub_23DA16EC4(v46, v47, v40);
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB67E28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    swift_beginAccess();
    if (!(*(v3 + v4) >> 62) || (a1 = sub_23DB70C3C(), (a1 & 0x8000000000000000) == 0))
    {
      swift_getKeyPath();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301160, &unk_23DB84650);
      sub_23DA52254();
      sub_23DB6D854();
      return sub_23DB704FC();
    }

    __break(1u);
  }

  type metadata accessor for AudiographExplorerState(a1);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB67FBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2B8, &qword_23DB74308);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-v8];
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;
  v24 = a2;
  v25 = a3;
  v26 = v10;

  sub_23DB703CC();
  if (a2)
  {
    v12 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    swift_beginAccess();
    v13 = *(a2 + v12);
    if ((v13 & 0xC000000000000001) != 0)
    {

      MEMORY[0x23EEF70C0](v10, v13);

      goto LABEL_6;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_6:
      v14 = sub_23DB6ADBC();
      v16 = v15;

      v27 = v14;
      v28 = v16;
      sub_23DA16E70();
      v17 = sub_23DB6FD8C();
      v19 = v18;
      v21 = v20;
      sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
      sub_23DB6FF0C();
      sub_23DA16EC4(v17, v19, v21 & 1);

      return (*(v7 + 8))(v9, v6);
    }

    __break(1u);
  }

  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

void sub_23DB682A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    sub_23DB6A008();
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
    sub_23DB6F38C();
    __break(1u);
  }
}

uint64_t sub_23DB6837C@<X0>(uint64_t a1@<X0>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v5 = a1;
    v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    a1 = swift_beginAccess();
    v8 = *(v5 + v7);
    if ((v8 & 0xC000000000000001) != 0)
    {

      MEMORY[0x23EEF70C0](a3, v8);

      goto LABEL_6;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {

LABEL_6:
      sub_23DB6ADBC();

      sub_23DA16E70();
      v9 = sub_23DB6FD8C();
      v11 = v10;
      v13 = v12;
      v14 = [objc_opt_self() labelColor];
      sub_23DB700DC();
      v15 = sub_23DB6FCDC();
      v17 = v16;
      v19 = v18;

      sub_23DA16EC4(v9, v11, v13 & 1);

      v20 = sub_23DB6FD1C();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      sub_23DA16EC4(v15, v17, v19 & 1);

      *a4 = v20;
      *(a4 + 8) = v22;
      *(a4 + 16) = v24 & 1;
      *(a4 + 24) = v26;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for AudiographExplorerState(a1);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB685D4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v10 = v5[1];
  *a5 = a1();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v11, v10);
}

double sub_23DB6864C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v77 = a3;
  v76 = sub_23DB6F67C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_23DB6F9FC();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010A8, &qword_23DB84538);
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010B0, &qword_23DB84540);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010B8, &qword_23DB84548);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010C0, &qword_23DB84550);
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v62 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010C8, &qword_23DB84558);
  MEMORY[0x28223BE20](v72);
  v66 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010D0, &qword_23DB84560);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v68 = &v62 - v23;
  v24 = swift_allocObject();
  v25 = v63;
  *(v24 + 16) = a1;
  *(v24 + 24) = v25;
  v78 = a1;
  v79 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010D8, &qword_23DB84568);
  sub_23DB6D4A0();
  sub_23DB703CC();
  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v7 + 32))(v13, v9, v65);
  v26 = &v13[*(v11 + 44)];
  v27 = v87;
  *(v26 + 4) = v86;
  *(v26 + 5) = v27;
  *(v26 + 6) = v88;
  v28 = v83;
  *v26 = v82;
  *(v26 + 1) = v28;
  v29 = v85;
  *(v26 + 2) = v84;
  *(v26 + 3) = v29;
  v30 = [objc_opt_self() secondarySystemBackgroundColor];
  v31 = sub_23DB700DC();
  LOBYTE(a1) = sub_23DB6FB3C();
  sub_23DA17A54(v13, v16, &qword_27E3010B0, &qword_23DB84540);
  v32 = &v16[*(v14 + 36)];
  *v32 = v31;
  v32[8] = a1;
  sub_23DB6F9CC();
  v33 = sub_23DB6D588();
  v34 = v64;
  sub_23DB6FF8C();
  (*(v67 + 8))(v6, v69);
  sub_23DA17988(v16, &qword_27E3010B8, &qword_23DB84548);
  type metadata accessor for AudiographExplorerState(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = [objc_opt_self() bundleForClass_];
  v37 = sub_23DB6E9FC();
  v39 = v38;

  v80 = v37;
  v81 = v39;
  sub_23DA16E70();
  v40 = sub_23DB6FD8C();
  v42 = v41;
  v44 = v43;
  v80 = v14;
  v81 = v33;
  swift_getOpaqueTypeConformance2();
  v45 = v66;
  v46 = v71;
  sub_23DB6FF0C();
  sub_23DA16EC4(v40, v42, v44 & 1);

  (*(v73 + 8))(v34, v46);
  v47 = v74;
  sub_23DB6F65C();
  v48 = v70;
  sub_23DB6F27C();
  (*(v75 + 8))(v47, v76);
  sub_23DA17988(v45, &qword_27E3010C8, &qword_23DB84558);
  v49 = v68;
  v50 = &v68[*(v22 + 44)];
  v51 = *(sub_23DB6F32C() + 20);
  v52 = *MEMORY[0x277CE0118];
  v53 = sub_23DB6F63C();
  (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
  __asm { FMOV            V0.2D, #8.0 }

  *v50 = _Q0;
  *&v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  sub_23DA17A54(v48, v49, &qword_27E3010C8, &qword_23DB84558);
  LOBYTE(v52) = sub_23DB6FB3C();
  v59 = v77;
  sub_23DA17A54(v49, v77, &qword_27E3010D0, &qword_23DB84560);
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301110, &qword_23DB84580) + 36);
  *v60 = v52;
  result = 0.0;
  *(v60 + 8) = 0u;
  *(v60 + 24) = 0u;
  *(v60 + 40) = 1;
  return result;
}

void sub_23DB68F08(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_23DB7087C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301118, &qword_23DB845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  v8[0] = 0x6C50646C756F6873;
  v8[1] = 0xEA00000000007961;
  sub_23DB70C8C();
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v8);

    v6 = v8[0] != 1;
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = v6;
    sub_23DB6BF94(inited);
    swift_setDeallocating();
    sub_23DA17988(inited + 32, &qword_27E301120, &qword_23DB845D8);
    v7 = sub_23DB7080C();

    [v3 postNotificationName:v4 object:0 userInfo:v7];
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
    sub_23DB6F38C();
    __break(1u);
  }
}

uint64_t sub_23DB69138(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010F0, &unk_23DB84570);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v15);

    type metadata accessor for AudiographExplorerState(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_23DB6E9FC();
    v11 = v10;

    v15[0] = v9;
    v15[1] = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v14);

    sub_23DA16E70();
    sub_23DB7030C();
    sub_23DA17B80(&qword_27E3010E8, &qword_27E3010F0, &unk_23DB84570, MEMORY[0x277CDEFF0]);
    sub_23DB6FE7C();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState, &protocol conformance descriptor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB6948C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v27 = sub_23DB6F67C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DB6EFFC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301098, &qword_23DB844F8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  v28 = a1;
  v29 = a2;
  v30 = a3 & 1;
  v31 = a4;
  (*(v11 + 104))(v13, *MEMORY[0x277CDF350], v10, v15);
  sub_23DA6D470(a1, a2, a3 & 1);

  sub_23DB6FEDC();
  (*(v11 + 8))(v13, v10);
  sub_23DA16EC4(a1, a2, a3 & 1);

  v18 = [objc_opt_self() labelColor];
  v19 = sub_23DB700DC();
  KeyPath = swift_getKeyPath();
  v21 = &v17[*(v14 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = v24;
  sub_23DB6F66C();
  sub_23DB6D370();
  sub_23DB6FE8C();
  (*(v25 + 8))(v22, v27);
  return sub_23DA17988(v17, &qword_27E301098, &qword_23DB844F8);
}

uint64_t sub_23DB69780@<X0>(uint64_t a2@<X8>)
{
  sub_23DB704CC();
  v3 = sub_23DB7014C();
  v4 = sub_23DB6FB3C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301178, &qword_23DB846D8);
  v6 = a2 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

void sub_23DB697E0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_23DB69838()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_23DB6987C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_23DB69914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

void *sub_23DB69988@<X0>(void *a2@<X8>)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  result = sub_23DB7038C();
  *a2 = v4;
  return result;
}

uint64_t sub_23DB69A04(uint64_t *a1, void *a2)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  return sub_23DB7039C();
}

uint64_t sub_23DB69A88()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  return v1;
}

uint64_t sub_23DB69AF8(uint64_t a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  return sub_23DB7039C();
}

void (*sub_23DB69B70(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v6 = *v5;
  v4[9] = *v5;
  v7 = v5[1];
  v4[3] = v6;
  v4 += 3;
  v4[7] = v7;
  v4[1] = v7;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  return sub_23DB69C44;
}

void sub_23DB69C44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v2[5] = *(*a1 + 72);
  v2[8] = v2[7];
  v2[6] = v3;
  if (a2)
  {

    sub_23DB7039C();
  }

  else
  {
    sub_23DB7039C();
  }

  free(v2);
}

uint64_t sub_23DB69CFC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB703AC();
  return v1;
}

uint64_t sub_23DB69D70()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v11);

  if (v11[0])
  {
    goto LABEL_6;
  }

  v2 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v3 = v2[1];
  v11[0] = *v2;
  v11[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  swift_beginAccess();
  v4 = *(v10 + 40);

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23DB70C3C())
  {

    if (i == 1)
    {
      v6 = 1;
    }

    else
    {
LABEL_6:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(v11);

      v6 = v11[0];
    }

    v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    swift_beginAccess();
    v1 = *(v1 + v7);
    if ((v1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v1 + 8 * v6 + 32);

      return v8;
    }

    __break(1u);
LABEL_15:
    ;
  }

  v8 = MEMORY[0x23EEF70C0](v6, v1);

  return v8;
}

uint64_t sub_23DB69F64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t AudiographExplorerState.init(chartDescriptor:)(void *a1)
{
  sub_23DB6C0D0(a1);
  v3 = v2;

  return v3;
}

void sub_23DB6A008()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v2 = v1[1];
  v15 = *v1;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v15);

  *(v14[0] + 56) = v15;

  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  sub_23DB7038C();
  swift_beginAccess();
  v4 = *(v14[0] + 40);

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DB70C3C())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EEF70C0](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(v14);

      if (v14[0])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C(v14);

        v7 = v14[0] == v8;
      }

      else
      {
        v7 = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v14[0]) = v7;
      sub_23DB6EF1C();
      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_23DB7087C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301118, &qword_23DB845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  v14[0] = 0x6E49736569726573;
  v14[1] = 0xEB00000000786564;
  sub_23DB70C8C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v14);

  v12 = v14[0];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v12;
  sub_23DB6BF94(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E301120, &qword_23DB845D8);
  v13 = sub_23DB7080C();

  [v9 postNotificationName:v10 object:0 userInfo:v13];
}

uint64_t sub_23DB6A454()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DB6A4C8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

void sub_23DB6A548(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF1C();
  sub_23DB6A008();
}

uint64_t sub_23DB6A5C0(uint64_t a1)
{
  v54 = type metadata accessor for DescriptionSectionItem(0);
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  swift_beginAccess();
  v45 = a1;
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DB70C3C())
  {
    v52 = v9 & 0xC000000000000001;
    v46 = v9 + 32;
    v47 = v9 & 0xFFFFFFFFFFFFFF8;

    v11 = 0;
    v48 = i;
    v49 = v9;
    while (v52)
    {
      v12 = MEMORY[0x23EEF70C0](v11, v9);
      v13 = __OFADD__(v11++, 1);
      if (v13)
      {
        goto LABEL_35;
      }

LABEL_12:
      v14 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor;
      v15 = *(v12 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor);
      if (!v15)
      {
        goto LABEL_4;
      }

      v16 = [v15 dataSummary];
      v17 = [v16 dataFeatureDescriptions];

      if (v17)
      {
        v50 = v14;
        v53 = v11;
        v18 = sub_23DB709EC();

        v51 = v18;
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_featureDescriptions;
          v21 = (v51 + 40);
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;

            sub_23DB6EA7C();
            v24 = &v7[*(v54 + 20)];
            *v24 = v22;
            *(v24 + 1) = v23;
            swift_beginAccess();
            v25 = *(v12 + v20);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v12 + v20) = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v25 = sub_23DAC8778(0, v25[2] + 1, 1, v25);
              *(v12 + v20) = v25;
            }

            v28 = v25[2];
            v27 = v25[3];
            if (v28 >= v27 >> 1)
            {
              v25 = sub_23DAC8778((v27 > 1), v28 + 1, 1, v25);
            }

            v25[2] = v28 + 1;
            sub_23DB6DC2C(v7, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v28);
            *(v12 + v20) = v25;
            swift_endAccess();
            v21 += 2;
            --v19;
          }

          while (v19);
        }

        i = v48;
        v9 = v49;
        v11 = v53;
        v14 = v50;
      }

      v29 = *(v12 + v14);
      if (v29 && (v30 = [v29 dataSummary], v31 = objc_msgSend(v30, sel_statsDescriptions), v30, v31))
      {
        v32 = sub_23DB709EC();

        v33 = v32;
        v34 = *(v32 + 16);
        if (v34)
        {
          v53 = v11;
          v35 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_statsDescriptions;
          v51 = v33;
          v36 = (v33 + 40);
          do
          {
            v37 = *(v36 - 1);
            v38 = *v36;

            sub_23DB6EA7C();
            v39 = &v4[*(v54 + 20)];
            *v39 = v37;
            *(v39 + 1) = v38;
            swift_beginAccess();
            v40 = *(v12 + v35);
            v41 = swift_isUniquelyReferenced_nonNull_native();
            *(v12 + v35) = v40;
            if ((v41 & 1) == 0)
            {
              v40 = sub_23DAC8778(0, v40[2] + 1, 1, v40);
              *(v12 + v35) = v40;
            }

            v43 = v40[2];
            v42 = v40[3];
            if (v43 >= v42 >> 1)
            {
              v40 = sub_23DAC8778((v42 > 1), v43 + 1, 1, v40);
            }

            v40[2] = v43 + 1;
            sub_23DB6DC2C(v4, v40 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v43);
            *(v12 + v35) = v40;
            swift_endAccess();
            v36 += 2;
            --v34;
          }

          while (v34);

          i = v48;
          v9 = v49;
          v11 = v53;
        }

        else
        {
        }
      }

      else
      {
LABEL_4:
      }

      if (v11 == i)
      {

        goto LABEL_34;
      }
    }

    if (v11 >= *(v47 + 16))
    {
      goto LABEL_36;
    }

    v12 = *(v46 + 8 * v11);

    v13 = __OFADD__(v11++, 1);
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_34:
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = 1;

  return sub_23DB6EF1C();
}

uint64_t AudiographExplorerState.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__audiographPlaybackStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301018, &qword_23DB83FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__summariesLoaded;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__selectedSeriesIndex;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AudiographExplorerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__audiographPlaybackStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301018, &qword_23DB83FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__summariesLoaded;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__selectedSeriesIndex;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_23DB6AD7C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudiographExplorerState(0);
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

uint64_t sub_23DB6ADBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 name];
    if (v3)
    {
      v4 = v3;
      v5 = sub_23DB708BC();
    }

    else
    {
      type metadata accessor for AudiographExplorerState(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      sub_23DB6E9FC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_23DB73BA0;
      v13 = MEMORY[0x277D83C10];
      *(v12 + 56) = MEMORY[0x277D83B88];
      *(v12 + 64) = v13;
      *(v12 + 32) = 1;
      v5 = sub_23DB7088C();
    }

    return v5;
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    v7 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_23DB6E9FC();

    return v9;
  }
}

uint64_t sub_23DB6AFF4()
{

  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_id;
  v2 = sub_23DB6EA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23DB6B0C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_id;
  v5 = sub_23DB6EA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23DB6B144@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SeriesData(0);
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

uint64_t sub_23DB6B184@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DB6B204(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB6B278@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DB6B2F8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

unint64_t sub_23DB6B36C(uint64_t a1, uint64_t a2)
{
  sub_23DB70E0C();
  sub_23DB7091C();
  v4 = sub_23DB70E4C();

  return sub_23DB6B5E4(a1, a2, v4);
}

unint64_t sub_23DB6B3E4(uint64_t a1)
{
  sub_23DB708BC();
  sub_23DB70E0C();
  sub_23DB7091C();
  v2 = sub_23DB70E4C();

  return sub_23DB6B69C(a1, v2);
}

unint64_t sub_23DB6B478(uint64_t a1)
{
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](a1);
  v2 = sub_23DB70E4C();

  return sub_23DB6B7A0(a1, v2);
}

unint64_t sub_23DB6B4E4(uint64_t a1)
{
  v1 = a1;
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

  v2 = sub_23DB70E4C();

  return sub_23DB6B80C(v1, v2);
}

unint64_t sub_23DB6B5A0(uint64_t a1)
{
  v2 = sub_23DB70C6C();

  return sub_23DB6B968(a1, v2);
}

unint64_t sub_23DB6B5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23DB70DBC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23DB6B69C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23DB708BC();
      v8 = v7;
      if (v6 == sub_23DB708BC() && v8 == v9)
      {
        break;
      }

      v11 = sub_23DB70DBC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23DB6B7A0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23DB6B80C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if (*(*(v2 + 48) + v4) < 0)
      {
        if ((a1 & 0x80) == 0)
        {
          goto LABEL_4;
        }

        v8 = VCCommandIdentifier.rawValue.getter();
        v10 = v13;
        v11 = VCCommandIdentifier.rawValue.getter();
      }

      else
      {
        if (a1 < 0)
        {
          goto LABEL_4;
        }

        v8 = VOCommandIdentifier.rawValue.getter();
        v10 = v9;
        v11 = VOCommandIdentifier.rawValue.getter();
      }

      if (v8 == v11 && v10 == v12)
      {

        return v4;
      }

      v7 = sub_23DB70DBC();

      if (v7)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23DB6B968(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23DB6D710(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEF7020](v9, a1);
      sub_23DB6D76C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23DB6BA30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F40C();
  *a1 = result;
  return result;
}

uint64_t sub_23DB6BA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3012A0, &qword_23DB84898);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DA0E2B4(a1, &v5 - v3, &qword_27E3012A0, &qword_23DB84898);
  return sub_23DB6F4DC();
}

unint64_t sub_23DB6BB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE308, &unk_23DB7BBC0);
    v3 = sub_23DB70D6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23DB6B36C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DB6BC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301188, &unk_23DB84770);
    v3 = sub_23DB70D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DA0E2B4(v4, &v11, &qword_27E2FE1D8, &qword_23DB7A4F0);
      v5 = v11;
      result = sub_23DB6B3E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23DB6D700(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23DB6BD6C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301198, &qword_23DB84788);
  v3 = sub_23DB70D6C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = sub_23DB6B478(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v6;
  v13 = a1 + 13;
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v4;
    v14 = (v3[7] + 32 * v11);
    *v14 = v5;
    v14[1] = result;
    v14[2] = v7;
    v14[3] = v8;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 4);
    v5 = *(v13 - 3);
    v19 = *(v13 - 2);
    v7 = *(v13 - 1);
    v20 = *v13;

    v11 = sub_23DB6B478(v4);
    v13 = v18;
    v8 = v20;
    result = v19;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23DB6BEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301190, &qword_23DB84780);
    v3 = sub_23DB70D6C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23DB6B4E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DB6BF94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301128, &qword_23DB845E0);
    v3 = sub_23DB70D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DA0E2B4(v4, v13, &qword_27E301120, &qword_23DB845D8);
      result = sub_23DB6B5A0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23DB6D700(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_23DB6C0D0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__summariesLoaded;
  LOBYTE(aBlock) = 0;
  sub_23DB6EECC();
  (*(v9 + 32))(v2 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__selectedSeriesIndex;
  aBlock = 0;
  sub_23DB6EECC();
  (*(v5 + 32))(v2 + v13, v7, v4);
  *(v2 + 16) = a1;
  v48 = v2 + 16;
  type metadata accessor for ChartViewModel();
  swift_allocObject();
  v14 = a1;
  v15 = sub_23DB3B41C(v14);
  v16 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v58 = v15;
  sub_23DB7037C();
  v17 = v57;
  *v16 = v56;
  v16[1] = v17;
  swift_endAccess();
  v18 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  v19 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v56 = 0;
  type metadata accessor for PlaybackStatus(0);
  sub_23DB6EECC();
  swift_endAccess();
  type metadata accessor for SeriesData(0);
  v20 = swift_allocObject();

  sub_23DB6EA7C();
  v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor;
  *(v20 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_featureDescriptions) = v19;
  *(v20 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_statsDescriptions) = v19;
  *(v20 + 16) = v2;
  *(v20 + v21) = 0;
  v22 = swift_beginAccess();
  MEMORY[0x23EEF6D70](v22);
  if (*((*(v2 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DB709FC();
  }

  sub_23DB70A0C();
  swift_endAccess();
  v23 = [v14 series];
  sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
  v24 = sub_23DB709EC();

  v25 = v24;
  if (v24 >> 62)
  {
    v36 = sub_23DB70C3C();
    v25 = v24;
    v26 = v36;
    if (!v36)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_15;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return;
  }

  v27 = 0;
  v49 = v25 & 0xC000000000000001;
  v28 = v25;
  do
  {
    if (v49)
    {
      v29 = MEMORY[0x23EEF70C0](v27);
    }

    else
    {
      v29 = *(v25 + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = swift_allocObject();

    v32 = v30;
    sub_23DB6EA7C();
    v33 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor;
    v34 = MEMORY[0x277D84F90];
    *(v31 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_featureDescriptions) = MEMORY[0x277D84F90];
    *(v31 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_statsDescriptions) = v34;
    *(v31 + 16) = v2;
    *(v31 + v33) = v30;
    v35 = swift_beginAccess();
    MEMORY[0x23EEF6D70](v35);
    if (*((*(v2 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23DB709FC();
    }

    ++v27;
    sub_23DB70A0C();
    swift_endAccess();

    v25 = v28;
  }

  while (v26 != v27);
LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&aBlock);

  if ((aBlock & 1) == 0)
  {
    swift_beginAccess();
    v37 = *(v2 + 16);
    v54 = sub_23DB6DC0C;
    v55 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_23DABB3DC;
    v53 = &block_descriptor_10;
    v38 = _Block_copy(&aBlock);

    v39 = v37;

    [v39 generateDataSummariesWithCompletion_];
    _Block_release(v38);
  }

  v40 = *(v2 + v18);
  if (v40 >> 62)
  {
    v41 = sub_23DB70C3C();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v41 < 2;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v42;

  sub_23DB6EF1C();
  sub_23DB6A008();
  qword_27E30A760 = v2;

  v43 = [objc_opt_self() defaultCenter];
  v44 = sub_23DB7087C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301118, &qword_23DB845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  aBlock = 0x6E49736569726573;
  v51 = 0xEB00000000786564;
  sub_23DB70C8C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&aBlock);

  v46 = aBlock;
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v46;
  sub_23DB6BF94(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E301120, &qword_23DB845D8);
  v47 = sub_23DB7080C();

  [v43 postNotificationName:v44 object:0 userInfo:v47];
}

id sub_23DB6C964@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_23DB6C9F8(uint64_t a1)
{
  sub_23DB6CC6C(319);
  if (v1 <= 0x3F)
  {
    sub_23DA15D94(319, &qword_27E2FBFB0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_23DA15D94(319, &qword_27E2FBFA8, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DB6CC6C(uint64_t a1)
{
  if (!qword_27E301040)
  {
    type metadata accessor for PlaybackStatus(255);
    v1 = sub_23DB6EF2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E301040);
    }
  }
}

uint64_t sub_23DB6CCEC(uint64_t a1)
{
  result = sub_23DB6EA8C();
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

unint64_t sub_23DB6CDB8()
{
  result = qword_27E301058;
  if (!qword_27E301058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301060, &qword_23DB841C0);
    sub_23DA17B80(&qword_27E301068, &qword_27E301070, &unk_23DB841C8, MEMORY[0x277CE11A8]);
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301058);
  }

  return result;
}

uint64_t sub_23DB6CEF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_23DB6CFC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_23DB6D0A4(uint64_t a1)
{
  result = sub_23DB6EA8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DB6D124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DB6D16C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23DB6D288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DB6D318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F40C();
  *a1 = result;
  return result;
}

unint64_t sub_23DB6D370()
{
  result = qword_27E3010A0;
  if (!qword_27E3010A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301098, &qword_23DB844F8);
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3010A0);
  }

  return result;
}

uint64_t sub_23DB6D458()
{

  return swift_deallocObject();
}

unint64_t sub_23DB6D4A0()
{
  result = qword_27E3010E0;
  if (!qword_27E3010E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010D8, &qword_23DB84568);
    sub_23DA17B80(&qword_27E3010E8, &qword_27E3010F0, &unk_23DB84570, MEMORY[0x277CDEFF0]);
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3010E0);
  }

  return result;
}

unint64_t sub_23DB6D588()
{
  result = qword_27E3010F8;
  if (!qword_27E3010F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010B8, &qword_23DB84548);
    sub_23DB6D640();
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3010F8);
  }

  return result;
}

unint64_t sub_23DB6D640()
{
  result = qword_27E301100;
  if (!qword_27E301100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010B0, &qword_23DB84540);
    sub_23DA17B80(&qword_27E301108, &qword_27E3010A8, &qword_23DB84538, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301100);
  }

  return result;
}

_OWORD *sub_23DB6D700(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23DB6D7D0()
{
  result = qword_27E301150;
  if (!qword_27E301150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301148, &qword_23DB84648);
    sub_23DB6D854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301150);
  }

  return result;
}

unint64_t sub_23DB6D854()
{
  result = qword_27E301158;
  if (!qword_27E301158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301160, &unk_23DB84650);
    sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301158);
  }

  return result;
}

uint64_t sub_23DB6D944()
{

  return swift_deallocObject();
}

unint64_t sub_23DB6D9EC()
{
  result = qword_27E301248;
  if (!qword_27E301248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301248);
  }

  return result;
}

unint64_t sub_23DB6DA40()
{
  result = qword_27E301250;
  if (!qword_27E301250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301240, &qword_23DB84828);
    sub_23DB6DB58(&qword_27E301258, &qword_27E301260, &qword_23DB84830, MEMORY[0x277CE1290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301250);
  }

  return result;
}

uint64_t sub_23DB6DB58(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DB6DBB8()
{
  result = qword_27E3012B0;
  if (!qword_27E3012B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012B0);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DB6DC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionSectionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB6DCD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DB6DD8C()
{
  result = qword_27E3012D0;
  if (!qword_27E3012D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301110, &qword_23DB84580);
    sub_23DB6DE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012D0);
  }

  return result;
}

unint64_t sub_23DB6DE18()
{
  result = qword_27E3012D8;
  if (!qword_27E3012D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010D0, &qword_23DB84560);
    sub_23DB6DED0();
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012D8);
  }

  return result;
}

unint64_t sub_23DB6DED0()
{
  result = qword_27E3012E0;
  if (!qword_27E3012E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010C8, &qword_23DB84558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010B8, &qword_23DB84548);
    sub_23DB6D588();
    swift_getOpaqueTypeConformance2();
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012E0);
  }

  return result;
}

unint64_t sub_23DB6E010()
{
  result = qword_27E3012F8;
  if (!qword_27E3012F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301178, &qword_23DB846D8);
    sub_23DB6D288(&qword_27E2FF330, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012F8);
  }

  return result;
}

unint64_t sub_23DB6E0FC()
{
  result = qword_27E301300;
  if (!qword_27E301300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301308, &unk_23DB848C0);
    sub_23DB6DCD4(&unk_27E301310, &qword_27E301180, &qword_23DB846E8, sub_23DB28374);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301300);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E30A5B8 == -1)
  {
    if (qword_27E30A5C0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E30A5C0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E30A5B0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E30A5A4 > a3)
      {
        return 1;
      }

      if (dword_27E30A5A4 >= a3)
      {
        return dword_27E30A5A8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E30A5C0;
  if (qword_27E30A5C0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E30A5C0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEF7580](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E30A5A4, &dword_27E30A5A8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void AXSSDeviceHasHomeButton_cold_1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  AXDeviceTemplateType_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}