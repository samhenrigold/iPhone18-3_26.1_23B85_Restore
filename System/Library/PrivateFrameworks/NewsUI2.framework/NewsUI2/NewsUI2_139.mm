void sub_219634308(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v26 = a1;
  v25 = sub_219BDD6C4();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDEE04();
  v20 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [*(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_contentSizeManager) contentSizeCategoryForArticle_];
  swift_unknownObjectRelease();
  v10 = v2;
  v23 = *(v2 + 32);
  (*(v7 + 16))(v9, a2, v6);
  v11 = v22;
  v12 = v25;
  (*(v4 + 16))(v22, v26, v25);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = (v8 + *(v4 + 80) + v13) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  v17 = v21;
  *(v15 + 16) = v10;
  *(v15 + 24) = v17;
  (*(v7 + 32))(v15 + v13, v9, v16);
  (*(v4 + 32))(v15 + v14, v11, v12);

  v18 = v17;
  sub_219BDD154();

  sub_219635374(v24);
}

uint64_t sub_2196345A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v66 = a4;
  v68 = a1;
  v7 = sub_219BDBD34();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v56 - v10;
  sub_218748080(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_219BDF754();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE03F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  v65 = sub_219BE03A4();
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v69 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v24 = *(a2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_startContentSizeCategory);
  if (v24)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_5:
    v26 = *MEMORY[0x277D76838];
    goto LABEL_6;
  }

  v25 = *MEMORY[0x277D76838];
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v27 = v24;
  v28 = a3;
  sub_219BDCC94();
  sub_219BE0394();
  v29 = MEMORY[0x277CEAD18];
  if (*(v67 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8))
  {

    sub_219BE03E4();
    (*(v17 + 32))(v22, v19, v16);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v30 = sub_219BDCD44();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    (*(v31 + 104))(v33 + v32, *MEMORY[0x277CEAD18], v30);
    sub_21963E0E4(&qword_27CC1D568, MEMORY[0x277D2E510], MEMORY[0x277D2E508]);
    sub_219BDCCC4();

    (*(v17 + 8))(v22, v16);
    v29 = MEMORY[0x277CEAD18];
  }

  v34 = v29;
  sub_219BDEDF4();
  swift_getObjectType();
  sub_219BF6804();
  swift_unknownObjectRelease();
  v36 = v57;
  v35 = v58;
  if ((*(v57 + 48))(v13, 1, v58) == 1)
  {
    sub_218745B8C(v13, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88], sub_218748080);
    v37 = *v34;
    v38 = v68;
    v39 = &unk_219C09000;
  }

  else
  {
    (*(v36 + 32))(v56, v13, v35);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v40 = sub_219BDCD44();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    v39 = &unk_219C09000;
    *(v43 + 16) = xmmword_219C09BA0;
    v37 = *v34;
    (*(v41 + 104))(v43 + v42, v37, v40);
    sub_21963E0E4(&unk_280EE86A0, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    v44 = v56;
    v38 = v68;
    sub_219BDCCC4();

    (*(v36 + 8))(v44, v35);
  }

  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v45 = sub_219BDCD44();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v39[186];
  (*(v46 + 104))(v48 + v47, v37, v45);
  sub_21963E0E4(&unk_280EE8420, MEMORY[0x277D2E4F0], MEMORY[0x277D2E4E8]);
  sub_219BDCCC4();

  sub_219BDFB74();
  v49 = v62;
  sub_219BDD694();
  sub_21963E0E4(&qword_280EE85D0, MEMORY[0x277D2DF70], MEMORY[0x277D2DF58]);
  sub_219BDCC64();
  v50 = v64;
  v51 = *(v63 + 8);
  v51(v49, v64);
  v52 = v60;
  sub_219BDD694();
  sub_219BDD6B4();
  sub_219BDBBF4();
  v51(v52, v50);
  sub_219BDEDF4();
  v70[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v70);
  sub_219BDF4C4();
  v53 = swift_allocObject();
  v54 = v67;
  *(v53 + 16) = v38;
  *(v53 + 24) = v54;

  sub_219BDCC84();

  v51(v49, v50);
  (*(v59 + 8))(v69, v65);
  return sub_218745B8C(v70, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0DDC);
}

uint64_t sub_219635028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession);
  if (v3)
  {
    v4 = v3;
    sub_219BDCE04();
  }

  sub_219BDCC54();

  sub_219BDF434();
  sub_21963E0E4(&qword_280EE87D0, MEMORY[0x277D2DA88], MEMORY[0x277D2DA80]);
  sub_219BDCC44();
  sub_219BDF2F4();
  sub_21963E0E4(&qword_280EE8800, MEMORY[0x277D2D9E8], MEMORY[0x277D2D9E0]);
  sub_219BDCC44();
  sub_219BE0754();
  sub_21963E0E4(&qword_280EE8308, MEMORY[0x277D2E770], MEMORY[0x277D2E768]);
  sub_219BDCC44();
  sub_219BDFD94();
  sub_21963E0E4(&qword_280EE8550, MEMORY[0x277D2E0C8], MEMORY[0x277D2E0C0]);
  sub_219BDCC44();
  sub_219BE0364();
  sub_21963E0E4(&qword_280EE8430, MEMORY[0x277D2E4C0], MEMORY[0x277D2E4B8]);
  sub_219BDCC44();
  sub_219BDF654();
  sub_21963E0E4(&qword_280EE8700, MEMORY[0x277D2DC88], MEMORY[0x277D2DC80]);
  sub_219BDCC44();
  sub_219BDCC44();
  sub_219BDF034();
  sub_21963E0E4(&unk_280EE88E0, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
  sub_219BDCC44();
  sub_219BE06D4();
  sub_21963E0E4(&unk_280EE8350, MEMORY[0x277D2E6F8], MEMORY[0x277D2E6F0]);
  return sub_219BDCC44();
}

double sub_219635374(uint64_t a1)
{
  v22[2] = a1;
  v2 = MEMORY[0x277CC9260];
  v3 = MEMORY[0x277D83D88];
  sub_218748080(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_219BDE294();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v1 + 104);
  sub_2187B2C48(0);
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  sub_2187B2DA0(0);
  v18 = *(v17 + 48);
  (*(v8 + 104))(v10, *MEMORY[0x277D2FF08], v7);
  v19 = sub_219BDB954();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_219BDD904();
  sub_218745B8C(v6, &unk_280EE9D00, v2, v3, sub_218748080);
  (*(v8 + 8))(v10, v7);
  v20 = MEMORY[0x277D84F90];
  *(v15 + v18) = MEMORY[0x277D84F90];
  *(v15 + v16) = v20;
  v22[3] = v13 | 2;

  sub_219BE7864();

  return result;
}

double sub_2196355E8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession);
  if (v4)
  {
    v5 = v4;
    sub_219BDCE04();
  }

  sub_219BDD124();

  return sub_219635374(a2);
}

uint64_t sub_219635684(uint64_t a1)
{
  v248 = a1;
  v223 = sub_219BDDDC4();
  v221 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v222 = &v214 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = v1;
  MEMORY[0x28223BE20](v2);
  v225 = &v214 - v3;
  v219 = sub_219BDD884();
  v218 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v217 = &v214 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v4;
  MEMORY[0x28223BE20](v5);
  v224 = &v214 - v6;
  v230 = sub_219BDEB34();
  v228 = *(v230 - 1);
  MEMORY[0x28223BE20](v230);
  v227 = &v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v7;
  MEMORY[0x28223BE20](v8);
  v229 = &v214 - v9;
  v233 = sub_219BDE374();
  v235 = *(v233 - 1);
  v10 = *(v235 + 64);
  MEMORY[0x28223BE20](v233);
  v231 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v232 = &v214 - v12;
  v243 = sub_219BDE524();
  v238 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v246 = &v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = v13;
  MEMORY[0x28223BE20](v14);
  v247 = &v214 - v15;
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v234 = *(v16 - 8);
  v17 = *(v234 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v240 = &v214 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v241 = (&v214 - v19);
  v251 = sub_219BDDAF4();
  v249 = *(v251 - 1);
  MEMORY[0x28223BE20](v251);
  v245 = &v214 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = v20;
  MEMORY[0x28223BE20](v21);
  v250 = &v214 - v22;
  v23 = sub_219BDDB34();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v214 - v28;
  v30 = sub_219BDD674();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v214 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34, v248, v30, v32);
  v35 = (*(v31 + 88))(v34, v30);
  if (v35 == *MEMORY[0x277D2FA40])
  {
    (*(v31 + 96))(v34, v30);
    sub_21963D084(0);
    v37 = *&v34[v36[12]];
    v38 = *&v34[v36[16]];
    v39 = *&v34[v36[20]];
    v40 = *(v24 + 4);
    v40(v29, v34, v23);
    v41 = v252;
    (*(v24 + 2))(v26, v29, v23);
    v42 = (v24[80] + 48) & ~v24[80];
    v43 = swift_allocObject();
    *(v43 + 2) = v37;
    *(v43 + 3) = v38;
    *(v43 + 4) = v39;
    *(v43 + 5) = v41;
    v40(&v43[v42], v26, v23);

    sub_219BDD154();

    return (*(v24 + 1))(v29, v23);
  }

  v248 = v25;
  v215 = &v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = v29;
  v242 = v24;
  v244 = v23;
  if (v35 == *MEMORY[0x277D2FA70])
  {
    (*(v31 + 96))(v34, v30);
    sub_21963C4B4(0);
    v46 = v45[12];
    v47 = v45[16];
    v48 = v45[20];
    v49 = v249;
    v50 = *(v249 + 32);
    v228 = (v249 + 32);
    v230 = v50;
    v52 = v250;
    v51 = v251;
    (v50)(v250, v34, v251);
    v53 = *(v242 + 4);
    v232 = v242 + 32;
    v233 = v53;
    v54 = v239;
    (v53)(v239, &v34[v46], v244);
    v55 = v241;
    sub_21963C604(&v34[v47], v241);
    v56 = v238;
    v229 = *(v238 + 32);
    v57 = &v34[v48];
    v58 = v247;
    v59 = v243;
    (v229)(v247, v57, v243);
    v231 = *(v252 + 32);
    (*(v49 + 16))(v245, v52, v51);
    v235 = MEMORY[0x277D2FCC8];
    sub_21963E064(v55, v240, &unk_280EE8D38, MEMORY[0x277D2FCC8]);
    (*(v56 + 16))(v246, v58, v59);
    v60 = v242;
    v61 = v215;
    (*(v242 + 2))(v215, v54, v244);
    v62 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v63 = (v236 + *(v234 + 80) + v62) & ~*(v234 + 80);
    v64 = (v17 + *(v56 + 80) + v63) & ~*(v56 + 80);
    v65 = (v237 + v60[80] + v64) & ~v60[80];
    v66 = swift_allocObject();
    v67 = v251;
    *(v66 + 16) = v252;
    (v230)(v66 + v62, v245, v67);
    sub_21963C604(v240, v66 + v63);
    (v229)(v66 + v64, v246, v59);
    v68 = v244;
    (v233)(v66 + v65, v61, v244);

    sub_219BDD154();

    (*(v56 + 8))(v247, v59);
    sub_218745B8C(v241, &unk_280EE8D38, v235, MEMORY[0x277D83D88], sub_218748080);
    (*(v242 + 1))(v239, v68);
    return (*(v249 + 8))(v250, v251);
  }

  if (v35 == *MEMORY[0x277D2FA30])
  {
    (*(v31 + 96))(v34, v30);
    sub_21963C8A8(0);
    v70 = v69[12];
    v71 = v69[16];
    v72 = v69[20];
    v73 = v249;
    v74 = *(v249 + 32);
    v229 = (v249 + 32);
    v230 = v74;
    v75 = v251;
    (v74)(v250, v34, v251);
    v76 = v242;
    v77 = *(v242 + 4);
    v240 = v242 + 32;
    v241 = v77;
    (v77)(v239, &v34[v70], v244);
    v78 = *(v235 + 32);
    v227 = (v235 + 32);
    v228 = v78;
    v79 = &v34[v71];
    v80 = v232;
    v81 = v233;
    (v78)(v232, v79, v233);
    v82 = v238;
    v225 = *(v238 + 32);
    v226 = v238 + 32;
    v83 = &v34[v72];
    v84 = v247;
    v85 = v243;
    (v225)(v247, v83, v243);
    v234 = *(v252 + 32);
    v86 = v73;
    (*(v73 + 16))(v245, v250, v75);
    (*(v82 + 16))(v246, v84, v85);
    v87 = v235;
    (*(v235 + 16))(v231, v80, v81);
    v88 = v76;
    v89 = *(v76 + 2);
    v90 = v215;
    v89(v215, v239, v244);
    v91 = (*(v86 + 80) + 24) & ~*(v86 + 80);
    v92 = (v236 + *(v82 + 80) + v91) & ~*(v82 + 80);
    v93 = (v237 + *(v87 + 80) + v92) & ~*(v87 + 80);
    v94 = (v10 + v88[80] + v93) & ~v88[80];
    v95 = swift_allocObject();
    *(v95 + 16) = v252;
    v96 = v95 + v91;
    v97 = v251;
    (v230)(v96, v245, v251);
    v98 = v95 + v92;
    v99 = v243;
    (v225)(v98, v246, v243);
    v100 = v233;
    (v228)(v95 + v93, v231, v233);
    v101 = v244;
    (v241)(v95 + v94, v90, v244);

    sub_219BDD154();

    (*(v82 + 8))(v247, v99);
    (*(v235 + 8))(v232, v100);
    (*(v242 + 1))(v239, v101);
    return (*(v249 + 8))(v250, v97);
  }

  else
  {
    if (v35 == *MEMORY[0x277D2FA58])
    {
      (*(v31 + 96))(v34, v30);
      sub_21963C6E0(0);
      v103 = *(v102 + 48);
      v104 = *(v102 + 64);
      v105 = v250;
      v106 = *(v249 + 32);
      v240 = (v249 + 32);
      v242 = v106;
      v107 = v251;
      (v106)(v250, v34, v251);
      v108 = v228;
      v109 = *(v228 + 4);
      v241 = v228 + 32;
      v244 = v109;
      v110 = &v34[v103];
      v111 = v229;
      v109(v229, v110, v230);
      v112 = v238;
      v239 = *(v238 + 32);
      v113 = &v34[v104];
      v114 = v247;
      v115 = v243;
      (v239)(v247, v113, v243);
      v116 = v252;
      v248 = *(v252 + 32);
      v117 = v249;
      (*(v249 + 16))(v245, v105, v107);
      (*(v112 + 16))(v246, v114, v115);
      v118 = v227;
      v119 = v111;
      v120 = v230;
      (*(v108 + 2))(v227, v119, v230);
      v121 = (*(v117 + 80) + 24) & ~*(v117 + 80);
      v122 = (v236 + *(v112 + 80) + v121) & ~*(v112 + 80);
      v123 = (v237 + v108[80] + v122) & ~v108[80];
      v124 = swift_allocObject();
      *(v124 + 16) = v116;
      (v242)(v124 + v121, v245, v251);
      v125 = v124 + v122;
      v126 = v243;
      (v239)(v125, v246, v243);
      v244(v124 + v123, v118, v120);

      sub_219BDD154();

      (*(v112 + 8))(v247, v126);
      (*(v108 + 1))(v229, v120);
      return (*(v249 + 8))(v250, v251);
    }

    if (v35 == *MEMORY[0x277D2FA48])
    {
      (*(v31 + 96))(v34, v30);
      sub_21963C4B4(0);
      v128 = v127[12];
      v129 = v127[16];
      v130 = v127[20];
      v131 = v249;
      v132 = *(v249 + 32);
      v228 = (v249 + 32);
      v230 = v132;
      v133 = v250;
      v134 = v251;
      (v132)(v250, v34, v251);
      v135 = *(v242 + 4);
      v232 = v242 + 32;
      v233 = v135;
      v136 = v239;
      (v135)(v239, &v34[v128], v244);
      v137 = v241;
      sub_21963C604(&v34[v129], v241);
      v138 = v238;
      v229 = *(v238 + 32);
      v139 = &v34[v130];
      v140 = v247;
      v141 = v243;
      (v229)(v247, v139, v243);
      v231 = *(v252 + 32);
      (*(v131 + 16))(v245, v133, v134);
      v235 = MEMORY[0x277D2FCC8];
      sub_21963E064(v137, v240, &unk_280EE8D38, MEMORY[0x277D2FCC8]);
      (*(v138 + 16))(v246, v140, v141);
      v142 = v242;
      v143 = v215;
      v144 = v136;
      v145 = v244;
      (*(v242 + 2))(v215, v144, v244);
      v146 = (*(v131 + 80) + 24) & ~*(v131 + 80);
      v147 = (v236 + *(v234 + 80) + v146) & ~*(v234 + 80);
      v148 = (v17 + *(v138 + 80) + v147) & ~*(v138 + 80);
      v149 = (v237 + v142[80] + v148) & ~v142[80];
      v150 = swift_allocObject();
      *(v150 + 16) = v252;
      v151 = v150 + v146;
      v152 = v251;
      (v230)(v151, v245, v251);
      sub_21963C604(v240, v150 + v147);
      v153 = v243;
      (v229)(v150 + v148, v246, v243);
      (v233)(v150 + v149, v143, v145);

      sub_219BDD154();

      (*(v138 + 8))(v247, v153);
      sub_218745B8C(v241, &unk_280EE8D38, v235, MEMORY[0x277D83D88], sub_218748080);
      (*(v242 + 1))(v239, v145);
      return (*(v249 + 8))(v250, v152);
    }

    else if (v35 == *MEMORY[0x277D2FA50])
    {
      (*(v31 + 96))(v34, v30);
      sub_21963C1E8(0, &unk_280EE8D98, MEMORY[0x277D30020], "timedData componentMetadata ");
      v155 = *(v154 + 48);
      v156 = v242;
      v250 = *(v242 + 4);
      v157 = v239;
      v158 = v244;
      (v250)(v239, v34, v244);
      v159 = v238;
      v249 = *(v238 + 32);
      v160 = &v34[v155];
      v161 = v247;
      v162 = v243;
      (v249)(v247, v160, v243);
      v163 = v252;
      v251 = *(v252 + 32);
      (*(v159 + 16))(v246, v161, v162);
      v164 = v215;
      (*(v156 + 2))(v215, v157, v158);
      v165 = (*(v159 + 80) + 24) & ~*(v159 + 80);
      v166 = (v237 + v156[80] + v165) & ~v156[80];
      v167 = swift_allocObject();
      *(v167 + 16) = v163;
      (v249)(v167 + v165, v246, v162);
      v168 = v244;
      (v250)(v167 + v166, v164, v244);

      sub_219BDD154();

      (*(v159 + 8))(v247, v162);
      return (*(v156 + 1))(v239, v168);
    }

    else
    {
      v169 = v252;
      v170 = v244;
      if (v35 == *MEMORY[0x277D2FA68])
      {
        (*(v31 + 96))(v34, v30);
        v171 = v218;
        v172 = *(v218 + 32);
        v173 = v224;
        v174 = v34;
        v175 = v219;
        v172(v224, v174, v219);
        v176 = v217;
        (*(v171 + 16))(v217, v173, v175);
        v177 = (*(v171 + 80) + 16) & ~*(v171 + 80);
        v178 = (v216 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
        v179 = v169;
        v180 = swift_allocObject();
        v172((v180 + v177), v176, v175);
        *(v180 + v178) = v179;

        sub_219BDD154();

        return (*(v171 + 8))(v224, v175);
      }

      else if (v35 == *MEMORY[0x277D2FA38])
      {
        (*(v31 + 96))(v34, v30);
        sub_21963C1E8(0, &qword_280EE8D90, MEMORY[0x277D2FD58], "timedData embedData ");
        v182 = *(v181 + 48);
        v183 = v242;
        v251 = *(v242 + 4);
        v184 = v239;
        (v251)(v239, v34, v170);
        v185 = v170;
        v186 = v221;
        v250 = *(v221 + 32);
        v187 = &v34[v182];
        v188 = v225;
        v189 = v223;
        (v250)(v225, v187, v223);
        v252 = *(v169 + 32);
        (*(v186 + 16))(v222, v188, v189);
        v190 = v215;
        (*(v183 + 2))(v215, v184, v185);
        v191 = (*(v186 + 80) + 16) & ~*(v186 + 80);
        v192 = (v220 + v183[80] + v191) & ~v183[80];
        v193 = swift_allocObject();
        (v250)(v193 + v191, v222, v189);
        (v251)(v193 + v192, v190, v185);
        sub_219BDD154();

        (*(v186 + 8))(v225, v189);
        return (*(v183 + 1))(v239, v185);
      }

      else
      {
        v194 = v242;
        v195 = v239;
        if (v35 == *MEMORY[0x277D2FA60])
        {
          (*(v31 + 96))(v34, v30);
          sub_21963C078(0);
          v197 = *(v196 + 48);
          v198 = *&v34[*(v196 + 64)];
          v250 = *(v194 + 4);
          v251 = v198;
          (v250)(v195, v34, v170);
          v199 = v221;
          v249 = *(v221 + 32);
          v200 = &v34[v197];
          v201 = v225;
          v202 = v223;
          (v249)(v225, v200, v223);
          v252 = *(v252 + 32);
          v203 = v222;
          (*(v199 + 16))(v222, v201, v202);
          (*(v194 + 2))(v215, v195, v170);
          v204 = (*(v199 + 80) + 16) & ~*(v199 + 80);
          v205 = (v220 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
          v206 = v194;
          v207 = v170;
          v208 = (v194[80] + v205 + 8) & ~v194[80];
          v209 = swift_allocObject();
          v210 = v209 + v204;
          v211 = v223;
          (v249)(v210, v203, v223);
          v212 = v251;
          *(v209 + v205) = v251;
          (v250)(v209 + v208, v215, v207);
          v213 = v212;
          sub_219BDD154();

          (*(v199 + 8))(v225, v211);
          return (*(v206 + 1))(v239, v207);
        }

        else
        {
          result = sub_219BF7514();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_219637294()
{
  v1 = sub_219BDD4F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDF7E4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_articleModel, v1, v7);
  sub_219BDD4E4();
  (*(v2 + 8))(v4, v1);
  sub_219BDF7D4();
  sub_21963E0E4(&unk_280EE8670, MEMORY[0x277D2DD78], MEMORY[0x277D2DD70]);
  sub_219BDD1F4();
  (*(v6 + 8))(v9, v5);
  sub_219BDFAD4();
  sub_21963E0E4(&qword_280EE85F8, MEMORY[0x277D2DF30], MEMORY[0x277D2DF28]);
  sub_219BDD214();
  sub_219BE0A04();
  sub_21963E0E4(&unk_280EE8250, MEMORY[0x277D2E9E8], MEMORY[0x277D2E9E0]);
  return sub_219BDD214();
}

uint64_t sub_21963755C(uint64_t a1, uint64_t a2)
{
  sub_219BDFAD4();
  sub_21963E0E4(&qword_280EE85F8, MEMORY[0x277D2DF30], MEMORY[0x277D2DF28]);
  return sub_219BDCC74();
}

uint64_t sub_2196375E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_219BE1594();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  sub_219BF7A14();
  sub_21963E0E4(&qword_280EE7FC0, MEMORY[0x277D2F440], MEMORY[0x277D2F438]);
  sub_219BDCCC4();
  (*(v4 + 8))(v6, v3);
  sub_219BE0A04();
  sub_21963E0E4(&unk_280EE8250, MEMORY[0x277D2E9E8], MEMORY[0x277D2E9E0]);
  return sub_219BDCC34();
}

void *sub_21963779C(uint64_t a1)
{
  v28 = sub_219BDF3D4();
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_219BDF3C4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(sub_219BE4194() - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = *(v9 + 72);
    v21 = *MEMORY[0x277D2DA38];
    v11 = (v2 + 104);
    v23 = *MEMORY[0x277D2DA70];
    v25 = *MEMORY[0x277D2DA40];
    v20 = *MEMORY[0x277D2DA50];
    v22 = *MEMORY[0x277D2DA48];
    v24 = *MEMORY[0x277D2DA60];
    v19 = *MEMORY[0x277D2DA58];
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_219BE4174();
      v13 = sub_219BE4184();
      if (v13 > 2)
      {
        v14 = v25;
        if (v13 == 3)
        {
          goto LABEL_12;
        }

        v14 = v23;
        if (v13 == 4)
        {
          goto LABEL_12;
        }

        v14 = v21;
        if (v13 == 5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v14 = v24;
        if (!v13)
        {
          goto LABEL_12;
        }

        v14 = v22;
        if (v13 == 1)
        {
          goto LABEL_12;
        }

        v14 = v20;
        if (v13 == 2)
        {
          goto LABEL_12;
        }
      }

      v14 = v19;
LABEL_12:
      (*v11)(v4, v14, v28);
      sub_219BDF3B4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2191F99D0(0, v12[2] + 1, 1, v12);
      }

      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        v12 = sub_2191F99D0((v15 > 1), v16 + 1, 1, v12);
      }

      v12[2] = v16 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v7, v27);
      v10 += v26;
      if (!--v8)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_219637AF4()
{
  v1 = v0;
  v2 = sub_219BE0784();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF6A4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[4];
  (*(v3 + 104))(v5, *MEMORY[0x277D2E7E0], v2, v8);
  sub_219BDF694();
  sub_21963E0E4(&qword_27CC1D560, MEMORY[0x277D2DCA8], MEMORY[0x277D2DCA0]);
  sub_219BDD1F4();
  (*(v7 + 8))(v10, v6);
  v12 = v1[8];
  v13 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v12);
  return (*(v13 + 8))(v11, v12, v13);
}

uint64_t sub_219637D0C()
{
  sub_218774F78(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_articleModel;
  v2 = sub_219BDD4F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_218745B8C(v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_urlReferralData, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218748080);
  sub_219638D78(*(v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment), *(v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8));
  return v0;
}

uint64_t sub_219637E70()
{
  sub_219637D0C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleCoordinator(uint64_t a1)
{
  result = qword_280ED42A8;
  if (!qword_280ED42A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219637F1C(uint64_t a1)
{
  sub_219BDD4F4();
  if (v1 <= 0x3F)
  {
    sub_218748080(319, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void (*sub_219638090(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

uint64_t sub_2196381DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  (a3)(0, a2);
  sub_21963E0E4(a4, a5, a6);
  return sub_219BDD234();
}

double sub_2196382C4(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_lastScrollPosition);
  *(v5 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_lastScrollPosition) = a2;

  v7 = a2;
  return sub_21963089C(a1);
}

uint64_t sub_219638338()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_219BDBD24();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v3, v0);
  sub_219BDD264();

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_2196384B8(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_219BDBD24();
  (*(v3 + 16))(v5, v8, v2);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v3 + 32))(v10 + v9, v5, v2);
  v11 = a1;
  sub_219BDD264();

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_219638668(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  sub_218748080(0, &unk_280EE8200, MEMORY[0x277D2EB90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_219BDF194();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF184();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *a3, v8, v14);
  v17 = sub_219BE0BC4();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_219BDF174();
  sub_21963E0E4(&qword_280EE8860, MEMORY[0x277D2D928], MEMORY[0x277D2D920]);
  sub_219BDD1F4();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_219638904(uint64_t a1, uint64_t a2)
{
  sub_219634308(a2, a1);
  sub_219BDF184();
  sub_21963E0E4(&qword_280EE8860, MEMORY[0x277D2D928], MEMORY[0x277D2D920]);
  sub_219BDD1C4();
  return sub_219630108(a2, a1);
}

uint64_t sub_2196389B0(uint64_t a1)
{
  v2 = sub_219BE02A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21963779C(a1);
  sub_219BE0294();
  sub_21963E0E4(&qword_280EE8448, MEMORY[0x277D2E440], MEMORY[0x277D2E438]);
  sub_219BDD1F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_219638AF4()
{
  v0 = sub_219BE0784();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDF6A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D2E7E0], v0, v6);
  sub_219BDF694();
  sub_21963E0E4(&qword_27CC1D560, MEMORY[0x277D2DCA8], MEMORY[0x277D2DCA0]);
  sub_219BDD1F4();
  return (*(v5 + 8))(v8, v4);
}

double sub_219638CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;

  return sub_219638D78(v6, v7);
}

double sub_219638D78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_219638DBC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v56 = a3;
  v53 = a2;
  v61 = a1;
  v57 = sub_219BDBD34();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE03F4();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = v41 - v10;
  v11 = sub_219BDF5C4();
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  MEMORY[0x28223BE20](v11);
  v50 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF984();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDF974();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v60 = v17;
  v18 = sub_219BDCD44();
  v48 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = *(v19 + 80);
  v22 = swift_allocObject();
  v58 = xmmword_219C09BA0;
  *(v22 + 16) = xmmword_219C09BA0;
  v23 = *MEMORY[0x277CEAD18];
  v24 = *(v19 + 104);
  v24(v22 + ((v21 + 32) & ~v21), v23, v18);
  v59 = "activeExperiment";
  sub_21963E0E4(&qword_280EE8620, MEMORY[0x277D2DEC0], MEMORY[0x277D2DEB8]);
  sub_219BDCCC4();

  (*(v49 + 8))(v16, v14);
  v25 = v50;
  sub_219BDF5B4();
  v49 = v20;
  v43 = v21;
  v26 = (v21 + 32) & ~v21;
  v27 = v19 + 104;
  v28 = v48;
  v29 = swift_allocObject();
  *(v29 + 16) = v58;
  v42 = v23;
  v41[1] = v27;
  v24(v29 + v26, v23, v28);
  sub_21963E0E4(&qword_280EE8738, MEMORY[0x277D2DB88], MEMORY[0x277D2DB80]);
  v30 = v25;
  v31 = v51;
  sub_219BDCCC4();

  (*(v52 + 8))(v30, v31);
  if (*(v53 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8))
  {

    v32 = v44;
    sub_219BE03E4();
    v34 = v46;
    v33 = v47;
    v35 = v45;
    (*(v46 + 32))(v45, v32, v47);
    v36 = swift_allocObject();
    *(v36 + 16) = v58;
    v24(v36 + v26, v42, v28);
    sub_21963E0E4(&qword_27CC1D568, MEMORY[0x277D2E510], MEMORY[0x277D2E508]);
    sub_219BDCCC4();

    (*(v34 + 8))(v35, v33);
  }

  sub_219BE0194();
  v37 = v54;
  sub_219BDDB24();
  sub_21963E0E4(&qword_280EE8490, MEMORY[0x277D2E388], MEMORY[0x277D2E380]);
  sub_219BDCC64();
  v38 = *(v55 + 8);
  v39 = v57;
  v38(v37, v57);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v38)(v37, v39);
}

uint64_t sub_2196394DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v55 = a5;
  v51 = a4;
  v48 = a3;
  v7 = sub_219BDBD34();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDE374();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0464();
  v13 = *(v12 - 8);
  v56 = v12;
  v57 = v13;
  MEMORY[0x28223BE20](v12);
  v49 = MEMORY[0x277D30020];
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  v47 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v15);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v45 - v20;
  v46 = MEMORY[0x277D2FCC8];
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v15);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v45 - v23;
  v25 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v15);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v45 - v27;
  v29 = sub_219BDDAF4();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v28, v48, v29);
  (*(v30 + 56))(v28, 0, 1, v29);
  v31 = sub_219BDDCA4();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v32 = sub_219BDDB34();
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  v33 = sub_219BDE524();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v18, v51, v33);
  (*(v34 + 56))(v18, 0, 1, v33);
  sub_21963D204(a1, v28, v24, v21, v18);
  sub_218745B8C(v18, &qword_280EE8C38, v49, v15, sub_218748080);
  sub_218745B8C(v21, &unk_280EE8D80, v47, v15, sub_218748080);
  sub_218745B8C(v24, &unk_280EE8D38, v46, v15, sub_218748080);
  sub_218745B8C(v28, &qword_280EE8DB8, v25, v15, sub_218748080);
  v35 = v52;
  (*(v53 + 16))(v52, v55, v54);
  v36 = v50;
  sub_218977448(v35, v50);
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v37 = sub_219BDCD44();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09BA0;
  (*(v38 + 104))(v40 + v39, *MEMORY[0x277CEAD18], v37);
  sub_21963E0E4(&qword_27CC1D5A0, MEMORY[0x277D2E540], MEMORY[0x277D2E538]);
  v41 = v56;
  sub_219BDCCC4();

  (*(v57 + 8))(v36, v41);
  sub_219BDFD44();
  sub_219BDDB24();
  sub_21963E0E4(&qword_27CC1D5A8, MEMORY[0x277D2E0A8], MEMORY[0x277D2E0A0]);
  sub_219BDCC64();
  v42 = v60;
  v43 = *(v59 + 8);
  v43(v9, v60);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v43)(v9, v42);
}

void sub_219639CA8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v57 = a1;
  v53 = a4;
  v51 = a3;
  v5 = sub_219BDFFD4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDEB34();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1084();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x277D30020];
  v12 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v50 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v12);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = MEMORY[0x277D2FCC8];
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v12);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - v21;
  v23 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v12);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v44 - v25;
  v27 = sub_219BDDAF4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, v51, v27);
  (*(v28 + 56))(v26, 0, 1, v27);
  v29 = sub_219BDDCA4();
  (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
  v30 = sub_219BDDB34();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  v31 = sub_219BDE524();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v15, v53, v31);
  (*(v32 + 56))(v15, 0, 1, v31);
  sub_21963D204(v57, v26, v22, v18, v15);
  sub_218745B8C(v15, &qword_280EE8C38, v52, v12, sub_218748080);
  sub_218745B8C(v18, &unk_280EE8D80, v50, v12, sub_218748080);
  sub_218745B8C(v22, &unk_280EE8D38, v19, v12, sub_218748080);
  v33 = v26;
  v34 = v23;
  v36 = v54;
  v35 = v55;
  sub_218745B8C(v33, &qword_280EE8DB8, v34, v12, sub_218748080);
  (*(v36 + 16))(v9, v56, v35);
  sub_219BDEB24();
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v37 < 9.22337204e18)
  {
    (*(v45 + 104))(v44, *MEMORY[0x277D2E2B0], v46);
    v38 = v47;
    sub_219BE1074();
    (*(v36 + 8))(v9, v35);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v39 = sub_219BDCD44();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_219C09BA0;
    (*(v40 + 104))(v42 + v41, *MEMORY[0x277CEAD18], v39);
    sub_21963E0E4(&qword_27CC1D5B0, MEMORY[0x277D2EEC0], MEMORY[0x277D2EEB8]);
    v43 = v49;
    sub_219BDCCC4();

    (*(v48 + 8))(v38, v43);
    sub_219BE0B74();
    sub_21963E0E4(&unk_27CC1D5B8, MEMORY[0x277D2EB70], MEMORY[0x277D2EB68]);
    memset(v58, 0, sizeof(v58));
    sub_219BDCCE4();
    sub_218745B8C(v58, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0DDC);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_21963A4E0(char *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, void (*a7)(void), unint64_t *a8, uint64_t (*a9)(uint64_t), uint64_t a10)
{
  v39 = a7;
  v40 = a6;
  v36 = a5;
  v37 = a1;
  v38 = a4;
  v34 = a3;
  v42 = a9;
  v43 = a8;
  v41 = a10;
  v44 = sub_219BDBD34();
  v10 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x277D30020];
  v13 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  v17 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v13);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - v19;
  v21 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v13);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v33 - v23;
  v25 = sub_219BDDAF4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v24, v34, v25);
  (*(v26 + 56))(v24, 0, 1, v25);
  v27 = sub_219BDDB34();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  v28 = sub_219BDE524();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v16, v36, v28);
  (*(v29 + 56))(v16, 0, 1, v28);
  sub_21963D204(v37, v24, v38, v20, v16);
  sub_218745B8C(v16, &qword_280EE8C38, v35, v13, sub_218748080);
  sub_218745B8C(v20, &unk_280EE8D80, v17, v13, sub_218748080);
  sub_218745B8C(v24, &qword_280EE8DB8, v21, v13, sub_218748080);
  v39(0);
  sub_219BDDB24();
  sub_21963E0E4(v43, v42, v41);
  sub_219BDCC64();
  v30 = *(v10 + 8);
  v31 = v44;
  v30(v12, v44);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v30)(v12, v31);
}

uint64_t sub_21963A948(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a4;
  v33 = a3;
  v4 = sub_219BDBD34();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x277D30020];
  v7 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v31 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v7);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = MEMORY[0x277D2FCC8];
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v7);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v18 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v7);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v30 - v20;
  v22 = sub_219BDDAF4();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = sub_219BDDCA4();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = sub_219BDDB34();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = sub_219BDE524();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v10, v33, v25);
  (*(v26 + 56))(v10, 0, 1, v25);
  sub_21963D204(v34, v21, v17, v13, v10);
  sub_218745B8C(v10, &qword_280EE8C38, v32, v7, sub_218748080);
  sub_218745B8C(v13, &unk_280EE8D80, v31, v7, sub_218748080);
  sub_218745B8C(v17, &unk_280EE8D38, v14, v7, sub_218748080);
  sub_218745B8C(v21, &qword_280EE8DB8, v18, v7, sub_218748080);
  sub_219BE0C14();
  sub_219BDDB24();
  sub_21963E0E4(&unk_280EE81C8, MEMORY[0x277D2EBC0], MEMORY[0x277D2EBB8]);
  sub_219BDCC64();
  v27 = v37;
  v28 = *(v36 + 8);
  v28(v6, v37);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v28)(v6, v27);
}

uint64_t sub_21963AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a1;
  v3 = sub_219BE03F4();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v26 - v6;
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE1464();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDD864();
  sub_219BDB804();
  (*(v8 + 8))(v10, v7);
  sub_219BDD874();
  sub_219BE1454();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v15 = sub_219BDCD44();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v29 = *(v16 + 72);
  v18 = swift_allocObject();
  v26 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  v19 = *(v16 + 104);
  v28 = *MEMORY[0x277CEAD18];
  v27 = v19;
  v19(v18 + v17);
  sub_21963E0E4(&qword_280EE8020, MEMORY[0x277D2F270], MEMORY[0x277D2F268]);
  v30 = "activeExperiment";
  sub_219BDCCC4();

  (*(v12 + 8))(v14, v11);
  if (*(v35 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8))
  {

    v20 = v31;
    sub_219BE03E4();
    v22 = v32;
    v21 = v33;
    v23 = v34;
    (*(v33 + 32))(v32, v20, v34);
    v24 = swift_allocObject();
    *(v24 + 16) = v26;
    v27(v24 + v17, v28, v15);
    sub_21963E0E4(&qword_27CC1D568, MEMORY[0x277D2E510], MEMORY[0x277D2E508]);
    sub_219BDCCC4();

    (*(v21 + 8))(v22, v23);
  }

  sub_219BE0384();
  sub_21963E0E4(&unk_27CC1D5C8, MEMORY[0x277D2E4E0], MEMORY[0x277D2E4D8]);
  memset(v37, 0, sizeof(v37));
  sub_219BDCCE4();
  return sub_218745B8C(v37, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0DDC);
}

uint64_t sub_21963B3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a1;
  v21[2] = a3;
  v22 = sub_219BDBD34();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF464();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDDDB4();
  sub_219BDB804();
  (*(v7 + 8))(v9, v6);
  sub_219BDF454();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_219BDCD44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_21963E0E4(&qword_280EE87C0, MEMORY[0x277D2DAA8], MEMORY[0x277D2DAA0]);
  sub_219BDCCC4();

  (*(v11 + 8))(v13, v10);
  sub_219BE00D4();
  sub_219BDDB24();
  sub_21963E0E4(&qword_280EE84B8, MEMORY[0x277D2E338], MEMORY[0x277D2E330]);
  sub_219BDCC64();
  v18 = *(v3 + 8);
  v19 = v22;
  v18(v5, v22);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v18)(v5, v19);
}

uint64_t sub_21963B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v27[1] = a1;
  v27[2] = a3;
  v4 = sub_219BDBD34();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1594();
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDF464();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDDDB4();
  sub_219BDB804();
  (*(v12 + 8))(v14, v11);
  sub_219BDF454();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v19 = sub_219BDCD44();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x277CEAD18], v19);
  sub_21963E0E4(&qword_280EE87C0, MEMORY[0x277D2DAA8], MEMORY[0x277D2DAA0]);
  sub_219BDCCC4();

  (*(v16 + 8))(v18, v15);
  swift_getErrorValue();
  sub_219BF7A14();
  sub_21963E0E4(&qword_280EE7FC0, MEMORY[0x277D2F440], MEMORY[0x277D2F438]);
  v23 = v28;
  sub_219BDCCC4();
  (*(v29 + 8))(v10, v23);
  sub_219BE0C04();
  sub_219BDDB24();
  sub_21963E0E4(&unk_280EE81E0, MEMORY[0x277D2EBA8], MEMORY[0x277D2EBA0]);
  sub_219BDCC64();
  v24 = v32;
  v25 = *(v31 + 8);
  v25(v6, v32);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v25)(v6, v24);
}

uint64_t sub_21963BD38(uint64_t a1)
{
  v3 = *(sub_219BDEE04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_219BDD6C4() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_219BDF074() - 8);
  v11 = *(v1 + v5);
  v12 = *(v1 + v6);
  v13 = v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));
  v14 = *(v13 + *(v10 + 64));

  return sub_219631854(a1, v1 + v4, v11, v12, v1 + v8, v13, v14);
}

uint64_t sub_21963BEB4(uint64_t a1)
{
  v3 = *(sub_219BDEE04() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDD6C4() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2196345A0(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_21963BF94(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2196375E4(a1, v4, v5);
}

uint64_t sub_21963C008(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21963755C(a1, v4);
}

void sub_21963C078(uint64_t a1)
{
  if (!qword_27CC1D570)
  {
    sub_219BDDB34();
    sub_219BDDDC4();
    sub_218A450F0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1D570);
    }
  }
}

uint64_t sub_21963C104(uint64_t a1)
{
  v3 = *(sub_219BDDDC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BDDB34() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_21963B7F8(a1, v1 + v4, v7, v8);
}

void sub_21963C1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    sub_219BDDB34();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21963C26C(uint64_t a1)
{
  v3 = *(sub_219BDDDC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDDB34() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21963B3D4(a1, v1 + v4, v7);
}

uint64_t sub_21963C340(uint64_t a1)
{
  v3 = *(sub_219BDD884() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21963AE4C(a1, v1 + v4, v5);
}

uint64_t sub_21963C3DC(char *a1)
{
  v3 = *(sub_219BDE524() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDDB34() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21963A948(a1, v7, v1 + v4, v8);
}

void sub_21963C4B4(uint64_t a1)
{
  if (!qword_280EE8DC0)
  {
    MEMORY[0x28223BE20](a1);
    sub_219BDDAF4();
    sub_219BDDB34();
    sub_218748080(255, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
    sub_219BDE524();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280EE8DC0);
    }
  }
}

uint64_t sub_21963C604(uint64_t a1, uint64_t a2)
{
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21963C6E0(uint64_t a1)
{
  if (!qword_27CC1D578)
  {
    sub_219BDDAF4();
    sub_219BDEB34();
    sub_219BDE524();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1D578);
    }
  }
}

void sub_21963C76C(char *a1)
{
  v3 = *(sub_219BDDAF4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDE524() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDEB34() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_219639CA8(a1, v10, v1 + v4, v1 + v7, v11);
}

void sub_21963C8A8(uint64_t a1)
{
  if (!qword_27CC1D580)
  {
    MEMORY[0x28223BE20](a1);
    sub_219BDDAF4();
    sub_219BDDB34();
    sub_219BDE374();
    sub_219BDE524();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC1D580);
    }
  }
}

uint64_t sub_21963C9C8(char *a1)
{
  v3 = *(sub_219BDDAF4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDE524() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDE374() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_219BDDB34() - 8);
  v13 = *(v1 + 16);
  v14 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_2196394DC(a1, v13, v1 + v4, v1 + v7, v1 + v10, v14);
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = sub_219BDDAF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6) & ~v6;
  v19 = *(*(v5 - 8) + 64);
  v20 = sub_219BDE524();
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = sub_219BDDB34();
  v10 = *(v18 - 8);
  v11 = *(v10 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_219BDDCA4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = (v7 + v19 + v9) & ~v9;
  v15 = (v14 + v17 + v11) & ~v11;
  (*(v8 + 8))(v0 + v14, v20);
  (*(v10 + 8))(v0 + v15, v18);

  return swift_deallocObject();
}

uint64_t sub_21963CE94(char *a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v11 = *(sub_219BDDAF4() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v15 = (v13 + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80);
  v16 = *(*(v14 - 8) + 64);
  v17 = *(sub_219BDE524() - 8);
  v18 = (v15 + v16 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = *(v17 + 64);
  v20 = *(sub_219BDDB34() - 8);
  return sub_21963A4E0(a1, *(v5 + 16), v5 + v12, (v5 + v15), v5 + v18, v5 + ((v18 + v19 + *(v20 + 80)) & ~*(v20 + 80)), a2, a3, a4, a5);
}

void sub_21963D084(uint64_t a1)
{
  if (!qword_280EE8DA8)
  {
    MEMORY[0x28223BE20](a1);
    sub_219BDDB34();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280EE8DA8);
    }
  }
}

uint64_t sub_21963D188(uint64_t a1)
{
  v3 = *(sub_219BDDB34() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_219638DBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_21963D204(char *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v105 = a5;
  v100 = a3;
  v102 = a2;
  v6 = sub_219BDFA94();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v81 - v12;
  MEMORY[0x28223BE20](v13);
  v90 = &v81 - v14;
  MEMORY[0x28223BE20](v15);
  v104 = &v81 - v16;
  v17 = sub_219BDF154();
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x28223BE20](v17);
  v87 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v8);
  MEMORY[0x28223BE20](v19 - 8);
  v98 = &v81 - v20;
  v99 = sub_219BDDCA4();
  v101 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v86 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = &v81 - v23;
  v24 = sub_219BE1744();
  v97 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v81 - v29;
  v31 = sub_219BDDAF4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v103 = &v81 - v36;
  sub_21963E064(v102, v30, &qword_280EE8DB8, v27);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_218745B8C(v30, &qword_280EE8DB8, MEMORY[0x277D2FC00], MEMORY[0x277D83D88], sub_218748080);
  }

  else
  {
    v37 = v103;
    (*(v32 + 32))(v103, v30, v31);
    v38.n128_f64[0] = (*(v32 + 16))(v34, v37, v31);
    sub_219BA9AE0(v34, v38);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v40 = v39;
    v41 = sub_219BDCD44();
    v42 = *(v41 - 8);
    v43 = a1;
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v84 = *(v42 + 72);
    v85 = v40;
    v45 = swift_allocObject();
    v83 = xmmword_219C09BA0;
    *(v45 + 16) = xmmword_219C09BA0;
    v46 = *(v42 + 104);
    v82 = *MEMORY[0x277CEAD18];
    v102 = v41;
    v81 = v46;
    v46(v45 + v44);
    sub_21963E0E4(&qword_280EE7F50, MEMORY[0x277D2F8B0], MEMORY[0x277D2F8A8]);
    sub_219BDCCC4();

    (*(v97 + 8))(v26, v24);
    v47 = v98;
    sub_21963E064(v100, v98, &unk_280EE8D38, MEMORY[0x277D2FCC8]);
    v48 = v99;
    if ((*(v101 + 48))(v47, 1, v99) == 1)
    {
      (*(v32 + 8))(v103, v31);
      sub_218745B8C(v47, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88], sub_218748080);
    }

    else
    {
      v49 = v96;
      v100 = "activeExperiment";
      v50 = v101;
      (*(v101 + 32))(v96, v47, v48);
      v51 = v86;
      (*(v50 + 16))(v86, v49, v48);
      v52 = v87;
      sub_218ADE16C(v51);
      v53 = swift_allocObject();
      *(v53 + 16) = v83;
      v81(v53 + v44, v82, v102);
      sub_21963E0E4(&unk_280EE8868, MEMORY[0x277D2D900], MEMORY[0x277D2D8F8]);
      v54 = v89;
      sub_219BDCCC4();

      (*(v88 + 8))(v52, v54);
      (*(v50 + 8))(v96, v48);
      (*(v32 + 8))(v103, v31);
    }

    a1 = v43;
  }

  v55 = v104;
  v56 = v105;
  sub_21963E064(v105, v104, &qword_280EE8C38, MEMORY[0x277D30020]);
  v57 = sub_219BDE524();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  if (v59(v55, 1, v57) == 1)
  {
    return sub_218745B8C(v55, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
  }

  v103 = a1;
  v61 = sub_219BDE514();
  v63 = v62;
  v64 = *(v58 + 8);
  result = v64(v55, v57);
  if (v63)
  {
    v104 = v61;
    v65 = v90;
    sub_21963E064(v56, v90, &qword_280EE8C38, MEMORY[0x277D30020]);
    if (v59(v65, 1, v57) == 1)
    {
      sub_218745B8C(v65, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
      v66 = v91;
    }

    else
    {
      v67 = sub_219BDE504();
      v69 = v68;
      v64(v65, v57);
      v66 = v91;
      if (v69)
      {
        goto LABEL_14;
      }
    }

    v67 = 0;
LABEL_14:
    v102 = v67;
    sub_21963E064(v56, v66, &qword_280EE8C38, MEMORY[0x277D30020]);
    if (v59(v66, 1, v57) == 1)
    {
      sub_218745B8C(v66, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
      v70 = v92;
    }

    else
    {
      sub_219BDE4E4();
      v72 = v71;
      v64(v66, v57);
      v70 = v92;
      if (v72)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    sub_21963E064(v105, v70, &qword_280EE8C38, MEMORY[0x277D30020]);
    if (v59(v70, 1, v57) == 1)
    {
      sub_218745B8C(v70, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
    }

    else
    {
      sub_219BDE4F4();
      v74 = v73;
      v64(v70, v57);
      if (v74)
      {
LABEL_22:
        v75 = v93;
        sub_219BDFA84();
        sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v76 = sub_219BDCD44();
        v77 = *(v76 - 8);
        v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_219C09BA0;
        (*(v77 + 104))(v79 + v78, *MEMORY[0x277CEAD18], v76);
        sub_21963E0E4(&qword_280EE8608, MEMORY[0x277D2DF00], MEMORY[0x277D2DEF8]);
        v80 = v95;
        sub_219BDCCC4();

        return (*(v94 + 8))(v75, v80);
      }
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21963E064(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218748080(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21963E0E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21963E12C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_21963E150, 0, 0);
}

uint64_t sub_21963E150()
{
  v1 = type metadata accessor for SuggestionTodayFeedGroupEmitterCursor();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v2[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_21963E23C;

  return MEMORY[0x282190858](v0 + 16, v1, &unk_219C94CC8, v2, v1);
}

uint64_t sub_21963E23C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21963E604;
  }

  else
  {

    v2 = sub_21963E358;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21963E358(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[2];
  v1[10] = v3;
  sub_219BEF164();
  if (v2)
  {

    v4 = v1[1];

    return v4();
  }

  else
  {
    v6 = v1[3];
    v1[11] = v6;

    v7 = swift_task_alloc();
    v1[12] = v7;
    *v7 = v1;
    v7[1] = sub_21963E47C;
    v8 = v1[5];
    v9 = v1[4];

    return sub_21963F41C(v9, v8, v6, v3);
  }
}

uint64_t sub_21963E47C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21963E668;
  }

  else
  {

    v2 = sub_21963E5A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21963E5A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963E604()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963E668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963E6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218D42644;

  return sub_21963E778(a3);
}

uint64_t sub_21963E778(uint64_t a1)
{
  v2[201] = v1;
  v2[195] = a1;
  v2[207] = sub_219BE1BF4();
  v2[208] = swift_task_alloc();
  v3 = sub_219BEEF54();
  v2[209] = v3;
  v4 = *(v3 - 8);
  v2[210] = v4;
  v2[211] = *(v4 + 64);
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v5 = sub_219BF00A4();
  v2[215] = v5;
  v2[216] = *(v5 - 8);
  v2[217] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21963E8E8, 0, 0);
}

uint64_t sub_21963E8E8(uint64_t a1)
{
  sub_219BEF164();
  v2 = v1[201];
  v3 = v1[195];
  v1[218] = v1[171];
  v4 = swift_allocObject();
  v1[219] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_2186E2394();
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v1 + 82, v1 + 167, sub_21963EA90, v1 + 162);
}

uint64_t sub_21963EA90()
{
  v1[220] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21963F2E8, 0, 0);
  }

  else
  {
    v1[221] = v1[167];
    v2 = v1[168];
    v1[222] = v2;
    v1[223] = v1[169];
    v1[224] = v1[170];

    v3 = v2;

    return MEMORY[0x282200928](v1 + 2, v1 + 177, sub_21963EB78, v1 + 184);
  }
}

uint64_t sub_21963EB94()
{
  v1 = v0[223];
  v2 = v0[222];
  v3 = v0[221];
  v4 = v0[218];
  v5 = v0[217];
  v6 = v0[195];
  v7 = v0[177];

  sub_2196437D4(v6, v4, v3, v2, v1, v7, v5);

  v8 = sub_219BF0094();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v0[211];
    v11 = v0[210];
    v40 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v12 = *(v11 + 16);
    v11 += 16;
    v30 = v12;
    v13 = *(v11 + 64);
    v14 = v8 + ((v13 + 32) & ~v13);
    v29 = *(v11 + 56);
    v37 = (v13 + 24) & ~v13;
    v36 = (v11 + 16);
    v27 = (v11 - 8);
    v28 = (v37 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v39 = v14;
      v35 = v9;
      v15 = v0[214];
      v38 = v15;
      v16 = v0[213];
      v34 = v16;
      v17 = v0[212];
      v18 = v0[209];
      v19 = v0[201];
      v33 = v0[195];
      v30(v15, v14, v18);
      v30(v16, v15, v18);
      v30(v17, v15, v18);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v31 = *v36;
      (*v36)(v20 + v37, v17, v18);
      v0[183] = MEMORY[0x277D84F90];
      sub_219645910(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
      sub_2186D8DC4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
      sub_218711654();

      sub_219BF7164();
      v21 = MEMORY[0x277D6CEE8];
      sub_2186D8DC4(0, &unk_280EE7120, sub_2196464F0, MEMORY[0x277D6CEE8]);
      swift_allocObject();
      v32 = sub_219BE2D14();
      v30(v17, v15, v18);
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      v31(v22 + v37, v17, v18);
      *(v22 + v28) = v33;
      v0[189] = MEMORY[0x277D84F90];

      sub_219BF7164();
      sub_2186D8DC4(0, &qword_280EE7130, sub_219646620, v21);
      swift_allocObject();
      v23 = sub_219BE2D14();
      (*v27)(v38, v18);
      type metadata accessor for SuggestionTodayFeedGroupEmitterCursor.Suggestion(0);
      v24 = swift_allocObject();
      v31(v24 + OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_cluster, v34, v18);
      *(v24 + OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_tag) = v32;
      *(v24 + OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_headlines) = v23;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v14 = v39 + v29;
      v9 = v35 - 1;
    }

    while (v35 != 1);

    v25 = v40;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v0[225] = v25;

  return MEMORY[0x282200928](v0 + 2, v0 + 177, sub_21963F104, v0 + 190);
}

uint64_t sub_21963F120()
{
  v1 = v0[225];
  (*(v0[216] + 8))(v0[217], v0[215]);
  v2 = v0[177];
  type metadata accessor for SuggestionTodayFeedGroupEmitterCursor();
  v3 = swift_allocObject();
  v0[226] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x282200920](v0 + 82, v0 + 167, sub_21963F1CC, v0 + 196, v4);
}

uint64_t sub_21963F224()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1808);

  return v1(v2);
}

uint64_t sub_21963F360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[211] = v4;
  v5[205] = a4;
  v5[199] = a3;
  v5[193] = a2;
  v5[187] = a1;
  type metadata accessor for TodayFeedGroup(0);
  v5[217] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21963F4BC, 0, 0);
}

uint64_t sub_21963F4BC(__n128 a1)
{
  if (!v1[205])
  {
    v24 = sub_219BEEDD4();
    sub_219645910(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D323C8], v24);
    swift_willThrow();
LABEL_28:

    v29 = v1[1];

    return v29();
  }

  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  v2 = sub_219BEDC44();

  v3 = sub_218987DF8(v2);
  v5 = v4;

  v1[223] = v3;
  v1[229] = v5;
  if (!v3)
  {
    v27 = sub_219BEEDD4();
    sub_219645910(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D32390], v27);
    swift_willThrow();

    goto LABEL_28;
  }

  v1[235] = OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_cluster;

  v6 = sub_219BEEF44();
  v64 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_49;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v59 = v5;
    v8 = v1[199];
    v9 = OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v1[236] = OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v60 = v1;
    if (!v7)
    {
      break;
    }

    v10 = 0;
    v61 = v8 + v9;
    v62 = v6 & 0xFFFFFFFFFFFFFF8;
    v63 = v6 & 0xC000000000000001;
    v58 = v6;
    v5 = v6 + 32;
    while (1)
    {
      if (v63)
      {
        v6 = MEMORY[0x21CECE0F0](v10, v58);
      }

      else
      {
        if (v10 >= *(v62 + 16))
        {
          goto LABEL_48;
        }

        v6 = *(v5 + 8 * v10);
      }

      v11 = v6;
      if (__OFADD__(v10++, 1))
      {
        break;
      }

      v13 = v7;
      v1 = *(v61 + 16);
      v14 = [v6 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (v1[2] && (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(v1 + 32), v20 = v18 & ~v19, ((*(v1 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (v1[6] + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v17;
          if (v23 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v1 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v20) & 1) == 0)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v6 = sub_219BF73E4();
      }

      v7 = v13;
      if (v10 == v13)
      {
        v26 = v64;
        v1 = v60;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v57 = v6;
    v7 = sub_219BF7214();
    v6 = v57;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_32:
  v1[237] = v26;

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v31 = qword_280F616D8;
  v1[238] = qword_280F616D8;
  sub_2186F20D4(0);
  v1[239] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C0B8C0;
  v34 = sub_219BEEF34();
  v36 = v35;
  *(v33 + 56) = MEMORY[0x277D837D0];
  v37 = sub_2186FC3BC();
  v1[240] = v37;
  *(v33 + 64) = v37;
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v38 = sub_219BEEF44();
  if (v38 >> 62)
  {
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = MEMORY[0x277D83B88];
  v41 = MEMORY[0x277D83C10];
  *(v33 + 96) = MEMORY[0x277D83B88];
  *(v33 + 104) = v41;
  *(v33 + 72) = v39;
  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
    v42 = sub_219BF7214();
  }

  else
  {
    v42 = *(v26 + 16);
  }

  *(v33 + 136) = v40;
  *(v33 + 144) = v41;
  *(v33 + 112) = v42;
  v43 = sub_219BF6214();
  sub_219BE5314("Suggestions group %{public}@ filtered headlines %ld to %ld", 58, 2, &dword_2186C1000, v31, v43, v33);

  v44 = sub_219BEEF14();
  v45 = [v44 minClusterSizeAutoFavorite];

  if ((v42 & 0x8000000000000000) != 0 || v42 < v45)
  {

    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_219C0B8C0;
    v47 = sub_219BEEF34();
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = v37;
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    *(v46 + 96) = v40;
    *(v46 + 104) = v41;
    *(v46 + 72) = v42;
    v49 = sub_219BEEF14();
    v50 = [v49 minClusterSizeAutoFavorite];

    v51 = MEMORY[0x277D83ED0];
    *(v46 + 136) = MEMORY[0x277D83E88];
    *(v46 + 144) = v51;
    *(v46 + 112) = v50;
    v52 = sub_219BF6214();
    sub_219BE5314("Suggestions group %{public}@ skipping tag because headlines %ld less than min cluster size %ld", 94, 2, &dword_2186C1000, v31, v52, v46);

    v53 = swift_task_alloc();
    v60[248] = v53;
    *v53 = v60;
    v53[1] = sub_219640648;
    v54 = v60[199];
    v55 = v60[193];
    v56 = v60[187];

    return sub_21963F41C(v56, v55, v54, v59);
  }

  else
  {

    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
    swift_asyncLet_begin();

    sub_2187E7248(0);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v60 + 2, v60 + 169, sub_21963FCDC, v60 + 162);
  }
}

uint64_t sub_21963FCDC(uint64_t a1, uint64_t a2)
{
  v3[241] = v2;
  if (v2)
  {

    return MEMORY[0x282200920](v3 + 82, v3 + 175, sub_219640A1C, v3 + 170, v4);
  }

  else
  {
    v3[242] = v3[169];
    swift_unknownObjectRetain();

    return MEMORY[0x282200930](v3 + 82, v3 + 175, sub_21963FD98, v3 + 182);
  }
}

uint64_t sub_21963FD98()
{
  *(v1 + 1944) = v0;
  if (v0)
  {

    v2 = sub_219640C14;
  }

  else
  {
    v2 = sub_21963FE18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21963FE18()
{
  v1 = *(v0 + 1400);
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v22 = v0;
    v23 = v1;
    v24 = *(v0 + 1592) + *(v0 + 1888);
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v4 = v1 + 32;
    while (1)
    {
      if (v26)
      {
        v1 = MEMORY[0x21CECE0F0](v3, v23);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v0 = v22;
          break;
        }
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v1 = *(v4 + 8 * v3);
        swift_unknownObjectRetain();
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_23;
        }
      }

      v0 = *(v24 + 16);
      v6 = [v1 identifier];
      v7 = sub_219BF5414();
      v9 = v8;

      if (*(v0 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v10 = sub_219BF7AE4(), v11 = -1 << *(v0 + 32), v12 = v10 & ~v11, ((*(v0 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = (*(v0 + 48) + 16 * v12);
          v15 = *v14 == v7 && v14[1] == v9;
          if (v15 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v0 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
        if (v3 == v2)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v3 == v2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v16 = sub_219BF5904();
  v17 = FCPromoteOneHeadline();

  if (v17)
  {

    v18 = sub_219BF5924();
    *(v0 + 1952) = v18;

    v19 = swift_task_alloc();
    *(v0 + 1960) = v19;
    *v19 = v0;
    v19[1] = sub_219640154;
    v20 = *(v0 + 1936);
    v21 = *(v0 + 1544);

    sub_21964198C(v21, v20, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219640154(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1968) = a1;
  *(v3 + 1976) = v1;

  if (v1)
  {
    v4 = sub_219640E78;
  }

  else
  {

    v4 = sub_219640280;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219640280()
{
  v1 = v0[229];
  sub_219642BCC(v0[246], v0[217]);
  if (v1)
  {
    v2 = v0[229];
    v3 = v0[217];
    v4 = v0[187];
    sub_218B8B468(0);
    v6 = (v4 + *(v5 + 48));
    sub_21964625C(v3, v4, type metadata accessor for TodayFeedGroup);
    v6[3] = type metadata accessor for SuggestionTodayFeedGroupEmitterCursor();

    swift_unknownObjectRelease();
    *v6 = v2;
    sub_219646018(v3, type metadata accessor for TodayFeedGroup);
    sub_2196468C8(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
    swift_storeEnumTagMultiPayload();
    v8 = sub_219640494;
    v9 = v0 + 82;
    v10 = v0 + 175;
    v11 = v0 + 224;
  }

  else
  {
    v12 = v0[217];
    v13 = v0[187];

    swift_unknownObjectRelease();
    sub_218D90770(v12, v13);
    sub_2196468C8(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
    swift_storeEnumTagMultiPayload();
    v8 = sub_219640574;
    v9 = v0 + 82;
    v10 = v0 + 175;
    v11 = v0 + 212;
  }

  return MEMORY[0x282200920](v9, v10, v8, v11, v7);
}

uint64_t sub_2196404EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196405CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219640648()
{
  *(*v1 + 1992) = v0;

  if (v0)
  {
    v2 = sub_2196407E4;
  }

  else
  {
    v2 = sub_21964075C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21964075C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196407E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21964086C()
{
  *(*v1 + 2016) = v0;

  if (v0)
  {
    v2 = sub_2196410E8;
  }

  else
  {
    v2 = sub_219640980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219640980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219640A74(uint64_t a1)
{
  v2 = v1[241];
  v1[250] = v2;
  v3 = v1[240];
  v4 = v1[238];
  v5 = sub_219BF61F4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = sub_219BEEF34();
  v8 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v3;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v1[167] = 0;
  v1[168] = 0xE000000000000000;
  v1[181] = v2;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v10 = v1[167];
  v11 = v1[168];
  *(v6 + 96) = v8;
  *(v6 + 104) = v3;
  *(v6 + 72) = v10;
  *(v6 + 80) = v11;
  sub_219BE5314("Suggestions group %{public}@ failed to resolve group, error=%{public}@", 70, 2, &dword_2186C1000, v4, v5, v6);

  v12 = swift_task_alloc();
  v1[251] = v12;
  *v12 = v1;
  v12[1] = sub_21964086C;
  v13 = v1[229];
  v14 = v1[199];
  v15 = v1[193];
  v16 = v1[187];

  return sub_21963F41C(v16, v15, v14, v13);
}

uint64_t sub_219640C14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x282200920](v0 + 656, v0 + 1400, sub_219640C80, v0 + 1504, v1);
}

uint64_t sub_219640CD8(uint64_t a1)
{
  v2 = v1[243];
  v1[250] = v2;
  v3 = v1[240];
  v4 = v1[238];
  v5 = sub_219BF61F4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = sub_219BEEF34();
  v8 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v3;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v1[167] = 0;
  v1[168] = 0xE000000000000000;
  v1[181] = v2;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v10 = v1[167];
  v11 = v1[168];
  *(v6 + 96) = v8;
  *(v6 + 104) = v3;
  *(v6 + 72) = v10;
  *(v6 + 80) = v11;
  sub_219BE5314("Suggestions group %{public}@ failed to resolve group, error=%{public}@", 70, 2, &dword_2186C1000, v4, v5, v6);

  v12 = swift_task_alloc();
  v1[251] = v12;
  *v12 = v1;
  v12[1] = sub_21964086C;
  v13 = v1[229];
  v14 = v1[199];
  v15 = v1[193];
  v16 = v1[187];

  return sub_21963F41C(v16, v15, v14, v13);
}

uint64_t sub_219640E78()
{

  swift_unknownObjectRelease();

  return MEMORY[0x282200920](v0 + 656, v0 + 1400, sub_219640EF0, v0 + 1600, v1);
}

uint64_t sub_219640F48(uint64_t a1)
{
  v2 = v1[247];
  v1[250] = v2;
  v3 = v1[240];
  v4 = v1[238];
  v5 = sub_219BF61F4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = sub_219BEEF34();
  v8 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v3;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v1[167] = 0;
  v1[168] = 0xE000000000000000;
  v1[181] = v2;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v10 = v1[167];
  v11 = v1[168];
  *(v6 + 96) = v8;
  *(v6 + 104) = v3;
  *(v6 + 72) = v10;
  *(v6 + 80) = v11;
  sub_219BE5314("Suggestions group %{public}@ failed to resolve group, error=%{public}@", 70, 2, &dword_2186C1000, v4, v5, v6);

  v12 = swift_task_alloc();
  v1[251] = v12;
  *v12 = v1;
  v12[1] = sub_21964086C;
  v13 = v1[229];
  v14 = v1[199];
  v15 = v1[193];
  v16 = v1[187];

  return sub_21963F41C(v16, v15, v14, v13);
}

uint64_t sub_2196410E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219641184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8DC4(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196412A4, 0, 0);
}

uint64_t sub_2196412A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_2196468C8(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2196462C4(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_218D90770(*(v0 + 48), *(v0 + 72));
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_219646018(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2196414B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2196414D8, 0, 0);
}

uint64_t sub_2196414D8(uint64_t a1)
{
  sub_219BE2CF4();
  v2 = v1[2];
  v1[5] = v2;
  v3 = swift_task_alloc();
  v1[6] = v3;
  v4 = sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
  v5 = sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  *v3 = v1;
  v3[1] = sub_2196415E4;
  v6 = v1[3];
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6, v2, v4, v5, v7);
}

uint64_t sub_2196415E4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2196469E0;
  }

  else
  {
    v2 = sub_2196469E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2196416F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_219641718, 0, 0);
}

uint64_t sub_219641718(uint64_t a1)
{
  sub_219BE2CF4();
  v2 = v1[2];
  v1[5] = v2;
  v3 = swift_task_alloc();
  v1[6] = v3;
  sub_2187E7248(0);
  v5 = v4;
  v6 = sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  *v3 = v1;
  v3[1] = sub_219641814;
  v7 = v1[3];
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v7, v2, v5, v6, v8);
}

uint64_t sub_219641814()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_219641928;
  }

  else
  {
    v2 = sub_2189E3250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219641928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21964198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8DC4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D8DC4(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D8DC4(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_2186D8DC4(0, &unk_280E8FF30, sub_218A42400, v5);
  v4[15] = swift_task_alloc();
  sub_2186D8DC4(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v8 = sub_219BDBD64();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_219BF26F4();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_219BF1364();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();
  v11 = sub_219BF3C84();
  v4[26] = v11;
  v4[27] = *(v11 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v12 = sub_219BF3E84();
  v4[30] = v12;
  v4[31] = *(v12 - 8);
  v4[32] = swift_task_alloc();
  v13 = sub_219BF1214();
  v4[33] = v13;
  v4[34] = *(v13 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for SuggestionTodayFeedGroupConfigData(0);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v14 = sub_219BF1934();
  v4[39] = v14;
  v4[40] = *(v14 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219641F20, 0, 0);
}

uint64_t sub_219641F20()
{
  v95 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v92 = *(v0 + 280);
  v5 = *(v0 + 272);
  v87 = *(v0 + 288);
  v89 = *(v0 + 264);
  v85 = *(v0 + 336);
  sub_2186E0AA8(0);
  sub_219BEDD14();
  (*(v2 + 16))(v85, v4, v1);
  sub_219646018(v4, type metadata accessor for SuggestionTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v92, v3 + *(v87 + 20), v89);
  sub_219646018(v3, type metadata accessor for SuggestionTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 336);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  v12 = *(v0 + 32);
  v13 = qword_280F616D8;
  sub_219BF1774();

  (*(v10 + 8))(v9, v11);
  v14 = *(v7 + 8);
  *(v0 + 352) = v14;
  *(v0 + 360) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6, v8);
  if (v12 >> 62)
  {
    v15 = sub_219BF7214();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  v86 = v13;
  if (v15)
  {
    v94[0] = MEMORY[0x277D84F90];
    v17 = sub_218C34A88(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
    }

    v22 = v94[0];
    v23 = *(v0 + 216);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      v25 = *MEMORY[0x277D34128];
      do
      {
        v26 = *(v0 + 232);
        v27 = *(v0 + 208);
        *v26 = MEMORY[0x21CECE0F0](v24, *(v0 + 32));
        (*(v23 + 104))(v26, v25, v27);
        v94[0] = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_218C34A88((v28 > 1), v29 + 1, 1);
          v22 = v94[0];
        }

        v30 = *(v0 + 232);
        v31 = *(v0 + 208);
        ++v24;
        *(v22 + 16) = v29 + 1;
        (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v30, v31);
      }

      while (v15 != v24);
    }

    else
    {
      v32 = (*(v0 + 32) + 32);
      v90 = *(v23 + 104);
      do
      {
        **(v0 + 224) = *v32;
        v90();
        v94[0] = v22;
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        swift_unknownObjectRetain();
        if (v34 >= v33 >> 1)
        {
          sub_218C34A88((v33 > 1), v34 + 1, 1);
          v22 = v94[0];
        }

        v35 = *(v0 + 224);
        v36 = *(v0 + 208);
        *(v22 + 16) = v34 + 1;
        (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v34, v35, v36);
        ++v32;
        --v15;
      }

      while (v15);
    }

    v16 = MEMORY[0x277D84F90];
  }

  v74 = *(v0 + 256);
  v75 = *(v0 + 248);
  v76 = *(v0 + 240);
  v38 = *(v0 + 192);
  v37 = *(v0 + 200);
  v39 = *(v0 + 176);
  v78 = *(v0 + 184);
  v79 = *(v0 + 168);
  v81 = *(v0 + 160);
  v67 = *(v0 + 152);
  v69 = *(v0 + 144);
  v71 = *(v0 + 136);
  v91 = *(v0 + 128);
  v72 = *(v0 + 120);
  v77 = *(v0 + 64);
  v84 = *(v0 + 48);
  v93 = *(v0 + 40);
  v40 = *(v0 + 24);
  v83 = *(v0 + 56);
  sub_218F0B984(v16);
  sub_218F0BA7C(v16);
  sub_218F0BB90(v16);
  sub_219BF3E74();
  v88 = v40;
  swift_getObjectType();
  sub_2194F6464(v37);
  v73 = MEMORY[0x277D84560];
  sub_2186D8DC4(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_219C09BA0;
  v42 = swift_allocBox();
  (*(v38 + 16))(v43, v37, v78);
  *v39 = v42;
  v44 = *MEMORY[0x277D33748];
  v45 = sub_219BF2124();
  (*(*(v45 - 8) + 104))(v39, v44, v45);
  (*(v79 + 104))(v39, *MEMORY[0x277D339C8], v81);
  sub_219BF1A04();
  v80 = *(v93 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService + 24);
  v82 = *(v93 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService + 32);
  __swift_project_boxed_opaque_existential_1((v93 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService), v80);
  v94[0] = 0;
  v94[1] = 0xE000000000000000;
  sub_219BF7314();

  strcpy(v94, "suggestion::");
  BYTE5(v94[1]) = 0;
  HIWORD(v94[1]) = -5120;
  v46 = v40;
  v47 = [v40 identifier];
  v48 = sub_219BF5414();
  v50 = v49;

  MEMORY[0x21CECC330](v48, v50);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v51 = sub_219BDBD44();
  v53 = v52;
  (*(v69 + 8))(v67, v71);
  MEMORY[0x21CECC330](v51, v53);

  v54 = [v46 identifier];
  sub_219BF5414();

  v70 = sub_219BEC004();
  v68 = *(*(v70 - 8) + 56);
  v68(v91, 1, 1, v70);
  v94[0] = sub_219BF1714();
  sub_2191EED30(v41);
  sub_218A42400(0);
  (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
  sub_219BF1764();

  sub_2196462C4(v72, &unk_280E8FF30, sub_218A42400);
  sub_2196462C4(v91, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C146A0;
  *(v56 + 32) = v88;
  sub_2186D8DC4(0, &unk_280E8B790, MEMORY[0x277D34258], v73);
  v57 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_219C09BA0;
  (*(v75 + 16))(v58 + v57, v74, v76);
  v68(v91, 1, 1, v70);
  swift_unknownObjectRetain();
  sub_219A95188(v16);
  sub_219A95188(v16);
  sub_219A951A0(v16);
  sub_219A951B8(v16);
  sub_219A952CC(v16);
  sub_219A952E4(v16);
  sub_219A953F8(v16);
  sub_219BF2024();
  v59 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v61 = v60;
  v62 = *(v60 - 8);
  (*(v62 + 16))(v77, v93 + v59, v60);
  (*(v62 + 56))(v77, 0, 1, v61);
  v63 = sub_219BF35D4();
  (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
  *(v0 + 392) = 14;
  sub_2196468C8(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v64 = sub_219BF2774();
  (*(*(v64 - 8) + 56))(v84, 1, 1, v64);
  *MEMORY[0x277D30BC8];
  v86;
  sub_219BF2A84();
  v65 = swift_task_alloc();
  *(v0 + 368) = v65;
  *v65 = v0;
  v65[1] = sub_2195E00E4;
  v18 = *(v0 + 112);
  v19 = *(v0 + 88);
  v17 = *(v0 + 328);
  v20 = v80;
  v21 = v82;

  return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
}

uint64_t sub_219642BCC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v12[3] = a1;
  v14 = a3;
  sub_2186D8DC4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_219BEF554();
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v13 = sub_219BED8D4();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8(0);

  v9 = sub_219BEDCB4();
  v12[1] = v10;
  v12[2] = v9;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for SuggestionTodayFeedGroupKnobs(0);
  sub_2196468C8(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v6 + 32))(v14, v8, v13);
  type metadata accessor for TodayFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219642F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2193CEC5C;

  return sub_219642FB4(a3);
}

uint64_t sub_219642FB4(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_219642FD4, 0, 0);
}

uint64_t sub_219642FD4(__n128 a1)
{
  v19 = v1;
  v1[4] = MEMORY[0x277D84FA0];
  sub_219BEF0B4();
  v2 = *(v1[5] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v3 = [v2 useFood];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_219BEF0B4();
    v4 = *(v1[11] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v5 = [v4 foodHubTagID];
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = sub_219BF5414();
      v8 = v7;

      sub_219497B60(&v18, v6, v8);
    }
  }

  sub_219BEF0B4();
  v9 = *(v1[6] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);

  if (v9 == 1 && (sub_219BEF0B4(), v10 = *(v1[7] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig), swift_unknownObjectRetain(), , v11 = [v10 mySportsTagID], swift_unknownObjectRelease(), v11) && (sub_219BEF0B4(), v12 = *(v1[8] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController), , v13 = objc_msgSend(v12, sel_hasMutedSubscriptionForTagID_, v11), v11, v12, (v13 & 1) == 0))
  {
    __swift_project_boxed_opaque_existential_1((v1[13] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager), *(v1[13] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager + 24));
    v1[14] = sub_219BF4434();
    v17 = swift_task_alloc();
    v1[15] = v17;
    *v17 = v1;
    v17[1] = sub_2196432A4;

    return MEMORY[0x2821D23D8](v1 + 9);
  }

  else
  {
    v14 = v1[4];
    v15 = v1[1];

    return v15(v14);
  }
}

uint64_t sub_2196432A4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_219643438;
  }

  else
  {

    v2 = sub_2196433C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2196433C0()
{
  v1 = sub_219BF29C4();
  sub_218DD88E0(v1);

  v2 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_219643438()
{

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = qword_280F616D8;
  v3 = sub_219BF61F4();
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[10] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_219BE5314("Failed to fetch sports graph for determining ignored sports tag ids for onboarded user, error=%{public}@.", 105, 2, &dword_2186C1000, v2, v3, v4);

  v7 = v0[4];
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_2196435BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2196435DC, 0, 0);
}

uint64_t sub_2196435DC(uint64_t a1)
{
  sub_219BE2CF4();
  v1[5] = v1[2];
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_219643698;
  v3 = v1[3];

  return MEMORY[0x2821D23D8](v3);
}

uint64_t sub_219643698()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2196469E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2196437D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v144 = a6;
  v149 = a5;
  v145 = a4;
  v146 = a3;
  v136 = a2;
  v138 = a7;
  v143 = sub_219BF0BD4();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BF0114();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_219BDBD34();
  v10 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v154 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v148 = &v136 - v13;
  MEMORY[0x28223BE20](v14);
  *&v167 = &v136 - v15;
  MEMORY[0x28223BE20](v16);
  v163 = &v136 - v17;
  MEMORY[0x28223BE20](v18);
  v156 = &v136 - v19;
  MEMORY[0x28223BE20](v20);
  v155 = &v136 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v136 - v23;
  sub_2196468C8(0, &qword_280E91728, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D324D0]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v136 - v28;
  sub_2196468C8(0, &qword_280E91290, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32858]);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = &v136 - v33;
  v151 = a1;
  sub_219BEF144();
  sub_219BEE374();

  LOBYTE(v174) = 14;
  v35 = sub_219BEFA24();
  (*(v32 + 8))(v34, v31);
  v172 = *(v35 + 16);
  if (v172)
  {
    v161 = v24;
    v36 = 0;
    v171 = (v35 + ((*(v27 + 80) + 32) & ~*(v27 + 80)));
    v170 = v27 + 16;
    v153 = v10 + 16;
    v168 = (v10 + 32);
    v160 = v10 + 8;
    v169 = (v27 + 8);
    v159 = (v10 + 40);
    v37 = MEMORY[0x277D84F98];
    v38 = v10;
    v165 = v27;
    v166 = v10;
    v164 = v35;
    v147 = v29;
    v152 = v26;
    while (1)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      (*(v27 + 16))(v29, &v171[*(v27 + 72) * v36], v26);
      v39 = sub_219BEF004();
      if (v40)
      {
        break;
      }

      (*v169)(v29, v26);
LABEL_4:
      if (v172 == ++v36)
      {
        goto LABEL_35;
      }
    }

    v41 = v39;
    v42 = v40;
    if (*(v37 + 16))
    {
      v43 = sub_21870F700(v39, v40);
      if (v44)
      {
        v158 = v41;
        v45 = *(v37 + 56);
        v157 = *(v38 + 72);
        v46 = v155;
        v47 = v173;
        (*(v38 + 16))(v155, v45 + v157 * v43, v173);
        v48 = v161;
        v162 = *(v38 + 32);
        v162(v161, v46, v47);
        v49 = v156;
        sub_219BEF014();
        LOBYTE(v46) = sub_219BDBC24();
        v50 = *(v38 + 8);
        v50(v49, v47);
        if (v46)
        {
          v150 = v50;
          v51 = v148;
          v26 = v152;
          sub_219BEF014();
          v162(v154, v51, v47);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v174 = v37;
          v53 = v158;
          v54 = sub_21870F700(v158, v42);
          v56 = *(v37 + 16);
          v57 = (v55 & 1) == 0;
          v58 = __OFADD__(v56, v57);
          v59 = v56 + v57;
          if (v58)
          {
            goto LABEL_76;
          }

          v60 = v55;
          if (*(v37 + 24) >= v59)
          {
            v27 = v165;
            v29 = v147;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v81 = v54;
              sub_219491E54();
              v54 = v81;
              v38 = v166;
              if (v60)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else
          {
            sub_219480C64(v59, isUniquelyReferenced_nonNull_native);
            v54 = sub_21870F700(v53, v42);
            v27 = v165;
            v29 = v147;
            if ((v60 & 1) != (v61 & 1))
            {
              goto LABEL_89;
            }
          }

          v38 = v166;
          if (v60)
          {
LABEL_28:
            v78 = v54;

            v79 = v173;
            v80 = v174[7] + v78 * v157;
            v37 = v174;
            (*v159)(v80, v154, v173);
            v150(v161, v79);
            (*v169)(v29, v26);
            goto LABEL_24;
          }

LABEL_32:
          v82 = v173;
          v37 = v174;
          v174[(v54 >> 6) + 8] |= 1 << v54;
          v83 = (*(v37 + 48) + 16 * v54);
          *v83 = v53;
          v83[1] = v42;
          v162((*(v37 + 56) + v54 * v157), v154, v82);
          v150(v161, v82);
          (*v169)(v29, v26);
          v84 = *(v37 + 16);
          v58 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v58)
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          *(v37 + 16) = v85;
          goto LABEL_24;
        }

        v50(v48, v47);
        v26 = v152;
        (*v169)(v29, v152);
        v27 = v165;
        v38 = v166;
LABEL_24:
        v35 = v164;
        goto LABEL_4;
      }
    }

    v62 = v163;
    sub_219BEF014();
    v63 = v37;
    v37 = *v168;
    (*v168)(v167, v62, v173);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v174 = v63;
    v66 = sub_21870F700(v41, v42);
    v67 = v63[2];
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_74;
    }

    v70 = v65;
    if (v63[3] < v69)
    {
      sub_219480C64(v69, v64);
      v71 = sub_21870F700(v41, v42);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_89;
      }

      v66 = v71;
      v38 = v166;
      if ((v70 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:

      v37 = v174;
      (*(v38 + 40))(v174[7] + *(v38 + 72) * v66, v167, v173);
      (*v169)(v29, v26);
LABEL_23:
      v27 = v165;
      goto LABEL_24;
    }

    if (v64)
    {
      v38 = v166;
      if (v65)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_219491E54();
      v38 = v166;
      if (v70)
      {
        goto LABEL_22;
      }
    }

LABEL_18:
    v73 = v173;
    v74 = v174;
    v174[(v66 >> 6) + 8] |= 1 << v66;
    v75 = (v74[6] + 16 * v66);
    *v75 = v41;
    v75[1] = v42;
    (v37)(v74[7] + *(v38 + 72) * v66, v167, v73);
    v37 = v74;
    (*v169)(v29, v26);
    v76 = v74[2];
    v58 = __OFADD__(v76, 1);
    v77 = v76 + 1;
    if (v58)
    {
      goto LABEL_75;
    }

    v74[2] = v77;
    goto LABEL_23;
  }

  v37 = MEMORY[0x277D84F98];
LABEL_35:

  if (qword_280E8D7A0 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v86 = qword_280F616D8;
    sub_2186F20D4(0);
    v168 = v87;
    v88 = swift_allocObject();
    v167 = xmmword_219C09BA0;
    *(v88 + 16) = xmmword_219C09BA0;
    v89 = *(v37 + 16);
    v90 = MEMORY[0x277D83C10];
    *(v88 + 56) = MEMORY[0x277D83B88];
    *(v88 + 64) = v90;
    *(v88 + 32) = v89;
    sub_219BF6214();
    v169 = v86;
    sub_219BE5314("Suggestions found %ld seen groups for suggested tags", v136);

    v166 = swift_allocObject();
    *(v166 + 16) = v37;
    v170 = v37;

    sub_219BEF0B4();
    v165 = *(v176 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v175 = MEMORY[0x277D84F90];
    v37 = v146;
    v91 = v146 >> 62 ? sub_219BF7214() : *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = MEMORY[0x277D84F90];
    if (!v91)
    {
      break;
    }

    v93 = 0;
    v171 = (v136 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    v172 = v37 & 0xFFFFFFFFFFFFFF8;
    v173 = v37 & 0xC000000000000001;
    v94 = v37 + 32;
    while (1)
    {
      if (v173)
      {
        v95 = MEMORY[0x21CECE0F0](v93, v146);
      }

      else
      {
        if (v93 >= *(v172 + 16))
        {
          goto LABEL_73;
        }

        v95 = *(v94 + 8 * v93);
      }

      v96 = v95;
      v58 = __OFADD__(v93++, 1);
      if (v58)
      {
        break;
      }

      v97 = *(v171 + 2);
      v98 = [v95 identifier];
      v99 = sub_219BF5414();
      v101 = v100;

      if (*(v97 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v102 = sub_219BF7AE4(), v37 = v97 + 56, v103 = -1 << *(v97 + 32), v104 = v102 & ~v103, ((*(v97 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) != 0))
      {
        v105 = ~v103;
        while (1)
        {
          v106 = (*(v97 + 48) + 16 * v104);
          v107 = *v106 == v99 && v106[1] == v101;
          if (v107 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v104 = (v104 + 1) & v105;
          if (((*(v37 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        if (v93 == v91)
        {
LABEL_58:
          v108 = v175;
          v92 = MEMORY[0x277D84F90];
          goto LABEL_60;
        }
      }

      else
      {
LABEL_40:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v93 == v91)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    swift_once();
  }

  v108 = MEMORY[0x277D84F90];
LABEL_60:
  v109 = v145;

  v173 = sub_219822674();
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  v110 = sub_219BEDC44();

  if (v110 >> 62)
  {
    v111 = sub_219BF7214();
    if (v111)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v111)
    {
LABEL_62:
      v174 = v92;
      sub_21870B65C(0, v111 & ~(v111 >> 63), 0);
      if (v111 < 0)
      {
        goto LABEL_87;
      }

      v171 = v109;
      v172 = v108;
      v112 = 0;
      v113 = v174;
      do
      {
        if ((v110 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v112, v110);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v114 = [swift_unknownObjectRetain() identifier];
        v115 = sub_219BF5414();
        v117 = v116;
        swift_unknownObjectRelease_n();

        v174 = v113;
        v119 = *(v113 + 16);
        v118 = *(v113 + 24);
        if (v119 >= v118 >> 1)
        {
          sub_21870B65C((v118 > 1), v119 + 1, 1);
          v113 = v174;
        }

        ++v112;
        *(v113 + 16) = v119 + 1;
        v120 = v113 + 16 * v119;
        *(v120 + 32) = v115;
        *(v120 + 40) = v117;
      }

      while (v111 != v112);

      goto LABEL_81;
    }
  }

  v113 = MEMORY[0x277D84F90];
LABEL_81:
  v121 = sub_2194B1FF0(v113, v173);

  type metadata accessor for SuggestionTodayFeedGroupKnobs(0);
  v122 = v141;
  sub_219BEF134();
  v123 = sub_219BEEDF4();
  (*(v142 + 8))(v122, v143);
  sub_2194796A0(v123, v121);
  v125 = v124;

  sub_2194796A0(v126, v125);
  v128 = v127;
  sub_219BEF0B4();
  v129 = *(v174 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (([v129 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_88;
  }

  v130 = [v129 deprecatedSportsTopicTagIds];
  swift_unknownObjectRelease();
  if (v130)
  {
    v131 = sub_219BF5924();
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  sub_2194B1FF0(v131, v128);

  v132 = v137;
  sub_219BF0104();
  sub_219BF0134();
  v133 = swift_allocObject();
  *(v133 + 16) = v167;
  v134 = *(sub_219BF0094() + 16);

  *(v133 + 56) = MEMORY[0x277D83B88];
  *(v133 + 64) = MEMORY[0x277D83C10];
  *(v133 + 32) = v134;
  sub_219BF6214();
  sub_219BE5314("Suggestions created %ld clusters", v136);

  return (*(v139 + 8))(v132, v140);
}

uint64_t sub_219644A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_219BEEF54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_2186D8DC4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_219BF5BF4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a1;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  result = sub_2195E79DC(0, 0, v11, &unk_219C94D40, v14);
  *a3 = result;
  return result;
}

uint64_t sub_219644C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_219644C50, 0, 0);
}

uint64_t sub_219644C50()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService), *(v0[3] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService + 24));
  sub_219BEEF34();
  v0[5] = sub_219BF1C14();

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_219644D40;
  v2 = v0[2];

  return MEMORY[0x2821D23D8](v2);
}

uint64_t sub_219644D40()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219641928, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219644E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_219BEEF54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2186D8DC4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_219BF5BF4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  (*(v9 + 32))(&v16[v15], &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v16[(v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  result = sub_2195E76F4(0, 0, v13, &unk_219C94D30, v16);
  *a4 = result;
  return result;
}

uint64_t sub_2196450A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return MEMORY[0x2822009F8](sub_2196450CC, 0, 0);
}

uint64_t sub_2196450CC()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService), *(v0[4] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService + 24));
  sub_219BEEF44();
  sub_219BEEF04();
  v1 = sub_219BEEF24();
  sub_219BEF0B4();
  swift_unknownObjectRetain();

  v0[7] = sub_219BF27A4();

  swift_unknownObjectRelease();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_219645250;
  v3 = v0[3];

  return MEMORY[0x2821D23D8](v3);
}

uint64_t sub_219645250()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2194FF3C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21964538C(uint64_t a1, uint64_t a2)
{
  sub_219BDBD34();
  sub_219645910(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return sub_219BF5964();
}

uint64_t sub_219645428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2186D8DC4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  if (*(a2 + 16) && (v9 = sub_21870F700(*a1, a1[1]), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(a2 + 56);
    v13 = sub_219BDBD34();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v8, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(v8, 0, 1, v13);
    return (*(v14 + 32))(a3, v8, v13);
  }

  else
  {
    v16 = sub_219BDBD34();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    sub_219BDBBB4();
    result = (*(v17 + 48))(v8, 1, v16);
    if (result != 1)
    {
      return sub_2196462C4(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  return result;
}

uint64_t sub_219645674()
{
  v1 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_config;
  sub_2186E0AA8(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219646018(v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager));

  return v0;
}

uint64_t sub_21964576C()
{
  sub_219645674();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SuggestionTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA79F8;
  if (!qword_280EA79F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219645818(uint64_t a1)
{
  sub_2186E0AA8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SuggestionTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219645910(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219645958(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21963E12C(a1, a2);
}

uint64_t sub_219645A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_219641184(a1, a2, a3);
}

uint64_t sub_219645AB4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219645AF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_config;
  sub_2186E0AA8(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219645B88@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SuggestionTodayFeedGroupKnobs(0);
  a1[4] = sub_219645910(&qword_280EAE928, type metadata accessor for SuggestionTodayFeedGroupKnobs, &unk_219C4F088);
  a1[5] = sub_219645910(&qword_280EAE930, type metadata accessor for SuggestionTodayFeedGroupKnobs, &unk_219C4F0B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21964625C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for SuggestionTodayFeedGroupKnobs);
}

uint64_t sub_219645CEC@<X0>(uint64_t *a2@<X8>)
{
  sub_2186D8DC4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0AA8(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219646018(inited + 32, sub_2188317B0);
  sub_2186D8DC4(0, &qword_280EE77D8, type metadata accessor for SuggestionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219646958();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219645E8C(uint64_t a1)
{
  sub_219645910(&qword_280EA7A18, type metadata accessor for SuggestionTodayFeedGroupEmitter, &unk_219C94B88);

  return sub_219BE2324();
}

uint64_t sub_219646018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219646078(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_21963E6D8(a1, v5, v4);
}

uint64_t sub_219646124(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2196414B8(a1, v1);
}

uint64_t sub_2196461C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2196416F8(a1, v1);
}

uint64_t sub_21964625C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196462C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8DC4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219646334(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_219642F14(a1, v5, v4);
}

uint64_t sub_2196463E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2196435BC(a1, v1);
}

uint64_t sub_21964647C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_219BEEF54() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_219644A1C(v4, v5, a1);
}

void sub_2196464F0(uint64_t a1)
{
  if (!qword_280E8EA88)
  {
    sub_2186D6710(255, &qword_280E8E680, &protocolRef_FCTagProviding);
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BF5C24();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EA88);
    }
  }
}

uint64_t sub_219646580@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_219BEEF54() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219644E7C(v5, v1 + v4, v6, a1);
}

void sub_219646620(uint64_t a1)
{
  if (!qword_280E8EA98)
  {
    sub_2187E7248(255);
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BF5C24();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EA98);
    }
  }
}

uint64_t sub_2196466A0(uint64_t a1)
{
  v4 = *(sub_219BEEF54() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_2196450A8(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_2196467D0(uint64_t a1)
{
  v4 = *(sub_219BEEF54() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219644C2C(a1, v6, v7, v8, v1 + v5);
}

void sub_2196468C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_219646958()
{
  result = qword_280EE77E0;
  if (!qword_280EE77E0)
  {
    sub_2186D8DC4(255, &qword_280EE77D8, type metadata accessor for SuggestionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE77E0);
  }

  return result;
}

uint64_t sub_2196469E8()
{
  v1 = [*(v0 + 16) appConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 articleLinkBehaviorConfig];
    swift_unknownObjectRelease();
    v3 = [v2 openArticlesAsModals];

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE91C0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  return v5;
}

uint64_t sub_219646AEC()
{
  if (sub_2196469E8())
  {
    return 0;
  }

  v2 = [*(v0 + 16) appConfiguration];
  if ([v2 respondsToSelector_])
  {
    v3 = [v2 articleLinkBehaviorConfig];
    swift_unknownObjectRelease();
    v4 = [v3 lohAnimationCompletesInArticle];

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_27CC087E0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  return v5;
}

uint64_t sub_219646C00()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_219BDBD34();
  v70 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  if (qword_280EE6088 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  __swift_project_value_buffer(v15, qword_280F627C0);
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  v18 = os_log_type_enabled(v16, v17);
  v69 = v5;
  if (v18)
  {
    v19 = v3;
    v20 = v8;
    v21 = v11;
    v22 = v2;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2186C1000, v16, v17, "ArticleLinkBehaviorConfigManager - checking eligibility for interlude display", v23, 2u);
    v24 = v23;
    v2 = v22;
    v11 = v21;
    v8 = v20;
    v3 = v19;
    MEMORY[0x21CECF960](v24, -1, -1);
  }

  v25 = [v1[2] possiblyUnfetchedAppConfiguration];
  if (([v25 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v26 = [v25 articleLinkBehaviorConfig];
  swift_unknownObjectRelease();
  if (![v26 lohAnimationEnabled])
  {

LABEL_14:
    v37 = sub_219BE5414();
    v38 = sub_219BF6214();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2186C1000, v37, v38, "ArticleLinkBehaviorConfigManager - not eligible for interlude display due to missing or disabled config", v39, 2u);
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    goto LABEL_16;
  }

  if (qword_27CC08800 != -1)
  {
    swift_once();
  }

  v28 = qword_27CCD8EE8;
  v29 = sub_219647740(&unk_27CC1D5E0, v27, type metadata accessor for ArticleLinkBehaviorConfigManager, &unk_219C94DC0);
  v66 = v28;
  v67 = v29;
  v68 = v2;
  sub_219BDC7D4();
  v30 = v71;
  if (v30 < [v26 animationCampaignVersion])
  {
    v65 = v26;
    v31 = sub_219BE5414();
    v32 = sub_219BF6214();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v63 = v3;
      v64 = v14;
      v34 = v33;
      *v33 = 67109120;
      v35 = v65;
      *(v33 + 1) = [v65 animationCampaignVersion];

      _os_log_impl(&dword_2186C1000, v31, v32, "ArticleLinkBehaviorConfigManager - the current campaign version has updated to %d.\nResetting tracked Interlude data before proceeding with eligibility check.", v34, 8u);
      v36 = v34;
      v3 = v63;
      v14 = v64;
      MEMORY[0x21CECF960](v36, -1, -1);
    }

    else
    {

      v31 = v65;
    }

    v71 = [v65 animationCampaignVersion];
    sub_219647740(&unk_27CC1D5F0, v41, type metadata accessor for ArticleLinkBehaviorConfigManager, &unk_219C94E00);
    sub_219BDCA54();
    if (qword_27CC08850 != -1)
    {
      swift_once();
    }

    sub_219BDCA64();
  }

  v42 = v14;
  if (qword_27CC087F0 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  v43 = v71;
  if (v43 >= [v26 animationMaxCount])
  {
    v37 = v26;
    v47 = sub_219BE5414();
    v48 = sub_219BF6214();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134218240;
      *(v49 + 4) = v43;
      *(v49 + 12) = 1024;
      *(v49 + 14) = [v37 &selRef_fetchCachedRecipeWithID_completionHandler_ + 6];

      _os_log_impl(&dword_2186C1000, v47, v48, "ArticleLinkBehaviorConfigManager - not eligible for interlude display due to current display count (%ld) meeting or exceeding max display count (%d)", v49, 0x12u);
      MEMORY[0x21CECF960](v49, -1, -1);
    }

    else
    {
    }

LABEL_16:

    return 0;
  }

  if (qword_27CC087F8 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  sub_219BDBD24();
  [v26 animationQuiescenceInterval];
  sub_219BDBC44();
  v44 = v70;
  v45 = v70[1];
  v45(v8, v3);
  v46 = sub_219BDBC24();
  v45(v11, v3);
  if ((v46 & 1) == 0)
  {
    v50 = v69;
    (v44[2])(v69, v42, v3);
    v51 = v26;
    v52 = sub_219BE5414();
    v53 = sub_219BF6214();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = v70;
      *v54 = 136315394;
      sub_219647740(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v55 = sub_219BF7894();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      v45(v50, v3);
      v59 = sub_2186D1058(v56, v58, &v71);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2048;
      v60 = [v51 animationQuiescenceInterval];

      *(v54 + 14) = v60;
      _os_log_impl(&dword_2186C1000, v52, v68, "ArticleLinkBehaviorConfigManager - not eligible for interlude display due to recent prior display (%s.\nThe current quiescence interval is %lld", v54, 0x16u);
      v61 = v70;
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x21CECF960](v61, -1, -1);
      MEMORY[0x21CECF960](v54, -1, -1);
    }

    else
    {

      v45(v50, v3);
    }

    v45(v42, v3);
    return 0;
  }

  v45(v42, v3);

  return 1;
}

void sub_2196474F8(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) possiblyUnfetchedAppConfiguration];
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 articleLinkBehaviorConfig];
    swift_unknownObjectRelease();
    v5 = [v4 animationTitleLine1];
    v6 = sub_219BF5414();
    v8 = v7;

    v9 = [v4 animationTitleLine2];
    v10 = sub_219BF5414();
    v12 = v11;

    v13 = [v4 animationBody];
    v14 = sub_219BF5414();
    v16 = v15;
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F627C0);
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, "ArticleLinkBehaviorConfigManager - could not return content for interlude display due to missing or disabled config", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v16;
}

uint64_t sub_219647740(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for PuzzleEmbedMenuConfigMessageHandler(uint64_t a1)
{
  result = qword_27CC1D630;
  if (!qword_27CC1D630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2196478A4(uint64_t a1)
{
  sub_21964B938(319, &qword_27CC1D640, MEMORY[0x277D33F10]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21964797C(uint64_t a1, unsigned int *a2)
{
  v69 = sub_219BF1FE4();
  v4 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D336F0];
  sub_21964B6F4(0, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v50 - v8;
  sub_21964B938(0, &unk_27CC1D660, v6);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v73 = sub_219BF1F44();
  MEMORY[0x28223BE20](v73);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v72 = &v50 - v21;
  v22 = *(a1 + 16);
  if (v22)
  {
    v67 = v13;
    v68 = v16;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v62 = v24;
    v52 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v25 = a1 + v52;
    v64 = *(v23 + 56);
    v61 = *a2;
    v59 = (v4 + 56);
    v60 = (v4 + 104);
    v71 = (v4 + 48);
    v50 = (v4 + 32);
    v53 = (v4 + 8);
    v54 = (v23 - 8);
    v55 = (v23 + 16);
    v57 = MEMORY[0x277D84F90];
    v26 = v58;
    v63 = v23;
    v27 = v66;
    while (1)
    {
      v70 = v22;
      v30 = v26;
      v62(v72, v25, v73, v20);
      v31 = v68;
      sub_219BF1F14();
      v32 = v67;
      v33 = v69;
      (*v60)(v67, v61, v69);
      (*v59)(v32, 0, 1, v33);
      v34 = *(v65 + 48);
      v35 = MEMORY[0x277D336F0];
      sub_21964B7B4(v31, v27, &unk_27CC1D660, MEMORY[0x277D336F0]);
      sub_21964B7B4(v32, v27 + v34, &unk_27CC1D660, v35);
      v36 = *v71;
      if ((*v71)(v27, 1, v33) == 1)
      {
        break;
      }

      v26 = v30;
      sub_21964B7B4(v27, v30, &unk_27CC1D660, MEMORY[0x277D336F0]);
      if (v36(v27 + v34, 1, v33) == 1)
      {
        v28 = MEMORY[0x277D336F0];
        sub_21964B758(v67, &unk_27CC1D660, MEMORY[0x277D336F0]);
        sub_21964B758(v68, &unk_27CC1D660, v28);
        (*v53)(v30, v33);
LABEL_4:
        sub_21964B820(v27, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
        goto LABEL_5;
      }

      v38 = v51;
      (*v50)(v51, v27 + v34, v33);
      sub_21964B9F0(&qword_27CC1AC40, MEMORY[0x277D336F0], MEMORY[0x277D33700]);
      v39 = sub_219BF53A4();
      v40 = *v53;
      v41 = v38;
      v26 = v58;
      (*v53)(v41, v69);
      v42 = MEMORY[0x277D336F0];
      sub_21964B758(v67, &unk_27CC1D660, MEMORY[0x277D336F0]);
      sub_21964B758(v68, &unk_27CC1D660, v42);
      v40(v26, v69);
      sub_21964B758(v66, &unk_27CC1D660, v42);
      if (v39)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*v54)(v72, v73);
      v29 = v64;
LABEL_6:
      v25 += v29;
      v22 = v70 - 1;
      if (v70 == 1)
      {
        return v57;
      }
    }

    v37 = MEMORY[0x277D336F0];
    sub_21964B758(v32, &unk_27CC1D660, MEMORY[0x277D336F0]);
    sub_21964B758(v31, &unk_27CC1D660, v37);
    v26 = v30;
    if (v36(v27 + v34, 1, v33) == 1)
    {
      sub_21964B758(v27, &unk_27CC1D660, MEMORY[0x277D336F0]);
LABEL_12:
      v43 = *v55;
      (*v55)(v56, v72, v73);
      v44 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v44;
      v74 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C37DA0(0, *(v44 + 16) + 1, 1);
        v46 = v74;
      }

      v48 = *(v46 + 16);
      v47 = *(v46 + 24);
      v29 = v64;
      if (v48 >= v47 >> 1)
      {
        sub_218C37DA0((v47 > 1), v48 + 1, 1);
        v29 = v64;
        v46 = v74;
      }

      *(v46 + 16) = v48 + 1;
      v57 = v46;
      v43((v46 + v52 + v48 * v29), v56, v73);
      v26 = v58;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2196480AC(uint64_t a1)
{
  v2 = sub_219BF1FE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D336F0];
  sub_21964B6F4(0, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  sub_21964B938(0, &unk_27CC1D660, v5);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v17);
  v76 = &v58 - v18;
  v67 = sub_219BF1F44();
  MEMORY[0x28223BE20](v67);
  v79 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v58 - v21;
  v25 = *(a1 + 16);
  if (v25)
  {
    v69 = v16;
    v70 = v13;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v74 = v27;
    v68 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v28 = a1 + v68;
    v29 = *(v26 + 56);
    v30 = (v3 + 48);
    v65 = *MEMORY[0x277D336E8];
    v63 = (v3 + 56);
    v64 = (v3 + 104);
    v58 = (v3 + 32);
    v60 = (v3 + 8);
    v62 = (v26 - 8);
    v78 = (v26 + 16);
    v80 = MEMORY[0x277D84F90];
    v81 = (v3 + 48);
    v71 = v8;
    v31 = v2;
    v32 = v67;
    v77 = &v58 - v21;
    v75 = v26;
    v73 = v29;
    v27(v24, a1 + v68, v67, v23);
    while (1)
    {
      v37 = v76;
      sub_219BF1F14();
      v38 = *v30;
      v39 = (*v30)(v37, 1, v31);
      sub_21964B758(v37, &unk_27CC1D660, MEMORY[0x277D336F0]);
      if (v39 != 1)
      {
        v72 = v25;
        v45 = v69;
        sub_219BF1F14();
        v46 = v31;
        v47 = v70;
        (*v64)(v70, v65, v46);
        (*v63)(v47, 0, 1, v46);
        v48 = *(v66 + 48);
        v49 = MEMORY[0x277D336F0];
        sub_21964B7B4(v45, v8, &unk_27CC1D660, MEMORY[0x277D336F0]);
        sub_21964B7B4(v47, &v8[v48], &unk_27CC1D660, v49);
        if (v38(v8, 1, v46) == 1)
        {
          v50 = MEMORY[0x277D336F0];
          sub_21964B758(v47, &unk_27CC1D660, MEMORY[0x277D336F0]);
          sub_21964B758(v45, &unk_27CC1D660, v50);
          v51 = v38(&v8[v48], 1, v46);
          v31 = v46;
          v32 = v67;
          if (v51 != 1)
          {
            goto LABEL_4;
          }

          sub_21964B758(v8, &unk_27CC1D660, MEMORY[0x277D336F0]);
          v24 = v77;
          v25 = v72;
        }

        else
        {
          v52 = v61;
          sub_21964B7B4(v8, v61, &unk_27CC1D660, MEMORY[0x277D336F0]);
          v31 = v46;
          if (v38(&v8[v48], 1, v46) == 1)
          {
            v33 = v52;
            v34 = MEMORY[0x277D336F0];
            sub_21964B758(v70, &unk_27CC1D660, MEMORY[0x277D336F0]);
            sub_21964B758(v69, &unk_27CC1D660, v34);
            (*v60)(v33, v46);
            v32 = v67;
LABEL_4:
            sub_21964B820(v8, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
            v24 = v77;
            v25 = v72;
LABEL_5:
            (*v62)(v24, v32);
            v36 = v73;
            goto LABEL_6;
          }

          v53 = v59;
          (*v58)(v59, &v8[v48], v46);
          sub_21964B9F0(&qword_27CC1AC40, MEMORY[0x277D336F0], MEMORY[0x277D33700]);
          v54 = sub_219BF53A4();
          v55 = *v60;
          (*v60)(v53, v46);
          v56 = MEMORY[0x277D336F0];
          sub_21964B758(v70, &unk_27CC1D660, MEMORY[0x277D336F0]);
          sub_21964B758(v69, &unk_27CC1D660, v56);
          v55(v52, v46);
          v8 = v71;
          sub_21964B758(v71, &unk_27CC1D660, v56);
          v32 = v67;
          v24 = v77;
          v25 = v72;
          if ((v54 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      v40 = *v78;
      (*v78)(v79, v24, v32);
      v41 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C37DA0(0, *(v41 + 16) + 1, 1);
        v41 = v82;
      }

      v36 = v73;
      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_218C37DA0((v43 > 1), v44 + 1, 1);
        v41 = v82;
      }

      *(v41 + 16) = v44 + 1;
      v80 = v41;
      v40((v41 + v68 + v44 * v36), v79, v32);
      v8 = v71;
      v24 = v77;
LABEL_6:
      v28 += v36;
      --v25;
      v30 = v81;
      if (!v25)
      {
        return v80;
      }

      v74(v24, v28, v32, v35);
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_219648890(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF3724();
  v21[3] = v3;
  v21[4] = MEMORY[0x277D33EF8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, a1, v3);
  v5 = objc_allocWithZone(sub_219BF2224());
  v6 = sub_219BF2214();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC7NewsUI235PuzzleEmbedMenuConfigMessageHandler_scriptsManager);
    v9 = Strong;
    swift_unknownObjectRetain();

    v10 = v6;
    [v8 executeScript:v10 completion:0];

    swift_unknownObjectRelease();
  }

  v12 = sub_219BF3714();
  v13 = v11;
  if (v12 == 0x735F6C6165766572 && v11 == 0xED00006572617571 || (sub_219BF78F4() & 1) != 0)
  {

    v14 = 2;
  }

  else if (v12 == 0x775F6C6165766572 && v13 == 0xEB0000000064726FLL || (sub_219BF78F4() & 1) != 0)
  {

    v14 = 1;
  }

  else if (v12 == 0x705F6C6165766572 && v13 == 0xED0000656C7A7A75)
  {

    v14 = 0;
  }

  else
  {
    v20 = sub_219BF78F4();

    v14 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      sub_21964B87C(v14, v18);
      swift_unknownObjectRelease();
    }
  }

LABEL_11:
}

void sub_219648BA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v113 = a2;
  sub_21964B938(0, &unk_27CC1D660, MEMORY[0x277D336F0]);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v92 - v6;
  sub_21964B938(0, &qword_27CC1D678, MEMORY[0x277D33688]);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v92 - v8;
  v115 = sub_219BF1F44();
  v111 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v97 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - v14;
  MEMORY[0x28223BE20](v16);
  v114 = &v92 - v17;
  sub_218C3FF38(0);
  v110 = v18;
  v101 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v96 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v95 = &v92 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v92 - v23;
  MEMORY[0x28223BE20](v24);
  v109 = &v92 - v25;
  MEMORY[0x28223BE20](v26);
  v108 = &v92 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v92 - v29;
  v31 = MEMORY[0x277D33F10];
  sub_21964B938(0, &qword_27CC1D640, MEMORY[0x277D33F10]);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v92 - v33;
  v35 = sub_219BF37B4();
  MEMORY[0x28223BE20](v35);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v38;
  v40 = v31;
  v42 = v41;
  sub_21964B7B4(a1, v34, &qword_27CC1D640, v40);
  if ((*(v39 + 48))(v34, 1, v42) == 1)
  {
    sub_21964B758(v34, &qword_27CC1D640, MEMORY[0x277D33F10]);
LABEL_18:
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
LABEL_30:
    *a3 = v62;
    a3[1] = v63;
    a3[2] = v64;
    a3[3] = v65;
    a3[4] = v66;
    a3[5] = v67;
    return;
  }

  (*(v39 + 32))(v37, v34, v42);
  v43 = *(sub_219BF37A4() + 16);

  v44 = *(sub_219BF37A4() + 16);

  if (v43 != v44)
  {
    (*(v39 + 8))(v37, v42);
    goto LABEL_18;
  }

  v92 = v12;
  v93 = v15;
  v94 = a3;
  v45 = sub_219BF37A4();
  v113 = sub_219BF37A4();
  v46 = *(v45 + 16);
  v106 = v42;
  v107 = v39;
  v104 = v46;
  v105 = v37;
  if (!v46)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_20:

LABEL_22:
    if (*(v48 + 16) == 1)
    {
      v68 = v95;
      sub_21964BA94(v48 + ((*(v101 + 80) + 32) & ~*(v101 + 80)), v95);

      v69 = v68;
      v70 = v100;
      sub_21964B98C(v69, v100);
      v71 = v96;
      sub_21964BA94(v70, v96);
      v72 = v111;
      v73 = *(v110 + 48);
      v74 = *(v111 + 32);
      v75 = v93;
      v76 = v115;
      v74(v93, v71, v115);
      v77 = v92;
      v74(v92, v71 + v73, v76);
      v114 = sub_219BF1F04();
      sub_219BF1EC4();
      v78 = sub_219BF1EF4();
      v79 = v98;
      (*(*(v78 - 8) + 56))(v98, 1, 1, v78);
      v80 = sub_219BF1FE4();
      v81 = v99;
      (*(*(v80 - 8) + 56))(v99, 1, 1, v80);
      v82 = v97;
      sub_219BF1F24();

      sub_21964B758(v81, &unk_27CC1D660, MEMORY[0x277D336F0]);
      sub_21964B758(v79, &qword_27CC1D678, MEMORY[0x277D33688]);
      LOBYTE(v73) = MEMORY[0x21CEC8C70](v82, v77);
      v83 = *(v72 + 8);
      v83(v82, v76);
      if (v73)
      {
        v84 = sub_219BF1EA4();
        if (v85)
        {
          v66 = v84;
          v67 = v85;
          v62 = sub_219BF1F04();
          v86 = v75;
          v63 = v87;
          v64 = sub_219BF1EC4();
          v65 = v88;
          v89 = v77;
          v90 = v115;
          v83(v89, v115);
          v83(v86, v90);
          sub_21964BA38(v100);
          (*(v107 + 8))(v105, v106);
LABEL_29:
          a3 = v94;
          goto LABEL_30;
        }
      }

      v91 = v115;
      v83(v77, v115);
      v83(v75, v91);
      sub_21964BA38(v100);
      (*(v107 + 8))(v105, v106);
    }

    else
    {
      (*(v39 + 8))(v37, v42);
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    goto LABEL_29;
  }

  v47 = 0;
  v112 = v111 + 16;
  v102 = (v111 + 32);
  v48 = MEMORY[0x277D84F90];
  v103 = v45;
  while (v47 < *(v45 + 16))
  {
    v49 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v50 = *(v111 + 72) * v47;
    v51 = *(v111 + 16);
    v51(v114, v45 + v49 + v50, v115);
    v52 = *(v113 + 16);
    if (v47 == v52)
    {

      (*(v111 + 8))(v114, v115);
      v39 = v107;
      goto LABEL_22;
    }

    if (v47 >= v52)
    {
      goto LABEL_32;
    }

    v53 = v113 + v49;
    v54 = *(v110 + 48);
    v55 = v30;
    v56 = v108;
    v57 = v115;
    (*v102)(v108, v114, v115);
    v51(&v56[v54], v53 + v50, v57);
    v58 = v56;
    v30 = v55;
    sub_21964B98C(v58, v55);
    sub_21964B9F0(&unk_27CC1A278, MEMORY[0x277D33690], MEMORY[0x277D336A0]);
    if (sub_219BF53A4())
    {
      sub_21964BA38(v55);
      v42 = v106;
      v39 = v107;
      v37 = v105;
      v45 = v103;
    }

    else
    {
      sub_21964B98C(v55, v109);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v48;
      v37 = v105;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C37DF0(0, *(v48 + 16) + 1, 1);
        v48 = v116;
      }

      v42 = v106;
      v45 = v103;
      v61 = *(v48 + 16);
      v60 = *(v48 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_218C37DF0((v60 > 1), v61 + 1, 1);
        v48 = v116;
      }

      *(v48 + 16) = v61 + 1;
      sub_21964B98C(v109, v48 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v61);
      v39 = v107;
    }

    if (v104 == ++v47)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_219649678(void *a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems))
  {
    v3 = *(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems))
  {
    v4 = *(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v16 = v3;

  sub_2191EDAB0(v4);
  if (v16 >> 62)
  {
    v5 = sub_219BF7214();
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_27:

    return;
  }

  v5 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_9:
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v6, v16);
      }

      else
      {
        v9 = *(v16 + 8 * v6 + 32);
      }

      v8 = v9;
      sub_219BE7274();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        if (sub_219BE7254() == *a1 && v12 == a1[1])
        {

LABEL_22:
          v14 = a1[3];
          v15 = v8;
          if (v14)
          {
            v14 = sub_219BF53D4();
          }

          [v11 setTitle_];

          if (a1[5])
          {
            v7 = sub_219BF53D4();
          }

          else
          {
            v7 = 0;
          }

          [v11 setAccessibilityLabel_];

          v8 = v7;
          goto LABEL_13;
        }

        v13 = sub_219BF78F4();

        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
}

uint64_t sub_219649874(void *a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219649678(a1, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2196498F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a2;
  ObjectType = swift_getObjectType();
  sub_21964B938(0, &qword_27CC1D670, MEMORY[0x277D33808]);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = v77 - v6;
  v92 = sub_219BF22F4();
  v86 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE4914();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BF28F4();
  v10 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v77 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v77 - v16;
  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleBarButtonItems) = sub_219BF2B44();

  v18 = sub_219BF2B64();
  v19 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);
  v84 = a1;
  v85 = a3;
  v88 = v10;
  if (v20)
  {
    v21 = v10 + 16;
    v89 = *(v10 + 16);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v78 = v18;
    v23 = v18 + v22;
    v24 = *(v10 + 72);
    do
    {
      v25 = v93;
      v89(v17, v23, v93);
      sub_219BF28A4();
      v26 = (*(v21 - 8))(v17, v25);
      MEMORY[0x21CECC690](v26);
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v23 += v24;
      --v20;
    }

    while (v20);
    v27 = v94;

    a3 = v85;
    v10 = v88;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v78 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems;
  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems) = v27;

  v28 = sub_219BF2B54();
  v94 = v19;
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v10 + 16;
    v31 = *(v10 + 16);
    v32 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v89 = v28;
    v33 = v28 + v32;
    v34 = *(v10 + 72);
    v35 = v93;
    do
    {
      v31(v14, v33, v35);
      sub_219BF28A4();
      v36 = (*(v30 - 8))(v14, v35);
      MEMORY[0x21CECC690](v36);
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v77[1] = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v33 += v34;
      --v29;
    }

    while (v29);
    v37 = v94;

    a3 = v85;
    v10 = v88;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems) = v37;

  if (!NFInternalBuild())
  {
    goto LABEL_32;
  }

  sub_219BDC734();
  sub_21964B9F0(&qword_27CC21C90, type metadata accessor for PuzzleViewController, &unk_219CBB7D4);
  sub_219BDC7D4();

  if (v94)
  {
    goto LABEL_32;
  }

  v38 = [objc_opt_self() currentTraitCollection];
  v39 = [v38 horizontalSizeClass];

  if (v39 == 2)
  {
    goto LABEL_32;
  }

  v40 = *(a3 + v78);
  if (v40)
  {
    if (v40 >> 62)
    {
      v41 = sub_219BF7214();
      if (v41)
      {
LABEL_21:
        if ((v40 & 0xC000000000000001) != 0)
        {

          v76 = MEMORY[0x21CECE0F0](0, v40);

          v41 = v76;
        }

        else
        {
          if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v41 = *(v40 + 32);
        }
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = [v42 menu];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 children];
    sub_2186C6148(0, &unk_280E8E710, 0x277D75720);
    v46 = sub_219BF5924();
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  sub_2186C6148(0, &qword_280E8DAF0, 0x277D75710);
  v47 = sub_219BF6C04();
  if (v44)
  {
    sub_218725F94();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C189F0;
    *(inited + 32) = v47;
    v49 = v44;
    *(inited + 40) = sub_2199A12E0(v47);
    v94 = v46;
    sub_2191EEC00(inited);
    sub_2186C6148(0, &unk_280E8E710, 0x277D75720);
    v50 = sub_219BF5904();

    v51 = [v49 menuByReplacingChildren_];
  }

  else
  {

    v51 = 0;
  }

  [v42 setMenu_];

LABEL_32:
  v52 = sub_219BF2B44();
  v53 = *(v52 + 16);
  if (v53)
  {
    v55 = *(v10 + 16);
    v54 = v10 + 16;
    v56 = *(v54 + 64);
    v84 = v52;
    v57 = v52 + ((v56 + 32) & ~v56);
    v88 = *(v54 + 56);
    v89 = v55;
    v58 = (v54 - 8);
    v59 = v87;
    v60 = (v86 + 48);
    v61 = (v86 + 32);
    v62 = MEMORY[0x277D84F90];
    do
    {
      v63 = v90;
      v64 = v93;
      v89(v90, v57, v93);
      sub_219BF28B4();
      (*v58)(v63, v64);
      v65 = v92;
      if ((*v60)(v59, 1, v92) == 1)
      {
        sub_21964B758(v59, &qword_27CC1D670, MEMORY[0x277D33808]);
      }

      else
      {
        v66 = *v61;
        (*v61)(v91, v59, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_2191F8F90(0, *(v62 + 2) + 1, 1, v62);
        }

        v68 = *(v62 + 2);
        v67 = *(v62 + 3);
        if (v68 >= v67 >> 1)
        {
          v62 = sub_2191F8F90((v67 > 1), v68 + 1, 1, v62);
        }

        *(v62 + 2) = v68 + 1;
        v66(&v62[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v68], v91, v92);
        v59 = v87;
      }

      v57 += v88;
      --v53;
    }

    while (v53);

    a3 = v85;
  }

  else
  {

    v62 = MEMORY[0x277D84F90];
  }

  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentToolbarMenuItems) = v62;

  v69 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_didSetInitialTitle;
  if ((*(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_didSetInitialTitle) & 1) == 0)
  {
    v70 = *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle);
    if (v70)
    {
      v71 = [v70 puzzleType];
      *(a3 + v69) = 1;
      sub_2199A5B00(v71);
      swift_unknownObjectRelease();
    }
  }

  v72 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
  swift_beginAccess();
  v74 = v82;
  v73 = v83;
  v75 = v81;
  (*(v82 + 16))(v81, a3 + v72, v83);
  LOBYTE(v72) = sub_219BE48A4();
  (*(v74 + 8))(v75, v73);
  if ((v72 & 1) == 0)
  {
    sub_2199A2478(v79);
  }

  sub_2199A77B8(0, 0);
}

uint64_t sub_21964A358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2196498F4(a1, a2, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21964A3E0(void *a1)
{
  v136 = sub_219BF2B74();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v142 = sub_219BF1FE4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v139 = &v124 - v5;
  v6 = MEMORY[0x277D33F10];
  sub_21964B6F4(0, &qword_27CC1D648, &qword_27CC1D640, MEMORY[0x277D33F10]);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v124 - v9;
  sub_21964B938(0, &qword_27CC1D640, v6);
  MEMORY[0x28223BE20](v11 - 8);
  v143 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v124 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v124 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v124 - v19;
  v21 = sub_219BF37B4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v138 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v145 = &v124 - v26;
  v27 = [a1 body];
  v28 = sub_219BF5214();

  v29 = sub_2187A1A2C(v28);

  if (!v29)
  {
    goto LABEL_4;
  }

  sub_219BF3794();
  v30 = v22[6];
  if (v30(v20, 1, v21) == 1)
  {

    sub_21964B758(v20, &qword_27CC1D640, MEMORY[0x277D33F10]);
LABEL_4:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v31 = sub_219BE5434();
    __swift_project_value_buffer(v31, qword_280F625E0);
    swift_unknownObjectRetain();
    v32 = sub_219BE5414();
    v33 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v152[0] = v35;
      *v34 = 136315138;
      v36 = [a1 body];
      sub_219BF5214();

      v37 = sub_219BF5224();
      v39 = v38;

      v40 = sub_2186D1058(v37, v39, v152);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_2186C1000, v32, v33, "PuzzleEmbedMenuConfigMessageHandler received invalid message %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21CECF960](v35, -1, -1);
      MEMORY[0x21CECF960](v34, -1, -1);
    }

    return;
  }

  v41 = v22[4];
  v42 = v145;
  v126 = v22 + 4;
  v125 = v41;
  v41(v145, v20, v21);
  v43 = v22[2];
  v130 = v22 + 2;
  v129 = v43;
  v43(v17, v42, v21);
  v132 = v22;
  v44 = v22[7];
  v128 = v22 + 7;
  v127 = v44;
  v44(v17, 0, 1, v21);
  v133 = v30;
  v45 = v21;
  v46 = OBJC_IVAR____TtC7NewsUI235PuzzleEmbedMenuConfigMessageHandler_lastReceivedConfig;
  v47 = v144;
  swift_beginAccess();
  v48 = *(v8 + 48);
  v49 = MEMORY[0x277D33F10];
  sub_21964B7B4(v17, v10, &qword_27CC1D640, MEMORY[0x277D33F10]);
  v131 = v46;
  v50 = v47 + v46;
  v51 = v45;
  v52 = v133;
  sub_21964B7B4(v50, &v10[v48], &qword_27CC1D640, v49);
  if (v52(v10, 1, v45) == 1)
  {
    sub_21964B758(v17, &qword_27CC1D640, MEMORY[0x277D33F10]);
    if (v52(&v10[v48], 1, v45) == 1)
    {

      sub_21964B758(v10, &qword_27CC1D640, MEMORY[0x277D33F10]);
      v53 = v145;
LABEL_24:
      v75 = v132;
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v76 = sub_219BE5434();
      __swift_project_value_buffer(v76, qword_280F625E0);
      v77 = sub_219BE5414();
      v78 = sub_219BF6214();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_2186C1000, v77, v78, "No changes detected for the received menu config. Skipping...", v79, 2u);
        MEMORY[0x21CECF960](v79, -1, -1);
      }

      (v75[1])(v53, v51);
      return;
    }

    goto LABEL_14;
  }

  v54 = v137;
  sub_21964B7B4(v10, v137, &qword_27CC1D640, MEMORY[0x277D33F10]);
  if (v52(&v10[v48], 1, v45) == 1)
  {
    sub_21964B758(v17, &qword_27CC1D640, MEMORY[0x277D33F10]);
    (v132[1])(v54, v45);
LABEL_14:
    sub_21964B820(v10, &qword_27CC1D648, &qword_27CC1D640, MEMORY[0x277D33F10]);
    v53 = v145;
    goto LABEL_15;
  }

  v70 = &v10[v48];
  v71 = v138;
  v125(v138, v70, v45);
  sub_21964B9F0(&qword_27CC1D650, MEMORY[0x277D33F10], MEMORY[0x277D33F18]);
  v72 = sub_219BF53A4();
  v73 = v132[1];
  v73(v71, v45);
  v74 = MEMORY[0x277D33F10];
  sub_21964B758(v17, &qword_27CC1D640, MEMORY[0x277D33F10]);
  v73(v54, v45);
  sub_21964B758(v10, &qword_27CC1D640, v74);
  v53 = v145;
  if (v72)
  {

    goto LABEL_24;
  }

LABEL_15:
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v55 = sub_219BE5434();
  __swift_project_value_buffer(v55, qword_280F625E0);

  v56 = sub_219BE5414();
  v57 = sub_219BF6214();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v144;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v152[0] = v61;
    *v60 = 136315138;
    v62 = sub_219BF5224();
    v64 = v63;

    v65 = sub_2186D1058(v62, v64, v152);
    v53 = v145;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_2186C1000, v56, v57, "PuzzleEmbedMenuConfigMessageHandler received: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x21CECF960](v61, -1, -1);
    MEMORY[0x21CECF960](v60, -1, -1);
  }

  else
  {
  }

  v146 = MEMORY[0x277D84FA0];
  v66 = sub_219BF37A4();
  v67 = MEMORY[0x277D336D8];
  v68 = sub_21964797C(v66, MEMORY[0x277D336D8]);

  v69 = v131;
  if (v133((v59 + v131), 1, v45))
  {

LABEL_30:
    v83 = *v67;
    v84 = v141;
    v85 = v140;
    v86 = v142;
    (*(v141 + 104))(v140, v83, v142);
    v87 = v139;
    sub_21949B8D0(v139, v85);
    (*(v84 + 8))(v87, v86);
    goto LABEL_31;
  }

  v80 = v138;
  v129(v138, v59 + v69, v45);
  v81 = sub_219BF37A4();
  (v132[1])(v80, v45);
  v82 = sub_21964797C(v81, MEMORY[0x277D336D8]);

  LOBYTE(v81) = sub_21941B0F0(v68, v82);

  if ((v81 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v88 = sub_219BF37A4();
  v89 = MEMORY[0x277D336E0];
  v90 = sub_21964797C(v88, MEMORY[0x277D336E0]);

  if (v133((v59 + v69), 1, v45))
  {
    goto LABEL_32;
  }

  v91 = v138;
  v129(v138, v59 + v69, v45);
  v92 = sub_219BF37A4();
  v93 = v132[1];
  v93(v91, v45);
  v94 = sub_21964797C(v92, MEMORY[0x277D336E0]);

  LOBYTE(v92) = sub_21941B0F0(v90, v94);

  if ((v92 & 1) == 0)
  {
    goto LABEL_36;
  }

  v95 = sub_219BF37A4();
  v96 = sub_2196480AC(v95);

  v97 = v131;
  if (v133((v59 + v131), 1, v45))
  {
LABEL_32:

LABEL_36:
    v101 = *v89;
    v102 = v141;
    v103 = v140;
    v104 = v142;
    (*(v141 + 104))(v140, v101, v142);
    v105 = v139;
    sub_21949B8D0(v139, v103);
    (*(v102 + 8))(v105, v104);
    goto LABEL_37;
  }

  v98 = v138;
  v129(v138, v59 + v97, v45);
  v99 = sub_219BF37A4();
  v93(v98, v45);
  v100 = sub_2196480AC(v99);

  LOBYTE(v99) = sub_21941B0F0(v96, v100);

  if ((v99 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  v106 = MEMORY[0x277D33F10];
  v107 = v131;
  v108 = v143;
  sub_21964B7B4(v59 + v131, v143, &qword_27CC1D640, MEMORY[0x277D33F10]);
  sub_219648BA8(v108, v53, &v147);
  sub_21964B758(v108, &qword_27CC1D640, v106);
  v109 = v151;
  if (v151)
  {
    v110 = v147;
    v142 = v148;
    v111 = v149;
    v112 = v150;
    v113 = v146;

    sub_21947C254(v114, v113);
    v116 = v115;

    if (v116)
    {

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v152[0] = v112;
        v152[1] = v109;
        v152[2] = v110;
        v153 = v142;
        v154 = v111;
        sub_219649874(v152, Strong);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v122 = v143;
      v125(v143, v145, v51);
      v127(v122, 0, 1, v51);
      v123 = v131;
      swift_beginAccess();
      sub_21964B66C(v122, v59 + v123);
      swift_endAccess();
      return;
    }

    v53 = v145;
    v107 = v131;
  }

  v118 = v143;
  v129(v143, v53, v51);
  v127(v118, 0, 1, v51);
  swift_beginAccess();
  sub_21964B66C(v118, v59 + v107);
  swift_endAccess();
  v119 = v146;
  *(v59 + OBJC_IVAR____TtC7NewsUI235PuzzleEmbedMenuConfigMessageHandler_lastPositionChanges) = v146;

  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v120 = v134;
  sub_219BF4824();

  v121 = swift_unknownObjectWeakLoadStrong();
  if (v121)
  {
    sub_21964A358(v120, v119, v121);
    swift_unknownObjectRelease();
  }

  (*(v135 + 8))(v120, v136);
  (v132[1])(v53, v51);
}

uint64_t sub_21964B66C(uint64_t a1, uint64_t a2)
{
  sub_21964B938(0, &qword_27CC1D640, MEMORY[0x277D33F10]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21964B6F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_21964B938(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21964B758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21964B938(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21964B7B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21964B938(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21964B820(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21964B6F4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_21964B87C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      sub_219499DFC(&v4, a1);
      swift_endAccess();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21964B938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21964B98C(uint64_t a1, uint64_t a2)
{
  sub_218C3FF38(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21964B9F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21964BA38(uint64_t a1)
{
  sub_218C3FF38(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21964BA94(uint64_t a1, uint64_t a2)
{
  sub_218C3FF38(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21964BB1C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21964BBE8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21964BCB0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

double sub_21964BDA4@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BEEA84();
  v24 = *(v5 - 8);
  v6 = v24;
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioPlaylistFeedContentConfig(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[1];
  v23[0] = *v2;
  v23[1] = v12;
  sub_21964C058(a1, v11);
  v13 = type metadata accessor for AudioPlaylistFeedServiceConfig(0);
  v14 = *(v2 + v13[6]);
  v15 = *(v2 + v13[7]);
  v16 = *(v6 + 16);
  v17 = v2 + v13[9];
  v18 = v25;
  v16(v8, v17, v25);
  *a2 = v23[0];
  *(a2 + 1) = v12;
  sub_21964C058(v11, &a2[v13[5]]);
  *&a2[v13[6]] = v14;
  *&a2[v13[7]] = v15;
  v19 = v18;
  v16(&a2[v13[9]], v8, v18);
  v20 = v14;
  swift_unknownObjectRetain();

  v21 = [v15 autoRefreshMinimumInterval];
  (*(v24 + 8))(v8, v19);
  sub_21964C0BC(v11);
  result = v21;
  *&a2[v13[8]] = v21;
  return result;
}

unint64_t sub_21964C004()
{
  result = qword_27CC1D688;
  if (!qword_27CC1D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D688);
  }

  return result;
}

uint64_t sub_21964C058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedContentConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21964C0BC(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlaylistFeedContentConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AudioPlaylistFeedRefreshRequest(uint64_t a1)
{
  result = qword_27CC1D690;
  if (!qword_27CC1D690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21964C1BC(uint64_t a1)
{
  result = sub_219BF0BD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id FeedViewContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void FeedViewContext.set(presentationReason:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v3 = OBJC_IVAR___TSFeedViewContext_presentationReason;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
  }
}

Swift::Void __swiftcall FeedViewContext.set(externalAnalyticsFeedReferrer:)(NewsUI2::FeedViewReferrer externalAnalyticsFeedReferrer)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

void FeedViewContext.set(feedPickerSection:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v3 = OBJC_IVAR___TSFeedViewContext_feedPickerSection;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
  }
}

Swift::Void __swiftcall FeedViewContext.set(showSubscribedAlert:)(Swift::Bool showSubscribedAlert)
{
  v3 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  *(v1 + v3) = showSubscribedAlert;
}

uint64_t FeedViewContext.feedTagType.getter()
{
  v1 = v0 + OBJC_IVAR___TSFeedViewContext_feedTagType;
  swift_beginAccess();
  return *v1;
}

void FeedViewContext.feedTagType.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___TSFeedViewContext_feedTagType;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t FeedViewContext.openedFromNews.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_openedFromNews;
  swift_beginAccess();
  return *(v0 + v1);
}

void FeedViewContext.openedFromNews.setter(char a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_openedFromNews;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *FeedViewContext.presentationReason.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.feedPickerSection.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_feedPickerSection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.feedPickerType.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_feedPickerType;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.displayRank.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_displayRank;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.externalAnalyticsFeedReferrer.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.previousArticleVersion.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_previousArticleVersion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t FeedViewContext.showSubscribedAlert.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  return *(v0 + v1);
}

void *FeedViewContext.referral.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void FeedViewContext.referral.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t FeedViewContext.sourceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  return sub_2188383F8(v1 + v3, a1);
}

uint64_t FeedViewContext.sourceURL.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_218FA6590(a1, v1 + v3);
  return swift_endAccess();
}

void *FeedViewContext.maximumAdRequestsForCurrentAdPreviewID.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void FeedViewContext.maximumAdRequestsForCurrentAdPreviewID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21964D60C(uint64_t a1, uint64_t *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
}

void sub_21964D690(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = a1;
  v9 = [v7 initWithInt_];
  v10 = *a4;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
}

void FeedViewContext.set(feedPickerType:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v3 = OBJC_IVAR___TSFeedViewContext_feedPickerType;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
  }
}

uint64_t FeedViewContext.set(sourceURL:)(uint64_t a1)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_218FA6590(v5, v1 + v8);
  return swift_endAccess();
}

id FeedViewContext.set(referral:)(void *a1)
{
  v2 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  return a1;
}

void sub_21964DBA0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

double sub_21964DC08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

void sub_21964DC84(uint64_t a1, uint64_t *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
}

void sub_21964DD08(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = a1;
  v9 = [v7 initWithInteger_];
  v10 = *a4;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
}

void FeedViewContext.set(feedTagType:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___TSFeedViewContext_feedTagType;
  swift_beginAccess();
  *v3 = a1;
  *(v3 + 8) = 0;
}

id FeedViewContext.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___TSFeedViewContext_feedTagType];
  *v2 = 0;
  v2[8] = 1;
  v0[OBJC_IVAR___TSFeedViewContext_openedFromNews] = 2;
  *&v0[OBJC_IVAR___TSFeedViewContext_presentationReason] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_feedPickerSection] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_feedPickerType] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_displayRank] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer] = 0;
  v3 = &v0[OBJC_IVAR___TSFeedViewContext_previousArticleID];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_previousArticleVersion] = 0;
  v0[OBJC_IVAR___TSFeedViewContext_showSubscribedAlert] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_referral] = 0;
  v4 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  v5 = sub_219BDB954();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v6 = &v0[OBJC_IVAR___TSFeedViewContext_title];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR___TSFeedViewContext_tagName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR___TSFeedViewContext_sourceApplication];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v0[OBJC_IVAR___TSFeedViewContext_userActivityType];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v0[OBJC_IVAR___TSFeedViewContext_sourceSearchText];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v0[OBJC_IVAR___TSFeedViewContext_adPreviewID];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[OBJC_IVAR___TSFeedViewContext_adPreviewSessionID];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v0[OBJC_IVAR___TSFeedViewContext_adQToken];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID] = 0;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id FeedViewContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FeedViewContext(uint64_t a1)
{
  result = qword_280EDA708;
  if (!qword_280EDA708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21964E210(uint64_t a1)
{
  sub_21873F65C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_21964E304()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);
    v9[4] = sub_21964E5A0;
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_218FEA284;
    v9[3] = &block_descriptor_150;
    v4 = _Block_copy(v9);
    v5 = [v3 initWithDynamicProvider_];
    _Block_release(v4);

    v6 = *(v0 + 56);
    *(v0 + 56) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_21964E434(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemBackgroundColor];
  v4 = [v2 systemBackgroundColor];
  v5 = [a1 userInterfaceStyle];
  if (v5 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v5 == 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

id sub_21964E4EC(void *a1, void *a2, SEL *a3, SEL *a4)
{
  v7 = [a1 userInterfaceStyle];
  if (v7 == 2)
  {
    if (a2)
    {
      result = [a2 *a4];
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  if (v7 != 1 || !a2)
  {
    return 0;
  }

  result = [a2 *a3];
  if (result)
  {
LABEL_8:
    v9 = result;
    v10 = [result ne_color];

    return v10;
  }

  return result;
}

uint64_t sub_21964E5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E93F40;
  if (!qword_280E93F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21964E660(uint64_t a1)
{
  sub_2186EC3A4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21964E704(uint64_t a1)
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
  v21 = 4;
  sub_2186E3B14(0);
  v19 = sub_219BEE964();
  sub_2186E4C38(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v18 = v9;
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_2186EC3A4(0);
  sub_219BEDD14();
  (*(v2 + 16))(v4, &v8[*(v6 + 28)], v1);
  sub_2188176C4(v8, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
  v13 = sub_219BF1784();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_2186F91B8(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v12 + v11) = sub_219BEFB94();
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D32308], v18);
  v20 = v19;
  sub_2191EE154(v12);
  return v20;
}

uint64_t sub_21964EA40(uint64_t a1)
{
  v3 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21965127C(v1, v6, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_219651034(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_21965127C(v18[0], v6, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_219651034(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218C5FB88(0);
  sub_219BE2F74();

  sub_21965127C(v11, v6, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_219651034(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_21964ECF0(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v111 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E4C38(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v104 = &v77 - v5;
  sub_2186E4C38(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = &v77 - v7;
  sub_2186E4C38(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v77 - v9;
  v10 = sub_219BF2AB4();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v105 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2034();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v115 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BEF9C4();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BEF564();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4C38(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v16 - 8);
  v88 = &v77 - v17;
  v87 = sub_219BEFBD4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v19 - 8);
  v80 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4C38(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v110 = &v77 - v22;
  v98 = sub_219BF2774();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v113 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v24 - 8);
  v101 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  v30 = v29 - 8;
  v85 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v89 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v77 - v33;
  v35 = sub_219BF1934();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v112 = &v77 - v40;
  sub_2186EC3A4(0);
  v82 = v41;
  sub_219BEDD14();
  (*(v36 + 16))(v38, &v34[*(v30 + 28)], v35);
  v83 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
  sub_2188176C4(v34, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
  sub_219BEDCA4();
  v42 = sub_219BEC004();
  (*(*(v42 - 8) + 56))(v28, 1, 1, v42);
  sub_218A42400(0);
  v44 = v101;
  (*(*(v43 - 8) + 56))(v101, 1, 1, v43);
  sub_219BF1764();

  sub_2188176C4(v44, sub_218A89A94);
  sub_2188176C4(v28, sub_2186FE720);
  v45 = *(v36 + 8);
  v100 = v36 + 8;
  v101 = v35;
  v90 = v45;
  v45(v38, v35);
  v46 = v111;
  sub_219BEF134();
  v78 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
  v47 = *(v78 + 20);
  v77 = v2;
  v48 = v2 + v47;
  v79 = v2 + v47;
  v81 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
  v114[3] = v81;
  v114[4] = sub_21964E5B8(&qword_280E94F08, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs, &unk_219CB905C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
  sub_21965127C(v48, boxed_opaque_existential_1, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  v50 = v110;
  sub_219BF2AC4();
  v51 = sub_219BF2AD4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_2196507B4(v46);
  v52 = *(v99 + 8);

  v53 = sub_219BEF0A4();
  v54 = sub_21921D080(v53);

  v55 = sub_219BEF074();
  v56 = sub_21921D080(v55);

  sub_2194796A0(v56, v54);
  (*(v86 + 104))(v84, *MEMORY[0x277D32930], v87);
  v57 = sub_219BF02F4();
  (*(*(v57 - 8) + 56))(v88, 1, 1, v57);
  (*(v92 + 104))(v91, *MEMORY[0x277D32670], v93);
  (v94[13])(v95, *MEMORY[0x277D32840], v96);

  v58 = v113;
  v110 = v52;
  sub_219BF2764();
  v59 = (v77 + *(v78 + 24));
  v60 = v59[3];
  v95 = v59[4];
  v96 = v60;
  v94 = __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_219B6CEDC(v112, v115);
  sub_2186E3B14(0);
  v62 = v61;
  v63 = *(v61 - 8);
  v64 = v102;
  (*(v63 + 16))(v102, v79, v61);
  (*(v63 + 56))(v64, 0, 1, v62);
  v65 = sub_219BF35D4();
  (*(*(v65 - 8) + 56))(v103, 1, 1, v65);
  LOBYTE(v114[0]) = 4;
  sub_2186F91B8(0, &qword_280E90058, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v66 = v104;
  v67 = v89;
  sub_219BEDD14();
  sub_2188176C4(v67, v83);
  v68 = v97;
  v69 = v98;
  (*(v97 + 16))(v66, v58, v98);
  v70 = v68;
  v71 = v69;
  (*(v68 + 56))(v66, 0, 1, v69);
  v72 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v72 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v73 = v105;
  sub_219BF2A84();
  v74 = v112;
  v75 = sub_219BF2184();
  (*(v108 + 8))(v73, v109);
  (*(v106 + 8))(v115, v107);
  (*(v70 + 8))(v113, v71);
  v90(v74, v101);
  return v75;
}

uint64_t sub_21964FBF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_21964FC50(a2, *a1, a3);
  sub_218C5FB88(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21964FC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  sub_2186E4C38(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v63 - v6;
  v72 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v72);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF554();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v63 - v11;
  v12 = sub_219BED8D4();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v68 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1904();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v63 - v32;
  MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v35);
  v66 = v36;
  v67 = &v63 - v37;
  sub_219BF2734();
  v38 = sub_219BDBD34();
  v39 = v26;
  (*(*(v38 - 8) + 56))(v26, 1, 1, v38);
  v83 = a2;
  sub_219BF2734();
  v40 = sub_219BF18D4();
  v41 = *(v28 + 8);
  v41(v33, v27);
  if (v40 >> 62)
  {
    result = sub_219BF7214();
    v82 = a3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v43 = 0;
    goto LABEL_9;
  }

  result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v82 = a3;
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v40 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v40);
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v43 = sub_219BF6864();
  swift_unknownObjectRelease();
LABEL_9:
  sub_219BF2734();
  v44 = sub_219BF18D4();
  v41(v30, v27);
  if (v44 >> 62)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v41;
  v64 = v27;
  if (!result)
  {
    goto LABEL_15;
  }

  if ((v44 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v44);
    goto LABEL_15;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_15:
    v45 = v43;

    v46 = sub_219BF1AD4();
    (*(*(v46 - 8) + 56))(v23, 1, 1, v46);
    v47 = sub_219BEFC64();
    (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
    v48 = sub_219BF4334();
    v49 = v68;
    (*(*(v48 - 8) + 56))(v68, 1, 1, v48);
    v50 = sub_219BEC004();
    v51 = v69;
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    v52 = v66;
    v53 = v67;
    sub_219BF1854();

    swift_unknownObjectRelease();
    sub_2188176C4(v51, sub_2186FE720);
    sub_2188176C4(v49, sub_218D7A90C);
    sub_2188176C4(v20, sub_218D7A940);
    sub_2188176C4(v23, sub_218D7A974);
    sub_2188176C4(v39, sub_2186DCF58);
    v54 = v64;
    v55 = v65;
    v65(v52, v64);
    v83 = sub_219BF2744();
    v55(v53, v54);
    sub_2186EC3A4(0);
    v57 = v56;
    v58 = v81;
    v69 = sub_219BEDCB4();
    sub_219BEDCC4();
    v59 = v73;
    sub_219BEDD14();
    (*(v70 + 16))(v76, v59 + *(v72 + 28), v71);
    sub_2188176C4(v59, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
    sub_2186E3B14(0);
    sub_219BEE9B4();
    sub_219BEE984();
    sub_219BEE9D4();
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
    sub_2186F91B8(0, &qword_280E91830, MEMORY[0x277D32318]);
    sub_219BEEC84();
    v60 = v75;
    sub_219BED834();
    v61 = v82;
    (*(*(v57 - 8) + 16))(v82, v58, v57);
    v62 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
    (*(v77 + 32))(v61 + *(v62 + 20), v60, v78);
    type metadata accessor for MagazineFeedGroup(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2196506C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup(0);
  sub_21964E5B8(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup, &unk_219C2DD50);
  return sub_219BEF194();
}

uint64_t sub_2196507B4(uint64_t a1)
{
  v24 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v20 = &v19 - v6;
  v23 = sub_219BF0BD4();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4C38(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33F90];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33FA8], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FB0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v23);
  if (v25 == 1)
  {
    v16 = v21;
    v14(v21, *MEMORY[0x277D33F98], v1);
    v17 = v20;
    sub_2194995E4(v20, v16);
    (*(v22 + 8))(v17, v1);
  }

  return v26;
}

uint64_t sub_219650AF0()
{
  sub_2186E4C38(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219650B70@<X0>(uint64_t *a1@<X8>)
{
  sub_2186EC3A4(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x3000000000000000;
  return result;
}

uint64_t sub_219650BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
  a2[4] = sub_21964E5B8(&qword_280E94EF8, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs, &unk_219CB90EC);
  a2[5] = sub_21964E5B8(&qword_280E94F00, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs, &unk_219CB90C4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21965127C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
}

uint64_t sub_219650CB0()
{
  sub_2186EC3A4(0);

  return sub_219BEDCA4();
}

uint64_t sub_219650CDC@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E4C38(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186EC3A4(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188176C4(inited + 32, sub_2188317B0);
  sub_2196512E4(0);
  a2[3] = v6;
  a2[4] = sub_21964E5B8(&qword_280EE75D8, sub_2196512E4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219650E60(uint64_t a1)
{
  sub_21964E5B8(&qword_280E93F58, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter, &unk_219C952F8);

  return sub_219BE2324();
}

uint64_t sub_219651034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219651098(_OWORD *a1)
{
  v3 = *(type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21964ECF0(v4, v8);
}

uint64_t sub_21965127C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219651418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = type metadata accessor for AudioPlaylistFeedLayoutModel(0);
  v5[26] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  sub_218C3F654(0);
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = sub_219BE9FA4();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v9 = sub_219BDCB14();
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  v10 = sub_219BEE074();
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91990, MEMORY[0x277D32218]);
  v5[47] = swift_task_alloc();
  v11 = sub_219BED8D4();
  v5[48] = v11;
  v5[49] = *(v11 - 8);
  v5[50] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91548, MEMORY[0x277D325F8]);
  v5[51] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  v5[52] = swift_task_alloc();
  v12 = sub_219BF1904();
  v5[53] = v12;
  v5[54] = *(v12 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = type metadata accessor for ArticleListAudioPlaylistFeedGroup(0);
  v5[57] = swift_task_alloc();
  type metadata accessor for AudioPlaylistFeedSectionDescriptor(0);
  v5[58] = swift_task_alloc();
  sub_21965358C(0);
  v5[59] = v13;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  sub_218C3F6E8(0);
  v5[62] = v14;
  v5[63] = *(v14 - 8);
  v5[64] = swift_task_alloc();
  sub_219653614(0);
  v5[65] = swift_task_alloc();
  v15 = sub_219BE8944();
  v5[66] = v15;
  v5[67] = *(v15 - 8);
  v5[68] = swift_task_alloc();
  v16 = sub_219BE8164();
  v5[69] = v16;
  v5[70] = *(v16 - 8);
  v5[71] = swift_task_alloc();
  sub_219BEF6B4();
  v5[72] = swift_task_alloc();
  v17 = sub_219BEF594();
  v5[73] = v17;
  v5[74] = *(v17 - 8);
  v5[75] = swift_task_alloc();
  sub_219BEF5B4();
  v5[76] = swift_task_alloc();
  sub_219BEF604();
  v5[77] = swift_task_alloc();
  sub_219BEF644();
  v5[78] = swift_task_alloc();
  sub_219BEF664();
  v5[79] = swift_task_alloc();
  v18 = sub_219BEF694();
  v5[80] = v18;
  v5[81] = *(v18 - 8);
  v5[82] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[83] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[84] = swift_task_alloc();
  v19 = sub_219BEF6C4();
  v5[85] = v19;
  v5[86] = *(v19 - 8);
  v5[87] = swift_task_alloc();
  sub_219BDCAF4();
  v5[88] = swift_task_alloc();
  v20 = sub_219BDCAE4();
  v5[89] = v20;
  v5[90] = *(v20 - 8);
  v5[91] = swift_task_alloc();
  v21 = sub_219BDCAB4();
  v5[92] = v21;
  v5[93] = *(v21 - 8);
  v5[94] = swift_task_alloc();
  sub_2189BD6B0(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[95] = swift_task_alloc();
  v22 = sub_219BF0634();
  v5[96] = v22;
  v5[97] = *(v22 - 8);
  v5[98] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219651E68, 0, 0);
}

void *sub_219651E68()
{
  v96 = v0[96];
  v98 = v0[97];
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v89 = v0[98];
  v4 = v0[92];
  v121 = v0[91];
  v104 = v0[90];
  v110 = v0[89];
  v94 = v0[87];
  v100 = v0[86];
  v102 = v0[85];
  v74 = v0[84];
  v76 = v0[83];
  v5 = v0[81];
  v77 = v0[82];
  v78 = v0[80];
  v6 = v0[74];
  v83 = v0[75];
  v85 = v0[73];
  v103 = v0[70];
  v106 = v0[69];
  v108 = v0[71];
  v111 = v0[67];
  v113 = v0[66];
  v114 = v0[68];
  v7 = v0[22];
  v115 = v0[21];
  v118 = v0[65];
  (*(v98 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v74, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v76, 1, 1, v10);
  (*(v5 + 104))(v77, *MEMORY[0x277D326B0], v78);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v83, *MEMORY[0x277D32680], v85);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  sub_219BEE0E4();
  (*(v100 + 8))(v94, v102);
  (*(v104 + 8))(v121, v110);
  (*(v3 + 8))(v2, v4);
  sub_218864B10(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v98 + 8))(v89, v96);
  (*(v103 + 16))(v108, v7, v106);
  (*(v111 + 104))(v114, *MEMORY[0x277D6E080], v113);
  sub_218A6C9A4(0);
  (*(*(v11 - 8) + 16))(v118, v115, v11);
  sub_218795D38(&qword_27CC0D310, sub_218A6C9A4, MEMORY[0x277D6EC70]);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v123 = MEMORY[0x277D84F90];
    sub_218C37E40(0, v12 & ~(v12 >> 63), 0);
    v14 = v123;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v18 = v0[14];
      v82 = v0 + 7;
      v109 = v0[59];
      v81 = v0[56];
      v19 = v0[44];
      v79 = (v0[54] + 8);
      v80 = (v0[49] + 16);
      v84 = (v0[41] + 8);
      v71 = (v0[34] + 104);
      v72 = (v19 + 16);
      v67 = v0[28];
      v112 = v0[31];
      v70 = (v19 + 8);
      v69 = *MEMORY[0x277D6E980];
      v73 = v0[63];
      v75 = v13;
      v68 = *MEMORY[0x277D6E988];
      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v116 = v17;
        v21 = v16[61];
        v22 = *(v109 + 48);
        v16[15] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[16])
        {
          goto LABEL_21;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[17])
        {
          goto LABEL_22;
        }

        v86 = v20;
        v87 = v18;
        v107 = v14;
        v23 = v16[58];
        v119 = v16[60];
        v122 = v16[57];
        v88 = v16[55];
        v105 = v16[53];
        v24 = v16[50];
        v90 = v16[52];
        v91 = v16[48];
        v92 = v16[51];
        v93 = v16[47];
        v95 = v16[39];
        v97 = v16[38];
        v99 = v16[37];
        v101 = v16[36];
        v25 = sub_219BF5EC4();
        v27 = v26;
        sub_2196536A8(0, &qword_27CC17670, MEMORY[0x277D6D710]);
        v29 = v28;
        v30 = *(v28 - 8);
        (*(v30 + 16))(v21 + v22, v27, v28);
        v25(v82, 0);
        *v119 = v116;
        (*(v30 + 32))(&v119[*(v109 + 48)], v21 + v22, v29);
        sub_219BE6934();
        sub_218A6DD44(v23, v122);
        v31 = *(v81 + 20);
        sub_219BED874();
        v32 = sub_219BEDB64();
        (*(*(v32 - 8) + 56))(v90, 1, 1, v32);
        (*v80)(v24, v122 + v31, v91);
        sub_219BEF4D4();
        v33 = sub_219BEF4E4();
        (*(*(v33 - 8) + 56))(v92, 0, 1, v33);
        v34 = sub_219BEEA64();
        (*(*(v34 - 8) + 56))(v93, 1, 1, v34);
        sub_218795D38(&qword_27CC1D710, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C30884);
        sub_218795D38(&qword_27CC1D718, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F150);
        sub_219BE69F4();
        sub_218864B10(v93, &qword_280E91990, MEMORY[0x277D32218]);
        sub_218864B10(v92, &qword_280E91548, MEMORY[0x277D325F8]);
        sub_218864B10(v90, &qword_280E924F8, MEMORY[0x277D31DD0]);
        v35 = *v79;
        (*v79)(v88, v105);
        sub_219BED874();
        v36 = sub_219BF44B4();
        v35(v88, v105);
        v16[5] = sub_219BF3594();
        v16[6] = MEMORY[0x277D33EB8];
        v16[2] = v36;
        v37 = sub_219BDCB24();
        v38 = *(*(v37 - 8) + 56);
        v38(v95, 1, 1, v37);
        v38(v97, 1, 1, v37);
        v38(v99, 1, 1, v37);
        v38(v101, 1, 1, v37);

        sub_219BDCB04();
        sub_219BEE0B4();
        v40 = v16[45];
        v39 = v16[46];
        v41 = v16[43];
        v42 = v16[35];
        v43 = v16[33];
        (*v84)(v16[42], v16[40]);

        sub_218864B10((v16 + 2), &qword_280E91020, sub_2189BD704);
        (*v72)(v40, v39, v41);
        v16[11] = sub_21897F174(v40);
        v16[12] = v44;
        v16[13] = v45;
        v46 = sub_219BE9F84();
        (*(*(v46 - 8) + 104))(v42, v69, v46);
        (*v71)(v42, v68, v43);
        v47 = sub_219BEE004();
        v48 = *(v47 + 16);
        v49 = v16;
        if (v48)
        {
          v124 = MEMORY[0x277D84F90];
          sub_218C37E90(0, v48, 0);
          v50 = v47 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v117 = *(v67 + 16);
          v120 = *(v67 + 72);
          do
          {
            v51 = v49[29];
            v53 = v49[26];
            v52 = v49[27];
            v117(v51, v50, v52);
            v117(v53, v51, v52);
            sub_218795D38(&qword_27CC0F6A0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49700);
            sub_219BE75D4();
            (*(v67 + 8))(v51, v52);
            v55 = *(v124 + 16);
            v54 = *(v124 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_218C37E90((v54 > 1), v55 + 1, 1);
            }

            v56 = v49[32];
            v57 = v49[30];
            *(v124 + 16) = v55 + 1;
            (*(v112 + 32))(v124 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v55, v56, v57);
            v50 += v120;
            --v48;
          }

          while (v48);
        }

        v58 = v49[60];
        v59 = v49[57];
        v60 = v49[46];
        v61 = v49[43];
        v16 = v49;
        sub_21897F120();
        sub_218795D38(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49738);
        sub_219BE81A4();

        (*v70)(v60, v61);
        sub_21965379C(v59, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
        sub_21965379C(v58, sub_21965358C);
        v14 = v107;
        v63 = *(v107 + 16);
        v62 = *(v107 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_218C37E40((v62 > 1), v63 + 1, 1);
          v14 = v107;
        }

        v64 = v49[64];
        v65 = v49[62];
        *(v14 + 16) = v63 + 1;
        (*(v73 + 32))(v14 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v63, v64, v65);
        v49[19] = v87;
        result = sub_219BF5E54();
        v18 = v49[18];
        v17 = v86;
        if (v86 == v75)
        {
          sub_21965379C(v49[65], sub_219653614);
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_21965379C(v0[65], sub_219653614);
    v16 = v0;
LABEL_17:
    sub_21897F120();
    sub_218795D38(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49738);
    sub_219BE6564();
    sub_219BEE0C4();

    v66 = v16[1];

    return v66();
  }

  return result;
}

uint64_t sub_2196534C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_219651418(a1, a2, a3, a4);
}

void sub_21965358C(uint64_t a1)
{
  if (!qword_27CC1D700)
  {
    sub_2196536A8(255, &qword_27CC17670, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D700);
    }
  }
}

void sub_219653614(uint64_t a1)
{
  if (!qword_27CC1D708)
  {
    sub_218A6C9A4(255);
    sub_218795D38(&qword_27CC13FC0, sub_218A6C9A4, MEMORY[0x277D6EC68]);
    v1 = sub_219BF7544();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D708);
    }
  }
}

void sub_2196536A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioPlaylistFeedModel(255);
    v8[2] = sub_218795D38(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C3085C);
    v8[3] = sub_218795D38(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21965379C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WebLinkRouteModel.init(identifier:url:config:observer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for WebLinkRouteModel(0);
  result = sub_218FECB94(a3, a7 + v12[5]);
  *(a7 + v12[6]) = a4;
  v14 = (a7 + v12[7]);
  *v14 = a5;
  v14[1] = a6;
  return result;
}

uint64_t sub_219653898(void *a1, uint64_t a2)
{
  v4 = sub_219BF2124();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 identifier];
  if (!v10)
  {
    sub_219BF5414();
    v10 = sub_219BF53D4();
  }

  v11 = [objc_opt_self() nss:v10 NewsURLForTagID:6 feedConfiguration:?];

  sub_219BDB8B4();
  sub_218EEDEFC(0);
  sub_219BF14C4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  sub_219BF20E4();
  sub_219BF14A4();
  sub_219653B24(a2);
  sub_219BF20F4();

  sub_219BF14A4();
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_219653B24(uint64_t a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  if (*(a1 + 16))
  {
    type metadata accessor for SportsHighlights(0);
    sub_2191B4878(v5);
    (*(v3 + 32))(v8, v5, v2);
    v9 = sub_218A9EC28(v8);
    (*(v3 + 8))(v8, v2);
    v10 = v9[2];
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v10 = sub_219BDB5E4();
  }

  return v10;
}

uint64_t sub_219653D4C(void *a1)
{
  sub_219659228(0, &qword_27CC1D7E8, sub_219658D10, &type metadata for UserNotification.IssueData.Issue.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658D10();
  sub_219BF7B44();
  v12 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    v11 = 1;
    sub_219BF77F4();
    v10 = 2;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219653EF8()
{
  v1 = 0x4E6C656E6E616863;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496575737369;
  }
}

uint64_t sub_219653F60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219657ACC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219653F88(uint64_t a1)
{
  v2 = sub_219658D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219653FC4(uint64_t a1)
{
  v2 = sub_219658D10();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_219654000@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_219657BF0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_21965405C(void *a1)
{
  v3 = v1;
  sub_219659228(0, &qword_27CC1D7C0, sub_219658B3C, &type metadata for UserNotification.IssueData.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658B3C();
  sub_219BF7B44();
  v12 = *v3;
  v11[15] = 0;
  sub_2187AC848(0, &qword_280E8F2E8, &type metadata for UserNotification.IssueData.Issue, MEMORY[0x277D83940]);
  sub_219658C2C(&qword_27CC1D7C8, sub_219658CBC, MEMORY[0x277D83948]);
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for UserNotification.IssueData(0);
    v11[14] = 1;
    sub_219BDBD34();
    sub_219658BE4(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_219BF7834();
    v11[13] = 2;
    sub_219BF77F4();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_2196542F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_219BDBD34();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219659228(0, &qword_27CC1D7A0, sub_219658B3C, &type metadata for UserNotification.IssueData.CodingKeys, MEMORY[0x277D844C8]);
  v25 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for UserNotification.IssueData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658B3C();
  v26 = v7;
  v11 = v27;
  sub_219BF7B34();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v23;
    v12 = v24;
    v27 = v10;
    sub_2187AC848(0, &qword_280E8F2E8, &type metadata for UserNotification.IssueData.Issue, MEMORY[0x277D83940]);
    v30 = 0;
    sub_219658C2C(&qword_27CC1D7B0, sub_219658B90, MEMORY[0x277D83978]);
    v14 = v25;
    sub_219BF7734();
    v20[1] = v31;
    *v27 = v31;
    v29 = 1;
    sub_219658BE4(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_219BF7734();
    (*(v22 + 32))(v27 + *(v8 + 20), v4, v12);
    v28 = 2;
    v20[0] = 0;
    v15 = sub_219BF76F4();
    v17 = v16;
    (*(v13 + 8))(v26, v14);
    v18 = v27;
    v19 = (v27 + *(v8 + 24));
    *v19 = v15;
    v19[1] = v17;
    sub_2187ADB6C(v18, v21, type metadata accessor for UserNotification.IssueData);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_219657A18(v18, type metadata accessor for UserNotification.IssueData);
  }
}

uint64_t sub_21965477C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_219659228(0, &qword_27CC1D798, sub_219658AE8, &type metadata for UserNotification.RevokeData.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658AE8();
  sub_219BF7B44();
  v15 = 0;
  v11 = v13[3];
  sub_219BF77F4();
  if (!v11)
  {
    v14 = 1;
    sub_219BF77F4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_219654918(void *a1)
{
  sub_219659228(0, &qword_27CC1D860, sub_2196591D4, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196591D4();
  sub_219BF7B44();
  v12 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    v11 = 1;
    sub_219BF7824();
    v10 = 2;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219654AC4()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736575737369;
  }
}

uint64_t sub_219654B24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219657E74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219654B4C(uint64_t a1)
{
  v2 = sub_219658B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219654B88(uint64_t a1)
{
  v2 = sub_219658B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219654BF4()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_219654C30(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000219D2BDE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D2BE00 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_219654D14(uint64_t a1)
{
  v2 = sub_219658AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219654D50(uint64_t a1)
{
  v2 = sub_219658AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219654D8C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_219657F98(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_219654DDC()
{
  v1 = 1937334628;
  if (*v0 != 1)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7550737961646F74;
  }
}

uint64_t sub_219654E44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2196581AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219654E6C(uint64_t a1)
{
  v2 = sub_2196591D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219654EA8(uint64_t a1)
{
  v2 = sub_2196591D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_219654EE4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2196582D0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_219654F44(void *a1)
{
  v3 = v1;
  sub_219659228(0, &qword_27CC1D770, sub_21965895C, &type metadata for UserNotification.PuzzleStreakData.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21965895C();
  sub_219BF7B44();
  v12 = *v3;
  v11[15] = 0;
  sub_2187AC848(0, &qword_27CC1D758, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak, MEMORY[0x277D83940]);
  sub_219658A04(&qword_27CC1D778, sub_219658A94, MEMORY[0x277D83948]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = 1;
    sub_219BF7794();
    v11[13] = 2;
    sub_219BF77F4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219655168()
{
  v1 = 0x7548656C7A7A7570;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7453656C7A7A7570;
  }
}

uint64_t sub_2196551E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21965853C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219655208(uint64_t a1)
{
  v2 = sub_21965895C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219655244(uint64_t a1)
{
  v2 = sub_21965895C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_219655280@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21965866C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2196552E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v133 = a1;
  sub_2186DDF98(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v128 - v8;
  v10 = sub_219BDB954();
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DDF98(0, qword_280ED7148, type metadata accessor for UserNotification.IssueData);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v128 - v14;
  v16 = type metadata accessor for UserNotification.IssueData(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DDF98(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v20 - 8);
  v131 = &v128 - v21;
  v22 = sub_219BF5414();
  if (!a3)
  {

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    goto LABEL_6;
  }

  v132 = a4;
  if (v22 == a2 && v23 == a3)
  {

LABEL_10:
    v136 = sub_219BF5414();
    v137 = v26;
    sub_219BF72A4();
    v27 = v133;
    if (*(v133 + 16) && (v28 = sub_21931EECC(v140), (v29 & 1) != 0))
    {
      sub_2186D1230(*(v27 + 56) + 32 * v28, &v138);
      sub_218B6B67C(v140);
      sub_2187AC8F4();
      if (swift_dynamicCast())
      {
        v30 = v136;
        v136 = sub_219BF5414();
        v137 = v31;
        sub_219BF72A4();
        if (v30[2] && (v32 = sub_21931EECC(v140), (v33 & 1) != 0))
        {
          sub_2186D1230(v30[7] + 32 * v32, &v138);
          sub_218B6B67C(v140);
          if (swift_dynamicCast())
          {
            v133 = v136;
            v130 = v137;
            *&v138 = sub_219BF5414();
            *(&v138 + 1) = v34;
            sub_219BF72A4();
            if (v30[2] && (v35 = sub_21931EECC(v140), (v36 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v35, &v138);
              sub_218B6B67C(v140);
              v37 = swift_dynamicCast();
              if (v37)
              {
                v38 = v136;
              }

              else
              {
                v38 = 0;
              }

              if (v37)
              {
                v39 = v137;
              }

              else
              {
                v39 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v140);
              v38 = 0;
              v39 = 0;
            }

            *&v138 = sub_219BF5414();
            *(&v138 + 1) = v45;
            sub_219BF72A4();
            if (v30[2] && (v46 = sub_21931EECC(v140), (v47 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v46, &v138);
              sub_218B6B67C(v140);
              v48 = swift_dynamicCast();
              if (v48)
              {
                v49 = v136;
              }

              else
              {
                v49 = 0;
              }

              if (v48)
              {
                v50 = v137;
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v140);
              v49 = 0;
              v50 = 0;
            }

            *&v138 = sub_219BF5414();
            *(&v138 + 1) = v51;
            sub_219BF72A4();
            if (v30[2] && (v52 = sub_21931EECC(v140), (v53 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v52, &v138);
              sub_218B6B67C(v140);
              v54 = swift_dynamicCast();
              if (v54)
              {
                v55 = v136;
              }

              else
              {
                v55 = 0;
              }

              if (v54)
              {
                v56 = v137;
              }

              else
              {
                v56 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v140);
              v55 = 0;
              v56 = 0;
            }

            sub_219656A08(v30, v131);
            *&v138 = sub_219BF5414();
            *(&v138 + 1) = v57;
            sub_219BF72A4();
            if (v30[2] && (v58 = sub_21931EECC(v140), (v59 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v58, &v138);
              sub_218B6B67C(v140);
              v60 = swift_dynamicCast();
              if (v60)
              {
                v61 = v136;
              }

              else
              {
                v61 = 0;
              }

              if (v60)
              {
                v62 = v137;
              }

              else
              {
                v62 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v140);
              v61 = 0;
              v62 = 0;
            }

            v63 = v132;
            v64 = v130;
            *v132 = v133;
            v63[1] = v64;
            v63[2] = v49;
            v63[3] = v50;
            v63[4] = v38;
            v63[5] = v39;
            v63[6] = v55;
            v63[7] = v56;
            v65 = type metadata accessor for UserNotification.ArticleData(0);
            sub_218A5DD60(v131, v63 + v65[8]);
            v66 = (v63 + v65[9]);
            *v66 = v61;
            v66[1] = v62;
            *(v63 + v65[10]) = v30;
            type metadata accessor for UserNotification.Kind(0);
            return swift_storeEnumTagMultiPayload();
          }
        }

        else
        {

          sub_218B6B67C(v140);
        }
      }
    }

    else
    {
      sub_218B6B67C(v140);
    }

LABEL_25:
    type metadata accessor for UserNotification.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  v25 = sub_219BF78F4();

  if (v25)
  {
    goto LABEL_10;
  }

  if (sub_219BF5414() == a2 && v40 == a3)
  {
    goto LABEL_28;
  }

  v41 = sub_219BF78F4();

  if (v41)
  {
    goto LABEL_30;
  }

  if (sub_219BF5414() == a2 && v42 == a3)
  {
LABEL_28:

LABEL_30:
    sub_219658BE4(&qword_27CC1D740, type metadata accessor for UserNotification.IssueData, &unk_219C95850);

    sub_219BF5D24();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_2196579B0(v15, v19, type metadata accessor for UserNotification.IssueData);
      sub_2196579B0(v19, v132, type metadata accessor for UserNotification.IssueData);
      type metadata accessor for UserNotification.Kind(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_2187BC824(v15, qword_280ED7148, type metadata accessor for UserNotification.IssueData);
    goto LABEL_25;
  }

  v43 = sub_219BF78F4();

  if (v43)
  {
    goto LABEL_30;
  }

  if (sub_219BF5414() == a2 && v44 == a3)
  {

LABEL_73:
    v136 = 1937204590;
    v137 = 0xE400000000000000;
    sub_219BF72A4();
    v68 = v133;
    if (*(v133 + 16) && (v69 = sub_21931EECC(v140), (v70 & 1) != 0))
    {
      sub_2186D1230(*(v68 + 56) + 32 * v69, &v138);
      sub_218B6B67C(v140);
      sub_2186C6148(0, &qword_27CC1D738, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v71 = v136;
        v72 = sub_219BF53D4();
        v73 = [v71 valueForKey_];

        if (v73)
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v138 = 0u;
          v139 = 0u;
        }

        v140[0] = v138;
        v140[1] = v139;
        if (*(&v139 + 1))
        {
          if (swift_dynamicCast())
          {
            v80 = v136;
            v79 = v137;
            sub_219BDB914();
            v81 = v129;
            v82 = v130;
            if ((*(v129 + 48))(v9, 1, v130) == 1)
            {

              sub_2187BC824(v9, &unk_280EE9D00, MEMORY[0x277CC9260]);
              if (qword_280E8D870 != -1)
              {
                swift_once();
              }

              v83 = qword_280F61750;
              v84 = sub_219BF61F4();
              sub_219BE5314("Failed to convert URL string to URL in URL-type notification ", 61, 2, &dword_2186C1000, v83, v84, MEMORY[0x277D84F90]);
LABEL_96:

              goto LABEL_25;
            }

            v133 = v80;
            (*(v81 + 32))(v12, v9, v82);
            (*(v81 + 16))(v132, v12, v82);
            v88 = sub_219BF53D4();
            v89 = [v71 valueForKey_];

            if (v89)
            {
              sub_219BF70B4();

              swift_unknownObjectRelease();
              (*(v81 + 8))(v12, v82);
            }

            else
            {
              (*(v81 + 8))(v12, v82);

              v138 = 0u;
              v139 = 0u;
            }

            sub_2187ACC2C(0);
            v98 = (v132 + *(v97 + 48));
            v140[0] = v138;
            v140[1] = v139;
            if (*(&v139 + 1))
            {
              if (swift_dynamicCast())
              {
                v99 = v136;
                v100 = v137;

                v79 = v100;
LABEL_123:
                *v98 = v99;
                v98[1] = v79;
                type metadata accessor for UserNotification.Kind(0);
                return swift_storeEnumTagMultiPayload();
              }
            }

            else
            {
              sub_218806FD0(v140);
            }

            v99 = v133;
            goto LABEL_123;
          }
        }

        else
        {
          sub_218806FD0(v140);
        }

        if (qword_280E8D870 != -1)
        {
          swift_once();
        }

        v85 = qword_280F61750;
        v86 = sub_219BF61F4();
        sub_219BE5314("Failed to unpack 'url' from url-type notification", 49, 2, &dword_2186C1000, v85, v86, MEMORY[0x277D84F90]);

        goto LABEL_25;
      }
    }

    else
    {
      sub_218B6B67C(v140);
    }

    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v74 = qword_280F61750;
    v75 = sub_219BF61F4();
    sub_219BE5314("Failed to unpack 'news' from url-type notification", 50, 2, &dword_2186C1000, v74, v75, MEMORY[0x277D84F90]);
    goto LABEL_25;
  }

  v67 = sub_219BF78F4();

  if (v67)
  {
    goto LABEL_73;
  }

  if (sub_219BF5414() == a2 && v76 == a3)
  {
    goto LABEL_84;
  }

  v77 = sub_219BF78F4();

  if ((v77 & 1) == 0)
  {
    if (sub_219BF5414() == a2 && v78 == a3)
    {
LABEL_84:

      goto LABEL_6;
    }

    v87 = sub_219BF78F4();

    if ((v87 & 1) == 0)
    {
      if (sub_219BF5414() == a2 && v90 == a3)
      {

LABEL_109:
        v134 = 1937204590;
        v135 = 0xE400000000000000;
        sub_219BF72A4();
        v92 = v133;
        if (*(v133 + 16) && (v93 = sub_21931EECC(v140), (v94 & 1) != 0))
        {
          sub_2186D1230(*(v92 + 56) + 32 * v93, &v136);
          sub_218B6B67C(v140);
          sub_2186C6148(0, &qword_27CC1D738, 0x277CBEAC0);
          if (swift_dynamicCast())
          {
            v95 = v134;
            *&v140[0] = 6580577;
            *(&v140[0] + 1) = 0xE300000000000000;
            v96 = [v134 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();

            if (v96)
            {
              sub_219BF70B4();
              swift_unknownObjectRelease();
            }

            else
            {
              memset(v140, 0, sizeof(v140));
            }

            v138 = v140[0];
            v139 = v140[1];
            if (*(&v140[1] + 1))
            {
              if (swift_dynamicCast())
              {
                v109 = *(&v140[0] + 1);
                v110 = v132;
                *v132 = *&v140[0];
                v110[1] = v109;
                type metadata accessor for UserNotification.Kind(0);
                return swift_storeEnumTagMultiPayload();
              }

              goto LABEL_25;
            }

            goto LABEL_116;
          }
        }

        else
        {
          sub_218B6B67C(v140);
        }

        v138 = 0u;
        v139 = 0u;
LABEL_116:
        sub_218806FD0(&v138);
        goto LABEL_25;
      }

      v91 = sub_219BF78F4();

      if (v91)
      {
        goto LABEL_109;
      }

      if (sub_219BF5414() == a2 && v101 == a3)
      {

LABEL_128:
        v136 = 1937204590;
        v137 = 0xE400000000000000;
        sub_219BF72A4();
        if (*(v133 + 16) && (v103 = sub_21931EECC(v140), (v104 & 1) != 0))
        {
          sub_2186D1230(*(v133 + 56) + 32 * v103, &v138);
          sub_218B6B67C(v140);
          sub_2186C6148(0, &qword_27CC1D738, 0x277CBEAC0);
          if (swift_dynamicCast())
          {
            v71 = v136;
            *&v138 = 25705;
            *(&v138 + 1) = 0xE200000000000000;
            v105 = [v136 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v105)
            {
              sub_219BF70B4();
              swift_unknownObjectRelease();
            }

            else
            {
              v138 = 0u;
              v139 = 0u;
            }

            v140[0] = v138;
            v140[1] = v139;
            if (*(&v139 + 1))
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_165:
                if (qword_280E8D870 != -1)
                {
                  swift_once();
                }

                v126 = qword_280F61750;
                v127 = sub_219BF61F4();
                sub_219BE5314("Failed to unpack ids from revoke-type notification", 50, 2, &dword_2186C1000, v126, v127, MEMORY[0x277D84F90]);
                goto LABEL_96;
              }

              v121 = v136;
              v120 = v137;
              *&v138 = 1684631154;
              *(&v138 + 1) = 0xE400000000000000;
              v122 = [v71 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v122)
              {
                sub_219BF70B4();
                swift_unknownObjectRelease();
              }

              else
              {
                v138 = 0u;
                v139 = 0u;
              }

              v140[0] = v138;
              v140[1] = v139;
              if (*(&v139 + 1))
              {
                if (swift_dynamicCast())
                {

                  v123 = v136;
                  v124 = v137;
                  v125 = v132;
                  *v132 = v121;
                  v125[1] = v120;
                  v125[2] = v123;
                  v125[3] = v124;
                  type metadata accessor for UserNotification.Kind(0);
                  return swift_storeEnumTagMultiPayload();
                }

                goto LABEL_165;
              }
            }

            sub_218806FD0(v140);
            goto LABEL_165;
          }
        }

        else
        {
          sub_218B6B67C(v140);
        }

        if (qword_280E8D870 != -1)
        {
          swift_once();
        }

        v106 = qword_280F61750;
        v107 = sub_219BF61F4();
        sub_219BE5314("Failed to unpack 'news' from revoke-type notification", 53, 2, &dword_2186C1000, v106, v107, MEMORY[0x277D84F90]);
        goto LABEL_25;
      }

      v102 = sub_219BF78F4();

      if (v102)
      {
        goto LABEL_128;
      }

      if (sub_219BF5414() == a2 && v108 == a3)
      {
        goto LABEL_139;
      }

      v111 = sub_219BF78F4();

      if (v111)
      {
        goto LABEL_145;
      }

      if (sub_219BF5414() == a2 && v118 == a3)
      {
LABEL_139:
      }

      else
      {
        v119 = sub_219BF78F4();

        if ((v119 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_145:
      sub_219657A78();

      sub_219BF5D24();
      if (*&v140[0])
      {
        v113 = *(&v140[1] + 1);
        v112 = v141;
        v114 = *(v140 + 8);
        v115 = v132;
        *v132 = *&v140[0];
        *(v115 + 1) = v114;
        v115[3] = v113;
        v115[4] = v112;
        type metadata accessor for UserNotification.Kind(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v116 = qword_280F61750;
      v117 = sub_219BF61F4();
      sub_219BE5314("Failed to create UserNotification.Kind (PuzzleStreakData from userInfo)", 71, 2, &dword_2186C1000, v116, v117, MEMORY[0x277D84F90]);
      goto LABEL_25;
    }
  }

LABEL_6:
  type metadata accessor for UserNotification.Kind(0);

  return swift_storeEnumTagMultiPayload();
}