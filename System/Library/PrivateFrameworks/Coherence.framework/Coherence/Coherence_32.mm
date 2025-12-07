void CRStructMergeableDelta_5.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v253 = a1;
  v212 = a4;
  v213 = a3;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v234 = AssociatedTypeWitness;
  v225 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v219 = *(v7 - 8);
  v220 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v211 = v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v201 = v181 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v239 = v181 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v202 = swift_getAssociatedConformanceWitness();
  v235 = v13;
  v226 = swift_getAssociatedTypeWitness();
  v230 = sub_1AE23D7CC();
  v222 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v210 = v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v203 = v181 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v243 = v181 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v204 = swift_getAssociatedConformanceWitness();
  v236 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v231 = sub_1AE23D7CC();
  v223 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v209 = v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v205 = v181 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v244 = v181 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v206 = swift_getAssociatedConformanceWitness();
  v237 = v26;
  v227 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v232 = *(v27 - 8);
  v233 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v217 = v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v181 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v245 = v181 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v252 = a2;
  v207 = swift_getAssociatedConformanceWitness();
  v238 = v34;
  v35 = v253;
  v36 = swift_getAssociatedTypeWitness();
  v37 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v246 = v181 - v46;
  if (*(v35 + 64))
  {
    v192 = v45;
    v214 = v36;
    v208 = v20;
    v198 = v44;
    v216 = v43;
    v218 = v40;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v35;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v49 = *(v48 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    if ((~v49 & 0xF000000000000007) != 0)
    {
      v51 = MEMORY[0x1E69E7CC0];
      v228 = MEMORY[0x1E69E7CC0];
      if ((v49 & 0xF000000000000000) == 0x3000000000000000)
      {
        v52 = (v49 & 0xFFFFFFFFFFFFFFFLL);
        v50 = v52[2];
        v51 = v52[3];
        v53 = v52[4];

        v228 = v53;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E7CC0];
      v228 = MEMORY[0x1E69E7CC0];
    }

    v224 = v51;

    (*(v5 + 96))(&TupleTypeMetadata2);
    v240 = v260;
    v241 = v263;
    v242 = v266;
    v215 = v269;
    v197 = TupleTypeMetadata2;
    v271[0] = TupleTypeMetadata2;
    v271[1] = v257;
    v229 = v257;
    v251 = v258;
    v271[2] = v258;
    v271[3] = v259;
    v194 = v262;
    v195 = v259;
    v271[4] = v260;
    v271[5] = v261;
    v250 = v261;
    v271[6] = v262;
    v271[7] = v263;
    v249 = v264;
    v271[8] = v264;
    v271[9] = v265;
    v193 = v265;
    v271[10] = v266;
    v271[11] = v267;
    v248 = v267;
    v191 = v268;
    v271[12] = v268;
    v271[13] = v269;
    v247 = v270;
    v271[14] = v270;
    v56 = *(v50 + 16);
    v190 = v31;
    if (v56)
    {
      v272 = MEMORY[0x1E69E7CC0];

      sub_1ADE6F0BC(0, v56, 0);
      v57 = 0;
      v58 = v272;
      v59 = *(v50 + 16);
      if (v59 >= v56)
      {
        v59 = v56;
      }

      v254 = v59;
      v60 = v253;
      v255 = v50;
      while (v254 != v57)
      {
        if (v57 >= *(v50 + 16))
        {
          goto LABEL_79;
        }

        v61 = *(v50 + 8 * v57 + 32);
        v62 = *(v60 + 32);
        v63 = *(v62 + 16);
        if (v63)
        {
          v64 = v61 >= v63;
        }

        else
        {
          v64 = 1;
        }

        if (v64)
        {
          swift_bridgeObjectRelease_n();

          sub_1ADE42E40(v71, v72, v73);
          v74 = swift_allocError();
          *v75 = 0xD000000000000015;
          *(v75 + 8) = 0x80000001AE25FCF0;
          *(v75 + 16) = 0;
          v254 = v74;
          swift_willThrow();

          sub_1AE23DB8C();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v257 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v258 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v259 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v260 = swift_getTupleTypeMetadata2();
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          (*(*(TupleTypeMetadata - 8) + 8))(v271, TupleTypeMetadata);
          goto LABEL_23;
        }

        v65 = v62 + 16 * v61;
        v66 = *(v65 + 32);
        v67 = *(v65 + 40);
        v272 = v58;
        v69 = *(v58 + 16);
        v68 = *(v58 + 24);

        if (v69 >= v68 >> 1)
        {
          sub_1ADE6F0BC((v68 > 1), v69 + 1, 1);
          v60 = v253;
          v58 = v272;
        }

        *(v58 + 16) = v69 + 1;
        v70 = (v58 + 24 * v69);
        v70[5] = v67;
        v70[6] = v57;
        v70[4] = v66;
        ++v57;
        v50 = v255;
        if (v56 == v57)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v77 = v227;
    if (*(v58 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
      v78 = sub_1AE23DCDC();
    }

    else
    {
      v78 = MEMORY[0x1E69E7CC8];
    }

    v79 = v226;
    TupleTypeMetadata2 = v78;

    v81 = v221;
    sub_1AE156D10(v80, 1, &TupleTypeMetadata2);
    v254 = v81;
    if (v81)
    {
      goto LABEL_90;
    }

    v82 = TupleTypeMetadata2;
    v83 = *(v214 - 8);
    v84 = *(v83 + 56);
    v189 = v83 + 56;
    v84(v246, 1, 1);
    v85 = *(v77 - 8);
    v86 = *(v85 + 56);
    v187 = v85 + 56;
    v188 = v86;
    v86(v245, 1, 1, v77);
    v87 = *(v208 - 8);
    v88 = *(v87 + 56);
    v185 = v87 + 56;
    v186 = v88;
    (v88)(v244, 1, 1);
    v89 = *(v79 - 8);
    v90 = *(v89 + 56);
    v183 = v89 + 56;
    v184 = v90;
    v90(v243, 1, 1, v79);
    v91 = *(v225 - 8);
    v92 = *(v91 + 56);
    v181[1] = v91 + 56;
    v182 = v92;
    (v92)(v239, 1, 1);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v257 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v258 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v259 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v260 = swift_getTupleTypeMetadata2();
    v93 = swift_getTupleTypeMetadata();
    v196 = *(v93 - 8);
    v94 = v196 + 16;
    v95 = *(v196 + 16);
    v95(&TupleTypeMetadata2, v271, v93);

    v96 = v215;

    v97 = *(v82 + 16);
    v221 = v93;
    v199 = v94;
    if (v97)
    {
      v181[0] = v84;
      v98 = sub_1ADDD7A10(v197, v229);
      v100 = v99;

      if (v100)
      {
        v101 = *(*(v82 + 56) + 8 * v98);
        if ((v101 & 0x8000000000000000) != 0)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v93 = v221;
        if (v101 >= *(v224 + 16))
        {
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v102 = v253;

        v104 = sub_1ADDE77B4(v103, v102);

        v105 = v214;
        v106 = swift_getAssociatedConformanceWitness();
        v107 = v192;
        v108 = v254;
        (*(*(v106 + 8) + 8))(v104, v105);
        v254 = v108;
        if (v108)
        {

          (*(v196 + 8))(v271, v93);
LABEL_61:
          (*(v219 + 8))(v239, v220);
LABEL_62:
          (*(v222 + 8))(v243, v230);
          (*(v223 + 8))(v244, v231);
LABEL_76:
          (*(v232 + 8))(v245, v233);
          (*(v216 + 8))(v246, v218);
          return;
        }

        v109 = v216;
        v110 = *(v216 + 8);
        v255 = v50;
        v111 = v246;
        v110(v246, v218);
        (v181[0])(v107, 0, 1, v105);
        v112 = v111;
        v50 = v255;
        (*(v109 + 32))(v112, v107, v218);
        v96 = v215;
      }

      else
      {
        v93 = v221;
      }
    }

    else
    {
    }

    v95(&TupleTypeMetadata2, v271, v93);

    if (*(v82 + 16))
    {
      v113 = sub_1ADDD7A10(v195, v240);
      v115 = v114;

      if (v115)
      {
        v116 = *(*(v82 + 56) + 8 * v113);
        if ((v116 & 0x8000000000000000) != 0)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v238 = v95;
        v117 = v221;
        if (v116 >= *(v224 + 16))
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v118 = v253;

        v120 = sub_1ADDE77B4(v119, v118);

        v121 = v227;
        v122 = swift_getAssociatedConformanceWitness();
        v123 = v190;
        v124 = v254;
        (*(*(v122 + 8) + 8))(v120, v121);
        v254 = v124;
        if (v124)
        {

          (*(v196 + 8))(v271, v117);
          goto LABEL_61;
        }

        v126 = v232;
        v125 = v233;
        v127 = *(v232 + 8);
        v255 = v50;
        v128 = v245;
        v127(v245, v233);
        v188(v123, 0, 1, v121);
        v129 = *(v126 + 32);
        v130 = v128;
        v50 = v255;
        v93 = v221;
        v129(v130, v123, v125);
        v96 = v215;
        v95 = v238;
      }

      else
      {
        v93 = v221;
      }
    }

    else
    {
    }

    v95(&TupleTypeMetadata2, v271, v93);

    if (*(v82 + 16))
    {
      v131 = sub_1ADDD7A10(v194, v241);
      v133 = v132;

      if (v133)
      {
        v238 = v82;
        v134 = *(*(v82 + 56) + 8 * v131);
        if ((v134 & 0x8000000000000000) != 0)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        if (v134 >= *(v224 + 16))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v135 = v253;

        v137 = sub_1ADDE77B4(v136, v135);

        v138 = v208;
        v139 = swift_getAssociatedConformanceWitness();
        v140 = v205;
        v141 = v254;
        (*(*(v139 + 8) + 8))(v137, v138);
        v254 = v141;
        v82 = v238;
        if (v141)
        {
          goto LABEL_60;
        }

        v142 = v223;
        v143 = *(v223 + 8);
        v255 = v50;
        v144 = v244;
        v145 = v231;
        v143(v244, v231);
        v186(v140, 0, 1, v138);
        (*(v142 + 32))(v144, v140, v145);
        v96 = v215;
        v93 = v221;
      }
    }

    else
    {
    }

    v95(&TupleTypeMetadata2, v271, v93);

    if (*(v82 + 16))
    {
      v238 = v95;
      v146 = sub_1ADDD7A10(v193, v242);
      v148 = v147;

      if (v148)
      {
        v149 = *(*(v82 + 56) + 8 * v146);
        if ((v149 & 0x8000000000000000) != 0)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v150 = v203;
        if (v149 >= *(v224 + 16))
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v151 = v253;

        v153 = sub_1ADDE77B4(v152, v151);

        v154 = v226;
        v155 = swift_getAssociatedConformanceWitness();
        v156 = v254;
        (*(*(v155 + 8) + 8))(v153, v154);
        v254 = v156;
        if (v156)
        {
LABEL_60:

          (*(v196 + 8))(v271, v221);
          goto LABEL_61;
        }

        v157 = v222;
        v158 = v243;
        v159 = v230;
        (*(v222 + 8))(v243, v230);
        v184(v150, 0, 1, v154);
        (*(v157 + 32))(v158, v150, v159);
        v96 = v215;
        v93 = v221;
      }

      v95 = v238;
    }

    else
    {
    }

    v95(&TupleTypeMetadata2, v271, v93);

    if (*(v82 + 16))
    {
      v160 = sub_1ADDD7A10(v191, v96);
      v162 = v161;

      if (v162)
      {
        v163 = *(*(v82 + 56) + 8 * v160);

        if ((v163 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v164 = v225;
        v165 = v219;
        v166 = v220;
        v167 = v201;
        if (v163 >= *(v224 + 16))
        {
LABEL_89:
          __break(1u);
LABEL_90:
          swift_unexpectedError();
          __break(1u);
          return;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v168 = v253;

        v170 = sub_1ADDE77B4(v169, v168);

        v171 = swift_getAssociatedConformanceWitness();
        v172 = v254;
        (*(*(v171 + 8) + 8))(v170, v164);
        v254 = v172;
        if (v172)
        {

          (*(v196 + 8))(v271, v221);
          (*(v165 + 8))(v239, v166);
          goto LABEL_62;
        }

        v180 = v239;
        (*(v165 + 8))(v239, v166);
        v182(v167, 0, 1, v164);
        (*(v165 + 32))(v180, v167, v166);
        v173 = v166;
LABEL_75:
        (*(v216 + 16))(v198, v246, v218);
        (*(v232 + 16))(v217, v245, v233);
        v174 = v223;
        v175 = v209;
        (*(v223 + 16))(v209, v244, v231);
        v176 = v222;
        v177 = v210;
        (*(v222 + 16))(v210, v243, v230);
        v178 = v211;
        v179 = v239;
        (*(v165 + 16))(v211, v239, v173);
        CRStructMergeableDelta_5.init(_:_:_:_:_:)(v198, v217, v175, v177, v178, v252, v213, v212);

        (*(v196 + 8))(v271, v221);
        (*(v165 + 8))(v179, v173);
        (*(v176 + 8))(v243, v230);
        (*(v174 + 8))(v244, v231);
        goto LABEL_76;
      }
    }

    else
    {
    }

    v165 = v219;
    v173 = v220;
    goto LABEL_75;
  }

  sub_1ADE42E40(v40, v41, v42);
  v54 = swift_allocError();
  *v55 = 0xD000000000000014;
  *(v55 + 8) = 0x80000001AE25FB50;
  *(v55 + 16) = 0;
  v254 = v54;
  swift_willThrow();
LABEL_23:
}

uint64_t CRStructMergeableDelta_5.encode(to:)(uint64_t a1, uint64_t a2)
{
  v149 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v139 = a2;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v126 = sub_1AE23D7CC();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v96 - v7;
  v127 = v6;
  v129 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v96 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v114 = swift_getAssociatedConformanceWitness();
  v115 = v10;
  v11 = swift_getAssociatedTypeWitness();
  v122 = sub_1AE23D7CC();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v96 - v12;
  v135 = v11;
  v123 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v96 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v117 = swift_getAssociatedConformanceWitness();
  v118 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v133 = sub_1AE23D7CC();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v96 - v17;
  v130 = v16;
  v134 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v96 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v128 = swift_getAssociatedConformanceWitness();
  v136 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v145 = sub_1AE23D7CC();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v96 - v22;
  v138 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v96 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedTypeWitness();
  v142 = sub_1AE23D7CC();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v96 - v28;
  v148 = v27;
  v147 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v96 - v30;
  v32 = v149;
  v33 = v151;
  result = sub_1ADDFCC74(v34, v35, v36);
  if (!v33)
  {
    v38 = result;
    v99 = v26;
    v100 = v25;
    v101 = v31;
    v102 = v21;
    v151 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v38;
    *(inited + 24) = v32;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    (*(v4 + 96))(v150, v3, v4);
    v40 = v150[0];
    v41 = v150[1];
    v108 = v150[2];
    v98 = v150[3];
    v149 = v150[4];
    v107 = v150[5];
    v97 = v150[6];
    v110 = v150[7];
    v42 = v150[9];
    v106 = v150[8];
    v109 = v150[10];
    v105 = v150[11];
    v43 = v150[12];
    v104 = v150[13];
    v103 = v150[14];
    v44 = v141;
    v45 = v140;
    v46 = v146;
    v47 = v142;
    (*(v141 + 16))(v140, v146, v142);
    if ((*(v147 + 48))(v45, 1, v148) == 1)
    {
      v99 = v42;
      v96 = v43;
      v100 = v41;
      (*(v44 + 8))(v45, v47);
      v48 = inited;
      v49 = v145;
      v50 = v144;
      v51 = v143;
    }

    else
    {
      v52 = v40;
      v53 = inited;
      v54 = v46;
      v55 = v101;
      v56 = v148;
      (*(v147 + 32))(v101, v45, v148);
      v57 = swift_getAssociatedConformanceWitness();
      v58 = v151;
      sub_1ADDFD59C(v55, v52, v41, v56, *(v57 + 8));
      v151 = v58;
      v48 = v53;
      v49 = v145;
      v50 = v144;
      v51 = v143;
      if (v58)
      {
        swift_setDeallocating();

        return (*(v147 + 8))(v55, v148);
      }

      v99 = v42;
      v96 = v43;
      v100 = v41;
      (*(v147 + 8))(v55, v148);
      v46 = v54;
    }

    v59 = v139;
    (*(v50 + 16))(v51, v46 + *(v139 + 36), v49);
    v60 = v138;
    v61 = v102;
    v62 = (*(v138 + 48))(v51, 1, v102);
    v63 = v137;
    if (v62 == 1)
    {
      (*(v50 + 8))(v51, v49);
    }

    else
    {
      (*(v60 + 32))(v137, v51, v61);
      v64 = swift_getAssociatedConformanceWitness();
      v65 = v151;
      sub_1ADDFD59C(v63, v98, v149, v61, *(v64 + 8));
      v151 = v65;
      if (v65)
      {
        swift_setDeallocating();

        return (*(v60 + 8))(v63, v61);
      }

      (*(v60 + 8))(v63, v61);
    }

    v66 = v132;
    v67 = v131;
    v148 = v48;
    v68 = v133;
    (*(v132 + 16))(v131, v46 + *(v59 + 40), v133);
    v69 = v134;
    v70 = v130;
    v71 = (*(v134 + 48))(v67, 1, v130);
    v72 = v135;
    if (v71 == 1)
    {
      (*(v66 + 8))(v67, v68);
    }

    else
    {
      v73 = v119;
      (*(v69 + 32))(v119, v67, v70);
      v74 = swift_getAssociatedConformanceWitness();
      v75 = v151;
      sub_1ADDFD59C(v73, v97, v110, v70, *(v74 + 8));
      v151 = v75;
      if (v75)
      {
        swift_setDeallocating();

        return (*(v69 + 8))(v73, v70);
      }

      (*(v69 + 8))(v73, v70);
    }

    v76 = v121;
    v77 = v120;
    v78 = v122;
    (*(v121 + 16))(v120, v46 + *(v59 + 44), v122);
    v79 = v123;
    v80 = (*(v123 + 48))(v77, 1, v72);
    v81 = v78;
    v82 = v127;
    v83 = v129;
    v84 = v126;
    v85 = v76;
    v86 = v125;
    v87 = v124;
    if (v80 == 1)
    {
      (*(v85 + 8))(v77, v81);
      v88 = v104;
    }

    else
    {
      v89 = v72;
      v90 = v116;
      (*(v79 + 32))(v116, v77, v89);
      v91 = swift_getAssociatedConformanceWitness();
      v92 = v151;
      sub_1ADDFD59C(v90, v99, v109, v89, *(v91 + 8));
      v151 = v92;
      if (v92)
      {
        swift_setDeallocating();

        return (*(v79 + 8))(v90, v89);
      }

      (*(v79 + 8))(v90, v89);
      v88 = v104;
      v83 = v129;
    }

    (*(v86 + 16))(v87, v146 + *(v139 + 48), v84);
    if ((*(v83 + 48))(v87, 1, v82) == 1)
    {

      return (*(v86 + 8))(v87, v84);
    }

    else
    {
      v93 = v113;
      (*(v83 + 32))();
      v94 = swift_getAssociatedConformanceWitness();
      v95 = v151;
      sub_1ADDFD59C(v93, v96, v88, v82, *(v94 + 8));
      v151 = v95;
      if (v95)
      {
        swift_setDeallocating();
      }

      return (*(v83 + 8))(v93, v82);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a9, 1, 1, AssociatedTypeWitness);
  v13 = type metadata accessor for CRStructMergeableDelta_6(0, a7, a8, v12);
  v14 = v13[9];
  v33 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 56))(a9 + v14, 1, 1, v32);
  v15 = v13[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedTypeWitness();
  (*(*(v30 - 8) + 56))(a9 + v15, 1, 1, v30);
  v16 = v13[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 56))(a9 + v16, 1, 1, v17);
  v18 = v13[12];
  v31 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = v13[13];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = sub_1AE23D7CC();
  (*(*(v22 - 8) + 40))(a9, a1, v22);
  v23 = sub_1AE23D7CC();
  (*(*(v23 - 8) + 40))(a9 + v33, a2, v23);
  v24 = sub_1AE23D7CC();
  (*(*(v24 - 8) + 40))(a9 + v15, a3, v24);
  v25 = sub_1AE23D7CC();
  (*(*(v25 - 8) + 40))(a9 + v16, a4, v25);
  v26 = sub_1AE23D7CC();
  (*(*(v26 - 8) + 40))(a9 + v31, a5, v26);
  v27 = sub_1AE23D7CC();
  v28 = *(*(v27 - 8) + 40);

  return v28(a9 + v20, a6, v27);
}

BOOL CRStructMergeableDelta_6.merge(delta:)(char *a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v167 = AssociatedTypeWitness;
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v192 = *(v6 - 8);
  v193 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v172 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v191 = &v153 - v9;
  v202 = v5;
  v201 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v153 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v164 = swift_getAssociatedConformanceWitness();
  v165 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v187 = *(v14 - 8);
  v188 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v171 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v186 = &v153 - v17;
  v190 = v13;
  v196 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v153 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v162 = swift_getAssociatedConformanceWitness();
  v163 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v184 = sub_1AE23D7CC();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v170 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v182 = &v153 - v24;
  v200 = v21;
  v195 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v185 = &v153 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v160 = swift_getAssociatedConformanceWitness();
  v161 = v27;
  v28 = swift_getAssociatedTypeWitness();
  v179 = sub_1AE23D7CC();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v169 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v198 = &v153 - v31;
  v181 = v28;
  v199 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v180 = &v153 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v158 = swift_getAssociatedConformanceWitness();
  v159 = v34;
  v35 = swift_getAssociatedTypeWitness();
  v205 = sub_1AE23D7CC();
  v176 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v168 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v174 = &v153 - v38;
  v177 = v35;
  v197 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v175 = &v153 - v40;
  v41 = swift_getAssociatedTypeWitness();
  v156 = swift_getAssociatedConformanceWitness();
  v157 = v41;
  v42 = a1;
  v43 = swift_getAssociatedTypeWitness();
  v44 = sub_1AE23D7CC();
  v203 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v153 - v48;
  v50 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v173 = &v153 - v52;
  v53 = *(a2 - 1);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v153 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v57, v207, a2, v55);
  v58 = CRStructMergeableDelta_6.canMerge(delta:)(v42, a2);
  (*(v53 + 8))(v57, a2);
  if (!v58)
  {
    return v58;
  }

  v155 = v58;
  v204 = a2;
  v59 = *(v203 + 16);
  v206 = v42;
  v59(v49, v42, v44);
  v60 = *(v50 + 48);
  if (v60(v49, 1, v43) == 1)
  {
    (*(v203 + 8))(v49, v44);
LABEL_6:
    v64 = v204;
    v65 = v206;
    v67 = v197;
    v66 = v198;
    goto LABEL_11;
  }

  v154 = *(v50 + 32);
  v154(v173, v49, v43);
  v61 = v207;
  v59(v46, v207, v44);
  v62 = v60(v46, 1, v43);
  v63 = *(v203 + 8);
  v63(v46, v44);
  if (v62 == 1)
  {
    v63(v61, v44);
    v154(v61, v173, v43);
    (*(v50 + 56))(v61, 0, 1, v43);
    goto LABEL_6;
  }

  v68 = v60(v61, 1, v43);
  v64 = v204;
  v67 = v197;
  if (v68)
  {
    (*(v50 + 8))(v173, v43);
  }

  else
  {
    v69 = swift_getAssociatedConformanceWitness();
    v70 = v173;
    (*(v69 + 16))(v173, v43, v69);
    v64 = v204;
    (*(v50 + 8))(v70, v43);
  }

  v65 = v206;
  v66 = v198;
LABEL_11:
  v71 = v176;
  v72 = v174;
  v73 = *(v176 + 16);
  v73(v174, &v65[v64[9]], v205);
  v74 = v177;
  v203 = *(v67 + 48);
  if ((v203)(v72, 1, v177) == 1)
  {
    (*(v71 + 8))(v72, v205);
    v75 = v179;
    v76 = v178;
    v77 = v199;
  }

  else
  {
    v176 = *(v67 + 32);
    (v176)(v175, v72, v74);
    v78 = v64[9];
    v79 = v207;
    v80 = v168;
    v81 = v205;
    v73(v168, &v207[v78], v205);
    v82 = (v203)(v80, 1, v74);
    v83 = *(v71 + 8);
    v83(v80, v81);
    if (v82 == 1)
    {
      v83(&v79[v78], v205);
      (v176)(&v79[v78], v175, v74);
      (*(v197 + 56))(&v79[v78], 0, 1, v74);
      v64 = v204;
      v77 = v199;
      v75 = v179;
      v76 = v178;
    }

    else
    {
      v84 = v175;
      v85 = (v203)(&v79[v78], 1, v74);
      v76 = v178;
      if (!v85)
      {
        v86 = swift_getAssociatedConformanceWitness();
        (*(v86 + 16))(v84, v74, v86);
      }

      (*(v197 + 8))(v84, v74);
      v64 = v204;
      v77 = v199;
      v75 = v179;
    }

    v66 = v198;
  }

  v87 = v76;
  v88 = *(v76 + 16);
  v88(v66, &v206[v64[10]], v75);
  v89 = *(v77 + 48);
  v90 = v181;
  if (v89(v66, 1, v181) == 1)
  {
    (*(v76 + 8))(v66, v75);
LABEL_23:
    v97 = v195;
    v98 = v183;
    goto LABEL_28;
  }

  v203 = *(v77 + 32);
  (v203)(v180, v66, v90);
  v91 = v64[10];
  v92 = v207;
  v205 = v91;
  v93 = v169;
  v88(v169, &v207[v91], v75);
  v94 = v89(v93, 1, v90);
  v95 = *(v87 + 8);
  v95(v93, v75);
  if (v94 == 1)
  {
    v96 = v205;
    v95(&v92[v205], v75);
    (v203)(&v92[v96], v180, v90);
    (*(v199 + 56))(&v92[v96], 0, 1, v90);
    v64 = v204;
    goto LABEL_23;
  }

  v99 = v89(&v92[v205], 1, v90);
  v98 = v183;
  if (v99)
  {
    (*(v199 + 8))(v180, v90);
  }

  else
  {
    v100 = swift_getAssociatedConformanceWitness();
    v101 = v180;
    (*(v100 + 16))(v180, v90, v100);
    (*(v199 + 8))(v101, v90);
  }

  v64 = v204;
  v97 = v195;
LABEL_28:
  v102 = v184;
  v103 = *(v98 + 16);
  v104 = v206;
  v105 = v182;
  v103(v182, &v206[v64[11]], v184);
  v106 = v200;
  v205 = *(v97 + 48);
  if ((v205)(v105, 1, v200) == 1)
  {
    (*(v98 + 8))(v105, v102);
    v107 = v196;
  }

  else
  {
    v108 = v102;
    v199 = *(v97 + 32);
    (v199)(v185, v105, v106);
    v109 = v64[11];
    v110 = v207;
    v203 = v109;
    v111 = v106;
    v112 = v170;
    v103(v170, &v207[v109], v102);
    v113 = (v205)(v112, 1, v111);
    v114 = *(v98 + 8);
    v114(v112, v102);
    if (v113 == 1)
    {
      v115 = v203;
      v114(&v110[v203], v108);
      v116 = v200;
      (v199)(&v110[v115], v185, v200);
      (*(v97 + 56))(&v110[v115], 0, 1, v116);
    }

    else
    {
      v117 = v200;
      if ((v205)(&v110[v203], 1, v200))
      {
        (*(v195 + 8))(v185, v117);
      }

      else
      {
        v118 = swift_getAssociatedConformanceWitness();
        v119 = v185;
        (*(v118 + 16))(v185, v117, v118);
        (*(v195 + 8))(v119, v117);
      }
    }

    v64 = v204;
    v107 = v196;
    v104 = v206;
  }

  v120 = v187;
  v121 = *(v187 + 16);
  v122 = &v104[v64[12]];
  v123 = v186;
  v124 = v188;
  v121(v186, v122, v188);
  v125 = *(v107 + 48);
  v126 = v190;
  if (v125(v123, 1, v190) == 1)
  {
    (*(v120 + 8))(v123, v124);
  }

  else
  {
    v203 = *(v107 + 32);
    v200 = v107 + 32;
    (v203)(v189, v123, v126);
    v127 = v207;
    v205 = v64[12];
    v128 = v171;
    v121(v171, &v207[v205], v124);
    v129 = v125(v128, 1, v126);
    v130 = *(v120 + 8);
    v130(v128, v124);
    if (v129 == 1)
    {
      v131 = v205;
      v130(&v127[v205], v124);
      (v203)(&v127[v131], v189, v126);
      (*(v107 + 56))(&v127[v131], 0, 1, v126);
    }

    else if (v125(&v127[v205], 1, v126))
    {
      (*(v196 + 8))(v189, v126);
    }

    else
    {
      v132 = swift_getAssociatedConformanceWitness();
      v133 = v189;
      (*(v132 + 16))(v189, v126, v132);
      (*(v196 + 8))(v133, v126);
    }

    v64 = v204;
  }

  v134 = v192;
  v135 = v193;
  v136 = *(v192 + 16);
  v137 = v191;
  v136(v191, &v206[v64[13]], v193);
  v138 = v201;
  v139 = v202;
  v140 = *(v201 + 48);
  if (v140(v137, 1, v202) == 1)
  {
    (*(v134 + 8))(v137, v135);
  }

  else
  {
    v141 = *(v138 + 32);
    v205 = v138 + 32;
    v206 = v141;
    (v141)(v194, v137, v139);
    v142 = v64[13];
    v143 = v207;
    v144 = v172;
    v136(v172, &v207[v142], v135);
    v145 = v140(v144, 1, v139);
    v146 = *(v134 + 8);
    v146(v144, v135);
    v147 = &v143[v142];
    if (v145 == 1)
    {
      v146(v147, v135);
      v148 = v202;
      (v206)(&v143[v142], v194, v202);
      (*(v201 + 56))(&v143[v142], 0, 1, v148);
    }

    else
    {
      v149 = v202;
      if (v140(v147, 1, v202))
      {
        (*(v201 + 8))(v194, v149);
      }

      else
      {
        v150 = swift_getAssociatedConformanceWitness();
        v151 = v194;
        (*(v150 + 16))(v194, v149, v150);
        (*(v201 + 8))(v151, v149);
      }
    }
  }

  LOBYTE(v58) = v155;
  return v58;
}

BOOL CRStructMergeableDelta_6.canMerge(delta:)(uint64_t a1, int *a2)
{
  v162 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123[0] = swift_getAssociatedConformanceWitness();
  v123[1] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v141 = sub_1AE23D7CC();
  v137 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v125 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v135 = v123 - v7;
  v138 = v4;
  v136 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v124 = v123 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v123[2] = swift_getAssociatedConformanceWitness();
  v123[3] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v144 = sub_1AE23D7CC();
  v152 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v127 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = v123 - v14;
  v134 = v11;
  v140 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v126 = v123 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v123[4] = swift_getAssociatedConformanceWitness();
  v123[5] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v159 = sub_1AE23D7CC();
  v154 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v129 = v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v156 = v123 - v21;
  v143 = v18;
  v142 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v128 = v123 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v123[6] = swift_getAssociatedConformanceWitness();
  v123[7] = v24;
  v25 = swift_getAssociatedTypeWitness();
  v153 = sub_1AE23D7CC();
  v155 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v131 = v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v146 = v123 - v28;
  v148 = v25;
  v147 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v130 = v123 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v123[8] = swift_getAssociatedConformanceWitness();
  v123[9] = v31;
  v32 = swift_getAssociatedTypeWitness();
  v33 = sub_1AE23D7CC();
  v157 = *(v33 - 8);
  v158 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v133 = v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v150 = v123 - v36;
  v151 = v32;
  v145 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v132 = v123 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v123[10] = swift_getAssociatedConformanceWitness();
  v123[11] = v39;
  v40 = swift_getAssociatedTypeWitness();
  v41 = sub_1AE23D7CC();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v123 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = v123 - v46;
  v48 = *(v40 - 8);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v149 = v123 - v51;
  v52 = *(v42 + 16);
  v161 = a1;
  v52(v47, a1, v41, v50);
  v53 = *(v48 + 48);
  if (v53(v47, 1, v40) == 1)
  {
    v44 = v47;
LABEL_5:
    v54 = v159;
    v55 = v156;
    v56 = v151;
    (*(v42 + 8))(v44, v41);
    v57 = v150;
    goto LABEL_6;
  }

  (*(v48 + 32))(v149, v47, v40);
  (v52)(v44, v160, v41);
  if (v53(v44, 1, v40) == 1)
  {
    (*(v48 + 8))(v149, v40);
    goto LABEL_5;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v105 = v149;
  v106 = (*(AssociatedConformanceWitness + 24))(v149, v40, AssociatedConformanceWitness);
  v107 = *(v48 + 8);
  v107(v105, v40);
  v107(v44, v40);
  v54 = v159;
  v55 = v156;
  v57 = v150;
  v56 = v151;
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v58 = v158;
  v59 = *(v157 + 16);
  v59(v57, v161 + v162[9], v158);
  v60 = v145;
  v61 = *(v145 + 48);
  if (v61(v57, 1, v56) == 1)
  {
    v63 = v147;
    v62 = v148;
    v64 = v153;
LABEL_10:
    v68 = v146;
    (*(v157 + 8))(v57, v158);
    goto LABEL_11;
  }

  v65 = v132;
  (*(v60 + 32))(v132, v57, v56);
  v66 = v60;
  v57 = v133;
  v59(v133, v160 + v162[9], v58);
  v67 = v61(v57, 1, v56);
  v62 = v148;
  v64 = v153;
  if (v67 == 1)
  {
    (*(v66 + 8))(v65, v56);
    v63 = v147;
    v54 = v159;
    v55 = v156;
    goto LABEL_10;
  }

  v108 = swift_getAssociatedConformanceWitness();
  v109 = (*(v108 + 24))(v65, v56, v108);
  v110 = *(v66 + 8);
  v110(v65, v56);
  v110(v57, v56);
  v68 = v146;
  v63 = v147;
  v54 = v159;
  v55 = v156;
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v69 = *(v155 + 16);
  v69(v68, v161 + v162[10], v64);
  v70 = *(v63 + 48);
  if (v70(v68, 1, v62) == 1)
  {
    v71 = v68;
    v72 = v142;
LABEL_15:
    (*(v155 + 8))(v71, v64);
    v77 = v143;
    goto LABEL_16;
  }

  v73 = v68;
  v74 = v130;
  (*(v63 + 32))(v130, v73, v62);
  v75 = v64;
  v76 = v131;
  v69(v131, v160 + v162[10], v75);
  v71 = v76;
  if (v70(v76, 1, v62) == 1)
  {
    (*(v63 + 8))(v74, v62);
    v72 = v142;
    v64 = v153;
    goto LABEL_15;
  }

  v111 = swift_getAssociatedConformanceWitness();
  v112 = (*(v111 + 24))(v74, v62, v111);
  v113 = *(v63 + 8);
  v113(v74, v62);
  v113(v76, v62);
  v72 = v142;
  v77 = v143;
  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v78 = *(v154 + 16);
  v78(v55, v161 + v162[11], v54);
  v79 = *(v72 + 48);
  if (v79(v55, 1, v77) == 1)
  {
    v80 = v55;
    v81 = v140;
    v82 = v144;
LABEL_20:
    (*(v154 + 8))(v80, v54);
    v86 = v139;
    goto LABEL_21;
  }

  v83 = v54;
  v84 = v128;
  (*(v72 + 32))(v128, v55, v77);
  v80 = v129;
  v78(v129, v160 + v162[11], v83);
  v85 = v79(v80, 1, v77);
  v82 = v144;
  if (v85 == 1)
  {
    (*(v72 + 8))(v84, v77);
    v81 = v140;
    v54 = v159;
    goto LABEL_20;
  }

  v114 = swift_getAssociatedConformanceWitness();
  v115 = (*(v114 + 24))(v84, v77, v114);
  v116 = *(v72 + 8);
  v116(v84, v77);
  v116(v80, v77);
  v81 = v140;
  v86 = v139;
  if ((v115 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v87 = *(v152 + 16);
  v87(v86, v161 + v162[12], v82);
  v88 = *(v81 + 48);
  v89 = v134;
  if (v88(v86, 1, v134) == 1)
  {
    v90 = v86;
  }

  else
  {
    v91 = v86;
    v92 = v82;
    v93 = v126;
    (*(v81 + 32))(v126, v91, v89);
    v94 = v127;
    v87(v127, v160 + v162[12], v92);
    v90 = v94;
    if (v88(v94, 1, v89) != 1)
    {
      v117 = swift_getAssociatedConformanceWitness();
      v118 = (*(v117 + 24))(v93, v89, v117);
      v119 = *(v81 + 8);
      v119(v93, v89);
      v119(v94, v89);
      v97 = v136;
      v95 = v135;
      v98 = v138;
      v99 = v137;
      v96 = v141;
      if ((v118 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

    (*(v81 + 8))(v93, v89);
    v82 = v144;
  }

  v95 = v135;
  v96 = v141;
  (*(v152 + 8))(v90, v82);
  v97 = v136;
  v98 = v138;
  v99 = v137;
LABEL_26:
  v100 = *(v99 + 16);
  v100(v95, v161 + v162[13], v96);
  v101 = *(v97 + 48);
  if (v101(v95, 1, v98) == 1)
  {
LABEL_29:
    (*(v99 + 8))(v95, v96);
    return 1;
  }

  v102 = v124;
  (*(v97 + 32))(v124, v95, v98);
  v95 = v125;
  v100(v125, v160 + v162[13], v96);
  if (v101(v95, 1, v98) == 1)
  {
    (*(v97 + 8))(v102, v98);
    v96 = v141;
    goto LABEL_29;
  }

  v120 = swift_getAssociatedConformanceWitness();
  v121 = (*(v120 + 24))(v102, v98, v120);
  v122 = *(v97 + 8);
  v122(v102, v98);
  v122(v95, v98);
  return (v121 & 1) != 0;
}

uint64_t CRStructMergeableDelta_6.visitReferences(_:)(void *a1, int *a2)
{
  v92 = a1;
  v91 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67[1] = swift_getAssociatedConformanceWitness();
  v67[2] = AssociatedTypeWitness;
  v71 = swift_getAssociatedTypeWitness();
  v69 = sub_1AE23D7CC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v70 = v67 - v3;
  v4 = swift_getAssociatedTypeWitness();
  v67[3] = swift_getAssociatedConformanceWitness();
  v67[4] = v4;
  v77 = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = v67 - v6;
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = v7;
  v83 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v82 = v67 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v78 = swift_getAssociatedConformanceWitness();
  v79 = v10;
  v89 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v88 = v67 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v84 = swift_getAssociatedConformanceWitness();
  v85 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v90 = sub_1AE23D7CC();
  v15 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v17 = v67 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v67 - v22;
  (*(v20 + 16))(v67 - v22, v93, v19, v21);
  v24 = *(v18 - 8);
  if ((*(v24 + 48))(v23, 1, v18) == 1)
  {
    v25 = v92;
  }

  else
  {
    v26 = swift_getAssociatedConformanceWitness();
    v25 = v92;
    (*(v26 + 32))(v92, v18, v26);
    v20 = v24;
    v19 = v18;
  }

  (*(v20 + 8))(v23, v19);
  v27 = v25[3];
  v28 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v27);
  result = (*(v28 + 8))(v27, v28);
  if ((result & 1) == 0)
  {
    v30 = v90;
    (*(v15 + 16))(v17, v93 + v91[9], v90);
    v31 = *(v14 - 8);
    if ((*(v31 + 48))(v17, 1, v14) != 1)
    {
      v32 = swift_getAssociatedConformanceWitness();
      (*(v32 + 32))(v25, v14, v32);
      v15 = v31;
      v30 = v14;
    }

    (*(v15 + 8))(v17, v30);
    v33 = v25[3];
    v34 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v33);
    result = (*(v34 + 8))(v33, v34);
    if ((result & 1) == 0)
    {
      v36 = v86;
      v35 = v87;
      v37 = v88;
      (*(v86 + 16))(v88, v93 + v91[10], v87);
      v38 = v89;
      v39 = *(v89 - 8);
      if ((*(v39 + 48))(v37, 1, v89) != 1)
      {
        v40 = swift_getAssociatedConformanceWitness();
        (*(v40 + 32))(v25, v38, v40);
        v36 = v39;
        v35 = v38;
      }

      (*(v36 + 8))(v37, v35);
      v41 = v25[3];
      v42 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v41);
      result = (*(v42 + 8))(v41, v42);
      if ((result & 1) == 0)
      {
        v44 = v80;
        v43 = v81;
        v45 = v82;
        (*(v80 + 16))(v82, v93 + v91[11], v81);
        v46 = v83;
        v47 = *(v83 - 8);
        if ((*(v47 + 48))(v45, 1, v83) != 1)
        {
          v48 = swift_getAssociatedConformanceWitness();
          (*(v48 + 32))(v25, v46, v48);
          v44 = v47;
          v43 = v46;
        }

        (*(v44 + 8))(v45, v43);
        v49 = v25[3];
        v50 = v25[4];
        __swift_project_boxed_opaque_existential_1(v25, v49);
        result = (*(v50 + 8))(v49, v50);
        if ((result & 1) == 0)
        {
          v52 = v74;
          v51 = v75;
          v53 = v76;
          (*(v74 + 16))(v76, v93 + v91[12], v75);
          v54 = v77;
          v55 = *(v77 - 8);
          if ((*(v55 + 48))(v53, 1, v77) != 1)
          {
            v56 = swift_getAssociatedConformanceWitness();
            (*(v56 + 32))(v25, v54, v56);
            v52 = v55;
            v51 = v54;
          }

          (*(v52 + 8))(v53, v51);
          v57 = v25[3];
          v58 = v25[4];
          __swift_project_boxed_opaque_existential_1(v25, v57);
          result = (*(v58 + 8))(v57, v58);
          if ((result & 1) == 0)
          {
            v59 = v68;
            v60 = v70;
            v61 = v69;
            (*(v68 + 16))(v70, v93 + v91[13], v69);
            v62 = v71;
            v63 = *(v71 - 8);
            if ((*(v63 + 48))(v60, 1, v71) != 1)
            {
              v64 = swift_getAssociatedConformanceWitness();
              (*(v64 + 32))(v25, v62, v64);
              v59 = v63;
              v61 = v62;
            }

            (*(v59 + 8))(v60, v61);
            v65 = v25[3];
            v66 = v25[4];
            __swift_project_boxed_opaque_existential_1(v25, v65);
            return (*(v66 + 8))(v65, v66);
          }
        }
      }
    }
  }

  return result;
}

void CRStructMergeableDelta_6.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v252 = a4;
  v253 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v278 = AssociatedTypeWitness;
  v266 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v263 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v251 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v239 = &v215 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v285 = &v215 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v240 = swift_getAssociatedConformanceWitness();
  v280 = v14;
  v267 = swift_getAssociatedTypeWitness();
  v271 = sub_1AE23D7CC();
  v264 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v250 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v241 = &v215 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v287 = &v215 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v242 = swift_getAssociatedConformanceWitness();
  v281 = v20;
  v270 = swift_getAssociatedTypeWitness();
  v272 = sub_1AE23D7CC();
  v265 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v249 = &v215 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v243 = &v215 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v288 = &v215 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v244 = swift_getAssociatedConformanceWitness();
  v282 = v26;
  v268 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v28 = *(v27 - 8);
  v273 = v27;
  v274 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v260 = &v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v245 = &v215 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v289 = &v215 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v247 = swift_getAssociatedConformanceWitness();
  v283 = v34;
  v269 = swift_getAssociatedTypeWitness();
  v35 = sub_1AE23D7CC();
  v36 = *(v35 - 8);
  v275 = v35;
  v276 = v36;
  MEMORY[0x1EEE9AC00](v35);
  v259 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v248 = &v215 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v290 = &v215 - v41;
  v42 = swift_getAssociatedTypeWitness();
  v302 = a2;
  v255 = swift_getAssociatedConformanceWitness();
  v284 = v42;
  v43 = swift_getAssociatedTypeWitness();
  v44 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  v291 = &v215 - v53;
  if (*(a1 + 64))
  {
    v230 = v52;
    v256 = v43;
    v257 = v47;
    v235 = v51;
    v258 = v50;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    v304 = a1;

    sub_1ADDE78C8();
    v56 = *(v55 + 16);
    v57 = MEMORY[0x1E69E7CC0];
    v246 = v8;
    if ((~v56 & 0xF000000000000007) != 0)
    {
      v58 = MEMORY[0x1E69E7CC0];
      v59 = MEMORY[0x1E69E7CC0];
      if ((v56 & 0xF000000000000000) == 0x3000000000000000)
      {
        v60 = (v56 & 0xFFFFFFFFFFFFFFFLL);
        v57 = v60[2];
        v58 = v60[3];
        v59 = v60[4];
      }
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
      v59 = MEMORY[0x1E69E7CC0];
    }

    v261 = v59;
    v262 = v58;

    (*(v6 + 112))(&TupleTypeMetadata2);
    v292 = v312;
    v294 = v318;
    v236 = TupleTypeMetadata2;
    v323[0] = TupleTypeMetadata2;
    v279 = v306;
    v323[1] = v306;
    v300 = v307;
    v323[2] = v307;
    v232 = v311;
    v233 = v308;
    v323[3] = v308;
    v286 = v309;
    v323[4] = v309;
    v299 = v310;
    v323[5] = v310;
    v323[6] = v311;
    v323[7] = v312;
    v298 = v313;
    v323[8] = v313;
    v231 = v314;
    v323[9] = v314;
    v293 = v315;
    v323[10] = v315;
    v297 = v316;
    v323[11] = v316;
    v228 = v320;
    v229 = v317;
    v323[12] = v317;
    v323[13] = v318;
    v296 = v319;
    v323[14] = v319;
    v323[15] = v320;
    v301 = v321;
    v323[16] = v321;
    v295 = v322;
    v323[17] = v322;
    v63 = *(v57 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    if (v63)
    {
      v324 = MEMORY[0x1E69E7CC0];

      sub_1ADE6F0BC(0, v63, 0);
      v65 = 0;
      v66 = v324;
      v67 = *(v57 + 16);
      if (v67 >= v63)
      {
        v67 = v63;
      }

      v303 = v67;
      while (v303 != v65)
      {
        if (v65 >= *(v57 + 16))
        {
          goto LABEL_81;
        }

        v68 = *(v57 + 8 * v65 + 32);
        v69 = *(v304 + 32);
        v70 = *(v69 + 16);
        if (v70)
        {
          v71 = v68 >= v70;
        }

        else
        {
          v71 = 1;
        }

        if (v71)
        {
          swift_bridgeObjectRelease_n();

          sub_1ADE42E40(v79, v80, v81);
          v82 = swift_allocError();
          *v83 = 0xD000000000000015;
          *(v83 + 8) = 0x80000001AE25FCF0;
          *(v83 + 16) = 0;
          v303 = v82;
          swift_willThrow();

          sub_1AE23DB8C();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v306 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v307 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v308 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v309 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v310 = swift_getTupleTypeMetadata2();
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          (*(*(TupleTypeMetadata - 8) + 8))(v323, TupleTypeMetadata);
          goto LABEL_22;
        }

        v72 = v57;
        v73 = v69 + 16 * v68;
        v74 = *(v73 + 32);
        v75 = *(v73 + 40);
        v324 = v66;
        v77 = *(v66 + 16);
        v76 = *(v66 + 24);

        if (v77 >= v76 >> 1)
        {
          sub_1ADE6F0BC((v76 > 1), v77 + 1, 1);
          v66 = v324;
        }

        *(v66 + 16) = v77 + 1;
        v78 = (v66 + 24 * v77);
        v78[5] = v75;
        v78[6] = v65;
        v78[4] = v74;
        ++v65;
        v57 = v72;
        if (v63 == v65)
        {

          v64 = v66;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

LABEL_23:
    v85 = v266;
    if (*(v64 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
      v86 = sub_1AE23DCDC();
    }

    else
    {
      v86 = MEMORY[0x1E69E7CC8];
    }

    v87 = v267;
    TupleTypeMetadata2 = v86;

    v89 = v277;
    sub_1AE156D10(v88, 1, &TupleTypeMetadata2);
    v303 = v89;
    if (v89)
    {
      goto LABEL_94;
    }

    v90 = TupleTypeMetadata2;
    v91 = *(v256 - 8);
    v92 = *(v91 + 56);
    v227 = v91 + 56;
    v92(v291, 1, 1);
    v93 = *(v269 - 8);
    v94 = *(v93 + 56);
    v225 = v93 + 56;
    v226 = v94;
    (v94)(v290, 1, 1);
    v95 = *(v268 - 8);
    v96 = *(v95 + 56);
    v223 = v95 + 56;
    v224 = v96;
    (v96)(v289, 1, 1);
    v97 = v270;
    v98 = *(v270 - 8);
    v99 = *(v98 + 56);
    v221 = v98 + 56;
    v222 = v99;
    v99(v288, 1, 1, v270);
    v100 = *(v87 - 8);
    v101 = *(v100 + 56);
    v219 = v100 + 56;
    v220 = v101;
    v101(v287, 1, 1, v87);
    v102 = *(v85 - 8);
    v103 = *(v102 + 56);
    v217 = v102 + 56;
    v218 = v103;
    v103(v285, 1, 1, v85);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v306 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v307 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v308 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v309 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v310 = swift_getTupleTypeMetadata2();
    v104 = swift_getTupleTypeMetadata();
    v234 = *(v104 - 8);
    v105 = v234 + 16;
    v277 = *(v234 + 16);
    v277(&TupleTypeMetadata2, v323, v104);

    v106 = *(v90 + 16);
    v254 = v104;
    v237 = v105;
    if (v106)
    {
      v216 = v92;
      v107 = sub_1ADDD7A10(v236, v279);
      v109 = v108;

      v110 = v262;
      if (v109)
      {
        v111 = *(*(v90 + 56) + 8 * v107);
        if ((v111 & 0x8000000000000000) != 0)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        if (v111 >= *(v262 + 16))
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v112 = v304;

        v114 = sub_1ADDE77B4(v113, v112);

        v115 = v256;
        v116 = swift_getAssociatedConformanceWitness();
        v117 = v230;
        v118 = v303;
        (*(*(v116 + 8) + 8))(v114, v115);
        v303 = v118;
        if (v118)
        {

          (*(v234 + 8))(v323, v104);
LABEL_64:
          (*(v263 + 8))(v285, v246);
          (*(v264 + 8))(v287, v271);
LABEL_65:
          (*(v265 + 8))(v288, v272);
LABEL_79:
          (*(v274 + 8))(v289, v273);
          (*(v276 + 8))(v290, v275);
          (*(v258 + 8))(v291, v257);
          return;
        }

        v119 = v258;
        v120 = v291;
        v121 = v57;
        v122 = v257;
        (*(v258 + 8))(v291, v257);
        (v216)(v117, 0, 1, v115);
        v123 = v122;
        v57 = v121;
        v104 = v254;
        (*(v119 + 32))(v120, v117, v123);
        v110 = v262;
        v97 = v270;
      }
    }

    else
    {

      v110 = v262;
    }

    v277(&TupleTypeMetadata2, v323, v104);

    if (*(v90 + 16))
    {
      v124 = sub_1ADDD7A10(v233, v286);
      v126 = v125;

      if (v126)
      {
        v127 = *(*(v90 + 56) + 8 * v124);
        if ((v127 & 0x8000000000000000) != 0)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v128 = v269;
        v129 = v248;
        if (v127 >= *(v110 + 16))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v130 = v110;
        v131 = v304;

        v133 = sub_1ADDE77B4(v132, v131);

        v134 = swift_getAssociatedConformanceWitness();
        v135 = v303;
        (*(*(v134 + 8) + 8))(v133, v128);
        v303 = v135;
        if (v135)
        {
          goto LABEL_63;
        }

        v136 = v276;
        v137 = *(v276 + 8);
        v138 = v290;
        v284 = v57;
        v139 = v275;
        v137(v290, v275);
        v226(v129, 0, 1, v128);
        v140 = v129;
        v141 = v139;
        v57 = v284;
        v97 = v270;
        (*(v136 + 32))(v138, v140, v141);
        v110 = v130;
      }

      v104 = v254;
    }

    else
    {
    }

    v277(&TupleTypeMetadata2, v323, v104);

    if (*(v90 + 16))
    {
      v142 = sub_1ADDD7A10(v232, v292);
      v144 = v143;

      if (v144)
      {
        v145 = *(*(v90 + 56) + 8 * v142);
        if ((v145 & 0x8000000000000000) != 0)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v146 = v268;
        v147 = v245;
        if (v145 >= *(v110 + 16))
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v148 = v110;
        v149 = v304;

        v151 = sub_1ADDE77B4(v150, v149);

        v152 = swift_getAssociatedConformanceWitness();
        v153 = v303;
        (*(*(v152 + 8) + 8))(v151, v146);
        v303 = v153;
        if (v153)
        {
          goto LABEL_63;
        }

        v154 = v274;
        v155 = *(v274 + 8);
        v156 = v289;
        v284 = v57;
        v157 = v273;
        v155(v289, v273);
        v224(v147, 0, 1, v146);
        v158 = v147;
        v159 = v157;
        v57 = v284;
        v97 = v270;
        (*(v154 + 32))(v156, v158, v159);
        v110 = v148;
      }

      v104 = v254;
    }

    else
    {
    }

    v277(&TupleTypeMetadata2, v323, v104);

    if (*(v90 + 16))
    {
      v160 = sub_1ADDD7A10(v231, v293);
      v162 = v161;

      if (v162)
      {
        v163 = *(*(v90 + 56) + 8 * v160);
        if ((v163 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v164 = v243;
        if (v163 >= *(v110 + 16))
        {
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v165 = v110;
        v166 = v304;

        v168 = sub_1ADDE77B4(v167, v166);

        v169 = swift_getAssociatedConformanceWitness();
        v170 = v303;
        (*(*(v169 + 8) + 8))(v168, v97);
        v303 = v170;
        if (v170)
        {
          goto LABEL_63;
        }

        v171 = v265;
        v172 = *(v265 + 8);
        v284 = v57;
        v173 = v288;
        v174 = v272;
        v172(v288, v272);
        v222(v164, 0, 1, v97);
        (*(v171 + 32))(v173, v164, v174);
        v110 = v165;
        v104 = v254;
      }
    }

    else
    {
    }

    v277(&TupleTypeMetadata2, v323, v104);

    if (*(v90 + 16))
    {
      v175 = sub_1ADDD7A10(v229, v294);
      v177 = v176;

      if (v177)
      {
        v178 = *(*(v90 + 56) + 8 * v175);
        if ((v178 & 0x8000000000000000) != 0)
        {
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v179 = v241;
        if (v178 >= *(v110 + 16))
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v180 = v304;

        v182 = sub_1ADDE77B4(v181, v180);

        v183 = v267;
        v184 = swift_getAssociatedConformanceWitness();
        v185 = v303;
        (*(*(v184 + 8) + 8))(v182, v183);
        v303 = v185;
        if (v185)
        {
LABEL_63:

          (*(v234 + 8))(v323, v254);
          goto LABEL_64;
        }

        v186 = v264;
        v187 = v287;
        v188 = v271;
        (*(v264 + 8))(v287, v271);
        v220(v179, 0, 1, v183);
        (*(v186 + 32))(v187, v179, v188);
        v110 = v262;
        v104 = v254;
      }
    }

    else
    {
    }

    v277(&TupleTypeMetadata2, v323, v104);

    if (*(v90 + 16))
    {
      v189 = sub_1ADDD7A10(v228, v301);
      v191 = v190;

      v192 = v263;
      v193 = v264;
      v194 = v246;
      if (v191)
      {
        v195 = *(*(v90 + 56) + 8 * v189);

        if ((v195 & 0x8000000000000000) != 0)
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v196 = v266;
        v197 = v239;
        if (v195 >= *(v110 + 16))
        {
LABEL_93:
          __break(1u);
LABEL_94:
          swift_unexpectedError();
          __break(1u);
          return;
        }

        v198 = v192;
        type metadata accessor for CRDecoder();
        swift_allocObject();
        v199 = v304;

        v201 = sub_1ADDE77B4(v200, v199);

        v202 = swift_getAssociatedConformanceWitness();
        v203 = v303;
        (*(*(v202 + 8) + 8))(v201, v196);
        v303 = v203;
        if (v203)
        {

          (*(v234 + 8))(v323, v254);
          (*(v192 + 8))(v285, v246);
          (*(v193 + 8))(v287, v271);
          goto LABEL_65;
        }

        v206 = v285;
        v207 = v246;
        (*(v192 + 8))(v285, v246);
        v218(v197, 0, 1, v196);
        v204 = v193;
        v205 = v207;
        (*(v192 + 32))(v206, v197, v207);
      }

      else
      {

        v204 = v193;
        v198 = v192;
        v205 = v194;
      }
    }

    else
    {

      v198 = v263;
      v204 = v264;
      v205 = v246;
    }

    (*(v258 + 16))(v235, v291, v257);
    (*(v276 + 16))(v259, v290, v275);
    (*(v274 + 16))(v260, v289, v273);
    v208 = v265;
    v209 = v249;
    (*(v265 + 16))(v249, v288, v272);
    v210 = v250;
    (*(v204 + 16))(v250, v287, v271);
    v211 = *(v198 + 16);
    v212 = v198;
    v213 = v251;
    v214 = v285;
    v211(v251, v285, v205);
    CRStructMergeableDelta_6.init(_:_:_:_:_:_:)(v235, v259, v260, v209, v210, v213, v302, v253, v252);

    (*(v234 + 8))(v323, v254);
    (*(v212 + 8))(v214, v205);
    (*(v204 + 8))(v287, v271);
    (*(v208 + 8))(v288, v272);
    goto LABEL_79;
  }

  sub_1ADE42E40(v47, v48, v49);
  v61 = swift_allocError();
  *v62 = 0xD000000000000014;
  *(v62 + 8) = 0x80000001AE25FB50;
  *(v62 + 16) = 0;
  v303 = v61;
  swift_willThrow();
LABEL_22:
}

uint64_t CRStructMergeableDelta_6.encode(to:)(uint64_t a1, uint64_t a2)
{
  v200 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v174 = a2;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v167 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v147 = sub_1AE23D7CC();
  v156 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v132 = &v115 - v7;
  v134 = v6;
  v133 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v130 = &v115 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v140 = swift_getAssociatedConformanceWitness();
  v168 = v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v138 = *(v12 - 8);
  v139 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v115 - v13;
  v146 = v11;
  v141 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v131 = &v115 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v135 = swift_getAssociatedConformanceWitness();
  v165 = v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v143 = *(v18 - 8);
  v144 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v115 - v19;
  v145 = v17;
  v155 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v115 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v151 = swift_getAssociatedConformanceWitness();
  v169 = v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = sub_1AE23D7CC();
  v149 = *(v24 - 8);
  v150 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v115 - v25;
  v154 = v23;
  v153 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v152 = &v115 - v27;
  v28 = swift_getAssociatedTypeWitness();
  v160 = swift_getAssociatedConformanceWitness();
  v166 = v28;
  v29 = swift_getAssociatedTypeWitness();
  v30 = sub_1AE23D7CC();
  v158 = *(v30 - 8);
  v159 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v157 = &v115 - v31;
  v162 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v161 = &v115 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedTypeWitness();
  v37 = sub_1AE23D7CC();
  v163 = *(v37 - 8);
  v164 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v170 = &v115 - v38;
  v172 = v36;
  v171 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v115 - v40;
  v42 = v175;
  result = sub_1ADDFCC74(v43, v44, v45);
  if (!v42)
  {
    v47 = result;
    v126 = v29;
    v127 = v35;
    v125 = v41;
    v128 = v34;
    v175 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    v49 = v200;
    *(inited + 16) = v47;
    *(inited + 24) = v49;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    (*(v4 + 112))(&TupleTypeMetadata2, v3, v4);
    v50 = TupleTypeMetadata2;
    v51 = v186;
    v124 = v177;
    v189 = v177;
    v188 = TupleTypeMetadata2;
    v123 = v178;
    v190 = v178;
    v122 = v179;
    v191 = v179;
    v120 = v181;
    v193 = v181;
    v121 = v180;
    v192 = v180;
    v119 = v182;
    v194 = v182;
    v118 = v183;
    v195 = v183;
    v115 = v187;
    v116 = v185;
    v197 = v185;
    v117 = v184;
    v196 = v184;
    v198 = v186;
    v199 = v187;
    v53 = v163;
    v52 = v164;
    v54 = v170;
    v55 = v173;
    (*(v163 + 16))(v170, v173, v164);
    v56 = (*(v171 + 48))(v54, 1, v172);
    v200 = v3;
    if (v56 == 1)
    {
      *&v124 = v51;
      v127 = inited;
      (*(v53 + 8))(v170, v52);
      v57 = v174;
    }

    else
    {
      v58 = v125;
      v59 = v172;
      (*(v171 + 32))(v125, v170, v172);
      v60 = swift_getAssociatedConformanceWitness();
      v61 = v175;
      sub_1ADDFD59C(v58, v50, v124, v59, *(v60 + 8));
      v175 = v61;
      v57 = v174;
      if (v61)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v177 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v177 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v178 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v179 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v179 + 1) = swift_getTupleTypeMetadata2();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        (*(*(TupleTypeMetadata - 8) + 8))(&v188, TupleTypeMetadata);
        return (*(v171 + 8))(v58, v172);
      }

      *&v124 = v51;
      v127 = inited;
      (*(v171 + 8))(v58, v172);
    }

    v63 = v157;
    v64 = v158;
    v65 = v159;
    (*(v158 + 16))(v157, v55 + v57[9], v159);
    v66 = v162;
    v67 = v126;
    v68 = (*(v162 + 48))(v63, 1, v126);
    v69 = v161;
    if (v68 == 1)
    {
      (*(v64 + 8))(v63, v65);
    }

    else
    {
      (*(v66 + 32))(v161, v63, v67);
      v70 = swift_getAssociatedConformanceWitness();
      v71 = v175;
      sub_1ADDFD59C(v69, v123, v122, v67, *(v70 + 8));
      v175 = v71;
      if (v71)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v177 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v177 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v178 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v179 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v179 + 1) = swift_getTupleTypeMetadata2();
        v72 = swift_getTupleTypeMetadata();
        (*(*(v72 - 8) + 8))(&v188, v72);
        return (*(v66 + 8))(v69, v67);
      }

      (*(v66 + 8))(v69, v67);
    }

    v73 = v156;
    v74 = v149;
    v75 = v150;
    v76 = v148;
    (*(v149 + 16))(v148, v173 + v174[10], v150);
    v78 = v153;
    v77 = v154;
    v79 = (*(v153 + 48))(v76, 1, v154);
    v80 = v75;
    v81 = v155;
    if (v79 == 1)
    {
      (*(v74 + 8))(v76, v80);
      v82 = v73;
    }

    else
    {
      v83 = v152;
      (*(v78 + 32))(v152, v76, v77);
      v84 = swift_getAssociatedConformanceWitness();
      v85 = v175;
      sub_1ADDFD59C(v83, v121, v120, v77, *(v84 + 8));
      v175 = v85;
      if (v85)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v177 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v177 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v178 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v179 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v179 + 1) = swift_getTupleTypeMetadata2();
        v86 = swift_getTupleTypeMetadata();
        (*(*(v86 - 8) + 8))(&v188, v86);
        return (*(v78 + 8))(v83, v77);
      }

      (*(v78 + 8))(v83, v77);
      v82 = v156;
    }

    v88 = v142;
    v87 = v143;
    v89 = v144;
    (*(v143 + 16))(v142, v173 + v174[11], v144);
    v90 = v145;
    v91 = (*(v81 + 48))(v88, 1, v145);
    v92 = v146;
    if (v91 == 1)
    {
      (*(v87 + 8))(v88, v89);
      v93 = v147;
    }

    else
    {
      v94 = v136;
      (*(v81 + 32))(v136, v88, v90);
      v95 = swift_getAssociatedConformanceWitness();
      v96 = v175;
      sub_1ADDFD59C(v94, v119, v118, v90, *(v95 + 8));
      v175 = v96;
      v97 = v147;
      if (v96)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v177 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v177 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v178 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v179 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v179 + 1) = swift_getTupleTypeMetadata2();
        v98 = swift_getTupleTypeMetadata();
        (*(*(v98 - 8) + 8))(&v188, v98);
        return (*(v81 + 8))(v94, v90);
      }

      (*(v81 + 8))(v94, v90);
      v82 = v156;
      v93 = v97;
    }

    v99 = v137;
    v100 = v138;
    v101 = v139;
    (*(v138 + 16))(v137, v173 + v174[12], v139);
    v102 = v141;
    if ((*(v141 + 48))(v99, 1, v92) == 1)
    {
      (*(v100 + 8))(v99, v101);
    }

    else
    {
      v103 = v131;
      (*(v102 + 32))(v131, v99, v92);
      v104 = swift_getAssociatedConformanceWitness();
      v105 = v175;
      sub_1ADDFD59C(v103, v117, v116, v92, *(v104 + 8));
      v175 = v105;
      if (v105)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v177 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v177 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v178 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v179 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v179 + 1) = swift_getTupleTypeMetadata2();
        v106 = swift_getTupleTypeMetadata();
        (*(*(v106 - 8) + 8))(&v188, v106);
        return (*(v102 + 8))(v103, v92);
      }

      (*(v102 + 8))(v103, v92);
      v82 = v156;
    }

    v107 = v132;
    (*(v82 + 16))(v132, v173 + v174[13], v93);
    v109 = v133;
    v108 = v134;
    if ((*(v133 + 48))(v107, 1, v134) == 1)
    {

      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v177 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v177 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v178 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v179 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v179 + 1) = swift_getTupleTypeMetadata2();
      v110 = swift_getTupleTypeMetadata();
      (*(*(v110 - 8) + 8))(&v188, v110);
      return (*(v82 + 8))(v107, v93);
    }

    else
    {
      v111 = v130;
      (*(v109 + 32))(v130, v107, v108);
      v112 = swift_getAssociatedConformanceWitness();
      v113 = v175;
      sub_1ADDFD59C(v111, v124, v115, v108, *(v112 + 8));
      if (v113)
      {
        swift_setDeallocating();
      }

      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v177 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v177 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v178 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v179 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v179 + 1) = swift_getTupleTypeMetadata2();
      v114 = swift_getTupleTypeMetadata();
      (*(*(v114 - 8) + 8))(&v188, v114);
      return (*(v109 + 8))(v111, v108);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a9, 1, 1, AssociatedTypeWitness);
  v13 = type metadata accessor for CRStructMergeableDelta_7(0, a8, a10, v12);
  v14 = v13[9];
  v37 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedTypeWitness();
  (*(*(v36 - 8) + 56))(a9 + v14, 1, 1, v36);
  v15 = v13[10];
  v35 = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedTypeWitness();
  (*(*(v33 - 8) + 56))(a9 + v15, 1, 1, v33);
  v16 = v13[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 56))(a9 + v16, 1, 1, v32);
  v17 = v13[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = v13[13];
  v34 = v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = v13[14];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = sub_1AE23D7CC();
  (*(*(v23 - 8) + 40))(a9, a1, v23);
  v24 = sub_1AE23D7CC();
  (*(*(v24 - 8) + 40))(a9 + v37, a2, v24);
  v25 = sub_1AE23D7CC();
  (*(*(v25 - 8) + 40))(a9 + v35, a3, v25);
  v26 = sub_1AE23D7CC();
  (*(*(v26 - 8) + 40))(a9 + v16, a4, v26);
  v27 = sub_1AE23D7CC();
  (*(*(v27 - 8) + 40))(a9 + v17, a5, v27);
  v28 = sub_1AE23D7CC();
  (*(*(v28 - 8) + 40))(a9 + v34, a6, v28);
  v29 = sub_1AE23D7CC();
  v30 = *(*(v29 - 8) + 40);

  return v30(a9 + v21, a7, v29);
}

BOOL CRStructMergeableDelta_7.merge(delta:)(char *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v195 = AssociatedTypeWitness;
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v227 = *(v6 - 8);
  v228 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v201 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v226 = &v180 - v9;
  v230 = v5;
  v237 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v229 = &v180 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v192 = swift_getAssociatedConformanceWitness();
  v193 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v223 = sub_1AE23D7CC();
  v236 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v200 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v222 = &v180 - v16;
  v225 = v13;
  v232 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v180 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v190 = swift_getAssociatedConformanceWitness();
  v191 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v219 = sub_1AE23D7CC();
  v218 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v199 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v217 = &v180 - v23;
  v221 = v20;
  v239 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v220 = &v180 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v188 = swift_getAssociatedConformanceWitness();
  v189 = v26;
  v27 = swift_getAssociatedTypeWitness();
  v214 = sub_1AE23D7CC();
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v198 = &v180 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v212 = &v180 - v30;
  v216 = v27;
  v231 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v215 = &v180 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v186 = swift_getAssociatedConformanceWitness();
  v187 = v33;
  v34 = swift_getAssociatedTypeWitness();
  v209 = sub_1AE23D7CC();
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v197 = &v180 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v234 = &v180 - v37;
  v211 = v34;
  v235 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v210 = &v180 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v184 = swift_getAssociatedConformanceWitness();
  v185 = v40;
  v41 = swift_getAssociatedTypeWitness();
  v205 = sub_1AE23D7CC();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v196 = &v180 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v203 = &v180 - v44;
  v207 = v41;
  v233 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v206 = &v180 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v48 = a1;
  v182 = swift_getAssociatedConformanceWitness();
  v183 = v47;
  v49 = swift_getAssociatedTypeWitness();
  v50 = sub_1AE23D7CC();
  v238 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v180 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v180 - v54;
  v56 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v202 = &v180 - v58;
  v59 = *(a2 - 8);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = &v180 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v59 + 16))(v63, v242, a2, v61);
  v64 = CRStructMergeableDelta_7.canMerge(delta:)(v48, a2);
  (*(v59 + 8))(v63, a2);
  if (!v64)
  {
    return v64;
  }

  v181 = v64;
  v240 = a2;
  v241 = v48;
  v65 = *(v238 + 16);
  v65(v55, v48, v50);
  v66 = *(v56 + 48);
  if (v66(v55, 1, v49) == 1)
  {
    (*(v238 + 8))(v55, v50);
LABEL_6:
    v70 = v240;
    v71 = v241;
    v73 = v233;
    v72 = v234;
    v74 = v205;
    v75 = v204;
    v76 = v203;
    goto LABEL_11;
  }

  v180 = *(v56 + 32);
  v180(v202, v55, v49);
  v67 = v242;
  v65(v52, v242, v50);
  v68 = v66(v52, 1, v49);
  v69 = *(v238 + 8);
  v69(v52, v50);
  if (v68 == 1)
  {
    v69(v67, v50);
    v180(v67, v202, v49);
    (*(v56 + 56))(v67, 0, 1, v49);
    goto LABEL_6;
  }

  v77 = v66(v67, 1, v49);
  v78 = v240;
  v71 = v241;
  v79 = v233;
  if (v77)
  {
    (*(v56 + 8))(v202, v49);
  }

  else
  {
    v80 = swift_getAssociatedConformanceWitness();
    v81 = v202;
    (*(v80 + 16))(v202, v49, v80);
    v78 = v240;
    (*(v56 + 8))(v81, v49);
  }

  v70 = v78;
  v72 = v234;
  v74 = v205;
  v75 = v204;
  v76 = v203;
  v73 = v79;
LABEL_11:
  v82 = v75[2];
  v83 = &v71[*(v70 + 36)];
  v84 = v70;
  v82(v76, v83, v74);
  v85 = v76;
  v86 = v76;
  v87 = v207;
  v238 = *(v73 + 48);
  if ((v238)(v85, 1, v207) == 1)
  {
    (v75[1])(v86, v74);
    v88 = v208;
    v89 = v209;
    v90 = v235;
  }

  else
  {
    v91 = *(v73 + 32);
    v205 = v73 + 32;
    v204 = v91;
    (v91)(v206, v86, v87);
    v92 = *(v84 + 36);
    v93 = v242;
    v94 = v196;
    v82(v196, &v242[v92], v74);
    v95 = v238;
    v96 = (v238)(v94, 1, v87);
    v97 = v75[1];
    v97(v94, v74);
    v98 = &v93[v92];
    if (v96 == 1)
    {
      v97(v98, v74);
      (v204)(&v93[v92], v206, v87);
      (*(v233 + 56))(&v93[v92], 0, 1, v87);
      v84 = v240;
      v90 = v235;
      v88 = v208;
    }

    else
    {
      v99 = v95(v98, 1, v87);
      v88 = v208;
      if (v99)
      {
        (*(v233 + 8))(v206, v87);
      }

      else
      {
        v100 = swift_getAssociatedConformanceWitness();
        v101 = v206;
        (*(v100 + 16))(v206, v87, v100);
        (*(v233 + 8))(v101, v87);
      }

      v84 = v240;
      v90 = v235;
    }

    v72 = v234;
    v89 = v209;
  }

  v102 = *(v88 + 16);
  v103 = v241;
  v102(v72, &v241[*(v84 + 40)], v89);
  v104 = *(v90 + 48);
  v105 = v211;
  if (v104(v72, 1, v211) == 1)
  {
    (*(v88 + 8))(v72, v89);
    v106 = v231;
    v107 = v242;
    v108 = v212;
    v109 = v240;
  }

  else
  {
    v110 = v89;
    v234 = *(v90 + 32);
    (v234)(v210, v72, v105);
    v111 = v242;
    v238 = *(v240 + 40);
    v112 = v197;
    v102(v197, &v242[v238], v110);
    v113 = v104(v112, 1, v105);
    v114 = *(v88 + 8);
    v114(v112, v110);
    if (v113 == 1)
    {
      v115 = v238;
      v114(&v111[v238], v110);
      (v234)(&v111[v115], v210, v105);
      (*(v235 + 56))(&v111[v115], 0, 1, v105);
      v109 = v240;
      v106 = v231;
      v107 = v111;
    }

    else
    {
      v116 = v104(&v111[v238], 1, v105);
      v107 = v111;
      if (v116)
      {
        (*(v235 + 8))(v210, v105);
      }

      else
      {
        v117 = swift_getAssociatedConformanceWitness();
        v118 = v210;
        (*(v117 + 16))(v210, v105, v117);
        (*(v235 + 8))(v118, v105);
      }

      v109 = v240;
      v106 = v231;
    }

    v103 = v241;
    v108 = v212;
  }

  v119 = v213;
  v120 = *(v213 + 16);
  v121 = &v103[v109[11]];
  v122 = v214;
  v120(v108, v121, v214);
  v123 = v216;
  v238 = *(v106 + 48);
  if ((v238)(v108, 1, v216) == 1)
  {
    (*(v119 + 8))(v108, v122);
LABEL_33:
    v129 = v239;
    v130 = v241;
    v131 = v236;
    goto LABEL_38;
  }

  v235 = *(v106 + 32);
  (v235)(v215, v108, v123);
  v124 = v109[11];
  v125 = v198;
  v120(v198, &v107[v124], v122);
  v126 = (v238)(v125, 1, v123);
  v127 = *(v119 + 8);
  v127(v125, v122);
  if (v126 == 1)
  {
    v128 = v242;
    v127(&v242[v124], v122);
    (v235)(&v128[v124], v215, v123);
    (*(v106 + 56))(&v128[v124], 0, 1, v123);
    v109 = v240;
    goto LABEL_33;
  }

  v132 = (v238)(&v242[v124], 1, v123);
  v131 = v236;
  if (v132)
  {
    (*(v231 + 8))(v215, v123);
  }

  else
  {
    v133 = swift_getAssociatedConformanceWitness();
    v134 = v215;
    (*(v133 + 16))(v215, v123, v133);
    (*(v231 + 8))(v134, v123);
  }

  v129 = v239;
  v109 = v240;
  v130 = v241;
LABEL_38:
  v135 = v218;
  v136 = v219;
  v137 = *(v218 + 16);
  v138 = v217;
  v137(v217, &v130[v109[12]], v219);
  v139 = *(v129 + 48);
  v140 = v221;
  if (v139(v138, 1, v221) == 1)
  {
    (*(v135 + 8))(v138, v136);
    v141 = v232;
  }

  else
  {
    v235 = *(v239 + 32);
    (v235)(v220, v138, v140);
    v142 = v242;
    v238 = v109[12];
    v143 = v199;
    v137(v199, &v242[v238], v136);
    v144 = v139(v143, 1, v140);
    v145 = *(v135 + 8);
    v145(v143, v136);
    if (v144 == 1)
    {
      v146 = v238;
      v145(&v142[v238], v136);
      (v235)(&v142[v146], v220, v140);
      (*(v239 + 56))(&v142[v146], 0, 1, v140);
    }

    else if (v139(&v142[v238], 1, v140))
    {
      (*(v239 + 8))(v220, v140);
    }

    else
    {
      v147 = swift_getAssociatedConformanceWitness();
      v148 = v220;
      (*(v147 + 16))(v220, v140, v147);
      (*(v239 + 8))(v148, v140);
    }

    v109 = v240;
    v141 = v232;
    v131 = v236;
  }

  v149 = *(v131 + 16);
  v151 = v222;
  v150 = v223;
  v149(v222, &v241[v109[13]], v223);
  v152 = *(v141 + 48);
  v153 = v225;
  if (v152(v151, 1, v225) == 1)
  {
    (*(v131 + 8))(v151, v150);
  }

  else
  {
    v238 = *(v141 + 32);
    v236 = v141 + 32;
    (v238)(v224, v151, v153);
    v154 = v242;
    v239 = v109[13];
    v155 = v200;
    v149(v200, &v242[v239], v150);
    v156 = v152(v155, 1, v153);
    v157 = *(v131 + 8);
    v157(v155, v150);
    if (v156 == 1)
    {
      v158 = v239;
      v157(&v154[v239], v150);
      (v238)(&v154[v158], v224, v153);
      (*(v141 + 56))(&v154[v158], 0, 1, v153);
    }

    else if (v152(&v154[v239], 1, v153))
    {
      (*(v232 + 8))(v224, v153);
    }

    else
    {
      v159 = swift_getAssociatedConformanceWitness();
      v160 = v224;
      (*(v159 + 16))(v224, v153, v159);
      (*(v232 + 8))(v160, v153);
    }

    v109 = v240;
  }

  v161 = v237;
  v162 = v227;
  v163 = v228;
  v164 = *(v227 + 16);
  v165 = v226;
  v164(v226, &v241[v109[14]], v228);
  v166 = *(v161 + 48);
  v167 = v230;
  if (v166(v165, 1, v230) == 1)
  {
    (*(v162 + 8))(v165, v163);
  }

  else
  {
    v169 = v161 + 32;
    v168 = *(v161 + 32);
    v170 = v162;
    v171 = v242;
    v241 = v168;
    v239 = v169;
    (v168)(v229, v165, v167);
    v172 = v109[14];
    v173 = v201;
    v164(v201, &v171[v172], v163);
    v174 = v166(v173, 1, v167);
    v175 = *(v170 + 8);
    v175(v173, v163);
    v176 = &v171[v172];
    if (v174 == 1)
    {
      v175(v176, v163);
      (v241)(&v171[v172], v229, v167);
      (*(v237 + 56))(&v171[v172], 0, 1, v167);
    }

    else if (v166(v176, 1, v167))
    {
      (*(v237 + 8))(v229, v167);
    }

    else
    {
      v177 = swift_getAssociatedConformanceWitness();
      v178 = v229;
      (*(v177 + 16))(v229, v167, v177);
      (*(v237 + 8))(v178, v167);
    }
  }

  LOBYTE(v64) = v181;
  return v64;
}

BOOL CRStructMergeableDelta_7.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v183 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v143[1] = swift_getAssociatedConformanceWitness();
  v143[2] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v161 = sub_1AE23D7CC();
  v167 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v145 = v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v158 = v143 - v7;
  v162 = v4;
  v160 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v144 = v143 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v143[3] = swift_getAssociatedConformanceWitness();
  v143[4] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v177 = sub_1AE23D7CC();
  v174 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v149 = v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v176 = v143 - v14;
  v159 = v11;
  v163 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v148 = v143 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v143[5] = swift_getAssociatedConformanceWitness();
  v143[6] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v168 = sub_1AE23D7CC();
  v180 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v151 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v164 = v143 - v21;
  v175 = v18;
  v165 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v150 = v143 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v143[7] = swift_getAssociatedConformanceWitness();
  v143[8] = v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_1AE23D7CC();
  v181 = *(v26 - 8);
  v182 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v153 = v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v189 = v143 - v29;
  v185 = v25;
  v166 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v152 = v143 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v143[9] = swift_getAssociatedConformanceWitness();
  v143[10] = v32;
  v33 = swift_getAssociatedTypeWitness();
  v186 = sub_1AE23D7CC();
  v184 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v155 = v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v171 = v143 - v36;
  v173 = v33;
  v172 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v154 = v143 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v143[11] = swift_getAssociatedConformanceWitness();
  v143[12] = v39;
  v40 = swift_getAssociatedTypeWitness();
  v41 = sub_1AE23D7CC();
  v187 = *(v41 - 8);
  v188 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v157 = v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v169 = v143 - v44;
  v179 = v40;
  v170 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v156 = v143 - v46;
  v47 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v147 = v47;
  v48 = swift_getAssociatedTypeWitness();
  v49 = sub_1AE23D7CC();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = v143 - v54;
  v56 = *(v48 - 8);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v178 = v143 - v59;
  v60 = *(v50 + 16);
  v191 = a1;
  v60(v55, a1, v49, v58);
  v61 = *(v56 + 48);
  if (v61(v55, 1, v48) == 1)
  {
    v52 = v55;
LABEL_5:
    v62 = v188;
    v63 = v189;
    v64 = v179;
    (*(v50 + 8))(v52, v49);
    goto LABEL_6;
  }

  (*(v56 + 32))(v178, v55, v48);
  (v60)(v52, v190, v49);
  if (v61(v52, 1, v48) == 1)
  {
    (*(v56 + 8))(v178, v48);
    goto LABEL_5;
  }

  v119 = swift_getAssociatedConformanceWitness();
  v120 = v178;
  v121 = (*(v119 + 24))(v178, v48, v119);
  v122 = *(v56 + 8);
  v122(v120, v48);
  v122(v52, v48);
  v62 = v188;
  v63 = v189;
  v64 = v179;
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v65 = v183;
  v66 = *(v187 + 16);
  v67 = v169;
  v66(v169, v191 + *(v183 + 36), v62);
  v68 = v170;
  v69 = *(v170 + 48);
  if (v69(v67, 1, v64) == 1)
  {
    v70 = v186;
    v72 = v171;
    v71 = v172;
LABEL_10:
    v77 = v173;
    (*(v187 + 8))(v67, v188);
    goto LABEL_11;
  }

  v73 = v156;
  (*(v68 + 32))(v156, v67, v64);
  v74 = v190 + v65[9];
  v75 = v68;
  v67 = v157;
  v66(v157, v74, v62);
  v76 = v69(v67, 1, v64);
  v72 = v171;
  if (v76 == 1)
  {
    (*(v75 + 8))(v73, v64);
    v70 = v186;
    v71 = v172;
    v65 = v183;
    v63 = v189;
    goto LABEL_10;
  }

  v123 = swift_getAssociatedConformanceWitness();
  v124 = v67;
  v125 = (*(v123 + 24))(v73, v64, v123);
  v126 = *(v75 + 8);
  v126(v73, v64);
  v126(v124, v64);
  v70 = v186;
  v71 = v172;
  v77 = v173;
  v65 = v183;
  v63 = v189;
  if ((v125 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v78 = *(v184 + 16);
  v78(v72, v191 + v65[10], v70);
  v79 = *(v71 + 48);
  if (v79(v72, 1, v77) == 1)
  {
    v80 = v72;
    v81 = v166;
LABEL_15:
    (*(v184 + 8))(v80, v186);
    v85 = v182;
    goto LABEL_16;
  }

  v82 = v72;
  v83 = v154;
  (*(v71 + 32))(v154, v82, v77);
  v84 = v155;
  v78(v155, v190 + v65[10], v70);
  v80 = v84;
  if (v79(v84, 1, v77) == 1)
  {
    (*(v71 + 8))(v83, v77);
    v81 = v166;
    v63 = v189;
    goto LABEL_15;
  }

  v127 = swift_getAssociatedConformanceWitness();
  v128 = (*(v127 + 24))(v83, v77, v127);
  v129 = *(v71 + 8);
  v129(v83, v77);
  v129(v84, v77);
  v81 = v166;
  v63 = v189;
  v85 = v182;
  if ((v128 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v86 = *(v181 + 16);
  v86(v63, v191 + v65[11], v85);
  v87 = *(v81 + 48);
  if (v87(v63, 1, v185) == 1)
  {
LABEL_19:
    v90 = v165;
    v91 = v164;
    v92 = v175;
    (*(v181 + 8))(v63, v182);
    v93 = v176;
    v94 = v168;
    goto LABEL_20;
  }

  v88 = v152;
  v89 = v185;
  (*(v81 + 32))(v152, v63, v185);
  v63 = v153;
  v86(v153, v190 + v65[11], v85);
  if (v87(v63, 1, v89) == 1)
  {
    (*(v81 + 8))(v88, v185);
    goto LABEL_19;
  }

  v130 = v185;
  v131 = swift_getAssociatedConformanceWitness();
  v132 = (*(v131 + 24))(v88, v130, v131);
  v133 = *(v81 + 8);
  v133(v88, v130);
  v133(v63, v130);
  v90 = v165;
  v92 = v175;
  v93 = v176;
  v91 = v164;
  v94 = v168;
  if ((v132 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v95 = *(v180 + 16);
  v95(v91, v191 + v65[12], v94);
  v96 = *(v90 + 48);
  if (v96(v91, 1, v92) == 1)
  {
    v97 = v91;
    v98 = v163;
    v99 = v94;
LABEL_24:
    (*(v180 + 8))(v97, v99);
    v102 = v177;
    goto LABEL_25;
  }

  v100 = v150;
  (*(v90 + 32))(v150, v91, v92);
  v97 = v151;
  v95(v151, v190 + v65[12], v94);
  v101 = v175;
  if (v96(v97, 1, v175) == 1)
  {
    (*(v90 + 8))(v100, v101);
    v98 = v163;
    v99 = v168;
    v93 = v176;
    goto LABEL_24;
  }

  v134 = swift_getAssociatedConformanceWitness();
  v135 = (*(v134 + 24))(v100, v101, v134);
  v136 = *(v90 + 8);
  v136(v100, v101);
  v136(v97, v101);
  v98 = v163;
  v93 = v176;
  v102 = v177;
  if ((v135 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v103 = *(v174 + 16);
  v103(v93, v191 + v65[13], v102);
  v104 = *(v98 + 48);
  v105 = v159;
  if (v104(v93, 1, v159) == 1)
  {
    v106 = v93;
  }

  else
  {
    v107 = v93;
    v108 = v148;
    (*(v98 + 32))(v148, v107, v105);
    v109 = v102;
    v110 = v149;
    v103(v149, v190 + v65[13], v109);
    v106 = v110;
    if (v104(v110, 1, v105) != 1)
    {
      v137 = swift_getAssociatedConformanceWitness();
      v138 = (*(v137 + 24))(v108, v105, v137);
      v139 = *(v98 + 8);
      v139(v108, v105);
      v139(v110, v105);
      v112 = v160;
      v113 = v162;
      v111 = v161;
      if ((v138 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_30;
    }

    (*(v98 + 8))(v108, v105);
  }

  v111 = v161;
  (*(v174 + 8))(v106, v177);
  v112 = v160;
  v113 = v162;
LABEL_30:
  v114 = *(v167 + 16);
  v115 = v158;
  v114(v158, v191 + v65[14], v111);
  v116 = *(v112 + 48);
  if (v116(v115, 1, v113) == 1)
  {
LABEL_33:
    (*(v167 + 8))(v115, v111);
    return 1;
  }

  v117 = v144;
  (*(v112 + 32))(v144, v115, v113);
  v115 = v145;
  v114(v145, v190 + v65[14], v111);
  if (v116(v115, 1, v113) == 1)
  {
    (*(v112 + 8))(v117, v113);
    goto LABEL_33;
  }

  v140 = swift_getAssociatedConformanceWitness();
  v141 = (*(v140 + 24))(v117, v113, v140);
  v142 = *(v112 + 8);
  v142(v117, v113);
  v142(v115, v113);
  return (v141 & 1) != 0;
}

uint64_t CRStructMergeableDelta_7.visitReferences(_:)(void *a1, int *a2)
{
  v3 = v2;
  v112 = a1;
  v110 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80[1] = swift_getAssociatedConformanceWitness();
  v80[2] = AssociatedTypeWitness;
  v84 = swift_getAssociatedTypeWitness();
  v82 = sub_1AE23D7CC();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v83 = v80 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v80[3] = swift_getAssociatedConformanceWitness();
  v80[4] = v6;
  v90 = swift_getAssociatedTypeWitness();
  v88 = sub_1AE23D7CC();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = v80 - v7;
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = v8;
  v96 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v95 = v80 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v91 = swift_getAssociatedConformanceWitness();
  v92 = v11;
  v102 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v99 = *(v12 - 8);
  v100 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v101 = v80 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v97 = swift_getAssociatedConformanceWitness();
  v98 = v14;
  v108 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v105 = *(v15 - 8);
  v106 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v107 = v80 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v103 = swift_getAssociatedConformanceWitness();
  v104 = v17;
  v18 = swift_getAssociatedTypeWitness();
  v109 = sub_1AE23D7CC();
  v19 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v21 = v80 - v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1AE23D7CC();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v80 - v26;
  v28 = *(v24 + 16);
  v111 = v3;
  v28(v80 - v26, v3, v23, v25);
  v29 = *(v22 - 8);
  if ((*(v29 + 48))(v27, 1, v22) == 1)
  {
    v30 = v112;
  }

  else
  {
    v31 = swift_getAssociatedConformanceWitness();
    v30 = v112;
    (*(v31 + 32))(v112, v22, v31);
    v24 = v29;
    v23 = v22;
  }

  (*(v24 + 8))(v27, v23);
  v32 = v30[3];
  v33 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v32);
  result = (*(v33 + 8))(v32, v33);
  if ((result & 1) == 0)
  {
    v35 = v109;
    (*(v19 + 16))(v21, v111 + v110[9], v109);
    v36 = *(v18 - 8);
    if ((*(v36 + 48))(v21, 1, v18) != 1)
    {
      v37 = swift_getAssociatedConformanceWitness();
      (*(v37 + 32))(v30, v18, v37);
      v19 = v36;
      v35 = v18;
    }

    (*(v19 + 8))(v21, v35);
    v38 = v30[3];
    v39 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v38);
    result = (*(v39 + 8))(v38, v39);
    if ((result & 1) == 0)
    {
      v41 = v105;
      v40 = v106;
      v42 = v107;
      (*(v105 + 16))(v107, v111 + v110[10], v106);
      v43 = v108;
      v44 = *(v108 - 8);
      if ((*(v44 + 48))(v42, 1, v108) != 1)
      {
        v45 = swift_getAssociatedConformanceWitness();
        (*(v45 + 32))(v30, v43, v45);
        v41 = v44;
        v40 = v43;
      }

      (*(v41 + 8))(v42, v40);
      v46 = v30[3];
      v47 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v46);
      result = (*(v47 + 8))(v46, v47);
      if ((result & 1) == 0)
      {
        v49 = v99;
        v48 = v100;
        v50 = v101;
        (*(v99 + 16))(v101, v111 + v110[11], v100);
        v51 = v102;
        v52 = *(v102 - 8);
        if ((*(v52 + 48))(v50, 1, v102) != 1)
        {
          v53 = swift_getAssociatedConformanceWitness();
          (*(v53 + 32))(v30, v51, v53);
          v49 = v52;
          v48 = v51;
        }

        (*(v49 + 8))(v50, v48);
        v54 = v30[3];
        v55 = v30[4];
        __swift_project_boxed_opaque_existential_1(v30, v54);
        result = (*(v55 + 8))(v54, v55);
        if ((result & 1) == 0)
        {
          v57 = v93;
          v56 = v94;
          v58 = v95;
          (*(v93 + 16))(v95, v111 + v110[12], v94);
          v59 = v96;
          v60 = *(v96 - 8);
          if ((*(v60 + 48))(v58, 1, v96) != 1)
          {
            v61 = swift_getAssociatedConformanceWitness();
            (*(v61 + 32))(v30, v59, v61);
            v57 = v60;
            v56 = v59;
          }

          (*(v57 + 8))(v58, v56);
          v62 = v30[3];
          v63 = v30[4];
          __swift_project_boxed_opaque_existential_1(v30, v62);
          result = (*(v63 + 8))(v62, v63);
          if ((result & 1) == 0)
          {
            v64 = v87;
            v65 = v89;
            v66 = v88;
            (*(v87 + 16))(v89, v111 + v110[13], v88);
            v67 = v90;
            v68 = *(v90 - 8);
            if ((*(v68 + 48))(v65, 1, v90) != 1)
            {
              v69 = swift_getAssociatedConformanceWitness();
              (*(v69 + 32))(v30, v67, v69);
              v64 = v68;
              v66 = v67;
            }

            (*(v64 + 8))(v65, v66);
            v70 = v30[3];
            v71 = v30[4];
            __swift_project_boxed_opaque_existential_1(v30, v70);
            result = (*(v71 + 8))(v70, v71);
            if ((result & 1) == 0)
            {
              v72 = v81;
              v73 = v83;
              v74 = v82;
              (*(v81 + 16))(v83, v111 + v110[14], v82);
              v75 = v84;
              v76 = *(v84 - 8);
              if ((*(v76 + 48))(v73, 1, v84) != 1)
              {
                v77 = swift_getAssociatedConformanceWitness();
                (*(v77 + 32))(v30, v75, v77);
                v72 = v76;
                v74 = v75;
              }

              (*(v72 + 8))(v73, v74);
              v78 = v30[3];
              v79 = v30[4];
              __swift_project_boxed_opaque_existential_1(v30, v78);
              return (*(v79 + 8))(v78, v79);
            }
          }
        }
      }
    }
  }

  return result;
}

void CRStructMergeableDelta_7.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v272 = a4;
  v273 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v305 = AssociatedTypeWitness;
  v290 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v286 = *(v8 - 8);
  v287 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v271 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v260 = &v232 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v316 = &v232 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v261 = swift_getAssociatedConformanceWitness();
  v306 = v14;
  v291 = swift_getAssociatedTypeWitness();
  v296 = sub_1AE23D7CC();
  v288 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v270 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v262 = &v232 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v317 = &v232 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v263 = swift_getAssociatedConformanceWitness();
  v307 = v20;
  v292 = swift_getAssociatedTypeWitness();
  v297 = sub_1AE23D7CC();
  v289 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v269 = &v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v264 = &v232 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v318 = &v232 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v265 = swift_getAssociatedConformanceWitness();
  v308 = v26;
  v293 = swift_getAssociatedTypeWitness();
  v298 = sub_1AE23D7CC();
  v299 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v281 = &v232 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v266 = &v232 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v319 = &v232 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v267 = swift_getAssociatedConformanceWitness();
  v310 = v32;
  v294 = swift_getAssociatedTypeWitness();
  v33 = sub_1AE23D7CC();
  v300 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v280 = &v232 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v268 = &v232 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v320 = &v232 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v274 = swift_getAssociatedConformanceWitness();
  v311 = v39;
  v295 = swift_getAssociatedTypeWitness();
  v301 = sub_1AE23D7CC();
  v302 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v279 = &v232 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v275 = &v232 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v321 = &v232 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v333 = a2;
  v276 = swift_getAssociatedConformanceWitness();
  v315 = v45;
  v46 = swift_getAssociatedTypeWitness();
  v47 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  v322 = &v232 - v56;
  if (*(a1 + 64))
  {
    v251 = v55;
    v278 = v46;
    v254 = v54;
    v282 = v50;
    v283 = v53;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    v335 = a1;

    sub_1ADDE78C8();
    v59 = *(v58 + 16);
    v60 = MEMORY[0x1E69E7CC0];
    v277 = v33;
    if ((~v59 & 0xF000000000000007) != 0)
    {
      v314 = MEMORY[0x1E69E7CC0];
      v303 = MEMORY[0x1E69E7CC0];
      if ((v59 & 0xF000000000000000) == 0x3000000000000000)
      {
        v61 = (v59 & 0xFFFFFFFFFFFFFFFLL);
        v60 = v61[2];
        v62 = v61[3];
        v63 = v61[4];

        v314 = v62;

        v303 = v63;
      }
    }

    else
    {
      v314 = MEMORY[0x1E69E7CC0];
      v303 = MEMORY[0x1E69E7CC0];
    }

    (*(v6 + 128))(&TupleTypeMetadata2);
    v323 = v343;
    v324 = v346;
    v325 = v349;
    v326 = v352;
    v258 = TupleTypeMetadata2;
    v357[0] = TupleTypeMetadata2;
    v313 = v337;
    v357[1] = v337;
    v332 = v338;
    v357[2] = v338;
    v255 = v339;
    v357[3] = v339;
    v312 = v340;
    v357[4] = v340;
    v331 = v341;
    v357[5] = v341;
    v252 = v345;
    v253 = v342;
    v357[6] = v342;
    v357[7] = v343;
    v284 = v355;
    v285 = v344;
    v357[8] = v344;
    v357[9] = v345;
    v357[10] = v346;
    v330 = v347;
    v357[11] = v347;
    v249 = v351;
    v250 = v348;
    v357[12] = v348;
    v357[13] = v349;
    v329 = v350;
    v357[14] = v350;
    v357[15] = v351;
    v357[16] = v352;
    v328 = v353;
    v357[17] = v353;
    v248 = v354;
    v357[18] = v354;
    v357[19] = v355;
    v327 = v356;
    v357[20] = v356;
    v66 = *(v60 + 16);
    v67 = MEMORY[0x1E69E7CC0];
    if (v66)
    {
      v358 = MEMORY[0x1E69E7CC0];

      sub_1ADE6F0BC(0, v66, 0);
      v68 = 0;
      v69 = v358;
      v70 = *(v60 + 16);
      if (v70 >= v66)
      {
        v70 = v66;
      }

      v334 = v70;
      while (v334 != v68)
      {
        if (v68 >= *(v60 + 16))
        {
          goto LABEL_91;
        }

        v71 = *(v60 + 8 * v68 + 32);
        v72 = *(v335 + 32);
        v73 = *(v72 + 16);
        if (v73)
        {
          v74 = v71 >= v73;
        }

        else
        {
          v74 = 1;
        }

        if (v74)
        {
          swift_bridgeObjectRelease_n();

          sub_1ADE42E40(v81, v82, v83);
          v84 = swift_allocError();
          *v85 = 0xD000000000000015;
          *(v85 + 8) = 0x80000001AE25FCF0;
          *(v85 + 16) = 0;
          v334 = v84;
          swift_willThrow();

          sub_1AE23DB8C();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v337 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v338 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v339 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v340 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v341 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v342 = swift_getTupleTypeMetadata2();
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          (*(*(TupleTypeMetadata - 8) + 8))(v357, TupleTypeMetadata);
          goto LABEL_22;
        }

        v75 = v72 + 16 * v71;
        v76 = *(v75 + 32);
        v77 = *(v75 + 40);
        v358 = v69;
        v79 = *(v69 + 16);
        v78 = *(v69 + 24);

        if (v79 >= v78 >> 1)
        {
          sub_1ADE6F0BC((v78 > 1), v79 + 1, 1);
          v69 = v358;
        }

        *(v69 + 16) = v79 + 1;
        v80 = (v69 + 24 * v79);
        v80[5] = v77;
        v80[6] = v68;
        v80[4] = v76;
        if (v66 == ++v68)
        {

          v67 = v69;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_23:
    if (*(v67 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
      v87 = sub_1AE23DCDC();
    }

    else
    {
      v87 = MEMORY[0x1E69E7CC8];
    }

    v88 = v291;
    v256 = v60;
    TupleTypeMetadata2 = v87;

    v90 = v309;
    sub_1AE156D10(v89, 1, &TupleTypeMetadata2);
    v334 = v90;
    if (v90)
    {
      goto LABEL_106;
    }

    v91 = TupleTypeMetadata2;
    v92 = *(v278 - 8);
    v93 = *(v92 + 56);
    v246 = v92 + 56;
    v247 = v93;
    (v93)(v322, 1, 1);
    v94 = *(v295 - 8);
    v95 = *(v94 + 56);
    v244 = v94 + 56;
    v245 = v95;
    (v95)(v321, 1, 1);
    v96 = *(v294 - 8);
    v97 = *(v96 + 56);
    v242 = v96 + 56;
    v97(v320, 1, 1);
    v98 = *(v293 - 8);
    v99 = *(v98 + 56);
    v240 = v98 + 56;
    v241 = v99;
    (v99)(v319, 1, 1);
    v100 = *(v292 - 8);
    v101 = *(v100 + 56);
    v238 = v100 + 56;
    v239 = v101;
    (v101)(v318, 1, 1);
    v102 = *(v88 - 8);
    v103 = *(v102 + 56);
    v236 = v102 + 56;
    v237 = v103;
    v103(v317, 1, 1, v88);
    v104 = *(v290 - 8);
    v105 = *(v104 + 56);
    v234 = v104 + 56;
    v235 = v105;
    (v105)(v316, 1, 1);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v337 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v338 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v339 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v340 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v341 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v342 = swift_getTupleTypeMetadata2();
    v106 = swift_getTupleTypeMetadata();
    v257 = *(v106 - 8);
    v107 = v257 + 16;
    v309 = *(v257 + 16);
    v309(&TupleTypeMetadata2, v357, v106);

    v108 = v284;

    v109 = v312;

    v110 = *(v91 + 16);
    v304 = v91;
    v243 = v97;
    if (v110)
    {
      v111 = v106;
      v112 = sub_1ADDD7A10(v258, v313);
      v114 = v113;

      if (v114)
      {
        v115 = *(*(v91 + 56) + 8 * v112);
        if ((v115 & 0x8000000000000000) != 0)
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (v115 >= *(v314 + 16))
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v116 = v335;

        v118 = sub_1ADDE77B4(v117, v116);

        v119 = v278;
        v120 = swift_getAssociatedConformanceWitness();
        v121 = v251;
        v122 = v334;
        (*(*(v120 + 8) + 8))(v118, v119);
        v334 = v122;
        if (v122)
        {
          goto LABEL_56;
        }

        v123 = v282;
        v124 = v283;
        v125 = v322;
        (*(v283 + 8))(v322, v282);
        v247(v121, 0, 1, v119);
        v126 = *(v124 + 32);
        v106 = v111;
        v126(v125, v121, v123);
        v108 = v284;
        v109 = v312;
      }

      else
      {
        v109 = v312;
      }
    }

    else
    {
    }

    v309(&TupleTypeMetadata2, v357, v106);

    v127 = v304;
    if (*(v304 + 16))
    {
      v128 = sub_1ADDD7A10(v255, v109);
      v130 = v129;

      if (v130)
      {
        v131 = *(*(v127 + 56) + 8 * v128);
        if ((v131 & 0x8000000000000000) != 0)
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v132 = v295;
        v133 = v275;
        if (v131 >= *(v314 + 16))
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v134 = v335;

        v136 = sub_1ADDE77B4(v135, v134);

        v137 = swift_getAssociatedConformanceWitness();
        v138 = v334;
        (*(*(v137 + 8) + 8))(v136, v132);
        v334 = v138;
        if (v138)
        {
          goto LABEL_56;
        }

        v139 = v302;
        v140 = *(v302 + 8);
        v315 = v107;
        v141 = v133;
        v142 = v321;
        v143 = v301;
        v140(v321, v301);
        v245(v141, 0, 1, v132);
        (*(v139 + 32))(v142, v141, v143);
        v108 = v284;
      }
    }

    else
    {
    }

    v309(&TupleTypeMetadata2, v357, v106);

    if (*(v127 + 16))
    {
      v144 = sub_1ADDD7A10(v253, v323);
      v146 = v145;

      if (v146)
      {
        v147 = *(*(v127 + 56) + 8 * v144);
        if ((v147 & 0x8000000000000000) != 0)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v148 = v294;
        v149 = v268;
        if (v147 >= *(v314 + 16))
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v150 = v335;

        v152 = sub_1ADDE77B4(v151, v150);

        v153 = swift_getAssociatedConformanceWitness();
        v154 = v334;
        (*(*(v153 + 8) + 8))(v152, v148);
        v334 = v154;
        if (v154)
        {
          goto LABEL_56;
        }

        v155 = v300;
        v156 = v320;
        v157 = v106;
        v158 = v277;
        (*(v300 + 8))(v320, v277);
        (v243)(v149, 0, 1, v148);
        v159 = v158;
        v106 = v157;
        (*(v155 + 32))(v156, v149, v159);
        v108 = v284;
      }
    }

    else
    {
    }

    v309(&TupleTypeMetadata2, v357, v106);

    v160 = v304;
    if (*(v304 + 16))
    {
      v161 = sub_1ADDD7A10(v252, v324);
      v163 = v162;

      if (v163)
      {
        v164 = *(*(v160 + 56) + 8 * v161);
        if ((v164 & 0x8000000000000000) != 0)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v165 = v293;
        v166 = v266;
        if (v164 >= *(v314 + 16))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v167 = v335;

        v169 = sub_1ADDE77B4(v168, v167);

        v170 = swift_getAssociatedConformanceWitness();
        v171 = v334;
        (*(*(v170 + 8) + 8))(v169, v165);
        v334 = v171;
        if (v171)
        {
LABEL_56:

          (*(v257 + 8))(v357, v106);
LABEL_74:
          (*(v286 + 8))(v316, v287);
          (*(v288 + 8))(v317, v296);
LABEL_75:
          (*(v289 + 8))(v318, v297);
LABEL_89:
          (*(v299 + 8))(v319, v298);
          (*(v300 + 8))(v320, v277);
          (*(v302 + 8))(v321, v301);
          (*(v283 + 8))(v322, v282);
          return;
        }

        v172 = v299;
        v173 = v319;
        v174 = v298;
        (*(v299 + 8))(v319, v298);
        v241(v166, 0, 1, v165);
        (*(v172 + 32))(v173, v166, v174);
        v108 = v284;
      }
    }

    else
    {
    }

    v309(&TupleTypeMetadata2, v357, v106);

    v175 = v304;
    v176 = *(v304 + 16);
    v233 = v106;
    if (v176)
    {
      v177 = sub_1ADDD7A10(v250, v325);
      v179 = v178;

      if (v179)
      {
        v180 = *(*(v175 + 56) + 8 * v177);
        if ((v180 & 0x8000000000000000) != 0)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        if (v180 >= *(v314 + 16))
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v181 = v335;

        v183 = sub_1ADDE77B4(v182, v181);

        v184 = v292;
        v185 = swift_getAssociatedConformanceWitness();
        v186 = v264;
        v187 = v334;
        (*(*(v185 + 8) + 8))(v183, v184);
        v334 = v187;
        if (v187)
        {
          goto LABEL_73;
        }

        v188 = v289;
        v189 = v318;
        v190 = v297;
        (*(v289 + 8))(v318, v297);
        v239(v186, 0, 1, v184);
        (*(v188 + 32))(v189, v186, v190);
        v108 = v284;
        v106 = v233;
      }
    }

    else
    {
    }

    v309(&TupleTypeMetadata2, v357, v106);

    v191 = v304;
    if (*(v304 + 16))
    {
      v192 = sub_1ADDD7A10(v249, v326);
      v194 = v193;

      if (v194)
      {
        v195 = *(*(v191 + 56) + 8 * v192);
        if ((v195 & 0x8000000000000000) != 0)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v196 = v262;
        if (v195 >= *(v314 + 16))
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v197 = v335;

        v199 = sub_1ADDE77B4(v198, v197);

        v200 = v291;
        v201 = swift_getAssociatedConformanceWitness();
        v202 = v334;
        (*(*(v201 + 8) + 8))(v199, v200);
        v334 = v202;
        if (v202)
        {
LABEL_73:

          (*(v257 + 8))(v357, v233);
          goto LABEL_74;
        }

        v203 = v288;
        v204 = v196;
        v205 = v317;
        v206 = v296;
        (*(v288 + 8))(v317, v296);
        v237(v204, 0, 1, v200);
        (*(v203 + 32))(v205, v204, v206);
        v108 = v284;
        v106 = v233;
      }
    }

    else
    {
    }

    v309(&TupleTypeMetadata2, v357, v106);

    v207 = v304;
    if (*(v304 + 16))
    {
      v208 = sub_1ADDD7A10(v248, v108);
      v210 = v209;

      v211 = v288;
      if (v210)
      {
        v212 = *(*(v207 + 56) + 8 * v208);

        if ((v212 & 0x8000000000000000) != 0)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v213 = v260;
        v214 = v290;
        if (v212 >= *(v314 + 16))
        {
LABEL_105:
          __break(1u);
LABEL_106:
          swift_unexpectedError();
          __break(1u);
          return;
        }

        v215 = v211;
        type metadata accessor for CRDecoder();
        swift_allocObject();
        v216 = v335;

        v218 = sub_1ADDE77B4(v217, v216);

        v219 = swift_getAssociatedConformanceWitness();
        v220 = v334;
        (*(*(v219 + 8) + 8))(v218, v214);
        v334 = v220;
        if (v220)
        {

          (*(v257 + 8))(v357, v106);
          (*(v286 + 8))(v316, v287);
          (*(v215 + 8))(v317, v296);
          goto LABEL_75;
        }

        v222 = v277;
        v223 = v286;
        v224 = v287;
        v225 = v316;
        (*(v286 + 8))(v316, v287);
        v235(v213, 0, 1, v214);
        v221 = v223;
        (*(v223 + 32))(v225, v213, v224);
        v211 = v215;
      }

      else
      {
        v221 = v286;
        v222 = v277;
      }
    }

    else
    {
      v221 = v286;
      v222 = v277;

      v211 = v288;
    }

    (*(v283 + 16))(v254, v322, v282);
    (*(v302 + 16))(v279, v321, v301);
    (*(v300 + 16))(v280, v320, v222);
    (*(v299 + 16))(v281, v319, v298);
    v226 = v289;
    v227 = v269;
    (*(v289 + 16))(v269, v318, v297);
    v228 = v270;
    (*(v211 + 16))(v270, v317, v296);
    v229 = v271;
    v230 = v316;
    v231 = v287;
    (*(v221 + 16))(v271, v316, v287);
    CRStructMergeableDelta_7.init(_:_:_:_:_:_:_:)(v254, v279, v280, v281, v227, v228, v229, v333, v272, v273);

    (*(v257 + 8))(v357, v233);
    (*(v221 + 8))(v230, v231);
    (*(v211 + 8))(v317, v296);
    (*(v226 + 8))(v318, v297);
    goto LABEL_89;
  }

  sub_1ADE42E40(v50, v51, v52);
  v64 = swift_allocError();
  *v65 = 0xD000000000000014;
  *(v65 + 8) = 0x80000001AE25FB50;
  *(v65 + 16) = 0;
  v334 = v64;
  swift_willThrow();
LABEL_22:
}

uint64_t CRStructMergeableDelta_7.encode(to:)(uint64_t a1, uint64_t a2)
{
  *&v192 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v187 = a2;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v181 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v142 = *(v7 - 8);
  v143 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v141 = &v123 - v8;
  v145 = v6;
  v144 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v123 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v149 = swift_getAssociatedConformanceWitness();
  v182 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v168 = sub_1AE23D7CC();
  v148 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v147 = &v123 - v13;
  v151 = v12;
  v150 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v123 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v156 = swift_getAssociatedConformanceWitness();
  v183 = v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v154 = *(v18 - 8);
  v155 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v123 - v19;
  v158 = v17;
  v157 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v123 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v163 = swift_getAssociatedConformanceWitness();
  v186 = v22;
  v23 = swift_getAssociatedTypeWitness();
  v162 = sub_1AE23D7CC();
  v178 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v123 - v24;
  v165 = v23;
  v164 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v152 = &v123 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v159 = swift_getAssociatedConformanceWitness();
  v184 = v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = sub_1AE23D7CC();
  v170 = *(v29 - 8);
  v171 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v169 = &v123 - v30;
  v177 = v28;
  v172 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v160 = &v123 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v166 = swift_getAssociatedConformanceWitness();
  v185 = v33;
  v34 = swift_getAssociatedTypeWitness();
  v35 = sub_1AE23D7CC();
  v174 = *(v35 - 8);
  v175 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v173 = &v123 - v36;
  v176 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v167 = &v123 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedConformanceWitness();
  v41 = swift_getAssociatedTypeWitness();
  v180 = sub_1AE23D7CC();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v188 = &v123 - v42;
  v190 = v41;
  v189 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v123 - v44;
  v46 = v221;
  result = sub_1ADDFCC74(v47, v48, v49);
  if (!v46)
  {
    v51 = result;
    v134 = v40;
    v135 = v34;
    v136 = v45;
    v137 = v39;
    v221 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    v53 = v192;
    *(inited + 16) = v51;
    *(inited + 24) = v53;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    (*(v4 + 128))(&TupleTypeMetadata2, v3, v4);
    v54 = TupleTypeMetadata2;
    v55 = v201;
    v192 = v194;
    v208 = v194;
    v207 = TupleTypeMetadata2;
    v133 = v195;
    v209 = v195;
    v132 = v196;
    v210 = v196;
    v130 = v198;
    v212 = v198;
    v131 = v197;
    v211 = v197;
    v129 = v199;
    v213 = v199;
    v127 = v202;
    v128 = v200;
    v214 = v200;
    v216 = v202;
    v215 = v201;
    v126 = v203;
    v217 = v203;
    v125 = v204;
    v218 = v204;
    v124 = v205;
    v219 = v205;
    v123 = v206;
    v220 = v206;
    v56 = v179;
    v57 = v188;
    v58 = v191;
    v59 = v180;
    (*(v179 + 16))(v188, v191, v180);
    if ((*(v189 + 48))(v57, 1, v190) == 1)
    {
      *&v192 = v3;
      v60 = inited;
      (*(v56 + 8))(v188, v59);
    }

    else
    {
      v61 = v136;
      v62 = v190;
      (*(v189 + 32))(v136, v188, v190);
      v63 = swift_getAssociatedConformanceWitness();
      v64 = v221;
      sub_1ADDFD59C(v61, v54, v192, v62, *(v63 + 8));
      v221 = v64;
      if (v64)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v194 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v194 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v195 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v196 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v196 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v197 = swift_getTupleTypeMetadata2();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        (*(*(TupleTypeMetadata - 8) + 8))(&v207, TupleTypeMetadata);
        return (*(v189 + 8))(v136, v190);
      }

      *&v192 = v3;
      v60 = inited;
      (*(v189 + 8))(v136, v190);
    }

    v190 = v55;
    v66 = v173;
    v67 = v174;
    v68 = v175;
    (*(v174 + 16))(v173, v58 + v187[9], v175);
    v69 = v176;
    v70 = v135;
    v71 = (*(v176 + 48))(v66, 1, v135);
    v72 = v178;
    if (v71 == 1)
    {
      (*(v67 + 8))(v66, v68);
      v73 = v177;
    }

    else
    {
      v74 = v167;
      (*(v69 + 32))(v167, v66, v70);
      v75 = swift_getAssociatedConformanceWitness();
      v76 = v221;
      sub_1ADDFD59C(v74, v133, v132, v70, *(v75 + 8));
      v221 = v76;
      v73 = v177;
      if (v76)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v194 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v194 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v195 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v196 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v196 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v197 = swift_getTupleTypeMetadata2();
        v77 = swift_getTupleTypeMetadata();
        (*(*(v77 - 8) + 8))(&v207, v77);
        return (*(v69 + 8))(v74, v70);
      }

      (*(v69 + 8))(v74, v70);
    }

    v79 = v169;
    v78 = v170;
    v80 = v171;
    (*(v170 + 16))(v169, v191 + v187[10], v171);
    v81 = v172;
    if ((*(v172 + 48))(v79, 1, v73) == 1)
    {
      (*(v78 + 8))(v79, v80);
      v82 = v168;
    }

    else
    {
      v83 = v160;
      (*(v81 + 32))(v160, v79, v73);
      v84 = swift_getAssociatedConformanceWitness();
      v85 = v221;
      sub_1ADDFD59C(v83, v131, v130, v73, *(v84 + 8));
      v221 = v85;
      if (v85)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v194 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v194 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v195 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v196 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v196 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v197 = swift_getTupleTypeMetadata2();
        v86 = swift_getTupleTypeMetadata();
        (*(*(v86 - 8) + 8))(&v207, v86);
        return (*(v81 + 8))(v83, v73);
      }

      (*(v81 + 8))(v83, v73);
      v82 = v168;
      v72 = v178;
    }

    v87 = v161;
    v88 = v162;
    (*(v72 + 16))(v161, v191 + v187[11], v162);
    v90 = v164;
    v89 = v165;
    if ((*(v164 + 48))(v87, 1, v165) == 1)
    {
      *&v192 = v60;
      (*(v72 + 8))(v87, v88);
    }

    else
    {
      v91 = v152;
      (*(v90 + 32))(v152, v87, v89);
      v92 = swift_getAssociatedConformanceWitness();
      v93 = v221;
      sub_1ADDFD59C(v91, v129, v128, v89, *(v92 + 8));
      v221 = v93;
      if (v93)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v194 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v194 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v195 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v196 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v196 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v197 = swift_getTupleTypeMetadata2();
        v94 = swift_getTupleTypeMetadata();
        (*(*(v94 - 8) + 8))(&v207, v94);
        return (*(v90 + 8))(v91, v89);
      }

      *&v192 = v60;
      (*(v90 + 8))(v91, v89);
    }

    v95 = v153;
    v96 = v154;
    v97 = v155;
    (*(v154 + 16))(v153, v191 + v187[12], v155);
    v98 = v157;
    v99 = v158;
    if ((*(v157 + 48))(v95, 1, v158) == 1)
    {
      (*(v96 + 8))(v95, v97);
      v100 = v82;
    }

    else
    {
      v101 = v146;
      (*(v98 + 32))(v146, v95, v99);
      v102 = swift_getAssociatedConformanceWitness();
      v103 = v221;
      sub_1ADDFD59C(v101, v190, v127, v99, *(v102 + 8));
      v221 = v103;
      if (v103)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v194 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v194 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v195 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v196 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v196 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v197 = swift_getTupleTypeMetadata2();
        v104 = swift_getTupleTypeMetadata();
        (*(*(v104 - 8) + 8))(&v207, v104);
        return (*(v98 + 8))(v101, v99);
      }

      (*(v98 + 8))(v101, v99);
      v100 = v168;
    }

    v106 = v147;
    v105 = v148;
    (*(v148 + 16))(v147, v191 + v187[13], v100);
    v107 = v150;
    v108 = v151;
    if ((*(v150 + 48))(v106, 1, v151) == 1)
    {
      (*(v105 + 8))(v106, v100);
    }

    else
    {
      v109 = v140;
      (*(v107 + 32))(v140, v106, v108);
      v110 = swift_getAssociatedConformanceWitness();
      v111 = v221;
      sub_1ADDFD59C(v109, v126, v125, v108, *(v110 + 8));
      v221 = v111;
      if (v111)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v194 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v194 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v195 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v196 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v196 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v197 = swift_getTupleTypeMetadata2();
        v112 = swift_getTupleTypeMetadata();
        (*(*(v112 - 8) + 8))(&v207, v112);
        return (*(v107 + 8))(v109, v108);
      }

      (*(v107 + 8))(v109, v108);
    }

    v113 = v141;
    v114 = v142;
    v115 = v143;
    (*(v142 + 16))(v141, v191 + v187[14], v143);
    v116 = v144;
    v117 = v145;
    if ((*(v144 + 48))(v113, 1, v145) == 1)
    {

      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v194 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v194 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v195 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v196 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v196 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v197 = swift_getTupleTypeMetadata2();
      v118 = swift_getTupleTypeMetadata();
      (*(*(v118 - 8) + 8))(&v207, v118);
      return (*(v114 + 8))(v113, v115);
    }

    else
    {
      v119 = v139;
      (*(v116 + 32))(v139, v113, v117);
      v120 = swift_getAssociatedConformanceWitness();
      v121 = v221;
      sub_1ADDFD59C(v119, v124, v123, v117, *(v120 + 8));
      v221 = v121;
      if (v121)
      {
        swift_setDeallocating();
      }

      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v194 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v194 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v195 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v196 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v196 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v197 = swift_getTupleTypeMetadata2();
      v122 = swift_getTupleTypeMetadata();
      (*(*(v122 - 8) + 8))(&v207, v122);
      return (*(v116 + 8))(v119, v117);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_8.init(_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a9, 1, 1, AssociatedTypeWitness);
  v13 = type metadata accessor for CRStructMergeableDelta_8(0, a10, a11, v12);
  v14 = v13[9];
  v41 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v40 = swift_getAssociatedTypeWitness();
  (*(*(v40 - 8) + 56))(a9 + v14, 1, 1, v40);
  v15 = v13[10];
  v39 = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedTypeWitness();
  (*(*(v38 - 8) + 56))(a9 + v15, 1, 1, v38);
  v16 = v13[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedTypeWitness();
  (*(*(v35 - 8) + 56))(a9 + v16, 1, 1, v35);
  v17 = v13[12];
  v37 = v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedTypeWitness();
  (*(*(v34 - 8) + 56))(a9 + v17, 1, 1, v34);
  v18 = v13[13];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = v13[14];
  v36 = v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = v13[15];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = sub_1AE23D7CC();
  (*(*(v24 - 8) + 40))(a9, a1, v24);
  v25 = sub_1AE23D7CC();
  (*(*(v25 - 8) + 40))(a9 + v41, a2, v25);
  v26 = sub_1AE23D7CC();
  (*(*(v26 - 8) + 40))(a9 + v39, a3, v26);
  v27 = sub_1AE23D7CC();
  (*(*(v27 - 8) + 40))(a9 + v16, a4, v27);
  v28 = sub_1AE23D7CC();
  (*(*(v28 - 8) + 40))(a9 + v37, a5, v28);
  v29 = sub_1AE23D7CC();
  (*(*(v29 - 8) + 40))(a9 + v18, a6, v29);
  v30 = sub_1AE23D7CC();
  (*(*(v30 - 8) + 40))(a9 + v36, a7, v30);
  v31 = sub_1AE23D7CC();
  v32 = *(*(v31 - 8) + 40);

  return v32(a9 + v22, a8, v31);
}

BOOL CRStructMergeableDelta_8.merge(delta:)(char *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v217 = AssociatedTypeWitness;
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v252 = *(v6 - 8);
  v253 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v224 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v251 = &v199 - v9;
  v255 = v5;
  v262 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v254 = &v199 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v214 = swift_getAssociatedConformanceWitness();
  v215 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v248 = sub_1AE23D7CC();
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v223 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v246 = &v199 - v16;
  v250 = v13;
  v258 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v249 = &v199 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v212 = swift_getAssociatedConformanceWitness();
  v213 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v244 = sub_1AE23D7CC();
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v222 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v242 = &v199 - v23;
  v261 = v20;
  v266 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v245 = &v199 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v210 = swift_getAssociatedConformanceWitness();
  v211 = v26;
  v27 = swift_getAssociatedTypeWitness();
  v239 = sub_1AE23D7CC();
  v260 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v221 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v238 = &v199 - v30;
  v241 = v27;
  v265 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v240 = &v199 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v208 = swift_getAssociatedConformanceWitness();
  v209 = v33;
  v34 = swift_getAssociatedTypeWitness();
  v235 = sub_1AE23D7CC();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v220 = &v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v233 = &v199 - v37;
  v237 = v34;
  v264 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v236 = &v199 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v206 = swift_getAssociatedConformanceWitness();
  v207 = v40;
  v41 = swift_getAssociatedTypeWitness();
  v230 = sub_1AE23D7CC();
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v219 = &v199 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v259 = &v199 - v44;
  v232 = v41;
  v257 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v231 = &v199 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v204 = swift_getAssociatedConformanceWitness();
  v205 = v47;
  v48 = swift_getAssociatedTypeWitness();
  v267 = sub_1AE23D7CC();
  v227 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v218 = &v199 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v226 = &v199 - v51;
  v268 = v48;
  v256 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v228 = &v199 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v55 = a1;
  v202 = swift_getAssociatedConformanceWitness();
  v203 = v54;
  v56 = swift_getAssociatedTypeWitness();
  v57 = sub_1AE23D7CC();
  v263 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v199 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v199 - v61;
  v63 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v225 = &v199 - v65;
  v66 = *(a2 - 8);
  v68 = MEMORY[0x1EEE9AC00](v67);
  v70 = &v199 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v70, v271, a2, v68);
  v71 = CRStructMergeableDelta_8.canMerge(delta:)(v55, a2);
  (*(v66 + 8))(v70, a2);
  if (!v71)
  {
    return v71;
  }

  v201 = v71;
  v269 = v55;
  v270 = a2;
  v72 = *(v263 + 16);
  v72(v62, v55, v57);
  v73 = *(v63 + 48);
  if (v73(v62, 1, v56) == 1)
  {
    (*(v263 + 8))(v62, v57);
  }

  else
  {
    v200 = *(v63 + 32);
    v200(v225, v62, v56);
    v74 = v271;
    v72(v59, v271, v57);
    v75 = v73(v59, 1, v56);
    v76 = *(v263 + 8);
    v76(v59, v57);
    if (v75 != 1)
    {
      v84 = v73(v74, 1, v56);
      v77 = v270;
      v80 = v256;
      v85 = v267;
      if (v84)
      {
        (*(v63 + 8))(v225, v56);
      }

      else
      {
        v86 = swift_getAssociatedConformanceWitness();
        v87 = v225;
        (*(v86 + 16))(v225, v56, v86);
        v77 = v270;
        (*(v63 + 8))(v87, v56);
      }

      v78 = v269;
      v79 = v259;
      v82 = v227;
      v83 = v226;
      v81 = v85;
      goto LABEL_11;
    }

    v76(v74, v57);
    v200(v74, v225, v56);
    (*(v63 + 56))(v74, 0, 1, v56);
  }

  v78 = v269;
  v77 = v270;
  v79 = v259;
  v80 = v256;
  v81 = v267;
  v82 = v227;
  v83 = v226;
LABEL_11:
  v88 = *(v82 + 16);
  v88(v83, &v78[*(v77 + 36)], v81);
  v89 = *(v80 + 48);
  if (v89(v83, 1, v268) == 1)
  {
    (*(v82 + 8))(v83, v267);
    v90 = v229;
    v91 = v230;
    v92 = v257;
  }

  else
  {
    v93 = *(v80 + 32);
    v94 = v268;
    v227 = v80 + 32;
    v226 = v93;
    (v93)(v228, v83, v268);
    v95 = v271;
    v263 = *(v77 + 36);
    v96 = v218;
    v97 = v267;
    v88(v218, &v271[v263], v267);
    v98 = v89(v96, 1, v94);
    v99 = *(v82 + 8);
    v99(v96, v97);
    if (v98 == 1)
    {
      v100 = v263;
      v99(&v95[v263], v267);
      v101 = v268;
      (v226)(&v95[v100], v228, v268);
      (*(v80 + 56))(&v95[v100], 0, 1, v101);
      v78 = v269;
      v77 = v270;
      v92 = v257;
      v90 = v229;
    }

    else
    {
      v102 = v89(&v95[v263], 1, v268);
      v90 = v229;
      if (v102)
      {
        (*(v256 + 8))(v228, v268);
      }

      else
      {
        v103 = v268;
        v104 = swift_getAssociatedConformanceWitness();
        v105 = v228;
        (*(v104 + 16))(v228, v103, v104);
        (*(v256 + 8))(v105, v103);
      }

      v78 = v269;
      v77 = v270;
      v92 = v257;
    }

    v79 = v259;
    v91 = v230;
  }

  v106 = *(v90 + 16);
  v106(v79, &v78[*(v77 + 40)], v91);
  v107 = v232;
  v268 = *(v92 + 48);
  if (v268(v79, 1, v232) == 1)
  {
    (*(v90 + 8))(v79, v91);
    v108 = v264;
    v109 = v77;
  }

  else
  {
    v110 = v91;
    v267 = *(v92 + 32);
    (v267)(v231, v79, v107);
    v111 = *(v77 + 40);
    v112 = v219;
    v106(v219, &v271[v111], v110);
    v113 = v268(v112, 1, v107);
    v114 = *(v90 + 8);
    v114(v112, v110);
    if (v113 == 1)
    {
      v115 = v271;
      v114(&v271[v111], v110);
      (v267)(&v115[v111], v231, v107);
      (*(v92 + 56))(&v115[v111], 0, 1, v107);
    }

    else if (v268(&v271[v111], 1, v107))
    {
      (*(v257 + 8))(v231, v107);
    }

    else
    {
      v116 = swift_getAssociatedConformanceWitness();
      v117 = v231;
      (*(v116 + 16))(v231, v107, v116);
      (*(v257 + 8))(v117, v107);
    }

    v78 = v269;
    v109 = v270;
    v108 = v264;
  }

  v118 = v260;
  v119 = v235;
  v120 = v234;
  v121 = *(v234 + 16);
  v122 = v233;
  v121(v233, &v78[v109[11]], v235);
  v123 = v237;
  v268 = *(v108 + 48);
  if (v268(v122, 1, v237) == 1)
  {
    (*(v120 + 8))(v122, v119);
    v124 = v265;
    v125 = v238;
    v126 = v239;
  }

  else
  {
    v263 = *(v264 + 32);
    (v263)(v236, v122, v123);
    v127 = v109[11];
    v128 = v271;
    v267 = v127;
    v129 = v220;
    v121(v220, &v271[v127], v119);
    v130 = v268;
    v131 = v268(v129, 1, v123);
    v132 = *(v120 + 8);
    v132(v129, v119);
    if (v131 == 1)
    {
      v133 = v267;
      v132(&v128[v267], v119);
      (v263)(&v128[v133], v236, v123);
      (*(v264 + 56))(&v128[v133], 0, 1, v123);
    }

    else if (v130(&v128[v267], 1, v123))
    {
      (*(v264 + 8))(v236, v123);
    }

    else
    {
      v134 = swift_getAssociatedConformanceWitness();
      v135 = v236;
      (*(v134 + 16))(v236, v123, v134);
      (*(v264 + 8))(v135, v123);
    }

    v78 = v269;
    v109 = v270;
    v124 = v265;
    v125 = v238;
    v126 = v239;
    v118 = v260;
  }

  v136 = *(v118 + 16);
  v136(v125, &v78[v109[12]], v126);
  v137 = v241;
  v268 = *(v124 + 48);
  if (v268(v125, 1, v241) == 1)
  {
    (*(v118 + 8))(v125, v126);
    v138 = v266;
    v139 = v261;
    v140 = v244;
    v141 = v243;
    v142 = v109;
  }

  else
  {
    v143 = v118;
    v267 = *(v265 + 32);
    (v267)(v240, v125, v137);
    v144 = v109[12];
    v145 = v221;
    v136(v221, &v271[v144], v126);
    v146 = v268;
    v147 = v268(v145, 1, v137);
    v148 = *(v143 + 8);
    v148(v145, v126);
    if (v147 == 1)
    {
      v149 = v271;
      v148(&v271[v144], v126);
      (v267)(&v149[v144], v240, v137);
      (*(v265 + 56))(&v149[v144], 0, 1, v137);
      v78 = v269;
      v142 = v270;
      v138 = v266;
      v139 = v261;
    }

    else
    {
      v150 = v146(&v271[v144], 1, v137);
      v139 = v261;
      if (v150)
      {
        (*(v265 + 8))(v240, v137);
      }

      else
      {
        v151 = swift_getAssociatedConformanceWitness();
        v152 = v240;
        (*(v151 + 16))(v240, v137, v151);
        (*(v265 + 8))(v152, v137);
      }

      v78 = v269;
      v142 = v270;
      v138 = v266;
    }

    v140 = v244;
    v141 = v243;
  }

  v153 = *(v141 + 16);
  v154 = v242;
  v153(v242, &v78[v142[13]], v140);
  v155 = *(v138 + 48);
  if (v155(v154, 1, v139) == 1)
  {
    (*(v141 + 8))(v154, v140);
  }

  else
  {
    v156 = v140;
    v268 = *(v266 + 32);
    v268(v245, v154, v139);
    v157 = v142[13];
    v158 = v222;
    v153(v222, &v271[v157], v156);
    v159 = v155(v158, 1, v139);
    v160 = *(v141 + 8);
    v160(v158, v156);
    if (v159 == 1)
    {
      v161 = v271;
      v160(&v271[v157], v156);
      v162 = v261;
      v268(&v161[v157], v245, v261);
      (*(v266 + 56))(&v161[v157], 0, 1, v162);
    }

    else
    {
      v163 = v261;
      if (v155(&v271[v157], 1, v261))
      {
        (*(v266 + 8))(v245, v163);
      }

      else
      {
        v164 = swift_getAssociatedConformanceWitness();
        v165 = v245;
        (*(v164 + 16))(v245, v163, v164);
        (*(v266 + 8))(v165, v163);
      }
    }

    v78 = v269;
    v142 = v270;
  }

  v166 = v258;
  v167 = v248;
  v168 = v247;
  v169 = *(v247 + 16);
  v170 = v246;
  v169(v246, &v78[v142[14]], v248);
  v171 = v250;
  v268 = *(v166 + 48);
  if (v268(v170, 1, v250) == 1)
  {
    (*(v168 + 8))(v170, v167);
  }

  else
  {
    v172 = v170;
    v173 = v271;
    v266 = *(v166 + 32);
    (v266)(v249, v172, v171);
    v267 = v142[14];
    v174 = v223;
    v169(v223, &v173[v267], v167);
    v175 = v268(v174, 1, v171);
    v176 = *(v168 + 8);
    v176(v174, v167);
    if (v175 == 1)
    {
      v177 = v267;
      v176(&v173[v267], v167);
      (v266)(&v173[v177], v249, v171);
      (*(v166 + 56))(&v173[v177], 0, 1, v171);
    }

    else if (v268(&v173[v267], 1, v171))
    {
      (*(v258 + 8))(v249, v171);
    }

    else
    {
      v178 = swift_getAssociatedConformanceWitness();
      v179 = v249;
      (*(v178 + 16))(v249, v171, v178);
      (*(v258 + 8))(v179, v171);
    }

    v78 = v269;
    v142 = v270;
  }

  v180 = v262;
  v182 = v252;
  v181 = v253;
  v183 = *(v252 + 16);
  v184 = &v78[v142[15]];
  v185 = v251;
  v183(v251, v184, v253);
  v186 = *(v180 + 48);
  v187 = v255;
  if (v186(v185, 1, v255) == 1)
  {
    (*(v182 + 8))(v185, v181);
  }

  else
  {
    v188 = v180 + 32;
    v189 = *(v180 + 32);
    v190 = v271;
    v269 = v189;
    v270 = v188;
    (v189)(v254, v185, v187);
    v191 = v142[15];
    v192 = v224;
    v183(v224, &v190[v191], v181);
    v193 = v186(v192, 1, v187);
    v194 = *(v182 + 8);
    v194(v192, v181);
    if (v193 == 1)
    {
      v194(&v190[v191], v181);
      (v269)(&v190[v191], v254, v187);
      (*(v262 + 56))(&v190[v191], 0, 1, v187);
    }

    else
    {
      v195 = v262;
      if (v186(&v190[v191], 1, v187))
      {
        (*(v195 + 8))(v254, v187);
      }

      else
      {
        v196 = swift_getAssociatedConformanceWitness();
        v197 = v254;
        (*(v196 + 16))(v254, v187, v196);
        (*(v195 + 8))(v197, v187);
      }
    }
  }

  LOBYTE(v71) = v201;
  return v71;
}

BOOL CRStructMergeableDelta_8.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v223 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v167[0] = swift_getAssociatedConformanceWitness();
  v167[1] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v189 = sub_1AE23D7CC();
  v199 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v169 = v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v184 = v167 - v7;
  v190 = v4;
  v188 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v168 = v167 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v167[2] = swift_getAssociatedConformanceWitness();
  v167[3] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v206 = sub_1AE23D7CC();
  v203 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v173 = v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v205 = v167 - v14;
  v187 = v11;
  v191 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v172 = v167 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v167[4] = swift_getAssociatedConformanceWitness();
  v167[5] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v193 = sub_1AE23D7CC();
  v210 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v177 = v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v198 = v167 - v21;
  v204 = v18;
  v192 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v176 = v167 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v167[6] = swift_getAssociatedConformanceWitness();
  v167[7] = v24;
  v25 = swift_getAssociatedTypeWitness();
  v216 = sub_1AE23D7CC();
  v214 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v179 = v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v195 = v167 - v28;
  v197 = v25;
  v196 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v178 = v167 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v167[8] = swift_getAssociatedConformanceWitness();
  v167[9] = v31;
  v32 = swift_getAssociatedTypeWitness();
  v217 = sub_1AE23D7CC();
  v215 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v181 = v167 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v194 = v167 - v35;
  v202 = v32;
  v201 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v180 = v167 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v167[10] = swift_getAssociatedConformanceWitness();
  v167[11] = v38;
  v39 = swift_getAssociatedTypeWitness();
  v40 = sub_1AE23D7CC();
  v218 = *(v40 - 8);
  v219 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v183 = v167 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v208 = v167 - v43;
  v200 = v39;
  v209 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v182 = v167 - v45;
  v46 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v171 = v46;
  v47 = swift_getAssociatedTypeWitness();
  v48 = sub_1AE23D7CC();
  v220 = *(v48 - 8);
  v221 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v186 = v167 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v212 = v167 - v51;
  v207 = v47;
  v213 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v185 = v167 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v174 = swift_getAssociatedConformanceWitness();
  v175 = v54;
  v55 = swift_getAssociatedTypeWitness();
  v56 = sub_1AE23D7CC();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v59 = v167 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v167 - v61;
  v63 = *(v55 - 8);
  v65 = MEMORY[0x1EEE9AC00](v64);
  v211 = v167 - v66;
  v67 = *(v57 + 16);
  v224 = a1;
  v67(v62, a1, v56, v65);
  v68 = *(v63 + 48);
  if (v68(v62, 1, v55) == 1)
  {
    v59 = v62;
LABEL_5:
    v70 = v212;
    v69 = v213;
    (*(v57 + 8))(v59, v56);
    goto LABEL_6;
  }

  (*(v63 + 32))(v211, v62, v55);
  (v67)(v59, v222, v56);
  if (v68(v59, 1, v55) == 1)
  {
    (*(v63 + 8))(v211, v55);
    goto LABEL_5;
  }

  v131 = swift_getAssociatedConformanceWitness();
  v132 = v211;
  v133 = (*(v131 + 24))(v211, v55, v131);
  v134 = *(v63 + 8);
  v134(v132, v55);
  v134(v59, v55);
  v70 = v212;
  v69 = v213;
  if ((v133 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v71 = v223;
  v72 = v221;
  v73 = *(v220 + 16);
  v73(v70, v224 + *(v223 + 36), v221);
  v74 = *(v69 + 48);
  v75 = v207;
  if (v74(v70, 1, v207) == 1)
  {
    v76 = v70;
    v77 = v219;
    v79 = v208;
    v78 = v209;
LABEL_10:
    (*(v220 + 8))(v76, v221);
    goto LABEL_11;
  }

  v80 = v70;
  v81 = v185;
  (*(v69 + 32))(v185, v80, v75);
  v82 = v186;
  v73(v186, v222 + *(v71 + 36), v72);
  v76 = v82;
  v83 = v74(v82, 1, v75);
  v79 = v208;
  if (v83 == 1)
  {
    (*(v69 + 8))(v81, v75);
    v77 = v219;
    v78 = v209;
    goto LABEL_10;
  }

  v145 = swift_getAssociatedConformanceWitness();
  v146 = (*(v145 + 24))(v81, v75, v145);
  v147 = *(v69 + 8);
  v147(v81, v75);
  v147(v82, v75);
  v77 = v219;
  v78 = v209;
  if ((v146 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v84 = v223;
  v85 = *(v218 + 16);
  v85(v79, v224 + *(v223 + 40), v77);
  v86 = *(v78 + 48);
  v87 = v200;
  if (v86(v79, 1, v200) == 1)
  {
    v88 = v79;
LABEL_15:
    v92 = v201;
    v93 = v217;
    v94 = v202;
    (*(v218 + 8))(v88, v219);
    v95 = v223;
    v96 = v216;
    goto LABEL_16;
  }

  v89 = v79;
  v90 = v182;
  (*(v78 + 32))(v182, v89, v87);
  v91 = v183;
  v85(v183, v222 + *(v84 + 40), v77);
  v88 = v91;
  if (v86(v91, 1, v87) == 1)
  {
    (*(v78 + 8))(v90, v87);
    goto LABEL_15;
  }

  v148 = swift_getAssociatedConformanceWitness();
  v149 = (*(v148 + 24))(v90, v87, v148);
  v150 = *(v78 + 8);
  v150(v90, v87);
  v150(v91, v87);
  v92 = v201;
  v95 = v223;
  v96 = v216;
  v93 = v217;
  v94 = v202;
  if ((v149 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v97 = *(v215 + 16);
  v98 = v194;
  v97(v194, v224 + v95[11], v93);
  v99 = *(v92 + 48);
  if (v99(v98, 1, v94) == 1)
  {
    v100 = v196;
    v101 = v198;
LABEL_20:
    v103 = v195;
    (*(v215 + 8))(v98, v217);
    v104 = v197;
    goto LABEL_21;
  }

  v102 = v180;
  (*(v92 + 32))(v180, v98, v94);
  v98 = v181;
  v97(v181, v222 + v95[11], v93);
  if (v99(v98, 1, v94) == 1)
  {
    (*(v92 + 8))(v102, v94);
    v100 = v196;
    v101 = v198;
    v96 = v216;
    goto LABEL_20;
  }

  v151 = swift_getAssociatedConformanceWitness();
  v152 = v98;
  v153 = (*(v151 + 24))(v102, v94, v151);
  v154 = *(v92 + 8);
  v154(v102, v94);
  v154(v152, v94);
  v100 = v196;
  v101 = v198;
  v104 = v197;
  v96 = v216;
  v103 = v195;
  if ((v153 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v105 = *(v214 + 16);
  v105(v103, v224 + v95[12], v96);
  v106 = *(v100 + 48);
  if (v106(v103, 1, v104) == 1)
  {
    v107 = v103;
    v108 = v192;
LABEL_25:
    v113 = v205;
    (*(v214 + 8))(v107, v96);
    v114 = v204;
    goto LABEL_26;
  }

  v109 = v103;
  v110 = v178;
  (*(v100 + 32))(v178, v109, v104);
  v111 = v96;
  v112 = v179;
  v105(v179, v222 + v95[12], v111);
  v107 = v112;
  if (v106(v112, 1, v104) == 1)
  {
    (*(v100 + 8))(v110, v104);
    v108 = v192;
    v96 = v216;
    goto LABEL_25;
  }

  v155 = swift_getAssociatedConformanceWitness();
  v156 = (*(v155 + 24))(v110, v104, v155);
  v157 = *(v100 + 8);
  v157(v110, v104);
  v157(v112, v104);
  v108 = v192;
  v114 = v204;
  v113 = v205;
  if ((v156 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v115 = *(v210 + 16);
  v116 = v224 + v95[13];
  v117 = v95;
  v118 = v193;
  v115(v101, v116, v193);
  v119 = *(v108 + 48);
  if (v119(v101, 1, v114) == 1)
  {
    v120 = v101;
    v121 = v206;
    v122 = v118;
    v123 = v117;
LABEL_30:
    (*(v210 + 8))(v120, v122);
    v126 = v191;
    goto LABEL_31;
  }

  v124 = v176;
  (*(v108 + 32))(v176, v101, v114);
  v120 = v177;
  v115(v177, v222 + v117[13], v118);
  v125 = v204;
  if (v119(v120, 1, v204) == 1)
  {
    (*(v108 + 8))(v124, v125);
    v113 = v205;
    v121 = v206;
    v122 = v193;
    v123 = v223;
    goto LABEL_30;
  }

  v158 = swift_getAssociatedConformanceWitness();
  v159 = (*(v158 + 24))(v124, v125, v158);
  v160 = *(v108 + 8);
  v160(v124, v125);
  v160(v120, v125);
  v113 = v205;
  v121 = v206;
  v126 = v191;
  v123 = v223;
  if ((v159 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v127 = *(v203 + 16);
  v127(v113, v224 + *(v123 + 56), v121);
  v128 = *(v126 + 48);
  v129 = v187;
  if (v128(v113, 1, v187) == 1)
  {
    v130 = v113;
  }

  else
  {
    v135 = v172;
    (*(v126 + 32))(v172, v113, v129);
    v136 = v173;
    v127(v173, v222 + *(v123 + 56), v121);
    v130 = v136;
    if (v128(v136, 1, v129) != 1)
    {
      v161 = swift_getAssociatedConformanceWitness();
      v162 = (*(v161 + 24))(v135, v129, v161);
      v163 = *(v126 + 8);
      v163(v135, v129);
      v163(v136, v129);
      v137 = v188;
      v139 = v190;
      v138 = v189;
      if ((v162 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_38;
    }

    (*(v126 + 8))(v135, v129);
  }

  v137 = v188;
  v138 = v189;
  (*(v203 + 8))(v130, v206);
  v139 = v190;
LABEL_38:
  v140 = *(v199 + 16);
  v141 = v184;
  v140(v184, v224 + *(v123 + 60), v138);
  v142 = *(v137 + 48);
  if (v142(v141, 1, v139) == 1)
  {
LABEL_41:
    (*(v199 + 8))(v141, v138);
    return 1;
  }

  v143 = v168;
  (*(v137 + 32))(v168, v141, v139);
  v141 = v169;
  v140(v169, v222 + *(v123 + 60), v138);
  if (v142(v141, 1, v139) == 1)
  {
    (*(v137 + 8))(v143, v139);
    goto LABEL_41;
  }

  v164 = swift_getAssociatedConformanceWitness();
  v165 = (*(v164 + 24))(v143, v139, v164);
  v166 = *(v137 + 8);
  v166(v143, v139);
  v166(v141, v139);
  return (v165 & 1) != 0;
}

uint64_t CRStructMergeableDelta_8.visitReferences(_:)(void *a1, int *a2)
{
  v3 = v2;
  v128 = a1;
  v126 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90[1] = swift_getAssociatedConformanceWitness();
  v90[2] = AssociatedTypeWitness;
  v94 = swift_getAssociatedTypeWitness();
  v92 = sub_1AE23D7CC();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v93 = v90 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v90[3] = swift_getAssociatedConformanceWitness();
  v90[4] = v6;
  v100 = swift_getAssociatedTypeWitness();
  v98 = sub_1AE23D7CC();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v99 = v90 - v7;
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v96 = v8;
  v106 = swift_getAssociatedTypeWitness();
  v104 = sub_1AE23D7CC();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v105 = v90 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v101 = swift_getAssociatedConformanceWitness();
  v102 = v10;
  v112 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v109 = *(v11 - 8);
  v110 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v111 = v90 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v107 = swift_getAssociatedConformanceWitness();
  v108 = v13;
  v118 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v115 = *(v14 - 8);
  v116 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v117 = v90 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v113 = swift_getAssociatedConformanceWitness();
  v114 = v16;
  v124 = swift_getAssociatedTypeWitness();
  v17 = sub_1AE23D7CC();
  v121 = *(v17 - 8);
  v122 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v123 = v90 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedConformanceWitness();
  v120 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v125 = sub_1AE23D7CC();
  v21 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v23 = v90 - v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1AE23D7CC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v90 - v28;
  v30 = *(v26 + 16);
  v127 = v3;
  v30(v90 - v28, v3, v25, v27);
  v31 = *(v24 - 8);
  if ((*(v31 + 48))(v29, 1, v24) == 1)
  {
    v32 = v128;
  }

  else
  {
    v33 = swift_getAssociatedConformanceWitness();
    v32 = v128;
    (*(v33 + 32))(v128, v24, v33);
    v26 = v31;
    v25 = v24;
  }

  (*(v26 + 8))(v29, v25);
  v34 = v32[3];
  v35 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v34);
  result = (*(v35 + 8))(v34, v35);
  if ((result & 1) == 0)
  {
    v37 = v125;
    (*(v21 + 16))(v23, v127 + v126[9], v125);
    v38 = *(v20 - 8);
    if ((*(v38 + 48))(v23, 1, v20) != 1)
    {
      v39 = swift_getAssociatedConformanceWitness();
      (*(v39 + 32))(v32, v20, v39);
      v21 = v38;
      v37 = v20;
    }

    (*(v21 + 8))(v23, v37);
    v40 = v32[3];
    v41 = v32[4];
    __swift_project_boxed_opaque_existential_1(v32, v40);
    result = (*(v41 + 8))(v40, v41);
    if ((result & 1) == 0)
    {
      v43 = v121;
      v42 = v122;
      v44 = v123;
      (*(v121 + 16))(v123, v127 + v126[10], v122);
      v45 = v124;
      v46 = *(v124 - 8);
      if ((*(v46 + 48))(v44, 1, v124) != 1)
      {
        v47 = swift_getAssociatedConformanceWitness();
        (*(v47 + 32))(v32, v45, v47);
        v43 = v46;
        v42 = v45;
      }

      (*(v43 + 8))(v44, v42);
      v48 = v32[3];
      v49 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v48);
      result = (*(v49 + 8))(v48, v49);
      if ((result & 1) == 0)
      {
        v51 = v115;
        v50 = v116;
        v52 = v117;
        (*(v115 + 16))(v117, v127 + v126[11], v116);
        v53 = v118;
        v54 = *(v118 - 8);
        if ((*(v54 + 48))(v52, 1, v118) != 1)
        {
          v55 = swift_getAssociatedConformanceWitness();
          (*(v55 + 32))(v32, v53, v55);
          v51 = v54;
          v50 = v53;
        }

        (*(v51 + 8))(v52, v50);
        v56 = v32[3];
        v57 = v32[4];
        __swift_project_boxed_opaque_existential_1(v32, v56);
        result = (*(v57 + 8))(v56, v57);
        if ((result & 1) == 0)
        {
          v59 = v109;
          v58 = v110;
          v60 = v111;
          (*(v109 + 16))(v111, v127 + v126[12], v110);
          v61 = v112;
          v62 = *(v112 - 8);
          if ((*(v62 + 48))(v60, 1, v112) != 1)
          {
            v63 = swift_getAssociatedConformanceWitness();
            (*(v63 + 32))(v32, v61, v63);
            v59 = v62;
            v58 = v61;
          }

          (*(v59 + 8))(v60, v58);
          v64 = v32[3];
          v65 = v32[4];
          __swift_project_boxed_opaque_existential_1(v32, v64);
          result = (*(v65 + 8))(v64, v65);
          if ((result & 1) == 0)
          {
            v66 = v103;
            v67 = v105;
            v68 = v104;
            (*(v103 + 16))(v105, v127 + v126[13], v104);
            v69 = v106;
            v70 = *(v106 - 8);
            if ((*(v70 + 48))(v67, 1, v106) != 1)
            {
              v71 = swift_getAssociatedConformanceWitness();
              (*(v71 + 32))(v32, v69, v71);
              v66 = v70;
              v68 = v69;
            }

            (*(v66 + 8))(v67, v68);
            v72 = v32[3];
            v73 = v32[4];
            __swift_project_boxed_opaque_existential_1(v32, v72);
            result = (*(v73 + 8))(v72, v73);
            if ((result & 1) == 0)
            {
              v74 = v97;
              v75 = v99;
              v76 = v98;
              (*(v97 + 16))(v99, v127 + v126[14], v98);
              v77 = v100;
              v78 = *(v100 - 8);
              if ((*(v78 + 48))(v75, 1, v100) != 1)
              {
                v79 = swift_getAssociatedConformanceWitness();
                (*(v79 + 32))(v32, v77, v79);
                v74 = v78;
                v76 = v77;
              }

              (*(v74 + 8))(v75, v76);
              v80 = v32[3];
              v81 = v32[4];
              __swift_project_boxed_opaque_existential_1(v32, v80);
              result = (*(v81 + 8))(v80, v81);
              if ((result & 1) == 0)
              {
                v82 = v91;
                v83 = v93;
                v84 = v92;
                (*(v91 + 16))(v93, v127 + v126[15], v92);
                v85 = v94;
                v86 = *(v94 - 8);
                if ((*(v86 + 48))(v83, 1, v94) != 1)
                {
                  v87 = swift_getAssociatedConformanceWitness();
                  (*(v87 + 32))(v32, v85, v87);
                  v82 = v86;
                  v84 = v85;
                }

                (*(v82 + 8))(v83, v84);
                v88 = v32[3];
                v89 = v32[4];
                __swift_project_boxed_opaque_existential_1(v32, v88);
                return (*(v89 + 8))(v88, v89);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void CRStructMergeableDelta_8.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v367 = a1;
  v298 = a4;
  v299 = a3;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v332 = AssociatedTypeWitness;
  v316 = swift_getAssociatedTypeWitness();
  v339 = sub_1AE23D7CC();
  v313 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339);
  v297 = &v256 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v286 = &v256 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v345 = &v256 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v287 = swift_getAssociatedConformanceWitness();
  v333 = v12;
  v317 = swift_getAssociatedTypeWitness();
  v321 = sub_1AE23D7CC();
  v314 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v296 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v288 = &v256 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v346 = &v256 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v289 = swift_getAssociatedConformanceWitness();
  v334 = v18;
  v318 = swift_getAssociatedTypeWitness();
  v328 = sub_1AE23D7CC();
  v315 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  v295 = &v256 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v290 = &v256 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v347 = &v256 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v291 = swift_getAssociatedConformanceWitness();
  v335 = v24;
  v319 = swift_getAssociatedTypeWitness();
  v322 = sub_1AE23D7CC();
  v323 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322);
  v307 = &v256 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v292 = &v256 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v348 = &v256 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v293 = swift_getAssociatedConformanceWitness();
  v336 = v30;
  v320 = swift_getAssociatedTypeWitness();
  v324 = sub_1AE23D7CC();
  v325 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v306 = &v256 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v294 = &v256 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v349 = &v256 - v35;
  v36 = swift_getAssociatedTypeWitness();
  v300 = swift_getAssociatedConformanceWitness();
  v337 = v36;
  v344 = swift_getAssociatedTypeWitness();
  v326 = sub_1AE23D7CC();
  v327 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v305 = &v256 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v256 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v350 = &v256 - v42;
  v43 = swift_getAssociatedTypeWitness();
  v302 = swift_getAssociatedConformanceWitness();
  v338 = v43;
  v44 = swift_getAssociatedTypeWitness();
  v329 = sub_1AE23D7CC();
  v330 = *(v329 - 8);
  MEMORY[0x1EEE9AC00](v329);
  v304 = &v256 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v303 = &v256 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v351 = &v256 - v49;
  v50 = swift_getAssociatedTypeWitness();
  v354 = a2;
  v51 = swift_getAssociatedConformanceWitness();
  v340 = v50;
  v52 = v367;
  v53 = swift_getAssociatedTypeWitness();
  v54 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v54);
  MEMORY[0x1EEE9AC00](v55);
  MEMORY[0x1EEE9AC00](v56);
  v352 = &v256 - v63;
  if (*(v52 + 64))
  {
    v276 = v51;
    v277 = v62;
    v310 = v60;
    v311 = v53;
    v308 = v44;
    v309 = v57;
    v279 = v61;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v52;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v66 = *(v65 + 16);
    v67 = MEMORY[0x1E69E7CC0];
    if ((~v66 & 0xF000000000000007) != 0)
    {
      v331 = MEMORY[0x1E69E7CC0];
      v68 = MEMORY[0x1E69E7CC0];
      if ((v66 & 0xF000000000000000) == 0x3000000000000000)
      {
        v69 = (v66 & 0xFFFFFFFFFFFFFFFLL);
        v67 = v69[2];
        v70 = v69[3];
        v68 = v69[4];

        v331 = v70;
      }
    }

    else
    {
      v331 = MEMORY[0x1E69E7CC0];
      v68 = MEMORY[0x1E69E7CC0];
    }

    v312 = v68;

    (*(v5 + 144))(&TupleTypeMetadata2);
    v353 = v377;
    v355 = v380;
    v356 = v383;
    v357 = v386;
    v284 = TupleTypeMetadata2;
    v394[0] = TupleTypeMetadata2;
    v342 = v371;
    v394[1] = v371;
    v366 = v372;
    v394[2] = v372;
    v280 = v376;
    v281 = v373;
    v394[3] = v373;
    v341 = v374;
    v394[4] = v374;
    v365 = v375;
    v394[5] = v375;
    v394[6] = v376;
    v394[7] = v377;
    v364 = v378;
    v394[8] = v378;
    v278 = v379;
    v394[9] = v379;
    v394[10] = v380;
    v363 = v381;
    v394[11] = v381;
    v274 = v385;
    v275 = v382;
    v394[12] = v382;
    v394[13] = v383;
    v362 = v384;
    v394[14] = v384;
    v394[15] = v385;
    v394[16] = v386;
    v361 = v387;
    v394[17] = v387;
    v271 = v391;
    v272 = v388;
    v394[18] = v388;
    v358 = v389;
    v394[19] = v389;
    v360 = v390;
    v394[20] = v390;
    v394[21] = v391;
    v394[22] = v392;
    v359 = v393;
    v394[23] = v393;
    v73 = *(v67 + 16);
    v74 = MEMORY[0x1E69E7CC0];
    v301 = v392;
    v273 = v40;
    if (v73)
    {
      v395 = MEMORY[0x1E69E7CC0];

      sub_1ADE6F0BC(0, v73, 0);
      v75 = 0;
      v74 = v395;
      v76 = *(v67 + 16);
      v368 = v73;
      if (v76 >= v73)
      {
        v76 = v73;
      }

      v369 = v76;
      v77 = v367;
      while (v369 != v75)
      {
        if (v75 >= *(v67 + 16))
        {
          goto LABEL_103;
        }

        v78 = *(v67 + 8 * v75 + 32);
        v79 = *(v77 + 32);
        v80 = *(v79 + 16);
        if (v80)
        {
          v81 = v78 >= v80;
        }

        else
        {
          v81 = 1;
        }

        if (v81)
        {
          swift_bridgeObjectRelease_n();

          sub_1ADE42E40(v89, v90, v91);
          v92 = swift_allocError();
          *v93 = 0xD000000000000015;
          *(v93 + 8) = 0x80000001AE25FCF0;
          *(v93 + 16) = 0;
          v369 = v92;
          swift_willThrow();

          sub_1AE23DB8C();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v371 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v372 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v373 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v374 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v375 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v376 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v377 = swift_getTupleTypeMetadata2();
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          (*(*(TupleTypeMetadata - 8) + 8))(v394, TupleTypeMetadata);
          goto LABEL_22;
        }

        v82 = v67;
        v83 = v79 + 16 * v78;
        v85 = *(v83 + 32);
        v84 = *(v83 + 40);
        v395 = v74;
        v87 = *(v74 + 16);
        v86 = *(v74 + 24);

        if (v87 >= v86 >> 1)
        {
          sub_1ADE6F0BC((v86 > 1), v87 + 1, 1);
          v77 = v367;
          v74 = v395;
        }

        *(v74 + 16) = v87 + 1;
        v88 = (v74 + 24 * v87);
        v88[5] = v84;
        v88[6] = v75;
        v88[4] = v85;
        ++v75;
        v67 = v82;
        if (v368 == v75)
        {

          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

LABEL_23:
    if (*(v74 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
      v95 = sub_1AE23DCDC();
    }

    else
    {
      v95 = MEMORY[0x1E69E7CC8];
    }

    v96 = v316;
    v282 = v67;
    TupleTypeMetadata2 = v95;

    v98 = v343;
    sub_1AE156D10(v97, 1, &TupleTypeMetadata2);
    v369 = v98;
    if (v98)
    {
      goto LABEL_120;
    }

    v99 = TupleTypeMetadata2;
    v270 = *(*(v311 - 8) + 56);
    v270(v352, 1, 1);
    v100 = *(v308 - 8);
    v101 = *(v100 + 56);
    v268 = v100 + 56;
    v269 = v101;
    (v101)(v351, 1, 1);
    v102 = *(v344 - 8);
    v103 = *(v102 + 56);
    v266 = v102 + 56;
    v103(v350, 1, 1);
    v104 = *(v320 - 8);
    v105 = *(v104 + 56);
    v264 = v104 + 56;
    v265 = v105;
    (v105)(v349, 1, 1);
    v106 = *(v319 - 8);
    v107 = *(v106 + 56);
    v262 = v106 + 56;
    v263 = v107;
    (v107)(v348, 1, 1);
    v108 = *(v318 - 8);
    v109 = *(v108 + 56);
    v260 = v108 + 56;
    v261 = v109;
    (v109)(v347, 1, 1);
    v110 = *(v317 - 8);
    v111 = *(v110 + 56);
    v258 = v110 + 56;
    v259 = v111;
    (v111)(v346, 1, 1);
    v112 = *(v96 - 8);
    v113 = *(v112 + 56);
    v256 = v112 + 56;
    v113(v345, 1, 1, v96);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v371 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v372 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v373 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v374 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v375 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v376 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v377 = swift_getTupleTypeMetadata2();
    v114 = swift_getTupleTypeMetadata();
    v283 = *(v114 - 8);
    v116 = v283 + 16;
    v115 = *(v283 + 16);
    v368 = v114;
    v343 = v115;
    v115(&TupleTypeMetadata2, v394);

    v117 = v341;

    v118 = *(v99 + 16);
    v257 = v113;
    v267 = v103;
    if (v118)
    {
      v119 = sub_1ADDD7A10(v284, v342);
      v121 = v120;

      if (v121)
      {
        v122 = *(*(v99 + 56) + 8 * v119);
        if ((v122 & 0x8000000000000000) != 0)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (v122 >= *(v331 + 16))
        {
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v123 = v99;
        type metadata accessor for CRDecoder();
        swift_allocObject();
        v124 = v367;

        v126 = sub_1ADDE77B4(v125, v124);

        v127 = v311;
        v128 = swift_getAssociatedConformanceWitness();
        v129 = v277;
        v130 = v369;
        (*(*(v128 + 8) + 8))(v126, v127);
        v369 = v130;
        if (v130)
        {
          goto LABEL_76;
        }

        v132 = v309;
        v131 = v310;
        v133 = v352;
        (*(v310 + 8))(v352, v309);
        (v270)(v129, 0, 1, v127);
        (*(v131 + 32))(v133, v129, v132);
      }

      else
      {
        v123 = v99;
      }

      v117 = v341;
    }

    else
    {
      v123 = v99;
    }

    v343(&TupleTypeMetadata2, v394, v368);

    v134 = v339;
    if (*(v123 + 16))
    {
      v135 = sub_1ADDD7A10(v281, v117);
      v137 = v136;

      v138 = v331;
      v139 = v123;
      v140 = v344;
      if (v137)
      {
        v141 = *(*(v139 + 56) + 8 * v135);
        if ((v141 & 0x8000000000000000) != 0)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v340 = v139;
        if (v141 >= *(v331 + 16))
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v142 = v367;

        v144 = sub_1ADDE77B4(v143, v142);

        v145 = v308;
        v146 = swift_getAssociatedConformanceWitness();
        v147 = v303;
        v148 = v369;
        (*(*(v146 + 8) + 8))(v144, v145);
        v369 = v148;
        if (v148)
        {
          goto LABEL_51;
        }

        v149 = v138;
        v150 = v330;
        v151 = v116;
        v152 = v149;
        v153 = v351;
        v154 = v329;
        (*(v330 + 8))(v351, v329);
        v269(v147, 0, 1, v145);
        v155 = *(v150 + 32);
        v156 = v153;
        v140 = v344;
        v138 = v152;
        v116 = v151;
        v155(v156, v147, v154);
        v139 = v340;
      }
    }

    else
    {

      v138 = v331;
      v139 = v123;
      v140 = v344;
    }

    v343(&TupleTypeMetadata2, v394, v368);

    if (*(v139 + 16))
    {
      v157 = sub_1ADDD7A10(v280, v353);
      v159 = v158;

      if (v159)
      {
        v160 = *(*(v139 + 56) + 8 * v157);
        if ((v160 & 0x8000000000000000) != 0)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v344 = v116;
        v134 = v339;
        if (v160 >= *(v138 + 16))
        {
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v161 = v367;

        v163 = sub_1ADDE77B4(v162, v161);

        v164 = swift_getAssociatedConformanceWitness();
        v165 = v138;
        v166 = v273;
        v167 = v369;
        (*(*(v164 + 8) + 8))(v163, v140);
        v369 = v167;
        if (v167)
        {
LABEL_51:

          (*(v283 + 8))(v394, v368);
          (*(v313 + 8))(v345, v134);
LABEL_77:
          (*(v314 + 8))(v346, v321);
LABEL_78:
          (*(v315 + 8))(v347, v328);
LABEL_79:
          (*(v323 + 8))(v348, v322);
          (*(v325 + 8))(v349, v324);
          (*(v327 + 8))(v350, v326);
          (*(v330 + 8))(v351, v329);
          (*(v310 + 8))(v352, v309);
          return;
        }

        v168 = v327;
        v169 = v350;
        v170 = v140;
        v171 = v326;
        (*(v327 + 8))(v350, v326);
        (v267)(v166, 0, 1, v170);
        (*(v168 + 32))(v169, v166, v171);
        v138 = v165;
        v116 = v344;
      }
    }

    else
    {
    }

    v343(&TupleTypeMetadata2, v394, v368);

    if (*(v139 + 16))
    {
      v172 = sub_1ADDD7A10(v278, v355);
      v174 = v173;

      if (v174)
      {
        v175 = *(*(v139 + 56) + 8 * v172);
        if ((v175 & 0x8000000000000000) != 0)
        {
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v176 = v320;
        if (v175 >= *(v138 + 16))
        {
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v177 = v367;

        v179 = sub_1ADDE77B4(v178, v177);

        v180 = swift_getAssociatedConformanceWitness();
        v181 = v294;
        v182 = v369;
        (*(*(v180 + 8) + 8))(v179, v176);
        v369 = v182;
        if (v182)
        {
          goto LABEL_76;
        }

        v183 = v325;
        v184 = *(v325 + 8);
        v344 = v116;
        v185 = v138;
        v186 = v349;
        v187 = v324;
        v184(v349, v324);
        v265(v181, 0, 1, v176);
        v188 = v186;
        v138 = v185;
        (*(v183 + 32))(v188, v181, v187);
      }
    }

    else
    {
    }

    v343(&TupleTypeMetadata2, v394, v368);

    if (*(v139 + 16))
    {
      v189 = sub_1ADDD7A10(v275, v356);
      v191 = v190;

      if (v191)
      {
        v192 = *(*(v139 + 56) + 8 * v189);
        if ((v192 & 0x8000000000000000) != 0)
        {
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v193 = v319;
        v194 = v292;
        if (v192 >= *(v138 + 16))
        {
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v195 = v367;

        v197 = sub_1ADDE77B4(v196, v195);

        v198 = swift_getAssociatedConformanceWitness();
        v199 = v369;
        (*(*(v198 + 8) + 8))(v197, v193);
        v369 = v199;
        if (v199)
        {
          goto LABEL_76;
        }

        v200 = v323;
        v201 = *(v323 + 8);
        v340 = v139;
        v202 = v193;
        v203 = v348;
        v204 = v322;
        v201(v348, v322);
        v205 = v202;
        v139 = v340;
        v263(v194, 0, 1, v205);
        (*(v200 + 32))(v203, v194, v204);
      }
    }

    else
    {
    }

    v343(&TupleTypeMetadata2, v394, v368);

    if (*(v139 + 16))
    {
      v206 = sub_1ADDD7A10(v274, v357);
      v208 = v207;

      if (v208)
      {
        v209 = *(*(v139 + 56) + 8 * v206);
        if ((v209 & 0x8000000000000000) != 0)
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        if (v209 >= *(v138 + 16))
        {
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v210 = v367;

        v212 = sub_1ADDE77B4(v211, v210);

        v213 = v318;
        v214 = swift_getAssociatedConformanceWitness();
        v215 = v290;
        v216 = v369;
        (*(*(v214 + 8) + 8))(v212, v213);
        v369 = v216;
        if (v216)
        {
          goto LABEL_76;
        }

        v217 = v315;
        v218 = v347;
        (*(v315 + 8))(v347, v328);
        v261(v215, 0, 1, v213);
        (*(v217 + 32))(v218, v215, v328);
      }
    }

    else
    {
    }

    v343(&TupleTypeMetadata2, v394, v368);

    if (*(v139 + 16))
    {
      v219 = sub_1ADDD7A10(v272, v358);
      v221 = v220;

      if (v221)
      {
        v340 = v139;
        v222 = *(*(v139 + 56) + 8 * v219);
        if ((v222 & 0x8000000000000000) != 0)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v138 = v331;
        if (v222 >= *(v331 + 16))
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v223 = v367;

        v225 = sub_1ADDE77B4(v224, v223);

        v226 = v317;
        v227 = swift_getAssociatedConformanceWitness();
        v228 = v288;
        v229 = v369;
        (*(*(v227 + 8) + 8))(v225, v226);
        v369 = v229;
        if (v229)
        {
LABEL_76:

          (*(v283 + 8))(v394, v368);
          (*(v313 + 8))(v345, v339);
          goto LABEL_77;
        }

        v232 = v314;
        v233 = v346;
        v234 = v321;
        (*(v314 + 8))(v346, v321);
        v259(v228, 0, 1, v226);
        v230 = v232;
        (*(v232 + 32))(v233, v228, v234);
        v231 = v339;
        v139 = v340;
      }

      else
      {
        v230 = v314;
        v231 = v339;
      }
    }

    else
    {
      v230 = v314;

      v231 = v339;
    }

    v343(&TupleTypeMetadata2, v394, v368);

    if (*(v139 + 16))
    {
      v235 = sub_1ADDD7A10(v271, v301);
      v237 = v236;

      if (v237)
      {
        v238 = *(*(v139 + 56) + 8 * v235);

        if ((v238 & 0x8000000000000000) != 0)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v239 = v286;
        if (v238 >= *(v138 + 16))
        {
LABEL_119:
          __break(1u);
LABEL_120:
          swift_unexpectedError();
          __break(1u);
          return;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v240 = v367;

        v242 = sub_1ADDE77B4(v241, v240);

        v243 = v316;
        v244 = swift_getAssociatedConformanceWitness();
        v245 = v369;
        (*(*(v244 + 8) + 8))(v242, v243);
        v369 = v245;
        if (v245)
        {

          (*(v283 + 8))(v394, v368);
          (*(v313 + 8))(v345, v231);
          (*(v230 + 8))(v346, v321);
          goto LABEL_78;
        }

        v253 = v313;
        v254 = v345;
        (*(v313 + 8))(v345, v231);
        v257(v239, 0, 1, v243);
        v247 = v253;
        v255 = v254;
        v246 = v231;
        (*(v253 + 32))(v255, v239, v231);
LABEL_100:
        (*(v310 + 16))(v279, v352, v309);
        (*(v330 + 16))(v304, v351, v329);
        (*(v327 + 16))(v305, v350, v326);
        (*(v325 + 16))(v306, v349, v324);
        (*(v323 + 16))(v307, v348, v322);
        v248 = v315;
        v249 = v295;
        (*(v315 + 16))(v295, v347, v328);
        v250 = v296;
        (*(v230 + 16))(v296, v346, v321);
        v251 = v297;
        v252 = v345;
        (*(v247 + 16))(v297, v345, v246);
        CRStructMergeableDelta_8.init(_:_:_:_:_:_:_:_:)(v279, v304, v305, v306, v307, v249, v250, v251, v298, v354, v299);

        (*(v283 + 8))(v394, v368);
        (*(v247 + 8))(v252, v246);
        (*(v230 + 8))(v346, v321);
        (*(v248 + 8))(v347, v328);
        goto LABEL_79;
      }

      v246 = v231;
      v247 = v313;
    }

    else
    {
      v246 = v231;
      v247 = v313;
    }

    goto LABEL_100;
  }

  sub_1ADE42E40(v57, v58, v59);
  v71 = swift_allocError();
  *v72 = 0xD000000000000014;
  *(v72 + 8) = 0x80000001AE25FB50;
  *(v72 + 16) = 0;
  v369 = v71;
  swift_willThrow();
LABEL_22:
}

uint64_t CRStructMergeableDelta_8.encode(to:)(uint64_t a1, uint64_t a2)
{
  *&v213 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v211 = a2;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v202 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v155 = *(v7 - 8);
  v156 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v135 - v8;
  v157 = v6;
  v198 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v152 = &v135 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v162 = swift_getAssociatedConformanceWitness();
  v201 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v160 = *(v13 - 8);
  v161 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v135 - v14;
  v164 = v12;
  v163 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v135 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v169 = swift_getAssociatedConformanceWitness();
  v207 = v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v167 = *(v19 - 8);
  v168 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v166 = &v135 - v20;
  v171 = v18;
  v170 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v135 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v176 = swift_getAssociatedConformanceWitness();
  v203 = v23;
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1AE23D7CC();
  v174 = *(v25 - 8);
  v175 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v173 = &v135 - v26;
  v178 = v24;
  v177 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v165 = &v135 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v183 = swift_getAssociatedConformanceWitness();
  v204 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v181 = *(v31 - 8);
  v182 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v180 = &v135 - v32;
  v184 = v30;
  v192 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v172 = &v135 - v34;
  v35 = swift_getAssociatedTypeWitness();
  v190 = swift_getAssociatedConformanceWitness();
  v205 = v35;
  v36 = swift_getAssociatedTypeWitness();
  v189 = sub_1AE23D7CC();
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v187 = &v135 - v37;
  v197 = v36;
  v191 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v179 = &v135 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v185 = swift_getAssociatedConformanceWitness();
  v206 = v40;
  v41 = swift_getAssociatedTypeWitness();
  v195 = sub_1AE23D7CC();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = &v135 - v42;
  v196 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v186 = &v135 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v46 = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedTypeWitness();
  v200 = sub_1AE23D7CC();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v208 = &v135 - v48;
  v210 = v47;
  v209 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v135 - v50;
  v52 = v212;
  result = sub_1ADDFCC74(v53, v54, v55);
  if (!v52)
  {
    v57 = result;
    v148 = v46;
    v149 = v51;
    v150 = v45;
    v212 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    v59 = v213;
    *(inited + 16) = v57;
    *(inited + 24) = v59;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    (*(v4 + 144))(&TupleTypeMetadata2, v3, v4);
    v60 = TupleTypeMetadata2;
    v61 = v216;
    v213 = v215;
    v231 = v215;
    v230 = TupleTypeMetadata2;
    v232 = v216;
    v147 = v217;
    v233 = v217;
    v145 = v219;
    v235 = v219;
    v146 = v218;
    v234 = v218;
    v144 = v220;
    v236 = v220;
    v143 = v221;
    v237 = v221;
    v141 = v223;
    v239 = v223;
    v142 = v222;
    v238 = v222;
    v140 = v224;
    v240 = v224;
    v139 = v225;
    v241 = v225;
    v137 = v227;
    v243 = v227;
    v138 = v226;
    v242 = v226;
    v136 = v228;
    v244 = v228;
    v135 = v229;
    v245 = v229;
    v62 = v199;
    v63 = v208;
    v64 = v200;
    (*(v199 + 16))(v208, v246, v200);
    if ((*(v209 + 48))(v63, 1, v210) == 1)
    {
      v210 = v3;
      *&v213 = inited;
      (*(v62 + 8))(v208, v64);
    }

    else
    {
      v65 = v3;
      v66 = v149;
      v67 = v210;
      (*(v209 + 32))(v149, v208, v210);
      v68 = swift_getAssociatedConformanceWitness();
      v69 = v212;
      sub_1ADDFD59C(v66, v60, v213, v67, *(v68 + 8));
      v212 = v69;
      if (v69)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v215 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v215 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v216 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v217 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v217 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v218 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v219 = swift_getTupleTypeMetadata2();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        (*(*(TupleTypeMetadata - 8) + 8))(&v230, TupleTypeMetadata);
        return (*(v209 + 8))(v66, v210);
      }

      *&v213 = inited;
      (*(v209 + 8))(v66, v210);
      v210 = v65;
    }

    v71 = v194;
    v72 = v193;
    v73 = v195;
    (*(v194 + 16))(v193, v246 + v211[9], v195);
    v74 = v196;
    if ((*(v196 + 48))(v72, 1, v41) == 1)
    {
      (*(v71 + 8))(v72, v73);
      v75 = v198;
      v76 = v197;
    }

    else
    {
      v77 = v186;
      (*(v74 + 32))(v186, v72, v41);
      v78 = swift_getAssociatedConformanceWitness();
      v79 = v212;
      sub_1ADDFD59C(v77, v61, v147, v41, *(v78 + 8));
      v212 = v79;
      v80 = v74;
      v76 = v197;
      if (v79)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v215 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v215 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v216 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v217 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v217 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v218 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v219 = swift_getTupleTypeMetadata2();
        v81 = swift_getTupleTypeMetadata();
        (*(*(v81 - 8) + 8))(&v230, v81);
        return (*(v80 + 8))(v77, v41);
      }

      (*(v80 + 8))(v77, v41);
      v75 = v198;
    }

    v82 = v189;
    v83 = v188;
    v84 = v187;
    (*(v188 + 16))(v187, v246 + v211[10], v189);
    v85 = v191;
    if ((*(v191 + 48))(v84, 1, v76) == 1)
    {
      (*(v83 + 8))(v84, v82);
    }

    else
    {
      v86 = v179;
      (*(v85 + 32))(v179, v84, v76);
      v87 = swift_getAssociatedConformanceWitness();
      v88 = v212;
      sub_1ADDFD59C(v86, v146, v145, v76, *(v87 + 8));
      v212 = v88;
      if (v88)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v215 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v215 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v216 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v217 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v217 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v218 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v219 = swift_getTupleTypeMetadata2();
        v89 = swift_getTupleTypeMetadata();
        (*(*(v89 - 8) + 8))(&v230, v89);
        return (*(v85 + 8))(v86, v76);
      }

      (*(v85 + 8))(v86, v76);
      v75 = v198;
    }

    v90 = v180;
    v91 = v181;
    v92 = v182;
    (*(v181 + 16))(v180, v246 + v211[11], v182);
    v93 = v184;
    if ((*(v192 + 48))(v90, 1, v184) == 1)
    {
      (*(v91 + 8))(v90, v92);
    }

    else
    {
      v94 = v172;
      (*(v192 + 32))(v172, v90, v93);
      v95 = swift_getAssociatedConformanceWitness();
      v96 = v212;
      sub_1ADDFD59C(v94, v144, v143, v93, *(v95 + 8));
      v212 = v96;
      if (v96)
      {
        swift_setDeallocating();

        v97 = v192;
        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v215 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v215 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v216 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v217 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v217 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v218 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v219 = swift_getTupleTypeMetadata2();
        v98 = swift_getTupleTypeMetadata();
        (*(*(v98 - 8) + 8))(&v230, v98);
        return (*(v97 + 8))(v94, v93);
      }

      (*(v192 + 8))(v94, v93);
      v75 = v198;
    }

    v100 = v173;
    v99 = v174;
    v101 = v175;
    (*(v174 + 16))(v173, v246 + v211[12], v175);
    v103 = v177;
    v102 = v178;
    if ((*(v177 + 48))(v100, 1, v178) == 1)
    {
      (*(v99 + 8))(v100, v101);
      v104 = v166;
    }

    else
    {
      v105 = v165;
      (*(v103 + 32))(v165, v100, v102);
      v106 = swift_getAssociatedConformanceWitness();
      v107 = v212;
      sub_1ADDFD59C(v105, v142, v141, v102, *(v106 + 8));
      v212 = v107;
      if (v107)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v215 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v215 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v216 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v217 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v217 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v218 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v219 = swift_getTupleTypeMetadata2();
        v108 = swift_getTupleTypeMetadata();
        (*(*(v108 - 8) + 8))(&v230, v108);
        return (*(v103 + 8))(v105, v102);
      }

      (*(v103 + 8))(v105, v102);
      v75 = v198;
      v104 = v166;
    }

    v109 = v167;
    v110 = v168;
    (*(v167 + 16))(v104, v246 + v211[13], v168);
    v111 = v170;
    v112 = v171;
    if ((*(v170 + 48))(v104, 1, v171) == 1)
    {
      (*(v109 + 8))(v104, v110);
    }

    else
    {
      v113 = v158;
      (*(v111 + 32))(v158, v104, v112);
      v114 = swift_getAssociatedConformanceWitness();
      v115 = v212;
      sub_1ADDFD59C(v113, v140, v139, v112, *(v114 + 8));
      v212 = v115;
      if (v115)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v215 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v215 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v216 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v217 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v217 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v218 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v219 = swift_getTupleTypeMetadata2();
        v116 = swift_getTupleTypeMetadata();
        (*(*(v116 - 8) + 8))(&v230, v116);
        return (*(v111 + 8))(v113, v112);
      }

      (*(v111 + 8))(v113, v112);
      v75 = v198;
    }

    v118 = v159;
    v117 = v160;
    v119 = v161;
    (*(v160 + 16))(v159, v246 + v211[14], v161);
    v120 = v163;
    v121 = v164;
    if ((*(v163 + 48))(v118, 1, v164) == 1)
    {
      (*(v117 + 8))(v118, v119);
    }

    else
    {
      v122 = v153;
      (*(v120 + 32))(v153, v118, v121);
      v123 = swift_getAssociatedConformanceWitness();
      v124 = v212;
      sub_1ADDFD59C(v122, v138, v137, v121, *(v123 + 8));
      v212 = v124;
      if (v124)
      {
        swift_setDeallocating();

        sub_1AE23DB8C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v215 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v215 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v216 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v217 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *(&v217 + 1) = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        v218 = swift_getTupleTypeMetadata2();
        sub_1AE23DB8C();
        *&v219 = swift_getTupleTypeMetadata2();
        v125 = swift_getTupleTypeMetadata();
        (*(*(v125 - 8) + 8))(&v230, v125);
        return (*(v120 + 8))(v122, v121);
      }

      (*(v120 + 8))(v122, v121);
      v75 = v198;
    }

    v126 = v154;
    v127 = v155;
    v128 = v156;
    (*(v155 + 16))(v154, v246 + v211[15], v156);
    v129 = v157;
    if ((*(v75 + 48))(v126, 1, v157) == 1)
    {

      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v215 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v215 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v216 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v217 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v219 = swift_getTupleTypeMetadata2();
      v130 = swift_getTupleTypeMetadata();
      (*(*(v130 - 8) + 8))(&v230, v130);
      return (*(v127 + 8))(v126, v128);
    }

    else
    {
      v131 = v152;
      (*(v75 + 32))(v152, v126, v129);
      v132 = swift_getAssociatedConformanceWitness();
      v133 = v212;
      sub_1ADDFD59C(v131, v136, v135, v129, *(v132 + 8));
      v212 = v133;
      if (v133)
      {
        swift_setDeallocating();
      }

      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v215 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v215 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v216 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *(&v217 + 1) = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      *&v219 = swift_getTupleTypeMetadata2();
      v134 = swift_getTupleTypeMetadata();
      (*(*(v134 - 8) + 8))(&v230, v134);
      return (*(v75 + 8))(v131, v129);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_9.init(_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a9, 1, 1, AssociatedTypeWitness);
  v14 = type metadata accessor for CRStructMergeableDelta_9(0, a11, a12, v13);
  v15 = v14[9];
  v47 = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v46 = swift_getAssociatedTypeWitness();
  (*(*(v46 - 8) + 56))(a9 + v15, 1, 1, v46);
  v16 = v14[10];
  v45 = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v44 = swift_getAssociatedTypeWitness();
  (*(*(v44 - 8) + 56))(a9 + v16, 1, 1, v44);
  v17 = v14[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedTypeWitness();
  (*(*(v43 - 8) + 56))(a9 + v17, 1, 1, v43);
  v18 = v14[12];
  v42 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedTypeWitness();
  (*(*(v38 - 8) + 56))(a9 + v18, 1, 1, v38);
  v19 = v14[13];
  v41 = v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedTypeWitness();
  (*(*(v37 - 8) + 56))(a9 + v19, 1, 1, v37);
  v20 = v14[14];
  v40 = v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = v14[15];
  v39 = v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = v14[16];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedTypeWitness();
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  v26 = sub_1AE23D7CC();
  (*(*(v26 - 8) + 40))(a9, a1, v26);
  v27 = sub_1AE23D7CC();
  (*(*(v27 - 8) + 40))(a9 + v47, a2, v27);
  v28 = sub_1AE23D7CC();
  (*(*(v28 - 8) + 40))(a9 + v45, a3, v28);
  v29 = sub_1AE23D7CC();
  (*(*(v29 - 8) + 40))(a9 + v17, a4, v29);
  v30 = sub_1AE23D7CC();
  (*(*(v30 - 8) + 40))(a9 + v42, a5, v30);
  v31 = sub_1AE23D7CC();
  (*(*(v31 - 8) + 40))(a9 + v41, a6, v31);
  v32 = sub_1AE23D7CC();
  (*(*(v32 - 8) + 40))(a9 + v40, a7, v32);
  v33 = sub_1AE23D7CC();
  (*(*(v33 - 8) + 40))(a9 + v39, a8, v33);
  v34 = sub_1AE23D7CC();
  v35 = *(*(v34 - 8) + 40);

  return v35(a9 + v24, a10, v34);
}

BOOL CRStructMergeableDelta_9.merge(delta:)(uint64_t a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v241 = AssociatedTypeWitness;
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v283 = *(v6 - 8);
  v284 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v249 = &v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v282 = &v222 - v9;
  v286 = v5;
  v295 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v285 = &v222 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v238 = swift_getAssociatedConformanceWitness();
  v239 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v294 = sub_1AE23D7CC();
  v279 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v248 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v278 = &v222 - v16;
  v281 = v13;
  v290 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v280 = &v222 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v236 = swift_getAssociatedConformanceWitness();
  v237 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v275 = sub_1AE23D7CC();
  v298 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v247 = &v222 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v274 = &v222 - v23;
  v277 = v20;
  v289 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v276 = &v222 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v234 = swift_getAssociatedConformanceWitness();
  v235 = v26;
  v27 = swift_getAssociatedTypeWitness();
  v271 = sub_1AE23D7CC();
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v246 = &v222 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v269 = &v222 - v30;
  v273 = v27;
  v288 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v272 = &v222 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v232 = swift_getAssociatedConformanceWitness();
  v233 = v33;
  v34 = swift_getAssociatedTypeWitness();
  v266 = sub_1AE23D7CC();
  v265 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v245 = &v222 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v264 = &v222 - v37;
  v268 = v34;
  v297 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v267 = &v222 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v230 = swift_getAssociatedConformanceWitness();
  v231 = v40;
  v41 = swift_getAssociatedTypeWitness();
  v261 = sub_1AE23D7CC();
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v244 = &v222 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v259 = &v222 - v44;
  v263 = v41;
  v287 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v262 = &v222 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v228 = swift_getAssociatedConformanceWitness();
  v229 = v47;
  v48 = swift_getAssociatedTypeWitness();
  v256 = sub_1AE23D7CC();
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v243 = &v222 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v292 = &v222 - v51;
  v258 = v48;
  v293 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v257 = &v222 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v226 = swift_getAssociatedConformanceWitness();
  v227 = v54;
  v55 = swift_getAssociatedTypeWitness();
  v299 = sub_1AE23D7CC();
  v252 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v242 = &v222 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v251 = &v222 - v58;
  v254 = v55;
  v291 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v253 = &v222 - v60;
  v61 = swift_getAssociatedTypeWitness();
  v62 = a1;
  v224 = swift_getAssociatedConformanceWitness();
  v225 = v61;
  v63 = swift_getAssociatedTypeWitness();
  v64 = sub_1AE23D7CC();
  v296 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v222 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v222 - v68;
  v70 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v250 = &v222 - v72;
  v73 = *(a2 - 1);
  v75 = MEMORY[0x1EEE9AC00](v74);
  v77 = &v222 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v73 + 16))(v77, v302, a2, v75);
  v78 = CRStructMergeableDelta_9.canMerge(delta:)(v62, a2);
  (*(v73 + 8))(v77, a2);
  if (!v78)
  {
    return v78;
  }

  v223 = v78;
  v300 = a2;
  v301 = v62;
  v79 = *(v296 + 16);
  v79(v69, v62, v64);
  v80 = *(v70 + 48);
  if (v80(v69, 1, v63) == 1)
  {
    (*(v296 + 8))(v69, v64);
LABEL_6:
    v85 = v300;
    v84 = v301;
    v87 = v291;
    v86 = v292;
    goto LABEL_11;
  }

  v222 = *(v70 + 32);
  v222(v250, v69, v63);
  v81 = v302;
  v79(v66, v302, v64);
  v82 = v80(v66, 1, v63);
  v83 = *(v296 + 8);
  v83(v66, v64);
  if (v82 == 1)
  {
    v83(v81, v64);
    v222(v81, v250, v63);
    (*(v70 + 56))(v81, 0, 1, v63);
    goto LABEL_6;
  }

  v88 = v80(v81, 1, v63);
  v85 = v300;
  v89 = v301;
  v87 = v291;
  if (v88)
  {
    (*(v70 + 8))(v250, v63);
  }

  else
  {
    v90 = swift_getAssociatedConformanceWitness();
    v91 = v250;
    (*(v90 + 16))(v250, v63, v90);
    v85 = v300;
    (*(v70 + 8))(v91, v63);
  }

  v84 = v89;
  v86 = v292;
LABEL_11:
  v92 = v252;
  v93 = v251;
  v94 = *(v252 + 16);
  v94(v251, v84 + v85[9], v299);
  v95 = *(v87 + 48);
  v96 = v254;
  if (v95(v93, 1, v254) == 1)
  {
    (*(v92 + 8))(v93, v299);
    v97 = v255;
    v98 = v293;
  }

  else
  {
    v296 = *(v87 + 32);
    (v296)(v253, v93, v96);
    v99 = v85[9];
    v100 = v242;
    v101 = v299;
    v94(v242, &v302[v99], v299);
    v102 = v95(v100, 1, v96);
    v103 = *(v92 + 8);
    v103(v100, v101);
    if (v102 == 1)
    {
      v104 = v302;
      v103(&v302[v99], v299);
      (v296)(&v104[v99], v253, v96);
      (*(v291 + 56))(&v104[v99], 0, 1, v96);
      v85 = v300;
      v98 = v293;
      v97 = v255;
    }

    else
    {
      v105 = v95(&v302[v99], 1, v96);
      v97 = v255;
      if (v105)
      {
        (*(v291 + 8))(v253, v96);
      }

      else
      {
        v106 = swift_getAssociatedConformanceWitness();
        v107 = v253;
        (*(v106 + 16))(v253, v96, v106);
        (*(v291 + 8))(v107, v96);
      }

      v85 = v300;
      v98 = v293;
    }

    v86 = v292;
  }

  v108 = *(v97 + 16);
  v109 = v256;
  v108(v86, v301 + v85[10], v256);
  v110 = v98[6];
  v111 = v258;
  if (v110(v86, 1, v258) == 1)
  {
    (*(v97 + 8))(v86, v109);
LABEL_24:
    v118 = v287;
    v119 = v260;
    goto LABEL_29;
  }

  v296 = v98[4];
  (v296)(v257, v86, v111);
  v112 = v85[10];
  v113 = v302;
  v299 = v112;
  v114 = v243;
  v108(v243, &v302[v112], v109);
  v115 = v110(v114, 1, v111);
  v116 = *(v97 + 8);
  v116(v114, v109);
  if (v115 == 1)
  {
    v117 = v299;
    v116(&v113[v299], v109);
    (v296)(&v113[v117], v257, v111);
    (v293[7])(&v113[v117], 0, 1, v111);
    v85 = v300;
    goto LABEL_24;
  }

  v120 = v110(&v113[v299], 1, v111);
  v119 = v260;
  if (v120)
  {
    (v293[1])(v257, v111);
  }

  else
  {
    v121 = swift_getAssociatedConformanceWitness();
    v122 = v257;
    (*(v121 + 16))(v257, v111, v121);
    (v293[1])(v122, v111);
  }

  v85 = v300;
  v118 = v287;
LABEL_29:
  v123 = v261;
  v124 = *(v119 + 16);
  v125 = v301;
  v126 = v259;
  v124(v259, v301 + v85[11], v261);
  v127 = v118;
  v128 = v123;
  v129 = v127;
  v130 = v263;
  v299 = *(v127 + 48);
  if ((v299)(v126, 1, v263) == 1)
  {
    (*(v119 + 8))(v126, v123);
  }

  else
  {
    v293 = *(v129 + 32);
    (v293)(v262, v126, v130);
    v296 = v85[11];
    v131 = v244;
    v124(v244, &v302[v296], v123);
    v132 = v299;
    v133 = (v299)(v131, 1, v130);
    v134 = *(v119 + 8);
    v134(v131, v123);
    if (v133 == 1)
    {
      v135 = v302;
      v136 = v296;
      v134(&v302[v296], v128);
      (v293)(&v135[v136], v262, v130);
      (*(v129 + 56))(&v135[v136], 0, 1, v130);
    }

    else if (v132(&v302[v296], 1, v130))
    {
      (*(v287 + 8))(v262, v130);
    }

    else
    {
      v137 = swift_getAssociatedConformanceWitness();
      v138 = v262;
      (*(v137 + 16))(v262, v130, v137);
      (*(v287 + 8))(v138, v130);
    }

    v85 = v300;
    v125 = v301;
  }

  v139 = v297;
  v140 = v298;
  v141 = v264;
  v142 = v266;
  v143 = v265;
  v144 = *(v265 + 16);
  v144(v264, v125 + v85[12], v266);
  v145 = *(v139 + 48);
  v146 = v268;
  v299 = v145;
  if (v145(v141, 1, v268) == 1)
  {
    (*(v143 + 8))(v141, v142);
    v147 = v288;
  }

  else
  {
    v148 = v142;
    v296 = *(v297 + 32);
    (v296)(v267, v141, v146);
    v149 = v85[12];
    v150 = v245;
    v144(v245, &v302[v149], v142);
    v151 = v299;
    v152 = (v299)(v150, 1, v146);
    v153 = *(v143 + 8);
    v153(v150, v148);
    if (v152 == 1)
    {
      v154 = v302;
      v153(&v302[v149], v148);
      (v296)(&v154[v149], v267, v146);
      (*(v297 + 56))(&v154[v149], 0, 1, v146);
    }

    else if (v151(&v302[v149], 1, v146))
    {
      (*(v297 + 8))(v267, v146);
    }

    else
    {
      v155 = swift_getAssociatedConformanceWitness();
      v156 = v267;
      (*(v155 + 16))(v267, v146, v155);
      (*(v297 + 8))(v156, v146);
    }

    v85 = v300;
    v125 = v301;
    v147 = v288;
    v140 = v298;
  }

  v157 = v271;
  v158 = v270;
  v159 = *(v270 + 16);
  v160 = v125 + v85[13];
  v161 = v269;
  v159(v269, v160, v271);
  v162 = v273;
  v299 = *(v147 + 48);
  if ((v299)(v161, 1, v273) == 1)
  {
    (*(v158 + 8))(v161, v157);
    v163 = v289;
    v164 = v301;
  }

  else
  {
    v165 = *(v147 + 32);
    v296 = v147 + 32;
    v293 = v165;
    (v165)(v272, v161, v162);
    v166 = v302;
    v297 = v85[13];
    v167 = v246;
    v159(v246, &v302[v297], v157);
    v168 = v299;
    v169 = (v299)(v167, 1, v162);
    v170 = *(v158 + 8);
    v170(v167, v157);
    if (v169 == 1)
    {
      v171 = v297;
      v170(&v166[v297], v157);
      (v293)(&v166[v171], v272, v162);
      (*(v147 + 56))(&v166[v171], 0, 1, v162);
    }

    else if (v168(&v166[v297], 1, v162))
    {
      (*(v288 + 8))(v272, v162);
    }

    else
    {
      v172 = swift_getAssociatedConformanceWitness();
      v173 = v272;
      (*(v172 + 16))(v272, v162, v172);
      (*(v288 + 8))(v173, v162);
    }

    v85 = v300;
    v164 = v301;
    v163 = v289;
    v140 = v298;
  }

  v174 = v140[2];
  v175 = v274;
  v176 = v275;
  v174(v274, v164 + v85[14], v275);
  v177 = *(v163 + 48);
  v178 = v277;
  if (v177(v175, 1, v277) == 1)
  {
    (v140[1])(v175, v176);
    v179 = v290;
    v180 = v279;
    v181 = v301;
  }

  else
  {
    v182 = *(v163 + 32);
    v297 = v163 + 32;
    v298 = v182;
    (v182)(v276, v175, v178);
    v183 = v302;
    v299 = v85[14];
    v184 = v247;
    v174(v247, &v302[v299], v176);
    v185 = v177(v184, 1, v178);
    v186 = v140[1];
    v186(v184, v176);
    if (v185 == 1)
    {
      v187 = v299;
      v186(&v183[v299], v176);
      (v298)(&v183[v187], v276, v178);
      (*(v163 + 56))(&v183[v187], 0, 1, v178);
    }

    else if (v177(&v183[v299], 1, v178))
    {
      (*(v289 + 8))(v276, v178);
    }

    else
    {
      v188 = swift_getAssociatedConformanceWitness();
      v189 = v276;
      (*(v188 + 16))(v276, v178, v188);
      (*(v289 + 8))(v189, v178);
    }

    v85 = v300;
    v181 = v301;
    v179 = v290;
    v180 = v279;
  }

  v190 = *(v180 + 16);
  v191 = v278;
  v192 = v294;
  v190(v278, v181 + v85[15], v294);
  v193 = *(v179 + 48);
  v194 = v281;
  if (v193(v191, 1, v281) == 1)
  {
    (*(v180 + 8))(v191, v192);
  }

  else
  {
    v298 = *(v179 + 32);
    (v298)(v280, v191, v194);
    v299 = v85[15];
    v195 = v248;
    v196 = v294;
    v190(v248, &v302[v299], v294);
    v197 = v193(v195, 1, v194);
    v198 = *(v180 + 8);
    v198(v195, v196);
    if (v197 == 1)
    {
      v199 = v302;
      v200 = v299;
      v198(&v302[v299], v196);
      (v298)(&v199[v200], v280, v194);
      (*(v179 + 56))(&v199[v200], 0, 1, v194);
    }

    else if (v193(&v302[v299], 1, v194))
    {
      (*(v290 + 8))(v280, v194);
    }

    else
    {
      v201 = swift_getAssociatedConformanceWitness();
      v202 = v280;
      (*(v201 + 16))(v280, v194, v201);
      (*(v290 + 8))(v202, v194);
    }

    v85 = v300;
  }

  v204 = v283;
  v203 = v284;
  v205 = *(v283 + 16);
  v206 = v282;
  v205(v282, v301 + v85[16], v284);
  v207 = v295;
  v208 = *(v295 + 48);
  v209 = v286;
  if (v208(v206, 1, v286) == 1)
  {
    (*(v204 + 8))(v206, v203);
  }

  else
  {
    v210 = v207 + 32;
    v211 = *(v207 + 32);
    v212 = v203;
    v213 = v302;
    v300 = v211;
    v301 = v210;
    (v211)(v285, v206, v209);
    v214 = v85[16];
    v215 = v249;
    v205(v249, &v213[v214], v212);
    v216 = v208(v215, 1, v209);
    v217 = *(v204 + 8);
    v217(v215, v212);
    v218 = &v213[v214];
    if (v216 == 1)
    {
      v217(v218, v212);
      (v300)(&v213[v214], v285, v209);
      (*(v295 + 56))(&v213[v214], 0, 1, v209);
    }

    else if (v208(v218, 1, v209))
    {
      (*(v295 + 8))(v285, v209);
    }

    else
    {
      v219 = swift_getAssociatedConformanceWitness();
      v220 = v285;
      (*(v219 + 16))(v285, v209, v219);
      (*(v295 + 8))(v220, v209);
    }
  }

  LOBYTE(v78) = v223;
  return v78;
}

BOOL CRStructMergeableDelta_9.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v251 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v190[1] = swift_getAssociatedConformanceWitness();
  v190[2] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v214 = sub_1AE23D7CC();
  v223 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v192 = v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v209 = v190 - v7;
  v215 = v4;
  v213 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v191 = v190 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v190[3] = swift_getAssociatedConformanceWitness();
  v190[4] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v233 = sub_1AE23D7CC();
  v229 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v196 = v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v232 = v190 - v14;
  v212 = v11;
  v218 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v195 = v190 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v190[5] = swift_getAssociatedConformanceWitness();
  v190[6] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v238 = sub_1AE23D7CC();
  v236 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v200 = v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v222 = v190 - v21;
  v231 = v18;
  v219 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v199 = v190 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v190[7] = swift_getAssociatedConformanceWitness();
  v190[8] = v24;
  v25 = swift_getAssociatedTypeWitness();
  v230 = sub_1AE23D7CC();
  v242 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v204 = v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v220 = v190 - v28;
  v237 = v25;
  v221 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v203 = v190 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v190[9] = swift_getAssociatedConformanceWitness();
  v190[10] = v31;
  v32 = swift_getAssociatedTypeWitness();
  v33 = sub_1AE23D7CC();
  v246 = *(v33 - 8);
  v247 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v206 = v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v226 = v190 - v36;
  v228 = v32;
  v227 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v205 = v190 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v190[11] = swift_getAssociatedConformanceWitness();
  v190[12] = v39;
  v40 = swift_getAssociatedTypeWitness();
  v41 = sub_1AE23D7CC();
  v248 = *(v41 - 8);
  v249 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v208 = v190 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v235 = v190 - v44;
  v225 = v40;
  v224 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v207 = v190 - v46;
  v47 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v194 = v47;
  v48 = swift_getAssociatedTypeWitness();
  v250 = sub_1AE23D7CC();
  v252 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v211 = v190 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v240 = v190 - v51;
  v234 = v48;
  v241 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v210 = v190 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v197 = swift_getAssociatedConformanceWitness();
  v198 = v54;
  v55 = swift_getAssociatedTypeWitness();
  v56 = sub_1AE23D7CC();
  v253 = *(v56 - 8);
  v254 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v217 = v190 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v244 = v190 - v59;
  v245 = v55;
  v239 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v216 = v190 - v61;
  v62 = swift_getAssociatedTypeWitness();
  v201 = swift_getAssociatedConformanceWitness();
  v202 = v62;
  v63 = swift_getAssociatedTypeWitness();
  v64 = sub_1AE23D7CC();
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v67 = v190 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = v190 - v69;
  v71 = *(v63 - 8);
  v73 = MEMORY[0x1EEE9AC00](v72);
  v243 = v190 - v74;
  v75 = *(v65 + 16);
  v256 = a1;
  v75(v70, a1, v64, v73);
  v76 = *(v71 + 48);
  if (v76(v70, 1, v63) == 1)
  {
    v67 = v70;
LABEL_5:
    v77 = v250;
    v78 = v244;
    v79 = v245;
    (*(v65 + 8))(v67, v64);
    goto LABEL_6;
  }

  (*(v71 + 32))(v243, v70, v63);
  (v75)(v67, v255, v64);
  if (v76(v67, 1, v63) == 1)
  {
    (*(v71 + 8))(v243, v63);
    goto LABEL_5;
  }

  v143 = swift_getAssociatedConformanceWitness();
  v144 = v243;
  v145 = (*(v143 + 24))(v243, v63, v143);
  v146 = *(v71 + 8);
  v146(v144, v63);
  v146(v67, v63);
  v77 = v250;
  v78 = v244;
  v79 = v245;
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v80 = v251;
  v81 = v254;
  v82 = *(v253 + 16);
  v82(v78, v256 + *(v251 + 36), v254);
  v83 = v239;
  v84 = *(v239 + 48);
  if (v84(v78, 1, v79) == 1)
  {
    v85 = v78;
    v86 = v240;
    v87 = v241;
LABEL_10:
    (*(v253 + 8))(v85, v254);
    goto LABEL_11;
  }

  v88 = v78;
  v89 = v216;
  (*(v83 + 32))(v216, v88, v79);
  v90 = v255 + v80[9];
  v91 = v83;
  v92 = v217;
  v82(v217, v90, v81);
  v85 = v92;
  v93 = v84(v92, 1, v79);
  v86 = v240;
  if (v93 == 1)
  {
    (*(v91 + 8))(v89, v79);
    v87 = v241;
    v80 = v251;
    goto LABEL_10;
  }

  v155 = swift_getAssociatedConformanceWitness();
  v156 = v85;
  v157 = (*(v155 + 24))(v89, v79, v155);
  v158 = *(v91 + 8);
  v158(v89, v79);
  v158(v156, v79);
  v87 = v241;
  v80 = v251;
  if ((v157 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v94 = *(v252 + 16);
  v94(v86, v256 + v80[10], v77);
  v95 = *(v87 + 48);
  v96 = v234;
  if (v95(v86, 1, v234) == 1)
  {
    v97 = v86;
    v98 = v235;
LABEL_15:
    (*(v252 + 8))(v97, v77);
    goto LABEL_16;
  }

  v99 = v86;
  v100 = v210;
  (*(v87 + 32))(v210, v99, v96);
  v101 = v77;
  v102 = v211;
  v94(v211, v255 + v80[10], v101);
  v97 = v102;
  if (v95(v102, 1, v96) == 1)
  {
    (*(v87 + 8))(v100, v96);
    v98 = v235;
    v77 = v250;
    goto LABEL_15;
  }

  v169 = swift_getAssociatedConformanceWitness();
  v170 = (*(v169 + 24))(v100, v96, v169);
  v171 = *(v87 + 8);
  v171(v100, v96);
  v171(v102, v96);
  v98 = v235;
  if ((v170 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v103 = v249;
  v104 = *(v248 + 16);
  v104(v98, v256 + v80[11], v249);
  v105 = v224;
  v106 = *(v224 + 48);
  v107 = v225;
  if (v106(v98, 1, v225) == 1)
  {
    v108 = v98;
LABEL_20:
    v111 = v227;
    v112 = v226;
    v113 = v228;
    v114 = v247;
    (*(v248 + 8))(v108, v249);
    goto LABEL_21;
  }

  v109 = v207;
  (*(v105 + 32))(v207, v98, v107);
  v110 = v208;
  v104(v208, v255 + v80[11], v103);
  v108 = v110;
  if (v106(v110, 1, v107) == 1)
  {
    (*(v105 + 8))(v109, v107);
    goto LABEL_20;
  }

  v172 = swift_getAssociatedConformanceWitness();
  v173 = (*(v172 + 24))(v109, v107, v172);
  v174 = *(v105 + 8);
  v174(v109, v107);
  v174(v110, v107);
  v111 = v227;
  v112 = v226;
  v113 = v228;
  v114 = v247;
  if ((v173 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v115 = *(v246 + 16);
  v115(v112, v256 + v80[12], v114);
  v116 = *(v111 + 48);
  if (v116(v112, 1, v113) == 1)
  {
    v117 = v112;
LABEL_25:
    v121 = v221;
    v122 = v222;
    (*(v246 + 8))(v117, v247);
    v123 = v230;
    v124 = v220;
    v125 = v237;
    goto LABEL_26;
  }

  v118 = v112;
  v119 = v205;
  (*(v111 + 32))(v205, v118, v113);
  v120 = v206;
  v115(v206, v255 + v80[12], v114);
  v117 = v120;
  if (v116(v120, 1, v113) == 1)
  {
    (*(v111 + 8))(v119, v113);
    goto LABEL_25;
  }

  v175 = swift_getAssociatedConformanceWitness();
  v176 = (*(v175 + 24))(v119, v113, v175);
  v177 = *(v111 + 8);
  v177(v119, v113);
  v177(v120, v113);
  v121 = v221;
  v122 = v222;
  v123 = v230;
  v124 = v220;
  v125 = v237;
  if ((v176 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v126 = *(v242 + 16);
  v126(v124, v256 + v80[13], v123);
  v127 = *(v121 + 48);
  if (v127(v124, 1, v125) == 1)
  {
    v128 = v124;
    v129 = v238;
LABEL_30:
    v135 = v232;
    (*(v242 + 8))(v128, v123);
    v136 = v231;
    v137 = v219;
    goto LABEL_31;
  }

  v130 = v124;
  v131 = v123;
  v132 = v203;
  (*(v121 + 32))(v203, v130, v125);
  v133 = v204;
  v126(v204, v255 + v80[13], v131);
  v128 = v133;
  v134 = v237;
  if (v127(v133, 1, v237) == 1)
  {
    (*(v121 + 8))(v132, v134);
    v129 = v238;
    v123 = v230;
    goto LABEL_30;
  }

  v178 = swift_getAssociatedConformanceWitness();
  v179 = (*(v178 + 24))(v132, v134, v178);
  v180 = *(v121 + 8);
  v180(v132, v134);
  v180(v133, v134);
  v129 = v238;
  v136 = v231;
  v135 = v232;
  v137 = v219;
  if ((v179 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v138 = *(v236 + 16);
  v138(v122, v256 + v80[14], v129);
  v139 = *(v137 + 48);
  if (v139(v122, 1, v136) == 1)
  {
    v140 = v122;
    v141 = v233;
    v142 = v218;
LABEL_37:
    (*(v236 + 8))(v140, v238);
    goto LABEL_38;
  }

  v147 = v122;
  v148 = v199;
  (*(v137 + 32))(v199, v147, v136);
  v149 = v137;
  v140 = v200;
  v138(v200, v255 + v80[14], v129);
  v150 = v231;
  if (v139(v140, 1, v231) == 1)
  {
    (*(v149 + 8))(v148, v150);
    v141 = v233;
    v142 = v218;
    v135 = v232;
    goto LABEL_37;
  }

  v181 = swift_getAssociatedConformanceWitness();
  v182 = (*(v181 + 24))(v148, v150, v181);
  v183 = *(v149 + 8);
  v183(v148, v150);
  v183(v140, v150);
  v141 = v233;
  v142 = v218;
  v135 = v232;
  if ((v182 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v151 = *(v229 + 16);
  v151(v135, v256 + v80[15], v141);
  v152 = *(v142 + 48);
  v153 = v212;
  if (v152(v135, 1, v212) == 1)
  {
    v154 = v135;
  }

  else
  {
    v159 = v195;
    (*(v142 + 32))(v195, v135, v153);
    v160 = v196;
    v151(v196, v255 + v80[15], v141);
    v154 = v160;
    if (v152(v160, 1, v153) != 1)
    {
      v184 = swift_getAssociatedConformanceWitness();
      v185 = (*(v184 + 24))(v159, v153, v184);
      v186 = *(v142 + 8);
      v186(v159, v153);
      v186(v160, v153);
      v161 = v213;
      v162 = v215;
      v163 = v214;
      if ((v185 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_45;
    }

    (*(v142 + 8))(v159, v153);
  }

  v161 = v213;
  v162 = v215;
  v163 = v214;
  (*(v229 + 8))(v154, v233);
LABEL_45:
  v164 = *(v223 + 16);
  v165 = v209;
  v164(v209, v256 + v80[16], v163);
  v166 = *(v161 + 48);
  if (v166(v165, 1, v162) == 1)
  {
LABEL_48:
    (*(v223 + 8))(v165, v163);
    return 1;
  }

  v167 = v191;
  (*(v161 + 32))(v191, v165, v162);
  v165 = v192;
  v164(v192, v255 + v80[16], v163);
  if (v166(v165, 1, v162) == 1)
  {
    (*(v161 + 8))(v167, v162);
    goto LABEL_48;
  }

  v187 = swift_getAssociatedConformanceWitness();
  v188 = (*(v187 + 24))(v167, v162, v187);
  v189 = *(v161 + 8);
  v189(v167, v162);
  v189(v165, v162);
  return (v188 & 1) != 0;
}

uint64_t CRStructMergeableDelta_9.visitReferences(_:)(void *a1, int *a2)
{
  v3 = v2;
  v145 = a1;
  v143 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101[1] = swift_getAssociatedConformanceWitness();
  v101[2] = AssociatedTypeWitness;
  v105 = swift_getAssociatedTypeWitness();
  v103 = sub_1AE23D7CC();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v104 = v101 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v101[3] = swift_getAssociatedConformanceWitness();
  v101[4] = v6;
  v111 = swift_getAssociatedTypeWitness();
  v109 = sub_1AE23D7CC();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v110 = v101 - v7;
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v107 = v8;
  v117 = swift_getAssociatedTypeWitness();
  v115 = sub_1AE23D7CC();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = v101 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v112 = swift_getAssociatedConformanceWitness();
  v113 = v10;
  v123 = swift_getAssociatedTypeWitness();
  v121 = sub_1AE23D7CC();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v122 = v101 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v118 = swift_getAssociatedConformanceWitness();
  v119 = v12;
  v129 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v126 = *(v13 - 8);
  v127 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v128 = v101 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v124 = swift_getAssociatedConformanceWitness();
  v125 = v15;
  v135 = swift_getAssociatedTypeWitness();
  v16 = sub_1AE23D7CC();
  v132 = *(v16 - 8);
  v133 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v134 = v101 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v130 = swift_getAssociatedConformanceWitness();
  v131 = v18;
  v141 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v138 = *(v19 - 8);
  v139 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v140 = v101 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v136 = swift_getAssociatedConformanceWitness();
  v137 = v21;
  v22 = swift_getAssociatedTypeWitness();
  v142 = sub_1AE23D7CC();
  v23 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v25 = v101 - v24;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v101 - v30;
  v32 = *(v28 + 16);
  v144 = v3;
  v32(v101 - v30, v3, v27, v29);
  v33 = *(v26 - 8);
  if ((*(v33 + 48))(v31, 1, v26) == 1)
  {
    v34 = v145;
  }

  else
  {
    v35 = swift_getAssociatedConformanceWitness();
    v36 = v145;
    (*(v35 + 32))(v145, v26, v35);
    v28 = v33;
    v27 = v26;
    v34 = v36;
  }

  (*(v28 + 8))(v31, v27);
  v37 = v34[3];
  v38 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v37);
  result = (*(v38 + 8))(v37, v38);
  if ((result & 1) == 0)
  {
    v40 = v142;
    (*(v23 + 16))(v25, v144 + v143[9], v142);
    v41 = *(v22 - 8);
    if ((*(v41 + 48))(v25, 1, v22) != 1)
    {
      v42 = swift_getAssociatedConformanceWitness();
      (*(v42 + 32))(v34, v22, v42);
      v23 = v41;
      v40 = v22;
    }

    (*(v23 + 8))(v25, v40);
    v43 = v34[3];
    v44 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v43);
    result = (*(v44 + 8))(v43, v44);
    if ((result & 1) == 0)
    {
      v46 = v138;
      v45 = v139;
      v47 = v140;
      (*(v138 + 16))(v140, v144 + v143[10], v139);
      v48 = v141;
      v49 = *(v141 - 8);
      if ((*(v49 + 48))(v47, 1, v141) != 1)
      {
        v50 = swift_getAssociatedConformanceWitness();
        (*(v50 + 32))(v34, v48, v50);
        v46 = v49;
        v45 = v48;
      }

      (*(v46 + 8))(v47, v45);
      v51 = v34[3];
      v52 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v51);
      result = (*(v52 + 8))(v51, v52);
      if ((result & 1) == 0)
      {
        v54 = v132;
        v53 = v133;
        v55 = v134;
        (*(v132 + 16))(v134, v144 + v143[11], v133);
        v56 = v135;
        v57 = *(v135 - 8);
        if ((*(v57 + 48))(v55, 1, v135) != 1)
        {
          v58 = swift_getAssociatedConformanceWitness();
          (*(v58 + 32))(v34, v56, v58);
          v54 = v57;
          v53 = v56;
        }

        (*(v54 + 8))(v55, v53);
        v59 = v34[3];
        v60 = v34[4];
        __swift_project_boxed_opaque_existential_1(v34, v59);
        result = (*(v60 + 8))(v59, v60);
        if ((result & 1) == 0)
        {
          v62 = v126;
          v61 = v127;
          v63 = v128;
          (*(v126 + 16))(v128, v144 + v143[12], v127);
          v64 = v129;
          v65 = *(v129 - 8);
          if ((*(v65 + 48))(v63, 1, v129) != 1)
          {
            v66 = swift_getAssociatedConformanceWitness();
            (*(v66 + 32))(v34, v64, v66);
            v62 = v65;
            v61 = v64;
          }

          (*(v62 + 8))(v63, v61);
          v67 = v34[3];
          v68 = v34[4];
          __swift_project_boxed_opaque_existential_1(v34, v67);
          result = (*(v68 + 8))(v67, v68);
          if ((result & 1) == 0)
          {
            v69 = v120;
            v70 = v122;
            v71 = v121;
            (*(v120 + 16))(v122, v144 + v143[13], v121);
            v72 = v123;
            v73 = *(v123 - 8);
            if ((*(v73 + 48))(v70, 1, v123) != 1)
            {
              v74 = swift_getAssociatedConformanceWitness();
              (*(v74 + 32))(v34, v72, v74);
              v69 = v73;
              v71 = v72;
            }

            (*(v69 + 8))(v70, v71);
            v75 = v34[3];
            v76 = v34[4];
            __swift_project_boxed_opaque_existential_1(v34, v75);
            result = (*(v76 + 8))(v75, v76);
            if ((result & 1) == 0)
            {
              v77 = v114;
              v78 = v116;
              v79 = v115;
              (*(v114 + 16))(v116, v144 + v143[14], v115);
              v80 = v117;
              v81 = *(v117 - 8);
              if ((*(v81 + 48))(v78, 1, v117) != 1)
              {
                v82 = swift_getAssociatedConformanceWitness();
                (*(v82 + 32))(v34, v80, v82);
                v77 = v81;
                v79 = v80;
              }

              (*(v77 + 8))(v78, v79);
              v83 = v34[3];
              v84 = v34[4];
              __swift_project_boxed_opaque_existential_1(v34, v83);
              result = (*(v84 + 8))(v83, v84);
              if ((result & 1) == 0)
              {
                v85 = v108;
                v86 = v110;
                v87 = v109;
                (*(v108 + 16))(v110, v144 + v143[15], v109);
                v88 = v111;
                v89 = *(v111 - 8);
                if ((*(v89 + 48))(v86, 1, v111) != 1)
                {
                  v90 = swift_getAssociatedConformanceWitness();
                  (*(v90 + 32))(v34, v88, v90);
                  v85 = v89;
                  v87 = v88;
                }

                (*(v85 + 8))(v86, v87);
                v91 = v34[3];
                v92 = v34[4];
                __swift_project_boxed_opaque_existential_1(v34, v91);
                result = (*(v92 + 8))(v91, v92);
                if ((result & 1) == 0)
                {
                  v93 = v102;
                  v94 = v104;
                  v95 = v103;
                  (*(v102 + 16))(v104, v144 + v143[16], v103);
                  v96 = v105;
                  v97 = *(v105 - 8);
                  if ((*(v97 + 48))(v94, 1, v105) != 1)
                  {
                    v98 = swift_getAssociatedConformanceWitness();
                    (*(v98 + 32))(v34, v96, v98);
                    v93 = v97;
                    v95 = v96;
                  }

                  (*(v93 + 8))(v94, v95);
                  v99 = v34[3];
                  v100 = v34[4];
                  __swift_project_boxed_opaque_existential_1(v34, v99);
                  return (*(v100 + 8))(v99, v100);
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