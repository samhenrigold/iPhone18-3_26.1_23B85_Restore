BOOL CRStruct_8.merge(delta:)(uint64_t a1, uint64_t a2, int *a3)
{
  v213 = a3;
  v220 = a1;
  v4 = *(a3 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v212 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v184 = *(v7 - 8);
  v185 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v183 = &v137 - v8;
  v186 = v6;
  v192 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v153 = &v137 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v152 = swift_getAssociatedConformanceWitness();
  v217 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v180 = *(v13 - 8);
  v181 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v137 - v14;
  v191 = v12;
  v182 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v137 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v150 = swift_getAssociatedConformanceWitness();
  v211 = v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v176 = *(v19 - 8);
  v177 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v137 - v20;
  v190 = v18;
  v178 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v137 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v148 = swift_getAssociatedConformanceWitness();
  v219 = v23;
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1AE23D7CC();
  v172 = *(v25 - 8);
  v173 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v137 - v26;
  v189 = v24;
  v174 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v147 = &v137 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v146 = swift_getAssociatedConformanceWitness();
  v216 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v167 = *(v31 - 8);
  v168 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v166 = &v137 - v32;
  v170 = v30;
  v169 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v145 = &v137 - v34;
  v35 = swift_getAssociatedTypeWitness();
  v144 = swift_getAssociatedConformanceWitness();
  v215 = v35;
  v36 = swift_getAssociatedTypeWitness();
  v37 = sub_1AE23D7CC();
  v162 = *(v37 - 8);
  v163 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v161 = &v137 - v38;
  v165 = v36;
  v164 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v143 = &v137 - v40;
  v41 = swift_getAssociatedTypeWitness();
  v142 = swift_getAssociatedConformanceWitness();
  v214 = v41;
  v42 = swift_getAssociatedTypeWitness();
  v43 = sub_1AE23D7CC();
  v157 = *(v43 - 8);
  v158 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v156 = &v137 - v44;
  v160 = v42;
  v159 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v141 = &v137 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v140 = swift_getAssociatedConformanceWitness();
  v218 = v47;
  v48 = swift_getAssociatedTypeWitness();
  v49 = sub_1AE23D7CC();
  v187 = *(v49 - 8);
  v188 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v137 - v50;
  v194 = v48;
  v193 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v155 = &v137 - v53;
  v54 = CRStruct_8.canMerge(delta:)(v220, a2, v213);
  if (v54)
  {
    v138 = v54;
    v55 = *(v4 + 144);
    v139 = v4;
    v55(v229, a2, v4);
    v56 = v229[1];
    v57 = v229[5];
    v58 = v229[7];
    v137 = a2;
    v210 = v229[8];
    v209 = v229[11];
    v59 = v229[14];
    v208 = v229[17];
    v60 = v229[19];
    v61 = v229[20];
    v62 = v229[23];
    v206 = v229[2];
    v204 = v229[4];
    v201 = v229[10];
    v197 = v229[13];
    v198 = v229[22];
    v195 = v229[16];
    v63 = v220;
    (*(v187 + 16))(v51, v220, v188);
    v64 = (*(v193 + 48))(v51, 1, v194);
    v207 = v56;
    v205 = v62;
    v203 = v57;
    v202 = v58;
    v199 = v60;
    v200 = v59;
    v196 = v61;
    if (v64 == 1)
    {
      (*(v187 + 8))(v51, v188);
      v66 = v157;
      v67 = v137;
    }

    else
    {
      (*(v193 + 32))(v155, v51, v194);
      v67 = v137;
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      (*(*(TupleTypeMetadata - 8) + 16))(&TupleTypeMetadata2, v229, TupleTypeMetadata);

      v69 = swift_modifyAtWritableKeyPath();
      v70 = v155;
      (*(v140 + 112))(v155, v218);
      v69(&TupleTypeMetadata2, 0);

      (*(v193 + 8))(v70, v194);
      v66 = v157;
    }

    v213 = type metadata accessor for CRStructMergeableDelta_8(0, v67, v213, v65);
    v71 = v156;
    v72 = v158;
    (*(v66 + 16))(v156, v63 + v213[9], v158);
    v73 = v159;
    v74 = v160;
    if ((*(v159 + 48))(v71, 1, v160) == 1)
    {
      (*(v66 + 8))(v71, v72);
    }

    else
    {
      v75 = v141;
      (*(v73 + 32))(v141, v71, v74);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v76 = v214;
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      v77 = swift_getTupleTypeMetadata();
      (*(*(v77 - 8) + 16))(&TupleTypeMetadata2, v229, v77);

      v78 = swift_modifyAtWritableKeyPath();
      (*(v142 + 112))(v75, v76);
      v78(&TupleTypeMetadata2, 0);
      v63 = v220;

      (*(v73 + 8))(v75, v74);
    }

    v79 = v165;
    v80 = v161;
    v81 = v162;
    v82 = v163;
    (*(v162 + 16))(v161, v63 + v213[10], v163);
    v83 = v164;
    if ((*(v164 + 48))(v80, 1, v79) == 1)
    {
      (*(v81 + 8))(v80, v82);
    }

    else
    {
      v84 = v143;
      (*(v83 + 32))(v143, v80, v79);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      v85 = v215;
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      v86 = swift_getTupleTypeMetadata();
      (*(*(v86 - 8) + 16))(&TupleTypeMetadata2, v229, v86);

      v87 = swift_modifyAtWritableKeyPath();
      (*(v144 + 112))(v84, v85);
      v87(&TupleTypeMetadata2, 0);
      v63 = v220;

      (*(v83 + 8))(v84, v79);
    }

    v89 = v167;
    v88 = v168;
    v90 = v166;
    (*(v167 + 16))(v166, v63 + v213[11], v168);
    v91 = v169;
    v92 = v170;
    if ((*(v169 + 48))(v90, 1, v170) == 1)
    {
      (*(v89 + 8))(v90, v88);
    }

    else
    {
      v93 = v145;
      (*(v91 + 32))(v145, v90, v92);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      v94 = v216;
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      v95 = swift_getTupleTypeMetadata();
      (*(*(v95 - 8) + 16))(&TupleTypeMetadata2, v229, v95);

      v96 = swift_modifyAtWritableKeyPath();
      (*(v146 + 112))(v93, v94);
      v96(&TupleTypeMetadata2, 0);
      v63 = v220;

      (*(v91 + 8))(v93, v92);
    }

    v98 = v172;
    v97 = v173;
    v99 = v171;
    (*(v172 + 16))(v171, v63 + v213[12], v173);
    v100 = v174;
    v101 = v189;
    if ((*(v174 + 48))(v99, 1, v189) == 1)
    {
      (*(v98 + 8))(v99, v97);
    }

    else
    {
      v102 = v101;
      v103 = v147;
      (*(v100 + 32))(v147, v99, v102);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      v104 = v219;
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      v105 = swift_getTupleTypeMetadata();
      (*(*(v105 - 8) + 16))(&TupleTypeMetadata2, v229, v105);

      v106 = swift_modifyAtWritableKeyPath();
      (*(v148 + 112))(v103, v104);
      v106(&TupleTypeMetadata2, 0);
      v63 = v220;

      (*(v100 + 8))(v103, v189);
    }

    v107 = v190;
    v109 = v175;
    v108 = v176;
    v110 = v177;
    (*(v176 + 16))(v175, v63 + v213[13], v177);
    v111 = v178;
    if ((*(v178 + 48))(v109, 1, v107) == 1)
    {
      (*(v108 + 8))(v109, v110);
    }

    else
    {
      v115 = v149;
      (*(v111 + 32))(v149, v109, v107);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      v116 = v211;
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      v117 = swift_getTupleTypeMetadata();
      (*(*(v117 - 8) + 16))(&TupleTypeMetadata2, v229, v117);

      v118 = swift_modifyAtWritableKeyPath();
      (*(v150 + 112))(v115, v116);
      v118(&TupleTypeMetadata2, 0);
      v63 = v220;

      (*(v111 + 8))(v115, v190);
    }

    v112 = v191;
    v114 = v181;
    v113 = v182;
    v120 = v179;
    v119 = v180;
    (*(v180 + 16))(v179, v63 + v213[14], v181);
    if ((*(v113 + 48))(v120, 1, v112) == 1)
    {
      (*(v119 + 8))(v120, v114);
    }

    else
    {
      v121 = v151;
      (*(v113 + 32))(v151, v120, v112);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      v122 = v217;
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      v123 = swift_getTupleTypeMetadata();
      (*(*(v123 - 8) + 16))(&TupleTypeMetadata2, v229, v123);

      v124 = swift_modifyAtWritableKeyPath();
      (*(v152 + 112))(v121, v122);
      v124(&TupleTypeMetadata2, 0);
      v63 = v220;

      (*(v113 + 8))(v121, v191);
    }

    v125 = v192;
    v127 = v184;
    v126 = v185;
    v128 = v63 + v213[15];
    v129 = v183;
    (*(v184 + 16))(v183, v128, v185);
    v130 = v186;
    if ((*(v125 + 48))(v129, 1, v186) == 1)
    {
      (*(v127 + 8))(v129, v126);
    }

    else
    {
      v131 = v153;
      (*(v125 + 32))(v153, v129, v130);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v223 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v224 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v225 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v226 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v227 = swift_getTupleTypeMetadata2();
      v132 = v212;
      sub_1AE23DB8C();
      v228 = swift_getTupleTypeMetadata2();
      v133 = swift_getTupleTypeMetadata();
      (*(*(v133 - 8) + 16))(&TupleTypeMetadata2, v229, v133);

      v134 = swift_modifyAtWritableKeyPath();
      (*(AssociatedConformanceWitness + 112))(v131, v132);
      v134(&TupleTypeMetadata2, 0);

      (*(v192 + 8))(v131, v130);
    }

    (*(*(v139 + 8) + 64))(v67);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v222 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v223 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v224 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v225 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v226 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v227 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v228 = swift_getTupleTypeMetadata2();
    v135 = swift_getTupleTypeMetadata();
    (*(*(v135 - 8) + 8))(v229, v135);
    LOBYTE(v54) = v138;
  }

  return v54;
}

BOOL CRStruct_8.canMerge(delta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v254 = a1;
  v225 = a3;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v162 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v161 = &v157 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v247 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v171 = *(v8 - 8);
  v172 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v170 = &v157 - v9;
  v175 = v7;
  v174 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v157 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v165 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v164 = &v157 - v13;
  v163 = swift_getAssociatedConformanceWitness();
  v246 = v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v181 = *(v15 - 8);
  v182 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v180 = &v157 - v16;
  v192 = v14;
  v184 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v183 = &v157 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v169 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v168 = &v157 - v20;
  v167 = swift_getAssociatedConformanceWitness();
  v250 = v19;
  v21 = swift_getAssociatedTypeWitness();
  v22 = sub_1AE23D7CC();
  v189 = *(v22 - 8);
  v190 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v188 = &v157 - v23;
  v199 = v21;
  v191 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v166 = &v157 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v179 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v178 = &v157 - v27;
  v177 = swift_getAssociatedConformanceWitness();
  v245 = v26;
  v28 = swift_getAssociatedTypeWitness();
  v29 = sub_1AE23D7CC();
  v196 = *(v29 - 8);
  v197 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v219 = &v157 - v30;
  v209 = v28;
  v198 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v176 = &v157 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v187 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v186 = &v157 - v34;
  v185 = swift_getAssociatedConformanceWitness();
  v231 = v33;
  v35 = swift_getAssociatedTypeWitness();
  v36 = sub_1AE23D7CC();
  v205 = *(v36 - 8);
  v206 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v204 = &v157 - v37;
  v220 = v35;
  v208 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v207 = &v157 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v195 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v194 = &v157 - v41;
  v193 = swift_getAssociatedConformanceWitness();
  v253 = v40;
  v42 = swift_getAssociatedTypeWitness();
  v43 = sub_1AE23D7CC();
  v215 = *(v43 - 8);
  v216 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v214 = &v157 - v44;
  v226 = v42;
  v218 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v217 = &v157 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v203 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v202 = &v157 - v48;
  v201 = swift_getAssociatedConformanceWitness();
  v252 = v47;
  v49 = swift_getAssociatedTypeWitness();
  v223 = sub_1AE23D7CC();
  v222 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v221 = &v157 - v50;
  v228 = v49;
  v224 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v200 = &v157 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v213 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v212 = &v157 - v54;
  v211 = swift_getAssociatedConformanceWitness();
  v248 = v53;
  v55 = swift_getAssociatedTypeWitness();
  v56 = sub_1AE23D7CC();
  v227 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v157 - v57;
  v59 = *(v55 - 8);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v210 = &v157 - v62;
  v63 = *(v4 + 144);
  v230 = a2;
  v63(v263, a2, v4, v61);
  v249 = v263[1];
  v251 = v263[2];
  v244 = v263[4];
  v243 = v263[5];
  v242 = v263[7];
  v240 = v263[8];
  v239 = v263[10];
  v238 = v263[11];
  v237 = v263[13];
  v236 = v263[14];
  v235 = v263[16];
  v234 = v263[17];
  v233 = v263[19];
  v232 = v263[20];
  v64 = v263[22];
  v65 = v227;
  v241 = v263[23];
  (*(v227 + 16))(v58, v254, v56);
  v66 = v59;
  v67 = (*(v59 + 48))(v58, 1, v55);
  v229 = v64;
  if (v67 == 1)
  {
    (*(v65 + 8))(v58, v56);
    v69 = v230;
  }

  else
  {
    v158 = v59;
    v159 = v55;
    v70 = v210;
    (*(v66 + 32))(v210, v58, v55);
    v69 = v230;
    v71 = v248;
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v73 = *(TupleTypeMetadata - 8);
    (*(v73 + 16))(&TupleTypeMetadata2, v263, TupleTypeMetadata);

    v74 = v212;
    swift_getAtKeyPath();

    v75 = (*(v211 + 104))(v70, v71);
    (*(v213 + 8))(v74, v71);
    (*(v158 + 8))(v70, v159);
    if ((v75 & 1) == 0)
    {
      (*(v73 + 8))(v263, TupleTypeMetadata);
      return 0;
    }
  }

  v76 = type metadata accessor for CRStructMergeableDelta_8(0, v69, v225, v68);
  v77 = v222;
  v78 = v221;
  v79 = v223;
  (*(v222 + 16))(v221, v254 + *(v76 + 36), v223);
  v80 = v224;
  v81 = v228;
  if ((*(v224 + 48))(v78, 1, v228) == 1)
  {
    (*(v77 + 8))(v78, v79);
  }

  else
  {
    v82 = v200;
    (*(v80 + 32))(v200, v78, v81);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    v83 = swift_getTupleTypeMetadata();
    v84 = *(v83 - 8);
    v85 = *(v84 + 16);
    v227 = v83;
    v85(&TupleTypeMetadata2, v263);

    v86 = v202;
    swift_getAtKeyPath();

    v87 = v76;
    v88 = v252;
    v89 = (*(v201 + 104))(v82, v252);
    v90 = v88;
    v76 = v87;
    (*(v203 + 8))(v86, v90);
    (*(v80 + 8))(v82, v228);
    if ((v89 & 1) == 0)
    {
      (*(v84 + 8))(v263, v227);
      return 0;
    }
  }

  v228 = v76;
  v91 = *(v76 + 40);
  v93 = v214;
  v92 = v215;
  v94 = v216;
  (*(v215 + 16))(v214, v254 + v91, v216);
  v95 = v218;
  v96 = v226;
  if ((*(v218 + 48))(v93, 1, v226) == 1)
  {
    (*(v92 + 8))(v93, v94);
    v97 = v219;
    v98 = v231;
  }

  else
  {
    (*(v95 + 32))(v217, v93, v96);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    v99 = v253;
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    v98 = v231;
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    v100 = swift_getTupleTypeMetadata();
    v101 = *(v100 - 8);
    (*(v101 + 16))(&TupleTypeMetadata2, v263, v100);

    v102 = v194;
    swift_getAtKeyPath();

    v103 = v217;
    v104 = (*(v193 + 104))(v217, v99);
    (*(v195 + 8))(v102, v99);
    (*(v95 + 8))(v103, v226);
    v97 = v219;
    if ((v104 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v105 = v204;
  v106 = v205;
  v107 = v206;
  (*(v205 + 16))(v204, v254 + v228[11], v206);
  v108 = v208;
  v109 = v220;
  if ((*(v208 + 48))(v105, 1, v220) == 1)
  {
    (*(v106 + 8))(v105, v107);
  }

  else
  {
    (*(v108 + 32))(v207, v105, v109);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    v110 = swift_getTupleTypeMetadata();
    v111 = *(v110 - 8);
    (*(v111 + 16))(&TupleTypeMetadata2, v263, v110);

    v112 = v186;
    swift_getAtKeyPath();

    v113 = v207;
    v114 = (*(v185 + 104))(v207, v98);
    (*(v187 + 8))(v112, v98);
    (*(v108 + 8))(v113, v220);
    if ((v114 & 1) == 0)
    {
      (*(v111 + 8))(v263, v110);
      return 0;
    }
  }

  v116 = v196;
  v115 = v197;
  (*(v196 + 16))(v97, v254 + v228[12], v197);
  v117 = v198;
  v118 = v209;
  if ((*(v198 + 48))(v97, 1, v209) == 1)
  {
    (*(v116 + 8))(v97, v115);
  }

  else
  {
    v119 = v176;
    (*(v117 + 32))(v176, v97, v118);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    v120 = v245;
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    v100 = swift_getTupleTypeMetadata();
    v101 = *(v100 - 8);
    (*(v101 + 16))(&TupleTypeMetadata2, v263, v100);

    v121 = v178;
    swift_getAtKeyPath();

    v122 = (*(v177 + 104))(v119, v120);
    (*(v179 + 8))(v121, v120);
    (*(v117 + 8))(v119, v209);
    if ((v122 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v124 = v188;
  v123 = v189;
  v125 = v190;
  (*(v189 + 16))(v188, v254 + v228[13], v190);
  v126 = v191;
  v127 = v199;
  if ((*(v191 + 48))(v124, 1, v199) == 1)
  {
    (*(v123 + 8))(v124, v125);
  }

  else
  {
    v128 = v166;
    (*(v126 + 32))(v166, v124, v127);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    v129 = v250;
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    v130 = swift_getTupleTypeMetadata();
    v131 = *(v130 - 8);
    (*(v131 + 16))(&TupleTypeMetadata2, v263, v130);

    v132 = v168;
    swift_getAtKeyPath();

    v133 = (*(v167 + 104))(v128, v129);
    (*(v169 + 8))(v132, v129);
    (*(v126 + 8))(v128, v199);
    if ((v133 & 1) == 0)
    {
      (*(v131 + 8))(v263, v130);
      return 0;
    }
  }

  v135 = v180;
  v134 = v181;
  v136 = v182;
  (*(v181 + 16))(v180, v254 + v228[14], v182);
  v137 = v184;
  v138 = v192;
  if ((*(v184 + 48))(v135, 1, v192) != 1)
  {
    (*(v137 + 32))(v183, v135, v138);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    v139 = v246;
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    v100 = swift_getTupleTypeMetadata();
    v101 = *(v100 - 8);
    (*(v101 + 16))(&TupleTypeMetadata2, v263, v100);

    v140 = v164;
    swift_getAtKeyPath();

    v141 = v183;
    v142 = (*(v163 + 104))(v183, v139);
    (*(v165 + 8))(v140, v139);
    (*(v137 + 8))(v141, v192);
    if (v142)
    {
      goto LABEL_25;
    }

LABEL_27:
    (*(v101 + 8))(v263, v100);
    return 0;
  }

  (*(v134 + 8))(v135, v136);
LABEL_25:
  v144 = v170;
  v143 = v171;
  v145 = v172;
  (*(v171 + 16))(v170, v254 + v228[15], v172);
  v146 = v174;
  v147 = v175;
  if ((*(v174 + 48))(v144, 1, v175) == 1)
  {
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v262 = swift_getTupleTypeMetadata2();
    v148 = swift_getTupleTypeMetadata();
    (*(*(v148 - 8) + 8))(v263, v148);
    (*(v143 + 8))(v144, v145);
    return 1;
  }

  (*(v146 + 32))(v173, v144, v147);
  sub_1AE23DB8C();
  v150 = v146;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v256 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v257 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v258 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v259 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v261 = swift_getTupleTypeMetadata2();
  v151 = v247;
  sub_1AE23DB8C();
  v262 = swift_getTupleTypeMetadata2();
  v152 = swift_getTupleTypeMetadata();
  v153 = *(v152 - 8);
  (*(v153 + 16))(&TupleTypeMetadata2, v263, v152);

  v154 = v161;
  swift_getAtKeyPath();

  v155 = v173;
  v156 = (*(AssociatedConformanceWitness + 104))(v173, v151);
  (*(v153 + 8))(v263, v152);
  (*(v162 + 8))(v154, v151);
  (*(v150 + 8))(v155, v147);
  return (v156 & 1) != 0;
}

uint64_t CRStruct_9.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v194 = a4;
  v195 = a5;
  v229 = a2;
  v230 = a1;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v180 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v179 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v134 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v135 = swift_getAssociatedTypeWitness();
  v199 = sub_1AE23D7CC();
  v202 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v150 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v224 = &v134 - v12;
  v215 = swift_getAssociatedTypeWitness();
  v176 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v175 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v220 = &v134 - v15;
  v174 = swift_getAssociatedConformanceWitness();
  v136 = swift_getAssociatedTypeWitness();
  v196 = sub_1AE23D7CC();
  v188 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v149 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v225 = &v134 - v18;
  v217 = swift_getAssociatedTypeWitness();
  v173 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v172 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v219 = &v134 - v21;
  v171 = swift_getAssociatedConformanceWitness();
  v137 = swift_getAssociatedTypeWitness();
  v201 = sub_1AE23D7CC();
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v148 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v226 = &v134 - v24;
  v213 = swift_getAssociatedTypeWitness();
  v168 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v167 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v214 = &v134 - v27;
  v166 = swift_getAssociatedConformanceWitness();
  v138 = swift_getAssociatedTypeWitness();
  v28 = sub_1AE23D7CC();
  v197 = *(v28 - 8);
  v198 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v147 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v227 = &v134 - v31;
  v210 = swift_getAssociatedTypeWitness();
  v165 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v164 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v212 = &v134 - v34;
  v163 = swift_getAssociatedConformanceWitness();
  v139 = swift_getAssociatedTypeWitness();
  v35 = sub_1AE23D7CC();
  v36 = *(v35 - 8);
  v192 = v35;
  v193 = v36;
  MEMORY[0x1EEE9AC00](v35);
  v146 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v221 = &v134 - v39;
  v208 = swift_getAssociatedTypeWitness();
  v162 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v161 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v211 = &v134 - v42;
  v160 = swift_getAssociatedConformanceWitness();
  v140 = swift_getAssociatedTypeWitness();
  v43 = sub_1AE23D7CC();
  v190 = *(v43 - 8);
  v191 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v145 = &v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v228 = &v134 - v46;
  v207 = swift_getAssociatedTypeWitness();
  v159 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v158 = &v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v209 = &v134 - v49;
  v157 = swift_getAssociatedConformanceWitness();
  v141 = swift_getAssociatedTypeWitness();
  v50 = sub_1AE23D7CC();
  v186 = *(v50 - 8);
  v187 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v144 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v222 = &v134 - v53;
  v205 = swift_getAssociatedTypeWitness();
  v156 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v155 = &v134 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v206 = &v134 - v56;
  v154 = swift_getAssociatedConformanceWitness();
  v142 = swift_getAssociatedTypeWitness();
  v57 = sub_1AE23D7CC();
  v184 = *(v57 - 8);
  v185 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v143 = &v134 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v223 = &v134 - v60;
  v203 = swift_getAssociatedTypeWitness();
  v153 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v152 = &v134 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v204 = &v134 - v63;
  v151 = swift_getAssociatedConformanceWitness();
  v169 = swift_getAssociatedTypeWitness();
  v64 = sub_1AE23D7CC();
  v182 = *(v64 - 8);
  v183 = v64;
  MEMORY[0x1EEE9AC00](v64);
  v181 = &v134 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v66);
  v216 = &v134 - v68;
  v69 = *(v6 + 160);
  v189 = a3;
  v69(v253, a3, v6, v67);
  v234 = v253[1];
  v242 = v253[2];
  v250 = v253[4];
  v246 = v253[5];
  v235 = v253[7];
  v247 = v253[8];
  v245 = v253[10];
  v244 = v253[11];
  v239 = v253[13];
  v233 = v253[14];
  v238 = v253[16];
  v248 = v253[17];
  v240 = v253[22];
  v241 = v253[23];
  v236 = v253[19];
  v237 = v253[20];
  v70 = v253[25];
  v232 = v253[26];
  sub_1AE23DB8C();
  v252[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252[8] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v170 = *(TupleTypeMetadata - 8);
  v71 = *(v170 + 16);
  v243 = v170 + 16;
  v249 = v71;
  v71(v252, v253, TupleTypeMetadata);

  v231 = v70;

  swift_getAtKeyPath();

  v249(v252, v253, TupleTypeMetadata);

  v72 = v152;
  swift_getAtKeyPath();

  v73 = v204;
  v74 = v203;
  (*(v151 + 96))(v230, v72, v203);
  v75 = *(v153 + 8);
  v75(v72, v74);
  v75(v73, v74);
  v249(v252, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v249(v252, v253, TupleTypeMetadata);

  v76 = v155;
  swift_getAtKeyPath();

  v77 = v206;
  v78 = v205;
  (*(v154 + 96))(v230, v76, v205);
  v79 = *(v156 + 8);
  v79(v76, v78);
  v79(v77, v78);
  v80 = TupleTypeMetadata;
  v81 = v249;
  v249(v252, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v81(v252, v253, v80);

  v82 = v158;
  swift_getAtKeyPath();

  v83 = v209;
  v84 = v207;
  (*(v157 + 96))(v230, v82, v207);
  v85 = *(v159 + 8);
  v85(v82, v84);
  v85(v83, v84);
  v249(v252, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v249(v252, v253, TupleTypeMetadata);

  v86 = v161;
  swift_getAtKeyPath();

  v87 = v211;
  v88 = v208;
  (*(v160 + 96))(v230, v86, v208);
  v89 = *(v162 + 8);
  v89(v86, v88);
  v89(v87, v88);
  v90 = TupleTypeMetadata;
  v91 = v249;
  v249(v252, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v91(v252, v253, v90);

  v92 = v164;
  swift_getAtKeyPath();

  v93 = v212;
  v94 = v210;
  (*(v163 + 96))(v230, v92, v210);
  v95 = *(v165 + 8);
  v95(v92, v94);
  v95(v93, v94);
  v249(v252, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v249(v252, v253, TupleTypeMetadata);

  v96 = v167;
  swift_getAtKeyPath();

  v97 = v214;
  v98 = v213;
  (*(v166 + 96))(v230, v96, v213);
  v99 = *(v168 + 8);
  v99(v96, v98);
  v99(v97, v98);
  v249(v252, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v249(v252, v253, TupleTypeMetadata);

  v100 = v172;
  swift_getAtKeyPath();

  v101 = v219;
  v102 = v217;
  (*(v171 + 96))(v230, v100, v217);
  v103 = *(v173 + 8);
  v103(v100, v102);
  v103(v101, v102);
  v104 = TupleTypeMetadata;
  v105 = v249;
  v249(v252, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v105(v252, v253, v104);

  v106 = v175;
  swift_getAtKeyPath();

  v107 = v106;
  v108 = v220;
  v109 = v215;
  (*(v174 + 96))(v230, v106, v215);
  v110 = *(v176 + 8);
  v110(v107, v109);
  v110(v108, v109);
  v249(v252, v253, TupleTypeMetadata);

  v111 = v177;
  swift_getAtKeyPath();

  v249(v252, v253, TupleTypeMetadata);

  v112 = v221;

  v113 = v179;
  swift_getAtKeyPath();

  v114 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 96))(v230, v113, AssociatedTypeWitness);
  v115 = *(v180 + 8);
  v115(v113, v114);
  v116 = v223;
  v117 = v222;
  v118 = v216;
  v115(v111, v114);
  if ((*(*(v169 - 8) + 48))(v118, 1) != 1 || (*(*(v142 - 8) + 48))(v116, 1) != 1 || (*(*(v141 - 8) + 48))(v117, 1) != 1 || (*(*(v140 - 8) + 48))(v228, 1) != 1 || (*(*(v139 - 8) + 48))(v112, 1) != 1 || (*(*(v138 - 8) + 48))(v227, 1) != 1 || (*(*(v137 - 8) + 48))(v226, 1) != 1 || (*(*(v136 - 8) + 48))(v225, 1) != 1 || (v119 = 1, (*(*(v135 - 8) + 48))(v224, 1) != 1))
  {
    (*(v182 + 16))(v181, v118, v183);
    v120 = v143;
    (*(v184 + 16))(v143, v116, v185);
    v121 = v144;
    (*(v186 + 16))(v144, v117, v187);
    v122 = v145;
    (*(v190 + 16))(v145, v228, v191);
    v123 = v146;
    (*(v193 + 16))(v146, v112, v192);
    v124 = v147;
    (*(v197 + 16))(v147, v227, v198);
    v125 = v148;
    (*(v200 + 16))(v148, v226, v201);
    v126 = v149;
    (*(v188 + 16))(v149, v225, v196);
    v127 = v150;
    (*(v202 + 16))(v150, v224, v199);
    v128 = v121;
    v116 = v223;
    v129 = v123;
    v117 = v222;
    v130 = v124;
    v112 = v221;
    CRStructMergeableDelta_9.init(_:_:_:_:_:_:_:_:_:)(v181, v120, v128, v122, v129, v130, v125, v126, v195, v127, v189, v194);
    v119 = 0;
  }

  (*(v170 + 8))(v253, TupleTypeMetadata);
  (*(v182 + 8))(v118, v183);
  v132 = type metadata accessor for CRStructMergeableDelta_9(0, v189, v194, v131);
  (*(*(v132 - 8) + 56))(v195, v119, 1, v132);
  (*(v202 + 8))(v224, v199);
  (*(v188 + 8))(v225, v196);
  (*(v200 + 8))(v226, v201);
  (*(v197 + 8))(v227, v198);
  (*(v193 + 8))(v112, v192);
  (*(v190 + 8))(v228, v191);
  (*(v186 + 8))(v117, v187);
  return (*(v184 + 8))(v116, v185);
}

BOOL CRStruct_9.merge(delta:)(uint64_t a1, uint64_t a2, int *a3)
{
  v249 = a3;
  v252 = a1;
  v4 = *(a3 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v243 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v217 = *(v7 - 8);
  v218 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v216 = &v159 - v8;
  v219 = v6;
  v223 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v181 = &v159 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v180 = swift_getAssociatedConformanceWitness();
  v248 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v213 = *(v13 - 8);
  v214 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v212 = &v159 - v14;
  v222 = v12;
  v215 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v179 = &v159 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v178 = swift_getAssociatedConformanceWitness();
  v247 = v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v208 = *(v19 - 8);
  v209 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v159 - v20;
  v211 = v18;
  v210 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v159 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v176 = swift_getAssociatedConformanceWitness();
  v246 = v23;
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1AE23D7CC();
  v203 = *(v25 - 8);
  v204 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v202 = &v159 - v26;
  v206 = v24;
  v205 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v175 = &v159 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v174 = swift_getAssociatedConformanceWitness();
  v251 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v198 = *(v31 - 8);
  v199 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v197 = &v159 - v32;
  v201 = v30;
  v200 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v159 - v34;
  v35 = swift_getAssociatedTypeWitness();
  v172 = swift_getAssociatedConformanceWitness();
  v242 = v35;
  v36 = swift_getAssociatedTypeWitness();
  v37 = sub_1AE23D7CC();
  v193 = *(v37 - 8);
  v194 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v221 = &v159 - v38;
  v196 = v36;
  v195 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v171 = &v159 - v40;
  v41 = swift_getAssociatedTypeWitness();
  v170 = swift_getAssociatedConformanceWitness();
  v245 = v41;
  v42 = swift_getAssociatedTypeWitness();
  v43 = sub_1AE23D7CC();
  v189 = *(v43 - 8);
  v190 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v188 = &v159 - v44;
  v192 = v42;
  v191 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v169 = &v159 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v168 = swift_getAssociatedConformanceWitness();
  v250 = v47;
  v48 = swift_getAssociatedTypeWitness();
  v49 = sub_1AE23D7CC();
  v185 = *(v49 - 8);
  v186 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v184 = &v159 - v50;
  v187 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v167 = &v159 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v166 = swift_getAssociatedConformanceWitness();
  v244 = v53;
  v54 = swift_getAssociatedTypeWitness();
  v55 = sub_1AE23D7CC();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v159 - v57;
  v183 = v54;
  v220 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v165 = &v159 - v60;
  v61 = CRStruct_9.canMerge(delta:)(v252, a2, v249);
  if (v61)
  {
    v162 = v48;
    v163 = v61;
    v62 = *(v4 + 160);
    v164 = v4;
    v62(v262, a2, v4);
    v63 = v262[5];
    v235 = v262[8];
    v233 = v262[11];
    v64 = v56;
    v241 = v262[13];
    v161 = a2;
    v65 = v262[14];
    v66 = v55;
    v67 = v262[16];
    v68 = v262[17];
    v69 = v262[20];
    v70 = v262[22];
    v240 = v262[1];
    v225 = v262[2];
    v239 = v262[4];
    v236 = v262[7];
    v234 = v262[10];
    v229 = v262[19];
    v227 = v262[23];
    v226 = v262[25];
    v238 = v262[26];
    v159 = v64;
    v160 = v66;
    v71 = v252;
    (*(v64 + 16))(v58, v252, v66);
    v72 = v183;
    v73 = (*(v220 + 48))(v58, 1);
    v237 = v63;
    v232 = v65;
    v231 = v67;
    v230 = v68;
    v228 = v69;
    v224 = v70;
    if (v73 == 1)
    {
      (*(v159 + 8))(v58, v160);
      v75 = v186;
      v76 = v161;
    }

    else
    {
      v77 = v220;
      v78 = v165;
      v79 = v58;
      v80 = v72;
      (*(v220 + 32))(v165, v79, v72);
      v76 = v161;
      v81 = v244;
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      (*(*(TupleTypeMetadata - 8) + 16))(&TupleTypeMetadata2, v262, TupleTypeMetadata);

      v83 = swift_modifyAtWritableKeyPath();
      (*(v166 + 112))(v78, v81);
      v71 = v252;
      v83(&TupleTypeMetadata2, 0);

      (*(v77 + 8))(v78, v80);
      v75 = v186;
    }

    v249 = type metadata accessor for CRStructMergeableDelta_9(0, v76, v249, v74);
    v85 = v184;
    v84 = v185;
    (*(v185 + 16))(v184, v71 + v249[9], v75);
    v86 = v187;
    v87 = v162;
    v88 = (*(v187 + 48))(v85, 1, v162);
    v89 = v75;
    v90 = v221;
    v91 = v189;
    if (v88 == 1)
    {
      (*(v84 + 8))(v85, v89);
    }

    else
    {
      v92 = v167;
      (*(v86 + 32))(v167, v85, v87);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v93 = swift_getTupleTypeMetadata();
      (*(*(v93 - 8) + 16))(&TupleTypeMetadata2, v262, v93);

      v94 = swift_modifyAtWritableKeyPath();
      (*(v168 + 112))(v92, v250);
      v71 = v252;
      v94(&TupleTypeMetadata2, 0);

      v95 = v92;
      v90 = v221;
      (*(v86 + 8))(v95, v87);
    }

    v96 = v192;
    v97 = v188;
    v98 = v190;
    (*(v91 + 16))(v188, v71 + v249[10], v190);
    v99 = v191;
    if ((*(v191 + 48))(v97, 1, v96) == 1)
    {
      (*(v91 + 8))(v97, v98);
    }

    else
    {
      v100 = v169;
      (*(v99 + 32))(v169, v97, v96);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      v101 = v245;
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v102 = swift_getTupleTypeMetadata();
      (*(*(v102 - 8) + 16))(&TupleTypeMetadata2, v262, v102);

      v103 = swift_modifyAtWritableKeyPath();
      (*(v170 + 112))(v100, v101);
      v71 = v252;
      v103(&TupleTypeMetadata2, 0);

      (*(v99 + 8))(v100, v96);
    }

    v105 = v193;
    v104 = v194;
    (*(v193 + 16))(v90, v71 + v249[11], v194);
    v106 = v195;
    v107 = v196;
    if ((*(v195 + 48))(v90, 1, v196) == 1)
    {
      (*(v105 + 8))(v90, v104);
    }

    else
    {
      v108 = v90;
      v109 = v171;
      (*(v106 + 32))(v171, v108, v107);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      v110 = v242;
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v111 = swift_getTupleTypeMetadata();
      (*(*(v111 - 8) + 16))(&TupleTypeMetadata2, v262, v111);

      v112 = swift_modifyAtWritableKeyPath();
      (*(v172 + 112))(v109, v110);
      v71 = v252;
      v112(&TupleTypeMetadata2, 0);

      (*(v106 + 8))(v109, v107);
    }

    v114 = v199;
    v113 = v200;
    v115 = v197;
    v116 = v198;
    (*(v198 + 16))(v197, v71 + v249[12], v199);
    v117 = v201;
    if ((*(v113 + 48))(v115, 1, v201) == 1)
    {
      (*(v116 + 8))(v115, v114);
    }

    else
    {
      v120 = v173;
      (*(v113 + 32))(v173, v115, v117);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v121 = swift_getTupleTypeMetadata();
      (*(*(v121 - 8) + 16))(&TupleTypeMetadata2, v262, v121);

      v122 = swift_modifyAtWritableKeyPath();
      (*(v174 + 112))(v120, v251);
      v71 = v252;
      v122(&TupleTypeMetadata2, 0);

      (*(v113 + 8))(v120, v117);
    }

    v118 = v206;
    v119 = v204;
    v123 = v202;
    v124 = v203;
    (*(v203 + 16))(v202, v71 + v249[13], v204);
    v125 = v205;
    if ((*(v205 + 48))(v123, 1, v118) == 1)
    {
      (*(v124 + 8))(v123, v119);
    }

    else
    {
      v126 = v175;
      (*(v125 + 32))(v175, v123, v118);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      v127 = v246;
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v128 = swift_getTupleTypeMetadata();
      (*(*(v128 - 8) + 16))(&TupleTypeMetadata2, v262, v128);

      v129 = swift_modifyAtWritableKeyPath();
      (*(v176 + 112))(v126, v127);
      v71 = v252;
      v129(&TupleTypeMetadata2, 0);

      (*(v125 + 8))(v126, v118);
    }

    v131 = v209;
    v130 = v210;
    v133 = v207;
    v132 = v208;
    (*(v208 + 16))(v207, v71 + v249[14], v209);
    v134 = v211;
    if ((*(v130 + 48))(v133, 1, v211) == 1)
    {
      (*(v132 + 8))(v133, v131);
    }

    else
    {
      v137 = v177;
      (*(v130 + 32))(v177, v133, v134);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      v138 = v247;
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v139 = swift_getTupleTypeMetadata();
      (*(*(v139 - 8) + 16))(&TupleTypeMetadata2, v262, v139);

      v140 = swift_modifyAtWritableKeyPath();
      (*(v178 + 112))(v137, v138);
      v71 = v252;
      v140(&TupleTypeMetadata2, 0);

      (*(v130 + 8))(v137, v134);
    }

    v136 = v213;
    v135 = v214;
    v141 = v212;
    (*(v213 + 16))(v212, v71 + v249[15], v214);
    v142 = v215;
    v143 = v222;
    if ((*(v215 + 48))(v141, 1, v222) == 1)
    {
      (*(v136 + 8))(v141, v135);
    }

    else
    {
      v147 = v179;
      (*(v142 + 32))(v179, v141, v143);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      v148 = v248;
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v149 = swift_getTupleTypeMetadata();
      (*(*(v149 - 8) + 16))(&TupleTypeMetadata2, v262, v149);

      v150 = swift_modifyAtWritableKeyPath();
      (*(v180 + 112))(v147, v148);
      v150(&TupleTypeMetadata2, 0);

      (*(v142 + 8))(v147, v222);
    }

    v144 = v223;
    v146 = v217;
    v145 = v218;
    v151 = v216;
    (*(v217 + 16))(v216, v252 + v249[16], v218);
    v152 = v219;
    if ((*(v144 + 48))(v151, 1, v219) == 1)
    {
      (*(v146 + 8))(v151, v145);
    }

    else
    {
      v153 = v181;
      (*(v144 + 32))(v181, v151, v152);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v254 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v255 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v256 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v257 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v258 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v259 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v260 = swift_getTupleTypeMetadata2();
      v154 = v243;
      sub_1AE23DB8C();
      v261 = swift_getTupleTypeMetadata2();
      v155 = swift_getTupleTypeMetadata();
      (*(*(v155 - 8) + 16))(&TupleTypeMetadata2, v262, v155);

      v156 = swift_modifyAtWritableKeyPath();
      (*(AssociatedConformanceWitness + 112))(v153, v154);
      v156(&TupleTypeMetadata2, 0);

      (*(v223 + 8))(v153, v152);
    }

    (*(*(v164 + 8) + 64))(v76);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v254 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v255 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v256 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v261 = swift_getTupleTypeMetadata2();
    v157 = swift_getTupleTypeMetadata();
    (*(*(v157 - 8) + 8))(v262, v157);
    LOBYTE(v61) = v163;
  }

  return v61;
}

BOOL CRStruct_9.canMerge(delta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v286 = a1;
  v253 = a3;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v180 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v179 = &v175 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v277 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v189 = *(v8 - 8);
  v190 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v175 - v9;
  v192 = v7;
  v191 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v175 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v183 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v175 - v13;
  v181 = swift_getAssociatedConformanceWitness();
  v283 = v12;
  v14 = swift_getAssociatedTypeWitness();
  v198 = sub_1AE23D7CC();
  v209 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v197 = &v175 - v15;
  v210 = v14;
  v200 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v199 = &v175 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v187 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v175 - v19;
  v185 = swift_getAssociatedConformanceWitness();
  v276 = v18;
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_1AE23D7CC();
  v206 = *(v21 - 8);
  v207 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v205 = &v175 - v22;
  v218 = v20;
  v208 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v175 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v196 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v195 = &v175 - v26;
  v194 = swift_getAssociatedConformanceWitness();
  v280 = v25;
  v27 = swift_getAssociatedTypeWitness();
  v28 = sub_1AE23D7CC();
  v215 = *(v28 - 8);
  v216 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v214 = &v175 - v29;
  v224 = v27;
  v217 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v193 = &v175 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v204 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v203 = &v175 - v33;
  v202 = swift_getAssociatedConformanceWitness();
  v279 = v32;
  v34 = swift_getAssociatedTypeWitness();
  v222 = sub_1AE23D7CC();
  v244 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v243 = &v175 - v35;
  v233 = v34;
  v223 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v201 = &v175 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v213 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v212 = &v175 - v39;
  v211 = swift_getAssociatedConformanceWitness();
  v284 = v38;
  v40 = swift_getAssociatedTypeWitness();
  v41 = sub_1AE23D7CC();
  v229 = *(v41 - 8);
  v230 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v228 = &v175 - v42;
  v245 = v40;
  v232 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v231 = &v175 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v221 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v220 = &v175 - v46;
  v219 = swift_getAssociatedConformanceWitness();
  v278 = v45;
  v47 = swift_getAssociatedTypeWitness();
  v239 = sub_1AE23D7CC();
  v252 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v238 = &v175 - v48;
  v242 = v47;
  v241 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v240 = &v175 - v50;
  v285 = swift_getAssociatedTypeWitness();
  v227 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v226 = &v175 - v51;
  v225 = swift_getAssociatedConformanceWitness();
  v52 = swift_getAssociatedTypeWitness();
  v248 = sub_1AE23D7CC();
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v246 = &v175 - v53;
  v251 = v52;
  v250 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v249 = &v175 - v55;
  v56 = swift_getAssociatedTypeWitness();
  v237 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v236 = &v175 - v57;
  v235 = swift_getAssociatedConformanceWitness();
  v282 = v56;
  v58 = swift_getAssociatedTypeWitness();
  v255 = sub_1AE23D7CC();
  v256 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v254 = &v175 - v59;
  v258 = *(v58 - 8);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v234 = &v175 - v62;
  v63 = *(v4 + 160);
  v275 = a2;
  v63(v296, a2, v4, v61);
  v64 = v296[1];
  v281 = v296[2];
  v274 = v296[4];
  v273 = v296[5];
  v272 = v296[7];
  v271 = v296[8];
  v269 = v296[10];
  v268 = v296[11];
  v267 = v296[13];
  v266 = v296[14];
  v265 = v296[16];
  v264 = v296[17];
  v263 = v296[19];
  v262 = v296[20];
  v65 = v255;
  v261 = v296[22];
  v260 = v296[23];
  v66 = v254;
  v259 = v296[25];
  v270 = v296[26];
  v67 = v256;
  (*(v256 + 16))(v254, v286, v255);
  v68 = v258;
  v69 = (*(v258 + 48))(v66, 1, v58);
  v257 = v64;
  if (v69 == 1)
  {
    (*(v67 + 8))(v66, v65);
    v71 = v275;
  }

  else
  {
    v72 = *(v68 + 32);
    v73 = v234;
    v176 = v58;
    v72(v234, v66, v58);
    v71 = v275;
    v74 = v282;
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v76 = *(TupleTypeMetadata - 8);
    (*(v76 + 16))(&TupleTypeMetadata2, v296, TupleTypeMetadata);

    v77 = v236;
    swift_getAtKeyPath();

    v78 = (*(v235 + 104))(v73, v74);
    (*(v237 + 8))(v77, v74);
    (*(v258 + 8))(v73, v176);
    if ((v78 & 1) == 0)
    {
      (*(v76 + 8))(v296, TupleTypeMetadata);
      return 0;
    }
  }

  v258 = type metadata accessor for CRStructMergeableDelta_9(0, v71, v253, v70);
  v79 = v247;
  v80 = v246;
  v81 = v248;
  (*(v247 + 16))(v246, v286 + *(v258 + 36), v248);
  v82 = v250;
  v83 = v251;
  if ((*(v250 + 48))(v80, 1, v251) == 1)
  {
    (*(v79 + 8))(v80, v81);
    v84 = v252;
  }

  else
  {
    (*(v82 + 32))(v249, v80, v83);
    sub_1AE23DB8C();
    v85 = v82;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v86 = v285;
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v87 = swift_getTupleTypeMetadata();
    v88 = *(v87 - 8);
    (*(v88 + 16))(&TupleTypeMetadata2, v296, v87);

    v89 = v226;
    swift_getAtKeyPath();

    v90 = v249;
    v91 = (*(v225 + 104))(v249, v86);
    (*(v227 + 8))(v89, v86);
    (*(v85 + 8))(v90, v83);
    v84 = v252;
    if ((v91 & 1) == 0)
    {
      (*(v88 + 8))(v296, v87);
      return 0;
    }
  }

  v93 = v238;
  v92 = v239;
  (*(v84 + 16))(v238, v286 + *(v258 + 40), v239);
  v94 = v241;
  v95 = v242;
  if ((*(v241 + 48))(v93, 1, v242) == 1)
  {
    (*(v84 + 8))(v93, v92);
    v96 = v244;
    v97 = v243;
  }

  else
  {
    (*(v94 + 32))(v240, v93, v95);
    sub_1AE23DB8C();
    v98 = v95;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    v99 = v278;
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v100 = swift_getTupleTypeMetadata();
    v101 = *(v100 - 8);
    (*(v101 + 16))(&TupleTypeMetadata2, v296, v100);

    v102 = v220;
    swift_getAtKeyPath();

    v103 = v240;
    v104 = (*(v219 + 104))(v240, v99);
    (*(v221 + 8))(v102, v99);
    (*(v94 + 8))(v103, v98);
    v96 = v244;
    v97 = v243;
    if ((v104 & 1) == 0)
    {
      (*(v101 + 8))(v296, v100);
      return 0;
    }
  }

  v105 = v228;
  v106 = v229;
  v107 = v230;
  (*(v229 + 16))(v228, v286 + *(v258 + 44), v230);
  v108 = v232;
  v109 = v245;
  if ((*(v232 + 48))(v105, 1, v245) == 1)
  {
    (*(v106 + 8))(v105, v107);
  }

  else
  {
    (*(v108 + 32))(v231, v105, v109);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v110 = swift_getTupleTypeMetadata();
    v111 = *(v110 - 8);
    (*(v111 + 16))(&TupleTypeMetadata2, v296, v110);

    v112 = v212;
    swift_getAtKeyPath();

    v113 = v97;
    v114 = v96;
    v115 = v231;
    v116 = v284;
    v117 = (*(v211 + 104))(v231, v284);
    (*(v213 + 8))(v112, v116);
    v118 = v115;
    v96 = v114;
    v97 = v113;
    (*(v108 + 8))(v118, v245);
    if ((v117 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v119 = v222;
  (*(v96 + 16))(v97, v286 + *(v258 + 48), v222);
  v120 = v223;
  v121 = v233;
  if ((*(v223 + 48))(v97, 1, v233) == 1)
  {
    (*(v96 + 8))(v97, v119);
  }

  else
  {
    v122 = v201;
    (*(v120 + 32))(v201, v97, v121);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    v123 = v279;
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v124 = swift_getTupleTypeMetadata();
    v125 = *(v124 - 8);
    (*(v125 + 16))(&TupleTypeMetadata2, v296, v124);

    v126 = v203;
    swift_getAtKeyPath();

    v127 = (*(v202 + 104))(v122, v123);
    (*(v204 + 8))(v126, v123);
    (*(v120 + 8))(v122, v233);
    if ((v127 & 1) == 0)
    {
      (*(v125 + 8))(v296, v124);
      return 0;
    }
  }

  v129 = v214;
  v128 = v215;
  v130 = v216;
  (*(v215 + 16))(v214, v286 + *(v258 + 52), v216);
  v131 = v217;
  v132 = v224;
  if ((*(v217 + 48))(v129, 1, v224) == 1)
  {
    (*(v128 + 8))(v129, v130);
  }

  else
  {
    v133 = v193;
    (*(v131 + 32))(v193, v129, v132);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    v134 = v280;
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v135 = swift_getTupleTypeMetadata();
    v136 = *(v135 - 8);
    (*(v136 + 16))(&TupleTypeMetadata2, v296, v135);

    v137 = v195;
    swift_getAtKeyPath();

    v138 = (*(v194 + 104))(v133, v134);
    (*(v196 + 8))(v137, v134);
    (*(v131 + 8))(v133, v224);
    if ((v138 & 1) == 0)
    {
      (*(v136 + 8))(v296, v135);
      return 0;
    }
  }

  v139 = v205;
  v140 = v206;
  v141 = v207;
  (*(v206 + 16))(v205, v286 + *(v258 + 56), v207);
  v142 = v208;
  v143 = v218;
  if ((*(v208 + 48))(v139, 1, v218) == 1)
  {
    (*(v140 + 8))(v139, v141);
    v144 = v283;
    v145 = v209;
  }

  else
  {
    v146 = v184;
    (*(v142 + 32))(v184, v139, v143);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    v147 = v276;
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    v144 = v283;
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v148 = swift_getTupleTypeMetadata();
    v149 = *(v148 - 8);
    (*(v149 + 16))(&TupleTypeMetadata2, v296, v148);

    v150 = v186;
    swift_getAtKeyPath();

    v151 = (*(v185 + 104))(v146, v147);
    (*(v187 + 8))(v150, v147);
    (*(v142 + 8))(v146, v218);
    v145 = v209;
    if ((v151 & 1) == 0)
    {
      (*(v149 + 8))(v296, v148);
      return 0;
    }
  }

  v153 = v197;
  v152 = v198;
  (*(v145 + 16))(v197, v286 + *(v258 + 60), v198);
  v154 = v200;
  v155 = v210;
  if ((*(v200 + 48))(v153, 1, v210) != 1)
  {
    (*(v154 + 32))(v199, v153, v155);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v110 = swift_getTupleTypeMetadata();
    v111 = *(v110 - 8);
    (*(v111 + 16))(&TupleTypeMetadata2, v296, v110);

    v156 = v182;
    v157 = v144;
    swift_getAtKeyPath();

    v158 = v199;
    v159 = (*(v181 + 104))(v199, v157);
    (*(v183 + 8))(v156, v157);
    (*(v154 + 8))(v158, v210);
    if (v159)
    {
      goto LABEL_29;
    }

LABEL_31:
    (*(v111 + 8))(v296, v110);
    return 0;
  }

  (*(v145 + 8))(v153, v152);
LABEL_29:
  v161 = v188;
  v160 = v189;
  v162 = v190;
  (*(v189 + 16))(v188, v286 + *(v258 + 64), v190);
  v163 = v191;
  v164 = v192;
  if ((*(v191 + 48))(v161, 1, v192) == 1)
  {
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v288 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v289 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v290 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v291 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v292 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v293 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v294 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v295 = swift_getTupleTypeMetadata2();
    v165 = swift_getTupleTypeMetadata();
    (*(*(v165 - 8) + 8))(v296, v165);
    (*(v160 + 8))(v161, v162);
    return 1;
  }

  v166 = v177;
  (*(v163 + 32))(v177, v161, v164);
  sub_1AE23DB8C();
  v167 = v164;
  v168 = v163;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v288 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v289 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v290 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v291 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v292 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v293 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v294 = swift_getTupleTypeMetadata2();
  v169 = v277;
  sub_1AE23DB8C();
  v295 = swift_getTupleTypeMetadata2();
  v170 = swift_getTupleTypeMetadata();
  v171 = *(v170 - 8);
  (*(v171 + 16))(&TupleTypeMetadata2, v296, v170);

  v172 = v179;
  swift_getAtKeyPath();

  v173 = (*(AssociatedConformanceWitness + 104))(v166, v169);
  (*(v171 + 8))(v296, v170);
  (*(v180 + 8))(v172, v169);
  (*(v168 + 8))(v166, v167);
  return (v173 & 1) != 0;
}

uint64_t CRStruct_10_Final.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v222 = a4;
  v215 = a3;
  v252 = a2;
  v253 = a1;
  v214 = a5;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v197 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v196 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v194 = &v147 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v148 = swift_getAssociatedTypeWitness();
  v219 = sub_1AE23D7CC();
  v209 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v164 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v246 = &v147 - v12;
  v241 = swift_getAssociatedTypeWitness();
  v193 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v192 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v240 = &v147 - v15;
  v191 = swift_getAssociatedConformanceWitness();
  v149 = swift_getAssociatedTypeWitness();
  v218 = sub_1AE23D7CC();
  v206 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v163 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v247 = &v147 - v18;
  v238 = swift_getAssociatedTypeWitness();
  v190 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v189 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v237 = &v147 - v21;
  v188 = swift_getAssociatedConformanceWitness();
  v150 = swift_getAssociatedTypeWitness();
  v221 = sub_1AE23D7CC();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v162 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v248 = &v147 - v24;
  v236 = swift_getAssociatedTypeWitness();
  v185 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v184 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v235 = &v147 - v27;
  v183 = swift_getAssociatedConformanceWitness();
  v151 = swift_getAssociatedTypeWitness();
  v217 = sub_1AE23D7CC();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v161 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v249 = &v147 - v30;
  v234 = swift_getAssociatedTypeWitness();
  v182 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v181 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v233 = &v147 - v33;
  v180 = swift_getAssociatedConformanceWitness();
  v152 = swift_getAssociatedTypeWitness();
  v212 = sub_1AE23D7CC();
  v213 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v160 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v244 = &v147 - v36;
  v232 = swift_getAssociatedTypeWitness();
  v179 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v178 = &v147 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v231 = &v147 - v39;
  v177 = swift_getAssociatedConformanceWitness();
  v153 = swift_getAssociatedTypeWitness();
  v40 = sub_1AE23D7CC();
  v210 = *(v40 - 8);
  v211 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v159 = &v147 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v239 = &v147 - v43;
  v229 = swift_getAssociatedTypeWitness();
  v176 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v175 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v230 = &v147 - v46;
  v174 = swift_getAssociatedConformanceWitness();
  v154 = swift_getAssociatedTypeWitness();
  v47 = sub_1AE23D7CC();
  v207 = *(v47 - 8);
  v208 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v158 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v245 = &v147 - v50;
  v228 = swift_getAssociatedTypeWitness();
  v173 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v172 = &v147 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v227 = &v147 - v53;
  v171 = swift_getAssociatedConformanceWitness();
  v155 = swift_getAssociatedTypeWitness();
  v54 = sub_1AE23D7CC();
  v204 = *(v54 - 8);
  v205 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v199 = &v147 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v250 = &v147 - v57;
  v226 = swift_getAssociatedTypeWitness();
  v170 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v169 = &v147 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v225 = &v147 - v60;
  v168 = swift_getAssociatedConformanceWitness();
  v156 = swift_getAssociatedTypeWitness();
  v61 = sub_1AE23D7CC();
  v202 = *(v61 - 8);
  v203 = v61;
  MEMORY[0x1EEE9AC00](v61);
  v198 = &v147 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v251 = &v147 - v64;
  v223 = swift_getAssociatedTypeWitness();
  v167 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v166 = &v147 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v224 = &v147 - v67;
  v165 = swift_getAssociatedConformanceWitness();
  v186 = swift_getAssociatedTypeWitness();
  v68 = sub_1AE23D7CC();
  v200 = *(v68 - 8);
  v201 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v157 = &v147 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v70);
  v243 = &v147 - v72;
  (*(v6 + 176))(v278, a3, v6, v71);
  v254 = v278[1];
  v267 = v278[2];
  v259 = v278[4];
  v260 = v278[5];
  v265 = v278[7];
  v269 = v278[8];
  v272 = v278[10];
  v257 = v278[11];
  TupleTypeMetadata = v278[12];
  v276 = v278[13];
  v268 = v278[14];
  v270 = v278[15];
  v264 = v278[17];
  v261 = v278[18];
  v274 = v278[19];
  v273 = v278[20];
  v271 = v278[22];
  v266 = v278[16];
  v255 = v278[23];
  v263 = v278[25];
  v258 = v278[26];
  v262 = v278[28];
  v256 = v278[29];
  sub_1AE23DB8C();
  v277[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v277[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v187 = *(TupleTypeMetadata - 8);
  v73 = *(v187 + 16);
  v270 = v187 + 16;
  v261 = v73;
  v73(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v261(v277, v278, TupleTypeMetadata);

  v74 = v166;
  swift_getAtKeyPath();

  v75 = v224;
  v76 = v223;
  (*(v165 + 96))(v253, v74, v223);
  v77 = *(v167 + 8);
  v77(v74, v76);
  v77(v75, v76);
  v78 = TupleTypeMetadata;
  v79 = v261;
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v79(v277, v278, v78);

  v80 = v169;
  swift_getAtKeyPath();

  v81 = v225;
  v82 = v226;
  (*(v168 + 96))(v253, v80, v226);
  v83 = *(v170 + 8);
  v83(v80, v82);
  v83(v81, v82);
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v261(v277, v278, TupleTypeMetadata);

  v84 = v172;
  swift_getAtKeyPath();

  v85 = v227;
  v86 = v228;
  (*(v171 + 96))(v253, v84, v228);
  v87 = *(v173 + 8);
  v87(v84, v86);
  v87(v85, v86);
  v88 = TupleTypeMetadata;
  v89 = v261;
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v89(v277, v278, v88);

  v90 = v175;
  swift_getAtKeyPath();

  v91 = v90;
  v92 = v230;
  v93 = v229;
  (*(v174 + 96))(v253, v90, v229);
  v94 = *(v176 + 8);
  v94(v91, v93);
  v94(v92, v93);
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v261(v277, v278, TupleTypeMetadata);

  v95 = v178;
  swift_getAtKeyPath();

  v96 = v231;
  v97 = v232;
  (*(v177 + 96))(v253, v95, v232);
  v98 = *(v179 + 8);
  v98(v95, v97);
  v98(v96, v97);
  v99 = v261;
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v99(v277, v278, TupleTypeMetadata);

  v100 = v181;
  swift_getAtKeyPath();

  v101 = v100;
  v102 = v233;
  v103 = v234;
  (*(v180 + 96))(v253, v100, v234);
  v104 = *(v182 + 8);
  v104(v101, v103);
  v104(v102, v103);
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v261(v277, v278, TupleTypeMetadata);

  v105 = v184;
  swift_getAtKeyPath();

  v106 = v235;
  v107 = v236;
  (*(v183 + 96))(v253, v105, v236);
  v108 = *(v185 + 8);
  v108(v105, v107);
  v108(v106, v107);
  v109 = v261;
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v109(v277, v278, TupleTypeMetadata);

  v110 = v189;
  swift_getAtKeyPath();

  v111 = v237;
  v112 = v238;
  (*(v188 + 96))(v253, v110, v238);
  v113 = *(v190 + 8);
  v113(v110, v112);
  v113(v111, v112);
  v114 = TupleTypeMetadata;
  v115 = v261;
  v261(v277, v278, TupleTypeMetadata);

  swift_getAtKeyPath();

  v115(v277, v278, v114);

  v116 = v192;
  swift_getAtKeyPath();

  v117 = v116;
  v118 = v240;
  v119 = v241;
  (*(v191 + 96))(v253, v116, v241);
  v120 = *(v193 + 8);
  v120(v117, v119);
  v120(v118, v119);
  v261(v277, v278, TupleTypeMetadata);

  v121 = v194;
  swift_getAtKeyPath();

  v261(v277, v278, TupleTypeMetadata);

  v122 = v244;

  v123 = v196;
  swift_getAtKeyPath();

  v124 = v123;
  v125 = v121;
  v126 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 96))(v253, v123, AssociatedTypeWitness);
  v127 = *(v197 + 8);
  v128 = v124;
  v129 = v243;
  v127(v128, v126);
  v130 = v239;
  v127(v125, v126);
  v131 = v245;
  if ((*(*(v186 - 8) + 48))(v129, 1) != 1 || (*(*(v156 - 8) + 48))(v251, 1) != 1 || (*(*(v155 - 8) + 48))(v250, 1) != 1 || (*(*(v154 - 8) + 48))(v131, 1) != 1 || (*(*(v153 - 8) + 48))(v130, 1) != 1 || (*(*(v152 - 8) + 48))(v122, 1) != 1 || (*(*(v151 - 8) + 48))(v249, 1) != 1 || (*(*(v150 - 8) + 48))(v248, 1) != 1 || (*(*(v149 - 8) + 48))(v247, 1) != 1 || (v132 = 1, (*(*(v148 - 8) + 48))(v246, 1) != 1))
  {
    v133 = v157;
    (*(v200 + 16))(v157, v129, v201);
    (*(v202 + 16))(v198, v251, v203);
    (*(v204 + 16))(v199, v250, v205);
    v134 = v158;
    (*(v207 + 16))(v158, v131, v208);
    v135 = v159;
    (*(v210 + 16))(v159, v130, v211);
    v136 = v160;
    (*(v213 + 16))(v160, v122, v212);
    v137 = v161;
    (*(v216 + 16))(v161, v249, v217);
    v138 = v162;
    (*(v220 + 16))(v162, v248, v221);
    v139 = v163;
    (*(v206 + 16))(v163, v247, v218);
    v140 = v164;
    (*(v209 + 16))(v164, v246, v219);
    v141 = v136;
    v131 = v245;
    v142 = v137;
    v122 = v244;
    v143 = v138;
    v129 = v243;
    CRStructMergeableDelta_10.init(_:_:_:_:_:_:_:_:_:_:)(v133, v198, v199, v134, v135, v141, v142, v143, v214, v139, v140, v215, v222);
    v132 = 0;
  }

  (*(v187 + 8))(v278, TupleTypeMetadata);
  (*(v200 + 8))(v129, v201);
  v145 = type metadata accessor for CRStructMergeableDelta_10(0, v215, v222, v144);
  (*(*(v145 - 8) + 56))(v214, v132, 1, v145);
  (*(v209 + 8))(v246, v219);
  (*(v206 + 8))(v247, v218);
  (*(v220 + 8))(v248, v221);
  (*(v216 + 8))(v249, v217);
  (*(v213 + 8))(v122, v212);
  (*(v210 + 8))(v130, v211);
  (*(v207 + 8))(v131, v208);
  (*(v204 + 8))(v250, v205);
  return (*(v202 + 8))(v251, v203);
}

BOOL CRStruct_10_Final.merge(delta:)(uint64_t a1, uint64_t a2, int *a3)
{
  v276 = a3;
  v277 = a1;
  v4 = *(a3 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v268 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v232 = *(v7 - 8);
  v233 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v231 = &v174 - v8;
  v245 = v6;
  v244 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v234 = &v174 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v195 = swift_getAssociatedConformanceWitness();
  v273 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v228 = *(v13 - 8);
  v229 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v227 = &v174 - v14;
  v243 = v12;
  v230 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v174 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v193 = swift_getAssociatedConformanceWitness();
  v267 = v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v224 = *(v19 - 8);
  v225 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v223 = &v174 - v20;
  v242 = v18;
  v226 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v192 = &v174 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v191 = swift_getAssociatedConformanceWitness();
  v272 = v23;
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1AE23D7CC();
  v219 = *(v25 - 8);
  v220 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v218 = &v174 - v26;
  v222 = v24;
  v221 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v190 = &v174 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v189 = swift_getAssociatedConformanceWitness();
  v271 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v214 = *(v31 - 8);
  v215 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v213 = &v174 - v32;
  v217 = v30;
  v216 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v188 = &v174 - v34;
  v35 = swift_getAssociatedTypeWitness();
  v187 = swift_getAssociatedConformanceWitness();
  v266 = v35;
  v36 = swift_getAssociatedTypeWitness();
  v37 = sub_1AE23D7CC();
  v209 = *(v37 - 8);
  v210 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v208 = &v174 - v38;
  v212 = v36;
  v211 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v186 = &v174 - v40;
  v41 = swift_getAssociatedTypeWitness();
  v185 = swift_getAssociatedConformanceWitness();
  v270 = v41;
  v42 = swift_getAssociatedTypeWitness();
  v43 = sub_1AE23D7CC();
  v205 = *(v43 - 8);
  v206 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v240 = &v174 - v44;
  v241 = v42;
  v207 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v184 = &v174 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v183 = swift_getAssociatedConformanceWitness();
  v269 = v47;
  v48 = swift_getAssociatedTypeWitness();
  v49 = sub_1AE23D7CC();
  v202 = *(v49 - 8);
  v203 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v201 = &v174 - v50;
  v239 = v48;
  v204 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v182 = &v174 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v181 = swift_getAssociatedConformanceWitness();
  v275 = v53;
  v54 = swift_getAssociatedTypeWitness();
  v55 = sub_1AE23D7CC();
  v198 = *(v55 - 8);
  v199 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v197 = &v174 - v56;
  v200 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v180 = &v174 - v58;
  v59 = swift_getAssociatedTypeWitness();
  v179 = swift_getAssociatedConformanceWitness();
  v274 = v59;
  v60 = swift_getAssociatedTypeWitness();
  v61 = sub_1AE23D7CC();
  v235 = *(v61 - 8);
  v236 = v61;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v174 - v62;
  v238 = v60;
  v237 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v178 = &v174 - v65;
  v66 = CRStruct_10_Final.canMerge(delta:)(v277, a2, v276);
  if (v66)
  {
    v175 = v54;
    v176 = v66;
    v67 = *(v4 + 176);
    v177 = v4;
    v67(v288, a2, v4);
    v259 = v288[4];
    v265 = v288[5];
    v257 = v288[7];
    v256 = v288[8];
    v264 = v288[10];
    v68 = v288[11];
    v174 = a2;
    v69 = v288[13];
    v70 = v288[14];
    v71 = v288[16];
    v72 = v288[17];
    v263 = v288[19];
    v73 = v288[20];
    v262 = v288[23];
    v74 = v288[25];
    v75 = v288[29];
    v261 = v288[1];
    v260 = v288[2];
    v249 = v288[22];
    v247 = v288[26];
    v246 = v288[28];
    (*(v235 + 16))(v63, v277, v236);
    v76 = (*(v237 + 48))(v63, 1, v238);
    v258 = v75;
    v255 = v68;
    v254 = v69;
    v253 = v70;
    v252 = v71;
    v251 = v72;
    v250 = v73;
    v248 = v74;
    if (v76 == 1)
    {
      (*(v235 + 8))(v63, v236);
      v78 = v198;
      v79 = v174;
    }

    else
    {
      v81 = v237;
      v80 = v238;
      v82 = v178;
      (*(v237 + 32))(v178, v63, v238);
      v79 = v174;
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      (*(*(TupleTypeMetadata - 8) + 16))(&TupleTypeMetadata2, v288, TupleTypeMetadata);

      v84 = swift_modifyAtWritableKeyPath();
      (*(v179 + 112))(v82, v274);
      v84(&TupleTypeMetadata2, 0);

      (*(v81 + 8))(v82, v80);
      v78 = v198;
    }

    v276 = type metadata accessor for CRStructMergeableDelta_10(0, v79, v276, v77);
    v85 = v277;
    v86 = v197;
    v87 = v199;
    (*(v78 + 16))(v197, v277 + v276[9], v199);
    v88 = v200;
    v89 = v175;
    v90 = (*(v200 + 48))(v86, 1, v175);
    v91 = v240;
    if (v90 == 1)
    {
      (*(v78 + 8))(v86, v87);
    }

    else
    {
      v92 = v180;
      (*(v88 + 32))(v180, v86, v89);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v93 = swift_getTupleTypeMetadata();
      (*(*(v93 - 8) + 16))(&TupleTypeMetadata2, v288, v93);

      v94 = swift_modifyAtWritableKeyPath();
      (*(v181 + 112))(v92, v275);
      v94(&TupleTypeMetadata2, 0);
      v85 = v277;

      v95 = v92;
      v91 = v240;
      (*(v88 + 8))(v95, v89);
    }

    v97 = v203;
    v96 = v204;
    v99 = v201;
    v98 = v202;
    (*(v202 + 16))(v201, v85 + v276[10], v203);
    v100 = v239;
    if ((*(v96 + 48))(v99, 1, v239) == 1)
    {
      (*(v98 + 8))(v99, v97);
    }

    else
    {
      v101 = v182;
      (*(v96 + 32))(v182, v99, v100);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      v102 = v269;
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v103 = swift_getTupleTypeMetadata();
      (*(*(v103 - 8) + 16))(&TupleTypeMetadata2, v288, v103);

      v104 = swift_modifyAtWritableKeyPath();
      (*(v183 + 112))(v101, v102);
      v104(&TupleTypeMetadata2, 0);

      (*(v96 + 8))(v101, v239);
    }

    v105 = v212;
    v106 = v209;
    v108 = v206;
    v107 = v207;
    v109 = v205;
    (*(v205 + 16))(v91, v277 + v276[11], v206);
    v110 = v241;
    if ((*(v107 + 48))(v91, 1, v241) == 1)
    {
      (*(v109 + 8))(v91, v108);
    }

    else
    {
      v111 = v184;
      (*(v107 + 32))(v184, v91, v110);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      v112 = v105;
      v113 = v270;
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v114 = swift_getTupleTypeMetadata();
      (*(*(v114 - 8) + 16))(&TupleTypeMetadata2, v288, v114);

      v115 = swift_modifyAtWritableKeyPath();
      v116 = v113;
      v105 = v112;
      (*(v185 + 112))(v111, v116);
      v115(&TupleTypeMetadata2, 0);

      (*(v107 + 8))(v111, v241);
    }

    v118 = v210;
    v117 = v211;
    v119 = v277;
    v120 = v208;
    (*(v106 + 16))(v208, v277 + v276[12], v210);
    if ((*(v117 + 48))(v120, 1, v105) == 1)
    {
      (*(v106 + 8))(v120, v118);
      v121 = v119;
    }

    else
    {
      v122 = v186;
      (*(v117 + 32))(v186, v120, v105);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      v123 = v266;
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v124 = swift_getTupleTypeMetadata();
      (*(*(v124 - 8) + 16))(&TupleTypeMetadata2, v288, v124);

      v125 = swift_modifyAtWritableKeyPath();
      v121 = v277;
      (*(v187 + 112))(v122, v123);
      v125(&TupleTypeMetadata2, 0);

      (*(v117 + 8))(v122, v105);
    }

    v126 = v215;
    v127 = v216;
    v129 = v213;
    v128 = v214;
    (*(v214 + 16))(v213, v121 + v276[13], v215);
    v130 = v217;
    if ((*(v127 + 48))(v129, 1, v217) == 1)
    {
      (*(v128 + 8))(v129, v126);
    }

    else
    {
      v133 = v188;
      (*(v127 + 32))(v188, v129, v130);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      v134 = v271;
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v135 = swift_getTupleTypeMetadata();
      (*(*(v135 - 8) + 16))(&TupleTypeMetadata2, v288, v135);

      v136 = swift_modifyAtWritableKeyPath();
      (*(v189 + 112))(v133, v134);
      v136(&TupleTypeMetadata2, 0);

      (*(v127 + 8))(v133, v130);
    }

    v132 = v221;
    v131 = v222;
    v138 = v219;
    v137 = v220;
    v139 = v218;
    (*(v219 + 16))(v218, v121 + v276[14], v220);
    if ((*(v132 + 48))(v139, 1, v131) == 1)
    {
      (*(v138 + 8))(v139, v137);
    }

    else
    {
      v140 = v190;
      (*(v132 + 32))(v190, v139, v131);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      v141 = v272;
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v142 = swift_getTupleTypeMetadata();
      (*(*(v142 - 8) + 16))(&TupleTypeMetadata2, v288, v142);

      v143 = swift_modifyAtWritableKeyPath();
      (*(v191 + 112))(v140, v141);
      v143(&TupleTypeMetadata2, 0);

      v144 = v140;
      v121 = v277;
      (*(v132 + 8))(v144, v131);
    }

    v145 = v242;
    v147 = v225;
    v146 = v226;
    v149 = v223;
    v148 = v224;
    (*(v224 + 16))(v223, v121 + v276[15], v225);
    if ((*(v146 + 48))(v149, 1, v145) == 1)
    {
      (*(v148 + 8))(v149, v147);
    }

    else
    {
      v154 = v192;
      (*(v146 + 32))(v192, v149, v145);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      v155 = v267;
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v156 = swift_getTupleTypeMetadata();
      (*(*(v156 - 8) + 16))(&TupleTypeMetadata2, v288, v156);

      v157 = swift_modifyAtWritableKeyPath();
      (*(v193 + 112))(v154, v155);
      v157(&TupleTypeMetadata2, 0);

      (*(v146 + 8))(v154, v242);
    }

    v150 = v243;
    v152 = v229;
    v151 = v230;
    v153 = v228;
    v158 = v227;
    (*(v228 + 16))(v227, v121 + v276[16], v229);
    if ((*(v151 + 48))(v158, 1, v150) == 1)
    {
      (*(v153 + 8))(v158, v152);
    }

    else
    {
      v162 = v194;
      (*(v151 + 32))(v194, v158, v150);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      v163 = v273;
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v164 = swift_getTupleTypeMetadata();
      (*(*(v164 - 8) + 16))(&TupleTypeMetadata2, v288, v164);

      v165 = swift_modifyAtWritableKeyPath();
      (*(v195 + 112))(v162, v163);
      v165(&TupleTypeMetadata2, 0);

      (*(v151 + 8))(v162, v243);
      v121 = v277;
    }

    v159 = v244;
    v161 = v232;
    v160 = v233;
    v166 = v245;
    v167 = v231;
    (*(v232 + 16))(v231, v121 + v276[17], v233);
    if ((*(v159 + 48))(v167, 1, v166) == 1)
    {
      (*(v161 + 8))(v167, v160);
    }

    else
    {
      (*(v159 + 32))(v234, v167, v166);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v279 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v280 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v281 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v282 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v283 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v284 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v285 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v286 = swift_getTupleTypeMetadata2();
      v168 = v268;
      sub_1AE23DB8C();
      v287 = swift_getTupleTypeMetadata2();
      v169 = swift_getTupleTypeMetadata();
      (*(*(v169 - 8) + 16))(&TupleTypeMetadata2, v288, v169);

      v170 = swift_modifyAtWritableKeyPath();
      v171 = v234;
      (*(AssociatedConformanceWitness + 112))(v234, v168);
      v170(&TupleTypeMetadata2, 0);

      (*(v244 + 8))(v171, v245);
    }

    (*(*(v177 + 8) + 64))(v79);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v285 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v286 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v287 = swift_getTupleTypeMetadata2();
    v172 = swift_getTupleTypeMetadata();
    (*(*(v172 - 8) + 8))(v288, v172);
    LOBYTE(v66) = v176;
  }

  return v66;
}

BOOL CRStruct_10_Final.canMerge(delta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v317 = a1;
  v279 = a3;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v199 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v198 = &v194 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v308 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v209 = *(v8 - 8);
  v210 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v208 = &v194 - v9;
  v212 = v7;
  v211 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v196 = &v194 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v203 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v202 = &v194 - v13;
  v201 = swift_getAssociatedConformanceWitness();
  v307 = v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v218 = *(v15 - 8);
  v219 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v217 = &v194 - v16;
  v228 = v14;
  v220 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v200 = &v194 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v207 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v206 = &v194 - v20;
  v205 = swift_getAssociatedConformanceWitness();
  v314 = v19;
  v21 = swift_getAssociatedTypeWitness();
  v22 = sub_1AE23D7CC();
  v225 = *(v22 - 8);
  v226 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v224 = &v194 - v23;
  v235 = v21;
  v227 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v204 = &v194 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v216 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v215 = &v194 - v27;
  v214 = swift_getAssociatedConformanceWitness();
  v313 = v26;
  v28 = swift_getAssociatedTypeWitness();
  v233 = sub_1AE23D7CC();
  v255 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v254 = &v194 - v29;
  v245 = v28;
  v234 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v213 = &v194 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v223 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v222 = &v194 - v33;
  v221 = swift_getAssociatedConformanceWitness();
  v312 = v32;
  v34 = swift_getAssociatedTypeWitness();
  v35 = sub_1AE23D7CC();
  v241 = *(v35 - 8);
  v242 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v240 = &v194 - v36;
  v256 = v34;
  v244 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v243 = &v194 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v232 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v231 = &v194 - v40;
  v230 = swift_getAssociatedConformanceWitness();
  v311 = v39;
  v41 = swift_getAssociatedTypeWitness();
  v42 = sub_1AE23D7CC();
  v250 = *(v42 - 8);
  v251 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v249 = &v194 - v43;
  v253 = v41;
  v252 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v229 = &v194 - v45;
  v46 = swift_getAssociatedTypeWitness();
  v239 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v238 = &v194 - v47;
  v237 = swift_getAssociatedConformanceWitness();
  v310 = v46;
  v48 = swift_getAssociatedTypeWitness();
  v262 = sub_1AE23D7CC();
  v261 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v280 = &v194 - v49;
  v272 = v48;
  v263 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v236 = &v194 - v51;
  v52 = swift_getAssociatedTypeWitness();
  v248 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v247 = &v194 - v53;
  v246 = swift_getAssociatedConformanceWitness();
  v316 = v52;
  v54 = swift_getAssociatedTypeWitness();
  v269 = sub_1AE23D7CC();
  v278 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v268 = &v194 - v55;
  v281 = v54;
  v271 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v270 = &v194 - v57;
  v58 = swift_getAssociatedTypeWitness();
  v260 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v259 = &v194 - v59;
  v258 = swift_getAssociatedConformanceWitness();
  v309 = v58;
  v60 = swift_getAssociatedTypeWitness();
  v275 = sub_1AE23D7CC();
  v274 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v273 = &v194 - v61;
  v277 = v60;
  v276 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v257 = &v194 - v63;
  v64 = swift_getAssociatedTypeWitness();
  v267 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v266 = &v194 - v65;
  v265 = swift_getAssociatedConformanceWitness();
  v315 = v64;
  v66 = swift_getAssociatedTypeWitness();
  v285 = sub_1AE23D7CC();
  v284 = *(v285 - 1);
  MEMORY[0x1EEE9AC00](v285);
  v282 = &v194 - v67;
  v283 = *(v66 - 8);
  v69 = MEMORY[0x1EEE9AC00](v68);
  v264 = &v194 - v70;
  v71 = *(v4 + 176);
  v287 = a2;
  v71(v328, a2, v4, v69);
  v72 = v328[19];
  v306 = v328[1];
  v73 = v282;
  v305 = v328[2];
  v304 = v328[4];
  v303 = v328[5];
  v302 = v328[7];
  v301 = v328[8];
  v299 = v328[10];
  v298 = v328[11];
  v297 = v328[13];
  v296 = v328[14];
  v295 = v328[16];
  v294 = v328[17];
  v293 = v328[20];
  v292 = v328[22];
  v291 = v328[23];
  v290 = v328[25];
  v74 = v285;
  v289 = v328[26];
  v288 = v328[28];
  v300 = v328[29];
  v75 = v284;
  (*(v284 + 16))(v282, v317, v285);
  v76 = v283;
  v77 = v66;
  v78 = (*(v283 + 48))(v73, 1, v66);
  v286 = v72;
  if (v78 == 1)
  {
    (*(v75 + 8))(v73, v74);
    v80 = v287;
  }

  else
  {
    v81 = v76;
    v82 = *(v76 + 32);
    v83 = v264;
    v195 = v77;
    v82(v264, v73, v77);
    v80 = v287;
    v84 = v315;
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v86 = *(TupleTypeMetadata - 8);
    (*(v86 + 16))(&TupleTypeMetadata2, v328, TupleTypeMetadata);

    v87 = v266;
    swift_getAtKeyPath();

    v88 = (*(v265 + 104))(v83, v84);
    (*(v267 + 8))(v87, v84);
    (*(v81 + 8))(v83, v195);
    if ((v88 & 1) == 0)
    {
      (*(v86 + 8))(v328, TupleTypeMetadata);
      return 0;
    }
  }

  v89 = type metadata accessor for CRStructMergeableDelta_10(0, v80, v279, v79);
  v90 = v274;
  v91 = v273;
  v92 = v275;
  (*(v274 + 16))(v273, v317 + v89[9], v275);
  v93 = v276;
  v94 = v277;
  v95 = (*(v276 + 48))(v91, 1, v277);
  v285 = v89;
  if (v95 == 1)
  {
    (*(v90 + 8))(v91, v92);
    v96 = v316;
    v97 = v280;
    v98 = v278;
  }

  else
  {
    v99 = v257;
    (*(v93 + 32))(v257, v91, v94);
    sub_1AE23DB8C();
    v100 = v93;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v101 = v309;
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    v102 = swift_getTupleTypeMetadata();
    v103 = *(v102 - 8);
    (*(v103 + 16))(&TupleTypeMetadata2, v328, v102);

    v104 = v259;
    swift_getAtKeyPath();

    v105 = (*(v258 + 104))(v99, v101);
    v106 = v101;
    v89 = v285;
    (*(v260 + 8))(v104, v106);
    v107 = v99;
    v96 = v316;
    (*(v100 + 8))(v107, v94);
    v97 = v280;
    v98 = v278;
    if ((v105 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v108 = v268;
  v109 = v269;
  (*(v98 + 16))(v268, v317 + v89[10], v269);
  v110 = v271;
  v111 = v281;
  if ((*(v271 + 48))(v108, 1, v281) == 1)
  {
    (*(v98 + 8))(v108, v109);
  }

  else
  {
    (*(v110 + 32))(v270, v108, v111);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    v112 = swift_getTupleTypeMetadata();
    v113 = *(v112 - 8);
    (*(v113 + 16))(&TupleTypeMetadata2, v328, v112);

    v114 = v96;
    v115 = v247;
    swift_getAtKeyPath();

    v116 = v270;
    v117 = (*(v246 + 104))(v270, v114);
    (*(v248 + 8))(v115, v114);
    (*(v110 + 8))(v116, v281);
    if ((v117 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v118 = v261;
  v119 = v262;
  (*(v261 + 16))(v97, v317 + v89[11], v262);
  v120 = v263;
  v121 = v272;
  if ((*(v263 + 48))(v97, 1, v272) == 1)
  {
    (*(v118 + 8))(v97, v119);
  }

  else
  {
    v122 = v236;
    (*(v120 + 32))(v236, v97, v121);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v123 = v310;
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    v124 = swift_getTupleTypeMetadata();
    v125 = *(v124 - 8);
    (*(v125 + 16))(&TupleTypeMetadata2, v328, v124);

    v126 = v238;
    swift_getAtKeyPath();

    v127 = (*(v237 + 104))(v122, v123);
    (*(v239 + 8))(v126, v123);
    (*(v120 + 8))(v122, v272);
    if ((v127 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v129 = v249;
  v128 = v250;
  v130 = v251;
  (*(v250 + 16))(v249, v317 + v89[12], v251);
  v132 = v252;
  v131 = v253;
  if ((*(v252 + 48))(v129, 1, v253) == 1)
  {
    (*(v128 + 8))(v129, v130);
    v134 = v254;
    v133 = v255;
  }

  else
  {
    v135 = v229;
    (*(v132 + 32))(v229, v129, v131);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    v136 = v311;
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    v102 = swift_getTupleTypeMetadata();
    v103 = *(v102 - 8);
    (*(v103 + 16))(&TupleTypeMetadata2, v328, v102);

    v137 = v231;
    swift_getAtKeyPath();

    v138 = (*(v230 + 104))(v135, v136);
    (*(v232 + 8))(v137, v136);
    (*(v132 + 8))(v135, v131);
    v134 = v254;
    v133 = v255;
    if ((v138 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v140 = v240;
  v139 = v241;
  v141 = v242;
  (*(v241 + 16))(v240, v317 + v285[13], v242);
  v142 = v244;
  v143 = v256;
  if ((*(v244 + 48))(v140, 1, v256) == 1)
  {
    (*(v139 + 8))(v140, v141);
  }

  else
  {
    (*(v142 + 32))(v243, v140, v143);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    v144 = v312;
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    v145 = swift_getTupleTypeMetadata();
    v146 = *(v145 - 8);
    v147 = *(v146 + 16);
    v284 = v145;
    v147(&TupleTypeMetadata2, v328);

    v148 = v222;
    swift_getAtKeyPath();

    v149 = v133;
    v150 = v243;
    v151 = (*(v221 + 104))(v243, v144);
    (*(v223 + 8))(v148, v144);
    v152 = v150;
    v133 = v149;
    (*(v142 + 8))(v152, v256);
    if ((v151 & 1) == 0)
    {
      (*(v146 + 8))(v328, v284);
      return 0;
    }
  }

  v153 = v233;
  (*(v133 + 16))(v134, v317 + v285[14], v233);
  v154 = v234;
  v155 = v245;
  if ((*(v234 + 48))(v134, 1, v245) == 1)
  {
    (*(v133 + 8))(v134, v153);
    goto LABEL_23;
  }

  v156 = v213;
  (*(v154 + 32))(v213, v134, v155);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v319 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v320 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v321 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v322 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v323 = swift_getTupleTypeMetadata2();
  v157 = v313;
  sub_1AE23DB8C();
  v324 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v325 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v326 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v327 = swift_getTupleTypeMetadata2();
  v124 = swift_getTupleTypeMetadata();
  v125 = *(v124 - 8);
  (*(v125 + 16))(&TupleTypeMetadata2, v328, v124);

  v158 = v215;
  swift_getAtKeyPath();

  v159 = (*(v214 + 104))(v156, v157);
  (*(v216 + 8))(v158, v157);
  (*(v154 + 8))(v156, v245);
  if ((v159 & 1) == 0)
  {
LABEL_25:
    (*(v125 + 8))(v328, v124);
    return 0;
  }

LABEL_23:
  v160 = v285;
  v162 = v224;
  v161 = v225;
  v163 = v226;
  (*(v225 + 16))(v224, v317 + v285[15], v226);
  v164 = v227;
  v165 = v235;
  if ((*(v227 + 48))(v162, 1, v235) == 1)
  {
    (*(v161 + 8))(v162, v163);
    goto LABEL_27;
  }

  v166 = v204;
  (*(v164 + 32))(v204, v162, v165);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v319 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v320 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v321 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v322 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v323 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v324 = swift_getTupleTypeMetadata2();
  v167 = v314;
  sub_1AE23DB8C();
  v325 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v326 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v327 = swift_getTupleTypeMetadata2();
  v112 = swift_getTupleTypeMetadata();
  v113 = *(v112 - 8);
  (*(v113 + 16))(&TupleTypeMetadata2, v328, v112);

  v168 = v206;
  swift_getAtKeyPath();

  v169 = (*(v205 + 104))(v166, v167);
  (*(v207 + 8))(v168, v167);
  (*(v164 + 8))(v166, v235);
  if ((v169 & 1) == 0)
  {
LABEL_29:
    (*(v113 + 8))(v328, v112);
    return 0;
  }

LABEL_27:
  v171 = v217;
  v170 = v218;
  v172 = v219;
  (*(v218 + 16))(v217, v317 + v160[16], v219);
  v173 = v220;
  v174 = v228;
  if ((*(v220 + 48))(v171, 1, v228) != 1)
  {
    v175 = v200;
    (*(v173 + 32))(v200, v171, v174);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    v176 = v307;
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    v102 = swift_getTupleTypeMetadata();
    v103 = *(v102 - 8);
    (*(v103 + 16))(&TupleTypeMetadata2, v328, v102);

    v177 = v202;
    swift_getAtKeyPath();

    v178 = (*(v201 + 104))(v175, v176);
    v179 = v176;
    v160 = v285;
    (*(v203 + 8))(v177, v179);
    (*(v173 + 8))(v175, v228);
    if (v178)
    {
      goto LABEL_32;
    }

LABEL_34:
    (*(v103 + 8))(v328, v102);
    return 0;
  }

  (*(v170 + 8))(v171, v172);
LABEL_32:
  v181 = v208;
  v180 = v209;
  v182 = v210;
  (*(v209 + 16))(v208, v317 + v160[17], v210);
  v183 = v211;
  v184 = v212;
  if ((*(v211 + 48))(v181, 1, v212) == 1)
  {
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v321 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v322 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v323 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v324 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v325 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v326 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v327 = swift_getTupleTypeMetadata2();
    v185 = swift_getTupleTypeMetadata();
    (*(*(v185 - 8) + 8))(v328, v185);
    (*(v180 + 8))(v181, v182);
    return 1;
  }

  v187 = v196;
  (*(v183 + 32))(v196, v181, v184);
  sub_1AE23DB8C();
  v188 = v183;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v319 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v320 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v321 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v322 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v323 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v324 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v325 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v326 = swift_getTupleTypeMetadata2();
  v189 = v308;
  sub_1AE23DB8C();
  v327 = swift_getTupleTypeMetadata2();
  v190 = swift_getTupleTypeMetadata();
  v191 = *(v190 - 8);
  (*(v191 + 16))(&TupleTypeMetadata2, v328, v190);

  v192 = v198;
  swift_getAtKeyPath();

  v193 = (*(AssociatedConformanceWitness + 104))(v187, v189);
  (*(v191 + 8))(v328, v190);
  (*(v199 + 8))(v192, v189);
  (*(v188 + 8))(v187, v184);
  return (v193 & 1) != 0;
}

void *sub_1AE156B60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
  result = sub_1AE23DCBC();
  v4 = 0;
  v25 = result;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = v16[1];
      v28 = *v16;
      v18 = *(**(*(v26 + 56) + 8 * v15) + 80);

      v19 = v18(a2);

      result = v25;
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v25[6] + 16 * v15);
      *v20 = v28;
      v20[1] = v17;
      *(v25[7] + 8 * v15) = v19;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AE156D10(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1ADDD7A10(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1ADF690CC(v15, v5 & 1);
    v10 = sub_1ADDD7A10(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1ADF6ED64();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](39, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_1ADDD7A10(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1ADF690CC(v31, 1);
        v27 = sub_1ADDD7A10(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1AE1570D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v7 = *(v6 + 16);
    if ((~v7 & 0xF000000000000007) != 0 && (v7 & 0xF000000000000000) == 0x3000000000000000)
    {
      v13 = (v7 & 0xFFFFFFFFFFFFFFFLL);
      v9 = v13[2];
      v10 = v13[3];
      v11 = v13[4];
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      v10 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
    }

    sub_1AE2134B8(v9, v10, v11, a1);
    v3 = v14;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v12 = 0xD000000000000014;
    *(v12 + 8) = 0x80000001AE25FB50;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1AE15748C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE157578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AE157778(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

uint64_t sub_1AE157A20(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE157B84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v5)
  {
    v12 = *(v4 + 64);
  }

  else
  {
    v12 = *(v4 + 64) + 1;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v12 + v13;
  if (a2 <= v11)
  {
LABEL_40:
    if (v6 >= v10)
    {
      v24 = (*(v4 + 48))(a1, v5, v26);
    }

    else
    {
      v24 = (*(v8 + 48))((a1 + v16) & ~v13);
    }

    if (v24 >= 2)
    {
      return v24 - 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = v15 + (v16 & ~v13);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((a2 - v11 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v20 < 2)
    {
LABEL_39:
      if (v11)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_39;
  }

LABEL_26:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v11 + (v23 | v21) + 1;
}

void sub_1AE157EA0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = 0;
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v6)
  {
    v13 = *(v5 + 64);
  }

  else
  {
    v13 = *(v5 + 64) + 1;
  }

  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (!v10)
  {
    ++v15;
  }

  v16 = ((v13 + v14) & ~v14) + v15;
  if (a3 > v12)
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v17))
      {
        v8 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v8 = v18;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  if (v12 < a2)
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> (8 * v16)) + 1;
      if (v16)
      {
        v21 = v19 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v21;
            if (v8 > 1)
            {
LABEL_78:
              if (v8 == 2)
              {
                *&a1[v16] = v20;
              }

              else
              {
                *&a1[v16] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v8 > 1)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_75;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v8 > 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
      if (v8 > 1)
      {
        goto LABEL_78;
      }
    }

LABEL_75:
    if (v8)
    {
      a1[v16] = v20;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v16] = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v8)
  {
    goto LABEL_41;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v7 >= v11)
  {
    if (v7 >= a2)
    {
      v30 = *(v5 + 56);

      v30(a1, a2 + 1, v6, v31);
    }

    else
    {
      if (v13 <= 3)
      {
        v26 = ~(-1 << (8 * v13));
      }

      else
      {
        v26 = -1;
      }

      if (v13)
      {
        v27 = v26 & (~v7 + a2);
        if (v13 <= 3)
        {
          v28 = v13;
        }

        else
        {
          v28 = 4;
        }

        bzero(a1, v13);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *a1 = v27;
            a1[2] = BYTE2(v27);
          }

          else
          {
            *a1 = v27;
          }
        }

        else if (v28 == 1)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v27;
        }
      }
    }
  }

  else
  {
    v22 = (&a1[v13 + v14] & ~v14);
    if (v11 >= a2)
    {
      v29 = *(v9 + 56);

      v29(&a1[v13 + v14] & ~v14, a2 + 1);
    }

    else
    {
      if (v15 <= 3)
      {
        v23 = ~(-1 << (8 * v15));
      }

      else
      {
        v23 = -1;
      }

      if (v15)
      {
        v24 = v23 & (~v11 + a2);
        if (v15 <= 3)
        {
          v25 = v15;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v15);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }
}

uint64_t sub_1AE158388(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AE158564(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v4 = *(v35 + 84);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedTypeWitness();
  v6 = *(v30 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v33 = v5;
  v31 = v8;
  if (v8 > v5)
  {
    v5 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v5)
  {
    v12 = v5;
  }

  if (v4)
  {
    v13 = *(v35 + 64);
  }

  else
  {
    v13 = *(v35 + 64) + 1;
  }

  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  v15 = *(v6 + 80);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  if (v11)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v13 + v15;
  if (a2 <= v12)
  {
LABEL_44:
    if (v33 == v12)
    {
      v27 = (*(v35 + 48))(a1, v4, v32);
    }

    else
    {
      v29 = (a1 + v19) & ~v15;
      if (v31 == v12)
      {
        v27 = (*(v6 + 48))(v29, v7, v30);
      }

      else
      {
        v27 = (*(v10 + 48))((v29 + v14 + v16) & ~v16);
      }
    }

    if (v27 >= 2)
    {
      return v27 - 1;
    }

    else
    {
      return 0;
    }
  }

  v20 = v18 + ((v14 + v16 + (v19 & ~v15)) & ~v16);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((a2 - v12 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v23 < 2)
    {
LABEL_43:
      if (v12)
      {
        goto LABEL_44;
      }

      return 0;
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_43;
  }

LABEL_30:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = v20;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v12 + (v26 | v24) + 1;
}

void sub_1AE158998(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v43 = AssociatedTypeWitness;
  v5 = *(v44 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v41 = swift_getAssociatedTypeWitness();
  v7 = *(v41 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v42 = v9;
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = v5;
  v13 = 0;
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v12)
  {
    v18 = *(v44 + 64);
  }

  else
  {
    v18 = *(v44 + 64) + 1;
  }

  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  v20 = *(v7 + 80);
  v21 = v18 + v20;
  v22 = *(v14 + 80);
  if (v15)
  {
    v23 = *(v14 + 64);
  }

  else
  {
    v23 = *(v14 + 64) + 1;
  }

  v24 = ((v19 + v22 + (v21 & ~v20)) & ~v22) + v23;
  if (a3 > v17)
  {
    if (v24 <= 3)
    {
      v25 = ((a3 - v17 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v25))
      {
        v13 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v13 = v26;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v17 < a2)
  {
    v27 = ~v17 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v27 & ~(-1 << (8 * v24));
        bzero(a1, ((v19 + v22 + (v21 & ~v20)) & ~v22) + v23);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v13 > 1)
            {
LABEL_75:
              if (v13 == 2)
              {
                *&a1[v24] = v28;
              }

              else
              {
                *&a1[v24] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v13 > 1)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_72;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v13 > 1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      bzero(a1, ((v19 + v22 + (v21 & ~v20)) & ~v22) + v23);
      *a1 = v27;
      v28 = 1;
      if (v13 > 1)
      {
        goto LABEL_75;
      }
    }

LABEL_72:
    if (v13)
    {
      a1[v24] = v28;
    }

    return;
  }

  v29 = a1;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *&a1[v24] = 0;
  }

  else if (v13)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  if (v6 == v17)
  {
    v31 = v43;
    v32 = *(v44 + 56);
    v33 = a2 + 1;
    v34 = v12;
LABEL_54:

    v32(v29, v33, v34, v31);
    return;
  }

  v29 = (&a1[v21] & ~v20);
  if (v42 == v17)
  {
    v32 = *(v7 + 56);
    v33 = a2 + 1;
    v34 = v8;
    v31 = v41;
    goto LABEL_54;
  }

  v35 = (&v29[v19 + v22] & ~v22);
  if (v16 >= a2)
  {
    v39 = *(v14 + 56);
    v40 = &v29[v19 + v22] & ~v22;

    v39(v40, a2 + 1);
  }

  else
  {
    if (v23 <= 3)
    {
      v36 = ~(-1 << (8 * v23));
    }

    else
    {
      v36 = -1;
    }

    if (v23)
    {
      v37 = v36 & (~v16 + a2);
      if (v23 <= 3)
      {
        v38 = v23;
      }

      else
      {
        v38 = 4;
      }

      bzero(v35, v23);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          *v35 = v37;
          v35[2] = BYTE2(v37);
        }

        else
        {
          *v35 = v37;
        }
      }

      else if (v38 == 1)
      {
        *v35 = v37;
      }

      else
      {
        *v35 = v37;
      }
    }
  }
}

uint64_t sub_1AE158F08(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15915C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v42 = *(v43 + 84);
  if (v42)
  {
    v3 = v42 - 1;
  }

  else
  {
    v3 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedTypeWitness();
  v41 = *(v36 - 8);
  v40 = *(v41 + 84);
  v4 = v40 - 1;
  if (!v40)
  {
    v4 = 0;
  }

  v37 = v4;
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedTypeWitness();
  v6 = *(v34 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v35 = v8;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v13 = v9;
  }

  if (v42)
  {
    v14 = *(v43 + 64);
  }

  else
  {
    v14 = *(v43 + 64) + 1;
  }

  if (v40)
  {
    v15 = *(v41 + 64);
  }

  else
  {
    v15 = *(v41 + 64) + 1;
  }

  v16 = *(v6 + 64);
  if (!v7)
  {
    ++v16;
  }

  v17 = *(v41 + 80);
  v18 = *(v6 + 80);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  if (v12)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v14 + v17;
  if (a2 <= v13)
  {
LABEL_53:
    if (v3 == v13)
    {
      v30 = (*(v43 + 48))(a1, v42, AssociatedTypeWitness);
    }

    else
    {
      v32 = (a1 + v22) & ~v17;
      if (v37 == v13)
      {
        v30 = (*(v41 + 48))(v32, v40, v36);
      }

      else
      {
        v33 = (v32 + v15 + v18) & ~v18;
        if (v35 == v13)
        {
          v30 = (*(v6 + 48))(v33, v7, v34);
        }

        else
        {
          v30 = (*(v11 + 48))((v33 + v16 + v19) & ~v19);
        }
      }
    }

    if (v30 >= 2)
    {
      return v30 - 1;
    }

    else
    {
      return 0;
    }
  }

  v23 = v21 + ((v16 + v19 + ((v15 + v18 + (v22 & ~v17)) & ~v18)) & ~v19);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v26 = ((a2 - v13 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    if (v26 < 2)
    {
LABEL_52:
      if (v13)
      {
        goto LABEL_53;
      }

      return 0;
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_52;
  }

LABEL_39:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v28 = v23;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v13 + (v29 | v27) + 1;
}

void sub_1AE1596A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v54 = *(v55 + 84);
  if (v54)
  {
    v5 = v54 - 1;
  }

  else
  {
    v5 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v48 = swift_getAssociatedTypeWitness();
  v52 = *(v48 - 8);
  v53 = *(v52 + 84);
  v6 = v53 - 1;
  if (!v53)
  {
    v6 = 0;
  }

  v51 = v5;
  v49 = v6;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v46 = swift_getAssociatedTypeWitness();
  v8 = *(v46 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v47 = v10;
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v52 + 64);
  v17 = v15 - 1;
  if (!v15)
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  if (v54)
  {
    v19 = *(v55 + 64);
  }

  else
  {
    v19 = *(v55 + 64) + 1;
  }

  if (!v53)
  {
    ++v16;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = *(v52 + 80);
  v22 = v19 + v21;
  v23 = (v19 + v21) & ~v21;
  v24 = *(v8 + 80);
  v25 = (v16 + v24 + v23) & ~v24;
  v26 = *(v13 + 80);
  v27 = (v20 + v26 + v25) & ~v26;
  if (v15)
  {
    v28 = *(v13 + 64);
  }

  else
  {
    v28 = *(v13 + 64) + 1;
  }

  v29 = v27 + v28;
  if (a3 > v18)
  {
    if (v29 <= 3)
    {
      v30 = ((a3 - v18 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
      if (HIWORD(v30))
      {
        v12 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v12 = v31;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v18 < a2)
  {
    v32 = ~v18 + a2;
    if (v29 < 4)
    {
      v33 = (v32 >> (8 * v29)) + 1;
      if (v29)
      {
        v35 = v32 & ~(-1 << (8 * v29));
        bzero(a1, v27 + v28);
        if (v29 != 3)
        {
          if (v29 == 2)
          {
            *a1 = v35;
            if (v12 > 1)
            {
LABEL_75:
              if (v12 == 2)
              {
                *&a1[v29] = v33;
              }

              else
              {
                *&a1[v29] = v33;
              }

              return;
            }
          }

          else
          {
            *a1 = v32;
            if (v12 > 1)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_72;
        }

        *a1 = v35;
        a1[2] = BYTE2(v35);
      }

      if (v12 > 1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      bzero(a1, v27 + v28);
      *a1 = v32;
      v33 = 1;
      if (v12 > 1)
      {
        goto LABEL_75;
      }
    }

LABEL_72:
    if (v12)
    {
      a1[v29] = v33;
    }

    return;
  }

  v34 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *&a1[v29] = 0;
  }

  else if (v12)
  {
    a1[v29] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  if (v51 == v18)
  {
    v36 = v50;
    v37 = *(v55 + 56);
    v38 = a2 + 1;
    v39 = v54;
    goto LABEL_59;
  }

  v34 = (&a1[v22] & ~v21);
  if (v49 == v18)
  {
    v37 = *(v52 + 56);
    v38 = a2 + 1;
    v39 = v53;
    v36 = v48;

    goto LABEL_61;
  }

  v34 = (&v34[v16 + v24] & ~v24);
  if (v47 == v18)
  {
    v37 = *(v8 + 56);
    v38 = a2 + 1;
    v39 = v9;
    v36 = v46;
LABEL_59:

LABEL_61:
    v37(v34, v38, v39, v36);
    return;
  }

  v40 = (&v34[v20 + v26] & ~v26);
  if (v17 >= a2)
  {
    v44 = *(v14 + 56);
    v45 = &v34[v20 + v26] & ~v26;

    v44(v45, a2 + 1);
  }

  else
  {
    if (v28 <= 3)
    {
      v41 = ~(-1 << (8 * v28));
    }

    else
    {
      v41 = -1;
    }

    if (v28)
    {
      v42 = v41 & (~v17 + a2);
      if (v28 <= 3)
      {
        v43 = v28;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v28);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

uint64_t sub_1AE159D54(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v5 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15A020(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v50 = *(v51 + 84);
  if (v50)
  {
    v3 = v50 - 1;
  }

  else
  {
    v3 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedTypeWitness();
  v49 = *(v42 - 8);
  v47 = *(v49 + 84);
  v4 = v47 - 1;
  if (!v47)
  {
    v4 = 0;
  }

  v43 = v4;
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v40 = swift_getAssociatedTypeWitness();
  v48 = *(v40 - 8);
  v46 = *(v48 + 84);
  v6 = v46 - 1;
  if (!v46)
  {
    v6 = 0;
  }

  v41 = v6;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedTypeWitness();
  v8 = *(v38 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v39 = v10;
  if (v10 > v7)
  {
    v7 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  result = a2;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v7)
  {
    v15 = v7;
  }

  if (v50)
  {
    v16 = *(v51 + 64);
  }

  else
  {
    v16 = *(v51 + 64) + 1;
  }

  if (v47)
  {
    v17 = *(v49 + 64);
  }

  else
  {
    v17 = *(v49 + 64) + 1;
  }

  if (v46)
  {
    v18 = *(v48 + 64);
  }

  else
  {
    v18 = *(v48 + 64) + 1;
  }

  if (v9)
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = *(v49 + 80);
  v21 = *(v48 + 80);
  v22 = *(v8 + 80);
  v23 = *(v13 + 80);
  if (v14)
  {
    v24 = *(*(v11 - 8) + 64);
  }

  else
  {
    v24 = *(*(v11 - 8) + 64) + 1;
  }

  if (a2)
  {
    v25 = v16 + v20;
    v26 = v19 + v23;
    if (a2 <= v15)
    {
LABEL_61:
      if (v3 == v15)
      {
        v34 = (*(v51 + 48))(a1, v50, AssociatedTypeWitness);
      }

      else
      {
        v35 = (a1 + v25) & ~v20;
        if (v43 == v15)
        {
          v34 = (*(v49 + 48))(v35, v47, v42);
        }

        else
        {
          v36 = (v35 + v17 + v21) & ~v21;
          if (v41 == v15)
          {
            v34 = (*(v48 + 48))(v36, v46, v40);
          }

          else
          {
            v37 = (v36 + v18 + v22) & ~v22;
            if (v39 == v15)
            {
              v34 = (*(v8 + 48))(v37, v9, v38);
            }

            else
            {
              v34 = (*(v13 + 48))((v26 + v37) & ~v23);
            }
          }
        }
      }

      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    v27 = v24 + ((v26 + ((v18 + v22 + ((v17 + v21 + (v25 & ~v20)) & ~v21)) & ~v22)) & ~v23);
    v28 = 8 * v27;
    if (v27 > 3)
    {
LABEL_40:
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    v30 = ((a2 - v15 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v30))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v30 <= 0xFF)
      {
        if (v30 < 2)
        {
LABEL_60:
          if (!v15)
          {
            return 0;
          }

          goto LABEL_61;
        }

        goto LABEL_40;
      }

      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_60;
      }
    }

LABEL_47:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = v27;
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v15 + (v33 | v31) + 1;
  }

  return result;
}

void sub_1AE15A674(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v53 = *(swift_getAssociatedTypeWitness() - 8);
  v54 = *(v53 + 84);
  if (v54)
  {
    v4 = v54 - 1;
  }

  else
  {
    v4 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v52 = *(swift_getAssociatedTypeWitness() - 8);
  v51 = *(v52 + 84);
  v5 = v51 - 1;
  if (!v51)
  {
    v5 = 0;
  }

  v49 = v4;
  v48 = v5;
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v50 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v50 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v47 = v8;
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v46 = v12;
  if (v12 > v9)
  {
    v9 = v12;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = 0;
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v52 + 64);
  v18 = v16 - 1;
  if (!v16)
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  if (v54)
  {
    v20 = *(v53 + 64);
  }

  else
  {
    v20 = *(v53 + 64) + 1;
  }

  if (!v51)
  {
    ++v17;
  }

  if (v7)
  {
    v21 = *(v50 + 64);
  }

  else
  {
    v21 = *(v50 + 64) + 1;
  }

  if (v11)
  {
    v22 = *(v10 + 64);
  }

  else
  {
    v22 = *(v10 + 64) + 1;
  }

  v23 = *(v52 + 80);
  v24 = v20 + v23;
  v25 = *(v50 + 80);
  v26 = *(v10 + 80);
  v27 = (v21 + v26 + ((v17 + v25 + ((v20 + v23) & ~v23)) & ~v25)) & ~v26;
  v28 = *(v14 + 80);
  v29 = v22 + v28;
  v30 = (v22 + v28 + v27) & ~v28;
  v31 = *(v14 + 64);
  if (!v16)
  {
    ++v31;
  }

  v32 = v30 + v31;
  if (a3 > v19)
  {
    if (v32 <= 3)
    {
      v33 = ((a3 - v19 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
      if (HIWORD(v33))
      {
        v13 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v13 = v34;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v19 < a2)
  {
    v35 = ~v19 + a2;
    if (v32 < 4)
    {
      v36 = (v35 >> (8 * v32)) + 1;
      if (v32)
      {
        v37 = v35 & ~(-1 << (8 * v32));
        bzero(a1, v32);
        if (v32 != 3)
        {
          if (v32 == 2)
          {
            *a1 = v37;
            if (v13 > 1)
            {
LABEL_76:
              if (v13 == 2)
              {
                *&a1[v32] = v36;
              }

              else
              {
                *&a1[v32] = v36;
              }

              return;
            }
          }

          else
          {
            *a1 = v35;
            if (v13 > 1)
            {
              goto LABEL_76;
            }
          }

          goto LABEL_73;
        }

        *a1 = v37;
        a1[2] = BYTE2(v37);
      }

      if (v13 > 1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      bzero(a1, v32);
      *a1 = v35;
      v36 = 1;
      if (v13 > 1)
      {
        goto LABEL_76;
      }
    }

LABEL_73:
    if (v13)
    {
      a1[v32] = v36;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *&a1[v32] = 0;
  }

  else if (v13)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v49 == v19)
  {
    v38 = *(v53 + 56);
LABEL_82:

    v38();
    return;
  }

  if (v48 == v19)
  {
    v38 = *(v52 + 56);
    goto LABEL_82;
  }

  if (v47 == v19)
  {
    v38 = *(v50 + 56);
    goto LABEL_82;
  }

  v39 = ((((&a1[v24] & ~v23) + v17 + v25) & ~v25) + v21 + v26) & ~v26;
  if (v46 == v19)
  {
    v38 = *(v10 + 56);
    goto LABEL_82;
  }

  v40 = (v29 + v39) & ~v28;
  if (v18 >= a2)
  {
    v44 = *(v15 + 56);
    v45 = (v29 + v39) & ~v28;

    v44(v45, a2 + 1);
  }

  else
  {
    if (v31 <= 3)
    {
      v41 = ~(-1 << (8 * v31));
    }

    else
    {
      v41 = -1;
    }

    if (v31)
    {
      v42 = v41 & (~v18 + a2);
      if (v31 <= 3)
      {
        v43 = v31;
      }

      else
      {
        v43 = 4;
      }

      bzero(((v29 + v39) & ~v28), v31);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          *(v40 + 2) = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

uint64_t sub_1AE15AE04(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v5 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v6 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            swift_getAssociatedTypeWitness();
            result = sub_1AE23D7CC();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15B148(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v60 = *(v61 + 84);
  if (v60)
  {
    v3 = v60 - 1;
  }

  else
  {
    v3 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedTypeWitness();
  v59 = *(v49 - 8);
  v57 = *(v59 + 84);
  v4 = v57 - 1;
  if (!v57)
  {
    v4 = 0;
  }

  v52 = v3;
  v50 = v4;
  if (v4 > v3)
  {
    v3 = v4;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedTypeWitness();
  v58 = *(v47 - 8);
  v56 = *(v58 + 84);
  v5 = v56 - 1;
  if (!v56)
  {
    v5 = 0;
  }

  v48 = v5;
  if (v5 > v3)
  {
    v3 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedTypeWitness();
  v55 = *(v45 - 8);
  v54 = *(v55 + 84);
  v6 = v54 - 1;
  if (!v54)
  {
    v6 = 0;
  }

  v46 = v6;
  if (v6 <= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedTypeWitness();
  v8 = *(v43 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v44 = v10;
  if (v10 > v7)
  {
    v7 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  result = a2;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v7)
  {
    v15 = v7;
  }

  if (v60)
  {
    v16 = *(v61 + 64);
  }

  else
  {
    v16 = *(v61 + 64) + 1;
  }

  if (v57)
  {
    v17 = *(v59 + 64);
  }

  else
  {
    v17 = *(v59 + 64) + 1;
  }

  if (v56)
  {
    v18 = *(v58 + 64);
  }

  else
  {
    v18 = *(v58 + 64) + 1;
  }

  v19 = v9;
  if (v54)
  {
    v20 = *(v55 + 64);
  }

  else
  {
    v20 = *(v55 + 64) + 1;
  }

  if (v9)
  {
    v21 = *(v8 + 64);
  }

  else
  {
    v21 = *(v8 + 64) + 1;
  }

  v22 = *(v59 + 80);
  v23 = *(v58 + 80);
  v24 = *(v55 + 80);
  v25 = *(v8 + 80);
  v26 = *(v13 + 80);
  if (v14)
  {
    v27 = *(*(v11 - 8) + 64);
  }

  else
  {
    v27 = *(*(v11 - 8) + 64) + 1;
  }

  if (a2)
  {
    v28 = v16 + v22;
    v29 = v20 + v25;
    v30 = v21 + v26;
    if (a2 <= v15)
    {
LABEL_67:
      if (v52 == v15)
      {
        v38 = (*(v61 + 48))(a1, v60, AssociatedTypeWitness, v23);
      }

      else
      {
        v39 = (a1 + v28) & ~v22;
        if (v50 == v15)
        {
          v38 = (*(v59 + 48))(v39, v57, v49, v23);
        }

        else
        {
          v40 = (v39 + v17 + v23) & ~v23;
          if (v48 == v15)
          {
            v38 = (*(v58 + 48))(v40, v56, v47);
          }

          else
          {
            v41 = (v40 + v18 + v24) & ~v24;
            if (v46 == v15)
            {
              v38 = (*(v55 + 48))(v41, v54, v45);
            }

            else
            {
              v42 = (v29 + v41) & ~v25;
              if (v44 == v15)
              {
                v38 = (*(v8 + 48))(v42, v19, v43);
              }

              else
              {
                v38 = (*(v13 + 48))((v30 + v42) & ~v26);
              }
            }
          }
        }
      }

      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }

    v31 = v27 + ((v30 + ((v29 + ((v18 + v24 + ((v17 + v23 + (v28 & ~v22)) & ~v23)) & ~v24)) & ~v25)) & ~v26);
    v32 = 8 * v31;
    if (v31 > 3)
    {
LABEL_46:
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    }

    v34 = ((a2 - v15 + ~(-1 << v32)) >> v32) + 1;
    if (HIWORD(v34))
    {
      v33 = *(a1 + v31);
      if (!v33)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v34 <= 0xFF)
      {
        if (v34 < 2)
        {
LABEL_66:
          if (!v15)
          {
            return 0;
          }

          goto LABEL_67;
        }

        goto LABEL_46;
      }

      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_66;
      }
    }

LABEL_53:
    v35 = (v33 - 1) << v32;
    if (v31 > 3)
    {
      v35 = 0;
    }

    if (v31)
    {
      if (v31 <= 3)
      {
        v36 = v31;
      }

      else
      {
        v36 = 4;
      }

      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v37 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v37 = *a1;
        }
      }

      else if (v36 == 1)
      {
        v37 = *a1;
      }

      else
      {
        v37 = *a1;
      }
    }

    else
    {
      v37 = 0;
    }

    return v15 + (v37 | v35) + 1;
  }

  return result;
}

void sub_1AE15B8AC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v61 = *(swift_getAssociatedTypeWitness() - 8);
  v62 = *(v61 + 84);
  if (v62)
  {
    v4 = v62 - 1;
  }

  else
  {
    v4 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v60 = *(swift_getAssociatedTypeWitness() - 8);
  v59 = *(v60 + 84);
  v5 = v59 - 1;
  if (!v59)
  {
    v5 = 0;
  }

  v54 = v4;
  v53 = v5;
  if (v5 > v4)
  {
    v4 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v58 = *(swift_getAssociatedTypeWitness() - 8);
  v57 = *(v58 + 84);
  v6 = v57 - 1;
  if (!v57)
  {
    v6 = 0;
  }

  v52 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v56 = *(swift_getAssociatedTypeWitness() - 8);
  v55 = *(v56 + 84);
  v8 = v55 - 1;
  if (!v55)
  {
    v8 = 0;
  }

  v51 = v8;
  if (v8 > v7)
  {
    v7 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v50 = v11;
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = 0;
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v60 + 64);
  v18 = v16 - 1;
  if (!v16)
  {
    v18 = 0;
  }

  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (v62)
  {
    v20 = *(v61 + 64);
  }

  else
  {
    v20 = *(v61 + 64) + 1;
  }

  if (!v59)
  {
    ++v17;
  }

  if (v57)
  {
    v21 = *(v58 + 64);
  }

  else
  {
    v21 = *(v58 + 64) + 1;
  }

  if (v55)
  {
    v22 = *(v56 + 64);
  }

  else
  {
    v22 = *(v56 + 64) + 1;
  }

  if (v10)
  {
    v23 = *(v9 + 64);
  }

  else
  {
    v23 = *(v9 + 64) + 1;
  }

  v24 = *(v60 + 80);
  v25 = v20 + v24;
  v26 = *(v58 + 80);
  v27 = (v17 + v26 + ((v20 + v24) & ~v24)) & ~v26;
  v28 = *(v56 + 80);
  v29 = (v21 + v28 + v27) & ~v28;
  v30 = *(v9 + 80);
  v31 = v22 + v30;
  v32 = (v22 + v30 + v29) & ~v30;
  v33 = *(v14 + 80);
  v34 = v23 + v33;
  v35 = *(v14 + 64);
  if (!v16)
  {
    ++v35;
  }

  v36 = ((v34 + v32) & ~v33) + v35;
  if (a3 > v19)
  {
    if (v36 <= 3)
    {
      v37 = ((a3 - v19 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
      if (HIWORD(v37))
      {
        v13 = 4;
      }

      else
      {
        if (v37 < 0x100)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        if (v37 >= 2)
        {
          v13 = v38;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v19 < a2)
  {
    v39 = ~v19 + a2;
    if (v36 < 4)
    {
      v40 = (v39 >> (8 * v36)) + 1;
      if (v36)
      {
        v41 = v39 & ~(-1 << (8 * v36));
        bzero(a1, v36);
        if (v36 != 3)
        {
          if (v36 == 2)
          {
            *a1 = v41;
            if (v13 > 1)
            {
LABEL_83:
              if (v13 == 2)
              {
                *&a1[v36] = v40;
              }

              else
              {
                *&a1[v36] = v40;
              }

              return;
            }
          }

          else
          {
            *a1 = v39;
            if (v13 > 1)
            {
              goto LABEL_83;
            }
          }

          goto LABEL_80;
        }

        *a1 = v41;
        a1[2] = BYTE2(v41);
      }

      if (v13 > 1)
      {
        goto LABEL_83;
      }
    }

    else
    {
      bzero(a1, v36);
      *a1 = v39;
      v40 = 1;
      if (v13 > 1)
      {
        goto LABEL_83;
      }
    }

LABEL_80:
    if (v13)
    {
      a1[v36] = v40;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v36] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_70;
    }

    *&a1[v36] = 0;
  }

  else if (v13)
  {
    a1[v36] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_70;
  }

  if (!a2)
  {
    return;
  }

LABEL_70:
  if (v54 == v19)
  {
    v42 = *(v61 + 56);
LABEL_91:

    v42();
    return;
  }

  if (v53 == v19)
  {
    v42 = *(v60 + 56);
    goto LABEL_91;
  }

  if (v52 == v19)
  {
    v42 = *(v58 + 56);
    goto LABEL_91;
  }

  if (v51 == v19)
  {
    v42 = *(v56 + 56);
    goto LABEL_91;
  }

  v43 = (v31 + (((((&a1[v25] & ~v24) + v17 + v26) & ~v26) + v21 + v28) & ~v28)) & ~v30;
  if (v50 == v19)
  {
    v42 = *(v9 + 56);
    goto LABEL_91;
  }

  v44 = (v34 + v43) & ~v33;
  if (v18 >= a2)
  {
    v48 = *(v15 + 56);
    v49 = (v34 + v43) & ~v33;

    v48(v49, a2 + 1);
  }

  else
  {
    if (v35 <= 3)
    {
      v45 = ~(-1 << (8 * v35));
    }

    else
    {
      v45 = -1;
    }

    if (v35)
    {
      v46 = v45 & (~v18 + a2);
      if (v35 <= 3)
      {
        v47 = v35;
      }

      else
      {
        v47 = 4;
      }

      bzero(((v34 + v43) & ~v33), v35);
      if (v47 > 2)
      {
        if (v47 == 3)
        {
          *v44 = v46;
          *(v44 + 2) = BYTE2(v46);
        }

        else
        {
          *v44 = v46;
        }
      }

      else if (v47 == 1)
      {
        *v44 = v46;
      }

      else
      {
        *v44 = v46;
      }
    }
  }
}

uint64_t sub_1AE15C140(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v5 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v6 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            swift_getAssociatedTypeWitness();
            result = sub_1AE23D7CC();
            if (v7 <= 0x3F)
            {
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              swift_getAssociatedTypeWitness();
              result = sub_1AE23D7CC();
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15C4FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v61 = v74;
  v73 = *(v74 + 84);
  if (v73)
  {
    v3 = v73 - 1;
  }

  else
  {
    v3 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v59 = swift_getAssociatedTypeWitness();
  v72 = *(v59 - 8);
  v71 = *(v72 + 84);
  v4 = v71 - 1;
  if (!v71)
  {
    v4 = 0;
  }

  v63 = v3;
  v60 = v4;
  if (v4 > v3)
  {
    v3 = v4;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v57 = swift_getAssociatedTypeWitness();
  v70 = *(v57 - 8);
  v69 = *(v70 + 84);
  v5 = v69 - 1;
  if (!v69)
  {
    v5 = 0;
  }

  v58 = v5;
  if (v5 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v55 = swift_getAssociatedTypeWitness();
  v68 = *(v55 - 8);
  v67 = *(v68 + 84);
  v7 = v67 - 1;
  if (!v67)
  {
    v7 = 0;
  }

  v56 = v7;
  if (v7 > v6)
  {
    v6 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v53 = swift_getAssociatedTypeWitness();
  v66 = *(v53 - 8);
  v8 = *(v66 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v54 = v9;
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedTypeWitness();
  v65 = *(v51 - 8);
  v11 = *(v65 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v52 = v12;
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  result = a2;
  v16 = *(v14 - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= v13)
  {
    v19 = v13;
  }

  if (v73)
  {
    v20 = *(v74 + 64);
  }

  else
  {
    v20 = *(v74 + 64) + 1;
  }

  if (v71)
  {
    v21 = *(v72 + 64);
  }

  else
  {
    v21 = *(v72 + 64) + 1;
  }

  v22 = *(v70 + 64);
  if (!v69)
  {
    ++v22;
  }

  v76 = v22;
  if (v67)
  {
    v23 = *(v68 + 64);
  }

  else
  {
    v23 = *(v68 + 64) + 1;
  }

  v75 = v8;
  if (v8)
  {
    v24 = *(v66 + 64);
  }

  else
  {
    v24 = *(v66 + 64) + 1;
  }

  if (v11)
  {
    v25 = *(v65 + 64);
  }

  else
  {
    v25 = *(v65 + 64) + 1;
  }

  v26 = *(v72 + 80);
  v27 = *(v70 + 80);
  v28 = *(v68 + 80);
  v29 = *(v66 + 80);
  v30 = *(v65 + 80);
  v31 = *(v16 + 80);
  v32 = *(v16 + 64);
  if (v18)
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 + 1;
  }

  if (a2)
  {
    v34 = v20 + v26;
    v35 = v23 + v29;
    v36 = v24 + v30;
    v37 = v25 + v31;
    if (a2 <= v19)
    {
LABEL_75:
      if (v63 == v19)
      {
        v45 = (*(v61 + 48))(a1, v73, AssociatedTypeWitness, v28, v27, v34);
      }

      else
      {
        v46 = (a1 + v34) & ~v26;
        if (v60 == v19)
        {
          v45 = (*(v72 + 48))(v46, v71, v59, v28, v27);
        }

        else
        {
          v47 = (v46 + v21 + v27) & ~v27;
          if (v58 == v19)
          {
            v45 = (*(v70 + 48))(v47, v69, v57, v28);
          }

          else
          {
            v48 = (v47 + v76 + v28) & ~v28;
            if (v56 == v19)
            {
              v45 = (*(v68 + 48))(v48, v67, v55);
            }

            else
            {
              v49 = (v35 + v48) & ~v29;
              if (v54 == v19)
              {
                v45 = (*(v66 + 48))(v49, v75, v53);
              }

              else
              {
                v50 = (v36 + v49) & ~v30;
                if (v52 == v19)
                {
                  v45 = (*(v65 + 48))(v50, v11, v51);
                }

                else
                {
                  v45 = (*(v17 + 48))((v37 + v50) & ~v31);
                }
              }
            }
          }
        }
      }

      if (v45 >= 2)
      {
        return v45 - 1;
      }

      else
      {
        return 0;
      }
    }

    v38 = v33 + ((v37 + ((v36 + ((v35 + ((v76 + v28 + ((v21 + v27 + (v34 & ~v26)) & ~v27)) & ~v28)) & ~v29)) & ~v30)) & ~v31);
    v39 = 8 * v38;
    if (v38 > 3)
    {
LABEL_54:
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_74;
      }

      goto LABEL_61;
    }

    v41 = ((a2 - v19 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (!v40)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v41 <= 0xFF)
      {
        if (v41 < 2)
        {
LABEL_74:
          if (!v19)
          {
            return 0;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_74;
      }
    }

LABEL_61:
    v42 = (v40 - 1) << v39;
    if (v38 > 3)
    {
      v42 = 0;
    }

    if (v38)
    {
      if (v38 <= 3)
      {
        v43 = v38;
      }

      else
      {
        v43 = 4;
      }

      if (v43 > 2)
      {
        if (v43 == 3)
        {
          v44 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v44 = *a1;
        }
      }

      else if (v43 == 1)
      {
        v44 = *a1;
      }

      else
      {
        v44 = *a1;
      }
    }

    else
    {
      v44 = 0;
    }

    return v19 + (v44 | v42) + 1;
  }

  return result;
}

void sub_1AE15CD78(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v68 = *(swift_getAssociatedTypeWitness() - 8);
  v69 = *(v68 + 84);
  if (v69)
  {
    v4 = v69 - 1;
  }

  else
  {
    v4 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v66 = *(swift_getAssociatedTypeWitness() - 8);
  v67 = *(v66 + 84);
  v5 = v67 - 1;
  if (!v67)
  {
    v5 = 0;
  }

  v60 = v4;
  v59 = v5;
  if (v5 > v4)
  {
    v4 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v65 = *(swift_getAssociatedTypeWitness() - 8);
  v64 = *(v65 + 84);
  v6 = v64 - 1;
  if (!v64)
  {
    v6 = 0;
  }

  v58 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v63 = *(swift_getAssociatedTypeWitness() - 8);
  v62 = *(v63 + 84);
  v8 = v62 - 1;
  if (!v62)
  {
    v8 = 0;
  }

  v57 = v8;
  if (v8 > v7)
  {
    v7 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v61 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v61 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v56 = v10;
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v55 = v14;
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = 0;
  v17 = *(swift_getAssociatedTypeWitness() - 8);
  v18 = *(v17 + 84);
  v19 = *(v66 + 64);
  v20 = v18 - 1;
  if (!v18)
  {
    v20 = 0;
  }

  if (v20 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v20;
  }

  if (v69)
  {
    v22 = *(v68 + 64);
  }

  else
  {
    v22 = *(v68 + 64) + 1;
  }

  if (!v67)
  {
    ++v19;
  }

  if (v64)
  {
    v23 = *(v65 + 64);
  }

  else
  {
    v23 = *(v65 + 64) + 1;
  }

  v24 = *(v66 + 80);
  v25 = v22 + v24;
  v26 = *(v65 + 80);
  v27 = *(v63 + 80);
  v28 = v23 + v27 + ((v19 + v26 + ((v22 + v24) & ~v24)) & ~v26);
  v29 = *(v61 + 80);
  v30 = *(v12 + 80);
  v31 = *(v17 + 80);
  v32 = *(v17 + 64);
  if (v62)
  {
    v33 = *(v63 + 64);
  }

  else
  {
    v33 = *(v63 + 64) + 1;
  }

  if (v9)
  {
    v34 = *(v61 + 64);
  }

  else
  {
    v34 = *(v61 + 64) + 1;
  }

  if (v13)
  {
    v35 = *(v12 + 64);
  }

  else
  {
    v35 = *(v12 + 64) + 1;
  }

  v36 = v33 + v29;
  v37 = v34 + v30;
  v38 = (v37 + ((v33 + v29 + (v28 & ~v27)) & ~v29)) & ~v30;
  v39 = v35 + v31;
  v40 = (v35 + v31 + v38) & ~v31;
  if (!v18)
  {
    ++v32;
  }

  v41 = v40 + v32;
  if (a3 > v21)
  {
    if (v41 <= 3)
    {
      v42 = ((a3 - v21 + ~(-1 << (8 * v41))) >> (8 * v41)) + 1;
      if (HIWORD(v42))
      {
        v16 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v16 = v43;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  if (v21 < a2)
  {
    v44 = ~v21 + a2;
    if (v41 < 4)
    {
      v45 = (v44 >> (8 * v41)) + 1;
      if (v41)
      {
        v46 = v44 & ~(-1 << (8 * v41));
        bzero(a1, v41);
        if (v41 != 3)
        {
          if (v41 == 2)
          {
            *a1 = v46;
            if (v16 > 1)
            {
LABEL_91:
              if (v16 == 2)
              {
                *&a1[v41] = v45;
              }

              else
              {
                *&a1[v41] = v45;
              }

              return;
            }
          }

          else
          {
            *a1 = v44;
            if (v16 > 1)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_88;
        }

        *a1 = v46;
        a1[2] = BYTE2(v46);
      }

      if (v16 > 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      bzero(a1, v41);
      *a1 = v44;
      v45 = 1;
      if (v16 > 1)
      {
        goto LABEL_91;
      }
    }

LABEL_88:
    if (v16)
    {
      a1[v41] = v45;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v41] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_78;
    }

    *&a1[v41] = 0;
  }

  else if (v16)
  {
    a1[v41] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_78;
  }

  if (!a2)
  {
    return;
  }

LABEL_78:
  if (v60 == v21)
  {
    v47 = *(v68 + 56);
LABEL_101:

    v47();
    return;
  }

  if (v59 == v21)
  {
    v47 = *(v66 + 56);
    goto LABEL_101;
  }

  if (v58 == v21)
  {
    v47 = *(v65 + 56);
    goto LABEL_101;
  }

  if (v57 == v21)
  {
    v47 = *(v63 + 56);
    goto LABEL_101;
  }

  if (v56 == v21)
  {
    v47 = *(v61 + 56);
    goto LABEL_101;
  }

  v48 = (v37 + ((v36 + (((((&a1[v25] & ~v24) + v19 + v26) & ~v26) + v23 + v27) & ~v27)) & ~v29)) & ~v30;
  if (v55 == v21)
  {
    v47 = *(v12 + 56);
    goto LABEL_101;
  }

  v49 = (v39 + v48) & ~v31;
  if (v20 >= a2)
  {
    v53 = *(v17 + 56);
    v54 = (v39 + v48) & ~v31;

    v53(v54, a2 + 1);
  }

  else
  {
    if (v32 <= 3)
    {
      v50 = ~(-1 << (8 * v32));
    }

    else
    {
      v50 = -1;
    }

    if (v32)
    {
      v51 = v50 & (~v20 + a2);
      if (v32 <= 3)
      {
        v52 = v32;
      }

      else
      {
        v52 = 4;
      }

      bzero(((v39 + v48) & ~v31), v32);
      if (v52 > 2)
      {
        if (v52 == 3)
        {
          *v49 = v51;
          *(v49 + 2) = BYTE2(v51);
        }

        else
        {
          *v49 = v51;
        }
      }

      else if (v52 == 1)
      {
        *v49 = v51;
      }

      else
      {
        *v49 = v51;
      }
    }
  }
}

uint64_t sub_1AE15D71C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v5 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v6 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            swift_getAssociatedTypeWitness();
            result = sub_1AE23D7CC();
            if (v7 <= 0x3F)
            {
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              swift_getAssociatedTypeWitness();
              result = sub_1AE23D7CC();
              if (v8 <= 0x3F)
              {
                swift_getAssociatedTypeWitness();
                swift_getAssociatedConformanceWitness();
                swift_getAssociatedTypeWitness();
                result = sub_1AE23D7CC();
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
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

uint64_t sub_1AE15DB50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  v68 = v81;
  v80 = *(v81 + 84);
  if (v80)
  {
    v3 = v80 - 1;
  }

  else
  {
    v3 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v66 = swift_getAssociatedTypeWitness();
  v77 = *(v66 - 8);
  v79 = v77;
  v76 = *(v77 + 84);
  v4 = v76 - 1;
  if (!v76)
  {
    v4 = 0;
  }

  v70 = v3;
  v67 = v4;
  if (v4 > v3)
  {
    v3 = v4;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v64 = swift_getAssociatedTypeWitness();
  v75 = *(v64 - 8);
  v87 = *(v75 + 84);
  v5 = v87 - 1;
  if (!v87)
  {
    v5 = 0;
  }

  v65 = v5;
  if (v5 > v3)
  {
    v3 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v62 = swift_getAssociatedTypeWitness();
  v74 = *(v62 - 8);
  v86 = *(v74 + 84);
  v6 = v86 - 1;
  if (!v86)
  {
    v6 = 0;
  }

  v63 = v6;
  if (v6 <= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v60 = swift_getAssociatedTypeWitness();
  v73 = *(v60 - 8);
  v85 = *(v73 + 84);
  v8 = v85 - 1;
  if (!v85)
  {
    v8 = 0;
  }

  v61 = v8;
  if (v8 > v7)
  {
    v7 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v58 = swift_getAssociatedTypeWitness();
  v72 = *(v58 - 8);
  v9 = *(v72 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v59 = v10;
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v56 = swift_getAssociatedTypeWitness();
  v12 = *(v56 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v57 = v14;
  if (v14 > v11)
  {
    v11 = v14;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  result = a2;
  v17 = *(v15 - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  if (v20 <= v11)
  {
    v20 = v11;
  }

  if (v80)
  {
    v21 = *(v81 + 64);
  }

  else
  {
    v21 = *(v81 + 64) + 1;
  }

  if (v76)
  {
    v22 = *(v77 + 64);
  }

  else
  {
    v22 = *(v77 + 64) + 1;
  }

  v23 = *(v75 + 64);
  if (!v87)
  {
    ++v23;
  }

  v83 = v23;
  if (v86)
  {
    v24 = *(v74 + 64);
  }

  else
  {
    v24 = *(v74 + 64) + 1;
  }

  if (v85)
  {
    v25 = *(v73 + 64);
  }

  else
  {
    v25 = *(v73 + 64) + 1;
  }

  v82 = v9;
  if (v9)
  {
    v26 = *(v72 + 64);
  }

  else
  {
    v26 = *(v72 + 64) + 1;
  }

  v78 = v13;
  if (v13)
  {
    v27 = *(v12 + 64);
  }

  else
  {
    v27 = *(v12 + 64) + 1;
  }

  v28 = *(v79 + 80);
  v29 = *(v75 + 80);
  v30 = *(v74 + 80);
  v31 = *(v73 + 80);
  v32 = *(v72 + 80);
  v33 = *(v12 + 80);
  v34 = *(v17 + 80);
  v35 = *(v17 + 64);
  if (v19)
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 + 1;
  }

  if (a2)
  {
    v37 = v21 + v28;
    v38 = v24 + v31;
    v39 = v25 + v32;
    v40 = v26 + v33;
    v41 = v27 + v34;
    if (a2 <= v20)
    {
LABEL_81:
      if (v70 == v20)
      {
        v49 = (*(v68 + 48))(a1, v80, AssociatedTypeWitness, v31, v30, v29, v38, v37);
      }

      else
      {
        v50 = (a1 + v37) & ~v28;
        if (v67 == v20)
        {
          v49 = (*(v79 + 48))(v50, v76, v66, v31, v30, v29, v38);
        }

        else
        {
          v51 = (v50 + v22 + v29) & ~v29;
          if (v65 == v20)
          {
            v49 = (*(v75 + 48))(v51, v87, v64);
          }

          else
          {
            v52 = (v51 + v83 + v30) & ~v30;
            if (v63 == v20)
            {
              v49 = (*(v74 + 48))(v52, v86, v62);
            }

            else
            {
              v53 = (v38 + v52) & ~v31;
              if (v61 == v20)
              {
                v49 = (*(v73 + 48))(v53, v85, v60);
              }

              else
              {
                v54 = (v39 + v53) & ~v32;
                if (v59 == v20)
                {
                  v49 = (*(v72 + 48))(v54, v82, v58);
                }

                else
                {
                  v55 = (v40 + v54) & ~v33;
                  if (v57 == v20)
                  {
                    v49 = (*(v12 + 48))(v55, v78, v56);
                  }

                  else
                  {
                    v49 = (*(v18 + 48))((v41 + v55) & ~v34);
                  }
                }
              }
            }
          }
        }
      }

      if (v49 >= 2)
      {
        return v49 - 1;
      }

      else
      {
        return 0;
      }
    }

    v42 = v36 + ((v41 + ((v40 + ((v39 + ((v38 + ((v83 + v30 + ((v22 + v29 + (v37 & ~v28)) & ~v29)) & ~v30)) & ~v31)) & ~v32)) & ~v33)) & ~v34);
    v43 = 8 * v42;
    if (v42 > 3)
    {
LABEL_60:
      v44 = *(a1 + v42);
      if (!*(a1 + v42))
      {
        goto LABEL_80;
      }

      goto LABEL_67;
    }

    v45 = ((a2 - v20 + ~(-1 << v43)) >> v43) + 1;
    if (HIWORD(v45))
    {
      v44 = *(a1 + v42);
      if (!v44)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v45 <= 0xFF)
      {
        if (v45 < 2)
        {
LABEL_80:
          if (!v20)
          {
            return 0;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

      v44 = *(a1 + v42);
      if (!*(a1 + v42))
      {
        goto LABEL_80;
      }
    }

LABEL_67:
    v46 = (v44 - 1) << v43;
    if (v42 > 3)
    {
      v46 = 0;
    }

    if (v42)
    {
      if (v42 <= 3)
      {
        v47 = v42;
      }

      else
      {
        v47 = 4;
      }

      if (v47 > 2)
      {
        if (v47 == 3)
        {
          v48 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v48 = *a1;
        }
      }

      else if (v47 == 1)
      {
        v48 = *a1;
      }

      else
      {
        v48 = *a1;
      }
    }

    else
    {
      v48 = 0;
    }

    return v20 + (v48 | v46) + 1;
  }

  return result;
}