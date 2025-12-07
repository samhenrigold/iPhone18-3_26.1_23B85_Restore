uint64_t sub_24EE72724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v162 = &v152 - v10;
  v11 = sub_24F91EF78();
  v170 = *(v11 - 8);
  v171 = v11;
  MEMORY[0x28223BE20](v11);
  v169 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v168 = &v152 - v14;
  v15 = sub_24F91EE38();
  v166 = *(v15 - 8);
  v167 = v15;
  MEMORY[0x28223BE20](v15);
  v165 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F91F008();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v164 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v152 - v21;
  MEMORY[0x28223BE20](v22);
  v155 = &v152 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v152 - v25;
  v27 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v174 + 1) = a1;
  sub_24EE75504(a1, v29, type metadata accessor for EditorialStoryCard.Badge);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v31 = (*(*(v30 - 8) + 48))(v29, 2, v30);
  v154 = a2;
  v163 = a3;
  *&v174 = v18;
  v172 = v17;
  if (v31)
  {
    if (v31 == 1)
    {
      v32 = sub_24F927628();
      v34 = v33;
      v35 = sub_24F925828();
      sub_24F923318();
      *&v199 = 0x4030000000000000;
      *(&v199 + 1) = v32;
      *&v200 = v34;
      *(&v200 + 1) = a2;
      LOBYTE(v201) = v35;
      *(&v201 + 1) = v36;
      *&v202[0] = v37;
      *(&v202[0] + 1) = v38;
      *&v202[1] = v39;
      BYTE8(v202[1]) = 0;
      v194 = v201;
      v195[0] = v202[0];
      *(v195 + 9) = *(v202 + 9);
      v192 = v199;
      v193 = v200;
      LOBYTE(v176) = 0;
      BYTE9(v195[1]) = 0;

      sub_24E60169C(&v199, &v182, &qword_27F232140, &qword_24F9A8AF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232140, &qword_24F9A8AF8);
      sub_24EE751D4();
      sub_24F924E28();
      v184 = v190;
      v185[0] = v191[0];
      *(v185 + 10) = *(v191 + 10);
      v182 = v188;
      v183 = v189;
      LOBYTE(v180[0]) = 1;
      BYTE10(v185[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232160, &qword_24F9A8B10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232168, &qword_24F9A8B18);
      sub_24EE75318();
      sub_24EE75428();
      sub_24F924E28();
      sub_24E601704(&v199, &qword_27F232140, &qword_24F9A8AF8);
      v205 = v194;
      v206[0] = v195[0];
      *(v206 + 11) = *(v195 + 11);
      v203 = v192;
      v204 = v193;
    }

    else
    {
      LOBYTE(v199) = 0;
      BYTE9(v195[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232180, &unk_24F9A8B20);
      sub_24EE753A4();
      sub_24F924E28();
      v194 = v184;
      v195[0] = v185[0];
      *(v195 + 10) = *(v185 + 10);
      v192 = v182;
      v193 = v183;
      LOBYTE(v188) = 0;
      BYTE10(v195[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232160, &qword_24F9A8B10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232168, &qword_24F9A8B18);
      sub_24EE75318();
      sub_24EE75428();
      sub_24F924E28();
    }

    v48 = v17;
    v49 = v18;
    v50 = v173;
  }

  else
  {
    v156 = v8;
    (*(v18 + 32))(v26, v29, v17);
    v40 = v165;
    sub_24F91EE18();
    sub_24EE754B4(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
    v42 = v167;
    v41 = v168;
    sub_24F92BB88();
    v43 = v169;
    sub_24F92BC08();
    sub_24EE754B4(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v44 = v171;
    v45 = sub_24F92AFF8();
    v46 = *(v170 + 8);
    v46(v43, v44);
    v46(v41, v44);
    (*(v166 + 8))(v40, v42);
    if (v45)
    {
      v201 = 0u;
      v202[0] = 0u;
      v199 = 0u;
      v200 = 0u;
      v47 = 0;
    }

    else
    {
      (*(v174 + 16))(v155, v26, v172);
      v51 = sub_24F925DF8();
      v53 = v52;
      v55 = v54;
      type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
      v56 = sub_24F925C98();
      v58 = v57;
      v60 = v59;
      sub_24E600B40(v51, v53, v55 & 1);

      *&v192 = v154;
      v161 = sub_24F925C58();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      sub_24E600B40(v56, v58, v60 & 1);

      v67 = sub_24F925828();
      sub_24F923318();
      LOBYTE(v192) = v64 & 1;
      LOBYTE(v182) = 0;
      *&v199 = v161;
      *(&v199 + 1) = v62;
      LOBYTE(v200) = v64 & 1;
      *(&v200 + 1) = v66;
      LOBYTE(v201) = v67;
      *(&v201 + 1) = v68;
      *&v202[0] = v69;
      *(&v202[0] + 1) = v70;
    }

    v50 = v173;
    *&v202[1] = v47;
    BYTE8(v202[1]) = 0;
    v194 = v201;
    v195[0] = v202[0];
    *(v195 + 9) = *(v202 + 9);
    v192 = v199;
    v193 = v200;
    LOBYTE(v176) = 1;
    BYTE9(v195[1]) = 1;
    sub_24E60169C(&v199, &v182, &qword_27F232180, &unk_24F9A8B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232180, &unk_24F9A8B20);
    sub_24EE753A4();
    sub_24F924E28();
    v184 = v190;
    v185[0] = v191[0];
    *(v185 + 10) = *(v191 + 10);
    v182 = v188;
    v183 = v189;
    LOBYTE(v180[0]) = 0;
    BYTE10(v185[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232160, &qword_24F9A8B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232168, &qword_24F9A8B18);
    sub_24EE75318();
    sub_24EE75428();
    sub_24F924E28();
    sub_24E601704(&v199, &qword_27F232180, &unk_24F9A8B20);
    v49 = v174;
    v48 = v172;
    (*(v174 + 8))(v26, v172);
    v205 = v194;
    v206[0] = v195[0];
    *(v206 + 11) = *(v195 + 11);
    v203 = v192;
    v204 = v193;
    v8 = v156;
  }

  v71 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  v72 = *(&v174 + 1);
  v73 = v162;
  sub_24E60169C(*(&v174 + 1) + *(v71 + 20), v162, &qword_27F215340, &qword_24F943530);
  v74 = *(v49 + 48);
  v75 = v74(v73, 1, v48);
  v157 = v71;
  if (v75 == 1)
  {
    sub_24E601704(v73, &qword_27F215340, &qword_24F943530);
    v173 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    v158 = 0;
  }

  else
  {
    v153 = v74;
    v156 = v8;
    (*(v49 + 32))(v50, v73, v48);
    v76 = v165;
    sub_24F91EE18();
    sub_24EE754B4(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
    v77 = v167;
    v78 = v168;
    sub_24F92BB88();
    v79 = v169;
    sub_24F92BC08();
    sub_24EE754B4(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v80 = v171;
    v81 = sub_24F92AFF8();
    v82 = *(v170 + 8);
    v82(v79, v80);
    v82(v78, v80);
    (*(v166 + 8))(v76, v77);
    if (v81)
    {
      v49 = v174;
      v48 = v172;
      (*(v174 + 8))(v173, v172);
      v173 = 0;
      v161 = 0;
      v162 = 0;
      v159 = 0;
      v160 = 0;
      v158 = 0;
      v8 = v156;
      v71 = v157;
      v72 = *(&v174 + 1);
    }

    else
    {
      (*(v174 + 16))(v155, v173, v172);
      v83 = sub_24F925DF8();
      v85 = v84;
      v87 = v86;
      v71 = v157;
      v88 = sub_24F925C98();
      v90 = v89;
      LODWORD(v162) = v91;
      v93 = v92;
      sub_24E600B40(v83, v85, v87 & 1);
      v72 = *(&v174 + 1);

      v94 = v174;
      v48 = v172;
      (*(v174 + 8))(v173, v172);
      KeyPath = swift_getKeyPath();
      v96 = v162 & 1;
      v173 = v88;
      v162 = v90;
      v160 = v96;
      sub_24E5FD138(v88, v90, v96);
      v161 = v93;

      v159 = KeyPath;

      v158 = 3;
      v49 = v94;
      v8 = v156;
    }

    v74 = v153;
  }

  sub_24E60169C(v72 + *(v71 + 24), v8, &qword_27F215340, &qword_24F943530);
  if (v74(v8, 1, v48) == 1)
  {
    sub_24E601704(v8, &qword_27F215340, &qword_24F943530);
  }

  else
  {
    (*(v49 + 32))(v164, v8, v48);
    v97 = v165;
    sub_24F91EE18();
    sub_24EE754B4(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
    v98 = v167;
    v99 = v168;
    sub_24F92BB88();
    v100 = v169;
    sub_24F92BC08();
    sub_24EE754B4(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v101 = v171;
    v102 = sub_24F92AFF8();
    v103 = *(v170 + 8);
    v103(v100, v101);
    v103(v99, v101);
    (*(v166 + 8))(v97, v98);
    if ((v102 & 1) == 0)
    {
      (*(v174 + 16))(v155, v164, v48);
      v115 = sub_24F925DF8();
      v117 = v116;
      v119 = v118;
      v120 = sub_24F925C98();
      v122 = v121;
      v124 = v123;
      sub_24E600B40(v115, v117, v119 & 1);

      *&v192 = v154;
      v104 = sub_24F925C58();
      v105 = v125;
      v127 = v126;
      v106 = v128;
      sub_24E600B40(v120, v122, v124 & 1);

      v107 = swift_getKeyPath();
      v129 = sub_24F925818();
      sub_24F923318();
      v111 = v130;
      v112 = v131;
      v113 = v132;
      v114 = v133;
      (*(v174 + 8))(v164, v172);
      LOBYTE(v192) = v127 & 1;
      LOBYTE(v182) = 0;
      LOBYTE(v188) = 0;
      v110 = v127 & 1;
      v109 = v129;
      v108 = 2;
      goto LABEL_22;
    }

    (*(v174 + 8))(v164, v48);
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
LABEL_22:
  v170 = v106;
  v171 = v110;
  v172 = v108;
  *&v174 = 0;
  *(&v174 + 1) = v109;
  v178 = v205;
  v179[0] = v206[0];
  *(v179 + 11) = *(v206 + 11);
  v180[2] = v205;
  v181[0] = v206[0];
  *(v181 + 11) = *(v206 + 11);
  v176 = v203;
  v177 = v204;
  v180[0] = v203;
  v180[1] = v204;
  *(v191 + 11) = *(v206 + 11);
  v190 = v205;
  v191[0] = v206[0];
  v188 = v203;
  v189 = v204;
  *&v182 = v104;
  *(&v182 + 1) = v105;
  *&v183 = v110;
  *(&v183 + 1) = v106;
  *&v184 = v107;
  *(&v184 + 1) = v108;
  *&v185[0] = 0;
  *(&v185[0] + 1) = v109;
  *&v185[1] = v111;
  *(&v185[1] + 1) = v112;
  *&v186 = v113;
  *(&v186 + 1) = v114;
  v187 = 0;
  sub_24E60169C(v180, &v192, &qword_27F232190, &qword_24F9A8B30);
  v134 = v173;
  v135 = v161;
  v136 = v162;
  v138 = v159;
  v137 = v160;
  v139 = v107;
  v140 = v105;
  v141 = v158;
  sub_24ED1A264(v173, v162, v160, v161);
  sub_24E60169C(&v182, &v192, &qword_27F232198, &qword_24F9A8B38);
  sub_24ED1A2B4(v134, v136, v137, v135, v138);
  *&v175[55] = v185[0];
  *&v175[71] = v185[1];
  *&v175[87] = v186;
  v175[103] = v187;
  *&v175[7] = v182;
  *&v175[23] = v183;
  *&v175[39] = v184;
  v142 = v188;
  v143 = v189;
  v144 = v191[1];
  v145 = v163;
  *(v163 + 48) = v191[0];
  *(v145 + 64) = v144;
  v146 = v190;
  *(v145 + 16) = v143;
  *(v145 + 32) = v146;
  *v145 = v142;
  *(v145 + 80) = v134;
  *(v145 + 88) = v136;
  *(v145 + 96) = v137;
  *(v145 + 104) = v135;
  *(v145 + 112) = v138;
  *(v145 + 120) = v141;
  *(v145 + 128) = 0;
  v147 = *&v175[16];
  *(v145 + 129) = *v175;
  *(v145 + 145) = v147;
  v148 = *&v175[48];
  *(v145 + 161) = *&v175[32];
  v149 = *&v175[64];
  v150 = *&v175[80];
  *(v145 + 225) = *&v175[96];
  *(v145 + 209) = v150;
  *(v145 + 193) = v149;
  *(v145 + 177) = v148;
  *&v192 = v104;
  *(&v192 + 1) = v140;
  *&v193 = v171;
  *(&v193 + 1) = v170;
  *&v194 = v139;
  *(&v194 + 1) = v172;
  v195[0] = v174;
  *&v195[1] = v111;
  *(&v195[1] + 1) = v112;
  v196 = v113;
  v197 = v114;
  v198 = 0;
  sub_24E601704(&v192, &qword_27F232198, &qword_24F9A8B38);
  sub_24ED1A2B4(v134, v136, v137, v135, v138);
  v201 = v178;
  v202[0] = v179[0];
  *(v202 + 11) = *(v179 + 11);
  v199 = v176;
  v200 = v177;
  return sub_24E601704(&v199, &qword_27F232190, &qword_24F9A8B30);
}

__n128 sub_24EE739D4@<Q0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE0, &qword_24F9FADC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800, &qword_24F93B370);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  if (a1 >> 62)
  {
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v15;
  if (v15 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15 != 2;
  }

  v18 = sub_24EAE3FA0(v17);
  v63 = sub_24E8E8C20(v18);

  if (a2)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = 0.15;
  }

  v62 = v16;
  if (v16 == 4)
  {
    v60 = 0;
    v20 = 0;
    v59 = -1065353216;
  }

  else if (v16)
  {
    v60 = 0;
    v59 = 0;
    v20 = 1;
  }

  else
  {
    v59 = 0;
    v20 = 0;
    v60 = 0x3ECCCCCDBFD9999ALL;
  }

  v65 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232340, &qword_24F9A9068);
  sub_24F926F28();
  *&v21 = v64.n128_u64[0];
  v58 = v21;
  v57 = v64.n128_i64[1];
  v65 = 0;
  sub_24F926F28();
  v56 = v64;
  sub_24F91FD28();
  swift_allocObject();
  v65 = sub_24F91FBD8();
  sub_24F926F28();
  v54 = v64.n128_i64[1];
  v55 = v64.n128_u64[0];
  sub_24F91FAC8();
  v65 = MEMORY[0x253045440](0);
  sub_24F926F28();
  v52 = v64.n128_i64[1];
  v53 = v64.n128_u64[0];
  sub_24F91FBE8();
  swift_allocObject();
  v65 = sub_24F91FBD8();
  sub_24F926F28();
  v50 = v64.n128_i64[1];
  v51 = v64.n128_u64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232348, &unk_24F9A9070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = -1119379610;
  *(inited + 36) = v19;
  *(inited + 40) = 1097125811;
  sub_24F0EF924(inited);
  v49 = v23;
  swift_setDeallocating();
  v66 = v20;
  v24 = v63;
  v25 = v63[2];
  if (v25)
  {
    v45 = v14;
    v46 = a2;
    v47 = a4;
    v48 = a3;
    v65 = MEMORY[0x277D84F90];
    sub_24F458020(0, v25, 0);
    v26 = v65;
    v27 = v25;
    v28 = (v24 + 4);
    v44 = v27;
    v29 = v27;
    do
    {
      sub_24E615E00(v28, &v64);
      sub_24E615E00(&v64, v11);
      sub_24F91F6A8();
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v65 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_24F458020((v30 > 1), v31 + 1, 1);
        v26 = v65;
      }

      *(v26 + 16) = v31 + 1;
      sub_24E6009C8(v11, v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, &qword_27F21EFE0, &qword_24F9FADC0);
      v28 += 40;
      --v29;
    }

    while (v29);

    a3 = v48;
    a4 = v47;
    LOBYTE(a2) = v46;
    v14 = v45;
    v25 = v44;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v32 = 0.49;
  if (v61 == 1)
  {
    v32 = 0.8;
  }

  v33 = 0.9;
  if (a2)
  {
    v33 = 1.0;
  }

  v34 = v33 * v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0, &qword_24F957888);
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  v36 = sub_24EE1DF70(v14, v25);
  v37 = v66;
  *a4 = v49;
  *(a4 + 16) = v60;
  *(a4 + 24) = v59;
  *(a4 + 28) = v37;
  *&v38 = v58;
  *(&v38 + 1) = v57;
  result = v56;
  *(a4 + 32) = v38;
  *(a4 + 48) = result;
  *(a4 + 64) = v36;
  *(a4 + 72) = 0;
  v40 = v54;
  *(a4 + 80) = v55;
  *(a4 + 88) = v40;
  v41 = v52;
  *(a4 + 96) = v53;
  *(a4 + 104) = v41;
  v42 = v50;
  *(a4 + 112) = v51;
  *(a4 + 120) = v42;
  *(a4 + 128) = v62;
  *(a4 + 132) = v34;
  *(a4 + 136) = v34 * 200.0;
  *(a4 + 144) = 0;
  *(a4 + 152) = v26;
  *(a4 + 160) = a3;
  return result;
}

void sub_24EE7400C(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 1.25;
  if (v5 != 2)
  {
    v6 = 1.15;
  }

  if (v5 == 1)
  {
    v7 = 1.5;
  }

  else
  {
    v7 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = sub_24F925828();
  sub_24F923318();
  *a3 = a1;
  *(a3 + 8) = v7;
  *(a3 + 16) = sub_24EE77908;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  *(a3 + 64) = v13;
  *(a3 + 72) = 0;
}

uint64_t sub_24EE7412C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, a3 * 88.0, a3 * 88.0);
  v6 = type metadata accessor for SwiftUIArtworkView(0);
  v7 = v6[6];
  v8 = *MEMORY[0x277CE1010];
  v9 = sub_24F926E68();
  (*(*(v9 - 8) + 104))(a2 + v7, v8, v9);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v4;
  *(a2 + 24) = 1;
  v10 = a2 + v6[7];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(a2 + v6[8]) = 2;
  *(a2 + v6[9]) = 1;

  *&v19 = sub_24F92C7A8();
  *(&v19 + 1) = v11;
  MEMORY[0x253050C20](64, 0xE100000000000000);
  v12 = sub_24F92BA38();
  MEMORY[0x253050C20](v12);

  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232350, &qword_24F9A9080) + 52)) = v19;
  sub_24F927618();
  sub_24F9238C8();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232358, &qword_24F9A9088) + 36));
  *v13 = v19;
  v13[1] = v20;
  v13[2] = v21;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232360, &unk_24F9A9090) + 36));
  v15 = *(sub_24F924258() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = v5;
  v14[1] = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0);
  *(v14 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24EE74388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v21 = sub_24F927618();
  v23 = v22;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v24 = byte_27F39DBC1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a5;
  *&v34 = a8;
  *(&v34 + 1) = a9;
  *&v35 = a10;
  *(&v35 + 1) = a11;
  *&v36 = a6;
  *(&v36 + 1) = 0x4024000000000000;
  LOBYTE(v37) = byte_27F39DBC1;
  *(&v37 + 1) = v21;
  v38 = v23;
  sub_24EE75504(a1, a7, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  v25 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321D8, &qword_24F9A8CF0) + 36);
  v26 = v37;
  *(v25 + 64) = v36;
  *(v25 + 80) = v26;
  *(v25 + 96) = v38;
  v27 = v33;
  *v25 = v32;
  *(v25 + 16) = v27;
  v28 = v35;
  *(v25 + 32) = v34;
  *(v25 + 48) = v28;
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  *&v39[4] = a8;
  *&v39[5] = a9;
  *&v39[6] = a10;
  *&v39[7] = a11;
  v39[8] = a6;
  v39[9] = 0x4024000000000000;
  v40 = v24;
  v41 = v21;
  v42 = v23;

  sub_24E60169C(&v32, v31, &qword_27F215A98, &qword_24F940DC0);
  return sub_24E601704(v39, &qword_27F215A98, &qword_24F940DC0);
}

void *sub_24EE74580@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v20 = sub_24F927618();
  v22 = v21;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  *&v29 = a8;
  *(&v29 + 1) = a9;
  *&v30 = a10;
  *(&v30 + 1) = a11;
  *&v31 = a6;
  *(&v31 + 1) = 0x4024000000000000;
  LOBYTE(v32) = byte_27F39DBC1;
  *(&v32 + 1) = v20;
  v33 = v22;
  memcpy(__dst, a1, 0x178uLL);
  *&__dst[55] = v31;
  *&__dst[57] = v32;
  *&__dst[47] = v27;
  *&__dst[49] = v28;
  *&__dst[51] = v29;
  *&__dst[53] = v30;
  __dst[59] = v22;
  v34[0] = a2;
  v34[1] = a3;
  v34[2] = a4;
  v34[3] = a5;
  *&v34[4] = a8;
  *&v34[5] = a9;
  *&v34[6] = a10;
  *&v34[7] = a11;
  v34[8] = a6;
  v34[9] = 0x4024000000000000;
  v35 = byte_27F39DBC1;
  v36 = v20;
  v37 = v22;

  sub_24E60169C(a1, v39, &qword_27F2320D0, &qword_24F9A8A68);
  sub_24E60169C(&v27, v39, &qword_27F215A98, &qword_24F940DC0);
  sub_24E601704(v34, &qword_27F215A98, &qword_24F940DC0);
  memcpy(v38, __dst, sizeof(v38));
  memcpy(v39, __dst, sizeof(v39));
  sub_24E60169C(v38, v26, &qword_27F2320D8, &qword_24F9A8A70);
  sub_24E601704(v39, &qword_27F2320D8, &qword_24F9A8A70);
  return memcpy(a7, v38, 0x1E0uLL);
}

uint64_t sub_24EE7481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v21 = sub_24F927618();
  v23 = v22;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v24 = byte_27F39DBC1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a5;
  *&v34 = a8;
  *(&v34 + 1) = a9;
  *&v35 = a10;
  *(&v35 + 1) = a11;
  *&v36 = a6;
  *(&v36 + 1) = 0x4024000000000000;
  LOBYTE(v37) = byte_27F39DBC1;
  *(&v37 + 1) = v21;
  v38 = v23;
  sub_24E60169C(a1, a7, &qword_27F215968, &unk_24F9A8BE0);
  v25 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215970, &qword_24F940D30) + 36);
  v26 = v37;
  *(v25 + 64) = v36;
  *(v25 + 80) = v26;
  *(v25 + 96) = v38;
  v27 = v33;
  *v25 = v32;
  *(v25 + 16) = v27;
  v28 = v35;
  *(v25 + 32) = v34;
  *(v25 + 48) = v28;
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  *&v39[4] = a8;
  *&v39[5] = a9;
  *&v39[6] = a10;
  *&v39[7] = a11;
  v39[8] = a6;
  v39[9] = 0x4024000000000000;
  v40 = v24;
  v41 = v21;
  v42 = v23;

  sub_24E60169C(&v32, v31, &qword_27F215A98, &qword_24F940DC0);
  return sub_24E601704(v39, &qword_27F215A98, &qword_24F940DC0);
}

uint64_t sub_24EE74A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v21 = sub_24F927618();
  v23 = v22;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v24 = byte_27F39DBC1;
  *&v33 = a2;
  *(&v33 + 1) = a3;
  *&v34 = a4;
  *(&v34 + 1) = a5;
  *&v35 = a8;
  *(&v35 + 1) = a9;
  *&v36 = a10;
  *(&v36 + 1) = a11;
  *&v37 = a6;
  *(&v37 + 1) = 0x4024000000000000;
  LOBYTE(v38) = byte_27F39DBC1;
  *(&v38 + 1) = v21;
  v39 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AB0, &unk_24F9A8BF0);
  (*(*(v25 - 8) + 16))(a7, a1, v25);
  v26 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AB8, &qword_24F940DE0) + 36);
  v27 = v38;
  *(v26 + 64) = v37;
  *(v26 + 80) = v27;
  *(v26 + 96) = v39;
  v28 = v34;
  *v26 = v33;
  *(v26 + 16) = v28;
  v29 = v36;
  *(v26 + 32) = v35;
  *(v26 + 48) = v29;
  v40[0] = a2;
  v40[1] = a3;
  v40[2] = a4;
  v40[3] = a5;
  *&v40[4] = a8;
  *&v40[5] = a9;
  *&v40[6] = a10;
  *&v40[7] = a11;
  v40[8] = a6;
  v40[9] = 0x4024000000000000;
  v41 = v24;
  v42 = v21;
  v43 = v23;

  sub_24E60169C(&v33, v32, &qword_27F215A98, &qword_24F940DC0);
  return sub_24E601704(v40, &qword_27F215A98, &qword_24F940DC0);
}

void *sub_24EE74C30@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v12 = *(v2 + 10);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_24EE74580(__dst, v4, v5, v6, v7, v12, a2, v8, v9, v10, v11);
}

unint64_t sub_24EE74CD4()
{
  result = qword_27F2320E0;
  if (!qword_27F2320E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D0, &qword_24F9A8A68);
    sub_24E602068(&qword_27F2320E8, &qword_27F2320F0, &unk_24F9A8A78, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2320E0);
  }

  return result;
}

unint64_t sub_24EE74D8C()
{
  result = qword_27F2320F8;
  if (!qword_27F2320F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D8, &qword_24F9A8A70);
    sub_24EE74CD4();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2320F8);
  }

  return result;
}

unint64_t sub_24EE74E44()
{
  result = qword_27F232100;
  if (!qword_27F232100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320A8, &qword_24F9A8A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D0, &qword_24F9A8A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D8, &qword_24F9A8A70);
    sub_24EE74CD4();
    sub_24E6695B8();
    sub_24EE74D8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232100);
  }

  return result;
}

uint64_t sub_24EE74F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232098, &qword_24F9A8A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE74FD4()
{
  result = qword_27F232118;
  if (!qword_27F232118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320C0, &unk_24F9A8A50);
    sub_24EE75090();
    sub_24EE754B4(&qword_27F2201B0, type metadata accessor for FocusableItemScrollViewOffsetModifier, &unk_24FA1CE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232118);
  }

  return result;
}

unint64_t sub_24EE75090()
{
  result = qword_27F232120;
  if (!qword_27F232120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320B8, &qword_24F9A8A48);
    sub_24EE7511C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232120);
  }

  return result;
}

unint64_t sub_24EE7511C()
{
  result = qword_27F232128;
  if (!qword_27F232128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232110, &qword_24F9A8AB8);
    sub_24E602068(&qword_27F232130, &qword_27F232108, &qword_24F9A8A88, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232128);
  }

  return result;
}

unint64_t sub_24EE751D4()
{
  result = qword_27F232148;
  if (!qword_27F232148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232140, &qword_24F9A8AF8);
    sub_24EE75260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232148);
  }

  return result;
}

unint64_t sub_24EE75260()
{
  result = qword_27F232150;
  if (!qword_27F232150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232158, &unk_24F9A8B00);
    sub_24EB3D608();
    sub_24E602068(&qword_27F2293F0, &qword_27F2293F8, &qword_24F984BB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232150);
  }

  return result;
}

unint64_t sub_24EE75318()
{
  result = qword_27F232170;
  if (!qword_27F232170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232160, &qword_24F9A8B10);
    sub_24EE753A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232170);
  }

  return result;
}

unint64_t sub_24EE753A4()
{
  result = qword_27F232178;
  if (!qword_27F232178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232180, &unk_24F9A8B20);
    sub_24E6AF8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232178);
  }

  return result;
}

unint64_t sub_24EE75428()
{
  result = qword_27F232188;
  if (!qword_27F232188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232168, &qword_24F9A8B18);
    sub_24EE751D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232188);
  }

  return result;
}

uint64_t sub_24EE754B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE75504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE755A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EE75670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24EE75764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ArticlePageEditorialStoryCardViewModel(319);
  if (v11 <= 0x3F)
  {
    type metadata accessor for ArticlePageViewModel(319);
    if (v12 <= 0x3F)
    {
      sub_24EE7768C(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v13 <= 0x3F)
      {
        a7(319, a4, a5, a6);
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EE75878()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320C0, &unk_24F9A8A50);
  sub_24EE74FD4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE758E0()
{
  result = qword_27F2321B8;
  if (!qword_27F2321B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321A0, &qword_24F9A8B70);
    sub_24EE754B4(&qword_27F2321C0, type metadata accessor for GamesArticlePageEditorialStoryCardView.CardView, &unk_24F9A8B90);
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2321B8);
  }

  return result;
}

unint64_t sub_24EE75A5C()
{
  result = qword_27F2321E8;
  if (!qword_27F2321E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321D8, &qword_24F9A8CF0);
    sub_24EE754B4(&qword_27F2321E0, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView, &unk_24F9A8D84);
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2321E8);
  }

  return result;
}

uint64_t sub_24EE75B58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24EE75CF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_24EE75E84(uint64_t a1)
{
  type metadata accessor for ArticlePageEditorialStoryCardViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArticlePageViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_24EE7768C(319, &qword_27F228FF8, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24EE77628(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24E684120(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24EE75FC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = _s9ViewModelVMa(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[11] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24EE761B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  result = _s9ViewModelVMa(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[13];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24EE76384(uint64_t a1)
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v1 <= 0x3F)
  {
    sub_24EE77628(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      _s9ViewModelVMa(319);
      if (v3 <= 0x3F)
      {
        sub_24EE7768C(319, &qword_27F228FF8, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_24EE7768C(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_24EE77628(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_24EE7652C()
{
  result = qword_27F232228;
  if (!qword_27F232228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321F0, &qword_24F9A8CF8);
    sub_24EE765E4();
    sub_24E602068(&qword_27F232240, &qword_27F232200, &qword_24F9A8D08, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232228);
  }

  return result;
}

unint64_t sub_24EE765E4()
{
  result = qword_27F232230;
  if (!qword_27F232230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321D0, &unk_24F9A8C08);
    sub_24EE754B4(&qword_27F232238, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView, &unk_24F9A8D34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232230);
  }

  return result;
}

uint64_t sub_24EE766D8()
{
  v1 = type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + *(type metadata accessor for ArticlePageEditorialStoryCardViewModel(0) + 24);

  v5 = v4 + *(_s9ViewModelVMa(0) + 24);
  v6 = type metadata accessor for IconRowViewModel(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v8(v5 + *(v6 + 20), v7);
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F923F78();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F925218();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  v14 = v1[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F925218();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v3 + v14, 1, v15))
    {
      (*(v16 + 8))(v3 + v14, v15);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE76AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE76B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v7 = *(v6 + *(v5 + 64));

  return sub_24EE6D5E8(a1, v6, v7, a2);
}

unint64_t sub_24EE76BD4()
{
  result = qword_27F232288;
  if (!qword_27F232288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232280, &unk_24F9A8E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232288);
  }

  return result;
}

unint64_t sub_24EE76C64()
{
  result = qword_27F232290;
  if (!qword_27F232290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232290);
  }

  return result;
}

unint64_t sub_24EE76CB8()
{
  result = qword_27F232298;
  if (!qword_27F232298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232298);
  }

  return result;
}

uint64_t sub_24EE76D30(char a1)
{
  v3 = *(type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0) - 8);
  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EE7163C(a1, v5, v4);
}

unint64_t sub_24EE76DA0()
{
  result = qword_27F2322D0;
  if (!qword_27F2322D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322B0, &qword_24F9A8E40);
    sub_24E602068(&qword_27F2322D8, &qword_27F2322A8, &qword_24F9A8E38, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2322D0);
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = v1[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  if (!(*(*(v5 - 8) + 48))(v3 + v4, 2, v5))
  {
    v6 = sub_24F91F008();
    (*(*(v6 - 8) + 8))(v3 + v4, v6);
  }

  v7 = v1[6];
  v8 = sub_24F91F008();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v11 = v1[7];
  if (!v10(v3 + v11, 1, v8))
  {
    (*(v9 + 8))(v3 + v11, v8);
  }

  v12 = v3 + v1[9];

  v13 = v12 + *(_s9ViewModelVMa(0) + 24);
  v14 = type metadata accessor for IconRowViewModel(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v16 = *(*(v15 - 8) + 8);
    v16(v13, v15);
    v16(v13 + *(v14 + 20), v15);
  }

  v17 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F923E98();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_24EE77214(double *a1)
{
  v3 = *(type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0) - 8);
  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EE716B0(a1, v5, v4);
}

uint64_t sub_24EE772C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 248);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EE77390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 248) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EE77440(uint64_t a1)
{
  sub_24EE7768C(319, &qword_27F2191D0, &type metadata for MixedMediaItem, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24EE77628(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24EE77628(319, &qword_27F232318, type metadata accessor for Video, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24EE7768C(319, &qword_27F22E608, &type metadata for EditorialGradientBackgroundViewModel, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24EE7768C(319, &qword_27F220EC0, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
            if (v6 <= 0x3F)
            {
              sub_24E68408C(319);
              if (v7 <= 0x3F)
              {
                sub_24E684120(319);
                if (v8 <= 0x3F)
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

void sub_24EE77628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EE7768C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24EE77724()
{
  result = qword_27F232330;
  if (!qword_27F232330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322E0, &unk_24F9A8E60);
    sub_24EE777B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232330);
  }

  return result;
}

unint64_t sub_24EE777B0()
{
  result = qword_27F232338;
  if (!qword_27F232338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322C0, &qword_24F9A8E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322B0, &qword_24F9A8E40);
    sub_24EE76DA0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232338);
  }

  return result;
}

unint64_t sub_24EE77910()
{
  result = qword_27F2323B8;
  if (!qword_27F2323B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323A8, &qword_24F9A90E8);
    sub_24EE7799C();
    sub_24EE77D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323B8);
  }

  return result;
}

unint64_t sub_24EE7799C()
{
  result = qword_27F2323C0;
  if (!qword_27F2323C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323A0, &qword_24F9A90E0);
    sub_24EE77A28();
    sub_24EE77B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323C0);
  }

  return result;
}

unint64_t sub_24EE77A28()
{
  result = qword_27F2323C8;
  if (!qword_27F2323C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323B0, &unk_24F9A90F0);
    sub_24EE754B4(&qword_27F2323D0, type metadata accessor for MixedMediaItemView, &unk_24FA0D690);
    sub_24EE754B4(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323C8);
  }

  return result;
}

unint64_t sub_24EE77B14()
{
  result = qword_27F2323D8;
  if (!qword_27F2323D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232380, &qword_24F9A90C0);
    sub_24EE77BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323D8);
  }

  return result;
}

unint64_t sub_24EE77BA0()
{
  result = qword_27F2323E0;
  if (!qword_27F2323E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323E8, &qword_24F9A9100);
    sub_24EE77C5C();
    sub_24EE754B4(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323E0);
  }

  return result;
}

unint64_t sub_24EE77C5C()
{
  result = qword_27F2323F0;
  if (!qword_27F2323F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323F8, &qword_24F9A9108);
    sub_24EE754B4(&qword_27F22E6B8, type metadata accessor for ArtworkWithFallbackView, &unk_24FA33518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323F0);
  }

  return result;
}

unint64_t sub_24EE77D18()
{
  result = qword_27F232400;
  if (!qword_27F232400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232378, &qword_24F9A90B8);
    sub_24EE77B14();
    sub_24EE77DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232400);
  }

  return result;
}

unint64_t sub_24EE77DA4()
{
  result = qword_27F232408;
  if (!qword_27F232408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232368, &unk_24F9A90A0);
    sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
    sub_24E602068(&qword_27F232410, &qword_27F255470, &qword_24FA3C570, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232408);
  }

  return result;
}

uint64_t sub_24EE77E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE77EE8()
{
  v1 = type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2)
  {
  }

  if (*(v2 + 4))
  {
  }

  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(&v2[v3], 1, v4))
    {
      (*(v5 + 8))(&v2[v3], v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 52);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(&v2[v6], 1, v7))
    {
      (*(v8 + 8))(&v2[v6], v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24EE7818C()
{
  v1 = *(type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_24F403A04(*(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_24EE7823C()
{
  result = qword_27F232418;
  if (!qword_27F232418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232418);
  }

  return result;
}

unint64_t sub_24EE78294()
{
  result = qword_27F232420;
  if (!qword_27F232420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232428, &qword_24F9A91B8);
    sub_24E602068(&qword_27F232430, &qword_27F232438, &qword_24F9A91C0, &unk_24FA12010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232420);
  }

  return result;
}

unint64_t sub_24EE78350()
{
  result = qword_27F232440;
  if (!qword_27F232440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232448, &qword_24F9A91C8);
    sub_24EE77910();
    sub_24E7EBBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232440);
  }

  return result;
}

uint64_t sub_24EE783E0()
{
  v1 = *v0;
  if ((v1 & 0xFC) == 4)
  {
    strcpy(v9, "Scene_Games_");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    MEMORY[0x253050C20](((v1 - 4) << 40) + 0x417055656E4FLL, 0xE600000000000000);
  }

  else
  {
    sub_24F92C888();

    v2 = 0xE500000000000000;
    v9[0] = 0x70415F656E656353;
    v9[1] = 0xEF5F65726F745370;
    v3 = 0x70556F7754;
    v4 = 0xE300000000000000;
    v5 = 7233862;
    if (v1 != 2)
    {
      v5 = 0x7274656D6D797341;
      v4 = 0xEC0000006C616369;
    }

    if (v1)
    {
      v3 = 0x70556565726854;
      v2 = 0xE700000000000000;
    }

    if (v1 <= 1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (v1 <= 1)
    {
      v7 = v2;
    }

    else
    {
      v7 = v4;
    }

    MEMORY[0x253050C20](v6, v7);
  }

  return v9[0];
}

uint64_t IconCollectionStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x70556F7754;
  v3 = 0x437055656E4FLL;
  if (v1 != 6)
  {
    v3 = 0x447055656E4FLL;
  }

  v4 = 0x417055656E4FLL;
  if (v1 != 4)
  {
    v4 = 0x427055656E4FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7233862;
  if (v1 != 2)
  {
    v5 = 0x7274656D6D797341;
  }

  if (*v0)
  {
    v2 = 0x70556565726854;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

_OWORD *sub_24EE7860C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232478, &unk_24F9A9600);
  if (v1 > 5)
  {
    if (v1 == 6)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F942000;
      result[2] = xmmword_24F9A9250;
      result[3] = xmmword_24F9A9260;
      result[4] = xmmword_24F9A9270;
      v3 = xmmword_24F9A9280;
      v4 = xmmword_24F9A9290;
      goto LABEL_11;
    }

    if (v1 == 7)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F979FB0;
      result[2] = xmmword_24F9A91D0;
      result[3] = xmmword_24F9A91E0;
      result[4] = xmmword_24F9A91F0;
      result[5] = xmmword_24F9A9200;
      result[6] = xmmword_24F9A9210;
      result[7] = xmmword_24F9A9220;
      result[8] = xmmword_24F9A9230;
      result[9] = xmmword_24F9A9240;
      return result;
    }
  }

  else
  {
    if (v1 == 4)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F93A070;
      result[2] = xmmword_24F9A92A0;
      result[3] = xmmword_24F9A9300;
      result[4] = xmmword_24F9A9310;
      result[5] = xmmword_24F9A9320;
      result[6] = xmmword_24F9A9330;
      result[7] = xmmword_24F9A9340;
      return result;
    }

    if (v1 == 5)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F93A070;
      result[2] = xmmword_24F9A92A0;
      result[3] = xmmword_24F9A92B0;
      result[4] = xmmword_24F9A92C0;
      result[5] = xmmword_24F9A92D0;
      result[6] = xmmword_24F9A92E0;
      result[7] = xmmword_24F9A92F0;
      return result;
    }
  }

  result = swift_allocObject();
  result[1] = xmmword_24F942000;
  result[2] = xmmword_24F9A9350;
  result[3] = xmmword_24F9A9360;
  result[4] = xmmword_24F9A9370;
  v3 = xmmword_24F9A9380;
  v4 = xmmword_24F9A9390;
LABEL_11:
  result[5] = v3;
  result[6] = v4;
  return result;
}

GameStoreKit::IconCollectionStyle_optional __swiftcall IconCollectionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_24EE788A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x70556F7754;
  v5 = 0x437055656E4FLL;
  if (v2 != 6)
  {
    v5 = 0x447055656E4FLL;
  }

  v6 = 0x417055656E4FLL;
  if (v2 != 4)
  {
    v6 = 0x427055656E4FLL;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 7233862;
  if (v2 != 2)
  {
    v8 = 0x7274656D6D797341;
    v7 = 0xEC0000006C616369;
  }

  if (*v1)
  {
    v4 = 0x70556565726854;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

GameStoreKit::MediaPageHeader::Style_optional __swiftcall MediaPageHeader.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t MediaPageHeader.Style.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_24EE78AD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EE78B6C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE78BE4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EE78C48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE78CBC@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24EE78D1C(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MediaPageHeader.__allocating_init(id:badge:title:subtitle:artwork:video:collectionIcons:useGeneratedBackgroundGradient:backgroundColor:placementStyle:backgroundStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, char *a13, uint64_t a14)
{
  v39 = a8;
  v40 = a4;
  v43 = a5;
  v44 = a6;
  v41 = a2;
  v42 = a3;
  v16 = sub_24F91F6B8();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x28223BE20](v16);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = *a12;
  v20 = *a13;
  v21 = a1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_artwork) = a7;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_video) = v39;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_collectionIcons) = a9;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = a10;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor) = a11;
  v22 = v40;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_placementStyle) = v19;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundStyle) = v20;
  sub_24E60169C(a1, v50, &qword_27F235830, &qword_24F93B8C0);
  v23 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v24 = sub_24F91F008();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v18 + v23, v22, v24);
  sub_24E60169C(a14, v18 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v26 = v18 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  sub_24E60169C(v50, &v47, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v48 + 1))
  {
    v27 = v48;
    *v26 = v47;
    *(v26 + 16) = v27;
    *(v26 + 32) = v49;
  }

  else
  {
    v28 = v36;
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v37 + 8))(v28, v38);
    v45 = v29;
    v46 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v47, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a14, &qword_27F213E68, &unk_24F93BC80);
  (*(v25 + 8))(v22, v24);
  sub_24E601704(v21, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v50, &qword_27F235830, &qword_24F93B8C0);
  v32 = v42;
  *(v18 + 16) = v41;
  *(v18 + 24) = v32;
  v33 = (v18 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  v34 = v44;
  *v33 = v43;
  v33[1] = v34;
  return v18;
}

uint64_t MediaPageHeader.init(id:badge:title:subtitle:artwork:video:collectionIcons:useGeneratedBackgroundGradient:backgroundColor:placementStyle:backgroundStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, _BYTE *a12, char *a13, uint64_t a14)
{
  v15 = v14;
  v46 = a8;
  v45 = a7;
  v49 = a5;
  v50 = a6;
  v41 = a4;
  v48 = a3;
  v47 = a2;
  v44 = a10;
  v42 = a9;
  v43 = a11;
  v40 = sub_24F91F6B8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v38 - v20;
  v22 = sub_24F91F008();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v24) = *a12;
  v26 = *a13;
  v27 = a1;
  v28 = v41;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_artwork) = v45;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_video) = v46;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_collectionIcons) = v42;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = v44;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor) = v43;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_placementStyle) = v24;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundStyle) = v26;
  v46 = v27;
  sub_24E60169C(v27, v59, &qword_27F235830, &qword_24F93B8C0);
  (*(v23 + 16))(v25, v28, v22);
  v45 = a14;
  sub_24E60169C(a14, v21, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v59, &v53, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v54 + 1))
  {
    v56 = v53;
    v57 = v54;
    v58 = v55;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v39 + 8))(v18, v40);
    v51 = v29;
    v52 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v53, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v45, &qword_27F213E68, &unk_24F93BC80);
  (*(v23 + 8))(v28, v22);
  sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v59, &qword_27F235830, &qword_24F93B8C0);
  v32 = v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  *(v32 + 32) = v58;
  v33 = v57;
  *v32 = v56;
  *(v32 + 16) = v33;
  v34 = v48;
  *(v15 + 16) = v47;
  *(v15 + 24) = v34;
  (*(v23 + 32))(v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_title, v25, v22);
  v35 = (v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  v36 = v50;
  *v35 = v49;
  v35[1] = v36;
  sub_24E65E0D4(v21, v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics);
  return v15;
}

uint64_t MediaPageHeader.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v123 = a2;
  v108 = sub_24F91F6B8();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v112 = v103 - v5;
  v115 = sub_24F92AC28();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v104 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = v103 - v8;
  v130 = sub_24F9285B8();
  v122 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v126 = v103 - v15;
  v16 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v16 - 8);
  v125 = sub_24F91F008();
  v120 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v103 - v19;
  v21 = sub_24F928388();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v117 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v116 = v103 - v25;
  MEMORY[0x28223BE20](v26);
  v113 = v103 - v27;
  MEMORY[0x28223BE20](v28);
  v111 = v103 - v29;
  MEMORY[0x28223BE20](v30);
  v110 = v103 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v103 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v103 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = v103 - v39;
  v128 = a1;
  sub_24F928398();
  sub_24F928348();
  v42 = v41;
  v43 = *(v22 + 8);
  v131 = v22 + 8;
  v132 = v21;
  v129 = v43;
  v43(v40, v21);
  if (v42)
  {
    sub_24F91F0B8();
    v118 = v20;
    sub_24F91F018();
    sub_24F929608();
    sub_24F928398();
    v45 = v122 + 16;
    v44 = *(v122 + 16);
    v46 = v123;
    v47 = v130;
    v44(v119, v123, v130);
    v109 = v37;
    sub_24F929548();
    v48 = v127;
    v44(v127, v46, v47);
    sub_24F928398();
    v49 = v112;
    sub_24F9282B8();
    v129(v34, v132);
    v50 = v114;
    v51 = v115;
    v52 = (*(v114 + 48))(v49, 1, v115);
    v103[1] = v45;
    v103[0] = v44;
    if (v52 == 1)
    {
      sub_24E601704(v49, &qword_27F2213B0, &qword_24F965EC0);
      v104 = 0;
      v53 = v119;
    }

    else
    {
      v57 = v105;
      v58 = v47;
      (*(v50 + 32))(v105, v49, v51);
      (*(v50 + 16))(v104, v57, v51);
      v59 = v119;
      v44(v119, v48, v58);
      type metadata accessor for Artwork(0);
      sub_24EE7A694(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v104 = sub_24F92B6A8();
      (*(v50 + 8))(v57, v51);
      v53 = v59;
    }

    v60 = v110;
    sub_24F928398();
    v61 = sub_24F928348();
    v63 = v118;
    v64 = v109;
    if (v62)
    {
      v138 = v61;
      v139 = v62;
    }

    else
    {
      v65 = v53;
      v66 = v106;
      sub_24F91F6A8();
      v67 = sub_24F91F668();
      v69 = v68;
      v70 = v66;
      v53 = v65;
      v64 = v109;
      (*(v107 + 8))(v70, v108);
      v138 = v67;
      v139 = v69;
    }

    sub_24F92C7F8();
    v71 = v60;
    v72 = v132;
    v73 = v129;
    v129(v71, v132);
    v74 = v111;
    sub_24F928398();
    v119 = sub_24F928348();
    v115 = v75;
    v73(v74, v72);
    v76 = *(v120 + 16);
    v110 = (v120 + 16);
    v111 = v76;
    (v76)(v124, v63, v125);
    v77 = v113;
    sub_24F928398();
    v114 = sub_24F928348();
    v112 = v78;
    v73(v77, v72);
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v79 = v127;
    v80 = v130;
    v81 = v103[0];
    (v103[0])(v53, v127, v130);
    sub_24EE7A694(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v113 = v144;
    type metadata accessor for Video(0);
    sub_24F928398();
    v81(v53, v79, v80);
    sub_24EE7A694(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    sub_24F929548();
    v82 = v142;
    v83 = v116;
    sub_24F928398();
    LODWORD(v109) = sub_24F928278();
    v84 = v132;
    v85 = v129;
    v129(v83, v132);
    v86 = v117;
    sub_24F928398();
    v116 = JSONObject.appStoreColor.getter();
    v85(v86, v84);
    sub_24F928398();
    sub_24E951EBC();
    sub_24F928248();
    v85(v64, v84);
    LODWORD(v117) = v141;
    sub_24F928398();
    sub_24EE7A6DC();
    sub_24F928208();
    v85(v64, v84);
    LOBYTE(v86) = v140;
    v87 = v121;
    sub_24E60169C(v126, v121, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for MediaPageHeader(0);
    v54 = swift_allocObject();
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_artwork) = v113;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_video) = v82;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_collectionIcons) = v104;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = v109 & 1;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor) = v116;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_placementStyle) = v117;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundStyle) = v86;
    sub_24E60169C(v143, &v138, &qword_27F235830, &qword_24F93B8C0);
    (v111)(v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_title, v124, v125);
    sub_24E60169C(v87, v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    v88 = v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
    sub_24E60169C(&v138, &v135, &qword_27F235830, &qword_24F93B8C0);
    v89 = v85;
    if (*(&v136 + 1))
    {
      v90 = v136;
      *v88 = v135;
      *(v88 + 16) = v90;
      *(v88 + 32) = v137;
    }

    else
    {
      v91 = v106;
      sub_24F91F6A8();
      v92 = sub_24F91F668();
      v94 = v93;
      (*(v107 + 8))(v91, v108);
      v133 = v92;
      v134 = v94;
      sub_24F92C7F8();
      sub_24E601704(&v135, &qword_27F235830, &qword_24F93B8C0);
    }

    v95 = *(v122 + 8);
    v96 = v130;
    v95(v123, v130);
    v89(v128, v132);
    sub_24E601704(&v138, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v121, &qword_27F213E68, &unk_24F93BC80);
    v97 = *(v120 + 8);
    v98 = v125;
    v97(v124, v125);
    sub_24E601704(v143, &qword_27F235830, &qword_24F93B8C0);
    v95(v127, v96);
    sub_24E601704(v126, &qword_27F213E68, &unk_24F93BC80);
    v97(v118, v98);
    v99 = v115;
    *(v54 + 16) = v119;
    *(v54 + 24) = v99;
    v100 = (v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
    v101 = v112;
    *v100 = v114;
    v100[1] = v101;
  }

  else
  {
    v54 = sub_24F92AC38();
    sub_24EE7A694(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v55 = 0x656C746974;
    v56 = v118;
    v55[1] = 0xE500000000000000;
    v55[2] = v56;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v122 + 8))(v123, v130);
    v129(v128, v132);
  }

  return v54;
}

uint64_t sub_24EE7A694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EE7A6DC()
{
  result = qword_27F232450;
  if (!qword_27F232450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232450);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeader(uint64_t a1)
{
  result = qword_27F232468;
  if (!qword_27F232468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MediaPageHeader.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor);
  v2 = v1;
  return v1;
}

void sub_24EE7A844()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor);
}

uint64_t MediaPageHeader.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v2 = sub_24F91F008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t MediaPageHeader.__deallocating_deinit()
{
  MediaPageHeader.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EE7A9FC()
{
  result = qword_27F232458;
  if (!qword_27F232458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232458);
  }

  return result;
}

unint64_t sub_24EE7AA54()
{
  result = qword_27F232460;
  if (!qword_27F232460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232460);
  }

  return result;
}

void *sub_24EE7AABC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t sub_24EE7AC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924098();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE7AC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924098();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ShelfBasedPageScrollActionImplementation(uint64_t a1)
{
  result = qword_27F232480;
  if (!qword_27F232480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE7AD44(uint64_t a1)
{
  result = sub_24F924098();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EE7ADB4()
{
  result = qword_27F232490;
  if (!qword_27F232490)
  {
    type metadata accessor for ShelfBasedPageScrollAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232490);
  }

  return result;
}

uint64_t sub_24EE7AE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId + 8);
  if (v8 && (v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId + 8)) != 0 && (v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId + 8)) != 0)
  {
    v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId);
    v24 = v2;
    v22 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
    v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
    sub_24F928FD8();

    sub_24F92A758();
    v12 = *(&v25[0] + 1);
    ObjectType = swift_getObjectType();
    *&v25[0] = v23;
    *(&v25[0] + 1) = v8;
    (*(v12 + 56))(v25, ObjectType, v12);
    v15 = v14;
    v16 = swift_getObjectType();
    (*(v15 + 16))(v25, v16, v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v27 = v25[0];
    v28 = v25[1];
    v29 = v25[2];
    v30 = v26;
    if (v26 >> 60)
    {
      v2 = v24;
      if (v26 >> 60 == 8 && ((v17 = *(&v29 + 1) | *(&v30 + 1), v18 = *(&v28 + 1) | v28 | *(&v27 + 1), v26 == 0x8000000000000000) && !(v17 | *&v25[0] | v29 | v18) || v26 == 0x8000000000000000 && *&v25[0] == 4 && !(v17 | v29 | v18)))
      {

        v11 = v22;
        v10 = v9;
      }

      else
      {

        v19 = sub_24E88D2AC(&v27);
      }
    }

    else
    {
      if (LOBYTE(v25[0]) == 1)
      {

        v11 = v22;
        v10 = v9;
      }

      else
      {
      }

      v2 = v24;
    }
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);
    v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId + 8);
  }

  MEMORY[0x28223BE20](v19);
  *(&v21 - 4) = v2;
  *(&v21 - 3) = v11;
  *(&v21 - 2) = v10;
  sub_24F9276F8();
  sub_24F923B18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v5 + 104))(v7, *MEMORY[0x277D21CA8], v4);
  return sub_24F92A988();
}

uint64_t LinkableText.asMarkdownAttributedString()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 32) == 1)
  {
    v4 = objc_opt_self();

    v5 = [v4 systemFontOfSize_];
    v6 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v7 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v8 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v28 = 10;
    *(&v28 + 1) = 0xE100000000000000;
    *&v29 = v5;
    *(&v29 + 1) = v6;
    *&v30 = 161644770;
    *(&v30 + 1) = 0xA400000000000000;
    *&v31 = v7;
    *(&v31 + 1) = 606245;
    *&v32 = 0xE300000000000000;
    *(&v32 + 1) = v8;
    v9 = type metadata accessor for MarkdownStringGenerator();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator];
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_didParseEverything] = 1;
    v12 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v28, v27);
    v13 = sub_24F92B098();

    v14 = [v12 initWithString_];

    *&v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser] = v14;
    v15 = &v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_configuration];
    *v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v32;
    v15[3] = v31;
    v15[4] = v18;
    v15[1] = v16;
    v15[2] = v17;
    v26.receiver = v10;
    v26.super_class = v9;
    v19 = objc_msgSendSuper2(&v26, sel_init);
    [*&v19[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser] setDelegate_];
    v20 = sub_24F26D57C();
    v22 = v21;

    sub_24E951D6C(&v28);
    sub_24EE7B468(v20, v22, a1);
  }

  else
  {
    v24 = *(v3 + 16);
    v25 = *(v3 + 24);

    sub_24EE7B468(v24, v25, a1);
  }
}

void sub_24EE7B468(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a1;
  v106 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232498, &unk_24F9A9680);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v93 - v6;
  v124 = sub_24F91EE38();
  v102 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v116);
  v122 = &v93 - v8;
  v105 = sub_24F91F4A8();
  v101 = *(v105 - 8);
  v117 = v101;
  MEMORY[0x28223BE20](v105);
  v103 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24F91EF38();
  v100 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_24F91EF18();
  v99 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v139 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v93 - v13;
  v135 = sub_24F91EF48();
  v98 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v97 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  MEMORY[0x28223BE20](v96);
  v16 = &v93 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v17 - 8);
  v115 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v114 = &v93 - v20;
  MEMORY[0x28223BE20](v21);
  v133 = &v93 - v22;
  MEMORY[0x28223BE20](v23);
  v128 = (&v93 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v25 - 8);
  v129 = (&v93 - v26);
  v110 = sub_24F91F008();
  v111 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_24F91EE98();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = (&v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_24F91EEA8();
  v104 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v112 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24F91EEC8();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v113 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v107 = &v93 - v33;
  v146 = MEMORY[0x277D84FA0];
  v34 = *(v3 + 24);
  v37 = *(v34 + 64);
  v36 = v34 + 64;
  v35 = v37;
  v38 = 1 << *(*(v3 + 24) + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v35;
  v41 = (v38 + 63) >> 6;
  v130 = *(v3 + 24);

  v42 = a2;

  v43 = 0;
  v138 = v16;
  v127 = v28;
  if (v40)
  {
    while (1)
    {
      v44 = v42;
      v45 = v43;
LABEL_9:
      v46 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v47 = v46 | (v45 << 6);
      v48 = (*(v130 + 48) + 16 * v47);
      v49 = *v48;
      v50 = v48[1];
      v131 = *(*(v130 + 56) + 8 * v47);
      v140 = 0x2F3A6E6F69746361;
      v141 = 0xE90000000000002FLL;

      v51 = sub_24F92C7A8();
      MEMORY[0x253050C20](v51);

      v53 = v140;
      v52 = v141;
      v140 = v49;
      v141 = v50;

      MEMORY[0x253050C20](45, 0xE100000000000000);
      MEMORY[0x253050C20](v53, v52);
      sub_24ED7C5F0(&v140, v140, v141);

      v140 = v132;
      v141 = v44;
      v144 = v49;
      v145 = v50;
      v142 = 91;
      v143 = 0xE100000000000000;
      MEMORY[0x253050C20](v49, v50);
      MEMORY[0x253050C20](10333, 0xE200000000000000);
      MEMORY[0x253050C20](v53, v52);

      MEMORY[0x253050C20](41, 0xE100000000000000);
      sub_24E600AEC();
      v132 = sub_24F92C568();
      v42 = v54;

      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v45 >= v41)
    {
      break;
    }

    v40 = *(v36 + 8 * v45);
    ++v43;
    if (v40)
    {
      v44 = v42;
      v43 = v45;
      goto LABEL_9;
    }
  }

  (*(v104 + 104))(v112, *MEMORY[0x277CC8BA8], v118);
  v120[13](v119, *MEMORY[0x277CC8B98], v121);
  v55 = v107;
  sub_24F91EEB8();
  (*(v108 + 16))(v113, v55, v109);
  v56 = v117 + 56;
  v57 = *(v117 + 56);
  v58 = v105;
  v57(v128, 1, 1, v105);
  v59 = v129;
  sub_24F91EFC8();
  v113 = v57;
  v117 = v56;
  v60 = v111;
  v61 = *(v111 + 56);
  v62 = v110;
  v104 = v111 + 56;
  v95 = v61;
  v61(v59, 0, 1, v110);
  v63 = *(v60 + 32);
  v111 = v60 + 32;
  v94 = v63;
  v63(v127, v59, v62);
  v64 = v97;
  sub_24F91EF68();
  v65 = v98;
  v66 = v135;
  (*(v98 + 16))(v138, v64, v135);
  v67 = *(v96 + 36);
  v68 = sub_24EE7C6CC(&qword_27F215360, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_24F92BB88();
  (*(v65 + 8))(v64, v66);
  v132 = (v100 + 8);
  v130 = v99 + 32;
  v131 = (v99 + 16);
  v129 = (v101 + 48);
  v120 = (v101 + 32);
  v119 = (v102 + 8);
  v118 = (v101 + 8);
  v128 = (v99 + 8);
  v69 = v103;
  v70 = v126;
  v121 = v67;
  v112 = v68;
  while (1)
  {
    v71 = v136;
    v72 = v138;
    sub_24F92BC08();
    sub_24EE7C6CC(&unk_27F237EA0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v73 = v137;
    v74 = sub_24F92AFF8();
    (*v132)(v71, v73);
    if (v74)
    {
      break;
    }

    v75 = sub_24F92BC88();
    v76 = v134;
    (*v131)(v134);
    v75(&v140, 0);
    sub_24F92BC18();
    v77 = v139;
    (*v130)(v139, v76, v70);
    sub_24E658540();
    v78 = v133;
    sub_24F91EF28();
    if ((*v129)(v78, 1, v58) == 1)
    {
      (*v128)(v77, v70);
      sub_24E601704(v78, &qword_27F228530, &unk_24F93C6E0);
    }

    else
    {
      (*v120)(v69, v78, v58);
      v79 = v122;
      sub_24F91EF08();
      v80 = v123;
      sub_24F91EE18();
      sub_24F91EE48();
      (*v119)(v80, v124);
      sub_24E601704(v79, &qword_27F22D330, &unk_24F93FBE0);
      v81 = sub_24F92B178();
      v82 = v146;
      v140 = v81;
      v141 = v83;
      MEMORY[0x253050C20](45, 0xE100000000000000);
      sub_24EE7C6CC(&qword_27F21B620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v84 = sub_24F92CD88();
      MEMORY[0x253050C20](v84);

      LOBYTE(v82) = sub_24F4D36F8(v140, v141, v82);

      if (v82)
      {
        (*v118)(v69, v58);
        v85 = *v128;
        v86 = v139;
      }

      else
      {
        v87 = v139;
        sub_24F91EF08();
        v88 = v114;
        (v113)(v114, 1, 1, v58);
        sub_24E658594();
        v89 = sub_24F91F048();
        sub_24E99091C(v88, v115);
        sub_24F91F148();
        sub_24E601704(v88, &qword_27F228530, &unk_24F93C6E0);
        v89(&v140, 0);
        sub_24E601704(v79, &qword_27F22D330, &unk_24F93FBE0);
        (*v118)(v69, v58);
        v85 = *v128;
        v86 = v87;
      }

      v90 = v126;
      v85(v86, v126);
      v70 = v90;
    }
  }

  sub_24E601704(v72, &qword_27F215348, &unk_24F93FBF0);
  (*(v108 + 8))(v107, v109);

  v91 = v106;
  v92 = v110;
  v94(v106, v127, v110);
  v95(v91, 0, 1, v92);
}

uint64_t sub_24EE7C6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24EE7C714(char a1, double a2)
{
  if (a1)
  {

    *&result = sub_24E69C15C(4.0, a2).n128_u64[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
    v4 = swift_allocObject();
    result = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    *(v4 + 16) = xmmword_24F979FB0;
    *(v4 + 32) = xmmword_24F976090;
    v8 = vdupq_n_s64(0xC0C81C8000000000);
    *(v4 + 48) = v8;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0u;
    __asm { FMOV            V6.2D, #2.0 }

    *(v4 + 88) = _Q6;
    __asm { FMOV            V7.2D, #10.0 }

    *(v4 + 104) = _Q7;
    *(v4 + 120) = _Q7;
    *(v4 + 136) = a2;
    *(v4 + 144) = a2;
    *(v4 + 152) = 1;
    *(v4 + 160) = result;
    *(v4 + 168) = v5;
    *(v4 + 176) = v6;
    *(v4 + 184) = v7;
    *(v4 + 192) = xmmword_24F976010;
    *(v4 + 208) = v8;
    *(v4 + 224) = 0;
    *(v4 + 232) = 0u;
    *(v4 + 248) = _Q6;
    *(v4 + 264) = 0x4028000000000000;
    __asm { FMOV            V6.2D, #12.0 }

    *(v4 + 272) = _Q6;
    *(v4 + 288) = 0x4028000000000000;
    *(v4 + 296) = a2;
    *(v4 + 304) = a2;
    *(v4 + 312) = 1;
    *(v4 + 320) = result;
    *(v4 + 328) = v5;
    *(v4 + 336) = v6;
    *(v4 + 344) = v7;
    *(v4 + 352) = xmmword_24F976080;
    *(v4 + 368) = v8;
    *(v4 + 384) = 0;
    *(v4 + 392) = 0u;
    *(v4 + 408) = 0x4008000000000000;
    *(v4 + 416) = xmmword_24F9A9690;
    *(v4 + 432) = _Q6;
    *(v4 + 448) = 0x4028000000000000;
    *(v4 + 456) = a2;
    *(v4 + 464) = a2;
    *(v4 + 472) = 1;
    *(v4 + 480) = result;
    *(v4 + 488) = v5;
    *(v4 + 496) = v6;
    *(v4 + 504) = v7;
    *(v4 + 512) = xmmword_24F976070;
    *(v4 + 528) = v8;
    *(v4 + 544) = 0;
    *(v4 + 552) = 0u;
    *(v4 + 568) = 0x4010000000000000;
    __asm { FMOV            V6.2D, #20.0 }

    *(v4 + 576) = xmmword_24F97EE60;
    *(v4 + 592) = _Q6;
    *(v4 + 608) = 0x4034000000000000;
    *(v4 + 616) = a2;
    *(v4 + 624) = a2;
    *(v4 + 632) = 1;
    *(v4 + 640) = result;
    *(v4 + 648) = v5;
    *(v4 + 656) = v6;
    *(v4 + 664) = v7;
    *(v4 + 672) = xmmword_24F976060;
    *(v4 + 688) = v8;
    *(v4 + 704) = 0;
    *(v4 + 710) = v19;
    *(v4 + 706) = v18;
    *(v4 + 712) = 0u;
    *(v4 + 728) = 0x4014000000000000;
    *(v4 + 736) = xmmword_24F97EE70;
    *(v4 + 752) = _Q6;
    *(v4 + 768) = 0x4034000000000000;
    *(v4 + 776) = a2;
    *(v4 + 784) = a2;
    *(v4 + 792) = 1;
    *(v4 + 796) = *&v17[3];
    *(v4 + 793) = *v17;
    *(v4 + 800) = result;
    *(v4 + 808) = v5;
    *(v4 + 816) = v6;
    *(v4 + 824) = v7;
    *(v4 + 832) = xmmword_24F976050;
    *(v4 + 848) = v8;
    *(v4 + 864) = 0;
    *(v4 + 870) = v22;
    *(v4 + 866) = v21;
    *(v4 + 872) = 0u;
    *(v4 + 888) = 0x4018000000000000;
    *(v4 + 896) = xmmword_24F97EE80;
    *(v4 + 912) = _Q6;
    *(v4 + 928) = 0x4034000000000000;
    *(v4 + 936) = a2;
    *(v4 + 944) = a2;
    *(v4 + 952) = 1;
    *(v4 + 956) = *&v20[3];
    *(v4 + 953) = *v20;
    *(v4 + 960) = result;
    *(v4 + 968) = v5;
    *(v4 + 976) = v6;
    *(v4 + 984) = v7;
    *(v4 + 992) = xmmword_24F976040;
    *(v4 + 1008) = v8;
    *(v4 + 1024) = 0;
    *(v4 + 1030) = v25;
    *(v4 + 1026) = v24;
    *(v4 + 1032) = 0u;
    *(v4 + 1048) = 0x401C000000000000;
    *(v4 + 1056) = xmmword_24F97EE90;
    *(v4 + 1072) = _Q6;
    *(v4 + 1088) = 0x4034000000000000;
    *(v4 + 1096) = a2;
    *(v4 + 1104) = a2;
    *(v4 + 1112) = 1;
    *(v4 + 1116) = *&v23[3];
    *(v4 + 1113) = *v23;
    *(v4 + 1120) = result;
    *(v4 + 1128) = v5;
    *(v4 + 1136) = v6;
    *(v4 + 1144) = v7;
    *(v4 + 1152) = xmmword_24F976030;
    *(v4 + 1168) = v8;
    *(v4 + 1184) = 0;
    *(v4 + 1190) = v28;
    *(v4 + 1186) = v27;
    *(v4 + 1192) = 0u;
    *(v4 + 1208) = 0x4024000000000000;
    *(v4 + 1216) = xmmword_24F9A96A0;
    *(v4 + 1232) = _Q6;
    *(v4 + 1248) = 0x4034000000000000;
    *(v4 + 1256) = a2;
    *(v4 + 1264) = a2;
    *(v4 + 1272) = 1;
    *(v4 + 1276) = *&v26[3];
    *(v4 + 1273) = *v26;
    *(v4 + 1280) = result;
    *(v4 + 1288) = v5;
    *(v4 + 1296) = v6;
    *(v4 + 1304) = v7;
  }

  return result;
}

BOOL Array.isNotEmpty.getter(uint64_t a1, uint64_t a2)
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  return (sub_24F92BC58() & 1) == 0;
}

uint64_t sub_24EE7CB00(unint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_24F928E68();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v57 = a1;
  sub_24F928398();
  v52 = sub_24F928348();
  v21 = v20;
  v22 = *(v11 + 8);
  v22(v19, v10);
  v51 = v21;
  if (!v21)
  {
    v27 = sub_24F92AC38();
    sub_24EE7D730(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v28 = 0x79654B6568636163;
    v29 = v54;
    v28[1] = 0xE800000000000000;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v30 = sub_24F91F4A8();
    (*(*(v30 - 8) + 8))(v55, v30);
    return (v22)(v57, v10);
  }

  v56 = v22;
  sub_24F928398();
  sub_24F9281F8();
  v47 = v10;
  v56(v16, v10);
  v23 = v53;
  v24 = *(v53 + 48);
  v25 = v24(v9, 1, v3);
  v48 = v3;
  if (v25 == 1)
  {
    sub_24E9182E0(v9);
    v26 = v50;
LABEL_6:
    v34 = sub_24E608448(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v32 = sub_24F928E48();
  v33 = v9;
  v34 = v32;
  (*(v23 + 8))(v33, v3);
  v26 = v50;
  if (!v34)
  {
    goto LABEL_6;
  }

LABEL_7:
  v35 = v57;
  v36 = v47;
  sub_24F928398();
  sub_24F9281F8();
  v37 = v56;
  v56(v13, v36);
  v38 = v48;
  if (v24(v26, 1, v48) == 1)
  {
    sub_24E9182E0(v26);
    v39 = sub_24E609EE0(MEMORY[0x277D84F90]);
    v37(v35, v36);
  }

  else
  {
    v57 = v34;
    v40 = v53;
    v41 = v49;
    (*(v53 + 32))(v49, v26, v38);
    type metadata accessor for AMSBagKey(0);
    sub_24F92A388();
    sub_24EE7D730(&qword_27F2122C8, type metadata accessor for AMSBagKey, &unk_24F937710);
    v39 = sub_24F928E38();
    v56(v35, v36);
    (*(v40 + 8))(v41, v38);
    v34 = v57;
  }

  v42 = swift_allocObject();
  v43 = v51;
  *(v42 + 16) = v52;
  *(v42 + 24) = v43;
  v44 = OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_scriptURL;
  v45 = sub_24F91F4A8();
  (*(*(v45 - 8) + 32))(v42 + v44, v55, v45);
  result = v42;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_properties) = v34;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_bagOverrides) = v39;
  return result;
}

uint64_t sub_24EE7D154()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20JSLegacyPackageIndex_scriptURL;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE7D238(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EE7D328@<X0>(uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a3;
  v5 = sub_24F9285B8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213658, &unk_24F9A9740);
  v11 = sub_24F92B098();
  *a4 = v11;
  (*(v7 + 16))(v9, v16, v6);
  sub_24F9285A8();
  v12 = v17;
  sub_24F92A378();
  if (v12)
  {

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return (*(*(v10 - 8) + 56))(a4, v13, 1, v10);
}

uint64_t sub_24EE7D500()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_scriptURL;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE7D5EC(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EE7D6A4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_24F91F4A8();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_24EE7D730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL Date.hasPassed(hourOfDay:since:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  v87 = sub_24F91F898();
  v5 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  *&v79 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v73 - v8;
  v10 = sub_24F91F648();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91ED78();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v80 = &v73 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v19 = sub_24F91F7D8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F91F8A8();
  v86 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v22, *MEMORY[0x277CC9830], v19, v24);
  sub_24F91F7E8();
  (*(v20 + 8))(v22, v19);
  v27 = a2;
  v83 = v3;
  if (sub_24F91F868())
  {
    v82 = v23;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080, &qword_24F9F2000);
    v29 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v77 = *(v5 + 72);
    v78 = v28;
    v30 = swift_allocObject();
    v79 = xmmword_24F93DE60;
    *(v30 + 16) = xmmword_24F93DE60;
    v31 = *(v5 + 104);
    LODWORD(v76) = *MEMORY[0x277CC9980];
    v32 = v87;
    v75 = v31;
    v31(v30 + v29);
    sub_24E8026A0(v30);
    v33 = v26;
    swift_setDeallocating();
    v74 = *(v5 + 8);
    v74(v30 + v29, v32);
    swift_deallocClassInstance();
    sub_24F91F818();

    v34 = sub_24F91ECC8();
    v35 = v18;
    if (v36)
    {
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v37 = sub_24F92AAE8();
      __swift_project_value_buffer(v37, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v79;
      sub_24F9283A8();
      sub_24F92A588();

      v84[1](v18, v85);
      (*(v86 + 8))(v33, v82);
      return 0;
    }

    v45 = v34;
    v46 = swift_allocObject();
    *(v46 + 16) = v79;
    v47 = v87;
    v75(v46 + v29, v76, v87);
    sub_24E8026A0(v46);
    swift_setDeallocating();
    v74(v46 + v29, v47);
    swift_deallocClassInstance();
    v48 = v80;
    sub_24F91F818();

    v49 = sub_24F91ECC8();
    if (v50)
    {
      v51 = v82;
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v52 = sub_24F92AAE8();
      __swift_project_value_buffer(v52, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v79;
      sub_24F9283A8();
      sub_24F92A588();

      v53 = v85;
      v54 = v84[1];
      v54(v48, v85);
      v54(v18, v53);
      (*(v86 + 8))(v33, v51);
      return 0;
    }

    v66 = v49;
    v67 = v85;
    v68 = v84[1];
    v68(v48, v85);
    v68(v35, v67);
    (*(v86 + 8))(v33, v82);
    return v45 < v81 && v66 >= v81;
  }

  else
  {
    v38 = v87;
    if (sub_24F91F828())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080, &qword_24F9F2000);
      v39 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v40 = swift_allocObject();
      v80 = xmmword_24F93DE60;
      *(v40 + 16) = xmmword_24F93DE60;
      (*(v5 + 104))(v40 + v39, *MEMORY[0x277CC9980], v38);
      sub_24E8026A0(v40);
      swift_setDeallocating();
      (*(v5 + 8))(v40 + v39, v38);
      swift_deallocClassInstance();
      v41 = v82;
      sub_24F91F818();

      v42 = sub_24F91ECC8();
      if (v43)
      {
        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v44 = sub_24F92AAE8();
        __swift_project_value_buffer(v44, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v80;
        sub_24F9283A8();
        sub_24F92A588();

        v84[1](v41, v85);
        (*(v86 + 8))(v26, v23);
        return 0;
      }

      v65 = v42;
      v84[1](v41, v85);
      (*(v86 + 8))(v26, v23);
      return v65 >= v81;
    }

    else
    {
      v55 = v27;
      v82 = v23;
      v56 = v26;
      v57 = *(v5 + 104);
      v58 = v79;
      LODWORD(v85) = *MEMORY[0x277CC9968];
      v59 = v38;
      v84 = v57;
      (v57)(v79);
      sub_24F91F858();
      v60 = *(v5 + 8);
      v60(v58, v59);
      v62 = v77;
      v61 = v78;
      if ((*(v77 + 48))(v9, 1, v78) == 1)
      {
        sub_24E728998(v9);
        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v63 = sub_24F92AAE8();
        __swift_project_value_buffer(v63, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        (*(v86 + 8))(v56, v82);
        return 0;
      }

      v70 = *(v62 + 32);
      v83 = v55;
      v71 = v76;
      v70(v76, v9, v61);
      (v84)(v58, v85, v59);
      v72 = sub_24F91F878();
      v60(v58, v59);
      (*(v62 + 8))(v71, v61);
      (*(v86 + 8))(v56, v82);
      return (v72 + 1) < 2;
    }
  }
}

uint64_t sub_24EE7E4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80, &unk_24F9437E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for CommonCardAttributes(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE7E634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80, &unk_24F9437E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = type metadata accessor for CommonCardAttributes(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ActivityCardVisualView(uint64_t a1)
{
  result = qword_27F2324C0;
  if (!qword_27F2324C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE7E7B0(uint64_t a1)
{
  sub_24EE7E88C(319, &qword_27F216A98, MEMORY[0x277CDFB98]);
  if (v1 <= 0x3F)
  {
    sub_24EE7E88C(319, &qword_27F214D30, type metadata accessor for CardSafeArea);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CommonCardAttributes(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EE7E88C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24EE7E8FC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityCardVisualView(0);
  v6 = *(v0 + *(v5 + 28));
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = (v0 + *(v5 + 20));
      v15 = *v14;
      v16 = *(v14 + 8);

      if ((v16 & 1) == 0)
      {
        sub_24F92BDC8();
        v17 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();

        (*(v2 + 8))(v4, v1);
        v15 = v23;
      }

      swift_getKeyPath();
      v23 = v15;
      sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      sub_24F91FD88();

      v12 = *(v15 + 16);

      v13 = sub_24F925868();
      goto LABEL_19;
    }

    if (v6 != 4)
    {
      v18 = (v0 + *(v5 + 20));
      v19 = *v18;
      v20 = *(v18 + 8);

      if ((v20 & 1) == 0)
      {
        sub_24F92BDC8();
        v21 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();

        (*(v2 + 8))(v4, v1);
        v19 = v23;
      }

      swift_getKeyPath();
      v23 = v19;
      sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      sub_24F91FD88();

      v12 = *(v19 + 16);

      v13 = sub_24F925808();
      goto LABEL_19;
    }

LABEL_10:
    v8 = (v0 + *(v5 + 20));
    v9 = *v8;
    v10 = *(v8 + 8);

    if ((v10 & 1) == 0)
    {
      sub_24F92BDC8();
      v11 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v9 = v23;
    }

    swift_getKeyPath();
    v23 = v9;
    sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v12 = *(v9 + 16);

    v13 = sub_24F925818();
LABEL_19:
    sub_24EA91914(v13, v12);
    return;
  }

  if (*(v0 + *(v5 + 28)))
  {
    v7 = v6 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }
}

uint64_t sub_24EE7ED64@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324D0, &qword_24F9A97D8);
  MEMORY[0x28223BE20](v37);
  v41 = &v36 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324D8, &unk_24F9A97E0);
  MEMORY[0x28223BE20](v40);
  v36 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E48, &qword_24F968378);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324E0, &unk_24F9A97F0);
  MEMORY[0x28223BE20](v38);
  v39 = &v36 - v8;
  sub_24EE7F344(v1, v7);
  sub_24EE7E8FC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_24F925808();
  v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E68, &qword_24F968380) + 36)];
  *v18 = v17;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  v19 = sub_24F927618();
  v21 = v20;
  sub_24EE801B0(v1, v43);
  v22 = v43[0];
  v23 = v43[1];
  v25 = v43[2];
  v24 = v44;
  v26 = v45;
  v27 = &v7[*(v5 + 44)];
  *v27 = v43[0];
  *(v27 + 1) = v23;
  *(v27 + 2) = v25;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  *(v27 + 5) = v19;
  *(v27 + 6) = v21;
  sub_24EE80414(v22, v23);
  sub_24EE80428(v22, v23);
  v28 = *(v1 + *(type metadata accessor for ActivityCardVisualView(0) + 28));
  if (v28 < 4)
  {
    v29 = v39;
  }

  else
  {
    v29 = v39;
    if (v28 != 4)
    {

      sub_24E92490C(1);
      sub_24E601704(v7, &qword_27F221E48, &qword_24F968378);

      v44 = sub_24F925048();
      v45 = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(v43);
      sub_24F925258();
      v31 = v41;
      v32 = v40;
      goto LABEL_8;
    }
  }

  v30 = sub_24F92CE08();

  sub_24E92490C(v30 & 1);
  sub_24E601704(v7, &qword_27F221E48, &qword_24F968378);
  v31 = v41;
  v32 = v40;
  v33 = sub_24F92CE08();

  v44 = sub_24F925048();
  v45 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(v43);
  sub_24F925258();
  if (v33)
  {
LABEL_8:
    v34 = v36;
    sub_24E615E00(v43, &v36[*(v32 + 36)]);
    sub_24E60169C(v29, v34, &qword_27F2324E0, &unk_24F9A97F0);
    sub_24E60169C(v34, v31, &qword_27F2324D8, &unk_24F9A97E0);
    swift_storeEnumTagMultiPayload();
    sub_24EE8043C();
    sub_24EE804C8();
    sub_24F924E28();
    sub_24E601704(v34, &qword_27F2324D8, &unk_24F9A97E0);
    goto LABEL_9;
  }

  sub_24E60169C(v29, v31, &qword_27F2324E0, &unk_24F9A97F0);
  swift_storeEnumTagMultiPayload();
  sub_24EE8043C();
  sub_24EE804C8();
  sub_24F924E28();
LABEL_9:
  sub_24E601704(v29, &qword_27F2324E0, &unk_24F9A97F0);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_24EE7F344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = v4;
  v89 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v85 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324F8, &unk_24F9A9830);
  MEMORY[0x28223BE20](v91);
  v92 = (&v85 - v7);
  v94 = type metadata accessor for CardCompactAvatarView(0);
  MEMORY[0x28223BE20](v94);
  v90 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221EB8, &qword_24F9683A8);
  MEMORY[0x28223BE20](v102);
  v93 = &v85 - v9;
  v104 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v104);
  v97 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v85 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232500, &qword_24F9A9840);
  MEMORY[0x28223BE20](v101);
  v99 = &v85 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232508, &qword_24F9A9848);
  MEMORY[0x28223BE20](v103);
  v15 = &v85 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221EA8, &qword_24F9683A0);
  MEMORY[0x28223BE20](v100);
  v98 = &v85 - v16;
  v17 = sub_24F9289E8();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = *(v106 + 64);
  MEMORY[0x28223BE20](v17);
  v96 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  v22 = sub_24F924218();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  v29 = a1;
  sub_24F7699D8((&v85 - v27));
  sub_24F924208();
  sub_24EE8055C(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  LOBYTE(a1) = sub_24F92C678();
  v30 = *(v23 + 8);
  v30(v25, v22);
  v30(v28, v22);
  if ((a1 & 1) == 0)
  {
    v37 = v15;
    v85 = v21;
    v38 = v104;
    v39 = v106;
    v40 = type metadata accessor for ActivityCardVisualView(0);
    v41 = v29 + *(v40 + 24);
    v42 = type metadata accessor for CommonCardAttributes(0);
    v43 = (v41 + *(v42 + 36));
    v44 = *v43;
    v45 = v29;
    if (*v43)
    {
      v46 = v43[1];
      v47 = *(v29 + *(v40 + 28));
      v48 = v97;
      *v97 = v44;
      *(v48 + 8) = v46;
      *(v48 + 16) = v47;
      v49 = v38[6];
      *(v48 + v49) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v50 = v38[7];
      *(v48 + v50) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v51 = v48 + v38[8];
      *v51 = swift_getKeyPath();
      *(v51 + 8) = 0;
      sub_24EE807E8(v48, v37, type metadata accessor for CardElementView.PrimaryMixedMediaView);
      swift_storeEnumTagMultiPayload();
      sub_24EE8055C(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
      sub_24EE8055C(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);

      v52 = v98;
      sub_24F924E28();
      sub_24E60169C(v52, v99, &qword_27F221EA8, &qword_24F9683A0);
      swift_storeEnumTagMultiPayload();
      sub_24E92C9D8();
      sub_24E92CAC4();
      v36 = v105;
      sub_24F924E28();
      sub_24E601704(v52, &qword_27F221EA8, &qword_24F9683A0);
      sub_24EE80850(v48, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    }

    else
    {
      v53 = v41 + *(v42 + 28);
      v54 = v95;
      sub_24E60169C(v53, v95, &qword_27F213FB0, &qword_24F93E6B0);
      v55 = v39;
      v56 = *(v39 + 48);
      v57 = v107;
      if (v56(v54, 1, v107) == 1)
      {
        sub_24E601704(v54, &qword_27F213FB0, &qword_24F93E6B0);
        v35 = 1;
        v36 = v105;
        goto LABEL_12;
      }

      v58 = *(v55 + 32);
      v59 = v96;
      v58(v96, v54, v57);
      if (*(v45 + *(v40 + 28)) == 1)
      {
        v60 = v85;
        (*(v55 + 16))(v85, v59, v57);
        v61 = v90;
        v62 = &v90[*(v94 + 20)];
        type metadata accessor for CardSafeArea(0);
        sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
        *v62 = sub_24F923598();
        v62[8] = v63 & 1;
        v64 = type metadata accessor for PlayerAvatarView(0);
        v65 = v61 + v64[6];
        *(v65 + 32) = 0;
        *v65 = 0u;
        *(v65 + 16) = 0u;
        v58(v61, v60, v57);
        type metadata accessor for PlayerAvatarView.AvatarType(0);
        swift_storeEnumTagMultiPayload();
        v66 = v64[5];
        v67 = type metadata accessor for PlayerAvatarView.Overlay(0);
        (*(*(v67 - 8) + 56))(v61 + v66, 1, 1, v67);
        *(v61 + v64[7]) = 7;
        sub_24EE807E8(v61, v92, type metadata accessor for CardCompactAvatarView);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
        sub_24EE8055C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
        sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
        v68 = v93;
        sub_24F924E28();
        sub_24EE80850(v61, type metadata accessor for CardCompactAvatarView);
      }

      else
      {
        v69 = sub_24F922348();
        v70 = v86;
        (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
        v71 = *MEMORY[0x277CEE240];
        v72 = v85;
        (*(v55 + 16))(v85, v59, v57);
        v73 = v70;
        v74 = v89;
        sub_24EE805A4(v73, v89);
        v75 = (*(v55 + 80) + 16) & ~*(v55 + 80);
        v76 = (v18 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
        v77 = (*(v87 + 80) + v76 + 8) & ~*(v87 + 80);
        v78 = v77 + v88;
        v79 = swift_allocObject();
        v58((v79 + v75), v72, v107);
        *(v79 + v76) = v71;
        v80 = v79 + v77;
        v57 = v107;
        sub_24EE805A4(v74, v80);
        *(v79 + v78) = 1;
        v81 = v92;
        *v92 = sub_24E623C20;
        v81[1] = v79;
        swift_storeEnumTagMultiPayload();
        v82 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
        sub_24EE8055C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
        sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
        v68 = v93;
        sub_24F924E28();
      }

      sub_24E60169C(v68, v99, &qword_27F221EB8, &qword_24F9683A8);
      swift_storeEnumTagMultiPayload();
      sub_24E92C9D8();
      sub_24E92CAC4();
      v36 = v105;
      sub_24F924E28();
      sub_24E601704(v68, &qword_27F221EB8, &qword_24F9683A8);
      (*(v106 + 8))(v96, v57);
    }

    v35 = 0;
    goto LABEL_12;
  }

  sub_24F9289D8();
  v32 = v106;
  v31 = v107;
  (*(v106 + 16))(v15, v21, v107);
  swift_storeEnumTagMultiPayload();
  sub_24EE8055C(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
  sub_24EE8055C(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);
  v33 = v98;
  sub_24F924E28();
  sub_24E60169C(v33, v99, &qword_27F221EA8, &qword_24F9683A0);
  swift_storeEnumTagMultiPayload();
  sub_24E92C9D8();
  sub_24E92CAC4();
  v34 = v105;
  sub_24F924E28();
  sub_24E601704(v33, &qword_27F221EA8, &qword_24F9683A0);
  (*(v32 + 8))(v21, v31);
  v35 = 0;
  v36 = v34;
LABEL_12:
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E98, &qword_24F968398);
  return (*(*(v83 - 8) + 56))(v36, v35, 1, v83);
}

void *sub_24EE801B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityCardVisualView(0);
  v5 = *(a1 + *(v4 + 28));
  if (v5 == 3)
  {
    goto LABEL_7;
  }

  v6 = sub_24F92CE08();

  if (v6)
  {
    goto LABEL_9;
  }

  if (v5 <= 2 && v5 > 1)
  {
LABEL_7:

    goto LABEL_9;
  }

  v7 = sub_24F92CE08();

  if ((v7 & 1) == 0)
  {
    v14 = 0;
    v15 = xmmword_24F9406F0;
    v11 = 0.0;
    v13 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v9 = a1 + *(v4 + 24);
  if (*(v9 + *(type metadata accessor for CommonCardAttributes(0) + 52) + 8))
  {
    sub_24F927878();
    v11 = v10;
    v13 = v12;
    v14 = 0x4020000000000000;
  }

  else
  {
    v14 = 0;
    v11 = 0.5;
    v13 = 0x3FD999999999999ALL;
  }

  result = sub_24F926F28();
  v15 = v16;
LABEL_13:
  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_24EE80414(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_24EE80428(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24EE8043C()
{
  result = qword_27F2324E8;
  if (!qword_27F2324E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2324D8, &unk_24F9A97E0);
    sub_24EE804C8();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2324E8);
  }

  return result;
}

unint64_t sub_24EE804C8()
{
  result = qword_27F2324F0;
  if (!qword_27F2324F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2324E0, &unk_24F9A97F0);
    sub_24E92C644();
    sub_24E92C700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2324F0);
  }

  return result;
}

uint64_t sub_24EE8055C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE805A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE80614()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE807E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE80850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE808B4()
{
  result = qword_27F232510;
  if (!qword_27F232510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232518, &qword_24F9A98E0);
    sub_24EE8043C();
    sub_24EE804C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232510);
  }

  return result;
}

uint64_t BundleSearchResult.__allocating_init(id:lockup:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v9 = sub_24F91F6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = swift_allocObject();
  v17 = *a3;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup) = a2;
  sub_24E60169C(a1, v40, &qword_27F235830, &qword_24F93B8C0);
  v18 = *(a2 + 264);
  if (v18)
  {
    v19 = type metadata accessor for Action(0);
    v33 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v19 = 0;
    v33 = 0;
  }

  sub_24E60169C(a4, v15, &qword_27F213E68, &unk_24F93BC80);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v40, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v16 + 24) = v37;
    *(v16 + 40) = v20;
    *(v16 + 56) = v39;
  }

  else
  {

    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v9;
    v23 = v19;
    v24 = a4;
    v25 = v21;
    v26 = v10;
    v27 = a1;
    v28 = v17;
    v30 = v29;
    (*(v26 + 8))(v12, v22);
    v35 = v25;
    v36 = v30;
    a4 = v24;
    v19 = v23;
    v17 = v28;
    a1 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a4, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v40, &qword_27F235830, &qword_24F93B8C0);
  *(v16 + 64) = v18;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 88) = v19;
  *(v16 + 96) = v33;
  sub_24E65E0D4(v15, v16 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v16 + 17) = 0;
  *(v16 + 16) = v17;
  v31 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v16 + v31) = v34;
  return v16;
}

uint64_t BundleSearchResult.init(id:lockup:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = *a3;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup) = a2;
  sub_24E60169C(a1, v46, &qword_27F235830, &qword_24F93B8C0);
  v19 = *(a2 + 264);
  if (v19)
  {
    v20 = type metadata accessor for Action(0);
    v36 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v20 = 0;
    v36 = 0;
  }

  sub_24E60169C(a4, v17, &qword_27F213E68, &unk_24F93BC80);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v46, &v40, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {

    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v12;
    v23 = a4;
    v24 = v21;
    v25 = v11;
    v26 = a1;
    v27 = v20;
    v28 = v18;
    v30 = v29;
    (*(v22 + 8))(v14, v25);
    v38 = v24;
    v39 = v30;
    a4 = v23;
    v18 = v28;
    v20 = v27;
    a1 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a4, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
  v31 = v44;
  *(v6 + 24) = v43;
  *(v6 + 40) = v31;
  *(v6 + 56) = v45;
  *(v6 + 64) = v19;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  v32 = v36;
  *(v6 + 88) = v20;
  *(v6 + 96) = v32;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v6 + 17) = 0;
  *(v6 + 16) = v18;
  v33 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v6 + v33) = v37;

  return v6;
}

uint64_t BundleSearchResult.clickSender.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

uint64_t BundleSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t BundleSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE81208@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

uint64_t sub_24EE81274(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = v53 - v7;
  v59 = sub_24F91F6B8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v63 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v53 - v13;
  v67 = sub_24F928388();
  v15 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = v53 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v53 - v20;
  v68 = a1;
  sub_24F928398();
  v22 = *(v10 + 16);
  v22(v14, a2, v9);
  type metadata accessor for MixedMediaLockup(0);
  swift_allocObject();
  v23 = v66;
  v24 = MixedMediaLockup.init(deserializing:using:)(v21, v14);
  if (v23)
  {
    (*(v10 + 8))(a2, v9);
    (*(v15 + 8))(v68, v67);
  }

  else
  {
    v25 = v24;
    v54 = v15;
    v53[0] = v22;
    v53[1] = v10 + 16;
    v55 = 0;
    v56 = v10;
    v57 = v9;
    v66 = a2;
    v26 = v60;
    sub_24F928398();
    v27 = sub_24F928348();
    if (v28)
    {
      v74 = v27;
      v75 = v28;
    }

    else
    {
      v29 = v63;
      sub_24F91F6A8();
      v30 = sub_24F91F668();
      v32 = v31;
      (*(v58 + 8))(v29, v59);
      v74 = v30;
      v75 = v32;
    }

    sub_24F92C7F8();
    v33 = *(v54 + 8);
    v34 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35 = v67;
    v33(v26, v67);
    v36 = v66;
    v37 = v57;
    v38 = v61;
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    v60 = v34;
    v33(v38, v35);
    LODWORD(v54) = v77[63];
    sub_24E60169C(v25 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v64, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for SearchAdOpportunity();

    sub_24F928398();
    (v53[0])(v62, v36, v37);
    sub_24EE81B98(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
    sub_24F929548();
    v39 = v76;
    type metadata accessor for BundleSearchResult(0);
    a2 = swift_allocObject();
    *(a2 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup) = v25;
    sub_24E60169C(v77, &v74, &qword_27F235830, &qword_24F93B8C0);
    v40 = *(v25 + 264);

    if (v40)
    {
      v41 = type metadata accessor for Action(0);
      v42 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    v43 = v56;
    v44 = v63;
    v45 = v64;
    sub_24E60169C(v64, v65, &qword_27F213E68, &unk_24F93BC80);
    *(a2 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v74, &v71, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v72 + 1))
    {
      v46 = v72;
      *(a2 + 24) = v71;
      *(a2 + 40) = v46;
      *(a2 + 56) = v73;
    }

    else
    {
      sub_24F91F6A8();
      v47 = sub_24F91F668();
      v48 = v44;
      v50 = v49;
      (*(v58 + 8))(v48, v59);
      v69 = v47;
      v70 = v50;
      v43 = v56;
      sub_24F92C7F8();
      sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
    }

    (*(v43 + 8))(v66, v57);
    v33(v68, v67);
    sub_24E601704(&v74, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v45, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v77, &qword_27F235830, &qword_24F93B8C0);
    *(a2 + 64) = v40;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = v41;
    *(a2 + 96) = v42;
    sub_24E65E0D4(v65, a2 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(a2 + 17) = 0;
    *(a2 + 16) = v54;
    v51 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(a2 + v51) = v39;
  }

  return a2;
}

uint64_t type metadata accessor for BundleSearchResult(uint64_t a1)
{
  result = qword_27F232520;
  if (!qword_27F232520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE81B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CanaryFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id CanaryFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22F500;
  [qword_27F22F500 lock];
  v4 = qword_27F22F508;
  v3 = qword_27F22F510;

  result = [v2 unlock];
  if (v3)
  {
    v6[3] = MEMORY[0x277D837D0];
    v6[0] = v4;
    v6[1] = v3;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_24EE81D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE81DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CanaryFieldsProvider(uint64_t a1)
{
  result = qword_27F232530;
  if (!qword_27F232530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmallLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  sub_24EE82204(a1, &__src[40]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24E615E00(a3, &__src[5]);
  sub_24E60169C(a4, &__src[10], &unk_27F22B200, &unk_24F9674C0);
  sub_24E615E00(a5, &__src[15]);
  sub_24E615E00(a6, &__src[20]);
  sub_24E60169C(a7, &__src[25], &unk_27F22B200, &unk_24F9674C0);
  sub_24E60169C(a8, &__src[30], &unk_27F22B200, &unk_24F9674C0);
  if (*(a1 + 520))
  {
    sub_24E601704(a8, &unk_27F22B200, &unk_24F9674C0);
    sub_24E601704(a7, &unk_27F22B200, &unk_24F9674C0);
    __swift_destroy_boxed_opaque_existential_1(a6);
    __swift_destroy_boxed_opaque_existential_1(a5);
    sub_24E601704(a4, &unk_27F22B200, &unk_24F9674C0);
    __swift_destroy_boxed_opaque_existential_1(a3);
    sub_24EE8223C(a1);
    v18 = *(a10 + 16);
    *&__src[35] = *a10;
    *&__src[37] = v18;
    v19 = *(a10 + 32);
  }

  else
  {
    sub_24E60169C(a10, v22, &qword_27F229780, &unk_24F965BB0);
    if (v23)
    {
      __swift_project_boxed_opaque_existential_1(v22, v23);
      sub_24F922268();
      sub_24E601704(a10, &qword_27F229780, &unk_24F965BB0);
      sub_24E601704(a8, &unk_27F22B200, &unk_24F9674C0);
      sub_24E601704(a7, &unk_27F22B200, &unk_24F9674C0);
      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(a5);
      sub_24E601704(a4, &unk_27F22B200, &unk_24F9674C0);
      __swift_destroy_boxed_opaque_existential_1(a3);
      sub_24EE8223C(a1);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      sub_24E601704(a10, &qword_27F229780, &unk_24F965BB0);
      sub_24E601704(a8, &unk_27F22B200, &unk_24F9674C0);
      sub_24E601704(a7, &unk_27F22B200, &unk_24F9674C0);
      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(a5);
      sub_24E601704(a4, &unk_27F22B200, &unk_24F9674C0);
      __swift_destroy_boxed_opaque_existential_1(a3);
      sub_24EE8223C(a1);
      sub_24E601704(v22, &qword_27F229780, &unk_24F965BB0);
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
    }

    *&__src[35] = v24;
    *&__src[37] = v25;
    v19 = v26;
  }

  __src[39] = v19;
  memcpy(a9, __src, 0x38AuLL);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t SmallLockupLayout.Metrics.init(artworkSize:artworkMargins:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, uint64_t a21, uint64_t a22, char a23, __int128 *a24, uint64_t a25, uint64_t a26, char a27, char a28)
{
  *(a9 + 336) = 0;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = a15;
  *(a9 + 48) = a1;
  *(a9 + 56) = a2;
  sub_24E612C80(a3, a9 + 64);
  sub_24E612C80(a4, a9 + 104);
  sub_24E612C80(a5, a9 + 144);
  sub_24E612C80(a6, a9 + 184);
  sub_24E612C80(a7, a9 + 224);
  sub_24E612C80(a18, a9 + 384);
  sub_24E612C80(a8, a9 + 264);
  sub_24EA63A70(a16, a9 + 304);
  sub_24E612C80(a17, a9 + 344);
  sub_24E612C80(a19, a9 + 424);
  sub_24E612C80(a20, a9 + 464);
  *(a9 + 504) = a21;
  *(a9 + 512) = a22;
  *(a9 + 520) = a23 & 1;
  result = sub_24E612C80(a24, a9 + 528);
  *(a9 + 568) = a25;
  *(a9 + 576) = a26;
  *(a9 + 584) = a27;
  *(a9 + 585) = a28;
  return result;
}

void *SmallLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, uint64_t a18, uint64_t a19, char a20, __int128 *a21, uint64_t a22, uint64_t a23, __int16 a24)
{
  *(a9 + 336) = 0;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *(a9 + 504) = 0;
  *(a9 + 512) = 0;
  *(a9 + 520) = 1;
  memset(&__src[38], 0, 40);
  *__src = a10;
  *&__src[1] = a11;
  memset(&__src[2], 0, 24);
  *&__src[5] = a12;
  __src[6] = a1;
  __src[7] = a2;
  sub_24E612C80(a3, &__src[8]);
  sub_24E612C80(a4, &__src[13]);
  sub_24E612C80(a5, &__src[18]);
  sub_24E612C80(a6, &__src[23]);
  sub_24E612C80(a7, &__src[28]);
  sub_24E612C80(a15, &__src[48]);
  sub_24E612C80(a8, &__src[33]);
  sub_24EA63A70(a13, &__src[38]);
  sub_24E612C80(a14, &__src[43]);
  sub_24E612C80(a16, &__src[53]);
  sub_24E612C80(a17, &__src[58]);
  __src[63] = a18;
  __src[64] = a19;
  LOBYTE(__src[65]) = a20 & 1;
  sub_24E612C80(a21, &__src[66]);
  __src[71] = a22;
  __src[72] = a23;
  LOWORD(__src[73]) = a24;
  sub_24E601704(a9 + 304, &qword_27F22F780, &qword_24F968620);
  return memcpy(a9, __src, 0x24AuLL);
}

void SmallLockupLayout.Metrics.artworkMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void SmallLockupLayout.Metrics.artworkMargin.setter(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
}

double (*SmallLockupLayout.Metrics.artworkMargin.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_24EE827B4;
}

double sub_24EE827B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = result;
  return result;
}

void sub_24EE827CC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = sub_24ED35B70;
  *(a2 + 56) = v5;
}

uint64_t SmallLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void SmallLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t SmallLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));

  return sub_24E612C80(a1, v1 + 64);
}

uint64_t SmallLockupLayout.Metrics.titleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 104));

  return sub_24E612C80(a1, v1 + 104);
}

uint64_t SmallLockupLayout.Metrics.titleMediumSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 144));

  return sub_24E612C80(a1, v1 + 144);
}

uint64_t SmallLockupLayout.Metrics.titleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 184));

  return sub_24E612C80(a1, v1 + 184);
}

uint64_t SmallLockupLayout.Metrics.titleWithHeadingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 224));

  return sub_24E612C80(a1, v1 + 224);
}

uint64_t SmallLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 264));

  return sub_24E612C80(a1, v1 + 264);
}

uint64_t SmallLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 344));

  return sub_24E612C80(a1, v1 + 344);
}

uint64_t SmallLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 384));

  return sub_24E612C80(a1, v1 + 384);
}

uint64_t SmallLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 424));

  return sub_24E612C80(a1, v1 + 424);
}

uint64_t SmallLockupLayout.Metrics.axBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 464));

  return sub_24E612C80(a1, v1 + 464);
}

uint64_t SmallLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 504) = result;
  *(v3 + 512) = a2;
  *(v3 + 520) = a3 & 1;
  return result;
}

uint64_t SmallLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 528));

  return sub_24E612C80(a1, v1 + 528);
}

double static SmallLockupLayout.estimatedMeasurements(fitting:using:in:)(void *a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  v6.n128_f64[0] = a3;
  _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v5, v6);
  v8 = v7;

  return v8;
}

uint64_t sub_24EE83050@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v7 = sub_24F922868();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v139[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_24F9227F8();
  v157 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v139[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = sub_24F922838();
  v163 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v139[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = sub_24F922848();
  v164 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v149 = &v139[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v148 = &v139[-v15];
  MEMORY[0x28223BE20](v16);
  v151 = &v139[-v17];
  MEMORY[0x28223BE20](v18);
  v156 = &v139[-v19];
  MEMORY[0x28223BE20](v20);
  v147 = &v139[-v21];
  sub_24E60169C(v3 + 80, &v183, &unk_27F22B200, &unk_24F9674C0);
  v165 = a2;
  v153 = v7;
  v154 = v10;
  v152 = v8;
  if (!v184)
  {
LABEL_5:
    sub_24E601704(&v183, &unk_27F22B200, &unk_24F9674C0);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v183, v184);
  v22 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v183);
  if ((v22 & 1) == 0)
  {
    sub_24E60169C(v4 + 80, &v183, &unk_27F22B200, &unk_24F9674C0);
    if (v184)
    {
      __swift_project_boxed_opaque_existential_1(&v183, v184);
      v23 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v183);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v23 = 0;
LABEL_7:
  sub_24E60169C(v4 + 240, &v183, &unk_27F22B200, &unk_24F9674C0);
  v24 = v184;
  if (!v184)
  {
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(&v183, v184);
  v25 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v183);
  if ((v25 & 1) == 0)
  {
    sub_24E60169C(v4 + 240, &v183, &unk_27F22B200, &unk_24F9674C0);
    v24 = v184;
    if (v184)
    {
      __swift_project_boxed_opaque_existential_1(&v183, v184);
      v24 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v183);
      goto LABEL_13;
    }

LABEL_12:
    sub_24E601704(&v183, &unk_27F22B200, &unk_24F9674C0);
    goto LABEL_13;
  }

  v24 = 0;
LABEL_13:
  __swift_project_boxed_opaque_existential_1((v4 + 160), *(v4 + 184));
  if (sub_24F922238())
  {
    LODWORD(v150) = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v4 + 160), *(v4 + 184));
    LODWORD(v150) = sub_24F9221E8();
  }

  sub_24E60169C(v4 + 200, &v183, &unk_27F22B200, &unk_24F9674C0);
  v26 = v184;
  if (!v184)
  {
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(&v183, v184);
  v27 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v183);
  if (v27)
  {
    v26 = 0;
    goto LABEL_22;
  }

  sub_24E60169C(v4 + 200, &v183, &unk_27F22B200, &unk_24F9674C0);
  v26 = v184;
  if (v184)
  {
    __swift_project_boxed_opaque_existential_1(&v183, v184);
    v26 = sub_24F9221E8();
    __swift_destroy_boxed_opaque_existential_1(&v183);
  }

  else
  {
LABEL_21:
    sub_24E601704(&v183, &unk_27F22B200, &unk_24F9674C0);
  }

LABEL_22:
  sub_24E60169C(v4 + 624, &v183, &qword_27F22F780, &qword_24F968620);
  if (v184)
  {
    sub_24E612C80(&v183, &v180);
    __swift_project_boxed_opaque_existential_1((v4 + 120), *(v4 + 144));
    if (sub_24F922428())
    {
      __swift_project_boxed_opaque_existential_1((v4 + 160), *(v4 + 184));
      if (sub_24F922428())
      {
        sub_24E612C80(&v180, &v183);
        goto LABEL_29;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v180);
  }

  else
  {
    sub_24E601704(&v183, &qword_27F22F780, &qword_24F968620);
  }

  sub_24E615E00(v4 + 584, &v183);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B258, &unk_24F9A9D10);
  v28 = swift_allocObject();
  v28[32] = v23 & 1;
  v29 = v24 & 1;
  v28[33] = v24 & 1;
  v155 = v26 & 1;
  v28[34] = v26 & 1;
  v30 = MEMORY[0x277D84F90];
  v166 = v24;
  if (v23)
  {
    v31 = a1;
    v32 = v4;
    v33 = v23;
    v34 = v26;
    *&v180 = MEMORY[0x277D84F90];
    sub_24F4581EC(0, 1, 1);
    v30 = v180;
    v36 = *(v180 + 16);
    v35 = *(v180 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_24F4581EC((v35 > 1), v36 + 1, 1);
      v30 = v180;
    }

    *(v30 + 16) = v36 + 1;
    *(v30 + v36 + 32) = 1;
    v26 = v34;
    v23 = v33;
    v4 = v32;
    a1 = v31;
    v24 = v166;
    if ((v166 & 1) == 0)
    {
LABEL_31:
      if ((v26 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }
  }

  else if ((v24 & 1) == 0)
  {
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v180 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24F4581EC(0, *(v30 + 16) + 1, 1);
    v30 = v180;
  }

  v39 = *(v30 + 16);
  v38 = *(v30 + 24);
  if (v39 >= v38 >> 1)
  {
    sub_24F4581EC((v38 > 1), v39 + 1, 1);
    v30 = v180;
  }

  *(v30 + 16) = v39 + 1;
  *(v30 + v39 + 32) = v29;
  v24 = v166;
  if (v26)
  {
LABEL_41:
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = v30;
    if ((v40 & 1) == 0)
    {
      sub_24F4581EC(0, *(v30 + 16) + 1, 1);
      v30 = v180;
    }

    v42 = *(v30 + 16);
    v41 = *(v30 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_24F4581EC((v41 > 1), v42 + 1, 1);
      v30 = v180;
    }

    *(v30 + 16) = v42 + 1;
    *(v30 + v42 + 32) = v155;
  }

LABEL_46:
  swift_setDeallocating();
  swift_deallocClassInstance();
  v43 = *(v30 + 16);

  v44 = [a1 traitCollection];
  v45 = sub_24F92BF98();

  if ((v45 & 1) == 0 || v43 >= 2)
  {
    if (((v23 | v24 | v26) & 1) == 0)
    {
      v46 = [a1 traitCollection];
      v47 = [v46 preferredContentSizeCategory];
      v48 = sub_24F92C158();

      if ((v48 & 1) != 0 || *(v4 + 904) == 1)
      {
        sub_24E615E00(v4 + 120, &v180);
        sub_24E615E00(v4 + 160, &v177);
        sub_24E615E00(&v183, &v174);
        v49 = sub_24F922B98();
        v50 = MEMORY[0x277D229F0];
        v51 = v165;
        v165[3] = v49;
        v51[4] = v50;
        __swift_allocate_boxed_opaque_existential_1(v51);
        sub_24F922B88();
      }

      else
      {
        sub_24E615E00(v4 + 120, &v180);
        sub_24E615E00(v4 + 160, &v177);
        sub_24E615E00(v4 + 424, &v174);
        sub_24E615E00(v4 + 464, &v171);
        sub_24E615E00(&v183, &v168);
        v136 = sub_24F922B38();
        v137 = MEMORY[0x277D229C8];
        v138 = v165;
        v165[3] = v136;
        v138[4] = v137;
        __swift_allocate_boxed_opaque_existential_1(v138);
        sub_24F922B28();
      }

      return __swift_destroy_boxed_opaque_existential_1(&v183);
    }

    sub_24E60169C(v4 + 80, &v180, &unk_27F22B200, &unk_24F9674C0);
    if (*(&v181 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(&v180);
    }

    else
    {
      sub_24E601704(&v180, &unk_27F22B200, &unk_24F9674C0);
    }

    sub_24E60169C(v4 + 80, &v180, &unk_27F22B200, &unk_24F9674C0);
    if (*(&v181 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
      sub_24F922458();
      __swift_destroy_boxed_opaque_existential_1(&v180);
    }

    else
    {
      sub_24E601704(&v180, &unk_27F22B200, &unk_24F9674C0);
    }

    __swift_project_boxed_opaque_existential_1((v4 + 120), *(v4 + 144));
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1((v4 + 120), *(v4 + 144));
    sub_24F922458();
    __swift_project_boxed_opaque_existential_1((v4 + 160), *(v4 + 184));
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1((v4 + 160), *(v4 + 184));
    sub_24F922458();
    sub_24E60169C(v4 + 200, &v180, &unk_27F22B200, &unk_24F9674C0);
    if (*(&v181 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(&v180);
    }

    else
    {
      sub_24E601704(&v180, &unk_27F22B200, &unk_24F9674C0);
    }

    sub_24E60169C(v4 + 200, &v180, &unk_27F22B200, &unk_24F9674C0);
    if (*(&v181 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
      sub_24F922458();
      __swift_destroy_boxed_opaque_existential_1(&v180);
    }

    else
    {
      sub_24E601704(&v180, &unk_27F22B200, &unk_24F9674C0);
    }

    sub_24E60169C(v4 + 80, &v177, &unk_27F22B200, &unk_24F9674C0);
    v58 = MEMORY[0x277D22848];
    v140 = v26;
    if (v178)
    {
      sub_24E612C80(&v177, &v180);
      if (v23)
      {
        v59 = *(&v181 + 1);
        v60 = v182;
        v61 = __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
        v178 = v59;
        v179 = *(v60 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v177);
        (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v61, v59);
        v63 = v163;
        v65 = v158;
        v64 = v159;
        v66.n128_f64[0] = (*(v163 + 104))(v158, *v58, v159);
        v67 = MEMORY[0x277D84F90];
        *&v174 = MEMORY[0x277D84F90];
        sub_24E8EF510(v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
        sub_24E8EF568();
        v68 = v160;
        v69 = v162;
        sub_24F92C6A8();
        sub_24F922818();
        (*(v157 + 8))(v68, v69);
        (*(v63 + 8))(v65, v64);
        __swift_destroy_boxed_opaque_existential_1(&v177);
        v70 = sub_24E6179D8(0, 1, 1, v67);
        v72 = *(v70 + 2);
        v71 = *(v70 + 3);
        if (v72 >= v71 >> 1)
        {
          v70 = sub_24E6179D8((v71 > 1), v72 + 1, 1, v70);
        }

        *(v70 + 2) = v72 + 1;
        (*(v164 + 32))(&v70[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v72], v147, v161);
        __swift_destroy_boxed_opaque_existential_1(&v180);
        v73 = 544;
LABEL_83:
        sub_24E615E00(v4 + v73, &v180);
        v74 = *(v4 + 144);
        v75 = *(v4 + 152);
        v76 = __swift_project_boxed_opaque_existential_1((v4 + 120), v74);
        v178 = v74;
        v179 = *(v75 + 8);
        v77 = __swift_allocate_boxed_opaque_existential_1(&v177);
        (*(*(v74 - 8) + 16))(v77, v76, v74);
        v78 = v163;
        v79 = *(v163 + 104);
        v81 = v158;
        v80 = v159;
        v155 = *v58;
        v147 = v79;
        v82.n128_f64[0] = v79(v158);
        *&v174 = MEMORY[0x277D84F90];
        v83 = sub_24E8EF510(v82);
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
        v85 = sub_24E8EF568();
        v86 = v160;
        v143 = v85;
        v144 = v84;
        v87 = v162;
        v146 = v83;
        sub_24F92C6A8();
        sub_24F922818();
        v145 = *(v157 + 8);
        v145(v86, v87);
        v88 = *(v78 + 8);
        v163 = v78 + 8;
        v142 = v88;
        v88(v81, v80);
        __swift_destroy_boxed_opaque_existential_1(&v177);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_24E6179D8(0, *(v70 + 2) + 1, 1, v70);
        }

        v89 = v150;
        v91 = *(v70 + 2);
        v90 = *(v70 + 3);
        if (v91 >= v90 >> 1)
        {
          v70 = sub_24E6179D8((v90 > 1), v91 + 1, 1, v70);
        }

        *(v70 + 2) = v91 + 1;
        v92 = *(v164 + 32);
        v150 = (*(v164 + 80) + 32) & ~*(v164 + 80);
        v141 = *(v164 + 72);
        v164 += 32;
        v93 = v92;
        v92(&v70[v150 + v141 * v91], v156, v161);
        if (v89)
        {
          v94 = *(v4 + 184);
          v95 = *(v4 + 192);
          v96 = __swift_project_boxed_opaque_existential_1((v4 + 160), v94);
          v178 = v94;
          v179 = *(v95 + 8);
          v97 = __swift_allocate_boxed_opaque_existential_1(&v177);
          (*(*(v94 - 8) + 16))(v97, v96, v94);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_24F93DE60;
          sub_24F9227E8();
          *&v174 = v98;
          v99 = v160;
          v100 = v162;
          sub_24F92C6A8();
          v102 = v158;
          v101 = v159;
          (v147)(v158, v155, v159);
          sub_24F922818();
          v142(v102, v101);
          v145(v99, v100);
          __swift_destroy_boxed_opaque_existential_1(&v177);
          v104 = *(v70 + 2);
          v103 = *(v70 + 3);
          if (v104 >= v103 >> 1)
          {
            v70 = sub_24E6179D8((v103 > 1), v104 + 1, 1, v70);
          }

          v105 = v140;
          *(v70 + 2) = v104 + 1;
          v93(&v70[v150 + v104 * v141], v151, v161);
        }

        else
        {
          v105 = v140;
        }

        sub_24E60169C(v4 + 200, &v174, &unk_27F22B200, &unk_24F9674C0);
        v106 = v166;
        if (v175)
        {
          sub_24E612C80(&v174, &v177);
          if (v105)
          {
            v107 = v178;
            v108 = v179;
            v109 = __swift_project_boxed_opaque_existential_1(&v177, v178);
            v175 = v107;
            v176 = *(v108 + 8);
            v110 = __swift_allocate_boxed_opaque_existential_1(&v174);
            (*(*(v107 - 8) + 16))(v110, v109, v107);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
            v111 = swift_allocObject();
            *(v111 + 16) = xmmword_24F93DE60;
            sub_24F9227E8();
            *&v171 = v111;
            v112 = v160;
            v113 = v162;
            sub_24F92C6A8();
            v115 = v158;
            v114 = v159;
            (v147)(v158, v155, v159);
            sub_24F922818();
            v142(v115, v114);
            v145(v112, v113);
            __swift_destroy_boxed_opaque_existential_1(&v174);
            v117 = *(v70 + 2);
            v116 = *(v70 + 3);
            if (v117 >= v116 >> 1)
            {
              v70 = sub_24E6179D8((v116 > 1), v117 + 1, 1, v70);
            }

            *(v70 + 2) = v117 + 1;
            v93(&v70[v150 + v117 * v141], v148, v161);
            __swift_destroy_boxed_opaque_existential_1(&v177);
            v106 = v166;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v177);
          }
        }

        else
        {
          sub_24E601704(&v174, &unk_27F22B200, &unk_24F9674C0);
        }

        sub_24E60169C(v4 + 240, &v174, &unk_27F22B200, &unk_24F9674C0);
        if (v175)
        {
          sub_24E612C80(&v174, &v177);
          if (v106)
          {
            v118 = v178;
            v119 = v179;
            v120 = __swift_project_boxed_opaque_existential_1(&v177, v178);
            v175 = v118;
            v176 = *(v119 + 8);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v174);
            (*(*(v118 - 8) + 16))(v121, v120, v118);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_24F93DE60;
            sub_24F9227E8();
            *&v171 = v122;
            v123 = v160;
            v124 = v162;
            sub_24F92C6A8();
            v126 = v158;
            v125 = v159;
            (v147)(v158, v155, v159);
            sub_24F922818();
            v142(v126, v125);
            v145(v123, v124);
            __swift_destroy_boxed_opaque_existential_1(&v174);
            v128 = *(v70 + 2);
            v127 = *(v70 + 3);
            if (v128 >= v127 >> 1)
            {
              v70 = sub_24E6179D8((v127 > 1), v128 + 1, 1, v70);
            }

            v130 = v153;
            v129 = v154;
            v131 = v152;
            *(v70 + 2) = v128 + 1;
            v132 = v165;
            v93(&v70[v150 + v128 * v141], v149, v161);
            __swift_destroy_boxed_opaque_existential_1(&v177);
            v133 = v130;
            goto LABEL_107;
          }

          __swift_destroy_boxed_opaque_existential_1(&v177);
        }

        else
        {
          sub_24E601704(&v174, &unk_27F22B200, &unk_24F9674C0);
        }

        v132 = v165;
        v133 = v153;
        v129 = v154;
        v131 = v152;
LABEL_107:
        (*(v131 + 104))(v129, *MEMORY[0x277D22868], v133);
        v178 = sub_24F922418();
        v179 = MEMORY[0x277D226F0];
        __swift_allocate_boxed_opaque_existential_1(&v177);
        sub_24F922408();
        v134 = sub_24F922888();
        v135 = MEMORY[0x277D22878];
        v132[3] = v134;
        v132[4] = v135;
        __swift_allocate_boxed_opaque_existential_1(v132);
        sub_24F922878();
        __swift_destroy_boxed_opaque_existential_1(&v180);
        return __swift_destroy_boxed_opaque_existential_1(&v183);
      }

      __swift_destroy_boxed_opaque_existential_1(&v180);
    }

    else
    {
      sub_24E601704(&v177, &unk_27F22B200, &unk_24F9674C0);
      if (v23)
      {
        v70 = MEMORY[0x277D84F90];
        v73 = 544;
        goto LABEL_83;
      }
    }

    v70 = MEMORY[0x277D84F90];
    v73 = 504;
    goto LABEL_83;
  }

  __swift_destroy_boxed_opaque_existential_1(&v183);
  if (v23)
  {
    sub_24E60169C(v4 + 80, &v180, &unk_27F22B200, &unk_24F9674C0);
  }

  else
  {
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
  }

  sub_24E615E00(v4 + 120, &v177);
  sub_24E615E00(v4 + 160, &v174);
  v52 = v165;
  if (v26)
  {
    sub_24E60169C(v4 + 200, &v171, &unk_27F22B200, &unk_24F9674C0);
  }

  else
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  if (v166)
  {
    sub_24E60169C(v4 + 240, &v168, &unk_27F22B200, &unk_24F9674C0);
  }

  else
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  v52[3] = &type metadata for MultilineTextLayout;
  v52[4] = sub_24EBE83DC();
  v53 = swift_allocObject();
  *v52 = v53;
  sub_24E615E00(v4 + 384, v53 + 216);
  sub_24E615E00(v4 + 504, v53 + 256);
  sub_24E615E00(v4 + 584, v53 + 296);
  sub_24E615E00(v4 + 664, v167);
  *(v53 + 336) = 0u;
  *(v53 + 352) = 0u;
  *(v53 + 368) = 0u;
  *(v53 + 384) = 0u;
  *(v53 + 400) = 0u;
  sub_24EA63A70(v167, v53 + 336);
  *(v53 + 416) = 2;
  *(v53 + 424) = 4 - v43;
  v54 = v181;
  *(v53 + 16) = v180;
  *(v53 + 32) = v54;
  *(v53 + 48) = v182;
  sub_24E612C80(&v177, v53 + 56);
  result = sub_24E612C80(&v174, v53 + 96);
  v56 = v172;
  *(v53 + 136) = v171;
  *(v53 + 152) = v56;
  *(v53 + 168) = v173;
  v57 = v169;
  *(v53 + 176) = v168;
  *(v53 + 192) = v57;
  *(v53 + 208) = v170;
  return result;
}

double sub_24EE84854@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_24F9228C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11 - 8];
  sub_24EE83050(a1, v26);
  sub_24E615E00(v3, v25);
  v13 = *(v3 + 360);
  v23 = MEMORY[0x277D85048];
  v24 = MEMORY[0x277D225F8];
  v22 = v13;
  sub_24E60169C(v3 + 280, v21, &qword_27F229780, &unk_24F965BB0);
  sub_24E615E00(v3 + 744, v20);
  v14 = *MEMORY[0x277D22898];
  v15 = *(v7 + 104);
  v15(v12, v14, v6);
  v15(v9, v14, v6);
  v16 = sub_24F9228E8();
  v17 = MEMORY[0x277D228A8];
  a2[3] = v16;
  a2[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_24F9228D8();
  return result;
}

uint64_t sub_24EE84A0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v28 = a2;
  v26 = sub_24F92CDB8();
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F9221D8();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EE84854(a1, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_24F922AC8();
  __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
  v15 = sub_24F922438();
  __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
  sub_24F922248();
  if (v15 >= 1)
  {
    __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
    sub_24F922218();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    (*(v6 + 368))(v29, v15);
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    sub_24E8ED7D8(v24);
    sub_24F9223A8();
    (*(v9 + 8))(v11, v26);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
    v32.origin.x = v17;
    v32.origin.y = v19;
    v32.size.width = v21;
    v32.size.height = v23;
    CGRectGetMaxX(v32);
    v33.origin.x = v17;
    v33.origin.y = v19;
    v33.size.width = v21;
    v33.size.height = v23;
    CGRectGetMidY(v33);
    sub_24F922228();
  }

  (*(v12 + 32))(v28, v14, v27);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

void sub_24EE84D84(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v5 = sub_24F922938();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v20 = &v19 - v9;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  if (sub_24F922438() < 1)
  {
    sub_24EE83050(a1, v29);
    sub_24E615E00(v3, v28);
    v17 = *(v3 + 360);
    v26 = MEMORY[0x277D85048];
    v27 = MEMORY[0x277D225F8];
    v25[0] = v17;
  }

  else
  {
    (*(v3 + 368))(v29);
    v14 = v30;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    sub_24E8ED7D8(v14);
    v15 = sub_24F9223A8();
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v16 = v15 + *(v3 + 360);
    sub_24EE83050(a1, v29);
    sub_24E615E00(v3, v28);
    v26 = MEMORY[0x277D85048];
    v27 = MEMORY[0x277D225F8];
    v25[0] = v16;
  }

  sub_24E60169C(v3 + 280, v24, &qword_27F229780, &unk_24F965BB0);
  sub_24E615E00(v3 + 848, v23);
  v18 = *(v6 + 104);
  v18(v20, *MEMORY[0x277D228B8], v5);
  v18(v21, *MEMORY[0x277D228C8], v5);
  sub_24F922978();
}

uint64_t sub_24EE850B4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F922998();
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EE84D84(a1, v18);
  v32 = v18;
  sub_24F922958();
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  v19 = sub_24F922438();
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  if (v19 < 1)
  {
    sub_24F922248();
    return (*(v33 + 8))(v32, v16);
  }

  v31 = v16;
  sub_24F922248();
  v20 = v5[46];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  v21 = sub_24F922438();
  v20(v34, v21);
  v22 = v35;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_24E8ED7D8(v22);
  sub_24F9223A8();
  (*(v13 + 8))(v15, v12);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  sub_24F922288();
  v23 = *(v6 + 905);
  v24 = [a1 traitCollection];
  v25 = sub_24F92BF88();

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922218();
  if (v23 != 1)
  {
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_7:
    CGRectGetMaxX(*&v26);
    goto LABEL_8;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  CGRectGetMinX(*&v26);
LABEL_8:
  v16 = v31;
  if (*(v6 + 904) == 1)
  {
    v36.origin.x = a2;
    v36.origin.y = a3;
    v36.size.width = a4;
    v36.size.height = a5;
    CGRectGetMidY(v36);
  }

  else
  {
    sub_24E60169C((v6 + 10), v34, &unk_27F22B200, &unk_24F9674C0);
    if (v35)
    {
      __swift_project_boxed_opaque_existential_1(v34, v35);
      sub_24F922218();
      CGRectGetMinY(v37);
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else
    {
      sub_24E601704(v34, &unk_27F22B200, &unk_24F9674C0);
      __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
      sub_24F922218();
      CGRectGetMinY(v38);
    }
  }

  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  sub_24F922228();
  return (*(v33 + 8))(v32, v16);
}

uint64_t SmallLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = [a1 traitCollection];
  v13 = sub_24F92BF98();

  if (v13)
  {

    return sub_24EE84A0C(a1, a2);
  }

  else
  {

    return sub_24EE850B4(a1, a3, a4, a5, a6);
  }
}

double SmallLockupLayout.measurements(fitting:in:)(void *a1, __n128 a2, double a3)
{
  v4 = v3;
  v7 = a2.n128_u64[0];
  v8 = sub_24F922998();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_24F92BF98();

  if (v14)
  {
    v15 = [a1 traitCollection];
    v16.n128_u64[0] = v7;
    _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0((v4 + 320), v15, v16);
    v18 = v17;
  }

  else
  {
    sub_24EE84D84(a1, v12);
    sub_24EE85DB0(*&v7, a3, v12, a1);
    v18 = v19;
    (*(v9 + 8))(v12, v8);
  }

  return v18;
}

uint64_t sub_24EE857AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = [a1 traitCollection];
  v13 = sub_24F92BF98();

  if (v13)
  {

    return sub_24EE84A0C(a1, a2);
  }

  else
  {

    return sub_24EE850B4(a1, a3, a4, a5, a6);
  }
}

double sub_24EE85880(void *a1, __n128 a2, double a3)
{
  v4 = v3;
  v7 = a2.n128_u64[0];
  v8 = sub_24F922998();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_24F92BF98();

  if (v14)
  {
    v15 = [a1 traitCollection];
    v16.n128_u64[0] = v7;
    _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0((v4 + 320), v15, v16);
    v18 = v17;
  }

  else
  {
    sub_24EE84D84(a1, v12);
    sub_24EE85DB0(*&v7, a3, v12, a1);
    v18 = v19;
    (*(v9 + 8))(v12, v8);
  }

  return v18;
}

double sub_24EE85A18(void *a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  v6.n128_f64[0] = a3;
  _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v5, v6);
  v8 = v7;

  return v8;
}

void _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(void *a1, uint64_t a2, __n128 a3)
{
  if (sub_24F92BF98())
  {
    sub_24E615E00((a1 + 8), v8);
    sub_24E615E00((a1 + 13), v9);
    sub_24E615E00((a1 + 33), v10);
    sub_24E615E00((a1 + 43), v6);
    v4 = a1[71];
    v5 = a1[72];
    memset(v11, 0, sizeof(v11));
    sub_24EA63A70(v6, v11);
    v12 = v4;
    v13 = v5;
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_24F9223B8();
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_24F9223B8();
      sub_24E60169C(&v11[40], v6, &qword_27F22F780, &qword_24F968620);
      if (v7)
      {
        __swift_project_boxed_opaque_existential_1(v6, v7);
        sub_24F9223B8();
        __swift_destroy_boxed_opaque_existential_1(v6);
      }

      else
      {
        sub_24E601704(v6, &qword_27F22F780, &qword_24F968620);
      }

      sub_24EBE8534(v8);
      __swift_project_boxed_opaque_existential_1(a1 + 58, a1[61]);
      sub_24F9223B8();
      __swift_project_boxed_opaque_existential_1(a1 + 66, a1[69]);
      sub_24F9223B8();
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1 + 13, a1[16]);
    sub_24F9223B8();
    __swift_project_boxed_opaque_existential_1(a1 + 33, a1[36]);
    sub_24F9223B8();
    __swift_project_boxed_opaque_existential_1(a1 + 53, a1[56]);
    sub_24F9223B8();
  }
}

uint64_t sub_24EE85DB0(double a1, double a2, uint64_t a3, char *a4)
{
  v42 = sub_24F922848();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232548, &qword_24F9A9D00);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v35 - v7;
  v8 = sub_24F922888();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v37 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F922918();
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_24F922948();
    v14 = v45;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_24E8ED7D8(v14);
    sub_24F9223A8();
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_24E601704(v44, &qword_27F229780, &unk_24F965BB0);
  }

  sub_24F922928();
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_24F922968();
    v15 = v45;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_24E8ED7D8(v15);
    sub_24F9223A8();
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_24E601704(v44, &qword_27F229780, &unk_24F965BB0);
  }

  sub_24F922988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232550, &qword_24F9A9D08);
  v16 = v40;
  v17 = swift_dynamicCast();
  v18 = v38;
  v19 = *(v38 + 56);
  if (v17)
  {
    v19(v16, 0, 1, v8);
    (*(v18 + 32))(v37, v16, v8);
    sub_24F922288();
    v20 = sub_24F922858();
    v21 = *(v20 + 16);
    if (v21)
    {
      v36 = v8;
      v40 = a4;
      v43 = MEMORY[0x277D84F90];
      sub_24F45824C(0, v21, 0);
      v22 = v43;
      v23 = v39 + 16;
      v39 = *(v39 + 16);
      v24 = (*(v23 + 64) + 32) & ~*(v23 + 64);
      v35[1] = v20;
      v25 = v20 + v24;
      v26 = *(v23 + 56);
      v27 = (v23 - 8);
      do
      {
        v28 = v41;
        v29 = v42;
        (v39)(v41, v25, v42);
        sub_24F922828();
        __swift_project_boxed_opaque_existential_1(v44, v45);
        sub_24F922298();
        v31 = v30;
        (*v27)(v28, v29);
        __swift_destroy_boxed_opaque_existential_1(v44);
        v43 = v22;
        v33 = *(v22 + 16);
        v32 = *(v22 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_24F45824C((v32 > 1), v33 + 1, 1);
          v22 = v43;
        }

        *(v22 + 16) = v33 + 1;
        *(v22 + 8 * v33 + 32) = v31;
        v25 += v26;
        --v21;
      }

      while (v21);

      v8 = v36;
      v18 = v38;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    sub_24ED6EC84(v22);

    return (*(v18 + 8))(v37, v8);
  }

  else
  {
    v19(v16, 1, 1, v8);
    return sub_24E601704(v16, &qword_27F232548, &qword_24F9A9D00);
  }
}

unint64_t sub_24EE8647C()
{
  result = qword_27F232540;
  if (!qword_27F232540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232540);
  }

  return result;
}

double sub_24EE864D0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

double sub_24EE864DC(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_24EE864F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24EE86864;
  a2[1] = v5;
}

uint64_t sub_24EE86568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 906))
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

uint64_t sub_24EE865B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 904) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 906) = 1;
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

    *(result + 906) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE866F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 586))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EE86740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 586) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 586) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE8682C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE86890()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  }

  if (v0[50])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  }

  return swift_deallocObject();
}

void sub_24EE86944(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = (*(a6 + 32))(a5, a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = v6;
  *(v15 + 40) = v12;
  *(v15 + 48) = v13;
  *(v15 + 49) = a3;
  *(v15 + 50) = a2;
  *(v15 + 51) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24EE872BC;
  *(v16 + 24) = v15;
  v19[4] = sub_24E972460;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_24E971290;
  v19[3] = &block_descriptor_83;
  v17 = _Block_copy(v19);
  swift_unknownObjectRetain();
  sub_24EBD4BA0(v12, v13);

  dispatch_sync(v14, v17);

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_24EE86B00(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v62 = a5;
  v63 = a6;
  v64 = a4;
  LODWORD(v65) = a3;
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE60, &qword_24F992960);
  MEMORY[0x28223BE20](v60);
  v61 = &v54 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v54 - v12;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v54 - v23);
  v25 = *(a8 + 40);
  v67 = a1;
  v68 = a7;
  v69 = a8;
  v58 = v25;
  v59 = a8 + 40;
  (v25)(a7, a8, v22);
  sub_24EE87300(v20, v24);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v26 = sub_24F91F668();
  v28 = v27;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x253050C20](v26, v28);

  v29 = v70;
  v30 = v71;
  v31 = v24 + *(v18 + 60);

  *v31 = v29;
  *(v31 + 8) = v30;
  LOBYTE(v31) = v65;
  sub_24EC97180();
  sub_24E601704(v20, &qword_27F22ACF0, &qword_24F990A30);
  v32 = v31 >> 4;
  if (v32 <= 3)
  {
LABEL_18:
    v40 = v56;
    v41 = v57;
    if (v32 > 1)
    {
LABEL_33:
      v34 = v68;
      v33 = v69;
      if (v32 == 2)
      {
        sub_24EC96504(v66);
      }

      else
      {
        sub_24EC96744(v66);
      }
    }

    else
    {
      v35 = v66;
      if (!v32)
      {
        v70 = MEMORY[0x277D84F90];
        v36 = v66 & 0xFFFFFFFFFFFFFF8;
        if (v66 >> 62)
        {
          goto LABEL_49;
        }

        v42 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_50:
          v47 = MEMORY[0x277D84F90];
LABEL_51:
          sub_24EC961AC(v47);

          v50 = 0;
          goto LABEL_55;
        }

LABEL_22:
        v65 = v24;
        v57 = v20;
        v43 = 0;
        v20 = (v35 & 0xC000000000000001);
        v24 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
        while (1)
        {
          if (v20)
          {
            v44 = MEMORY[0x253052270](v43, v35);
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v43 >= *(v36 + 16))
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              v42 = sub_24F92C738();
              if (!v42)
              {
                goto LABEL_50;
              }

              goto LABEL_22;
            }

            v44 = *(v35 + 8 * v43 + 32);

            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
          }

          ++v43;
          if (v45 == v42)
          {
            v47 = v70;
            v20 = v57;
            v24 = v65;
            goto LABEL_51;
          }
        }
      }

      v46 = sub_24EC92D98(v66);
      sub_24EC97704(v46);
      v34 = v68;
      v33 = v69;
      if (v31)
      {
      }

      else
      {
        v49 = v55;
        (*(v41 + 2))(v40, v24, v55);
        sub_24F922DC8();

        (*(v41 + 5))(v24, v40, v49);
      }
    }

LABEL_46:
    v50 = 0;
    goto LABEL_56;
  }

  if ((v31 >> 4) <= 5u)
  {
    v34 = v68;
    v33 = v69;
    if (v32 == 4)
    {
      sub_24EC9672C(v66);
    }

    else
    {
      sub_24EC9675C(v66);
    }

    goto LABEL_46;
  }

  v34 = v68;
  v33 = v69;
  v35 = v66;
  if (v32 == 6)
  {
    sub_24EC96930(v66);
    goto LABEL_46;
  }

  if (v32 != 7)
  {
    sub_24EC961AC(MEMORY[0x277D84F90]);
    goto LABEL_46;
  }

  v70 = MEMORY[0x277D84F90];
  v36 = v66 & 0xFFFFFFFFFFFFFF8;
  if (v66 >> 62)
  {
    v37 = sub_24F92C738();
    if (v37)
    {
LABEL_7:
      v65 = v24;
      v57 = v20;
      v31 = 0;
      v20 = (v35 & 0xC000000000000001);
      v24 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
      do
      {
        if (v20)
        {
          v38 = MEMORY[0x253052270](v31, v35);
          v39 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v31 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v38 = *(v35 + 8 * v31 + 32);

          v39 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v38 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v31;
      }

      while (v39 != v37);
      v48 = v70;
      v20 = v57;
      v24 = v65;
      goto LABEL_54;
    }
  }

  else
  {
    v37 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_7;
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_54:
  sub_24EC961AC(v48);

  v50 = 1;
LABEL_55:
  v34 = v68;
  v33 = v69;
LABEL_56:
  sub_24EE87300(v24, v20);
  (*(v33 + 48))(v20, v34, v33);
  if (v64)
  {
    (*(v33 + 64))(v34, v33);
    v51 = v61;
    v58(v34, v33);
    v52 = v60;
    *(v51 + *(v60 + 36)) = v62 & 1;
    *(v51 + *(v52 + 40)) = v50;
    *(v51 + *(v52 + 44)) = v63 & 1;
    sub_24F92AD88();

    sub_24E601704(v51, &qword_27F22CE60, &qword_24F992960);
  }

  return sub_24E601704(v24, &qword_27F22ACF0, &qword_24F990A30);
}

uint64_t sub_24EE87278()
{
  swift_unknownObjectRelease();
  sub_24E96513C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE87300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE87394(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F920A88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EE87454(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F920A88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeDefinitionDefaultOptions(uint64_t a1)
{
  result = qword_27F232558;
  if (!qword_27F232558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE87544(uint64_t a1)
{
  sub_24EE875C8(319);
  if (v1 <= 0x3F)
  {
    sub_24F920A88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE875C8(uint64_t a1)
{
  if (!qword_27F232568)
  {
    sub_24F920B08();
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F232568);
    }
  }
}

unint64_t sub_24EE87620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = sub_24F920AF8();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24F920B08();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v34 = a2;
    v50 = MEMORY[0x277D84F90];
    sub_24F458B5C(0, v10, 0);
    v12 = 0;
    v13 = v50;
    v37 = a1 + 32;
    v44 = v7 + 16;
    v43 = (v4 + 8);
    v36 = v7;
    v42 = (v7 + 8);
    v41 = xmmword_24F93A400;
    v35 = v10;
    do
    {
      v14 = *(v37 + 8 * v12);
      v15 = *(v14 + 16);
      if (v15)
      {
        v39 = v12;
        v40 = v13;
        v49 = v11;

        sub_24F458B9C(0, v15, 0);
        v16 = v49;
        v17 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v38 = v14;
        v18 = v14 + v17;
        v48 = *(v36 + 72);
        v47 = *(v36 + 16);
        do
        {
          v19 = v45;
          v47(v9, v18, v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
          inited = swift_initStackObject();
          *(inited + 16) = v41;
          *(inited + 32) = 1953066613;
          *(inited + 40) = 0xE400000000000000;
          sub_24F920AC8();
          v21 = sub_24F920AE8();
          v23 = v22;
          (*v43)(v6, v46);
          *(inited + 72) = MEMORY[0x277D837D0];
          v24 = MEMORY[0x277D22580];
          *(inited + 48) = v21;
          *(inited + 56) = v23;
          *(inited + 80) = v24;
          *(inited + 88) = 0x65756C6176;
          *(inited + 96) = 0xE500000000000000;
          v25 = sub_24F920AD8();
          *(inited + 128) = MEMORY[0x277D83B88];
          *(inited + 136) = sub_24E65901C();
          *(inited + 104) = v25;
          v26 = sub_24E607D0C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
          swift_arrayDestroy();
          v27 = sub_24E80FFAC(v26);

          (*v42)(v9, v19);
          v49 = v16;
          v29 = *(v16 + 16);
          v28 = *(v16 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_24F458B9C((v28 > 1), v29 + 1, 1);
            v16 = v49;
          }

          *(v16 + 16) = v29 + 1;
          *(v16 + 8 * v29 + 32) = v27;
          v18 += v48;
          --v15;
        }

        while (v15);

        v11 = MEMORY[0x277D84F90];
        v10 = v35;
        v13 = v40;
        v12 = v39;
      }

      else
      {
        v16 = v11;
      }

      v50 = v13;
      v31 = *(v13 + 16);
      v30 = *(v13 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_24F458B5C((v30 > 1), v31 + 1, 1);
        v13 = v50;
      }

      ++v12;
      *(v13 + 16) = v31 + 1;
      *(v13 + 8 * v31 + 32) = v16;
    }

    while (v12 != v10);
    a2 = v34;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232580, &unk_24F9B3FB0);
  result = sub_24EE88798();
  a2[4] = result;
  *a2 = v13;
  return result;
}

unint64_t sub_24EE87AE8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_24F920A88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = a2;
    v47 = MEMORY[0x277D84F90];
    sub_24F458B9C(0, v11, 0);
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v44 = v14;
    v15 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v43 = (v13 + 72);
    v42 = (v13 - 8);
    v38 = (v13 + 80);
    v12 = v47;
    v41 = *(v13 + 56);
    v40 = *MEMORY[0x277D0D0E8];
    v37 = *MEMORY[0x277D0D0F0];
    v46 = xmmword_24F93DE60;
    v45 = v13;
    while (1)
    {
      v16 = v44;
      v44(v10, v15, v4);
      v16(v7, v10, v4);
      v17 = (*v43)(v7, v4);
      if (v17 == v40)
      {
        (*v38)(v7, v4);
        v39 = *v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        *(inited + 32) = 0x646574696D696CLL;
        *(inited + 40) = 0xE700000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18, &unk_24F9B3FE0);
        v19 = swift_initStackObject();
        *(v19 + 16) = v46;
        v20 = v11;
        v21 = v12;
        v22 = v4;
        v23 = v7;
        v24 = v10;
        *(v19 + 32) = 0x746E756F63;
        v25 = v19 + 32;
        v26 = v39;
        *(v19 + 40) = 0xE500000000000000;
        *(v19 + 48) = v26;
        v39 = sub_24E60B368(v19);
        swift_setDeallocating();
        v27 = v25;
        v10 = v24;
        v7 = v23;
        v4 = v22;
        v12 = v21;
        v11 = v20;
        sub_24E601704(v27, &qword_27F21BD20, &unk_24F9537C0);
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48, &qword_24F95F8A0);
        *(inited + 80) = sub_24E776EC0();
        *(inited + 48) = v39;
        v28 = sub_24E607D0C(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F212F18, &unk_24F93A2B0);
        v29 = sub_24E80FFAC(v28);
      }

      else
      {
        if (v17 != v37)
        {
          v32 = *v42;
          (*v42)(v10, v4);
          v32(v7, v4);
          v29 = MEMORY[0x277D84F98];
          goto LABEL_9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
        v30 = swift_initStackObject();
        *(v30 + 16) = v46;
        *(v30 + 32) = 0x6574696D696C6E75;
        *(v30 + 40) = 0xE900000000000064;
        *(v30 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
        *(v30 + 80) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0);
        *(v30 + 48) = MEMORY[0x277D84F98];
        v31 = sub_24E607D0C(v30);
        swift_setDeallocating();
        sub_24E601704(v30 + 32, &qword_27F212F18, &unk_24F93A2B0);
        v29 = sub_24E80FFAC(v31);
      }

      (*v42)(v10, v4);
LABEL_9:
      v47 = v12;
      v34 = *(v12 + 16);
      v33 = *(v12 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24F458B9C((v33 > 1), v34 + 1, 1);
        v12 = v47;
      }

      *(v12 + 16) = v34 + 1;
      *(v12 + 8 * v34 + 32) = v29;
      v15 += v41;
      if (!--v11)
      {
        a2 = v36;
        break;
      }
    }
  }

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232570, &unk_24F9A9E60);
  result = sub_24EE886F4();
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t sub_24EE88054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F920A88();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232590, &unk_24F9A9E70);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE8881C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v8;
  v11 = v10;
  v13 = v23;
  v12 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0, &unk_24F9B4020);
  v27 = 0;
  sub_24EE88870();
  v14 = v25;
  sub_24F92CC68();
  v18 = v11;
  v19 = v28;
  *v11 = v28;
  v26 = 1;
  sub_24EE88924(&qword_27F2325B8, MEMORY[0x277D0D0F8], MEMORY[0x277D0D110]);
  sub_24F92CC68();
  (*(v13 + 8))(v7, v14);
  v15 = v18;
  (*(v21 + 32))(&v18[*(v20 + 20)], v5, v12);
  sub_24EE8896C(v15, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EA6FDB0(v15);
}

uint64_t sub_24EE883B4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xEF736E6F6974704FLL;
  sub_24EE87620(v4, (inited + 48));
  strcpy((inited + 88), "attemptOptions");
  *(inited + 103) = -18;
  sub_24EE87AE8(v3, (inited + 104));
  v6 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v7 = sub_24E80FFAC(v6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_24EE88524()
{
  if (*v0)
  {
    return 0x4F74706D65747461;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_24EE88578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xEE006E6F6974704FLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4F74706D65747461 && a2 == 0xEE00736E6F697470)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EE88664(uint64_t a1)
{
  v2 = sub_24EE8881C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE886A0(uint64_t a1)
{
  v2 = sub_24EE8881C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE886F4()
{
  result = qword_27F232578;
  if (!qword_27F232578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232570, &unk_24F9A9E60);
    sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232578);
  }

  return result;
}

unint64_t sub_24EE88798()
{
  result = qword_27F232588;
  if (!qword_27F232588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232580, &unk_24F9B3FB0);
    sub_24EE886F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232588);
  }

  return result;
}

unint64_t sub_24EE8881C()
{
  result = qword_27F232598;
  if (!qword_27F232598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232598);
  }

  return result;
}

unint64_t sub_24EE88870()
{
  result = qword_27F2325A8;
  if (!qword_27F2325A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2325A0, &unk_24F9B4020);
    sub_24EE88924(&qword_27F2325B0, MEMORY[0x277D0D188], MEMORY[0x277D0D1A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325A8);
  }

  return result;
}

uint64_t sub_24EE88924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE8896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE889E4()
{
  result = qword_27F2325C0;
  if (!qword_27F2325C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325C0);
  }

  return result;
}

unint64_t sub_24EE88A3C()
{
  result = qword_27F2325C8;
  if (!qword_27F2325C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325C8);
  }

  return result;
}

unint64_t sub_24EE88A94()
{
  result = qword_27F2325D0;
  if (!qword_27F2325D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325D0);
  }

  return result;
}

uint64_t PersonalizationTransparencyPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationTransparencyPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *PersonalizationTransparencyPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v54 = v4;
  v49 = *v4;
  v50 = v3;
  v7 = sub_24F928818();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = v40 - v13;
  MEMORY[0x28223BE20](v14);
  v47 = v40 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v40 - v17;
  v53 = sub_24F928388();
  v19 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v40[2] = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v40 - v22;
  MEMORY[0x28223BE20](v24);
  v46 = v40 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v40 - v27;
  v55 = a1;
  sub_24F928398();
  v29 = *(v10 + 16);
  v51 = a2;
  v52 = v9;
  v48 = v29;
  v29(v18, a2, v9);
  type metadata accessor for GenericAccountPage(0);
  swift_allocObject();
  v30 = v50;
  v31 = GenericAccountPage.init(deserializing:using:)(v28, v18);
  if (v30)
  {
    (*(v10 + 8))(v51, v52);
    (*(v19 + 8))(v55, v53);
    v32 = v54;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40[1] = v23;
    v50 = v19;
    v54[2] = v31;
    v33 = v46;
    sub_24F928398();
    v34 = v47;
    v36 = v51;
    v35 = v52;
    v48(v47, v51, v52);
    swift_allocObject();
    v37 = GenericAccountPage.init(deserializing:using:)(v33, v34);
    v32 = v54;
    v54[3] = v37;
    sub_24F928398();
    v48(v44, v36, v35);
    v38 = v45;
    sub_24F928788();
    (*(v42 + 32))(v32 + OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics, v38, v43);
    type metadata accessor for PageRenderMetricsEvent();
    sub_24F928398();
    v48(v41, v36, v35);
    sub_24EE89414();
    sub_24F929548();
    (*(v10 + 8))(v36, v35);
    (*(v50 + 8))(v55, v53);
    *(v32 + OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageRenderEvent) = v56;
  }

  return v32;
}

uint64_t PersonalizationTransparencyPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizationTransparencyPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PersonalizationTransparencyPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24EE8931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = PersonalizationTransparencyPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE89398@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_24EE89414()
{
  result = qword_27F2218C0;
  if (!qword_27F2218C0)
  {
    type metadata accessor for PageRenderMetricsEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2218C0);
  }

  return result;
}

uint64_t type metadata accessor for PersonalizationTransparencyPage(uint64_t a1)
{
  result = qword_27F2325D8;
  if (!qword_27F2325D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE894C0(uint64_t a1)
{
  result = sub_24F928818();
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

uint64_t sub_24EE895A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24EE896D0(a2, &v10 - v5);
  v7 = sub_24F9234D8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_24EE89740(v6);
  }

  (*(v8 + 8))(a1, v7);
  return (*(v8 + 32))(a1, v6, v7);
}

uint64_t sub_24EE896D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE89740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UpdateAllAction.__allocating_init(ordering:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = a1;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v9 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v10 = sub_24F928AD8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8 + v9, a2, v10);
  v12 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v8 + v12, 1, 1, v13);
  v14 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v25, &v22);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *v15 = v22;
    *(v15 + 16) = v16;
    *(v15 + 32) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v21[1] = v17;
    v21[2] = v19;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v11 + 8))(a2, v10);
  sub_24E601704(v25, &qword_27F235830, &qword_24F93B8C0);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  return v8;
}

uint64_t UpdateAllAction.init(ordering:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = a1;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  (*(v14 + 16))(v16, a2, v13);
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = (v3 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  sub_24E65E064(v33, &v27);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v7;
    v22 = v21;
    (*(v20 + 8))(v9, v6);
    v26[1] = v19;
    v26[2] = v22;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  v23 = v3 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v23 + 32) = v32;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

char *UpdateAllAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = MEMORY[0x277D84F90];
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *UpdateAllAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = MEMORY[0x277D84F90];
  v14 = *(v10 + 16);
  v18 = a1;
  v14(v13, a1, v9, v11);
  (*(v6 + 16))(v8, a2, v5);
  v15 = Action.init(deserializing:using:)(v13, v8);
  (*(v6 + 8))(a2, v5);
  (*(v10 + 8))(v18, v9);
  return v15;
}

uint64_t UpdateAllAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t UpdateAllAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdateAllAction(uint64_t a1)
{
  result = qword_27F2325F0;
  if (!qword_27F2325F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CancelPreorderAction.__allocating_init(preorderAdamId:isArcade:actionMetrics:)(void *a1, char a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = a1[1];
  v12 = (v10 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  *v12 = *a1;
  v12[1] = v11;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_isArcade) = a2;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v13 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10 + v13, a3, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  v18 = (v10 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v10 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v25[1] = v21;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  return v10;
}

uint64_t CancelPreorderAction.init(preorderAdamId:isArcade:actionMetrics:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v28[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = (v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  *v19 = *a1;
  v19[1] = v18;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_isArcade) = a2;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  (*(v15 + 16))(v17, a3, v14);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v35, &v29);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v28[0] + 8))(v10, v8);
    v28[1] = v22;
    v28[2] = v24;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  v25 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 32) = v34;
  v26 = v33;
  *v25 = v32;
  *(v25 + 16) = v26;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

void *CancelPreorderAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v48 = a2;
  v6 = *v4;
  v44 = v3;
  v45 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v50 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v23 = v19;
  v24 = *(v11 + 8);
  v49 = v10;
  v24(v23, v10);
  if (!v22)
  {
    v31 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v32, "preorderAdamId");
    v33 = v45;
    v32[15] = -18;
    *(v32 + 2) = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v47 + 8))(v48, v46);
    v24(v50, v49);
    goto LABEL_5;
  }

  v25 = v24;
  v26 = (v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  *v26 = v20;
  v26[1] = v22;
  sub_24F928398();
  v27 = sub_24F928278();
  v25(v16, v49);
  if (v27 == 2)
  {
    v28 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v29 = 0x6564616372417369;
    v30 = v45;
    v29[1] = 0xE800000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    (*(v47 + 8))(v48, v46);
    v25(v50, v49);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v34 = v25;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_isArcade) = v27 & 1;
  (*(v11 + 16))(v13, v50, v49);
  v36 = v47;
  v35 = v48;
  v37 = v43;
  v38 = v46;
  (*(v47 + 16))(v43, v48, v46);
  v39 = v44;
  v40 = Action.init(deserializing:using:)(v13, v37);
  if (!v39)
  {
    v4 = v40;
  }

  (*(v36 + 8))(v35, v38);
  v34(v50, v49);
  return v4;
}

double CancelPreorderAction.preorderAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  a1[1] = v2;

  return result;
}

uint64_t CancelPreorderAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t CancelPreorderAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CancelPreorderAction(uint64_t a1)
{
  result = qword_27F232600;
  if (!qword_27F232600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE8B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 40)) + 16) && (sub_24E76DD40(a1), (v5 & 1) != 0))
  {
    type metadata accessor for Shelf(0);

    sub_24F928A78();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

id ShelfBasedCollectionViewController.shelfLayoutContext(containing:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (sub_24F91FA28() < 1)
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v9 = sub_24F92AAE8();
    __swift_project_value_buffer(v9, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_24F92C888();
    v10 = sub_24F92D1E8();
    MEMORY[0x253050C20](v10);

    MEMORY[0x253050C20](0xD00000000000003CLL, 0x800000024FA60450);
    sub_24F91FA78();
    sub_24EE907F8(&qword_27F22ECE0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v11 = sub_24F92CD88();
    MEMORY[0x253050C20](v11);

    MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA60490);
    v13[3] = MEMORY[0x277D837D0];
    sub_24F928438();
    sub_24E601704(v13, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    v12 = type metadata accessor for ShelfLayoutContext(0);
    return (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
  }

  else
  {
    v7 = sub_24F91FA88();

    return ShelfBasedCollectionViewController.shelfLayoutContext(for:)(v7, a2, a3, a4);
  }
}

id ShelfBasedCollectionViewController.shelfLayoutContext(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v138 = a1;
  v8 = type metadata accessor for PageEnvironment(0);
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v130 = (&v116 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v116 - v16;
  MEMORY[0x28223BE20](v18);
  v129 = &v116 - v19;
  MEMORY[0x28223BE20](v20);
  v131 = &v116 - v21;
  MEMORY[0x28223BE20](v22);
  v133 = &v116 - v23;
  MEMORY[0x28223BE20](v24);
  *&MinY = &v116 - v25;
  MEMORY[0x28223BE20](v26);
  v136 = &v116 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v116 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v139 = *(v31 - 8);
  v140 = v31;
  MEMORY[0x28223BE20](v31);
  v135 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v137 = &v116 - v35;
  v36 = (*(a3 + 32))(a2, a3, v34);
  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v36;
  v124 = v17;
  v134 = a4;
  v38 = *(a3 + 56);
  v126 = a2;
  v127 = v4;
  v39 = v38(a2, a3);
  if (!v39)
  {

    (*(v139 + 56))(v30, 1, 1, v140);
    goto LABEL_6;
  }

  v40 = v39;
  v123 = v14;
  v125 = v12;
  sub_24EE8CF48(v138, v30);

  v42 = v139;
  v41 = v140;
  if ((*(v139 + 48))(v30, 1, v140) == 1)
  {

LABEL_6:
    a4 = v134;
    sub_24E601704(v30, &unk_27F23A690, &qword_24F982880);
LABEL_7:
    v43 = type metadata accessor for ShelfLayoutContext(0);
    return (*(*(v43 - 8) + 56))(a4, 1, 1, v43);
  }

  v45 = v137;
  (*(v42 + 32))(v137, v30, v41);
  v46 = v126;
  v47 = v38(v126, a3);
  if (!v47)
  {

    (*(v42 + 8))(v45, v41);
    a4 = v134;
    goto LABEL_7;
  }

  v48 = v47;
  v49 = v125;
  v50 = *&MinY;
  sub_24EE8DB40(*&MinY, *&MinY + *(v125 + 48), v138);

  v51 = v136;
  sub_24E6009C8(v50, v136, &unk_27F23A680, &unk_24F981ED0);
  v52 = v37;
  [v52 bounds];
  v54 = v53;
  v56 = v55;
  v57 = [v52 readableContentGuide];
  v117 = v52;

  [v57 layoutFrame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v150.origin.x = v59;
  v150.origin.y = v61;
  v150.size.width = v63;
  v150.size.height = v65;
  MinY = CGRectGetMinY(v150);
  v151.origin.x = v59;
  v151.origin.y = v61;
  v151.size.width = v63;
  v151.size.height = v65;
  MinX = CGRectGetMinX(v151);
  v152.origin.x = v59;
  v152.origin.y = v61;
  v152.size.width = v63;
  v152.size.height = v65;
  MaxY = CGRectGetMaxY(v152);
  v153.origin.x = v59;
  v153.origin.y = v61;
  v153.size.width = v63;
  v153.size.height = v65;
  MaxX = CGRectGetMaxX(v153);
  v68 = v127;
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v147);
  v119 = v149;
  v120 = v148;
  v118 = __swift_project_boxed_opaque_existential_1(v147, v148);
  v69 = v133;
  sub_24E60169C(v51, v133, &unk_27F23A680, &unk_24F981ED0);
  v121 = *(a3 + 104);
  v70 = v121(v46, a3);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  result = [v68 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v77 = result;
  v78 = v56 - MaxY;
  v79 = v54 - MaxX;
  v80 = *(v49 + 48);
  v81 = [result traitCollection];

  v82 = v130;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v81, 1, v130);
  (*(v119 + 8))(v146, v137, v69, v69 + v80, v82, v120, v54, v56, MinY, MinX, v78, v79, v70, v72, v74, v76);
  sub_24EE906DC(v82, type metadata accessor for PageEnvironment);
  sub_24E601704(v69 + v80, &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v69, &unk_27F23A690, &qword_24F982880);
  __swift_destroy_boxed_opaque_existential_1(v147);
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v143);
  v83 = v144;
  v84 = v145;
  v130 = __swift_project_boxed_opaque_existential_1(v143, v144);
  v85 = a3;
  v86 = v131;
  sub_24E60169C(v136, v131, &unk_27F23A680, &unk_24F981ED0);
  v133 = v85;
  v87 = v121(v46, v85);
  v89 = v88;
  v91 = v90;
  v93 = v92;
  result = [v68 view];
  v94 = v139;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v95 = result;
  v96 = *(v125 + 48);
  v97 = [result traitCollection];

  v98 = v128;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v97, 1, v128);
  v99 = v137;
  (*(v84 + 16))(v142, v137, v86, v86 + v96, v98, v83, v84, v54, v56, MinY, MinX, v78, v79, v87, v89, v91, v93);
  sub_24EE906DC(v98, type metadata accessor for PageEnvironment);
  sub_24E601704(v86 + v96, &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v86, &unk_27F23A690, &qword_24F982880);
  __swift_destroy_boxed_opaque_existential_1(v143);
  v100 = *(v94 + 16);
  v100(v135, v99, v140);
  v101 = v129;
  sub_24E60169C(v136, v129, &unk_27F23A680, &unk_24F981ED0);
  v133 = ShelfBasedCollectionViewController.stateStore.getter(v126, v133);
  result = [v68 view];
  if (result)
  {
    v102 = result;
    v103 = v125;
    v104 = *(v125 + 48);
    MinY = COERCE_DOUBLE([result traitCollection]);

    v105 = v124;
    sub_24E6009C8(v101, v124, &unk_27F23A690, &qword_24F982880);
    sub_24E6009C8(v101 + v104, v105 + *(v103 + 48), &unk_27F23A690, &qword_24F982880);
    v106 = v134;
    v100(v134, v135, v140);
    v107 = type metadata accessor for ShelfLayoutContext(0);
    *&v106[v107[5]] = v138;
    v108 = v123;
    sub_24E60169C(v105, v123, &unk_27F23A680, &unk_24F981ED0);
    v109 = *(v103 + 48);
    v110 = &v106[v107[6]];
    sub_24E6009C8(v108, v110, &unk_27F23A690, &qword_24F982880);
    sub_24E6009C8(v108 + v109, v110 + *(v103 + 48), &unk_27F23A690, &qword_24F982880);
    memcpy(&v106[v107[7]], v146, 0x188uLL);
    memcpy(&v106[v107[8]], v142, 0x188uLL);
    *&v106[v107[9]] = v133;
    v111 = type metadata accessor for LayoutContextTraitEnvironment();
    v112 = objc_allocWithZone(v111);
    *&v112[OBJC_IVAR____TtC12GameStoreKit29LayoutContextTraitEnvironment_traitCollection] = MinY;
    v141.receiver = v112;
    v141.super_class = v111;
    v113 = objc_msgSendSuper2(&v141, sel_init);

    sub_24E601704(v105, &unk_27F23A680, &unk_24F981ED0);
    v114 = v140;
    v115 = *(v139 + 8);
    v115(v135, v140);
    sub_24E601704(v136, &unk_27F23A680, &unk_24F981ED0);
    v115(v137, v114);
    *&v106[v107[10]] = v113;
    return (*(*(v107 - 1) + 56))(v106, 0, 1, v107);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContexts(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232610, &qword_24F9AA108);
  MEMORY[0x28223BE20](v62);
  v67 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v61 = &v50 - v9;
  v60 = type metadata accessor for ItemLayoutContext(0);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for ShelfLayoutContext(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)(a1, a2, a3, v14);
  v19 = *(v16 + 48);
  v50 = v15;
  if (v19(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F232618, &qword_24F9DAE90);
    return MEMORY[0x277D84F90];
  }

  sub_24EE9073C(v14, v18, type metadata accessor for ShelfLayoutContext);
  v20 = (*(a3 + 56))(a2, a3);
  if (!v20 || (v21 = v20, v22 = sub_24EE8F688(v18), v21, !v22))
  {
    sub_24EE906DC(v18, type metadata accessor for ShelfLayoutContext);
    return MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 2);
  if (!v23)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_29:
    sub_24EE906DC(v18, type metadata accessor for ShelfLayoutContext);
    return v27;
  }

  v74 = MEMORY[0x277D84F90];
  sub_24F458BDC(0, v23, 0);
  v58 = *(v22 + 2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v25 = 0;
  v66 = result;
  v26 = *(result - 8);
  v54 = &v22[(*(v26 + 80) + 32) & ~*(v26 + 80)];
  v27 = v74;
  v55 = v26;
  v52 = v26 + 32;
  v51 = *(v50 + 24);
  v57 = v22;
  v56 = v23;
  v53 = v26 + 16;
  while (v58 != v25)
  {
    if (v25 >= *(v22 + 2))
    {
      goto LABEL_31;
    }

    v28 = v62;
    v29 = *(v62 + 48);
    v30 = v18;
    v31 = v55;
    v32 = &v54[*(v55 + 72) * v25];
    v33 = v61;
    v34 = v66;
    v65 = *(v55 + 16);
    v65(&v61[v29], v32, v66);
    v35 = v67;
    *v67 = v25;
    v36 = *(v28 + 48);
    v37 = *(v31 + 32);
    v18 = v30;
    v37(v35 + v36, &v33[v29], v34);
    v38 = v63;
    sub_24E60169C(v30 + v51, v63, &unk_27F23A680, &unk_24F981ED0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    LODWORD(v28) = (*(*(v39 - 8) + 48))(v38, 1, v39);
    sub_24E601704(v38 + *(v64 + 48), &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v38, &unk_27F23A690, &qword_24F982880);
    if (v28 == 1)
    {
      v40 = 10;
    }

    else
    {
      v40 = 2;
    }

    swift_getKeyPath();
    sub_24F928A48();

    v41 = v40 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*v71 >> 1) & 1));
    swift_getKeyPath();
    sub_24F928A48();

    if (v71[0] == 1)
    {
      v41 |= 1uLL;
    }

    else
    {
      v42 = [*(v30 + *(v50 + 40)) traitCollection];
      v43 = sub_24F92BF68();

      if (v43)
      {
        v41 |= 0x10uLL;
      }
    }

    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232620, &qword_24F9AA150);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v68, v71);
      v44 = v72;
      v45 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(v45 + 8))(v70, v44, v45);
      if (LOBYTE(v70[0]) != 4)
      {
        v41 |= 0x40uLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      sub_24E601704(v68, &unk_27F23A6B0, &qword_24F9BE9D0);
    }

    v46 = v60;
    v47 = v67;
    v65(v11 + *(v60 + 20), v67 + v36, v66);
    sub_24EB07708(v30, v11 + v46[8]);
    *v11 = v25;
    *(v11 + v46[6]) = MEMORY[0x277D84F98];
    *(v11 + v46[7]) = v41;
    sub_24E601704(v47, &qword_27F232610, &qword_24F9AA108);
    v74 = v27;
    v49 = *(v27 + 16);
    v48 = *(v27 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_24F458BDC((v48 > 1), v49 + 1, 1);
      v27 = v74;
    }

    ++v25;
    *(v27 + 16) = v49 + 1;
    result = sub_24EE9073C(v11, v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49, type metadata accessor for ItemLayoutContext);
    v22 = v57;
    if (v56 == v25)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContext(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650, &qword_24F9B0470);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  MEMORY[0x28223BE20](v10);
  v36 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for ShelfLayoutContext(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(a2, a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &qword_27F232618;
    v21 = &qword_24F9DAE90;
    v22 = v15;
  }

  else
  {
    sub_24EE9073C(v15, v19, type metadata accessor for ShelfLayoutContext);
    v23 = (*(a3 + 56))(a2, a3);
    if (v23)
    {
      v24 = v23;
      sub_24EE8E8F8(a1, v9);

      v26 = v37;
      v25 = v38;
      if ((*(v38 + 48))(v9, 1, v37) != 1)
      {
        v31 = v36;
        (*(v25 + 32))(v36, v9, v26);
        v32 = sub_24E60D43C(MEMORY[0x277D84F90]);
        v33 = sub_24F91FA08();
        v40 = v32;
        v28 = v39;
        v34 = ShelfLayoutContext.itemLayoutContext(for:at:metadata:)(v31, v33, &v40, v39);
        (*(v25 + 8))(v31, v26, v34);
        sub_24EE906DC(v19, type metadata accessor for ShelfLayoutContext);

        v27 = 0;
        goto LABEL_9;
      }

      sub_24EE906DC(v19, type metadata accessor for ShelfLayoutContext);
    }

    else
    {
      sub_24EE906DC(v19, type metadata accessor for ShelfLayoutContext);
      (*(v38 + 56))(v9, 1, 1, v37);
    }

    v20 = &qword_27F228650;
    v21 = &qword_24F9B0470;
    v22 = v9;
  }

  sub_24E601704(v22, v20, v21);
  v27 = 1;
  v28 = v39;
LABEL_9:
  v29 = type metadata accessor for ItemLayoutContext(0);
  return (*(*(v29 - 8) + 56))(v28, v27, 1, v29);
}

uint64_t sub_24EE8CF48@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628, &qword_24F9AA158);
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630, &qword_24F9AA160);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v16 = v2 + *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  v43 = v16;
  sub_24E60169C(v16, v12, &qword_27F22ACF0, &qword_24F990A30);
  v44 = v10;
  if (a1 < 0 || (v17 = *&v12[*(v10 + 36)], *(v17 + 16) <= a1))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  else
  {
    sub_24E772724(v17 + 40 * a1 + 32, &v49);
    v18 = *&v12[*(v10 + 40)];
    if (*(v18 + 16) && (v19 = sub_24E76DD40(&v49), (v20 & 1) != 0))
    {
      v48 = *(*(v18 + 56) + 8 * v19);
      type metadata accessor for Shelf(0);

      sub_24F928A78();
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    (*(*(v23 - 8) + 56))(v15, v21, 1, v23);
    sub_24E772780(&v49);
  }

  sub_24E601704(v12, &qword_27F22ACF0, &qword_24F990A30);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v15, 1, v24) == 1)
  {
    v37 = v7;
    v38 = v3;
    v41 = v5;
    v42 = a1;
    sub_24E601704(v15, &unk_27F23A690, &qword_24F982880);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v40 = sub_24F92AAE8();
    v39 = __swift_project_value_buffer(v40, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v26 = MEMORY[0x277D837D0];
    v51 = MEMORY[0x277D837D0];
    v49 = 0xD00000000000002ELL;
    v50 = 0x800000024FA60750;
    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0, &unk_24F945320);
    v51 = MEMORY[0x277D83B88];
    v49 = v42;
    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0, &unk_24F945320);
    v51 = v26;
    v49 = 0xD000000000000033;
    v50 = 0x800000024FA60780;
    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0, &unk_24F945320);
    v27 = (v43 + *(v44 + 52));
    v29 = *v27;
    v28 = v27[1];
    v51 = v26;
    v49 = v29;
    v50 = v28;

    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v30 = v38;
    v31 = *((*MEMORY[0x277D85000] & *v38) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v32 = v45;
    sub_24E60169C(v30 + v31, v45, &qword_27F232630, &qword_24F9AA160);
    if ((*(v46 + 48))(v32, 1, v41))
    {
      sub_24E601704(v32, &qword_27F232630, &qword_24F9AA160);
      return (*(v25 + 56))(v47, 1, 1, v24);
    }

    else
    {
      v35 = v37;
      sub_24E60169C(v32, v37, &qword_27F232628, &qword_24F9AA158);
      sub_24E601704(v32, &qword_27F232630, &qword_24F9AA160);
      sub_24EE8D6C0(v42, v47);
      return sub_24E601704(v35, &qword_27F232628, &qword_24F9AA158);
    }
  }

  else
  {
    v34 = v47;
    (*(v25 + 32))(v47, v15, v24);
    return (*(v25 + 56))(v34, 0, 1, v24);
  }
}

uint64_t sub_24EE8D6C0@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v9 = v8;
  if (a1 < 0 || (v10 = *(v2 + *(v8 + 36)), *(v10 + 16) <= a1))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  else
  {
    sub_24E772724(v10 + 40 * a1 + 32, &v24);
    sub_24EE8B364(&v24, v7);
    sub_24E772780(&v24);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) != 1)
    {
      (*(v12 + 32))(a2, v7, v11);
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  v22 = v9;
  v23 = a2;
  sub_24E601704(v7, &unk_27F23A690, &qword_24F982880);
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v21 = sub_24F92AAE8();
  v20[1] = __swift_project_value_buffer(v21, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F942000;
  v15 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837D0];
  v24 = 0xD000000000000019;
  v25 = 0x800000024FA60520;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
  v16 = (v2 + *(v22 + 52));
  v18 = *v16;
  v17 = v16[1];
  v26 = v15;
  v24 = v18;
  v25 = v17;

  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
  v26 = v15;
  v24 = 0xD00000000000002FLL;
  v25 = 0x800000024FA607C0;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
  v26 = MEMORY[0x277D83B88];
  v24 = a1;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
  v26 = v15;
  v24 = 0xD00000000000001CLL;
  v25 = 0x800000024FA607F0;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5B8();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  return (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
}

uint64_t sub_24EE8DB40(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v69 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628, &qword_24F9AA158);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630, &qword_24F9AA160);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v56 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v67);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v21 = v3 + *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  sub_24E60169C(v21, v20, &qword_27F22ACF0, &qword_24F990A30);
  v68 = v15;
  if (a3 < 0)
  {
    sub_24E601704(v20, &qword_27F22ACF0, &qword_24F990A30);
  }

  else
  {
    v22 = *(*&v20[*(v15 + 36)] + 16);
    sub_24E601704(v20, &qword_27F22ACF0, &qword_24F990A30);
    if (v22 > a3)
    {
      sub_24E60169C(v21, v17, &qword_27F22ACF0, &qword_24F990A30);
      v23 = v68;
      v24 = *&v17[*(v68 + 36)];
      if (a3 && *(v24 + 16) >= a3)
      {
        sub_24E772724(v24 + 40 * a3 - 8, &v71);
        v25 = *&v17[*(v23 + 40)];
        if (*(v25 + 16) && (v26 = sub_24E76DD40(&v71), (v27 & 1) != 0))
        {
          v70 = *(*(v25 + 56) + 8 * v26);
          type metadata accessor for Shelf(0);

          sub_24F928A78();
          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
        (*(*(v48 - 8) + 56))(a1, v28, 1, v48);
        sub_24E772780(&v71);
      }

      else
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
        (*(*(v47 - 8) + 56))(a1, 1, 1, v47);
      }

      if (a3 + 1 >= *(v24 + 16))
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
        (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
      }

      else
      {
        sub_24E772724(v24 + 40 * (a3 + 1) + 32, &v71);
        v49 = *&v17[*(v23 + 40)];
        if (*(v49 + 16))
        {
          v50 = sub_24E76DD40(&v71);
          v51 = v69;
          if (v52)
          {
            v70 = *(*(v49 + 56) + 8 * v50);
            type metadata accessor for Shelf(0);

            sub_24F928A78();
            v53 = 0;
          }

          else
          {
            v53 = 1;
          }
        }

        else
        {
          v53 = 1;
          v51 = v69;
        }

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
        (*(*(v55 - 8) + 56))(v51, v53, 1, v55);
        sub_24E772780(&v71);
      }

      return sub_24E601704(v17, &qword_27F22ACF0, &qword_24F990A30);
    }
  }

  v58 = v9;
  v62 = a1;
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v61 = sub_24F92AAE8();
  v60 = __swift_project_value_buffer(v61, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  v29 = MEMORY[0x277D837D0];
  v73 = MEMORY[0x277D837D0];
  v71 = 0xD000000000000033;
  v72 = 0x800000024FA60660;
  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0, &unk_24F945320);
  v73 = MEMORY[0x277D83B88];
  v57 = a3;
  v71 = a3;
  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0, &unk_24F945320);
  v73 = v29;
  v71 = 0xD00000000000003DLL;
  v72 = 0x800000024FA606A0;
  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0, &unk_24F945320);
  v30 = (v21 + *(v68 + 52));
  v32 = *v30;
  v31 = v30[1];
  v73 = v29;
  v71 = v32;
  v72 = v31;

  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5B8();

  v33 = *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  v34 = v63;
  sub_24E60169C(v4 + v33, v63, &qword_27F232630, &qword_24F9AA160);
  if ((*(v64 + 48))(v34, 1, v65))
  {
    sub_24E601704(v34, &qword_27F232630, &qword_24F9AA160);
    v35 = v67;
    v36 = *(v67 + 48);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    v38 = *(*(v37 - 8) + 56);
    v39 = v66;
    v38(v66, 1, 1, v37);
    v38(v39 + v36, 1, 1, v37);
  }

  else
  {
    v35 = v67;
    v40 = *(v67 + 48);
    v41 = v58;
    sub_24E60169C(v34, v58, &qword_27F232628, &qword_24F9AA158);
    sub_24E601704(v34, &qword_27F232630, &qword_24F9AA160);
    v42 = v59;
    sub_24EE8E4B8(v59, v59 + v40, v57);
    sub_24E601704(v41, &qword_27F232628, &qword_24F9AA158);
    v43 = v42;
    v39 = v66;
    sub_24E6009C8(v43, v66, &unk_27F23A680, &unk_24F981ED0);
  }

  v44 = v69;
  v45 = *(v35 + 48);
  sub_24E6009C8(v39, v62, &unk_27F23A690, &qword_24F982880);
  return sub_24E6009C8(v39 + v45, v44, &unk_27F23A690, &qword_24F982880);
}

uint64_t sub_24EE8E4B8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v9 = *(v4 + *(v8 + 36));
  if ((a3 & 0x8000000000000000) == 0 && *(v9 + 16) > a3)
  {
    goto LABEL_5;
  }

  v19 = a1;
  v20 = *(v4 + *(v8 + 36));
  v21 = v4;
  v22 = a2;
  if (qword_27F2105A8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = sub_24F92AAE8();
    __swift_project_value_buffer(v18, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    v10 = MEMORY[0x277D837D0];
    v25 = MEMORY[0x277D837D0];
    v23 = 0xD000000000000019;
    v24 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0, &unk_24F945320);
    v11 = (v21 + *(v8 + 52));
    v8 = v11[1];
    v17 = *v11;
    v25 = v10;
    v23 = v17;
    v24 = v8;
    swift_bridgeObjectRetain_n();
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0, &unk_24F945320);
    v25 = v10;
    v23 = 0xD000000000000035;
    v24 = 0x800000024FA606E0;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0, &unk_24F945320);
    v25 = MEMORY[0x277D83B88];
    v23 = a3;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0, &unk_24F945320);
    v25 = v10;
    v23 = 0xD000000000000026;
    v24 = 0x800000024FA60720;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0, &unk_24F945320);
    v25 = v10;
    v23 = v17;
    v24 = v8;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    a2 = v22;
    a1 = v19;
    v9 = v20;
LABEL_5:
    v12 = a3 - 1;
    if (!__OFSUB__(a3, 1))
    {
      break;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  if (v12 < 0 || v12 >= *(v9 + 16))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_24E772724(v9 + 40 * v12 + 32, &v23);
    sub_24EE8B364(&v23, a1);
    sub_24E772780(&v23);
  }

  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_16;
  }

  if (v14 < 0 || v14 >= *(v9 + 16))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    sub_24E772724(v9 + 40 * v14 + 32, &v23);
    sub_24EE8B364(&v23, a2);
    return sub_24E772780(&v23);
  }
}