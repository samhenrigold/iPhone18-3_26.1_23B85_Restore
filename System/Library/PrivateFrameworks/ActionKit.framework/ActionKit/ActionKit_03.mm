uint64_t sub_23DE83F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a1;
  v91 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v89 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v89 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v89 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v89 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v89 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v89 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v89 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v89 - v31;
  MEMORY[0x28223BE20](v30);
  v38 = &v89 - v34;
  if (!(!v54 & v39))
  {
    switch(a2)
    {
      case 0:
        sub_23DE847C8(v90, v23);
        v43 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v23);
        if (v54)
        {
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_1_7();
        v45 = v91;
        (*(v44 + 32))(v91, v23, v43);
        v46 = MEMORY[0x277D73088];
        goto LABEL_35;
      case 1:
        sub_23DE847C8(v90, v20);
        v74 = sub_23E1FD3DC();
        if (__swift_getEnumTagSinglePayload(v20, 1, v74) == 1)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_21();
        v45 = v91;
        (*(v75 + 32))(v91, v20, v74);
        v46 = MEMORY[0x277D73050];
LABEL_35:
        v76 = *v46;
        sub_23E1FD6FC();
        OUTLINED_FUNCTION_21();
        return (*(v77 + 104))(v45, v76);
      case 2:
        sub_23DE847C8(v90, v29);
        v69 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v29);
        if (v54)
        {
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_1_7();
        v70 = OUTLINED_FUNCTION_4_4();
        v71(v70, v29, v69);
        v42 = MEMORY[0x277D73040];
        goto LABEL_42;
      case 3:
        sub_23DE847C8(v90, v26);
        v50 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v26);
        if (v54)
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_1_7();
        v51 = OUTLINED_FUNCTION_4_4();
        v52(v51, v26, v50);
        v42 = MEMORY[0x277D73058];
        goto LABEL_42;
      case 4:
        sub_23DE847C8(v90, &v89 - v34);
        v84 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v38);
        if (v54)
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_1_7();
        v85 = OUTLINED_FUNCTION_4_4();
        v86(v85, v38, v84);
        v42 = MEMORY[0x277D73060];
        goto LABEL_42;
      case 5:
        sub_23DE847C8(v90, v32);
        v78 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v32);
        if (v54)
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_1_7();
        v79 = OUTLINED_FUNCTION_4_4();
        v80(v79, v32, v78);
        v42 = MEMORY[0x277D73038];
        goto LABEL_42;
      case 6:
      case 7:
        goto LABEL_56;
      case 8:
        sub_23DE847C8(v90, v14);
        v81 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v14);
        if (v54)
        {
          goto LABEL_54;
        }

        OUTLINED_FUNCTION_1_7();
        v82 = OUTLINED_FUNCTION_4_4();
        v83(v82, v14, v81);
        v42 = MEMORY[0x277D73028];
        goto LABEL_42;
      case 9:
        sub_23DE847C8(v90, v11);
        v59 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v11);
        if (v54)
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_1_7();
        v60 = OUTLINED_FUNCTION_4_4();
        v61(v60, v11, v59);
        v42 = MEMORY[0x277D73078];
        goto LABEL_42;
      default:
        goto LABEL_57;
    }
  }

  switch(a2)
  {
    case 999:
      a2 = v33;
      sub_23DE847C8(v90, v33);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (v54)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_1_7();
      v40 = OUTLINED_FUNCTION_2_8();
      v41(v40);
      v42 = MEMORY[0x277D73048];
      goto LABEL_42;
    case 1000:
      a2 = v37;
      sub_23DE847C8(v90, v37);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (v54)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_1_7();
      v72 = OUTLINED_FUNCTION_2_8();
      v73(v72);
      v42 = MEMORY[0x277D73098];
      goto LABEL_42;
    case 1001:
      a2 = v36;
      sub_23DE847C8(v90, v36);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (v54)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_1_7();
      v57 = OUTLINED_FUNCTION_2_8();
      v58(v57);
      v42 = MEMORY[0x277D73090];
      goto LABEL_42;
    case 1002:
      v47 = MEMORY[0x277D73068];
      goto LABEL_26;
    case 1003:
      a2 = v35;
      sub_23DE847C8(v90, v35);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (!v54)
      {
        OUTLINED_FUNCTION_1_7();
        v48 = OUTLINED_FUNCTION_2_8();
        v49(v48);
        v42 = MEMORY[0x277D730A0];
LABEL_42:
        v87 = *v42;
        sub_23E1FD6FC();
        OUTLINED_FUNCTION_21();
        return (*(v88 + 104))(v23, v87);
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    default:
      switch(a2)
      {
        case 'c':
          sub_23DE847C8(v90, v17);
          v53 = sub_23E1FD3DC();
          OUTLINED_FUNCTION_0_8(v17);
          if (!v54)
          {
            OUTLINED_FUNCTION_1_7();
            v55 = OUTLINED_FUNCTION_4_4();
            v56(v55, v17, v53);
            v42 = MEMORY[0x277D73070];
            goto LABEL_42;
          }

LABEL_45:
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
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          type metadata accessor for WFContentOperator(0);
          v92 = a2;
          sub_23E1FE79C();
          __break(1u);
LABEL_57:
          JUMPOUT(0);
        case 'd':
          v47 = MEMORY[0x277D73080];
          break;
        case 'e':
          v47 = MEMORY[0x277D73030];
          break;
        default:
          goto LABEL_56;
      }

LABEL_26:
      v62 = *v47;
      sub_23E1FD6FC();
      OUTLINED_FUNCTION_21();
      v64 = *(v63 + 104);
      v66 = v65;
      v67 = v91;

      return v64(v67, v62, v66);
  }
}

uint64_t sub_23DE847C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_23DE848BC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v156 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E250D80;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("text|clipboard|copy|paste|set", 29);
  v14 = v13;
  sub_23E1FDCBC("text|clipboard|copy|paste|set", 29);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v173 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v172 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v170 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222340;
  v22 = v5;
  v23 = *MEMORY[0x277D7CC30];
  *(v21 + 32) = *MEMORY[0x277D7CC30];
  v24 = v20;
  v25 = v23;
  v26 = sub_23E1FDCBC("Copies the result of the last action to the clipboard.", 54);
  v28 = v27;
  sub_23E1FDCBC("Copies the result of the last action to the clipboard.", 54);
  v158 = v22;
  sub_23E1FC14C();
  v29 = [v173 bundleURL];
  v171 = v2;
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v26, v28);
  *(v21 + 64) = v172;
  *(v21 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v32 = sub_23E1FDABC();
  v33 = v170;
  v34 = sub_23DF3BE54(v32);
  v35 = MEMORY[0x277D7CB48];
  *(inited + 120) = v34;
  v36 = *v35;
  *(inited + 144) = v33;
  *(inited + 152) = v36;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v37 = *MEMORY[0x277D7CB60];
  v38 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v37;
  v39 = MEMORY[0x277D7CB58];
  *(inited + 200) = 0x642E6E6F2E636F64;
  *(inited + 208) = 0xEF6C6C69662E636FLL;
  v40 = *v39;
  *(inited + 224) = v38;
  *(inited + 232) = v40;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v41 = *MEMORY[0x277D7CCC0];
  *(inited + 264) = v38;
  *(inited + 272) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v42 = swift_initStackObject();
  v160 = xmmword_23E222350;
  *(v42 + 16) = xmmword_23E222350;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  v43 = MEMORY[0x277D839B0];
  *(v42 + 48) = 1;
  *(v42 + 72) = v43;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7475706E494657;
  *(v42 + 104) = 0xE700000000000000;
  *(v42 + 120) = v38;
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x7365707954;
  *(v42 + 184) = 0xE500000000000000;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v42 + 216) = v161;
  *(v42 + 192) = &unk_285023928;
  v44 = v36;
  v45 = v37;
  v46 = v40;
  v47 = v41;
  v48 = sub_23E1FDABC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 280) = v48;
  v50 = *MEMORY[0x277D7CCC8];
  *(inited + 304) = v49;
  *(inited + 312) = v50;
  *(inited + 320) = 1;
  v51 = *MEMORY[0x277D7CB90];
  *(inited + 344) = v43;
  *(inited + 352) = v51;
  v52 = v50;
  v53 = v51;
  v54 = sub_23E1FDCBC("Copy to Clipboard (Action Name)", 31);
  v56 = v55;
  sub_23E1FDCBC("Copy to Clipboard", 17);
  sub_23E1FC14C();
  v57 = [v173 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v54, v56);
  *(inited + 360) = v59;
  v60 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v172;
  *(inited + 392) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_23E224C00;
  v169 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23E224710;
  v62 = *MEMORY[0x277D7CDF8];
  *(v61 + 32) = *MEMORY[0x277D7CDF8];
  *(v61 + 40) = 0xD000000000000011;
  *(v61 + 48) = 0x800000023E250E40;
  v63 = *MEMORY[0x277D7CE00];
  *(v61 + 64) = MEMORY[0x277D837D0];
  *(v61 + 72) = v63;
  *(v61 + 80) = 0;
  v64 = *MEMORY[0x277D7CE08];
  *(v61 + 104) = v43;
  *(v61 + 112) = v64;
  v65 = v62;
  v66 = v64;
  v167 = v65;
  v159 = v66;
  v67 = v60;
  v68 = v63;
  v69 = sub_23E1FDCBC("When enabled, the input will only be copied locally, and will not be shared to other devices via Handoff. (WFLocalOnly)", 119);
  v71 = v70;
  sub_23E1FDCBC("When enabled, the input will only be copied locally, and will not be shared to other devices via Handoff.", 105);
  sub_23E1FC14C();
  v72 = [v173 bundleURL];
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v69, v71);
  *(v61 + 120) = v74;
  v75 = *MEMORY[0x277D7CE70];
  v76 = v172;
  *(v61 + 144) = v172;
  *(v61 + 152) = v75;
  *(v61 + 160) = 0x4F6C61636F4C4657;
  *(v61 + 168) = 0xEB00000000796C6ELL;
  v77 = *MEMORY[0x277D7CE80];
  *(v61 + 184) = MEMORY[0x277D837D0];
  *(v61 + 192) = v77;
  v78 = v75;
  v79 = v77;
  v80 = v78;
  v81 = v79;
  v164 = v80;
  v163 = v81;
  v166 = sub_23E1FDCBC("Local Only (WFLocalOnly)", 24);
  v83 = v82;
  sub_23E1FDCBC("Local Only", 10);
  sub_23E1FC14C();
  v84 = [v173 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v166, v83);
  *(v61 + 224) = v76;
  *(v61 + 200) = v86;
  _s3__C3KeyVMa_0(0);
  v166 = v87;
  v165 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v88 = sub_23E1FDABC();
  v89 = sub_23DF3BE9C(v88);
  *(v170 + 32) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_23E224C10;
  *(v90 + 32) = v167;
  *(v90 + 40) = 0xD000000000000014;
  *(v90 + 48) = 0x800000023E250150;
  v91 = v159;
  *(v90 + 64) = MEMORY[0x277D837D0];
  *(v90 + 72) = v91;
  v159 = sub_23E1FDCBC("When set, the clipboard contents will expire and be automatically deleted at the specified time. Optional. (WFExpirationDate)", 125);
  v93 = v92;
  sub_23E1FDCBC("When set, the clipboard contents will expire and be automatically deleted at the specified time. Optional.", 106);
  sub_23E1FC14C();
  v94 = v173;
  v95 = [v173 bundleURL];
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v159, v93);
  *(v90 + 80) = v97;
  v98 = v164;
  *(v90 + 104) = v172;
  *(v90 + 112) = v98;
  *(v90 + 120) = 0xD000000000000010;
  *(v90 + 128) = 0x800000023E251070;
  v99 = v163;
  *(v90 + 144) = MEMORY[0x277D837D0];
  *(v90 + 152) = v99;
  v100 = sub_23E1FDCBC("Expire At (WFExpirationDate)", 28);
  v102 = v101;
  sub_23E1FDCBC("Expire At", 9);
  sub_23E1FC14C();
  v103 = [v94 bundleURL];
  sub_23E1FBF9C();

  v104 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v100, v102);
  *(v90 + 160) = v105;
  v106 = *MEMORY[0x277D7CEA8];
  v107 = v172;
  *(v90 + 184) = v172;
  *(v90 + 192) = v106;
  v159 = v106;
  v157 = sub_23E1FDCBC("Today at 3 PM (WFExpirationDate)", 32);
  v109 = v108;
  sub_23E1FDCBC("Today at 3 PM", 13);
  sub_23E1FC14C();
  v110 = [v173 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v157, v109);
  *(v90 + 200) = v112;
  v113 = *MEMORY[0x277D7CF10];
  *(v90 + 224) = v107;
  *(v90 + 232) = v113;
  v114 = MEMORY[0x277D837D0];
  *(v90 + 264) = MEMORY[0x277D837D0];
  *(v90 + 240) = 0x7468676952;
  *(v90 + 248) = 0xE500000000000000;
  v115 = v113;
  v116 = sub_23E1FDABC();
  v117 = sub_23DF3BE9C(v116);
  *(v170 + 40) = v117;
  v118 = swift_allocObject();
  *(v118 + 16) = v160;
  *(v118 + 32) = v167;
  *(v118 + 40) = 0xD000000000000019;
  *(v118 + 48) = 0x800000023E24F180;
  v119 = v163;
  v120 = v164;
  *(v118 + 64) = v114;
  *(v118 + 72) = v120;
  *(v118 + 80) = 0x7475706E494657;
  *(v118 + 88) = 0xE700000000000000;
  *(v118 + 104) = v114;
  *(v118 + 112) = v119;
  v168 = sub_23E1FDCBC("Content (WFInput)", 17);
  v122 = v121;
  sub_23E1FDCBC("Content", 7);
  sub_23E1FC14C();
  v123 = v173;
  v124 = [v173 bundleURL];
  sub_23E1FBF9C();

  v125 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v168, v122);
  *(v118 + 120) = v126;
  v127 = v172;
  v128 = v159;
  *(v118 + 144) = v172;
  *(v118 + 152) = v128;
  v129 = sub_23E1FDCBC("Content (WFInput)", 17);
  v167 = v130;
  v168 = v129;
  sub_23E1FDCBC("Content", 7);
  sub_23E1FC14C();
  v131 = [v123 bundleURL];
  sub_23E1FBF9C();

  v132 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v168, v167);
  *(v118 + 184) = v127;
  *(v118 + 160) = v133;
  v134 = sub_23E1FDABC();
  v135 = sub_23DF3BE9C(v134);
  v136 = v170;
  *(v170 + 48) = v135;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v136;
  v138 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v137;
  *(inited + 432) = v138;
  v139 = v138;
  v140 = sub_23E1FDCBC("Copy ${WFInput} to clipboard (Parameter Summary)", 48);
  v142 = v141;
  sub_23E1FDCBC("Copy ${WFInput} to clipboard", 28);
  sub_23E1FC14C();
  v143 = [v173 bundleURL];
  sub_23E1FBF9C();

  v144 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v140, v142);
  v146 = v145;
  v147 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v148 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v147;
  v149 = *MEMORY[0x277D7CBB0];
  *(inited + 464) = v148;
  *(inited + 472) = v149;
  *(inited + 480) = &unk_285023958;
  v150 = *MEMORY[0x277D7CF20];
  v151 = v161;
  *(inited + 504) = v161;
  *(inited + 512) = v150;
  *(inited + 544) = v151;
  *(inited + 520) = &unk_285023988;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v152 = v149;
  v153 = v150;
  v154 = sub_23E1FDABC();
  return sub_23DF3BF9C(v154);
}

id sub_23DE859B0()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v118 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224420;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E2511B0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("app|foreground|visible|topmost", 30);
  v14 = v13;
  sub_23E1FDCBC("app|foreground|visible|topmost", 30);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v129 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v128 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v125 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222340;
  v22 = v2;
  v23 = v5;
  v24 = *MEMORY[0x277D7CC30];
  *(v21 + 32) = *MEMORY[0x277D7CC30];
  v25 = v20;
  v26 = v24;
  v27 = sub_23E1FDCBC("Gets the current visible app.", 29);
  v29 = v28;
  sub_23E1FDCBC("Gets the current visible app.", 29);
  sub_23E1FC14C();
  v30 = [v129 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v32 = v29;
  v33 = v22;
  sub_23DE477A0(v27, v32);
  v34 = v128;
  *(v21 + 64) = v128;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v36 = sub_23E1FDABC();
  v37 = v125;
  *(inited + 120) = sub_23DF3BE54(v36);
  v38 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v37;
  *(inited + 152) = v38;
  *(inited + 160) = 0x6F6769646E49;
  *(inited + 168) = 0xE600000000000000;
  v39 = *MEMORY[0x277D7CB90];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v39;
  v40 = v38;
  v41 = v39;
  v42 = sub_23E1FDCBC("Get Current App (Action Name)", 29);
  v44 = v43;
  sub_23E1FDCBC("Get Current App", 15);
  v121 = v23;
  sub_23E1FC14C();
  v45 = [v129 bundleURL];
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v42, v44);
  *(inited + 200) = v47;
  v48 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v34;
  *(inited + 232) = v48;
  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v50 = MEMORY[0x277D837D0];
  v51 = sub_23E1FDABC();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7F0, &qword_23E224C68);
  *(inited + 240) = v51;
  v53 = *MEMORY[0x277D7CBA0];
  *(inited + 264) = v52;
  *(inited + 272) = v53;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_23E2235B0;
  v124 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v54 = swift_initStackObject();
  v55 = MEMORY[0x277D7CDF8];
  *(v54 + 16) = xmmword_23E224710;
  v56 = *v55;
  *(v54 + 32) = *v55;
  *(v54 + 40) = 0xD000000000000016;
  *(v54 + 48) = 0x800000023E24FDA0;
  v57 = *MEMORY[0x277D7CE00];
  v58 = v50;
  *(v54 + 64) = v50;
  *(v54 + 72) = v57;
  *(v54 + 80) = 0x746E6572727543;
  *(v54 + 88) = 0xE700000000000000;
  v59 = *MEMORY[0x277D7CE38];
  *(v54 + 104) = v58;
  *(v54 + 112) = v59;
  v119 = swift_allocObject();
  v122 = xmmword_23E2246F0;
  *(v119 + 16) = xmmword_23E2246F0;
  v60 = v53;
  v61 = v56;
  v62 = v57;
  v63 = v59;
  v118 = sub_23E1FDCBC("Current (WFVisibleAppScope)", 27);
  v65 = v64;
  sub_23E1FDCBC("Current", 7);
  sub_23E1FC14C();
  v66 = v129;
  v67 = [v129 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v118, v65);
  v69 = v119;
  *(v119 + 32) = v70;
  v71 = sub_23E1FDCBC("Visible (WFVisibleAppScope)", 27);
  v118 = v72;
  sub_23E1FDCBC("Visible", 7);
  v127 = inited;
  sub_23E1FC14C();
  v73 = [v66 bundleURL];
  sub_23E1FBF9C();

  v74 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v75 = v33;
  sub_23DE477A0(v71, v118);
  *(v69 + 40) = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v54 + 120) = v69;
  v78 = *MEMORY[0x277D7CE70];
  *(v54 + 144) = v77;
  *(v54 + 152) = v78;
  *(v54 + 160) = 0xD000000000000011;
  *(v54 + 168) = 0x800000023E2512A0;
  v79 = *MEMORY[0x277D7CE80];
  *(v54 + 184) = MEMORY[0x277D837D0];
  *(v54 + 192) = v79;
  v80 = v78;
  v81 = v79;
  v82 = sub_23E1FDCBC("Scope (WFVisibleAppScope)", 25);
  v84 = v83;
  sub_23E1FDCBC("Scope", 5);
  sub_23E1FC14C();
  v85 = v129;
  v86 = [v129 bundleURL];
  v120 = v75;
  sub_23E1FBF9C();

  v87 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v82, v84);
  *(v54 + 224) = v128;
  *(v54 + 200) = v88;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v89 = sub_23E1FDABC();
  v90 = sub_23DF3BE9C(v89);
  v91 = v125;
  *(v125 + 32) = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v93 = v127;
  *(v127 + 280) = v91;
  v94 = *MEMORY[0x277D7CB98];
  *(v93 + 304) = v92;
  *(v93 + 312) = v94;
  v128 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v95 = swift_allocObject();
  *(v95 + 16) = v122;
  v96 = v94;
  v97 = sub_23E1FDCBC("Get ${WFVisibleAppScope} app (Parameter Summary)", 48);
  v99 = v98;
  sub_23E1FDCBC("Get ${WFVisibleAppScope} app", 28);
  sub_23E1FC14C();
  v100 = [v85 bundleURL];
  sub_23E1FBF9C();

  v101 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v97, v99);
  v103 = v102;
  v104 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v95 + 32) = sub_23DF34C40(0xD00000000000001ALL, 0x800000023E2512E0, v103);
  v105 = sub_23E1FDCBC("Get ${WFVisibleAppScope} apps (Parameter Summary)", 49);
  v107 = v106;
  sub_23E1FDCBC("Get ${WFVisibleAppScope} apps", 29);
  sub_23E1FC14C();
  v108 = [v129 bundleURL];
  sub_23E1FBF9C();

  v109 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v105, v107);
  v111 = v110;
  v112 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v95 + 40) = sub_23DF34C40(0xD00000000000001ALL, 0x800000023E251360, v111);
  v113 = v128;
  v114 = sub_23DF333E0(v95);
  v115 = v127;
  *(v127 + 344) = v113;
  *(v115 + 320) = v114;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v116 = sub_23E1FDABC();
  return sub_23DF3BF9C(v116);
}

id sub_23DE865F0()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v144 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x800000023E251410;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("clean|link|links|long|short", 27);
  v14 = v13;
  sub_23E1FDCBC("clean|link|links|long|short", 27);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v152 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v150 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v149 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222380;
  v22 = *MEMORY[0x277D7CC20];
  *(v21 + 32) = *MEMORY[0x277D7CC20];
  v23 = v20;
  v24 = v22;
  v25 = sub_23E1FDCBC("The expanded URL is cleaned, removing unnecessary parameters such as utm_source.", 82);
  v27 = v26;
  sub_23E1FDCBC("The expanded URL is cleaned, removing unnecessary parameters such as utm_source.", 82);
  sub_23E1FC14C();
  v28 = [v152 bundleURL];
  sub_23E1FBF9C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v30 = v25;
  v31 = v2;
  sub_23DE477A0(v30, v27);
  *(v21 + 40) = v32;
  v33 = *MEMORY[0x277D7CC28];
  v34 = v150;
  *(v21 + 64) = v150;
  *(v21 + 72) = v33;
  v35 = v33;
  v36 = sub_23E1FDCBC("The full, expanded URL, or the original URL if the URL was not shortened", 72);
  v146 = v37;
  v147 = v36;
  sub_23E1FDCBC("The full, expanded URL, or the original URL if the URL was not shortened", 72);
  sub_23E1FC14C();
  v38 = v152;
  v39 = [v152 bundleURL];
  v151 = v31;
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v147, v146);
  *(v21 + 80) = v41;
  v42 = *MEMORY[0x277D7CC30];
  *(v21 + 104) = v34;
  *(v21 + 112) = v42;
  v43 = v34;
  v44 = v42;
  v45 = sub_23E1FDCBC("This action expands and cleans up URLs which have been shortened using a URL shortening service like TinyURL or Bit.ly.", 119);
  v147 = v46;
  sub_23E1FDCBC("This action expands and cleans up URLs which have been shortened using a URL shortening service like TinyURL or Bit.ly.", 119);
  sub_23E1FC14C();
  v47 = [v38 bundleURL];
  sub_23E1FBF9C();

  v48 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v45, v147);
  *(v21 + 144) = v43;
  *(v21 + 120) = v49;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v50 = sub_23E1FDABC();
  v51 = v149;
  *(inited + 120) = sub_23DF3BE54(v50);
  v52 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v51;
  *(inited + 152) = v52;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v53 = *MEMORY[0x277D7CB60];
  v54 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v53;
  v55 = MEMORY[0x277D7CB58];
  *(inited + 200) = 1802398060;
  *(inited + 208) = 0xE400000000000000;
  v56 = *v55;
  *(inited + 224) = v54;
  *(inited + 232) = v56;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v57 = *MEMORY[0x277D7CCC0];
  *(inited + 264) = v54;
  *(inited + 272) = v57;
  v58 = v54;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v59 = swift_initStackObject();
  v145 = xmmword_23E222350;
  *(v59 + 16) = xmmword_23E222350;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  v60 = MEMORY[0x277D839B0];
  *(v59 + 48) = 1;
  *(v59 + 72) = v60;
  strcpy((v59 + 80), "ParameterKey");
  *(v59 + 93) = 0;
  *(v59 + 94) = -5120;
  *(v59 + 96) = 5001813;
  *(v59 + 104) = 0xE300000000000000;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x6465726975716552;
  *(v59 + 136) = 0xE800000000000000;
  *(v59 + 144) = 1;
  *(v59 + 168) = v60;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v59 + 216) = v149;
  *(v59 + 192) = &unk_285023A20;
  v61 = v52;
  v62 = v53;
  v63 = v56;
  v64 = v57;
  v65 = sub_23E1FDABC();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v147 = v66;
  *(inited + 280) = v65;
  v67 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v66;
  *(inited + 312) = v67;
  v68 = v67;
  v69 = sub_23E1FDCBC("Expand URL (Action Name)", 24);
  v71 = v70;
  sub_23E1FDCBC("Expand URL", 10);
  sub_23E1FC14C();
  v72 = v152;
  v73 = [v152 bundleURL];
  sub_23E1FBF9C();

  v74 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v75 = v5;
  sub_23DE477A0(v69, v71);
  *(inited + 320) = v76;
  v77 = *MEMORY[0x277D7CDD0];
  v78 = v150;
  *(inited + 344) = v150;
  *(inited + 352) = v77;
  v79 = swift_allocObject();
  *(v79 + 16) = v145;
  *(v79 + 32) = 0x75736F6C63736944;
  *(v79 + 40) = 0xEF6C6576654C6572;
  *(v79 + 48) = 0x63696C627550;
  *(v79 + 56) = 0xE600000000000000;
  *(v79 + 72) = MEMORY[0x277D837D0];
  *(v79 + 80) = 0x656C7069746C754DLL;
  *(v79 + 88) = 0xE800000000000000;
  *(v79 + 96) = 1;
  *(v79 + 120) = MEMORY[0x277D839B0];
  *(v79 + 128) = 0x614E74757074754FLL;
  *(v79 + 136) = 0xEA0000000000656DLL;
  v80 = v77;
  v146 = sub_23E1FDCBC("Expanded URL (Default Output Name)", 34);
  v82 = v81;
  sub_23E1FDCBC("Expanded URL", 12);
  v144[1] = v75;
  sub_23E1FC14C();
  v83 = [v72 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v146, v82);
  *(v79 + 144) = v85;
  *(v79 + 168) = v78;
  *(v79 + 176) = 0x7365707954;
  *(v79 + 216) = v149;
  *(v79 + 184) = 0xE500000000000000;
  *(v79 + 192) = &unk_285023A50;
  v86 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v87 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v147;
  *(inited + 392) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_23E2235B0;
  v146 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_23E224420;
  v89 = *MEMORY[0x277D7CDF0];
  *(v88 + 32) = *MEMORY[0x277D7CDF0];
  *(v88 + 40) = 1701736270;
  v90 = MEMORY[0x277D7CDF8];
  *(v88 + 48) = 0xE400000000000000;
  v91 = *v90;
  *(v88 + 64) = v86;
  *(v88 + 72) = v91;
  v92 = MEMORY[0x277D7CE18];
  *(v88 + 80) = 0xD000000000000014;
  *(v88 + 88) = 0x800000023E24EAF0;
  v93 = *v92;
  *(v88 + 104) = v86;
  *(v88 + 112) = v93;
  v94 = v86;
  v95 = MEMORY[0x277D7CE70];
  *(v88 + 120) = 1;
  v96 = *v95;
  *(v88 + 144) = MEMORY[0x277D839B0];
  *(v88 + 152) = v96;
  *(v88 + 160) = 5001813;
  *(v88 + 168) = 0xE300000000000000;
  v97 = *MEMORY[0x277D7CE78];
  *(v88 + 184) = v94;
  *(v88 + 192) = v97;
  *(v88 + 200) = 5001813;
  *(v88 + 208) = 0xE300000000000000;
  v98 = *MEMORY[0x277D7CE80];
  *(v88 + 224) = v94;
  *(v88 + 232) = v98;
  v99 = v87;
  v100 = v89;
  v101 = v91;
  v102 = v93;
  v103 = v96;
  v104 = v97;
  v105 = v98;
  v106 = sub_23E1FDCBC("URL (URL)", 9);
  *&v145 = v107;
  sub_23E1FDCBC("URL", 3);
  sub_23E1FC14C();
  v108 = v152;
  v109 = [v152 bundleURL];
  sub_23E1FBF9C();

  v110 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v106, v145);
  *(v88 + 240) = v111;
  v112 = *MEMORY[0x277D7CEA8];
  v113 = v150;
  *(v88 + 264) = v150;
  *(v88 + 272) = v112;
  v114 = v112;
  *&v145 = sub_23E1FDCBC("URL (URL)", 9);
  v116 = v115;
  sub_23E1FDCBC("URL", 3);
  sub_23E1FC14C();
  v117 = [v108 bundleURL];
  sub_23E1FBF9C();

  v118 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v145, v116);
  *(v88 + 280) = v119;
  v120 = *MEMORY[0x277D7CF18];
  *(v88 + 304) = v113;
  *(v88 + 312) = v120;
  *(v88 + 344) = MEMORY[0x277D837D0];
  *(v88 + 320) = 5001813;
  *(v88 + 328) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v121 = v120;
  v122 = sub_23E1FDABC();
  v123 = sub_23DF3BE9C(v122);
  v124 = v147;
  *(v147 + 32) = v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v124;
  v126 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v125;
  *(inited + 432) = v126;
  v127 = v126;
  v128 = sub_23E1FDCBC("Expand ${URL} (Parameter Summary)", 33);
  v130 = v129;
  sub_23E1FDCBC("Expand ${URL}", 13);
  sub_23E1FC14C();
  v131 = [v152 bundleURL];
  sub_23E1FBF9C();

  v132 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v128, v130);
  v134 = v133;
  v135 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v136 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v135;
  v137 = *MEMORY[0x277D7CF20];
  *(inited + 464) = v136;
  *(inited + 472) = v137;
  v138 = MEMORY[0x277D7CB78];
  *(inited + 480) = &unk_285023A80;
  v139 = *v138;
  *(inited + 504) = v149;
  *(inited + 512) = v139;
  *(inited + 544) = MEMORY[0x277D839B0];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v140 = v137;
  v141 = v139;
  v142 = sub_23E1FDABC();
  return sub_23DF3BF9C(v142);
}

uint64_t WFContentItem.isImage()()
{
  OUTLINED_FUNCTION_23();
  v1[2] = v0;
  v2 = sub_23E1FCC8C();
  v1[3] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = sub_23E1FD03C();
  v1[6] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DE87614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_165();
  a20 = v22;
  v26 = [*(v22 + 16) preferredFileType];
  *(v22 + 96) = v26;
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v27 = swift_dynamicCastObjCClass();
  if (v27 && [v27 outputsFileContent])
  {
    v28 = *(v22 + 16);
    *(v22 + 104) = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v29 = v28;
    v30 = sub_23E1FD02C();
    sub_23E1FE1AC();

    v31 = OUTLINED_FUNCTION_44_1();
    v32 = *(v22 + 88);
    v34 = *(v22 + 48);
    v33 = *(v22 + 56);
    if (v31)
    {
      OUTLINED_FUNCTION_23_2();
      v35 = OUTLINED_FUNCTION_20_2();
      a11 = v35;
      *v32 = 136315138;
      v36 = [v23 name];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_21_3();

      OUTLINED_FUNCTION_33_2(v37, v38, v39, v40);
      OUTLINED_FUNCTION_43_1();
      *(v32 + 4) = v36;
      OUTLINED_FUNCTION_73_0(&dword_23DE30000, v41, v42, "Attempting to determine if link entity has an image '%s'");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_21_0();

      v43 = *(v33 + 8);
      v43(a10, v34);
    }

    else
    {

      v43 = *(v33 + 8);
      v43(v32, v34);
    }

    *(v22 + 112) = v43;
    v84 = *(v22 + 40);
    sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
    sub_23E1FCC5C();
    *(v22 + 120) = sub_23DE8928C(v84);
    v85 = swift_task_alloc();
    *(v22 + 128) = v85;
    *v85 = v22;
    v85[1] = sub_23DE87B20;
    OUTLINED_FUNCTION_72_0();

    return MEMORY[0x28214EF68](v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (v26)
    {
      v44 = *(v22 + 32);
      OUTLINED_FUNCTION_36_2();
      sub_23E1FCC5C();
      v45 = sub_23E1FCC0C();
      v46 = *(v44 + 8);
      v47 = OUTLINED_FUNCTION_24_2();
      v46(v47);
      v48 = OUTLINED_FUNCTION_27_2();

      if (v48 && (OUTLINED_FUNCTION_36_2(), sub_23E1FCC2C(), v49 = sub_23E1FCC0C(), v50 = OUTLINED_FUNCTION_24_2(), v46(v50), v51 = OUTLINED_FUNCTION_27_2(), v49, (v51 & 1) != 0))
      {
        v52 = *(v22 + 16);
        sub_23E1FCB9C();
        v53 = v52;
        v54 = sub_23E1FD02C();
        v55 = sub_23E1FE19C();

        v56 = os_log_type_enabled(v54, v55);
        v57 = *(v22 + 72);
        v59 = *(v22 + 48);
        v58 = *(v22 + 56);
        if (v56)
        {
          v60 = *(v22 + 16);
          OUTLINED_FUNCTION_38_0();
          v61 = OUTLINED_FUNCTION_42_1();
          a11 = v61;
          *v59 = 136315138;
          v62 = [v60 name];
          v63 = sub_23E1FDC1C();
          a9 = v57;
          v65 = v64;

          v66 = sub_23DE56B40(v63, v65, &a11);

          *(v59 + 4) = v66;
          OUTLINED_FUNCTION_41_2(&dword_23DE30000, v67, v68, "Ignoring SVG image with name '%s'");
          __swift_destroy_boxed_opaque_existential_0(v61);
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_11_1();

          (*(v58 + 8))(a9, a10);
        }

        else
        {

          (*(v58 + 8))(v57, v59);
        }
      }

      else
      {
      }
    }

    else
    {
      v69 = *(v22 + 16);
      sub_23E1FCB9C();
      v70 = v69;
      v71 = sub_23E1FD02C();
      sub_23E1FE1AC();

      v72 = OUTLINED_FUNCTION_44_1();
      v73 = *(v22 + 56);
      v74 = *(v22 + 64);
      v75 = *(v22 + 48);
      if (v72)
      {
        OUTLINED_FUNCTION_23_2();
        v76 = OUTLINED_FUNCTION_20_2();
        a11 = v76;
        *v74 = 136315138;
        v77 = [v23 name];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_21_3();

        OUTLINED_FUNCTION_33_2(v78, v79, v80, v81);
        OUTLINED_FUNCTION_43_1();
        *(v74 + 4) = v77;
        OUTLINED_FUNCTION_73_0(&dword_23DE30000, v82, v83, "Could not determine preferred file type for content item '%s'");
        __swift_destroy_boxed_opaque_existential_0(v76);
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_21_0();

        (*(v73 + 8))(a10, v75);
      }

      else
      {

        (*(v73 + 8))(v74, v75);
      }
    }

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v96(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DE87B20(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  *v6 = *v2;

  v7 = *(v4 + 120);
  if (v1)
  {
  }

  else
  {

    *(v5 + 136) = a1;
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23DE87C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_165();
  a20 = v22;
  v26 = v22[17];
  v27 = v22[12];
  v28 = [v26 wfType];

  if (v28)
  {
    v29 = v22[4];
    OUTLINED_FUNCTION_36_2();
    sub_23E1FCC5C();
    v30 = sub_23E1FCC0C();
    v31 = *(v29 + 8);
    v32 = OUTLINED_FUNCTION_24_2();
    v31(v32);
    v33 = OUTLINED_FUNCTION_27_2();

    if (v33 && (OUTLINED_FUNCTION_36_2(), sub_23E1FCC2C(), v34 = sub_23E1FCC0C(), v35 = OUTLINED_FUNCTION_24_2(), v31(v35), v36 = OUTLINED_FUNCTION_27_2(), v34, (v36 & 1) != 0))
    {
      v37 = v22[2];
      sub_23E1FCB9C();
      v38 = v37;
      v39 = sub_23E1FD02C();
      v40 = sub_23E1FE19C();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v22[9];
      v44 = v22[6];
      v43 = v22[7];
      if (v41)
      {
        v45 = v22[2];
        OUTLINED_FUNCTION_38_0();
        v46 = OUTLINED_FUNCTION_42_1();
        a11 = v46;
        *v44 = 136315138;
        v47 = [v45 name];
        v48 = sub_23E1FDC1C();
        a9 = v42;
        v50 = v49;

        v51 = sub_23DE56B40(v48, v50, &a11);

        *(v44 + 4) = v51;
        OUTLINED_FUNCTION_41_2(&dword_23DE30000, v52, v53, "Ignoring SVG image with name '%s'");
        __swift_destroy_boxed_opaque_existential_0(v46);
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_11_1();

        (*(v43 + 8))(a9, a10);
      }

      else
      {

        (*(v43 + 8))(v42, v44);
      }
    }

    else
    {
    }
  }

  else
  {
    v54 = v22[2];
    sub_23E1FCB9C();
    v55 = v54;
    v56 = sub_23E1FD02C();
    sub_23E1FE1AC();

    v57 = OUTLINED_FUNCTION_44_1();
    v58 = v22[7];
    v59 = v22[8];
    v60 = v22[6];
    if (v57)
    {
      OUTLINED_FUNCTION_23_2();
      v61 = OUTLINED_FUNCTION_20_2();
      a11 = v61;
      *v59 = 136315138;
      v62 = [v23 name];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_21_3();

      OUTLINED_FUNCTION_33_2(v63, v64, v65, v66);
      OUTLINED_FUNCTION_43_1();
      *(v59 + 4) = v62;
      OUTLINED_FUNCTION_73_0(&dword_23DE30000, v67, v68, "Could not determine preferred file type for content item '%s'");
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_21_0();

      (*(v58 + 8))(a10, v60);
    }

    else
    {

      (*(v58 + 8))(v59, v60);
    }
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_72_0();

  return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23DE87FB0()
{
  v22 = v0;
  v3 = v0[2];
  sub_23E1FCB9C();
  v4 = v3;
  v5 = sub_23E1FD02C();
  sub_23E1FE1AC();

  v6 = OUTLINED_FUNCTION_44_1();
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[6];
  if (v6)
  {
    v20 = v0[6];
    v19 = v0[14];
    v11 = OUTLINED_FUNCTION_23_2();
    v18 = v9;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = [v10 name];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_21_3();

    sub_23DE56B40(v1, v2, &v21);
    OUTLINED_FUNCTION_43_1();
    *(v11 + 4) = v13;
    OUTLINED_FUNCTION_73_0(&dword_23DE30000, v14, v15, "Failed to create file from finder entity, unknown if an image: '%s'");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_21_0();

    v19(v18, v20);
  }

  else
  {

    v7(v9, v10);
  }

  OUTLINED_FUNCTION_12_1();

  return v16(0);
}

uint64_t WFContentItem.imageFile()()
{
  OUTLINED_FUNCTION_23();
  *(v1 + 192) = v0;
  sub_23E1FCC8C();
  *(v1 + 200) = swift_task_alloc();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DE88230()
{
  v1 = v0[24];
  sub_23DE38DA8(0, &qword_27E32C7F8, 0x277CFC410);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_23DE883A4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C800, &qword_23E224C88);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE891E4;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v1 coerceToItemClass:ObjCClassFromMetadata completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE883A4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE884D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v72 = *MEMORY[0x277D85DE8];
  v16 = v14[21];
  if (!sub_23DE4D8B0())
  {

LABEL_11:
    v36 = v14[24];
    v37 = sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    v40 = sub_23DE8B9FC(v38, v39);
    v41 = OUTLINED_FUNCTION_4_5(v40);
    v43 = v42;
    v44 = [v36 name];
    v45 = sub_23E1FDC1C();
    v47 = v46;

    OUTLINED_FUNCTION_15_4();
    *v43 = v45;
    v43[1] = v47;
    OUTLINED_FUNCTION_22_1();
    v43[2] = v49;
    v43[3] = v48;
    v50 = *MEMORY[0x277CFBFE0];
    OUTLINED_FUNCTION_21();
    (*(v51 + 104))(v43, v50, v37);
    swift_willThrow();
    goto LABEL_12;
  }

  sub_23DE59014();
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23EF04DD0](0, v16);
  }

  else
  {
    v17 = *(v16 + 32);
  }

  v18 = v17;

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    goto LABEL_11;
  }

  v20 = v19;
  v21 = v14[25];
  sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
  sub_23E1FCC4C();
  v22 = sub_23DE8928C(v21);
  sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
  v23 = sub_23E1FE39C();
  v14[23] = 0;
  v24 = [v20 generateImageFileForType:v22 includingMetadata:1 compressionQuality:v23 error:v14 + 23];

  v25 = v14[23];
  if (v24)
  {
    v26 = v25;

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v72, a12, a13, a14);
  }

  v71 = v25;
  v41 = sub_23E1FBECC();

  swift_willThrow();
  v50 = *MEMORY[0x277CFBFE0];
LABEL_12:
  v52 = v14[24];
  v53 = sub_23E1FB9FC();
  OUTLINED_FUNCTION_0_9();
  v56 = sub_23DE8B9FC(v54, v55);
  OUTLINED_FUNCTION_2_9(v56);
  v58 = v57;
  v59 = [v52 name];
  sub_23E1FDC1C();
  OUTLINED_FUNCTION_21_3();

  swift_getErrorValue();
  v60 = sub_23E1FE7EC();
  *v58 = &selRef_kilocalorieUnit;
  v58[1] = v15;
  v58[2] = v60;
  v58[3] = v61;
  OUTLINED_FUNCTION_1_8();
  (*(v62 + 104))(v58, v50, v53);
  swift_willThrow();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_72_0();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, v72, a12, a13, a14);
}

uint64_t sub_23DE888A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_38_2();
  v36 = *MEMORY[0x277D85DE8];
  swift_willThrow();
  v13 = *(v12 + 208);
  v14 = *(v12 + 192);
  sub_23E1FB9FC();
  OUTLINED_FUNCTION_0_9();
  v17 = sub_23DE8B9FC(v15, v16);
  OUTLINED_FUNCTION_2_9(v17);
  v19 = v18;
  v20 = [v14 name];
  v21 = sub_23E1FDC1C();
  v23 = v22;

  swift_getErrorValue();
  v24 = sub_23E1FE7EC();
  *v19 = v21;
  v19[1] = v23;
  v19[2] = v24;
  v19[3] = v25;
  OUTLINED_FUNCTION_1_8();
  (*(v26 + 104))(v19);
  swift_willThrow();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_124();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12);
}

uint64_t WFContentItem.imageComponent(model:)()
{
  OUTLINED_FUNCTION_23();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_23E1FD03C();
  v1[5] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  *v7 = v8;
  v7[1] = sub_23DE88AFC;

  return sub_23DE899CC();
}

uint64_t sub_23DE88AFC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_23DE88C3C()
{
  OUTLINED_FUNCTION_4();
  if (sub_23DE8AB10())
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_23DE88D8C;
    v2 = v0[9];
    v3 = v0[3];

    return sub_23DE8AC74(v3, v2);
  }

  else
  {
    v5 = v0[2];
    v6 = v0[9];
    sub_23E1FDA7C();

    v7 = *MEMORY[0x277D42DB8];
    sub_23E1FDA8C();
    OUTLINED_FUNCTION_21();
    (*(v8 + 104))(v5, v7);

    OUTLINED_FUNCTION_19();

    return v9();
  }
}

uint64_t sub_23DE88D8C()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3 & 1;
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE88EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  if (*(v14 + 96))
  {
    v15 = *(v14 + 16);
    v16 = *(v14 + 72);
    sub_23E1FDA7C();

    v17 = *MEMORY[0x277D42DB8];
    sub_23E1FDA8C();
    OUTLINED_FUNCTION_21();
    (*(v18 + 104))(v15, v17);

    OUTLINED_FUNCTION_19();
  }

  else
  {
    sub_23E1FCB9C();
    v19 = sub_23E1FD02C();
    v20 = sub_23E1FE1BC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23DE30000, v19, v20, "Image content is not safe for LLM input.", v21, 2u);
      OUTLINED_FUNCTION_56();
    }

    a10 = *(v14 + 72);
    v23 = *(v14 + 48);
    v22 = *(v14 + 56);
    v24 = *(v14 + 40);
    v25 = *(v14 + 24);

    (*(v23 + 8))(v22, v24);
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    v28 = sub_23DE8B9FC(v26, v27);
    OUTLINED_FUNCTION_40_1(v28);
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C810, &qword_23E224CA8);
    v32 = v31[12];
    v33 = v31[16];
    v34 = v31[20];
    v35 = *MEMORY[0x277CFC088];
    sub_23E1FBB0C();
    OUTLINED_FUNCTION_21();
    (*(v36 + 104))(v30, v35);
    __swift_project_boxed_opaque_existential_0(v25, v25[3]);
    sub_23E1FBA4C();
    v37 = sub_23E1FBC1C();
    __swift_storeEnumTagSinglePayload(v30 + v32, 0, 1, v37);
    *(v30 + v33) = 0;
    v38 = sub_23E1FBAFC();
    __swift_storeEnumTagSinglePayload(v30 + v34, 1, 1, v38);
    OUTLINED_FUNCTION_21();
    (*(v39 + 104))(v30);
    swift_willThrow();

    OUTLINED_FUNCTION_19();
  }

  OUTLINED_FUNCTION_72_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23DE89180()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_23DE891E4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_23DEEC878();
  }

  else
  {
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    sub_23E1FDDEC();

    return sub_23DEEC87C();
  }
}

id sub_23DE8928C(uint64_t a1)
{
  v2 = sub_23E1FCC0C();
  v3 = [swift_getObjCClassFromMetadata() typeWithUTType_];

  sub_23E1FCC8C();
  OUTLINED_FUNCTION_21();
  (*(v4 + 8))(a1);
  return v3;
}

void sub_23DE89334()
{
  OUTLINED_FUNCTION_23();
  v1 = [*(v0 + 16) items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_20();
  *(v0 + 24) = sub_23E1FDDEC();

  v2 = sub_23DE4D8B0();
  *(v0 + 32) = v2;
  if (v2)
  {
    *(v0 + 40) = 0;
    if ((*(v0 + 24) & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x23EF04DD0](0);
    }

    else
    {
      OUTLINED_FUNCTION_35_2();
      if (!v6)
      {
        __break(1u);
        return;
      }

      v3 = *(v5 + 32);
    }

    *(v0 + 48) = v3;
    *(v0 + 56) = 1;
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_32_1(v7);
    *v8 = v9;
    OUTLINED_FUNCTION_6_6(v8);

    WFContentItem.isImage()();
  }

  else
  {

    OUTLINED_FUNCTION_12_1();

    v4(0);
  }
}

uint64_t sub_23DE89468()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_23DE89554()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);

  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = 1;
    if (v2 > 0)
    {
LABEL_6:

      OUTLINED_FUNCTION_12_1();

      v5(v3);
      return;
    }

    v2 = 1;
  }

  v4 = *(v0 + 56);
  if (v4 == *(v0 + 32))
  {
    v3 = 0;
    goto LABEL_6;
  }

  *(v0 + 40) = v2;
  if ((*(v0 + 24) & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x23EF04DD0](v4);
  }

  else
  {
    OUTLINED_FUNCTION_35_2();
    if (v4 >= v8)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v6 = *(v7 + 8 * v4 + 32);
  }

  *(v0 + 48) = v6;
  *(v0 + 56) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_32_1(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_6(v10);

  WFContentItem.isImage()();
}

void sub_23DE8968C()
{
  OUTLINED_FUNCTION_23();
  v1 = [*(v0 + 16) items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_20();
  *(v0 + 24) = sub_23E1FDDEC();

  v2 = sub_23DE4D8B0();
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  if (v2)
  {
    if ((*(v0 + 24) & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EF04DD0](0);
    }

    else
    {
      OUTLINED_FUNCTION_35_2();
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = *(v3 + 32);
    }

    *(v0 + 48) = v5;
    *(v0 + 56) = 1;
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_32_1(v6);
    *v7 = v8;
    OUTLINED_FUNCTION_7_3(v7);

    WFContentItem.isImage()();
  }

  else
  {

    OUTLINED_FUNCTION_12_1();
    v10 = *(v0 + 40) != *(v0 + 32);

    v9(v10);
  }
}

uint64_t sub_23DE897C4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_23DE898B0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);

  if ((v1 & 1) != 0 || (v2 = *(v0 + 56), *(v0 + 40) = v2, v2 == *(v0 + 32)))
  {

    OUTLINED_FUNCTION_12_1();
    v4 = *(v0 + 40) != *(v0 + 32);

    v3(v4);
    return;
  }

  if ((*(v0 + 24) & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EF04DD0](v2);
  }

  else
  {
    OUTLINED_FUNCTION_35_2();
    if (v2 >= v6)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v7 = *(v5 + 8 * v2 + 32);
  }

  *(v0 + 48) = v7;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 56) = v2 + 1;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_32_1(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_7_3(v9);

  WFContentItem.isImage()();
}

uint64_t sub_23DE899CC()
{
  v1[43] = v0;
  v2 = sub_23E1FD03C();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  v3 = sub_23E1FBFBC();
  v1[47] = v3;
  v1[48] = *(v3 - 8);
  v1[49] = swift_task_alloc();
  sub_23E1FCC8C();
  v1[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE89B14, 0, 0);
}

uint64_t sub_23DE89B14()
{
  v1 = v0[43];
  sub_23DE38DA8(0, &qword_27E32C7F8, 0x277CFC410);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_23DE89C5C;
  v3 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C800, &qword_23E224C88);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_23DE891E4;
  v0[37] = &block_descriptor_15;
  v0[38] = v3;
  [v1 coerceToItemClass:ObjCClassFromMetadata completionHandler:v0 + 34];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE89C5C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 408) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE89D58()
{
  v1 = v0[42];
  if (!sub_23DE4D8B0())
  {

    goto LABEL_10;
  }

  sub_23DE59014();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x23EF04DD0](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = v2;
  v0[52] = v2;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_10:
    sub_23E1FCB9C();
    v7 = sub_23E1FD02C();
    v8 = sub_23E1FE1AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23DE30000, v7, v8, "Failed to coerce attached content item to WFImageContentItem", v9, 2u);
      OUTLINED_FUNCTION_56();
    }

    v11 = v0[45];
    v10 = v0[46];
    v13 = v0[43];
    v12 = v0[44];

    (*(v11 + 8))(v10, v12);
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    v16 = sub_23DE8B9FC(v14, v15);
    OUTLINED_FUNCTION_40_1(v16);
    v18 = v17;
    v19 = [v13 name];
    v20 = sub_23E1FDC1C();
    v22 = v21;

    OUTLINED_FUNCTION_15_4();
    *v18 = v20;
    v18[1] = v22;
    v18[2] = 0xD00000000000003CLL;
    v18[3] = v23;
    OUTLINED_FUNCTION_21();
    (*(v24 + 104))(v18);
    swift_willThrow();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_171();

    __asm { BRAA            X1, X16 }
  }

  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = sub_23DE8A020;
  OUTLINED_FUNCTION_171();

  return WFContentItem.imageFile()();
}

uint64_t sub_23DE8A020()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;
  *(v5 + 432) = v0;

  if (!v0)
  {
    *(v5 + 440) = v3;
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE8A134()
{
  v2 = v0[55];
  v3 = v0[50];
  sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
  sub_23E1FCC4C();
  v4 = sub_23DE8928C(v3);
  v5 = WFResizedImageFromImageFile();

  if (v5)
  {
    v6 = v0[49];
    sub_23DE38DA8(0, &qword_27E32C2B0, 0x277D79FC8);
    v7 = [v5 fileURL];
    sub_23E1FBF9C();

    v8 = sub_23DE8B748(v6);
    if (v8)
    {
      v9 = v8;
      v10 = [v8 CGImage];
      if (v10)
      {
        v11 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C828, &qword_23E224CC8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23E222350;
        v13 = *MEMORY[0x277CD2928];
        *(inited + 32) = *MEMORY[0x277CD2928];
        v14 = v13;
        Width = CGImageGetWidth(v11);
        v16 = MEMORY[0x277D83B88];
        *(inited + 40) = Width;
        v17 = *MEMORY[0x277CD28D0];
        *(inited + 64) = v16;
        *(inited + 72) = v17;
        v18 = v17;
        *(inited + 80) = CGImageGetHeight(v11);
        v19 = *MEMORY[0x277CD28B0];
        *(inited + 104) = v16;
        *(inited + 112) = v19;
        *(inited + 120) = 4;
        v20 = *MEMORY[0x277CD28D8];
        *(inited + 144) = v16;
        *(inited + 152) = v20;
        *(inited + 184) = MEMORY[0x277D84CC0];
        *(inited + 160) = 1111970369;
        type metadata accessor for IOSurfacePropertyKey(0);
        sub_23DE8B9FC(&qword_27E32BD70, type metadata accessor for IOSurfacePropertyKey);
        v21 = v19;
        v22 = v20;
        OUTLINED_FUNCTION_24_2();
        v23 = sub_23E1FDABC();
        sub_23DE38DA8(0, &qword_27E32C830, 0x277CD2930);
        v24 = sub_23DED20F0(v23);

        v25 = sub_23DE8B7E4(v24);
        if (v25)
        {
          v26 = v25;
          IOSurfaceGetBaseAddress(v26);
          CGImageGetWidth(v11);
          Height = CGImageGetHeight(v11);
          BitsPerComponent = CGImageGetBitsPerComponent(v11);
          v108 = v26;
          BytesPerRow = IOSurfaceGetBytesPerRow(v26);
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v31 = OUTLINED_FUNCTION_24_2();
          v33 = __CGBitmapContextCreate(v31, v32, Height, BitsPerComponent, BytesPerRow, DeviceRGB);

          v34 = v0[52];
          if (v33)
          {
            CGImageGetWidth(v11);
            CGImageGetHeight(v11);
            sub_23E1FE07C();

            OUTLINED_FUNCTION_12_1();

            return v35(v108);
          }

          v91 = v0[43];
          sub_23E1FB9FC();
          OUTLINED_FUNCTION_0_9();
          v94 = sub_23DE8B9FC(v92, v93);
          OUTLINED_FUNCTION_4_5(v94);
          v96 = v95;
          v97 = [v91 name];
          v98 = sub_23E1FDC1C();
          v99 = v34;
          v101 = v100;

          OUTLINED_FUNCTION_15_4();
          *v96 = v98;
          v96[1] = v101;
          v37 = v99;
          OUTLINED_FUNCTION_22_1();
          v96[2] = v102 - 2;
          v96[3] = v103;
          OUTLINED_FUNCTION_21();
          (*(v104 + 104))(v96);
          swift_willThrow();
        }

        else
        {
          v110 = v0[52];
          v81 = v0[43];
          sub_23E1FB9FC();
          OUTLINED_FUNCTION_0_9();
          v84 = sub_23DE8B9FC(v82, v83);
          OUTLINED_FUNCTION_4_5(v84);
          v86 = v85;
          v87 = [v81 name];
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_21_3();

          OUTLINED_FUNCTION_15_4();
          *v86 = v20;
          v86[1] = v1;
          v37 = v110;
          OUTLINED_FUNCTION_22_1();
          v86[2] = v89;
          v86[3] = v88;
          OUTLINED_FUNCTION_21();
          (*(v90 + 104))(v86);
          swift_willThrow();
        }
      }

      else
      {
        v37 = v0[52];
        v68 = v0[43];
        sub_23E1FB9FC();
        OUTLINED_FUNCTION_0_9();
        v71 = sub_23DE8B9FC(v69, v70);
        OUTLINED_FUNCTION_4_5(v71);
        v73 = v72;
        v74 = [v68 name];
        v75 = sub_23E1FDC1C();
        v77 = v76;

        OUTLINED_FUNCTION_15_4();
        *v73 = v75;
        v73[1] = v77;
        OUTLINED_FUNCTION_22_1();
        v73[2] = v79;
        v73[3] = v78;
        OUTLINED_FUNCTION_21();
        (*(v80 + 104))(v73);
        swift_willThrow();
      }
    }

    else
    {
      v109 = v0[52];
      v52 = v0[48];
      v51 = v0[49];
      v53 = v0[47];
      v54 = v0[43];
      sub_23E1FB9FC();
      OUTLINED_FUNCTION_0_9();
      v57 = sub_23DE8B9FC(v55, v56);
      OUTLINED_FUNCTION_2_9(v57);
      v59 = v58;
      v60 = [v54 name];
      v61 = sub_23E1FDC1C();
      v106 = v62;
      v107 = v61;

      sub_23E1FE5CC();

      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_22_1();
      v111 = v64 + 1;
      v112 = v63;
      v65 = [v5 fileURL];
      sub_23E1FBF9C();

      sub_23DE8B9FC(&qword_27E32C820, MEMORY[0x277CC9260]);
      v66 = sub_23E1FE71C();
      MEMORY[0x23EF044F0](v66);

      (*(v52 + 8))(v51, v53);
      v37 = v109;
      *v59 = v107;
      v59[1] = v106;
      v59[2] = v111;
      v59[3] = v112;
      OUTLINED_FUNCTION_1_8();
      (*(v67 + 104))(v59);
      swift_willThrow();
    }
  }

  else
  {
    v37 = v0[52];
    v38 = v0[43];
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    v41 = sub_23DE8B9FC(v39, v40);
    OUTLINED_FUNCTION_4_5(v41);
    v43 = v42;
    v44 = [v38 name];
    v45 = sub_23E1FDC1C();
    v47 = v46;

    OUTLINED_FUNCTION_15_4();
    *v43 = v45;
    v43[1] = v47;
    OUTLINED_FUNCTION_22_1();
    v43[2] = v48 + 7;
    v43[3] = v49;
    OUTLINED_FUNCTION_21();
    (*(v50 + 104))(v43);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_19();

  return v105();
}

uint64_t sub_23DE8AA10()
{
  OUTLINED_FUNCTION_4();
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DE8AA90()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_23DE8AB10()
{
  v0 = sub_23E1FDC1C();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_23DE3B02C(v0, v2);
  v5 = 1;
  if (v4)
  {
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x800000023E251720;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_23E1FDABC();
    v8 = sub_23E1FDA9C();

    [v6 registerDefaults_];

    v9 = sub_23E1FDBDC();
    v5 = [v6 BOOLForKey_];
  }

  return v5;
}

uint64_t sub_23DE8AC74(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = sub_23E1FD03C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE8AD78, 0, 0);
}

uint64_t sub_23DE8AD78()
{
  v1 = *(v0 + 160);
  v2 = [objc_allocWithZone(MEMORY[0x277D4D340]) init];
  *(v0 + 216) = v2;
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  sub_23E1FBA5C();
  v3 = sub_23E1FDBDC();

  [v2 setModelManagerServicesUseCaseID_];

  [v2 setMode_];
  v4 = objc_allocWithZone(MEMORY[0x277D4D338]);
  v5 = v2;
  v6 = sub_23DE8B8B4(v2);
  *(v0 + 224) = v6;
  v9 = v6;
  v10 = *(v0 + 168);
  *(v0 + 144) = 0;
  CVPixelBufferCreateWithIOSurface(0, v10, 0, (v0 + 144));
  v11 = *(v0 + 144);
  if (!v11)
  {
    sub_23E1FCB9C();
    v17 = sub_23E1FD02C();
    v18 = sub_23E1FE1BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23DE30000, v17, v18, "Cannot process image input to feed into image guardrail", v19, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v20 = *(v0 + 200);
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);

    (*(v22 + 8))(v20, v21);
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    v25 = sub_23DE8B9FC(v23, v24);
    OUTLINED_FUNCTION_2_9(v25);
    OUTLINED_FUNCTION_15_4();
    *v26 = 0xD000000000000037;
    v26[1] = v27;
    OUTLINED_FUNCTION_1_8();
    (*(v28 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_171();

    __asm { BRAA            X2, X16 }
  }

  v12 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D4D348]) initWithPixelBuffer_];
  *(v0 + 232) = v13;

  [v13 setStyle_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_23DE8B300;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C818, &qword_23E224CC0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23DE54D3C;
  *(v0 + 104) = &block_descriptor_11;
  *(v0 + 112) = v14;
  [v9 sanitizeRequestAsynchronously:v13 completionHandler:v0 + 80];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x282200938](v15);
}

uint64_t sub_23DE8B300()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE8B42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_38_2();
  v26 = *MEMORY[0x277D85DE8];
  v14 = v12[28];
  v13 = v12[29];
  v15 = v12[27];
  v16 = v12[19];
  [v16 safe];

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_124();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, a11, a12);
}

uint64_t sub_23DE8B508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_38_2();
  v44 = *MEMORY[0x277D85DE8];
  v13 = v12[30];
  swift_willThrow();
  sub_23E1FCB9C();
  v14 = v13;
  v15 = sub_23E1FD02C();
  v16 = sub_23E1FE1BC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v12[30];
    v18 = OUTLINED_FUNCTION_38_0();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v17;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_23DE30000, v15, v16, "SCMLImageSanitization.sanitizeRequest failed with error: %@", v18, 0xCu);
    sub_23DE8B994(v19);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_56();
  }

  v23 = v12[29];
  v22 = v12[30];
  v25 = v12[27];
  v24 = v12[28];
  v27 = v12[23];
  v26 = v12[24];
  v28 = v12[22];

  (*(v27 + 8))(v26, v28);
  sub_23E1FB9FC();
  OUTLINED_FUNCTION_0_9();
  v31 = sub_23DE8B9FC(v29, v30);
  OUTLINED_FUNCTION_2_9(v31);
  OUTLINED_FUNCTION_15_4();
  *v32 = 0xD00000000000002CLL;
  v32[1] = v33;
  OUTLINED_FUNCTION_1_8();
  (*(v34 + 104))();
  swift_willThrow();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_124();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, a11, a12);
}

id sub_23DE8B748(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FBF6C();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_23E1FBFBC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_23DE8B7E4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D220, &qword_23E228040);
  sub_23DE8B9FC(&qword_27E32BD70, type metadata accessor for IOSurfacePropertyKey);
  v2 = sub_23E1FDA9C();

  v3 = [v1 initWithProperties_];

  return v3;
}

id sub_23DE8B8B4(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithConfiguration:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_23E1FBECC();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_23DE8B994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C190, &qword_23E224B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DE8B9FC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_27_2()
{

  return [v0 (v2 + 2865)];
}

unint64_t OUTLINED_FUNCTION_33_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_23DE56B40(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_41_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_1()
{
}

BOOL OUTLINED_FUNCTION_44_1()
{

  return os_log_type_enabled(v0, v1);
}

id sub_23DE8BCDC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v3 = *MEMORY[0x277D7CB18];
  v4 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E2518B0;
  v5 = *MEMORY[0x277D7CB80];
  v6 = v4;
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v7 = v3;
  v8 = v5;
  v9 = sub_23E1FDCBC("separate|delimiter", 18);
  v11 = v10;
  sub_23E1FDCBC("separate|delimiter", 18);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v9, v11);
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v6;
  *(inited + 144) = v6;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v19 = v17;
  *(inited + 152) = sub_23E1FDBDC();
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD000000000000051;
  *(inited + 208) = 0x800000023E2518F0;
  v20 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v6;
  *(inited + 232) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 264) = v39;
  *(inited + 240) = v22;
  *(inited + 272) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222370;
  *(v23 + 32) = 0x65536D6F74737563;
  *(v23 + 40) = 0xEF726F7461726170;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222340;
  v25 = *MEMORY[0x277D7CE70];
  *(v24 + 64) = v18;
  *(v24 + 32) = v25;
  *(v24 + 40) = 0xD000000000000015;
  *(v24 + 48) = 0x800000023E251950;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v26 = v25;
  v27 = sub_23E1FDABC();
  *(v23 + 48) = sub_23DF3BE9C(v27);
  *(v23 + 56) = 0x6F74617261706573;
  *(v23 + 64) = 0xE900000000000072;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_23E222370;
  v29 = *MEMORY[0x277D7CE58];
  *(v28 + 32) = *MEMORY[0x277D7CE58];
  v30 = v29;
  *(v28 + 40) = sub_23E1FDABC();
  *(v28 + 64) = v39;
  *(v28 + 72) = v26;
  *(v28 + 104) = v18;
  *(v28 + 80) = 0x6553747865544657;
  *(v28 + 88) = 0xEF726F7461726170;
  v31 = sub_23E1FDABC();
  *(v23 + 72) = sub_23DF3BE9C(v31);
  v32 = sub_23E1FDABC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 280) = v32;
  v34 = *MEMORY[0x277D7CB78];
  *(inited + 304) = v33;
  *(inited + 312) = v34;
  *(inited + 344) = MEMORY[0x277D839B0];
  *(inited + 320) = 1;
  v35 = v34;
  v36 = sub_23E1FDBDC();
  *(inited + 384) = v18;
  *(inited + 352) = v36;
  *(inited + 360) = 0x656E69626D6F43;
  *(inited + 368) = 0xE700000000000000;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v37 = sub_23E1FDABC();
  return sub_23DF3BF9C(v37);
}

uint64_t getEnumTagSinglePayload for CellularActionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CellularActionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23DE8C4E4(char a1)
{
  v2 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_15();
  v3 = sub_23E1FBEEC();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v4 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_15();
  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_3_4();
      sub_23E1FDB5C();
      if (qword_280DAE5D0 != -1)
      {
        goto LABEL_6;
      }

      break;
    default:
      OUTLINED_FUNCTION_3_4();
      sub_23E1FDB5C();
      if (qword_280DAE5D0 != -1)
      {
LABEL_6:
        OUTLINED_FUNCTION_1_9(&qword_280DAE5D0);
      }

      break;
  }

  __swift_project_value_buffer(v3, qword_280DB7710);
  v5 = OUTLINED_FUNCTION_4_6();
  v6(v5);
  sub_23E1FC19C();
  OUTLINED_FUNCTION_0_10();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE8C790(unsigned __int8 a1)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a1);
  return sub_23E1FE87C();
}

unint64_t sub_23DE8C800()
{
  result = qword_27E32C838;
  if (!qword_27E32C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C838);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_23DE8C8E8()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32C840);
  __swift_project_value_buffer(v0, qword_27E32C840);
  return sub_23E1FB8DC();
}

uint64_t (*static ShortcutsContact.typeDisplayRepresentation.modify())(uint64_t a1)
{
  if (qword_27E32B8F8 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  v1 = __swift_project_value_buffer(v0, qword_27E32C840);
  OUTLINED_FUNCTION_17_0(v1);
  return j_j__swift_endAccess;
}

uint64_t sub_23DE8CA44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B8F8, MEMORY[0x277CBA3A0], qword_27E32C840, sub_23DE8C8E8);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE8CAF4(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B8F8, MEMORY[0x277CBA3A0], qword_27E32C840, sub_23DE8C8E8);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t type metadata accessor for ShortcutsContact(uint64_t a1)
{
  result = qword_280DAF4E8;
  if (!qword_280DAF4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutsContact.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBAC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v11 = type metadata accessor for ShortcutsContact(0);
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  sub_23DE491B4(v0 + *(v11 + 20), v4);
  return sub_23E1FB76C();
}

uint64_t ShortcutsContact.encodedParameters.getter()
{
  type metadata accessor for ShortcutsContact(0);
  v0 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v0, v1);
  return OUTLINED_FUNCTION_49();
}

void sub_23DE8CE44(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v58[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D0, &unk_23E225500);
  v6 = OUTLINED_FUNCTION_25(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = sub_23E1FB70C();
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v14);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = a1;
  v19 = [v18 uniqueIdentifier];
  v20 = sub_23E1FDC1C();
  v22 = v21;

  *a3 = v20;
  a3[1] = v22;
  v54 = v22;
  v23 = [v18 person];
  v24 = [v23 image];

  if (v24)
  {
    v25 = v24;
    sub_23E1FB6FC();
    sub_23E1FB6EC();

    v26 = sub_23E1FB75C();
    v27 = 0;
  }

  else
  {
    v26 = sub_23E1FB75C();
    v27 = 1;
  }

  v28 = 1;
  __swift_storeEnumTagSinglePayload(v17, v27, 1, v26);
  v29 = type metadata accessor for ShortcutsContact(0);
  v53 = v29[5];
  sub_23DE900C0(v17, a3 + v53, &qword_27E32C208, &unk_23E2239B0);
  v30 = [v18 person];
  v31 = [v30 nameComponents];

  if (v31)
  {
    sub_23E1FBE9C();

    v28 = 0;
  }

  v32 = sub_23E1FBEAC();
  __swift_storeEnumTagSinglePayload(v9, v28, 1, v32);
  sub_23DE900C0(v9, v11, &qword_27E32C8D0, &unk_23E225500);
  if (__swift_getEnumTagSinglePayload(v11, 1, v32))
  {
    sub_23DE481FC(v11, &qword_27E32C8D0, &unk_23E225500);
LABEL_8:
    v33 = [v18 person];
    v34 = [v33 displayName];

    v35 = sub_23E1FDC1C();
    v37 = v36;

    goto LABEL_9;
  }

  v35 = sub_23E1FBE8C();
  v37 = v49;
  sub_23DE481FC(v11, &qword_27E32C8D0, &unk_23E225500);
  if (!v37)
  {
    goto LABEL_8;
  }

  v50 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v50 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

    goto LABEL_8;
  }

LABEL_9:
  v38 = (a3 + v29[6]);
  *v38 = v35;
  v38[1] = v37;
  *(a3 + v29[7]) = v55;
  v58[0] = sub_23E1FDABC();
  v39 = sub_23DEC5988(v18);
  if (v39)
  {
    v40 = v56;
    sub_23DE8D35C(v39, v58);
    v56 = v40;
  }

  v41 = objc_opt_self();
  v42 = sub_23E1FDA9C();
  v57 = 0;
  v43 = [v41 archivedDataWithRootObject:v42 requiringSecureCoding:1 error:&v57];

  v44 = v57;
  if (v43)
  {
    v45 = sub_23E1FBFDC();
    v47 = v46;

    v48 = (a3 + v29[8]);
    *v48 = v45;
    v48[1] = v47;
  }

  else
  {
    v51 = v44;
    sub_23E1FBECC();

    swift_willThrow();

    sub_23DE481FC(a3 + v53, &qword_27E32C208, &unk_23E2239B0);
  }
}

void sub_23DE8D35C(uint64_t a1, void *a2)
{
  v4 = 0;
  v34 = a1 & 0xC000000000000001;
  v35 = sub_23DE4D8B0();
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v33 = a1;
  while (v35 != v4)
  {
    if (v34)
    {
      v5 = MEMORY[0x23EF04DD0](v4, v33);
    }

    else
    {
      if (v4 >= *(v32 + 16))
      {
        goto LABEL_25;
      }

      v5 = *(v33 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      sub_23E1FE7BC();
      __break(1u);
      return;
    }

    v7 = [v5 wfParameterKey];
    v8 = sub_23E1FDC1C();
    v10 = v9;

    v11 = [v6 wfSerializedRepresentation];
    if (v11)
    {
      v12 = v11;
      v36 = v6;
      *(&v39 + 1) = swift_getObjectType();
      *&v38 = v12;
      sub_23DE36CA4(&v38, v37);
      swift_isUniquelyReferenced_nonNull_native();
      v13 = a2;
      v40 = *a2;
      v14 = v40;
      v15 = v10;
      v16 = sub_23DF1E154(v8, v10);
      if (__OFADD__(v14[2], (v17 & 1) == 0))
      {
        goto LABEL_26;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      if (sub_23E1FE66C())
      {
        v20 = sub_23DF1E154(v8, v10);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_28;
        }

        v18 = v20;
      }

      v22 = v40;
      if (v19)
      {
        v23 = (v40[7] + 32 * v18);
        __swift_destroy_boxed_opaque_existential_0(v23);
        sub_23DE36CA4(v37, v23);
      }

      else
      {
        v40[(v18 >> 6) + 8] |= 1 << v18;
        v28 = (v22[6] + 16 * v18);
        *v28 = v8;
        v28[1] = v15;
        sub_23DE36CA4(v37, (v22[7] + 32 * v18));
        v29 = v22[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_27;
        }

        v22[2] = v31;
      }

      a2 = v13;
      *v13 = v22;
    }

    else
    {
      v24 = sub_23DF1E154(v8, v10);
      if (v25)
      {
        v26 = v24;
        swift_isUniquelyReferenced_nonNull_native();
        *&v37[0] = *a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
        sub_23E1FE66C();
        v27 = *&v37[0];

        sub_23DE36CA4((*(v27 + 56) + 32 * v26), &v38);
        sub_23E1FE67C();
        *a2 = v27;
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      sub_23DE481FC(&v38, &qword_27E32C320, &unk_23E224B40);
    }

    ++v4;
  }
}

uint64_t sub_23DE8D6BC@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsContact.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DE8D6E4(uint64_t a1)
{
  v2 = sub_23DE8FD30(&qword_280DAF000, type metadata accessor for ShortcutsContact, &protocol conformance descriptor for ShortcutsContact);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DE8D760(uint64_t a1)
{
  v2 = sub_23DE8FD30(&qword_280DAE4B8, type metadata accessor for ShortcutsContact, &protocol conformance descriptor for ShortcutsContact);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DE8D7FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return EmptyContactQuery.entities(for:)();
}

uint64_t sub_23DE8D888(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23DE8F890();
  *v5 = v2;
  v5[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_23DE8D93C()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E32C858);
  __swift_project_value_buffer(v6, qword_27E32C858);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t (*static StartCallTopHitAction.title.modify())(uint64_t a1)
{
  if (qword_27E32B900 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  v1 = __swift_project_value_buffer(v0, qword_27E32C858);
  OUTLINED_FUNCTION_17_0(v1);
  return j_j__swift_endAccess;
}

uint64_t sub_23DE8DC24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B900, MEMORY[0x277CC9130], qword_27E32C858, sub_23DE8D93C);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE8DCD4(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B900, MEMORY[0x277CC9130], qword_27E32C858, sub_23DE8D93C);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static StartCallTopHitAction.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_27E32C870;
  sub_23E1FB7BC();
  return v0;
}

uint64_t static StartCallTopHitAction.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27E32C870 = a1;
  off_27E32C878 = a2;
}

uint64_t sub_23DE8DE88@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27E32C878;
  *a1 = qword_27E32C870;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DE8DED8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27E32C870 = v2;
  off_27E32C878 = v1;
  sub_23E1FB7BC();
}

uint64_t static StartCallTopHitAction.shortcutsMetadata.getter()
{
  v0 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  sub_23E1FC81C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v14 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v14;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E251BA0;
  type metadata accessor for Key(0);
  sub_23DE8FD30(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v15 = v14;
  sub_23E1FDABC();
  (*(v2 + 104))(v6, *MEMORY[0x277D7BF40], v0);
  v16 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE8E1AC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ShortcutsContact(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE8E2D8(a1, v6);
  v8[1] = *a2;
  sub_23E1FB7CC();
  StartCallTopHitAction.person.setter(v6);
}

uint64_t StartCallTopHitAction.person.setter(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutsContact(0);
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  sub_23DE8E2D8(a1, v5 - v4);
  sub_23E1FB5EC();
  return sub_23DE8E33C(a1);
}

uint64_t sub_23DE8E2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsContact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE8E33C(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutsContact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*StartCallTopHitAction.person.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23E1FB5CC();
  return sub_23DE4ABC8;
}

uint64_t StartCallTopHitAction.init()@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v9 = OUTLINED_FUNCTION_25(v8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C880, &qword_23E224DD0);
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v13);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C888, &qword_23E224DD8);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  type metadata accessor for ShortcutsContact(0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  (*(v3 + 104))(v7, *MEMORY[0x277CBA308], v1);
  OUTLINED_FUNCTION_0_11();
  sub_23DE8FD30(v30, v31, &protocol conformance descriptor for ShortcutsContact);
  result = sub_23E1FB61C();
  *v34 = result;
  return result;
}

uint64_t sub_23DE8E748(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE47040;

  return StartCallTopHitAction.perform()(a1);
}

uint64_t sub_23DE8E7E4(uint64_t a1)
{
  v2 = sub_23DE8FBC0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t FavoritesOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C880, &qword_23E224DD0);
  OUTLINED_FUNCTION_25(v1);
  v0[20] = swift_task_alloc();
  v2 = type metadata accessor for ShortcutsContact(0);
  OUTLINED_FUNCTION_18_4(v2);
  v0[22] = v3;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE8E92C, 0, 0);
}

uint64_t sub_23DE8E92C()
{
  v1 = [objc_allocWithZone(WFCallUtilities) init];
  v0[25] = v1;
  sub_23E1FDF0C();
  v0[26] = 0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DE8EAAC;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C890, &qword_23E224DF0);
  OUTLINED_FUNCTION_18_3(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_7();
  [v1 getFavoriteContactsWithLimit:4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE8EAAC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 216) = v2;
  if (v2)
  {
    v3 = sub_23DE90170;
  }

  else
  {
    v3 = sub_23DE9016C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DE8EBB4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_23DEEC878();
  }

  else
  {
    sub_23DE9011C();
    sub_23E1FDDEC();

    return sub_23DEEC87C();
  }
}

uint64_t sub_23DE8EC84()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return FavoritesOptionsProvider.fetchResults()();
}

uint64_t sub_23DE8ED10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4D8B4;

  return sub_23DEBF614();
}

uint64_t RecentsOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C880, &qword_23E224DD0);
  OUTLINED_FUNCTION_25(v1);
  v0[20] = swift_task_alloc();
  v2 = type metadata accessor for ShortcutsContact(0);
  OUTLINED_FUNCTION_18_4(v2);
  v0[22] = v3;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE8EEA8, 0, 0);
}

uint64_t sub_23DE8EEA8()
{
  v1 = [objc_allocWithZone(WFCallUtilities) init];
  v0[25] = v1;
  sub_23E1FDF0C();
  v0[26] = 0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DE8F02C;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C890, &qword_23E224DF0);
  OUTLINED_FUNCTION_18_3(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_7();
  [v1 getRecentsCallWithTelephony:1 limit:10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE8F02C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 216) = v2;
  if (v2)
  {
    v3 = sub_23DE8F4F0;
  }

  else
  {
    v3 = sub_23DE8F134;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_23DE8F134()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  sub_23E1FDF0C();
  if (v1)
  {
    v3 = *(v0 + 200);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_26();

    __asm { BRAA            X1, X16 }
  }

  v37 = *(v0 + 176);
  result = sub_23DE4D8B0();
  v7 = result;
  v8 = 0;
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      if (v7 == v8)
      {

        OUTLINED_FUNCTION_26();

        __asm { BRAA            X2, X16 }
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EF04DD0](v8, v2);
      }

      else
      {
        if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        result = *(v2 + 8 * v8 + 32);
      }

      v9 = result;
      v10 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v11 = [result person];
      if (v11)
      {
        break;
      }

      v13 = *(v0 + 160);
      v12 = *(v0 + 168);

      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
      result = sub_23DE481FC(v13, &qword_27E32C880, &qword_23E224DD0);
      ++v8;
    }

    v17 = v11;
    v18 = [v9 callType];
    type metadata accessor for WFContextualCallType(0);
    if (v18 >= 4)
    {
      break;
    }

    v34 = *(v0 + 160);
    v36 = qword_23E225510[v18];
    v19 = v17;
    v20 = [v9 personSerializedRepresentation];
    v21 = [objc_allocWithZone(MEMORY[0x277D7A140]) initWithPerson:v19 serializedRepresentation:v20 namedQueryInfo:0];
    swift_unknownObjectRelease();

    sub_23DE8CE44(v21, v36, v34);
    v22 = *(v0 + 192);
    v23 = *(v0 + 160);
    v33 = *(v0 + 168);
    v35 = *(v0 + 184);

    __swift_storeEnumTagSinglePayload(v23, 0, 1, v33);
    sub_23DE8F6B0(v23, v22);
    sub_23DE8F6B0(v22, v35);
    v24 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4CAD8(0, *(v38 + 16) + 1, 1, v38);
      v24 = v28;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_23DE4CAD8(v25 > 1, v26 + 1, 1, v24);
      v24 = v29;
    }

    v27 = *(v0 + 184);
    *(v24 + 16) = v26 + 1;
    v38 = v24;
    result = sub_23DE8F6B0(v27, v24 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v26);
    v8 = v10;
  }

  *(v0 + 152) = v18;
  OUTLINED_FUNCTION_26();

  return sub_23E1FE79C();
}

uint64_t sub_23DE8F4F0(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DE8F580()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return RecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DE8F60C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DEBFDD8();
}

uint64_t sub_23DE8F6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsContact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE8F714(uint64_t a1)
{
  result = sub_23DE8FD30(&qword_280DAE4B8, type metadata accessor for ShortcutsContact, &protocol conformance descriptor for ShortcutsContact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE8F890()
{
  result = qword_280DAE4A8;
  if (!qword_280DAE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4A8);
  }

  return result;
}

unint64_t sub_23DE8F9BC()
{
  result = qword_280DAEF90;
  if (!qword_280DAEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF90);
  }

  return result;
}

unint64_t sub_23DE8FA14()
{
  result = qword_280DAEF88;
  if (!qword_280DAEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF88);
  }

  return result;
}

unint64_t sub_23DE8FAB4()
{
  result = qword_280DAEF98;
  if (!qword_280DAEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF98);
  }

  return result;
}

unint64_t sub_23DE8FB08()
{
  result = qword_280DAE3F8;
  if (!qword_280DAE3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C8A8, qword_23E2250A8);
    sub_23DE8FD30(&qword_280DAF020, type metadata accessor for ShortcutsContact, &protocol conformance descriptor for ShortcutsContact);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE3F8);
  }

  return result;
}

unint64_t sub_23DE8FBC0()
{
  result = qword_280DAF2B0;
  if (!qword_280DAF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2B0);
  }

  return result;
}

unint64_t sub_23DE8FC18()
{
  result = qword_280DAF2A8;
  if (!qword_280DAF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2A8);
  }

  return result;
}

unint64_t sub_23DE8FC70()
{
  result = qword_280DAF2B8;
  if (!qword_280DAF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2B8);
  }

  return result;
}

uint64_t sub_23DE8FD30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DE8FD78(uint64_t a1)
{
  result = sub_23DE8FDA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE8FDA0()
{
  result = qword_27E32C8C0;
  if (!qword_27E32C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8C0);
  }

  return result;
}

unint64_t sub_23DE8FDF8()
{
  result = qword_280DAE470;
  if (!qword_280DAE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE470);
  }

  return result;
}

unint64_t sub_23DE8FE4C(uint64_t a1)
{
  result = sub_23DE8FE74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE8FE74()
{
  result = qword_27E32C8C8;
  if (!qword_27E32C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8C8);
  }

  return result;
}

unint64_t sub_23DE8FECC()
{
  result = qword_280DAE478;
  if (!qword_280DAE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE478);
  }

  return result;
}

void sub_23DE8FF48(uint64_t a1)
{
  sub_23DE4C83C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WFAppShortcutEntityBadge(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_23DE90014(_BYTE *result, int a2, int a3)
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

uint64_t sub_23DE900C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_49();
  v6(v5);
  return a2;
}

unint64_t sub_23DE9011C()
{
  result = qword_280DAE310;
  if (!qword_280DAE310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DAE310);
  }

  return result;
}

void OUTLINED_FUNCTION_4_7()
{
  v1[12] = sub_23DE8EBB4;
  v1[13] = v0;
  v1[14] = v2;
}

id sub_23DE90224()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v211 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v211 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E251C20;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = inited;
  v11 = v7;
  v12 = v9;
  v13 = sub_23E1FDCBC("choose|select|list|options|menu|multiple", 40);
  v15 = v14;
  sub_23E1FDCBC("choose|select|list|options|menu|multiple", 40);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v235 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v13, v15);
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v234 = v20;
  v10[10] = v19;
  v21 = *MEMORY[0x277D7CC18];
  v10[13] = v20;
  v10[14] = v21;
  v232 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  v217 = xmmword_23E222340;
  *(v22 + 16) = xmmword_23E222340;
  v23 = v5;
  v24 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v25 = v21;
  v26 = v24;
  v27 = sub_23E1FDCBC("Presents a menu of the items passed as input to the action and outputs the user's selection.", 92);
  v29 = v28;
  sub_23E1FDCBC("Presents a menu of the items passed as input to the action and outputs the user's selection.", 92);
  v219 = v23;
  sub_23E1FC14C();
  v30 = [v235 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v27, v29);
  *(v22 + 64) = v234;
  *(v22 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v33 = sub_23E1FDABC();
  v34 = v232;
  v10[15] = sub_23DF3BE54(v33);
  v35 = *MEMORY[0x277D7CB48];
  v10[18] = v34;
  v10[19] = v35;
  v10[20] = 1851881795;
  v10[21] = 0xE400000000000000;
  v36 = *MEMORY[0x277D7CB60];
  v37 = MEMORY[0x277D837D0];
  v10[23] = MEMORY[0x277D837D0];
  v10[24] = v36;
  v10[25] = 0xD000000000000015;
  v10[26] = 0x800000023E251CD0;
  v38 = *MEMORY[0x277D7CCC0];
  v10[28] = v37;
  v10[29] = v38;
  v39 = v37;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v40 = swift_initStackObject();
  v225 = xmmword_23E224710;
  *(v40 + 16) = xmmword_23E224710;
  *(v40 + 32) = 0xD00000000000001DLL;
  *(v40 + 40) = 0x800000023E251CF0;
  v41 = MEMORY[0x277D839B0];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  *(v40 + 80) = 0x656C7069746C754DLL;
  *(v40 + 88) = 0xE800000000000000;
  *(v40 + 96) = 1;
  *(v40 + 120) = v41;
  strcpy((v40 + 128), "ParameterKey");
  *(v40 + 141) = 0;
  *(v40 + 142) = -5120;
  *(v40 + 144) = 0x7475706E494657;
  *(v40 + 152) = 0xE700000000000000;
  *(v40 + 168) = v39;
  *(v40 + 176) = 0x6465726975716552;
  *(v40 + 184) = 0xE800000000000000;
  *(v40 + 192) = 1;
  *(v40 + 216) = v41;
  *(v40 + 224) = 0x7365707954;
  *(v40 + 232) = 0xE500000000000000;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v40 + 264) = v230;
  *(v40 + 240) = &unk_285023B70;
  v42 = v35;
  v43 = v36;
  v44 = v38;
  v45 = sub_23E1FDABC();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v10[33] = v232;
  v10[30] = v45;
  v10[34] = sub_23E1FDBDC();
  v10[35] = 0xD000000000000054;
  v10[36] = 0x800000023E251D10;
  v46 = *MEMORY[0x277D7CB90];
  v10[38] = v39;
  v10[39] = v46;
  v47 = v46;
  v48 = sub_23E1FDCBC("Choose from List (Action Name)", 30);
  v50 = v49;
  sub_23E1FDCBC("Choose from List", 16);
  sub_23E1FC14C();
  v51 = v235;
  v52 = [v235 bundleURL];
  v233 = v2;
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v48, v50);
  v10[40] = v54;
  v55 = *MEMORY[0x277D7CDD0];
  v56 = v234;
  v10[43] = v234;
  v10[44] = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_23E222350;
  *(v57 + 32) = 0x75736F6C63736944;
  *(v57 + 40) = 0xEF6C6576654C6572;
  *(v57 + 48) = 0x63696C627550;
  *(v57 + 56) = 0xE600000000000000;
  *(v57 + 72) = MEMORY[0x277D837D0];
  *(v57 + 80) = 0x656C7069746C754DLL;
  *(v57 + 88) = 0xE800000000000000;
  *(v57 + 96) = 0;
  *(v57 + 120) = MEMORY[0x277D839B0];
  *(v57 + 128) = 0x614E74757074754FLL;
  *(v57 + 136) = 0xEA0000000000656DLL;
  v58 = v55;
  v231 = sub_23E1FDCBC("Chosen Item (Default Output Name)", 33);
  v60 = v59;
  sub_23E1FDCBC("Chosen Item", 11);
  sub_23E1FC14C();
  v61 = [v51 bundleURL];
  sub_23E1FBF9C();

  v62 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v231, v60);
  *(v57 + 144) = v63;
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v230;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_285023BC0;
  v64 = MEMORY[0x277D837D0];
  v65 = sub_23E1FDABC();
  v216 = v10;
  v10[45] = v65;
  v66 = *MEMORY[0x277D7CBA0];
  v10[48] = v232;
  v10[49] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_23E225530;
  v232 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v67 = swift_allocObject();
  v68 = MEMORY[0x277D7CDF8];
  *(v67 + 16) = v225;
  v69 = *v68;
  *(v67 + 32) = v69;
  *(v67 + 40) = 0xD000000000000019;
  *(v67 + 48) = 0x800000023E24F180;
  v70 = *MEMORY[0x277D7CE60];
  v71 = v64;
  *(v67 + 64) = v64;
  *(v67 + 72) = v70;
  *(v67 + 80) = 0x736D657469;
  *(v67 + 88) = 0xE500000000000000;
  v72 = *MEMORY[0x277D7CE70];
  *(v67 + 104) = v71;
  *(v67 + 112) = v72;
  *(v67 + 120) = 0x7475706E494657;
  *(v67 + 128) = 0xE700000000000000;
  v73 = *MEMORY[0x277D7CE80];
  *(v67 + 144) = v71;
  *(v67 + 152) = v73;
  v74 = v69;
  v75 = v72;
  v76 = v73;
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v80 = v70;
  v224 = v77;
  v220 = v78;
  v221 = v79;
  v214 = v80;
  v81 = v66;
  v82 = sub_23E1FDCBC("List (WFInput)", 14);
  v84 = v83;
  sub_23E1FDCBC("List", 4);
  sub_23E1FC14C();
  v85 = [v235 bundleURL];
  sub_23E1FBF9C();

  v86 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v82, v84);
  *(v67 + 160) = v87;
  v88 = *MEMORY[0x277D7CEA8];
  v89 = v234;
  *(v67 + 184) = v234;
  *(v67 + 192) = v88;
  v215 = v88;
  v90 = sub_23E1FDCBC("List (WFInput)", 14);
  v92 = v91;
  sub_23E1FDCBC("List", 4);
  sub_23E1FC14C();
  v93 = [v235 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v90, v92);
  *(v67 + 224) = v89;
  *(v67 + 200) = v95;
  _s3__C3KeyVMa_0(0);
  v228 = v96;
  v227 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v97 = sub_23E1FDABC();
  v98 = sub_23DF3BE9C(v97);
  *(v231 + 32) = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_23E2235A0;
  v100 = v224;
  *(v99 + 32) = v224;
  *(v99 + 40) = 0xD000000000000014;
  v101 = MEMORY[0x277D7CE00];
  *(v99 + 48) = 0x800000023E24EAF0;
  v102 = *v101;
  v103 = MEMORY[0x277D837D0];
  *(v99 + 64) = MEMORY[0x277D837D0];
  *(v99 + 72) = v102;
  *(v99 + 80) = 0;
  *(v99 + 88) = 0xE000000000000000;
  v104 = *MEMORY[0x277D7CE08];
  *(v99 + 104) = v103;
  *(v99 + 112) = v104;
  v105 = v103;
  v106 = v102;
  v107 = v104;
  v108 = v106;
  v109 = v107;
  v224 = v100;
  v223 = v108;
  v222 = v109;
  v110 = sub_23E1FDCBC("The instruction provided when the list is presented. (WFChooseFromListActionPrompt)", 83);
  v112 = v111;
  sub_23E1FDCBC("The instruction provided when the list is presented.", 52);
  sub_23E1FC14C();
  v113 = [v235 bundleURL];
  sub_23E1FBF9C();

  v114 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v110, v112);
  *(v99 + 120) = v115;
  v116 = *MEMORY[0x277D7CE20];
  *(v99 + 144) = v234;
  *(v99 + 152) = v116;
  *(v99 + 160) = &unk_285023BF0;
  v117 = v214;
  *(v99 + 184) = v230;
  *(v99 + 192) = v117;
  *(v99 + 200) = 0x74706D6F7270;
  *(v99 + 208) = 0xE600000000000000;
  v118 = v220;
  v119 = v221;
  *(v99 + 224) = v105;
  *(v99 + 232) = v118;
  *(v99 + 240) = 0xD00000000000001CLL;
  *(v99 + 248) = 0x800000023E251EA0;
  *(v99 + 264) = v105;
  *(v99 + 272) = v119;
  v220 = v118;
  v221 = v119;
  v120 = v116;
  v121 = sub_23E1FDCBC("Prompt (WFChooseFromListActionPrompt)", 37);
  v123 = v122;
  sub_23E1FDCBC("Prompt", 6);
  sub_23E1FC14C();
  v124 = v235;
  v125 = [v235 bundleURL];
  sub_23E1FBF9C();

  v126 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v121, v123);
  *(v99 + 280) = v127;
  v128 = v234;
  v129 = v215;
  *(v99 + 304) = v234;
  *(v99 + 312) = v129;
  v215 = sub_23E1FDCBC("optional (WFChooseFromListActionPrompt)", 39);
  v131 = v130;
  sub_23E1FDCBC("optional", 8);
  sub_23E1FC14C();
  v132 = [v124 bundleURL];
  sub_23E1FBF9C();

  v133 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v215, v131);
  *(v99 + 320) = v134;
  v135 = *MEMORY[0x277D7CF10];
  *(v99 + 344) = v128;
  *(v99 + 352) = v135;
  v136 = MEMORY[0x277D837D0];
  *(v99 + 384) = MEMORY[0x277D837D0];
  *(v99 + 360) = 0x7468676952;
  *(v99 + 368) = 0xE500000000000000;
  v137 = v135;
  v138 = sub_23E1FDABC();
  v139 = sub_23DF3BE9C(v138);
  *(v231 + 40) = v139;
  v140 = swift_allocObject();
  *(v140 + 16) = v225;
  *(v140 + 32) = v224;
  *(v140 + 40) = 0xD000000000000011;
  v213 = 0x800000023E250E40;
  v214 = 0xD000000000000011;
  *(v140 + 48) = 0x800000023E250E40;
  v141 = v223;
  *(v140 + 64) = v136;
  *(v140 + 72) = v141;
  *(v140 + 80) = 0;
  v142 = v222;
  *(v140 + 104) = MEMORY[0x277D839B0];
  *(v140 + 112) = v142;
  v143 = sub_23E1FDCBC("When enabled, multiple items may be chosen from the list. (WFChooseFromListActionSelectMultiple)", 96);
  v145 = v144;
  sub_23E1FDCBC("When enabled, multiple items may be chosen from the list.", 57);
  sub_23E1FC14C();
  v146 = v235;
  v147 = [v235 bundleURL];
  sub_23E1FBF9C();

  v148 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v143, v145);
  *(v140 + 120) = v149;
  v150 = v234;
  v151 = v220;
  *(v140 + 144) = v234;
  *(v140 + 152) = v151;
  *&v225 = 0x800000023E251FE0;
  v215 = 0xD000000000000024;
  *(v140 + 160) = 0xD000000000000024;
  *(v140 + 168) = 0x800000023E251FE0;
  v152 = v221;
  *(v140 + 184) = MEMORY[0x277D837D0];
  *(v140 + 192) = v152;
  v212 = sub_23E1FDCBC("Select Multiple (WFChooseFromListActionSelectMultiple)", 54);
  v154 = v153;
  sub_23E1FDCBC("Select Multiple", 15);
  sub_23E1FC14C();
  v155 = [v146 bundleURL];
  sub_23E1FBF9C();

  v156 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v212, v154);
  *(v140 + 224) = v150;
  *(v140 + 200) = v157;
  v158 = sub_23E1FDABC();
  v159 = sub_23DF3BE9C(v158);
  *(v231 + 48) = v159;
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_23E224C10;
  v161 = v213;
  v162 = v214;
  *(v160 + 32) = v224;
  *(v160 + 40) = v162;
  *(v160 + 48) = v161;
  v163 = v223;
  *(v160 + 64) = MEMORY[0x277D837D0];
  *(v160 + 72) = v163;
  *(v160 + 80) = 0;
  v164 = v222;
  *(v160 + 104) = MEMORY[0x277D839B0];
  *(v160 + 112) = v164;
  v165 = sub_23E1FDCBC("When enabled, all of the items in the list will start out selected when Choose from List is presented. (WFChooseFromListActionSelectAll)", 136);
  v167 = v166;
  sub_23E1FDCBC("When enabled, all of the items in the list will start out selected when Choose from List is presented.", 102);
  sub_23E1FC14C();
  v168 = v235;
  v169 = [v235 bundleURL];
  sub_23E1FBF9C();

  v170 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v165, v167);
  *(v160 + 120) = v171;
  v172 = v234;
  v173 = v220;
  *(v160 + 144) = v234;
  *(v160 + 152) = v173;
  *(v160 + 160) = 0xD00000000000001FLL;
  *(v160 + 168) = 0x800000023E252160;
  v174 = v221;
  *(v160 + 184) = MEMORY[0x277D837D0];
  *(v160 + 192) = v174;
  v175 = sub_23E1FDCBC("Select All Initially (WFChooseFromListActionSelectAll)", 54);
  v177 = v176;
  sub_23E1FDCBC("Select All Initially", 20);
  sub_23E1FC14C();
  v178 = [v168 bundleURL];
  sub_23E1FBF9C();

  v179 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v175, v177);
  *(v160 + 200) = v180;
  v181 = *MEMORY[0x277D7CEE8];
  *(v160 + 224) = v172;
  *(v160 + 232) = v181;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v182 = swift_allocObject();
  *(v182 + 16) = v217;
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_23E222380;
  strcpy((v183 + 32), "WFParameterKey");
  *(v183 + 47) = -18;
  v184 = v225;
  *(v183 + 48) = v215;
  *(v183 + 56) = v184;
  v185 = MEMORY[0x277D837D0];
  *(v183 + 72) = MEMORY[0x277D837D0];
  *(v183 + 80) = 0xD000000000000010;
  *(v183 + 88) = 0x800000023E24D710;
  *(v183 + 96) = 1;
  *(v183 + 120) = MEMORY[0x277D839B0];
  *(v183 + 128) = 0x72756F7365524657;
  *(v183 + 168) = v185;
  *(v183 + 136) = 0xEF7373616C436563;
  *(v183 + 144) = 0xD00000000000001BLL;
  *(v183 + 152) = 0x800000023E24D730;
  v186 = v181;
  *(v182 + 32) = sub_23E1FDABC();
  *(v160 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v160 + 240) = v182;
  v187 = sub_23E1FDABC();
  v188 = sub_23DF3BE9C(v187);
  v189 = v231;
  *(v231 + 56) = v188;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v191 = v216;
  v216[50] = v189;
  v192 = *MEMORY[0x277D7CB98];
  v191[53] = v190;
  v191[54] = v192;
  v193 = v192;
  v194 = sub_23E1FDCBC("Choose from ${WFInput} (Parameter Summary)", 42);
  v196 = v195;
  sub_23E1FDCBC("Choose from ${WFInput}", 22);
  sub_23E1FC14C();
  v197 = [v235 bundleURL];
  sub_23E1FBF9C();

  v198 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v194, v196);
  v200 = v199;
  v201 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v202 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v203 = MEMORY[0x277D7CF20];
  v191[55] = v201;
  v204 = *v203;
  v191[58] = v202;
  v191[59] = v204;
  v191[60] = &unk_285023C20;
  v205 = *MEMORY[0x277D7D028];
  v191[63] = v230;
  v191[64] = v205;
  v206 = v204;
  v207 = v205;
  v208 = sub_23E1FDABC();
  v191[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v191[65] = v208;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v209 = sub_23E1FDABC();
  return sub_23DF3BF9C(v209);
}

id sub_23DE91970()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v110 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFDelayAction");
  *(inited + 54) = -4864;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("time|delay|wait|seconds", 23);
  v12 = v11;
  sub_23E1FDCBC("time|delay|wait|seconds", 23);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v112 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v111 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v109 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_23E222340;
  v20 = v2;
  v21 = *MEMORY[0x277D7CC30];
  *(v19 + 32) = *MEMORY[0x277D7CC30];
  v22 = v18;
  v23 = v21;
  v24 = sub_23E1FDCBC("Waits for the specified number of seconds before continuing with the next action.", 81);
  v26 = v25;
  sub_23E1FDCBC("Waits for the specified number of seconds before continuing with the next action.", 81);
  sub_23E1FC14C();
  v27 = [v112 bundleURL];
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v24, v26);
  v29 = v111;
  *(v19 + 64) = v111;
  *(v19 + 40) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v31 = sub_23E1FDABC();
  v32 = v109;
  *(inited + 120) = sub_23DF3BE54(v31);
  v33 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v32;
  *(inited + 152) = v33;
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v34 = *MEMORY[0x277D7CB60];
  v35 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v34;
  *(inited + 200) = 0x73616C6772756F68;
  *(inited + 208) = 0xE900000000000073;
  v36 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v35;
  *(inited + 232) = v36;
  v37 = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  v38 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v37;
  *(inited + 272) = v38;
  v39 = v33;
  v40 = v34;
  v41 = v36;
  v42 = v38;
  v43 = sub_23E1FDCBC("Wait (Action Name)", 18);
  v45 = v44;
  sub_23E1FDCBC("Wait", 4);
  sub_23E1FC14C();
  v46 = [v112 bundleURL];
  v107 = v20;
  sub_23E1FBF9C();

  v47 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v43, v45);
  *(inited + 280) = v48;
  v49 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v29;
  *(inited + 312) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_23E2235B0;
  v108 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_23E224710;
  v51 = *MEMORY[0x277D7CDF8];
  *(v50 + 32) = *MEMORY[0x277D7CDF8];
  *(v50 + 40) = 0xD000000000000012;
  *(v50 + 48) = 0x800000023E252300;
  v52 = *MEMORY[0x277D7CE00];
  v53 = MEMORY[0x277D837D0];
  *(v50 + 64) = MEMORY[0x277D837D0];
  *(v50 + 72) = v52;
  v54 = MEMORY[0x277D83B88];
  *(v50 + 80) = 1;
  v55 = *MEMORY[0x277D7CE70];
  *(v50 + 104) = v54;
  *(v50 + 112) = v55;
  *(v50 + 120) = 0x5479616C65444657;
  *(v50 + 128) = 0xEB00000000656D69;
  v56 = *MEMORY[0x277D7CEF0];
  *(v50 + 144) = v53;
  *(v50 + 152) = v56;
  v57 = v49;
  v58 = v51;
  v59 = v52;
  v60 = v55;
  v61 = v56;
  v62 = sub_23E1FDCBC("Number of Seconds (WFDelayTime)", 31);
  v64 = v63;
  sub_23E1FDCBC("Number of Seconds", 17);
  sub_23E1FC14C();
  v65 = [v112 bundleURL];
  sub_23E1FBF9C();

  v66 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v62, v64);
  *(v50 + 160) = v67;
  v68 = *MEMORY[0x277D7CEF8];
  *(v50 + 184) = v111;
  *(v50 + 192) = v68;
  v69 = v68;
  v70 = sub_23E1FDCBC("%d Seconds", v106);
  v72 = v71;
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_23E1FE5CC();

  v117 = v70;
  v118 = v72;
  v115 = 10;
  v116 = 0xE100000000000000;
  v113 = 32;
  v114 = 0xE100000000000000;
  sub_23DE655BC();
  v117 = sub_23E1FE46C();
  v118 = v73;
  MEMORY[0x23EF044F0](0xD000000000000010, 0x800000023E252360);
  v74 = v117;
  v75 = v118;
  sub_23E1FC14C();
  v76 = [v112 bundleURL];
  sub_23E1FBF9C();

  v77 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v74, v75);
  *(v50 + 224) = v111;
  *(v50 + 200) = v78;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v79 = sub_23E1FDABC();
  v80 = sub_23DF3BE9C(v79);
  v81 = v109;
  *(v109 + 32) = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v81;
  v83 = *MEMORY[0x277D7CB98];
  *(inited + 344) = v82;
  *(inited + 352) = v83;
  v84 = v83;
  v85 = sub_23E1FDCBC("Wait ${WFDelayTime} (Parameter Summary)", 39);
  v87 = v86;
  sub_23E1FDCBC("Wait ${WFDelayTime}", 19);
  sub_23E1FC14C();
  v88 = [v112 bundleURL];
  sub_23E1FBF9C();

  v89 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v85, v87);
  v91 = v90;
  v92 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v93 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 360) = v92;
  v94 = *MEMORY[0x277D7CF20];
  *(inited + 384) = v93;
  *(inited + 392) = v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v96 = MEMORY[0x277D7CB78];
  *(inited + 400) = &unk_285023C90;
  v97 = *v96;
  *(inited + 424) = v95;
  *(inited + 432) = v97;
  v98 = MEMORY[0x277D7CFF0];
  *(inited + 440) = 1;
  v99 = *v98;
  v100 = MEMORY[0x277D839B0];
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 472) = v99;
  *(inited + 504) = v100;
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v101 = v94;
  v102 = v97;
  v103 = v99;
  v104 = sub_23E1FDABC();
  return sub_23DF3BF9C(v104);
}

unint64_t sub_23DE9244C()
{
  result = qword_27E32C8E8;
  if (!qword_27E32C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8E8);
  }

  return result;
}

unint64_t sub_23DE924A4()
{
  result = qword_27E32C8F0;
  if (!qword_27E32C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8F0);
  }

  return result;
}

unint64_t sub_23DE924FC()
{
  result = qword_27E32C8F8;
  if (!qword_27E32C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8F8);
  }

  return result;
}

uint64_t sub_23DE92550(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return (*(v1 + 8))();
}

uint64_t sub_23DE92598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return sub_23DE92570();
}

uint64_t sub_23DE92624(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DE92584();
}

unint64_t sub_23DE926B8()
{
  result = qword_27E32C900;
  if (!qword_27E32C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C900);
  }

  return result;
}

unint64_t sub_23DE9270C()
{
  result = qword_27E32C908;
  if (!qword_27E32C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C908);
  }

  return result;
}

unint64_t sub_23DE92764()
{
  result = qword_27E32C910;
  if (!qword_27E32C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C918, qword_23E2255C8);
    sub_23DE9270C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C910);
  }

  return result;
}

uint64_t sub_23DE927E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4D8B4;

  return sub_23DE92584();
}

uint64_t sub_23DE92878(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_23DE92910;

  return sub_23DE92550((v1 + 16));
}

uint64_t sub_23DE92910()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = v2[1];
  v7 = v2[3];
  v3[1] = v2[2];
  v3[2] = v7;
  *v3 = v6;
  v8 = *(v4 + 8);

  return v8();
}

unint64_t sub_23DE92A1C()
{
  result = qword_27E32C920;
  if (!qword_27E32C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C920);
  }

  return result;
}

unint64_t sub_23DE92A74()
{
  result = qword_27E32C928;
  if (!qword_27E32C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C928);
  }

  return result;
}

unint64_t sub_23DE92ACC()
{
  result = qword_27E32C930;
  if (!qword_27E32C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C930);
  }

  return result;
}

unint64_t sub_23DE92B24()
{
  result = qword_27E32C938;
  if (!qword_27E32C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C938);
  }

  return result;
}

void sub_23DE92B78()
{
  OUTLINED_FUNCTION_90();
  v30 = sub_23E1FDB4C();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v28 = v4 - v3;
  v5 = sub_23E1FDBAC();
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_26_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v27 = OUTLINED_FUNCTION_22_2(v9, v26);
  OUTLINED_FUNCTION_3_5();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = sub_23E1FC1DC();
  v17 = OUTLINED_FUNCTION_25(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_4();
  v18 = sub_23E1FDBCC();
  v19 = OUTLINED_FUNCTION_25(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_3();
  v29 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v21 = *MEMORY[0x277CC9110];
  v22 = *(v11 + 104);
  v22(v15, v21, v27);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  (*(v1 + 104))(v28, *MEMORY[0x277CC9BD8], v30);
  sub_23E1FDB6C();
  (*(v1 + 8))(v28, v30);
  sub_23E1FDB8C();
  sub_23E1FDBBC();
  sub_23E1FC19C();
  v22(v15, v21, v27);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v29);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE92F1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_4();
  v4 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v6 = sub_23E1FDBAC();
  v7 = OUTLINED_FUNCTION_25(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_26_1();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  OUTLINED_FUNCTION_5();
  sub_23E1FB71C();
  sub_23E1FB75C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  return sub_23E1FB76C();
}

unint64_t sub_23DE930E0()
{
  result = qword_27E32C940;
  if (!qword_27E32C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C940);
  }

  return result;
}

unint64_t sub_23DE93134()
{
  result = qword_27E32C948;
  if (!qword_27E32C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C948);
  }

  return result;
}

unint64_t sub_23DE9318C()
{
  result = qword_27E32C950;
  if (!qword_27E32C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C950);
  }

  return result;
}

uint64_t sub_23DE931E0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DE93234(uint64_t a1)
{
  v2 = sub_23DE924FC();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_23DE93284()
{
  result = qword_27E32C968;
  if (!qword_27E32C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C968);
  }

  return result;
}

uint64_t sub_23DE932DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23DE933A0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DE933A0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23DE93484(uint64_t a1)
{
  v2 = sub_23DE9318C();

  return MEMORY[0x28210C4B8](a1, v2);
}

void sub_23DE934D0()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_26_1();
  v3 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_4();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v11 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v5 + 104))(v0, *MEMORY[0x277CC9110], v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DE936C4()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27_3(v3, v30);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  v33 = OUTLINED_FUNCTION_22_2(v6, v31);
  OUTLINED_FUNCTION_3_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_4();
  v10 = sub_23E1FC1DC();
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v12 = sub_23E1FDBCC();
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_4();
  v36 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA20, &qword_23E225E70);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA28, &qword_23E225E78) - 8;
  v35 = *(*v15 + 72);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23E222370;
  *(v37 + v16) = 0;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v32 = *MEMORY[0x277CC9110];
  v34 = *(v8 + 104);
  v34(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v36);
  v20 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  sub_23E1FB76C();
  *(v37 + v16 + v35) = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v34)(v0, v32, v33);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v36);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v20);
  sub_23E1FB76C();
  sub_23E1FB77C();
  sub_23DE94094();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE93AD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FE6EC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DE93B28(char a1)
{
  if (a1)
  {
    return 1886352499;
  }

  else
  {
    return 0x7472617473;
  }
}

unint64_t sub_23DE93B64()
{
  result = qword_280DAF378;
  if (!qword_280DAF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF378);
  }

  return result;
}

uint64_t sub_23DE93BD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DE93AD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23DE93C00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE93B28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23DE93C84()
{
  result = qword_280DAF3B8;
  if (!qword_280DAF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3B8);
  }

  return result;
}

unint64_t sub_23DE93CDC()
{
  result = qword_280DAF390;
  if (!qword_280DAF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF390);
  }

  return result;
}

unint64_t sub_23DE93D34()
{
  result = qword_280DAF370;
  if (!qword_280DAF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF370);
  }

  return result;
}

unint64_t sub_23DE93D98()
{
  result = qword_280DAF3A0;
  if (!qword_280DAF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3A0);
  }

  return result;
}

unint64_t sub_23DE93DEC()
{
  result = qword_280DAF398;
  if (!qword_280DAF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF398);
  }

  return result;
}

unint64_t sub_23DE93E40()
{
  result = qword_280DAF3B0;
  if (!qword_280DAF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3B0);
  }

  return result;
}

unint64_t sub_23DE93E98()
{
  result = qword_280DAF3A8;
  if (!qword_280DAF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3A8);
  }

  return result;
}

unint64_t sub_23DE93F40()
{
  result = qword_27E32C980;
  if (!qword_27E32C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C980);
  }

  return result;
}

uint64_t sub_23DE93F94(uint64_t a1)
{
  v2 = sub_23DE93F40();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DE93FE4()
{
  result = qword_280DAF388;
  if (!qword_280DAF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF388);
  }

  return result;
}

unint64_t sub_23DE9403C()
{
  result = qword_280DAF368;
  if (!qword_280DAF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF368);
  }

  return result;
}

unint64_t sub_23DE94094()
{
  result = qword_280DAF380;
  if (!qword_280DAF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF380);
  }

  return result;
}

uint64_t sub_23DE940EC(uint64_t a1)
{
  v2 = sub_23DE93E98();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DE9413C()
{
  result = qword_27E32C988;
  if (!qword_27E32C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C988);
  }

  return result;
}

unint64_t sub_23DE94194()
{
  result = qword_27E32C990;
  if (!qword_27E32C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C990);
  }

  return result;
}

uint64_t sub_23DE94220()
{
  v0 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

void sub_23DE94398()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27_3(v3, v21);
  v4 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v8 = sub_23E1FC1DC();
  v9 = OUTLINED_FUNCTION_25(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_4();
  v10 = sub_23E1FDBCC();
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v12 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v22 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v13(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FBEDC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C600, &qword_23E224590);
  *(swift_allocObject() + 16) = xmmword_23E222380;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v13)(v0, v22, v4);
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v13)(v0, v22, v4);
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v13)(v0, v22, v4);
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FB69C();
  sub_23E1FB67C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE94798()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_3();
  sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_26_1();
  *v0 = 0xD000000000000019;
  v0[1] = 0x800000023E2523D0;
  (*(v4 + 104))(v0, *MEMORY[0x277D7BF38]);
  sub_23E1FC81C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v9 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE94910()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9C0, &qword_23E225E00);
  v2 = sub_23DE95DE0();
  v3 = sub_23DE66434(&qword_27E32C9C8, &qword_27E32C9C0, &qword_23E225E00, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_23DE94A08, 0, v1, v2, v3);
}

uint64_t sub_23DE949DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE702E8();
  *a1 = result;
  return result;
}

uint64_t sub_23DE94A08@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9D0, &qword_23E225E08);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9D8, &qword_23E225E10);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v19 - v10;
  v30 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9E0, &qword_23E225E18);
  v21 = sub_23DE95DE0();
  sub_23DE93E40();
  sub_23DE66434(&qword_27E32C9E8, &qword_27E32C9E0, &qword_23E225E18, MEMORY[0x277CBA2C0]);
  v22 = v11;
  sub_23E1FB9AC();
  sub_23DE66434(&qword_27E32C9F0, &qword_27E32C9D8, &qword_23E225E10, MEMORY[0x277CBA488]);
  v12 = v6;
  sub_23E1FB91C();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v9, v6);
  v13 = v24;
  sub_23E1FB9EC();
  sub_23DE66434(&qword_27E32C9F8, &qword_27E32C9D0, &qword_23E225E08, MEMORY[0x277CBA4C8]);
  v14 = v25;
  v15 = v26;
  sub_23E1FB91C();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_23E1FB90C();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_23DE94DE8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA00, &qword_23E225E20);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA08, &qword_23E225E28);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9E0, &qword_23E225E18);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DE95DE0();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA10, &qword_23E225E30);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA18, &unk_23E225E60);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v10 = sub_23DE66434(&qword_27E32C9E8, &qword_27E32C9E0, &qword_23E225E18, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &unk_285026EF0, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &unk_285026EF0, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DE95148@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE95124();
  *a1 = result;
  return result;
}

uint64_t sub_23DE95174@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA00, &qword_23E225E20);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA08, &qword_23E225E28);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9E0, &qword_23E225E18);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DE95DE0();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA10, &qword_23E225E30);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v10 = sub_23DE66434(&qword_27E32C9E8, &qword_27E32C9E0, &qword_23E225E18, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &unk_285026EF0, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &unk_285026EF0, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DE9547C()
{
  OUTLINED_FUNCTION_23();
  sub_23E1FB54C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_23DE954DC()
{
  OUTLINED_FUNCTION_90();
  sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v64 = v1;
  v65 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v63 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v62 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_4();
  v53 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_3_5();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_4();
  v16 = sub_23E1FC1DC();
  v17 = OUTLINED_FUNCTION_25(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v18 = sub_23E1FDBCC();
  v19 = OUTLINED_FUNCTION_25(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_3();
  v20 = sub_23E1FBF0C();
  v51 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v61 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = v50 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9B0, &qword_23E225DB8);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v52 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v54 = v14 + 104;
  v55 = v25;
  (v25)(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
  LOBYTE(v66) = 0;
  v29 = sub_23E1FB51C();
  v57 = v29;
  v50[1] = v10;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
  v59 = *MEMORY[0x277CBA308];
  v36 = *(v65 + 104);
  v65 += 104;
  v60 = v36;
  v36(v63);
  sub_23DE93F40();
  v50[0] = v24;
  v58 = sub_23E1FB60C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9B8, &qword_23E225DC0);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v37 = v52;
  v38 = v53;
  v39 = v55;
  v55(v0, v52, v53);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v51);
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v39(v0, v37, v38);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  sub_23E1FB52C();
  OUTLINED_FUNCTION_64();
  v43 = v57;
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v57);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
  v60(v63, v59, v64);
  sub_23DE924FC();
  sub_23E1FB61C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE95A78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE933A0;

  return sub_23DE95464(a1);
}

void sub_23DE95B10(void *a1@<X8>)
{
  sub_23DE954DC();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23DE95B3C(uint64_t a1)
{
  v2 = sub_23DE95DE0();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DE95B84(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DE95BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_23DE95C0C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23DE95D3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23DE95D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DE95DE0()
{
  result = qword_27E32C9A8;
  if (!qword_27E32C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C9A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_2@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 104) = &a2 - a1;

  return sub_23E1FBEEC();
}

id sub_23DE95F38()
{
  v110 = sub_23E1FD89C();
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = v103 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v108 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E252760;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v11 = sub_23E1FDCBC("photo|lock|home|screen", 22);
  v13 = v12;
  sub_23E1FDCBC("photo|lock|home|screen", 22);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v14 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v111 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v105 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  v106 = xmmword_23E222370;
  *(v21 + 16) = xmmword_23E222370;
  v22 = *MEMORY[0x277D7CC20];
  *(v21 + 32) = *MEMORY[0x277D7CC20];
  v23 = v20;
  v24 = v22;
  v104 = sub_23E1FDCBC("If the wallpaper has a linked Focus, this action will set the Focus, too.", 73);
  v26 = v25;
  sub_23E1FDCBC("If the wallpaper has a linked Focus, this action will set the Focus, too.", 73);
  sub_23E1FC14C();
  v112 = v14;
  v27 = [v14 bundleURL];
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v104, v26);
  *(v21 + 40) = v29;
  v30 = *MEMORY[0x277D7CC30];
  v31 = v111;
  *(v21 + 64) = v111;
  *(v21 + 72) = v30;
  v32 = v30;
  v104 = sub_23E1FDCBC("Switches the current Lock Screen wallpaper.", 43);
  v103[0] = v33;
  sub_23E1FDCBC("Switches the current Lock Screen wallpaper.", 43);
  sub_23E1FC14C();
  v34 = [v14 bundleURL];
  sub_23E1FBF9C();

  v35 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v36 = v3;
  sub_23DE477A0(v104, v103[0]);
  v37 = v31;
  *(v21 + 104) = v31;
  *(v21 + 80) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v39 = sub_23E1FDABC();
  v40 = v105;
  *(inited + 120) = sub_23DF3BE54(v39);
  v41 = *MEMORY[0x277D7CB50];
  *(inited + 144) = v40;
  *(inited + 152) = v41;
  *(inited + 160) = 0x657061706C6C6157;
  *(inited + 168) = 0xE900000000000072;
  v42 = *MEMORY[0x277D7CCC0];
  v43 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_23E222350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x277D839B0];
  *(v44 + 48) = 0;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x726574736F504657;
  *(v44 + 104) = 0xE800000000000000;
  *(v44 + 120) = v43;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 184) = 0xE500000000000000;
  *(v44 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v44 + 192) = &unk_285023D60;
  v46 = v41;
  v47 = v42;
  v48 = sub_23E1FDABC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 200) = v48;
  v50 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v49;
  *(inited + 232) = v50;
  v51 = v50;
  v52 = sub_23E1FDCBC("Switch Between Wallpapers (Action Name)", 39);
  v54 = v53;
  sub_23E1FDCBC("Switch Between Wallpapers", 25);
  sub_23E1FC14C();
  v55 = [v112 bundleURL];
  v103[1] = v36;
  sub_23E1FBF9C();

  v56 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v52, v54);
  *(inited + 240) = v57;
  v58 = *MEMORY[0x277D7CBA0];
  *(inited + 264) = v37;
  *(inited + 272) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_23E2235B0;
  v104 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_23E224710;
  v60 = *MEMORY[0x277D7CDF8];
  v61 = MEMORY[0x277D837D0];
  *(v59 + 64) = MEMORY[0x277D837D0];
  *(v59 + 32) = v60;
  *(v59 + 40) = 0xD000000000000017;
  *(v59 + 48) = 0x800000023E252880;
  v62 = v58;
  v63 = v60;
  *(v59 + 72) = sub_23E1FDBDC();
  *(v59 + 80) = 0;
  v64 = *MEMORY[0x277D7CE70];
  *(v59 + 104) = MEMORY[0x277D839B0];
  *(v59 + 112) = v64;
  *(v59 + 120) = 0x726574736F504657;
  *(v59 + 128) = 0xE800000000000000;
  v65 = *MEMORY[0x277D7CE80];
  *(v59 + 144) = v61;
  *(v59 + 152) = v65;
  v66 = v64;
  v67 = v65;
  v68 = sub_23E1FDCBC("Wallpaper (WFPoster)", 20);
  v70 = v69;
  sub_23E1FDCBC("Wallpaper", 9);
  sub_23E1FC14C();
  v71 = [v112 bundleURL];
  sub_23E1FBF9C();

  v72 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v68, v70);
  *(v59 + 184) = v111;
  *(v59 + 160) = v73;
  v74 = sub_23E1FDBDC();
  v75 = MEMORY[0x277D837D0];
  *(v59 + 224) = MEMORY[0x277D837D0];
  *(v59 + 192) = v74;
  *(v59 + 200) = 7105601;
  *(v59 + 208) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v76 = sub_23E1FDABC();
  v77 = sub_23DF3BE9C(v76);
  v78 = v105;
  *(v105 + 32) = v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 280) = v78;
  v80 = *MEMORY[0x277D7CCA8];
  *(inited + 304) = v79;
  *(inited + 312) = v80;
  v81 = v80;
  v82 = sub_23E1FDABC();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA30, &unk_23E225EB0);
  *(inited + 320) = v82;
  v84 = *MEMORY[0x277D7CB98];
  *(inited + 344) = v83;
  *(inited + 352) = v84;
  v85 = v84;
  v86 = sub_23E1FDCBC("Switch to ${WFPoster} (Parameter Summary)", 41);
  v88 = v87;
  sub_23E1FDCBC("Switch to ${WFPoster}", 21);
  sub_23E1FC14C();
  v89 = [v112 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v86, v88);
  v92 = v91;
  v93 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v94 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 360) = v93;
  v95 = *MEMORY[0x277D7CF20];
  *(inited + 384) = v94;
  *(inited + 392) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v96 = swift_allocObject();
  *(v96 + 16) = v106;
  *(v96 + 56) = v75;
  *(v96 + 32) = 0xD000000000000025;
  *(v96 + 40) = 0x800000023E252930;
  (*(v107 + 104))(v109, *MEMORY[0x277D732F8], v110);
  v97 = sub_23E1FC85C();
  v98 = objc_allocWithZone(v97);
  v99 = v95;
  v100 = sub_23E1FC84C();
  *(v96 + 88) = v97;
  *(v96 + 64) = v100;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  *(inited + 400) = v96;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v101 = sub_23E1FDABC();
  return sub_23DF3BF9C(v101);
}

uint64_t sub_23DE96BD0()
{
  v0 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_3_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE96D54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_15_6();
  v2 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v11 = sub_23E1FDBCC();
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v13 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v78 = *MEMORY[0x277CC9110];
  v79 = *(v4 + 104);
  v79(v8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C600, &qword_23E224590);
  *(swift_allocObject() + 16) = xmmword_23E222330;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_2(v17, v18, v19, v20, v21, v22);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  OUTLINED_FUNCTION_17_5();
  (v79)();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_2(v23, v24, v25, v26, v27, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  OUTLINED_FUNCTION_17_5();
  (v79)();
  v28 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v28, v29, v30, v31, v32, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  v33 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v33, v34, v35, v36, v37, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  OUTLINED_FUNCTION_17_5();
  (v79)();
  v38 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v38, v39, v40, v41, v42, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  v43 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v43, v44, v45, v46, v47, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  v48 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v48, v49, v50, v51, v52, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  v53 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v53, v54, v55, v56, v57, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  v58 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v58, v59, v60, v61, v62, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  v63 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v63, v64, v65, v66, v67, "Set Default Line – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v79)(v8, v78, v2);
  v68 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_2(v68, v69, v70, v71, v72, "Set Default Line – Search Keyword");
  sub_23E1FB69C();
  sub_23E1FB67C();
  OUTLINED_FUNCTION_64();
  return __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
}

uint64_t sub_23DE973C0()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA88, &qword_23E226340);
  v2 = sub_23DE99E44();
  v3 = sub_23DE66434(&qword_27E32CA90, &qword_27E32CA88, &qword_23E226340, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_23DE9748C, 0, v1, v2, v3);
}

uint64_t sub_23DE9748C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA98, &qword_23E226348);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAA0, &qword_23E226350);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v19 - v10;
  v30 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAA8, &qword_23E226358);
  v21 = sub_23DE99E44();
  sub_23DE98A8C();
  sub_23DE66434(&qword_27E32CAB0, &qword_27E32CAA8, &qword_23E226358, MEMORY[0x277CBA2C0]);
  v22 = v11;
  sub_23E1FB9AC();
  sub_23DE66434(&qword_27E32CAB8, &qword_27E32CAA0, &qword_23E226350, MEMORY[0x277CBA488]);
  v12 = v6;
  sub_23E1FB91C();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v9, v6);
  v13 = v24;
  sub_23E1FB9EC();
  sub_23DE66434(&qword_27E32CAC0, &qword_27E32CA98, &qword_23E226348, MEMORY[0x277CBA4C8]);
  v14 = v25;
  v15 = v26;
  sub_23E1FB91C();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_23E1FB90C();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_23DE9786C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAC8, &qword_23E226360);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAD0, &qword_23E226368);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAA8, &qword_23E226358);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DE99E44();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAD8, &qword_23E226370);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAE0, &qword_23E2263A0);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v10 = sub_23DE66434(&qword_27E32CAB0, &qword_27E32CAA8, &qword_23E226358, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &type metadata for SetDefaultCellularPlanAction, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &type metadata for SetDefaultCellularPlanAction, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DE97BB8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAC8, &qword_23E226360);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAD0, &qword_23E226368);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAA8, &qword_23E226358);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DE99E44();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAD8, &qword_23E226370);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAE0, &qword_23E2263A0);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7EC();
  v10 = sub_23DE66434(&qword_27E32CAB0, &qword_27E32CAA8, &qword_23E226358, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &type metadata for SetDefaultCellularPlanAction, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &type metadata for SetDefaultCellularPlanAction, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DE97F1C()
{
  swift_getKeyPath();
  sub_23DE99E44();
  v0 = sub_23E1FB7CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23E2235B0;
  *(v1 + 32) = v0;
  sub_23E1FB7CC();
  v2 = sub_23E1FB7BC();

  return v2;
}

uint64_t sub_23DE97FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE97FD8();
  *a1 = result;
  return result;
}

uint64_t sub_23DE98028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  v2 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  *v8 = sub_23E1FDC1C();
  v8[1] = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D7BF38], v2);
  sub_23E1FC82C();
  sub_23E1FC81C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v14 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE981E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  v2 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_3();
  sub_23E1FBEDC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v2);
  return sub_23E1FB8EC();
}

uint64_t sub_23DE982C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_15_6();
  v32 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_3_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v36 = v8 - v7;
  OUTLINED_FUNCTION_15_6();
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v11 = sub_23E1FDBCC();
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v35 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAE8, &qword_23E2263D0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CAF0, qword_23E2263D8) - 8;
  v34 = *(*v14 + 72);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23E222370;
  v16 = (v37 + v15);
  *v16 = 0;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v17 = *MEMORY[0x277CC9110];
  v33 = *(v5 + 104);
  v33(v36, v17, v32);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v35);
  sub_23E1FB71C();
  v21 = sub_23E1FB75C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  OUTLINED_FUNCTION_18_6();
  v16[v34] = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v33(v36, v17, v32);
  OUTLINED_FUNCTION_1_10();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v35);
  OUTLINED_FUNCTION_5();
  sub_23E1FB71C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v21);
  OUTLINED_FUNCTION_18_6();
  sub_23E1FB77C();
  sub_23DE98CE0();
  return sub_23E1FDABC();
}

uint64_t sub_23DE9872C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FE6EC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DE98780(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x6563696F76;
  }
}

unint64_t sub_23DE987BC()
{
  result = qword_280DAF188;
  if (!qword_280DAF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF188);
  }

  return result;
}

uint64_t sub_23DE98828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DE9872C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23DE98858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE98780(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23DE988DC()
{
  result = qword_280DAF1C0;
  if (!qword_280DAF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1C0);
  }

  return result;
}

unint64_t sub_23DE98934()
{
  result = qword_280DAF1A0;
  if (!qword_280DAF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1A0);
  }

  return result;
}

unint64_t sub_23DE9898C()
{
  result = qword_280DAF180;
  if (!qword_280DAF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF180);
  }

  return result;
}

unint64_t sub_23DE989E4()
{
  result = qword_280DAF1A8;
  if (!qword_280DAF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1A8);
  }

  return result;
}

unint64_t sub_23DE98A38()
{
  result = qword_280DAF1C8;
  if (!qword_280DAF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1C8);
  }

  return result;
}

unint64_t sub_23DE98A8C()
{
  result = qword_280DAF1B8;
  if (!qword_280DAF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1B8);
  }

  return result;
}

unint64_t sub_23DE98AE4()
{
  result = qword_280DAF1B0;
  if (!qword_280DAF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1B0);
  }

  return result;
}

unint64_t sub_23DE98B8C()
{
  result = qword_280DAE4D8[0];
  if (!qword_280DAE4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DAE4D8);
  }

  return result;
}

uint64_t sub_23DE98BE0(uint64_t a1)
{
  v2 = sub_23DE98B8C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DE98C30()
{
  result = qword_280DAF198;
  if (!qword_280DAF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF198);
  }

  return result;
}

unint64_t sub_23DE98C88()
{
  result = qword_280DAF178;
  if (!qword_280DAF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF178);
  }

  return result;
}

unint64_t sub_23DE98CE0()
{
  result = qword_280DAF190;
  if (!qword_280DAF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF190);
  }

  return result;
}

uint64_t sub_23DE98D38(uint64_t a1)
{
  v2 = sub_23DE98AE4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DE98D88()
{
  result = qword_280DAF160;
  if (!qword_280DAF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF160);
  }

  return result;
}

unint64_t sub_23DE98DE0()
{
  result = qword_280DAF170;
  if (!qword_280DAF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF170);
  }

  return result;
}

uint64_t sub_23DE98E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a3;
  v4[46] = a4;
  v4[43] = a1;
  v4[44] = a2;
  v5 = sub_23E1FD03C();
  v4[47] = v5;
  v4[48] = *(v5 - 8);
  v4[49] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C028, &qword_23E2237A0);
  OUTLINED_FUNCTION_25(v6);
  v4[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE98F90, 0, 0);
}

uint64_t sub_23DE98F90()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  sub_23E1FB5DC();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    *(v0 + 88) = *(v0 + 16);
    *(v0 + 96) = v1;
    *(v0 + 104) = v2;
    v3 = *(v0 + 56);
    *(v0 + 112) = *(v0 + 40);
    *(v0 + 128) = v3;
    *(v0 + 144) = *(v0 + 72);
    sub_23DED4C08((v0 + 88));
    if (!v4)
    {
      sub_23E1FCB9C();
      memcpy((v0 + 160), (v0 + 16), 0x48uLL);
      sub_23DE99F40(v0 + 160, v0 + 232);
      v22 = sub_23E1FD02C();
      v23 = sub_23E1FE1BC();
      sub_23DE481FC(v0 + 16, &qword_27E32CA80, &qword_23E229D80);
      v24 = os_log_type_enabled(v22, v23);
      v26 = *(v0 + 384);
      v25 = *(v0 + 392);
      v27 = *(v0 + 376);
      if (v24)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42[0] = v29;
        *v28 = 136315138;
        sub_23E1FB55C();
        v30 = sub_23DE56B40(*(v0 + 304), *(v0 + 312), v42);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_23DE30000, v22, v23, "Could not find cellular plan with matching label %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x23EF074C0](v29, -1, -1);
        MEMORY[0x23EF074C0](v28, -1, -1);
      }

      (*(v26 + 8))(v25, v27);
      sub_23DE99EEC();
      swift_allocError();
      *v31 = 0;
      swift_willThrow();
      goto LABEL_18;
    }

    v5 = v4;
    v6 = [v4 subscriptionContextUUID];
    v7 = *(v0 + 400);
    if (!v6)
    {
      sub_23E1FC0EC();
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
      sub_23DE481FC(v7, &qword_27E32C028, &qword_23E2237A0);
      sub_23DE99EEC();
      swift_allocError();
      *v36 = 2;
      swift_willThrow();
LABEL_17:

LABEL_18:
      sub_23DE481FC(v0 + 16, &qword_27E32CA80, &qword_23E229D80);
      goto LABEL_19;
    }

    v8 = v6;
    sub_23E1FC0CC();

    sub_23E1FC0EC();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    sub_23DE481FC(v7, &qword_27E32C028, &qword_23E2237A0);
    v13 = [objc_allocWithZone(WFCellularPlansManager) init];
    sub_23E1FB5DC();
    if (*(v0 + 408))
    {
      *(v0 + 320) = 0;
      v14 = [v13 setDefaultDataLineToPlan:v5 error:v0 + 320];
      v15 = *(v0 + 320);
      if (!v14)
      {
        v40 = v15;
        sub_23E1FBECC();

        goto LABEL_16;
      }

      v16 = v15;
      sub_23E1FB5DC();
      v17 = *(v0 + 409);
      *(v0 + 328) = 0;
      v18 = [v13 setAutomaticDataLineSwitching:v17 error:v0 + 328];
      v19 = *(v0 + 328);
      if (!v18)
      {
LABEL_7:
        v20 = v19;
        sub_23E1FBECC();

LABEL_16:
        swift_willThrow();

        goto LABEL_17;
      }
    }

    else
    {
      *(v0 + 336) = 0;
      v37 = [v13 setDefaultVoiceLineToPlan:v5 error:v0 + 336];
      v19 = *(v0 + 336);
      if ((v37 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v38 = v19;
    sub_23E1FB54C();

    sub_23DE481FC(v0 + 16, &qword_27E32CA80, &qword_23E229D80);

    v39 = *(v0 + 8);
    goto LABEL_20;
  }

  sub_23DE99EEC();
  swift_allocError();
  *v21 = 1;
  swift_willThrow();
LABEL_19:

  v39 = *(v0 + 8);
LABEL_20:

  return v39();
}

uint64_t sub_23DE99458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA58, &unk_23E229D50);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_4();
  v71 = v2;
  OUTLINED_FUNCTION_15_6();
  v81 = sub_23E1FB84C();
  OUTLINED_FUNCTION_3_5();
  v83 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v82 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v8 = OUTLINED_FUNCTION_25(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v13);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v76 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_3_5();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = sub_23E1FC1DC();
  v22 = OUTLINED_FUNCTION_25(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  v23 = sub_23E1FDBCC();
  v24 = OUTLINED_FUNCTION_25(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v25 = sub_23E1FBF0C();
  v80 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA60, &unk_23E2262F0);
  OUTLINED_FUNCTION_13_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v75 = *MEMORY[0x277CC9110];
  v29 = *(v16 + 104);
  v77 = v16 + 104;
  v78 = v29;
  v66 = v20;
  (v29)(v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
  LOBYTE(v84) = 0;
  v33 = sub_23E1FB51C();
  v73 = v12;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  v79 = *MEMORY[0x277CBA308];
  v67 = *(v83 + 104);
  v83 += 104;
  v40 = v81;
  v67(v82);
  sub_23DE98B8C();
  v72 = v28;
  v70 = sub_23E1FB60C();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA68, &qword_23E22AE90);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v41 = v66;
  (v78)(v66, v75, v76);
  OUTLINED_FUNCTION_1_10();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v80);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  OUTLINED_FUNCTION_18_0();
  v69 = v33;
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v33);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v33);
  v51 = v40;
  v52 = v67;
  (v67)(v82, v79, v51);
  sub_23DE99E98();
  v74 = sub_23E1FB61C();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA70, &qword_23E226300);
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v53 = v78;
  (v78)(v41, v75, v76);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  OUTLINED_FUNCTION_17_5();
  v53();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v80);
  LOBYTE(v84) = 0;
  sub_23E1FDE4C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v69);
  (v52)(v82, v79, v81);
  sub_23E1FB64C();
  return v70;
}

uint64_t sub_23DE99BA4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23DE662F0;

  return sub_23DE98E6C(a1, v4, v5, v6);
}

uint64_t sub_23DE99C58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE99458();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_23DE99C88(uint64_t a1)
{
  v2 = sub_23DE99E44();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DE99CD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23DE99D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetDefaultCellularPlanAction.DefaultLineType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DE99E44()
{
  result = qword_280DAF168;
  if (!qword_280DAF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF168);
  }

  return result;
}

unint64_t sub_23DE99E98()
{
  result = qword_280DAE490;
  if (!qword_280DAE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE490);
  }

  return result;
}

unint64_t sub_23DE99EEC()
{
  result = qword_27E32CA78;
  if (!qword_27E32CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CA78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_23E1FBF1C();
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_23E1FB76C();
}

uint64_t static WFHKSampleContentItem.defaultFindFilterRows.getter()
{
  v1 = v0;
  v2 = sub_23E1FC8FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = sub_23E1FDBDC();
  v17 = [ObjCClassFromMetadata propertyForName_];

  if (v17)
  {
    v38 = v6;
    v18 = v17;
    v37 = v1;
    sub_23E1FC8BC();
    sub_23DE9A550();
    v19 = sub_23E1FE3DC();
    [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

    sub_23E1FC8EC();
    sub_23DE9A59C(&qword_27E32CAF8, MEMORY[0x277D7BFC0], MEMORY[0x277D7BFB8]);
    sub_23E1FC90C();
    (*(v3 + 16))(v12, v14, v2);
    sub_23DE4D1AC(0, 1, 1, MEMORY[0x277D84F90]);
    v21 = v20;
    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_0_12(v22);
      v21 = v34;
    }

    (*(v3 + 8))(v14, v2);
    *(v21 + 16) = v23 + 1;
    (*(v3 + 32))(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v12, v2);
    v6 = v38;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v24 = sub_23E1FDBDC();
  v25 = [ObjCClassFromMetadata propertyForName_];

  if (v25)
  {
    v26 = v25;
    sub_23E1FC8BC();
    sub_23DE9A550();
    v27 = sub_23E1FE3DC();
    [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

    sub_23E1FC8AC();
    v28 = sub_23DE9A59C(&unk_280DAE5C0, MEMORY[0x277D7BFA0], MEMORY[0x277D7BF98]);
    OUTLINED_FUNCTION_1_11(v28);
    v29 = sub_23E1FE45C();
    [objc_allocWithZone(MEMORY[0x277D7C1B8]) initWithNumber_];

    sub_23E1FC8DC();
    v30 = sub_23DE9A59C(&qword_280DAE5B8, MEMORY[0x277D7BFB0], MEMORY[0x277D7BFA8]);
    OUTLINED_FUNCTION_1_11(v30);
    (*(v3 + 16))(v6, v9, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4D1AC(0, *(v21 + 16) + 1, 1, v21);
      v21 = v35;
    }

    v32 = *(v21 + 16);
    v31 = *(v21 + 24);
    if (v32 >= v31 >> 1)
    {
      OUTLINED_FUNCTION_0_12(v31);
      v21 = v36;
    }

    (*(v3 + 8))(v9, v2);
    *(v21 + 16) = v32 + 1;
    (*(v3 + 32))(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v6, v2);
  }

  return v21;
}

unint64_t sub_23DE9A550()
{
  result = qword_280DAE1D0;
  if (!qword_280DAE1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DAE1D0);
  }

  return result;
}

uint64_t sub_23DE9A59C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_0_12(unint64_t a1@<X8>)
{

  sub_23DE4D1AC(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1)
{

  return sub_23E1FC90C();
}

unint64_t sub_23DE9A630()
{
  result = qword_280DAE948;
  if (!qword_280DAE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE948);
  }

  return result;
}

unint64_t sub_23DE9A688()
{
  result = qword_280DAE958;
  if (!qword_280DAE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE958);
  }

  return result;
}

unint64_t sub_23DE9A760()
{
  result = qword_280DAE950;
  if (!qword_280DAE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE950);
  }

  return result;
}

uint64_t sub_23DE9A7B4()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E33E138);
  __swift_project_value_buffer(v6, qword_27E33E138);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t sub_23DE9A9A4()
{
  v0 = sub_23E1FC7FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_23E1FC82C();
  v7 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D7BF40], v0);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v8 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE9AB6C(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for ActivityMonitor();
  v1[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_23DE9AC24;

  return sub_23DE6D508((v1 + 5));
}

uint64_t sub_23DE9AC24()
{

  return MEMORY[0x2822009F8](sub_23DE9AD20, 0, 0);
}

uint64_t sub_23DE9AD20()
{
  *(v0 + 41) = *(v0 + 40);
  sub_23DE9AFAC();
  sub_23E1FB53C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DE9ADB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B908 != -1)
  {
    swift_once();
  }

  v2 = sub_23E1FBF0C();
  v3 = __swift_project_value_buffer(v2, qword_27E33E138);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23DE9AE60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE662F0;

  return sub_23DE9AB6C(a1);
}

uint64_t sub_23DE9AEFC(uint64_t a1)
{
  v2 = sub_23DE9A760();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_23DE9AF48()
{
  result = qword_27E32CB00;
  if (!qword_27E32CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32CB08, &unk_23E226558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CB00);
  }

  return result;
}

unint64_t sub_23DE9AFAC()
{
  result = qword_280DAEA00;
  if (!qword_280DAEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA00);
  }

  return result;
}

unint64_t sub_23DE9B000(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FE6EC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23DE9B0C8()
{
  v4 = MEMORY[0x277D84F90];
  sub_23E1FE63C();
  v0 = 0;
  do
  {
    ++v0;
    v1 = sub_23E1FDBDC();

    v2 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

    sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
    sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
    sub_23E1FC98C();

    sub_23E1FE61C();
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
  }

  while (v0 != 3);
  return v4;
}

uint64_t sub_23DE9B260(void *a1)
{
  if (![a1 value] || (swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = 0;
  switch(sub_23DE9B000(v9, v10))
  {
    case 1u:
      sub_23E1FDCBC("Contacts Only", 13);
      goto LABEL_10;
    case 2u:
      sub_23E1FDCBC("Everyone for 10 Minutes", 23);
LABEL_10:
      if (qword_280DAE1D8 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
      }

      v6 = qword_280DAE278;
      v3 = sub_23E1FDBDC();
      v4 = sub_23E1FDBDC();

      v5 = [v6 localizedStringForKey:v3 value:v4 table:0];
      goto LABEL_13;
    case 3u:
      return v1;
    default:
      sub_23E1FDCBC("Off (AirDrop Visibility)", 24);
      sub_23E1FDCBC("Off", 3);
      if (qword_280DAE1D8 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
      }

      v2 = qword_280DAE278;
      v3 = sub_23E1FDBDC();

      v4 = sub_23E1FDBDC();

      v5 = [v2 localizedStringForKey:v3 value:v4 table:0];
LABEL_13:
      v7 = v5;

      v1 = sub_23E1FDC1C();
      break;
  }

  return v1;
}

id sub_23DE9B4E4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFAirDropVisibilityParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);

  return v3;
}

id sub_23DE9B59C()
{
  v0 = sub_23E1FDC1C();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v4;
  sub_23E1FDCBC("Unable to set the selected AirDrop receiving setting.", 53);
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v5 = qword_280DAE278;
  v6 = sub_23E1FDBDC();
  v7 = sub_23E1FDBDC();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E1FDC1C();
  v11 = v10;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_23E1FDABC();
  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_23DE56A08(v0, v2, 5, v12);
}

uint64_t sub_23DE9B744()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_23E1FD21C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_23E1FD1DC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_23E1FDECC();
  v1[10] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_23DE9B8A0, v5, v4);
}

uint64_t sub_23DE9B8A0()
{
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v0 = sub_23E1FE3FC();
  if (v0)
  {
    v1 = v0;
    sub_23E1FDC0C();
  }

  sub_23DE9B59C();
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DE9BAD4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_23DE9BCF4;
  }

  else
  {
    v8 = sub_23DE9BC6C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DE9BC6C()
{

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DE9BCF4()
{

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DE9BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DE9BE98, v5, v4);
}

uint64_t sub_23DE9BE98()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DE7F680;

  return sub_23DE9B744();
}

uint64_t sub_23DE9BF54(void *a1)
{
  v2 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23E1FDCBC("Sets AirDrop receiving to Off, Contacts Only, or Everyone for 10 Minutes. This allows you to choose who can see your device and send you content through AirDrop.", 161);
  v6 = v5;
  sub_23E1FDCBC("Sets AirDrop receiving to Off, Contacts Only, or Everyone for 10 Minutes. This allows you to choose who can see your device and send you content through AirDrop.", 161);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
  }

  v7 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v8 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v4, v6);
  v10 = v9;
  v11 = [a1 localize_];

  v12 = sub_23E1FDC1C();
  return v12;
}

id sub_23DE9C130(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_23E1FDBDC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_23DE9C1C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for WFSetAirDropReceivingAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DE9C338(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFSetAirDropReceivingAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_23DE9C3A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23DE9C404()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE71070;

  return sub_23DE9BDFC(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

id sub_23DE9C50C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v137 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E252F50;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("digits|decimal", 14);
  v14 = v13;
  sub_23E1FDCBC("digits|decimal", 14);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v147 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v148 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v22;
  v24 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  v145 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222340;
  v26 = *MEMORY[0x277D7CC30];
  *(v25 + 32) = *MEMORY[0x277D7CC30];
  v27 = v24;
  v28 = v26;
  v29 = sub_23E1FDCBC("Formats a number into text.", 27);
  v31 = v30;
  sub_23E1FDCBC("Formats a number into text.", 27);
  sub_23E1FC14C();
  v32 = [v147 bundleURL];
  v140 = v5;
  v33 = v32;
  v146 = v2;
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v29, v31);
  *(v25 + 64) = v148;
  *(v25 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v36 = sub_23E1FDABC();
  v37 = v145;
  *(inited + 160) = sub_23DF3BE54(v36);
  v38 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v37;
  *(inited + 192) = v38;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v39 = *MEMORY[0x277D7CB60];
  v40 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v39;
  *(inited + 240) = 0x7265626D756ELL;
  *(inited + 248) = 0xE600000000000000;
  v41 = *MEMORY[0x277D7CCC0];
  *(inited + 264) = v40;
  *(inited + 272) = v41;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v42 = swift_initStackObject();
  v143 = xmmword_23E222350;
  *(v42 + 16) = xmmword_23E222350;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  v43 = MEMORY[0x277D839B0];
  *(v42 + 48) = 1;
  *(v42 + 72) = v43;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7265626D754E4657;
  *(v42 + 104) = 0xE800000000000000;
  *(v42 + 120) = v40;
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x7365707954;
  v44 = v43;
  *(v42 + 184) = 0xE500000000000000;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v42 + 216) = v145;
  *(v42 + 192) = &unk_285023F68;
  v45 = v38;
  v46 = v39;
  v47 = v41;
  v48 = sub_23E1FDABC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v144 = v49;
  *(inited + 280) = v48;
  v50 = *MEMORY[0x277D7CB88];
  *(inited + 304) = v49;
  *(inited + 312) = v50;
  *(inited + 320) = 1;
  v51 = *MEMORY[0x277D7CB90];
  *(inited + 344) = v44;
  *(inited + 352) = v51;
  v52 = v50;
  v53 = v51;
  v54 = sub_23E1FDCBC("Format Number (Action Name)", 27);
  v56 = v55;
  sub_23E1FDCBC("Format Number", 13);
  sub_23E1FC14C();
  v57 = v147;
  v58 = [v147 bundleURL];
  sub_23E1FBF9C();

  v59 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v54, v56);
  *(inited + 360) = v60;
  v61 = *MEMORY[0x277D7CDD0];
  *(inited + 384) = v148;
  *(inited + 392) = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = v143;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x277D837D0];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 1;
  *(v62 + 120) = MEMORY[0x277D839B0];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = v61;
  v141 = sub_23E1FDCBC("Formatted Number (Default Output Name)", 38);
  v65 = v64;
  sub_23E1FDCBC("Formatted Number", 16);
  sub_23E1FC14C();
  v66 = [v57 bundleURL];
  sub_23E1FBF9C();

  v67 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v141, v65);
  *(v62 + 144) = v68;
  *(v62 + 168) = v148;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 216) = v145;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 192) = &unk_285023FA8;
  v69 = MEMORY[0x277D837D0];
  *(inited + 400) = sub_23E1FDABC();
  v70 = *MEMORY[0x277D7CBA0];
  *(inited + 424) = v144;
  *(inited + 432) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_23E2246F0;
  v144 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v71 = swift_allocObject();
  *(v71 + 16) = v143;
  v72 = *MEMORY[0x277D7CDD8];
  *(v71 + 32) = *MEMORY[0x277D7CDD8];
  *(v71 + 40) = 1;
  v73 = *MEMORY[0x277D7CDF8];
  *(v71 + 64) = MEMORY[0x277D839B0];
  *(v71 + 72) = v73;
  *(v71 + 80) = 0xD000000000000016;
  *(v71 + 88) = 0x800000023E24F0F0;
  v74 = *MEMORY[0x277D7CE70];
  *(v71 + 104) = v69;
  *(v71 + 112) = v74;
  *(v71 + 120) = 0x7265626D754E4657;
  *(v71 + 128) = 0xE800000000000000;
  v75 = *MEMORY[0x277D7CE80];
  *(v71 + 144) = v69;
  *(v71 + 152) = v75;
  v76 = v73;
  v77 = v74;
  v137 = v76;
  v138 = v77;
  v78 = v70;
  v79 = v72;
  v80 = v75;
  v81 = sub_23E1FDCBC("Number (WFNumber)", 17);
  v83 = v82;
  sub_23E1FDCBC("Number", 6);
  sub_23E1FC14C();
  v84 = [v147 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v81, v83);
  *(v71 + 184) = v148;
  *(v71 + 160) = v86;
  _s3__C3KeyVMa_0(0);
  *&v143 = v87;
  v141 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v88 = sub_23E1FDABC();
  v89 = sub_23DF3BE9C(v88);
  *(v145 + 32) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_23E224C10;
  *(v90 + 32) = v137;
  *(v90 + 40) = 0xD000000000000012;
  *(v90 + 48) = 0x800000023E252300;
  v91 = *MEMORY[0x277D7CE00];
  v92 = MEMORY[0x277D837D0];
  *(v90 + 64) = MEMORY[0x277D837D0];
  *(v90 + 72) = v91;
  v93 = MEMORY[0x277D83B88];
  *(v90 + 80) = 2;
  v94 = v138;
  *(v90 + 104) = v93;
  *(v90 + 112) = v94;
  *(v90 + 120) = 0xD00000000000001BLL;
  *(v90 + 128) = 0x800000023E253040;
  v95 = *MEMORY[0x277D7CE90];
  *(v90 + 144) = v92;
  *(v90 + 152) = v95;
  *(v90 + 160) = 0;
  v96 = *MEMORY[0x277D7CEF0];
  *(v90 + 184) = v93;
  *(v90 + 192) = v96;
  v97 = v91;
  v98 = v95;
  v99 = v96;
  v100 = sub_23E1FDCBC("Decimal Places (WFNumberFormatDecimalPlaces)", 44);
  v102 = v101;
  sub_23E1FDCBC("Decimal Places", 14);
  sub_23E1FC14C();
  v103 = [v147 bundleURL];
  sub_23E1FBF9C();

  v104 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v100, v102);
  *(v90 + 200) = v105;
  v106 = *MEMORY[0x277D7CEF8];
  *(v90 + 224) = v148;
  *(v90 + 232) = v106;
  v107 = v106;
  v108 = sub_23E1FDCBC("%d Decimal Places", v137);
  v110 = v109;
  v153 = 0;
  v154 = 0xE000000000000000;
  sub_23E1FE5CC();

  v153 = v108;
  v154 = v110;
  v151 = 10;
  v152 = 0xE100000000000000;
  v149 = 32;
  v150 = 0xE100000000000000;
  sub_23DE655BC();
  v153 = sub_23E1FE46C();
  v154 = v111;
  MEMORY[0x23EF044F0](0xD000000000000010, 0x800000023E252360);
  v112 = v153;
  v113 = v154;
  sub_23E1FC14C();
  v114 = [v147 bundleURL];
  sub_23E1FBF9C();

  v115 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v112, v113);
  *(v90 + 264) = v148;
  *(v90 + 240) = v116;
  v117 = sub_23E1FDABC();
  v118 = sub_23DF3BE9C(v117);
  v119 = v145;
  *(v145 + 40) = v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 440) = v119;
  v121 = *MEMORY[0x277D7CB98];
  *(inited + 464) = v120;
  *(inited + 472) = v121;
  v122 = v121;
  v123 = sub_23E1FDCBC("Format ${WFNumber} to ${WFNumberFormatDecimalPlaces} (Parameter Summary)", 72);
  v125 = v124;
  sub_23E1FDCBC("Format ${WFNumber} to ${WFNumberFormatDecimalPlaces}", 52);
  sub_23E1FC14C();
  v126 = [v147 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v123, v125);
  v129 = v128;
  v130 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v131 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v132 = MEMORY[0x277D7CB78];
  *(inited + 480) = v130;
  v133 = *v132;
  *(inited + 504) = v131;
  *(inited + 512) = v133;
  *(inited + 544) = MEMORY[0x277D839B0];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v134 = v133;
  v135 = sub_23E1FDABC();
  return sub_23DF3BF9C(v135);
}

uint64_t sub_23DE9D4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C730, &qword_23E224A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE9D5C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_23DEAEF4C(v2 + v4, a2, &qword_27E32C730, &qword_23E224A80);
}

uint64_t sub_23DE9D630(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_23DE9D4A0(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_23DE9D68C()
{
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v0 = sub_23E1FE3FC();
  if (v0)
  {
    v1 = v0;
    sub_23E1FDC0C();
  }

  sub_23E1FBBDC();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_49();

  return v3(v2);
}

void sub_23DE9D78C()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CC38, &qword_23E2265D8);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_169_0();
  v6 = sub_23E1FBC1C();
  OUTLINED_FUNCTION_6_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  OUTLINED_FUNCTION_18_7();
  v13 = sub_23E1FE3FC();
  if (v13)
  {
    v14 = v13;
    sub_23E1FDC1C();
    sub_23E1FBBFC();
    if (__swift_getEnumTagSinglePayload(v0, 1, v6) != 1)
    {
      v21 = OUTLINED_FUNCTION_128_0();
      v22(v21);
      sub_23E1FBB7C();

      (*(v8 + 8))(v12, v6);
      goto LABEL_8;
    }

    sub_23DE481FC(v0, &qword_27E32CC38, &qword_23E2265D8);
  }

  sub_23E1FCB9C();
  v15 = sub_23E1FD02C();
  v16 = sub_23E1FE1BC();
  if (OUTLINED_FUNCTION_51(v16))
  {
    OUTLINED_FUNCTION_74_2();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_186_0(&dword_23DE30000, v17, v18, "Cannot get the model name");
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
  }

  v19 = OUTLINED_FUNCTION_86();
  v20(v19);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
LABEL_8:
  OUTLINED_FUNCTION_76();
}

id WFAskLLMAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

char *WFAskLLMAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___WFAskLLMAction_session];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v4[OBJC_IVAR___WFAskLLMAction_sessionForMetrics];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = OBJC_IVAR___WFAskLLMAction_enablementHelper;
  *&v4[v9] = [objc_allocWithZone(sub_23E1FBC6C()) init];
  *&v4[OBJC_IVAR___WFAskLLMAction_runLatencies] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_155();
  v10 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v11 = sub_23E1FDA9C();
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for WFAskLLMAction();
  v20.receiver = v4;
  v20.super_class = v12;
  v13 = objc_msgSendSuper2(&v20, sel_initWithIdentifier_definition_serializedParameters_, v10, a3, v11);

  if (v13)
  {

    v14 = *&v13[OBJC_IVAR___WFAskLLMAction_enablementHelper];
    v19[3] = v12;
    v19[4] = sub_23DEAEFA8(&qword_27E32CBC0, v15, type metadata accessor for WFAskLLMAction);
    v19[0] = v13;
    v16 = v13;
    v17 = v14;
    sub_23E1FBC2C();

    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
  }

  return v13;
}

void sub_23DE9DDB8()
{
  OUTLINED_FUNCTION_90();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v1)
  {
    v10 = v1;
    v11 = v0;
    sub_23E1FB7BC();
    sub_23E1FDCBC("Allow “%1$@” to share %2$@ with %3$@?", 41);
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
    }

    v12 = qword_280DAE278;
    OUTLINED_FUNCTION_177_0();
    v13 = sub_23E1FDBDC();
    OUTLINED_FUNCTION_177_0();
    v14 = sub_23E1FDBDC();

    v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

    sub_23E1FDC1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D140, &qword_23E227E40);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_23E222380;
    v17 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v18 = sub_23DEADED0();
    *(v16 + 32) = v5;
    *(v16 + 40) = v3;
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 64) = v18;
    *(v16 + 72) = v11;
    *(v16 + 80) = v10;
    *(v16 + 136) = v17;
    *(v16 + 144) = v18;
    *(v16 + 112) = v9;
    *(v16 + 120) = v7;
    sub_23E1FB7BC();
    sub_23E1FB7BC();
  }

  else
  {
    sub_23E1FDCBC("Allow “%1$@” to send data to %2$@?", 38);
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
    }

    OUTLINED_FUNCTION_82_1();
    v19 = sub_23E1FDBDC();
    OUTLINED_FUNCTION_82_1();
    v20 = sub_23E1FDBDC();

    v22 = OUTLINED_FUNCTION_185_0(v21, sel_localizedStringForKey_value_table_);

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_157();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D140, &qword_23E227E40);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_23E222370;
    v24 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    v25 = sub_23DEADED0();
    *(v23 + 32) = v5;
    *(v23 + 40) = v3;
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    *(v23 + 64) = v25;
    *(v23 + 72) = v9;
    *(v23 + 80) = v7;
    sub_23E1FB7BC();
    sub_23E1FB7BC();
  }

  sub_23E1FDBEC();

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_76();
}

void sub_23DE9E128(uint64_t a1)
{
  sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 isChineseRegionDevice];

  if (v5)
  {
    sub_23E1FCB9C();
    v6 = sub_23E1FD02C();
    v7 = sub_23E1FE1AC();
    if (OUTLINED_FUNCTION_51(v7))
    {
      OUTLINED_FUNCTION_74_2();
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_168_0(v8);
      OUTLINED_FUNCTION_152_0();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
    }

    v15 = OUTLINED_FUNCTION_107_0();
    v16(v15);
  }

  else
  {
    v17.receiver = v1;
    v17.super_class = type metadata accessor for WFAskLLMAction();
    objc_msgSendSuper2(&v17, sel_visibleForUse_, a1);
  }

  OUTLINED_FUNCTION_197();
}

void sub_23DE9E2E4()
{
  OUTLINED_FUNCTION_90();
  v3 = v2;
  sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CC38, &qword_23E2265D8);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_23E1FBC1C();
  OUTLINED_FUNCTION_6_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_18_7();
  v13 = sub_23E1FDBDC();
  v14 = [v0 parameterStateForKey_];

  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15 && (v16 = [v15 value]) != 0 && (v17 = v16, v25 = 0, v26 = 0, sub_23E1FDC0C(), v17, v26))
    {
      sub_23E1FBBFC();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        OUTLINED_FUNCTION_170_0();
        v23 = OUTLINED_FUNCTION_82_1();
        v24(v23);
        sub_23E1FBB7C();
        swift_unknownObjectRelease();
        (*(v11 + 8))(v1, v9);
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
      sub_23DE481FC(v8, &qword_27E32CC38, &qword_23E2265D8);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_23E1FCB9C();
  v18 = sub_23E1FD02C();
  v19 = sub_23E1FE1BC();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_74_2();
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23DE30000, v18, v19, "Cannot get model name from WFLLMModelKey parameter state", v20, 2u);
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
  }

  v21 = OUTLINED_FUNCTION_24_2();
  v22(v21);
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE9E5DC()
{
  v0 = OUTLINED_FUNCTION_104_0();
  v1 = OUTLINED_FUNCTION_109_0();
  v3 = [v1 v2];

  if (v3)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 value];
      if (v5)
      {
        v6 = v5;
        sub_23E1FDC0C();
      }
    }

    swift_unknownObjectRelease();
  }

  sub_23E1FBBDC();
  OUTLINED_FUNCTION_12();
  v7 = OUTLINED_FUNCTION_49();

  return v8(v7);
}

void sub_23DE9E710(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_23E1FBC1C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_23DE9E2E4();
  if (v6)
  {
    sub_23DE36C8C(&v5, v7);
    __swift_project_boxed_opaque_existential_0(v7, v8);
    if (sub_23E1FBA2C())
    {
      sub_23E1FE2DC();
      __swift_project_boxed_opaque_existential_0(v7, v8);
      sub_23E1FBA4C();
      v4 = sub_23E1FE2CC();
      (a2)[2](a2, v4, 0);
    }

    else
    {
      a2[2](a2, 0, 0);
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_23DE481FC(&v5, &unk_27E32CC40, &qword_23E2265E0);
    a2[2](a2, 0, 0);
  }

  _Block_release(a2);
}

uint64_t sub_23DE9E8F0()
{
  v0 = sub_23E1FBC1C();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  sub_23DE9E2E4();
  if (v10)
  {
    sub_23DE36C8C(&v9, v11);
    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    OUTLINED_FUNCTION_155();
    if ((sub_23E1FBA2C() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
      OUTLINED_FUNCTION_161_0();
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_23E2235B0;
      sub_23E1FE2DC();
      (*(v2 + 104))(v6, *MEMORY[0x277CFC140], v0);
      *(v7 + 32) = sub_23E1FE2CC();
      __swift_destroy_boxed_opaque_existential_0(v11);
      return v7;
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_23DE481FC(&v9, &unk_27E32CC40, &qword_23E2265E0);
  }

  return 0;
}

id sub_23DE9EB28(uint64_t a1)
{
  OUTLINED_FUNCTION_18_7();
  v2 = sub_23E1FDBDC();
  v3 = OUTLINED_FUNCTION_109_0();
  v5 = [v3 v4];

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [swift_unknownObjectRetain() containedVariables];
  sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
  OUTLINED_FUNCTION_86();
  v7 = sub_23E1FDDEC();

  v8 = sub_23DE4BFE4(v7);

  if (v8 != 1)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v21.receiver = v1;
    v21.super_class = type metadata accessor for WFAskLLMAction();
    v19 = objc_msgSendSuper2(&v21, sel_parameterSummary);
    goto LABEL_11;
  }

  v9 = [v5 containedVariables];
  v10 = sub_23E1FDDEC();

  sub_23DE59014();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EF04DD0](0, v10);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;

  sub_23DE38DA8(0, &unk_27E32CC58, 0x277D7C158);
  v13 = [v12 isKindOfClass_];
  swift_unknownObjectRelease();

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23E1FDCBC("Use ${WFLLMModel}", 17);
  sub_23E1FDCBC("Use ${WFLLMModel}", 17);
  if (qword_280DAE1D8 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
  }

  v14 = qword_280DAE278;
  OUTLINED_FUNCTION_58_0();
  v15 = sub_23E1FDBDC();

  OUTLINED_FUNCTION_156_0();
  v16 = sub_23E1FDBDC();

  v1 = [v14 localizedStringForKey:v15 value:v16 table:0];

  sub_23E1FDC1C();
  sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v17 = OUTLINED_FUNCTION_51_0();
  sub_23DE9EDB8(v17, v18);
LABEL_11:
  OUTLINED_FUNCTION_37();
  swift_unknownObjectRelease();
  return v1;
}

id sub_23DE9EDB8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FDBDC();

  v4 = [v2 initWithLocalizedString_];

  return v4;
}

uint64_t sub_23DE9EE2C()
{
  OUTLINED_FUNCTION_23();
  v1[112] = v0;
  v1[111] = v2;
  v3 = sub_23E1FBB0C();
  v1[113] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[114] = v4;
  v1[115] = OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CC68, &qword_23E2265F0);
  OUTLINED_FUNCTION_25(v5);
  v1[116] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FB9FC();
  v1[117] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[118] = v7;
  v1[119] = OUTLINED_FUNCTION_91();
  v1[120] = swift_task_alloc();
  v8 = sub_23E1FBBDC();
  v1[121] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[122] = v9;
  v1[123] = OUTLINED_FUNCTION_42();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CC70, &qword_23E2265F8);
  OUTLINED_FUNCTION_25(v10);
  v1[124] = OUTLINED_FUNCTION_42();
  v11 = sub_23E1FC08C();
  v1[125] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[126] = v12;
  v1[127] = OUTLINED_FUNCTION_91();
  v1[128] = swift_task_alloc();
  v13 = sub_23E1FD03C();
  v1[129] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[130] = v14;
  v1[131] = OUTLINED_FUNCTION_91();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v15 = sub_23E1FBC1C();
  v1[134] = v15;
  OUTLINED_FUNCTION_8(v15);
  v1[135] = v16;
  v1[136] = OUTLINED_FUNCTION_91();
  v1[137] = swift_task_alloc();
  sub_23E1FDECC();
  OUTLINED_FUNCTION_116_0();
  v1[138] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_173_0();
  v1[139] = v19;
  v1[140] = v20;

  return MEMORY[0x2822009F8](sub_23DE9F118, v18, v17);
}

uint64_t sub_23DE9F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();
  sub_23DE9D78C();
  if (!*(v16 + 424))
  {

    sub_23DE481FC(v16 + 400, &unk_27E32CC40, &qword_23E2265E0);
    sub_23E1FCB9C();
    v23 = sub_23E1FD02C();
    v24 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v24))
    {
      OUTLINED_FUNCTION_74_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_105_0(&dword_23DE30000, v25, v26, "Could not get the model name because self.modelName was nil.");
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
    }

    v27 = *(v16 + 944);
    v28 = *(v16 + 936);

    v29 = OUTLINED_FUNCTION_50();
    v30(v29);
    OUTLINED_FUNCTION_0_14();
    sub_23DEAEFA8(v31, 255, v32);
    OUTLINED_FUNCTION_29();
    v33 = swift_allocError();
    *v34 = 0;
    v34[1] = 0xE000000000000000;
    (*(v27 + 104))(v34, *MEMORY[0x277CFBF88], v28);
    v74 = v33;
    swift_willThrow();
    goto LABEL_22;
  }

  v17 = *(v16 + 896);
  sub_23DE36C8C((v16 + 400), v16 + 720);
  v18 = [v17 runningDelegate];
  if (v18)
  {
    v19 = v18;
    if ([v18 respondsToSelector_])
    {
      v20 = [v19 currentRunningContextForAction_];
      swift_unknownObjectRelease();
      if (v20)
      {
        sub_23DEAE990(v20);
        if (v21)
        {

          v22 = 1;
          goto LABEL_12;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v22 = 0;
LABEL_12:
  *(v16 + 1360) = v22;
  v35 = *(v16 + 1080);
  __swift_project_boxed_opaque_existential_0((v16 + 720), *(v16 + 744));
  OUTLINED_FUNCTION_30_0();
  sub_23E1FBA4C();
  v36 = OUTLINED_FUNCTION_50();
  v38 = v37(v36);
  v39 = *MEMORY[0x277CFC140];
  *(v16 + 1128) = *(v35 + 8);
  v40 = OUTLINED_FUNCTION_50();
  v41(v40);
  if (v38 != v39 || (sub_23E1FBC5C() & 1) != 0)
  {
    v42 = swift_task_alloc();
    *(v16 + 1136) = v42;
    *v42 = v16;
    v42[1] = sub_23DE9F5D8;
    OUTLINED_FUNCTION_56_1();

    return WFContentCollection.hasImage()();
  }

  sub_23E1FCB9C();
  v45 = sub_23E1FD02C();
  v46 = sub_23E1FE1BC();
  if (OUTLINED_FUNCTION_118(v46))
  {
    OUTLINED_FUNCTION_74_2();
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_168_0(v47);
    OUTLINED_FUNCTION_152_0();
    _os_log_impl(v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
  }

  v54 = *(v16 + 1064);
  v55 = *(v16 + 1040);
  v56 = *(v16 + 1032);

  (*(v55 + 8))(v54, v56);
  OUTLINED_FUNCTION_0_14();
  sub_23DEAEFA8(v57, 255, v58);
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_29();
  v59 = swift_allocError();
  v61 = v60;
  v62 = sub_23E1FBC4C();
  if (!v63)
  {
    v62 = sub_23E1FBC3C();
  }

  v64 = *(v16 + 944);
  v65 = *(v16 + 936);
  *v61 = v62;
  v61[1] = v63;
  (*(v64 + 104))(v61, *MEMORY[0x277CFBF50], v65);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v16 + 720));
  v74 = v59;
LABEL_22:
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_56_1();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, v74, a13, a14, a15, a16);
}

uint64_t sub_23DE9F5D8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_58();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v7 + 1361) = v6;

  OUTLINED_FUNCTION_136();
  v9 = *(v8 + 1120);
  v10 = *(v0 + 1112);

  return MEMORY[0x2822009F8](sub_23DE9F6E4, v10, v9);
}

uint64_t sub_23DE9F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();
  v17 = *(v16 + 1361);
  OUTLINED_FUNCTION_42_2();
  sub_23E1FBA5C();
  OUTLINED_FUNCTION_157();
  if (v17 == 1 && (sub_23DEADFB0(v16 + 720, v16 + 680), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD08, &qword_23E226648), sub_23E1FBC7C(), (swift_dynamicCast() & 1) != 0) && (, v18 = [objc_opt_self() shared], OUTLINED_FUNCTION_82_1(), v19 = sub_23E1FE32C(), v18, (v19 & 1) == 0))
  {

    sub_23E1FCB9C();
    v36 = sub_23E1FD02C();
    v37 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v37))
    {
      OUTLINED_FUNCTION_74_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_105_0(&dword_23DE30000, v38, v39, "Image use case id is turned off for AFM server model, throwing an error... ");
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
    }

    v40 = OUTLINED_FUNCTION_50();
    v41(v40);
    OUTLINED_FUNCTION_0_14();
    sub_23DEAEFA8(v42, 255, v43);
    OUTLINED_FUNCTION_29();
    v44 = swift_allocError();
    v46 = v45;
    sub_23E1FDCBC("images", 6);
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
    }

    OUTLINED_FUNCTION_82_1();
    v47 = sub_23E1FDBDC();
    OUTLINED_FUNCTION_82_1();
    v48 = sub_23E1FDBDC();

    v50 = OUTLINED_FUNCTION_185_0(v49, sel_localizedStringForKey_value_table_);

    v51 = sub_23E1FDC1C();
    v53 = v52;

    *v46 = v51;
    v46[1] = v53;
    sub_23DEADFB0(v16 + 720, (v46 + 2));
    v54 = OUTLINED_FUNCTION_109_0();
    v55(v54);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v16 + 720));
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_125();

    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_56_1();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v44, a13, a14, a15, a16);
  }

  else
  {
    sub_23DEA2C50(*(v16 + 1360), *(v16 + 1361));
    v29 = *(v16 + 896);
    v30 = OBJC_IVAR___WFAskLLMAction_session;
    swift_beginAccess();
    sub_23DEAEF4C(v29 + v30, v16 + 520, &qword_27E32C730, &qword_23E224A80);
    if (*(v16 + 544))
    {
      v31 = (v16 + 480);

      sub_23DE36C8C((v16 + 520), v16 + 480);
    }

    else
    {
      sub_23DE481FC(v16 + 520, &qword_27E32C730, &qword_23E224A80);
      sub_23DEADFB0(v16 + 720, v16 + 600);
      v56 = sub_23E1FBB9C();
      swift_allocObject();
      v57 = sub_23E1FBB8C();
      v31 = (v16 + 560);
      *(v16 + 584) = v56;
      *(v16 + 592) = MEMORY[0x277CFC0C8];
      *(v16 + 560) = v57;
    }

    sub_23DE36C8C(v31, v16 + 440);
    v32 = *(v16 + 896);
    sub_23DEADFB0(v16 + 440, v16 + 640);
    v33 = OBJC_IVAR___WFAskLLMAction_sessionForMetrics;
    swift_beginAccess();
    sub_23DE9D4A0(v16 + 640, v32 + v33);
    swift_endAccess();
    v34 = swift_task_alloc();
    *(v16 + 1144) = v34;
    *v34 = v16;
    v34[1] = sub_23DE9FBEC;
    OUTLINED_FUNCTION_65_0(*(v16 + 888));
    OUTLINED_FUNCTION_56_1();

    return sub_23DEAC534();
  }
}