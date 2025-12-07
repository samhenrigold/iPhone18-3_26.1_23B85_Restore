void sub_2192CAFC4(uint64_t a1)
{
  v1 = *(a1 + 296);
  v2 = sub_219BF06B4();
  v3 = [v2 identifier];

  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  [v1 markIssueAsSeenWithID_];
}

uint64_t sub_2192CB05C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v127 = a6;
  v123 = a3;
  v129 = a1;
  v113 = sub_219BDBD34();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BDF1E4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400(0);
  v104 = v10;
  v102 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v126 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v122 = v12;
  v101 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v125 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BDFCE4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1444();
  v120 = *(v15 - 8);
  v121 = v15;
  MEMORY[0x28223BE20](v15);
  v119 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v17 - 8);
  v128 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v124 = sub_219BE16D4();
  v19 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v99 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v21 - 8);
  v115 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BDF4A4();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D3BC60(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDF474();
  v114 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v98 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_projectBox();
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v100 = v37;
  v107 = a2;
  sub_219BE6934();
  sub_2193B5F80(v130, v27);

  v38 = type metadata accessor for TodayFeedGroup(0);
  v39 = (*(*(v38 - 8) + 48))(v27, 1, v38);
  v117 = v19;
  if (v39 == 1)
  {
    sub_2192CF630(v27, sub_218D3BC60);
LABEL_5:
    v114[7](v33, 1, 1, v34);
LABEL_6:
    sub_2192CF630(v33, sub_218B58F30);
    goto LABEL_7;
  }

  v97 = a4;
  sub_21882D12C(v30);
  sub_2192CF630(v27, type metadata accessor for TodayFeedGroup);
  v40 = sub_219BF1904();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v30, 1, v40) == 1)
  {
    sub_2192CF630(v30, sub_218B5A830);
    a4 = v97;
    goto LABEL_5;
  }

  v86 = [v123 identifier];
  sub_219BF5414();
  v96 = v34;

  sub_219BF17B4();
  v87 = v96;

  (*(v41 + 8))(v30, v40);
  v88 = v114;
  v89 = (v114[6])(v33, 1, v87);
  a4 = v97;
  if (v89 == 1)
  {
    goto LABEL_6;
  }

  (v88[4])(v98, v33, v87);
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v90 = v88;
  v91 = sub_219BDCD44();
  v92 = *(v91 - 8);
  v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_219C09BA0;
  (*(v92 + 104))(v94 + v93, *MEMORY[0x277CEAD18], v91);
  sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
  v95 = v98;
  sub_219BDCCC4();

  (v90[1])(v95, v87);
LABEL_7:
  v42 = v115;
  sub_2192DC084(a4, v115, sub_218B59134);
  v43 = v116;
  v44 = v118;
  if ((*(v116 + 48))(v42, 1, v118) == 1)
  {
    v45 = &unk_219C09000;
    sub_2192CF630(v42, sub_218B59134);
  }

  else
  {
    (*(v43 + 32))(v24, v42, v44);
    sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v115 = v36;
    v46 = sub_219BDCD44();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v49 = swift_allocObject();
    v45 = &unk_219C09000;
    *(v49 + 16) = xmmword_219C09BA0;
    (*(v47 + 104))(v49 + v48, *MEMORY[0x277CEAD18], v46);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();
    v36 = v115;

    (*(v43 + 8))(v24, v44);
  }

  swift_beginAccess();
  v50 = v128;
  sub_2192DC084(v36, v128, sub_218B58D58);
  v51 = v117;
  if ((*(v117 + 48))(v50, 1, v124) == 1)
  {
    sub_2192CF630(v128, sub_218B58D58);
    v52 = *MEMORY[0x277CEAD18];
  }

  else
  {
    v53 = v99;
    v54 = v124;
    (*(v51 + 32))(v99, v128, v124);
    sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v55 = sub_219BDCD44();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v45[186];
    v52 = *MEMORY[0x277CEAD18];
    (*(v56 + 104))(v58 + v57, v52, v55);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v51 + 8))(v53, v54);
  }

  v59 = [v123 identifier];
  sub_219BF5414();

  v60 = v119;
  sub_219BE1424();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v62 = v61;
  v63 = sub_219BDCD44();
  v64 = *(v63 - 8);
  v65 = *(v64 + 72);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v115 = *(v64 + 80);
  v116 = v65;
  v118 = v62;
  v67 = swift_allocObject();
  v124 = v45[186];
  *(v67 + 16) = v124;
  v70 = *(v64 + 104);
  v69 = (v64 + 104);
  v68 = v70;
  LODWORD(v128) = v52;
  v117 = v63;
  (v70)(v67 + v66, v52, v63);
  sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v123 = 0x8000000219D165A0;
  v71 = v121;
  sub_219BDCCC4();

  (*(v120 + 8))(v60, v71);
  sub_2187E2B78(0);
  v73 = v72;
  sub_219BE7594();
  sub_219BE7564();
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel, &unk_219CCC824);
  v74 = v122;
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v76 = v103;
    sub_219BDFCD4();
    (*(v102 + 8))(v126, v104);
    (*(v101 + 8))(v125, v74);
    v99 = v69;
    v114 = v68;
    v77 = swift_allocObject();
    v126 = v73;
    *(v77 + 16) = v124;
    v78 = v117;
    (v68)(v77 + v66, v128, v117);
    sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
    v79 = v106;
    sub_219BDCCC4();

    (*(v105 + 8))(v76, v79);
    sub_219BE6944();
    v80 = v108;
    sub_219BDF1C4();
    v81 = swift_allocObject();
    *(v81 + 16) = v124;
    (v114)(v81 + v66, v128, v78);
    sub_2187DD9B8(&unk_280EE8840, 255, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
    v82 = v110;
    sub_219BDCCC4();

    (*(v109 + 8))(v80, v82);
    sub_219BDFEC4();
    v83 = v111;
    sub_219BE75A4();
    sub_2187DD9B8(&unk_280EE8520, 255, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
    sub_219BDCC64();
    v84 = *(v112 + 8);
    v85 = v113;
    v84(v83, v113);
    sub_219BE7574();
    sub_219BDCC74();
    return (v84)(v83, v85);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192CC474(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v69 = a6;
  v64 = a4;
  LODWORD(v79) = a3;
  v78 = a2;
  v82 = a1;
  v75 = sub_219BDBD34();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF4A4();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BDF3E4();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_219BDFDE4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDF8A4();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = swift_projectBox();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v81 = v20;
  v21 = sub_219BDCD44();
  v60 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  v80 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v26 = *MEMORY[0x277CEAD18];
  v27 = *(v22 + 104);
  v27(v25 + v24, v26, v21);
  sub_219BDEF94();
  sub_2187DD9B8(&qword_280EE8910, 255, MEMORY[0x277D2D788], MEMORY[0x277D2D780]);
  sub_219BDCCC4();

  sub_219BDF894();
  v78 = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = v80;
  v77 = v26;
  v29 = v26;
  v30 = v60;
  v76 = v27;
  v27(v28 + v24, v29, v60);
  sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v79 = "gapOnscreenTimer";
  v31 = v30;
  v32 = v61;
  sub_219BDCCC4();

  (*(v62 + 8))(v19, v32);
  if (sub_219BF0A34())
  {
    (*(v53 + 104))(v52, *MEMORY[0x277D2DA78], v54);
    v33 = v55;
    sub_219BDFDD4();
    v34 = swift_allocObject();
    *(v34 + 16) = v80;
    v76(v34 + v24, v77, v31);
    sub_2187DD9B8(&unk_27CC18730, 255, MEMORY[0x277D2E148], MEMORY[0x277D2E140]);
    v35 = v57;
    sub_219BDCCC4();

    (*(v56 + 8))(v33, v35);
  }

  v36 = v63;
  swift_beginAccess();
  v37 = v36;
  v38 = v65;
  sub_2192DC084(v37, v65, sub_218B58D58);
  v40 = v66;
  v39 = v67;
  if ((*(v66 + 48))(v38, 1, v67) == 1)
  {
    sub_2192CF630(v38, sub_218B58D58);
  }

  else
  {
    v41 = v58;
    (*(v40 + 32))(v58, v38, v39);
    v42 = swift_allocObject();
    *(v42 + 16) = v80;
    v76(v42 + v24, v77, v31);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v40 + 8))(v41, v39);
  }

  v43 = v70;
  v44 = v68;
  sub_2192DC084(v69, v68, sub_218B59134);
  v45 = v71;
  if ((*(v43 + 48))(v44, 1, v71) == 1)
  {
    sub_2192CF630(v44, sub_218B59134);
  }

  else
  {
    v46 = v59;
    (*(v43 + 32))(v59, v44, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = v80;
    v76(v47 + v24, v77, v31);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v43 + 8))(v46, v45);
  }

  sub_219BE0494();
  sub_2187E2B78(0);
  v48 = v72;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE83E0, 255, MEMORY[0x277D2E560], MEMORY[0x277D2E558]);
  sub_219BDCC64();
  v49 = *(v73 + 8);
  v50 = v75;
  v49(v48, v75);
  sub_219BE7574();
  sub_219BDCC74();
  return (v49)(v48, v50);
}

uint64_t sub_2192CCFBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v106 = a5;
  v111 = a4;
  v115 = a3;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v108 = *(v14 - 8);
  v109 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BDF8A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE09E4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BDF104();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BEF9C4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_219BDFFE4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDEFE4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDFCE4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = swift_projectBox();
  sub_2187E2B78(0);
  v28 = v27;
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel, &unk_219CCC824);
  v103 = v28;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v81 = v16;
  v82 = v11;
  v83 = a2;
  v84 = v9;
  v85 = v8;
  sub_219BDFCD4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v112 = v30;
  v31 = sub_219BDCD44();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v119 = *(v32 + 80);
  v120 = v33;
  v34 = v32;
  v35 = (v119 + 32) & ~v119;
  v36 = swift_allocObject();
  v122 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v118 = *MEMORY[0x277CEAD18];
  v37 = *(v34 + 104);
  v116 = v31;
  v117 = v37;
  v114 = v34 + 104;
  v37(v36 + v35);
  v121 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();

  (*(v24 + 8))(v26, v23);
  v38 = v115;
  v39 = [v115 identifier];
  sub_219BF5414();

  [v38 isPaid];
  v40 = [v38 totalTime];
  sub_219BF5414();

  v41 = v86;
  v113 = a1;
  sub_219BDEFB4();
  v110 = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v122;
  v43 = v118;
  v117(v42 + v35, v118, v31);
  sub_2187DD9B8(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v44 = v88;
  sub_219BDCCC4();

  (*(v87 + 8))(v41, v44);
  v45 = v90;
  v46 = v89;
  v47 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x277D32840], v91);
  v48 = v92;
  v49 = v115;
  sub_219BE02B4();
  (*(v45 + 8))(v46, v47);
  v50 = v110;
  v51 = swift_allocObject();
  *(v51 + 16) = v122;
  v52 = v117;
  v117(v51 + v50, v43, v116);
  sub_2187DD9B8(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  v53 = v94;
  sub_219BDCCC4();

  (*(v93 + 8))(v48, v53);
  v111 = *(v111 + 72);
  v54 = [v49 sourceChannel];
  v55 = v95;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v56 = v110;
  v57 = swift_allocObject();
  *(v57 + 16) = v122;
  v58 = v116;
  v52(v57 + v56, v118, v116);
  sub_2187DD9B8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v59 = v97;
  sub_219BDCCC4();

  (*(v96 + 8))(v55, v59);
  v60 = [v115 sourceChannel];
  v61 = v99;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v62 = swift_allocObject();
  *(v62 + 16) = v122;
  v63 = v118;
  v64 = v117;
  v117(v62 + v56, v118, v58);
  sub_2187DD9B8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v65 = v101;
  sub_219BDCCC4();

  (*(v100 + 8))(v61, v65);
  v66 = v102;
  sub_219BDF894();
  v67 = swift_allocObject();
  *(v67 + 16) = v122;
  v64(v67 + v56, v63, v116);
  sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v68 = v105;
  sub_219BDCCC4();

  (*(v104 + 8))(v66, v68);
  v69 = v98;
  swift_beginAccess();
  v70 = v69;
  v71 = v107;
  sub_2192DC084(v70, v107, sub_218B58D58);
  v73 = v108;
  v72 = v109;
  if ((*(v108 + 48))(v71, 1, v109) == 1)
  {
    sub_2192CF630(v71, sub_218B58D58);
  }

  else
  {
    v74 = v81;
    (*(v73 + 32))(v81, v71, v72);
    v75 = swift_allocObject();
    *(v75 + 16) = v122;
    v117(v75 + v56, v118, v116);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v73 + 8))(v74, v72);
  }

  v76 = v84;
  sub_219BE04C4();
  v77 = v82;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE83D0, 255, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
  sub_219BDCC64();
  v78 = *(v76 + 8);
  v79 = v85;
  v78(v77, v85);
  sub_219BE7574();
  sub_219BDCC74();
  return (v78)(v77, v79);
}

void sub_2192CDF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  sub_21880B928(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD34();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 400);
    if (v13)
    {
      v25 = v9;
      v14 = v13;
      v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = v25;

      [v14 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v25 = objc_opt_self();
    v17 = v26;
    (*(v10 + 16))(v26, v28, v9);
    (*(v6 + 16))(v8, v27, v5);
    v18 = *(v10 + 80);
    v28 = v5;
    v19 = (v18 + 24) & ~v18;
    v20 = (v11 + *(v6 + 80) + v19) & ~*(v6 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    (*(v10 + 32))(v21 + v19, v17, v9);
    (*(v6 + 32))(v21 + v20, v8, v28);
    aBlock[4] = sub_2192DD1A8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218B66540;
    aBlock[3] = &block_descriptor_103;
    v22 = _Block_copy(aBlock);

    v23 = [v25 scheduledTimerWithTimeInterval:1 repeats:v22 block:1.0];
    _Block_release(v22);
    v24 = *(v16 + 400);
    *(v16 + 400) = v23;
  }
}

uint64_t sub_2192CE2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCF20(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    if (qword_280EE38D8 != -1)
    {
      swift_once();
    }

    sub_219BDBD24();
    sub_219BDB104();
    (*(v6 + 8))(v8, v5);
    v13 = type metadata accessor for FeedPerformanceCommandContext(0);
    v14 = v13[5];
    sub_21880B928(0);
    (*(*(v15 - 8) + 16))(&v11[v14], a4, v15);
    v16 = v13[6];
    v17 = type metadata accessor for TodayFeedGroup(0);
    (*(*(v17 - 8) + 56))(&v11[v16], 1, 1, v17);
    v11[v13[7]] = 0;
    (*(*(v13 - 1) + 56))(v11, 0, 1, v13);
    sub_219BE7094();
    sub_2192CF630(v11, sub_2192DCF20);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2192CE5D8()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1234();
  sub_219BDB164();
  sub_2187DD9B8(&qword_280EE80C8, 255, MEMORY[0x277D2F098], MEMORY[0x277D2F090]);
  sub_219BDCC64();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_219BDB134();
  sub_219BDCC74();
  return (v4)(v3, v0);
}

double sub_2192CE75C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_219BEDFD4();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FBA648(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~a3 & 0xF000000000000007) != 0)
  {
    v26 = a1;
    v27 = a2;
    v25 = v5;
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);

    sub_219BEE7B4();
    v21 = sub_219BF0C14();
    (*(v15 + 8))(v18, v14);
    if (*(v21 + 16) && (v22 = sub_21870F700(v26, v27), (v23 & 1) != 0))
    {
      (*(v28 + 16))(v12, *(v21 + 56) + *(v28 + 72) * v22, v10);
      sub_21885AB78(a3);

      (*(v28 + 32))(a4, v12, v10);
      (*(v28 + 56))(a4, 0, 1, v10);
    }

    else
    {

      v24 = sub_219BEE764();
      sub_2192CE75C(v26, v27, v24, a4);
      sub_21885AB78(v24);
      return sub_21885AB78(a3);
    }
  }

  else
  {
    v19 = *(v28 + 56);

    v19(a4, 1, 1, v10, v16);
  }

  return result;
}

uint64_t sub_2192CEA6C()
{
  sub_218774F78(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));
  __swift_destroy_boxed_opaque_existential_1((v0 + 248));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 424));
  __swift_destroy_boxed_opaque_existential_1((v0 + 464));
  __swift_destroy_boxed_opaque_existential_1((v0 + 504));
  return v0;
}

uint64_t sub_2192CEB3C()
{
  sub_2192CEA6C();

  return swift_deallocClassInstance();
}

unint64_t sub_2192CEB84()
{
  result = qword_27CC18728;
  if (!qword_27CC18728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18728);
  }

  return result;
}

uint64_t sub_2192CEC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a2;
  sub_21880B928(0);
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v13 + 32))(v17 + v16, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v32 = *(v27 + 40);
  sub_2187DD900(0);
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
  swift_unknownObjectRetain();
  sub_219BE7B94();
  v18 = v28;
  v19 = v29;
  (*(v7 + 16))(v28, v11, v29);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v20, v18, v19);
  v23 = (v22 + v21);
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v25 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2192DCC90;
  v25[1] = v17;

  sub_219BDD1B4();

  return (*(v7 + 8))(v11, v19);
}

uint64_t sub_2192CEF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  sub_21880B928(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = sub_219BDB184();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a3, v12, v15);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  v29 = *(v26 + 40);
  sub_2187DD900(0);
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  (*(v6 + 16))(v8, v11, v5);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v6 + 32))(v21 + v19, v8, v5);
  v22 = (v21 + v20);
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  v24 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_2192DCB00;
  v24[1] = v18;

  sub_219BDD1B4();

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2192CF2A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a1;
  v35 = a2;
  sub_21880B928(0);
  v33 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_219BDB184();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v36 = *(v31 + 40);
  v18 = a4;
  sub_2187DD900(0);
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
  v19 = v11;
  v30 = v11;
  sub_219BE7B94();
  v20 = v32;
  v21 = v33;
  (*(v7 + 16))(v32, v19, v33);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v22, v20, v21);
  v25 = (v24 + v23);
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  v27 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_2192DCA2C;
  v27[1] = v17;

  sub_219BDD1B4();

  return (*(v7 + 8))(v30, v21);
}

uint64_t sub_2192CF630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2192CF690(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a3;
  v37 = a2;
  v4 = sub_219BEF974();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TodayLayoutModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  sub_218879004(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DD874(0, &qword_280EE5A30, MEMORY[0x277D6D618]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v41 = *(a1 + 48);
  sub_2187DDE2C(0);
  sub_2187DD9B8(&qword_280EE4C10, 255, sub_2187DDE2C, MEMORY[0x277D6DF38]);
  sub_219BE91E4();
  sub_219BE6594();
  (*(v19 + 8))(v21, v18);
  sub_219BE75E4();
  (*(v14 + 8))(v16, v13);
  v22 = v36;
  sub_2192DC084(v11, v36, type metadata accessor for TodayLayoutModel);
  v23 = v38;
  v24 = v22;
  v25 = v39;
  (*(v38 + 32))(v6, v24, v39);
  sub_219BEF964();
  (*(v23 + 8))(v6, v25);
  sub_2192CF630(v11, type metadata accessor for TodayLayoutModel);
  if (v46)
  {
    [v40 frame];
  }

  else
  {
    v27 = v44;
    v26 = v45;
    v29 = v42;
    v28 = v43;
    v30 = v40;
    [v40 frame];
    v32 = v31;
    [v30 frame];
    v34 = v33;
    v47.origin.x = v29;
    v47.origin.y = v28;
    v47.size.width = v27;
    v47.size.height = v26;
    CGRectOffset(v47, v32, v34);
  }
}

uint64_t sub_2192CFA84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v165 = a5;
  v175 = a3;
  v177 = a1;
  v152 = sub_219BE09E4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BDF104();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v162 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_219BE0724();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v128 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BE1774();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BEFBD4();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_219BDF1A4();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDFCE4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BE0D44();
  v179 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v174 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BDF0E4();
  v173 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v172 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_219BDF094();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v140 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v18 - 8);
  v167 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BE16D4();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v139 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v141 = &v124 - v22;
  v136 = sub_219BF1904();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF33A4();
  MEMORY[0x28223BE20](v24 - 8);
  v132 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v26 - 8);
  v133 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BDF474();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v124 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BE0444();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v30 - 8);
  v146 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BF13A4();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v36 = v35;
  v181 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v40 = v39;
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v43 = &v124 - v42;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &unk_280EE5730, MEMORY[0x277D6D710]);
  v48 = v47;
  v176 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v144 = &v124 - v49;
  v166 = swift_projectBox();
  sub_218B58D38(0);
  v51 = v50;
  sub_219BE7594();
  v180 = a2;
  sub_219BE7564();
  sub_219BE5FC4();
  v52 = *(v181 + 8);
  v145 = v36;
  v52(v38, v36);
  sub_219BF1384();
  sub_2192CF630(v34, MEMORY[0x277D33320]);
  sub_219BEB244();

  v53 = v40;
  v54 = v176;
  (*(v41 + 8))(v43, v53);
  v55 = (*(v54 + 48))(v46, 1, v48);
  v171 = v51;
  if (v55 == 1)
  {
    sub_2192CF630(v46, sub_218B58F98);
    v56 = v175;
  }

  else
  {
    v57 = v144;
    (*(v54 + 32))(v144, v46, v48);
    v58 = v146;
    sub_219BE7564();
    (*(v181 + 56))(v58, 0, 1, v145);
    sub_2187DD9B8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
    v59 = sub_219BE6A34();
    result = sub_2192CF630(v58, sub_218B58F64);
    if (v59 < 0xFFFFFFFF80000000)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v59 > 0x7FFFFFFF)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v61 = v129;
    sub_219BE0434();
    v62 = v131;
    v183 = v131;
    v184 = sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
    v63 = __swift_allocate_boxed_opaque_existential_1(&v182);
    v64 = v130;
    (*(v130 + 16))(v63, v61, v62);
    swift_beginAccess();
    sub_2199D5C50(&v182, 0xD000000000000013, 0x8000000219CE8F20);
    swift_endAccess();
    (*(v64 + 8))(v61, v62);
    v65 = v132;
    sub_219BE6934();
    v66 = v134;
    sub_219BF3394();
    sub_2192CF630(v65, MEMORY[0x277D33DA8]);
    v56 = v175;
    v67 = [v175 identifier];
    sub_219BF5414();

    v68 = v133;
    sub_219BF17B4();

    (*(v135 + 8))(v66, v136);
    v69 = v137;
    v70 = v138;
    if ((*(v137 + 48))(v68, 1, v138) == 1)
    {
      (*(v54 + 8))(v57, v48);
      sub_2192CF630(v68, sub_218B58F30);
    }

    else
    {
      v71 = v124;
      (*(v69 + 32))(v124, v68, v70);
      v183 = v70;
      v184 = sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
      v72 = __swift_allocate_boxed_opaque_existential_1(&v182);
      (*(v69 + 16))(v72, v71, v70);
      swift_beginAccess();
      sub_2199D5C50(&v182, 0x7261696C69787541, 0xED00006174614479);
      swift_endAccess();
      (*(v69 + 8))(v71, v70);
      (*(v54 + 8))(v57, v48);
    }
  }

  v73 = v178;
  v74 = v179;
  v75 = v169;
  v76 = v168;
  v77 = v167;
  v78 = v166;
  swift_beginAccess();
  sub_2192DC084(v78, v77, sub_218B58D58);
  if ((*(v76 + 48))(v77, 1, v75) == 1)
  {
    sub_2192CF630(v77, sub_218B58D58);
  }

  else
  {
    v80 = v141;
    (*(v76 + 32))(v141, v77, v75);
    v181 = *(v76 + 16);
    (v181)(v139, v80, v75);
    v81 = v140;
    sub_219BDF084();
    v82 = v143;
    v183 = v143;
    v184 = sub_2187DD9B8(&unk_280EE88C0, 255, MEMORY[0x277D2D888], MEMORY[0x277D2D880]);
    v83 = __swift_allocate_boxed_opaque_existential_1(&v182);
    v84 = v56;
    v85 = v142;
    (*(v142 + 16))(v83, v81, v82);
    swift_beginAccess();
    sub_2199D5C50(&v182, 0x4470756F72476441, 0xEB00000000617461);
    swift_endAccess();
    v86 = v81;
    v74 = v179;
    (*(v85 + 8))(v86, v82);
    v56 = v84;
    v183 = v75;
    v184 = sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    v87 = __swift_allocate_boxed_opaque_existential_1(&v182);
    (v181)(v87, v80, v75);
    swift_beginAccess();
    sub_2199D5C50(&v182, 0x74614470756F7247, 0xE900000000000061);
    swift_endAccess();
    v88 = v80;
    v73 = v178;
    (*(v76 + 8))(v88, v75);
  }

  v79 = v170;
  swift_getObjectType();
  v89 = v172;
  sub_219BF67F4();
  v183 = v73;
  v184 = sub_2187DD9B8(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v90 = __swift_allocate_boxed_opaque_existential_1(&v182);
  v91 = v173;
  (*(v173 + 16))(v90, v89, v73);
  swift_beginAccess();
  sub_2199D5C50(&v182, 0x44656C6369747241, 0xEB00000000617461);
  swift_endAccess();
  (*(v91 + 8))(v89, v73);
  v92 = v174;
  sub_219BF6834();
  v183 = v79;
  v184 = sub_2187DD9B8(&qword_280EE8190, 255, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v93 = __swift_allocate_boxed_opaque_existential_1(&v182);
  (*(v74 + 16))(v93, v92, v79);
  swift_beginAccess();
  sub_2199D5C50(&v182, 0xD00000000000001ALL, 0x8000000219CE8EE0);
  swift_endAccess();
  (*(v74 + 8))(v92, v79);
  sub_2187DD9B8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v94 = v153;
  sub_219BDFCD4();
  v95 = v155;
  v183 = v155;
  v184 = sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v96 = __swift_allocate_boxed_opaque_existential_1(&v182);
  v97 = v154;
  (*(v154 + 16))(v96, v94, v95);
  swift_beginAccess();
  sub_2199D5C50(&v182, 0xD000000000000010, 0x8000000219CE8F00);
  swift_endAccess();
  (*(v97 + 8))(v94, v95);
  v98 = v157;
  v99 = v156;
  v100 = v158;
  (*(v157 + 104))(v156, *MEMORY[0x277D329E0], v158);
  v101 = v159;
  sub_219BE02C4();
  (*(v98 + 8))(v99, v100);
  v102 = v161;
  v183 = v161;
  v184 = sub_2187DD9B8(&unk_280EE8850, 255, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v103 = __swift_allocate_boxed_opaque_existential_1(&v182);
  v104 = v160;
  (*(v160 + 16))(v103, v101, v102);
  swift_beginAccess();
  sub_2199D5C50(&v182, 0x4465636E65696353, 0xEB00000000617461);
  swift_endAccess();
  (*(v104 + 8))(v101, v102);
  v105 = [v56 scoreProfile];
  if (v105)
  {
    v106 = v105;
    if ([v105 hasShadowScores])
    {
      [v106 shadowTabiScore];
      [v106 shadowAgedPersonalizationScore];
      v107 = v125;
      sub_219BE1764();
      v108 = v127;
      v183 = v127;
      v184 = sub_2187DD9B8(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v109 = __swift_allocate_boxed_opaque_existential_1(&v182);
      v110 = v126;
      (*(v126 + 16))(v109, v107, v108);
      swift_beginAccess();
      sub_2199D5C50(&v182, 0x74614465726F6353, 0xE900000000000061);
      swift_endAccess();

      (*(v110 + 8))(v107, v108);
    }

    else
    {
    }
  }

  v111 = v162;
  sub_219BF6824();
  v112 = v163;
  v113 = v164;
  if ((*(v163 + 48))(v111, 1, v164) == 1)
  {
    sub_2192CF630(v111, sub_218B58FEC);
  }

  else
  {
    v114 = v128;
    (*(v112 + 32))(v128, v111, v113);
    v183 = v113;
    v184 = sub_2187DD9B8(&unk_27CC0DC50, 255, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    v115 = __swift_allocate_boxed_opaque_existential_1(&v182);
    (*(v112 + 16))(v115, v114, v113);
    swift_beginAccess();
    sub_2199D5C50(&v182, 0xD000000000000014, 0x8000000219CE8F60);
    swift_endAccess();
    (*(v112 + 8))(v114, v113);
  }

  result = [v56 sourceChannel];
  if (result)
  {
    v116 = v147;
    sub_219BE01F4();
    v117 = v149;
    v183 = v149;
    v184 = sub_2187DD9B8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v118 = __swift_allocate_boxed_opaque_existential_1(&v182);
    v119 = v148;
    (*(v148 + 16))(v118, v116, v117);
    swift_beginAccess();
    sub_2199D5C50(&v182, 0x446C656E6E616843, 0xEB00000000617461);
    swift_endAccess();
    (*(v119 + 8))(v116, v117);
    v120 = v150;
    sub_219BE01E4();
    v121 = v152;
    v183 = v152;
    v184 = sub_2187DD9B8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v122 = __swift_allocate_boxed_opaque_existential_1(&v182);
    v123 = v151;
    (*(v151 + 16))(v122, v120, v121);
    swift_beginAccess();
    sub_2199D5C50(&v182, 0xD000000000000016, 0x8000000219CE8F40);
    swift_endAccess();
    swift_unknownObjectRelease();
    return (*(v123 + 8))(v120, v121);
  }

  return result;
}

uint64_t sub_2192D170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v135 = a4;
  v161 = a1;
  v139 = sub_219BDBD34();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v132 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE16D4();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v11 - 8);
  v133 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BDF4A4();
  v134 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v121 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BF1904();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF33A4();
  MEMORY[0x28223BE20](v15 - 8);
  v113 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v17 - 8);
  v114 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BDF474();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v109 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BE0444();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v21 - 8);
  v123 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v146 = *(v23 - 8);
  v147 = v23;
  MEMORY[0x28223BE20](v23);
  v142 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v145 = v25;
  v144 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v141 = &v108 - v26;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v27 - 8);
  v143 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &unk_280EE5730, MEMORY[0x277D6D710]);
  v148 = v29;
  v150 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v124 = &v108 - v30;
  v140 = sub_219BDFCE4();
  v31 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDB954();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BDF464();
  v129 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = swift_projectBox();
  v120 = a2;
  sub_219BF1044();
  sub_219BDB804();
  (*(v35 + 8))(v37, v34);
  v41 = a3;
  sub_219BDF454();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v43 = v42;
  v44 = sub_219BDCD44();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v158 = *(v45 + 80);
  v159 = v46;
  v48 = swift_allocObject();
  v156 = xmmword_219C09BA0;
  *(v48 + 16) = xmmword_219C09BA0;
  v49 = *MEMORY[0x277CEAD18];
  v50 = *(v45 + 104);
  v153 = v47;
  v154 = v44;
  v51 = v48 + v47;
  v52 = v49;
  v160 = v45 + 104;
  v157 = v50;
  v50(v51, v49, v44);
  sub_2187DD9B8(&qword_280EE87C0, 255, MEMORY[0x277D2DAA8], MEMORY[0x277D2DAA0]);
  v155 = "gapOnscreenTimer";
  v128 = v40;
  v130 = v38;
  sub_219BDCCC4();

  sub_218B58D38(0);
  v54 = v53;
  sub_2187DD9B8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_219BDFCD4();
  v56 = v153;
  v152 = v43;
  v57 = swift_allocObject();
  v58 = v41;
  *(v57 + 16) = v156;
  v151 = v52;
  v157(v57 + v56, v52, v154);
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v59 = v140;
  sub_219BDCCC4();

  (*(v31 + 8))(v33, v59);
  v60 = v141;
  sub_219BE7594();
  v61 = v142;
  sub_219BE7564();
  v62 = v147;
  sub_219BE5F84();
  v63 = v146;
  (*(v146 + 8))(v61, v62);
  v64 = v143;
  v65 = v145;
  sub_219BEB244();
  v66 = v64;

  (*(v144 + 8))(v60, v65);
  v67 = v150;
  v68 = v64;
  v69 = v148;
  v70 = (*(v150 + 48))(v68, 1, v148);
  v126 = v54;
  v125 = v58;
  if (v70 != 1)
  {
    v79 = *(v67 + 32);
    v80 = v124;
    v79(v124, v66, v69);
    v81 = v123;
    sub_219BE7564();
    (*(v63 + 56))(v81, 0, 1, v62);
    v82 = v80;
    v83 = sub_219BE6A34();
    result = sub_2192CF630(v81, sub_218B58F64);
    v76 = v149;
    if (v83 >= 0xFFFFFFFF80000000)
    {
      if (v83 <= 0x7FFFFFFF)
      {
        v84 = v110;
        sub_219BE0434();
        v85 = v153;
        v86 = swift_allocObject();
        *(v86 + 16) = v156;
        v87 = v154;
        v157(v86 + v85, v151, v154);
        sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v88 = v112;
        sub_219BDCCC4();

        (*(v111 + 8))(v84, v88);
        v89 = v113;
        sub_219BE6934();
        v90 = v115;
        sub_219BF3394();
        sub_2192CF630(v89, MEMORY[0x277D33DA8]);
        sub_219BF1004();
        v91 = v69;
        v92 = v114;
        sub_219BF17B4();

        (*(v116 + 8))(v90, v117);
        v93 = v87;
        v94 = v118;
        v95 = v119;
        if ((*(v118 + 48))(v92, 1, v119) == 1)
        {
          (*(v150 + 8))(v82, v91);
          sub_2192CF630(v92, sub_218B58F30);
        }

        else
        {
          v96 = v109;
          (*(v94 + 32))(v109, v92, v95);
          v97 = swift_allocObject();
          *(v97 + 16) = v156;
          v157(v97 + v85, v151, v93);
          sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
          sub_219BDCCC4();

          (*(v94 + 8))(v96, v95);
          (*(v150 + 8))(v124, v91);
        }

        v71 = v139;
        v72 = v138;
        v75 = v135;
        v77 = v134;
        v78 = v133;
        v74 = v136;
        v73 = v137;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_2192CF630(v66, sub_218B58F98);
  v71 = v139;
  v72 = v138;
  v73 = v137;
  v74 = v136;
  v75 = v135;
  v76 = v149;
  v77 = v134;
  v78 = v133;
LABEL_11:
  sub_2192DC084(v75, v78, sub_218B59134);
  if ((*(v77 + 48))(v78, 1, v76) == 1)
  {
    sub_2192CF630(v78, sub_218B59134);
  }

  else
  {
    v98 = v121;
    (*(v77 + 32))(v121, v78, v76);
    v99 = v153;
    v100 = swift_allocObject();
    *(v100 + 16) = v156;
    v157(v100 + v99, v151, v154);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v77 + 8))(v98, v76);
  }

  v101 = v131;
  v102 = v127;
  swift_beginAccess();
  sub_2192DC084(v102, v101, sub_218B58D58);
  if ((*(v74 + 48))(v101, 1, v73) == 1)
  {
    sub_2192CF630(v101, sub_218B58D58);
  }

  else
  {
    v103 = v122;
    (*(v74 + 32))(v122, v101, v73);
    v104 = v153;
    v105 = swift_allocObject();
    *(v105 + 16) = v156;
    v157(v105 + v104, v151, v154);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v74 + 8))(v103, v73);
  }

  sub_219BE08D4();
  v106 = v132;
  sub_219BE75A4();
  sub_2187DD9B8(&qword_280EE82B0, 255, MEMORY[0x277D2E8B8], MEMORY[0x277D2E8B0]);
  sub_219BDCC64();
  v107 = *(v72 + 8);
  v107(v106, v71);
  sub_219BE7574();
  sub_219BDCC74();
  v107(v106, v71);
  return (*(v129 + 8))(v128, v130);
}

uint64_t sub_2192D2BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a7;
  v66 = a5;
  v61 = a4;
  LODWORD(v77) = a3;
  v76 = a2;
  v80 = a1;
  v73 = sub_219BDBD34();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE16D4();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF4A4();
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BDF3E4();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BDFDE4();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BDF8A4();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = swift_projectBox();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v79 = v20;
  v21 = sub_219BDCD44();
  v58 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  v78 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v26 = *MEMORY[0x277CEAD18];
  v27 = *(v22 + 104);
  v27(v25 + v24, v26, v21);
  sub_219BDEF94();
  sub_2187DD9B8(&qword_280EE8910, 255, MEMORY[0x277D2D788], MEMORY[0x277D2D780]);
  sub_219BDCCC4();

  sub_219BDF894();
  v76 = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = v78;
  v75 = v26;
  v29 = v58;
  v74 = v27;
  v27(v28 + v24, v26, v58);
  sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v77 = "gapOnscreenTimer";
  v30 = v29;
  v31 = v59;
  sub_219BDCCC4();

  (*(v60 + 8))(v19, v31);
  if (sub_219BF0A34())
  {
    (*(v51 + 104))(v50, *MEMORY[0x277D2DA78], v52);
    v32 = v53;
    sub_219BDFDD4();
    v33 = swift_allocObject();
    *(v33 + 16) = v78;
    v74(v33 + v24, v75, v30);
    sub_2187DD9B8(&unk_27CC18730, 255, MEMORY[0x277D2E148], MEMORY[0x277D2E140]);
    v34 = v55;
    sub_219BDCCC4();

    (*(v54 + 8))(v32, v34);
  }

  v35 = v63;
  sub_2192DC084(v66, v63, sub_218B59134);
  v37 = v64;
  v36 = v65;
  if ((*(v64 + 48))(v35, 1, v65) == 1)
  {
    sub_2192CF630(v35, sub_218B59134);
  }

  else
  {
    v38 = v56;
    (*(v37 + 32))(v56, v35, v36);
    v39 = swift_allocObject();
    *(v39 + 16) = v78;
    v74(v39 + v24, v75, v30);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v37 + 8))(v38, v36);
  }

  v40 = v69;
  v41 = v67;
  v42 = v62;
  swift_beginAccess();
  sub_2192DC084(v42, v41, sub_218B58D58);
  v43 = v68;
  if ((*(v68 + 48))(v41, 1, v40) == 1)
  {
    sub_2192CF630(v41, sub_218B58D58);
  }

  else
  {
    v44 = v57;
    (*(v43 + 32))(v57, v41, v40);
    v45 = swift_allocObject();
    *(v45 + 16) = v78;
    v74(v45 + v24, v75, v30);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v43 + 8))(v44, v40);
  }

  sub_219BE0494();
  sub_218B58D38(0);
  v46 = v70;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE83E0, 255, MEMORY[0x277D2E560], MEMORY[0x277D2E558]);
  sub_219BDCC64();
  v47 = *(v71 + 8);
  v48 = v73;
  v47(v46, v73);
  sub_219BE7574();
  sub_219BDCC74();
  return (v47)(v46, v48);
}

uint64_t sub_2192D3738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v122 = a4;
  v140 = a3;
  v149 = a1;
  v119 = sub_219BDBD34();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v116 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BE16D4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v111 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BDF4A4();
  v121 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v110 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BF1904();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF33A4();
  MEMORY[0x28223BE20](v14 - 8);
  v102 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v103 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BDF474();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v98[0] = v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE0444();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v20 - 8);
  v112 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF13A4();
  MEMORY[0x28223BE20](v22 - 8);
  v133 = v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v134 = *(v24 - 8);
  v135 = v24;
  MEMORY[0x28223BE20](v24);
  v128 = v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v132 = v26;
  v131 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v129 = v98 - v27;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v28 - 8);
  v130 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &unk_280EE5730, MEMORY[0x277D6D710]);
  v138 = *(v30 - 8);
  v139 = v30;
  MEMORY[0x28223BE20](v30);
  v113 = v98 - v31;
  v127 = sub_219BDFCE4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BF1DF4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BDF674();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = swift_projectBox();
  sub_219BEDA84();
  sub_219BF1DB4();
  (*(v34 + 8))(v36, v33);
  v109 = a2;
  sub_219BEDAC4();
  sub_219BDF664();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v42 = v41;
  v43 = sub_219BDCD44();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v146 = *(v44 + 80);
  v147 = v45;
  v47 = swift_allocObject();
  v143 = xmmword_219C09BA0;
  *(v47 + 16) = xmmword_219C09BA0;
  v48 = *(v44 + 104);
  v145 = *MEMORY[0x277CEAD18];
  v141 = v44 + 104;
  v144 = v48;
  v48(v47 + v46);
  sub_2187DD9B8(&unk_280EE86E0, 255, MEMORY[0x277D2DC98], MEMORY[0x277D2DC90]);
  v148 = "gapOnscreenTimer";
  sub_219BDCCC4();

  (*(v38 + 8))(v40, v37);
  sub_218B58D38(0);
  v50 = v49;
  v51 = sub_2187DD9B8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v142 = v50;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v98[1] = v51;
  v53 = v125;
  sub_219BDFCD4();
  v54 = swift_allocObject();
  *(v54 + 16) = v143;
  v114 = v46;
  v144(v54 + v46, v145, v43);
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v55 = v127;
  sub_219BDCCC4();

  (*(v126 + 8))(v53, v55);
  v56 = v129;
  sub_219BE7594();
  v57 = v128;
  sub_219BE7564();
  v58 = v133;
  v59 = v42;
  v60 = v135;
  sub_219BE5FC4();
  v61 = v134;
  (*(v134 + 8))(v57, v60);
  sub_219BF1384();
  sub_2192CF630(v58, MEMORY[0x277D33320]);
  v62 = v130;
  v63 = v132;
  sub_219BEB244();

  (*(v131 + 8))(v56, v63);
  v64 = v138;
  v65 = v139;
  v66 = (*(v138 + 48))(v62, 1, v139);
  v137 = v59;
  if (v66 == 1)
  {
    sub_2192CF630(v62, sub_218B58F98);
    v67 = v124;
    v68 = v123;
    v69 = v122;
    v70 = v136;
    v71 = v121;
    v72 = v120;
    v73 = v114;
    goto LABEL_10;
  }

  v133 = v43;
  v74 = v113;
  (*(v64 + 32))(v113, v62, v65);
  v75 = v60;
  v76 = v112;
  sub_219BE7564();
  (*(v61 + 56))(v76, 0, 1, v75);
  v77 = sub_219BE6A34();
  result = sub_2192CF630(v76, sub_218B58F64);
  v70 = v136;
  if (v77 < 0xFFFFFFFF80000000)
  {
    goto LABEL_19;
  }

  if (v77 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v78 = v99;
  sub_219BE0434();
  v73 = v114;
  v79 = swift_allocObject();
  *(v79 + 16) = v143;
  v144(v79 + v73, v145, v133);
  sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v80 = v101;
  sub_219BDCCC4();

  (*(v100 + 8))(v78, v80);
  v81 = v102;
  sub_219BE6934();
  v82 = v104;
  sub_219BF3394();
  sub_2192CF630(v81, MEMORY[0x277D33DA8]);
  sub_219BEDA94();
  v83 = v103;
  sub_219BF17B4();

  (*(v105 + 8))(v82, v106);
  v84 = v107;
  v85 = v108;
  if ((*(v107 + 48))(v83, 1, v108) == 1)
  {
    (*(v138 + 8))(v74, v139);
    sub_2192CF630(v83, sub_218B58F30);
    v67 = v124;
    v68 = v123;
    v69 = v122;
    v71 = v121;
    v72 = v120;
    v43 = v133;
  }

  else
  {
    v86 = v98[0];
    (*(v84 + 32))(v98[0], v83, v85);
    v87 = swift_allocObject();
    *(v87 + 16) = v143;
    v88 = v74;
    v43 = v133;
    v144(v87 + v73, v145, v133);
    sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
    sub_219BDCCC4();

    (*(v84 + 8))(v86, v85);
    (*(v138 + 8))(v88, v139);
    v67 = v124;
    v68 = v123;
    v69 = v122;
    v71 = v121;
    v72 = v120;
  }

LABEL_10:
  sub_2192DC084(v69, v72, sub_218B59134);
  if ((*(v71 + 48))(v72, 1, v70) == 1)
  {
    sub_2192CF630(v72, sub_218B59134);
  }

  else
  {
    v89 = v110;
    (*(v71 + 32))(v110, v72, v70);
    v90 = swift_allocObject();
    *(v90 + 16) = v143;
    v144(v90 + v73, v145, v43);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v71 + 8))(v89, v70);
  }

  v91 = v116;
  v92 = v115;
  swift_beginAccess();
  sub_2192DC084(v92, v91, sub_218B58D58);
  if ((*(v68 + 48))(v91, 1, v67) == 1)
  {
    sub_2192CF630(v91, sub_218B58D58);
  }

  else
  {
    v93 = v111;
    (*(v68 + 32))(v111, v91, v67);
    v94 = swift_allocObject();
    *(v94 + 16) = v143;
    v144(v94 + v73, v145, v43);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v68 + 8))(v93, v67);
  }

  sub_219BE0A64();
  v95 = v117;
  sub_219BE75A4();
  sub_2187DD9B8(&qword_280EE8230, 255, MEMORY[0x277D2EA20], MEMORY[0x277D2EA18]);
  sub_219BDCC64();
  v96 = *(v118 + 8);
  v97 = v119;
  v96(v95, v119);
  sub_219BE7574();
  sub_219BDCC74();
  return (v96)(v95, v97);
}

uint64_t sub_2192D4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = a8;
  v109 = a7;
  v110 = a1;
  v94 = a4;
  v104 = sub_219BDBD34();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BDF3D4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BDF3C4();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922CB44(0);
  MEMORY[0x28223BE20](v11 - 8);
  v97 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE3C04();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x28223BE20](v13);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v98 = &v69 - v16;
  v77 = sub_219BE1314();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC364(0);
  MEMORY[0x28223BE20](v18 - 8);
  v91 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE3794();
  v92 = *(v20 - 8);
  v93 = v20;
  MEMORY[0x28223BE20](v20);
  v88 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BE1324();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v70 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v71 = &v69 - v24;
  v25 = sub_219BDF134();
  MEMORY[0x28223BE20](v25 - 8);
  v96 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BDF824();
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BE06D4();
  v95 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE34F4();

  sub_219BE06C4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v106 = v31;
  v32 = sub_219BDCD44();
  v105 = v32;
  v33 = *(v32 - 8);
  v108 = *(v33 + 72);
  v34 = *(v33 + 80);
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  v107 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v37 = *MEMORY[0x277CEAD18];
  v38 = *(v33 + 104);
  (v38)(v36 + v35, v37, v32);
  sub_2187DD9B8(&unk_280EE8350, 255, MEMORY[0x277D2E6F8], MEMORY[0x277D2E6F0]);
  sub_219BDCCC4();

  v95[1](v30, v28);
  sub_219756890(v96);
  v39 = v85;
  sub_219BDF814();
  v40 = swift_allocObject();
  *(v40 + 16) = v107;
  v94 = v35;
  v95 = v38;
  LODWORD(v96) = v37;
  (v38)(v40 + v35, v37, v105);
  sub_2187DD9B8(&unk_280EE8650, 255, MEMORY[0x277D2DD98], MEMORY[0x277D2DD90]);
  v41 = v86;
  sub_219BDCCC4();
  v42 = v91;

  (*(v87 + 8))(v39, v41);
  v43 = v88;
  sub_219BE3584();
  sub_21926F2DC(v42);
  (*(v92 + 8))(v43, v93);
  v44 = v89;
  v45 = v90;
  v46 = (*(v89 + 48))(v42, 1);
  v74 = v33 + 104;
  v73 = "gapOnscreenTimer";
  v72 = v34;
  if (v46 == 1)
  {
    sub_2192CF630(v42, sub_2192DC364);
    v47 = v105;
  }

  else
  {
    v48 = v71;
    (*(v44 + 32))(v71, v42, v45);
    (*(v44 + 16))(v70, v48, v45);
    v49 = v75;
    sub_219BE1304();
    v50 = v94;
    v51 = swift_allocObject();
    *(v51 + 16) = v107;
    v47 = v105;
    (v95)(v51 + v50, v96, v105);
    sub_2187DD9B8(&qword_280EE8078, 255, MEMORY[0x277D2F150], MEMORY[0x277D2F148]);
    v52 = v77;
    sub_219BDCCC4();

    (*(v76 + 8))(v49, v52);
    (*(v44 + 8))(v48, v45);
  }

  v53 = v97;
  sub_219BE3564();
  v55 = v99;
  v54 = v100;
  if ((*(v99 + 48))(v53, 1, v100) == 1)
  {
    sub_2192CF630(v53, sub_21922CB44);
  }

  else
  {
    v56 = v98;
    (*(v55 + 32))(v98, v53, v54);
    v57 = v78;
    (*(v55 + 16))(v78, v56, v54);
    v58 = (*(v55 + 88))(v57, v54);
    if (v58 == *MEMORY[0x277D318F0])
    {
      (*(v79 + 104))(v81, *MEMORY[0x277D2DA48], v80);
      v59 = v96;
    }

    else
    {
      v59 = v96;
      if (v58 == *MEMORY[0x277D318E8])
      {
        (*(v79 + 104))(v81, *MEMORY[0x277D2DA50], v80);
      }

      else
      {
        v60 = *(v79 + 104);
        if (v58 == *MEMORY[0x277D318E0])
        {
          v60(v81, *MEMORY[0x277D2DA70], v80);
        }

        else
        {
          v60(v81, *MEMORY[0x277D2DA58], v80);
          (*(v55 + 8))(v57, v54);
        }
      }
    }

    v61 = v82;
    sub_219BDF3B4();
    v62 = v94;
    v63 = swift_allocObject();
    *(v63 + 16) = v107;
    (v95)(v63 + v62, v59, v47);
    sub_2187DD9B8(&qword_280EE87E0, 255, MEMORY[0x277D2DA30], MEMORY[0x277D2DA28]);
    v64 = v84;
    sub_219BDCCC4();

    (*(v83 + 8))(v61, v64);
    (*(v55 + 8))(v98, v54);
  }

  sub_219BE0F44();
  sub_218B58D38(0);
  v65 = v101;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE8140, 255, MEMORY[0x277D2EE08], MEMORY[0x277D2EE00]);
  sub_219BDCC64();
  v66 = *(v102 + 8);
  v67 = v104;
  v66(v65, v104);
  sub_219BE7574();
  sub_219BDCC74();
  return (v66)(v65, v67);
}

uint64_t sub_2192D5B50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v169 = a8;
  v160 = a7;
  v184 = a6;
  v159 = a4;
  v191 = a1;
  v140 = sub_219BDBD34();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v142 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_219BE16D4();
  v172 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v135 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BF1904();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF33A4();
  MEMORY[0x28223BE20](v15 - 8);
  v128 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v17 - 8);
  v129 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BDF474();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v124 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BE0444();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v21 - 8);
  v136 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF13A4();
  MEMORY[0x28223BE20](v23 - 8);
  v166 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v168 = v25;
  v167 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v161 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v165 = v27;
  v164 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v162 = &v124 - v28;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v29 - 8);
  v163 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &unk_280EE5730, MEMORY[0x277D6D710]);
  v171 = v31;
  v170 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v137 = &v124 - v32;
  v158 = sub_219BDF8A4();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BE09E4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BDF104();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BDF1A4();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BDFCE4();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BDBD64();
  v176 = *(v38 - 8);
  v177 = v38;
  MEMORY[0x28223BE20](v38);
  v173 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDFFB4();
  v41 = *(v40 - 8);
  v178 = v40;
  v179 = v41;
  MEMORY[0x28223BE20](v40);
  v175 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BE1714();
  v174 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = &v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = swift_projectBox();
  v180 = a2;
  sub_21934C4BC();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v47 = v46;
  v48 = sub_219BDCD44();
  v49 = *(v48 - 8);
  v50 = *(v49 + 80);
  v51 = (v50 + 32) & ~v50;
  v181 = v51 + *(v49 + 72);
  v52 = swift_allocObject();
  v192 = xmmword_219C09BA0;
  *(v52 + 16) = xmmword_219C09BA0;
  v53 = *MEMORY[0x277CEAD18];
  v189 = *(v49 + 104);
  v189(v52 + v51, v53, v48);
  v190 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE7F60, 255, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
  sub_219BDCCC4();
  v54 = v49 + 104;

  (*(v174 + 8))(v45, v43);
  v55 = v173;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v176 + 8))(v55, v177);
  v56 = v175;
  sub_219BDFFA4();
  v182 = v50;
  v186 = v47;
  v57 = swift_allocObject();
  *(v57 + 16) = v192;
  v187 = v48;
  v188 = v51;
  v185 = v53;
  v183 = v54;
  v189(v57 + v51, v53, v48);
  sub_2187DD9B8(&unk_280EE84F0, 255, MEMORY[0x277D2E290], MEMORY[0x277D2E288]);
  v58 = v178;
  sub_219BDCCC4();

  (*(v179 + 8))(v56, v58);
  sub_218B58D38(0);
  v60 = v59;
  v61 = sub_2187DD9B8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v179 = v60;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v177 = v61;
  v63 = v144;
  sub_219BDFCD4();
  v64 = swift_allocObject();
  *(v64 + 16) = v192;
  v65 = v185;
  v189(v64 + v188, v185, v187);
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v66 = v146;
  sub_219BDCCC4();

  (*(v145 + 8))(v63, v66);
  v67 = v147;
  sub_219BF6AC4();
  v68 = swift_allocObject();
  *(v68 + 16) = v192;
  v69 = v187;
  v70 = v188;
  v71 = v65;
  v72 = v189;
  v189(v68 + v188, v71, v187);
  sub_2187DD9B8(&unk_280EE8850, 255, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v73 = v149;
  sub_219BDCCC4();

  (*(v148 + 8))(v67, v73);
  v178 = *(v160 + 72);
  v74 = v180;
  v75 = [v180 sourceChannel];
  v76 = v150;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v77 = swift_allocObject();
  *(v77 + 16) = v192;
  v78 = v77 + v70;
  v79 = v185;
  v72(v78, v185, v69);
  sub_2187DD9B8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v80 = v152;
  sub_219BDCCC4();

  (*(v151 + 8))(v76, v80);
  v81 = [v74 sourceChannel];
  v82 = v153;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v83 = swift_allocObject();
  *(v83 + 16) = v192;
  v84 = v79;
  v85 = v187;
  v72(v83 + v188, v84, v187);
  sub_2187DD9B8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v86 = v155;
  sub_219BDCCC4();

  (*(v154 + 8))(v82, v86);
  v87 = v156;
  sub_219BDF894();
  v88 = swift_allocObject();
  *(v88 + 16) = v192;
  v189(v88 + v188, v185, v85);
  sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v89 = v158;
  sub_219BDCCC4();

  (*(v157 + 8))(v87, v89);
  v90 = v162;
  sub_219BE7594();
  v91 = v161;
  sub_219BE7564();
  v92 = v166;
  v93 = v168;
  sub_219BE5FC4();
  v94 = v167;
  (*(v167 + 8))(v91, v93);
  sub_219BF1384();
  sub_2192CF630(v92, MEMORY[0x277D33320]);
  v95 = v163;
  v96 = v165;
  sub_219BEB244();

  (*(v164 + 8))(v90, v96);
  v97 = v170;
  v98 = v171;
  if ((*(v170 + 48))(v95, 1, v171) != 1)
  {
    v104 = v137;
    (*(v97 + 32))(v137, v95, v98);
    v105 = v136;
    sub_219BE7564();
    (*(v94 + 56))(v105, 0, 1, v93);
    v106 = sub_219BE6A34();
    result = sub_2192CF630(v105, sub_218B58F64);
    v100 = v172;
    if (v106 >= 0xFFFFFFFF80000000)
    {
      if (v106 <= 0x7FFFFFFF)
      {
        v107 = v125;
        sub_219BE0434();
        v108 = swift_allocObject();
        *(v108 + 16) = v192;
        v189(v108 + v188, v185, v187);
        sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v109 = v127;
        sub_219BDCCC4();

        (*(v126 + 8))(v107, v109);
        v110 = v128;
        sub_219BE6934();
        v111 = v130;
        sub_219BF3394();
        sub_2192CF630(v110, MEMORY[0x277D33DA8]);
        v112 = [v180 identifier];
        sub_219BF5414();

        v113 = v129;
        sub_219BF17B4();

        (*(v131 + 8))(v111, v132);
        v114 = v133;
        v115 = v134;
        if ((*(v133 + 48))(v113, 1, v134) == 1)
        {
          (*(v97 + 8))(v104, v98);
          sub_2192CF630(v113, sub_218B58F30);
          v99 = v143;
          v101 = v142;
          v103 = v187;
        }

        else
        {
          v116 = v124;
          (*(v114 + 32))(v124, v113, v115);
          v117 = swift_allocObject();
          *(v117 + 16) = v192;
          v118 = v187;
          v189(v117 + v188, v185, v187);
          sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
          sub_219BDCCC4();

          (*(v114 + 8))(v116, v115);
          (*(v97 + 8))(v104, v98);
          v99 = v143;
          v101 = v142;
          v103 = v118;
        }

        v102 = v141;
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_2192CF630(v95, sub_218B58F98);
  v99 = v143;
  v100 = v172;
  v101 = v142;
  v102 = v141;
  v103 = v187;
LABEL_11:
  swift_beginAccess();
  sub_2192DC084(v102, v101, sub_218B58D58);
  if ((*(v100 + 48))(v101, 1, v99) == 1)
  {
    sub_2192CF630(v101, sub_218B58D58);
  }

  else
  {
    v119 = v135;
    (*(v100 + 32))(v135, v101, v99);
    v120 = swift_allocObject();
    *(v120 + 16) = v192;
    v189(v120 + v188, v185, v103);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v100 + 8))(v119, v99);
  }

  sub_219BE0274();
  v121 = v138;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE8460, 255, MEMORY[0x277D2E418], MEMORY[0x277D2E410]);
  sub_219BDCC64();
  v122 = *(v139 + 8);
  v123 = v140;
  v122(v121, v140);
  sub_219BE7574();
  sub_219BDCC74();
  return (v122)(v121, v123);
}

uint64_t sub_2192D7610(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v104 = a4;
  v138 = a3;
  v139 = a1;
  v110 = sub_219BDBD34();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BE16D4();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v97 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BDF4A4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v96 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BF1904();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF33A4();
  MEMORY[0x28223BE20](v14 - 8);
  v120 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v121 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_219BDF474();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v95 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BDF1E4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDFCE4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BE1444();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &unk_280EE5730, MEMORY[0x277D6D710]);
  v36 = v35;
  v145 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v144 = &v94 - v37;
  v100 = swift_projectBox();
  sub_218B58D38(0);
  v39 = v38;
  sub_219BE7594();
  v136 = v39;
  v137 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  v40 = *(v24 + 8);
  v129 = v26;
  v41 = v26;
  v42 = v31;
  v113 = v23;
  v111 = v40;
  v40(v41, v23);
  sub_219BEB244();
  v43 = v145;

  v44 = *(v29 + 8);
  v112 = v29 + 8;
  v44(v31, v28);
  if ((*(v43 + 48))(v34, 1, v36) == 1)
  {
    return sub_2192CF630(v34, sub_218B58F98);
  }

  v94 = v44;
  v46 = *(v43 + 32);
  v135 = v36;
  v46(v144, v34, v36);
  v47 = [v138 identifier];
  sub_219BF5414();

  v48 = v127;
  sub_219BE1424();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v50 = v49;
  v51 = sub_219BDCD44();
  v52 = *(v51 - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v143 = *(v52 + 80);
  v133 = v50;
  v131 = v54 + v53;
  v55 = swift_allocObject();
  v140 = xmmword_219C09BA0;
  *(v55 + 16) = xmmword_219C09BA0;
  v56 = *MEMORY[0x277CEAD18];
  v57 = *(v52 + 104);
  v132 = v54;
  v141 = v56;
  v134 = v51;
  v142 = v52 + 104;
  v57(v55 + v54);
  sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v99 = "gapOnscreenTimer";
  v58 = v130;
  sub_219BDCCC4();

  (*(v128 + 8))(v48, v58);
  sub_219BE7594();
  v59 = v129;
  sub_219BE7564();
  sub_2187DD9B8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v60 = v114;
  sub_219BDFCD4();
  v111(v59, v113);
  v94(v42, v28);
  v61 = swift_allocObject();
  *(v61 + 16) = v140;
  v62 = v132;
  v98 = v57;
  v63 = v134;
  (v57)(v61 + v132, v141, v134);
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v64 = v116;
  sub_219BDCCC4();

  (*(v115 + 8))(v60, v64);
  sub_219BE6944();
  v65 = v117;
  sub_219BDF1C4();
  v66 = swift_allocObject();
  *(v66 + 16) = v140;
  v67 = v66 + v62;
  v68 = v98;
  (v98)(v67, v141, v63);
  sub_2187DD9B8(&unk_280EE8840, 255, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v69 = v119;
  sub_219BDCCC4();

  (*(v118 + 8))(v65, v69);
  v70 = v120;
  sub_219BE6934();
  v71 = v122;
  sub_219BF3394();
  sub_2192CF630(v70, MEMORY[0x277D33DA8]);
  v72 = [v138 identifier];
  sub_219BF5414();

  v73 = v121;
  sub_219BF17B4();

  (*(v123 + 8))(v71, v124);
  v74 = v125;
  v75 = v126;
  if ((*(v125 + 48))(v73, 1, v126) == 1)
  {
    sub_2192CF630(v73, sub_218B58F30);
  }

  else
  {
    v82 = v95;
    (*(v74 + 32))(v95, v73, v75);
    v83 = swift_allocObject();
    *(v83 + 16) = v140;
    (v68)(v83 + v132, v141, v134);
    sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
    sub_219BDCCC4();

    (*(v74 + 8))(v82, v75);
  }

  v76 = v108;
  v77 = v107;
  v78 = v106;
  v79 = v103;
  v80 = v102;
  v81 = v101;
  sub_2192DC084(v104, v101, sub_218B59134);
  if ((*(v80 + 48))(v81, 1, v79) == 1)
  {
    sub_2192CF630(v81, sub_218B59134);
    v84 = v105;
    v85 = v100;
    v86 = v141;
  }

  else
  {
    v87 = v96;
    (*(v80 + 32))(v96, v81, v79);
    v88 = swift_allocObject();
    *(v88 + 16) = v140;
    v86 = v141;
    (v98)(v88 + v132, v141, v134);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v80 + 8))(v87, v79);
    v84 = v105;
    v85 = v100;
  }

  swift_beginAccess();
  sub_2192DC084(v85, v84, sub_218B58D58);
  if ((*(v78 + 48))(v84, 1, v77) == 1)
  {
    sub_2192CF630(v84, sub_218B58D58);
  }

  else
  {
    v89 = v97;
    (*(v78 + 32))(v97, v84, v77);
    v90 = swift_allocObject();
    *(v90 + 16) = v140;
    (v98)(v90 + v132, v86, v134);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v78 + 8))(v89, v77);
  }

  v91 = v109;
  v92 = v110;
  sub_219BDFEC4();
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE8520, 255, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v93 = *(v91 + 8);
  v93(v76, v92);
  sub_219BE7574();
  sub_219BDCC74();
  v93(v76, v92);
  return (*(v145 + 8))(v144, v135);
}

uint64_t sub_2192D8A20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v105 = a5;
  v109 = a4;
  v117 = a3;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v107 = *(v14 - 8);
  v108 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDF8A4();
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x28223BE20](v17);
  v101 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE09E4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BEF9C4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BDFFE4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BDF104();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDEFE4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDFCE4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_projectBox();
  sub_218B58D38(0);
  v29 = v28;
  sub_2187DD9B8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v102 = v29;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v79 = v16;
  v81 = v11;
  v82 = a2;
  v83 = v9;
  v84 = v8;
  sub_219BDFCD4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v32 = v31;
  v33 = sub_219BDCD44();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v114 = *(v34 + 80);
  v115 = v35;
  v36 = v34;
  v37 = (v114 + 32) & ~v114;
  v38 = swift_allocObject();
  v119 = xmmword_219C09BA0;
  *(v38 + 16) = xmmword_219C09BA0;
  v118 = *MEMORY[0x277CEAD18];
  v39 = *(v36 + 104);
  v112 = v36 + 104;
  v113 = v39;
  v39(v38 + v37);
  v116 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();

  (*(v25 + 8))(v27, v24);
  v40 = v117;
  v41 = [v117 identifier];
  sub_219BF5414();

  [v40 isPaid];
  v42 = [v40 totalTime];
  sub_219BF5414();

  v43 = v33;
  v80 = v33;
  v44 = v85;
  v111 = a1;
  sub_219BDEFB4();
  v110 = v32;
  v45 = swift_allocObject();
  *(v45 + 16) = v119;
  v46 = v118;
  v113(v45 + v37, v118, v43);
  sub_2187DD9B8(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v47 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v44, v47);
  v87 = *(v109 + 72);
  v48 = [v117 sourceChannel];
  v49 = v88;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v50 = swift_allocObject();
  *(v50 + 16) = v119;
  v51 = v80;
  v52 = v113;
  v113(v50 + v37, v46, v80);
  sub_2187DD9B8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v53 = v90;
  sub_219BDCCC4();

  (*(v89 + 8))(v49, v53);
  v54 = v92;
  v55 = v91;
  v56 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277D32840], v93);
  v57 = v94;
  sub_219BE02B4();
  (*(v54 + 8))(v55, v56);
  v58 = swift_allocObject();
  *(v58 + 16) = v119;
  v52(v58 + v37, v118, v51);
  sub_2187DD9B8(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  v59 = v96;
  sub_219BDCCC4();

  (*(v95 + 8))(v57, v59);
  v60 = [v117 sourceChannel];
  v61 = v98;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v62 = swift_allocObject();
  *(v62 + 16) = v119;
  v63 = v113;
  v113(v62 + v37, v118, v51);
  sub_2187DD9B8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v64 = v100;
  sub_219BDCCC4();

  (*(v99 + 8))(v61, v64);
  v65 = v101;
  sub_219BDF894();
  v66 = swift_allocObject();
  *(v66 + 16) = v119;
  v63(v66 + v37, v118, v51);
  sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v67 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v65, v67);
  v68 = v97;
  swift_beginAccess();
  v69 = v68;
  v70 = v106;
  sub_2192DC084(v69, v106, sub_218B58D58);
  v72 = v107;
  v71 = v108;
  if ((*(v107 + 48))(v70, 1, v108) == 1)
  {
    sub_2192CF630(v70, sub_218B58D58);
  }

  else
  {
    v73 = v79;
    (*(v72 + 32))(v79, v70, v71);
    v74 = swift_allocObject();
    *(v74 + 16) = v119;
    v113(v74 + v37, v118, v51);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v72 + 8))(v73, v71);
  }

  v75 = v83;
  sub_219BE04C4();
  v76 = v81;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE83D0, 255, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
  sub_219BDCC64();
  v77 = *(v75 + 8);
  v78 = v84;
  v77(v76, v84);
  sub_219BE7574();
  sub_219BDCC74();
  return (v77)(v76, v78);
}

uint64_t sub_2192D99D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE1464();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF0E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = &unk_219C09000;
  if (a2)
  {
    swift_getObjectType();
    sub_219BF67F4();
    (*(v7 + 32))(v12, v9, v6);
    sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v14 = sub_219BDCD44();
    v15 = *(v14 - 8);
    v31 = v6;
    v16 = v7;
    v17 = v15;
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    v20 = *MEMORY[0x277CEAD18];
    v13 = &unk_219C09000;
    (*(v17 + 104))(v19 + v18, v20, v14);
    sub_2187DD9B8(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
    v21 = v31;
    sub_219BDCCC4();

    v22 = v12;
    v23 = v20;
    (*(v16 + 8))(v22, v21);
  }

  else
  {
    v23 = *MEMORY[0x277CEAD18];
  }

  sub_219BDB804();
  sub_219BE1454();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v24 = sub_219BDCD44();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v13[186];
  (*(v25 + 104))(v27 + v26, v23, v24);
  sub_2187DD9B8(&qword_280EE8020, 255, MEMORY[0x277D2F270], MEMORY[0x277D2F268]);
  v28 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v5, v28);
  sub_219BE0744();
  sub_2187DD9B8(&unk_280EE8310, 255, MEMORY[0x277D2E760], MEMORY[0x277D2E758]);
  memset(v34, 0, sizeof(v34));
  sub_219BDCCE4();
  return sub_218806FD0(v34);
}

uint64_t sub_2192D9F08(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDBD34();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BDB184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD2D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2, v5, v11);
  sub_219BDB164();
  sub_219BDB134();
  sub_219BDD2B4();
  (*(v6 + 8))(v8, v5);
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_219BDCD44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_2187DD9B8(&unk_280EE8ED0, 255, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_219BDCCC4();

  (*(v10 + 8))(v13, v9);
  sub_219BE00D4();
  sub_2187DD9B8(&qword_280EE84B8, 255, MEMORY[0x277D2E338], MEMORY[0x277D2E330]);
  memset(v19, 0, sizeof(v19));
  sub_219BDCCE4();
  return sub_218806FD0(v19);
}

uint64_t sub_2192DA2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = sub_219BE1594();
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD34();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BDB184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDD2D4();
  v32 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9, v14);
  sub_219BDB164();
  sub_219BDB134();
  sub_219BDD2B4();
  (*(v10 + 8))(v12, v9);
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v31 = v17;
  v18 = sub_219BDCD44();
  v19 = *(v18 - 8);
  v30 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v29 = xmmword_219C09BA0;
  *(v21 + 16) = xmmword_219C09BA0;
  v22 = *MEMORY[0x277CEAD18];
  v28 = *(v19 + 104);
  v28(v21 + v20, v22, v18);
  v27 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8ED0, 255, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_219BDCCC4();

  (*(v32 + 8))(v16, v13);
  swift_getErrorValue();
  v23 = v33;
  sub_219BF7A14();
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v28(v24 + v20, v22, v18);
  sub_2187DD9B8(&qword_280EE7FC0, 255, MEMORY[0x277D2F440], MEMORY[0x277D2F438]);
  v25 = v35;
  sub_219BDCCC4();

  (*(v36 + 8))(v23, v25);
  sub_219BE0C04();
  sub_2187DD9B8(&unk_280EE81E0, 255, MEMORY[0x277D2EBA8], MEMORY[0x277D2EBA0]);
  memset(v37, 0, sizeof(v37));
  sub_219BDCCE4();
  return sub_218806FD0(v37);
}

uint64_t sub_2192DA838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v69 = a6;
  v70 = a5;
  v93 = a2;
  v89 = a1;
  v68 = sub_219BDFCE4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BE0444();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BDB954();
  *&v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1094();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BDF464();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v87);
  v88 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAC68(0);
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13);
  v84 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCACC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v91 = &v62 - v18;
  sub_218853400(0);
  v20 = v19;
  v92 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v90 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  sub_21880B928(0);
  v31 = v30;
  sub_219BEB244();
  if ((*(v27 + 48))(v24, 1, v26) != 1)
  {
    (*(v27 + 32))(v29, v24, v26);
    v24 = v91;
    v65 = v31;
    sub_219BEB1C4();
    v33 = v92;
    if ((*(v92 + 48))(v24, 1, v20) == 1)
    {
      (*(v27 + 8))(v29, v26);
      v32 = sub_2192DCACC;
      goto LABEL_5;
    }

    v64 = v29;
    v63 = v27;
    v37 = v90;
    (*(v33 + 32))(v90, v24, v20);
    v38 = v88;
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v33 + 8))(v37, v20);
      (*(v63 + 8))(v64, v26);
      v34 = type metadata accessor for TodayModel;
      v35 = v38;
      return sub_2192CF630(v35, v34);
    }

    (*(v85 + 32))(v84, v38, v86);
    v39 = v74;
    sub_219BF07D4();
    v40 = v78;
    sub_219BF1044();
    (*(v75 + 8))(v39, v76);
    sub_219BDB804();
    (*(v80 + 8))(v40, v82);
    v41 = v79;
    sub_219BDF454();
    sub_2187DD9B8(&qword_280EE87C0, 255, MEMORY[0x277D2DAA8], MEMORY[0x277D2DAA0]);
    v91 = "gapOnscreenTimer";
    v42 = v83;
    sub_219BDCCC4();
    (*(v81 + 8))(v41, v42);
    v43 = v77;
    (*(v33 + 16))(v77, v37, v20);
    (*(v33 + 56))(v43, 0, 1, v20);
    v44 = sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel, &unk_219CCC824);
    v45 = sub_219BE6A34();
    result = sub_2192CF630(v43, sub_2192DCACC);
    if (v45 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v83 = v26;
      v87 = v20;
      v88 = v44;
      if (v45 <= 0x7FFFFFFF)
      {
        v46 = v71;
        sub_219BE0434();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v48 = v47;
        v49 = sub_219BDCD44();
        v50 = *(v49 - 8);
        v51 = *(v50 + 72);
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v81 = v48;
        v82 = v51;
        v53 = swift_allocObject();
        v80 = xmmword_219C09BA0;
        *(v53 + 16) = xmmword_219C09BA0;
        v54 = *MEMORY[0x277CEAD18];
        v55 = *(v50 + 104);
        v55(v53 + v52);
        sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v56 = v73;
        sub_219BDCCC4();

        (*(v72 + 8))(v46, v56);
        result = sub_219BEB304();
        if (result >= 0xFFFFFFFF80000000)
        {
          v57 = v63;
          if (result <= 0x7FFFFFFF)
          {
            v58 = v66;
            sub_219BDFCD4();
            v59 = swift_allocObject();
            *(v59 + 16) = v80;
            (v55)(v59 + v52, v54, v49);
            sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
            v60 = v68;
            v61 = v89;
            sub_219BDCCC4();

            (*(v67 + 8))(v58, v60);
            v70(v61);
            (*(v85 + 8))(v84, v86);
            (*(v92 + 8))(v90, v87);
            return (*(v57 + 8))(v64, v83);
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v32 = sub_2188118D4;
LABEL_5:
  v34 = v32;
  v35 = v24;
  return sub_2192CF630(v35, v34);
}

uint64_t sub_2192DB494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BED174();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187D9028();
  v12 = sub_219BF66A4();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = &off_282A97CA0;
  aBlock[4] = sub_2192DC5E4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_111;
  v15 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187DD9B8(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_2187DD9B8(&qword_280E8EFA0, 255, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2192DB7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v31 = a2;
  v4 = sub_219BDF074();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDBD64();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE1524();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCD04(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD9B8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  sub_219BDCCB4();
  v18 = (*(v12 + 48))(v17, 1, v11);
  result = sub_2192CF630(v17, sub_2192DCD04);
  if (v18 == 1)
  {
    if (qword_280EE5F08 != -1)
    {
      swift_once();
    }

    v30 = v4;
    v20 = sub_219BE5434();
    __swift_project_value_buffer(v20, qword_280F62520);
    v21 = v33;

    v22 = sub_219BE5414();
    v23 = sub_219BF6214();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v29[1] = a1;
      v25 = v24;
      v26 = swift_slowAlloc();
      v27 = v21;
      v28 = v26;
      v39 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2186D1058(v31, v27, &v39);
      _os_log_impl(&dword_2186C1000, v22, v23, "Augmenting engagement event with unknown view data, identifier=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CECF960](v28, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    sub_219BDBD54();
    sub_219BDBD44();
    (*(v32 + 8))(v10, v34);
    (*(v35 + 104))(v8, *MEMORY[0x277D2F3F0], v36);
    (*(v38 + 104))(v37, *MEMORY[0x277D2D850], v30);
    sub_219BE1514();
    sub_219BDCCC4();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_2192DBCC0(uint64_t a1)
{
  v42 = a1;
  sub_218B58D38(0);
  v45 = *(v1 - 8);
  v46 = v1;
  v43 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v40 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BE3514();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v39 = &v31 - v6;
  v8 = sub_219BE35B4();
  v33 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  sub_219BEEBC4();
  v14 = sub_219BE3554();
  v37 = v15;
  v38 = v14;
  sub_219BE35A4();
  v16 = sub_219BE3594();
  v35 = v17;
  v36 = v16;
  v41 = *(v41 + 32);
  (*(v3 + 16))(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v44);
  (*(v9 + 16))(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v8);
  v18 = v45;
  v19 = v40;
  (*(v45 + 16))(v40, v42, v46);
  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v9 + 80) + v21 + 16) & ~*(v9 + 80);
  v23 = (v10 + *(v18 + 80) + v22) & ~*(v18 + 80);
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v38;
  *(v24 + 24) = v25;
  v26 = v44;
  (*(v3 + 32))(v24 + v20, v32, v44);
  v27 = (v24 + v21);
  v28 = v35;
  *v27 = v36;
  v27[1] = v28;
  v29 = v33;
  (*(v9 + 32))(v24 + v22, v34, v33);
  (*(v45 + 32))(v24 + v23, v19, v46);
  sub_219BDD154();

  (*(v3 + 8))(v39, v26);
  return (*(v9 + 8))(v13, v29);
}

uint64_t sub_2192DC084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2192DC118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_219BF33A4();
    v8[1] = sub_219BF13A4();
    v8[2] = sub_2187DD9B8(&qword_280E90190, 255, MEMORY[0x277D33DA8], MEMORY[0x277D33DA0]);
    v8[3] = sub_2187DD9B8(&unk_280E908E0, 255, MEMORY[0x277D33320], MEMORY[0x277D33310]);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2192DC214(uint64_t a1)
{
  v3 = *(sub_219BE3514() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BE35B4() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218B58D38(0);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v5);
  v13 = *(v1 + v5 + 8);
  v14 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_2192D4C94(a1, v10, v11, v1 + v4, v12, v13, v1 + v7, v14);
}

uint64_t sub_2192DC398(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = 256;
  if (!*(v1 + 25))
  {
    v9 = 0;
  }

  v10 = v9 | *(v1 + 24);
  v11 = 0x10000;
  if (!*(v1 + 26))
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!*(v1 + 27))
  {
    v12 = 0;
  }

  v13 = v10 | v11 | v12;
  v14 = 0x100000000;
  if (!*(v1 + 28))
  {
    v14 = 0;
  }

  return sub_2192D5B50(a1, *(v1 + 16), v13 | v14, *(v1 + 32), *(v1 + 40), v1 + v5, *(v1 + v7), *(v1 + v7 + 8), *(v1 + v8));
}

uint64_t sub_2192DC4A8(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v1 + v5);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2192D7610(a1, v1 + v4, v9, v1 + v8, v10);
}

uint64_t sub_2192DC5F0(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2192CFA84(a1, v1 + v5, v8, v9, v10);
}

uint64_t sub_2192DC6D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_218B58D38(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  sub_218B59134(0);
  v12 = *(v11 - 8);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v3 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v3 + v9, v3 + v13, v14);
}

uint64_t sub_2192DC84C(uint64_t a1)
{
  v3 = *(sub_219BDEF94() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_219BF0AC4() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218B59134(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B58D38(0);
  v13 = *(v1 + v5);
  v14 = *(v1 + v11);
  v15 = v1 + ((v11 + *(*(v12 - 8) + 80) + 8) & ~*(*(v12 - 8) + 80));

  return sub_2192D2BEC(a1, v1 + v4, v13, v1 + v7, v1 + v10, v14, v15);
}

uint64_t sub_2192DCA2C(uint64_t a1)
{
  v3 = *(sub_219BDB184() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2192DA2E4(a1, v1 + v4, v5);
}

uint64_t objectdestroy_67Tm()
{
  sub_21880B928(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2192DCBE0(uint64_t a1)
{
  sub_21880B928(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);

  return sub_2192DA838(a1, v1 + v5, v9, v10, v11, v12);
}

uint64_t sub_2192DCC90(uint64_t a1)
{
  sub_219BDB954();
  v3 = *(v1 + 16);

  return sub_2192D99D4(a1, v3);
}

uint64_t sub_2192DCD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2192DCDF4()
{
  v1 = *(sub_219BDB184() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_21880B928(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = *(type metadata accessor for TodayFeedGroup(0) - 8);
  v8 = *(v0 + 16);
  v9 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_2192B63F8(v8, v0 + v2, v0 + v5, v9);
}

void sub_2192DCF88()
{
  v1 = *(sub_219BDBD34() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_21880B928(0);
  v5 = *(v4 - 8);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  sub_2192CDF84(v6, v0 + v2, v7);
}

uint64_t objectdestroy_96Tm()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_21880B928(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_2192DD1A8(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_21880B928(0);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_2192CE2E0(a1, v7, v1 + v4, v8);
}

uint64_t objectdestroy_43Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_2192DD33C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

char *sub_2192DD3C4(uint64_t a1)
{
  sub_218729624(0, &qword_280EE45D8, MEMORY[0x277D6E3A0]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BE16D4() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2192AE100(a1, v1 + v4, v7);
}

uint64_t sub_2192DD4B4(char *a1)
{
  sub_2188118D4(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_2187E2B78(0);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);
  v11 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2192C31B8(a1, (v1 + v4), v1 + v8, v10, v11);
}

void sub_2192DD5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2192DD714(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v9 = *(a2(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(a3(0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(a4(0) - 8);
  v16 = v5 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));

  return a5(a1, v5 + v10, v5 + v13, v16);
}

void sub_2192DD874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for TodayLayoutSectionDescriptor(255);
    v8[1] = type metadata accessor for TodayLayoutModel(255);
    v8[2] = sub_2187DD9B8(qword_280EB1A60, 255, type metadata accessor for TodayLayoutSectionDescriptor, &unk_219C47FA4);
    v8[3] = sub_2187DD9B8(&qword_280ED7480, 255, type metadata accessor for TodayLayoutModel, &unk_219C99B04);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_117Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_2187E2B78(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  sub_2188118D4(0);
  v22 = *(*(v11 - 8) + 80);
  v12 = (v9 + v10 + v22) & ~v22;
  v13 = (*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v21 = (v13 + *(*(v14 - 8) + 80) + 8) & ~*(*(v14 - 8) + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v8 + 8))(v1 + v9, v7);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v16 = v15;
  v17 = *(v15 - 8);
  if (!(*(v17 + 48))(v1 + v12, 1, v15))
  {
    (*(v17 + 8))(v1 + v12, v16);
  }

  v18 = sub_219BDF4A4();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v1 + v21, 1, v18))
  {
    (*(v19 + 8))(v1 + v21, v18);
  }

  return swift_deallocObject();
}

uint64_t sub_2192DDCE0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2187E2B78(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  sub_2188118D4(0);
  v12 = (v9 + v10 + *(*(v11 - 8) + 80)) & ~*(*(v11 - 8) + 80);
  v13 = (*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v15 = *(v3 + v13);
  v16 = v3 + ((v13 + *(*(v14 - 8) + 80) + 8) & ~*(*(v14 - 8) + 80));

  return a3(a1, v3 + v6, v3 + v9, v3 + v12, v15, v16);
}

uint64_t sub_2192DDE9C(uint64_t a1)
{
  v3 = *(sub_219BE3514() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BE35B4() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187E2B78(0);
  return sub_2192C8510(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), v1 + v7, *(v1 + v8), v1 + ((v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80)));
}

void sub_2192DDFFC(uint64_t a1)
{
  sub_2188118D4(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_2187E2B78(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_219BF07A4() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v8);
  v12 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_2192C9414(a1, v1 + v4, v1 + v7, v11, v1 + v10, v13, v14);
}

uint64_t objectdestroy_77Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  a2(*(v2 + 16));
  (*(v5 + 8))(v2 + v6, v4);

  return swift_deallocObject();
}

void sub_2192DE254()
{
  sub_219BF07A4();
  v1 = *(v0 + 16);

  sub_2192CAFC4(v1);
}

uint64_t sub_2192DE2B8(uint64_t a1)
{
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187E2B78(0);
  v10 = *(v1 + v5);
  v11 = *(v1 + v8);
  v12 = v1 + ((v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80));

  return sub_2192CB05C(a1, v1 + v4, v10, v1 + v7, v11, v12);
}

uint64_t sub_2192DE42C(uint64_t a1)
{
  v3 = *(sub_219BDEF94() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_219BF0AC4() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v10 = (v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  sub_2187E2B78(0);
  v13 = *(v1 + v5);
  v14 = *(v1 + v8);
  v15 = v1 + ((v10 + v11 + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80));

  return sub_2192CC474(a1, v1 + v4, v13, v1 + v7, v14, v1 + v10, v15);
}

uint64_t objectdestroy_61Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2192DE6D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v3 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v8, v10, v11, v12);
}

double sub_2192DE80C()
{
  v0 = sub_219BED184();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187D9028();
  (*(v1 + 104))(v3, *MEMORY[0x277D851B8], v0);
  v4 = sub_219BF66E4();
  (*(v1 + 8))(v3, v0);
  sub_219BE31D4();

  v5 = sub_219BF66A4();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x535F4D4554535953;
  *(v6 + 24) = 0xEF53454349565245;
  sub_219BE2F94();

  return result;
}

uint64_t sub_2192DEA04()
{
  [objc_opt_self() locationServicesEnabled];
  sub_21874D974();
  swift_allocObject();
  return sub_219BE3014();
}

double sub_2192DEA6C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    if (qword_27CC08638 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_27CCD8BB8);
    v5 = sub_219BE5414();
    v6 = sub_219BF6214();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2186C1000, v5, v6, "Opening News Settings...", v7, 2u);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    [objc_opt_self() openNewsSettings];
  }

  else
  {
    if (qword_27CC08638 != -1)
    {
      swift_once();
    }

    v11 = sub_219BE5434();
    __swift_project_value_buffer(v11, qword_27CCD8BB8);
    v12 = sub_219BE5414();
    v13 = sub_219BF6214();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2186C1000, v12, v13, "Location Services not enabled on this device. Opening System Location Settings...", v14, 2u);
      MEMORY[0x21CECF960](v14, -1, -1);
    }

    return sub_2192DECE4(a3, a4);
  }

  return result;
}

void sub_2192DEC58()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_219BDB854();
    [v1 openSensitiveURL:v2 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

double sub_2192DECE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED174();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BED1D4();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5898(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  aBlock = 0;
  v35 = 0xE000000000000000;
  sub_219BF7314();

  aBlock = 0xD000000000000021;
  v35 = 0x8000000219D16710;
  MEMORY[0x21CECC330](a1, a2);
  sub_219BDB914();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_218838478(v10);
  }

  else
  {
    v19 = *(v12 + 32);
    v19(v17, v10, v11);
    sub_2187D9028();
    v27 = MEMORY[0x21CECD490](25);
    (*(v12 + 16))(v14, v17, v11);
    v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v21 = swift_allocObject();
    v19((v21 + v20), v14, v11);
    v38 = sub_2192DF1B0;
    v39 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_218793E0C;
    v37 = &block_descriptor_112;
    v22 = _Block_copy(&aBlock);
    sub_219BED1A4();
    v33 = MEMORY[0x277D84F90];
    sub_218A72744();
    sub_2186E5898(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v23 = v29;
    v24 = v32;
    sub_219BF7164();
    v25 = v27;
    MEMORY[0x21CECD460](0, v7, v23, v22);
    _Block_release(v22);

    (*(v31 + 8))(v23, v24);
    (*(v28 + 8))(v7, v30);
    (*(v12 + 8))(v17, v11);
  }

  return result;
}

void sub_2192DF1B0()
{
  sub_219BDB954();

  sub_2192DEC58();
}

uint64_t sub_2192DF25C()
{
  v1 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  if ((*(v0 + v1[10]) & 1) == 0)
  {
    if (*(v0 + v1[11]))
    {
      if (*(v0 + v1[12]))
      {
        if (*(v0 + v1[13]))
        {
          if (*(v0 + v1[14]))
          {
            if (*(v0 + v1[15]))
            {
              v2 = 33;
              if (*(v0 + v1[17]))
              {
                return v2;
              }

              return v2 | 2;
            }

            v2 = 33;
            goto LABEL_93;
          }

          v2 = 16777249;
          if (*(v0 + v1[15]))
          {
            goto LABEL_94;
          }
        }

        else if (*(v0 + v1[14]))
        {
          v2 = 8388641;
          if (*(v0 + v1[15]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 25165857;
          if (*(v0 + v1[15]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[13]))
      {
        if (*(v0 + v1[14]))
        {
          v2 = 2097185;
          if (*(v0 + v1[15]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 18874401;
          if (*(v0 + v1[15]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[14]))
      {
        v2 = 10485793;
        if (*(v0 + v1[15]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 27263009;
        if (*(v0 + v1[15]))
        {
          goto LABEL_94;
        }
      }

LABEL_93:
      v2 |= 0x800uLL;
      goto LABEL_94;
    }

    if (*(v0 + v1[12]))
    {
      if (*(v0 + v1[13]))
      {
        if (*(v0 + v1[14]))
        {
          v3 = 1048577;
LABEL_59:
          if (*(v0 + v1[15]) == 1)
          {
            v2 = v3 + 32;
            if (*(v0 + v1[17]))
            {
              return v2;
            }

            return v2 | 2;
          }

          v2 = v3 | 0x20;
          goto LABEL_93;
        }

        v6 = 17825793;
      }

      else
      {
        if (*(v0 + v1[14]))
        {
          v3 = 9437185;
          goto LABEL_59;
        }

        v6 = 26214401;
      }
    }

    else if (*(v0 + v1[13]))
    {
      if (*(v0 + v1[14]))
      {
        v3 = 3145729;
        goto LABEL_59;
      }

      v6 = 19922945;
    }

    else
    {
      if (*(v0 + v1[14]))
      {
        v3 = 11534337;
        goto LABEL_59;
      }

      v6 = 28311553;
    }

    v2 = v6 | 0x20;
    goto LABEL_92;
  }

  if (!*(v0 + v1[11]))
  {
    if (*(v0 + v1[12]))
    {
      if (*(v0 + v1[13]))
      {
        if (*(v0 + v1[14]))
        {
          v2 = 1048577;
          if (*(v0 + v1[15]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 17825793;
          if (*(v0 + v1[15]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[14]))
      {
        v2 = 9437185;
        if (*(v0 + v1[15]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 26214401;
        if (*(v0 + v1[15]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[13]))
    {
      if (*(v0 + v1[14]))
      {
        v2 = 3145729;
        if (*(v0 + v1[15]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 19922945;
        if (*(v0 + v1[15]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[14]))
    {
      v2 = 11534337;
      if (*(v0 + v1[15]))
      {
        goto LABEL_94;
      }
    }

    else
    {
      v2 = 28311553;
      if (*(v0 + v1[15]))
      {
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  if (!*(v0 + v1[12]))
  {
    if (*(v0 + v1[13]))
    {
      if (*(v0 + v1[14]))
      {
        v4 = 1048577;
      }

      else
      {
        v4 = 17825793;
      }
    }

    else if (*(v0 + v1[14]))
    {
      v4 = 9437185;
    }

    else
    {
      v4 = 26214401;
    }

    v2 = v4 + 0x100000;
    if (*(v0 + v1[15]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[13]))
  {
    if (*(v0 + v1[14]))
    {
      if (*(v0 + v1[15]) == 1)
      {
        v2 = 1;
        if (*(v0 + v1[17]))
        {
          return v2;
        }

        return v2 | 2;
      }

      v2 = 1;
      goto LABEL_93;
    }

    v2 = 16777217;
LABEL_92:
    if (*(v0 + v1[15]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[14]))
  {
    v5 = 3145729;
  }

  else
  {
    v5 = 19922945;
  }

  v2 = v5 + 5242880;
  if (!*(v0 + v1[15]))
  {
    goto LABEL_93;
  }

LABEL_94:
  if ((*(v0 + v1[17]) & 1) == 0)
  {
    return v2 | 2;
  }

  return v2;
}

uint64_t sub_2192DF584@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = sub_219BEF554();
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v54);
  v53 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_219BF1934();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218D15B24(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2192E05EC(0, &qword_280E8C950, MEMORY[0x277D844C8]);
  v57 = v11;
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = &v34[-v13];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192E0534();
  v58 = v14;
  v15 = v59;
  sub_219BF7B34();
  if (!v15)
  {
    v16 = v12;
    v59 = v10;
    v48 = v7;
    v49 = v5;
    v17 = v55;
    v18 = v53;
    v19 = v54;
    v70 = 1;
    v47 = sub_219BF76A4();
    v70 = 2;
    v46 = sub_219BF76A4();
    v70 = 3;
    sub_218D15CF4(&unk_280E91390, MEMORY[0x277D32648], MEMORY[0x277D32658]);
    sub_219BF76E4();
    v70 = 4;
    sub_218D15CF4(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7734();
    v70 = 5;
    v21 = sub_219BF76F4();
    v44 = v22;
    v45 = v21;
    v69 = 6;
    v24 = v57;
    v23 = v58;
    sub_219BF7674();
    v43 = v70;
    v68 = 7;
    sub_219BF7674();
    v42 = v69;
    v67 = 8;
    sub_219BF7674();
    v41 = v68;
    v66 = 9;
    sub_219BF7674();
    v40 = v67;
    v65 = 10;
    sub_219BF7674();
    v39 = v66;
    v64 = 11;
    sub_219BF7674();
    v38 = v65;
    v63 = 12;
    sub_219BF7674();
    v37 = v64;
    v62 = 13;
    sub_219BF7674();
    v36 = v63;
    v61 = 14;
    sub_219BF7674();
    v35 = v62;
    v60 = 15;
    sub_219BF7674();
    (*(v16 + 8))(v23, v24);
    LODWORD(v58) = v61;
    *v18 = 13;
    v25 = v18;
    v26 = v46;
    v18[1] = v47 & 1;
    v18[2] = (v26 == 2) | v26 & 1;
    v27 = v50;
    v28 = v56;
    v29 = v59;
    v57 = *(v50 + 48);
    if (v57(v59, 1, v56) == 1)
    {
      (*(v27 + 104))(v51, *MEMORY[0x277D32628], v28);
      v30 = v57(v29, 1, v28);
      v31 = v51;
      if (v30 != 1)
      {
        sub_218D15BD0(v29);
      }
    }

    else
    {
      v31 = v51;
      (*(v27 + 32))(v51, v29, v28);
    }

    (*(v27 + 32))(v25 + v19[7], v31, v28);
    (*(v52 + 32))(v25 + v19[8], v48, v49);
    v32 = (v25 + v19[9]);
    v33 = v44;
    *v32 = v45;
    v32[1] = v33;
    *(v25 + v19[10]) = (v43 == 2) | v43 & 1;
    *(v25 + v19[11]) = (v42 == 2) | v42 & 1;
    *(v25 + v19[12]) = (v41 == 2) | v41 & 1;
    *(v25 + v19[13]) = (v40 == 2) | v40 & 1;
    *(v25 + v19[14]) = (v39 == 2) | v39 & 1;
    *(v25 + v19[15]) = v38 & 1;
    *(v25 + v19[16]) = v37 & 1;
    *(v25 + v19[17]) = (v36 == 2) | v36 & 1;
    *(v25 + v19[18]) = (v35 == 2) | v35 & 1;
    *(v25 + v19[19]) = v58 & 1;
    sub_2192E0588(v25, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2192DFE2C(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x746E65746E6F63;
      break;
    case 5:
      result = 0x65707974627573;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2192DFFF4(void *a1)
{
  v3 = v1;
  sub_2192E05EC(0, &qword_280E8C2D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192E0534();
  sub_219BF7B44();
  v12 = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v12 = 1;
    sub_219BF7804();
    v12 = 2;
    sub_219BF7804();
    type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
    v12 = 3;
    sub_219BEF554();
    sub_218D15CF4(&qword_280E913A0, MEMORY[0x277D32648], MEMORY[0x277D32650]);
    sub_219BF7834();
    v12 = 4;
    sub_219BF1934();
    sub_218D15CF4(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
    sub_219BF7834();
    v12 = 5;
    sub_219BF77F4();
    v12 = 6;
    sub_219BF7804();
    v12 = 7;
    sub_219BF7804();
    v12 = 8;
    sub_219BF7804();
    v12 = 9;
    sub_219BF7804();
    v12 = 10;
    sub_219BF7804();
    v12 = 11;
    sub_219BF7804();
    v12 = 12;
    sub_219BF7804();
    v12 = 13;
    sub_219BF7804();
    v12 = 14;
    sub_219BF7804();
    v12 = 15;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2192E0458@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2192E08A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2192E048C(uint64_t a1)
{
  v2 = sub_2192E0534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192E04C8(uint64_t a1)
{
  v2 = sub_2192E0534();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2192E0534()
{
  result = qword_280EA0BE8;
  if (!qword_280EA0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0BE8);
  }

  return result;
}

uint64_t sub_2192E0588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2192E05EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192E0534();
    v7 = a3(a1, &type metadata for CuratedMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CuratedMagazineFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CuratedMagazineFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2192E07A4()
{
  result = qword_27CC18770;
  if (!qword_27CC18770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18770);
  }

  return result;
}

unint64_t sub_2192E07FC()
{
  result = qword_280EA0BD8;
  if (!qword_280EA0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0BD8);
  }

  return result;
}

unint64_t sub_2192E0854()
{
  result = qword_280EA0BE0;
  if (!qword_280EA0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0BE0);
  }

  return result;
}

uint64_t sub_2192E08A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CE5B80 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BC0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5BE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C00 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C40 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CFA350 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219CFA370 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_2192E0DCC()
{
  v0 = sub_219BE9C04();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDF074();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1524();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v28 + 16);
  v14 = sub_219BE9924();
  v24[0] = v15;
  v24[1] = v14;
  v16 = v6;
  v17 = v25;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F400], v16);
  sub_219BE9934();
  v18 = v26;
  v19 = (*(v17 + 88))(v2, v26);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D2D868], v27);
  }

  else
  {
    v20 = *(v3 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v5, *MEMORY[0x277D2D810], v27);
    }

    else
    {
      v20(v5, *MEMORY[0x277D2D850], v27);
      (*(v17 + 8))(v2, v18);
    }
  }

  sub_219BE1514();
  sub_2192E2730(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  sub_219BDD1F4();
  (*(v11 + 8))(v13, v10);
  return sub_219BDD134();
}

uint64_t sub_2192E11C0()
{
  sub_219BE17A4();
  sub_2192E2730(&qword_280EE7F30, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_2192E2778(v1, sub_21880702C);
}

uint64_t sub_2192E126C()
{
  v0 = _s10PuzzleFeedVMa(0);
  MEMORY[0x28223BE20](v0 - 8);
  v46 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = _s6PuzzleVMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s3TagVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s11SportsEventVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5IssueVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8HeadlineVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = _s13ResolvedModelOMa(0);
  MEMORY[0x28223BE20](v48);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8ResolvedVMa(0);
  MEMORY[0x28223BE20](v13);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Shortcut(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for ShortcutsModel(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189534EC(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192E2670(0, &qword_27CC18780, MEMORY[0x277D6E1E0]);
  sub_219BE8BA4();
  sub_219BE5FC4();
  (*(v26 + 8))(v28, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for ShortcutsModel;
    v30 = v23;
    return sub_2192E2778(v30, v29);
  }

  sub_2192E2608(v23, v20, type metadata accessor for Shortcut);
  sub_2192E25A0(v20, v17, type metadata accessor for Shortcut);
  if (!swift_getEnumCaseMultiPayload())
  {
    v32 = v17;
    v33 = v50;
    sub_2192E2608(v32, v50, _s8ResolvedVMa);
    v34 = v49;
    sub_2192E25A0(v33 + *(v13 + 20), v49, _s13ResolvedModelOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v40 = v43;
          sub_2192E2608(v34, v43, _s5IssueVMa);
          __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
          sub_219BDE694();
          sub_2192E2778(v33, _s8ResolvedVMa);
          sub_2192E2778(v20, type metadata accessor for Shortcut);
          v29 = _s5IssueVMa;
          v30 = v40;
          return sub_2192E2778(v30, v29);
        }

        v38 = v45;
        sub_2192E2608(v34, v45, _s3TagVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE684();
        swift_unknownObjectRelease();
        sub_2192E2778(v33, _s8ResolvedVMa);
        sub_2192E2778(v20, type metadata accessor for Shortcut);
        v39 = _s3TagVMa;
      }

      else
      {
        v38 = v42;
        sub_2192E2608(v34, v42, _s8HeadlineVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE6A4();
        swift_unknownObjectRelease();
        sub_2192E2778(v33, _s8ResolvedVMa);
        sub_2192E2778(v20, type metadata accessor for Shortcut);
        v39 = _s8HeadlineVMa;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload != 5)
        {
          sub_2192E2778(v33, _s8ResolvedVMa);
          sub_2192E2778(v20, type metadata accessor for Shortcut);
          v29 = _s13ResolvedModelOMa;
          v30 = v34;
          return sub_2192E2778(v30, v29);
        }

        v36 = v46;
        sub_2192E2608(v34, v46, _s10PuzzleFeedVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE684();
        swift_unknownObjectRelease();
        v37 = _s10PuzzleFeedVMa;
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v36 = v44;
        sub_2192E2608(v34, v44, _s11SportsEventVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE684();
        swift_unknownObjectRelease();
        v37 = _s11SportsEventVMa;
LABEL_16:
        sub_2192E2778(v36, v37);
        sub_2192E2778(v33, _s8ResolvedVMa);
        goto LABEL_4;
      }

      v38 = v47;
      sub_2192E2608(v34, v47, _s6PuzzleVMa);
      __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
      v41 = [*v38 puzzleType];
      sub_219BDE684();
      swift_unknownObjectRelease();
      sub_2192E2778(v33, _s8ResolvedVMa);
      sub_2192E2778(v20, type metadata accessor for Shortcut);
      v39 = _s6PuzzleVMa;
    }

    v29 = v39;
    v30 = v38;
    return sub_2192E2778(v30, v29);
  }

  __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
  sub_219BDE684();
  swift_unknownObjectRelease();
LABEL_4:
  v29 = type metadata accessor for Shortcut;
  v30 = v20;
  return sub_2192E2778(v30, v29);
}

uint64_t sub_2192E1BF4()
{
  v0 = _s10PuzzleFeedVMa(0);
  MEMORY[0x28223BE20](v0 - 8);
  v46 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = _s6PuzzleVMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s3TagVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s11SportsEventVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5IssueVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8HeadlineVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = _s13ResolvedModelOMa(0);
  MEMORY[0x28223BE20](v48);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8ResolvedVMa(0);
  MEMORY[0x28223BE20](v13);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Shortcut(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for ShortcutsModel(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189534EC(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192E2670(0, &qword_27CC18778, MEMORY[0x277D6DA48]);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v26 + 8))(v28, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for ShortcutsModel;
    v30 = v23;
    return sub_2192E2778(v30, v29);
  }

  sub_2192E2608(v23, v20, type metadata accessor for Shortcut);
  sub_2192E25A0(v20, v17, type metadata accessor for Shortcut);
  if (!swift_getEnumCaseMultiPayload())
  {
    v32 = v17;
    v33 = v50;
    sub_2192E2608(v32, v50, _s8ResolvedVMa);
    v34 = v49;
    sub_2192E25A0(v33 + *(v13 + 20), v49, _s13ResolvedModelOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v40 = v43;
          sub_2192E2608(v34, v43, _s5IssueVMa);
          __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
          sub_219BDE6C4();
          sub_2192E2778(v33, _s8ResolvedVMa);
          sub_2192E2778(v20, type metadata accessor for Shortcut);
          v29 = _s5IssueVMa;
          v30 = v40;
          return sub_2192E2778(v30, v29);
        }

        v38 = v45;
        sub_2192E2608(v34, v45, _s3TagVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE6B4();
        swift_unknownObjectRelease();
        sub_2192E2778(v33, _s8ResolvedVMa);
        sub_2192E2778(v20, type metadata accessor for Shortcut);
        v39 = _s3TagVMa;
      }

      else
      {
        v38 = v42;
        sub_2192E2608(v34, v42, _s8HeadlineVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE6D4();
        swift_unknownObjectRelease();
        sub_2192E2778(v33, _s8ResolvedVMa);
        sub_2192E2778(v20, type metadata accessor for Shortcut);
        v39 = _s8HeadlineVMa;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload != 5)
        {
          sub_2192E2778(v33, _s8ResolvedVMa);
          sub_2192E2778(v20, type metadata accessor for Shortcut);
          v29 = _s13ResolvedModelOMa;
          v30 = v34;
          return sub_2192E2778(v30, v29);
        }

        v36 = v46;
        sub_2192E2608(v34, v46, _s10PuzzleFeedVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE6B4();
        swift_unknownObjectRelease();
        v37 = _s10PuzzleFeedVMa;
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v36 = v44;
        sub_2192E2608(v34, v44, _s11SportsEventVMa);
        __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
        swift_unknownObjectRetain();
        sub_219BDE6B4();
        swift_unknownObjectRelease();
        v37 = _s11SportsEventVMa;
LABEL_16:
        sub_2192E2778(v36, v37);
        sub_2192E2778(v33, _s8ResolvedVMa);
        goto LABEL_4;
      }

      v38 = v47;
      sub_2192E2608(v34, v47, _s6PuzzleVMa);
      __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
      v41 = [*v38 puzzleType];
      sub_219BDE6B4();
      swift_unknownObjectRelease();
      sub_2192E2778(v33, _s8ResolvedVMa);
      sub_2192E2778(v20, type metadata accessor for Shortcut);
      v39 = _s6PuzzleVMa;
    }

    v29 = v39;
    v30 = v38;
    return sub_2192E2778(v30, v29);
  }

  __swift_project_boxed_opaque_existential_1((v51 + 24), *(v51 + 48));
  sub_219BDE6B4();
  swift_unknownObjectRelease();
LABEL_4:
  v29 = type metadata accessor for Shortcut;
  v30 = v20;
  return sub_2192E2778(v30, v29);
}

uint64_t sub_2192E25A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2192E2608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2192E2670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ShortcutsSectionDescriptor;
    v8[1] = type metadata accessor for ShortcutsModel(255);
    v8[2] = sub_2189532D4();
    v8[3] = sub_2192E2730(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2192E2730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2192E2778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2192E2800@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for SearchMoreFeedConfig(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DDB18(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DDB18(0, &qword_27CC18790, sub_2192E3328, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DDB18(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_2192E3448(0, &qword_27CC187B0, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192E33F4();
  v18 = v43;
  sub_219BF7B04();
  if (v18)
  {
    v31 = a1;
  }

  else
  {
    v19 = v15;
    v43 = a1;
    v20 = v42;
    sub_219BDBD34();
    v46 = 0;
    sub_218819B04(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_2192E3328(0);
    v23 = v22;
    v45 = 1;
    sub_218819B04(&qword_27CC187C0, sub_2192E3328, MEMORY[0x277D6CB08]);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_218710728(v24, &qword_27CC18790, sub_2192E3328);
      v27 = 0;
    }

    else
    {
      v28 = sub_219BE1E44();
      v29 = v24;
      v27 = v28;
      (*(v26 + 8))(v29, v23);
    }

    v30 = v40;
    sub_219BEE5B4();
    v44 = 2;
    sub_218819B04(&qword_280E91B88, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872AC5C(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_218710728(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_218F826FC(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2192E2DF4(void *a1)
{
  v3 = v1;
  sub_2192E3448(0, &qword_27CC187C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192E33F4();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_218819B04(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for SearchMoreFeedConfig(0) + 20));
    v11[15] = 1;
    sub_2186DDB18(0, &qword_280E8F0B8, type metadata accessor for SearchMoreFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2192E34AC();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_218819B04(&unk_280E91B90, MEMORY[0x277D32028], MEMORY[0x277D32030]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2192E3084(uint64_t a1)
{
  v2 = sub_2192E33F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192E30C0(uint64_t a1)
{
  v2 = sub_2192E33F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2192E3178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DDB18(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872AC5C(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872AC5C(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872AC5C(v11, a3, &qword_280EE9C40, v8);

  result = sub_218710728(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_2192E3328(uint64_t a1)
{
  if (!qword_27CC18798)
  {
    type metadata accessor for SearchMoreFeedGroupConfig(255);
    sub_218819B04(&qword_27CC187A0, type metadata accessor for SearchMoreFeedGroupConfig, &unk_219CC4A54);
    sub_218819B04(&qword_27CC187A8, type metadata accessor for SearchMoreFeedGroupConfig, &unk_219CC4A2C);
    v1 = sub_219BE1E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC18798);
    }
  }
}

unint64_t sub_2192E33F4()
{
  result = qword_27CC187B8;
  if (!qword_27CC187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC187B8);
  }

  return result;
}

void sub_2192E3448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192E33F4();
    v7 = a3(a1, &type metadata for SearchMoreFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192E34AC()
{
  result = qword_27CC187D0;
  if (!qword_27CC187D0)
  {
    sub_2186DDB18(255, &qword_280E8F0B8, type metadata accessor for SearchMoreFeedGroupConfig, MEMORY[0x277D83940]);
    sub_218819B04(&qword_27CC187A8, type metadata accessor for SearchMoreFeedGroupConfig, &unk_219CC4A2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC187D0);
  }

  return result;
}

unint64_t sub_2192E3598()
{
  result = qword_27CC187D8;
  if (!qword_27CC187D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC187D8);
  }

  return result;
}

unint64_t sub_2192E35F0()
{
  result = qword_27CC187E0;
  if (!qword_27CC187E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC187E0);
  }

  return result;
}

unint64_t sub_2192E3648()
{
  result = qword_27CC187E8;
  if (!qword_27CC187E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC187E8);
  }

  return result;
}

id sub_2192E369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v240 = a3;
  *&v241 = a4;
  v5 = sub_219BEB744();
  v6 = *(v5 - 8);
  v230 = v5;
  v231 = v6;
  MEMORY[0x28223BE20](v5);
  v229 = v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192ECCA4(0, &qword_280EE3590, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v235 = v226 - v9;
  v10 = sub_219BEB714();
  v11 = *(v10 - 8);
  v233 = v10;
  v234 = v11;
  MEMORY[0x28223BE20](v10);
  v232 = v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEB724();
  v237 = *(v13 - 8);
  v238 = v13;
  MEMORY[0x28223BE20](v13);
  v236 = v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FollowingPuzzleHubModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FollowingMySportsModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v226 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FollowingAudioModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FollowingLayoutModel(0);
  MEMORY[0x28223BE20](v24);
  v26 = v226 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v226 - v28;
  v30 = sub_219BED0C4();
  sub_218950C18(0);
  if (v30)
  {
    sub_219BE75E4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v121 = *(v29 + 1);
        v244 = *v29;
        v245 = v121;
        LOBYTE(v246[0]) = v29[32];
        v122 = memcpy(v247, v29 + 40, 0x1EAuLL);
        v238 = v226;
        v243[0] = *(v29 + 8);
        v248[0] = *(&v245 + 1);
        MEMORY[0x28223BE20](v122);
        v88 = &v226[-4];
        v123 = v241;
        v226[-2] = v240;
        v226[-1] = v123;
        v75 = MEMORY[0x277D837D0];
        v76 = MEMORY[0x277D83D88];
        sub_2192ED848(v243, v242, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_2189D2C8C);
        sub_2192ED848(v248, v242, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
        goto LABEL_28;
      case 2:
        sub_2192ED778(0, qword_280ED1550, type metadata accessor for FollowingAudioModel, "audio layoutAttributes ");
        memcpy(v247, &v29[*(v82 + 48)], 0x1EAuLL);
        v83 = sub_218F3B0E0(v29, v23, type metadata accessor for FollowingAudioModel);
        MEMORY[0x28223BE20](v83);
        v84 = &v226[-4];
        v85 = v241;
        v226[-2] = v240;
        v226[-1] = v85;
        goto LABEL_24;
      case 3:
        v98 = memcpy(v247, v29 + 8, 0x1EAuLL);
        MEMORY[0x28223BE20](v98);
        v79 = &v226[-4];
        v99 = v241;
        v226[-2] = v240;
        v226[-1] = v99;

        goto LABEL_22;
      case 4:
        v71 = *(v29 + 1);
        v244 = *v29;
        v245 = v71;
        LOBYTE(v246[0]) = v29[32];
        v72 = memcpy(v247, v29 + 40, 0x1EAuLL);
        v238 = v226;
        v243[0] = *(v29 + 8);
        v248[0] = *(&v245 + 1);
        MEMORY[0x28223BE20](v72);
        v73 = &v226[-4];
        v74 = v241;
        v226[-2] = v240;
        v226[-1] = v74;
        v75 = MEMORY[0x277D837D0];
        v76 = MEMORY[0x277D83D88];
        sub_2192ED848(v243, v242, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_2189D2C8C);
        sub_2192ED848(v248, v242, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
        v77 = sub_2192ED908;
        goto LABEL_35;
      case 5:
        v133 = *v29;
        v134 = *(v29 + 1);
        v135 = *(v29 + 2);
        v136 = v29[24];
        v137 = memcpy(v247, v29 + 32, 0x1EAuLL);
        MEMORY[0x28223BE20](v137);
        v138 = &v226[-4];
        v139 = v241;
        v226[-2] = v240;
        v226[-1] = v139;
        v140 = v135;

        goto LABEL_44;
      case 6:
        v104 = *v29;
        v149 = memcpy(v247, v29 + 8, 0x1EAuLL);
        MEMORY[0x28223BE20](v149);
        v151 = v240;
        v150 = v241;
        v226[-4] = v104;
        v226[-3] = v151;
        v226[-2] = v150;
        v117 = v239;
        v43 = sub_2192E8848(v104, v247, sub_2192EE11C, &v226[-6], v239);
        v119 = sub_2192E791C(v152);
        MEMORY[0x28223BE20](v119);
        v120 = &v226[-6];
        v226[-4] = v117;
        v226[-3] = v104;
        v226[-2] = v43;
        v226[-1] = a1;
        goto LABEL_40;
      case 7:
        v104 = *v29;
        v105 = memcpy(v247, v29 + 8, 0x1EAuLL);
        MEMORY[0x28223BE20](v105);
        v107 = v240;
        v106 = v241;
        v226[-4] = v104;
        v226[-3] = v107;
        v226[-2] = v106;
        v108 = v239;
        v109 = sub_2192E8848(v104, v247, sub_2192ED8FC, &v226[-6], v239);
        v111 = sub_2192E791C(v110);
        MEMORY[0x28223BE20](v111);
        v112 = &v226[-6];
        v226[-4] = v108;
        v226[-3] = v104;
        v226[-2] = v109;
        v226[-1] = a1;
        v113 = sub_2192EE0E4;
        goto LABEL_52;
      case 8:
        v176 = *v29;
        v181 = *(v29 + 24);
        v182 = *(v29 + 56);
        v247[2] = *(v29 + 40);
        v247[3] = v182;
        v247[4] = *(v29 + 72);
        v247[0] = *(v29 + 8);
        v247[1] = v181;
        MEMORY[0x28223BE20](EnumCaseMultiPayload);
        v183 = v241;
        v226[-2] = v240;
        v226[-1] = v183;
        v180 = sub_2192ED8DC;
        goto LABEL_56;
      case 9:
      case 11:
      case 12:
      case 19:
        v176 = *v29;
        v192 = *(v29 + 24);
        v193 = *(v29 + 56);
        v247[2] = *(v29 + 40);
        v247[3] = v193;
        v247[4] = *(v29 + 72);
        v247[0] = *(v29 + 8);
        v247[1] = v192;
        MEMORY[0x28223BE20](EnumCaseMultiPayload);
        v194 = v241;
        v226[-2] = v240;
        v226[-1] = v194;
        v180 = sub_2192EE100;
        goto LABEL_56;
      case 10:
        v168 = *v29;
        sub_21874A384(0);
        v170 = *(v169 + 48);
        v171 = &v29[*(v169 + 64)];
        v172 = *(v171 + 4);
        v247[3] = *(v171 + 3);
        v247[4] = v172;
        v173 = *(v171 + 2);
        v247[1] = *(v171 + 1);
        v247[2] = v173;
        v247[0] = *v171;
        MEMORY[0x28223BE20](v169);
        v174 = v241;
        v226[-2] = v240;
        v226[-1] = v174;
        v43 = sub_2192E62A0(v168, v247, sub_2192EE100);

        sub_218748D40(0);
        (*(*(v175 - 8) + 8))(&v29[v170], v175);
        break;
      case 13:
        v145 = *(v29 + 1);
        v244 = *v29;
        v245 = v145;
        LODWORD(v246[0]) = *(v29 + 8);
        v146 = memcpy(v247, v29 + 40, 0x1EAuLL);
        MEMORY[0x28223BE20](v146);
        v61 = &v226[-4];
        v147 = v241;
        v226[-2] = v240;
        v226[-1] = v147;
        sub_2189CEED0(&v244, v243);
        goto LABEL_38;
      case 14:
        v54 = *v29;
        v55 = *(v29 + 24);
        v56 = *(v29 + 56);
        v247[2] = *(v29 + 40);
        v247[3] = v56;
        *&v247[4] = *(v29 + 9);
        v247[0] = *(v29 + 8);
        v247[1] = v55;
        MEMORY[0x28223BE20](EnumCaseMultiPayload);
        v57 = v241;
        v226[-2] = v240;
        v226[-1] = v57;
        v58 = sub_2192ED8BC;
        goto LABEL_20;
      case 15:
        v44 = type metadata accessor for FollowingMySportsModel;
        sub_2192ED778(0, &qword_280EC85E0, type metadata accessor for FollowingMySportsModel, "mySports layoutAttributes ");
        memcpy(v247, &v29[*(v90 + 48)], 0x1EAuLL);
        v91 = sub_218F3B0E0(v29, v20, type metadata accessor for FollowingMySportsModel);
        MEMORY[0x28223BE20](v91);
        v92 = v241;
        v226[-2] = v240;
        v226[-1] = v92;
        v53 = sub_2192EE114;
        goto LABEL_18;
      case 16:
        v44 = type metadata accessor for FollowingPuzzleHubModel;
        sub_2192ED778(0, &qword_280EC5118, type metadata accessor for FollowingPuzzleHubModel, "puzzleHub layoutAttributes ");
        memcpy(v247, &v29[*(v45 + 48)], 0x1EAuLL);
        v46 = sub_218F3B0E0(v29, v17, type metadata accessor for FollowingPuzzleHubModel);
        MEMORY[0x28223BE20](v46);
        v47 = &v226[-4];
        v48 = v241;
        v226[-2] = v240;
        v226[-1] = v48;
        v49 = sub_2192EE110;
        goto LABEL_31;
      case 17:
        v125 = *(v29 + 1);
        v244 = *v29;
        v245 = v125;
        v246[0] = *(v29 + 2);
        *(v246 + 14) = *(v29 + 46);
        v126 = memcpy(v247, v29 + 64, 0x1EAuLL);
        MEMORY[0x28223BE20](v126);
        v127 = &v226[-4];
        v128 = v241;
        v226[-2] = v240;
        v226[-1] = v128;
        sub_2189CEE20(&v244, v243);
        v129 = sub_2192EE10C;
        goto LABEL_47;
      case 18:
        v157 = *v29;
        v158 = *(v29 + 1);
        v159 = *(v29 + 2);
        v160 = v29[24];
        v161 = memcpy(v247, v29 + 32, 0x1EAuLL);
        MEMORY[0x28223BE20](v161);
        v162 = &v226[-4];
        v163 = v241;
        v226[-2] = v240;
        v226[-1] = v163;
        v140 = v159;

        goto LABEL_59;
      case 20:
        goto LABEL_7;
      default:
        v32 = *v29;
        v33 = *(v29 + 1);
        v34 = *(v29 + 2);
        v35 = memcpy(v247, v29 + 24, 0x1EAuLL);
        MEMORY[0x28223BE20](v35);
        v36 = &v226[-4];
        v37 = v241;
        v226[-2] = v240;
        v226[-1] = v37;
        v38 = v34;

        goto LABEL_6;
    }
  }

  else
  {
    sub_219BE75E4();
    v39 = swift_getEnumCaseMultiPayload();
    switch(v39)
    {
      case 1:
        v86 = *(v26 + 1);
        v244 = *v26;
        v245 = v86;
        LOBYTE(v246[0]) = v26[32];
        v87 = memcpy(v247, v26 + 40, 0x1EAuLL);
        v238 = v226;
        v243[0] = *(v26 + 8);
        v248[0] = *(&v245 + 1);
        MEMORY[0x28223BE20](v87);
        v88 = &v226[-4];
        v89 = v241;
        v226[-2] = v240;
        v226[-1] = v89;
        v75 = MEMORY[0x277D837D0];
        v76 = MEMORY[0x277D83D88];
        sub_2192ED848(v243, v242, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_2189D2C8C);
        sub_2192ED848(v248, v242, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
LABEL_28:
        v124 = sub_2192EAD08(&v244, v247, sub_2192EE104, v88, v239);
        goto LABEL_36;
      case 2:
        sub_2192ED778(0, qword_280ED1550, type metadata accessor for FollowingAudioModel, "audio layoutAttributes ");
        memcpy(v247, &v26[*(v101 + 48)], 0x1EAuLL);
        v102 = sub_218F3B0E0(v26, v23, type metadata accessor for FollowingAudioModel);
        MEMORY[0x28223BE20](v102);
        v84 = &v226[-4];
        v103 = v241;
        v226[-2] = v240;
        v226[-1] = v103;
LABEL_24:
        v43 = sub_2192EB38C(v23, v247, sub_2192EE104, v84, v239);
        sub_219BF69D4();

        sub_218B107AC(v247);
        sub_2192ED7E8(v23, type metadata accessor for FollowingAudioModel);
        return v43;
      case 3:
        v78 = memcpy(v247, v26 + 8, 0x1EAuLL);
        MEMORY[0x28223BE20](v78);
        v79 = &v226[-4];
        v80 = v241;
        v226[-2] = v240;
        v226[-1] = v80;

LABEL_22:
        v100 = sub_2192EA708(v81, v247, sub_2192EE104, v79, v239);

        v43 = v100;
        sub_219BF69D4();

        goto LABEL_62;
      case 4:
        v141 = *(v26 + 1);
        v244 = *v26;
        v245 = v141;
        LOBYTE(v246[0]) = v26[32];
        v142 = memcpy(v247, v26 + 40, 0x1EAuLL);
        v238 = v226;
        v243[0] = *(v26 + 8);
        v248[0] = *(&v245 + 1);
        MEMORY[0x28223BE20](v142);
        v73 = &v226[-4];
        v143 = v241;
        v226[-2] = v240;
        v226[-1] = v143;
        v75 = MEMORY[0x277D837D0];
        v76 = MEMORY[0x277D83D88];
        sub_2192ED848(v243, v242, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_2189D2C8C);
        sub_2192ED848(v248, v242, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
        v77 = sub_2192EE104;
LABEL_35:
        v124 = sub_2192E9444(&v244, v247, v77, v73, v239);
LABEL_36:
        v144 = v124;
        sub_2192EDF7C(v243, &qword_280E8F860, v75, v76, sub_2189D2C8C);
        sub_2192EDF7C(v248, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
        v43 = v144;
        sub_219BF69D4();
        sub_2192EDF7C(v243, &qword_280E8F860, v75, v76, sub_2189D2C8C);
        sub_2192EDF7C(v248, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
        goto LABEL_62;
      case 5:
        v133 = *v26;
        v134 = *(v26 + 1);
        v135 = *(v26 + 2);
        v136 = v26[24];
        v154 = memcpy(v247, v26 + 32, 0x1EAuLL);
        MEMORY[0x28223BE20](v154);
        v138 = &v226[-4];
        v155 = v241;
        v226[-2] = v240;
        v226[-1] = v155;
        v140 = v135;

LABEL_44:
        v156 = sub_2192E9AC8(v133, v134, v135, v136, v247, sub_2192EE104, v138, v239);
        goto LABEL_60;
      case 6:
        v104 = *v26;
        v114 = memcpy(v247, v26 + 8, 0x1EAuLL);
        MEMORY[0x28223BE20](v114);
        v116 = v240;
        v115 = v241;
        v226[-4] = v104;
        v226[-3] = v116;
        v226[-2] = v115;
        v117 = v239;
        v43 = sub_2192E8848(v104, v247, sub_2192EE11C, &v226[-6], v239);
        v119 = sub_2192E791C(v118);
        MEMORY[0x28223BE20](v119);
        v120 = &v226[-6];
        v226[-4] = v117;
        v226[-3] = v104;
        v226[-2] = v43;
        v226[-1] = a1;
LABEL_40:
        sub_219249504(sub_2192EE0E4, v120, v119);

        if ([*(v117 + 104) useOfflineMode] && (*(v104 + 32) & 1) == 0)
        {
          sub_218D978D0(v43, 0);
          v153 = 0;
        }

        else
        {
          v153 = 1;
        }

        [v43 setUserInteractionEnabled_];
        if (*(v104 + 16) - 1 < 2)
        {
          sub_2192ECCA4(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
          sub_219BEB824();
          v199 = swift_allocObject();
          v200 = xmmword_219C09BA0;
          goto LABEL_73;
        }

        if (!*(v104 + 16))
        {
          goto LABEL_75;
        }

        sub_2192ECCA4(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
        sub_219BEB824();
        v201 = swift_allocObject();
        v202 = xmmword_219C09BA0;
        goto LABEL_77;
      case 7:
        v104 = *v26;
        v184 = memcpy(v247, v26 + 8, 0x1EAuLL);
        MEMORY[0x28223BE20](v184);
        v186 = v240;
        v185 = v241;
        v226[-4] = v104;
        v226[-3] = v186;
        v226[-2] = v185;
        v108 = v239;
        v109 = sub_2192E8848(v104, v247, sub_2192EE11C, &v226[-6], v239);
        v111 = sub_2192E791C(v187);
        MEMORY[0x28223BE20](v111);
        v112 = &v226[-6];
        v226[-4] = v108;
        v226[-3] = v104;
        v226[-2] = v109;
        v226[-1] = a1;
        v113 = sub_2192ECC84;
LABEL_52:
        sub_219249504(v113, v112, v111);

        sub_2189D2C8C(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
        v188 = swift_allocObject();
        v241 = xmmword_219C09BA0;
        *(v188 + 16) = xmmword_219C09BA0;
        v43 = v109;
        v189 = sub_219BE8284();
        *(v188 + 56) = type metadata accessor for TagView();
        *(v188 + 32) = v189;
        v190 = sub_219BF5904();

        [v43 setAccessibilityElements_];

        if ([*(v108 + 104) useOfflineMode] && (*(v104 + 32) & 1) == 0)
        {
          sub_218D978D0(v43, 0);
          v191 = 0;
        }

        else
        {
          v191 = 1;
        }

        [v43 setUserInteractionEnabled_];
        if (*(v104 + 16) - 1 >= 2)
        {
          if (!*(v104 + 16))
          {
LABEL_75:
            sub_2192ECCA4(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
            v211 = *(sub_219BEB824() - 8);
            v239 = *(v211 + 72);
            v212 = (*(v211 + 80) + 32) & ~*(v211 + 80);
            v213 = swift_allocObject();
            *(v213 + 16) = xmmword_219C09EC0;
            *&v241 = v213 + v212;
            v228 = *MEMORY[0x277D74A88];
            v214 = v237;
            v227 = *(v237 + 104);
            v240 = v104;
            v215 = v236;
            v227(v236);
            v216 = sub_219BEB754();
            v217 = *(v216 - 8);
            v226[0] = *(v217 + 56);
            v226[1] = v217 + 56;
            v218 = v235;
            (v226[0])(v235, 1, 1, v216);
            v219 = v43;
            v220 = v232;
            sub_219BEB704();
            sub_219BEB7E4();
            (*(v234 + 8))(v220, v233);
            v221 = *(v214 + 8);
            v222 = v238;
            v221(v215, v238);
            (v227)(v215, v228, v222);
            (v226[0])(v218, 1, 1, v216);
            v223 = v229;
            sub_219BEB734();
            sub_219BEB7F4();
            (*(v231 + 8))(v223, v230);
            v221(v215, v222);
            goto LABEL_79;
          }

          sub_2192ECCA4(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
          sub_219BEB824();
          v201 = swift_allocObject();
          v202 = v241;
LABEL_77:
          *(v201 + 16) = v202;
          v204 = v236;
          v203 = v237;
          v205 = v238;
          (*(v237 + 104))(v236, *MEMORY[0x277D74A88], v238);
          v224 = sub_219BEB754();
          (*(*(v224 - 8) + 56))(v235, 1, 1, v224);
          v225 = v43;
          v208 = v229;
          sub_219BEB734();
          sub_219BEB7F4();
          v209 = v230;
          v210 = v231;
        }

        else
        {
          sub_2192ECCA4(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
          sub_219BEB824();
          v199 = swift_allocObject();
          v200 = v241;
LABEL_73:
          *(v199 + 16) = v200;
          v204 = v236;
          v203 = v237;
          v205 = v238;
          (*(v237 + 104))(v236, *MEMORY[0x277D74A88], v238);
          v206 = sub_219BEB754();
          (*(*(v206 - 8) + 56))(v235, 1, 1, v206);
          v207 = v43;
          v208 = v232;
          sub_219BEB704();
          sub_219BEB7E4();
          v209 = v233;
          v210 = v234;
        }

        (*(v210 + 8))(v208, v209);
        (*(v203 + 8))(v204, v205);
LABEL_79:
        sub_219BF69D4();
        sub_218B107AC(v247);

LABEL_63:

        break;
      case 8:
      case 9:
      case 11:
      case 12:
      case 19:
        v176 = *v26;
        v177 = *(v26 + 24);
        v178 = *(v26 + 56);
        v247[2] = *(v26 + 40);
        v247[3] = v178;
        v247[4] = *(v26 + 72);
        v247[0] = *(v26 + 8);
        v247[1] = v177;
        MEMORY[0x28223BE20](v39);
        v179 = v241;
        v226[-2] = v240;
        v226[-1] = v179;
        v180 = sub_2192EE100;
LABEL_56:
        v97 = sub_2192E62A0(v176, v247, v180);
        goto LABEL_57;
      case 10:
        v63 = *v26;
        sub_21874A384(0);
        v65 = *(v64 + 48);
        v66 = &v26[*(v64 + 64)];
        v67 = *(v66 + 4);
        v247[3] = *(v66 + 3);
        v247[4] = v67;
        v68 = *(v66 + 2);
        v247[1] = *(v66 + 1);
        v247[2] = v68;
        v247[0] = *v66;
        MEMORY[0x28223BE20](v64);
        v69 = v241;
        v226[-2] = v240;
        v226[-1] = v69;
        v43 = sub_2192E62A0(v63, v247, sub_2192EE100);

        sub_218748D40(0);
        (*(*(v70 - 8) + 8))(&v26[v65], v70);
        return v43;
      case 13:
        v59 = *(v26 + 1);
        v244 = *v26;
        v245 = v59;
        LODWORD(v246[0]) = *(v26 + 8);
        v60 = memcpy(v247, v26 + 40, 0x1EAuLL);
        MEMORY[0x28223BE20](v60);
        v61 = &v226[-4];
        v62 = v241;
        v226[-2] = v240;
        v226[-1] = v62;
        sub_2189CEED0(&v244, v243);
LABEL_38:
        v148 = sub_2192EA0F0(&v244, v247, sub_2192EE104, v61, v239);
        sub_2189CEF2C(&v244);
        v43 = v148;
        sub_219BF69D4();
        sub_2189CEF2C(&v244);
        goto LABEL_62;
      case 14:
        v54 = *v26;
        v94 = *(v26 + 24);
        v95 = *(v26 + 56);
        v247[2] = *(v26 + 40);
        v247[3] = v95;
        *&v247[4] = *(v26 + 9);
        v247[0] = *(v26 + 8);
        v247[1] = v94;
        MEMORY[0x28223BE20](v39);
        v96 = v241;
        v226[-2] = v240;
        v226[-1] = v96;
        v58 = sub_2192EE108;
LABEL_20:
        v97 = sub_2192E6690(v54, v247, v58);
LABEL_57:
        v43 = v97;

        return v43;
      case 15:
        v44 = type metadata accessor for FollowingMySportsModel;
        sub_2192ED778(0, &qword_280EC85E0, type metadata accessor for FollowingMySportsModel, "mySports layoutAttributes ");
        memcpy(v247, &v26[*(v50 + 48)], 0x1EAuLL);
        v51 = sub_218F3B0E0(v26, v20, type metadata accessor for FollowingMySportsModel);
        MEMORY[0x28223BE20](v51);
        v52 = v241;
        v226[-2] = v240;
        v226[-1] = v52;
        v53 = sub_2192ED750;
LABEL_18:
        v43 = sub_2192E5C00(v20, v247, v53);
        sub_219BF69D4();

        sub_218B107AC(v247);
        v93 = v20;
        goto LABEL_32;
      case 16:
        v44 = type metadata accessor for FollowingPuzzleHubModel;
        sub_2192ED778(0, &qword_280EC5118, type metadata accessor for FollowingPuzzleHubModel, "puzzleHub layoutAttributes ");
        memcpy(v247, &v26[*(v130 + 48)], 0x1EAuLL);
        v131 = sub_218F3B0E0(v26, v17, type metadata accessor for FollowingPuzzleHubModel);
        MEMORY[0x28223BE20](v131);
        v47 = &v226[-4];
        v132 = v241;
        v226[-2] = v240;
        v226[-1] = v132;
        v49 = sub_2192ED720;
LABEL_31:
        v43 = sub_2192EB984(v17, v247, v49, v47, v239);
        sub_219BF69D4();

        sub_218B107AC(v247);
        v93 = v17;
LABEL_32:
        sub_2192ED7E8(v93, v44);
        return v43;
      case 17:
        v164 = *(v26 + 1);
        v244 = *v26;
        v245 = v164;
        v246[0] = *(v26 + 2);
        *(v246 + 14) = *(v26 + 46);
        v165 = memcpy(v247, v26 + 64, 0x1EAuLL);
        MEMORY[0x28223BE20](v165);
        v127 = &v226[-4];
        v166 = v241;
        v226[-2] = v240;
        v226[-1] = v166;
        sub_2189CEE20(&v244, v243);
        v129 = sub_2192ED6FC;
LABEL_47:
        v167 = sub_2192EBF7C(&v244, v247, v129, v127, v239);
        sub_2189CEE7C(&v244);
        v43 = v167;
        sub_219BF69D4();
        sub_2189CEE7C(&v244);
        goto LABEL_62;
      case 18:
        v157 = *v26;
        v158 = *(v26 + 1);
        v159 = *(v26 + 2);
        v160 = v26[24];
        v195 = memcpy(v247, v26 + 32, 0x1EAuLL);
        MEMORY[0x28223BE20](v195);
        v162 = &v226[-4];
        v196 = v241;
        v226[-2] = v240;
        v226[-1] = v196;
        v140 = v159;

LABEL_59:
        v156 = sub_2192EC5A4(v157, v158, v159, v160, v247, sub_2192EE104, v162, v239);
LABEL_60:
        v197 = v156;

        v43 = v197;
        sub_219BF69D4();

        goto LABEL_61;
      case 20:
LABEL_7:
        sub_2192ECBCC(0);
        return sub_219BF6434();
      default:
        v32 = *v26;
        v33 = *(v26 + 1);
        v34 = *(v26 + 2);
        v40 = memcpy(v247, v26 + 24, 0x1EAuLL);
        MEMORY[0x28223BE20](v40);
        v36 = &v226[-4];
        v41 = v241;
        v226[-2] = v240;
        v226[-1] = v41;
        v38 = v34;

LABEL_6:
        v42 = sub_2192E8E48(v32, v33, v34, v247, sub_2192EE104, v36, v239);

        v43 = v42;
        sub_219BF69D4();

LABEL_61:

LABEL_62:
        sub_218B107AC(v247);
        goto LABEL_63;
    }
  }

  return v43;
}

id sub_2192E5C00(uint64_t a1, const void *a2, uint64_t (*a3)(__n128))
{
  v55 = a1;
  v53 = a2;
  v4 = type metadata accessor for FollowingMySportsModel(0);
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE71C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE8444();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3(v12);
  v16 = sub_219BE8234();
  (*(v11 + 104))(v14, *MEMORY[0x277D6DEE8], v10);
  sub_219BE8454();

  v17 = *MEMORY[0x277D6D920];
  v18 = *(v7 + 104);
  v18(v9, v17, v6);
  sub_219BE8264();
  v19 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v19 setBackgroundColor_];

  v18(v9, v17, v6);
  sub_219BE71B4();
  (*(v7 + 8))(v9, v6);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = type metadata accessor for FollowingMySportsModel;
  v23 = v54;
  v22 = v55;
  sub_2192EDBEC(v55, v54, type metadata accessor for FollowingMySportsModel);
  sub_218718690(v58, v57);
  v24 = *(v51 + 80);
  v51 = (v24 + 32) & ~v24;
  v25 = (v5 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  *(v26 + 24) = v21;
  v50 = type metadata accessor for FollowingMySportsModel;
  sub_218F3B0E0(v23, v26 + ((v24 + 32) & ~v24), type metadata accessor for FollowingMySportsModel);
  sub_2186CB1F0(v57, v26 + v25);
  v27 = v15;
  v28 = sub_219BE8294();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2192EDC54;
  *(v29 + 24) = v26;

  v30 = sub_219BE8244();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EDC54;
  *(v31 + 24) = v26;

  v32 = sub_219BE8254();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2192EDC54;
  *(v33 + 24) = v26;

  v34 = sub_219BE8284();
  v48 = *&v34[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v35 = swift_allocObject();
  v36 = v56;
  swift_weakInit();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v38 = v54;
  sub_2192EDBEC(v22, v54, v52);
  sub_218718690(v58, v57);
  v39 = v49;
  v40 = (v49 + 497) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  sub_218F3B0E0(v38, v41 + v51, v50);
  v42 = v53;
  memcpy((v41 + v39), v53, 0x1EAuLL);
  sub_2186CB1F0(v57, v41 + v40);
  sub_2192EDA74(v42, v57);
  v43 = v48;

  v44 = __swift_project_boxed_opaque_existential_1((v36 + 32), *(v36 + 56));
  v45 = sub_219BE8284();
  sub_218718690(v58, v57);
  sub_2191CF28C(v55, v45, v42, v57, *v44);

  sub_218D9828C(v57);
  [*(v36 + 104) useOfflineMode];
  [v27 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v58);
  return v27;
}

void *sub_2192E62A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(__n128))
{
  v4 = v3;
  v8 = sub_219BE71C4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3(v10);
  (*(v9 + 104))(v12, *MEMORY[0x277D6D920], v8);
  sub_219BE8264();
  v14 = *(v3 + 24);
  v15 = sub_219BE8284();
  [v15 setFrame_];
  [v15 setContentEdgeInsets_];
  __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
  sub_218C043F8(v15, *(a1 + 32), *(a1 + 40), *(a2 + 40));

  v16 = sub_219BE8284();
  v17 = *&v16[OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_onTap];

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;

  v20 = sub_219BE8284();

  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v21;
  sub_219BEA614();

  v23 = sub_219BE8284();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v4;
  sub_219BEA614();

  if ([*(v4 + 104) useOfflineMode])
  {
    v24 = sub_219BE8284();
    [v24 setEnabled_];
  }

  [v13 setIsAccessibilityElement_];
  v25 = sub_219BE8284();
  v26 = [v25 titleLabel];

  if (v26)
  {
    v27 = [v26 text];

    if (v27)
    {
      sub_219BF5414();
    }
  }

  sub_219BE8274();
  return v13;
}

id sub_2192E6690(uint64_t a1, double *a2, uint64_t (*a3)(__n128))
{
  v4 = v3;
  v8 = sub_219BE71C4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3(v10);
  (*(v9 + 104))(v12, *MEMORY[0x277D6D920], v8);
  sub_219BE8264();
  v14 = *(v4 + 72);
  v15 = sub_219BE8284();
  sub_2192ECD08(a1, v15, a2, v14);

  sub_2189D2C8C(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  v17 = v13;
  v18 = sub_219BE8284();
  *(v16 + 56) = type metadata accessor for FollowingEngagementBannerView();
  *(v16 + 32) = v18;
  v19 = sub_219BF5904();

  [v17 setAccessibilityElements_];

  return v17;
}

void *sub_2192E6854()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  sub_218774F78(v0 + 88);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  return v0;
}

uint64_t sub_2192E68AC()
{
  sub_2192E6854();

  return swift_deallocClassInstance();
}

id sub_2192E6978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2192E369C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

double sub_2192E69A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = sub_219BE8284();
      sub_218718690(a4, v13);
      v10 = a3[3];
      v11 = a3[4];
      v12 = __swift_project_boxed_opaque_existential_1(a3, v10);
      sub_218D97C8C(v12, v9, v13, v10, v11);

      sub_218D9828C(v13);
    }
  }

  return result;
}

double sub_2192E6A84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = [*(v13 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController) isEditing];
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
      }

      v15 = __swift_project_boxed_opaque_existential_1((v10 + 32), *(v10 + 56));
      sub_218718690(a5, v20);
      v16 = *v15;
      v17 = a3[3];
      v18 = a3[4];
      v19 = __swift_project_boxed_opaque_existential_1(a3, v17);
      sub_218D972A8(v19, v12, a4, v20, v14, v16, v17, v18);

      sub_218D9828C(v20);
    }
  }

  return result;
}

double sub_2192E6BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = sub_219BE8284();
      sub_218718690(a4, v10);
      sub_2191E03C0(a3, v9, v10);

      sub_218D9828C(v10);
    }
  }

  return result;
}

double sub_2192E6C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = [*(v13 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController) isEditing];
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
      }

      v15 = __swift_project_boxed_opaque_existential_1((v10 + 32), *(v10 + 56));
      sub_218718690(a5, v16);
      sub_2192ED1EC(a3, v12, a4, v16, v14, *v15);

      sub_218D9828C(v16);
    }
  }

  return result;
}

double sub_2192E6DAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + qword_280EDB508) - 2 >= 3)
  {
    v3 = sub_219BE61F4();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v6 = sub_219BEA7E4();

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = a2;
  }

  return result;
}

double sub_2192E70EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  sub_218950B84(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2192E840C();
  v12 = v11;
  v13 = *(*(a2 + 24) + 27);
  v72 = v9;
  v55 = v13 < 0 && (v13 & 1) != 0;
  v73 = MEMORY[0x277D84F90];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v66 = objc_opt_self();
  v67 = ObjCClassFromMetadata;
  v15 = [v66 bundleForClass_];
  sub_219BDB5E4();

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v54 = v16;
  v17 = swift_allocObject();
  v53 = xmmword_219C09BA0;
  *(v17 + 16) = xmmword_219C09BA0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v52 = sub_2186FC3BC();
  *(v17 + 64) = v52;
  v56 = v12;
  v57 = v10;
  *(v17 + 32) = v10;
  *(v17 + 40) = v12;

  sub_219BF5454();

  v18 = swift_allocObject();
  v69 = v3;
  swift_weakInit();
  v19 = *(v8 + 16);
  v20 = v68;
  v70 = a3;
  v64 = v19;
  v65 = v8 + 16;
  v19(v68, a3, v7);
  v21 = v7;
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v63 = *(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = a2;
  v24 = *(v8 + 32);
  v58 = v22;
  v25 = v20;
  v26 = v24;
  v27 = a2;
  v28 = v21;
  v71 = v8 + 32;
  v24(v23 + v22, v25, v21);
  sub_219BE6714();
  swift_allocObject();
  v60 = v27;

  v29 = sub_219BE6704();

  MEMORY[0x21CECC690](v30);
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  v62 = v26;
  sub_219BF5A54();
  v31 = [v66 bundleForClass_];
  v59 = v29;
  sub_219BDB5E4();
  v32 = v70;
  v33 = v57;
  v34 = v58;

  v35 = swift_allocObject();
  *(v35 + 16) = v53;
  v36 = v52;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = v36;
  v37 = v56;
  *(v35 + 32) = v33;
  *(v35 + 40) = v37;
  sub_219BF5454();

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v68;
  v64(v68, v32, v28);
  v40 = swift_allocObject();
  v41 = v60;
  *(v40 + 16) = v38;
  *(v40 + 24) = v41;
  v62(v40 + v34, v39, v28);
  swift_allocObject();

  sub_219BE6704();

  MEMORY[0x21CECC690](v42);
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v43 = [v66 bundleForClass_];
  sub_219BDB5E4();

  v44 = swift_allocObject();
  swift_weakInit();
  v64(v39, v70, v28);
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v41;
  v62(v45 + v34, v39, v28);
  swift_allocObject();

  sub_219BE6704();

  MEMORY[0x21CECC690](v46);
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

  v47 = v73;
  v48 = OBJC_IVAR____TtC7NewsUI27TagView_keyCommandBlocks;
  v49 = v61;
  swift_beginAccess();
  *(v49 + v48) = v47;

  return result;
}

uint64_t sub_2192E791C(__n128 a1)
{
  v1 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v2 = sub_219BE8284();
  v3 = *&v2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];

  if (v3)
  {
    v4 = sub_219BE8284();
    v5 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v6 = *&v4[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = sub_218EC4E8C(0);
      v9 = *&v4[v5];
      *&v4[v5] = v8;
      v10 = v8;

      v4 = v9;
    }

    MEMORY[0x21CECC690]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v1 = v21;
  }

  v11 = sub_219BE8284();
  v12 = *&v11[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];

  if (v12)
  {
    v13 = sub_219BE8284();
    v14 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v15 = *&v13[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v17 = sub_218EC4E8C(1u);
      v18 = *&v13[v14];
      *&v13[v14] = v17;
      v19 = v17;

      v13 = v18;
    }

    MEMORY[0x21CECC690]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    return v21;
  }

  return v1;
}

double sub_2192E7ACC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2192E6DAC(*a1, a3);
  v7 = sub_219BE8284();
  sub_2192E70EC(v7, a3, a5);

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21990141C(a3, a5);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_2192E7B84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219901D98(a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_2192E7C10(char *a2@<X8>)
{
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (swift_unownedRetainStrong(), , v4 = [*(Strong + OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController) isEditing], swift_unknownObjectRelease(), v4))
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
    v6 = [v5 accessibilityTraits];

    v7 = *MEMORY[0x277D76580] | v6;
    v8 = 1;
  }

  else
  {
    v9 = swift_unknownObjectUnownedLoadStrong();
    v10 = [v9 accessibilityTraits];

    v8 = 0;
    v7 = v10 & ~*MEMORY[0x277D76580];
  }

  v11 = swift_unknownObjectUnownedLoadStrong();
  [v11 setAccessibilityTraits_];

  *a2 = v8;
}

void sub_2192E7D28(_BYTE *a2@<X8>)
{
  v3 = *(swift_unownedRetainStrong() + 104);
  swift_unknownObjectRetain();

  v4 = [v3 useOfflineMode];
  swift_unknownObjectRelease();
  if (v4 && (swift_unownedRetainStrong(), Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
  {
    swift_unownedRetainStrong();
    v6 = off_282A8FB68;
    type metadata accessor for FollowingViewController(0);
    v7 = v6();
    swift_unknownObjectRelease();

    v8 = v7 & 1;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
}

void sub_2192E7E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2192ECCA4(0, &qword_27CC0DE50, MEMORY[0x277D6D508], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_219BE6174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        type metadata accessor for AccessoryButton(0);
        sub_2192EDF34(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
        sub_219BEB684();
        v15 = *(v14 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
        (*(v8 + 16))(v6, v10, v7);
        (*(v8 + 56))(v6, 0, 1, v7);
        v16 = *(v15 + 40);
        ObjectType = swift_getObjectType();
        (*(v16 + 88))(a3, v6, 2, ObjectType, v16);

        sub_2192EDF7C(v6, &qword_27CC0DE50, MEMORY[0x277D6D508], MEMORY[0x277D83D88], sub_2192ECCA4);
        (*(v8 + 8))(v10, v7);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_2192E810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2192ECCA4(0, &qword_27CC0DE50, MEMORY[0x277D6D508], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_219BE6174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        type metadata accessor for AccessoryButton(0);
        sub_2192EDF34(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
        sub_219BEB684();
        v15 = *(v14 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
        v19 = a3;
        v16 = *(v15 + 40);
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(v6, v10, v7);
        (*(v8 + 56))(v6, 0, 1, v7);
        (*(v16 + 96))(v19, v6, ObjectType, v16);

        sub_2192EDF7C(v6, &qword_27CC0DE50, MEMORY[0x277D6D508], MEMORY[0x277D83D88], sub_2192ECCA4);
        (*(v8 + 8))(v10, v7);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2192E840C()
{
  sub_218BDEDE4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

double sub_2192E8524(uint64_t a1, uint64_t a2)
{
  sub_2192ECCA4(0, &qword_27CC0DE50, MEMORY[0x277D6D508], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
      v9 = sub_219BE6174();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = *(v8 + 40);
      ObjectType = swift_getObjectType();
      (*(v10 + 88))(a2, v5, 2, ObjectType, v10);

      sub_2192EDF7C(v5, &qword_27CC0DE50, MEMORY[0x277D6D508], MEMORY[0x277D83D88], sub_2192ECCA4);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_2192E86EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(*(Strong + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 56))(a2, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_2192E87B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2199020A0(a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

id sub_2192E8848(uint64_t a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v45 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = type metadata accessor for FollowingTagModel();
  v50[4] = &off_282A3ABF8;
  v50[0] = a1;
  v46 = a1;

  v16 = a3(v15);
  v17 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v18 = *MEMORY[0x277D6D920];
  v19 = *(v8 + 104);
  v19(v10, v18, v7);
  sub_219BE8264();
  v20 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v20 setBackgroundColor_];

  v19(v10, v18, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v21 = swift_allocObject();
  v22 = v45;
  swift_weakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  sub_2186CB1F0(v47, v24 + 32);
  sub_2186CB1F0(v48, v24 + 72);
  v25 = v16;
  v26 = sub_219BE8294();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2192EE118;
  *(v27 + 24) = v24;

  v28 = sub_219BE8244();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2192EE118;
  *(v29 + 24) = v24;

  v30 = sub_219BE8254();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EE118;
  *(v31 + 24) = v24;

  v32 = sub_219BE8284();
  v33 = *&v32[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = v35;
  sub_2186CB1F0(v47, (v36 + 4));
  v37 = v44;
  memcpy(v36 + 9, v44, 0x1EAuLL);
  sub_2186CB1F0(v48, (v36 + 71));
  sub_2192EDA74(v37, v47);

  v38 = __swift_project_boxed_opaque_existential_1((v22 + 32), *(v22 + 56));
  v39 = sub_219BE8284();
  sub_218718690(v49, v47);
  v40 = v46;
  sub_2191CE25C(v46, v39, v37, v47, *v38);

  sub_218D9828C(v47);
  if ([*(v22 + 104) useOfflineMode] && (*(v40 + 32) & 1) == 0)
  {
    sub_218D978D0(v25, 0);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  [v25 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v25;
}

id sub_2192E8E48(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t (*a5)(__n128), uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v45[1] = a6;
  v46 = a5;
  v51 = a4;
  v10 = sub_219BE71C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE8444();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = &type metadata for FollowingForYouModel;
  v55[4] = &off_282A84BE0;
  v47 = a1;
  v55[0] = a1;
  v55[1] = a2;
  v55[2] = a3;
  v50 = a3;
  v18 = a3;
  v48 = a2;

  v20 = (v46)(v19);
  v21 = sub_219BE8234();
  (*(v15 + 104))(v17, *MEMORY[0x277D6DEE8], v14);
  sub_219BE8454();

  v22 = *MEMORY[0x277D6D920];
  v23 = *(v11 + 104);
  v23(v13, v22, v10);
  sub_219BE8264();
  v24 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v24 setBackgroundColor_];

  v23(v13, v22, v10);
  sub_219BE71B4();
  (*(v11 + 8))(v13, v10);
  v25 = swift_allocObject();
  v26 = v49;
  swift_weakInit();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v55, v52);
  sub_218718690(v54, v53);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  sub_2186CB1F0(v52, v28 + 32);
  sub_2186CB1F0(v53, v28 + 72);
  v29 = v20;
  v30 = sub_219BE8294();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EDA50;
  *(v31 + 24) = v28;

  v32 = sub_219BE8244();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2192EDA50;
  *(v33 + 24) = v28;

  v34 = sub_219BE8254();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2192EDA50;
  *(v35 + 24) = v28;

  v36 = sub_219BE8284();
  v37 = *&v36[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v55, v52);
  sub_218718690(v54, v53);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  sub_2186CB1F0(v52, (v40 + 4));
  v41 = v51;
  memcpy(v40 + 9, v51, 0x1EAuLL);
  sub_2186CB1F0(v53, (v40 + 71));
  sub_2192EDA74(v41, v52);

  v42 = __swift_project_boxed_opaque_existential_1((v26 + 32), *(v26 + 56));
  v43 = sub_219BE8284();
  sub_218718690(v54, v52);
  sub_2191D77A4(v47, v48, v50, v43, v41, v52, *v42);

  sub_218D9828C(v52);
  [*(v26 + 104) useOfflineMode];
  [v29 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v29;
}

id sub_2192E9444(uint64_t a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v46 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for FollowingSavedModel;
  v50[4] = &off_282A95760;
  v15 = swift_allocObject();
  v50[0] = v15;
  v52 = *(a1 + 8);
  v51 = *(a1 + 24);
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  v44 = a1;
  *(v15 + 48) = *(a1 + 32);
  sub_2192ED848(&v52, v47, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_2189D2C8C);
  v17 = sub_2192ED848(&v51, v47, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
  v18 = a3(v17);
  v19 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v20 = *MEMORY[0x277D6D920];
  v21 = *(v8 + 104);
  v21(v10, v20, v7);
  sub_219BE8264();
  v22 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v22 setBackgroundColor_];

  v21(v10, v20, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v23 = swift_allocObject();
  v24 = v46;
  swift_weakInit();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  sub_2186CB1F0(v47, v26 + 32);
  sub_2186CB1F0(v48, v26 + 72);
  v27 = v18;
  v28 = sub_219BE8294();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2192EE118;
  *(v29 + 24) = v26;

  v30 = sub_219BE8244();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EE118;
  *(v31 + 24) = v26;

  v32 = sub_219BE8254();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2192EE118;
  *(v33 + 24) = v26;

  v34 = sub_219BE8284();
  v35 = *&v34[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v38 = swift_allocObject();
  v38[2] = v36;
  v38[3] = v37;
  sub_2186CB1F0(v47, (v38 + 4));
  v39 = v45;
  memcpy(v38 + 9, v45, 0x1EAuLL);
  sub_2186CB1F0(v48, (v38 + 71));
  sub_2192EDA74(v39, v47);

  v40 = __swift_project_boxed_opaque_existential_1((v24 + 32), *(v24 + 56));
  v41 = sub_219BE8284();
  sub_218718690(v49, v47);
  sub_2191D6C7C(v44, v41, v39, v47, *v40);

  sub_218D9828C(v47);
  [*(v24 + 104) useOfflineMode];
  [v27 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v27;
}

id sub_2192E9AC8(uint64_t a1, uint64_t a2, void *a3, int a4, const void *a5, uint64_t (*a6)(__n128), uint64_t a7, uint64_t a8)
{
  v56 = a5;
  v57 = a8;
  v50 = a7;
  v51 = a6;
  v12 = sub_219BE71C4();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE8444();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[3] = &type metadata for FollowingHistoryModel;
  v61[4] = &off_282A5FBD0;
  v19 = swift_allocObject();
  v61[0] = v19;
  v53 = a1;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  v52 = a4;
  *(v19 + 40) = a4;
  v20 = v49;
  v55 = a3;
  v21 = a3;
  v54 = a2;

  v23 = (v51)(v22);
  v24 = sub_219BE8234();
  (*(v16 + 104))(v18, *MEMORY[0x277D6DEE8], v15);
  sub_219BE8454();

  v25 = *MEMORY[0x277D6D920];
  v26 = *(v20 + 104);
  v26(v14, v25, v12);
  sub_219BE8264();
  v27 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v27 setBackgroundColor_];

  v26(v14, v25, v12);
  sub_219BE71B4();
  (*(v20 + 8))(v14, v12);
  v28 = swift_allocObject();
  v29 = v57;
  swift_weakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v61, v58);
  sub_218718690(v60, v59);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = v30;
  sub_2186CB1F0(v58, v31 + 32);
  sub_2186CB1F0(v59, v31 + 72);
  v32 = v23;
  v33 = sub_219BE8294();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2192EE118;
  *(v34 + 24) = v31;

  v35 = sub_219BE8244();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2192EE118;
  *(v36 + 24) = v31;

  v37 = sub_219BE8254();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2192EE118;
  *(v38 + 24) = v31;

  v39 = sub_219BE8284();
  v40 = *&v39[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v61, v58);
  sub_218718690(v60, v59);
  v43 = swift_allocObject();
  v43[2] = v41;
  v43[3] = v42;
  sub_2186CB1F0(v58, (v43 + 4));
  v44 = v56;
  memcpy(v43 + 9, v56, 0x1EAuLL);
  sub_2186CB1F0(v59, (v43 + 71));
  sub_2192EDA74(v44, v58);

  v45 = __swift_project_boxed_opaque_existential_1((v29 + 32), *(v29 + 56));
  v46 = sub_219BE8284();
  sub_218718690(v60, v58);
  sub_2191D6170(v53, v54, v55, v52 & 1, v46, v44, v58, *v45);

  sub_218D9828C(v58);
  [*(v29 + 104) useOfflineMode];
  [v32 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return v32;
}

id sub_2192EA0F0(uint64_t a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v49 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = &type metadata for FollowingSharedWithYouModel;
  v54[4] = &off_282A8F9F0;
  v15 = swift_allocObject();
  v54[0] = v15;
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  v17 = *(a1 + 32);
  v47 = v15;
  *(v15 + 48) = v17;
  v18 = sub_2189CEED0(a1, v50);
  v19 = a3(v18);
  v20 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v21 = *MEMORY[0x277D6D920];
  v22 = *(v8 + 104);
  v22(v10, v21, v7);
  sub_219BE8264();
  v23 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v23 setBackgroundColor_];

  v22(v10, v21, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v24 = swift_allocObject();
  v25 = v49;
  swift_weakInit();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v54, v50);
  sub_218718690(v53, v51);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  sub_2186CB1F0(v50, v27 + 32);
  sub_2186CB1F0(v51, v27 + 72);
  v28 = v19;
  v29 = sub_219BE8294();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2192EE118;
  *(v30 + 24) = v27;

  v31 = sub_219BE8244();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2192EE118;
  *(v32 + 24) = v27;

  v33 = sub_219BE8254();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2192EE118;
  *(v34 + 24) = v27;

  v35 = sub_219BE8284();
  v36 = *&v35[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v54, v50);
  sub_218718690(v53, v51);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v38;
  sub_2186CB1F0(v50, (v39 + 4));
  v40 = v48;
  memcpy(v39 + 9, v48, 0x1EAuLL);
  sub_2186CB1F0(v51, (v39 + 71));
  sub_2192EDA74(v40, v50);

  v41 = __swift_project_boxed_opaque_existential_1((v25 + 32), *(v25 + 56));
  v42 = sub_219BE8284();
  sub_218718690(v53, v50);
  v43 = *v41;
  v44 = *(v47 + 32);
  v51[0] = *(v47 + 16);
  v51[1] = v44;
  v52 = *(v47 + 48);
  sub_2191D51E0(v51, v42, v40, v50, v43);

  sub_218D9828C(v50);
  [*(v25 + 104) useOfflineMode];
  [v28 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v28;
}

id sub_2192EA708(uint64_t a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v45 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = type metadata accessor for FollowingEditorialModel();
  v50[4] = &off_282A546A0;
  v50[0] = a1;
  v46 = a1;

  v16 = a3(v15);
  v17 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v18 = *MEMORY[0x277D6D920];
  v19 = *(v8 + 104);
  v19(v10, v18, v7);
  sub_219BE8264();
  v20 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v20 setBackgroundColor_];

  v19(v10, v18, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v21 = swift_allocObject();
  v22 = v45;
  swift_weakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  sub_2186CB1F0(v47, v24 + 32);
  sub_2186CB1F0(v48, v24 + 72);
  v25 = v16;
  v26 = sub_219BE8294();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2192EE118;
  *(v27 + 24) = v24;

  v28 = sub_219BE8244();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2192EE118;
  *(v29 + 24) = v24;

  v30 = sub_219BE8254();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EE118;
  *(v31 + 24) = v24;

  v32 = sub_219BE8284();
  v33 = *&v32[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = v35;
  sub_2186CB1F0(v47, (v36 + 4));
  v37 = v44;
  memcpy(v36 + 9, v44, 0x1EAuLL);
  sub_2186CB1F0(v48, (v36 + 71));
  sub_2192EDA74(v37, v47);

  v38 = __swift_project_boxed_opaque_existential_1((v22 + 32), *(v22 + 56));
  v39 = sub_219BE8284();
  sub_218718690(v49, v47);
  v40 = v46;
  sub_2191D41D4(v46, v39, v37, v47, *v38);

  sub_218D9828C(v47);
  if ([*(v22 + 104) useOfflineMode] && (*(v40 + 24) & 1) == 0)
  {
    sub_218D978D0(v25, 0);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  [v25 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v25;
}

id sub_2192EAD08(uint64_t a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v46 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for FollowingMagazineModel;
  v50[4] = &off_282A81B18;
  v15 = swift_allocObject();
  v50[0] = v15;
  v52 = *(a1 + 8);
  v51 = *(a1 + 24);
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  v44 = a1;
  *(v15 + 48) = *(a1 + 32);
  sub_2192ED848(&v52, v47, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_2189D2C8C);
  v17 = sub_2192ED848(&v51, v47, &qword_280E8DA70, &qword_280E8DA80, 0x277D75348, sub_2186E5128);
  v18 = a3(v17);
  v19 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v20 = *MEMORY[0x277D6D920];
  v21 = *(v8 + 104);
  v21(v10, v20, v7);
  sub_219BE8264();
  v22 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v22 setBackgroundColor_];

  v21(v10, v20, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v23 = swift_allocObject();
  v24 = v46;
  swift_weakInit();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  sub_2186CB1F0(v47, v26 + 32);
  sub_2186CB1F0(v48, v26 + 72);
  v27 = v18;
  v28 = sub_219BE8294();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2192EE118;
  *(v29 + 24) = v26;

  v30 = sub_219BE8244();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EE118;
  *(v31 + 24) = v26;

  v32 = sub_219BE8254();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2192EE118;
  *(v33 + 24) = v26;

  v34 = sub_219BE8284();
  v35 = *&v34[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v50, v47);
  sub_218718690(v49, v48);
  v38 = swift_allocObject();
  v38[2] = v36;
  v38[3] = v37;
  sub_2186CB1F0(v47, (v38 + 4));
  v39 = v45;
  memcpy(v38 + 9, v45, 0x1EAuLL);
  sub_2186CB1F0(v48, (v38 + 71));
  sub_2192EDA74(v39, v47);

  v40 = __swift_project_boxed_opaque_existential_1((v24 + 32), *(v24 + 56));
  v41 = sub_219BE8284();
  sub_218718690(v49, v47);
  sub_2191D36C8(v44, v41, v39, v47, *v40);

  sub_218D9828C(v47);
  [*(v24 + 104) useOfflineMode];
  [v27 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v27;
}

id sub_2192EB38C(uint64_t a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v44 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for FollowingAudioModel(0);
  v48[4] = &off_282A41AE0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v15 = sub_2192EDBEC(a1, boxed_opaque_existential_1, type metadata accessor for FollowingAudioModel);
  v16 = a3(v15);
  v17 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v18 = *MEMORY[0x277D6D920];
  v19 = *(v8 + 104);
  v19(v10, v18, v7);
  sub_219BE8264();
  v20 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v20 setBackgroundColor_];

  v19(v10, v18, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v21 = swift_allocObject();
  v22 = v44;
  swift_weakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v48, v45);
  sub_218718690(v47, v46);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  sub_2186CB1F0(v45, v24 + 32);
  sub_2186CB1F0(v46, v24 + 72);
  v25 = v16;
  v26 = sub_219BE8294();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2192EE118;
  *(v27 + 24) = v24;

  v28 = sub_219BE8244();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2192EE118;
  *(v29 + 24) = v24;

  v30 = sub_219BE8254();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EE118;
  *(v31 + 24) = v24;

  v32 = sub_219BE8284();
  v33 = *&v32[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v48, v45);
  sub_218718690(v47, v46);
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = v35;
  sub_2186CB1F0(v45, (v36 + 4));
  v37 = v43;
  memcpy(v36 + 9, v43, 0x1EAuLL);
  sub_2186CB1F0(v46, (v36 + 71));
  sub_2192EDA74(v37, v45);

  v38 = __swift_project_boxed_opaque_existential_1((v22 + 32), *(v22 + 56));
  v39 = sub_219BE8284();
  sub_218718690(v47, v45);
  sub_2191D26F8(boxed_opaque_existential_1, v39, v37, v45, *v38);

  sub_218D9828C(v45);
  [*(v22 + 104) useOfflineMode];
  [v25 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v25;
}

id sub_2192EB984(uint64_t a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v44 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for FollowingPuzzleHubModel(0);
  v48[4] = &off_282A6F6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v15 = sub_2192EDBEC(a1, boxed_opaque_existential_1, type metadata accessor for FollowingPuzzleHubModel);
  v16 = a3(v15);
  v17 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v18 = *MEMORY[0x277D6D920];
  v19 = *(v8 + 104);
  v19(v10, v18, v7);
  sub_219BE8264();
  v20 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v20 setBackgroundColor_];

  v19(v10, v18, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v21 = swift_allocObject();
  v22 = v44;
  swift_weakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v48, v45);
  sub_218718690(v47, v46);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  sub_2186CB1F0(v45, v24 + 32);
  sub_2186CB1F0(v46, v24 + 72);
  v25 = v16;
  v26 = sub_219BE8294();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2192EE118;
  *(v27 + 24) = v24;

  v28 = sub_219BE8244();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2192EE118;
  *(v29 + 24) = v24;

  v30 = sub_219BE8254();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2192EE118;
  *(v31 + 24) = v24;

  v32 = sub_219BE8284();
  v33 = *&v32[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v48, v45);
  sub_218718690(v47, v46);
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = v35;
  sub_2186CB1F0(v45, (v36 + 4));
  v37 = v43;
  memcpy(v36 + 9, v43, 0x1EAuLL);
  sub_2186CB1F0(v46, (v36 + 71));
  sub_2192EDA74(v37, v45);

  v38 = __swift_project_boxed_opaque_existential_1((v22 + 32), *(v22 + 56));
  v39 = sub_219BE8284();
  sub_218718690(v47, v45);
  sub_2191D1C74(boxed_opaque_existential_1, v39, v37, v45, *v38);

  sub_218D9828C(v45);
  [*(v22 + 104) useOfflineMode];
  [v25 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v25;
}

id sub_2192EBF7C(_OWORD *a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v49 = a5;
  v7 = sub_219BE71C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8444();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = &type metadata for FollowingFoodModel;
  v54[4] = &off_282A42E50;
  v15 = swift_allocObject();
  v54[0] = v15;
  v16 = a1[1];
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = a1[2];
  v17 = *(a1 + 46);
  v47 = v15;
  *(v15 + 62) = v17;
  v18 = sub_2189CEE20(a1, v50);
  v19 = a3(v18);
  v20 = sub_219BE8234();
  (*(v12 + 104))(v14, *MEMORY[0x277D6DEE8], v11);
  sub_219BE8454();

  v21 = *MEMORY[0x277D6D920];
  v22 = *(v8 + 104);
  v22(v10, v21, v7);
  sub_219BE8264();
  v23 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v23 setBackgroundColor_];

  v22(v10, v21, v7);
  sub_219BE71B4();
  (*(v8 + 8))(v10, v7);
  v24 = swift_allocObject();
  v25 = v49;
  swift_weakInit();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v54, v50);
  sub_218718690(v53, v52);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  sub_2186CB1F0(v50, v27 + 32);
  sub_2186CB1F0(v52, v27 + 72);
  v28 = v19;
  v29 = sub_219BE8294();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2192EE118;
  *(v30 + 24) = v27;

  v31 = sub_219BE8244();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2192EE118;
  *(v32 + 24) = v27;

  v33 = sub_219BE8254();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2192EE118;
  *(v34 + 24) = v27;

  v35 = sub_219BE8284();
  v36 = *&v35[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v54, v50);
  sub_218718690(v53, v52);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v38;
  sub_2186CB1F0(v50, (v39 + 4));
  v40 = v48;
  memcpy(v39 + 9, v48, 0x1EAuLL);
  sub_2186CB1F0(v52, (v39 + 71));
  sub_2192EDA74(v40, v50);

  v41 = __swift_project_boxed_opaque_existential_1((v25 + 32), *(v25 + 56));
  v42 = sub_219BE8284();
  sub_218718690(v53, v52);
  v43 = *v41;
  v44 = v47[2];
  v50[0] = v47[1];
  v50[1] = v44;
  v51[0] = v47[3];
  *(v51 + 14) = *(v47 + 62);
  sub_2191D0D64(v50, v42, v40, v52, v43);

  sub_218D9828C(v52);
  [*(v25 + 104) useOfflineMode];
  [v28 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v28;
}

id sub_2192EC5A4(uint64_t a1, uint64_t a2, void *a3, int a4, const void *a5, uint64_t (*a6)(__n128), uint64_t a7, uint64_t a8)
{
  v56 = a5;
  v57 = a8;
  v50 = a7;
  v51 = a6;
  v12 = sub_219BE71C4();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE8444();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[3] = &type metadata for FollowingRecipeBoxModel;
  v61[4] = &off_282A55700;
  v19 = swift_allocObject();
  v61[0] = v19;
  v53 = a1;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  v52 = a4;
  *(v19 + 40) = a4;
  v20 = v49;
  v55 = a3;
  v21 = a3;
  v54 = a2;

  v23 = (v51)(v22);
  v24 = sub_219BE8234();
  (*(v16 + 104))(v18, *MEMORY[0x277D6DEE8], v15);
  sub_219BE8454();

  v25 = *MEMORY[0x277D6D920];
  v26 = *(v20 + 104);
  v26(v14, v25, v12);
  sub_219BE8264();
  v27 = sub_219BE8234();
  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [v27 setBackgroundColor_];

  v26(v14, v25, v12);
  sub_219BE71B4();
  (*(v20 + 8))(v14, v12);
  v28 = swift_allocObject();
  v29 = v57;
  swift_weakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(v61, v58);
  sub_218718690(v60, v59);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = v30;
  sub_2186CB1F0(v58, v31 + 32);
  sub_2186CB1F0(v59, v31 + 72);
  v32 = v23;
  v33 = sub_219BE8294();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2192EE118;
  *(v34 + 24) = v31;

  v35 = sub_219BE8244();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2192EE118;
  *(v36 + 24) = v31;

  v37 = sub_219BE8254();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2192EE118;
  *(v38 + 24) = v31;

  v39 = sub_219BE8284();
  v40 = *&v39[OBJC_IVAR____TtC7NewsUI27TagView_isEditing];

  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218718690(v61, v58);
  sub_218718690(v60, v59);
  v43 = swift_allocObject();
  v43[2] = v41;
  v43[3] = v42;
  sub_2186CB1F0(v58, (v43 + 4));
  v44 = v56;
  memcpy(v43 + 9, v56, 0x1EAuLL);
  sub_2186CB1F0(v59, (v43 + 71));
  sub_2192EDA74(v44, v58);

  v45 = __swift_project_boxed_opaque_existential_1((v29 + 32), *(v29 + 56));
  v46 = sub_219BE8284();
  sub_218718690(v60, v58);
  sub_2191D025C(v53, v54, v55, v52 & 1, v46, v44, v58, *v45);

  sub_218D9828C(v58);
  [*(v29 + 104) useOfflineMode];
  [v32 setUserInteractionEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return v32;
}

void sub_2192ECBCC(uint64_t a1)
{
  if (!qword_280EE4D28)
  {
    sub_219BE58A4();
    v1 = sub_219BE82A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4D28);
    }
  }
}

void sub_2192ECCA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2192ECD08(uint64_t a1, char *a2, double *a3, uint64_t a4)
{
  if (swift_unknownObjectWeakLoadStrong() && (v7 = off_282A2F300, type metadata accessor for MainTabBarController(0), v8 = v7(), swift_unknownObjectRelease(), (v8 & 1) == 0))
  {
    v15 = __swift_project_boxed_opaque_existential_1((a4 + 112), *(a4 + 136));
    v16 = a3[1];
    v17 = a3[2];
    v18 = a3[3];
    v19 = a3[4];
    __swift_project_boxed_opaque_existential_1((*v15 + 16), *(*v15 + 40));
    v41.origin.x = v16;
    v41.origin.y = v17;
    v41.size.width = v18;
    v41.size.height = v19;
    CGRectGetWidth(v41);
    v20 = sub_219BE3AA4();
    FollowingEngagementBannerView.engagementView.setter(v20);
    v21 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
    swift_beginAccess();
    [*&a2[v21] setFrame_];
    v22 = *&a2[v21];
    if (v22)
    {
      v23 = v22;
      v42.origin.x = v16;
      v42.origin.y = v17;
      v42.size.width = v18;
      v42.size.height = v19;
      [v23 setHidden_];
    }

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v24 = sub_219BE5434();
    __swift_project_value_buffer(v24, qword_280F627F0);
    v25 = a2;
    v26 = sub_219BE5414();
    v27 = sub_219BF61E4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v28 = 138412802;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2080;
      v31 = v25;
      v32 = sub_219BF6B34();
      v34 = sub_2186D1058(v32, v33, &v39);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2080;
      v35 = sub_219BF6B34();
      v37 = sub_2186D1058(v35, v36, &v39);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_2186C1000, v26, v27, "Rendered %@ w/ frame=%s, bannerFrame=%s", v28, 0x20u);
      sub_2192EDF7C(v29, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, sub_2186E5128);
      MEMORY[0x21CECF960](v29, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v30, -1, -1);
      MEMORY[0x21CECF960](v28, -1, -1);
    }
  }

  else
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F627F0);
    v10 = a2;
    oslog = sub_219BE5414();
    v11 = sub_219BF61E4();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      _os_log_impl(&dword_2186C1000, oslog, v11, "Ignoring request to render %@, reason='sidebar is visible'", v12, 0xCu);
      sub_2192EDF7C(v13, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, sub_2186E5128);
      MEMORY[0x21CECF960](v13, -1, -1);
      MEMORY[0x21CECF960](v12, -1, -1);
    }
  }
}

void sub_2192ED1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = *(sub_219BF69C4() + 16);

  if (v10 || sub_219093144(2u, *(*(a3 + 472) + 16)) || (a5 & 1) == 0)
  {
    [*(a6 + 224) useOfflineMode];
    sub_218D978D0(a2, 1);
  }

  else
  {
    v60 = sub_219BE8284();
    v61 = *&v60[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

    [v61 setEnabled_];
  }

  v11 = sub_219BE8284();
  v12 = *&v11[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  v13 = [v12 isEnabled];
  v14 = sub_219BE8284();
  v15 = *MEMORY[0x277D76580];
  v16 = TagView.accessibilityTraits.getter();
  v17 = v16 & v15;
  if (v13)
  {
    if (v17)
    {
      v18 = ~v15;
    }

    else
    {
      v18 = -1;
    }

    v70.super_class = type metadata accessor for TagView();
    objc_msgSendSuper2(&v70, sel_setAccessibilityTraits_, v18 & v16, v14, v70.super_class, v71.receiver, v71.super_class);
  }

  else
  {
    if (v17 == v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

    v71.super_class = type metadata accessor for TagView();
    objc_msgSendSuper2(&v71, sel_setAccessibilityTraits_, v19 | v16, v70.receiver, v70.super_class, v14, v71.super_class);
  }

  v20 = sub_219BE8284();
  v21 = *&v20[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  v22 = 32;
  if (a5)
  {
    v22 = 64;
  }

  v23 = 40;
  if (a5)
  {
    v23 = 72;
  }

  v24 = 48;
  if (a5)
  {
    v24 = 80;
  }

  v25 = 56;
  if (a5)
  {
    v25 = 88;
  }

  [v21 setFrame_];

  v26 = sub_219BE8284();
  v27 = *&v26[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

  v28 = 176;
  v29 = 168;
  v30 = 160;
  v31 = 152;
  if ((a5 & 1) == 0)
  {
    v31 = 120;
    v30 = 128;
    v29 = 136;
    v28 = 144;
  }

  [v27 setFrame_];

  v32 = *(*(a3 + 472) + 16);
  if (sub_219093144(8u, v32))
  {
    v33 = sub_219BE8284();
    v34 = *&v33[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

    v35 = a5 & 1;
    v36 = 32;
    if (a5)
    {
      v36 = 376;
    }

    v37 = 40;
    if (a5)
    {
      v37 = 384;
    }

    v38 = 48;
    if (a5)
    {
      v38 = 392;
    }

    v39 = 56;
    if (a5)
    {
      v39 = 400;
    }

    [v34 setFrame_];

    v40 = sub_219BE8284();
    v41 = *&v40[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

    v42 = 432;
    v43 = 424;
    v44 = 416;
    v45 = 408;
    v46 = a5 & 1;
    v47 = v35 == 0;
    if (a5)
    {
      v48 = 464;
    }

    else
    {
      v48 = 208;
    }

    v49 = a5;
    if (a5)
    {
      v50 = 456;
    }

    else
    {
      v50 = 200;
    }

    if (v35)
    {
      v51 = 448;
    }

    else
    {
      v51 = 192;
    }

    if (v35)
    {
      v52 = 440;
    }

    else
    {
      v52 = 184;
    }

    if (v47)
    {
      v45 = 32;
    }

    if (!v46)
    {
      v44 = 40;
      v43 = 48;
      v42 = 56;
    }

    [v41 setFrame_];

    v53 = sub_219BE8284();
    v54 = *&v53[OBJC_IVAR____TtC7NewsUI27TagView_imageView];

    v55 = *(a3 + v50);
    a5 = v49;
    [v54 setFrame_];
  }

  if (sub_219093144(2u, v32))
  {
    v56 = sub_219BE8284();
    v57 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v58 = *&v56[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
    if (v58)
    {
      v59 = v58;
    }

    else
    {
      v62 = sub_218EC4E8C(1u);
      v63 = *&v56[v57];
      *&v56[v57] = v62;
      v59 = v62;

      v56 = v63;
    }

    [v59 setHidden_];
  }

  v64 = sub_219BE8284();
  v65 = *&v64[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];

  v66 = 312;
  if (a5)
  {
    v66 = 344;
  }

  v67 = 320;
  if (a5)
  {
    v67 = 352;
  }

  v68 = 328;
  if (a5)
  {
    v68 = 360;
  }

  v69 = 336;
  if (a5)
  {
    v69 = 368;
  }

  [v65 setFrame_];
}

void sub_2192ED778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2192ED7E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2192ED848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_2192ED928(uint64_t a1)
{
  if (!qword_280EE4D40)
  {
    type metadata accessor for FollowingSettingsButtonView();
    sub_2192EDF34(&qword_280EB8B18, type metadata accessor for FollowingSettingsButtonView, &unk_219C781A4);
    v1 = sub_219BE82A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4D40);
    }
  }
}

void sub_2192ED9BC(uint64_t a1)
{
  if (!qword_280EE4D38)
  {
    type metadata accessor for FollowingEngagementBannerView();
    sub_2192EDF34(&qword_280EB09C8, type metadata accessor for FollowingEngagementBannerView, &protocol conformance descriptor for FollowingEngagementBannerView);
    v1 = sub_219BE82A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4D38);
    }
  }
}

uint64_t sub_2192EDAD0(uint64_t a1)
{
  sub_219BED0C4();
  sub_2191CE1C8(0);
  sub_219BF6454();
  sub_219BF6454();
  sub_219BF6454();
  sub_219BF6454();
  sub_219BF6454();
  sub_219BF6454();
  sub_2192ED928(0);
  sub_219BF6454();
  sub_2192ED9BC(0);
  sub_219BF6454();
  sub_2192ECBCC(0);
  return sub_219BF6454();
}

uint64_t sub_2192EDBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2192EDC54()
{
  v1 = *(type metadata accessor for FollowingMySportsModel(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2192E6BC0(v3, v4, v0 + v2, v5);
}

double sub_2192EDCE4()
{
  v1 = *(type metadata accessor for FollowingMySportsModel(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_2192E6C88(v4, v5, v0 + v2, v0 + v3, v0 + ((v3 + 497) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_257Tm()
{
  sub_218950B84(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2192EDE8C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  sub_218950B84(0);
  v3 = *(v2 - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return a1(v4, v5, v6);
}

uint64_t sub_2192EDF34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2192EDF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroy_305Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm_3()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 568));

  return swift_deallocObject();
}

double sub_2192EE120(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v6 = sub_219BE5134();
  v25 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE51D4();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875FAA8(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_219BF5BF4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v27, v9);
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v6);
  sub_219BF5BD4();

  v17 = v29;
  v18 = sub_219BF5BC4();
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  *(v21 + 4) = v5;
  (*(v10 + 32))(&v21[v19], v12, v24);
  (*(v7 + 32))(&v21[v20], v26, v25);
  *&v21[(v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v29;
  sub_218AB3D80(0, 0, v15, &unk_219C6D2B8, v21);

  return result;
}

uint64_t sub_2192EE428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a6;
  v7[48] = a7;
  v7[45] = a4;
  v7[46] = a5;
  sub_21875FAA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v9 = *(v8 - 8);
  v7[49] = v9;
  v7[50] = *(v9 + 64);
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  sub_219BF5BD4();
  v7[53] = sub_219BF5BC4();
  v11 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2192EE54C, v11, v10);
}

uint64_t sub_2192EE54C()
{
  v1 = *(v0 + 384);

  sub_2192EEA94(v1, (v0 + 64));
  if (*(v0 + 104) == 255)
  {
    sub_218E2558C(v0 + 64, &qword_27CC187F8, &type metadata for NewsActivity2.Alert);
  }

  else
  {
    v2 = *(v0 + 416);
    v3 = *(v0 + 360);
    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    v5 = *(v3 + 32);
    v6 = swift_allocObject();
    sub_218CF89E8(v0 + 16, v6 + 16);
    v7 = sub_219BDFA44();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    *(v0 + 144) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0;
    *(v0 + 344) = v5;
    sub_2187B14CC(v0 + 152, v0 + 232, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(v0 + 256))
    {
      sub_21875F93C((v0 + 232), v0 + 192);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v9 = qword_280ED32D8;
      v8 = qword_280ED32E0;
      v10 = qword_280ED32E8;

      v27 = v8;
      sub_2188202A8(v8);
      __swift_destroy_boxed_opaque_existential_1((v0 + 192));
    }

    else
    {
      sub_2187B1C64(v0 + 232, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v9 = qword_280ED32D8;
      v11 = qword_280ED32E0;
      v10 = qword_280ED32E8;

      v27 = v11;
      sub_2188202A8(v11);
    }

    v13 = *(v0 + 408);
    v12 = *(v0 + 416);
    v15 = *(v0 + 392);
    v14 = *(v0 + 400);
    *(v0 + 352) = v6;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    sub_2189B4E2C(v12, v13);
    sub_2187B14CC(v0 + 112, v0 + 272, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v16 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    sub_2189B4EAC(v13, v19 + v16);
    v20 = v19 + v17;
    v21 = *(v0 + 288);
    *v20 = *(v0 + 272);
    *(v20 + 16) = v21;
    *(v20 + 32) = *(v0 + 304);
    v22 = (v19 + v18);
    v23 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v22 = 0;
    v22[1] = 0;
    *v23 = v9;
    v23[1] = v27;
    v23[2] = v10;

    sub_2188202A8(v27);
    sub_2186CF94C(0);
    sub_2192F0DA4(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();
    v24 = *(v0 + 416);

    sub_2187FABEC(v27, v10);
    sub_2187B1C64(v0 + 152, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1C64(v0 + 112, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218A42D80(v24);
    sub_2189A4E34(v0 + 16);
    sub_218E2558C(v0 + 312, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
  }

  v25 = *(v0 + 8);

  return v25();
}

void sub_2192EEA94(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v3 = sub_219BDC1E4();
  v65 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v59 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v11 = sub_219BE51D4();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v59 - v14;
  v15 = sub_219BE50C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v71 = a1;
  v25 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  if (swift_dynamicCast())
  {
    (*(v16 + 32))(v21, v24, v15);
    (*(v16 + 16))(v18, v21, v15);
    v26 = (*(v16 + 88))(v18, v15);
    if (v26 == *MEMORY[0x277D347A8])
    {
      (*(v16 + 96))(v18, v15);
      sub_2192F0C94(0);
      v28 = *(v27 + 48);
      v30 = v61;
      v29 = v62;
      v31 = *(v62 + 32);
      v32 = v63;
      v31(v61, v18, v63);
      v33 = &v18[v28];
      v34 = v60;
      v31(v60, v33, v32);
      sub_219BE1CC4();
      if (sub_219BE1CB4())
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD000000000000038, 0x8000000219D16B10);
        sub_2192F0DA4(&qword_27CC18818, 255, MEMORY[0x277D34850], MEMORY[0x277D34858]);
        v35 = sub_219BF7894();
        MEMORY[0x21CECC330](v35);

        MEMORY[0x21CECC330](0xD00000000000002ALL, 0x8000000219D16B50);
        v36 = sub_219BF7894();
        MEMORY[0x21CECC330](v36);

        MEMORY[0x21CECC330](11817, 0xE200000000000000);
        v37 = v67;
        v38 = v68;
        v69 = &type metadata for AlertLiveActivityInternalOnly;
        v70 = sub_2192F0BEC();
        v67 = v37;
        v68 = v38;
        sub_219BEA744();
        swift_allocObject();
        v39 = sub_219BEA6C4();
        v40 = *(v29 + 8);
        v40(v34, v32);
        v40(v30, v32);
LABEL_5:
        (*(v16 + 8))(v21, v15);
LABEL_33:
        v46 = 0;
        v45 = v66;
LABEL_36:
        *v45 = v39;
        goto LABEL_37;
      }

      v49 = *(v29 + 8);
      v49(v34, v32);
      v49(v30, v32);
LABEL_15:
      (*(v16 + 8))(v21, v15);
      goto LABEL_35;
    }

    if (v26 == *MEMORY[0x277D34798])
    {
      v69 = &type metadata for AlertLiveActivityDenied;
      v70 = sub_2192F0D50();
      sub_219BEA744();
      swift_allocObject();
      sub_219BEA6C4();
      v47 = sub_219BEA6F4();
    }

    else
    {
      if (v26 == *MEMORY[0x277D347A0])
      {
        sub_219BE1CC4();
        if (sub_219BE1CB4())
        {
          v69 = &type metadata for AlertLiveActivityInternalOnly;
          v70 = sub_2192F0BEC();
          v67 = 0xD000000000000037;
          v68 = 0x8000000219D16B80;
          sub_219BEA744();
          swift_allocObject();
          v39 = sub_219BEA6C4();
          goto LABEL_5;
        }

        goto LABEL_15;
      }

      if (v26 == *MEMORY[0x277D347B0])
      {
        v69 = &type metadata for AlertLiveActivityEnded;
        v50 = sub_2192F0CFC();
      }

      else
      {
        if (v26 != *MEMORY[0x277D347B8])
        {
          v57 = *(v16 + 8);
          v57(v21, v15);
          v58 = v66;
          v66[4] = 0;
          *v58 = 0u;
          *(v58 + 1) = 0u;
          *(v58 + 40) = -1;
          v57(v18, v15);
          goto LABEL_42;
        }

        v69 = &type metadata for AlertContentUnavailable;
        v50 = sub_2189F7CD8();
      }

      v70 = v50;
      sub_219BEA744();
      swift_allocObject();
      v47 = sub_219BEA6C4();
    }

    (*(v16 + 8))(v21, v15);
    v55 = v66;
    *v66 = v47;
    *(v55 + 40) = 0;
    goto LABEL_42;
  }

  v71 = a1;
  v41 = a1;
  if (!swift_dynamicCast())
  {

    v48 = v66;
    v66[4] = 0;
    *v48 = 0u;
    *(v48 + 1) = 0u;
    *(v48 + 40) = -1;
    return;
  }

  v43 = v64;
  v42 = v65;
  (*(v65 + 32))(v64, v10, v3);
  (*(v42 + 16))(v5, v43, v3);
  v44 = (*(v42 + 88))(v5, v3);
  if (v44 == *MEMORY[0x277CB9490] || v44 == *MEMORY[0x277CB9480])
  {
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x277CB94C0])
  {
    (*(v42 + 8))(v43, v3);
    v45 = v66;
    v66[4] = 0;
    *v45 = 0u;
    *(v45 + 1) = 0u;
    v46 = -1;
LABEL_37:
    *(v45 + 40) = v46;
    goto LABEL_42;
  }

  if (v44 == *MEMORY[0x277CB94A0] || v44 == *MEMORY[0x277CB94B0])
  {
    v56 = v66;
    v66[3] = &type metadata for AlertLiveActivityMaximumExceeded;
    v56[4] = sub_2192F0C40();
    (*(v42 + 8))(v43, v3);
    *(v56 + 40) = 1;
    goto LABEL_42;
  }

  if (v44 == *MEMORY[0x277CB9488] || v44 == *MEMORY[0x277CB9478] || v44 == *MEMORY[0x277CB9498] || v44 == *MEMORY[0x277CB94B8] || v44 == *MEMORY[0x277CB9470] || v44 == *MEMORY[0x277CB9468] || v44 == *MEMORY[0x277CB94A8])
  {
LABEL_31:
    sub_219BE1CC4();
    if (sub_219BE1CB4())
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000031, 0x8000000219D16AB0);
      sub_219BF7484();
      v53 = v67;
      v54 = v68;
      v69 = &type metadata for AlertLiveActivityInternalOnly;
      v70 = sub_2192F0BEC();
      v67 = v53;
      v68 = v54;
      sub_219BEA744();
      swift_allocObject();
      v39 = sub_219BEA6C4();
      (*(v42 + 8))(v43, v3);
      goto LABEL_33;
    }

    (*(v42 + 8))(v43, v3);
LABEL_35:
    v39 = 0;
    v45 = v66;
    *(v66 + 3) = 0u;
    *(v45 + 1) = 0u;
    v46 = -1;
    goto LABEL_36;
  }

  v51 = *(v42 + 8);
  v51(v43, v3);
  v52 = v66;
  v66[4] = 0;
  *v52 = 0u;
  *(v52 + 1) = 0u;
  *(v52 + 40) = -1;
  v51(v5, v3);
LABEL_42:
}