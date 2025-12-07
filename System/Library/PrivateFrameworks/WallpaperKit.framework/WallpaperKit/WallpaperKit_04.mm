void sub_1E4A96824(uint64_t a1@<X8>)
{
  sub_1E4A968F8(&v8);
  if (v8)
  {
    v2 = [v8[2] backgroundColor];
    v3 = sub_1E4AAA5C0();
    WKPosterCanvasSize();
    WKPosterCanvasSize();
    sub_1E4AAA6F0();
    sub_1E4AAA230();

    v4 = v9;
    v5 = v10;
    v6 = 256;
    v7 = v11;
  }

  else
  {
    v3 = 0;
    v6 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v7 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v7;
}

uint64_t sub_1E4A968F8@<X0>(id **a1@<X8>)
{
  v37 = a1;
  v36 = sub_1E4AAA1C0();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E4AAA320();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WKStripesWallpaperPosterBackground(0);
  v10 = *(v9 + 24);
  v11 = (v1 + *(v9 + 20));
  v12 = v11[7];
  v13 = v11[5];
  v74 = v11[6];
  v75 = v12;
  v14 = v11[7];
  v76 = v11[8];
  v15 = v11[3];
  v16 = v11[1];
  v70 = v11[2];
  v71 = v15;
  v17 = v11[3];
  v18 = v11[5];
  v72 = v11[4];
  v73 = v18;
  v19 = v11[1];
  v68 = *v11;
  v69 = v19;
  v78[6] = v74;
  v78[7] = v14;
  v78[8] = v11[8];
  v78[2] = v70;
  v78[3] = v17;
  v78[4] = v72;
  v78[5] = v13;
  v20 = *(v1 + v10);
  v77 = *(v11 + 144);
  v79 = *(v11 + 144);
  v78[0] = v68;
  v78[1] = v16;
  if (sub_1E4A49C60(v78) == 1)
  {
    nullsub_1();
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v39 = v68;
    v40 = v69;
    nullsub_1();
    v59 = *v21;
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[4];
    v62 = v21[3];
    v63 = v24;
    v60 = v22;
    v61 = v23;
    v25 = v21[5];
    v26 = v21[6];
    v27 = v21[8];
    v66 = v21[7];
    v67 = v27;
    v64 = v25;
    v65 = v26;
    v58 = v77;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v52 = v71;
    v53 = v72;
    v50 = v69;
    v51 = v70;
    v49 = v68;
    nullsub_1();
    sub_1E4A49D24(v28, &v38);
  }

  else
  {
    nullsub_1();
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v39 = v68;
    v40 = v69;
    nullsub_1();
    v34 = *v29;
    v49 = v68;
    v50 = v69;
    v53 = v72;
    v54 = v73;
    v51 = v70;
    v52 = v71;
    v58 = v77;
    v56 = v75;
    v57 = v76;
    v55 = v74;
    nullsub_1();

    sub_1E4AAAA10();
    v30 = sub_1E4AAA4E0();
    v35 = v4;
    v31 = v20;
    v32 = v30;
    sub_1E4AAA0B0();

    v20 = v31;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v68);
    v4 = v35;
    (*(v6 + 8))(v8, v5);
  }

  v55 = v65;
  v56 = v66;
  v57 = v67;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  sub_1E4A96CDC(v4);
  sub_1E4A95D1C(&v49, v4, v20, v37);
  sub_1E4A49CD0(&v49);
  return (*(v2 + 8))(v4, v36);
}

uint64_t sub_1E4A96CDC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1E4A96EC4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4AAA1C0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1E4AAAA10();
    v13 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E4A96EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A96F34()
{
  result = qword_1EE0423D8;
  if (!qword_1EE0423D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAA8, &qword_1E4AB3978);
    sub_1E4A96FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423D8);
  }

  return result;
}

unint64_t sub_1E4A96FB8()
{
  result = qword_1EE0423E0;
  if (!qword_1EE0423E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAB0, &qword_1E4AB3980);
    sub_1E4A97044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423E0);
  }

  return result;
}

unint64_t sub_1E4A97044()
{
  result = qword_1EE042470;
  if (!qword_1EE042470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAB8, qword_1E4AB3988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042470);
  }

  return result;
}

uint64_t type metadata accessor for WKParameterizedCAWallpaperView(uint64_t a1)
{
  result = qword_1ECF8EAC0;
  if (!qword_1ECF8EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A9711C(uint64_t a1)
{
  sub_1E4A48ECC();
  if (v1 <= 0x3F)
  {
    sub_1E4AA9FE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1E4A971A8()
{
  v1 = v0;
  v2 = sub_1E4AAA320();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1E4AA9FE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + 145);
  v11 = type metadata accessor for WKParameterizedCAWallpaperView(0);
  (*(v7 + 16))(v9, v1 + *(v11 + 24), v6);
  v12 = objc_allocWithZone(type metadata accessor for WKParameterizedCAWallpaperRepresentedView());
  v13 = sub_1E4A4A868(v10, v9);
  v14 = v1[7];
  v15 = v1[5];
  v182 = v1[6];
  v183 = v14;
  v16 = v1[7];
  v184 = v1[8];
  v17 = v1[3];
  v18 = v1[1];
  v178 = v1[2];
  v179 = v17;
  v19 = v1[3];
  v20 = v1[5];
  v180 = v1[4];
  v181 = v20;
  v21 = v1[1];
  v176 = *v1;
  v177 = v21;
  v186[6] = v182;
  v186[7] = v16;
  v186[8] = v1[8];
  v186[2] = v178;
  v186[3] = v19;
  v186[4] = v180;
  v186[5] = v15;
  v185 = *(v1 + 144);
  v187 = *(v1 + 144);
  v186[0] = v176;
  v186[1] = v18;
  if (sub_1E4A49C60(v186) == 1)
  {
    nullsub_1();
    v153 = v182;
    v154 = v183;
    v155 = v184;
    v156 = v185;
    v149 = v178;
    v150 = v179;
    v151 = v180;
    v152 = v181;
    v147 = v176;
    v148 = v177;
    nullsub_1();
    v167 = *v22;
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v171 = v22[4];
    v170 = v25;
    v169 = v24;
    v168 = v23;
    v26 = v22[5];
    v27 = v22[6];
    v28 = v22[7];
    v175 = v22[8];
    v174 = v28;
    v173 = v27;
    v172 = v26;
    v166 = v185;
    v165 = v184;
    v164 = v183;
    v163 = v182;
    v162 = v181;
    v161 = v180;
    v160 = v179;
    v159 = v178;
    v158 = v177;
    v157 = v176;
    nullsub_1();
    sub_1E4A49D24(v29, &v120);
  }

  else
  {
    nullsub_1();
    v153 = v182;
    v154 = v183;
    v155 = v184;
    v156 = v185;
    v149 = v178;
    v150 = v179;
    v151 = v180;
    v152 = v181;
    v147 = v176;
    v148 = v177;
    nullsub_1();
    v158 = v177;
    v157 = v176;
    v162 = v181;
    v161 = v180;
    v160 = v179;
    v159 = v178;
    v166 = v185;
    v165 = v184;
    v164 = v183;
    v163 = v182;
    nullsub_1();

    sub_1E4AAAA10();
    v30 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v176);
    (*(v3 + 8))(v5, v2);
  }

  v144 = v173;
  v145 = v174;
  v146 = v175;
  v140 = v169;
  v141 = v170;
  v143 = v172;
  v142 = v171;
  v139[1] = v168;
  v139[0] = v167;
  sub_1E4A49CD0(v139);
  v31 = v1[7];
  v32 = v1[5];
  v153 = v1[6];
  v154 = v31;
  v33 = v1[7];
  v155 = v1[8];
  v34 = v1[3];
  v35 = v1[1];
  v149 = v1[2];
  v150 = v34;
  v36 = v1[3];
  v37 = v1[5];
  v151 = v1[4];
  v152 = v37;
  v38 = v1[1];
  v147 = *v1;
  v148 = v38;
  v163 = v153;
  v164 = v33;
  v165 = v1[8];
  v159 = v149;
  v160 = v36;
  v161 = v151;
  v162 = v32;
  v156 = *(v1 + 144);
  v166 = *(v1 + 144);
  v157 = v147;
  v158 = v35;
  if (sub_1E4A49C60(&v157) == 1)
  {
    nullsub_1();
    v116 = v153;
    v117 = v154;
    v118 = v155;
    v119 = v156;
    v112 = v149;
    v113 = v150;
    v114 = v151;
    v115 = v152;
    v110 = v147;
    v111 = v148;
    nullsub_1();
    v130 = *v39;
    v40 = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    v134 = v39[4];
    v133 = v42;
    v132 = v41;
    v131 = v40;
    v43 = v39[5];
    v44 = v39[6];
    v45 = v39[7];
    v138 = v39[8];
    v137 = v45;
    v136 = v44;
    v135 = v43;
    v129 = v156;
    v128 = v155;
    v126 = v153;
    v127 = v154;
    v124 = v151;
    v125 = v152;
    v122 = v149;
    v123 = v150;
    v120 = v147;
    v121 = v148;
    nullsub_1();
    sub_1E4A49D24(v46, &v82);
  }

  else
  {
    nullsub_1();
    v116 = v153;
    v117 = v154;
    v118 = v155;
    v119 = v156;
    v112 = v149;
    v113 = v150;
    v114 = v151;
    v115 = v152;
    v110 = v147;
    v111 = v148;
    nullsub_1();
    v120 = v147;
    v121 = v148;
    v124 = v151;
    v125 = v152;
    v122 = v149;
    v123 = v150;
    v129 = v156;
    v128 = v155;
    v126 = v153;
    v127 = v154;
    nullsub_1();

    sub_1E4AAAA10();
    v47 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v147);
    (*(v3 + 8))(v5, v2);
  }

  v107 = v136;
  v108 = v137;
  v109 = v138;
  v103 = v132;
  v104 = v133;
  v105 = v134;
  v106 = v135;
  v101 = v130;
  v102 = v131;
  sub_1E4A49CD0(&v101);
  v48 = v1[7];
  v49 = v1[5];
  v116 = v1[6];
  v117 = v48;
  v50 = v1[7];
  v118 = v1[8];
  v51 = v1[3];
  v52 = v1[1];
  v112 = v1[2];
  v113 = v51;
  v53 = v1[3];
  v54 = v1[5];
  v114 = v1[4];
  v115 = v54;
  v55 = v1[1];
  v110 = *v1;
  v111 = v55;
  v126 = v116;
  v127 = v50;
  v128 = v1[8];
  v122 = v112;
  v123 = v53;
  v124 = v114;
  v125 = v49;
  v119 = *(v1 + 144);
  v129 = *(v1 + 144);
  v120 = v110;
  v121 = v52;
  if (sub_1E4A49C60(&v120) == 1)
  {
    nullsub_1();
    v78 = v116;
    v79 = v117;
    v80 = v118;
    v81 = v119;
    v74 = v112;
    v75 = v113;
    v76 = v114;
    v77 = v115;
    v72 = v110;
    v73 = v111;
    nullsub_1();
    v92 = *v56;
    v57 = v56[1];
    v58 = v56[2];
    v59 = v56[4];
    v95 = v56[3];
    v96 = v59;
    v93 = v57;
    v94 = v58;
    v60 = v56[5];
    v61 = v56[6];
    v62 = v56[8];
    v99 = v56[7];
    v100 = v62;
    v97 = v60;
    v98 = v61;
    v91 = v119;
    v89 = v117;
    v90 = v118;
    v87 = v115;
    v88 = v116;
    v85 = v113;
    v86 = v114;
    v83 = v111;
    v84 = v112;
    v82 = v110;
    nullsub_1();
    sub_1E4A49D24(v63, v71);
  }

  else
  {
    nullsub_1();
    v78 = v116;
    v79 = v117;
    v80 = v118;
    v81 = v119;
    v74 = v112;
    v75 = v113;
    v76 = v114;
    v77 = v115;
    v72 = v110;
    v73 = v111;
    nullsub_1();
    v82 = v110;
    v83 = v111;
    v86 = v114;
    v87 = v115;
    v84 = v112;
    v85 = v113;
    v91 = v119;
    v89 = v117;
    v90 = v118;
    v88 = v116;
    nullsub_1();

    sub_1E4AAAA10();
    v64 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v110);
    (*(v3 + 8))(v5, v2);
  }

  v65 = *&v140;
  v66 = *&v102;
  v88 = v98;
  v89 = v99;
  v90 = v100;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v87 = v97;
  v82 = v92;
  v83 = v93;
  sub_1E4A49CD0(&v82);
  v67 = v89;
  v68 = v90;
  v69 = &v13[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
  *v69 = v65;
  v69[1] = v66;
  *(v69 + 2) = v68;
  *(v69 + 1) = v67;
  sub_1E4A49EF4();
  return v13;
}

void sub_1E4A97B94(uint64_t a1)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[7];
  v8 = v1[5];
  v174 = v1[6];
  v175 = v7;
  v9 = v1[7];
  v176 = v1[8];
  v10 = v1[3];
  v11 = v1[1];
  v170 = v1[2];
  v171 = v10;
  v12 = v1[3];
  v13 = v1[5];
  v172 = v1[4];
  v173 = v13;
  v14 = v1[1];
  v168 = *v1;
  v169 = v14;
  v178[6] = v174;
  v178[7] = v9;
  v178[8] = v1[8];
  v178[2] = v170;
  v178[3] = v12;
  v178[4] = v172;
  v178[5] = v8;
  v177 = *(v1 + 144);
  v179 = *(v1 + 144);
  v178[0] = v168;
  v178[1] = v11;
  if (sub_1E4A49C60(v178) == 1)
  {
    nullsub_1();
    v145 = v174;
    v146 = v175;
    v147 = v176;
    v148 = v177;
    v141 = v170;
    v142 = v171;
    v143 = v172;
    v144 = v173;
    v139 = v168;
    v140 = v169;
    nullsub_1();
    v159 = *v15;
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v163 = v15[4];
    v162 = v18;
    v161 = v17;
    v160 = v16;
    v19 = v15[5];
    v20 = v15[6];
    v21 = v15[7];
    v167 = v15[8];
    v166 = v21;
    v165 = v20;
    v164 = v19;
    v158 = v177;
    v157 = v176;
    v156 = v175;
    v155 = v174;
    v154 = v173;
    v153 = v172;
    v152 = v171;
    v151 = v170;
    v150 = v169;
    v149 = v168;
    nullsub_1();
    sub_1E4A49D24(v22, &v112);
  }

  else
  {
    nullsub_1();
    v145 = v174;
    v146 = v175;
    v147 = v176;
    v148 = v177;
    v141 = v170;
    v142 = v171;
    v143 = v172;
    v144 = v173;
    v139 = v168;
    v140 = v169;
    nullsub_1();
    v150 = v169;
    v149 = v168;
    v154 = v173;
    v153 = v172;
    v152 = v171;
    v151 = v170;
    v158 = v177;
    v157 = v176;
    v156 = v175;
    v155 = v174;
    nullsub_1();

    sub_1E4AAAA10();
    v23 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v168);
    (*(v4 + 8))(v6, v3);
  }

  v136 = v165;
  v137 = v166;
  v138 = v167;
  v132 = v161;
  v133 = v162;
  v135 = v164;
  v134 = v163;
  v131[1] = v160;
  v131[0] = v159;
  sub_1E4A49CD0(v131);
  v24 = v1[7];
  v25 = v1[5];
  v145 = v1[6];
  v146 = v24;
  v26 = v1[7];
  v147 = v1[8];
  v27 = v1[3];
  v28 = v1[1];
  v141 = v1[2];
  v142 = v27;
  v29 = v1[3];
  v30 = v1[5];
  v143 = v1[4];
  v144 = v30;
  v31 = v1[1];
  v139 = *v1;
  v140 = v31;
  v155 = v145;
  v156 = v26;
  v157 = v1[8];
  v151 = v141;
  v152 = v29;
  v153 = v143;
  v154 = v25;
  v148 = *(v1 + 144);
  v158 = *(v1 + 144);
  v149 = v139;
  v150 = v28;
  if (sub_1E4A49C60(&v149) == 1)
  {
    nullsub_1();
    v108 = v145;
    v109 = v146;
    v110 = v147;
    v111 = v148;
    v104 = v141;
    v105 = v142;
    v106 = v143;
    v107 = v144;
    v102 = v139;
    v103 = v140;
    nullsub_1();
    v122 = *v32;
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[3];
    v126 = v32[4];
    v125 = v35;
    v124 = v34;
    v123 = v33;
    v36 = v32[5];
    v37 = v32[6];
    v38 = v32[7];
    v130 = v32[8];
    v129 = v38;
    v128 = v37;
    v127 = v36;
    v121 = v148;
    v120 = v147;
    v118 = v145;
    v119 = v146;
    v116 = v143;
    v117 = v144;
    v114 = v141;
    v115 = v142;
    v112 = v139;
    v113 = v140;
    nullsub_1();
    sub_1E4A49D24(v39, &v74);
  }

  else
  {
    nullsub_1();
    v108 = v145;
    v109 = v146;
    v110 = v147;
    v111 = v148;
    v104 = v141;
    v105 = v142;
    v106 = v143;
    v107 = v144;
    v102 = v139;
    v103 = v140;
    nullsub_1();
    v112 = v139;
    v113 = v140;
    v116 = v143;
    v117 = v144;
    v114 = v141;
    v115 = v142;
    v121 = v148;
    v120 = v147;
    v118 = v145;
    v119 = v146;
    nullsub_1();

    sub_1E4AAAA10();
    v40 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v139);
    (*(v4 + 8))(v6, v3);
  }

  v99 = v128;
  v100 = v129;
  v101 = v130;
  v95 = v124;
  v96 = v125;
  v97 = v126;
  v98 = v127;
  v93 = v122;
  v94 = v123;
  sub_1E4A49CD0(&v93);
  v41 = v1[7];
  v42 = v1[5];
  v108 = v1[6];
  v109 = v41;
  v43 = v1[7];
  v110 = v1[8];
  v44 = v1[3];
  v45 = v1[1];
  v104 = v1[2];
  v105 = v44;
  v46 = v1[3];
  v47 = v1[5];
  v106 = v1[4];
  v107 = v47;
  v48 = v1[1];
  v102 = *v1;
  v103 = v48;
  v118 = v108;
  v119 = v43;
  v120 = v1[8];
  v114 = v104;
  v115 = v46;
  v116 = v106;
  v117 = v42;
  v111 = *(v1 + 144);
  v121 = *(v1 + 144);
  v112 = v102;
  v113 = v45;
  if (sub_1E4A49C60(&v112) == 1)
  {
    nullsub_1();
    v70 = v108;
    v71 = v109;
    v72 = v110;
    v73 = v111;
    v66 = v104;
    v67 = v105;
    v68 = v106;
    v69 = v107;
    v64 = v102;
    v65 = v103;
    nullsub_1();
    v84 = *v49;
    v50 = v49[1];
    v51 = v49[2];
    v52 = v49[4];
    v87 = v49[3];
    v88 = v52;
    v85 = v50;
    v86 = v51;
    v53 = v49[5];
    v54 = v49[6];
    v55 = v49[8];
    v91 = v49[7];
    v92 = v55;
    v89 = v53;
    v90 = v54;
    v83 = v111;
    v81 = v109;
    v82 = v110;
    v79 = v107;
    v80 = v108;
    v77 = v105;
    v78 = v106;
    v75 = v103;
    v76 = v104;
    v74 = v102;
    nullsub_1();
    sub_1E4A49D24(v56, v63);
  }

  else
  {
    nullsub_1();
    v70 = v108;
    v71 = v109;
    v72 = v110;
    v73 = v111;
    v66 = v104;
    v67 = v105;
    v68 = v106;
    v69 = v107;
    v64 = v102;
    v65 = v103;
    nullsub_1();
    v74 = v102;
    v75 = v103;
    v78 = v106;
    v79 = v107;
    v76 = v104;
    v77 = v105;
    v83 = v111;
    v81 = v109;
    v82 = v110;
    v80 = v108;
    nullsub_1();

    sub_1E4AAAA10();
    v57 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v102);
    (*(v4 + 8))(v6, v3);
  }

  v58 = *&v132;
  v59 = *&v94;
  v80 = v90;
  v81 = v91;
  v82 = v92;
  v76 = v86;
  v77 = v87;
  v78 = v88;
  v79 = v89;
  v74 = v84;
  v75 = v85;
  sub_1E4A49CD0(&v74);
  v60 = v81;
  v61 = v82;
  v62 = a1 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state;
  *v62 = v58;
  *(v62 + 4) = v59;
  *(v62 + 32) = v61;
  *(v62 + 16) = v60;
  sub_1E4A49EF4();
}

uint64_t sub_1E4A984C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A98640(&qword_1ECF8EAD0, &unk_1E4AB3A10);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E4A98548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A98640(&qword_1ECF8EAD0, &unk_1E4AB3A10);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E4A985C8(uint64_t a1)
{
  sub_1E4A98640(&qword_1ECF8EAD0, &unk_1E4AB3A10);
  sub_1E4AAA400();
  __break(1u);
}

uint64_t sub_1E4A98640(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WKParameterizedCAWallpaperView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WKParameterizedCAWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKParameterizedCAWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 6;
  return result;
}

uint64_t WKParameterizedCAWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKParameterizedCAWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKParameterizedCAWallpaper.init(identifier:name:fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  sub_1E4A48054(a4, &v17 - v9);
  v11 = sub_1E4AAA870();

  v12 = sub_1E4AA9FE0();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1E4AA9FA0();
    (*(v13 + 8))(v10, v12);
  }

  v15 = [objc_allocWithZone(WKParameterizedCAWallpaper) initWithIdentifier:a1 name:v11 fileURL:v14];

  sub_1E4A480C4(a4);
  type metadata accessor for WKParameterizedCAWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v15;
  *a5 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKParameterizedCAWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKParameterizedCAWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t sub_1E4A98B74@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKParameterizedCAWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 6;
  return result;
}

uint64_t WKParameterizedCAWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKParameterizedCAWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A98CDC(uint64_t a1)
{
  result = sub_1E4A98D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A98D04()
{
  result = qword_1ECF8EAD8;
  if (!qword_1ECF8EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EAD8);
  }

  return result;
}

uint64_t WKParameterizedCAWallpaperInput.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) fileURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t WKParameterizedCAWallpaperInput.init(fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1E4A48054(a1, &v12 - v5);
  v7 = sub_1E4AA9FE0();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_1E4AA9FA0();
    (*(v8 + 8))(v6, v7);
  }

  v10 = [objc_allocWithZone(WKParameterizedCAWallpaperInput) initWithFileURL_];

  sub_1E4A480C4(a1);
  type metadata accessor for WKParameterizedCAWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v10;
  *a2 = result;
  return result;
}

uint64_t WKParameterizedCAWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKParameterizedCAWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKParameterizedCAWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A990D0()
{
  result = qword_1ECF8EAE0;
  if (!qword_1ECF8EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EAE0);
  }

  return result;
}

uint64_t sub_1E4A99134@<X0>(void *a1@<X8>)
{
  v93 = a1;
  v91 = type metadata accessor for WKStripesWallpaperPosterOverlay(0);
  MEMORY[0x1EEE9AC00](v91);
  v87 = (&v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EAF0, &qword_1E4AB3E18);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v80 - v3;
  v89 = type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer(0);
  MEMORY[0x1EEE9AC00](v89);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EAF8, &qword_1E4AB3E20);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB00, &qword_1E4AB3E28);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB08, &qword_1E4AB3E30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v80 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB10, &qword_1E4AB3E38);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  v17 = *v1;
  if (sub_1E4A5A570(v17))
  {
    *&v94 = swift_getKeyPath();
    sub_1E4A4E620(&v94);
    v129[6] = v100;
    v129[7] = v101;
    v129[8] = v102;
    LOBYTE(v129[9]) = v103;
    v18 = v96;
    v129[2] = v96;
    v129[3] = v97;
    v129[4] = v98;
    v129[5] = v99;
    v129[0] = v94;
    v129[1] = v95;
    *(&v129[9] + 1) = v17;
    v19 = v101;
    v13[6] = v100;
    v13[7] = v19;
    v20 = v129[3];
    v21 = v129[4];
    v22 = v129[5];
    v13[2] = v18;
    v13[3] = v20;
    v13[4] = v21;
    v13[5] = v22;
    v23 = v129[1];
    *v13 = v129[0];
    v13[1] = v23;
    v24 = v129[9];
    v13[8] = v129[8];
    v13[9] = v24;
    swift_storeEnumTagMultiPayload();

    sub_1E4A9A674(v129, &v106);
    sub_1E4A9A294();
    sub_1E4A9A2E8();
    sub_1E4AAA430();
    v25 = v93;
    sub_1E4A52D40(v16, v10, &qword_1ECF8EB10, &qword_1E4AB3E38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    sub_1E4AAA430();
    sub_1E4A9A6D0(v129);
    sub_1E4A4DC88(v16, &qword_1ECF8EB10, &qword_1E4AB3E38);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  v81 = v5;
  v82 = v16;
  v28 = v93;
  v83 = v6;
  v84 = v14;
  v85 = v10;
  v86 = v8;
  if (sub_1E4A5A670(v17))
  {
    v29 = v17;
    v30 = [*(v17 + 16) logicalScreenClass];
    v31 = sub_1E4AAA8A0();
    v33 = v32;
    if (v31 == sub_1E4AAA8A0() && v33 == v34)
    {

      v35 = v81;
    }

    else
    {
      v45 = sub_1E4AAADA0();

      v35 = v81;
      if ((v45 & 1) == 0)
      {
        v67 = v91;
        v68 = v87;
        v69 = v87 + *(v91 + 24);
        *(v69 + 3) = &type metadata for WKWallpaperBundle;
        *(v69 + 4) = sub_1E4A50754();
        *v69 = v29;
        *v68 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
        swift_storeEnumTagMultiPayload();
        v70 = v68 + *(v67 + 20);
        *&v129[0] = swift_getKeyPath();
        sub_1E4A4E620(v129);
        v71 = v129[7];
        *(v70 + 6) = v129[6];
        *(v70 + 7) = v71;
        *(v70 + 8) = v129[8];
        v70[144] = v129[9];
        v72 = v129[3];
        *(v70 + 2) = v129[2];
        *(v70 + 3) = v72;
        v73 = v129[5];
        *(v70 + 4) = v129[4];
        *(v70 + 5) = v73;
        v74 = v129[1];
        *v70 = v129[0];
        *(v70 + 1) = v74;
        v54 = type metadata accessor for WKStripesWallpaperPosterOverlay;
        sub_1E4A9A5AC(v68, v90, type metadata accessor for WKStripesWallpaperPosterOverlay);
        swift_storeEnumTagMultiPayload();
        sub_1E4A9A3D4(qword_1EE043698, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer, &unk_1E4AAEF88);
        sub_1E4A9A3D4(&unk_1EE043110, type metadata accessor for WKStripesWallpaperPosterOverlay, &unk_1E4AAED80);

        v55 = v92;
        sub_1E4AAA430();
        v56 = v68;
        goto LABEL_15;
      }
    }

    *v35 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
    swift_storeEnumTagMultiPayload();
    v46 = v89;
    v47 = v35 + *(v89 + 20);
    *&v129[0] = swift_getKeyPath();
    sub_1E4A4E620(v129);
    v48 = v129[7];
    *(v47 + 6) = v129[6];
    *(v47 + 7) = v48;
    *(v47 + 8) = v129[8];
    v47[144] = v129[9];
    v49 = v129[3];
    *(v47 + 2) = v129[2];
    *(v47 + 3) = v49;
    v50 = v129[5];
    *(v47 + 4) = v129[4];
    *(v47 + 5) = v50;
    v51 = v129[1];
    *v47 = v129[0];
    *(v47 + 1) = v51;
    v52 = v35 + *(v46 + 24);
    type metadata accessor for WKWallpaperPosterLayerViewModel(0);
    sub_1E4A9A3D4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

    *v52 = sub_1E4AAA1E0();
    v52[8] = v53 & 1;
    *(v35 + *(v46 + 28)) = v29;
    v54 = type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer;
    sub_1E4A9A5AC(v35, v90, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer);
    swift_storeEnumTagMultiPayload();
    sub_1E4A9A3D4(qword_1EE043698, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer, &unk_1E4AAEF88);
    sub_1E4A9A3D4(&unk_1EE043110, type metadata accessor for WKStripesWallpaperPosterOverlay, &unk_1E4AAED80);
    v55 = v92;
    sub_1E4AAA430();
    v56 = v35;
LABEL_15:
    sub_1E4A9A614(v56, v54);
    v75 = v82;
    sub_1E4A52D40(v55, v13, &qword_1ECF8EAF8, &qword_1E4AB3E20);
    swift_storeEnumTagMultiPayload();
    sub_1E4A9A294();
    sub_1E4A9A2E8();
    sub_1E4AAA430();
    sub_1E4A52D40(v75, v85, &qword_1ECF8EB10, &qword_1E4AB3E38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    v76 = v93;
    sub_1E4AAA430();
    sub_1E4A4DC88(v75, &qword_1ECF8EB10, &qword_1E4AB3E38);
    sub_1E4A4DC88(v55, &qword_1ECF8EAF8, &qword_1E4AB3E20);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    return (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  }

  if (sub_1E4A5A870(v17))
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel(0);
    v36 = v17;
    sub_1E4A9A3D4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

    v37 = sub_1E4AAA1E0();
    LOBYTE(v106) = v38 & 1;
    *&v118 = swift_getKeyPath();
    sub_1E4A4E620(&v118);
    *(&v129[3] + 7) = v121;
    *(&v129[2] + 7) = v120;
    *(&v129[7] + 7) = v125;
    *(&v129[6] + 7) = v124;
    *(&v129[8] + 7) = v126;
    BYTE7(v129[9]) = v127;
    *(&v129[4] + 7) = v122;
    *(&v129[5] + 7) = v123;
    *(v129 + 7) = v118;
    *(&v129[1] + 7) = v119;
    *&v128[0] = v37;
    BYTE8(v128[0]) = v106;
    *(&v128[3] + 9) = v129[3];
    *(&v128[2] + 9) = v129[2];
    *(&v128[6] + 9) = v129[6];
    *(&v128[7] + 9) = v129[7];
    *(&v128[8] + 9) = v129[8];
    *(&v128[9] + 9) = *&v129[9];
    *(&v128[4] + 9) = v129[4];
    *(&v128[5] + 9) = v129[5];
    *(v128 + 9) = v129[0];
    *(&v128[1] + 9) = v129[1];
    *(&v128[10] + 1) = v36;
    v129[8] = v128[8];
    v129[9] = v128[9];
    v129[4] = v128[4];
    v129[5] = v128[5];
    v129[6] = v128[6];
    v129[7] = v128[7];
    v129[0] = v128[0];
    v129[1] = v128[1];
    v129[2] = v128[2];
    v129[3] = v128[3];
    v130 = v128[10];
    sub_1E4A5B0A8(v129);
    v102 = v129[8];
    v103 = v129[9];
    v104 = v130;
    v105 = v131;
    v98 = v129[4];
    v99 = v129[5];
    v100 = v129[6];
    v101 = v129[7];
    v94 = v129[0];
    v95 = v129[1];
    v96 = v129[2];
    v97 = v129[3];
    sub_1E4A9A4FC(v128, &v106);
    sub_1E4A9A160();
    sub_1E4A9A1B4();
    sub_1E4AAA430();
    v39 = v115;
    v40 = v85;
    *(v85 + 8) = v114;
    *(v40 + 144) = v39;
    *(v40 + 160) = v116;
    *(v40 + 176) = v117;
    v41 = v111;
    *(v40 + 64) = v110;
    *(v40 + 80) = v41;
    v42 = v113;
    *(v40 + 96) = v112;
    *(v40 + 112) = v42;
    v43 = v107;
    *v40 = v106;
    *(v40 + 16) = v43;
    v44 = v109;
    *(v40 + 32) = v108;
    *(v40 + 48) = v44;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    sub_1E4AAA430();
    sub_1E4A9A558(v128);
LABEL_13:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    return (*(*(v66 - 8) + 56))(v28, 0, 1, v66);
  }

  if (sub_1E4A5A970(v17))
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel(0);
    v57 = v17;
    sub_1E4A9A3D4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

    v58 = sub_1E4AAA1E0();
    LOBYTE(v106) = v59 & 1;
    *&v118 = swift_getKeyPath();
    sub_1E4A4E620(&v118);
    *(&v129[3] + 7) = v121;
    *(&v129[2] + 7) = v120;
    *(&v129[7] + 7) = v125;
    *(&v129[6] + 7) = v124;
    *(&v129[8] + 7) = v126;
    BYTE7(v129[9]) = v127;
    *(&v129[4] + 7) = v122;
    *(&v129[5] + 7) = v123;
    *(v129 + 7) = v118;
    *(&v129[1] + 7) = v119;
    *&v128[0] = v58;
    BYTE8(v128[0]) = v106;
    *(&v128[3] + 9) = v129[3];
    *(&v128[2] + 9) = v129[2];
    *(&v128[6] + 9) = v129[6];
    *(&v128[7] + 9) = v129[7];
    *(&v128[8] + 9) = v129[8];
    *(&v128[9] + 9) = *&v129[9];
    *(&v128[4] + 9) = v129[4];
    *(&v128[5] + 9) = v129[5];
    *(v128 + 9) = v129[0];
    *(&v128[1] + 9) = v129[1];
    *(&v128[10] + 1) = v57;
    v129[8] = v128[8];
    v129[9] = v128[9];
    v129[4] = v128[4];
    v129[5] = v128[5];
    v129[6] = v128[6];
    v129[7] = v128[7];
    v129[0] = v128[0];
    v129[1] = v128[1];
    v129[2] = v128[2];
    v129[3] = v128[3];
    v130 = v128[10];
    sub_1E4A5AFEC(v129);
    v102 = v129[8];
    v103 = v129[9];
    v104 = v130;
    v105 = v131;
    v98 = v129[4];
    v99 = v129[5];
    v100 = v129[6];
    v101 = v129[7];
    v94 = v129[0];
    v95 = v129[1];
    v96 = v129[2];
    v97 = v129[3];
    sub_1E4A9A104(v128, &v106);
    sub_1E4A9A160();
    sub_1E4A9A1B4();
    sub_1E4AAA430();
    v60 = v115;
    v61 = v85;
    *(v85 + 8) = v114;
    *(v61 + 144) = v60;
    *(v61 + 160) = v116;
    *(v61 + 176) = v117;
    v62 = v111;
    *(v61 + 64) = v110;
    *(v61 + 80) = v62;
    v63 = v113;
    *(v61 + 96) = v112;
    *(v61 + 112) = v63;
    v64 = v107;
    *v61 = v106;
    *(v61 + 16) = v64;
    v65 = v109;
    *(v61 + 32) = v108;
    *(v61 + 48) = v65;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    sub_1E4AAA430();
    sub_1E4A9A4A8(v128);
    goto LABEL_13;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
  v79 = *(*(v78 - 8) + 56);

  return v79(v28, 1, 1, v78);
}

uint64_t sub_1E4A9A060@<X0>(void *a1@<X8>)
{
  sub_1E4A99134(a1);
  v2 = sub_1E4AAA290();
  v3 = sub_1E4AAA4F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EAE8, &qword_1E4AB3E10);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  v5[8] = v3;
  return result;
}

unint64_t sub_1E4A9A160()
{
  result = qword_1EE0434A0;
  if (!qword_1EE0434A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0434A0);
  }

  return result;
}

unint64_t sub_1E4A9A1B4()
{
  result = qword_1EE0424F0;
  if (!qword_1EE0424F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0424F0);
  }

  return result;
}

unint64_t sub_1E4A9A208()
{
  result = qword_1EE042348;
  if (!qword_1EE042348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB10, &qword_1E4AB3E38);
    sub_1E4A9A294();
    sub_1E4A9A2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042348);
  }

  return result;
}

unint64_t sub_1E4A9A294()
{
  result = qword_1EE0438A8;
  if (!qword_1EE0438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438A8);
  }

  return result;
}

unint64_t sub_1E4A9A2E8()
{
  result = qword_1EE042330;
  if (!qword_1EE042330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAF8, &qword_1E4AB3E20);
    sub_1E4A9A3D4(qword_1EE043698, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer, &unk_1E4AAEF88);
    sub_1E4A9A3D4(&unk_1EE043110, type metadata accessor for WKStripesWallpaperPosterOverlay, &unk_1E4AAED80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042330);
  }

  return result;
}

uint64_t sub_1E4A9A3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4A9A41C()
{
  result = qword_1EE042328;
  if (!qword_1EE042328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A160();
    sub_1E4A9A1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042328);
  }

  return result;
}

uint64_t sub_1E4A9A5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A9A614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4A9A724()
{
  result = qword_1EE0423F8;
  if (!qword_1EE0423F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAE8, &qword_1E4AB3E10);
    sub_1E4A9A7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423F8);
  }

  return result;
}

unint64_t sub_1E4A9A7B0()
{
  result = qword_1EE0422D8;
  if (!qword_1EE0422D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB28, &unk_1E4AB3EB0);
    sub_1E4A9A834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422D8);
  }

  return result;
}

unint64_t sub_1E4A9A834()
{
  result = qword_1EE0422E0;
  if (!qword_1EE0422E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422E0);
  }

  return result;
}

Swift::Bool __swiftcall WKWallpaperRepresentingCollection.contains(_:)(Swift::String a1)
{
  v2 = *(*v1 + 16);
  v3 = sub_1E4AAA870();
  v4 = [v2 containsWallpaperRepresentingWithIdentifier_];

  return v4;
}

uint64_t WKWallpaperRepresentingCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v4 = sub_1E4AAA870();
  v5 = [v3 wallpaperRepresentingWithIdentifier_];

  if (v5 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      sub_1E4A2732C(&v9, v12);
      v6 = v13;
      v7 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v7 + 8))(v6, v7);
      return __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_1E4A4DC88(&v9, &unk_1ECF8EB30, &unk_1E4AB0E40);
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

id sub_1E4A9AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v8 = a3 - a1;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_12:
  v10 = __OFADD__(a1, a2);
  v9 = a1 + a2;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if ((v9 & 0x8000000000000000) == 0 && result >= v9)
  {
    return v9;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_1E4A9ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  result = [v7 numberOfWallpapers];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [v7 numberOfWallpapers];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [v7 numberOfWallpapers];
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t WKWallpaperRepresentingCollection.init(wallpaperCollectionIdentifier:displayName:previewWallpaperRepresenting:wallpapersShareBaseAppearance:hiddenFromPicker:depthEffectDisabled:motionEffectsDisabled:disableRotation:wallpaperRepresentingCollection:downloadManager:)@<X0>(void *a1@<X0>, void *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v12 = a4;
  sub_1E4A4D9A0(a4, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v37 = v12;
  sub_1E4A2732C(&v42, v46);
  v41 = MEMORY[0x1E69E7CC0];
  v13 = *(a11 + 16);
  if (v13)
  {
    v12 = 0;
    v14 = a11 + 32;
    do
    {
      if (v12 >= *(a11 + 16))
      {
        __break(1u);
LABEL_14:
        v39 = 0;
        memset(v38, 0, sizeof(v38));
        sub_1E4A4DC88(v38, &unk_1ECF8E550, &qword_1E4AB3ED0);
        *&v42 = 0;
        *(&v42 + 1) = 0xE000000000000000;
        sub_1E4AAABC0();
        MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
        MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
        MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
        __swift_project_boxed_opaque_existential_1(v45, v45[3]);
        swift_getDynamicType();
        v28 = sub_1E4AAAE90();
        MEMORY[0x1E691ECA0](v28);

        MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
        while (1)
        {
          sub_1E4AAACB0();
          __break(1u);
LABEL_16:
          v44 = 0;
          v42 = 0u;
          v43 = 0u;
          sub_1E4A4DC88(&v42, &unk_1ECF8E550, &qword_1E4AB3ED0);
          v46[0] = 0;
          v46[1] = 0xE000000000000000;
          sub_1E4AAABC0();
          MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
          MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
          MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
          __swift_project_boxed_opaque_existential_1(v12, v12[3]);
          swift_getDynamicType();
          v29 = sub_1E4AAAE90();
          MEMORY[0x1E691ECA0](v29);

          MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
        }
      }

      sub_1E4A4D9A0(v14, v45);
      sub_1E4A4D9A0(v45, v40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_1E4A2732C(v38, &v42);
      v15 = *(&v43 + 1);
      v16 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v17 = __swift_destroy_boxed_opaque_existential_1Tm(&v42);
      MEMORY[0x1E691ED00](v17);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E4AAA960();
      }

      v12 = (v12 + 1);
      sub_1E4AAA970();
      v14 += 40;
    }

    while (v13 != v12);
  }

  v18 = v47;
  v19 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v20 = (*(v19 + 8))(v18, v19);
  if (a12)
  {
    v21 = *(*(a12 + 16) + 16);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_allocWithZone(WKWallpaperRepresentingCollection);
  v23 = sub_1E4AAA870();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  v24 = sub_1E4AAA940();

  BYTE1(v30) = a10 & 1;
  LOBYTE(v30) = a8 & 1;
  v25 = [v22 initWithWallpaperCollectionIdentifier:a1 displayName:v23 previewWallpaperRepresenting:v20 wallpapersShareBaseAppearance:a5 & 1 hiddenFromPicker:a6 & 1 depthEffectDisabled:a7 & 1 motionEffectsDisabled:v30 disableRotation:v24 wallpaperRepresentingCollection:v21 downloadManager:?];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v46);
  *a9 = v26;
  return result;
}

uint64_t WKWallpaperRepresentingCollection.previewWallpaperRepresenting.getter()
{
  v6 = [*(*v0 + 16) previewWallpaperRepresenting];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  if (swift_dynamicCast())
  {
    sub_1E4A2732C(v4, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v2 + 8))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_1E4A4DC88(v4, &unk_1ECF8EB30, &unk_1E4AB0E40);
    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

uint64_t WKWallpaperRepresentingCollection.init(url:downloadManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E4AA9FE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  if (a2)
  {
    v10 = *(*(a2 + 16) + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_allocWithZone(WKWallpaperRepresentingCollection);
  v12 = sub_1E4AA9FA0();
  v13 = [v11 initWithURL:v12 downloadManager:v10];

  v14 = *(v7 + 8);
  v14(a1, v6);
  v14(v9, v6);
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v13;
  *a3 = result;
  return result;
}

uint64_t WKWallpaperRepresentingCollection.downloadWallpaperRepresenting(with:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a3;
  v5[28] = a4;
  v5[25] = a1;
  v5[26] = a2;
  v5[29] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4A9B5EC, 0, 0);
}

uint64_t sub_1E4A9B5EC()
{
  v1 = v0[28];
  v2 = *(v0[29] + 16);
  v0[30] = v2;
  v3 = v2;
  v4 = sub_1E4AAA870();
  v0[31] = v4;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_1E4A9B748;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E560, &qword_1E4AB3EE0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E4A5E084;
  v0[13] = &block_descriptor_3;
  v0[14] = v5;
  [v3 downloadWallpaperRepresentingWithIdentifier:v4 progress:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E4A9B748()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1E4A9BA08;
  }

  else
  {
    v2 = sub_1E4A9B858;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4A9B858()
{
  *(v0 + 192) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  v1 = swift_dynamicCast();
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  if (v1)
  {
    sub_1E4A2732C((v0 + 80), v0 + 144);

    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v4);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 112) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1E4A4DC88(v0 + 80, &unk_1ECF8EB30, &unk_1E4AB0E40);

    return sub_1E4AAACB0();
  }
}

uint64_t sub_1E4A9BA08(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[30];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t WKWallpaperRepresentingCollection.cancelDownload(for:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  v3[20] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1E4A9BAD4, 0, 0);
}

uint64_t sub_1E4A9BAD4()
{
  v1 = *(v0[20] + 16);
  v0[21] = v1;
  v2 = v1;
  v3 = sub_1E4AAA870();
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_1E4A9BC1C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E580, &qword_1E4AB0E50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E4A5E820;
  v0[13] = &block_descriptor_4_0;
  v0[14] = v4;
  [v2 cancelDownloadForWallpaperRepresentingWithIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E4A9BC1C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1E4A9BD94;
  }

  else
  {
    v2 = sub_1E4A9BD2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4A9BD2C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E4A9BD94(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t WKWallpaperRepresentingCollection.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperRepresentingCollection.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

void _s12WallpaperKit33WKWallpaperRepresentingCollectionV10identifier10Foundation4UUIDVvg_0()
{
  v1 = [*(*v0 + 16) identifier];
  sub_1E4AAA010();
}

uint64_t WKWallpaperRepresentingCollection.subscript.getter(uint64_t a1)
{
  v7 = [*(*v1 + 16) wallpaperBundleAtIndex_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  if (swift_dynamicCast())
  {
    sub_1E4A2732C(v5, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v3 + 8))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1E4A4DC88(v5, &unk_1ECF8EB30, &unk_1E4AB0E40);
    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_1E4A9C0D0()
{
  result = qword_1ECF8EB50;
  if (!qword_1ECF8EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB50);
  }

  return result;
}

unint64_t sub_1E4A9C128()
{
  result = qword_1EE043968;
  if (!qword_1EE043968)
  {
    sub_1E4AAA030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043968);
  }

  return result;
}

unint64_t sub_1E4A9C184()
{
  result = qword_1ECF8EB60;
  if (!qword_1ECF8EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB60);
  }

  return result;
}

unint64_t sub_1E4A9C220()
{
  result = qword_1ECF8EB90;
  if (!qword_1ECF8EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB90);
  }

  return result;
}

unint64_t sub_1E4A9C278()
{
  result = qword_1ECF8EB98;
  if (!qword_1ECF8EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB98);
  }

  return result;
}

uint64_t sub_1E4A9C314(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB88, &qword_1E4AB3FC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1E4A9C38C@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*(*v2 + 16) numberOfWallpapers];
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1E4A9C3EC(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [*(*v1 + 16) numberOfWallpapers];
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4A9C450()
{
  result = qword_1ECF8EBB0;
  if (!qword_1ECF8EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EBB0);
  }

  return result;
}

id sub_1E4A9C4E8@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 16) numberOfWallpapers];
  *a1 = result;
  return result;
}

uint64_t (*sub_1E4A9C520(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  WKWallpaperRepresentingCollection.subscript.getter(*a2);
  return sub_1E4A9C59C;
}

void sub_1E4A9C59C(void **a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_1Tm(*a1);

  free(v1);
}

uint64_t sub_1E4A9C5D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = [*(v6 + 16) numberOfWallpapers];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a2[1] = v4;
  a2[2] = v6;
  *a2 = v5;
}

unint64_t sub_1E4A9C650@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 16) numberOfWallpapers];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_1E4A9C6C0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*(*v3 + 16) numberOfWallpapers];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_1E4A9C720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1E4A9ABB0(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id sub_1E4A9C75C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(*v2 + 16);
  result = [v5 numberOfWallpapers];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 numberOfWallpapers];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

id sub_1E4A9C7D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = [*(*v2 + 16) numberOfWallpapers];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

id sub_1E4A9C828(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = [*(v3 + 16) numberOfWallpapers];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

int64_t sub_1E4A9C8BC()
{
  v1 = *v0;
  v2 = [*(v1 + 16) numberOfWallpapers];
  v3 = *(v1 + 16);
  result = [v3 numberOfWallpapers];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v3 numberOfWallpapers];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A9C930()
{
  v1 = sub_1E4A9CBB4(*v0);

  return v1;
}

void *sub_1E4A9C9A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA68, &unk_1E4AB3840);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1E4A9CA34(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EBE0, &qword_1E4AB4260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1E4A9CAB8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E650, &qword_1E4AB17A0);
  v4 = *(type metadata accessor for WKAnimationPackageLayerState(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A9CBB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = [v2 numberOfWallpapers];
  result = [v2 numberOfWallpapers];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v2 numberOfWallpapers];
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      if (v3)
      {
        v5 = sub_1E4A9C9A4(v3, 0);

        v6 = sub_1E4A9CC80(&v7, (v5 + 4), v3, a1);

        if (v6 == v3)
        {
          return v5;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A9CC80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v12 = a1;
    v7 = 1;
    while (1)
    {
      if ((v7 - 1) == [*(a4 + 16) numberOfWallpapers])
      {
        v5 = v7 - 1;
LABEL_14:
        a1 = v12;
        goto LABEL_15;
      }

      v15 = [*(a4 + 16) wallpaperBundleAtIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
      if (!swift_dynamicCast())
      {
        goto LABEL_18;
      }

      sub_1E4A2732C(v13, v16);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v9 + 8))(v19, v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      if (v7 - 1 >= [*(a4 + 16) numberOfWallpapers])
      {
        break;
      }

      sub_1E4A2732C(v19, v20);
      a1 = sub_1E4A2732C(v20, v6);
      if (v5 == v7)
      {
        goto LABEL_14;
      }

      v6 += 40;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1E4A4DC88(v13, &unk_1ECF8EB30, &unk_1E4AB0E40);
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

uint64_t sub_1E4A9CE8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for WKAnimationPackageLayerState(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_1E4A68864(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_1E4A68988(v11, v14);
      sub_1E4A68988(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E4A9D0FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WKAnimationPackageLayer(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = sub_1E4AA9FE0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v1;
  v44 = *(v1 + 8);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v41 = v3;
  v46 = v6;
  v18 = v5;
  v19 = a1;
  sub_1E4A57768(&v48);
  swift_unknownObjectRelease();
  v20 = *(&v49 + 1);
  v21 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  (*(v21 + 24))(&v58, v20, v21);
  v22 = v58;
  v23 = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  if (v23 != 5)
  {
    sub_1E4A4EF3C(v22, v23);
    a1 = v19;
    v5 = v18;
    v6 = v46;
LABEL_6:
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_7:
    sub_1E4A480C4(v14);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v24 = [v22[2] backgroundAnimationFileURL];
  if (v24)
  {
    v25 = v24;
    sub_1E4AA9FC0();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  a1 = v19;
  v5 = v18;
  (*(v16 + 56))(v12, v26, 1, v15);
  sub_1E4A4EF94(v12, v14);
  sub_1E4A4EF3C(v22, 5u);
  v28 = (*(v16 + 48))(v14, 1, v15);
  v6 = v46;
  v29 = v41;
  if (v28 == 1)
  {
    goto LABEL_7;
  }

  v30 = v47;
  (*(v16 + 32))(v47, v14, v15);
  (*(v16 + 16))(&v8[v5[7]], v30, v15);
  if (v44)
  {
    v31 = v45;
    v58 = v45;
  }

  else
  {

    sub_1E4AAAA10();
    v32 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v33 = v42;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v43 + 8))(v33, v29);
    v31 = v58;
  }

  swift_getKeyPath();
  *&v48 = v31;
  sub_1E4A4F11C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  (*(v16 + 8))(v47, v15);
  v34 = v31[22];

  *&v48 = swift_getKeyPath();
  sub_1E4A4E620(&v48);
  v35 = v55;
  *(v8 + 6) = v54;
  *(v8 + 7) = v35;
  *(v8 + 8) = v56;
  v8[144] = v57;
  v36 = v51;
  *(v8 + 2) = v50;
  *(v8 + 3) = v36;
  v37 = v53;
  *(v8 + 4) = v52;
  *(v8 + 5) = v37;
  v38 = v49;
  *v8 = v48;
  *(v8 + 1) = v38;
  v39 = v5[5];
  *&v8[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v8[v5[6]] = 0;
  *&v8[v5[8]] = v34;
  sub_1E4A4F004(v8, a1);
  return (*(v6 + 56))(a1, 0, 1, v5);
}

uint64_t WKLayeredThumbnailWallpaperInput.init(backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1E4A48054(a1, &v20 - v15);
  sub_1E4A48054(a2, v14);
  sub_1E4A48054(a3, v11);
  v17 = objc_allocWithZone(WKLayeredThumbnailWallpaperInput);
  v18 = sub_1E4A9DA28(v16, v14, v11);
  sub_1E4A480C4(a3);
  sub_1E4A480C4(a2);
  sub_1E4A480C4(a1);
  type metadata accessor for WKLayeredThumbnailWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v18;
  *a4 = result;
  return result;
}

uint64_t WKLayeredThumbnailWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredThumbnailWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredThumbnailWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

id sub_1E4A9DA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E4AA9FE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = 0;
  if (v10(a1, 1, v8) != 1)
  {
    v11 = sub_1E4AA9FA0();
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1E4AA9FA0();
    (*(v9 + 8))(a2, v8);
  }

  if (v10(a3, 1, v8) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1E4AA9FA0();
    (*(v9 + 8))(a3, v8);
  }

  v14 = [v4 initWithBackgroundThumbnailImageURL:v11 foregroundThumbnailImageURL:v12 floatingThumbnailImageURL:v13];

  return v14;
}

unint64_t sub_1E4A9DC04()
{
  result = qword_1ECF8EBE8;
  if (!qword_1ECF8EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EBE8);
  }

  return result;
}

void sub_1E4A9DC68(CGFloat a1, double a2, double a3, double a4)
{
  v7 = a3 >= 0.0;
  if (a3 > 1.0)
  {
    v7 = 0;
  }

  v8 = a4 >= 0.0;
  if (a4 > 1.0)
  {
    v8 = 0;
  }

  v9 = v7 && v8;
  if (!v7 || !v8 || a1 <= 0.0 || a2 <= 0.0 || (v10 = *&a1 & 0x7FF0000000000000, (*&a1 & 0xFFFFFFFFFFFFFLL) == 0) && v10 == 0x7FF0000000000000 || (v10 == 0x7FF0000000000000 ? (v19 = (*&a1 & 0xFFFFFFFFFFFFFLL) == 0) : (v19 = 1), !v19 ? (v20 = 0) : (v20 = 1), (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v20 || ([v4 bounds], sub_1E4A7C788(v23, v24, v25, v26)) || (objc_msgSend(v4, sel_bounds), sub_1E4A7C720(v27, v28, v29, v30)) || (objc_msgSend(v4, sel_bounds), v64.origin.x = 0.0, v64.origin.y = 0.0, v64.size.width = 0.0, v64.size.height = 0.0, CGRectEqualToRect(v61, v64))))
  {
    if (qword_1EE0424D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v11, qword_1EE048BA0);
    v56 = v4;
    v12 = sub_1E4AAA0C0();
    v13 = sub_1E4AAAA00();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      v17 = (*&a1 & 0xFFFFFFFFFFFFFLL) == 0;
      if ((*&a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
      {
        v17 = 0;
      }

      *v14 = 67241474;
      *&v59.a = v15;
      *(v14 + 4) = v9;
      *(v14 + 8) = 1026;
      if (fabs(a2) == INFINITY)
      {
        v17 = 1;
      }

      *(v14 + 10) = v17;
      *(v14 + 14) = 1026;
      if ((*&a1 & 0x7FF0000000000000) == 0x7FF0000000000000 && (*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v18 = 1;
      }

      else
      {
        v18 = (*&a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&a2 & 0x7FF0000000000000) == 0;
      }

      *(v14 + 16) = v18;
      *(v14 + 20) = 1026;
      [v56 bounds];
      v44 = fabs(v43) == INFINITY;
      if (fabs(v45) == INFINITY)
      {
        v44 = 1;
      }

      if (fabs(v41) == INFINITY)
      {
        v44 = 1;
      }

      if (fabs(v42) == INFINITY)
      {
        v44 = 1;
      }

      *(v14 + 22) = v44;
      *(v14 + 26) = 1026;
      [v56 bounds];
      if ((~v46 & 0x7FF0000000000000) != 0 || (v46 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v51 = v56;
        if (((~v47 & 0x7FF0000000000000) != 0 || (v47 & 0xFFFFFFFFFFFFFLL) == 0) && ((~v48 & 0x7FF0000000000000) != 0 || (v48 & 0xFFFFFFFFFFFFFLL) == 0))
        {
          v50 = (~v49 & 0x7FF0000000000000) == 0;
          if ((v49 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v50 = 0;
          }
        }

        else
        {
          v50 = 1;
        }
      }

      else
      {
        v50 = 1;
        v51 = v56;
      }

      *(v14 + 28) = v50;

      *(v14 + 32) = 2082;
      v52 = sub_1E4AAAAB0();
      v54 = sub_1E4A85938(v52, v53, &v59);

      *(v14 + 34) = v54;
      _os_log_impl(&dword_1E4A23000, v12, v13, "Not applying transform (anchorPoint.isUnitPoint: %{BOOL,public}d, scale.hasInfComponents: %{BOOL,public}d, scale.hasNaNComponents: %{BOOL,public}d, bounds.hasInfComponents: %{BOOL,public}d, bounds.hasNaNComponents: %{BOOL,public}d, scale: %{public}s.", v14, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E691FE80](v16, -1, -1);
      v40 = v14;
      goto LABEL_60;
    }
  }

  else
  {
    v31 = [v4 layer];
    [v31 setAnchorPoint_];

    [v4 bounds];
    v32 = 1.0 / a1 * (a3 + -0.5) * CGRectGetWidth(v62);
    [v4 bounds];
    v33 = 1.0 / a2 * (a4 + -0.5) * CGRectGetHeight(v63);
    CGAffineTransformMakeScale(&v59, a1, a2);
    CGAffineTransformTranslate(&v58, &v59, v32, v33);
    v55 = *&v58.a;
    *v57 = *&v58.c;
    v59 = v58;
    tx = v58.tx;
    ty = v58.ty;
    v36 = sub_1E4A7C878();
    if (v36 || sub_1E4A7C7E0())
    {
      if (qword_1EE0424D0 != -1)
      {
        swift_once();
      }

      v37 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v37, qword_1EE048BA0);
      v12 = sub_1E4AAA0C0();
      v38 = sub_1E4AAAA00();
      if (!os_log_type_enabled(v12, v38))
      {
        goto LABEL_61;
      }

      v39 = swift_slowAlloc();
      *v39 = 67240448;
      *(v39 + 4) = v36;
      *(v39 + 8) = 1026;
      *(v39 + 10) = sub_1E4A7C7E0();
      _os_log_impl(&dword_1E4A23000, v12, v38, "Not applying transform (hasInfComponents: %{BOOL,public}d, hasNaNComponents: %{BOOL,public}d).", v39, 0xEu);
      v40 = v39;
LABEL_60:
      MEMORY[0x1E691FE80](v40, -1, -1);
LABEL_61:

      return;
    }

    *&v58.a = v55;
    *&v58.c = *v57;
    v58.tx = tx;
    v58.ty = ty;
    [v4 setTransform_];
  }
}

void *sub_1E4A9E228(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1E4A9E29C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1E4A9E2CC(unsigned __int8 a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);
  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136446210;
    v7 = 0x80000001E4ABA040;
    v8 = 0xD000000000000014;
    if (a1 == 2)
    {
      v8 = 0xD000000000000015;
    }

    else
    {
      v7 = 0x80000001E4ABA020;
    }

    v9 = 0x80000001E4ABA060;
    v10 = 0xD000000000000016;
    if (a1)
    {
      v10 = 0x6552726574736F70;
      v9 = 0xEF676E697265646ELL;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (a1 <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v7;
    }

    v13 = sub_1E4A85938(v11, v12, v21);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_1E4A23000, v3, v4, "Invalidating '%{public}s' render extension.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  else
  {
  }

  v14 = 0x80000001E4ABA040;
  if (a1 == 2)
  {
    v15 = 0xD000000000000015;
  }

  else
  {
    v15 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v14 = 0x80000001E4ABA020;
  }

  v16 = 0x80000001E4ABA060;
  v17 = 0xD000000000000016;
  if (a1)
  {
    v17 = 0x6552726574736F70;
    v16 = 0xEF676E697265646ELL;
  }

  if (a1 <= 1u)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (a1 <= 1u)
  {
    v19 = v16;
  }

  else
  {
    v19 = v14;
  }

  swift_beginAccess();
  v20 = sub_1E4A9EE1C(v18, v19);
  swift_endAccess();

  if (v20)
  {
    [v20 wk_invalidate];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E4A9E588(unsigned __int8 a1, void *a2)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v49 = v2;
  v5 = sub_1E4AAA0E0();
  v44 = __swift_project_value_buffer(v5, qword_1EE048B58);
  v6 = sub_1E4AAA0C0();
  v7 = sub_1E4AAAA20();
  if (os_log_type_enabled(v6, v7))
  {
    v47 = a2;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51[0] = v9;
    *v8 = 136446210;
    v45 = a1;
    v10 = 0x80000001E4ABA040;
    if (a1 == 2)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v11 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v10 = 0x80000001E4ABA020;
    }

    v12 = 0x80000001E4ABA060;
    v13 = 0xD000000000000016;
    if (a1)
    {
      v13 = 0x6552726574736F70;
      v12 = 0xEF676E697265646ELL;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_1E4A85938(v14, v15, v51);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_1E4A23000, v6, v7, "Extending Rendering for reason '%{public}s'.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E691FE80](v9, -1, -1);
    MEMORY[0x1E691FE80](v8, -1, -1);

    a2 = v47;
    a1 = v45;
  }

  else
  {
  }

  v17 = 0x80000001E4ABA040;
  if (a1 == 2)
  {
    v18 = 0xD000000000000015;
  }

  else
  {
    v18 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v17 = 0x80000001E4ABA020;
  }

  v19 = 0x80000001E4ABA060;
  v20 = 0xD000000000000016;
  if (a1)
  {
    v20 = 0x6552726574736F70;
    v19 = 0xEF676E697265646ELL;
  }

  if (a1 <= 1u)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  if (a1 <= 1u)
  {
    v22 = v19;
  }

  else
  {
    v22 = v17;
  }

  swift_beginAccess();
  v23 = sub_1E4A9EE1C(v21, v22);
  swift_endAccess();

  if (v23)
  {
    v24 = sub_1E4AAA0C0();
    v25 = sub_1E4AAAA20();
    if (os_log_type_enabled(v24, v25))
    {
      v48 = a2;
      v26 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51[0] = v44;
      *v26 = 136446210;
      v46 = a1;
      v27 = 0x80000001E4ABA040;
      if (a1 == 2)
      {
        v28 = 0xD000000000000015;
      }

      else
      {
        v28 = 0xD000000000000014;
      }

      if (a1 != 2)
      {
        v27 = 0x80000001E4ABA020;
      }

      v29 = 0x80000001E4ABA060;
      v30 = 0xD000000000000016;
      if (a1)
      {
        v30 = 0x6552726574736F70;
        v29 = 0xEF676E697265646ELL;
      }

      if (a1 <= 1u)
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      if (a1 <= 1u)
      {
        v32 = v29;
      }

      else
      {
        v32 = v27;
      }

      v33 = sub_1E4A85938(v31, v32, v51);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_1E4A23000, v24, v25, "Invalidating existing '%{public}s' render extension.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1E691FE80](v44, -1, -1);
      MEMORY[0x1E691FE80](v26, -1, -1);

      a2 = v48;
      a1 = v46;
    }

    else
    {
    }

    [v23 wk_invalidate];
    swift_unknownObjectRelease();
  }

  v34 = 0x80000001E4ABA040;
  if (a1 == 2)
  {
    v35 = 0xD000000000000015;
  }

  else
  {
    v34 = 0x80000001E4ABA020;
    v35 = 0xD000000000000014;
  }

  v36 = 0x80000001E4ABA060;
  v37 = 0xD000000000000016;
  if (a1)
  {
    v36 = 0xEF676E697265646ELL;
    v37 = 0x6552726574736F70;
  }

  if (a1 <= 1u)
  {
    v38 = v36;
  }

  else
  {
    v38 = v34;
  }

  if (a1 <= 1u)
  {
    v39 = v37;
  }

  else
  {
    v39 = v35;
  }

  v40 = sub_1E4AAA870();

  v41 = [a2 wk:v40 extendRenderSessionForReason:?];

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v49 + 16);
  *(v49 + 16) = 0x8000000000000000;
  sub_1E4A95708(v41, v39, v38, isUniquelyReferenced_nonNull_native);

  *(v49 + 16) = v50;
  return swift_endAccess();
}

double sub_1E4A9EAA0()
{
  v1 = v0;
  if (qword_1EE0424A8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);
  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4A23000, v3, v4, "Invalidating all extensions.", v5, 2u);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      [*(*(v6 + 56) + ((v12 << 9) | (8 * v13))) wk_invalidate];
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  return result;
}

uint64_t sub_1E4A9EC74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E4A9ECD0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1E4A8F2E0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1E4A9EF5C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1E4A679D8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1E4AAAC90();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1E4AAAC80();
  v8 = sub_1E4A950AC(v4, v7);

  v9 = sub_1E4A8F2E0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1E4A9EF5C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1E4A9EE1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E4A55B0C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E4A680B8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1E4A9F0E8(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1E4A9EEB4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4A9308C();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4A6822C();
      v8 = v10;
    }

    sub_1E4A2732C((*(v8 + 56) + 40 * v6), a1);
    sub_1E4A9F298(v6, v8);
    *v2 = v8;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1E4A9EF5C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4AAAB60() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1E4AAAAC0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1E4A9F0E8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4AAAB60() + 1) & ~v5;
    do
    {
      sub_1E4AAAE00();

      sub_1E4AAA8C0();
      v9 = sub_1E4AAAE40();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_1E4A9F298(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4AAAB60() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1E4AAA8A0();
      sub_1E4AAAE00();
      v12 = v11;
      sub_1E4AAA8C0();
      v13 = sub_1E4AAAE40();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t WKWallpaperPreviewImage.init(wallpaperRepresenting:previewStyle:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for WKWallpaperPreviewImage(0);
  v7 = a3 + v6[5];
  *v7 = swift_getKeyPath();
  *(v7 + 1) = 0;
  v7[16] = 0;
  result = sub_1E4A2732C(a1, a3 + v6[6]);
  *(a3 + v6[7]) = v5;
  return result;
}

__n128 sub_1E4A9F518@<Q0>(_OWORD *a1@<X8>)
{
  sub_1E4A53380();
  sub_1E4AAA330();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4A9F588(_OWORD *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v16 = a1[6];
  v17 = v2;
  v3 = a1[7];
  v18 = a1[8];
  v4 = a1[1];
  v5 = a1[3];
  v12 = a1[2];
  v13 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v14 = a1[4];
  v15 = v7;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v10[15] = v16;
  v10[16] = v3;
  v10[17] = a1[8];
  v10[11] = v12;
  v10[12] = v6;
  v10[13] = v14;
  v10[14] = v1;
  v10[9] = v11[0];
  v10[10] = v4;
  sub_1E4A49D24(v11, v10);
  sub_1E4A53380();
  return sub_1E4AAA340();
}

uint64_t sub_1E4A9F64C(uint64_t a1)
{
  v2 = sub_1E4AAA1C0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4AAA2D0();
}

uint64_t type metadata accessor for WKWallpaperPreviewImage(uint64_t a1)
{
  result = qword_1EE043F70;
  if (!qword_1EE043F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

WallpaperKit::WKWallpaperPreviewImage::PreviewStyle_optional __swiftcall WKWallpaperPreviewImage.PreviewStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E4AAAD20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WKWallpaperPreviewImage.PreviewStyle.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6854656C646E7562;
  }
}

uint64_t sub_1E4A9F82C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001E4AB8570;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001E4AB8570;
  }

  else
  {
    v3 = 1819047270;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6854656C646E7562;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEF6C69616E626D75;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 1819047270;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6854656C646E7562;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF6C69616E626D75;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E4AAADA0();
  }

  return v11 & 1;
}

uint64_t sub_1E4A9F920()
{
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

double sub_1E4A9F9CC(uint64_t a1)
{
  sub_1E4AAA8C0();

  return result;
}

uint64_t sub_1E4A9FA64(uint64_t a1)
{
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

void sub_1E4A9FB18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C69616E626D75;
  v4 = 0x80000001E4AB8570;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 1819047270;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6854656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t WKWallpaperPreviewImage.previewStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WKWallpaperPreviewImage(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t WKWallpaperPreviewImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v25 = sub_1E4AAA470();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC50, &qword_1E4AB45F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v24 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC58, &qword_1E4AB45F8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC60, &qword_1E4AB4600);
  MEMORY[0x1EEE9AC00](v26);
  v14 = &v24 - v13;
  sub_1E4A9FF4C(v2, v8);
  sub_1E4AAA460();
  v15 = sub_1E4AA202C();
  sub_1E4AAA590();
  (*(v3 + 8))(v5, v25);
  sub_1E4A4DC88(v8, &qword_1ECF8EC50, &qword_1E4AB45F0);
  v28 = 0x455041504C4C4157;
  v29 = 0xEA00000000005F52;
  v16 = (v2 + *(type metadata accessor for WKWallpaperPreviewImage(0) + 24));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v19 = (*(v18 + 48))(v17, v18);
  MEMORY[0x1E691ECA0](v19);

  v28 = v6;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1E4AAA570();

  (*(v10 + 8))(v12, v9);
  v20 = v16[3];
  v21 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v20);
  v28 = (*(v21 + 56))(v20, v21);
  v29 = v22;
  sub_1E4A5575C();
  sub_1E4AAA280();

  return sub_1E4A26B58(v14);
}

void *sub_1E4A9FF4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECE8, &qword_1E4AB4808);
  MEMORY[0x1EEE9AC00](v4);
  v51 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECF0, &qword_1E4AB4810);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v49 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC70, &qword_1E4AB4610);
  MEMORY[0x1EEE9AC00](v50);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC78, &qword_1E4AB4618);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v49 - v12);
  v14 = type metadata accessor for WKWallpaperPreviewImage(0);
  v15 = *(a1 + *(v14 + 28));
  v49[3] = v4;
  if (!v15)
  {
    sub_1E4AA09AC(a1, v57);
    v26 = v13 + *(v11 + 36);
    sub_1E4AA0C38(v26);
    v27 = sub_1E4AAA6E0();
    v29 = v28;
    v30 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC90, &qword_1E4AB4630) + 36));
    *v30 = v27;
    v30[1] = v29;
    v31 = v57[3];
    v13[2] = v57[2];
    v13[3] = v31;
    v32 = v57[1];
    *v13 = v57[0];
    v13[1] = v32;
    v33 = v57[7];
    v13[6] = v57[6];
    v13[7] = v33;
    v34 = v57[5];
    v13[4] = v57[4];
    v13[5] = v34;
    *(v13 + 169) = *(&v57[10] + 9);
    v35 = v57[10];
    v36 = v57[8];
    v13[9] = v57[9];
    v13[10] = v35;
    v13[8] = v36;
    sub_1E4A52D40(v13, v8, &qword_1ECF8EC78, &qword_1E4AB4618);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC98, &qword_1E4AB4638);
    sub_1E4AA21BC();
    sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
    sub_1E4AAA430();
    sub_1E4A52D40(v10, v51, &qword_1ECF8EC70, &qword_1E4AB4610);
    swift_storeEnumTagMultiPayload();
    sub_1E4AA20DC();
    sub_1E4AAA430();
    sub_1E4A4DC88(v10, &qword_1ECF8EC70, &qword_1E4AB4610);
    return sub_1E4A4DC88(v13, &qword_1ECF8EC78, &qword_1E4AB4618);
  }

  v49[1] = v6;
  v49[2] = a2;
  if (v15 == 1)
  {
    v16 = (a1 + *(v14 + 24));
    v18 = v16[3];
    v17 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v18);
    if ((*(v17 + 120))(@"WKWallpaperLocationCoverSheet", v18, v17) && (v19 = v16[3], v20 = v16[4], __swift_project_boxed_opaque_existential_1(v16, v19), (sub_1E4A7E224(v19, v20) & 1) == 0))
    {
      v45 = v16[3];
      v46 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v45);
      if ((sub_1E4A7DFFC(v45, v46) & 1) == 0)
      {
        sub_1E4AA2934(v57);
        goto LABEL_7;
      }

      sub_1E4AA115C(v54);
      memcpy(v55, v54, 0x260uLL);
      sub_1E4AA2964(v55);
    }

    else
    {
      sub_1E4A4D9A0(v16, v57);
      KeyPath = swift_getKeyPath();
      v56[0] = 0;
      *&v54[0] = swift_getKeyPath();
      sub_1E4A4E620(v54);
      *&v52[103] = v54[6];
      *&v52[119] = v54[7];
      *&v52[135] = v54[8];
      *&v52[39] = v54[2];
      *&v52[55] = v54[3];
      *&v52[71] = v54[4];
      *&v52[87] = v54[5];
      *&v52[7] = v54[0];
      v52[151] = v54[9];
      *&v52[23] = v54[1];
      v22 = swift_allocObject();
      sub_1E4A2732C(v57, v22 + 16);
      *(&v55[13] + 1) = *&v52[96];
      *(&v55[15] + 1) = *&v52[112];
      *(&v55[17] + 1) = *&v52[128];
      *(&v55[5] + 1) = *&v52[32];
      *(&v55[7] + 1) = *&v52[48];
      *(&v55[9] + 1) = *&v52[64];
      *(&v55[11] + 1) = *&v52[80];
      v23 = *&v52[16];
      *(&v55[1] + 1) = *v52;
      *(v22 + 56) = 1;
      v55[0] = KeyPath;
      LOBYTE(v55[1]) = v56[0];
      *(&v55[19] + 1) = *&v52[144];
      *(&v55[3] + 1) = v23;
      v55[21] = sub_1E4AA2C50;
      v55[22] = v22;
      LOBYTE(v55[23]) = 0;
      sub_1E4AA2970(v55);
    }

    memcpy(v56, v55, 0x261uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECA8, &qword_1E4AB4648);
    sub_1E4A592BC();
    sub_1E4AA2324(&qword_1EE0439F0, &qword_1ECF8ECA8, &qword_1E4AB4648, sub_1E4AA2458);
    sub_1E4AAA430();
    memcpy(v56, v57, 0x261uLL);
    nullsub_1();
    memcpy(v57, v56, 0x261uLL);
LABEL_7:
    v24 = v51;
    memcpy(v8, v57, 0x261uLL);
    swift_storeEnumTagMultiPayload();
    sub_1E4A52D40(v57, v56, &qword_1ECF8EC98, &qword_1E4AB4638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC98, &qword_1E4AB4638);
    sub_1E4AA21BC();
    sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
    sub_1E4AAA430();
    sub_1E4A52D40(v10, v24, &qword_1ECF8EC70, &qword_1E4AB4610);
    swift_storeEnumTagMultiPayload();
    sub_1E4AA20DC();
    sub_1E4AAA430();
    sub_1E4A4DC88(v57, &qword_1ECF8EC98, &qword_1E4AB4638);
    return sub_1E4A4DC88(v10, &qword_1ECF8EC70, &qword_1E4AB4610);
  }

  v37 = (a1 + *(v14 + 24));
  v38 = v37[3];
  v39 = v37[4];
  __swift_project_boxed_opaque_existential_1(v37, v38);
  if ((*(v39 + 120))(@"WKWallpaperLocationCoverSheet", v38, v39) && (v40 = v37[3], v41 = v37[4], __swift_project_boxed_opaque_existential_1(v37, v40), (sub_1E4A7E224(v40, v41) & 1) == 0))
  {
    v47 = v37[3];
    v48 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v47);
    if ((sub_1E4A7DFFC(v47, v48) & 1) == 0)
    {
      sub_1E4AA2934(v57);
      goto LABEL_13;
    }

    sub_1E4AA1874(v54);
    memcpy(v55, v54, 0x260uLL);
    sub_1E4AA2964(v55);
  }

  else
  {
    sub_1E4A4D9A0(v37, v57);
    v42 = swift_getKeyPath();
    v56[0] = 0;
    *&v54[0] = swift_getKeyPath();
    sub_1E4A4E620(v54);
    *&v53[103] = v54[6];
    *&v53[119] = v54[7];
    *&v53[135] = v54[8];
    *&v53[39] = v54[2];
    *&v53[55] = v54[3];
    *&v53[71] = v54[4];
    *&v53[87] = v54[5];
    *&v53[7] = v54[0];
    v53[151] = v54[9];
    *&v53[23] = v54[1];
    v43 = swift_allocObject();
    sub_1E4A2732C(v57, v43 + 16);
    *(&v55[13] + 1) = *&v53[96];
    *(&v55[15] + 1) = *&v53[112];
    *(&v55[17] + 1) = *&v53[128];
    *(&v55[5] + 1) = *&v53[32];
    *(&v55[7] + 1) = *&v53[48];
    *(&v55[9] + 1) = *&v53[64];
    *(&v55[11] + 1) = *&v53[80];
    v44 = *&v53[16];
    *(&v55[1] + 1) = *v53;
    *(v43 + 56) = 5;
    v55[0] = v42;
    LOBYTE(v55[1]) = v56[0];
    *(&v55[19] + 1) = *&v53[144];
    *(&v55[3] + 1) = v44;
    v55[21] = sub_1E4A592B0;
    v55[22] = v43;
    LOBYTE(v55[23]) = 0;
    sub_1E4AA2970(v55);
  }

  memcpy(v56, v55, 0x261uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECA8, &qword_1E4AB4648);
  sub_1E4A592BC();
  sub_1E4AA2324(&qword_1EE0439F0, &qword_1ECF8ECA8, &qword_1E4AB4648, sub_1E4AA2458);
  sub_1E4AAA430();
  memcpy(v56, v57, 0x261uLL);
  nullsub_1();
  memcpy(v57, v56, 0x261uLL);
LABEL_13:
  memcpy(v51, v57, 0x261uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC98, &qword_1E4AB4638);
  sub_1E4AA20DC();
  sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
  return sub_1E4AAA430();
}

double sub_1E4AA09AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WKWallpaperPreviewImage(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (!(*(v5 + 120))(@"WKWallpaperLocationCoverSheet", v4, v5) || (v6 = v3[3], v7 = v3[4], __swift_project_boxed_opaque_existential_1(v3, v6), (sub_1E4A7DFFC(v6, v7) & 1) != 0) || (v8 = v3[3], v9 = v3[4], __swift_project_boxed_opaque_existential_1(v3, v8), (sub_1E4A7E224(v8, v9) & 1) != 0))
  {
    sub_1E4A4D9A0(v3, &v23);
    KeyPath = swift_getKeyPath();
    v22[0] = 0;
    *&v20[0] = swift_getKeyPath();
    sub_1E4A4E620(v20);
    *&v19[103] = v20[6];
    *&v19[119] = v20[7];
    *&v19[135] = v20[8];
    *&v19[39] = v20[2];
    *&v19[55] = v20[3];
    *&v19[71] = v20[4];
    *&v19[87] = v20[5];
    *&v19[7] = v20[0];
    v19[151] = v21;
    *&v19[23] = v20[1];
    v11 = swift_allocObject();
    sub_1E4A2732C(&v23, v11 + 16);
    *&v22[105] = *&v19[96];
    *&v22[121] = *&v19[112];
    *&v22[137] = *&v19[128];
    *&v22[41] = *&v19[32];
    *&v22[57] = *&v19[48];
    *&v22[73] = *&v19[64];
    *&v22[89] = *&v19[80];
    *&v22[9] = *v19;
    *(v11 + 56) = 0;
    v12 = v22[0];
    *v22 = KeyPath;
    v22[8] = v12;
    *&v22[153] = *&v19[144];
    *&v22[25] = *&v19[16];
    *&v22[168] = sub_1E4AA2C50;
    *&v22[176] = v11;
    v22[184] = 0;
    nullsub_1();
    v31 = *&v22[128];
    v32 = *&v22[144];
    v33[0] = *&v22[160];
    *(v33 + 9) = *&v22[169];
    v27 = *&v22[64];
    v28 = *&v22[80];
    v29 = *&v22[96];
    v30 = *&v22[112];
    v23 = *v22;
    v24 = *&v22[16];
    v25 = *&v22[32];
    v26 = *&v22[48];
  }

  else
  {
    sub_1E4AA2C10(&v23);
  }

  v13 = v32;
  a2[8] = v31;
  a2[9] = v13;
  a2[10] = v33[0];
  *(a2 + 169) = *(v33 + 9);
  v14 = v28;
  a2[4] = v27;
  a2[5] = v14;
  v15 = v30;
  a2[6] = v29;
  a2[7] = v15;
  v16 = v24;
  *a2 = v23;
  a2[1] = v16;
  result = *&v25;
  v18 = v26;
  a2[2] = v25;
  a2[3] = v18;
  return result;
}

uint64_t sub_1E4AA0C38@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECF8, &qword_1E4AB4870);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_1E4AAA610();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED00, &qword_1E4AB4878);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v33 - v10;
  v11 = type metadata accessor for WKWallpaperPreviewImage(0);
  v12 = (v1 + *(v11 + 24));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((*(v14 + 32))(v13, v14))
  {
    if (*(v1 + *(v11 + 28)))
    {
      v15 = sub_1E4AAADA0();

      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    sub_1E4AAA630();
    (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
    sub_1E4AAA650();

    (*(v6 + 8))(v8, v5);
    v20 = *MEMORY[0x1E6981698];
    v21 = sub_1E4AAA640();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v4, v20, v21);
    (*(v22 + 56))(v4, 0, 1, v21);
    v23 = sub_1E4AAA620();

    sub_1E4A4DC88(v4, &qword_1ECF8ECF8, &qword_1E4AB4870);
    v24 = sub_1E4AAA5F0();
    KeyPath = swift_getKeyPath();
    sub_1E4AAA6F0();
    sub_1E4AAA230();
    v26 = sub_1E4AAA4F0();
    sub_1E4AAA1A0();
    *(v38 + 8) = v43;
    v42 = 0;
    *&v37 = v23;
    *(&v37 + 1) = KeyPath;
    *&v38[0] = v24;
    *(&v38[1] + 8) = v44;
    *(&v38[2] + 8) = v45;
    BYTE8(v38[3]) = v26;
    *&v39 = v27;
    *(&v39 + 1) = v28;
    *&v40 = v29;
    *(&v40 + 1) = v30;
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED08, &qword_1E4AB48B0);
    sub_1E4AA29D0();
    v31 = v33;
    sub_1E4AAA570();
    v46[4] = v38[3];
    v46[5] = v39;
    v46[6] = v40;
    v47 = v41;
    v46[0] = v37;
    v46[1] = v38[0];
    v46[2] = v38[1];
    v46[3] = v38[2];
    sub_1E4A4DC88(v46, &qword_1ECF8ED08, &qword_1E4AB48B0);
    v32 = v36;
    sub_1E4AA2BA0(v31, v36);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }

LABEL_4:
  v16 = v35;
  v17 = *(v34 + 56);
  v18 = v36;

  return v17(v18, 1, 1, v16);
}

void *sub_1E4AA115C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WKWallpaperPreviewImage(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (sub_1E4A7DFFC(v4, v5))
  {
    sub_1E4A4D9A0(v3, __dst);
    KeyPath = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v24[0] = swift_getKeyPath();
    sub_1E4A4E620(v24);
    *&v22[103] = v24[6];
    *&v22[119] = v24[7];
    *&v22[135] = v24[8];
    *&v22[39] = v24[2];
    *&v22[55] = v24[3];
    *&v22[71] = v24[4];
    *&v22[87] = v24[5];
    *&v22[7] = v24[0];
    v22[151] = v25;
    *&v22[23] = v24[1];
    v19 = swift_allocObject();
    sub_1E4A2732C(__dst, v19 + 16);
    *(v19 + 56) = 3;
    LOBYTE(v72) = 0;
    v17 = __src[0];
    v6 = sub_1E4AAA6F0();
    v8 = v7;
    sub_1E4A4D9A0(v3, __dst);
    v9 = swift_getKeyPath();
    LOBYTE(v54) = 0;
    *&v26[0] = swift_getKeyPath();
    sub_1E4A4E620(v26);
    *&v21[103] = v26[6];
    *&v21[119] = v26[7];
    *&v21[135] = v26[8];
    *&v21[39] = v26[2];
    *&v21[55] = v26[3];
    *&v21[71] = v26[4];
    *&v21[87] = v26[5];
    *&v21[7] = v26[0];
    v21[151] = v27;
    *&v21[23] = v26[1];
    v10 = swift_allocObject();
    sub_1E4A2732C(__dst, v10 + 16);
    *(v10 + 56) = 2;
    v51[0] = 0;
    *v28 = v9;
    v28[8] = v54;
    *&v28[105] = *&v21[96];
    *&v28[121] = *&v21[112];
    *&v28[137] = *&v21[128];
    *&v28[153] = *&v21[144];
    *&v28[41] = *&v21[32];
    *&v28[57] = *&v21[48];
    *&v28[73] = *&v21[64];
    *&v28[89] = *&v21[80];
    *&v28[9] = *v21;
    *&v28[25] = *&v21[16];
    *&v23[151] = *&v28[144];
    *&v23[87] = *&v28[80];
    *&v23[103] = *&v28[96];
    *&v23[119] = *&v28[112];
    *&v23[135] = *&v28[128];
    *&v23[23] = *&v28[16];
    *&v23[39] = *&v28[32];
    *&v23[55] = *&v28[48];
    *&v28[168] = sub_1E4AA2C50;
    *&v29 = v10;
    BYTE8(v29) = 0;
    *&v30 = v6;
    *(&v30 + 1) = v8;
    *&v23[71] = *&v28[64];
    *&v23[7] = *v28;
    *&v23[167] = *&v28[160];
    *&v23[183] = v29;
    *&v23[199] = v30;
    v39 = *&v21[96];
    v40 = *&v21[112];
    v41 = *&v21[128];
    v35 = *&v21[32];
    v36 = *&v21[48];
    v37 = *&v21[64];
    v38 = *&v21[80];
    v33 = *v21;
    v31 = v9;
    v32 = v54;
    v42 = *&v21[144];
    v34 = *&v21[16];
    v43 = sub_1E4AA2C50;
    v44 = v10;
    v45 = 0;
    v46 = v6;
    v47 = v8;
    sub_1E4A52D40(v28, __dst, &qword_1ECF8ECC0, &qword_1E4AB4660);
    sub_1E4A4DC88(&v31, &qword_1ECF8ECC0, &qword_1E4AB4660);
    v11 = sub_1E4AAA6F0();
    v13 = v12;
    sub_1E4A4D9A0(v3, __dst);
    v14 = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v48[0] = swift_getKeyPath();
    sub_1E4A4E620(v48);
    *&v20[103] = v48[6];
    *&v20[119] = v48[7];
    *&v20[135] = v48[8];
    *&v20[39] = v48[2];
    *&v20[55] = v48[3];
    *&v20[71] = v48[4];
    *&v20[87] = v48[5];
    *&v20[7] = v48[0];
    v20[151] = v49;
    *&v20[23] = v48[1];
    v15 = swift_allocObject();
    sub_1E4A2732C(__dst, v15 + 16);
    *(v15 + 56) = 4;
    *v51 = v14;
    v51[8] = __src[0];
    *&v51[105] = *&v20[96];
    *&v51[121] = *&v20[112];
    *&v51[137] = *&v20[128];
    *&v51[153] = *&v20[144];
    *&v51[41] = *&v20[32];
    *&v51[57] = *&v20[48];
    *&v51[73] = *&v20[64];
    *&v51[89] = *&v20[80];
    *&v51[9] = *v20;
    *&v51[25] = *&v20[16];
    *&v51[161] = *v50;
    *&v51[164] = *&v50[3];
    *&v51[168] = sub_1E4AA2C50;
    *&v52 = v15;
    BYTE8(v52) = 0;
    *&v53 = v11;
    *(&v53 + 1) = v13;
    v78 = *&v51[96];
    v79 = *&v51[112];
    v81 = *&v51[144];
    v80 = *&v51[128];
    v74 = *&v51[32];
    v75 = *&v51[48];
    v77 = *&v51[80];
    v76 = *&v51[64];
    v73 = *&v51[16];
    v72 = *v51;
    v84 = v53;
    v83 = v52;
    v82 = *&v51[160];
    v62 = *&v20[96];
    v63 = *&v20[112];
    v64 = *&v20[128];
    v58 = *&v20[32];
    v59 = *&v20[48];
    v60 = *&v20[64];
    v61 = *&v20[80];
    v56 = *v20;
    v54 = v14;
    v55 = __src[0];
    v65 = *&v20[144];
    v57 = *&v20[16];
    *v66 = *v50;
    *&v66[3] = *&v50[3];
    v67 = sub_1E4AA2C50;
    v68 = v15;
    v69 = 0;
    v70 = v11;
    v71 = v13;
    sub_1E4A52D40(v51, __dst, &qword_1ECF8ECC8, &qword_1E4AB4668);
    sub_1E4A4DC88(&v54, &qword_1ECF8ECC8, &qword_1E4AB4668);
    *&__src[0] = KeyPath;
    BYTE8(__src[0]) = v17;
    *(&__src[6] + 9) = *&v22[96];
    *(&__src[7] + 9) = *&v22[112];
    *(&__src[8] + 9) = *&v22[128];
    *(&__src[9] + 9) = *&v22[144];
    *(&__src[2] + 9) = *&v22[32];
    *(&__src[3] + 9) = *&v22[48];
    *(&__src[4] + 9) = *&v22[64];
    *(&__src[5] + 9) = *&v22[80];
    *(__src + 9) = *v22;
    *(&__src[1] + 9) = *&v22[16];
    *(&__src[22] + 9) = *&v23[176];
    *(&__src[23] + 9) = *&v23[192];
    *(&__src[18] + 9) = *&v23[112];
    *(&__src[19] + 9) = *&v23[128];
    *(&__src[20] + 9) = *&v23[144];
    *(&__src[21] + 9) = *&v23[160];
    *(&__src[16] + 9) = *&v23[80];
    *(&__src[17] + 9) = *&v23[96];
    *(&__src[13] + 9) = *&v23[32];
    *(&__src[10] + 1) = sub_1E4AA2C50;
    *&__src[11] = v19;
    BYTE8(__src[11]) = 0;
    *(&__src[24] + 1) = *&v23[207];
    *(&__src[14] + 9) = *&v23[48];
    *(&__src[15] + 9) = *&v23[64];
    *(&__src[11] + 9) = *v23;
    *(&__src[12] + 9) = *&v23[16];
    __src[35] = v82;
    __src[36] = v83;
    __src[37] = v84;
    __src[31] = v78;
    __src[32] = v79;
    __src[34] = v81;
    __src[33] = v80;
    __src[27] = v74;
    __src[28] = v75;
    __src[30] = v77;
    __src[29] = v76;
    __src[26] = v73;
    __src[25] = v72;
    nullsub_1();
    memcpy(__dst, __src, 0x260uLL);
  }

  else
  {
    sub_1E4AA2C3C(__dst);
  }

  return memcpy(a1, __dst, 0x260uLL);
}

void *sub_1E4AA1874@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WKWallpaperPreviewImage(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (sub_1E4A7DFFC(v4, v5))
  {
    sub_1E4A4D9A0(v3, __dst);
    KeyPath = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v24[0] = swift_getKeyPath();
    sub_1E4A4E620(v24);
    *&v22[103] = v24[6];
    *&v22[119] = v24[7];
    *&v22[135] = v24[8];
    *&v22[39] = v24[2];
    *&v22[55] = v24[3];
    *&v22[71] = v24[4];
    *&v22[87] = v24[5];
    *&v22[7] = v24[0];
    v22[151] = v25;
    *&v22[23] = v24[1];
    v19 = swift_allocObject();
    sub_1E4A2732C(__dst, v19 + 16);
    *(v19 + 56) = 7;
    LOBYTE(v72) = 0;
    v17 = __src[0];
    v6 = sub_1E4AAA6F0();
    v8 = v7;
    sub_1E4A4D9A0(v3, __dst);
    v9 = swift_getKeyPath();
    LOBYTE(v54) = 0;
    *&v26[0] = swift_getKeyPath();
    sub_1E4A4E620(v26);
    *&v21[103] = v26[6];
    *&v21[119] = v26[7];
    *&v21[135] = v26[8];
    *&v21[39] = v26[2];
    *&v21[55] = v26[3];
    *&v21[71] = v26[4];
    *&v21[87] = v26[5];
    *&v21[7] = v26[0];
    v21[151] = v27;
    *&v21[23] = v26[1];
    v10 = swift_allocObject();
    sub_1E4A2732C(__dst, v10 + 16);
    *(v10 + 56) = 6;
    v51[0] = 0;
    *v28 = v9;
    v28[8] = v54;
    *&v28[105] = *&v21[96];
    *&v28[121] = *&v21[112];
    *&v28[137] = *&v21[128];
    *&v28[153] = *&v21[144];
    *&v28[41] = *&v21[32];
    *&v28[57] = *&v21[48];
    *&v28[73] = *&v21[64];
    *&v28[89] = *&v21[80];
    *&v28[9] = *v21;
    *&v28[25] = *&v21[16];
    *&v23[151] = *&v28[144];
    *&v23[87] = *&v28[80];
    *&v23[103] = *&v28[96];
    *&v23[119] = *&v28[112];
    *&v23[135] = *&v28[128];
    *&v23[23] = *&v28[16];
    *&v23[39] = *&v28[32];
    *&v23[55] = *&v28[48];
    *&v28[168] = sub_1E4AA2C50;
    *&v29 = v10;
    BYTE8(v29) = 0;
    *&v30 = v6;
    *(&v30 + 1) = v8;
    *&v23[71] = *&v28[64];
    *&v23[7] = *v28;
    *&v23[167] = *&v28[160];
    *&v23[183] = v29;
    *&v23[199] = v30;
    v39 = *&v21[96];
    v40 = *&v21[112];
    v41 = *&v21[128];
    v35 = *&v21[32];
    v36 = *&v21[48];
    v37 = *&v21[64];
    v38 = *&v21[80];
    v33 = *v21;
    v31 = v9;
    v32 = v54;
    v42 = *&v21[144];
    v34 = *&v21[16];
    v43 = sub_1E4AA2C50;
    v44 = v10;
    v45 = 0;
    v46 = v6;
    v47 = v8;
    sub_1E4A52D40(v28, __dst, &qword_1ECF8ECC0, &qword_1E4AB4660);
    sub_1E4A4DC88(&v31, &qword_1ECF8ECC0, &qword_1E4AB4660);
    v11 = sub_1E4AAA6F0();
    v13 = v12;
    sub_1E4A4D9A0(v3, __dst);
    v14 = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v48[0] = swift_getKeyPath();
    sub_1E4A4E620(v48);
    *&v20[103] = v48[6];
    *&v20[119] = v48[7];
    *&v20[135] = v48[8];
    *&v20[39] = v48[2];
    *&v20[55] = v48[3];
    *&v20[71] = v48[4];
    *&v20[87] = v48[5];
    *&v20[7] = v48[0];
    v20[151] = v49;
    *&v20[23] = v48[1];
    v15 = swift_allocObject();
    sub_1E4A2732C(__dst, v15 + 16);
    *(v15 + 56) = 8;
    *v51 = v14;
    v51[8] = __src[0];
    *&v51[105] = *&v20[96];
    *&v51[121] = *&v20[112];
    *&v51[137] = *&v20[128];
    *&v51[153] = *&v20[144];
    *&v51[41] = *&v20[32];
    *&v51[57] = *&v20[48];
    *&v51[73] = *&v20[64];
    *&v51[89] = *&v20[80];
    *&v51[9] = *v20;
    *&v51[25] = *&v20[16];
    *&v51[161] = *v50;
    *&v51[164] = *&v50[3];
    *&v51[168] = sub_1E4AA2C50;
    *&v52 = v15;
    BYTE8(v52) = 0;
    *&v53 = v11;
    *(&v53 + 1) = v13;
    v78 = *&v51[96];
    v79 = *&v51[112];
    v81 = *&v51[144];
    v80 = *&v51[128];
    v74 = *&v51[32];
    v75 = *&v51[48];
    v77 = *&v51[80];
    v76 = *&v51[64];
    v73 = *&v51[16];
    v72 = *v51;
    v84 = v53;
    v83 = v52;
    v82 = *&v51[160];
    v62 = *&v20[96];
    v63 = *&v20[112];
    v64 = *&v20[128];
    v58 = *&v20[32];
    v59 = *&v20[48];
    v60 = *&v20[64];
    v61 = *&v20[80];
    v56 = *v20;
    v54 = v14;
    v55 = __src[0];
    v65 = *&v20[144];
    v57 = *&v20[16];
    *v66 = *v50;
    *&v66[3] = *&v50[3];
    v67 = sub_1E4AA2C50;
    v68 = v15;
    v69 = 0;
    v70 = v11;
    v71 = v13;
    sub_1E4A52D40(v51, __dst, &qword_1ECF8ECC8, &qword_1E4AB4668);
    sub_1E4A4DC88(&v54, &qword_1ECF8ECC8, &qword_1E4AB4668);
    *&__src[0] = KeyPath;
    BYTE8(__src[0]) = v17;
    *(&__src[6] + 9) = *&v22[96];
    *(&__src[7] + 9) = *&v22[112];
    *(&__src[8] + 9) = *&v22[128];
    *(&__src[9] + 9) = *&v22[144];
    *(&__src[2] + 9) = *&v22[32];
    *(&__src[3] + 9) = *&v22[48];
    *(&__src[4] + 9) = *&v22[64];
    *(&__src[5] + 9) = *&v22[80];
    *(__src + 9) = *v22;
    *(&__src[1] + 9) = *&v22[16];
    *(&__src[22] + 9) = *&v23[176];
    *(&__src[23] + 9) = *&v23[192];
    *(&__src[18] + 9) = *&v23[112];
    *(&__src[19] + 9) = *&v23[128];
    *(&__src[20] + 9) = *&v23[144];
    *(&__src[21] + 9) = *&v23[160];
    *(&__src[16] + 9) = *&v23[80];
    *(&__src[17] + 9) = *&v23[96];
    *(&__src[13] + 9) = *&v23[32];
    *(&__src[10] + 1) = sub_1E4AA2C50;
    *&__src[11] = v19;
    BYTE8(__src[11]) = 0;
    *(&__src[24] + 1) = *&v23[207];
    *(&__src[14] + 9) = *&v23[48];
    *(&__src[15] + 9) = *&v23[64];
    *(&__src[11] + 9) = *v23;
    *(&__src[12] + 9) = *&v23[16];
    __src[35] = v82;
    __src[36] = v83;
    __src[37] = v84;
    __src[31] = v78;
    __src[32] = v79;
    __src[34] = v81;
    __src[33] = v80;
    __src[27] = v74;
    __src[28] = v75;
    __src[30] = v77;
    __src[29] = v76;
    __src[26] = v73;
    __src[25] = v72;
    nullsub_1();
    memcpy(__dst, __src, 0x260uLL);
  }

  else
  {
    sub_1E4AA2C3C(__dst);
  }

  return memcpy(a1, __dst, 0x260uLL);
}

double sub_1E4AA1F90@<D0>(_OWORD *a1@<X8>)
{
  sub_1E4A6FB3C();
  sub_1E4AAA330();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_1E4AA202C()
{
  result = qword_1EE042278;
  if (!qword_1EE042278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC50, &qword_1E4AB45F0);
    sub_1E4AA210C(&qword_1EE0422B8, &qword_1ECF8EC68, &qword_1E4AB4608, sub_1E4AA20DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042278);
  }

  return result;
}

uint64_t sub_1E4AA210C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AA21BC()
{
  result = qword_1EE0423C0;
  if (!qword_1EE0423C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC78, &qword_1E4AB4618);
    sub_1E4AA2274();
    sub_1E4A49E30(&qword_1EE0439A8, &qword_1ECF8EC90, &qword_1E4AB4630, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423C0);
  }

  return result;
}

unint64_t sub_1E4AA2274()
{
  result = qword_1EE042280;
  if (!qword_1EE042280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC80, &qword_1E4AB4620);
    sub_1E4AA2324(&qword_1EE043080, &qword_1ECF8EC88, &qword_1E4AB4628, sub_1E4A592BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042280);
  }

  return result;
}

uint64_t sub_1E4AA2324(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AA23A0()
{
  result = qword_1EE042318;
  if (!qword_1EE042318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ECA0, &qword_1E4AB4640);
    sub_1E4A592BC();
    sub_1E4AA2324(&qword_1EE0439F0, &qword_1ECF8ECA8, &qword_1E4AB4648, sub_1E4AA2458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042318);
  }

  return result;
}

unint64_t sub_1E4AA2458()
{
  result = qword_1EE0439F8;
  if (!qword_1EE0439F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ECB0, &qword_1E4AB4650);
    sub_1E4AA2510();
    sub_1E4A49E30(&qword_1EE0439C0, &qword_1ECF8ECC8, &qword_1E4AB4668, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0439F8);
  }

  return result;
}

unint64_t sub_1E4AA2510()
{
  result = qword_1EE043A10;
  if (!qword_1EE043A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ECB8, &qword_1E4AB4658);
    sub_1E4A592BC();
    sub_1E4A49E30(&qword_1EE0439A0, &qword_1ECF8ECC0, &qword_1E4AB4660, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043A10);
  }

  return result;
}

unint64_t sub_1E4AA25CC()
{
  result = qword_1ECF8ECD0;
  if (!qword_1ECF8ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ECD0);
  }

  return result;
}

void sub_1E4AA26A8(uint64_t a1)
{
  sub_1E4AA2784(319, &qword_1EE042448, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_1E4AA2784(319, &qword_1EE042440, type metadata accessor for CGSize);
    if (v2 <= 0x3F)
    {
      sub_1E4A48F1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4AA2784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4AAA1D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E4AA27E8()
{
  result = qword_1EE0423D0;
  if (!qword_1EE0423D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC60, &qword_1E4AB4600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC50, &qword_1E4AB45F0);
    sub_1E4AA202C();
    swift_getOpaqueTypeConformance2();
    sub_1E4AA28B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423D0);
  }

  return result;
}

unint64_t sub_1E4AA28B0()
{
  result = qword_1EE042298;
  if (!qword_1EE042298)
  {
    sub_1E4AAA4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042298);
  }

  return result;
}

uint64_t sub_1E4AA2978@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4AAA2F0();
  *a1 = result;
  return result;
}

unint64_t sub_1E4AA29D0()
{
  result = qword_1EE042378;
  if (!qword_1EE042378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED08, &qword_1E4AB48B0);
    sub_1E4AA2A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042378);
  }

  return result;
}

unint64_t sub_1E4AA2A5C()
{
  result = qword_1EE042390;
  if (!qword_1EE042390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED10, &qword_1E4AB48B8);
    sub_1E4AA2AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042390);
  }

  return result;
}

unint64_t sub_1E4AA2AE8()
{
  result = qword_1EE0423B0;
  if (!qword_1EE0423B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED18, qword_1E4AB48C0);
    sub_1E4A49E30(&qword_1EE043998, &qword_1ECF8E228, &qword_1E4AAEE10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423B0);
  }

  return result;
}

uint64_t sub_1E4AA2BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED00, &qword_1E4AB4878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E4AA2C10(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1E4AB4580;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  *(a1 + 169) = 0u;
  return result;
}

unint64_t sub_1E4AA2C58()
{
  result = qword_1ECF8ED20;
  if (!qword_1ECF8ED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E770, &qword_1E4AB2170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED20);
  }

  return result;
}

uint64_t sub_1E4AA2CBC(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (qword_1EE042AC0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BE0;
    }

    else if (a1 == 4)
    {
      if (qword_1EE042A88 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BC0;
    }

    else
    {
      if (qword_1EE042AB0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BD8;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1EE042A80 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BB8;
    }

    else
    {
      if (qword_1EE042A98 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BC8;
    }
  }

  else
  {
    if (qword_1EE042AA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EE048BD0;
  }

  v2 = *v1;

  return sub_1E4AAA5C0();
}

unint64_t sub_1E4AA2E88()
{
  result = qword_1EE043098;
  if (!qword_1EE043098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043098);
  }

  return result;
}

unint64_t sub_1E4AA2EE0()
{
  result = qword_1EE043090;
  if (!qword_1EE043090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043090);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKStripeColor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WKStripeColor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WKStillWallpaper.init(identifier:name:thumbnailImageURL:fullsizeImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a6;
  v8 = sub_1E4AA9FE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v15(&v23 - v13, a4, v8);
  v15(v12, a5, v8);
  v16 = objc_allocWithZone(WKStillWallpaper);
  v17 = sub_1E4AAA870();

  v18 = sub_1E4AA9FA0();
  v19 = sub_1E4AA9FA0();
  v20 = [v16 initWithIdentifier:v25 name:v17 type:0 thumbnailImageURL:v18 fullsizeImageURL:v19];

  v21 = *(v9 + 8);
  v21(a5, v8);
  v21(v24, v8);
  v21(v12, v8);
  v21(v14, v8);
  type metadata accessor for WKStillWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v20;
  *v26 = result;
  return result;
}

void WKStillWallpaper.fullsizeImageURL.getter()
{
  v1 = [*(*v0 + 16) fullsizeImageURL];
  sub_1E4AA9FC0();
}

id WKStillWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

Swift::OpaquePointer_optional __swiftcall WKStillWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKStillWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t WKStillWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKStillWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4AA366C()
{
  result = qword_1ECF8ED28;
  if (!qword_1ECF8ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED28);
  }

  return result;
}

uint64_t sub_1E4AA36EC@<X0>(void *a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer(0);
  MEMORY[0x1EEE9AC00](v2);
  v57 = (v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED38, &qword_1E4AB4C08);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED40, &qword_1E4AB4C10);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v54 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v54 - v11;
  v13 = *v1;
  if (sub_1E4A5A570(*v1))
  {
    *&v60[0] = swift_getKeyPath();
    sub_1E4A4E620(v60);
    v75 = v65;
    v76 = v66;
    v77 = v67;
    LOBYTE(v78) = v68;
    v14 = v61;
    v71 = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v69 = v60[0];
    v70 = v60[1];
    *(&v78 + 1) = v13;
    v15 = v66;
    v9[6] = v65;
    v9[7] = v15;
    v16 = v72;
    v17 = v73;
    v18 = v74;
    v9[2] = v14;
    v9[3] = v16;
    v9[4] = v17;
    v9[5] = v18;
    v19 = v70;
    *v9 = v69;
    v9[1] = v19;
    v20 = v78;
    v9[8] = v77;
    v9[9] = v20;
    swift_storeEnumTagMultiPayload();

    sub_1E4AA4300(&v69, v59);
    sub_1E4AA4078();
    sub_1E4AA40CC(qword_1EE0435F8, type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer, &unk_1E4AB509C);
    sub_1E4AAA430();
    sub_1E4AA41CC(v12, v6);
    swift_storeEnumTagMultiPayload();
    sub_1E4AA3FBC();
    sub_1E4AA4114();
    v21 = v58;
    sub_1E4AAA430();
    sub_1E4AA435C(&v69);
    sub_1E4AA423C(v12);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  v54[1] = v7;
  v55 = v2;
  v56 = v10;
  v24 = sub_1E4A5A670(v13);
  v25 = v58;
  if (v24)
  {
    v54[0] = v4;
    v26 = [*(v13 + 16) logicalScreenClass];
    v27 = sub_1E4AAA8A0();
    v29 = v28;
    if (v27 == sub_1E4AAA8A0() && v29 == v30)
    {

LABEL_8:
      KeyPath = swift_getKeyPath();
      v33 = v57;
      *v57 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
      swift_storeEnumTagMultiPayload();
      v34 = v55;
      v35 = v33 + *(v55 + 20);
      *&v69 = swift_getKeyPath();
      sub_1E4A4E620(&v69);
      v36 = v76;
      *(v35 + 96) = v75;
      *(v35 + 112) = v36;
      *(v35 + 128) = v77;
      *(v35 + 144) = v78;
      v37 = v72;
      *(v35 + 32) = v71;
      *(v35 + 48) = v37;
      v38 = v74;
      *(v35 + 64) = v73;
      *(v35 + 80) = v38;
      v39 = v70;
      *v35 = v69;
      *(v35 + 16) = v39;
      v40 = v33 + *(v34 + 24);
      type metadata accessor for WKWallpaperPosterLayerViewModel(0);
      sub_1E4AA40CC(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

      *v40 = sub_1E4AAA1E0();
      *(v40 + 8) = v41 & 1;
      *(v33 + *(v34 + 28)) = v13;
      sub_1E4AA4168(v33, v9);
      swift_storeEnumTagMultiPayload();
      sub_1E4AA4078();
      sub_1E4AA40CC(qword_1EE0435F8, type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer, &unk_1E4AB509C);
      sub_1E4AAA430();
      sub_1E4AA41CC(v12, v6);
      swift_storeEnumTagMultiPayload();
      sub_1E4AA3FBC();
      sub_1E4AA4114();
      v42 = v58;
      sub_1E4AAA430();
      sub_1E4AA423C(v12);
      sub_1E4AA42A4(v33);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
      return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    }

    v31 = sub_1E4AAADA0();

    v25 = v58;
    if (v31)
    {
      goto LABEL_8;
    }
  }

  if (sub_1E4A5A870(v13))
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel(0);
    sub_1E4AA40CC(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

    v44 = sub_1E4AAA1E0();
    v59[0] = v45 & 1;
    *&v69 = swift_getKeyPath();
    sub_1E4A4E620(&v69);
    *&v79[119] = v76;
    *&v79[103] = v75;
    *&v79[55] = v72;
    *&v79[39] = v71;
    *&v79[135] = v77;
    v79[151] = v78;
    *&v79[71] = v73;
    *&v79[87] = v74;
    *&v79[7] = v69;
    *&v79[23] = v70;
    v46 = *&v79[112];
    *(v6 + 105) = *&v79[96];
    *(v6 + 121) = v46;
    *(v6 + 137) = *&v79[128];
    v47 = *&v79[48];
    *(v6 + 41) = *&v79[32];
    *(v6 + 57) = v47;
    v48 = *&v79[80];
    *(v6 + 73) = *&v79[64];
    *(v6 + 89) = v48;
    v49 = *&v79[16];
    *(v6 + 9) = *v79;
    v50 = v59[0];
    *v6 = v44;
    v6[8] = v50;
    *(v6 + 153) = *&v79[144];
    *(v6 + 25) = v49;
    *(v6 + 21) = v13;
    swift_storeEnumTagMultiPayload();
    sub_1E4AA3FBC();
    sub_1E4AA4114();
    sub_1E4AAA430();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    return (*(*(v51 - 8) + 56))(v25, 0, 1, v51);
  }

  else
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    v53 = *(*(v52 - 8) + 56);

    return v53(v25, 1, 1, v52);
  }
}

uint64_t sub_1E4AA3F18@<X0>(void *a1@<X8>)
{
  sub_1E4AA36EC(a1);
  v2 = sub_1E4AAA290();
  v3 = sub_1E4AAA4F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED30, &qword_1E4AB4C00);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  v5[8] = v3;
  return result;
}

unint64_t sub_1E4AA3FBC()
{
  result = qword_1EE042338;
  if (!qword_1EE042338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
    sub_1E4AA4078();
    sub_1E4AA40CC(qword_1EE0435F8, type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer, &unk_1E4AB509C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042338);
  }

  return result;
}

unint64_t sub_1E4AA4078()
{
  result = qword_1EE043898;
  if (!qword_1EE043898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043898);
  }

  return result;
}

uint64_t sub_1E4AA40CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4AA4114()
{
  result = qword_1EE043490;
  if (!qword_1EE043490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043490);
  }

  return result;
}

uint64_t sub_1E4AA4168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4AA41CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4AA423C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4AA42A4(uint64_t a1)
{
  v2 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4AA43B0()
{
  result = qword_1EE0423F0;
  if (!qword_1EE0423F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED30, &qword_1E4AB4C00);
    sub_1E4AA443C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423F0);
  }

  return result;
}

unint64_t sub_1E4AA443C()
{
  result = qword_1EE0422C0;
  if (!qword_1EE0422C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED58, qword_1E4AB4C88);
    sub_1E4AA44C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422C0);
  }

  return result;
}

unint64_t sub_1E4AA44C0()
{
  result = qword_1EE0422C8;
  if (!qword_1EE0422C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    sub_1E4AA3FBC();
    sub_1E4AA4114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422C8);
  }

  return result;
}

uint64_t sub_1E4AA45D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6863746970;
  }

  else
  {
    v3 = 7823737;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6863746970;
  }

  else
  {
    v5 = 7823737;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E4AAADA0();
  }

  return v8 & 1;
}

uint64_t sub_1E4AA466C()
{
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

double sub_1E4AA46E4(uint64_t a1)
{
  sub_1E4AAA8C0();

  return result;
}

uint64_t sub_1E4AA4748(uint64_t a1)
{
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

void sub_1E4AA47BC(char *a2@<X8>)
{
  v3 = sub_1E4AAAD20();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E4AA481C(uint64_t *a1@<X8>)
{
  v2 = 7823737;
  if (*v1)
  {
    v2 = 0x6863746970;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AAA030();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4AAA030();
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

uint64_t sub_1E4AA4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1E4AAA030();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4AA4B38()
{
  result = qword_1ECF8ED80;
  if (!qword_1ECF8ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED80);
  }

  return result;
}

uint64_t sub_1E4AA4B8C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_1E4AA4BC4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_1E4AA4BFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA030();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1E4AA4C68()
{
  result = qword_1ECF8ED88;
  if (!qword_1ECF8ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED88);
  }

  return result;
}

uint64_t sub_1E4AA4CBC(uint64_t a1)
{
  result = sub_1E4AA4D14(&qword_1ECF8ED90, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter, &unk_1E4AB4E04);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4AA4D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4AA4D5C(uint64_t a1)
{
  result = sub_1E4AA4D14(&qword_1ECF8ED98, type metadata accessor for WKParameterizedCAWallpaperStateParameter, &unk_1E4AB4EA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for WKBokehViewRepresentable(uint64_t a1)
{
  result = qword_1EE042CE8;
  if (!qword_1EE042CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4AA4E3C(uint64_t a1)
{
  sub_1E4A4DE48(319, &qword_1EE042448, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_1E4A4DE48(319, &unk_1EE042450, type metadata accessor for WKWallpaperPosterLayerViewModel);
    if (v2 <= 0x3F)
    {
      sub_1E4A48F1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1E4AA4F58()
{
  v1 = sub_1E4AAA320();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4AAA1C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WKBokehViewRepresentable(0);
  v9 = (v0 + *(v8 + 24));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_1E4A96CDC(v7);
  sub_1E4A7E41C(v10, v11, &v22);
  (*(v5 + 8))(v7, v4);
  if (v22)
  {
    v12 = [objc_allocWithZone(WKBokehView) initWithBokehWallpaperInput_];
    [v12 setClipsToBounds_];
    v13 = (v0 + *(v8 + 20));
    v14 = *v13;
    v15 = *(v13 + 8);

    if ((v15 & 1) == 0)
    {
      sub_1E4AAAA10();
      v16 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v20 + 8))(v3, v21);
      v14 = v22;
    }

    swift_getKeyPath();
    v22 = v14;
    sub_1E4AA5734(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA060();

    v17 = *(v14 + 184);

    [v12 setAnimationEnabled_];

    return v12;
  }

  else
  {
    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

double sub_1E4AA5298(void *a1)
{
  v3 = sub_1E4AAA1C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_1E4AAA320();
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WKBokehViewRepresentable(0);
  v11 = *(v10 + 20);
  v28 = v1;
  v12 = (v1 + v11);
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_1E4AAAA10();
    v15 = v10;
    v16 = v4;
    v17 = v3;
    v18 = a1;
    v19 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    a1 = v18;
    v3 = v17;
    v4 = v16;
    v10 = v15;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v27);
    v13 = v29;
  }

  swift_getKeyPath();
  v29 = v13;
  sub_1E4AA5734(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  v20 = *(v13 + 184);

  [a1 setAnimationEnabled_];
  v21 = (v28 + *(v10 + 24));
  v22 = v21[3];
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_1E4A96CDC(v6);
  sub_1E4A7E41C(v22, v23, &v29);
  (*(v4 + 8))(v6, v3);
  if (v29)
  {
    v25 = *(v29 + 16);
    [a1 setBokehWallpaperInput_];
  }

  return result;
}

uint64_t sub_1E4AA55B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AA5734(&qword_1EE042D00, type metadata accessor for WKBokehViewRepresentable, &unk_1E4AB4F4C);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E4AA5648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AA5734(&qword_1EE042D00, type metadata accessor for WKBokehViewRepresentable, &unk_1E4AB4F4C);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E4AA56DC(uint64_t a1)
{
  sub_1E4AA5734(&qword_1EE042D00, type metadata accessor for WKBokehViewRepresentable, &unk_1E4AB4F4C);
  sub_1E4AAA400();
  __break(1u);
}

uint64_t sub_1E4AA5734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer(uint64_t a1)
{
  result = qword_1EE0435E8;
  if (!qword_1EE0435E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1E4AA580C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = (v2 + *(type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer(0) + 24));
  if (*(v8 + 8) == 1)
  {
    v67 = *v8;
  }

  else
  {

    sub_1E4AAAA10();
    v9 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v10 = sub_1E4A7440C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if ((v16 & 1) != 0 || (sub_1E4AA5B60(&v51), (v17 = v51) == 0))
  {
    sub_1E4A4E5F8(&v52);
  }

  else
  {
    *&v27[0] = swift_getKeyPath();
    sub_1E4A4E620(v27);
    v35 = v27[6];
    v36 = v27[7];
    v37 = v27[8];
    LOBYTE(v38) = v28;
    v31 = v27[2];
    v32 = v27[3];
    v33 = v27[4];
    v34 = v27[5];
    v29 = v27[0];
    v30 = v27[1];

    WKPosterCanvasSize();
    WKPosterCanvasSize();
    sub_1E4AAA6F0();
    sub_1E4AAA230();

    *&v26[7] = v68;
    *&v26[23] = v69;
    *&v26[39] = v70;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v39 = v29;
    v40 = v30;
    *(v50 + 9) = *v26;
    *&v48 = v38;
    *(&v48 + 1) = v10;
    *&v49 = v12;
    *(&v49 + 1) = v14;
    *&v50[0] = v17;
    BYTE8(v50[0]) = 0;
    *(&v50[1] + 9) = *&v26[16];
    *(&v50[2] + 9) = *&v26[32];
    *(&v50[3] + 1) = *(&v70 + 1);
    nullsub_1();
    v64 = v50[1];
    v65 = v50[2];
    v66 = v50[3];
    v60 = v47;
    v61 = v48;
    v62 = v49;
    v63 = v50[0];
    v56 = v43;
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v52 = v39;
    v53 = v40;
    v54 = v41;
    v55 = v42;
  }

  v18 = v65;
  *(a1 + 192) = v64;
  *(a1 + 208) = v18;
  *(a1 + 224) = v66;
  v19 = v61;
  *(a1 + 128) = v60;
  *(a1 + 144) = v19;
  v20 = v63;
  *(a1 + 160) = v62;
  *(a1 + 176) = v20;
  v21 = v57;
  *(a1 + 64) = v56;
  *(a1 + 80) = v21;
  v22 = v59;
  *(a1 + 96) = v58;
  *(a1 + 112) = v22;
  v23 = v53;
  *a1 = v52;
  *(a1 + 16) = v23;
  result = v55;
  *(a1 + 32) = v54;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E4AA5B60@<X0>(id **a1@<X8>)
{
  v37 = a1;
  v36 = sub_1E4AAA1C0();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E4AAA320();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer(0);
  v10 = *(v9 + 28);
  v11 = (v1 + *(v9 + 20));
  v12 = v11[7];
  v13 = v11[5];
  v74 = v11[6];
  v75 = v12;
  v14 = v11[7];
  v76 = v11[8];
  v15 = v11[3];
  v16 = v11[1];
  v70 = v11[2];
  v71 = v15;
  v17 = v11[3];
  v18 = v11[5];
  v72 = v11[4];
  v73 = v18;
  v19 = v11[1];
  v68 = *v11;
  v69 = v19;
  v78[6] = v74;
  v78[7] = v14;
  v78[8] = v11[8];
  v78[2] = v70;
  v78[3] = v17;
  v78[4] = v72;
  v78[5] = v13;
  v20 = *(v1 + v10);
  v77 = *(v11 + 144);
  v79 = *(v11 + 144);
  v78[0] = v68;
  v78[1] = v16;
  if (sub_1E4A49C60(v78) == 1)
  {
    nullsub_1();
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v39 = v68;
    v40 = v69;
    nullsub_1();
    v59 = *v21;
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[4];
    v62 = v21[3];
    v63 = v24;
    v60 = v22;
    v61 = v23;
    v25 = v21[5];
    v26 = v21[6];
    v27 = v21[8];
    v66 = v21[7];
    v67 = v27;
    v64 = v25;
    v65 = v26;
    v58 = v77;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v52 = v71;
    v53 = v72;
    v50 = v69;
    v51 = v70;
    v49 = v68;
    nullsub_1();
    sub_1E4A49D24(v28, &v38);
  }

  else
  {
    nullsub_1();
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v39 = v68;
    v40 = v69;
    nullsub_1();
    v34 = *v29;
    v49 = v68;
    v50 = v69;
    v53 = v72;
    v54 = v73;
    v51 = v70;
    v52 = v71;
    v58 = v77;
    v56 = v75;
    v57 = v76;
    v55 = v74;
    nullsub_1();

    sub_1E4AAAA10();
    v30 = sub_1E4AAA4E0();
    v35 = v4;
    v31 = v20;
    v32 = v30;
    sub_1E4AAA0B0();

    v20 = v31;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v68);
    v4 = v35;
    (*(v6 + 8))(v8, v5);
  }

  v55 = v65;
  v56 = v66;
  v57 = v67;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  sub_1E4A96CDC(v4);
  sub_1E4A95D1C(&v49, v4, v20, v37);
  sub_1E4A49CD0(&v49);
  return (*(v2 + 8))(v4, v36);
}

uint64_t WKWallpaperImage.ImageType.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4AA5FD0(uint64_t a1, char a2)
{
  sub_1E4A4D9A0(a1, v5);
  type metadata accessor for WKWallpaperImageViewModel(0);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E888, &unk_1E4AB2D20);
  sub_1E4AAA130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E890, qword_1E4AB5420);
  sub_1E4AAA130();
  sub_1E4A2732C(v5, v3 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting);
  *(v3 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type) = a2;
  return v3;
}

double WKWallpaperImage.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA360();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = v1[9];
  v49[8] = v1[8];
  v49[9] = v10;
  v50[0] = v1[10];
  *(v50 + 9) = *(v1 + 169);
  v11 = v1[5];
  v49[4] = v1[4];
  v49[5] = v11;
  v12 = v1[7];
  v49[6] = v1[6];
  v49[7] = v12;
  v13 = v1[1];
  v49[0] = *v1;
  v49[1] = v13;
  v14 = v1[3];
  v49[2] = v1[2];
  v49[3] = v14;
  v38 = sub_1E4AAA5E0();
  v15 = swift_allocObject();
  v16 = v1[9];
  v15[9] = v1[8];
  v15[10] = v16;
  v15[11] = v1[10];
  *(v15 + 185) = *(v1 + 169);
  v17 = v1[5];
  v15[5] = v1[4];
  v15[6] = v17;
  v18 = v1[7];
  v15[7] = v1[6];
  v15[8] = v18;
  v19 = v1[1];
  v15[1] = *v1;
  v15[2] = v19;
  v20 = v1[3];
  v15[3] = v1[2];
  v15[4] = v20;
  sub_1E4AA6528(v49, &v41);
  v21 = sub_1E4AAA6F0();
  v23 = v22;
  sub_1E4AA6560(v49, &v51);
  sub_1E4AAA350();
  (*(v4 + 16))(v7, v9, v3);
  sub_1E4AA787C(&qword_1EE042358, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v24 = sub_1E4AAA240();
  (*(v4 + 8))(v9, v3);
  LOBYTE(v40) = v57;
  v39[12] = v55;
  v39[13] = v56;
  v39[10] = v53;
  v39[11] = v54;
  v39[8] = v51;
  v39[9] = v52;
  v58[4] = v55;
  v58[5] = v56;
  v58[0] = v51;
  v58[1] = v52;
  v58[2] = v53;
  v58[3] = v54;
  *&v59 = v40;
  *(&v59 + 1) = v24;
  *&v60 = v21;
  *(&v60 + 1) = v23;
  v43 = v53;
  v44 = v54;
  v41 = v51;
  v42 = v52;
  v45 = v55;
  v46 = v56;
  v47 = v59;
  v48 = v60;
  v61[0] = v51;
  v61[1] = v52;
  v61[4] = v55;
  v61[5] = v56;
  v61[2] = v53;
  v61[3] = v54;
  v62 = v40;
  v63 = v24;
  v64 = v21;
  v65 = v23;
  sub_1E4A52D40(v58, v39, &qword_1ECF8EDA0, &qword_1E4AB5130);
  sub_1E4A4DC88(v61, &qword_1ECF8EDA0, &qword_1E4AB5130);
  v25 = [objc_opt_self() mainScreen];
  v26 = [v25 fixedCoordinateSpace];

  [v26 bounds];
  v28 = v27;
  v30 = v29;
  swift_unknownObjectRelease();
  v31 = v38;
  v32 = v46;
  *(a1 + 104) = v45;
  *(a1 + 120) = v32;
  v33 = v48;
  *(a1 + 136) = v47;
  *(a1 + 152) = v33;
  v34 = v42;
  *(a1 + 40) = v41;
  *(a1 + 56) = v34;
  v35 = v44;
  *(a1 + 72) = v43;
  result = v28 / v30;
  *a1 = v31;
  *(a1 + 8) = sub_1E4AA6520;
  *(a1 + 16) = v15;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 88) = v35;
  *(a1 + 168) = 1;
  *(a1 + 176) = v28 / v30;
  *(a1 + 184) = 256;
  return result;
}

double sub_1E4AA646C(uint64_t a1)
{
  type metadata accessor for WKWallpaperImageViewModel(0);
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel, &unk_1E4AB2D60);
  sub_1E4AAA1F0();
  sub_1E4A7FC1C();

  return result;
}

double sub_1E4AA650C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1E4AA6560(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WKWallpaperImageViewModel(0);
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel, &unk_1E4AB2D60);
  v4 = *(sub_1E4AAA1F0() + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type);

  if (v4 >= 5)
  {
    v10 = *(sub_1E4AAA1F0() + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type);

    if ((v10 - 5) >= 4)
    {
      v16 = 0uLL;
      v22 = -1;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      goto LABEL_7;
    }

    v11 = a1[9];
    v44 = a1[8];
    v45 = v11;
    v46[0] = a1[10];
    *(v46 + 9) = *(a1 + 169);
    v12 = a1[5];
    v40 = a1[4];
    v41 = v12;
    v13 = a1[7];
    v42 = a1[6];
    v43 = v13;
    v14 = a1[1];
    v36 = *a1;
    v37 = v14;
    v15 = a1[3];
    v38 = a1[2];
    v39 = v15;
    sub_1E4AA6EC4(&v23);
    v31 = v25;
    v32 = v26;
    LOWORD(v33) = v27;
    v29 = v23;
    v30 = v24;
    v47 = 1;
    v35 = 1;
  }

  else
  {
    v5 = a1[9];
    v44 = a1[8];
    v45 = v5;
    v46[0] = a1[10];
    *(v46 + 9) = *(a1 + 169);
    v6 = a1[5];
    v40 = a1[4];
    v41 = v6;
    v7 = a1[7];
    v42 = a1[6];
    v43 = v7;
    v8 = a1[1];
    v36 = *a1;
    v37 = v8;
    v9 = a1[3];
    v38 = a1[2];
    v39 = v9;
    sub_1E4AA6894(&v23);
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    v29 = v23;
    v30 = v24;
    v47 = 0;
    v35 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EDD0, &qword_1E4AB5340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EDD8, &qword_1E4AB5348);
  sub_1E4AA7A4C(&qword_1EE0439C8, &qword_1ECF8EDD0, &qword_1E4AB5340, sub_1E4AA78C4);
  sub_1E4AA7A4C(&qword_1EE0439E0, &qword_1ECF8EDD8, &qword_1E4AB5348, sub_1E4AA7AC8);
  sub_1E4AAA430();
  v16 = v36;
  v17 = v37;
  v18 = v38;
  v19 = v39;
  v20 = v40;
  v21 = v41;
  v22 = v42;
LABEL_7:
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  *(a2 + 96) = v22;
}

unint64_t sub_1E4AA6824()
{
  result = qword_1ECF8EDA8;
  if (!qword_1ECF8EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EDA8);
  }

  return result;
}

void sub_1E4AA6894(_OWORD *a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1E4AAA610();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = *v1;
  v41 = *(v1 + 8);
  v10 = *(v1 + 128);
  v83 = *(v1 + 112);
  v84 = v10;
  v85 = *(v1 + 144);
  v86 = *(v1 + 160);
  v11 = *(v1 + 64);
  v79 = *(v1 + 48);
  v80 = v11;
  v12 = *(v1 + 96);
  v81 = *(v1 + 80);
  v82 = v12;
  v13 = *(v1 + 32);
  v77 = *(v1 + 16);
  v78 = v13;
  type metadata accessor for WKWallpaperImageViewModel(0);
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel, &unk_1E4AB2D60);
  sub_1E4AAA1F0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  if (*&v75[0])
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v14 = sub_1E4AAA650();

    (*(v7 + 8))(v9, v6);
    v15 = [objc_opt_self() mainScreen];
    v16 = [v15 fixedCoordinateSpace];

    [v16 bounds];
    v18 = v17;
    v20 = v19;
    swift_unknownObjectRelease();
    v21 = sub_1E4AAA440();
    v75[6] = v83;
    v75[7] = v84;
    v75[8] = v85;
    v76 = v86;
    v75[2] = v79;
    v75[3] = v80;
    v75[4] = v81;
    v75[5] = v82;
    v75[0] = v77;
    v75[1] = v78;
    if (sub_1E4A49C60(v75) == 1)
    {
      nullsub_1();
      v52 = v83;
      v53 = v84;
      v54 = v85;
      v55 = v86;
      v48 = v79;
      v49 = v80;
      v50 = v81;
      v51 = v82;
      v46 = v77;
      v47 = v78;
      nullsub_1();
      v66 = *v22;
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[4];
      v69 = v22[3];
      v70 = v25;
      v67 = v23;
      v68 = v24;
      v26 = v22[5];
      v27 = v22[6];
      v28 = v22[8];
      v73 = v22[7];
      v74 = v28;
      v71 = v26;
      v72 = v27;
      v65 = v86;
      v63 = v84;
      v64 = v85;
      v61 = v82;
      v62 = v83;
      v59 = v80;
      v60 = v81;
      v57 = v78;
      v58 = v79;
      v56 = v77;
      nullsub_1();
      sub_1E4A49D24(v29, &v45);
    }

    else
    {
      nullsub_1();
      v52 = v83;
      v53 = v84;
      v54 = v85;
      v55 = v86;
      v48 = v79;
      v49 = v80;
      v50 = v81;
      v51 = v82;
      v46 = v77;
      v47 = v78;
      nullsub_1();
      v56 = v77;
      v57 = v78;
      v60 = v81;
      v61 = v82;
      v58 = v79;
      v59 = v80;
      v65 = v86;
      v63 = v84;
      v64 = v85;
      v62 = v83;
      nullsub_1();

      sub_1E4AAAA10();
      v36 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();
      sub_1E4A4DC88(&v77, &qword_1ECF8E700, &qword_1E4AAEE50);
      (*(v43 + 8))(v5, v44);
    }

    v62 = v72;
    v63 = v73;
    v64 = v74;
    v58 = v68;
    v59 = v69;
    v60 = v70;
    v61 = v71;
    v56 = v66;
    v57 = v67;
    sub_1E4A49CD0(&v56);
    if ((BYTE8(v58) & 1) == 0 && !v41)
    {
      v37 = v42;

      sub_1E4AAAA10();
      v38 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();
      v39 = sub_1E4AA650C(v37, 0);
      (*(v43 + 8))(v5, v44, v39);
    }

    sub_1E4AA71C8(v21, v14, COERCE__INT64(v18 / v20), 0, &v46);

    v30 = v46;
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v35 = v51;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
  }

  *a1 = v30;
  a1[1] = v31;
  a1[2] = v32;
  a1[3] = v33;
  a1[4] = v34;
  a1[5] = v35;
}

void sub_1E4AA6EC4(uint64_t a1@<X8>)
{
  v2 = sub_1E4AAA610();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WKWallpaperImageViewModel(0);
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel, &unk_1E4AB2D60);
  sub_1E4AAA1F0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  v5 = 0uLL;
  if (v22)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    sub_1E4AAA1F0();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1E4AAA140();

    if (v20)
    {
      v13 = v15;
      v12 = v16;
      (*(v15 + 104))(v4, *MEMORY[0x1E6981630], v16);
      v11 = sub_1E4AAA650();

      (*(v13 + 8))(v4, v12);
      sub_1E4AAA6F0();
      sub_1E4AAA230();
      v6 = v20;
      v7 = v22;
      v5 = v24;
      v19 = v21;
      v18 = v23;
      v17 = 1;
      v10 = v21;
      v9 = v23;
      v8 = 257;
    }

    else
    {
      v11 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v5 = 0uLL;
    }
  }

  *a1 = v11;
  *(a1 + 8) = v6;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
}

uint64_t sub_1E4AA71C8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1E4AAA200();
  v11 = v34;
  v12 = v34 * 0.5;
  v13 = v35;
  v14 = DWORD1(v35);
  v15 = *(&v35 + 1);
  v16 = v36;
  v17 = sub_1E4AAA6F0();
  *v37 = v34 * 0.5;
  *(v37 + 1) = v34;
  v37[1] = v35;
  *v38 = v36;
  *&v38[16] = a1;
  *&v38[20] = 256;
  *v33 = v36;
  *&v33[14] = *&v38[14];
  v18 = *v33;
  v41 = *v33;
  v31 = v37[0];
  v32 = v35;
  v40 = v35;
  v39 = v37[0];
  v19 = *&v33[16];
  *&v42 = *&v33[16];
  *(&v42 + 1) = v17;
  v43 = v20;
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  *(a5 + 17) = HIBYTE(a4) & 1;
  *(a5 + 24) = v39;
  v21 = v40;
  *(a5 + 72) = v42;
  v22 = v41;
  *(a5 + 88) = v20;
  *(a5 + 56) = v22;
  *(a5 + 40) = v21;
  v44[2] = v18;
  v44[1] = v32;
  v44[0] = v31;
  v45 = v19;
  v46 = v17;
  v47 = v20;
  sub_1E4A52D40(v37, v24, &unk_1ECF8EE10, &qword_1E4AB53C8);
  sub_1E4A52D40(&v39, v24, &qword_1ECF8EDF0, &qword_1E4AB5360);

  sub_1E4A4DC88(v44, &qword_1ECF8EDF0, &qword_1E4AB5360);
  *v24 = v12;
  *&v24[1] = v11;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = a1;
  v30 = 256;
  return sub_1E4A4DC88(v24, &unk_1ECF8EE10, &qword_1E4AB53C8);
}

uint64_t sub_1E4AA73CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 185))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4AA7414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 184) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKWallpaperImage.ImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKWallpaperImage.ImageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4AA75E8()
{
  result = qword_1EE042370;
  if (!qword_1EE042370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDB0, &qword_1E4AB5320);
    sub_1E4AA7674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042370);
  }

  return result;
}

unint64_t sub_1E4AA7674()
{
  result = qword_1EE042388;
  if (!qword_1EE042388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDB8, &qword_1E4AB5328);
    sub_1E4AA7700();
    sub_1E4AA7828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042388);
  }

  return result;
}

unint64_t sub_1E4AA7700()
{
  result = qword_1EE0423A0;
  if (!qword_1EE0423A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDC0, &qword_1E4AB5330);
    sub_1E4AA77A4();
    sub_1E4AA79F8(&qword_1EE0439B0, &qword_1ECF8EDA0, &qword_1E4AB5130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423A0);
  }

  return result;
}

unint64_t sub_1E4AA77A4()
{
  result = qword_1EE0423C8;
  if (!qword_1EE0423C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDC8, &qword_1E4AB5338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423C8);
  }

  return result;
}

unint64_t sub_1E4AA7828()
{
  result = qword_1EE042290;
  if (!qword_1EE042290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042290);
  }

  return result;
}

uint64_t sub_1E4AA787C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4AA78C4()
{
  result = qword_1EE0439D0;
  if (!qword_1EE0439D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDE0, &qword_1E4AB5350);
    sub_1E4AA7988(&qword_1EE043A00, &qword_1ECF8EDE8, &qword_1E4AB5358);
    sub_1E4AA79F8(&qword_1EE0439B8, &qword_1ECF8EDF0, &qword_1E4AB5360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0439D0);
  }

  return result;
}

uint64_t sub_1E4AA7988(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E4AA79F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E4AA7A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AA7AF8()
{
  result = qword_1EE0439E8;
  if (!qword_1EE0439E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EE00, &qword_1E4AB5370);
    sub_1E4AA7988(&qword_1EE043A08, &qword_1ECF8EE08, &qword_1E4AB5378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0439E8);
  }

  return result;
}

double sub_1E4AA7BA4@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E4AA7C2C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4AAA150();
}

void sub_1E4AA7CB0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  *a2 = v3;
}

uint64_t sub_1E4AA7D30(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4AAA150();
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}