uint64_t sub_26AF4BA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a5;
  v96 = a4;
  v95 = a3;
  v94 = a2;
  v61 = a1;
  v62 = a6;
  v107 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v111 = 0;
  v131 = a2;
  v130 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v64 = sub_26B078BF0();
  v63 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  v66 = sub_26B079AB0();
  v67 = *(v66 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v32 - v71;
  MEMORY[0x28223BE20](v7);
  v72 = &v32 - v71;
  v129 = &v32 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD820, &qword_26B08CAB8);
  v74 = *(v73 - 8);
  v75 = v74;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73 - 8);
  v77 = &v32 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  v79 = *(v78 - 8);
  v80 = v79;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78 - 8);
  v82 = &v32 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD828, &qword_26B08CAC0);
  v84 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83 - 8);
  v85 = &v32 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v87 = *(v86 - 8);
  v88 = v87;
  v90 = *(v87 + 64);
  MEMORY[0x28223BE20](v86 - 8);
  v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v89 = &v32 - v92;
  MEMORY[0x28223BE20](&v32 - v92);
  v91 = &v32 - v92;
  MEMORY[0x28223BE20](v8);
  v93 = &v32 - v92;
  v128 = &v32 - v92;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0, &unk_26B08BEA0);
  v100 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  v99 = &v32 - v102;
  MEMORY[0x28223BE20](v9);
  v101 = &v32 - v102;
  MEMORY[0x28223BE20](v10);
  v103 = &v32 - v102;
  v127 = &v32 - v102;
  v126 = a1;
  v125[0] = v11;
  v125[1] = v12;
  v125[2] = v13;
  v125[3] = v14;
  updated = type metadata accessor for SoftwareUpdateContentView(v15, v125);
  v105 = sub_26AF45C88(updated);
  v106 = ReactiveUIManager.currentState.getter();

  v124[14] = v106;
  v124[13] = 4;
  v109 = type metadata accessor for SUUIStatefulUIState(v107);
  v108 = v109;
  v110 = sub_26AE9BA40();
  if (sub_26B07A790())
  {
    v60 = 1;
  }

  else
  {
    v58 = sub_26AF45C88(updated);
    v59 = ReactiveUIManager.currentState.getter();

    v124[12] = v59;
    v124[11] = 3;
    v60 = sub_26B07A790();
  }

  if (v60)
  {
    v45 = *sub_26AF90E54();
    v16 = v45;
    v46 = v122;
    sub_26AF91B10(v122);

    sub_26AF9F5A4();
    v17 = sub_26B078620();
    v121 = sub_26AF9F5C0(v17);
    v49 = sub_26AF8A83C();
    v48 = MEMORY[0x277CE0F78];
    v50 = MEMORY[0x277CE0F60];
    v47 = &v121;
    sub_26B079350();
    sub_26AEF8E10();
    (*(v75 + 8))(v77, v73);
    v117 = v73;
    v118 = v48;
    v119 = v49;
    v120 = v50;
    v53 = 1;
    swift_getOpaqueTypeConformance2();
    sub_26B079660();
    (*(v80 + 8))(v82, v78);
    v116 = sub_26AF9F5D8();
    v54 = sub_26AF8A730();
    v51 = MEMORY[0x277CE04F8];
    v52 = MEMORY[0x277CE04E8];
    sub_26B079360();
    sub_26AF8AD30(v85);
    v112 = v83;
    v113 = v51;
    v114 = v54;
    v115 = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v91, v86, v93);
    v56 = *(v88 + 8);
    v57 = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v91, v86);
    v111 = v91;
    v44 = *(v88 + 16);
    v43 = v88 + 16;
    v44(v89, v93, v86);
    sub_26AE94B4C(v89, v86, v91);
    v56(v89, v86);
    v44(v99, v91, v86);
    (*(v88 + 56))(v99, 0, 1, v86);
    sub_26AF09CCC(v99, v86, v101);
    sub_26AF8A8C4(v99);
    sub_26AF8A978(v101, v103);
    v56(v91, v86);
    v56(v93, v86);
  }

  else
  {
    v18 = *(v88 + 56);
    v42 = 1;
    v18(v99, 1, 1, v86);
    v19 = sub_26AF8A730();
    v124[7] = v83;
    v124[8] = MEMORY[0x277CE04F8];
    v124[9] = v19;
    v124[10] = MEMORY[0x277CE04E8];
    swift_getOpaqueTypeConformance2();
    sub_26AF09CCC(v99, v86, v101);
    sub_26AF8A8C4(v99);
    sub_26AF8A978(v101, v103);
  }

  v36 = &v32;
  v32 = 56;
  MEMORY[0x28223BE20](&v32);
  v20 = v97;
  v33 = &v32 - 8;
  *(&v32 - 6) = v21;
  *(&v32 - 5) = v22;
  *(&v32 - 4) = v23;
  *(&v32 - 3) = v20;
  *(&v32 - 2) = v24;
  v35 = &v32;
  MEMORY[0x28223BE20](&v32);
  v25 = v97;
  v26 = v96;
  v34 = &v32 - 8;
  *(&v32 - 6) = v27;
  *(&v32 - 5) = v28;
  *(&v32 - 4) = v26;
  *(&v32 - 3) = v25;
  *(&v32 - 2) = v29;
  v30 = sub_26AE9C354();
  v124[5] = v96;
  v124[6] = v30;
  WitnessTable = swift_getWitnessTable();
  v38 = sub_26AF6BAFC();
  sub_26AF0E3C4(sub_26AF8AAAC, v33, v63, v65, WitnessTable, v38, v70);
  v124[2] = MEMORY[0x277CE1410];
  v124[3] = WitnessTable;
  v124[4] = v38;
  v39 = swift_getWitnessTable();
  sub_26AE9463C(v70, v66, v72);
  v41 = *(v68 + 8);
  v40 = v68 + 8;
  v41(v70, v66);
  sub_26AF8AAFC(v103, v101);
  v124[0] = v101;
  (*(v68 + 16))(v70, v72, v66);
  v124[1] = v70;
  v123[0] = v98;
  v123[1] = v66;
  v122[5] = sub_26AF8AC30();
  v122[6] = v39;
  sub_26AFD49C4(v124, 2uLL, v123, v62);
  v41(v70, v66);
  sub_26AF8A8C4(v101);
  v41(v72, v66);
  return sub_26AF8A8C4(v103);
}

uint64_t sub_26AF4C630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v22 = a1;
  v35 = a2;
  v16[1] = a3;
  v30 = a4;
  v16[2] = a5;
  v31 = MEMORY[0x277CDFAD8];
  v42 = 0;
  v41 = 0;
  v44 = a2;
  v43 = a3;
  v26 = *(a2 - 8);
  v27 = a2 - 8;
  v16[0] = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v28 = v16 - v16[0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v17 = 0;
  v36 = sub_26B078BF0();
  v19 = *(*(v36 - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v34 = v16 - v18;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v37 = v16 - v20;
  v42 = v16 - v20;
  v41 = v22;
  v40[0] = v7;
  v40[1] = v8;
  v40[2] = v9;
  v40[3] = v10;
  updated = type metadata accessor for SoftwareUpdateContentView(v11, v40);
  v12 = v22 + *(updated + 92);
  v21 = *v12;
  v29 = *(v12 + 8);

  v21(v13);
  v24 = sub_26AF45C88(updated);
  v25 = ReactiveUIManager.isBusy.getter();

  sub_26B0796A0();
  (*(v26 + 8))(v28, v35);

  v14 = sub_26AE9C354();
  v38 = v30;
  v39 = v14;
  WitnessTable = swift_getWitnessTable();
  sub_26AE9463C(v34, v36, v37);
  sub_26AF8AD98(v34, v35);
  sub_26AF8AE18(v37, v34, v35, v36);
  sub_26AE94B4C(v34, v36, v32);
  sub_26AF8AD98(v34, v35);
  return sub_26AF8AD98(v37, v35);
}

uint64_t sub_26AF4C944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v28 = a3;
  v27 = a1;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v19);
  sub_26AF4CAA0(updated, v20);
  v17[0] = v20[0];
  v17[1] = v20[1];
  v17[2] = v20[2];
  v17[3] = v20[3];
  v18 = v21;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26AF6BAFC();
  sub_26AE9463C(v17, v14, &v22);
  sub_26AF6BB94(v17);
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  sub_26AF6B9DC(v22, v23, v24, v25, v26);
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v16 = v12;
  sub_26AE94B4C(v15, v14, a6);
  sub_26AF6BB94(v15);
  return sub_26AF6BB94(&v22);
}

uint64_t sub_26AF4CAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = 0u;
  v176 = 0u;
  v162 = 0u;
  v163 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v119 = 0u;
  v120 = 0u;
  v214 = v2;
  v213 = *(a1 + 16);
  v212 = *(a1 + 24);
  sub_26AF45C88(a1);
  v108 = ReactiveUIManager.currentState.getter();

  v206 = v108;
  v205 = 4;
  type metadata accessor for SUUIStatefulUIState(0);
  sub_26AE9BA40();
  if (sub_26B07A790())
  {
    sub_26AF45C88(a1);
    updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

    v105 = !updated;
  }

  else
  {
    v105 = 0;
  }

  if (v105)
  {
    sub_26AF45C88(a1);
    v103 = ReactiveUIManager.ddmDeclaration.getter();

    if (v103)
    {
      v101 = [v103 isValidDeclaration];
      MEMORY[0x277D82BD8](v103);
      v102 = v101;
    }

    else
    {
      v102 = 2;
    }

    if (v102 == 2)
    {
      v100 = 0;
    }

    else
    {
      v100 = v102;
    }

    v99 = v100;
  }

  else
  {
    v99 = 0;
  }

  if (v99)
  {
    v96 = sub_26AF4ED9C(a1);
    v97 = v3;
    v98 = v4;
    if (v5)
    {
      *&v126 = v96;
      *(&v126 + 1) = v3;
      LOBYTE(v127) = v4 & 1;
      *(&v127 + 1) = v5;
      v121[0] = v96;
      v121[1] = v3;
      v122 = v4 & 1;
      v123 = v5;
      v87 = MEMORY[0x277CE0BD8];
      sub_26AE9463C(v121, MEMORY[0x277CE0BD8], &v124);
      v81 = v124;
      v82 = v125;
      v83 = *(&v125 + 1);
      sub_26AE95D28(v124, *(&v124 + 1), v125 & 1);
      sub_26B078640();
      v116 = v81;
      v117 = v82 & 1;
      v118 = v83;
      sub_26AE94B4C(&v116, v87, &v119);
      sub_26AE95B40(&v116);
      v85 = v119;
      v84 = v120;
      v86 = *(&v120 + 1);
      sub_26AE95D28(v119, *(&v119 + 1), v120 & 1);
      sub_26B078640();
      v109 = v85;
      v110 = v84 & 1;
      v111 = v86;
      sub_26AF09CCC(&v109, v87, &v112);
      sub_26AF6BCAC(&v109);
      v88 = v112;
      v89 = v113;
      v90 = v114;
      v91 = v115;
      sub_26AF6BAA0(v112, v113, v114, v115);
      v148 = v88;
      v149 = v89;
      v150 = v90;
      v151 = v91;
      sub_26AE95B40(&v119);
      sub_26AE95B40(&v124);
      sub_26AE95AFC(v96, v97, v98 & 1);

      v92 = v88;
      v93 = v89;
      v94 = v90;
      v95 = v91;
    }

    else
    {
      memset(v143, 0, sizeof(v143));
      sub_26AF09CCC(v143, MEMORY[0x277CE0BD8], &v144);
      v77 = v144;
      v78 = v145;
      v79 = v146;
      v80 = v147;
      sub_26AF6BAA0(v144, v145, v146, v147);
      v148 = v77;
      v149 = v78;
      v150 = v79;
      v151 = v80;
      v92 = v77;
      v93 = v78;
      v94 = v79;
      v95 = v80;
    }

    v138[0] = v92;
    v138[1] = v93;
    v138[2] = v94;
    v138[3] = v95;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
    v65 = sub_26AF6B948();
    sub_26AE94B4C(v138, v64, &v139);
    sub_26AF6BCAC(v138);
    v60 = v139;
    v61 = v140;
    v62 = v141;
    v63 = v142;
    sub_26AF6BAA0(v139, v140, v141, v142);
    v130[0] = v60;
    v130[1] = v61;
    v130[2] = v62;
    v130[3] = v63;
    sub_26AE94BB0(v130, v64, v64, v65, v65, v131);
    sub_26AF6BCAC(v130);
    v128[0] = v131[0];
    v128[1] = v131[1];
    v128[2] = v131[2];
    v128[3] = v131[3];
    v129 = v132;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD158, &qword_26B08BF28);
    sub_26AF6B8A8();
    sub_26AF09CCC(v128, v66, &v133);
    sub_26AF6BB94(v128);
    v67 = v133;
    v68 = v134;
    v69 = v135;
    v70 = v136;
    v71 = v137;
    sub_26AF6B9DC(v133, v134, v135, v136, v137);
    v207 = v67;
    v208 = v68;
    v209 = v69;
    v210 = v70;
    v211 = v71;
    sub_26AF6BCAC(&v139);
    sub_26AF6BCAC(&v148);
    v72 = v67;
    v73 = v68;
    v74 = v69;
    v75 = v70;
    v76 = v71;
  }

  else
  {
    sub_26AF45C88(a1);
    v59 = ReactiveUIManager.currentState.getter();

    v204 = v59;
    v203 = 4;
    if (sub_26B07A790())
    {
      sub_26AF45C88(a1);
      v57 = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

      v58 = !v57;
    }

    else
    {
      v58 = 0;
    }

    if (v58)
    {
      sub_26AF45C88(a1);
      v56 = ReactiveUIManager.isDelayingUpdate()();

      if (v56)
      {
        v55 = 1;
      }

      else
      {
        sub_26AF45C88(a1);
        v54 = ReactiveUIManager.hasSUPathRestrictions()();

        v55 = v54;
      }

      if (v55)
      {
        sub_26B079D00("Your ProductFamilyName is showing the latest software update allowed by your administrator.", 91, 1);
        sub_26B078E10();
        v6 = sub_26B02D0D0();
        MEMORY[0x277D82BE0](*v6);
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 1;
        v167 = sub_26B0792C0();
        v168 = v7;
        v169 = v8;
        v170 = v9;
        v164[0] = v167;
        v164[1] = v7;
        v165 = v8 & 1;
        v166 = v9;
        v45 = MEMORY[0x277CE0BD8];
        sub_26AE9463C(v164, MEMORY[0x277CE0BD8], &v175);
        sub_26AE95B40(v164);
        v39 = v175;
        v40 = v176;
        v41 = *(&v176 + 1);
        sub_26AE95D28(v175, *(&v175 + 1), v176 & 1);
        sub_26B078640();
        v159 = v39;
        v160 = v40 & 1;
        v161 = v41;
        sub_26AE94B4C(&v159, v45, &v162);
        sub_26AE95B40(&v159);
        v43 = v162;
        v42 = v163;
        v44 = *(&v163 + 1);
        sub_26AE95D28(v162, *(&v162 + 1), v163 & 1);
        sub_26B078640();
        v152 = v43;
        v153 = v42 & 1;
        v154 = v44;
        sub_26AF09CCC(&v152, v45, &v155);
        sub_26AF6BCAC(&v152);
        v46 = v155;
        v47 = v156;
        v48 = v157;
        v49 = v158;
        sub_26AF6BAA0(v155, v156, v157, v158);
        v194 = v46;
        v195 = v47;
        v196 = v48;
        v197 = v49;
        sub_26AE95B40(&v162);
        sub_26AE95B40(&v175);
        v50 = v46;
        v51 = v47;
        v52 = v48;
        v53 = v49;
      }

      else
      {
        memset(v192, 0, sizeof(v192));
        sub_26AF09CCC(v192, MEMORY[0x277CE0BD8], v193);
        v35 = v193[0];
        v36 = v193[1];
        v37 = v193[2];
        v38 = v193[3];
        sub_26AF6BAA0(v193[0], v193[1], v193[2], v193[3]);
        v194 = v35;
        v195 = v36;
        v196 = v37;
        v197 = v38;
        v50 = v35;
        v51 = v36;
        v52 = v37;
        v53 = v38;
      }

      v187[0] = v50;
      v187[1] = v51;
      v187[2] = v52;
      v187[3] = v53;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
      v23 = sub_26AF6B948();
      sub_26AE94B4C(v187, v22, &v188);
      sub_26AF6BCAC(v187);
      v18 = v188;
      v19 = v189;
      v20 = v190;
      v21 = v191;
      sub_26AF6BAA0(v188, v189, v190, v191);
      v179[0] = v18;
      v179[1] = v19;
      v179[2] = v20;
      v179[3] = v21;
      sub_26AE94CA8(v179, v22, v22, v23, v23, v180);
      sub_26AF6BCAC(v179);
      v177[0] = v180[0];
      v177[1] = v180[1];
      v177[2] = v180[2];
      v177[3] = v180[3];
      v178 = v181;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD158, &qword_26B08BF28);
      sub_26AF6B8A8();
      sub_26AF09CCC(v177, v24, &v182);
      sub_26AF6BB94(v177);
      v25 = v182;
      v26 = v183;
      v27 = v184;
      v28 = v185;
      v29 = v186;
      sub_26AF6B9DC(v182, v183, v184, v185, v186);
      v207 = v25;
      v208 = v26;
      v209 = v27;
      v210 = v28;
      v211 = v29;
      sub_26AF6BCAC(&v188);
      sub_26AF6BCAC(&v194);
      v30 = v25;
      v31 = v26;
      v32 = v27;
      v33 = v28;
      v34 = v29;
    }

    else
    {
      memset(v200, 0, 32);
      v200[32] = -1;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD158, &qword_26B08BF28);
      sub_26AF6B8A8();
      sub_26AF09CCC(v200, v12, v201);
      v13 = v201[0];
      v14 = v201[1];
      v15 = v201[2];
      v16 = v201[3];
      v17 = v202;
      sub_26AF6B9DC(v201[0], v201[1], v201[2], v201[3], v202);
      v207 = v13;
      v208 = v14;
      v209 = v15;
      v210 = v16;
      v211 = v17;
      v30 = v13;
      v31 = v14;
      v32 = v15;
      v33 = v16;
      v34 = v17;
    }

    v72 = v30;
    v73 = v31;
    v74 = v32;
    v75 = v33;
    v76 = v34;
  }

  v198[0] = v72;
  v198[1] = v73;
  v198[2] = v74;
  v198[3] = v75;
  v199 = v76;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26AF6BAFC();
  sub_26AE94B4C(v198, v11, a2);
  sub_26AF6BB94(v198);
  return sub_26AF6BB94(&v207);
}

uint64_t sub_26AF4D99C(uint64_t a1)
{
  sub_26AF45C88(a1);
  ReactiveUIManager.currentState.getter();

  type metadata accessor for SUUIStatefulUIState(0);
  sub_26AE9BA40();
  if (sub_26B07A790())
  {
    sub_26AF45C88(a1);
    updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

    v6 = !updated;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v4 = sub_26AF46C5C(a1);
  }

  else
  {
    sub_26AF45C88(a1);
    ReactiveUIManager.currentState.getter();

    if (sub_26B07A790())
    {
      v1 = sub_26AF4690C(a1);
      v3 = !sub_26AF579C0(v1, 1);
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      sub_26AF45C88(a1);
      ReactiveUIManager.currentState.getter();

      sub_26AEB6FE0();
      v4 = sub_26B079D30();
    }
  }

  return v4 & 1;
}

uint64_t sub_26AF4DBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v17 = a1;
  v8[1] = 0;
  v11 = MEMORY[0x277CE14C0];
  v16 = sub_26AF6BD04;
  v19 = MEMORY[0x277CE0FB0];
  v24 = MEMORY[0x277CDFAD8];
  v48 = 0;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  v28 = *(v17 + 24);
  v49 = v28;
  v8[2] = 255;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = sub_26B079BB0();
  v10 = 0;
  v31 = sub_26B079810();
  v9 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](255);
  v21 = v8 - v9;
  v32 = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  v33 = sub_26B078BF0();
  v13 = *(*(v33 - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v27 = (v8 - v12);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v34 = (v8 - v14);
  v48 = v8 - v14;
  v47 = v2;
  v46 = v4[2];
  v15 = &v35;
  v36 = v46;
  v37 = v28;
  v38 = v4[4];
  v39 = v4[5];
  v40 = v2;
  WitnessTable = swift_getWitnessTable();
  sub_26B079800();
  v20 = sub_26AF4D99C(v17);
  v45 = WitnessTable;
  v22 = swift_getWitnessTable();
  v5 = sub_26AF4DBD4();
  View.visibilityTransition(when:duration:)(v20 & 1, v31, v22, v27, v5);
  sub_26AF6BD2C(v21, v28, TupleTypeMetadata2);
  v43 = v22;
  v44 = MEMORY[0x277CDF900];
  v23 = swift_getWitnessTable();
  v6 = sub_26AF6B6FC();
  v41 = v23;
  v42 = v6;
  v26 = swift_getWitnessTable();
  sub_26AE9463C(v27, v33, v34);
  sub_26AF6C1F0(v27, v28, TupleTypeMetadata2);
  sub_26AF6C6CC(v34, v27, v28, TupleTypeMetadata2, v30, v31, v32, v33);
  sub_26AE94B4C(v27, v33, v25);
  sub_26AF6C1F0(v27, v28, TupleTypeMetadata2);
  return sub_26AF6C1F0(v34, v28, TupleTypeMetadata2);
}

uint64_t sub_26AF4E05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v34 = a1;
  v22 = a2;
  v46 = a3;
  v23 = a4;
  v41 = a5;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v61 = a2;
  v60 = a3;
  v37 = *(a3 - 8);
  v38 = a3 - 8;
  v18 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v44 = &v17 - v18;
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v18);
  v49 = &v17 - v19;
  v59 = &v17 - v19;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E0, &qword_26B08BF98);
  v20 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v30 = &v17 - v20;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E8, &qword_26B08BFA0);
  v21 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v32 = &v17 - v21;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0E8, &qword_26B08BEC8);
  v25 = *(*(v39 - 8) + 64);
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v45 = (&v17 - v24);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v24);
  v50 = (&v17 - v26);
  v58 = &v17 - v26;
  v57 = a1;
  v56[0] = v8;
  v56[1] = v9;
  v56[2] = v10;
  v56[3] = v11;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v56);
  sub_26AF4E598(updated, v30);
  v12 = sub_26AF4690C(updated);
  v29 = &v55;
  v55 = v12;
  v28 = sub_26AF6E628();
  sub_26AF7B370();
  sub_26B0795B0();
  sub_26AF6D160(v30);
  v13 = sub_26AF89420();
  View.fadeTransition()(v31, v13);
  sub_26AF894A8(v32);
  v40 = sub_26AF89924();
  sub_26AE9463C(v45, v39, v50);
  sub_26AF899CC(v45);
  v14 = v34 + *(updated + 96);
  v35 = *v14;
  v36 = *(v14 + 8);

  v35(v15);
  sub_26AE9463C(v44, v46, v49);
  v48 = *(v37 + 8);
  v47 = v37 + 8;
  v48(v44, v46);

  sub_26AF89E48(v50, v45);
  v43 = v54;
  v54[0] = v45;
  (*(v37 + 16))(v44, v49, v46);
  v54[1] = v44;
  v53[0] = v39;
  v53[1] = v46;
  v51 = v40;
  v52 = v41;
  sub_26AFD49C4(v43, 2uLL, v53, v42);
  v48(v44, v46);
  sub_26AF899CC(v45);
  v48(v49, v46);
  return sub_26AF899CC(v50);
}

uint64_t sub_26AF4E598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v17 = a2;
  v45 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
  v19 = *(v18 - 8);
  v20 = v19;
  v22 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v14 - v24;
  MEMORY[0x28223BE20](v14 - v24);
  v23 = v14 - v24;
  MEMORY[0x28223BE20](v3);
  v25 = v14 - v24;
  v57 = v14 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  v27 = *(v26 - 8);
  v28 = v27;
  v30 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v14 - v32;
  MEMORY[0x28223BE20](v14 - v32);
  v31 = (v14 - v32);
  MEMORY[0x28223BE20](v4);
  v33 = (v14 - v32);
  v56 = v14 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E0, &qword_26B08BF98);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = (v14 - v39);
  MEMORY[0x28223BE20](v5);
  v38 = (v14 - v39);
  MEMORY[0x28223BE20](v6);
  v40 = (v14 - v39);
  v55 = v14 - v39;
  v54 = v2;
  v41 = *(v7 + 16);
  v53 = v41;
  v42 = *(v7 + 24);
  v52 = v42;
  v43 = sub_26AF45C88(v7);
  v44 = ReactiveUIManager.currentState.getter();

  v51 = v44;
  v50 = 4;
  v46 = type metadata accessor for SUUIStatefulUIState(v45);
  sub_26AE9BA40();
  if (sub_26B07A790())
  {
    v14[8] = sub_26AF45C88(v34);
    v15 = ReactiveUIManager.preferredDescriptor.getter();
    if (v15)
    {
      v14[7] = v15;
      v14[5] = v15;
      v48 = v15;

      v14[4] = v14;
      MEMORY[0x28223BE20](v14);
      v8 = v34;
      v9 = v16;
      v14[1] = &v14[-8];
      v14[-6] = v10;
      v14[-5] = v11;
      v14[-4] = *(v8 + 32);
      v14[-3] = *(v8 + 40);
      v14[-2] = v9;
      v14[-1] = v12;
      v14[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD208, qword_26B08BFA8);
      v14[3] = sub_26AF6F9E0();
      sub_26AF5C6C0();
      sub_26B0799A0();

      v14[6] = sub_26AF6D0D8();
      sub_26AE9463C(v23, v18, v25);
      sub_26AF6FEDC(v23);
      v47 = v23;
      sub_26AF702EC(v25, v21);
      sub_26AE94B4C(v21, v18, v23);
      sub_26AF6FEDC(v21);
      sub_26AF702EC(v23, v29);
      (*(v20 + 56))(v29, 0, 1, v18);
      sub_26AF09CCC(v29, v18, v31);
      sub_26AF6E6C0(v29);
      sub_26AF6EAE8(v31, v33);
      sub_26AF6FEDC(v23);
      sub_26AF6FEDC(v25);
    }

    else
    {

      (*(v20 + 56))(v29, 1, 1, v18);
      sub_26AF6D0D8();
      sub_26AF09CCC(v29, v18, v31);
      sub_26AF6E6C0(v29);
      sub_26AF6EAE8(v31, v33);
    }

    v49 = v31;
    sub_26AF6F1EC(v33, v29);
    v14[0] = sub_26AF6D040();
    sub_26AE94B4C(v29, v26, v31);
    sub_26AF6E6C0(v29);
    sub_26AF6F1EC(v31, v36);
    (*(v28 + 56))(v36, 0, 1, v26);
    sub_26AF09CCC(v36, v26, v38);
    sub_26AF6D160(v36);
    sub_26AF6D5DC(v38, v40);
    sub_26AF6E6C0(v31);
    sub_26AF6E6C0(v33);
  }

  else
  {
    (*(v28 + 56))(v36, 1, 1, v26);
    sub_26AF6D040();
    sub_26AF09CCC(v36, v26, v38);
    sub_26AF6D160(v36);
    sub_26AF6D5DC(v38, v40);
  }

  sub_26AF6DDA0(v40, v38);
  sub_26AF6E628();
  sub_26AE94B4C(v38, v35, v17);
  sub_26AF6D160(v38);
  return sub_26AF6D160(v40);
}

uint64_t sub_26AF4ED9C(uint64_t a1)
{
  v236 = a1;
  v196 = "1st parameter is the OS version, 2nd parameter is the OS build version";
  v197 = "1st parameter is the OS version, 2nd parameter is a date, 3rd & 4th a url";
  v198 = "1st parameter is the OS version, 2nd parameter is a date";
  v291 = 0;
  v290 = 0;
  v286 = 0;
  v287 = 0;
  v284 = 0;
  v285 = 0;
  v280 = 0;
  v281 = 0;
  v278 = 0;
  v279 = 0;
  v269 = 0;
  v270 = 0;
  v260 = 0;
  v261 = 0;
  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  v249 = 0;
  v231 = 0;
  v199 = sub_26B078E00();
  v200 = *(v199 - 8);
  v201 = v199 - 8;
  v202 = (*(v200 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v203 = v51 - v202;
  v204 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v205 = v51 - v204;
  v206 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v207 = v51 - v206;
  v208 = sub_26B0781F0();
  v209 = *(v208 - 8);
  v210 = v208 - 8;
  v211 = (*(v209 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231);
  v212 = v51 - v211;
  v213 = sub_26B078210();
  v214 = *(v213 - 8);
  v215 = v213 - 8;
  v216 = (*(v214 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231);
  v217 = v51 - v216;
  v218 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231);
  v219 = v51 - v218;
  v220 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231);
  v221 = v51 - v220;
  v222 = sub_26B079DC0();
  v223 = *(v222 - 8);
  v224 = v222 - 8;
  v225 = (*(v223 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v222);
  v226 = v51 - v225;
  v227 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51 - v225);
  v228 = v51 - v227;
  v229 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51 - v227);
  v230 = v51 - v229;
  v232 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260, &qword_26B089A70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231);
  v233 = v51 - v232;
  v234 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v235 = v51 - v234;
  v237 = sub_26B0782A0();
  v238 = *(v237 - 8);
  v239 = v237 - 8;
  v240 = (*(v238 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v236);
  v241 = v51 - v240;
  v242 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v243 = v51 - v242;
  v291 = v51 - v242;
  v290 = v1;
  v289 = *(v12 + 16);
  v288 = *(v12 + 24);
  v244 = sub_26AF45C88(v12);
  v245 = ReactiveUIManager.ddmDeclaration.getter();

  if (v245)
  {
    v195 = v245;
    v193 = v245;
    v194 = [v245 versionString];
    if (v194)
    {
      v192 = v194;
      v187 = v194;
      v188 = sub_26B079E00();
      v189 = v13;
      MEMORY[0x277D82BD8](v187);
      v190 = v188;
      v191 = v189;
    }

    else
    {
      v190 = 0;
      v191 = 0;
    }

    v184 = v191;
    v183 = v190;
    MEMORY[0x277D82BD8](v193);
    v185 = v183;
    v186 = v184;
  }

  else
  {
    v185 = 0;
    v186 = 0;
  }

  v179 = v186;
  v180 = v185;
  v286 = v185;
  v287 = v186;
  v181 = sub_26AF45C88(v236);
  v182 = ReactiveUIManager.ddmDeclaration.getter();

  if (v182)
  {
    v178 = v182;
    v176 = v182;
    v177 = [v182 buildVersionString];
    if (v177)
    {
      v175 = v177;
      v170 = v177;
      v171 = sub_26B079E00();
      v172 = v14;
      MEMORY[0x277D82BD8](v170);
      v173 = v171;
      v174 = v172;
    }

    else
    {
      v173 = 0;
      v174 = 0;
    }

    v167 = v174;
    v166 = v173;
    MEMORY[0x277D82BD8](v176);
    v168 = v166;
    v169 = v167;
  }

  else
  {
    v168 = 0;
    v169 = 0;
  }

  v162 = v169;
  v163 = v168;
  v284 = v168;
  v285 = v169;
  v164 = sub_26AF45C88(v236);
  v165 = ReactiveUIManager.ddmDeclaration.getter();

  if (v165)
  {
    v161 = v165;
    v159 = v165;
    v160 = [v165 enforcedInstallDate];
    if (v160)
    {
      v158 = v160;
      v157 = v160;
      sub_26B078250();
      (*(v238 + 32))(v233, v241, v237);
      (*(v238 + 56))(v233, 0, 1, v237);
      MEMORY[0x277D82BD8](v157);
    }

    else
    {
      (*(v238 + 56))(v233, 1, 1, v237);
    }

    sub_26AEEE5DC(v233, v235);
    v15 = MEMORY[0x277D82BD8](v159);
  }

  else
  {
    (*(v238 + 56))(v235, 1, 1, v237);
  }

  if ((*(v238 + 48))(v235, 1, v237, v15) == 1)
  {
    sub_26AEEE704(v235);

    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    return v80;
  }

  (*(v238 + 32))(v243, v235, v237);
  v282 = 0;
  v283 = 0;
  v155 = sub_26AF45C88(v236);
  v156 = ReactiveUIManager.currentDownload.getter();

  if (v156)
  {
    v154 = v156;
    v150 = v156;
    KeyPath = swift_getKeyPath();
    ReactiveDownload.subscript.getter(KeyPath, v246);
    v152 = v246[0];

    v153 = v152;
  }

  else
  {
    v153 = 0;
  }

  v149 = v153;
  if (v153)
  {
    v148 = v149;
    v147 = v149;
    v249 = v149;
    v138 = 2;
    sub_26B079DB0();
    v145 = 0;
    v143 = 1;
    sub_26B079D00("");
    v134 = v16;
    sub_26B079DA0();

    swift_getObjectType();
    swift_unknownObjectRetain();
    v137 = [v147 productVersion];
    v135 = sub_26B079E00();
    v136 = v17;
    swift_unknownObjectRelease();
    sub_26B079D90();

    *&v18 = MEMORY[0x277D82BD8](v137).n128_u64[0];
    sub_26B079D00(" (", v138, v143 & 1, v18);
    v139 = v19;
    sub_26B079DA0();

    swift_getObjectType();
    swift_unknownObjectRetain();
    v142 = [v147 productBuildVersion];
    v140 = sub_26B079E00();
    v141 = v20;
    swift_unknownObjectRelease();
    sub_26B079D90();

    *&v21 = MEMORY[0x277D82BD8](v142).n128_u64[0];
    sub_26B079D00(")", 1, v143 & 1, v21);
    v144 = v22;
    sub_26B079DA0();

    (*(v223 + 16))(v228, v230, v222);
    (*(v223 + 32))(v226, v228, v222);
    (*(v223 + 8))(v230, v222);
    sub_26B079DD0();
    v146 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v146);
    sub_26AEFB5C4();
    v246[1] = v196;
    v246[2] = 70;
    v247 = 2;
    v248 = 0;
    v282 = sub_26B079E40();
    v283 = v23;

    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  sub_26B078640();
  if (!v179)
  {
LABEL_28:
    sub_26B078640();
    if (v179)
    {
      v117 = v180;
      v118 = v179;
      v116 = v179;
      v115 = v180;
      v258 = v180;
      v259 = v179;
      sub_26B078640();
      v282 = v115;
      v283 = v116;
    }

    else
    {
      sub_26B078640();
      if (v162)
      {
        v113 = v163;
        v114 = v162;
        v112 = v162;
        v111 = v163;
        v260 = v163;
        v261 = v162;
        sub_26B078640();
        v282 = v111;
        v283 = v112;
      }
    }

    goto LABEL_32;
  }

  v132 = v180;
  v133 = v179;
  v130 = v179;
  v131 = v180;
  v256 = v180;
  v257 = v179;
  sub_26B078640();
  if (!v162)
  {

    goto LABEL_28;
  }

  v128 = v163;
  v129 = v162;
  v127 = v162;
  v122 = v163;
  v254 = v163;
  v255 = v162;
  v120 = 2;
  sub_26B079DB0();
  v125 = 0;
  v123 = 1;
  sub_26B079D00("");
  v119 = v24;
  sub_26B079DA0();

  sub_26B079D90();
  sub_26B079D00(" (", v120, v123 & 1);
  v121 = v25;
  sub_26B079DA0();

  sub_26B079D90();
  sub_26B079D00(")", 1, v123 & 1);
  v124 = v26;
  sub_26B079DA0();

  (*(v223 + 16))(v228, v230, v222);
  (*(v223 + 32))(v226, v228, v222);
  (*(v223 + 8))(v230, v222);
  sub_26B079DD0();
  v126 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v126);
  sub_26AEFB5C4();
  v250 = v196;
  v251 = 70;
  v252 = 2;
  v253 = 0;
  v282 = sub_26B079E40();
  v283 = v27;

LABEL_32:
  v109 = v282;
  v110 = v283;
  sub_26B078640();
  if (v110)
  {
    v107 = v109;
    v108 = v110;
    v101 = v110;
    v102 = v109;
    v280 = v109;
    v281 = v110;
    sub_26B0781E0();
    sub_26B0781E0();
    v103 = sub_26B078280();
    v104 = v28;
    (*(v209 + 8))(v212, v208);
    (*(v214 + 8))(v217, v213);
    v278 = v103;
    v279 = v104;
    v105 = sub_26AF45C88(v236);
    v106 = ReactiveUIManager.ddmDeclaration.getter();

    if (v106)
    {
      v100 = v106;
      v98 = v106;
      v99 = [v106 detailsURL];
      if (v99)
      {
        v97 = v99;
        v92 = v99;
        v93 = sub_26B079E00();
        v94 = v29;
        MEMORY[0x277D82BD8](v92);
        v95 = v93;
        v96 = v94;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v89 = v96;
      v88 = v95;
      MEMORY[0x277D82BD8](v98);
      v90 = v88;
      v91 = v89;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v86 = v91;
    v87 = v90;
    if (v91)
    {
      v84 = v87;
      v85 = v86;
      v75 = v86;
      v67 = v87;
      v269 = v87;
      v270 = v86;
      sub_26B078DF0();
      v68 = 1;
      sub_26B079D00("Your organization has decided to update your device to OSName ", 62, 1);
      v63 = v30;
      sub_26B078DE0();

      sub_26B078DD0();
      sub_26B079D00(". You can choose to update now or it will update automatically on ", 66, v68 & 1);
      v64 = v31;
      sub_26B078DE0();

      sub_26B078DD0();
      sub_26B079D00(". Organization Help URL: [", 26, v68 & 1);
      v65 = v32;
      sub_26B078DE0();

      sub_26B078DD0();
      sub_26B079D00("](", 2, v68 & 1);
      v66 = v33;
      sub_26B078DE0();

      sub_26B078DD0();
      sub_26B079D00(")", 1, v68 & 1);
      v69 = v34;
      sub_26B078DE0();

      (*(v200 + 16))(v205, v207, v199);
      (*(v200 + 32))(v203, v205, v199);
      (*(v200 + 8))(v207, v199);
      v74 = sub_26B078E20();
      v70 = v35;
      v71 = v36;
      v72 = v37;
      v73 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v73);
      v266 = v197;
      v267 = 73;
      v268 = 2;
      v262 = sub_26B0792C0();
      v263 = v38;
      v264 = v39;
      v265 = v40;
      v76 = v262;
      v77 = v38;
      v79 = v40;
      v78 = v39 & 1;

      sub_26AF01944(&v282);
      (*(v238 + 8))(v243, v237);

      v80 = v76;
      v81 = v77;
      v82 = v78;
      v83 = v79;
    }

    else
    {
      sub_26B078DF0();
      v52 = 1;
      sub_26B079D00("Your organization has decided to update your device to OSName ", 62, 1);
      v51[0] = v41;
      sub_26B078DE0();

      sub_26B078DD0();
      sub_26B079D00(". You can choose to update now or it will update automatically on ", 66, v52 & 1);
      v51[1] = v42;
      sub_26B078DE0();

      sub_26B078DD0();
      sub_26B079D00(".", 1, v52 & 1);
      v53 = v43;
      sub_26B078DE0();

      (*(v200 + 16))(v205, v207, v199);
      (*(v200 + 32))(v203, v205, v199);
      (*(v200 + 8))(v207, v199);
      v58 = sub_26B078E20();
      v54 = v44;
      v55 = v45;
      v56 = v46;
      v57 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v57);
      v275 = v198;
      v276 = 56;
      v277 = 2;
      v271 = sub_26B0792C0();
      v272 = v47;
      v273 = v48;
      v274 = v49;
      v59 = v271;
      v60 = v47;
      v62 = v49;
      v61 = v48 & 1;

      sub_26AF01944(&v282);
      (*(v238 + 8))(v243, v237);

      v80 = v59;
      v81 = v60;
      v82 = v61;
      v83 = v62;
    }
  }

  else
  {
    sub_26AF01944(&v282);
    (*(v238 + 8))(v243, v237);

    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
  }

  return v80;
}

uint64_t sub_26AF506DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v127 = a7;
  v64 = a1;
  v106 = a2;
  v109 = a3;
  v110 = a4;
  v111 = a5;
  v112 = a6;
  v97 = 0;
  v39 = MEMORY[0x277CE14C0];
  v31 = MEMORY[0x277CDE580];
  v41 = MEMORY[0x277CE1198];
  v46 = MEMORY[0x277CDFAD8];
  v44 = MEMORY[0x277CDE800];
  v48 = MEMORY[0x277CDEB28];
  v123 = MEMORY[0x277CDDB50];
  v57 = sub_26AF8C3E4;
  v96 = sub_26AF529C8;
  v116 = sub_26AF8E618;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v168[5] = a3;
  v168[4] = a4;
  v168[0] = a3;
  v168[1] = a4;
  v168[2] = a5;
  v168[3] = a6;
  v83 = 0;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v168);
  v25 = *(updated - 1);
  v107 = v25;
  v108 = *(v25 + 64);
  v26 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v115 = &v25 - v26;
  v68 = sub_26B078FF0();
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v27 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v67 = &v25 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v38 = 255;
  v28 = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  v30 = sub_26B079BB0();
  swift_getWitnessTable();
  v32 = sub_26B079250();
  swift_getWitnessTable();
  v33 = sub_26B079990();
  v34 = sub_26B078BF0();
  WitnessTable = swift_getWitnessTable();
  v167 = MEMORY[0x277CDFC48];
  v8 = swift_getWitnessTable();
  v164 = v34;
  v165 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = MEMORY[0x277CDF910];
  v78 = sub_26B078BF0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  v79 = sub_26B078BF0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E0, &qword_26B08BEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = sub_26B079BB0();
  v82 = sub_26B079810();
  v69 = sub_26B078BF0();
  v70 = sub_26B078BF0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v72 = sub_26B079BB0();
  v59 = swift_getWitnessTable();
  v74 = sub_26B079990();
  v40 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v61 = &v25 - v40;
  v75 = sub_26B078BF0();
  v42 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v76 = &v25 - v42;
  v60 = swift_getWitnessTable();
  v9 = sub_26AF0633C();
  v162 = v60;
  v163 = v9;
  v63 = swift_getWitnessTable();
  v160 = v75;
  v161 = v63;
  v92 = swift_getOpaqueTypeMetadata2();
  v87 = *(v92 - 8);
  v88 = v92 - 8;
  v43 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v89 = &v25 - v43;
  v93 = sub_26B078BF0();
  v45 = (*(*(v93 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93);
  v91 = &v25 - v45;
  v158 = v75;
  v159 = v10;
  v49 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v156 = OpaqueTypeConformance2;
  v157 = MEMORY[0x277CDFC60];
  v90 = swift_getWitnessTable();
  v154 = v93;
  v155 = v90;
  v131 = swift_getOpaqueTypeMetadata2();
  v101 = *(v131 - 8);
  v102 = v131 - 8;
  v47 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131);
  v103 = &v25 - v47;
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCF10, qword_26B08BA48);
  v100 = sub_26AF6863C();
  v152 = v93;
  v153 = v90;
  v99 = swift_getOpaqueTypeConformance2();
  v148 = v98;
  v149 = v131;
  v150 = v100;
  v151 = v99;
  v132 = sub_26B078C20();
  v50 = (*(*(v132 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v132);
  v122 = &v25 - v50;
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0B0, &unk_26B08BE90);
  v119 = sub_26AEDE278();
  v118 = swift_getWitnessTable();
  v144 = v117;
  v145 = v132;
  v146 = v119;
  v147 = v118;
  v133 = sub_26B078C20();
  v52 = *(*(v133 - 8) + 64);
  v51 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133);
  v129 = &v25 - v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v134 = &v25 - v53;
  v143 = &v25 - v53;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0A8, &qword_26B08BE88);
  v55 = *(*(v124 - 8) + 64);
  v54 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v130 = &v25 - v54;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v135 = &v25 - v56;
  v142 = &v25 - v56;
  v141 = v64;
  v140 = a2;
  sub_26AF5163C(v13, v14);
  v125 = sub_26AF70F88();
  sub_26AE9463C(v130, v124, v135);
  sub_26AF71010(v130);
  v58 = v136;
  v136[2] = v109;
  v136[3] = v110;
  v136[4] = v111;
  v136[5] = v112;
  v136[6] = v106;
  sub_26AF4D96C();
  v85 = 0;
  sub_26B079980();
  View.fadeTransition()(v74, v60);
  v73 = sub_26B078B10();
  sub_26AF8C40C(v61, OpaqueTypeMetadata2, v78, v79, v110, TupleTypeMetadata2, v81, v82, v69, v70, TupleTypeMetadata3, v72, v73);
  v62 = sub_26B079180();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v62, 0x4024000000000000, v85, v67, v75, v63);
  (*(v65 + 8))(v67, v68);
  sub_26AF8D318(v76, OpaqueTypeMetadata2, v78, v79, v110, TupleTypeMetadata2, v81, v82, v69, v70, TupleTypeMetadata3, v72, v73);
  sub_26B078AE0();
  v84 = v15;
  sub_26AEAABD4();
  sub_26B079600();
  (*(v87 + 8))(v89, v92);
  sub_26B079550();
  sub_26AF8E224(v91, v92);
  v94 = sub_26AF45C88(updated);
  v95 = *(v94 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_refreshPublisher);

  v139[1] = v95;
  sub_26B079720();

  (*(v101 + 8))(v103, v131);
  v104 = sub_26AF45C88(updated);
  v105 = *(v104 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_stateChangedPublisher);

  v120 = v139;
  v139[0] = v105;
  sub_26AEF6558(v106, v115, updated);
  v113 = (*(v107 + 80) + 48) & ~*(v107 + 80);
  v16 = swift_allocObject();
  v17 = v110;
  v18 = v111;
  v19 = v112;
  v20 = v113;
  v21 = updated;
  v22 = v16;
  v23 = v115;
  v121 = v22;
  v22[2] = v109;
  v22[3] = v17;
  v22[4] = v18;
  v22[5] = v19;
  sub_26AF68AA4(v23, v22 + v20, v21);
  sub_26B079720();

  sub_26AF8E6DC(v122, v131);
  v126 = swift_getWitnessTable();
  sub_26AE9463C(v129, v133, v134);
  sub_26AF8E758(v129, v131);
  sub_26AF710B4(v135, v130);
  v128 = v138;
  v138[0] = v130;
  sub_26AF8E804(v134, v129, v131, v132, v133);
  v138[1] = v129;
  v137[0] = v124;
  v137[1] = v133;
  v136[8] = v125;
  v136[9] = v126;
  sub_26AFD49C4(v128, 2uLL, v137, v127);
  sub_26AF8E758(v129, v131);
  sub_26AF71010(v130);
  sub_26AF8E758(v134, v131);
  return sub_26AF71010(v135);
}

uint64_t sub_26AF5163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v34 = a1;
  v67 = 0;
  v66 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD268, &qword_26B08BFF0);
  v12 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v42 = &v11 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0A8, &qword_26B08BE88);
  v13 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v46 = &v11 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v47 = &v11 - v14;
  v67 = &v11 - v14;
  v66 = v2;
  v65[12] = *(v6 + 16);
  v65[11] = *(v6 + 24);
  v37 = 0;
  v31 = 1;
  sub_26B079D00("", v5);
  sub_26B078E10();
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = v31 & 1;
  v55 = sub_26B0792C0();
  v56 = v7;
  v57 = v8;
  v58 = v9;
  v17 = v52;
  v52[0] = v55;
  v52[1] = v7;
  v53 = v8 & 1 & v31;
  v54 = v9;
  v15 = MEMORY[0x277CE0BD8];
  v16 = MEMORY[0x277CE0BC8];
  sub_26AEC96D4();
  v18 = &v63;
  v21 = 0;
  sub_26B0795F0();
  sub_26AE95B40(v17);
  v19 = v68;
  v20 = 80;
  memcpy(v68, v18, sizeof(v68));
  v23 = v51;
  memcpy(v51, v68, sizeof(v51));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD270, &qword_26B08BFF8);
  sub_26AF70A80();
  v24 = &v64;
  sub_26B079500();
  sub_26AF70B20(v23);
  v25 = __dst;
  v30 = 81;
  memcpy(__dst, v24, 0x51uLL);
  v27 = v50;
  memcpy(v50, __dst, 0x51uLL);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD280, &qword_26B08C000);
  sub_26AF70B68();
  v28 = v65;
  sub_26B079630();
  sub_26AF70C0C(v27);
  v29 = v70;
  memcpy(v70, v28, v30);
  v33 = v49;
  memcpy(v49, v29, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD290, &qword_26B08C008);
  sub_26AF70C54();
  sub_26B079470();
  sub_26AF70D74(v33);
  v35 = sub_26AF45C88(v34);
  v36 = ReactiveUIManager.currentState.getter();

  v41 = &v48;
  v48 = v36;
  v39 = type metadata accessor for SUUIStatefulUIState(v37);
  v40 = sub_26AF70DBC();
  sub_26AF70E64();
  sub_26B0795B0();
  sub_26AF70EE4(v42);
  v45 = sub_26AF70F88();
  sub_26AE9463C(v46, v44, v47);
  sub_26AF71010(v46);
  sub_26AF710B4(v47, v46);
  sub_26AE94B4C(v46, v44, v43);
  sub_26AF71010(v46);
  return sub_26AF71010(v47);
}

void sub_26AF51ABC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a6;
  v41 = a1;
  v32 = a2;
  v57 = a3;
  v33 = a4;
  v34 = a5;
  v20 = 0;
  v43 = MEMORY[0x277CE14C0];
  v23 = MEMORY[0x277CDE580];
  v26 = MEMORY[0x277CE1198];
  v47 = MEMORY[0x277CDFAD8];
  v39 = MEMORY[0x277CDE800];
  v44 = MEMORY[0x277CE0FB0];
  v82 = 0;
  v81 = 0;
  v76 = 0;
  v75 = 0;
  v84 = a2;
  v83 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  v28 = 255;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_26B079BB0();
  v60 = sub_26B079810();
  v27 = MEMORY[0x277CDF910];
  v61 = sub_26B078BF0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  v35 = 0;
  v62 = sub_26B078BF0();
  v15 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v54 = (&v14 - v15);
  v16 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v15);
  v63 = (&v14 - v16);
  v82 = &v14 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0E0, &qword_26B08BEC0);
  v17 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v55 = (&v14 - v17);
  v18 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v17);
  v64 = (&v14 - v18);
  v81 = &v14 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v19 = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  v22 = sub_26B079BB0();
  swift_getWitnessTable();
  v24 = sub_26B079250();
  swift_getWitnessTable();
  v25 = sub_26B079990();
  v37 = sub_26B078BF0();
  WitnessTable = swift_getWitnessTable();
  v80 = MEMORY[0x277CDFC48];
  v38 = swift_getWitnessTable();
  v77 = v37;
  v78 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = sub_26B078BF0();
  v67 = sub_26B078BF0();
  v31 = *(*(v67 - 8) + 64);
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v56 = &v14 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  v36 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v68 = &v14 - v36;
  v76 = &v14 - v36;
  v75 = a1;
  v74[0] = v9;
  v74[1] = v10;
  v74[2] = v11;
  v74[3] = v12;
  updated = type metadata accessor for SoftwareUpdateContentView(v13, v74);
  SoftwareUpdateContentView.headerView.getter(updated, v56);
  v73[12] = v37;
  v73[13] = v38;
  v73[10] = swift_getOpaqueTypeConformance2();
  v45 = MEMORY[0x277CDF900];
  v73[11] = MEMORY[0x277CDF900];
  v40 = swift_getWitnessTable();
  v46 = sub_26AF6B6FC();
  v73[8] = v40;
  v73[9] = v46;
  v49 = swift_getWitnessTable();
  sub_26AE9463C(v56, v67, v68);
  sub_26AF6B784(v56, OpaqueTypeMetadata2);
  sub_26AF5228C(updated, v55);
  v50 = sub_26AF7411C();
  sub_26AE9463C(v55, v48, v64);
  sub_26AF7423C(v55);
  sub_26AF4DBF8(updated, v54);
  v73[7] = swift_getWitnessTable();
  v73[5] = swift_getWitnessTable();
  v73[6] = v45;
  v73[3] = swift_getWitnessTable();
  v73[4] = v46;
  v51 = swift_getWitnessTable();
  sub_26AE9463C(v54, v62, v63);
  sub_26AF6C1F0(v54, v57, TupleTypeMetadata2);
  sub_26AF6B7E8(v68, v56, OpaqueTypeMetadata2, v66, v67);
  v53 = v73;
  v73[0] = v56;
  sub_26AF74A7C(v64, v55);
  v73[1] = v55;
  sub_26AF6C6CC(v63, v54, v57, TupleTypeMetadata2, v59, v60, v61, v62);
  v73[2] = v54;
  v72[0] = v67;
  v72[1] = v48;
  v72[2] = v62;
  v69 = v49;
  v70 = v50;
  v71 = v51;
  sub_26AFD49C4(v53, 3uLL, v72, v52);
  sub_26AF6C1F0(v54, v57, TupleTypeMetadata2);
  sub_26AF7423C(v55);
  sub_26AF6B784(v56, OpaqueTypeMetadata2);
  sub_26AF6C1F0(v63, v57, TupleTypeMetadata2);
  sub_26AF7423C(v64);
  sub_26AF6B784(v68, OpaqueTypeMetadata2);
}

uint64_t sub_26AF5228C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v56 = a1;
  v43 = sub_26AF71204;
  v77 = 0;
  v76 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2C0, &qword_26B08C010);
  v26 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v47 = v21 - v26;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2C8, &qword_26B08C018);
  v27 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v55 = v21 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D0, &qword_26B08C020);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v51 = v21 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D8, &qword_26B08C028);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v32 = v21 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0E0, &qword_26B08BEC0);
  v37 = *(*(v33 - 8) + 64);
  v34 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v35 = (v21 - v34);
  v36 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v38 = v21 - v36;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v40 = (v21 - v39);
  v77 = v21 - v39;
  v76 = v4;
  v75 = v5[2];
  v74 = v5[3];
  v41 = &v62;
  v63 = v75;
  v64 = v74;
  v65 = v5[4];
  v66 = v5[5];
  v67 = v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2E0, &qword_26B08C030);
  sub_26AF7122C();
  sub_26B079800();
  v45 = sub_26AF71DDC();
  v6 = sub_26AEAABD4();
  v46 = &v13;
  v50 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 0x7FF0000000000000;
  v16 = 0;
  v17 = v6;
  v18 = v7;
  v19 = v44;
  v20 = v45;
  sub_26B079600();
  sub_26AF71E74(v47);
  v48 = sub_26AF45C88(v56);
  v49 = ReactiveUIManager.currentState.getter();

  v54 = &v73;
  v73 = v49;
  v60 = type metadata accessor for SUUIStatefulUIState(v50);
  v53 = sub_26AF7273C();
  sub_26AF70E64();
  sub_26B0795B0();
  sub_26AF727E0(v55);
  v57 = sub_26AF45C88(v56);
  v58 = ReactiveUIManager.currentState.getter();

  v61 = &v72;
  v72 = v58;
  v59 = &v71;
  v71 = 4;
  sub_26AE9AD9C();
  if (sub_26B079D70())
  {
    v24 = sub_26B079780();
  }

  else
  {
    v8 = [objc_opt_self() systemGroupedBackgroundColor];
    v24 = sub_26B079750();
  }

  v21[4] = &v70;
  v70 = v24;
  v21[2] = sub_26AF72FD8();
  v21[1] = MEMORY[0x277CE0F78];
  v21[3] = MEMORY[0x277CE0F60];
  sub_26AEF8488(v28, MEMORY[0x277CE0F78]);
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AF73060(v51);
  v9 = sub_26AEFDAC8();
  v22 = &v68;
  v68 = v9;
  v69 = v10 & 1;
  v11 = sub_26AF73858();
  MEMORY[0x26D66C890](v22, v30, &unk_287B943E0, v11);
  sub_26AEFDFDC();
  sub_26AF73900(v32);
  v23 = sub_26AF7411C();
  sub_26AE9463C(v38, v33, v40);
  sub_26AF7423C(v38);
  sub_26AF74A7C(v40, v35);
  sub_26AE94B4C(v35, v33, v25);
  sub_26AF7423C(v35);
  return sub_26AF7423C(v40);
}

uint64_t sub_26AF529C8()
{
  v29 = sub_26AF52EF0;
  v32 = sub_26AF8F100;
  v34 = sub_26AF8F084;
  v36 = sub_26AF8F0B8;
  v39 = sub_26AF8F14C;
  v22 = 0;
  v23 = sub_26B078580();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v27 = &v13 - v26;
  sub_26B078550();
  v43 = sub_26B078570();
  v44 = sub_26B07A2B0();
  v28 = 17;
  v31 = 7;
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v30 = 32;
  v0 = swift_allocObject();
  v33 = v0;
  *(v0 + 16) = v29;
  *(v0 + 24) = 0;
  v1 = swift_allocObject();
  v2 = v33;
  v40 = v1;
  *(v1 + 16) = v32;
  *(v1 + 24) = v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v38 = sub_26B07A760();
  v41 = v3;

  v4 = v35;
  v5 = v41;
  *v41 = v34;
  v5[1] = v4;

  v6 = v37;
  v7 = v41;
  v41[2] = v36;
  v7[3] = v6;

  v8 = v40;
  v9 = v41;
  v41[4] = v39;
  v9[5] = v8;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v43, v44))
  {
    v10 = v22;
    v15 = sub_26B07A420();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v16 = sub_26AEA3B70(0, v14, v14);
    v17 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v18 = &v49;
    v49 = v15;
    v19 = &v48;
    v48 = v16;
    v20 = &v47;
    v47 = v17;
    sub_26AEA3BC4(2, &v49);
    sub_26AEA3BC4(1, v18);
    v45 = v34;
    v46 = v35;
    sub_26AEA3BD8(&v45, v18, v19, v20);
    v21 = v10;
    if (v10)
    {

      __break(1u);
    }

    else
    {
      v45 = v36;
      v46 = v37;
      sub_26AEA3BD8(&v45, &v49, &v48, &v47);
      v13 = 0;
      v45 = v39;
      v46 = v40;
      sub_26AEA3BD8(&v45, &v49, &v48, &v47);
      _os_log_impl(&dword_26AE88000, v43, v44, "SoftwareUpdateContentView.%s: View refresh request was received.", v15, 0xCu);
      sub_26AEA3C24(v16, 0, v14);
      sub_26AEA3C24(v17, 1, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v11 = MEMORY[0x277D82BD8](v43);
  return (*(v24 + 8))(v27, v23, v11);
}

uint64_t sub_26AF52F20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a1;
  v69 = a2;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v75 = a6;
  v79 = sub_26AF8ECFC;
  v81 = sub_26AF53B10;
  v82 = sub_26AF8EF00;
  v87 = sub_26AF8EDFC;
  v91 = sub_26AF8F000;
  v93 = sub_26AF8EE84;
  v95 = sub_26AF8EEB8;
  v97 = sub_26AF8EF4C;
  v99 = sub_26AF8EF84;
  v101 = sub_26AF8EFB8;
  v104 = sub_26AF8F04C;
  v118 = 0;
  v117 = 0;
  v59 = 0;
  v119[5] = a3;
  v119[4] = a4;
  v119[0] = a3;
  v119[1] = a4;
  v119[2] = a5;
  v119[3] = a6;
  v60 = 0;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v119);
  v61 = *(updated - 1);
  v70 = v61;
  v71 = *(v61 + 64);
  v62 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v78 = v41 - v62;
  v64 = sub_26B078580();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v68 = v41 - v67;
  v118 = *v6;
  v117 = v7;
  sub_26B078550();
  sub_26AEF6558(v69, v78, updated);
  v76 = (*(v70 + 80) + 48) & ~*(v70 + 80);
  v89 = 7;
  v8 = swift_allocObject();
  v9 = v73;
  v10 = v74;
  v11 = v75;
  v12 = v76;
  v13 = updated;
  v14 = v8;
  v15 = v78;
  v80 = v14;
  v14[2] = v72;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  sub_26AF68AA4(v15, v14 + v12, v13);

  v88 = 32;
  v16 = swift_allocObject();
  v17 = v80;
  v90 = v16;
  *(v16 + 16) = v79;
  *(v16 + 24) = v17;

  v108 = sub_26B078570();
  v109 = sub_26B07A2B0();
  v85 = 17;
  v94 = swift_allocObject();
  v84 = 32;
  *(v94 + 16) = 32;
  v96 = swift_allocObject();
  v86 = 8;
  *(v96 + 16) = 8;
  v18 = swift_allocObject();
  v83 = v18;
  *(v18 + 16) = v81;
  *(v18 + 24) = 0;
  v19 = swift_allocObject();
  v20 = v83;
  v98 = v19;
  *(v19 + 16) = v82;
  *(v19 + 24) = v20;
  v100 = swift_allocObject();
  *(v100 + 16) = v84;
  v102 = swift_allocObject();
  *(v102 + 16) = v86;
  v21 = swift_allocObject();
  v22 = v90;
  v92 = v21;
  *(v21 + 16) = v87;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v92;
  v105 = v23;
  *(v23 + 16) = v91;
  *(v23 + 24) = v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v103 = sub_26B07A760();
  v106 = v25;

  v26 = v94;
  v27 = v106;
  *v106 = v93;
  v27[1] = v26;

  v28 = v96;
  v29 = v106;
  v106[2] = v95;
  v29[3] = v28;

  v30 = v98;
  v31 = v106;
  v106[4] = v97;
  v31[5] = v30;

  v32 = v100;
  v33 = v106;
  v106[6] = v99;
  v33[7] = v32;

  v34 = v102;
  v35 = v106;
  v106[8] = v101;
  v35[9] = v34;

  v36 = v105;
  v37 = v106;
  v106[10] = v104;
  v37[11] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v108, v109))
  {
    v38 = v59;
    v51 = sub_26B07A420();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v52 = sub_26AEA3B70(0, v50, v50);
    v53 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v55 = &v114;
    v114 = v51;
    v56 = &v113;
    v113 = v52;
    v57 = &v112;
    v112 = v53;
    v54 = 2;
    sub_26AEA3BC4(2, &v114);
    sub_26AEA3BC4(v54, v55);
    v110 = v93;
    v111 = v94;
    sub_26AEA3BD8(&v110, v55, v56, v57);
    v58 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v110 = v95;
      v111 = v96;
      sub_26AEA3BD8(&v110, &v114, &v113, &v112);
      v49 = 0;
      v110 = v97;
      v111 = v98;
      sub_26AEA3BD8(&v110, &v114, &v113, &v112);
      v48 = 0;
      v110 = v99;
      v111 = v100;
      sub_26AEA3BD8(&v110, &v114, &v113, &v112);
      v47 = 0;
      v110 = v101;
      v111 = v102;
      sub_26AEA3BD8(&v110, &v114, &v113, &v112);
      v46 = 0;
      v110 = v104;
      v111 = v105;
      sub_26AEA3BD8(&v110, &v114, &v113, &v112);
      _os_log_impl(&dword_26AE88000, v108, v109, "SoftwareUpdateContentView.%s: State changed: %s.", v51, 0x16u);
      sub_26AEA3C24(v52, 0, v50);
      sub_26AEA3C24(v53, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v39 = MEMORY[0x277D82BD8](v108);
  (*(v65 + 8))(v68, v64, v39);
  v41[1] = sub_26AF45C88(updated);
  v42 = ReactiveUIManager.currentState.getter();

  v45 = &v116;
  v116 = v42;
  v43 = &v115;
  v115 = 4;
  v44 = type metadata accessor for SUUIStatefulUIState(0);
  sub_26AE9AD9C();
  result = sub_26B079D70();
  if ((result & 1) == 0)
  {
    return sub_26AF46CFC(0, updated);
  }

  return result;
}

uint64_t sub_26AF53B40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, id *a5@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v8);
  sub_26AF45C88(updated);
  *a5 = ReactiveUIManager.currentState.getter();
}

uint64_t sub_26AF53BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a6;
  v94 = a1;
  v148 = a2;
  v149 = a3;
  v150 = a4;
  v151 = a5;
  v95 = "Fatal error";
  v96 = "SoftwareUpdateUIKit/SoftwareUpdateContentView.swift";
  v207 = 0;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v161 = 0;
  v209 = a2;
  v208 = a3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3A0, &qword_26B08C088);
  v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v99 = v42 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3E0, &qword_26B08C0A8);
  v101 = (*(*(v100 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v102 = v42 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v107 = v42 - v106;
  v108 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v106);
  v109 = (v42 - v108);
  v110 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v108);
  v111 = (v42 - v110);
  v207 = v42 - v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3B0, &qword_26B08C090);
  v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v114 = (v42 - v113);
  v115 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v113);
  v116 = v42 - v115;
  v117 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v115);
  v118 = (v42 - v117);
  v206 = v42 - v117;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v120 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v121 = v42 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD380, &qword_26B08C078);
  v123 = (*(*(v122 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122);
  v124 = v42 - v123;
  v125 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v123);
  v126 = (v42 - v125);
  v127 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v125);
  v128 = (v42 - v127);
  v205 = v42 - v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD338, &qword_26B08C058);
  v130 = (*(*(v129 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v129);
  v131 = v42 - v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
  v133 = (*(*(v132 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v132);
  v134 = v42 - v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD318, &qword_26B08C048);
  v136 = (*(*(v135 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v135);
  v137 = v42 - v136;
  v138 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v136);
  v139 = v42 - v138;
  v140 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v138);
  v141 = v42 - v140;
  v204 = v42 - v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD308, &qword_26B08C040);
  v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v142);
  v144 = v42 - v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2F8, &qword_26B08C038);
  v146 = (*(*(v145 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v145);
  v147 = v42 - v146;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2E0, &qword_26B08C030);
  v154 = *(*(v152 - 8) + 64);
  v153 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v152);
  v155 = (v42 - v153);
  v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v153);
  v157 = (v42 - v156);
  v203 = v42 - v156;
  v202 = a1;
  v201[0] = v15;
  v201[1] = v16;
  v201[2] = v17;
  v201[3] = v18;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v201);
  v159 = sub_26AF45C88(updated);
  v160 = ReactiveUIManager.currentState.getter();

  if (v160)
  {
    if (v160 == 1)
    {
      sub_26AF54DB8(updated, v134);
      v22 = sub_26AF714C8();
      View.fadeTransition()(v132, v22);
      sub_26AF76150(v134);
      v87 = sub_26AF71420();
      sub_26AE9463C(v139, v135, v141);
      sub_26AF85CB0(v139);
      v161 = v139;
      sub_26AF85EE4(v141, v137);
      sub_26AE94B4C(v137, v135, v139);
      sub_26AF85CB0(v137);
      sub_26AF85EE4(v139, v137);
      sub_26AE94CA8(v137, MEMORY[0x277CE1428], v135, MEMORY[0x277CE1410], v87, v144);
      sub_26AF85CB0(v137);
      v85 = sub_26AF7137C();
      v23 = sub_26AF71550();
      sub_26AE94BB0(v144, v142, v129, v85, v23, v147);
      sub_26AF86330(v144);
      v86 = sub_26AF712D4();
      v24 = sub_26AF71990();
      sub_26AE94BB0(v147, v145, v97, v86, v24, v155);
      sub_26AF857DC(v147);
      sub_26AF82528(v155, v157);
      sub_26AF85CB0(v139);
      sub_26AF85CB0(v141);
    }

    else if (v160 == 2)
    {
      sub_26AF55220(updated, v180);
      v62 = v177;
      v177[0] = v180[0];
      v177[1] = v180[1];
      v177[2] = v180[2];
      v177[3] = v180[3];
      v178 = v181;
      v77 = 1;
      v179 = v182 & 1;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD358, &qword_26B08C068);
      v25 = sub_26AF716A0();
      View.fadeTransition()(v61, v25);
      sub_26AF76C30(v62);
      v63 = v174;
      v174[0] = v183;
      v174[1] = v184;
      v174[2] = v185;
      v174[3] = v186;
      v175 = v187;
      v176 = v188 & 1 & v77;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD348, &qword_26B08C060);
      v79 = sub_26AF715F8();
      v84 = &v189;
      sub_26AE9463C(v63, v78, &v189);
      sub_26AF85C68(v63);
      v64 = v189;
      v65 = v190;
      v66 = v191;
      v67 = v192;
      v68 = v193;
      v69 = v194;
      sub_26AF75B54(v189, v190, v191, v192, v193, v194 & 1);
      v70 = v165;
      v165[0] = v64;
      v165[1] = v65;
      v165[2] = v66;
      v165[3] = v67;
      v166 = v68;
      v167 = v69 & 1 & v77;
      v83 = &v168;
      sub_26AE94B4C(v165, v78, &v168);
      sub_26AF85C68(v70);
      v71 = v168;
      v72 = v169;
      v73 = v170;
      v74 = v171;
      v75 = v172;
      v76 = v173;
      sub_26AF75B54(v168, v169, v170, v171, v172, v173 & 1);
      v80 = v162;
      v162[0] = v71;
      v162[1] = v72;
      v162[2] = v73;
      v162[3] = v74;
      v163 = v75;
      v164 = v76 & 1 & v77;
      v26 = sub_26AF71860();
      sub_26AE94BB0(v80, v78, v122, v79, v26, v131);
      sub_26AF85C68(v80);
      v81 = sub_26AF7137C();
      v27 = sub_26AF71550();
      sub_26AE94CA8(v131, v142, v129, v81, v27, v147);
      sub_26AF855C4(v131);
      v82 = sub_26AF712D4();
      v28 = sub_26AF71990();
      sub_26AE94BB0(v147, v145, v97, v82, v28, v155);
      sub_26AF857DC(v147);
      sub_26AF82528(v155, v157);
      sub_26AF85C68(v83);
      sub_26AF85C68(v84);
    }

    else if (v160 == 3)
    {
      sub_26AF55DF4(updated, v121);
      v29 = sub_26AF71908();
      View.fadeTransition()(v119, v29);
      sub_26AF7739C(v121);
      v60 = sub_26AF71860();
      sub_26AE9463C(v126, v122, v128);
      sub_26AF850EC(v126);
      v195 = v126;
      sub_26AF852C0(v128, v124);
      sub_26AE94B4C(v124, v122, v126);
      sub_26AF850EC(v124);
      sub_26AF852C0(v126, v124);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD348, &qword_26B08C060);
      v30 = sub_26AF715F8();
      sub_26AE94CA8(v124, v57, v122, v30, v60, v131);
      sub_26AF850EC(v124);
      v58 = sub_26AF7137C();
      v31 = sub_26AF71550();
      sub_26AE94CA8(v131, v142, v129, v58, v31, v147);
      sub_26AF855C4(v131);
      v59 = sub_26AF712D4();
      v32 = sub_26AF71990();
      sub_26AE94BB0(v147, v145, v97, v59, v32, v155);
      sub_26AF857DC(v147);
      sub_26AF82528(v155, v157);
      sub_26AF850EC(v126);
      sub_26AF850EC(v128);
    }

    else if (v160 == 4)
    {
      if (sub_26AF465B0(updated))
      {
        sub_26AF560FC(updated, v102);
        v54 = sub_26AF46C5C(updated);
        v55 = sub_26AF71C18();
        v33 = sub_26AF4DBD4();
        View.visibilityTransition(when:duration:)(v54 & 1, v100, v55, v109, v33);
        sub_26AF78B90(v102);
        v56 = sub_26AF71ACC();
        sub_26AE9463C(v109, v103, v111);
        sub_26AF84828(v109);
        v196 = v109;
        sub_26AF84B10(v111, v107);
        sub_26AE94B4C(v107, v103, v109);
        sub_26AF84828(v107);
        sub_26AF84B10(v109, v114);
        (*(v104 + 56))(v114, 0, 1, v103);
        sub_26AF09CCC(v114, v103, v116);
        sub_26AF81384(v114);
        sub_26AF816B4(v116, v118);
        sub_26AF84828(v109);
        sub_26AF84828(v111);
      }

      else
      {
        (*(v104 + 56))(v114, 1, 1, v103);
        sub_26AF71ACC();
        sub_26AF09CCC(v114, v103, v116);
        sub_26AF81384(v114);
        sub_26AF816B4(v116, v118);
      }

      v197 = v116;
      sub_26AF81B30(v118, v114);
      v52 = sub_26AF71A34();
      sub_26AE94B4C(v114, v112, v116);
      sub_26AF81384(v114);
      sub_26AF81B30(v116, v114);
      sub_26AE94BB0(v114, v112, MEMORY[0x277D84A98], v52, MEMORY[0x277CE1538], v99);
      sub_26AF81384(v114);
      v53 = sub_26AF712D4();
      v34 = sub_26AF71990();
      sub_26AE94CA8(v99, v145, v97, v53, v34, v155);
      sub_26AF821CC(v99);
      sub_26AF82528(v155, v157);
      sub_26AF81384(v116);
      sub_26AF81384(v118);
    }

    else
    {
      v42[0] = 15;
      v35 = sub_26B07A740();
      v49 = &v199;
      v199 = v35;
      v200 = v36;
      v47 = 1;
      v37 = sub_26B079D00("Unknown state: ", v42[0], 1);
      v42[1] = v38;
      MEMORY[0x26D66D910](v37);

      v42[2] = sub_26AF45C88(updated);
      v43 = ReactiveUIManager.currentState.getter();

      v45 = &v198;
      v198 = v43;
      v46 = 0;
      v44 = type metadata accessor for SUUIStatefulUIState(0);
      sub_26AEB7134();
      sub_26B07A710();
      v39 = sub_26B079D00("", v46, v47 & 1);
      v48 = v40;
      MEMORY[0x26D66D910](v39);

      v51 = v199;
      v50 = v200;
      sub_26B078640();
      sub_26AEB9F6C(v49);
      sub_26B079EB0();
      sub_26B07A660();
      __break(1u);
    }
  }

  else
  {
    sub_26B079B90();
    v88 = MEMORY[0x277CE1428];
    v89 = MEMORY[0x277CE1410];
    sub_26AE9463C(v90, MEMORY[0x277CE1428], v90);
    sub_26AE94B4C(v90, v88, v90);
    v19 = sub_26AF71420();
    sub_26AE94BB0(v90, v88, v135, v89, v19, v144);
    v91 = sub_26AF7137C();
    v20 = sub_26AF71550();
    sub_26AE94BB0(v144, v142, v129, v91, v20, v147);
    sub_26AF86330(v144);
    v92 = sub_26AF712D4();
    v21 = sub_26AF71990();
    sub_26AE94BB0(v147, v145, v97, v92, v21, v155);
    sub_26AF857DC(v147);
    sub_26AF82528(v155, v157);
  }

  sub_26AF83078(v157, v155);
  sub_26AF7122C();
  sub_26AE94B4C(v155, v152, v93);
  sub_26AF84030(v155);
  return sub_26AF84030(v157);
}

uint64_t sub_26AF54DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v26 = a1;
  v22 = sub_26AF75C24;
  v60 = 0;
  v59 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B8, &qword_26B08C138);
  v17 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v40 = &v17 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
  v18 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v44 = &v17 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v45 = &v17 - v19;
  v60 = &v17 - v19;
  v59 = v2;
  v58 = v5[2];
  v57 = v5[3];
  v20 = &v46;
  v47 = v58;
  v48 = v57;
  v49 = v5[4];
  v50 = v5[5];
  v51 = v2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4C0, &qword_26B08C140);
  sub_26AF75C4C();
  sub_26B079800();
  v24 = 1;
  v6 = sub_26B07A740();
  v35 = &v55;
  v55 = v6;
  v56 = v7;
  v31 = "";
  v32 = 0;
  v33 = 1;
  v8 = sub_26B079D00("");
  v23 = v9;
  MEMORY[0x26D66D910](v8);

  v54 = sub_26AF4690C(v26);
  sub_26B07A700();
  v10 = sub_26B079D00("-", v24, v33 & 1);
  v25 = v11;
  MEMORY[0x26D66D910](v10);

  v27 = sub_26AF45C88(v26);
  v28 = ReactiveUIManager.currentState.getter();

  v30 = &v53;
  v53 = v28;
  v29 = type metadata accessor for SUUIStatefulUIState(v32);
  sub_26AEB7134();
  sub_26B07A710();
  v12 = sub_26B079D00(v31, v32, v33 & 1);
  v34 = v13;
  MEMORY[0x26D66D910](v12);

  v37 = v55;
  v36 = v56;
  sub_26B078640();
  sub_26AEB9F6C(v35);
  v14 = sub_26B079EB0();
  v39 = v52;
  v52[0] = v14;
  v52[1] = v15;
  sub_26AF75EAC();
  sub_26B0795B0();
  sub_26AE9BCC0(v39);
  sub_26AF75F44(v40);
  v43 = sub_26AF714C8();
  sub_26AE9463C(v44, v42, v45);
  sub_26AF76150(v44);
  sub_26AF76384(v45, v44);
  sub_26AE94B4C(v44, v42, v41);
  sub_26AF76150(v44);
  return sub_26AF76150(v45);
}

uint64_t sub_26AF55220@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = &v123;
  v94 = a2;
  v97 = a1;
  v96 = sub_26AF76B78;
  v200 = 0;
  memset(__b, 0, 0x22uLL);
  v195 = 0u;
  v196 = 0u;
  v182 = 0u;
  v183 = 0u;
  v166 = 0u;
  v167 = 0u;
  v153 = 0u;
  v154 = 0u;
  v136 = 0u;
  v137 = 0u;
  v123 = 0u;
  v124 = 0u;
  v99 = *(v97 - 1);
  v100 = v99;
  v101 = *(v99 + 64);
  v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v103 = &v14 - v102;
  v200 = v2;
  v104 = *(v3 + 16);
  __b[6] = v104;
  v105 = *(v3 + 24);
  __b[5] = v105;
  v106 = sub_26AF45C88(v3);
  v107 = ReactiveUIManager.scanError.getter();

  if (v107)
  {
    v93 = v107;
    v89 = v107;
    v90 = [v107 traits];
    MEMORY[0x277D82BD8](v89);
    swift_getObjectType();
    v91 = [v90 networkUnavailable];
    swift_unknownObjectRelease();
    v92 = v91;
  }

  else
  {
    v92 = 2;
  }

  v198 = v92;
  if (v92 == 2)
  {
    v88 = 0;
  }

  else
  {
    v88 = v198;
  }

  if (v88)
  {
    v130 = 0;
    ScanFailedView.init(reason:tryAgainAction:)(&v130, 0, 0, &v131);
    v70 = &v125;
    v125 = v131;
    v85 = 1;
    v126 = v132 & 1;
    v127 = v133;
    v128 = v134;
    v129 = v135;
    v83 = sub_26AF717E8();
    v87 = &v136;
    v82 = &type metadata for ScanFailedView;
    sub_26AE9463C(v70, &type metadata for ScanFailedView, &v136);
    sub_26AEB328C(v70);
    v71 = v136;
    v72 = BYTE8(v136);
    v73 = BYTE9(v136);
    v74 = v137;

    sub_26AEB0BF0(v74, *(&v74 + 1));
    v75 = &v119;
    v119 = v71;
    v120 = v72 & 1 & v85;
    v121 = v73;
    v122 = v74;
    v86 = &v123;
    sub_26AE94B4C(&v119, v82, &v123);
    sub_26AEB328C(v75);
    v76 = v123;
    v77 = BYTE8(v123);
    v78 = BYTE9(v123);
    v79 = v124;

    sub_26AEB0BF0(v79, *(&v79 + 1));
    v80 = &v110;
    v110 = v76;
    v111 = v77 & 1 & v85;
    v112 = v78;
    v113 = v79;
    sub_26AE94BB0(&v110, v82, v82, v83, v83, v114);
    sub_26AEB328C(v80);
    v84 = v108;
    v108[0] = v114[0];
    v108[1] = v114[1];
    v108[2] = v114[2];
    v108[3] = v114[3];
    v109 = v115 & 1 & v85;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD368, &qword_26B08C070);
    v4 = sub_26AF71748();
    sub_26AE94BB0(v84, v81, v82, v4, v83, v116);
    sub_26AF76C78(v84);
    __b[0] = v116[0];
    __b[1] = v116[1];
    __b[2] = v116[2];
    __b[3] = v116[3];
    LOBYTE(__b[4]) = v117;
    BYTE1(__b[4]) = v118 & 1 & v85;
    sub_26AEB328C(v86);
    sub_26AEB328C(v87);
  }

  else
  {
    v68 = sub_26AF45C88(v97);
    v69 = ReactiveUIManager.scanError.getter();

    if (v69)
    {
      v67 = v69;
      v63 = v69;
      v64 = [v69 traits];
      MEMORY[0x277D82BD8](v63);
      swift_getObjectType();
      v65 = [v64 connectionInvalid];
      swift_unknownObjectRelease();
      v66 = v65;
    }

    else
    {
      v66 = 2;
    }

    v197 = v66;
    if (v66 == 2)
    {
      v62 = 0;
    }

    else
    {
      v62 = v197;
    }

    if (v62)
    {
      v160 = 1;
      ScanFailedView.init(reason:tryAgainAction:)(&v160, 0, 0, &v161);
      v44 = &v155;
      v155 = v161;
      v59 = 1;
      v156 = v162 & 1;
      v157 = v163;
      v158 = v164;
      v159 = v165;
      v57 = sub_26AF717E8();
      v61 = &v166;
      v56 = &type metadata for ScanFailedView;
      sub_26AE9463C(v44, &type metadata for ScanFailedView, &v166);
      sub_26AEB328C(v44);
      v45 = v166;
      v46 = BYTE8(v166);
      v47 = BYTE9(v166);
      v48 = v167;

      sub_26AEB0BF0(v48, *(&v48 + 1));
      v49 = &v149;
      v149 = v45;
      v150 = v46 & 1 & v59;
      v151 = v47;
      v152 = v48;
      v60 = &v153;
      sub_26AE94B4C(&v149, v56, &v153);
      sub_26AEB328C(v49);
      v50 = v153;
      v51 = BYTE8(v153);
      v52 = BYTE9(v153);
      v53 = v154;

      sub_26AEB0BF0(v53, *(&v53 + 1));
      v54 = &v140;
      v140 = v50;
      v141 = v51 & 1 & v59;
      v142 = v52;
      v143 = v53;
      sub_26AE94CA8(&v140, v56, v56, v57, v57, v144);
      sub_26AEB328C(v54);
      v58 = v138;
      v138[0] = v144[0];
      v138[1] = v144[1];
      v138[2] = v144[2];
      v138[3] = v144[3];
      v139 = v145 & 1 & v59;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD368, &qword_26B08C070);
      v5 = sub_26AF71748();
      sub_26AE94BB0(v58, v55, v56, v5, v57, v146);
      sub_26AF76C78(v58);
      __b[0] = v146[0];
      __b[1] = v146[1];
      __b[2] = v146[2];
      __b[3] = v146[3];
      LOBYTE(__b[4]) = v147;
      BYTE1(__b[4]) = v148 & 1 & v59;
      sub_26AEB328C(v60);
      sub_26AEB328C(v61);
    }

    else
    {
      v26 = &v189;
      v189 = 2;
      sub_26AEF6558(v95, v103, v97);
      v24 = (*(v100 + 80) + 48) & ~*(v100 + 80);
      v6 = swift_allocObject();
      v7 = v105;
      v8 = v24;
      v9 = v97;
      v10 = v6;
      v11 = v103;
      v25 = v10;
      v10[2] = v104;
      v10[3] = v7;
      v10[4] = *(v9 + 4);
      v10[5] = *(v9 + 5);
      sub_26AF68AA4(v11, v10 + v8, v9);
      ScanFailedView.init(reason:tryAgainAction:)(v26, v96, v25, &v190);
      v27 = &v184;
      v184 = v190;
      v41 = 1;
      v185 = v191 & 1;
      v186 = v192;
      v187 = v193;
      v188 = v194;
      v39 = sub_26AF717E8();
      v43 = &v195;
      v38 = &type metadata for ScanFailedView;
      sub_26AE9463C(v27, &type metadata for ScanFailedView, &v195);
      sub_26AEB328C(v27);
      v28 = v195;
      v29 = BYTE8(v195);
      v30 = BYTE9(v195);
      v31 = v196;

      sub_26AEB0BF0(v31, *(&v31 + 1));
      v32 = &v178;
      v178 = v28;
      v179 = v29 & 1 & v41;
      v180 = v30;
      v181 = v31;
      v42 = &v182;
      sub_26AE94B4C(&v178, v38, &v182);
      sub_26AEB328C(v32);
      v33 = v182;
      v34 = BYTE8(v182);
      v35 = BYTE9(v182);
      v36 = v183;

      sub_26AEB0BF0(v36, *(&v36 + 1));
      v40 = &v171;
      v171 = v33;
      v172 = v34 & 1 & v41;
      v173 = v35;
      v174 = v36;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD368, &qword_26B08C070);
      v12 = sub_26AF71748();
      sub_26AE94CA8(v40, v37, v38, v12, v39, v175);
      sub_26AEB328C(v40);
      __b[0] = v175[0];
      __b[1] = v175[1];
      __b[2] = v175[2];
      __b[3] = v175[3];
      LOBYTE(__b[4]) = v176;
      BYTE1(__b[4]) = v177 & 1 & v41;
      sub_26AEB328C(v42);
      sub_26AEB328C(v43);
    }
  }

  v23 = __b;
  v15 = __b[0];
  v16 = __b[1];
  v17 = __b[2];
  v18 = __b[3];
  v19 = LOBYTE(__b[4]);
  v20 = BYTE1(__b[4]);
  sub_26AF75B54(__b[0], __b[1], __b[2], __b[3], __b[4], BYTE1(__b[4]) & 1);
  v22 = v168;
  v168[0] = v15;
  v168[1] = v16;
  v168[2] = v17;
  v168[3] = v18;
  v169 = v19;
  v170 = v20 & 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD358, &qword_26B08C068);
  sub_26AF716A0();
  sub_26AE94B4C(v22, v21, v94);
  sub_26AF76C30(v22);
  return sub_26AF76C30(v23);
}

uint64_t sub_26AF55DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v22 = a1;
  v32 = sub_26AF77064;
  v29 = sub_26AF77124;
  v47 = 0;
  v46 = 0;
  v15 = *(a1 - 8);
  v19 = v15;
  v20 = *(v15 + 64);
  v16 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v23 = &v14 - v16;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v17 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v36 = &v14 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v17);
  v37 = (&v14 - v18);
  v47 = &v14 - v18;
  v46 = v2;
  v24 = *(v4 + 16);
  v45 = v24;
  v25 = *(v4 + 24);
  v44 = v25;
  sub_26AEF6558(v2, v5, v4);
  v21 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v6 = swift_allocObject();
  v7 = v21;
  v8 = v22;
  v9 = v25;
  v10 = v6;
  v11 = v23;
  v28 = v10;
  v10[2] = v24;
  v10[3] = v9;
  v26 = *(v8 + 32);
  v10[4] = v26;
  v27 = *(v8 + 40);
  v10[5] = v27;
  sub_26AF68AA4(v11, v10 + v7, v8);
  v30 = &v38;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v43 = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
  v12 = sub_26AF7714C();
  UpToDateView<>.init(label:actions:)(v32, v28, v29, v30, v31, v12, v36);
  v35 = sub_26AF71908();
  sub_26AE9463C(v36, v34, v37);
  sub_26AF7739C(v36);
  sub_26AF77570(v37, v36);
  sub_26AE94B4C(v36, v34, v33);
  sub_26AF7739C(v36);
  return sub_26AF7739C(v37);
}

uint64_t sub_26AF560FC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v62 = a1;
  v44 = sub_26AF77C1C;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v84 = 0;
  v83 = 0;
  __len = 73;
  __c = 0;
  memset(v79, 0, 0x49uLL);
  memset(v76, 0, 0x49uLL);
  v47 = *(v62 - 1);
  v48 = v47;
  v49 = *(v47 + 64);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v51 = &v19 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v54 = &v19 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v57 = &v19 - v56;
  v58 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v19 - v56);
  v59 = (&v19 - v58);
  v60 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v19 - v58);
  v61 = (&v19 - v60);
  v89 = &v19 - v60;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3E0, &qword_26B08C0A8);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v65 = &v19 - v64;
  v66 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v67 = &v19 - v66;
  v88 = &v19 - v66;
  v87 = v2;
  v68 = *(v7 + 16);
  v86 = v68;
  v69 = *(v7 + 24);
  v85 = v69;
  v70 = sub_26AF45C88(v7);
  v71 = ReactiveUIManager.preferredDescriptor.getter();
  if (!v71 || (v41 = v71, v38 = v71, v83 = v71, , v39 = sub_26AF45C88(v62), updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()(), , updated))
  {

    sub_26AF55DF4(v62, v54);
    sub_26AEF6558(v43, v51, v62);
    v20 = (*(v48 + 80) + 48) & ~*(v48 + 80);
    v11 = swift_allocObject();
    v12 = v69;
    v13 = v20;
    v14 = v62;
    v15 = v11;
    v16 = v51;
    v21 = v15;
    v15[2] = v68;
    v15[3] = v12;
    v15[4] = *(v14 + 4);
    v15[5] = *(v14 + 5);
    sub_26AF68AA4(v16, v15 + v13, v14);
    v22 = v21;
    sub_26AF71908();
    sub_26B0796C0();
    sub_26AEB3258(v44, v22);
    sub_26AF7739C(v54);
    v23 = sub_26AF71D38();
    sub_26AE9463C(v59, v55, v61);
    sub_26AF77CD4(v59);
    v84 = v59;
    sub_26AF77F08(v61, v57);
    sub_26AE94B4C(v57, v55, v59);
    sub_26AF77CD4(v57);
    sub_26AF77F08(v59, v57);
    v17 = sub_26AF71CC0();
    sub_26AE94CA8(v57, &type metadata for AvailableUpdateView, v55, v17, v23, v65);
    sub_26AF77CD4(v57);
    sub_26AF782E4(v65, v67);
    sub_26AF77CD4(v59);
    sub_26AF77CD4(v61);
  }

  else
  {

    v24 = sub_26AF46DC8(v62);
    v25 = v8;
    v26 = v78;
    AvailableUpdateView.init(presenting:isContentReady:onUpdateRequested:)(v38, v24, v8, v9 & 1, 0, 0, v78);
    v27 = v80;
    v32 = 73;
    memcpy(v80, v26, 0x49uLL);
    v28 = v77;
    memcpy(v77, v80, 0x49uLL);
    v34 = sub_26AF71CC0();
    v37 = v79;
    v33 = &type metadata for AvailableUpdateView;
    sub_26AE9463C(v28, &type metadata for AvailableUpdateView, v79);
    sub_26AF78E54(v28);
    v29 = __dst;
    memcpy(__dst, v37, v32);
    sub_26AF78EE4(v29, &v75);
    v30 = v74;
    memcpy(v74, v29, v32);
    v36 = v76;
    sub_26AE94B4C(v30, v33, v76);
    sub_26AF78E54(v30);
    v31 = v82;
    memcpy(v82, v36, v32);
    sub_26AF78EE4(v31, &v73);
    v35 = v72;
    memcpy(v72, v31, v32);
    v10 = sub_26AF71D38();
    sub_26AE94BB0(v35, v33, v55, v34, v10, v65);
    sub_26AF78E54(v35);
    sub_26AF782E4(v65, v67);
    sub_26AF78E54(v36);
    sub_26AF78E54(v37);
  }

  sub_26AF78638(v67, v65);
  sub_26AF71C18();
  sub_26AE94B4C(v65, v63, v42);
  sub_26AF78B90(v65);
  return sub_26AF78B90(v67);
}

uint64_t sub_26AF567C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v146 = a6;
  v147 = a1;
  v180 = a2;
  v181 = a3;
  v182 = a4;
  v183 = a5;
  v148 = sub_26AF57AA8;
  v252 = 0;
  v251 = 0;
  v250 = 0;
  v249 = 0;
  v248 = 0;
  v247 = 0;
  v227 = 0;
  v205 = 0;
  __len = 81;
  __c = 0;
  memset(v201, 0, 0x51uLL);
  memset(v198, 0, 0x51uLL);
  v254 = v180;
  v253 = v181;
  v184 = 0;
  v151 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v152 = &v58[-v151];
  v7 = sub_26B079DE0();
  v153 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v154 = &v58[-v153];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
  v156 = (*(*(v155 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155);
  v157 = &v58[-v156];
  v158 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v58[-v156]);
  v159 = &v58[-v158];
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
  v161 = (*(*(v160 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v160);
  v162 = &v58[-v161];
  v163 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v58[-v161]);
  v164 = &v58[-v163];
  v252 = &v58[-v163];
  v165 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v166 = &v58[-v165];
  v167 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v58[-v165]);
  v168 = &v58[-v167];
  v251 = &v58[-v167];
  v169 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v170 = &v58[-v169];
  v171 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v58[-v169]);
  v172 = &v58[-v171];
  v250 = &v58[-v171];
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4D8, &qword_26B08C148);
  v174 = (*(*(v173 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v173);
  v175 = &v58[-v174];
  v176 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v58[-v174]);
  v177 = &v58[-v176];
  v178 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v58[-v176]);
  v179 = &v58[-v178];
  v249 = &v58[-v178];
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4C0, &qword_26B08C140);
  v187 = *(*(v185 - 8) + 64);
  v186 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v184);
  v188 = &v58[-v186];
  v189 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v190 = &v58[-v189];
  v248 = &v58[-v189];
  v247 = a1;
  v246[0] = v19;
  v246[1] = v20;
  v246[2] = v21;
  v246[3] = v22;
  updated = type metadata accessor for SoftwareUpdateContentView(v23, v246);
  v192 = sub_26AF45718(updated);
  v193 = sub_26B078500();

  if (v193)
  {
    v140 = type metadata accessor for SUUIStatefulUIState(0);
    v141 = sub_26AF45C88(updated);
    v142 = ReactiveUIManager.currentState.getter();

    v144 = &v226;
    v226 = v142;
    v143 = &v225;
    v225 = 1;
    v145 = sub_26AEB6FE0();
    if (sub_26B079D50())
    {
      v24 = sub_26AF4690C(updated);
      v139 = sub_26AF579C0(v24, 1);
    }

    else
    {
      v139 = 0;
    }

    if (v139)
    {
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD7E0, &qword_26B08CA68);
      v126 = sub_26AF80FA8();
      sub_26AF4D96C();
      v127 = &v200;
      sub_26B079980();
      v128 = v202;
      v133 = 81;
      memcpy(v202, v127, 0x51uLL);
      v129 = v199;
      memcpy(v199, v202, 0x51uLL);
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4E8, &qword_26B08C150);
      v135 = sub_26AF75D9C();
      v138 = v201;
      sub_26AE9463C(v129, v134, v201);
      sub_26AF81030(v129);
      v130 = v203;
      memcpy(v203, v138, v133);
      sub_26AF81084(v130, &v197);
      v131 = v196;
      memcpy(v196, v130, v133);
      v137 = v198;
      sub_26AE94B4C(v131, v134, v198);
      sub_26AF81030(v131);
      v132 = v204;
      memcpy(v204, v137, v133);
      sub_26AF81084(v132, &v195);
      v136 = v194;
      memcpy(v194, v132, v133);
      v25 = sub_26AF75E24();
      sub_26AE94BB0(v136, v134, v160, v135, v25, v177);
      sub_26AF81030(v136);
      sub_26AF80AC8(v177, v179);
      sub_26AF81030(v137);
      sub_26AF81030(v138);
    }

    else
    {
      v26 = sub_26AF4690C(updated);
      if (sub_26AF579C0(v26, 2))
      {
        v123 = 0;
        v124 = 0;
      }

      else
      {
        v121 = 1;
        sub_26B079D00("Checking for updates…", 23, 0);
        sub_26B079D80();
        v122 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v122);
        sub_26AEFB5C4();
        v216[4] = 0;
        v216[5] = 0;
        v217 = 0;
        v218 = v121 & 1;
        v123 = sub_26B079E40();
        v124 = v27;
      }

      v118 = v124;
      static ContentUnavailableView<>.loading(_:secondaryText:)(v123, v124, 0, 0);

      v216[0] = v219;
      v216[1] = v220;
      v216[2] = v221;
      v216[3] = v222;
      v119 = sub_26AF45C88(updated);
      v120 = ReactiveUIManager.currentState.getter();

      v215 = v120;
      v214 = 1;
      if (sub_26B079D50())
      {
        v28 = sub_26AF4690C(updated);
        v117 = !sub_26AF579C0(v28, 1);
      }

      else
      {
        v117 = 0;
      }

      v94 = v117;
      v96 = sub_26AF445E4();
      v95 = &type metadata for LoadingContentUnavailableView;
      v29 = sub_26AF4DBD4();
      v109 = 1;
      v97 = v216;
      View.visibilityTransition(when:duration:)(v94, v95, v96, v223, v29);
      sub_26AF438F0(v97);
      v100 = v212;
      v212[0] = v223[0];
      v212[1] = v223[1];
      v212[2] = v223[2];
      v212[3] = v223[3];
      v212[4] = v223[4];
      v212[5] = v223[5];
      v213 = v224;
      v99 = &v211;
      v211 = 17;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD7B8, &qword_26B08CA58);
      sub_26AF7FD6C();
      View.suuiIdentifiable(_:)();
      sub_26AF7FEB8(v100);
      v102 = 1;
      v30 = sub_26B07A740();
      v111 = &v209;
      v209 = v30;
      v210 = v31;
      v107 = "";
      v108 = 0;
      v32 = sub_26B079D00("");
      v101 = v33;
      MEMORY[0x26D66D910](v32);

      v208 = sub_26AF4690C(updated);
      sub_26B07A700();
      v34 = sub_26B079D00("-", v102, v109 & 1);
      v103 = v35;
      MEMORY[0x26D66D910](v34);

      v104 = sub_26AF45C88(updated);
      v105 = ReactiveUIManager.currentState.getter();

      v106 = &v207;
      v207 = v105;
      sub_26AEB7134();
      sub_26B07A710();
      v36 = sub_26B079D00(v107, v108, v109 & 1);
      v110 = v37;
      MEMORY[0x26D66D910](v36);

      v113 = v209;
      v112 = v210;
      sub_26B078640();
      sub_26AEB9F6C(v111);
      v38 = sub_26B079EB0();
      v114 = v206;
      v206[0] = v38;
      v206[1] = v39;
      sub_26AF7FEFC();
      sub_26B0795B0();
      sub_26AE9BCC0(v114);
      sub_26AF7FFA4(v159);
      v116 = sub_26AF75E24();
      sub_26AE9463C(v170, v160, v172);
      sub_26AF80044(v170);
      sub_26AF80110(v172, v166);
      sub_26AE94B4C(v166, v160, v168);
      sub_26AF80044(v166);
      sub_26AF80110(v168, v166);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4E8, &qword_26B08C150);
      v40 = sub_26AF75D9C();
      sub_26AE94CA8(v166, v115, v160, v40, v116, v177);
      sub_26AF80044(v166);
      sub_26AF80AC8(v177, v179);
      sub_26AF80044(v168);
      sub_26AF80044(v172);
    }

    v205 = v177;
    sub_26AF80C10(v179, v175);
    v93 = sub_26AF75CF4();
    sub_26AE94B4C(v175, v173, v177);
    sub_26AF80E78(v175);
    sub_26AF80C10(v177, v175);
    v41 = sub_26AF75E24();
    sub_26AE94BB0(v175, v173, v160, v93, v41, v188);
    sub_26AF80E78(v175);
    sub_26AF80270(v188, v190);
    sub_26AF80E78(v177);
    sub_26AF80E78(v179);
  }

  else
  {
    v42 = sub_26AF4690C(updated);
    if (sub_26AF579C0(v42, 2))
    {
      v91 = 0;
      v92 = 0;
    }

    else
    {
      *&v89[1] = 1;
      sub_26B079D00("Checking for updates…", 23, 0);
      sub_26B079D80();
      v90 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v90);
      sub_26AEFB5C4();
      v238[4] = 0;
      v238[5] = 0;
      v239 = *v89 & 0x100;
      v91 = sub_26B079E40();
      v92 = v43;
    }

    v82 = v92;
    v83 = 0;
    static ContentUnavailableView<>.loading(_:secondaryText:)(v91, v92, 0, 0);

    v238[0] = v240;
    v238[1] = v241;
    v238[2] = v242;
    v238[3] = v243;
    v84 = type metadata accessor for SUUIStatefulUIState(v83);
    v85 = sub_26AF45C88(updated);
    v86 = ReactiveUIManager.currentState.getter();

    v88 = &v237;
    v237 = v86;
    v87 = &v236;
    v236 = 1;
    sub_26AEB6FE0();
    if (sub_26B079D50())
    {
      v44 = sub_26AF4690C(updated);
      v81 = !sub_26AF579C0(v44, 1);
    }

    else
    {
      v81 = 0;
    }

    v59 = v81;
    v61 = sub_26AF445E4();
    v60 = &type metadata for LoadingContentUnavailableView;
    v45 = sub_26AF4DBD4();
    v74 = 1;
    v62 = v238;
    View.visibilityTransition(when:duration:)(v59, v60, v61, v244, v45);
    sub_26AF438F0(v62);
    v65 = v234;
    v234[0] = v244[0];
    v234[1] = v244[1];
    v234[2] = v244[2];
    v234[3] = v244[3];
    v234[4] = v244[4];
    v234[5] = v244[5];
    v235 = v245;
    v64 = &v233;
    v233 = 17;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD7B8, &qword_26B08CA58);
    sub_26AF7FD6C();
    View.suuiIdentifiable(_:)();
    sub_26AF7FEB8(v65);
    v67 = 1;
    v46 = sub_26B07A740();
    v76 = &v231;
    v231 = v46;
    v232 = v47;
    v72 = "";
    v73 = 0;
    v48 = sub_26B079D00("");
    v66 = v49;
    MEMORY[0x26D66D910](v48);

    v230 = sub_26AF4690C(updated);
    sub_26B07A700();
    v50 = sub_26B079D00("-", v67, v74 & 1);
    v68 = v51;
    MEMORY[0x26D66D910](v50);

    v69 = sub_26AF45C88(updated);
    v70 = ReactiveUIManager.currentState.getter();

    v71 = &v229;
    v229 = v70;
    sub_26AEB7134();
    sub_26B07A710();
    v52 = sub_26B079D00(v72, v73, v74 & 1);
    v75 = v53;
    MEMORY[0x26D66D910](v52);

    v78 = v231;
    v77 = v232;
    sub_26B078640();
    sub_26AEB9F6C(v76);
    v54 = sub_26B079EB0();
    v79 = v228;
    v228[0] = v54;
    v228[1] = v55;
    sub_26AF7FEFC();
    sub_26B0795B0();
    sub_26AE9BCC0(v79);
    sub_26AF7FFA4(v157);
    v80 = sub_26AF75E24();
    sub_26AE9463C(v162, v160, v164);
    sub_26AF80044(v162);
    v227 = v168;
    sub_26AF80110(v164, v166);
    sub_26AE94B4C(v166, v160, v168);
    sub_26AF80044(v166);
    sub_26AF80110(v168, v166);
    v56 = sub_26AF75CF4();
    sub_26AE94CA8(v166, v173, v160, v56, v80, v188);
    sub_26AF80044(v166);
    sub_26AF80270(v188, v190);
    sub_26AF80044(v168);
    sub_26AF80044(v164);
  }

  sub_26AF804C0(v190, v188);
  sub_26AF75C4C();
  sub_26AE94B4C(v188, v185, v146);
  sub_26AF808BC(v188);
  return sub_26AF808BC(v190);
}

BOOL sub_26AF579C0(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_26AF57AA8@<X0>(uint64_t a1@<X8>)
{
  v52 = 0;
  v53 = 0;
  v50 = sub_26B079970();
  v51 = v1 & 1;
  v15 = MEMORY[0x277CE1180];
  sub_26AE9463C(&v50, MEMORY[0x277CE1180], &v52);
  sub_26B079D00("[Internal] Loading the SU catalog from cache…", 47, 0);
  v39 = sub_26B0792B0();
  v40 = v2;
  v41 = v3;
  v42 = v4;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_26B079220();
  v35 = v39;
  v36 = v9;
  v37 = v10 & 1;
  v38 = v11;
  v31 = sub_26B0792A0();
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v12 = v5;
  v13 = v6;
  v14 = v7;

  sub_26AE95AFC(v39, v9, v10 & 1);

  v28[0] = v31;
  v28[1] = v12;
  v29 = v13 & 1;
  v30 = v14;
  sub_26B079570();
  sub_26AE95B40(v28);
  v23[0] = v43;
  v23[1] = v44;
  v24 = v45 & 1;
  v25 = v46;
  v26 = v47;
  v27 = v48;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD7F0, &qword_26B08CA70);
  sub_26AF81154();
  sub_26AE9463C(v23, v16, v49);
  sub_26AF81280(v23);
  v20 = v52;
  v21 = v53;
  v22[0] = &v20;
  sub_26AF812D4(v49, v19);
  v22[1] = v19;
  v18[0] = v15;
  v18[1] = v16;
  sub_26AFD49C4(v22, 2uLL, v18, a1);
  sub_26AF81280(v19);
  return sub_26AF81280(v49);
}

uint64_t sub_26AF57D74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v32 = &unk_26B08CA50;
  v36 = 0;
  v37[5] = a2;
  v37[4] = a3;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = a4;
  v37[3] = a5;
  v31 = 0;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v37);
  v18 = *(updated - 1);
  v22 = v18;
  v23 = *(v18 + 64);
  v19 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v30 = &v17 - v19;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v34 = &v17 - v20;
  v36 = v5;
  sub_26B07A140();
  v6 = sub_26B07A160();
  (*(*(v6 - 8) + 56))(v34, 0, 1);
  sub_26AEF6558(v21, v30, updated);
  v28 = (*(v22 + 80) + 64) & ~*(v22 + 80);
  v7 = swift_allocObject();
  v8 = v24;
  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = updated;
  v14 = v7;
  v15 = v30;
  v33 = v14;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v10;
  v14[7] = v11;
  sub_26AF68AA4(v15, v14 + v12, v13);
  v35 = sub_26AF449A0(v31, v31, v34, v32, v33, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v34);
}

uint64_t sub_26AF57FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[12] = a7;
  v8[11] = a6;
  v8[10] = a5;
  v8[9] = a4;
  v8[6] = v8;
  v8[7] = 0;
  v8[8] = 0;
  v9 = sub_26B078580();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[7] = a4;

  return MEMORY[0x2822009F8](sub_26AF58108, 0, 0);
}

uint64_t sub_26AF58108()
{
  *(v0 + 48) = v0;
  sub_26B07A130();
  *(v0 + 136) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF581A8, v3, v1);
}

uint64_t sub_26AF581A8()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[10];
  v0[6] = v0;
  v0[2] = v4;
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  updated = type metadata accessor for SoftwareUpdateContentView(0, (v0 + 2));
  v0[18] = sub_26AF45C88(updated);

  v6 = swift_task_alloc();
  *(v8 + 152) = v6;
  *v6 = *(v8 + 48);
  v6[1] = sub_26AF582AC;

  return ReactiveUIManager.checkForAvailableUpdates(_:)(1);
}

uint64_t sub_26AF582AC(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[20] = a1;
  v5[21] = v1;

  if (v1)
  {
    v3 = sub_26AF584D4;
  }

  else
  {

    v3 = sub_26AF58430;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AF58430()
{
  v1 = *(v0 + 160);
  *(v0 + 48) = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(*(v0 + 48) + 8);

  return v2();
}

uint64_t sub_26AF584D4()
{
  v33 = v0;
  v14 = v0[21];
  v0[6] = v0;

  MEMORY[0x26D66E1D0](v14);
  v0[8] = v14;
  sub_26B078550();
  MEMORY[0x26D66E1D0](v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  sub_26AED0174();

  v26 = sub_26B078570();
  v27 = sub_26B07A2C0();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26AF58DC8;
  *(v15 + 24) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AF7FBC8;
  *(v21 + 24) = v15;
  v22 = swift_allocObject();
  *(v22 + 16) = 64;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AF7F718;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AF7FCC8;
  *(v18 + 24) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AF7FD14;
  *(v24 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v25 = v1;

  *v25 = sub_26AF7FB4C;
  v25[1] = v19;

  v25[2] = sub_26AF7FB80;
  v25[3] = v20;

  v25[4] = sub_26AF7FC14;
  v25[5] = v21;

  v25[6] = sub_26AF7FC4C;
  v25[7] = v22;

  v25[8] = sub_26AF7FC80;
  v25[9] = v23;

  v25[10] = sub_26AF7FD60;
  v25[11] = v24;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v26, v27))
  {
    buf = sub_26B07A420();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v11 = sub_26AEA3B70(1, v9, v9);
    v12 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v28 = buf;
    v29 = v11;
    v30 = v12;
    sub_26AEA3BC4(2, &v28);
    sub_26AEA3BC4(2, &v28);
    v31 = sub_26AF7FB4C;
    v32 = v19;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF7FB80;
    v32 = v20;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF7FC14;
    v32 = v21;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF7FC4C;
    v32 = v22;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF7FC80;
    v32 = v23;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF7FD60;
    v32 = v24;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_26AE88000, v26, v27, "SoftwareUpdateContentView.%s: Failed to execute manager.checkForAvailableUpdates: %@", buf, 0x16u);
    sub_26AEA3C24(v11, 1, v9);
    sub_26AEA3C24(v12, 1, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v13[21];
  v6 = v13[16];
  v7 = v13[14];
  v5 = v13[15];
  v2 = MEMORY[0x277D82BD8](v26);
  (*(v5 + 8))(v6, v7, v2);

  v3 = *(v13[6] + 8);

  return v3();
}

uint64_t sub_26AF58E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a6;
  v87 = a1;
  v100 = a2;
  v101 = a3;
  v102 = a4;
  v103 = a5;
  v88 = "The parameter is the OS version";
  v127 = 0;
  v119 = 0;
  v129 = a2;
  v128 = a3;
  v104 = 0;
  v89 = sub_26B079DC0();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v93 = &v49[-v92];
  v94 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v95 = &v49[-v94];
  v96 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v97 = &v49[-v96];
  v98 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v104);
  v99 = &v49[-v98];
  v105 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v104);
  v106 = &v49[-v105];
  v127 = a1;
  v126[0] = v12;
  v126[1] = v13;
  v126[2] = v14;
  v126[3] = v15;
  updated = type metadata accessor for SoftwareUpdateContentView(v16, v126);
  v108 = sub_26AF45C88(updated);
  v109 = ReactiveUIManager.isDelayingUpdate()();

  if (v109)
  {
    HIDWORD(v82) = 1;
    sub_26B079D00("Software update availability is being managed by your administrator.", 68, 1);
    sub_26B079D80();
    v83 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v83);
    sub_26AEFB5C4();
    v110 = 0;
    v111 = 0;
    v112 = *(&v82 + 3) & 0x100;
    v85 = sub_26B079E40();
    v84 = v17;
    v86[3] = MEMORY[0x277D837D0];
    v18 = sub_26AE95974();
    v19 = v84;
    v20 = v86;
    v21 = v18;
    result = v85;
    v86[4] = v21;
    *v20 = result;
    v20[1] = v19;
  }

  else
  {
    v81 = sub_26AF45C88(updated);
    LODWORD(v82) = ReactiveUIManager.hasSUPathRestrictions()();

    if (v82)
    {
      HIDWORD(v77) = 1;
      sub_26B079D00("Your ProductFamilyName is running the latest software update allowed by your administrator.", 91, 1);
      sub_26B079D80();
      v78 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v78);
      sub_26AEFB5C4();
      v113 = 0;
      v114 = 0;
      v115 = *(&v77 + 3) & 0x100;
      v80 = sub_26B079E40();
      v79 = v23;
      v86[3] = MEMORY[0x277D837D0];
      v24 = sub_26AE95974();
      v25 = v79;
      v26 = v86;
      v27 = v24;
      result = v80;
      v86[4] = v27;
      *v26 = result;
      v26[1] = v25;
    }

    else
    {
      v76 = sub_26AF45C88(updated);
      LODWORD(v77) = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

      if (v77)
      {
        v72 = sub_26AF45718(updated);
        v73 = sub_26B0784E0();
        v74 = v28;

        v75 = String.majorVersion()();

        if (v75.value._object)
        {
          v71 = v75;
          object = v75.value._object;
          countAndFlagsBits = v75.value._countAndFlagsBits;
          v119 = v75;
          sub_26B079DB0();
          v56 = 1;
          sub_26B079D00("OSName ", 7, 1);
          v54 = v37;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00(" is up to date.", 15, v56 & 1);
          v57 = v38;
          sub_26B079DA0();

          (*(v90 + 16))(v95, v97, v89);
          (*(v90 + 32))(v93, v95, v89);
          (*(v90 + 8))(v97, v89);
          sub_26B079DD0();
          v58 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v58);
          sub_26AEFB5C4();
          v116 = v88;
          v117 = 31;
          v118 = 2;
          v59 = sub_26B079E40();
          v60 = v39;
          v86[3] = MEMORY[0x277D837D0];
          v40 = sub_26AE95974();
          v41 = v59;
          v42 = v60;
          v43 = v86;
          v86[4] = v40;
          *v43 = v41;
          v43[1] = v42;
        }

        else
        {
          sub_26B079DB0();
          v66 = 1;
          sub_26B079D00("OSName ", 7, 1);
          v62 = v29;
          sub_26B079DA0();

          v63 = sub_26AF45718(updated);
          v64 = sub_26B0784E0();
          v65 = v30;

          sub_26B079D90();

          sub_26B079D00(" is up to date.", 15, v66 & 1);
          v67 = v31;
          sub_26B079DA0();

          (*(v90 + 16))(v95, v97, v89);
          (*(v90 + 32))(v93, v95, v89);
          (*(v90 + 8))(v97, v89);
          sub_26B079DD0();
          v68 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v68);
          sub_26AEFB5C4();
          v120 = v88;
          v121 = 31;
          v122 = 2;
          v70 = sub_26B079E40();
          v69 = v32;
          v86[3] = MEMORY[0x277D837D0];
          v33 = sub_26AE95974();
          v34 = v69;
          v35 = v86;
          v36 = v33;
          result = v70;
          v86[4] = v36;
          *v35 = result;
          v35[1] = v34;
        }
      }

      else
      {
        *&v50[1] = 1;
        sub_26B079D00("OSName is up to date", 20, 1);
        sub_26B079D80();
        v51 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v51);
        sub_26AEFB5C4();
        v123 = 0;
        v124 = 0;
        v125 = *v50 & 0x100;
        v53 = sub_26B079E40();
        v52 = v44;
        v86[3] = MEMORY[0x277D837D0];
        v45 = sub_26AE95974();
        v46 = v52;
        v47 = v86;
        v48 = v45;
        result = v53;
        v86[4] = v48;
        *v47 = result;
        v47[1] = v46;
      }
    }
  }

  return result;
}

uint64_t sub_26AF59A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a5;
  v57 = a4;
  v58 = a3;
  v59 = a2;
  v92 = a1;
  v60 = a6;
  v71 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v115 = a2;
  v114 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
  v62 = *(v61 - 8);
  v63 = v62;
  v65 = *(v62 + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = v26 - v67;
  MEMORY[0x28223BE20](v26 - v67);
  v66 = v26 - v67;
  MEMORY[0x28223BE20](v6);
  v68 = v26 - v67;
  v113 = v26 - v67;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD730, &qword_26B08CA40);
  v69 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v70 = v26 - v69;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
  v73 = *(v72 - 8);
  v74 = v73;
  v76 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v26 - v78;
  MEMORY[0x28223BE20](v8);
  v77 = v26 - v78;
  MEMORY[0x28223BE20](v9);
  v79 = v26 - v78;
  v112 = v26 - v78;
  v80 = sub_26B079C30();
  v81 = *(v80 - 8);
  v82 = v81;
  MEMORY[0x28223BE20](v80 - 8);
  v83 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  v85 = *(v84 - 8);
  v86 = v85;
  v88 = *(v85 + 64);
  MEMORY[0x28223BE20](v84 - 8);
  v90 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = v26 - v90;
  MEMORY[0x28223BE20](v26 - v90);
  v89 = v26 - v90;
  MEMORY[0x28223BE20](v11);
  v91 = v26 - v90;
  v111 = v26 - v90;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
  v95 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = v26 - v97;
  MEMORY[0x28223BE20](v12);
  v96 = v26 - v97;
  v14 = MEMORY[0x28223BE20](v13);
  v98 = v26 - v97;
  v110 = v26 - v97;
  v109 = v15;
  sub_26B079D00("PSGSoftwareVersionController", 28, 1, v14);
  v99 = v16;
  v100 = sub_26B079DF0();

  v102 = NSClassFromString(v100);
  v101 = v102;

  if (v102)
  {
    v55 = v101;
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v53 = ObjCClassMetadata;
  if (ObjCClassMetadata)
  {
    v52 = v53;
    v48 = v53;
    v103 = &unk_287BC21E8;
    v17 = swift_dynamicCastTypeToObjCProtocolConditional();
    v49 = v17;
    v50 = 0;
    if (v17)
    {
      v18 = sub_26AF7F044();
      v50 = dynamic_cast_existential_0_superclass_conditional(v49, v48, v18);
    }

    v47 = v50;
    if (v50)
    {
      v46 = v47;
    }

    else
    {
      v46 = 0;
    }

    v51 = v46;
  }

  else
  {
    v51 = 0;
  }

  v45 = v51;
  if (v51)
  {
    v44 = v45;
    v42 = v45;
    v108 = v45;
    v107[0] = v59;
    v107[1] = v58;
    v107[2] = v57;
    v107[3] = v56;
    updated = type metadata accessor for SoftwareUpdateContentView(0, v107);
    sub_26AF46360(updated, v83);
    v43 = sub_26B079C20();
    (*(v82 + 8))(v83, v80);
    if (v43)
    {
      sub_26B078420();
      v37 = 0;
      v38 = sub_26B078430();
      (*(*(v38 - 8) + 56))(v70, 0, 1);
      sub_26AF7EF74();
      sub_26B078BA0();
      v39 = sub_26AF7728C();
      sub_26AE9463C(v77, v72, v79);
      v40 = *(v74 + 8);
      v41 = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v40(v77, v72);
      v104 = v77;
      v36 = *(v74 + 16);
      v35 = v74 + 16;
      v36(v75, v79, v72);
      sub_26AE94B4C(v75, v72, v77);
      v40(v75, v72);
      v36(v75, v77, v72);
      v20 = sub_26AF77314();
      sub_26AE94BB0(v75, v72, v61, v39, v20, v89);
      v40(v75, v72);
      sub_26AF7EC74(v89, v91);
      v40(v77, v72);
      v40(v79, v72);
    }

    else
    {
      v31 = v26;
      MEMORY[0x28223BE20](v26);
      v28 = &v26[-4];
      v26[-2] = v21;
      v29 = 0;
      v30 = sub_26B078410();
      v23 = sub_26AF7EBF4(v22);
      sub_26AF45650(sub_26AF7EBEC, sub_26AF5AE7C, v29, MEMORY[0x277CE0BD8], v30, MEMORY[0x277CE0BC8], v23, v66);
      v32 = sub_26AF77314();
      sub_26AE9463C(v66, v61, v68);
      v33 = *(v63 + 8);
      v34 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v33(v66, v61);
      v106 = v66;
      v27 = *(v63 + 16);
      v26[1] = v63 + 16;
      v27(v64, v68, v61);
      sub_26AE94B4C(v64, v61, v66);
      v33(v64, v61);
      v27(v64, v66, v61);
      v24 = sub_26AF7728C();
      sub_26AE94CA8(v64, v72, v61, v24, v32, v89);
      v33(v64, v61);
      sub_26AF7EC74(v89, v91);
      v33(v66, v61);
      v33(v68, v61);
    }

    v105 = v89;
    sub_26AF7ED84(v91, v87);
    v26[0] = sub_26AF771E4();
    sub_26AE94B4C(v87, v84, v89);
    sub_26AF7EE94(v87);
    sub_26AF7ED84(v89, v94);
    (*(v86 + 56))(v94, 0, 1, v84);
    sub_26AF09CCC(v94, v84, v96);
    sub_26AF7E6E8(v94);
    sub_26AF7E81C(v96, v98);
    sub_26AF7EE94(v89);
    sub_26AF7EE94(v91);
  }

  else
  {
    (*(v86 + 56))(v94, 1, 1, v84);
    sub_26AF771E4();
    sub_26AF09CCC(v94, v84, v96);
    sub_26AF7E6E8(v94);
    sub_26AF7E81C(v96, v98);
  }

  sub_26AF7EA04(v98, v96);
  sub_26AF7714C();
  sub_26AE94B4C(v96, v93, v60);
  sub_26AF7E6E8(v96);
  return sub_26AF7E6E8(v98);
}

uint64_t sub_26AF5A8FC@<X0>(uint64_t a1@<X8>)
{
  v58 = 0u;
  v59 = 0u;
  HIBYTE(v25) = 1;
  sub_26B079D00("More Details", 12, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v55 = 0;
  v56 = 0;
  v57 = v25 & 0x100;
  LOWORD(v13) = v25 & 0x100;
  v51 = sub_26B0792C0();
  v52 = v2;
  v53 = v3;
  v54 = v4;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v5 = [objc_opt_self() linkColor];
  sub_26B079750();
  v47 = v51;
  v48 = v14;
  v49 = v15 & 1;
  v50 = v16;
  v43 = sub_26B079280();
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v17 = v6;
  v18 = v7;
  v19 = v8;

  sub_26AE95AFC(v51, v14, v15 & 1);

  sub_26B0791E0();
  v39 = v43;
  v40 = v17;
  v41 = v18 & 1;
  v42 = v19;
  v35 = sub_26B0792A0();
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v20 = v9;
  v21 = v10;
  v22 = v11;

  sub_26AE95AFC(v43, v17, v18 & 1);

  v32[0] = v35;
  v32[1] = v20;
  v33 = v21 & 1;
  v34 = v22;
  v28 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v32, MEMORY[0x277CE0BD8], &v58);
  sub_26AE95B40(v32);
  v23 = v58;
  v24 = v59;
  v26 = *(&v59 + 1);
  sub_26AE95D28(v58, *(&v58 + 1), v59 & 1);
  sub_26B078640();
  v29 = v23;
  v30 = v24 & 1;
  v31 = v26;
  sub_26AE94B4C(&v29, v28, a1);
  sub_26AE95B40(&v29);
  return sub_26AE95B40(&v58);
}

uint64_t sub_26AF5AC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v8 = a1;
  v23 = 0;
  v22 = 0;
  v6 = 0;
  v7 = (*(*(sub_26B078430() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v7;
  v19 = sub_26B078410();
  v13 = *(v19 - 8);
  v14 = v19 - 8;
  v10 = *(v13 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v17 = &v6 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v18 = &v6 - v11;
  v23 = &v6 - v11;
  v22 = v3;
  sub_26B078420();
  sub_26B078400();
  v16 = sub_26AF7EBF4(v4);
  sub_26AE9463C(v17, v19, v18);
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v17, v19);
  (*(v13 + 16))(v17, v18, v19);
  sub_26AE94B4C(v17, v19, v15);
  v21(v17, v19);
  return (v21)(v18, v19);
}

uint64_t sub_26AF5AE7C@<X0>(uint64_t a1@<X8>)
{
  v58 = 0u;
  v59 = 0u;
  HIBYTE(v25) = 1;
  sub_26B079D00("More Details", 12, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v55 = 0;
  v56 = 0;
  v57 = v25 & 0x100;
  LOWORD(v13) = v25 & 0x100;
  v51 = sub_26B0792C0();
  v52 = v2;
  v53 = v3;
  v54 = v4;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v5 = [objc_opt_self() linkColor];
  sub_26B079750();
  v47 = v51;
  v48 = v14;
  v49 = v15 & 1;
  v50 = v16;
  v43 = sub_26B079280();
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v17 = v6;
  v18 = v7;
  v19 = v8;

  sub_26AE95AFC(v51, v14, v15 & 1);

  sub_26B0791E0();
  v39 = v43;
  v40 = v17;
  v41 = v18 & 1;
  v42 = v19;
  v35 = sub_26B0792A0();
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v20 = v9;
  v21 = v10;
  v22 = v11;

  sub_26AE95AFC(v43, v17, v18 & 1);

  v32[0] = v35;
  v32[1] = v20;
  v33 = v21 & 1;
  v34 = v22;
  v28 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v32, MEMORY[0x277CE0BD8], &v58);
  sub_26AE95B40(v32);
  v23 = v58;
  v24 = v59;
  v26 = *(&v59 + 1);
  sub_26AE95D28(v58, *(&v58 + 1), v59 & 1);
  sub_26B078640();
  v29 = v23;
  v30 = v24 & 1;
  v31 = v26;
  sub_26AE94B4C(&v29, v28, a1);
  sub_26AE95B40(&v29);
  return sub_26AE95B40(&v58);
}

uint64_t sub_26AF5B1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[6] = a2;
  v7[5] = a3;
  v7[4] = a1;
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v7);
  return sub_26AF46CFC(1, updated);
}

uint64_t sub_26AF5B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a7;
  v49 = a1;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v89 = a6;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v102 = 0;
  v100 = 0;
  v98 = 0;
  v121 = a3;
  v120 = a4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v52 = &v28 - v51;
  v53 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v51);
  v54 = &v28 - v53;
  v55 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v53);
  v56 = &v28 - v55;
  v119 = &v28 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v61 = &v28 - v60;
  v62 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v60);
  v63 = &v28 - v62;
  v64 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v62);
  v65 = &v28 - v64;
  v118 = &v28 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v68 = &v28 - v67;
  v69 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v67);
  v70 = &v28 - v69;
  v71 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v69);
  v72 = &v28 - v71;
  v117 = &v28 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
  v74 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v75 = &v28 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v80 = &v28 - v79;
  v81 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v79);
  v82 = &v28 - v81;
  v83 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v81);
  v84 = &v28 - v83;
  v116 = &v28 - v83;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD208, qword_26B08BFA8);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90);
  v92 = &v28 - v91;
  v93 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v91);
  v94 = &v28 - v93;
  v115 = &v28 - v93;
  v114 = a1;
  v113 = v17;
  v112[0] = v18;
  v112[1] = v19;
  v112[2] = v20;
  v112[3] = v21;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v112);
  v96 = sub_26AF45C88(updated);
  v97 = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

  if (v97)
  {
    sub_26AF5C300(v85, updated, v75);
    v46 = &v99;
    v99 = 19;
    sub_26AF6FB30();
    View.suuiIdentifiable(_:)();
    sub_26AF79380(v75);
    v47 = sub_26AF6FA88();
    sub_26AE9463C(v82, v76, v84);
    sub_26AF881CC(v82);
    v98 = v82;
    sub_26AF882CC(v84, v80);
    sub_26AE94B4C(v80, v76, v82);
    sub_26AF881CC(v80);
    sub_26AF882CC(v82, v80);
    v22 = sub_26AF6FD04();
    sub_26AE94BB0(v80, v76, v66, v47, v22, v92);
    sub_26AF881CC(v80);
    sub_26AF87188(v92, v94);
    sub_26AF881CC(v82);
    sub_26AF881CC(v84);
  }

  else
  {
    v44 = sub_26AF45C88(updated);
    v45 = ReactiveUIManager.alternateDescriptor.getter();
    if (v45)
    {
      v43 = v45;
      v40 = v45;
      v110 = v45;

      v41 = sub_26AF45C88(updated);
      v23 = ReactiveUIManager.currentDownload.getter();
      v42 = v23;
      if (v23)
      {
        v39 = v42;
        v34 = v42;
        v105 = v42;

        KeyPath = swift_getKeyPath();
        ReactiveDownload.subscript.getter(KeyPath, &v104);
        v36 = v104;

        if (v36)
        {
          v102 = v84;
          sub_26AF5C300(v40, updated, v75);
          v32 = &v101;
          v101 = 18;
          sub_26AF6FB30();
          View.suuiIdentifiable(_:)();
          sub_26AF79380(v75);
          v33 = sub_26AF6FA88();
          sub_26AE9463C(v82, v76, v84);
          sub_26AF881CC(v82);
          v100 = v82;
          sub_26AF882CC(v84, v80);
          sub_26AE94B4C(v80, v76, v82);
          sub_26AF881CC(v80);
          sub_26AF882CC(v82, v52);
          (*(v77 + 56))(v52, 0, 1, v76);
          sub_26AF09CCC(v52, v76, v54);
          sub_26AF88E78(v52);
          sub_26AF88FBC(v54, v56);
          sub_26AF881CC(v82);
          sub_26AF881CC(v84);
        }

        else
        {
          (*(v77 + 56))(v52, 1, 1, v76);
          sub_26AF6FA88();
          sub_26AF09CCC(v52, v76, v54);
          sub_26AF88E78(v52);
          sub_26AF88FBC(v54, v56);
        }

        v103 = v54;
        sub_26AF891CC(v56, v52);
        v31 = sub_26AF6FE44();
        sub_26AE94B4C(v52, v50, v54);
        sub_26AF88E78(v52);
        sub_26AF891CC(v54, v52);
        v25 = sub_26AF6FA88();
        sub_26AE94BB0(v52, v50, v76, v31, v25, v63);
        sub_26AF88E78(v52);
        sub_26AF88464(v63, v65);
        sub_26AF88E78(v54);
        sub_26AF88E78(v56);
      }

      else
      {

        v109 = v84;
        sub_26AF5C300(v40, updated, v75);
        v37 = &v108;
        v108 = 18;
        sub_26AF6FB30();
        View.suuiIdentifiable(_:)();
        sub_26AF79380(v75);
        v38 = sub_26AF6FA88();
        sub_26AE9463C(v82, v76, v84);
        sub_26AF881CC(v82);
        v107 = v82;
        sub_26AF882CC(v84, v80);
        sub_26AE94B4C(v80, v76, v82);
        sub_26AF881CC(v80);
        sub_26AF882CC(v82, v80);
        v24 = sub_26AF6FE44();
        sub_26AE94CA8(v80, v50, v76, v24, v38, v63);
        sub_26AF881CC(v80);
        sub_26AF88464(v63, v65);
        sub_26AF881CC(v82);
        sub_26AF881CC(v84);
      }

      v106 = v63;
      sub_26AF887F4(v65, v61);
      v30 = sub_26AF6FD9C();
      sub_26AE94B4C(v61, v57, v63);
      sub_26AF88C04(v61);
      sub_26AF887F4(v63, v68);
      (*(v58 + 56))(v68, 0, 1, v57);
      sub_26AF09CCC(v68, v57, v70);
      sub_26AF86594(v68);
      sub_26AF86838(v70, v72);
      sub_26AF88C04(v63);
      sub_26AF88C04(v65);
    }

    else
    {

      (*(v58 + 56))(v68, 1, 1, v57);
      sub_26AF6FD9C();
      sub_26AF09CCC(v68, v57, v70);
      sub_26AF86594(v68);
      sub_26AF86838(v70, v72);
    }

    v111 = v70;
    sub_26AF86CA0(v72, v68);
    v29 = sub_26AF6FD04();
    sub_26AE94B4C(v68, v66, v70);
    sub_26AF86594(v68);
    sub_26AF86CA0(v70, v68);
    v26 = sub_26AF6FA88();
    sub_26AE94CA8(v68, v76, v66, v26, v29, v92);
    sub_26AF86594(v68);
    sub_26AF87188(v92, v94);
    sub_26AF86594(v70);
    sub_26AF86594(v72);
  }

  sub_26AF87770(v94, v92);
  sub_26AF6F9E0();
  sub_26AE94B4C(v92, v90, v48);
  sub_26AF87E1C(v92);
  return sub_26AF87E1C(v94);
}

uint64_t sub_26AF5C300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v18 = a1;
  v24 = a2;
  v17 = sub_26AF79064;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v8 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v22 = &v8 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
  v9 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v28 = &v8 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
  v11 = *(*(v30 - 8) + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v32 = &v8 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v33 = &v8 - v12;
  v45 = &v8 - v12;
  v44 = v4;
  v43 = v5;
  v13 = *(v6 + 16);
  v42 = v13;
  v14 = *(v6 + 24);
  v41 = v14;

  v15 = &v34;
  v35 = v13;
  v36 = v14;
  v37 = *(v24 + 32);
  v38 = *(v24 + 40);
  v39 = v18;
  v40 = v19;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD520, &qword_26B08C158);
  sub_26AF79090();
  sub_26B079240();

  sub_26AF6FC7C();
  sub_26B079700();
  (*(v20 + 8))(v22, v23);
  v25 = sub_26AF45C88(v24);
  v27 = ReactiveUIManager.isBusy.getter();

  sub_26AF6FBD8();
  sub_26B0796A0();
  sub_26AF79318(v28);
  v31 = sub_26AF6FB30();
  sub_26AE9463C(v32, v30, v33);
  sub_26AF79380(v32);
  sub_26AF79424(v33, v32);
  sub_26AE94B4C(v32, v30, v29);
  sub_26AF79380(v32);
  return sub_26AF79380(v33);
}

uint64_t sub_26AF5C6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a7;
  v29 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v24 = 0;
  v28 = sub_26AF7D814;
  v23 = sub_26AF5FFE4;
  v25 = sub_26AF7D840;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v56 = a3;
  v55 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD520, &qword_26B08C158);
  v30 = *(v36 - 8);
  v31 = v36 - 8;
  v13 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v34 = &v13 - v13;
  v14 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v35 = &v13 - v14;
  v54 = &v13 - v14;
  v53 = v9;
  v52 = v10;

  v22 = &v45;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v50 = v29;
  v51 = v19;
  v26 = &v39;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD538, &qword_26B08C160);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
  v21 = sub_26AF79144();
  v11 = sub_26AF6B948();
  sub_26AF60E90(v28, v22, v25, v26, MEMORY[0x277CE0BD8], v27, v34, v20, MEMORY[0x277CE0BC8], v21, v11);

  v33 = sub_26AF79090();
  sub_26AE9463C(v34, v36, v35);
  v38 = *(v30 + 8);
  v37 = v30 + 8;
  v38(v34, v36);
  (*(v30 + 16))(v34, v35, v36);
  sub_26AE94B4C(v34, v36, v32);
  v38(v34, v36);
  return (v38)(v35, v36);
}

uint64_t sub_26AF5CAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a7;
  v38 = a1;
  v31 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v32 = sub_26AF7DA10;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v64 = a3;
  v63 = a4;
  v20 = 0;
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v14 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v26 = (&v13 - v14);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD680, &qword_26B08C948);
  v15 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v37 = &v13 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD558, &qword_26B08C170);
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v16 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v41 = &v13 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD548, &qword_26B08C168);
  v17 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v45 = &v13 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD538, &qword_26B08C160);
  v18 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v49 = &v13 - v18;
  v19 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v50 = &v13 - v19;
  v62 = &v13 - v19;
  v61 = v10;
  v60 = a2;

  AlternateUpdateContentView.init(presenting:)(v38, v26);
  v59[0] = v27;
  v59[1] = v28;
  v59[2] = v29;
  v59[3] = v30;
  v21 = type metadata accessor for SoftwareUpdateContentView(v20, v59);
  v25 = sub_26AF45C88(v21);
  v24 = sub_26AF45718(v21);
  v23 = sub_26AF45E24(v21);
  v11 = sub_26AF7D868();
  View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)(v25, v24, v23, updated, v11, v37);

  sub_26AF7D8E8(v26);

  v33 = &v51;
  v52 = v27;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = v31;
  v57 = v38;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD690, &qword_26B08C950);
  v36 = sub_26AF7DA3C();
  sub_26AF7DC9C();
  sub_26B078B90();

  sub_26AF79290();
  sub_26B079660();
  (*(v39 + 8))(v41, v42);
  v44 = &v58;
  v58 = 18;
  sub_26AF791EC();
  View.suuiIdentifiable(_:)();
  sub_26AF7DD44(v45);
  v48 = sub_26AF79144();
  sub_26AE9463C(v49, v47, v50);
  sub_26AF7DDAC(v49);
  sub_26AF7DE70(v50, v49);
  sub_26AE94B4C(v49, v47, v46);
  sub_26AF7DDAC(v49);
  return sub_26AF7DDAC(v50);
}

uint64_t sub_26AF5D08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a7;
  v15 = a1;
  v27 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v26 = sub_26AF7DF8C;
  v21 = sub_26AF7DFB8;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v55 = a3;
  v54 = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD690, &qword_26B08C950);
  v28 = *(v34 - 8);
  v29 = v34 - 8;
  v13 = *(v28 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v32 = &v11 - v12;
  v14 = v12;
  MEMORY[0x28223BE20](v7);
  v33 = &v11 - v14;
  v53 = &v11 - v14;
  v52 = v8;
  v51 = v9;

  v20 = &v44;
  v45 = v16;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  v49 = v15;
  v50 = v27;

  v22 = &v37;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v27;
  v43 = v15;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6A8, &qword_26B08C958);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6B8, &qword_26B08C960);
  v25 = sub_26AF7DAE4();
  sub_26AF7DB6C();
  sub_26B078B70();

  v31 = sub_26AF7DA3C();
  sub_26AE9463C(v32, v34, v33);
  v36 = *(v28 + 8);
  v35 = v28 + 8;
  v36(v32, v34);
  (*(v28 + 16))(v32, v33, v34);
  sub_26AE94B4C(v32, v34, v30);
  v36(v32, v34);
  return (v36)(v33, v34);
}

uint64_t sub_26AF5D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v201 = 0;
  memset(__b, 0, 0x21uLL);
  v169 = 0u;
  v170 = 0u;
  v157 = 0u;
  v158 = 0u;
  memset(v145, 0, 0x21uLL);
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v121 = 0u;
  v122 = 0u;
  v220 = a3;
  v219 = a4;
  v218 = a1;
  v217 = a2;
  v211[0] = a3;
  v211[1] = a4;
  v211[2] = a5;
  v211[3] = a6;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v211);
  sub_26AF45C88(updated);
  v108 = ReactiveUIManager.currentDownload.getter();
  if (v108)
  {
    v201 = v108;

    sub_26AF45C88(updated);
    v89 = ReactiveUIManager.targetedDescriptor.getter();

    v194 = v89;
    v195 = a2;
    if (v89)
    {
      sub_26AF7E6B0(&v194, &v109);
      if (v195)
      {
        v87 = static ReactiveDescriptor.== infix(_:_:)(v109, v195);

        sub_26AF7E684();
        v88 = v87;
        goto LABEL_10;
      }
    }

    else if (!v195)
    {
      sub_26AF7E684();
      v88 = 1;
LABEL_10:

      if ((v88 & 1) == 0)
      {
        memset(v187, 0, sizeof(v187));
        v188 = -1;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
        sub_26AEB349C();
        sub_26AF09CCC(v187, v29, &v189);
        v30 = v189;
        v31 = v190;
        v32 = v191;
        v33 = v192;
        v34 = v193;
        sub_26AF7E500(v189, v190, v191, v192, v193);
        v196 = v30;
        v197 = v31;
        v198 = v32;
        v199 = v33;
        v200 = v34;
        v46 = v30;
        v47 = v31;
        v48 = v32;
        v49 = v33;
        v50 = v34;
LABEL_22:
        v180[0] = v46;
        v180[1] = v47;
        v180[2] = v48;
        v180[3] = v49;
        v181 = v50;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB50, &unk_26B090540);
        sub_26AF7DC04();
        sub_26AE94B4C(v180, v23, &v182);
        sub_26AF7E608(v180);
        v18 = v182;
        v19 = v183;
        v20 = v184;
        v21 = v185;
        v22 = v186;
        sub_26AF7E500(v182, v183, v184, v185, v186);
        v173[0] = v18;
        v173[1] = v19;
        v173[2] = v20;
        v173[3] = v21;
        v174 = v22;
        sub_26AF09CCC(v173, v23, &v175);
        sub_26AF7E560(v173);
        v24 = v175;
        v25 = v176;
        v26 = v177;
        v27 = v178;
        v28 = v179;
        sub_26AF7E4A4(v175, v176, v177, v178, v179);
        v212 = v24;
        v213 = v25;
        v214 = v26;
        v215 = v27;
        v216 = v28;
        sub_26AF7E608(&v182);
        sub_26AF7E608(&v196);

        v96 = v24;
        v97 = v25;
        v98 = v26;
        v99 = v27;
        v100 = v28;
        goto LABEL_23;
      }

      KeyPath = swift_getKeyPath();
      ReactiveDownload.subscript.getter(KeyPath, &v171);
      v86 = v171;
      if (v171)
      {
        v135 = v171;

        swift_getObjectType();
        swift_unknownObjectRetain();
        v84 = [v86 isDone];
        swift_unknownObjectRelease();
        if (v84)
        {
          HIBYTE(v73) = 1;
          sub_26B079D00("Downloaded", 10, 1);
          sub_26B078E10();
          v8 = sub_26B02D0D0();
          MEMORY[0x277D82BE0](*v8);
          v130 = 0;
          v131 = 0;
          v132 = v73 & 0x100;
          v126 = sub_26B0792C0();
          v127 = v9;
          v128 = v10;
          v129 = v11;
          v123[0] = v126;
          v123[1] = v9;
          v124 = v10 & 1;
          v125 = v11;
          v71 = MEMORY[0x277CE0BD8];
          v72 = MEMORY[0x277CE0BC8];
          sub_26AE9463C(v123, MEMORY[0x277CE0BD8], &v133);
          sub_26AE95B40(v123);
          v65 = v133;
          v66 = v134;
          v67 = *(&v134 + 1);
          sub_26AE95D28(v133, *(&v133 + 1), v134 & 1);
          sub_26B078640();
          v118 = v65;
          v119 = v66 & 1;
          v120 = v67;
          sub_26AE94B4C(&v118, v71, &v121);
          sub_26AE95B40(&v118);
          v68 = v121;
          v69 = v122;
          v70 = *(&v122 + 1);
          sub_26AE95D28(v121, *(&v121 + 1), v122 & 1);
          sub_26B078640();
          v110 = v68;
          v111 = v69 & 1;
          v112 = v70;
          sub_26AE94BB0(&v110, v71, v71, v72, v72, &v113);
          sub_26AE95B40(&v110);
          v75 = v113;
          v76 = v114;
          v77 = v115;
          v78 = v116;
          v74 = v117;
          sub_26AEB4364(v113, v114, v115, v116);
          __b[0] = v75;
          __b[1] = v76;
          __b[2] = v77;
          __b[3] = v78;
          LOBYTE(__b[4]) = v74 & 1;
          sub_26AE95B40(&v121);
          sub_26AE95B40(&v133);
          swift_unknownObjectRelease();
          v79 = v75;
          v80 = v76;
          v81 = v77;
          v82 = v78;
          v83 = v74;
LABEL_21:
          v143[0] = v79;
          v143[1] = v80;
          v143[2] = v81;
          v143[3] = v82;
          v144 = v83 & 1;
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
          sub_26AEB349C();
          sub_26AE94B4C(v143, v40, v145);
          sub_26AEB450C(v143);
          v35 = v145[0];
          v36 = v145[1];
          v37 = v145[2];
          v38 = v145[3];
          v39 = v145[4];
          sub_26AEB4364(v145[0], v145[1], v145[2], v145[3]);
          v136[0] = v35;
          v136[1] = v36;
          v136[2] = v37;
          v136[3] = v38;
          v137 = v39;
          sub_26AF09CCC(v136, v40, &v138);
          sub_26AF7E608(v136);
          v41 = v138;
          v42 = v139;
          v43 = v140;
          v44 = v141;
          v45 = v142;
          sub_26AF7E500(v138, v139, v140, v141, v142);
          v196 = v41;
          v197 = v42;
          v198 = v43;
          v199 = v44;
          v200 = v45;
          sub_26AEB450C(v145);
          sub_26AEB450C(__b);
          v46 = v41;
          v47 = v42;
          v48 = v43;
          v49 = v44;
          v50 = v45;
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      HIBYTE(v59) = 1;
      sub_26B079D00("Downloading", 11, 1);
      sub_26B078E10();
      v12 = sub_26B02D0D0();
      MEMORY[0x277D82BE0](*v12);
      v166 = 0;
      v167 = 0;
      v168 = v59 & 0x100;
      v162 = sub_26B0792C0();
      v163 = v13;
      v164 = v14;
      v165 = v15;
      v159[0] = v162;
      v159[1] = v13;
      v160 = v14 & 1;
      v161 = v15;
      v57 = MEMORY[0x277CE0BD8];
      v58 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v159, MEMORY[0x277CE0BD8], &v169);
      sub_26AE95B40(v159);
      v51 = v169;
      v52 = v170;
      v53 = *(&v170 + 1);
      sub_26AE95D28(v169, *(&v169 + 1), v170 & 1);
      sub_26B078640();
      v154 = v51;
      v155 = v52 & 1;
      v156 = v53;
      sub_26AE94B4C(&v154, v57, &v157);
      sub_26AE95B40(&v154);
      v54 = v157;
      v55 = v158;
      v56 = *(&v158 + 1);
      sub_26AE95D28(v157, *(&v157 + 1), v158 & 1);
      sub_26B078640();
      v146 = v54;
      v147 = v55 & 1;
      v148 = v56;
      sub_26AE94CA8(&v146, v57, v57, v58, v58, &v149);
      sub_26AE95B40(&v146);
      v61 = v149;
      v62 = v150;
      v63 = v151;
      v64 = v152;
      v60 = v153;
      sub_26AEB4364(v149, v150, v151, v152);
      __b[0] = v61;
      __b[1] = v62;
      __b[2] = v63;
      __b[3] = v64;
      LOBYTE(__b[4]) = v60 & 1;
      sub_26AE95B40(&v157);
      sub_26AE95B40(&v169);
      v79 = v61;
      v80 = v62;
      v81 = v63;
      v82 = v64;
      v83 = v60;
      goto LABEL_21;
    }

    sub_26AF7E5D0();
    v88 = 0;
    goto LABEL_10;
  }

  memset(v204, 0, sizeof(v204));
  v205 = -2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB50, &unk_26B090540);
  sub_26AF7DC04();
  sub_26AF09CCC(v204, v90, &v206);
  v91 = v206;
  v92 = v207;
  v93 = v208;
  v94 = v209;
  v95 = v210;
  sub_26AF7E4A4(v206, v207, v208, v209, v210);
  v212 = v91;
  v213 = v92;
  v214 = v93;
  v215 = v94;
  v216 = v95;
  v96 = v91;
  v97 = v92;
  v98 = v93;
  v99 = v94;
  v100 = v95;
LABEL_23:
  v202[0] = v96;
  v202[1] = v97;
  v202[2] = v98;
  v202[3] = v99;
  v203 = v100;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6B8, &qword_26B08C960);
  sub_26AF7DB6C();
  sub_26AE94B4C(v202, v17, a7);
  sub_26AF7E560(v202);
  return sub_26AF7E560(&v212);
}

uint64_t sub_26AF5E1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  v26 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v25 = sub_26AF7DFE4;
  v21 = sub_26AF7E010;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v47 = a3;
  v46 = a4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6A8, &qword_26B08C958);
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v13 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v31 = &v12 - v13;
  v14 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v32 = &v12 - v14;
  v45 = &v12 - v14;
  v44 = v9;
  v43 = v10;

  v20 = &v36;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v26;
  v42 = v19;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6F0, &qword_26B08C968);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6F8, &qword_26B08C970);
  v24 = sub_26AF7E018();
  sub_26AF7E0BC();
  sub_26B079870();

  v30 = sub_26AF7DAE4();
  sub_26AE9463C(v31, v33, v32);
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v35(v31, v33);
  (*(v27 + 16))(v31, v32, v33);
  sub_26AE94B4C(v31, v33, v29);
  v35(v31, v33);
  return (v35)(v32, v33);
}

uint64_t sub_26AF5E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v170 = &v215;
  v163 = a7;
  v164 = a1;
  v173 = a2;
  v171 = a3;
  v172 = a4;
  v165 = a5;
  v166 = a6;
  v167 = "1st parameter is the OS version, 2nd parameter is the OS build version";
  v296 = 0;
  v295 = 0;
  __c = 0;
  memset(__b, 0, 0x22uLL);
  __len = 33;
  memset(v290, 0, 0x21uLL);
  v287 = 0u;
  v288 = 0u;
  v273 = 0u;
  v274 = 0u;
  memset(v261, 0, 0x21uLL);
  v246 = 0u;
  v247 = 0u;
  v231 = 0u;
  v232 = 0u;
  v217 = 0;
  v218 = 0;
  v215 = 0u;
  v216 = 0u;
  v202 = 0u;
  v203 = 0u;
  v298 = v171;
  v297 = v172;
  v184 = 0;
  v174 = sub_26B078E00();
  v175 = *(v174 - 8);
  v176 = v174 - 8;
  v180 = *(v175 + 64);
  v177 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v174);
  v178 = &v35 - v177;
  v179 = v177;
  MEMORY[0x28223BE20](&v35 - v177);
  v181 = &v35 - v179;
  v182 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v35 - v179);
  v183 = &v35 - v182;
  v296 = a1;
  v295 = v8;
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v293);
  v187 = &v292;
  v292 = v293;
  v185 = &v291;
  v291 = 1;
  updated = type metadata accessor for SUUISoftwareUpdateVersionType(v184);
  sub_26AF7E2EC();
  v189 = sub_26B07A790();

  if ((v189 & 1) != 0 && (v161 = swift_getKeyPath(), ReactiveDescriptor.subscript.getter(v161, v219), v159 = v219[1], v9 = String.majorVersion()(), countAndFlagsBits = v9.value._countAndFlagsBits, object = v9.value._object, , , object))
  {
    v157 = countAndFlagsBits;
    v158 = object;
    v144 = object;
    v126 = countAndFlagsBits;
    v217 = countAndFlagsBits;
    v218 = object;
    v124 = 18;
    sub_26B078DF0();
    v141 = 1;
    sub_26B079D00("Upgrade to OSName ", v124, 1);
    v125 = v10;
    sub_26B078DE0();

    sub_26B078DD0();
    v128 = 0;
    sub_26B079D00("");
    v127 = v11;
    sub_26B078DE0();

    (*(v175 + 16))(v181, v183, v174);
    (*(v175 + 32))(v178, v181, v174);
    (*(v175 + 8))(v183, v174);
    sub_26B078E20();
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = v141 & 1;
    v207 = sub_26B0792C0();
    v208 = v12;
    v209 = v13;
    v210 = v14;
    v129 = v204;
    v204[0] = v207;
    v204[1] = v12;
    v205 = v13 & 1 & v141;
    v206 = v14;
    v143 = &v215;
    v137 = MEMORY[0x277CE0BD8];
    v139 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v204, MEMORY[0x277CE0BD8], &v215);
    sub_26AE95B40(v129);
    v130 = v215;
    v131 = v216;
    v132 = *(&v216 + 1);
    sub_26AE95D28(v215, *(&v215 + 1), v216 & 1);
    sub_26B078640();
    v133 = &v199;
    v199 = v130;
    v200 = v131 & 1 & v141;
    v201 = v132;
    v142 = &v202;
    sub_26AE94B4C(&v199, v137, &v202);
    sub_26AE95B40(v133);
    v134 = v202;
    v135 = v203;
    v136 = *(&v203 + 1);
    sub_26AE95D28(v202, *(&v202 + 1), v203 & 1);
    sub_26B078640();
    v140 = &v190;
    v190 = v134;
    v191 = v135 & 1 & v141;
    v192 = v136;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
    v15 = sub_26AEB349C();
    sub_26AE94BB0(v140, v137, v138, v139, v15, &v193);
    sub_26AE95B40(v140);
    v146 = v193;
    v147 = v194;
    v148 = v195;
    v149 = v196;
    v150 = v197;
    v145 = v198;
    sub_26AF7E36C(v193, v194, v195, v196, v197, v198 & 1);
    __b[0] = v146;
    __b[1] = v147;
    __b[2] = v148;
    __b[3] = v149;
    LOBYTE(__b[4]) = v150;
    BYTE1(__b[4]) = v145 & 1 & v141;
    sub_26AE95B40(v142);
    sub_26AE95B40(v143);

    v151 = v146;
    v152 = v147;
    v153 = v148;
    v154 = v149;
    v155 = v150;
    v156 = v145;
  }

  else
  {
    v289[0] = v171;
    v289[1] = v172;
    v289[2] = v165;
    v289[3] = v166;
    v16 = type metadata accessor for SoftwareUpdateContentView(0, v289);
    v122 = sub_26AF45718(v16);
    v123 = sub_26B078500();

    if (v123)
    {
      v88 = 2;
      sub_26B078DF0();
      v109 = 1;
      sub_26B079D00("OSName ", 7, 1);
      v85 = v17;
      sub_26B078DE0();

      v87 = swift_getKeyPath();
      ReactiveDescriptor.subscript.getter(v87, v245);
      v86 = v245[1];
      sub_26B078DD0();

      sub_26B079D00(" (", v88, v109 & 1);
      v89 = v18;
      sub_26B078DE0();

      v91 = swift_getKeyPath();
      ReactiveDescriptor.subscript.getter(v91, v244);
      v90 = v244[1];
      sub_26B078DD0();

      sub_26B079D00(")", 1, v109 & 1);
      v92 = v19;
      sub_26B078DE0();

      (*(v175 + 16))(v181, v183, v174);
      (*(v175 + 32))(v178, v181, v174);
      (*(v175 + 8))(v183, v174);
      v97 = sub_26B078E20();
      v93 = v20;
      v94 = v21;
      v95 = v22;
      v96 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v96);
      v240 = v167;
      v241 = 70;
      v242 = 2;
      v243 = 0;
      v236 = sub_26B0792C0();
      v237 = v23;
      v238 = v24;
      v239 = v25;
      v98 = v233;
      v233[0] = v236;
      v233[1] = v23;
      v234 = v24 & 1 & v109;
      v235 = v25;
      v111 = &v246;
      v106 = MEMORY[0x277CE0BD8];
      v107 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v233, MEMORY[0x277CE0BD8], &v246);
      sub_26AE95B40(v98);
      v99 = v246;
      v100 = v247;
      v101 = *(&v247 + 1);
      sub_26AE95D28(v246, *(&v246 + 1), v247 & 1);
      sub_26B078640();
      v102 = &v228;
      v228 = v99;
      v229 = v100 & 1 & v109;
      v230 = v101;
      v110 = &v231;
      sub_26AE94B4C(&v228, v106, &v231);
      sub_26AE95B40(v102);
      v103 = v231;
      v104 = v232;
      v105 = *(&v232 + 1);
      sub_26AE95D28(v231, *(&v231 + 1), v232 & 1);
      sub_26B078640();
      v108 = &v220;
      v220 = v103;
      v221 = v104 & 1 & v109;
      v222 = v105;
      sub_26AE94BB0(&v220, v106, v106, v107, v107, &v223);
      sub_26AE95B40(v108);
      v113 = v223;
      v114 = v224;
      v115 = v225;
      v116 = v226;
      v112 = v227;
      sub_26AEB4364(v223, v224, v225, v226);
      v290[0] = v113;
      v290[1] = v114;
      v290[2] = v115;
      v290[3] = v116;
      LOBYTE(v290[4]) = v112 & 1 & v109;
      sub_26AE95B40(v110);
      sub_26AE95B40(v111);
      v117 = v113;
      v118 = v114;
      v119 = v115;
      v120 = v116;
      v121 = v112;
    }

    else
    {
      v55 = 7;
      sub_26B078DF0();
      v77 = 1;
      sub_26B079D00("OSName ", v55, 1);
      v56 = v26;
      sub_26B078DE0();

      v58 = swift_getKeyPath();
      ReactiveDescriptor.subscript.getter(v58, v286);
      v57 = v286[1];
      sub_26B078DD0();

      v63 = 0;
      sub_26B079D00("");
      v59 = v27;
      sub_26B078DE0();

      (*(v175 + 16))(v181, v183, v174);
      (*(v175 + 32))(v178, v181, v174);
      (*(v175 + 8))(v183, v174);
      v65 = sub_26B078E20();
      v60 = v28;
      v61 = v29;
      v62 = v30;
      v64 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v64);
      v282 = 0;
      v283 = 0;
      v284 = 0;
      v285 = v77 & 1;
      v278 = sub_26B0792C0();
      v279 = v31;
      v280 = v32;
      v281 = v33;
      v66 = v275;
      v275[0] = v278;
      v275[1] = v31;
      v276 = v32 & 1 & v77;
      v277 = v33;
      v79 = &v287;
      v74 = MEMORY[0x277CE0BD8];
      v75 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v275, MEMORY[0x277CE0BD8], &v287);
      sub_26AE95B40(v66);
      v67 = v287;
      v68 = v288;
      v69 = *(&v288 + 1);
      sub_26AE95D28(v287, *(&v287 + 1), v288 & 1);
      sub_26B078640();
      v70 = &v270;
      v270 = v67;
      v271 = v68 & 1 & v77;
      v272 = v69;
      v78 = &v273;
      sub_26AE94B4C(&v270, v74, &v273);
      sub_26AE95B40(v70);
      v71 = v273;
      v72 = v274;
      v73 = *(&v274 + 1);
      sub_26AE95D28(v273, *(&v273 + 1), v274 & 1);
      sub_26B078640();
      v76 = &v262;
      v262 = v71;
      v263 = v72 & 1 & v77;
      v264 = v73;
      sub_26AE94CA8(&v262, v74, v74, v75, v75, &v265);
      sub_26AE95B40(v76);
      v81 = v265;
      v82 = v266;
      v83 = v267;
      v84 = v268;
      v80 = v269;
      sub_26AEB4364(v265, v266, v267, v268);
      v290[0] = v81;
      v290[1] = v82;
      v290[2] = v83;
      v290[3] = v84;
      LOBYTE(v290[4]) = v80 & 1 & v77;
      sub_26AE95B40(v78);
      sub_26AE95B40(v79);
      v117 = v81;
      v118 = v82;
      v119 = v83;
      v120 = v84;
      v121 = v80;
    }

    v38 = v259;
    v259[0] = v117;
    v259[1] = v118;
    v259[2] = v119;
    v259[3] = v120;
    v47 = 1;
    v260 = v121 & 1;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40, &unk_26B08AC20);
    v45 = sub_26AEB349C();
    v48 = v261;
    sub_26AE94B4C(v38, v44, v261);
    sub_26AEB450C(v38);
    v39 = v261[0];
    v40 = v261[1];
    v41 = v261[2];
    v42 = v261[3];
    v43 = LOBYTE(v261[4]);
    sub_26AEB4364(v261[0], v261[1], v261[2], v261[3]);
    v46 = v251;
    v251[0] = v39;
    v251[1] = v40;
    v251[2] = v41;
    v251[3] = v42;
    v252 = v43 & 1 & v47;
    sub_26AE94CA8(v251, MEMORY[0x277CE0BD8], v44, MEMORY[0x277CE0BC8], v45, &v253);
    sub_26AEB450C(v46);
    v50 = v253;
    v51 = v254;
    v52 = v255;
    v53 = v256;
    v54 = v257;
    v49 = v258;
    sub_26AF7E36C(v253, v254, v255, v256, v257, v258 & 1);
    __b[0] = v50;
    __b[1] = v51;
    __b[2] = v52;
    __b[3] = v53;
    LOBYTE(__b[4]) = v54;
    BYTE1(__b[4]) = v49 & 1 & v47;
    sub_26AEB450C(v48);
    sub_26AEB450C(v290);
    v151 = v50;
    v152 = v51;
    v153 = v52;
    v154 = v53;
    v155 = v54;
    v156 = v49;
  }

  v37 = v248;
  v248[0] = v151;
  v248[1] = v152;
  v248[2] = v153;
  v248[3] = v154;
  v249 = v155;
  v250 = v156 & 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6F0, &qword_26B08C968);
  sub_26AF7E018();
  sub_26AE94B4C(v37, v36, v163);
  sub_26AF7E3E4(v37);
  return sub_26AF7E3E4(__b);
}

uint64_t sub_26AF5F6D8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 upgradeVersionType];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AF5F73C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  v6 = [v4 productVersion];
  *a2 = sub_26B079E00();
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_26AF5F7C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  v6 = [v4 productBuildVersion];
  *a2 = sub_26B079E00();
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  return swift_unknownObjectRelease();
}

void sub_26AF5F84C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v141 = 0;
  v128 = 0;
  v129 = 0;
  v127 = 0;
  v88 = sub_26B079840();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88);
  v92 = &v9 - v91;
  v141 = a1;
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v133);
  v94 = v133;
  if (v133)
  {
    v86 = v94;
    v82 = v94;
    swift_getObjectType();
    v3 = [v82 updateIcon];
    v83 = v3;
    if (v3)
    {
      v81 = v83;
      v76 = v83;
      v77 = sub_26B0781D0();
      v78 = v4;
      MEMORY[0x277D82BD8](v76);
      v79 = v77;
      v80 = v78;
    }

    else
    {
      v79 = 0;
      v80 = 0xF000000000000000;
    }

    v75 = v80;
    v74 = v79;
    swift_unknownObjectRelease();

    v84 = v74;
    v85 = v75;
  }

  else
  {

    v84 = 0;
    v85 = 0xF000000000000000;
  }

  v72 = v85;
  v73 = v84;
  if ((v85 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_14;
  }

  v70 = v73;
  v71 = v72;
  v68 = v72;
  v67 = v73;
  v128 = v73;
  v129 = v72;
  sub_26AF7E238();
  sub_26AE961DC(v67, v68);
  v5 = sub_26AFB91A8(v67, v68);
  v69 = v5;
  if (!v5)
  {
    sub_26AE96418(v67, v68);
LABEL_14:
    v12 = v131;
    memset(v131, 0, sizeof(v131));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD718, qword_26B08C978);
    sub_26AF7E154();
    sub_26AF09CCC(v12, v11, v132);
    v13 = v132[0];
    v14 = v132[1];
    v15 = v132[2];
    v16 = v132[3];
    v17 = v132[4];
    v18 = v132[5];
    v19 = v132[6];

    v134 = v13;
    v135 = v14;
    v136 = v15;
    v137 = v16;
    v138 = v17;
    v139 = v18;
    v140 = v19;
    v59 = v13;
    v60 = v14;
    v61 = v15;
    v62 = v16;
    v63 = v17;
    v64 = v18;
    v65 = v19;
    goto LABEL_15;
  }

  v66 = v69;
  v51 = v69;
  v127 = v69;
  MEMORY[0x277D82BE0](v69);
  v24 = sub_26B079820();
  v20 = sub_26AFB91F0();
  v21 = v6;
  v22 = v7;
  v23 = v8;
  sub_26AFB9204(v92);
  v25 = sub_26B079850();
  (*(v89 + 8))(v92, v88);

  v28 = v115;
  v115[0] = v25;
  v26 = MEMORY[0x277CE1088];
  v27 = MEMORY[0x277CE1078];
  sub_26AEC96D4();
  sub_26B0795F0();
  sub_26AF1FC54();
  v29 = v109;
  v109[0] = v115[1];
  v109[1] = v115[2];
  v35 = 1;
  v110 = v116 & 1;
  v111 = v117;
  v112 = v118 & 1;
  v113 = v119;
  v114 = v120;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD718, qword_26B08C978);
  v47 = sub_26AF7E154();
  v50 = v121;
  sub_26AE9463C(v29, v46, v121);
  sub_26AF7E29C();
  v30 = v121[0];
  v31 = v121[1];
  v32 = v122;
  v33 = v123;
  v34 = v124;
  v36 = v125;
  v37 = v126;

  v38 = v97;
  v97[0] = v30;
  v97[1] = v31;
  v98 = v32 & 1 & v35;
  v99 = v33;
  v100 = v34 & 1 & v35;
  v101 = v36;
  v102 = v37;
  v49 = v103;
  sub_26AE94B4C(v97, v46, v103);
  sub_26AF7E29C();
  v41 = v103[0];
  v42 = v103[1];
  v39 = v104;
  v43 = v105;
  v40 = v106;
  v44 = v107;
  v45 = v108;

  v48 = v95;
  v95[0] = v41;
  v95[1] = v42;
  v95[2] = v39 & 1;
  v95[3] = v43;
  v95[4] = v40 & 1;
  v95[5] = v44;
  v95[6] = v45;
  sub_26AF09CCC(v95, v46, v96);
  sub_26AF7E20C();
  v52 = v96[0];
  v53 = v96[1];
  v54 = v96[2];
  v55 = v96[3];
  v56 = v96[4];
  v57 = v96[5];
  v58 = v96[6];

  v134 = v52;
  v135 = v53;
  v136 = v54;
  v137 = v55;
  v138 = v56;
  v139 = v57;
  v140 = v58;
  sub_26AF7E29C();
  sub_26AF7E29C();
  MEMORY[0x277D82BD8](v51);
  sub_26AE96418(v67, v68);
  v59 = v52;
  v60 = v53;
  v61 = v54;
  v62 = v55;
  v63 = v56;
  v64 = v57;
  v65 = v58;
LABEL_15:
  v10 = v130;
  v130[0] = v59;
  v130[1] = v60;
  v130[2] = v61;
  v130[3] = v62;
  v130[4] = v63;
  v130[5] = v64;
  v130[6] = v65;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD6F8, &qword_26B08C970);
  sub_26AF7E0BC();
  sub_26AE94B4C(v10, v9, v87);
  sub_26AF7E20C();
  sub_26AF7E20C();
}

uint64_t sub_26AF5FFE4@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00("ALSO AVAILABLE", 14, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AF601B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a6;
  v65 = a1;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v66 = "The parameter is the os version";
  v119 = 0;
  v106 = 0u;
  v107 = 0u;
  v93 = 0u;
  v94 = 0u;
  v121 = a2;
  v120 = a3;
  v71 = 0;
  v72 = sub_26B078E00();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v78 = *(v73 + 64);
  v75 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v76 = &v24 - v75;
  v77 = v75;
  MEMORY[0x28223BE20](v7);
  v79 = &v24 - v77;
  v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v81 = &v24 - v80;
  v119 = a1;
  v114[0] = v9;
  v114[1] = v10;
  v114[2] = v11;
  v114[3] = v12;
  updated = type metadata accessor for SoftwareUpdateContentView(v13, v114);
  if (sub_26AF60810(updated))
  {
    v30 = 41;
    sub_26B078DF0();
    v45 = 1;
    sub_26B079D00("Your ProductFamilyName is running OSName ", v30, 1);
    v31 = v14;
    sub_26B078DE0();

    v32 = sub_26AF45718(updated);
    v33 = sub_26B0784E0();
    v34 = v15;

    sub_26B078DD0();

    v39 = 0;
    sub_26B079D00("");
    v35 = v16;
    sub_26B078DE0();

    (*(v73 + 16))(v79, v81, v72);
    (*(v73 + 32))(v76, v79, v72);
    (*(v73 + 8))(v81, v72);
    v41 = sub_26B078E20();
    v36 = v17;
    v37 = v18;
    v38 = v19;
    v40 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v40);
    v102 = v66;
    v103 = 31;
    v104 = 2;
    v105 = 0;
    v98 = sub_26B0792C0();
    v99 = v20;
    v100 = v21;
    v101 = v22;
    v42 = v95;
    v95[0] = v98;
    v95[1] = v20;
    v96 = v21 & 1 & v45;
    v97 = v22;
    v55 = &v106;
    v51 = MEMORY[0x277CE0BD8];
    v52 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v95, MEMORY[0x277CE0BD8], &v106);
    sub_26AE95B40(v42);
    v43 = v106;
    v44 = v107;
    v46 = *(&v107 + 1);
    sub_26AE95D28(v106, *(&v106 + 1), v107 & 1);
    sub_26B078640();
    v47 = &v90;
    v90 = v43;
    v91 = v44 & 1 & v45;
    v92 = v46;
    v54 = &v93;
    sub_26AE94B4C(&v90, v51, &v93);
    sub_26AE95B40(v47);
    v49 = v93;
    v48 = v94;
    v50 = *(&v94 + 1);
    sub_26AE95D28(v93, *(&v93 + 1), v94 & 1);
    sub_26B078640();
    v53 = &v83;
    v83 = v49;
    v84 = v48 & 1;
    v85 = v50;
    sub_26AF09CCC(&v83, v51, &v86);
    sub_26AF6BCAC(v53);
    v56 = v86;
    v57 = v87;
    v58 = v88;
    v59 = v89;
    sub_26AF6BAA0(v86, v87, v88, v89);
    v115 = v56;
    v116 = v57;
    v117 = v58;
    v118 = v59;
    sub_26AE95B40(v54);
    sub_26AE95B40(v55);
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v59;
  }

  else
  {
    memset(v109, 0, sizeof(v109));
    sub_26AF09CCC(v109, MEMORY[0x277CE0BD8], &v110);
    v26 = v110;
    v27 = v111;
    v28 = v112;
    v29 = v113;
    sub_26AF6BAA0(v110, v111, v112, v113);
    v115 = v26;
    v116 = v27;
    v117 = v28;
    v118 = v29;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    v63 = v29;
  }

  v25 = v108;
  v108[0] = v60;
  v108[1] = v61;
  v108[2] = v62;
  v108[3] = v63;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD170, &qword_26B08BF30);
  sub_26AF6B948();
  sub_26AE94B4C(v25, v24, v64);
  sub_26AF6BCAC(v25);
  return sub_26AF6BCAC(&v115);
}

uint64_t sub_26AF60810(uint64_t a1)
{
  v39 = a1;
  v61 = 0;
  v58 = 0;
  v57 = 0;
  v52 = 0;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD560, qword_26B08C178) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v41 = v7 - v40;
  v61 = v1;
  v60 = *(v2 + 16);
  v59 = *(v2 + 24);
  v42 = sub_26AF45C88(v2);
  v43 = ReactiveUIManager.preferredDescriptor.getter();
  if (!v43)
  {

LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  v38 = v43;
  v35 = v43;
  v58 = v43;

  v36 = sub_26AF45C88(v39);
  v3 = ReactiveUIManager.alternateDescriptor.getter();
  v37 = v3;
  if (!v3 || (v34 = v37, v17 = v37, v57 = v37, , v18 = &unk_26B08C190, KeyPath = swift_getKeyPath(), ReactiveDescriptor.subscript.getter(KeyPath, v56), v26 = v55, v55[0] = v56[0], v55[1] = v56[1], v25 = swift_getKeyPath(), ReactiveDescriptor.subscript.getter(v25, v54), v24 = v53, v53[0] = v54[0], v53[1] = v54[1], v29 = 0, v19 = sub_26B078300(), v4 = *(v19 - 8), v20 = *(v4 + 56), v21 = v4 + 56, v22 = 1, v20(v41, 1), v23 = sub_26AE95974(), v28 = sub_26B07A4A0(), sub_26AF79570(v41), sub_26AE9BCC0(v24), , sub_26AE9BCC0(v26), , v52 = v28, v32 = &v51, v51 = v28, v30 = &v50, v50 = -1, v31 = type metadata accessor for ComparisonResult(v29), v33 = sub_26AE9BAC0(), v5 = sub_26B07A790(), (v5 & 1) == 0 && ((v49[3] = v28, v49[2] = 0, (sub_26B07A790() & 1) == 0) || (v7[1] = &unk_26B08C1D8, v12 = swift_getKeyPath(), ReactiveDescriptor.subscript.getter(v12, v49), v11 = v48, v48[0] = v49[0], v48[1] = v49[1], v10 = swift_getKeyPath(), ReactiveDescriptor.subscript.getter(v10, v47), v9 = v46, v46[0] = v47[0], v46[1] = v47[1], v8 = 1, (v20)(v41, 1, 1, v19), v13 = sub_26B07A4A0(), sub_26AF79570(v41), sub_26AE9BCC0(v9), , sub_26AE9BCC0(v11), , v15 = &v45, v45 = v13, v14 = &v44, v44 = 1, sub_26AF7963C(), (sub_26B079D70() & 1) != 0))))
  {

    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_26AF60E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v25 = a1;
  v26 = a2;
  v19 = a3;
  v18 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v20 = a10;
  v21 = a11;
  v33 = a5;
  v32 = a6;
  v31 = a8;
  v16 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = &v16 - v16;
  v17 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](&v16 - v16);
  v23 = &v16 - v17;
  v14 = v13(v12);
  v19(v14);
  return sub_26B079A80();
}

uint64_t sub_26AF61000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[11] = a7;
  v8[10] = a6;
  v8[9] = a5;
  v8[8] = a4;
  v8[6] = v8;
  v8[7] = 0;
  v9 = sub_26B078580();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[7] = a4;

  return MEMORY[0x2822009F8](sub_26AF61118, 0, 0);
}

uint64_t sub_26AF61118()
{
  *(v0 + 48) = v0;
  sub_26B07A130();
  *(v0 + 128) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF611B8, v3, v1);
}

uint64_t sub_26AF611B8()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[10];
  v4 = v0[9];
  v0[6] = v0;
  v0[2] = v4;
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  updated = type metadata accessor for SoftwareUpdateContentView(0, (v0 + 2));
  v0[17] = sub_26AF45C88(updated);

  return MEMORY[0x2822009F8](sub_26AF61274, 0, 0);
}

uint64_t sub_26AF61274()
{
  v25 = v0;
  *(v0 + 48) = v0;
  ReactiveUIManager.stopRefreshScanResultsCacheTimer()();

  sub_26B078550();
  v18 = sub_26B078570();
  v19 = sub_26B07A2C0();
  v14 = swift_allocObject();
  *(v14 + 16) = 32;
  v15 = swift_allocObject();
  *(v15 + 16) = 8;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26AF617C8;
  *(v13 + 24) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26AF8AF90;
  *(v16 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v17 = v1;

  *v17 = sub_26AF8AF14;
  v17[1] = v14;

  v17[2] = sub_26AF8AF48;
  v17[3] = v15;

  v17[4] = sub_26AF8AFDC;
  v17[5] = v16;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v18, v19))
  {
    buf = sub_26B07A420();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v10 = sub_26AEA3B70(0, v8, v8);
    v11 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v20 = buf;
    v21 = v10;
    v22 = v11;
    sub_26AEA3BC4(2, &v20);
    sub_26AEA3BC4(1, &v20);
    v23 = sub_26AF8AF14;
    v24 = v14;
    sub_26AEA3BD8(&v23, &v20, &v21, &v22);
    v23 = sub_26AF8AF48;
    v24 = v15;
    sub_26AEA3BD8(&v23, &v20, &v21, &v22);
    v23 = sub_26AF8AFDC;
    v24 = v16;
    sub_26AEA3BD8(&v23, &v20, &v21, &v22);
    _os_log_impl(&dword_26AE88000, v18, v19, "SoftwareUpdateContentView.%s: Refresh scan result timer has stopped", buf, 0xCu);
    sub_26AEA3C24(v10, 0, v8);
    sub_26AEA3C24(v11, 1, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v7 = v12[15];
  v6 = v12[13];
  v5 = v12[14];
  v2 = MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v7, v6, v2);

  v3 = *(v12[6] + 8);

  return v3();
}

uint64_t sub_26AF617F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[11] = a7;
  v8[10] = a6;
  v8[9] = a5;
  v8[8] = a4;
  v8[6] = v8;
  v8[7] = 0;
  v9 = sub_26B078580();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[7] = a4;

  return MEMORY[0x2822009F8](sub_26AF61910, 0, 0);
}

uint64_t sub_26AF61910(uint64_t a1)
{
  v27 = v1;
  *(v1 + 48) = v1;
  sub_26B078550();
  v20 = sub_26B078570();
  v21 = sub_26B07A2C0();
  v16 = swift_allocObject();
  *(v16 + 16) = 32;
  v17 = swift_allocObject();
  *(v17 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26AF61FC4;
  *(v15 + 24) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AF8B090;
  *(v18 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v19 = v2;

  *v19 = sub_26AF8B014;
  v19[1] = v16;

  v19[2] = sub_26AF8B048;
  v19[3] = v17;

  v19[4] = sub_26AF8B0DC;
  v19[5] = v18;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v20, v21))
  {
    buf = sub_26B07A420();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = sub_26AEA3B70(0, v10, v10);
    v13 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v22 = buf;
    v23 = v12;
    v24 = v13;
    sub_26AEA3BC4(2, &v22);
    sub_26AEA3BC4(1, &v22);
    v25 = sub_26AF8B014;
    v26 = v16;
    sub_26AEA3BD8(&v25, &v22, &v23, &v24);
    v25 = sub_26AF8B048;
    v26 = v17;
    sub_26AEA3BD8(&v25, &v22, &v23, &v24);
    v25 = sub_26AF8B0DC;
    v26 = v18;
    sub_26AEA3BD8(&v25, &v22, &v23, &v24);
    _os_log_impl(&dword_26AE88000, v20, v21, "SoftwareUpdateContentView.%s: Starting refresh scan result timer", buf, 0xCu);
    sub_26AEA3C24(v12, 0, v10);
    sub_26AEA3C24(v13, 1, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[15];
  v9 = v14[13];
  v7 = v14[14];
  v3 = MEMORY[0x277D82BD8](v20);
  (*(v7 + 8))(v8, v9, v3);
  sub_26B07A130();
  v14[16] = sub_26B07A120();
  v4 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF61E60, v4, v5);
}

uint64_t sub_26AF61E60()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[10];
  v4 = v0[9];
  v0[6] = v0;
  v0[2] = v4;
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  updated = type metadata accessor for SoftwareUpdateContentView(0, (v0 + 2));
  v0[17] = sub_26AF45C88(updated);

  return MEMORY[0x2822009F8](sub_26AF61F1C, 0, 0);
}

uint64_t sub_26AF61F1C()
{
  *(v0 + 48) = v0;
  ReactiveUIManager.startRefreshScanResultsCacheTimer()();

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_26AF61FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 120) = a7;
  *(v8 + 112) = a6;
  *(v8 + 104) = a5;
  *(v8 + 96) = a4;
  *(v8 + 48) = v8;
  *(v8 + 56) = 0;
  *(v8 + 336) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  v9 = sub_26B078580();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v8 + 16);
  *(v8 + 160) = updated;
  v16 = *(updated - 8);
  *(v8 + 168) = v16;
  *(v8 + 176) = *(v16 + 64);
  *(v8 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 56) = a4;

  return MEMORY[0x2822009F8](sub_26AF621F8, 0, 0);
}

uint64_t sub_26AF621F8()
{
  v0[6] = v0;
  v1 = sub_26AF90E54();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_26AF91E00();
  MEMORY[0x277D82BD8](v4);
  v0[25] = sub_26B07A130();
  v0[26] = sub_26B07A120();
  v5 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF622D0, v5, v2);
}

uint64_t sub_26AF622D0()
{
  v1 = v0[20];
  v0[6] = v0;
  v0[27] = sub_26AF45C88(v1);

  return MEMORY[0x2822009F8](sub_26AF62360, 0, 0);
}

uint64_t sub_26AF62360(uint64_t a1)
{
  v1[6] = v1;
  v7 = ReactiveUIManager.currentState.getter();

  v1[8] = v7;
  v1[9] = 0;
  type metadata accessor for SUUIStatefulUIState(0);
  sub_26AE9BA40();
  if (sub_26B07A790())
  {
    *(v6 + 224) = sub_26B07A120();
    v2 = sub_26B07A0C0();

    return MEMORY[0x2822009F8](sub_26AF62504, v2, v3);
  }

  else
  {

    v4 = *(*(v6 + 48) + 8);

    return v4();
  }
}

uint64_t sub_26AF62504()
{
  v1 = v0[20];
  v0[6] = v0;
  v0[29] = sub_26AF45C88(v1);

  v2 = swift_task_alloc();
  *(v4 + 240) = v2;
  *v2 = *(v4 + 48);
  v2[1] = sub_26AF625D4;

  return ReactiveUIManager.canPerformCachedScan()();
}

uint64_t sub_26AF625D4(char a1)
{
  v3 = *v1;
  *(v3 + 48) = *v1;
  *(v3 + 337) = a1;

  return MEMORY[0x2822009F8](sub_26AF62710, 0, 0);
}

uint64_t sub_26AF62710()
{
  v1 = *(v0 + 337);
  *(v0 + 48) = v0;
  v12 = (v1 & 1) != 0;
  v7 = *(v13 + 128);
  v6 = *(v13 + 120);
  v5 = *(v13 + 112);
  v4 = *(v13 + 104);
  v8 = *(v13 + 96);
  *(v13 + 336) = v12;
  v9 = swift_task_alloc();
  *(v13 + 248) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  *(v9 + 56) = v12;
  v10 = MEMORY[0x277D84F78] + 8;
  sub_26AF44F48();
  v2 = swift_task_alloc();
  *(v13 + 256) = v2;
  *v2 = *(v13 + 48);
  v2[1] = sub_26AF628E0;

  return sub_26AF44F5C(v11, v10, sub_26AF8B5B0, v9);
}

uint64_t sub_26AF628E0()
{
  *(*v1 + 48) = *v1;

  if (v0)
  {
    v2 = sub_26AF63528;
  }

  else
  {

    v2 = sub_26AF62A54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AF62A54(uint64_t a1)
{
  *(v1 + 48) = v1;
  *(v1 + 264) = sub_26B07A120();
  v4 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF62AEC, v4, v2);
}

uint64_t sub_26AF62AEC()
{
  v1 = *(v0 + 160);
  *(v0 + 48) = v0;
  *(v0 + 338) = sub_26AF4690C(v1);

  return MEMORY[0x2822009F8](sub_26AF62B7C, 0, 0);
}

uint64_t sub_26AF62B7C()
{
  v1 = *(v0 + 338);
  *(v0 + 48) = v0;
  if (sub_26AF579C0(v1, 0))
  {
    v17 = 0;
  }

  else
  {
    v15 = v18[24];
    v14 = v18[23];
    v13 = v18[20];
    v11 = v18[16];
    v10 = v18[15];
    v9 = v18[14];
    v8 = v18[13];
    v6 = v18[12];
    v7 = v18[21];
    v2 = sub_26B07A160();
    (*(*(v2 - 8) + 56))(v15, 1);
    sub_26AEF6558(v6, v14, v13);
    v12 = (*(v7 + 80) + 64) & ~*(v7 + 80);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v8;
    v16[5] = v9;
    v16[6] = v10;
    v16[7] = v11;
    sub_26AF68AA4(v14, v16 + v12, v13);
    v17 = sub_26AEBC0C4(0, 0, v15, &unk_26B08CAF0, v16, MEMORY[0x277D84F78] + 8);
  }

  v18[34] = v17;
  v18[10] = v17;
  v18[35] = sub_26B07A120();
  v5 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF62DD8, v5, v3);
}

uint64_t sub_26AF62DD8()
{
  v1 = v0[20];
  v0[6] = v0;
  v0[36] = sub_26AF45C88(v1);

  return MEMORY[0x2822009F8](sub_26AF62E68, 0, 0);
}

uint64_t sub_26AF62E68()
{
  *(v0 + 48) = v0;
  v4 = sub_26B04FCC4();
  v1 = swift_task_alloc();
  *(v3 + 296) = v1;
  *v1 = *(v3 + 48);
  v1[1] = sub_26AF62F30;

  return ReactiveUIManager.checkForAvailableUpdates(_:)(v4 & 1);
}

uint64_t sub_26AF62F30(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[38] = a1;
  v5[39] = v1;

  if (v1)
  {
    v3 = sub_26AF63578;
  }

  else
  {

    v3 = sub_26AF630B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AF630B4()
{
  v1 = v0[38];
  v7 = v0[16];
  v6 = v0[15];
  v5 = v0[14];
  v4 = v0[13];
  v8 = v0[12];
  v0[6] = v0;
  MEMORY[0x277D82BD8](v1);
  v10 = swift_task_alloc();
  v0[40] = v10;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v11 = MEMORY[0x277D84F78] + 8;
  sub_26AF44F48();
  v2 = swift_task_alloc();
  *(v9 + 328) = v2;
  *v2 = *(v9 + 48);
  v2[1] = sub_26AF63248;

  return sub_26AF44F5C(v12, v11, sub_26AF8BEC0, v10);
}

uint64_t sub_26AF63248()
{
  *(*v1 + 48) = *v1;

  if (v0)
  {
    v2 = sub_26AF63FBC;
  }

  else
  {

    v2 = sub_26AF633BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AF633BC()
{
  *(v0 + 48) = v0;
  v4 = *(v0 + 272);

  if (v4)
  {
    sub_26B07A170();
  }

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_26AF63578()
{
  v34 = v0;
  v15 = v0[39];
  v0[6] = v0;

  MEMORY[0x26D66E1D0](v15);
  v0[11] = v15;
  sub_26B078550();
  MEMORY[0x26D66E1D0](v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_26AED0174();

  v27 = sub_26B078570();
  v28 = sub_26B07A2C0();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26AF66BD0;
  *(v16 + 24) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AF8BD1C;
  *(v22 + 24) = v16;
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AF8BC6C;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AF8BE1C;
  *(v19 + 24) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AF8BE68;
  *(v25 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v26 = v1;

  *v26 = sub_26AF8BCA0;
  v26[1] = v20;

  v26[2] = sub_26AF8BCD4;
  v26[3] = v21;

  v26[4] = sub_26AF8BD68;
  v26[5] = v22;

  v26[6] = sub_26AF8BDA0;
  v26[7] = v23;

  v26[8] = sub_26AF8BDD4;
  v26[9] = v24;

  v26[10] = sub_26AF8BEB4;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_26B07A420();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = sub_26AEA3B70(1, v10, v10);
    v13 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v12;
    v31 = v13;
    sub_26AEA3BC4(2, &v29);
    sub_26AEA3BC4(2, &v29);
    v32 = sub_26AF8BCA0;
    v33 = v20;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26AF8BCD4;
    v33 = v21;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26AF8BD68;
    v33 = v22;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26AF8BDA0;
    v33 = v23;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26AF8BDD4;
    v33 = v24;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26AF8BEB4;
    v33 = v25;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_26AE88000, v27, v28, "SoftwareUpdateContentView.%s: Failed to execute manager.checkForAvailableUpdates: %@", buf, 0x16u);
    sub_26AEA3C24(v12, 1, v10);
    sub_26AEA3C24(v13, 1, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[39];
  v6 = v14[19];
  v7 = v14[17];
  v5 = v14[18];
  v4 = MEMORY[0x277D82BD8](v27);
  (*(v5 + 8))(v6, v7, v4);

  v9 = v14[34];

  if (v9)
  {
    sub_26B07A170();
  }

  v2 = *(v14[6] + 8);

  return v2();
}

uint64_t sub_26AF64010(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a3;
  v12 = a4;
  v11 = a1;
  v10 = a2;
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v9);
  return sub_26AF469A8(a2, updated);
}

uint64_t sub_26AF64090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[9] = a7;
  v8[8] = a6;
  v8[7] = a5;
  v8[6] = a4;
  v8[2] = v8;
  v8[3] = 0;
  v8[5] = 0;
  v9 = sub_26B07A0F0();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = sub_26B078580();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[3] = a4;

  return MEMORY[0x2822009F8](sub_26AF64244, 0, 0);
}

uint64_t sub_26AF64244()
{
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 152) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_26AF642FC;

  return MEMORY[0x282200480](2500000000);
}

uint64_t sub_26AF642FC()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {
    v2 = sub_26AF65B24;
  }

  else
  {
    v2 = sub_26AF64464;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AF64464()
{
  v86 = v0;
  v1 = *(v0 + 160);
  *(v0 + 16) = v0;
  sub_26B07A180();
  if (v1)
  {
    MEMORY[0x26D66E1D0](v1);
    *(v70 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD848, &unk_26B08E3C0);
    if (swift_dynamicCast())
    {
      sub_26B078550();
      log = sub_26B078570();
      v47 = sub_26B07A2A0();
      v42 = swift_allocObject();
      *(v42 + 16) = 32;
      v43 = swift_allocObject();
      *(v43 + 16) = 8;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_26AF66AD0;
      *(v41 + 24) = 0;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_26AF8C244;
      *(v44 + 24) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      sub_26B07A760();
      v45 = v7;

      *v45 = sub_26AF8C1C8;
      v45[1] = v42;

      v45[2] = sub_26AF8C1FC;
      v45[3] = v43;

      v45[4] = sub_26AF8C290;
      v45[5] = v44;
      sub_26AEA3B2C();

      if (os_log_type_enabled(log, v47))
      {
        v38 = sub_26B07A420();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v39 = sub_26AEA3B70(0, v37, v37);
        v40 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v76 = v38;
        v77 = v39;
        v78 = v40;
        sub_26AEA3BC4(2, &v76);
        sub_26AEA3BC4(1, &v76);
        v79 = sub_26AF8C1C8;
        v80 = v42;
        sub_26AEA3BD8(&v79, &v76, &v77, &v78);
        v79 = sub_26AF8C1FC;
        v80 = v43;
        sub_26AEA3BD8(&v79, &v76, &v77, &v78);
        v79 = sub_26AF8C290;
        v80 = v44;
        sub_26AEA3BD8(&v79, &v76, &v77, &v78);
        _os_log_impl(&dword_26AE88000, log, v47, "SoftwareUpdateContentView.%s: Long scan handler was cancelled", v38, 0xCu);
        sub_26AEA3C24(v39, 0, v37);
        sub_26AEA3C24(v40, 1, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }

      else
      {
      }

      v32 = *(v70 + 136);
      v33 = *(v70 + 112);
      v35 = *(v70 + 104);
      v36 = *(v70 + 88);
      v31 = *(v70 + 120);
      v34 = *(v70 + 96);
      v8 = MEMORY[0x277D82BD8](log);
      (*(v31 + 8))(v32, v33, v8);
      (*(v34 + 8))(v35, v36);
    }

    else
    {

      MEMORY[0x26D66E1D0](v1);
      *(v70 + 40) = v1;
      sub_26B078550();
      MEMORY[0x26D66E1D0](v1);
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      sub_26AED0174();

      v29 = sub_26B078570();
      v30 = sub_26B07A2C0();
      v22 = swift_allocObject();
      *(v22 + 16) = 32;
      v23 = swift_allocObject();
      *(v23 + 16) = 8;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_26AF66B00;
      *(v18 + 24) = 0;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_26AF8BFF8;
      *(v24 + 24) = v18;
      v25 = swift_allocObject();
      *(v25 + 16) = 64;
      v26 = swift_allocObject();
      *(v26 + 16) = 8;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_26AF8BF48;
      *(v20 + 24) = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_26AF8C0F8;
      *(v21 + 24) = v20;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_26AF8C144;
      *(v27 + 24) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      sub_26B07A760();
      v28 = v9;

      *v28 = sub_26AF8BF7C;
      v28[1] = v22;

      v28[2] = sub_26AF8BFB0;
      v28[3] = v23;

      v28[4] = sub_26AF8C044;
      v28[5] = v24;

      v28[6] = sub_26AF8C07C;
      v28[7] = v25;

      v28[8] = sub_26AF8C0B0;
      v28[9] = v26;

      v28[10] = sub_26AF8C190;
      v28[11] = v27;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v29, v30))
      {
        v15 = sub_26B07A420();
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v16 = sub_26AEA3B70(1, v14, v14);
        v17 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v71 = v15;
        v72 = v16;
        v73 = v17;
        sub_26AEA3BC4(2, &v71);
        sub_26AEA3BC4(2, &v71);
        v74 = sub_26AF8BF7C;
        v75 = v22;
        sub_26AEA3BD8(&v74, &v71, &v72, &v73);
        v74 = sub_26AF8BFB0;
        v75 = v23;
        sub_26AEA3BD8(&v74, &v71, &v72, &v73);
        v74 = sub_26AF8C044;
        v75 = v24;
        sub_26AEA3BD8(&v74, &v71, &v72, &v73);
        v74 = sub_26AF8C07C;
        v75 = v25;
        sub_26AEA3BD8(&v74, &v71, &v72, &v73);
        v74 = sub_26AF8C0B0;
        v75 = v26;
        sub_26AEA3BD8(&v74, &v71, &v72, &v73);
        v74 = sub_26AF8C190;
        v75 = v27;
        sub_26AEA3BD8(&v74, &v71, &v72, &v73);
        _os_log_impl(&dword_26AE88000, v29, v30, "SoftwareUpdateContentView.%s: Failed to execute Task.sleep: %@", v15, 0x16u);
        sub_26AEA3C24(v16, 1, v14);
        sub_26AEA3C24(v17, 1, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }

      else
      {
      }

      v12 = *(v70 + 128);
      v13 = *(v70 + 112);
      v11 = *(v70 + 120);
      v10 = MEMORY[0x277D82BD8](v29);
      (*(v11 + 8))(v12, v13, v10);
    }

    v6 = *(*(v70 + 16) + 8);

    return v6();
  }

  else
  {
    sub_26B078550();
    oslog = sub_26B078570();
    v69 = sub_26B07A2C0();
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_26AF66A00;
    *(v63 + 24) = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_26AF8C344;
    *(v66 + 24) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v67 = v2;

    *v67 = sub_26AF8C2C8;
    v67[1] = v64;

    v67[2] = sub_26AF8C2FC;
    v67[3] = v65;

    v67[4] = sub_26AF8C390;
    v67[5] = v66;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v69))
    {
      buf = sub_26B07A420();
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v61 = sub_26AEA3B70(0, v59, v59);
      v62 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v81 = buf;
      v82 = v61;
      v83 = v62;
      sub_26AEA3BC4(2, &v81);
      sub_26AEA3BC4(1, &v81);
      v84 = sub_26AF8C2C8;
      v85 = v64;
      sub_26AEA3BD8(&v84, &v81, &v82, &v83);
      v84 = sub_26AF8C2FC;
      v85 = v65;
      sub_26AEA3BD8(&v84, &v81, &v82, &v83);
      v84 = sub_26AF8C390;
      v85 = v66;
      sub_26AEA3BD8(&v84, &v81, &v82, &v83);
      _os_log_impl(&dword_26AE88000, oslog, v69, "SoftwareUpdateContentView.%s: Cached scan takes longer than 3 seconds, showing the 'Checking for updates…' UI", buf, 0xCu);
      sub_26AEA3C24(v61, 0, v59);
      sub_26AEA3C24(v62, 1, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v49 = *(v70 + 144);
    v50 = *(v70 + 112);
    v54 = *(v70 + 80);
    v53 = *(v70 + 72);
    v52 = *(v70 + 64);
    v51 = *(v70 + 56);
    v55 = *(v70 + 48);
    v48 = *(v70 + 120);
    v3 = MEMORY[0x277D82BD8](oslog);
    (*(v48 + 8))(v49, v50, v3);
    sub_26B07A130();
    v56 = swift_task_alloc();
    *(v70 + 168) = v56;
    v56[2] = v51;
    v56[3] = v52;
    v56[4] = v53;
    v56[5] = v54;
    v56[6] = v55;
    v57 = MEMORY[0x277D84F78] + 8;
    sub_26AF44F48();
    v4 = swift_task_alloc();
    *(v70 + 176) = v4;
    *v4 = *(v70 + 16);
    v4[1] = sub_26AF658E8;

    return sub_26AF44F5C(v58, v57, sub_26AF8C39C, v56);
  }
}

uint64_t sub_26AF658E8()
{
  *(*v1 + 16) = *v1;

  if (v0)
  {
    v2 = sub_26AF669A8;
  }

  else
  {

    v2 = sub_26AF65A5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AF65A5C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_26AF65B24()
{
  v56 = v0;
  v0[2] = v0;
  v45 = v0[20];
  MEMORY[0x26D66E1D0]();
  v0[4] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD848, &unk_26B08E3C0);
  if (swift_dynamicCast())
  {
    sub_26B078550();
    oslog = sub_26B078570();
    v43 = sub_26B07A2A0();
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_26AF66AD0;
    *(v37 + 24) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_26AF8C244;
    *(v40 + 24) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v41 = v3;

    *v41 = sub_26AF8C1C8;
    v41[1] = v38;

    v41[2] = sub_26AF8C1FC;
    v41[3] = v39;

    v41[4] = sub_26AF8C290;
    v41[5] = v40;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v43))
    {
      buf = sub_26B07A420();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v35 = sub_26AEA3B70(0, v33, v33);
      v36 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v51 = buf;
      v52 = v35;
      v53 = v36;
      sub_26AEA3BC4(2, &v51);
      sub_26AEA3BC4(1, &v51);
      v54 = sub_26AF8C1C8;
      v55 = v38;
      sub_26AEA3BD8(&v54, &v51, &v52, &v53);
      v54 = sub_26AF8C1FC;
      v55 = v39;
      sub_26AEA3BD8(&v54, &v51, &v52, &v53);
      v54 = sub_26AF8C290;
      v55 = v40;
      sub_26AEA3BD8(&v54, &v51, &v52, &v53);
      _os_log_impl(&dword_26AE88000, oslog, v43, "SoftwareUpdateContentView.%s: Long scan handler was cancelled", buf, 0xCu);
      sub_26AEA3C24(v35, 0, v33);
      sub_26AEA3C24(v36, 1, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v28 = *(v44 + 136);
    v29 = *(v44 + 112);
    v31 = *(v44 + 104);
    v32 = *(v44 + 88);
    v27 = *(v44 + 120);
    v30 = *(v44 + 96);
    v4 = MEMORY[0x277D82BD8](oslog);
    (*(v27 + 8))(v28, v29, v4);
    (*(v30 + 8))(v31, v32);
  }

  else
  {

    MEMORY[0x26D66E1D0](v45);
    *(v44 + 40) = v45;
    sub_26B078550();
    MEMORY[0x26D66E1D0](v45);
    v15 = swift_allocObject();
    *(v15 + 16) = v45;
    sub_26AED0174();

    log = sub_26B078570();
    v26 = sub_26B07A2C0();
    v18 = swift_allocObject();
    *(v18 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_26AF66B00;
    *(v14 + 24) = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26AF8BFF8;
    *(v20 + 24) = v14;
    v21 = swift_allocObject();
    *(v21 + 16) = 64;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_26AF8BF48;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_26AF8C0F8;
    *(v17 + 24) = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26AF8C144;
    *(v23 + 24) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v24 = v5;

    *v24 = sub_26AF8BF7C;
    v24[1] = v18;

    v24[2] = sub_26AF8BFB0;
    v24[3] = v19;

    v24[4] = sub_26AF8C044;
    v24[5] = v20;

    v24[6] = sub_26AF8C07C;
    v24[7] = v21;

    v24[8] = sub_26AF8C0B0;
    v24[9] = v22;

    v24[10] = sub_26AF8C190;
    v24[11] = v23;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v26))
    {
      v11 = sub_26B07A420();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v12 = sub_26AEA3B70(1, v10, v10);
      v13 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v46 = v11;
      v47 = v12;
      v48 = v13;
      sub_26AEA3BC4(2, &v46);
      sub_26AEA3BC4(2, &v46);
      v49 = sub_26AF8BF7C;
      v50 = v18;
      sub_26AEA3BD8(&v49, &v46, &v47, &v48);
      v49 = sub_26AF8BFB0;
      v50 = v19;
      sub_26AEA3BD8(&v49, &v46, &v47, &v48);
      v49 = sub_26AF8C044;
      v50 = v20;
      sub_26AEA3BD8(&v49, &v46, &v47, &v48);
      v49 = sub_26AF8C07C;
      v50 = v21;
      sub_26AEA3BD8(&v49, &v46, &v47, &v48);
      v49 = sub_26AF8C0B0;
      v50 = v22;
      sub_26AEA3BD8(&v49, &v46, &v47, &v48);
      v49 = sub_26AF8C190;
      v50 = v23;
      sub_26AEA3BD8(&v49, &v46, &v47, &v48);
      _os_log_impl(&dword_26AE88000, log, v26, "SoftwareUpdateContentView.%s: Failed to execute Task.sleep: %@", v11, 0x16u);
      sub_26AEA3C24(v12, 1, v10);
      sub_26AEA3C24(v13, 1, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v8 = *(v44 + 128);
    v9 = *(v44 + 112);
    v7 = *(v44 + 120);
    v6 = MEMORY[0x277D82BD8](log);
    (*(v7 + 8))(v8, v9, v6);
  }

  v1 = *(*(v44 + 16) + 8);

  return v1();
}

uint64_t sub_26AF66A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[6] = a2;
  v8[5] = a3;
  v8[4] = a1;
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v8);
  v5 = sub_26AF4690C(updated);
  result = sub_26AF579C0(v5, 0);
  if ((result & 1) == 0)
  {
    return sub_26AF469A8(2, updated);
  }

  return result;
}

uint64_t sub_26AF66B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[6] = a2;
  v7[5] = a3;
  v7[4] = a1;
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v7);
  return sub_26AF469A8(0, updated);
}

uint64_t sub_26AF66C28@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 descriptor];
  return swift_unknownObjectRelease();
}

uint64_t SoftwareUpdateContentView.init<>(header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v17 = a1;
  v16[7] = a2;
  v16[3] = a3;
  v16[5] = a4;
  v16[2] = 0;
  v16[1] = sub_26AF66E80;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v28[4] = a3;
  v28[0] = a3;
  v16[4] = MEMORY[0x277CE1428];
  v28[1] = MEMORY[0x277CE1428];
  v28[2] = a4;
  v16[6] = MEMORY[0x277CE1410];
  v28[3] = MEMORY[0x277CE1410];
  updated = type metadata accessor for SoftwareUpdateContentView(0, v28);
  v19 = *(*(updated - 1) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v21 = v16 - v18;
  v20 = v18;
  MEMORY[0x28223BE20](v5);
  v24 = (v16 - v20);
  v27 = v16 - v20;
  v25 = v6;
  v26 = v7;
  SoftwareUpdateContentView.init(header:footer:)(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  sub_26AF796BC(v21, v24, updated);
  sub_26AF79AA4(v24, v22, updated);
  return sub_26AF7A054(v24, updated);
}

uint64_t sub_26AF66E80@<X0>(uint64_t a2@<X8>)
{
  sub_26B079B90();
  v5 = MEMORY[0x277CE1428];
  sub_26AE9463C(v4, MEMORY[0x277CE1428], v4);
  return sub_26AE94B4C(v4, v5, a2);
}

uint64_t SoftwareUpdateContentView.init<>(footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v16[1] = a1;
  v16[2] = a2;
  v16[4] = a3;
  v16[6] = a4;
  v16[7] = 0;
  v16[8] = sub_26AF67064;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v27[4] = a3;
  v16[3] = MEMORY[0x277CE1428];
  v27[0] = MEMORY[0x277CE1428];
  v27[1] = a3;
  v16[5] = MEMORY[0x277CE1410];
  v27[2] = MEMORY[0x277CE1410];
  v27[3] = a4;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v27);
  v18 = *(*(updated - 1) + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](sub_26AF67064);
  v20 = v16 - v17;
  v19 = v17;
  MEMORY[0x28223BE20](v5);
  v23 = (v16 - v19);
  v26 = v16 - v19;
  v24 = v6;
  v25 = v7;
  SoftwareUpdateContentView.init(header:footer:)(v8, v9, v6, v7, v10, v11, v12, v13, v14);
  sub_26AF7A318(v20, v23, updated);
  sub_26AF7A700(v23, v21, updated);
  return sub_26AF7ACB0(v23, updated);
}

uint64_t sub_26AF67064@<X0>(uint64_t a2@<X8>)
{
  sub_26B079B90();
  v5 = MEMORY[0x277CE1428];
  sub_26AE9463C(v4, MEMORY[0x277CE1428], v4);
  return sub_26AE94B4C(v4, v5, a2);
}

double SoftwareUpdateContentView.init<>()@<D0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v7[1] = 0;
  v7[2] = sub_26AF671FC;
  v7[0] = sub_26AF67258;
  v14 = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD580, &qword_26B08C200) - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](sub_26AF671FC);
  v11 = v7 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](v1);
  v13 = v7 - v10;
  v14 = v7 - v10;
  SoftwareUpdateContentView.init(header:footer:)(v2, v4, v3, v4, MEMORY[0x277CE1428], MEMORY[0x277CE1428], MEMORY[0x277CE1410], MEMORY[0x277CE1410], v5);
  sub_26AF7AF74(v11, v13);
  *&result = sub_26AF7AF74(v13, v12).n128_u64[0];
  return result;
}

uint64_t sub_26AF671FC@<X0>(uint64_t a2@<X8>)
{
  sub_26B079B90();
  v5 = MEMORY[0x277CE1428];
  sub_26AE9463C(v4, MEMORY[0x277CE1428], v4);
  return sub_26AE94B4C(v4, v5, a2);
}

uint64_t sub_26AF67258@<X0>(uint64_t a2@<X8>)
{
  sub_26B079B90();
  v5 = MEMORY[0x277CE1428];
  sub_26AE9463C(v4, MEMORY[0x277CE1428], v4);
  return sub_26AE94B4C(v4, v5, a2);
}

uint64_t sub_26AF674A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v14 = sub_26B078D30();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v15 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  v3 = EnvironmentValues.reactiveAnalytics.getter();
  v4 = v12;
  v5 = v14;
  v6 = v3;
  v7 = v15;
  *v11 = v6;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_26AF675DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v14 = sub_26B078D30();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v15 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  v3 = EnvironmentValues.deepLinkRequest.getter();
  v4 = v12;
  v5 = v14;
  v6 = v3;
  v7 = v15;
  *v11 = v6;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_26AF67710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v15 = sub_26B078D30();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v14 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  EnvironmentValues.deepLinkResponse.getter();
  v3 = v11;
  v4 = v12;
  v5 = v14;
  v6 = v15;
  v7 = v17;
  *v11 = v16;
  v3[1] = v7;
  return (*(v4 + 8))(v5, v6);
}

uint64_t sub_26AF67818(uint64_t *a1)
{
  sub_26AF0933C(a1, v3);
  v2[0] = v3[0];
  v2[1] = v3[1];
  return EnvironmentValues.deepLinkResponse.setter(v2);
}

uint64_t sub_26AF67860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B0789F0();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_26B078C50();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_26AF67A08(uint64_t a1)
{
  v4 = a1;
  v1 = sub_26B0789F0();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_26B078C60();
}

uint64_t sub_26AF67AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B078B00();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_26B078CA0();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_26AF67C80(uint64_t a1)
{
  v4 = a1;
  v1 = sub_26B078B00();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_26B078CB0();
}

uint64_t sub_26AF67E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B079C30();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_26B078D00();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

void *sub_26AF67FB8(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B0789F0();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF6808C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B0789F0();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_26AF68128(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AF68214(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B0789F0();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AF68214(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B0789F0();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AF682B0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_26AEF6B48(*a1, v4, v5 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void *sub_26AF68318(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079C30();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF683EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079C30();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_26AF68488(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AF68574(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B079C30();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AF68574(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079C30();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_26AF6863C()
{
  v2 = qword_2803DD0F8;
  if (!qword_2803DD0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCF10, qword_26B08BA48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD0F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF686FC()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_26AF68AA4(uint64_t a1, uint64_t a2, int *a3)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v30 = a3[13];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B0789F0();
    (*(*(v3 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v30), (a1 + v30), *(*(v32 - 8) + 64));
  }

  __dst = (a2 + a3[14]);
  __src = (a1 + a3[14]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B078B00();
    (*(*(v4 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v27 - 8) + 64));
  }

  v5 = a2 + a3[15];
  v6 = a1 + a3[15];
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  v7 = a2 + a3[16];
  v8 = a1 + a3[16];
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  v9 = a2 + a3[17];
  v10 = a1 + a3[17];
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = a2 + a3[18];
  v12 = a3[18];
  *v11 = *(a1 + v12);
  *(v11 + 16) = *(a1 + v12 + 16);
  v22 = (a2 + a3[19]);
  v23 = (a1 + a3[19]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26B079C30();
    (*(*(v13 - 8) + 32))(v22, v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v22, v23, *(*(v24 - 8) + 64));
  }

  *(a2 + a3[20]) = *(a1 + a3[20]);
  *(a2 + a3[21]) = *(a1 + a3[21]);
  result = *(a1 + a3[22]);
  *(a2 + a3[22]) = result;
  v15 = (a2 + a3[23]);
  v16 = (a1 + a3[23]);
  v17 = *v16;
  v18 = v16[1];
  *v15 = v17;
  v15[1] = v18;
  v19 = a3[24];
  v20 = (a2 + v19);
  v21 = *(a1 + v19 + 8);
  *v20 = *(a1 + v19);
  v20[1] = v21;
  return result;
}

uint64_t sub_26AF68E8C()
{
  v1[6] = v1;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v1[2] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[5] = v10;
  v2 = *(type metadata accessor for SoftwareUpdateContentView(0, (v1 + 2)) - 8);
  v6 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v3 = swift_task_alloc();
  *(v5 + 56) = v3;
  *v3 = *(v5 + 48);
  v3[1] = sub_26AF68FC0;

  return sub_26AF48C38(v0 + v6, v7, v8, v9, v10);
}

uint64_t sub_26AF68FC0()
{
  v3 = *v0;
  *(v3 + 48) = *v0;

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_26AF690E8()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF69490()
{
  v7 = v0[2];
  v8[5] = v7;
  v4 = v0[3];
  v8[4] = v4;
  v5 = v0[4];
  v6 = v0[5];
  v8[0] = v7;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v8);
  v2 = v0 + ((*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80));

  return sub_26AF4A5B0(v2, v7, v4, v5, v6);
}

uint64_t sub_26AF69548()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF698F0()
{
  v7 = v0[2];
  v8[5] = v7;
  v4 = v0[3];
  v8[4] = v4;
  v5 = v0[4];
  v6 = v0[5];
  v8[0] = v7;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v8);
  v2 = v0 + ((*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80));

  return sub_26AF4AB08(v2, v7, v4, v5, v6);
}

uint64_t sub_26AF699A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  v6 = *(a3 + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  return a1;
}

uint64_t sub_26AF69A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 - 8) + 8))();
  v9 = *(a3 + 36);
  if (*(a1 + v9))
  {
  }

  if (*(a1 + v9 + 16))
  {
  }

  v5 = (a1 + *(a4 + 36));
  if (*v5)
  {
  }

  if (v5[2])
  {
  }

  return a1;
}

uint64_t sub_26AF69B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a2 - 8) + 8))();
  v10 = *(a3 + 36);
  if (*(a1 + v10))
  {
  }

  if (*(a1 + v10 + 16))
  {
  }

  v6 = (a1 + *(a4 + 36));
  if (*v6)
  {
  }

  if (v6[2])
  {
  }

  return a1;
}

uint64_t sub_26AF69C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a3 - 8) + 16))();
  v28 = *(a4 + 36);
  if (*(a1 + v28))
  {
    v21 = *(a1 + v28);
    v22 = *(a1 + v28 + 8);

    v6 = (a2 + v28);
    *v6 = v21;
    v6[1] = v22;
  }

  else
  {
    *(a2 + v28) = *(a1 + v28);
  }

  v19 = a2 + v28;
  v20 = a1 + v28;
  if (*(a1 + v28 + 16))
  {
    v17 = *(v20 + 16);
    v18 = *(a1 + v28 + 24);

    *(v19 + 16) = v17;
    *(a2 + v28 + 24) = v18;
  }

  else
  {
    *(v19 + 16) = *(v20 + 16);
  }

  v15 = (a2 + *(a5 + 36));
  v16 = (a1 + *(a5 + 36));
  if (*v16)
  {
    v13 = *v16;
    v14 = v16[1];

    *v15 = v13;
    v15[1] = v14;
  }

  else
  {
    *v15 = *v16;
  }

  if (v16[2])
  {
    v11 = v16[2];
    v12 = v16[3];

    v15[2] = v11;
    v15[3] = v12;
  }

  else
  {
    *(v15 + 1) = *(v16 + 1);
  }

  v7 = *(a6 + 52);
  v9 = a2 + v7;
  *(a2 + v7) = *(a1 + v7);
  v10 = *(a1 + v7 + 8);
  sub_26B078640();
  result = a2;
  *(v9 + 8) = v10;
  return result;
}

uint64_t sub_26AF69EFC()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF6A2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2[2];
  v12[5] = v7;
  v8 = v2[3];
  v12[4] = v8;
  v9 = v2[4];
  v10 = v2[5];
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v12);
  v4 = (v2 + ((*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80)));

  return sub_26AF506DC(a1, v4, v7, v8, v9, v10, a2);
}

uint64_t sub_26AF6A39C()
{
  v16 = v0[4];
  v15 = v0[5];
  v1 = v0[6];
  v2 = v0[7];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 64) & ~v3;
  swift_unknownObjectRelease();

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF6A750(uint64_t a1)
{
  v2[6] = v2;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = v12;
  v2[5] = v13;
  v3 = *(type metadata accessor for SoftwareUpdateContentView(0, (v2 + 2)) - 8);
  v9 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v4 = swift_task_alloc();
  *(v6 + 56) = v4;
  *v4 = *(v6 + 48);
  v4[1] = sub_26AF6A8A4;

  return sub_26AF61FF4(a1, v7, v8, v1 + v9, v10, v11, v12, v13);
}

uint64_t sub_26AF6A8A4()
{
  v3 = *v0;
  *(v3 + 48) = *v0;

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_26AF6A9CC()
{
  v16 = v0[4];
  v15 = v0[5];
  v1 = v0[6];
  v2 = v0[7];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 64) & ~v3;
  swift_unknownObjectRelease();

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF6AD80(uint64_t a1)
{
  v2[6] = v2;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = v12;
  v2[5] = v13;
  v3 = *(type metadata accessor for SoftwareUpdateContentView(0, (v2 + 2)) - 8);
  v9 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v4 = swift_task_alloc();
  *(v6 + 56) = v4;
  *v4 = *(v6 + 48);
  v4[1] = sub_26AF6AED4;

  return sub_26AF617F8(a1, v7, v8, v1 + v9, v10, v11, v12, v13);
}

uint64_t sub_26AF6AED4()
{
  v3 = *v0;
  *(v3 + 48) = *v0;

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_26AF6AFFC()
{
  v16 = v0[4];
  v15 = v0[5];
  v1 = v0[6];
  v2 = v0[7];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 64) & ~v3;
  swift_unknownObjectRelease();

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF6B3B0(uint64_t a1)
{
  v2[6] = v2;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = v12;
  v2[5] = v13;
  v3 = *(type metadata accessor for SoftwareUpdateContentView(0, (v2 + 2)) - 8);
  v9 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v4 = swift_task_alloc();
  *(v6 + 56) = v4;
  *v4 = *(v6 + 48);
  v4[1] = sub_26AF6B504;

  return sub_26AF61000(a1, v7, v8, v1 + v9, v10, v11, v12, v13);
}

uint64_t sub_26AF6B504()
{
  v3 = *v0;
  *(v3 + 48) = *v0;

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

unint64_t sub_26AF6B6FC()
{
  v2 = qword_2803DD148;
  if (!qword_2803DD148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD148);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF6B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a3 - 8) + 16))();
  *(a2 + *(a4 + 36)) = *(a1 + *(a4 + 36));
  v11 = *(a5 + 36);
  v12 = *(a1 + v11);

  result = a2;
  v6 = a2 + v11;
  *v6 = v12;
  *(v6 + 8) = *(a1 + v11 + 8);
  return result;
}

unint64_t sub_26AF6B8A8()
{
  v2 = qword_2803DD160;
  if (!qword_2803DD160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD158, &qword_26B08BF28);
    sub_26AF6B948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6B948()
{
  v2 = qword_2803DD168;
  if (!qword_2803DD168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD170, &qword_26B08BF30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF6B9DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 255)
  {
    return sub_26AF6BA3C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26AF6BAA0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26AE95D28(result, a2, a3 & 1);
    return sub_26B078640();
  }

  return result;
}

unint64_t sub_26AF6BAFC()
{
  v2 = qword_2803DD178;
  if (!qword_2803DD178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
    sub_26AF6B8A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD178);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF6BB94(uint64_t a1)
{
  if (*(a1 + 32) != 255)
  {
    sub_26AF6BBEC(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  return a1;
}

uint64_t sub_26AF6BC50(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26AE95AFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26AF6BCAC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

uint64_t sub_26AF6BD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  if (!(*(*(v3 - 8) + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    if (!(*(*(v4 - 8) + 48))(a1, 1))
    {
      v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        if (!(*(*(v7 - 8) + 48))(v17, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v10 - 8) + 8))(v17);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v13 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
            v11 = sub_26B079100();
            (*(*(v11 - 8) + 8))(v13);
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            if (!(*(*(v15 - 8) + 48))(v17, 1))
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v8 - 8) + 8))(v17);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

              v14 = v17 + *(v15 + 36);
              v9 = sub_26B079100();
              (*(*(v9 - 8) + 8))(v14);
            }
          }
        }
      }

      else
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v5 - 8) + 8))(v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v16 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v6 = sub_26B079100();
        (*(*(v6 - 8) + 8))(v16);
      }
    }
  }

  (*(*(a2 - 8) + 8))(a1 + *(a3 + 48));
  return a1;
}

uint64_t sub_26AF6C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  if (!(*(*(v3 - 8) + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    if (!(*(*(v4 - 8) + 48))(a1, 1))
    {
      v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        if (!(*(*(v7 - 8) + 48))(v17, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v10 - 8) + 8))(v17);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v13 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
            v11 = sub_26B079100();
            (*(*(v11 - 8) + 8))(v13);
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            if (!(*(*(v15 - 8) + 48))(v17, 1))
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v8 - 8) + 8))(v17);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

              v14 = v17 + *(v15 + 36);
              v9 = sub_26B079100();
              (*(*(v9 - 8) + 8))(v14);
            }
          }
        }
      }

      else
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v5 - 8) + 8))(v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v16 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v6 = sub_26B079100();
        (*(*(v6 - 8) + 8))(v16);
      }
    }
  }

  (*(*(a2 - 8) + 8))(a1 + *(a3 + 48));

  return a1;
}

_OWORD *sub_26AF6C6CC(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  v67 = *(v66 - 8);
  if ((*(v67 + 48))(a1, 1))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E0, &qword_26B08BF98);
    memcpy(a2, a1, *(*(v25 - 8) + 64));
  }

  else
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(a1, 1))
    {
      memcpy(a2, a1, *(v67 + 64));
    }

    else
    {
      *a2 = *a1;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48);
      v56 = a2 + *(v8 + 44);
      v57 = a1 + *(v8 + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        v48 = *(v47 - 8);
        if ((*(v48 + 48))(v57, 1))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
          memcpy(v56, v57, *(*(v24 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v19 - 8) + 16))(v56, v57);
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
            *&v56[*(v20 + 36)] = *&v57[*(v20 + 36)];
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
            v34 = &v56[*(v21 + 36)];
            v32 = &v57[*(v21 + 36)];
            v31 = *v32;

            *v34 = v31;
            v33 = *(v32 + 1);
            v35 = *(v32 + 2);

            *(v34 + 1) = v33;
            *(v34 + 2) = v35;
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v37 = &v56[*(v22 + 36)];
            v36 = &v57[*(v22 + 36)];
            v23 = sub_26B079100();
            (*(*(v23 - 8) + 16))(v37, v36);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v46 = *(v45 - 8);
            if ((*(v46 + 48))(v57, 1))
            {
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
              memcpy(v56, v57, *(*(v18 - 8) + 64));
            }

            else
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v14 - 8) + 16))(v56, v57);
              v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
              *&v56[*(v15 + 36)] = *&v57[*(v15 + 36)];
              v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
              v41 = &v56[*(v16 + 36)];
              v39 = &v57[*(v16 + 36)];
              v38 = *v39;

              *v41 = v38;
              v40 = *(v39 + 1);
              v42 = *(v39 + 2);

              *(v41 + 1) = v40;
              *(v41 + 2) = v42;
              v44 = &v56[*(v45 + 36)];
              v43 = &v57[*(v45 + 36)];
              v17 = sub_26B079100();
              (*(*(v17 - 8) + 16))(v44, v43);
              (*(v46 + 56))(v56, 0, 1, v45);
            }

            swift_storeEnumTagMultiPayload();
          }

          (*(v48 + 56))(v56, 0, 1, v47);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v9 - 8) + 16))(v56, v57);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&v56[*(v10 + 36)] = *&v57[*(v10 + 36)];
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v52 = &v56[*(v11 + 36)];
        v50 = &v57[*(v11 + 36)];
        v49 = *v50;

        *v52 = v49;
        v51 = *(v50 + 1);
        v53 = *(v50 + 2);

        *(v52 + 1) = v51;
        *(v52 + 2) = v53;
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v55 = &v56[*(v12 + 36)];
        v54 = &v57[*(v12 + 36)];
        v13 = sub_26B079100();
        (*(*(v13 - 8) + 16))(v55, v54);
        swift_storeEnumTagMultiPayload();
      }

      (*(v59 + 56))(a2, 0, 1, v58);
    }

    (*(v67 + 56))(a2, 0, 1, v66);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E8, &qword_26B08BFA0);
  *(a2 + *(v26 + 52)) = *(a1 + *(v26 + 52));
  (*(*(a3 - 8) + 16))(a2 + *(a4 + 48), a1 + *(a4 + 48));
  *(a2 + *(a7 + 36)) = *(a1 + *(a7 + 36));
  v30 = a2 + *(a8 + 36);
  v29 = a1 + *(a8 + 36);
  v28 = *v29;

  result = a2;
  *v30 = v28;
  v30[8] = v29[8];
  return result;
}

unint64_t sub_26AF6D040()
{
  v2 = qword_2803DD1F0;
  if (!qword_2803DD1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD180, &qword_26B08BF38);
    sub_26AF6D0D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6D0D8()
{
  v2 = qword_2803DD1F8;
  if (!qword_2803DD1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD188, &qword_26B08BF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD1F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF6D160(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    if (!(*(*(v2 - 8) + 48))(a1, 1))
    {
      v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        if (!(*(*(v5 - 8) + 48))(v15, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v8 - 8) + 8))(v15);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v11 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
            v9 = sub_26B079100();
            (*(*(v9 - 8) + 8))(v11);
          }

          else
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            if (!(*(*(v13 - 8) + 48))(v15, 1))
            {
              v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v6 - 8) + 8))(v15);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

              v12 = v15 + *(v13 + 36);
              v7 = sub_26B079100();
              (*(*(v7 - 8) + 8))(v12);
            }
          }
        }
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v3 - 8) + 8))(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v14 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v4 = sub_26B079100();
        (*(*(v4 - 8) + 8))(v14);
      }
    }
  }

  return a1;
}

_OWORD *sub_26AF6D5DC(_OWORD *a1, _OWORD *a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(a1, 1))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E0, &qword_26B08BF98);
    memcpy(a2, a1, *(*(v25 - 8) + 64));
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(a1, 1))
    {
      memcpy(a2, a1, *(v44 + 64));
    }

    else
    {
      *a2 = *a1;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48);
      v37 = a2 + *(v2 + 44);
      v38 = a1 + *(v2 + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v38, 1))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
          memcpy(v37, v38, *(*(v24 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v17 - 8) + 32))(v37, v38);
            v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
            *&v37[*(v18 + 36)] = *&v38[*(v18 + 36)];
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
            v20 = &v37[*(v19 + 36)];
            v21 = &v38[*(v19 + 36)];
            *v20 = *v21;
            *(v20 + 2) = *(v21 + 2);
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v28 = &v37[*(v22 + 36)];
            v27 = &v38[*(v22 + 36)];
            v23 = sub_26B079100();
            (*(*(v23 - 8) + 32))(v28, v27);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v32 = *(v31 - 8);
            if ((*(v32 + 48))(v38, 1))
            {
              v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
              memcpy(v37, v38, *(*(v16 - 8) + 64));
            }

            else
            {
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v10 - 8) + 32))(v37, v38);
              v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
              *&v37[*(v11 + 36)] = *&v38[*(v11 + 36)];
              v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
              v13 = &v37[*(v12 + 36)];
              v14 = &v38[*(v12 + 36)];
              *v13 = *v14;
              *(v13 + 2) = *(v14 + 2);
              v30 = &v37[*(v31 + 36)];
              v29 = &v38[*(v31 + 36)];
              v15 = sub_26B079100();
              (*(*(v15 - 8) + 32))(v30, v29);
              (*(v32 + 56))(v37, 0, 1, v31);
            }

            swift_storeEnumTagMultiPayload();
          }

          (*(v34 + 56))(v37, 0, 1, v33);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v3 - 8) + 32))(v37, v38);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&v37[*(v4 + 36)] = *&v38[*(v4 + 36)];
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v6 = &v37[*(v5 + 36)];
        v7 = &v38[*(v5 + 36)];
        *v6 = *v7;
        *(v6 + 2) = *(v7 + 2);
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v36 = &v37[*(v8 + 36)];
        v35 = &v38[*(v8 + 36)];
        v9 = sub_26B079100();
        (*(*(v9 - 8) + 32))(v36, v35);
        swift_storeEnumTagMultiPayload();
      }

      (*(v40 + 56))(a2, 0, 1, v39);
    }

    (*(v44 + 56))(a2, 0, 1, v43);
  }

  return a2;
}